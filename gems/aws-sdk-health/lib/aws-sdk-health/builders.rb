# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::Health
  module Builders

    # Operation Builder for DescribeAffectedAccountsForOrganization
    class DescribeAffectedAccountsForOrganization
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHealth_20160804.DescribeAffectedAccountsForOrganization'
        data = {}
        data['eventArn'] = input[:event_arn] unless input[:event_arn].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeAffectedEntities
    class DescribeAffectedEntities
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHealth_20160804.DescribeAffectedEntities'
        data = {}
        data['filter'] = EntityFilter.build(input[:filter]) unless input[:filter].nil?
        data['locale'] = input[:locale] unless input[:locale].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for EntityFilter
    class EntityFilter
      def self.build(input)
        data = {}
        data['eventArns'] = EventArnList.build(input[:event_arns]) unless input[:event_arns].nil?
        data['entityArns'] = EntityArnList.build(input[:entity_arns]) unless input[:entity_arns].nil?
        data['entityValues'] = EntityValueList.build(input[:entity_values]) unless input[:entity_values].nil?
        data['lastUpdatedTimes'] = DateTimeRangeList.build(input[:last_updated_times]) unless input[:last_updated_times].nil?
        data['tags'] = TagFilter.build(input[:tags]) unless input[:tags].nil?
        data['statusCodes'] = EntityStatusCodeList.build(input[:status_codes]) unless input[:status_codes].nil?
        data
      end
    end

    # List Builder for entityStatusCodeList
    class EntityStatusCodeList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for tagFilter
    class TagFilter
      def self.build(input)
        data = []
        input.each do |element|
          data << TagSet.build(element) unless element.nil?
        end
        data
      end
    end

    # Map Builder for tagSet
    class TagSet
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Builder for dateTimeRangeList
    class DateTimeRangeList
      def self.build(input)
        data = []
        input.each do |element|
          data << DateTimeRange.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DateTimeRange
    class DateTimeRange
      def self.build(input)
        data = {}
        data['from'] = Hearth::TimeHelper.to_epoch_seconds(input[:from]).to_i unless input[:from].nil?
        data['to'] = Hearth::TimeHelper.to_epoch_seconds(input[:to]).to_i unless input[:to].nil?
        data
      end
    end

    # List Builder for entityValueList
    class EntityValueList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for entityArnList
    class EntityArnList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for eventArnList
    class EventArnList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeAffectedEntitiesForOrganization
    class DescribeAffectedEntitiesForOrganization
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHealth_20160804.DescribeAffectedEntitiesForOrganization'
        data = {}
        data['organizationEntityFilters'] = OrganizationEntityFiltersList.build(input[:organization_entity_filters]) unless input[:organization_entity_filters].nil?
        data['locale'] = input[:locale] unless input[:locale].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for OrganizationEntityFiltersList
    class OrganizationEntityFiltersList
      def self.build(input)
        data = []
        input.each do |element|
          data << EventAccountFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for EventAccountFilter
    class EventAccountFilter
      def self.build(input)
        data = {}
        data['eventArn'] = input[:event_arn] unless input[:event_arn].nil?
        data['awsAccountId'] = input[:aws_account_id] unless input[:aws_account_id].nil?
        data
      end
    end

    # Operation Builder for DescribeEntityAggregates
    class DescribeEntityAggregates
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHealth_20160804.DescribeEntityAggregates'
        data = {}
        data['eventArns'] = EventArnsList.build(input[:event_arns]) unless input[:event_arns].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for EventArnsList
    class EventArnsList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeEventAggregates
    class DescribeEventAggregates
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHealth_20160804.DescribeEventAggregates'
        data = {}
        data['filter'] = EventFilter.build(input[:filter]) unless input[:filter].nil?
        data['aggregateField'] = input[:aggregate_field] unless input[:aggregate_field].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for EventFilter
    class EventFilter
      def self.build(input)
        data = {}
        data['eventArns'] = EventArnList.build(input[:event_arns]) unless input[:event_arns].nil?
        data['eventTypeCodes'] = EventTypeList2.build(input[:event_type_codes]) unless input[:event_type_codes].nil?
        data['services'] = ServiceList.build(input[:services]) unless input[:services].nil?
        data['regions'] = RegionList.build(input[:regions]) unless input[:regions].nil?
        data['availabilityZones'] = AvailabilityZones.build(input[:availability_zones]) unless input[:availability_zones].nil?
        data['startTimes'] = DateTimeRangeList.build(input[:start_times]) unless input[:start_times].nil?
        data['endTimes'] = DateTimeRangeList.build(input[:end_times]) unless input[:end_times].nil?
        data['lastUpdatedTimes'] = DateTimeRangeList.build(input[:last_updated_times]) unless input[:last_updated_times].nil?
        data['entityArns'] = EntityArnList.build(input[:entity_arns]) unless input[:entity_arns].nil?
        data['entityValues'] = EntityValueList.build(input[:entity_values]) unless input[:entity_values].nil?
        data['eventTypeCategories'] = EventTypeCategoryList2.build(input[:event_type_categories]) unless input[:event_type_categories].nil?
        data['tags'] = TagFilter.build(input[:tags]) unless input[:tags].nil?
        data['eventStatusCodes'] = EventStatusCodeList.build(input[:event_status_codes]) unless input[:event_status_codes].nil?
        data
      end
    end

    # List Builder for eventStatusCodeList
    class EventStatusCodeList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for eventTypeCategoryList2
    class EventTypeCategoryList2
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for availabilityZones
    class AvailabilityZones
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for regionList
    class RegionList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for serviceList
    class ServiceList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for eventTypeList2
    class EventTypeList2
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeEventDetails
    class DescribeEventDetails
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHealth_20160804.DescribeEventDetails'
        data = {}
        data['eventArns'] = EventArnList.build(input[:event_arns]) unless input[:event_arns].nil?
        data['locale'] = input[:locale] unless input[:locale].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeEventDetailsForOrganization
    class DescribeEventDetailsForOrganization
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHealth_20160804.DescribeEventDetailsForOrganization'
        data = {}
        data['organizationEventDetailFilters'] = OrganizationEventDetailFiltersList.build(input[:organization_event_detail_filters]) unless input[:organization_event_detail_filters].nil?
        data['locale'] = input[:locale] unless input[:locale].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for OrganizationEventDetailFiltersList
    class OrganizationEventDetailFiltersList
      def self.build(input)
        data = []
        input.each do |element|
          data << EventAccountFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeEventTypes
    class DescribeEventTypes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHealth_20160804.DescribeEventTypes'
        data = {}
        data['filter'] = EventTypeFilter.build(input[:filter]) unless input[:filter].nil?
        data['locale'] = input[:locale] unless input[:locale].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for EventTypeFilter
    class EventTypeFilter
      def self.build(input)
        data = {}
        data['eventTypeCodes'] = EventTypeCodeList.build(input[:event_type_codes]) unless input[:event_type_codes].nil?
        data['services'] = ServiceList.build(input[:services]) unless input[:services].nil?
        data['eventTypeCategories'] = EventTypeCategoryList.build(input[:event_type_categories]) unless input[:event_type_categories].nil?
        data
      end
    end

    # List Builder for EventTypeCategoryList
    class EventTypeCategoryList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for EventTypeCodeList
    class EventTypeCodeList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeEvents
    class DescribeEvents
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHealth_20160804.DescribeEvents'
        data = {}
        data['filter'] = EventFilter.build(input[:filter]) unless input[:filter].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['locale'] = input[:locale] unless input[:locale].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeEventsForOrganization
    class DescribeEventsForOrganization
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHealth_20160804.DescribeEventsForOrganization'
        data = {}
        data['filter'] = OrganizationEventFilter.build(input[:filter]) unless input[:filter].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['locale'] = input[:locale] unless input[:locale].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for OrganizationEventFilter
    class OrganizationEventFilter
      def self.build(input)
        data = {}
        data['eventTypeCodes'] = EventTypeList2.build(input[:event_type_codes]) unless input[:event_type_codes].nil?
        data['awsAccountIds'] = AwsAccountIdsList.build(input[:aws_account_ids]) unless input[:aws_account_ids].nil?
        data['services'] = ServiceList.build(input[:services]) unless input[:services].nil?
        data['regions'] = RegionList.build(input[:regions]) unless input[:regions].nil?
        data['startTime'] = DateTimeRange.build(input[:start_time]) unless input[:start_time].nil?
        data['endTime'] = DateTimeRange.build(input[:end_time]) unless input[:end_time].nil?
        data['lastUpdatedTime'] = DateTimeRange.build(input[:last_updated_time]) unless input[:last_updated_time].nil?
        data['entityArns'] = EntityArnList.build(input[:entity_arns]) unless input[:entity_arns].nil?
        data['entityValues'] = EntityValueList.build(input[:entity_values]) unless input[:entity_values].nil?
        data['eventTypeCategories'] = EventTypeCategoryList2.build(input[:event_type_categories]) unless input[:event_type_categories].nil?
        data['eventStatusCodes'] = EventStatusCodeList.build(input[:event_status_codes]) unless input[:event_status_codes].nil?
        data
      end
    end

    # List Builder for awsAccountIdsList
    class AwsAccountIdsList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeHealthServiceStatusForOrganization
    class DescribeHealthServiceStatusForOrganization
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHealth_20160804.DescribeHealthServiceStatusForOrganization'
        data = {}
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisableHealthServiceAccessForOrganization
    class DisableHealthServiceAccessForOrganization
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHealth_20160804.DisableHealthServiceAccessForOrganization'
        data = {}
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for EnableHealthServiceAccessForOrganization
    class EnableHealthServiceAccessForOrganization
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHealth_20160804.EnableHealthServiceAccessForOrganization'
        data = {}
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
