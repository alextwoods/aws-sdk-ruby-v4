# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::Health
  module Parsers

    # Operation Parser for DescribeAffectedAccountsForOrganization
    class DescribeAffectedAccountsForOrganization
      def self.parse(http_resp)
        data = Types::DescribeAffectedAccountsForOrganizationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.affected_accounts = (Parsers::AffectedAccountsList.parse(map['affectedAccounts']) unless map['affectedAccounts'].nil?)
        data.event_scope_code = map['eventScopeCode']
        data.next_token = map['nextToken']
        data
      end
    end

    class AffectedAccountsList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Error Parser for InvalidPaginationToken
    class InvalidPaginationToken
      def self.parse(http_resp)
        data = Types::InvalidPaginationToken.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DescribeAffectedEntities
    class DescribeAffectedEntities
      def self.parse(http_resp)
        data = Types::DescribeAffectedEntitiesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.entities = (Parsers::EntityList.parse(map['entities']) unless map['entities'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class EntityList
      def self.parse(list)
        list.map do |value|
          Parsers::AffectedEntity.parse(value) unless value.nil?
        end
      end
    end

    class AffectedEntity
      def self.parse(map)
        data = Types::AffectedEntity.new
        data.entity_arn = map['entityArn']
        data.event_arn = map['eventArn']
        data.entity_value = map['entityValue']
        data.entity_url = map['entityUrl']
        data.aws_account_id = map['awsAccountId']
        data.last_updated_time = Time.at(map['lastUpdatedTime'].to_i) if map['lastUpdatedTime']
        data.status_code = map['statusCode']
        data.tags = (Parsers::TagSet.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    class TagSet
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Error Parser for UnsupportedLocale
    class UnsupportedLocale
      def self.parse(http_resp)
        data = Types::UnsupportedLocale.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DescribeAffectedEntitiesForOrganization
    class DescribeAffectedEntitiesForOrganization
      def self.parse(http_resp)
        data = Types::DescribeAffectedEntitiesForOrganizationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.entities = (Parsers::EntityList.parse(map['entities']) unless map['entities'].nil?)
        data.failed_set = (Parsers::DescribeAffectedEntitiesForOrganizationFailedSet.parse(map['failedSet']) unless map['failedSet'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class DescribeAffectedEntitiesForOrganizationFailedSet
      def self.parse(list)
        list.map do |value|
          Parsers::OrganizationAffectedEntitiesErrorItem.parse(value) unless value.nil?
        end
      end
    end

    class OrganizationAffectedEntitiesErrorItem
      def self.parse(map)
        data = Types::OrganizationAffectedEntitiesErrorItem.new
        data.aws_account_id = map['awsAccountId']
        data.event_arn = map['eventArn']
        data.error_name = map['errorName']
        data.error_message = map['errorMessage']
        return data
      end
    end

    # Operation Parser for DescribeEntityAggregates
    class DescribeEntityAggregates
      def self.parse(http_resp)
        data = Types::DescribeEntityAggregatesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.entity_aggregates = (Parsers::EntityAggregateList.parse(map['entityAggregates']) unless map['entityAggregates'].nil?)
        data
      end
    end

    class EntityAggregateList
      def self.parse(list)
        list.map do |value|
          Parsers::EntityAggregate.parse(value) unless value.nil?
        end
      end
    end

    class EntityAggregate
      def self.parse(map)
        data = Types::EntityAggregate.new
        data.event_arn = map['eventArn']
        data.count = map['count']
        return data
      end
    end

    # Operation Parser for DescribeEventAggregates
    class DescribeEventAggregates
      def self.parse(http_resp)
        data = Types::DescribeEventAggregatesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.event_aggregates = (Parsers::EventAggregateList.parse(map['eventAggregates']) unless map['eventAggregates'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class EventAggregateList
      def self.parse(list)
        list.map do |value|
          Parsers::EventAggregate.parse(value) unless value.nil?
        end
      end
    end

    class EventAggregate
      def self.parse(map)
        data = Types::EventAggregate.new
        data.aggregate_value = map['aggregateValue']
        data.count = map['count']
        return data
      end
    end

    # Operation Parser for DescribeEventDetails
    class DescribeEventDetails
      def self.parse(http_resp)
        data = Types::DescribeEventDetailsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.successful_set = (Parsers::DescribeEventDetailsSuccessfulSet.parse(map['successfulSet']) unless map['successfulSet'].nil?)
        data.failed_set = (Parsers::DescribeEventDetailsFailedSet.parse(map['failedSet']) unless map['failedSet'].nil?)
        data
      end
    end

    class DescribeEventDetailsFailedSet
      def self.parse(list)
        list.map do |value|
          Parsers::EventDetailsErrorItem.parse(value) unless value.nil?
        end
      end
    end

    class EventDetailsErrorItem
      def self.parse(map)
        data = Types::EventDetailsErrorItem.new
        data.event_arn = map['eventArn']
        data.error_name = map['errorName']
        data.error_message = map['errorMessage']
        return data
      end
    end

    class DescribeEventDetailsSuccessfulSet
      def self.parse(list)
        list.map do |value|
          Parsers::EventDetails.parse(value) unless value.nil?
        end
      end
    end

    class EventDetails
      def self.parse(map)
        data = Types::EventDetails.new
        data.event = (Parsers::Event.parse(map['event']) unless map['event'].nil?)
        data.event_description = (Parsers::EventDescription.parse(map['eventDescription']) unless map['eventDescription'].nil?)
        data.event_metadata = (Parsers::EventMetadata.parse(map['eventMetadata']) unless map['eventMetadata'].nil?)
        return data
      end
    end

    class EventMetadata
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class EventDescription
      def self.parse(map)
        data = Types::EventDescription.new
        data.latest_description = map['latestDescription']
        return data
      end
    end

    class Event
      def self.parse(map)
        data = Types::Event.new
        data.arn = map['arn']
        data.service = map['service']
        data.event_type_code = map['eventTypeCode']
        data.event_type_category = map['eventTypeCategory']
        data.region = map['region']
        data.availability_zone = map['availabilityZone']
        data.start_time = Time.at(map['startTime'].to_i) if map['startTime']
        data.end_time = Time.at(map['endTime'].to_i) if map['endTime']
        data.last_updated_time = Time.at(map['lastUpdatedTime'].to_i) if map['lastUpdatedTime']
        data.status_code = map['statusCode']
        data.event_scope_code = map['eventScopeCode']
        return data
      end
    end

    # Operation Parser for DescribeEventDetailsForOrganization
    class DescribeEventDetailsForOrganization
      def self.parse(http_resp)
        data = Types::DescribeEventDetailsForOrganizationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.successful_set = (Parsers::DescribeEventDetailsForOrganizationSuccessfulSet.parse(map['successfulSet']) unless map['successfulSet'].nil?)
        data.failed_set = (Parsers::DescribeEventDetailsForOrganizationFailedSet.parse(map['failedSet']) unless map['failedSet'].nil?)
        data
      end
    end

    class DescribeEventDetailsForOrganizationFailedSet
      def self.parse(list)
        list.map do |value|
          Parsers::OrganizationEventDetailsErrorItem.parse(value) unless value.nil?
        end
      end
    end

    class OrganizationEventDetailsErrorItem
      def self.parse(map)
        data = Types::OrganizationEventDetailsErrorItem.new
        data.aws_account_id = map['awsAccountId']
        data.event_arn = map['eventArn']
        data.error_name = map['errorName']
        data.error_message = map['errorMessage']
        return data
      end
    end

    class DescribeEventDetailsForOrganizationSuccessfulSet
      def self.parse(list)
        list.map do |value|
          Parsers::OrganizationEventDetails.parse(value) unless value.nil?
        end
      end
    end

    class OrganizationEventDetails
      def self.parse(map)
        data = Types::OrganizationEventDetails.new
        data.aws_account_id = map['awsAccountId']
        data.event = (Parsers::Event.parse(map['event']) unless map['event'].nil?)
        data.event_description = (Parsers::EventDescription.parse(map['eventDescription']) unless map['eventDescription'].nil?)
        data.event_metadata = (Parsers::EventMetadata.parse(map['eventMetadata']) unless map['eventMetadata'].nil?)
        return data
      end
    end

    # Operation Parser for DescribeEventTypes
    class DescribeEventTypes
      def self.parse(http_resp)
        data = Types::DescribeEventTypesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.event_types = (Parsers::EventTypeList.parse(map['eventTypes']) unless map['eventTypes'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class EventTypeList
      def self.parse(list)
        list.map do |value|
          Parsers::EventType.parse(value) unless value.nil?
        end
      end
    end

    class EventType
      def self.parse(map)
        data = Types::EventType.new
        data.service = map['service']
        data.code = map['code']
        data.category = map['category']
        return data
      end
    end

    # Operation Parser for DescribeEvents
    class DescribeEvents
      def self.parse(http_resp)
        data = Types::DescribeEventsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.events = (Parsers::EventList.parse(map['events']) unless map['events'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class EventList
      def self.parse(list)
        list.map do |value|
          Parsers::Event.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeEventsForOrganization
    class DescribeEventsForOrganization
      def self.parse(http_resp)
        data = Types::DescribeEventsForOrganizationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.events = (Parsers::OrganizationEventList.parse(map['events']) unless map['events'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class OrganizationEventList
      def self.parse(list)
        list.map do |value|
          Parsers::OrganizationEvent.parse(value) unless value.nil?
        end
      end
    end

    class OrganizationEvent
      def self.parse(map)
        data = Types::OrganizationEvent.new
        data.arn = map['arn']
        data.service = map['service']
        data.event_type_code = map['eventTypeCode']
        data.event_type_category = map['eventTypeCategory']
        data.event_scope_code = map['eventScopeCode']
        data.region = map['region']
        data.start_time = Time.at(map['startTime'].to_i) if map['startTime']
        data.end_time = Time.at(map['endTime'].to_i) if map['endTime']
        data.last_updated_time = Time.at(map['lastUpdatedTime'].to_i) if map['lastUpdatedTime']
        data.status_code = map['statusCode']
        return data
      end
    end

    # Operation Parser for DescribeHealthServiceStatusForOrganization
    class DescribeHealthServiceStatusForOrganization
      def self.parse(http_resp)
        data = Types::DescribeHealthServiceStatusForOrganizationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.health_service_access_status_for_organization = map['healthServiceAccessStatusForOrganization']
        data
      end
    end

    # Operation Parser for DisableHealthServiceAccessForOrganization
    class DisableHealthServiceAccessForOrganization
      def self.parse(http_resp)
        data = Types::DisableHealthServiceAccessForOrganizationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for ConcurrentModificationException
    class ConcurrentModificationException
      def self.parse(http_resp)
        data = Types::ConcurrentModificationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for EnableHealthServiceAccessForOrganization
    class EnableHealthServiceAccessForOrganization
      def self.parse(http_resp)
        data = Types::EnableHealthServiceAccessForOrganizationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end
  end
end
