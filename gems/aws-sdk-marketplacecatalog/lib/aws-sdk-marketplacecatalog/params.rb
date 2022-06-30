# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::MarketplaceCatalog
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module CancelChangeSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelChangeSetInput, context: context)
        type = Types::CancelChangeSetInput.new
        type.catalog = params[:catalog]
        type.change_set_id = params[:change_set_id]
        type
      end
    end

    module CancelChangeSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelChangeSetOutput, context: context)
        type = Types::CancelChangeSetOutput.new
        type.change_set_id = params[:change_set_id]
        type.change_set_arn = params[:change_set_arn]
        type
      end
    end

    module Change
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Change, context: context)
        type = Types::Change.new
        type.change_type = params[:change_type]
        type.entity = Entity.build(params[:entity], context: "#{context}[:entity]") unless params[:entity].nil?
        type.details = params[:details]
        type.change_name = params[:change_name]
        type
      end
    end

    module ChangeSetDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ChangeSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ChangeSetSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ChangeSetSummaryListItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ChangeSetSummaryListItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChangeSetSummaryListItem, context: context)
        type = Types::ChangeSetSummaryListItem.new
        type.change_set_id = params[:change_set_id]
        type.change_set_arn = params[:change_set_arn]
        type.change_set_name = params[:change_set_name]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.status = params[:status]
        type.entity_id_list = ResourceIdList.build(params[:entity_id_list], context: "#{context}[:entity_id_list]") unless params[:entity_id_list].nil?
        type.failure_code = params[:failure_code]
        type
      end
    end

    module ChangeSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChangeSummary, context: context)
        type = Types::ChangeSummary.new
        type.change_type = params[:change_type]
        type.entity = Entity.build(params[:entity], context: "#{context}[:entity]") unless params[:entity].nil?
        type.details = params[:details]
        type.error_detail_list = ErrorDetailList.build(params[:error_detail_list], context: "#{context}[:error_detail_list]") unless params[:error_detail_list].nil?
        type.change_name = params[:change_name]
        type
      end
    end

    module DescribeChangeSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeChangeSetInput, context: context)
        type = Types::DescribeChangeSetInput.new
        type.catalog = params[:catalog]
        type.change_set_id = params[:change_set_id]
        type
      end
    end

    module DescribeChangeSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeChangeSetOutput, context: context)
        type = Types::DescribeChangeSetOutput.new
        type.change_set_id = params[:change_set_id]
        type.change_set_arn = params[:change_set_arn]
        type.change_set_name = params[:change_set_name]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.status = params[:status]
        type.failure_code = params[:failure_code]
        type.failure_description = params[:failure_description]
        type.change_set = ChangeSetDescription.build(params[:change_set], context: "#{context}[:change_set]") unless params[:change_set].nil?
        type
      end
    end

    module DescribeEntityInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEntityInput, context: context)
        type = Types::DescribeEntityInput.new
        type.catalog = params[:catalog]
        type.entity_id = params[:entity_id]
        type
      end
    end

    module DescribeEntityOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEntityOutput, context: context)
        type = Types::DescribeEntityOutput.new
        type.entity_type = params[:entity_type]
        type.entity_identifier = params[:entity_identifier]
        type.entity_arn = params[:entity_arn]
        type.last_modified_date = params[:last_modified_date]
        type.details = params[:details]
        type
      end
    end

    module Entity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Entity, context: context)
        type = Types::Entity.new
        type.type = params[:type]
        type.identifier = params[:identifier]
        type
      end
    end

    module EntitySummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EntitySummary, context: context)
        type = Types::EntitySummary.new
        type.name = params[:name]
        type.entity_type = params[:entity_type]
        type.entity_id = params[:entity_id]
        type.entity_arn = params[:entity_arn]
        type.last_modified_date = params[:last_modified_date]
        type.visibility = params[:visibility]
        type
      end
    end

    module EntitySummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EntitySummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ErrorDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ErrorDetail, context: context)
        type = Types::ErrorDetail.new
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type
      end
    end

    module ErrorDetailList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ErrorDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Filter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Filter, context: context)
        type = Types::Filter.new
        type.name = params[:name]
        type.value_list = ValueList.build(params[:value_list], context: "#{context}[:value_list]") unless params[:value_list].nil?
        type
      end
    end

    module FilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Filter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InternalServiceException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServiceException, context: context)
        type = Types::InternalServiceException.new
        type.message = params[:message]
        type
      end
    end

    module ListChangeSetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListChangeSetsInput, context: context)
        type = Types::ListChangeSetsInput.new
        type.catalog = params[:catalog]
        type.filter_list = FilterList.build(params[:filter_list], context: "#{context}[:filter_list]") unless params[:filter_list].nil?
        type.sort = Sort.build(params[:sort], context: "#{context}[:sort]") unless params[:sort].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListChangeSetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListChangeSetsOutput, context: context)
        type = Types::ListChangeSetsOutput.new
        type.change_set_summary_list = ChangeSetSummaryList.build(params[:change_set_summary_list], context: "#{context}[:change_set_summary_list]") unless params[:change_set_summary_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListEntitiesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEntitiesInput, context: context)
        type = Types::ListEntitiesInput.new
        type.catalog = params[:catalog]
        type.entity_type = params[:entity_type]
        type.filter_list = FilterList.build(params[:filter_list], context: "#{context}[:filter_list]") unless params[:filter_list].nil?
        type.sort = Sort.build(params[:sort], context: "#{context}[:sort]") unless params[:sort].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListEntitiesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEntitiesOutput, context: context)
        type = Types::ListEntitiesOutput.new
        type.entity_summary_list = EntitySummaryList.build(params[:entity_summary_list], context: "#{context}[:entity_summary_list]") unless params[:entity_summary_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module RequestedChangeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Change.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResourceIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ResourceInUseException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceInUseException, context: context)
        type = Types::ResourceInUseException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceNotSupportedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotSupportedException, context: context)
        type = Types::ResourceNotSupportedException.new
        type.message = params[:message]
        type
      end
    end

    module ServiceQuotaExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceQuotaExceededException, context: context)
        type = Types::ServiceQuotaExceededException.new
        type.message = params[:message]
        type
      end
    end

    module Sort
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Sort, context: context)
        type = Types::Sort.new
        type.sort_by = params[:sort_by]
        type.sort_order = params[:sort_order]
        type
      end
    end

    module StartChangeSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartChangeSetInput, context: context)
        type = Types::StartChangeSetInput.new
        type.catalog = params[:catalog]
        type.change_set = RequestedChangeList.build(params[:change_set], context: "#{context}[:change_set]") unless params[:change_set].nil?
        type.change_set_name = params[:change_set_name]
        type.client_request_token = params[:client_request_token]
        type
      end
    end

    module StartChangeSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartChangeSetOutput, context: context)
        type = Types::StartChangeSetOutput.new
        type.change_set_id = params[:change_set_id]
        type.change_set_arn = params[:change_set_arn]
        type
      end
    end

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.message = params[:message]
        type
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type
      end
    end

    module ValueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

  end
end
