# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::Health
  module Validators

    class AffectedEntity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AffectedEntity, context: context)
        Hearth::Validator.validate!(input[:entity_arn], ::String, context: "#{context}[:entity_arn]")
        Hearth::Validator.validate!(input[:event_arn], ::String, context: "#{context}[:event_arn]")
        Hearth::Validator.validate!(input[:entity_value], ::String, context: "#{context}[:entity_value]")
        Hearth::Validator.validate!(input[:entity_url], ::String, context: "#{context}[:entity_url]")
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:last_updated_time], ::Time, context: "#{context}[:last_updated_time]")
        Hearth::Validator.validate!(input[:status_code], ::String, context: "#{context}[:status_code]")
        TagSet.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ConcurrentModificationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConcurrentModificationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DateTimeRange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DateTimeRange, context: context)
        Hearth::Validator.validate!(input[:from], ::Time, context: "#{context}[:from]")
        Hearth::Validator.validate!(input[:to], ::Time, context: "#{context}[:to]")
      end
    end

    class DescribeAffectedAccountsForOrganizationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAffectedAccountsForOrganizationInput, context: context)
        Hearth::Validator.validate!(input[:event_arn], ::String, context: "#{context}[:event_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeAffectedAccountsForOrganizationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAffectedAccountsForOrganizationOutput, context: context)
        AffectedAccountsList.validate!(input[:affected_accounts], context: "#{context}[:affected_accounts]") unless input[:affected_accounts].nil?
        Hearth::Validator.validate!(input[:event_scope_code], ::String, context: "#{context}[:event_scope_code]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeAffectedEntitiesForOrganizationFailedSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          OrganizationAffectedEntitiesErrorItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DescribeAffectedEntitiesForOrganizationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAffectedEntitiesForOrganizationInput, context: context)
        OrganizationEntityFiltersList.validate!(input[:organization_entity_filters], context: "#{context}[:organization_entity_filters]") unless input[:organization_entity_filters].nil?
        Hearth::Validator.validate!(input[:locale], ::String, context: "#{context}[:locale]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeAffectedEntitiesForOrganizationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAffectedEntitiesForOrganizationOutput, context: context)
        EntityList.validate!(input[:entities], context: "#{context}[:entities]") unless input[:entities].nil?
        DescribeAffectedEntitiesForOrganizationFailedSet.validate!(input[:failed_set], context: "#{context}[:failed_set]") unless input[:failed_set].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeAffectedEntitiesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAffectedEntitiesInput, context: context)
        EntityFilter.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        Hearth::Validator.validate!(input[:locale], ::String, context: "#{context}[:locale]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeAffectedEntitiesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAffectedEntitiesOutput, context: context)
        EntityList.validate!(input[:entities], context: "#{context}[:entities]") unless input[:entities].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeEntityAggregatesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEntityAggregatesInput, context: context)
        EventArnsList.validate!(input[:event_arns], context: "#{context}[:event_arns]") unless input[:event_arns].nil?
      end
    end

    class DescribeEntityAggregatesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEntityAggregatesOutput, context: context)
        EntityAggregateList.validate!(input[:entity_aggregates], context: "#{context}[:entity_aggregates]") unless input[:entity_aggregates].nil?
      end
    end

    class DescribeEventAggregatesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEventAggregatesInput, context: context)
        EventFilter.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        Hearth::Validator.validate!(input[:aggregate_field], ::String, context: "#{context}[:aggregate_field]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeEventAggregatesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEventAggregatesOutput, context: context)
        EventAggregateList.validate!(input[:event_aggregates], context: "#{context}[:event_aggregates]") unless input[:event_aggregates].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeEventDetailsFailedSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EventDetailsErrorItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DescribeEventDetailsForOrganizationFailedSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          OrganizationEventDetailsErrorItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DescribeEventDetailsForOrganizationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEventDetailsForOrganizationInput, context: context)
        OrganizationEventDetailFiltersList.validate!(input[:organization_event_detail_filters], context: "#{context}[:organization_event_detail_filters]") unless input[:organization_event_detail_filters].nil?
        Hearth::Validator.validate!(input[:locale], ::String, context: "#{context}[:locale]")
      end
    end

    class DescribeEventDetailsForOrganizationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEventDetailsForOrganizationOutput, context: context)
        DescribeEventDetailsForOrganizationSuccessfulSet.validate!(input[:successful_set], context: "#{context}[:successful_set]") unless input[:successful_set].nil?
        DescribeEventDetailsForOrganizationFailedSet.validate!(input[:failed_set], context: "#{context}[:failed_set]") unless input[:failed_set].nil?
      end
    end

    class DescribeEventDetailsForOrganizationSuccessfulSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          OrganizationEventDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DescribeEventDetailsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEventDetailsInput, context: context)
        EventArnList.validate!(input[:event_arns], context: "#{context}[:event_arns]") unless input[:event_arns].nil?
        Hearth::Validator.validate!(input[:locale], ::String, context: "#{context}[:locale]")
      end
    end

    class DescribeEventDetailsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEventDetailsOutput, context: context)
        DescribeEventDetailsSuccessfulSet.validate!(input[:successful_set], context: "#{context}[:successful_set]") unless input[:successful_set].nil?
        DescribeEventDetailsFailedSet.validate!(input[:failed_set], context: "#{context}[:failed_set]") unless input[:failed_set].nil?
      end
    end

    class DescribeEventDetailsSuccessfulSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EventDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DescribeEventTypesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEventTypesInput, context: context)
        EventTypeFilter.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        Hearth::Validator.validate!(input[:locale], ::String, context: "#{context}[:locale]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeEventTypesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEventTypesOutput, context: context)
        EventTypeList.validate!(input[:event_types], context: "#{context}[:event_types]") unless input[:event_types].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeEventsForOrganizationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEventsForOrganizationInput, context: context)
        OrganizationEventFilter.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:locale], ::String, context: "#{context}[:locale]")
      end
    end

    class DescribeEventsForOrganizationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEventsForOrganizationOutput, context: context)
        OrganizationEventList.validate!(input[:events], context: "#{context}[:events]") unless input[:events].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeEventsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEventsInput, context: context)
        EventFilter.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:locale], ::String, context: "#{context}[:locale]")
      end
    end

    class DescribeEventsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEventsOutput, context: context)
        EventList.validate!(input[:events], context: "#{context}[:events]") unless input[:events].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeHealthServiceStatusForOrganizationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeHealthServiceStatusForOrganizationInput, context: context)
      end
    end

    class DescribeHealthServiceStatusForOrganizationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeHealthServiceStatusForOrganizationOutput, context: context)
        Hearth::Validator.validate!(input[:health_service_access_status_for_organization], ::String, context: "#{context}[:health_service_access_status_for_organization]")
      end
    end

    class DisableHealthServiceAccessForOrganizationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableHealthServiceAccessForOrganizationInput, context: context)
      end
    end

    class DisableHealthServiceAccessForOrganizationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableHealthServiceAccessForOrganizationOutput, context: context)
      end
    end

    class EnableHealthServiceAccessForOrganizationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableHealthServiceAccessForOrganizationInput, context: context)
      end
    end

    class EnableHealthServiceAccessForOrganizationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableHealthServiceAccessForOrganizationOutput, context: context)
      end
    end

    class EntityAggregate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EntityAggregate, context: context)
        Hearth::Validator.validate!(input[:event_arn], ::String, context: "#{context}[:event_arn]")
        Hearth::Validator.validate!(input[:count], ::Integer, context: "#{context}[:count]")
      end
    end

    class EntityAggregateList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EntityAggregate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EntityFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EntityFilter, context: context)
        EventArnList.validate!(input[:event_arns], context: "#{context}[:event_arns]") unless input[:event_arns].nil?
        EntityArnList.validate!(input[:entity_arns], context: "#{context}[:entity_arns]") unless input[:entity_arns].nil?
        EntityValueList.validate!(input[:entity_values], context: "#{context}[:entity_values]") unless input[:entity_values].nil?
        DateTimeRangeList.validate!(input[:last_updated_times], context: "#{context}[:last_updated_times]") unless input[:last_updated_times].nil?
        TagFilter.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        EntityStatusCodeList.validate!(input[:status_codes], context: "#{context}[:status_codes]") unless input[:status_codes].nil?
      end
    end

    class EntityList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AffectedEntity.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Event
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Event, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:service], ::String, context: "#{context}[:service]")
        Hearth::Validator.validate!(input[:event_type_code], ::String, context: "#{context}[:event_type_code]")
        Hearth::Validator.validate!(input[:event_type_category], ::String, context: "#{context}[:event_type_category]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:last_updated_time], ::Time, context: "#{context}[:last_updated_time]")
        Hearth::Validator.validate!(input[:status_code], ::String, context: "#{context}[:status_code]")
        Hearth::Validator.validate!(input[:event_scope_code], ::String, context: "#{context}[:event_scope_code]")
      end
    end

    class EventAccountFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventAccountFilter, context: context)
        Hearth::Validator.validate!(input[:event_arn], ::String, context: "#{context}[:event_arn]")
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
      end
    end

    class EventAggregate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventAggregate, context: context)
        Hearth::Validator.validate!(input[:aggregate_value], ::String, context: "#{context}[:aggregate_value]")
        Hearth::Validator.validate!(input[:count], ::Integer, context: "#{context}[:count]")
      end
    end

    class EventAggregateList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EventAggregate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EventArnsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class EventDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventDescription, context: context)
        Hearth::Validator.validate!(input[:latest_description], ::String, context: "#{context}[:latest_description]")
      end
    end

    class EventDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventDetails, context: context)
        Event.validate!(input[:event], context: "#{context}[:event]") unless input[:event].nil?
        EventDescription.validate!(input[:event_description], context: "#{context}[:event_description]") unless input[:event_description].nil?
        EventMetadata.validate!(input[:event_metadata], context: "#{context}[:event_metadata]") unless input[:event_metadata].nil?
      end
    end

    class EventDetailsErrorItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventDetailsErrorItem, context: context)
        Hearth::Validator.validate!(input[:event_arn], ::String, context: "#{context}[:event_arn]")
        Hearth::Validator.validate!(input[:error_name], ::String, context: "#{context}[:error_name]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class EventFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventFilter, context: context)
        EventArnList.validate!(input[:event_arns], context: "#{context}[:event_arns]") unless input[:event_arns].nil?
        EventTypeList2.validate!(input[:event_type_codes], context: "#{context}[:event_type_codes]") unless input[:event_type_codes].nil?
        ServiceList.validate!(input[:services], context: "#{context}[:services]") unless input[:services].nil?
        RegionList.validate!(input[:regions], context: "#{context}[:regions]") unless input[:regions].nil?
        AvailabilityZones.validate!(input[:availability_zones], context: "#{context}[:availability_zones]") unless input[:availability_zones].nil?
        DateTimeRangeList.validate!(input[:start_times], context: "#{context}[:start_times]") unless input[:start_times].nil?
        DateTimeRangeList.validate!(input[:end_times], context: "#{context}[:end_times]") unless input[:end_times].nil?
        DateTimeRangeList.validate!(input[:last_updated_times], context: "#{context}[:last_updated_times]") unless input[:last_updated_times].nil?
        EntityArnList.validate!(input[:entity_arns], context: "#{context}[:entity_arns]") unless input[:entity_arns].nil?
        EntityValueList.validate!(input[:entity_values], context: "#{context}[:entity_values]") unless input[:entity_values].nil?
        EventTypeCategoryList2.validate!(input[:event_type_categories], context: "#{context}[:event_type_categories]") unless input[:event_type_categories].nil?
        TagFilter.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        EventStatusCodeList.validate!(input[:event_status_codes], context: "#{context}[:event_status_codes]") unless input[:event_status_codes].nil?
      end
    end

    class EventList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Event.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EventType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventType, context: context)
        Hearth::Validator.validate!(input[:service], ::String, context: "#{context}[:service]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:category], ::String, context: "#{context}[:category]")
      end
    end

    class EventTypeCategoryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class EventTypeCodeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class EventTypeFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventTypeFilter, context: context)
        EventTypeCodeList.validate!(input[:event_type_codes], context: "#{context}[:event_type_codes]") unless input[:event_type_codes].nil?
        ServiceList.validate!(input[:services], context: "#{context}[:services]") unless input[:services].nil?
        EventTypeCategoryList.validate!(input[:event_type_categories], context: "#{context}[:event_type_categories]") unless input[:event_type_categories].nil?
      end
    end

    class EventTypeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EventType.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InvalidPaginationToken
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidPaginationToken, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class OrganizationAffectedEntitiesErrorItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OrganizationAffectedEntitiesErrorItem, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:event_arn], ::String, context: "#{context}[:event_arn]")
        Hearth::Validator.validate!(input[:error_name], ::String, context: "#{context}[:error_name]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class OrganizationEntityFiltersList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EventAccountFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OrganizationEvent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OrganizationEvent, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:service], ::String, context: "#{context}[:service]")
        Hearth::Validator.validate!(input[:event_type_code], ::String, context: "#{context}[:event_type_code]")
        Hearth::Validator.validate!(input[:event_type_category], ::String, context: "#{context}[:event_type_category]")
        Hearth::Validator.validate!(input[:event_scope_code], ::String, context: "#{context}[:event_scope_code]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:last_updated_time], ::Time, context: "#{context}[:last_updated_time]")
        Hearth::Validator.validate!(input[:status_code], ::String, context: "#{context}[:status_code]")
      end
    end

    class OrganizationEventDetailFiltersList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EventAccountFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OrganizationEventDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OrganizationEventDetails, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Event.validate!(input[:event], context: "#{context}[:event]") unless input[:event].nil?
        EventDescription.validate!(input[:event_description], context: "#{context}[:event_description]") unless input[:event_description].nil?
        EventMetadata.validate!(input[:event_metadata], context: "#{context}[:event_metadata]") unless input[:event_metadata].nil?
      end
    end

    class OrganizationEventDetailsErrorItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OrganizationEventDetailsErrorItem, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:event_arn], ::String, context: "#{context}[:event_arn]")
        Hearth::Validator.validate!(input[:error_name], ::String, context: "#{context}[:error_name]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class OrganizationEventFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OrganizationEventFilter, context: context)
        EventTypeList2.validate!(input[:event_type_codes], context: "#{context}[:event_type_codes]") unless input[:event_type_codes].nil?
        AwsAccountIdsList.validate!(input[:aws_account_ids], context: "#{context}[:aws_account_ids]") unless input[:aws_account_ids].nil?
        ServiceList.validate!(input[:services], context: "#{context}[:services]") unless input[:services].nil?
        RegionList.validate!(input[:regions], context: "#{context}[:regions]") unless input[:regions].nil?
        DateTimeRange.validate!(input[:start_time], context: "#{context}[:start_time]") unless input[:start_time].nil?
        DateTimeRange.validate!(input[:end_time], context: "#{context}[:end_time]") unless input[:end_time].nil?
        DateTimeRange.validate!(input[:last_updated_time], context: "#{context}[:last_updated_time]") unless input[:last_updated_time].nil?
        EntityArnList.validate!(input[:entity_arns], context: "#{context}[:entity_arns]") unless input[:entity_arns].nil?
        EntityValueList.validate!(input[:entity_values], context: "#{context}[:entity_values]") unless input[:entity_values].nil?
        EventTypeCategoryList2.validate!(input[:event_type_categories], context: "#{context}[:event_type_categories]") unless input[:event_type_categories].nil?
        EventStatusCodeList.validate!(input[:event_status_codes], context: "#{context}[:event_status_codes]") unless input[:event_status_codes].nil?
      end
    end

    class OrganizationEventList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          OrganizationEvent.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UnsupportedLocale
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnsupportedLocale, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AffectedAccountsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AvailabilityZones
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AwsAccountIdsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DateTimeRangeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DateTimeRange.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EntityArnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class EntityStatusCodeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class EntityValueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class EventArnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class EventMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class EventStatusCodeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class EventTypeCategoryList2
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class EventTypeList2
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class RegionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ServiceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TagSet.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

  end
end
