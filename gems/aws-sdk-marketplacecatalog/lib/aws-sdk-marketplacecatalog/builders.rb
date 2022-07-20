# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::MarketplaceCatalog
  module Builders

    # Operation Builder for CancelChangeSet
    class CancelChangeSet
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        http_req.append_path('/CancelChangeSet')
        params = Hearth::Query::ParamList.new
        params['catalog'] = input[:catalog].to_s unless input[:catalog].nil?
        params['changeSetId'] = input[:change_set_id].to_s unless input[:change_set_id].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeChangeSet
    class DescribeChangeSet
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/DescribeChangeSet')
        params = Hearth::Query::ParamList.new
        params['catalog'] = input[:catalog].to_s unless input[:catalog].nil?
        params['changeSetId'] = input[:change_set_id].to_s unless input[:change_set_id].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeEntity
    class DescribeEntity
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/DescribeEntity')
        params = Hearth::Query::ParamList.new
        params['catalog'] = input[:catalog].to_s unless input[:catalog].nil?
        params['entityId'] = input[:entity_id].to_s unless input[:entity_id].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListChangeSets
    class ListChangeSets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/ListChangeSets')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Catalog'] = input[:catalog] unless input[:catalog].nil?
        data['FilterList'] = Builders::FilterList.build(input[:filter_list]) unless input[:filter_list].nil?
        data['Sort'] = Builders::Sort.build(input[:sort]) unless input[:sort].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for Sort
    class Sort
      def self.build(input)
        data = {}
        data['SortBy'] = input[:sort_by] unless input[:sort_by].nil?
        data['SortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data
      end
    end

    # List Builder for FilterList
    class FilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Filter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Filter
    class Filter
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['ValueList'] = Builders::ValueList.build(input[:value_list]) unless input[:value_list].nil?
        data
      end
    end

    # List Builder for ValueList
    class ValueList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListEntities
    class ListEntities
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/ListEntities')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Catalog'] = input[:catalog] unless input[:catalog].nil?
        data['EntityType'] = input[:entity_type] unless input[:entity_type].nil?
        data['FilterList'] = Builders::FilterList.build(input[:filter_list]) unless input[:filter_list].nil?
        data['Sort'] = Builders::Sort.build(input[:sort]) unless input[:sort].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartChangeSet
    class StartChangeSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/StartChangeSet')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Catalog'] = input[:catalog] unless input[:catalog].nil?
        data['ChangeSet'] = Builders::RequestedChangeList.build(input[:change_set]) unless input[:change_set].nil?
        data['ChangeSetName'] = input[:change_set_name] unless input[:change_set_name].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for RequestedChangeList
    class RequestedChangeList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Change.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Change
    class Change
      def self.build(input)
        data = {}
        data['ChangeType'] = input[:change_type] unless input[:change_type].nil?
        data['Entity'] = Builders::Entity.build(input[:entity]) unless input[:entity].nil?
        data['Details'] = input[:details] unless input[:details].nil?
        data['ChangeName'] = input[:change_name] unless input[:change_name].nil?
        data
      end
    end

    # Structure Builder for Entity
    class Entity
      def self.build(input)
        data = {}
        data['Type'] = input[:type] unless input[:type].nil?
        data['Identifier'] = input[:identifier] unless input[:identifier].nil?
        data
      end
    end
  end
end
