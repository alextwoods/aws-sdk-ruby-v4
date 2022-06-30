# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::CodestarNotifications
  module Builders

    # Operation Builder for CreateNotificationRule
    class CreateNotificationRule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/createNotificationRule')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['EventTypeIds'] = Builders::EventTypeIds.build(input[:event_type_ids]) unless input[:event_type_ids].nil?
        data['Resource'] = input[:resource] unless input[:resource].nil?
        data['Targets'] = Builders::Targets.build(input[:targets]) unless input[:targets].nil?
        data['DetailType'] = input[:detail_type] unless input[:detail_type].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['Tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        data['Status'] = input[:status] unless input[:status].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for Tags
    class Tags
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Builder for Targets
    class Targets
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Target.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Target
    class Target
      def self.build(input)
        data = {}
        data['TargetType'] = input[:target_type] unless input[:target_type].nil?
        data['TargetAddress'] = input[:target_address] unless input[:target_address].nil?
        data
      end
    end

    # List Builder for EventTypeIds
    class EventTypeIds
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DeleteNotificationRule
    class DeleteNotificationRule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/deleteNotificationRule')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Arn'] = input[:arn] unless input[:arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteTarget
    class DeleteTarget
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/deleteTarget')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['TargetAddress'] = input[:target_address] unless input[:target_address].nil?
        data['ForceUnsubscribeAll'] = input[:force_unsubscribe_all] unless input[:force_unsubscribe_all].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeNotificationRule
    class DescribeNotificationRule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/describeNotificationRule')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Arn'] = input[:arn] unless input[:arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListEventTypes
    class ListEventTypes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/listEventTypes')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Filters'] = Builders::ListEventTypesFilters.build(input[:filters]) unless input[:filters].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ListEventTypesFilters
    class ListEventTypesFilters
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ListEventTypesFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ListEventTypesFilter
    class ListEventTypesFilter
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for ListNotificationRules
    class ListNotificationRules
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/listNotificationRules')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Filters'] = Builders::ListNotificationRulesFilters.build(input[:filters]) unless input[:filters].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ListNotificationRulesFilters
    class ListNotificationRulesFilters
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ListNotificationRulesFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ListNotificationRulesFilter
    class ListNotificationRulesFilter
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/listTagsForResource')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Arn'] = input[:arn] unless input[:arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTargets
    class ListTargets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/listTargets')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Filters'] = Builders::ListTargetsFilters.build(input[:filters]) unless input[:filters].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ListTargetsFilters
    class ListTargetsFilters
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ListTargetsFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ListTargetsFilter
    class ListTargetsFilter
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for Subscribe
    class Subscribe
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/subscribe')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Arn'] = input[:arn] unless input[:arn].nil?
        data['Target'] = Builders::Target.build(input[:target]) unless input[:target].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/tagResource')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Arn'] = input[:arn] unless input[:arn].nil?
        data['Tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for Unsubscribe
    class Unsubscribe
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/unsubscribe')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Arn'] = input[:arn] unless input[:arn].nil?
        data['TargetAddress'] = input[:target_address] unless input[:target_address].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/untagResource')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Arn'] = input[:arn] unless input[:arn].nil?
        data['TagKeys'] = Builders::TagKeys.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagKeys
    class TagKeys
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateNotificationRule
    class UpdateNotificationRule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/updateNotificationRule')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Arn'] = input[:arn] unless input[:arn].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Status'] = input[:status] unless input[:status].nil?
        data['EventTypeIds'] = Builders::EventTypeIds.build(input[:event_type_ids]) unless input[:event_type_ids].nil?
        data['Targets'] = Builders::Targets.build(input[:targets]) unless input[:targets].nil?
        data['DetailType'] = input[:detail_type] unless input[:detail_type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
