# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::MarketplaceCatalog
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CancelChangeSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelChangeSetInput, context: context)
        Hearth::Validator.validate!(input[:catalog], ::String, context: "#{context}[:catalog]")
        Hearth::Validator.validate!(input[:change_set_id], ::String, context: "#{context}[:change_set_id]")
      end
    end

    class CancelChangeSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelChangeSetOutput, context: context)
        Hearth::Validator.validate!(input[:change_set_id], ::String, context: "#{context}[:change_set_id]")
        Hearth::Validator.validate!(input[:change_set_arn], ::String, context: "#{context}[:change_set_arn]")
      end
    end

    class Change
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Change, context: context)
        Hearth::Validator.validate!(input[:change_type], ::String, context: "#{context}[:change_type]")
        Entity.validate!(input[:entity], context: "#{context}[:entity]") unless input[:entity].nil?
        Hearth::Validator.validate!(input[:details], ::String, context: "#{context}[:details]")
        Hearth::Validator.validate!(input[:change_name], ::String, context: "#{context}[:change_name]")
      end
    end

    class ChangeSetDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ChangeSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ChangeSetSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ChangeSetSummaryListItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ChangeSetSummaryListItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChangeSetSummaryListItem, context: context)
        Hearth::Validator.validate!(input[:change_set_id], ::String, context: "#{context}[:change_set_id]")
        Hearth::Validator.validate!(input[:change_set_arn], ::String, context: "#{context}[:change_set_arn]")
        Hearth::Validator.validate!(input[:change_set_name], ::String, context: "#{context}[:change_set_name]")
        Hearth::Validator.validate!(input[:start_time], ::String, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::String, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        ResourceIdList.validate!(input[:entity_id_list], context: "#{context}[:entity_id_list]") unless input[:entity_id_list].nil?
        Hearth::Validator.validate!(input[:failure_code], ::String, context: "#{context}[:failure_code]")
      end
    end

    class ChangeSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChangeSummary, context: context)
        Hearth::Validator.validate!(input[:change_type], ::String, context: "#{context}[:change_type]")
        Entity.validate!(input[:entity], context: "#{context}[:entity]") unless input[:entity].nil?
        Hearth::Validator.validate!(input[:details], ::String, context: "#{context}[:details]")
        ErrorDetailList.validate!(input[:error_detail_list], context: "#{context}[:error_detail_list]") unless input[:error_detail_list].nil?
        Hearth::Validator.validate!(input[:change_name], ::String, context: "#{context}[:change_name]")
      end
    end

    class DescribeChangeSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeChangeSetInput, context: context)
        Hearth::Validator.validate!(input[:catalog], ::String, context: "#{context}[:catalog]")
        Hearth::Validator.validate!(input[:change_set_id], ::String, context: "#{context}[:change_set_id]")
      end
    end

    class DescribeChangeSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeChangeSetOutput, context: context)
        Hearth::Validator.validate!(input[:change_set_id], ::String, context: "#{context}[:change_set_id]")
        Hearth::Validator.validate!(input[:change_set_arn], ::String, context: "#{context}[:change_set_arn]")
        Hearth::Validator.validate!(input[:change_set_name], ::String, context: "#{context}[:change_set_name]")
        Hearth::Validator.validate!(input[:start_time], ::String, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::String, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:failure_code], ::String, context: "#{context}[:failure_code]")
        Hearth::Validator.validate!(input[:failure_description], ::String, context: "#{context}[:failure_description]")
        ChangeSetDescription.validate!(input[:change_set], context: "#{context}[:change_set]") unless input[:change_set].nil?
      end
    end

    class DescribeEntityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEntityInput, context: context)
        Hearth::Validator.validate!(input[:catalog], ::String, context: "#{context}[:catalog]")
        Hearth::Validator.validate!(input[:entity_id], ::String, context: "#{context}[:entity_id]")
      end
    end

    class DescribeEntityOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEntityOutput, context: context)
        Hearth::Validator.validate!(input[:entity_type], ::String, context: "#{context}[:entity_type]")
        Hearth::Validator.validate!(input[:entity_identifier], ::String, context: "#{context}[:entity_identifier]")
        Hearth::Validator.validate!(input[:entity_arn], ::String, context: "#{context}[:entity_arn]")
        Hearth::Validator.validate!(input[:last_modified_date], ::String, context: "#{context}[:last_modified_date]")
        Hearth::Validator.validate!(input[:details], ::String, context: "#{context}[:details]")
      end
    end

    class Entity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Entity, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:identifier], ::String, context: "#{context}[:identifier]")
      end
    end

    class EntitySummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EntitySummary, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:entity_type], ::String, context: "#{context}[:entity_type]")
        Hearth::Validator.validate!(input[:entity_id], ::String, context: "#{context}[:entity_id]")
        Hearth::Validator.validate!(input[:entity_arn], ::String, context: "#{context}[:entity_arn]")
        Hearth::Validator.validate!(input[:last_modified_date], ::String, context: "#{context}[:last_modified_date]")
        Hearth::Validator.validate!(input[:visibility], ::String, context: "#{context}[:visibility]")
      end
    end

    class EntitySummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EntitySummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ErrorDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ErrorDetail, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class ErrorDetailList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ErrorDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Filter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Filter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        ValueList.validate!(input[:value_list], context: "#{context}[:value_list]") unless input[:value_list].nil?
      end
    end

    class FilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Filter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InternalServiceException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServiceException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListChangeSetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListChangeSetsInput, context: context)
        Hearth::Validator.validate!(input[:catalog], ::String, context: "#{context}[:catalog]")
        FilterList.validate!(input[:filter_list], context: "#{context}[:filter_list]") unless input[:filter_list].nil?
        Sort.validate!(input[:sort], context: "#{context}[:sort]") unless input[:sort].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListChangeSetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListChangeSetsOutput, context: context)
        ChangeSetSummaryList.validate!(input[:change_set_summary_list], context: "#{context}[:change_set_summary_list]") unless input[:change_set_summary_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListEntitiesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEntitiesInput, context: context)
        Hearth::Validator.validate!(input[:catalog], ::String, context: "#{context}[:catalog]")
        Hearth::Validator.validate!(input[:entity_type], ::String, context: "#{context}[:entity_type]")
        FilterList.validate!(input[:filter_list], context: "#{context}[:filter_list]") unless input[:filter_list].nil?
        Sort.validate!(input[:sort], context: "#{context}[:sort]") unless input[:sort].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListEntitiesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEntitiesOutput, context: context)
        EntitySummaryList.validate!(input[:entity_summary_list], context: "#{context}[:entity_summary_list]") unless input[:entity_summary_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class RequestedChangeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Change.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResourceIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ResourceInUseException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceInUseException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceNotSupportedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotSupportedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ServiceQuotaExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceQuotaExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Sort
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Sort, context: context)
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
      end
    end

    class StartChangeSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartChangeSetInput, context: context)
        Hearth::Validator.validate!(input[:catalog], ::String, context: "#{context}[:catalog]")
        RequestedChangeList.validate!(input[:change_set], context: "#{context}[:change_set]") unless input[:change_set].nil?
        Hearth::Validator.validate!(input[:change_set_name], ::String, context: "#{context}[:change_set_name]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
      end
    end

    class StartChangeSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartChangeSetOutput, context: context)
        Hearth::Validator.validate!(input[:change_set_id], ::String, context: "#{context}[:change_set_id]")
        Hearth::Validator.validate!(input[:change_set_arn], ::String, context: "#{context}[:change_set_arn]")
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ValueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

  end
end
