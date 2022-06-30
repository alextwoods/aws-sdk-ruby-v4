# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::ResourceGroupsTaggingAPI
  module Params

    module ComplianceDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ComplianceDetails, context: context)
        type = Types::ComplianceDetails.new
        type.noncompliant_keys = TagKeyList.build(params[:noncompliant_keys], context: "#{context}[:noncompliant_keys]") unless params[:noncompliant_keys].nil?
        type.keys_with_noncompliant_values = TagKeyList.build(params[:keys_with_noncompliant_values], context: "#{context}[:keys_with_noncompliant_values]") unless params[:keys_with_noncompliant_values].nil?
        type.compliance_status = params[:compliance_status]
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

    module ConstraintViolationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConstraintViolationException, context: context)
        type = Types::ConstraintViolationException.new
        type.message = params[:message]
        type
      end
    end

    module DescribeReportCreationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeReportCreationInput, context: context)
        type = Types::DescribeReportCreationInput.new
        type
      end
    end

    module DescribeReportCreationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeReportCreationOutput, context: context)
        type = Types::DescribeReportCreationOutput.new
        type.status = params[:status]
        type.s3_location = params[:s3_location]
        type.start_date = params[:start_date]
        type.error_message = params[:error_message]
        type
      end
    end

    module FailedResourcesMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = FailureInfo.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module FailureInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FailureInfo, context: context)
        type = Types::FailureInfo.new
        type.status_code = params[:status_code]
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type
      end
    end

    module GetComplianceSummaryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetComplianceSummaryInput, context: context)
        type = Types::GetComplianceSummaryInput.new
        type.target_id_filters = TargetIdFilterList.build(params[:target_id_filters], context: "#{context}[:target_id_filters]") unless params[:target_id_filters].nil?
        type.region_filters = RegionFilterList.build(params[:region_filters], context: "#{context}[:region_filters]") unless params[:region_filters].nil?
        type.resource_type_filters = ResourceTypeFilterList.build(params[:resource_type_filters], context: "#{context}[:resource_type_filters]") unless params[:resource_type_filters].nil?
        type.tag_key_filters = TagKeyFilterList.build(params[:tag_key_filters], context: "#{context}[:tag_key_filters]") unless params[:tag_key_filters].nil?
        type.group_by = GroupBy.build(params[:group_by], context: "#{context}[:group_by]") unless params[:group_by].nil?
        type.max_results = params[:max_results]
        type.pagination_token = params[:pagination_token]
        type
      end
    end

    module GetComplianceSummaryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetComplianceSummaryOutput, context: context)
        type = Types::GetComplianceSummaryOutput.new
        type.summary_list = SummaryList.build(params[:summary_list], context: "#{context}[:summary_list]") unless params[:summary_list].nil?
        type.pagination_token = params[:pagination_token]
        type
      end
    end

    module GetResourcesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResourcesInput, context: context)
        type = Types::GetResourcesInput.new
        type.pagination_token = params[:pagination_token]
        type.tag_filters = TagFilterList.build(params[:tag_filters], context: "#{context}[:tag_filters]") unless params[:tag_filters].nil?
        type.resources_per_page = params[:resources_per_page]
        type.tags_per_page = params[:tags_per_page]
        type.resource_type_filters = ResourceTypeFilterList.build(params[:resource_type_filters], context: "#{context}[:resource_type_filters]") unless params[:resource_type_filters].nil?
        type.include_compliance_details = params[:include_compliance_details]
        type.exclude_compliant_resources = params[:exclude_compliant_resources]
        type.resource_arn_list = ResourceARNListForGet.build(params[:resource_arn_list], context: "#{context}[:resource_arn_list]") unless params[:resource_arn_list].nil?
        type
      end
    end

    module GetResourcesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResourcesOutput, context: context)
        type = Types::GetResourcesOutput.new
        type.pagination_token = params[:pagination_token]
        type.resource_tag_mapping_list = ResourceTagMappingList.build(params[:resource_tag_mapping_list], context: "#{context}[:resource_tag_mapping_list]") unless params[:resource_tag_mapping_list].nil?
        type
      end
    end

    module GetTagKeysInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTagKeysInput, context: context)
        type = Types::GetTagKeysInput.new
        type.pagination_token = params[:pagination_token]
        type
      end
    end

    module GetTagKeysOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTagKeysOutput, context: context)
        type = Types::GetTagKeysOutput.new
        type.pagination_token = params[:pagination_token]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module GetTagValuesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTagValuesInput, context: context)
        type = Types::GetTagValuesInput.new
        type.pagination_token = params[:pagination_token]
        type.key = params[:key]
        type
      end
    end

    module GetTagValuesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTagValuesOutput, context: context)
        type = Types::GetTagValuesOutput.new
        type.pagination_token = params[:pagination_token]
        type.tag_values = TagValuesOutputList.build(params[:tag_values], context: "#{context}[:tag_values]") unless params[:tag_values].nil?
        type
      end
    end

    module GroupBy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
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

    module InvalidParameterException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidParameterException, context: context)
        type = Types::InvalidParameterException.new
        type.message = params[:message]
        type
      end
    end

    module PaginationTokenExpiredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PaginationTokenExpiredException, context: context)
        type = Types::PaginationTokenExpiredException.new
        type.message = params[:message]
        type
      end
    end

    module RegionFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ResourceARNListForGet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ResourceARNListForTagUntag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ResourceTagMapping
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceTagMapping, context: context)
        type = Types::ResourceTagMapping.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.compliance_details = ComplianceDetails.build(params[:compliance_details], context: "#{context}[:compliance_details]") unless params[:compliance_details].nil?
        type
      end
    end

    module ResourceTagMappingList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResourceTagMapping.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResourceTypeFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module StartReportCreationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartReportCreationInput, context: context)
        type = Types::StartReportCreationInput.new
        type.s3_bucket = params[:s3_bucket]
        type
      end
    end

    module StartReportCreationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartReportCreationOutput, context: context)
        type = Types::StartReportCreationOutput.new
        type
      end
    end

    module Summary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Summary, context: context)
        type = Types::Summary.new
        type.last_updated = params[:last_updated]
        type.target_id = params[:target_id]
        type.target_id_type = params[:target_id_type]
        type.region = params[:region]
        type.resource_type = params[:resource_type]
        type.non_compliant_resources = params[:non_compliant_resources]
        type
      end
    end

    module SummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Summary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Tag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Tag, context: context)
        type = Types::Tag.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module TagFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagFilter, context: context)
        type = Types::TagFilter.new
        type.key = params[:key]
        type.values = TagValueList.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module TagFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TagFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagKeyFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagKeyListForUntag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module TagResourcesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourcesInput, context: context)
        type = Types::TagResourcesInput.new
        type.resource_arn_list = ResourceARNListForTagUntag.build(params[:resource_arn_list], context: "#{context}[:resource_arn_list]") unless params[:resource_arn_list].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagResourcesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourcesOutput, context: context)
        type = Types::TagResourcesOutput.new
        type.failed_resources_map = FailedResourcesMap.build(params[:failed_resources_map], context: "#{context}[:failed_resources_map]") unless params[:failed_resources_map].nil?
        type
      end
    end

    module TagValueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagValuesOutputList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TargetIdFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ThrottledException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottledException, context: context)
        type = Types::ThrottledException.new
        type.message = params[:message]
        type
      end
    end

    module UntagResourcesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourcesInput, context: context)
        type = Types::UntagResourcesInput.new
        type.resource_arn_list = ResourceARNListForTagUntag.build(params[:resource_arn_list], context: "#{context}[:resource_arn_list]") unless params[:resource_arn_list].nil?
        type.tag_keys = TagKeyListForUntag.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagResourcesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourcesOutput, context: context)
        type = Types::UntagResourcesOutput.new
        type.failed_resources_map = FailedResourcesMap.build(params[:failed_resources_map], context: "#{context}[:failed_resources_map]") unless params[:failed_resources_map].nil?
        type
      end
    end

  end
end
