# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::Health
  module Stubs

    # Operation Stubber for DescribeAffectedAccountsForOrganization
    class DescribeAffectedAccountsForOrganization
      def self.default(visited=[])
        {
          affected_accounts: AffectedAccountsList.default(visited),
          event_scope_code: 'event_scope_code',
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['affectedAccounts'] = AffectedAccountsList.stub(stub[:affected_accounts]) unless stub[:affected_accounts].nil?
        data['eventScopeCode'] = stub[:event_scope_code] unless stub[:event_scope_code].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for affectedAccountsList
    class AffectedAccountsList
      def self.default(visited=[])
        return nil if visited.include?('AffectedAccountsList')
        visited = visited + ['AffectedAccountsList']
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

    # Operation Stubber for DescribeAffectedEntities
    class DescribeAffectedEntities
      def self.default(visited=[])
        {
          entities: EntityList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['entities'] = EntityList.stub(stub[:entities]) unless stub[:entities].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for EntityList
    class EntityList
      def self.default(visited=[])
        return nil if visited.include?('EntityList')
        visited = visited + ['EntityList']
        [
          AffectedEntity.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AffectedEntity.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AffectedEntity
    class AffectedEntity
      def self.default(visited=[])
        return nil if visited.include?('AffectedEntity')
        visited = visited + ['AffectedEntity']
        {
          entity_arn: 'entity_arn',
          event_arn: 'event_arn',
          entity_value: 'entity_value',
          entity_url: 'entity_url',
          aws_account_id: 'aws_account_id',
          last_updated_time: Time.now,
          status_code: 'status_code',
          tags: TagSet.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AffectedEntity.new
        data = {}
        data['entityArn'] = stub[:entity_arn] unless stub[:entity_arn].nil?
        data['eventArn'] = stub[:event_arn] unless stub[:event_arn].nil?
        data['entityValue'] = stub[:entity_value] unless stub[:entity_value].nil?
        data['entityUrl'] = stub[:entity_url] unless stub[:entity_url].nil?
        data['awsAccountId'] = stub[:aws_account_id] unless stub[:aws_account_id].nil?
        data['lastUpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_time]).to_i unless stub[:last_updated_time].nil?
        data['statusCode'] = stub[:status_code] unless stub[:status_code].nil?
        data['tags'] = TagSet.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Map Stubber for tagSet
    class TagSet
      def self.default(visited=[])
        return nil if visited.include?('TagSet')
        visited = visited + ['TagSet']
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

    # Operation Stubber for DescribeAffectedEntitiesForOrganization
    class DescribeAffectedEntitiesForOrganization
      def self.default(visited=[])
        {
          entities: EntityList.default(visited),
          failed_set: DescribeAffectedEntitiesForOrganizationFailedSet.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['entities'] = EntityList.stub(stub[:entities]) unless stub[:entities].nil?
        data['failedSet'] = DescribeAffectedEntitiesForOrganizationFailedSet.stub(stub[:failed_set]) unless stub[:failed_set].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DescribeAffectedEntitiesForOrganizationFailedSet
    class DescribeAffectedEntitiesForOrganizationFailedSet
      def self.default(visited=[])
        return nil if visited.include?('DescribeAffectedEntitiesForOrganizationFailedSet')
        visited = visited + ['DescribeAffectedEntitiesForOrganizationFailedSet']
        [
          OrganizationAffectedEntitiesErrorItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << OrganizationAffectedEntitiesErrorItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for OrganizationAffectedEntitiesErrorItem
    class OrganizationAffectedEntitiesErrorItem
      def self.default(visited=[])
        return nil if visited.include?('OrganizationAffectedEntitiesErrorItem')
        visited = visited + ['OrganizationAffectedEntitiesErrorItem']
        {
          aws_account_id: 'aws_account_id',
          event_arn: 'event_arn',
          error_name: 'error_name',
          error_message: 'error_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::OrganizationAffectedEntitiesErrorItem.new
        data = {}
        data['awsAccountId'] = stub[:aws_account_id] unless stub[:aws_account_id].nil?
        data['eventArn'] = stub[:event_arn] unless stub[:event_arn].nil?
        data['errorName'] = stub[:error_name] unless stub[:error_name].nil?
        data['errorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data
      end
    end

    # Operation Stubber for DescribeEntityAggregates
    class DescribeEntityAggregates
      def self.default(visited=[])
        {
          entity_aggregates: EntityAggregateList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['entityAggregates'] = EntityAggregateList.stub(stub[:entity_aggregates]) unless stub[:entity_aggregates].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for EntityAggregateList
    class EntityAggregateList
      def self.default(visited=[])
        return nil if visited.include?('EntityAggregateList')
        visited = visited + ['EntityAggregateList']
        [
          EntityAggregate.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << EntityAggregate.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EntityAggregate
    class EntityAggregate
      def self.default(visited=[])
        return nil if visited.include?('EntityAggregate')
        visited = visited + ['EntityAggregate']
        {
          event_arn: 'event_arn',
          count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::EntityAggregate.new
        data = {}
        data['eventArn'] = stub[:event_arn] unless stub[:event_arn].nil?
        data['count'] = stub[:count] unless stub[:count].nil?
        data
      end
    end

    # Operation Stubber for DescribeEventAggregates
    class DescribeEventAggregates
      def self.default(visited=[])
        {
          event_aggregates: EventAggregateList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['eventAggregates'] = EventAggregateList.stub(stub[:event_aggregates]) unless stub[:event_aggregates].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for EventAggregateList
    class EventAggregateList
      def self.default(visited=[])
        return nil if visited.include?('EventAggregateList')
        visited = visited + ['EventAggregateList']
        [
          EventAggregate.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << EventAggregate.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EventAggregate
    class EventAggregate
      def self.default(visited=[])
        return nil if visited.include?('EventAggregate')
        visited = visited + ['EventAggregate']
        {
          aggregate_value: 'aggregate_value',
          count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::EventAggregate.new
        data = {}
        data['aggregateValue'] = stub[:aggregate_value] unless stub[:aggregate_value].nil?
        data['count'] = stub[:count] unless stub[:count].nil?
        data
      end
    end

    # Operation Stubber for DescribeEventDetails
    class DescribeEventDetails
      def self.default(visited=[])
        {
          successful_set: DescribeEventDetailsSuccessfulSet.default(visited),
          failed_set: DescribeEventDetailsFailedSet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['successfulSet'] = DescribeEventDetailsSuccessfulSet.stub(stub[:successful_set]) unless stub[:successful_set].nil?
        data['failedSet'] = DescribeEventDetailsFailedSet.stub(stub[:failed_set]) unless stub[:failed_set].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DescribeEventDetailsFailedSet
    class DescribeEventDetailsFailedSet
      def self.default(visited=[])
        return nil if visited.include?('DescribeEventDetailsFailedSet')
        visited = visited + ['DescribeEventDetailsFailedSet']
        [
          EventDetailsErrorItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << EventDetailsErrorItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EventDetailsErrorItem
    class EventDetailsErrorItem
      def self.default(visited=[])
        return nil if visited.include?('EventDetailsErrorItem')
        visited = visited + ['EventDetailsErrorItem']
        {
          event_arn: 'event_arn',
          error_name: 'error_name',
          error_message: 'error_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::EventDetailsErrorItem.new
        data = {}
        data['eventArn'] = stub[:event_arn] unless stub[:event_arn].nil?
        data['errorName'] = stub[:error_name] unless stub[:error_name].nil?
        data['errorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data
      end
    end

    # List Stubber for DescribeEventDetailsSuccessfulSet
    class DescribeEventDetailsSuccessfulSet
      def self.default(visited=[])
        return nil if visited.include?('DescribeEventDetailsSuccessfulSet')
        visited = visited + ['DescribeEventDetailsSuccessfulSet']
        [
          EventDetails.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << EventDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EventDetails
    class EventDetails
      def self.default(visited=[])
        return nil if visited.include?('EventDetails')
        visited = visited + ['EventDetails']
        {
          event: Event.default(visited),
          event_description: EventDescription.default(visited),
          event_metadata: EventMetadata.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::EventDetails.new
        data = {}
        data['event'] = Event.stub(stub[:event]) unless stub[:event].nil?
        data['eventDescription'] = EventDescription.stub(stub[:event_description]) unless stub[:event_description].nil?
        data['eventMetadata'] = EventMetadata.stub(stub[:event_metadata]) unless stub[:event_metadata].nil?
        data
      end
    end

    # Map Stubber for eventMetadata
    class EventMetadata
      def self.default(visited=[])
        return nil if visited.include?('EventMetadata')
        visited = visited + ['EventMetadata']
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

    # Structure Stubber for EventDescription
    class EventDescription
      def self.default(visited=[])
        return nil if visited.include?('EventDescription')
        visited = visited + ['EventDescription']
        {
          latest_description: 'latest_description',
        }
      end

      def self.stub(stub)
        stub ||= Types::EventDescription.new
        data = {}
        data['latestDescription'] = stub[:latest_description] unless stub[:latest_description].nil?
        data
      end
    end

    # Structure Stubber for Event
    class Event
      def self.default(visited=[])
        return nil if visited.include?('Event')
        visited = visited + ['Event']
        {
          arn: 'arn',
          service: 'service',
          event_type_code: 'event_type_code',
          event_type_category: 'event_type_category',
          region: 'region',
          availability_zone: 'availability_zone',
          start_time: Time.now,
          end_time: Time.now,
          last_updated_time: Time.now,
          status_code: 'status_code',
          event_scope_code: 'event_scope_code',
        }
      end

      def self.stub(stub)
        stub ||= Types::Event.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['service'] = stub[:service] unless stub[:service].nil?
        data['eventTypeCode'] = stub[:event_type_code] unless stub[:event_type_code].nil?
        data['eventTypeCategory'] = stub[:event_type_category] unless stub[:event_type_category].nil?
        data['region'] = stub[:region] unless stub[:region].nil?
        data['availabilityZone'] = stub[:availability_zone] unless stub[:availability_zone].nil?
        data['startTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['endTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data['lastUpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_time]).to_i unless stub[:last_updated_time].nil?
        data['statusCode'] = stub[:status_code] unless stub[:status_code].nil?
        data['eventScopeCode'] = stub[:event_scope_code] unless stub[:event_scope_code].nil?
        data
      end
    end

    # Operation Stubber for DescribeEventDetailsForOrganization
    class DescribeEventDetailsForOrganization
      def self.default(visited=[])
        {
          successful_set: DescribeEventDetailsForOrganizationSuccessfulSet.default(visited),
          failed_set: DescribeEventDetailsForOrganizationFailedSet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['successfulSet'] = DescribeEventDetailsForOrganizationSuccessfulSet.stub(stub[:successful_set]) unless stub[:successful_set].nil?
        data['failedSet'] = DescribeEventDetailsForOrganizationFailedSet.stub(stub[:failed_set]) unless stub[:failed_set].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DescribeEventDetailsForOrganizationFailedSet
    class DescribeEventDetailsForOrganizationFailedSet
      def self.default(visited=[])
        return nil if visited.include?('DescribeEventDetailsForOrganizationFailedSet')
        visited = visited + ['DescribeEventDetailsForOrganizationFailedSet']
        [
          OrganizationEventDetailsErrorItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << OrganizationEventDetailsErrorItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for OrganizationEventDetailsErrorItem
    class OrganizationEventDetailsErrorItem
      def self.default(visited=[])
        return nil if visited.include?('OrganizationEventDetailsErrorItem')
        visited = visited + ['OrganizationEventDetailsErrorItem']
        {
          aws_account_id: 'aws_account_id',
          event_arn: 'event_arn',
          error_name: 'error_name',
          error_message: 'error_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::OrganizationEventDetailsErrorItem.new
        data = {}
        data['awsAccountId'] = stub[:aws_account_id] unless stub[:aws_account_id].nil?
        data['eventArn'] = stub[:event_arn] unless stub[:event_arn].nil?
        data['errorName'] = stub[:error_name] unless stub[:error_name].nil?
        data['errorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data
      end
    end

    # List Stubber for DescribeEventDetailsForOrganizationSuccessfulSet
    class DescribeEventDetailsForOrganizationSuccessfulSet
      def self.default(visited=[])
        return nil if visited.include?('DescribeEventDetailsForOrganizationSuccessfulSet')
        visited = visited + ['DescribeEventDetailsForOrganizationSuccessfulSet']
        [
          OrganizationEventDetails.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << OrganizationEventDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for OrganizationEventDetails
    class OrganizationEventDetails
      def self.default(visited=[])
        return nil if visited.include?('OrganizationEventDetails')
        visited = visited + ['OrganizationEventDetails']
        {
          aws_account_id: 'aws_account_id',
          event: Event.default(visited),
          event_description: EventDescription.default(visited),
          event_metadata: EventMetadata.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::OrganizationEventDetails.new
        data = {}
        data['awsAccountId'] = stub[:aws_account_id] unless stub[:aws_account_id].nil?
        data['event'] = Event.stub(stub[:event]) unless stub[:event].nil?
        data['eventDescription'] = EventDescription.stub(stub[:event_description]) unless stub[:event_description].nil?
        data['eventMetadata'] = EventMetadata.stub(stub[:event_metadata]) unless stub[:event_metadata].nil?
        data
      end
    end

    # Operation Stubber for DescribeEventTypes
    class DescribeEventTypes
      def self.default(visited=[])
        {
          event_types: EventTypeList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['eventTypes'] = EventTypeList.stub(stub[:event_types]) unless stub[:event_types].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for EventTypeList
    class EventTypeList
      def self.default(visited=[])
        return nil if visited.include?('EventTypeList')
        visited = visited + ['EventTypeList']
        [
          EventType.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << EventType.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EventType
    class EventType
      def self.default(visited=[])
        return nil if visited.include?('EventType')
        visited = visited + ['EventType']
        {
          service: 'service',
          code: 'code',
          category: 'category',
        }
      end

      def self.stub(stub)
        stub ||= Types::EventType.new
        data = {}
        data['service'] = stub[:service] unless stub[:service].nil?
        data['code'] = stub[:code] unless stub[:code].nil?
        data['category'] = stub[:category] unless stub[:category].nil?
        data
      end
    end

    # Operation Stubber for DescribeEvents
    class DescribeEvents
      def self.default(visited=[])
        {
          events: EventList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['events'] = EventList.stub(stub[:events]) unless stub[:events].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for EventList
    class EventList
      def self.default(visited=[])
        return nil if visited.include?('EventList')
        visited = visited + ['EventList']
        [
          Event.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Event.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeEventsForOrganization
    class DescribeEventsForOrganization
      def self.default(visited=[])
        {
          events: OrganizationEventList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['events'] = OrganizationEventList.stub(stub[:events]) unless stub[:events].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for OrganizationEventList
    class OrganizationEventList
      def self.default(visited=[])
        return nil if visited.include?('OrganizationEventList')
        visited = visited + ['OrganizationEventList']
        [
          OrganizationEvent.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << OrganizationEvent.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for OrganizationEvent
    class OrganizationEvent
      def self.default(visited=[])
        return nil if visited.include?('OrganizationEvent')
        visited = visited + ['OrganizationEvent']
        {
          arn: 'arn',
          service: 'service',
          event_type_code: 'event_type_code',
          event_type_category: 'event_type_category',
          event_scope_code: 'event_scope_code',
          region: 'region',
          start_time: Time.now,
          end_time: Time.now,
          last_updated_time: Time.now,
          status_code: 'status_code',
        }
      end

      def self.stub(stub)
        stub ||= Types::OrganizationEvent.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['service'] = stub[:service] unless stub[:service].nil?
        data['eventTypeCode'] = stub[:event_type_code] unless stub[:event_type_code].nil?
        data['eventTypeCategory'] = stub[:event_type_category] unless stub[:event_type_category].nil?
        data['eventScopeCode'] = stub[:event_scope_code] unless stub[:event_scope_code].nil?
        data['region'] = stub[:region] unless stub[:region].nil?
        data['startTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['endTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data['lastUpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_time]).to_i unless stub[:last_updated_time].nil?
        data['statusCode'] = stub[:status_code] unless stub[:status_code].nil?
        data
      end
    end

    # Operation Stubber for DescribeHealthServiceStatusForOrganization
    class DescribeHealthServiceStatusForOrganization
      def self.default(visited=[])
        {
          health_service_access_status_for_organization: 'health_service_access_status_for_organization',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['healthServiceAccessStatusForOrganization'] = stub[:health_service_access_status_for_organization] unless stub[:health_service_access_status_for_organization].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisableHealthServiceAccessForOrganization
    class DisableHealthServiceAccessForOrganization
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for EnableHealthServiceAccessForOrganization
    class EnableHealthServiceAccessForOrganization
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
