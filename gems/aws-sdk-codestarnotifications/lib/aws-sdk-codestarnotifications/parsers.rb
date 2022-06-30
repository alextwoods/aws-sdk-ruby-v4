# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::CodestarNotifications
  module Parsers

    # Operation Parser for CreateNotificationRule
    class CreateNotificationRule
      def self.parse(http_resp)
        data = Types::CreateNotificationRuleOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data
      end
    end

    # Error Parser for ConfigurationException
    class ConfigurationException
      def self.parse(http_resp)
        data = Types::ConfigurationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ConcurrentModificationException
    class ConcurrentModificationException
      def self.parse(http_resp)
        data = Types::ConcurrentModificationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for LimitExceededException
    class LimitExceededException
      def self.parse(http_resp)
        data = Types::LimitExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ResourceAlreadyExistsException
    class ResourceAlreadyExistsException
      def self.parse(http_resp)
        data = Types::ResourceAlreadyExistsException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeleteNotificationRule
    class DeleteNotificationRule
      def self.parse(http_resp)
        data = Types::DeleteNotificationRuleOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data
      end
    end

    # Operation Parser for DeleteTarget
    class DeleteTarget
      def self.parse(http_resp)
        data = Types::DeleteTargetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DescribeNotificationRule
    class DescribeNotificationRule
      def self.parse(http_resp)
        data = Types::DescribeNotificationRuleOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.name = map['Name']
        data.event_types = (Parsers::EventTypeBatch.parse(map['EventTypes']) unless map['EventTypes'].nil?)
        data.resource = map['Resource']
        data.targets = (Parsers::TargetsBatch.parse(map['Targets']) unless map['Targets'].nil?)
        data.detail_type = map['DetailType']
        data.created_by = map['CreatedBy']
        data.status = map['Status']
        data.created_timestamp = Time.at(map['CreatedTimestamp'].to_i) if map['CreatedTimestamp']
        data.last_modified_timestamp = Time.at(map['LastModifiedTimestamp'].to_i) if map['LastModifiedTimestamp']
        data.tags = (Parsers::Tags.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    class Tags
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class TargetsBatch
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::TargetSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class TargetSummary
      def self.parse(map)
        data = Types::TargetSummary.new
        data.target_address = map['TargetAddress']
        data.target_type = map['TargetType']
        data.target_status = map['TargetStatus']
        return data
      end
    end

    class EventTypeBatch
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::EventTypeSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class EventTypeSummary
      def self.parse(map)
        data = Types::EventTypeSummary.new
        data.event_type_id = map['EventTypeId']
        data.service_name = map['ServiceName']
        data.event_type_name = map['EventTypeName']
        data.resource_type = map['ResourceType']
        return data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for ListEventTypes
    class ListEventTypes
      def self.parse(http_resp)
        data = Types::ListEventTypesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.event_types = (Parsers::EventTypeBatch.parse(map['EventTypes']) unless map['EventTypes'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Error Parser for InvalidNextTokenException
    class InvalidNextTokenException
      def self.parse(http_resp)
        data = Types::InvalidNextTokenException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for ListNotificationRules
    class ListNotificationRules
      def self.parse(http_resp)
        data = Types::ListNotificationRulesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['NextToken']
        data.notification_rules = (Parsers::NotificationRuleBatch.parse(map['NotificationRules']) unless map['NotificationRules'].nil?)
        data
      end
    end

    class NotificationRuleBatch
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::NotificationRuleSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class NotificationRuleSummary
      def self.parse(map)
        data = Types::NotificationRuleSummary.new
        data.id = map['Id']
        data.arn = map['Arn']
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (Parsers::Tags.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    # Operation Parser for ListTargets
    class ListTargets
      def self.parse(http_resp)
        data = Types::ListTargetsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.targets = (Parsers::TargetsBatch.parse(map['Targets']) unless map['Targets'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for Subscribe
    class Subscribe
      def self.parse(http_resp)
        data = Types::SubscribeOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (Parsers::Tags.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    # Operation Parser for Unsubscribe
    class Unsubscribe
      def self.parse(http_resp)
        data = Types::UnsubscribeOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateNotificationRule
    class UpdateNotificationRule
      def self.parse(http_resp)
        data = Types::UpdateNotificationRuleOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end
  end
end
