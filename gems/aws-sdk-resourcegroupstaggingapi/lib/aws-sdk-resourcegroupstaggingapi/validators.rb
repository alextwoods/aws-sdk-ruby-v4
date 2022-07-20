# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ResourceGroupsTaggingAPI
  module Validators

    class ComplianceDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ComplianceDetails, context: context)
        TagKeyList.validate!(input[:noncompliant_keys], context: "#{context}[:noncompliant_keys]") unless input[:noncompliant_keys].nil?
        TagKeyList.validate!(input[:keys_with_noncompliant_values], context: "#{context}[:keys_with_noncompliant_values]") unless input[:keys_with_noncompliant_values].nil?
        Hearth::Validator.validate!(input[:compliance_status], ::TrueClass, ::FalseClass, context: "#{context}[:compliance_status]")
      end
    end

    class ConcurrentModificationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConcurrentModificationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ConstraintViolationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConstraintViolationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DescribeReportCreationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeReportCreationInput, context: context)
      end
    end

    class DescribeReportCreationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeReportCreationOutput, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:s3_location], ::String, context: "#{context}[:s3_location]")
        Hearth::Validator.validate!(input[:start_date], ::String, context: "#{context}[:start_date]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class FailedResourcesMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          FailureInfo.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class FailureInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FailureInfo, context: context)
        Hearth::Validator.validate!(input[:status_code], ::Integer, context: "#{context}[:status_code]")
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class GetComplianceSummaryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetComplianceSummaryInput, context: context)
        TargetIdFilterList.validate!(input[:target_id_filters], context: "#{context}[:target_id_filters]") unless input[:target_id_filters].nil?
        RegionFilterList.validate!(input[:region_filters], context: "#{context}[:region_filters]") unless input[:region_filters].nil?
        ResourceTypeFilterList.validate!(input[:resource_type_filters], context: "#{context}[:resource_type_filters]") unless input[:resource_type_filters].nil?
        TagKeyFilterList.validate!(input[:tag_key_filters], context: "#{context}[:tag_key_filters]") unless input[:tag_key_filters].nil?
        GroupBy.validate!(input[:group_by], context: "#{context}[:group_by]") unless input[:group_by].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:pagination_token], ::String, context: "#{context}[:pagination_token]")
      end
    end

    class GetComplianceSummaryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetComplianceSummaryOutput, context: context)
        SummaryList.validate!(input[:summary_list], context: "#{context}[:summary_list]") unless input[:summary_list].nil?
        Hearth::Validator.validate!(input[:pagination_token], ::String, context: "#{context}[:pagination_token]")
      end
    end

    class GetResourcesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResourcesInput, context: context)
        Hearth::Validator.validate!(input[:pagination_token], ::String, context: "#{context}[:pagination_token]")
        TagFilterList.validate!(input[:tag_filters], context: "#{context}[:tag_filters]") unless input[:tag_filters].nil?
        Hearth::Validator.validate!(input[:resources_per_page], ::Integer, context: "#{context}[:resources_per_page]")
        Hearth::Validator.validate!(input[:tags_per_page], ::Integer, context: "#{context}[:tags_per_page]")
        ResourceTypeFilterList.validate!(input[:resource_type_filters], context: "#{context}[:resource_type_filters]") unless input[:resource_type_filters].nil?
        Hearth::Validator.validate!(input[:include_compliance_details], ::TrueClass, ::FalseClass, context: "#{context}[:include_compliance_details]")
        Hearth::Validator.validate!(input[:exclude_compliant_resources], ::TrueClass, ::FalseClass, context: "#{context}[:exclude_compliant_resources]")
        ResourceARNListForGet.validate!(input[:resource_arn_list], context: "#{context}[:resource_arn_list]") unless input[:resource_arn_list].nil?
      end
    end

    class GetResourcesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResourcesOutput, context: context)
        Hearth::Validator.validate!(input[:pagination_token], ::String, context: "#{context}[:pagination_token]")
        ResourceTagMappingList.validate!(input[:resource_tag_mapping_list], context: "#{context}[:resource_tag_mapping_list]") unless input[:resource_tag_mapping_list].nil?
      end
    end

    class GetTagKeysInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTagKeysInput, context: context)
        Hearth::Validator.validate!(input[:pagination_token], ::String, context: "#{context}[:pagination_token]")
      end
    end

    class GetTagKeysOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTagKeysOutput, context: context)
        Hearth::Validator.validate!(input[:pagination_token], ::String, context: "#{context}[:pagination_token]")
        TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class GetTagValuesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTagValuesInput, context: context)
        Hearth::Validator.validate!(input[:pagination_token], ::String, context: "#{context}[:pagination_token]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
      end
    end

    class GetTagValuesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTagValuesOutput, context: context)
        Hearth::Validator.validate!(input[:pagination_token], ::String, context: "#{context}[:pagination_token]")
        TagValuesOutputList.validate!(input[:tag_values], context: "#{context}[:tag_values]") unless input[:tag_values].nil?
      end
    end

    class GroupBy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InternalServiceException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServiceException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidParameterException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidParameterException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PaginationTokenExpiredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PaginationTokenExpiredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RegionFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ResourceARNListForGet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ResourceARNListForTagUntag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ResourceTagMapping
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceTagMapping, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        ComplianceDetails.validate!(input[:compliance_details], context: "#{context}[:compliance_details]") unless input[:compliance_details].nil?
      end
    end

    class ResourceTagMappingList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ResourceTagMapping.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResourceTypeFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class StartReportCreationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartReportCreationInput, context: context)
        Hearth::Validator.validate!(input[:s3_bucket], ::String, context: "#{context}[:s3_bucket]")
      end
    end

    class StartReportCreationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartReportCreationOutput, context: context)
      end
    end

    class Summary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Summary, context: context)
        Hearth::Validator.validate!(input[:last_updated], ::String, context: "#{context}[:last_updated]")
        Hearth::Validator.validate!(input[:target_id], ::String, context: "#{context}[:target_id]")
        Hearth::Validator.validate!(input[:target_id_type], ::String, context: "#{context}[:target_id_type]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:non_compliant_resources], ::Integer, context: "#{context}[:non_compliant_resources]")
      end
    end

    class SummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Summary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class TagFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagFilter, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        TagValueList.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class TagFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TagFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagKeyFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagKeyListForUntag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class TagResourcesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourcesInput, context: context)
        ResourceARNListForTagUntag.validate!(input[:resource_arn_list], context: "#{context}[:resource_arn_list]") unless input[:resource_arn_list].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourcesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourcesOutput, context: context)
        FailedResourcesMap.validate!(input[:failed_resources_map], context: "#{context}[:failed_resources_map]") unless input[:failed_resources_map].nil?
      end
    end

    class TagValueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagValuesOutputList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TargetIdFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ThrottledException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottledException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UntagResourcesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourcesInput, context: context)
        ResourceARNListForTagUntag.validate!(input[:resource_arn_list], context: "#{context}[:resource_arn_list]") unless input[:resource_arn_list].nil?
        TagKeyListForUntag.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourcesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourcesOutput, context: context)
        FailedResourcesMap.validate!(input[:failed_resources_map], context: "#{context}[:failed_resources_map]") unless input[:failed_resources_map].nil?
      end
    end

  end
end
