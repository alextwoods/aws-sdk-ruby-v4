# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Health
  module Params

    module AffectedEntity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AffectedEntity, context: context)
        type = Types::AffectedEntity.new
        type.entity_arn = params[:entity_arn]
        type.event_arn = params[:event_arn]
        type.entity_value = params[:entity_value]
        type.entity_url = params[:entity_url]
        type.aws_account_id = params[:aws_account_id]
        type.last_updated_time = params[:last_updated_time]
        type.status_code = params[:status_code]
        type.tags = TagSet.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ConcurrentModificationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConcurrentModificationException, context: context)
        type = Types::ConcurrentModificationException.new
        type.message = params[:message]
        type
      end
    end

    module DateTimeRange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DateTimeRange, context: context)
        type = Types::DateTimeRange.new
        type.from = params[:from]
        type.to = params[:to]
        type
      end
    end

    module DescribeAffectedAccountsForOrganizationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAffectedAccountsForOrganizationInput, context: context)
        type = Types::DescribeAffectedAccountsForOrganizationInput.new
        type.event_arn = params[:event_arn]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribeAffectedAccountsForOrganizationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAffectedAccountsForOrganizationOutput, context: context)
        type = Types::DescribeAffectedAccountsForOrganizationOutput.new
        type.affected_accounts = AffectedAccountsList.build(params[:affected_accounts], context: "#{context}[:affected_accounts]") unless params[:affected_accounts].nil?
        type.event_scope_code = params[:event_scope_code]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeAffectedEntitiesForOrganizationFailedSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OrganizationAffectedEntitiesErrorItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DescribeAffectedEntitiesForOrganizationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAffectedEntitiesForOrganizationInput, context: context)
        type = Types::DescribeAffectedEntitiesForOrganizationInput.new
        type.organization_entity_filters = OrganizationEntityFiltersList.build(params[:organization_entity_filters], context: "#{context}[:organization_entity_filters]") unless params[:organization_entity_filters].nil?
        type.locale = params[:locale]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribeAffectedEntitiesForOrganizationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAffectedEntitiesForOrganizationOutput, context: context)
        type = Types::DescribeAffectedEntitiesForOrganizationOutput.new
        type.entities = EntityList.build(params[:entities], context: "#{context}[:entities]") unless params[:entities].nil?
        type.failed_set = DescribeAffectedEntitiesForOrganizationFailedSet.build(params[:failed_set], context: "#{context}[:failed_set]") unless params[:failed_set].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeAffectedEntitiesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAffectedEntitiesInput, context: context)
        type = Types::DescribeAffectedEntitiesInput.new
        type.filter = EntityFilter.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.locale = params[:locale]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribeAffectedEntitiesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAffectedEntitiesOutput, context: context)
        type = Types::DescribeAffectedEntitiesOutput.new
        type.entities = EntityList.build(params[:entities], context: "#{context}[:entities]") unless params[:entities].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeEntityAggregatesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEntityAggregatesInput, context: context)
        type = Types::DescribeEntityAggregatesInput.new
        type.event_arns = EventArnsList.build(params[:event_arns], context: "#{context}[:event_arns]") unless params[:event_arns].nil?
        type
      end
    end

    module DescribeEntityAggregatesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEntityAggregatesOutput, context: context)
        type = Types::DescribeEntityAggregatesOutput.new
        type.entity_aggregates = EntityAggregateList.build(params[:entity_aggregates], context: "#{context}[:entity_aggregates]") unless params[:entity_aggregates].nil?
        type
      end
    end

    module DescribeEventAggregatesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEventAggregatesInput, context: context)
        type = Types::DescribeEventAggregatesInput.new
        type.filter = EventFilter.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.aggregate_field = params[:aggregate_field]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeEventAggregatesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEventAggregatesOutput, context: context)
        type = Types::DescribeEventAggregatesOutput.new
        type.event_aggregates = EventAggregateList.build(params[:event_aggregates], context: "#{context}[:event_aggregates]") unless params[:event_aggregates].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeEventDetailsFailedSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EventDetailsErrorItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DescribeEventDetailsForOrganizationFailedSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OrganizationEventDetailsErrorItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DescribeEventDetailsForOrganizationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEventDetailsForOrganizationInput, context: context)
        type = Types::DescribeEventDetailsForOrganizationInput.new
        type.organization_event_detail_filters = OrganizationEventDetailFiltersList.build(params[:organization_event_detail_filters], context: "#{context}[:organization_event_detail_filters]") unless params[:organization_event_detail_filters].nil?
        type.locale = params[:locale]
        type
      end
    end

    module DescribeEventDetailsForOrganizationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEventDetailsForOrganizationOutput, context: context)
        type = Types::DescribeEventDetailsForOrganizationOutput.new
        type.successful_set = DescribeEventDetailsForOrganizationSuccessfulSet.build(params[:successful_set], context: "#{context}[:successful_set]") unless params[:successful_set].nil?
        type.failed_set = DescribeEventDetailsForOrganizationFailedSet.build(params[:failed_set], context: "#{context}[:failed_set]") unless params[:failed_set].nil?
        type
      end
    end

    module DescribeEventDetailsForOrganizationSuccessfulSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OrganizationEventDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DescribeEventDetailsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEventDetailsInput, context: context)
        type = Types::DescribeEventDetailsInput.new
        type.event_arns = EventArnList.build(params[:event_arns], context: "#{context}[:event_arns]") unless params[:event_arns].nil?
        type.locale = params[:locale]
        type
      end
    end

    module DescribeEventDetailsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEventDetailsOutput, context: context)
        type = Types::DescribeEventDetailsOutput.new
        type.successful_set = DescribeEventDetailsSuccessfulSet.build(params[:successful_set], context: "#{context}[:successful_set]") unless params[:successful_set].nil?
        type.failed_set = DescribeEventDetailsFailedSet.build(params[:failed_set], context: "#{context}[:failed_set]") unless params[:failed_set].nil?
        type
      end
    end

    module DescribeEventDetailsSuccessfulSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EventDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DescribeEventTypesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEventTypesInput, context: context)
        type = Types::DescribeEventTypesInput.new
        type.filter = EventTypeFilter.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.locale = params[:locale]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribeEventTypesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEventTypesOutput, context: context)
        type = Types::DescribeEventTypesOutput.new
        type.event_types = EventTypeList.build(params[:event_types], context: "#{context}[:event_types]") unless params[:event_types].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeEventsForOrganizationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEventsForOrganizationInput, context: context)
        type = Types::DescribeEventsForOrganizationInput.new
        type.filter = OrganizationEventFilter.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.locale = params[:locale]
        type
      end
    end

    module DescribeEventsForOrganizationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEventsForOrganizationOutput, context: context)
        type = Types::DescribeEventsForOrganizationOutput.new
        type.events = OrganizationEventList.build(params[:events], context: "#{context}[:events]") unless params[:events].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeEventsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEventsInput, context: context)
        type = Types::DescribeEventsInput.new
        type.filter = EventFilter.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.locale = params[:locale]
        type
      end
    end

    module DescribeEventsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEventsOutput, context: context)
        type = Types::DescribeEventsOutput.new
        type.events = EventList.build(params[:events], context: "#{context}[:events]") unless params[:events].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeHealthServiceStatusForOrganizationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeHealthServiceStatusForOrganizationInput, context: context)
        type = Types::DescribeHealthServiceStatusForOrganizationInput.new
        type
      end
    end

    module DescribeHealthServiceStatusForOrganizationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeHealthServiceStatusForOrganizationOutput, context: context)
        type = Types::DescribeHealthServiceStatusForOrganizationOutput.new
        type.health_service_access_status_for_organization = params[:health_service_access_status_for_organization]
        type
      end
    end

    module DisableHealthServiceAccessForOrganizationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableHealthServiceAccessForOrganizationInput, context: context)
        type = Types::DisableHealthServiceAccessForOrganizationInput.new
        type
      end
    end

    module DisableHealthServiceAccessForOrganizationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableHealthServiceAccessForOrganizationOutput, context: context)
        type = Types::DisableHealthServiceAccessForOrganizationOutput.new
        type
      end
    end

    module EnableHealthServiceAccessForOrganizationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableHealthServiceAccessForOrganizationInput, context: context)
        type = Types::EnableHealthServiceAccessForOrganizationInput.new
        type
      end
    end

    module EnableHealthServiceAccessForOrganizationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableHealthServiceAccessForOrganizationOutput, context: context)
        type = Types::EnableHealthServiceAccessForOrganizationOutput.new
        type
      end
    end

    module EntityAggregate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EntityAggregate, context: context)
        type = Types::EntityAggregate.new
        type.event_arn = params[:event_arn]
        type.count = params[:count]
        type
      end
    end

    module EntityAggregateList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EntityAggregate.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EntityFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EntityFilter, context: context)
        type = Types::EntityFilter.new
        type.event_arns = EventArnList.build(params[:event_arns], context: "#{context}[:event_arns]") unless params[:event_arns].nil?
        type.entity_arns = EntityArnList.build(params[:entity_arns], context: "#{context}[:entity_arns]") unless params[:entity_arns].nil?
        type.entity_values = EntityValueList.build(params[:entity_values], context: "#{context}[:entity_values]") unless params[:entity_values].nil?
        type.last_updated_times = DateTimeRangeList.build(params[:last_updated_times], context: "#{context}[:last_updated_times]") unless params[:last_updated_times].nil?
        type.tags = TagFilter.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.status_codes = EntityStatusCodeList.build(params[:status_codes], context: "#{context}[:status_codes]") unless params[:status_codes].nil?
        type
      end
    end

    module EntityList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AffectedEntity.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Event
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Event, context: context)
        type = Types::Event.new
        type.arn = params[:arn]
        type.service = params[:service]
        type.event_type_code = params[:event_type_code]
        type.event_type_category = params[:event_type_category]
        type.region = params[:region]
        type.availability_zone = params[:availability_zone]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.last_updated_time = params[:last_updated_time]
        type.status_code = params[:status_code]
        type.event_scope_code = params[:event_scope_code]
        type
      end
    end

    module EventAccountFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventAccountFilter, context: context)
        type = Types::EventAccountFilter.new
        type.event_arn = params[:event_arn]
        type.aws_account_id = params[:aws_account_id]
        type
      end
    end

    module EventAggregate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventAggregate, context: context)
        type = Types::EventAggregate.new
        type.aggregate_value = params[:aggregate_value]
        type.count = params[:count]
        type
      end
    end

    module EventAggregateList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EventAggregate.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EventArnsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module EventDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventDescription, context: context)
        type = Types::EventDescription.new
        type.latest_description = params[:latest_description]
        type
      end
    end

    module EventDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventDetails, context: context)
        type = Types::EventDetails.new
        type.event = Event.build(params[:event], context: "#{context}[:event]") unless params[:event].nil?
        type.event_description = EventDescription.build(params[:event_description], context: "#{context}[:event_description]") unless params[:event_description].nil?
        type.event_metadata = EventMetadata.build(params[:event_metadata], context: "#{context}[:event_metadata]") unless params[:event_metadata].nil?
        type
      end
    end

    module EventDetailsErrorItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventDetailsErrorItem, context: context)
        type = Types::EventDetailsErrorItem.new
        type.event_arn = params[:event_arn]
        type.error_name = params[:error_name]
        type.error_message = params[:error_message]
        type
      end
    end

    module EventFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventFilter, context: context)
        type = Types::EventFilter.new
        type.event_arns = EventArnList.build(params[:event_arns], context: "#{context}[:event_arns]") unless params[:event_arns].nil?
        type.event_type_codes = EventTypeList2.build(params[:event_type_codes], context: "#{context}[:event_type_codes]") unless params[:event_type_codes].nil?
        type.services = ServiceList.build(params[:services], context: "#{context}[:services]") unless params[:services].nil?
        type.regions = RegionList.build(params[:regions], context: "#{context}[:regions]") unless params[:regions].nil?
        type.availability_zones = AvailabilityZones.build(params[:availability_zones], context: "#{context}[:availability_zones]") unless params[:availability_zones].nil?
        type.start_times = DateTimeRangeList.build(params[:start_times], context: "#{context}[:start_times]") unless params[:start_times].nil?
        type.end_times = DateTimeRangeList.build(params[:end_times], context: "#{context}[:end_times]") unless params[:end_times].nil?
        type.last_updated_times = DateTimeRangeList.build(params[:last_updated_times], context: "#{context}[:last_updated_times]") unless params[:last_updated_times].nil?
        type.entity_arns = EntityArnList.build(params[:entity_arns], context: "#{context}[:entity_arns]") unless params[:entity_arns].nil?
        type.entity_values = EntityValueList.build(params[:entity_values], context: "#{context}[:entity_values]") unless params[:entity_values].nil?
        type.event_type_categories = EventTypeCategoryList2.build(params[:event_type_categories], context: "#{context}[:event_type_categories]") unless params[:event_type_categories].nil?
        type.tags = TagFilter.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.event_status_codes = EventStatusCodeList.build(params[:event_status_codes], context: "#{context}[:event_status_codes]") unless params[:event_status_codes].nil?
        type
      end
    end

    module EventList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Event.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EventType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventType, context: context)
        type = Types::EventType.new
        type.service = params[:service]
        type.code = params[:code]
        type.category = params[:category]
        type
      end
    end

    module EventTypeCategoryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module EventTypeCodeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module EventTypeFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventTypeFilter, context: context)
        type = Types::EventTypeFilter.new
        type.event_type_codes = EventTypeCodeList.build(params[:event_type_codes], context: "#{context}[:event_type_codes]") unless params[:event_type_codes].nil?
        type.services = ServiceList.build(params[:services], context: "#{context}[:services]") unless params[:services].nil?
        type.event_type_categories = EventTypeCategoryList.build(params[:event_type_categories], context: "#{context}[:event_type_categories]") unless params[:event_type_categories].nil?
        type
      end
    end

    module EventTypeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EventType.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InvalidPaginationToken
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidPaginationToken, context: context)
        type = Types::InvalidPaginationToken.new
        type.message = params[:message]
        type
      end
    end

    module OrganizationAffectedEntitiesErrorItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OrganizationAffectedEntitiesErrorItem, context: context)
        type = Types::OrganizationAffectedEntitiesErrorItem.new
        type.aws_account_id = params[:aws_account_id]
        type.event_arn = params[:event_arn]
        type.error_name = params[:error_name]
        type.error_message = params[:error_message]
        type
      end
    end

    module OrganizationEntityFiltersList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EventAccountFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module OrganizationEvent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OrganizationEvent, context: context)
        type = Types::OrganizationEvent.new
        type.arn = params[:arn]
        type.service = params[:service]
        type.event_type_code = params[:event_type_code]
        type.event_type_category = params[:event_type_category]
        type.event_scope_code = params[:event_scope_code]
        type.region = params[:region]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.last_updated_time = params[:last_updated_time]
        type.status_code = params[:status_code]
        type
      end
    end

    module OrganizationEventDetailFiltersList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EventAccountFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module OrganizationEventDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OrganizationEventDetails, context: context)
        type = Types::OrganizationEventDetails.new
        type.aws_account_id = params[:aws_account_id]
        type.event = Event.build(params[:event], context: "#{context}[:event]") unless params[:event].nil?
        type.event_description = EventDescription.build(params[:event_description], context: "#{context}[:event_description]") unless params[:event_description].nil?
        type.event_metadata = EventMetadata.build(params[:event_metadata], context: "#{context}[:event_metadata]") unless params[:event_metadata].nil?
        type
      end
    end

    module OrganizationEventDetailsErrorItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OrganizationEventDetailsErrorItem, context: context)
        type = Types::OrganizationEventDetailsErrorItem.new
        type.aws_account_id = params[:aws_account_id]
        type.event_arn = params[:event_arn]
        type.error_name = params[:error_name]
        type.error_message = params[:error_message]
        type
      end
    end

    module OrganizationEventFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OrganizationEventFilter, context: context)
        type = Types::OrganizationEventFilter.new
        type.event_type_codes = EventTypeList2.build(params[:event_type_codes], context: "#{context}[:event_type_codes]") unless params[:event_type_codes].nil?
        type.aws_account_ids = AwsAccountIdsList.build(params[:aws_account_ids], context: "#{context}[:aws_account_ids]") unless params[:aws_account_ids].nil?
        type.services = ServiceList.build(params[:services], context: "#{context}[:services]") unless params[:services].nil?
        type.regions = RegionList.build(params[:regions], context: "#{context}[:regions]") unless params[:regions].nil?
        type.start_time = DateTimeRange.build(params[:start_time], context: "#{context}[:start_time]") unless params[:start_time].nil?
        type.end_time = DateTimeRange.build(params[:end_time], context: "#{context}[:end_time]") unless params[:end_time].nil?
        type.last_updated_time = DateTimeRange.build(params[:last_updated_time], context: "#{context}[:last_updated_time]") unless params[:last_updated_time].nil?
        type.entity_arns = EntityArnList.build(params[:entity_arns], context: "#{context}[:entity_arns]") unless params[:entity_arns].nil?
        type.entity_values = EntityValueList.build(params[:entity_values], context: "#{context}[:entity_values]") unless params[:entity_values].nil?
        type.event_type_categories = EventTypeCategoryList2.build(params[:event_type_categories], context: "#{context}[:event_type_categories]") unless params[:event_type_categories].nil?
        type.event_status_codes = EventStatusCodeList.build(params[:event_status_codes], context: "#{context}[:event_status_codes]") unless params[:event_status_codes].nil?
        type
      end
    end

    module OrganizationEventList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OrganizationEvent.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UnsupportedLocale
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnsupportedLocale, context: context)
        type = Types::UnsupportedLocale.new
        type.message = params[:message]
        type
      end
    end

    module AffectedAccountsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AvailabilityZones
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AwsAccountIdsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DateTimeRangeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DateTimeRange.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EntityArnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module EntityStatusCodeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module EntityValueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module EventArnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module EventMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module EventStatusCodeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module EventTypeCategoryList2
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module EventTypeList2
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module RegionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ServiceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TagSet.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

  end
end
