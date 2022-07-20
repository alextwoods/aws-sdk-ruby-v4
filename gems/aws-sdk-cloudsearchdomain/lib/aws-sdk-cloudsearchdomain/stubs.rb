# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CloudSearchDomain
  module Stubs

    # Operation Stubber for Search
    class Search
      def self.default(visited=[])
        {
          status: SearchStatus.default(visited),
          hits: Hits.default(visited),
          facets: Facets.default(visited),
          stats: Stats.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['status'] = Stubs::SearchStatus.stub(stub[:status]) unless stub[:status].nil?
        data['hits'] = Stubs::Hits.stub(stub[:hits]) unless stub[:hits].nil?
        data['facets'] = Stubs::Facets.stub(stub[:facets]) unless stub[:facets].nil?
        data['stats'] = Stubs::Stats.stub(stub[:stats]) unless stub[:stats].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Stubber for Stats
    class Stats
      def self.default(visited=[])
        return nil if visited.include?('Stats')
        visited = visited + ['Stats']
        {
          test_key: FieldStats.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::FieldStats.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for FieldStats
    class FieldStats
      def self.default(visited=[])
        return nil if visited.include?('FieldStats')
        visited = visited + ['FieldStats']
        {
          min: 'min',
          max: 'max',
          count: 1,
          missing: 1,
          sum: 1.0,
          sum_of_squares: 1.0,
          mean: 'mean',
          stddev: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::FieldStats.new
        data = {}
        data['min'] = stub[:min] unless stub[:min].nil?
        data['max'] = stub[:max] unless stub[:max].nil?
        data['count'] = stub[:count] unless stub[:count].nil?
        data['missing'] = stub[:missing] unless stub[:missing].nil?
        data['sum'] = Hearth::NumberHelper.serialize(stub[:sum])
        data['sumOfSquares'] = Hearth::NumberHelper.serialize(stub[:sum_of_squares])
        data['mean'] = stub[:mean] unless stub[:mean].nil?
        data['stddev'] = Hearth::NumberHelper.serialize(stub[:stddev])
        data
      end
    end

    # Map Stubber for Facets
    class Facets
      def self.default(visited=[])
        return nil if visited.include?('Facets')
        visited = visited + ['Facets']
        {
          test_key: BucketInfo.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::BucketInfo.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for BucketInfo
    class BucketInfo
      def self.default(visited=[])
        return nil if visited.include?('BucketInfo')
        visited = visited + ['BucketInfo']
        {
          buckets: BucketList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BucketInfo.new
        data = {}
        data['buckets'] = Stubs::BucketList.stub(stub[:buckets]) unless stub[:buckets].nil?
        data
      end
    end

    # List Stubber for BucketList
    class BucketList
      def self.default(visited=[])
        return nil if visited.include?('BucketList')
        visited = visited + ['BucketList']
        [
          Bucket.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Bucket.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Bucket
    class Bucket
      def self.default(visited=[])
        return nil if visited.include?('Bucket')
        visited = visited + ['Bucket']
        {
          value: 'value',
          count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::Bucket.new
        data = {}
        data['value'] = stub[:value] unless stub[:value].nil?
        data['count'] = stub[:count] unless stub[:count].nil?
        data
      end
    end

    # Structure Stubber for Hits
    class Hits
      def self.default(visited=[])
        return nil if visited.include?('Hits')
        visited = visited + ['Hits']
        {
          found: 1,
          start: 1,
          cursor: 'cursor',
          hit: HitList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Hits.new
        data = {}
        data['found'] = stub[:found] unless stub[:found].nil?
        data['start'] = stub[:start] unless stub[:start].nil?
        data['cursor'] = stub[:cursor] unless stub[:cursor].nil?
        data['hit'] = Stubs::HitList.stub(stub[:hit]) unless stub[:hit].nil?
        data
      end
    end

    # List Stubber for HitList
    class HitList
      def self.default(visited=[])
        return nil if visited.include?('HitList')
        visited = visited + ['HitList']
        [
          Hit.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Hit.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Hit
    class Hit
      def self.default(visited=[])
        return nil if visited.include?('Hit')
        visited = visited + ['Hit']
        {
          id: 'id',
          fields: Fields.default(visited),
          exprs: Exprs.default(visited),
          highlights: Highlights.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Hit.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['fields'] = Stubs::Fields.stub(stub[:fields]) unless stub[:fields].nil?
        data['exprs'] = Stubs::Exprs.stub(stub[:exprs]) unless stub[:exprs].nil?
        data['highlights'] = Stubs::Highlights.stub(stub[:highlights]) unless stub[:highlights].nil?
        data
      end
    end

    # Map Stubber for Highlights
    class Highlights
      def self.default(visited=[])
        return nil if visited.include?('Highlights')
        visited = visited + ['Highlights']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Map Stubber for Exprs
    class Exprs
      def self.default(visited=[])
        return nil if visited.include?('Exprs')
        visited = visited + ['Exprs']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Map Stubber for Fields
    class Fields
      def self.default(visited=[])
        return nil if visited.include?('Fields')
        visited = visited + ['Fields']
        {
          test_key: FieldValue.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::FieldValue.stub(value) unless value.nil?
        end
        data
      end
    end

    # List Stubber for FieldValue
    class FieldValue
      def self.default(visited=[])
        return nil if visited.include?('FieldValue')
        visited = visited + ['FieldValue']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SearchStatus
    class SearchStatus
      def self.default(visited=[])
        return nil if visited.include?('SearchStatus')
        visited = visited + ['SearchStatus']
        {
          timems: 1,
          rid: 'rid',
        }
      end

      def self.stub(stub)
        stub ||= Types::SearchStatus.new
        data = {}
        data['timems'] = stub[:timems] unless stub[:timems].nil?
        data['rid'] = stub[:rid] unless stub[:rid].nil?
        data
      end
    end

    # Operation Stubber for Suggest
    class Suggest
      def self.default(visited=[])
        {
          status: SuggestStatus.default(visited),
          suggest: SuggestModel.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['status'] = Stubs::SuggestStatus.stub(stub[:status]) unless stub[:status].nil?
        data['suggest'] = Stubs::SuggestModel.stub(stub[:suggest]) unless stub[:suggest].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for SuggestModel
    class SuggestModel
      def self.default(visited=[])
        return nil if visited.include?('SuggestModel')
        visited = visited + ['SuggestModel']
        {
          query: 'query',
          found: 1,
          suggestions: Suggestions.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SuggestModel.new
        data = {}
        data['query'] = stub[:query] unless stub[:query].nil?
        data['found'] = stub[:found] unless stub[:found].nil?
        data['suggestions'] = Stubs::Suggestions.stub(stub[:suggestions]) unless stub[:suggestions].nil?
        data
      end
    end

    # List Stubber for Suggestions
    class Suggestions
      def self.default(visited=[])
        return nil if visited.include?('Suggestions')
        visited = visited + ['Suggestions']
        [
          SuggestionMatch.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SuggestionMatch.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SuggestionMatch
    class SuggestionMatch
      def self.default(visited=[])
        return nil if visited.include?('SuggestionMatch')
        visited = visited + ['SuggestionMatch']
        {
          suggestion: 'suggestion',
          score: 1,
          id: 'id',
        }
      end

      def self.stub(stub)
        stub ||= Types::SuggestionMatch.new
        data = {}
        data['suggestion'] = stub[:suggestion] unless stub[:suggestion].nil?
        data['score'] = stub[:score] unless stub[:score].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data
      end
    end

    # Structure Stubber for SuggestStatus
    class SuggestStatus
      def self.default(visited=[])
        return nil if visited.include?('SuggestStatus')
        visited = visited + ['SuggestStatus']
        {
          timems: 1,
          rid: 'rid',
        }
      end

      def self.stub(stub)
        stub ||= Types::SuggestStatus.new
        data = {}
        data['timems'] = stub[:timems] unless stub[:timems].nil?
        data['rid'] = stub[:rid] unless stub[:rid].nil?
        data
      end
    end

    # Operation Stubber for UploadDocuments
    class UploadDocuments
      def self.default(visited=[])
        {
          status: 'status',
          adds: 1,
          deletes: 1,
          warnings: DocumentServiceWarnings.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['status'] = stub[:status] unless stub[:status].nil?
        data['adds'] = stub[:adds] unless stub[:adds].nil?
        data['deletes'] = stub[:deletes] unless stub[:deletes].nil?
        data['warnings'] = Stubs::DocumentServiceWarnings.stub(stub[:warnings]) unless stub[:warnings].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for DocumentServiceWarnings
    class DocumentServiceWarnings
      def self.default(visited=[])
        return nil if visited.include?('DocumentServiceWarnings')
        visited = visited + ['DocumentServiceWarnings']
        [
          DocumentServiceWarning.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DocumentServiceWarning.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DocumentServiceWarning
    class DocumentServiceWarning
      def self.default(visited=[])
        return nil if visited.include?('DocumentServiceWarning')
        visited = visited + ['DocumentServiceWarning']
        {
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::DocumentServiceWarning.new
        data = {}
        data['message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end
  end
end
