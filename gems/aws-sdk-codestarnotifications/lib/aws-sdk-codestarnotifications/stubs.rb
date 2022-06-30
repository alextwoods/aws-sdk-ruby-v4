# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CodestarNotifications
  module Stubs

    # Operation Stubber for CreateNotificationRule
    class CreateNotificationRule
      def self.default(visited=[])
        {
          arn: 'arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteNotificationRule
    class DeleteNotificationRule
      def self.default(visited=[])
        {
          arn: 'arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteTarget
    class DeleteTarget
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeNotificationRule
    class DescribeNotificationRule
      def self.default(visited=[])
        {
          arn: 'arn',
          name: 'name',
          event_types: Stubs::EventTypeBatch.default(visited),
          resource: 'resource',
          targets: Stubs::TargetsBatch.default(visited),
          detail_type: 'detail_type',
          created_by: 'created_by',
          status: 'status',
          created_timestamp: Time.now,
          last_modified_timestamp: Time.now,
          tags: Stubs::Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['EventTypes'] = Stubs::EventTypeBatch.stub(stub[:event_types]) unless stub[:event_types].nil?
        data['Resource'] = stub[:resource] unless stub[:resource].nil?
        data['Targets'] = Stubs::TargetsBatch.stub(stub[:targets]) unless stub[:targets].nil?
        data['DetailType'] = stub[:detail_type] unless stub[:detail_type].nil?
        data['CreatedBy'] = stub[:created_by] unless stub[:created_by].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['CreatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_timestamp]).to_i unless stub[:created_timestamp].nil?
        data['LastModifiedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_timestamp]).to_i unless stub[:last_modified_timestamp].nil?
        data['Tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Stubber for Tags
    class Tags
      def self.default(visited=[])
        return nil if visited.include?('Tags')
        visited = visited + ['Tags']
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

    # List Stubber for TargetsBatch
    class TargetsBatch
      def self.default(visited=[])
        return nil if visited.include?('TargetsBatch')
        visited = visited + ['TargetsBatch']
        [
          Stubs::TargetSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::TargetSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TargetSummary
    class TargetSummary
      def self.default(visited=[])
        return nil if visited.include?('TargetSummary')
        visited = visited + ['TargetSummary']
        {
          target_address: 'target_address',
          target_type: 'target_type',
          target_status: 'target_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::TargetSummary.new
        data = {}
        data['TargetAddress'] = stub[:target_address] unless stub[:target_address].nil?
        data['TargetType'] = stub[:target_type] unless stub[:target_type].nil?
        data['TargetStatus'] = stub[:target_status] unless stub[:target_status].nil?
        data
      end
    end

    # List Stubber for EventTypeBatch
    class EventTypeBatch
      def self.default(visited=[])
        return nil if visited.include?('EventTypeBatch')
        visited = visited + ['EventTypeBatch']
        [
          Stubs::EventTypeSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::EventTypeSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EventTypeSummary
    class EventTypeSummary
      def self.default(visited=[])
        return nil if visited.include?('EventTypeSummary')
        visited = visited + ['EventTypeSummary']
        {
          event_type_id: 'event_type_id',
          service_name: 'service_name',
          event_type_name: 'event_type_name',
          resource_type: 'resource_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::EventTypeSummary.new
        data = {}
        data['EventTypeId'] = stub[:event_type_id] unless stub[:event_type_id].nil?
        data['ServiceName'] = stub[:service_name] unless stub[:service_name].nil?
        data['EventTypeName'] = stub[:event_type_name] unless stub[:event_type_name].nil?
        data['ResourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data
      end
    end

    # Operation Stubber for ListEventTypes
    class ListEventTypes
      def self.default(visited=[])
        {
          event_types: Stubs::EventTypeBatch.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['EventTypes'] = Stubs::EventTypeBatch.stub(stub[:event_types]) unless stub[:event_types].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListNotificationRules
    class ListNotificationRules
      def self.default(visited=[])
        {
          next_token: 'next_token',
          notification_rules: Stubs::NotificationRuleBatch.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['NotificationRules'] = Stubs::NotificationRuleBatch.stub(stub[:notification_rules]) unless stub[:notification_rules].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for NotificationRuleBatch
    class NotificationRuleBatch
      def self.default(visited=[])
        return nil if visited.include?('NotificationRuleBatch')
        visited = visited + ['NotificationRuleBatch']
        [
          Stubs::NotificationRuleSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::NotificationRuleSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for NotificationRuleSummary
    class NotificationRuleSummary
      def self.default(visited=[])
        return nil if visited.include?('NotificationRuleSummary')
        visited = visited + ['NotificationRuleSummary']
        {
          id: 'id',
          arn: 'arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::NotificationRuleSummary.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: Stubs::Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListTargets
    class ListTargets
      def self.default(visited=[])
        {
          targets: Stubs::TargetsBatch.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Targets'] = Stubs::TargetsBatch.stub(stub[:targets]) unless stub[:targets].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for Subscribe
    class Subscribe
      def self.default(visited=[])
        {
          arn: 'arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
          tags: Stubs::Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for Unsubscribe
    class Unsubscribe
      def self.default(visited=[])
        {
          arn: 'arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UntagResource
    class UntagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateNotificationRule
    class UpdateNotificationRule
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end
  end
end
