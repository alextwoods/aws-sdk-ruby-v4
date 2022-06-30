# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Inspector2
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Account
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Account, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Validators::ResourceStatus.validate!(input[:resource_status], context: "#{context}[:resource_status]") unless input[:resource_status].nil?
      end
    end

    class AccountAggregation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccountAggregation, context: context)
        Hearth::Validator.validate!(input[:finding_type], ::String, context: "#{context}[:finding_type]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
      end
    end

    class AccountAggregationResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccountAggregationResponse, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Validators::SeverityCounts.validate!(input[:severity_counts], context: "#{context}[:severity_counts]") unless input[:severity_counts].nil?
      end
    end

    class AccountIdSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Set, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AccountList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Account.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AccountState
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccountState, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Validators::State.validate!(input[:state], context: "#{context}[:state]") unless input[:state].nil?
        Validators::ResourceState.validate!(input[:resource_state], context: "#{context}[:resource_state]") unless input[:resource_state].nil?
      end
    end

    class AccountStateList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AccountState.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AggregationRequest
      def self.validate!(input, context:)
        case input
        when Types::AggregationRequest::AccountAggregation
          Validators::AccountAggregation.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::AggregationRequest::AmiAggregation
          Validators::AmiAggregation.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::AggregationRequest::AwsEcrContainerAggregation
          Validators::AwsEcrContainerAggregation.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::AggregationRequest::Ec2InstanceAggregation
          Validators::Ec2InstanceAggregation.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::AggregationRequest::FindingTypeAggregation
          Validators::FindingTypeAggregation.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::AggregationRequest::ImageLayerAggregation
          Validators::ImageLayerAggregation.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::AggregationRequest::PackageAggregation
          Validators::PackageAggregation.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::AggregationRequest::RepositoryAggregation
          Validators::RepositoryAggregation.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::AggregationRequest::TitleAggregation
          Validators::TitleAggregation.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::AggregationRequest, got #{input.class}."
        end
      end

      class AccountAggregation
        def self.validate!(input, context:)
          Validators::AccountAggregation.validate!(input, context: context) unless input.nil?
        end
      end

      class AmiAggregation
        def self.validate!(input, context:)
          Validators::AmiAggregation.validate!(input, context: context) unless input.nil?
        end
      end

      class AwsEcrContainerAggregation
        def self.validate!(input, context:)
          Validators::AwsEcrContainerAggregation.validate!(input, context: context) unless input.nil?
        end
      end

      class Ec2InstanceAggregation
        def self.validate!(input, context:)
          Validators::Ec2InstanceAggregation.validate!(input, context: context) unless input.nil?
        end
      end

      class FindingTypeAggregation
        def self.validate!(input, context:)
          Validators::FindingTypeAggregation.validate!(input, context: context) unless input.nil?
        end
      end

      class ImageLayerAggregation
        def self.validate!(input, context:)
          Validators::ImageLayerAggregation.validate!(input, context: context) unless input.nil?
        end
      end

      class PackageAggregation
        def self.validate!(input, context:)
          Validators::PackageAggregation.validate!(input, context: context) unless input.nil?
        end
      end

      class RepositoryAggregation
        def self.validate!(input, context:)
          Validators::RepositoryAggregation.validate!(input, context: context) unless input.nil?
        end
      end

      class TitleAggregation
        def self.validate!(input, context:)
          Validators::TitleAggregation.validate!(input, context: context) unless input.nil?
        end
      end
    end

    class AggregationResponse
      def self.validate!(input, context:)
        case input
        when Types::AggregationResponse::AccountAggregation
          Validators::AccountAggregationResponse.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::AggregationResponse::AmiAggregation
          Validators::AmiAggregationResponse.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::AggregationResponse::AwsEcrContainerAggregation
          Validators::AwsEcrContainerAggregationResponse.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::AggregationResponse::Ec2InstanceAggregation
          Validators::Ec2InstanceAggregationResponse.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::AggregationResponse::FindingTypeAggregation
          Validators::FindingTypeAggregationResponse.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::AggregationResponse::ImageLayerAggregation
          Validators::ImageLayerAggregationResponse.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::AggregationResponse::PackageAggregation
          Validators::PackageAggregationResponse.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::AggregationResponse::RepositoryAggregation
          Validators::RepositoryAggregationResponse.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::AggregationResponse::TitleAggregation
          Validators::TitleAggregationResponse.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::AggregationResponse, got #{input.class}."
        end
      end

      class AccountAggregation
        def self.validate!(input, context:)
          Validators::AccountAggregationResponse.validate!(input, context: context) unless input.nil?
        end
      end

      class AmiAggregation
        def self.validate!(input, context:)
          Validators::AmiAggregationResponse.validate!(input, context: context) unless input.nil?
        end
      end

      class AwsEcrContainerAggregation
        def self.validate!(input, context:)
          Validators::AwsEcrContainerAggregationResponse.validate!(input, context: context) unless input.nil?
        end
      end

      class Ec2InstanceAggregation
        def self.validate!(input, context:)
          Validators::Ec2InstanceAggregationResponse.validate!(input, context: context) unless input.nil?
        end
      end

      class FindingTypeAggregation
        def self.validate!(input, context:)
          Validators::FindingTypeAggregationResponse.validate!(input, context: context) unless input.nil?
        end
      end

      class ImageLayerAggregation
        def self.validate!(input, context:)
          Validators::ImageLayerAggregationResponse.validate!(input, context: context) unless input.nil?
        end
      end

      class PackageAggregation
        def self.validate!(input, context:)
          Validators::PackageAggregationResponse.validate!(input, context: context) unless input.nil?
        end
      end

      class RepositoryAggregation
        def self.validate!(input, context:)
          Validators::RepositoryAggregationResponse.validate!(input, context: context) unless input.nil?
        end
      end

      class TitleAggregation
        def self.validate!(input, context:)
          Validators::TitleAggregationResponse.validate!(input, context: context) unless input.nil?
        end
      end
    end

    class AggregationResponseList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AggregationResponse.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AmiAggregation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AmiAggregation, context: context)
        Validators::StringFilterList.validate!(input[:amis], context: "#{context}[:amis]") unless input[:amis].nil?
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
      end
    end

    class AmiAggregationResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AmiAggregationResponse, context: context)
        Hearth::Validator.validate!(input[:ami], ::String, context: "#{context}[:ami]")
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Validators::SeverityCounts.validate!(input[:severity_counts], context: "#{context}[:severity_counts]") unless input[:severity_counts].nil?
        Hearth::Validator.validate!(input[:affected_instances], ::Integer, context: "#{context}[:affected_instances]")
      end
    end

    class AssociateMemberInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateMemberInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
      end
    end

    class AssociateMemberOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateMemberOutput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
      end
    end

    class AutoEnable
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutoEnable, context: context)
        Hearth::Validator.validate!(input[:ec2], ::TrueClass, ::FalseClass, context: "#{context}[:ec2]")
        Hearth::Validator.validate!(input[:ecr], ::TrueClass, ::FalseClass, context: "#{context}[:ecr]")
      end
    end

    class AwsEc2InstanceDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEc2InstanceDetails, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:image_id], ::String, context: "#{context}[:image_id]")
        Validators::IpV4AddressList.validate!(input[:ip_v4_addresses], context: "#{context}[:ip_v4_addresses]") unless input[:ip_v4_addresses].nil?
        Validators::IpV6AddressList.validate!(input[:ip_v6_addresses], context: "#{context}[:ip_v6_addresses]") unless input[:ip_v6_addresses].nil?
        Hearth::Validator.validate!(input[:key_name], ::String, context: "#{context}[:key_name]")
        Hearth::Validator.validate!(input[:iam_instance_profile_arn], ::String, context: "#{context}[:iam_instance_profile_arn]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Hearth::Validator.validate!(input[:subnet_id], ::String, context: "#{context}[:subnet_id]")
        Hearth::Validator.validate!(input[:launched_at], ::Time, context: "#{context}[:launched_at]")
        Hearth::Validator.validate!(input[:platform], ::String, context: "#{context}[:platform]")
      end
    end

    class AwsEcrContainerAggregation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEcrContainerAggregation, context: context)
        Validators::StringFilterList.validate!(input[:resource_ids], context: "#{context}[:resource_ids]") unless input[:resource_ids].nil?
        Validators::StringFilterList.validate!(input[:image_shas], context: "#{context}[:image_shas]") unless input[:image_shas].nil?
        Validators::StringFilterList.validate!(input[:repositories], context: "#{context}[:repositories]") unless input[:repositories].nil?
        Validators::StringFilterList.validate!(input[:architectures], context: "#{context}[:architectures]") unless input[:architectures].nil?
        Validators::StringFilterList.validate!(input[:image_tags], context: "#{context}[:image_tags]") unless input[:image_tags].nil?
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
      end
    end

    class AwsEcrContainerAggregationResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEcrContainerAggregationResponse, context: context)
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:image_sha], ::String, context: "#{context}[:image_sha]")
        Hearth::Validator.validate!(input[:repository], ::String, context: "#{context}[:repository]")
        Hearth::Validator.validate!(input[:architecture], ::String, context: "#{context}[:architecture]")
        Validators::StringList.validate!(input[:image_tags], context: "#{context}[:image_tags]") unless input[:image_tags].nil?
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Validators::SeverityCounts.validate!(input[:severity_counts], context: "#{context}[:severity_counts]") unless input[:severity_counts].nil?
      end
    end

    class AwsEcrContainerImageDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEcrContainerImageDetails, context: context)
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Validators::ImageTagList.validate!(input[:image_tags], context: "#{context}[:image_tags]") unless input[:image_tags].nil?
        Hearth::Validator.validate!(input[:pushed_at], ::Time, context: "#{context}[:pushed_at]")
        Hearth::Validator.validate!(input[:author], ::String, context: "#{context}[:author]")
        Hearth::Validator.validate!(input[:architecture], ::String, context: "#{context}[:architecture]")
        Hearth::Validator.validate!(input[:image_hash], ::String, context: "#{context}[:image_hash]")
        Hearth::Validator.validate!(input[:registry], ::String, context: "#{context}[:registry]")
        Hearth::Validator.validate!(input[:platform], ::String, context: "#{context}[:platform]")
      end
    end

    class BadRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BadRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class BatchGetAccountStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetAccountStatusInput, context: context)
        Validators::AccountIdSet.validate!(input[:account_ids], context: "#{context}[:account_ids]") unless input[:account_ids].nil?
      end
    end

    class BatchGetAccountStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetAccountStatusOutput, context: context)
        Validators::AccountStateList.validate!(input[:accounts], context: "#{context}[:accounts]") unless input[:accounts].nil?
        Validators::FailedAccountList.validate!(input[:failed_accounts], context: "#{context}[:failed_accounts]") unless input[:failed_accounts].nil?
      end
    end

    class BatchGetFreeTrialInfoInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetFreeTrialInfoInput, context: context)
        Validators::MeteringAccountIdList.validate!(input[:account_ids], context: "#{context}[:account_ids]") unless input[:account_ids].nil?
      end
    end

    class BatchGetFreeTrialInfoOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetFreeTrialInfoOutput, context: context)
        Validators::FreeTrialAccountInfoList.validate!(input[:accounts], context: "#{context}[:accounts]") unless input[:accounts].nil?
        Validators::FreeTrialInfoErrorList.validate!(input[:failed_accounts], context: "#{context}[:failed_accounts]") unless input[:failed_accounts].nil?
      end
    end

    class CancelFindingsReportInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelFindingsReportInput, context: context)
        Hearth::Validator.validate!(input[:report_id], ::String, context: "#{context}[:report_id]")
      end
    end

    class CancelFindingsReportOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelFindingsReportOutput, context: context)
        Hearth::Validator.validate!(input[:report_id], ::String, context: "#{context}[:report_id]")
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class Counts
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Counts, context: context)
        Hearth::Validator.validate!(input[:count], ::Integer, context: "#{context}[:count]")
        Hearth::Validator.validate!(input[:group_key], ::String, context: "#{context}[:group_key]")
      end
    end

    class CountsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Counts.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CoverageFilterCriteria
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CoverageFilterCriteria, context: context)
        Validators::CoverageStringFilterList.validate!(input[:scan_status_code], context: "#{context}[:scan_status_code]") unless input[:scan_status_code].nil?
        Validators::CoverageStringFilterList.validate!(input[:scan_status_reason], context: "#{context}[:scan_status_reason]") unless input[:scan_status_reason].nil?
        Validators::CoverageStringFilterList.validate!(input[:account_id], context: "#{context}[:account_id]") unless input[:account_id].nil?
        Validators::CoverageStringFilterList.validate!(input[:resource_id], context: "#{context}[:resource_id]") unless input[:resource_id].nil?
        Validators::CoverageStringFilterList.validate!(input[:resource_type], context: "#{context}[:resource_type]") unless input[:resource_type].nil?
        Validators::CoverageStringFilterList.validate!(input[:scan_type], context: "#{context}[:scan_type]") unless input[:scan_type].nil?
        Validators::CoverageStringFilterList.validate!(input[:ecr_repository_name], context: "#{context}[:ecr_repository_name]") unless input[:ecr_repository_name].nil?
        Validators::CoverageStringFilterList.validate!(input[:ecr_image_tags], context: "#{context}[:ecr_image_tags]") unless input[:ecr_image_tags].nil?
        Validators::CoverageMapFilterList.validate!(input[:ec2_instance_tags], context: "#{context}[:ec2_instance_tags]") unless input[:ec2_instance_tags].nil?
      end
    end

    class CoverageMapFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CoverageMapFilter, context: context)
        Hearth::Validator.validate!(input[:comparison], ::String, context: "#{context}[:comparison]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class CoverageMapFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::CoverageMapFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CoverageStringFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CoverageStringFilter, context: context)
        Hearth::Validator.validate!(input[:comparison], ::String, context: "#{context}[:comparison]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class CoverageStringFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::CoverageStringFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CoveredResource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CoveredResource, context: context)
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:scan_type], ::String, context: "#{context}[:scan_type]")
        Validators::ScanStatus.validate!(input[:scan_status], context: "#{context}[:scan_status]") unless input[:scan_status].nil?
        Validators::ResourceScanMetadata.validate!(input[:resource_metadata], context: "#{context}[:resource_metadata]") unless input[:resource_metadata].nil?
      end
    end

    class CoveredResources
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::CoveredResource.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CreateFilterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFilterInput, context: context)
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::FilterCriteria.validate!(input[:filter_criteria], context: "#{context}[:filter_criteria]") unless input[:filter_criteria].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateFilterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFilterOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class CreateFindingsReportInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFindingsReportInput, context: context)
        Validators::FilterCriteria.validate!(input[:filter_criteria], context: "#{context}[:filter_criteria]") unless input[:filter_criteria].nil?
        Hearth::Validator.validate!(input[:report_format], ::String, context: "#{context}[:report_format]")
        Validators::Destination.validate!(input[:s3_destination], context: "#{context}[:s3_destination]") unless input[:s3_destination].nil?
      end
    end

    class CreateFindingsReportOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFindingsReportOutput, context: context)
        Hearth::Validator.validate!(input[:report_id], ::String, context: "#{context}[:report_id]")
      end
    end

    class CvssScore
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CvssScore, context: context)
        Hearth::Validator.validate!(input[:base_score], ::Float, context: "#{context}[:base_score]")
        Hearth::Validator.validate!(input[:scoring_vector], ::String, context: "#{context}[:scoring_vector]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:source], ::String, context: "#{context}[:source]")
      end
    end

    class CvssScoreAdjustment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CvssScoreAdjustment, context: context)
        Hearth::Validator.validate!(input[:metric], ::String, context: "#{context}[:metric]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
      end
    end

    class CvssScoreAdjustmentList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::CvssScoreAdjustment.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CvssScoreDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CvssScoreDetails, context: context)
        Hearth::Validator.validate!(input[:score_source], ::String, context: "#{context}[:score_source]")
        Hearth::Validator.validate!(input[:cvss_source], ::String, context: "#{context}[:cvss_source]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:score], ::Float, context: "#{context}[:score]")
        Hearth::Validator.validate!(input[:scoring_vector], ::String, context: "#{context}[:scoring_vector]")
        Validators::CvssScoreAdjustmentList.validate!(input[:adjustments], context: "#{context}[:adjustments]") unless input[:adjustments].nil?
      end
    end

    class CvssScoreList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::CvssScore.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DateFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DateFilter, context: context)
        Hearth::Validator.validate!(input[:start_inclusive], ::Time, context: "#{context}[:start_inclusive]")
        Hearth::Validator.validate!(input[:end_inclusive], ::Time, context: "#{context}[:end_inclusive]")
      end
    end

    class DateFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DateFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DelegatedAdmin
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DelegatedAdmin, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:relationship_status], ::String, context: "#{context}[:relationship_status]")
      end
    end

    class DelegatedAdminAccount
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DelegatedAdminAccount, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class DelegatedAdminAccountList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DelegatedAdminAccount.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeleteFilterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFilterInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class DeleteFilterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFilterOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class DescribeOrganizationConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeOrganizationConfigurationInput, context: context)
      end
    end

    class DescribeOrganizationConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeOrganizationConfigurationOutput, context: context)
        Validators::AutoEnable.validate!(input[:auto_enable], context: "#{context}[:auto_enable]") unless input[:auto_enable].nil?
        Hearth::Validator.validate!(input[:max_account_limit_reached], ::TrueClass, ::FalseClass, context: "#{context}[:max_account_limit_reached]")
      end
    end

    class Destination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Destination, context: context)
        Hearth::Validator.validate!(input[:bucket_name], ::String, context: "#{context}[:bucket_name]")
        Hearth::Validator.validate!(input[:key_prefix], ::String, context: "#{context}[:key_prefix]")
        Hearth::Validator.validate!(input[:kms_key_arn], ::String, context: "#{context}[:kms_key_arn]")
      end
    end

    class DisableDelegatedAdminAccountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableDelegatedAdminAccountInput, context: context)
        Hearth::Validator.validate!(input[:delegated_admin_account_id], ::String, context: "#{context}[:delegated_admin_account_id]")
      end
    end

    class DisableDelegatedAdminAccountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableDelegatedAdminAccountOutput, context: context)
        Hearth::Validator.validate!(input[:delegated_admin_account_id], ::String, context: "#{context}[:delegated_admin_account_id]")
      end
    end

    class DisableInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableInput, context: context)
        Validators::AccountIdSet.validate!(input[:account_ids], context: "#{context}[:account_ids]") unless input[:account_ids].nil?
        Validators::DisableResourceTypeList.validate!(input[:resource_types], context: "#{context}[:resource_types]") unless input[:resource_types].nil?
      end
    end

    class DisableOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableOutput, context: context)
        Validators::AccountList.validate!(input[:accounts], context: "#{context}[:accounts]") unless input[:accounts].nil?
        Validators::FailedAccountList.validate!(input[:failed_accounts], context: "#{context}[:failed_accounts]") unless input[:failed_accounts].nil?
      end
    end

    class DisableResourceTypeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DisassociateMemberInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateMemberInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
      end
    end

    class DisassociateMemberOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateMemberOutput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
      end
    end

    class Ec2InstanceAggregation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Ec2InstanceAggregation, context: context)
        Validators::StringFilterList.validate!(input[:amis], context: "#{context}[:amis]") unless input[:amis].nil?
        Validators::StringFilterList.validate!(input[:operating_systems], context: "#{context}[:operating_systems]") unless input[:operating_systems].nil?
        Validators::StringFilterList.validate!(input[:instance_ids], context: "#{context}[:instance_ids]") unless input[:instance_ids].nil?
        Validators::MapFilterList.validate!(input[:instance_tags], context: "#{context}[:instance_tags]") unless input[:instance_tags].nil?
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
      end
    end

    class Ec2InstanceAggregationResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Ec2InstanceAggregationResponse, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:ami], ::String, context: "#{context}[:ami]")
        Hearth::Validator.validate!(input[:operating_system], ::String, context: "#{context}[:operating_system]")
        Validators::TagMap.validate!(input[:instance_tags], context: "#{context}[:instance_tags]") unless input[:instance_tags].nil?
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Validators::SeverityCounts.validate!(input[:severity_counts], context: "#{context}[:severity_counts]") unless input[:severity_counts].nil?
        Hearth::Validator.validate!(input[:network_findings], ::Integer, context: "#{context}[:network_findings]")
      end
    end

    class Ec2Metadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Ec2Metadata, context: context)
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:ami_id], ::String, context: "#{context}[:ami_id]")
        Hearth::Validator.validate!(input[:platform], ::String, context: "#{context}[:platform]")
      end
    end

    class EcrContainerImageMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EcrContainerImageMetadata, context: context)
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class EcrRepositoryMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EcrRepositoryMetadata, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:scan_frequency], ::String, context: "#{context}[:scan_frequency]")
      end
    end

    class EnableDelegatedAdminAccountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableDelegatedAdminAccountInput, context: context)
        Hearth::Validator.validate!(input[:delegated_admin_account_id], ::String, context: "#{context}[:delegated_admin_account_id]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class EnableDelegatedAdminAccountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableDelegatedAdminAccountOutput, context: context)
        Hearth::Validator.validate!(input[:delegated_admin_account_id], ::String, context: "#{context}[:delegated_admin_account_id]")
      end
    end

    class EnableInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableInput, context: context)
        Validators::AccountIdSet.validate!(input[:account_ids], context: "#{context}[:account_ids]") unless input[:account_ids].nil?
        Validators::EnableResourceTypeList.validate!(input[:resource_types], context: "#{context}[:resource_types]") unless input[:resource_types].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class EnableOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableOutput, context: context)
        Validators::AccountList.validate!(input[:accounts], context: "#{context}[:accounts]") unless input[:accounts].nil?
        Validators::FailedAccountList.validate!(input[:failed_accounts], context: "#{context}[:failed_accounts]") unless input[:failed_accounts].nil?
      end
    end

    class EnableResourceTypeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class FailedAccount
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FailedAccount, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Validators::ResourceStatus.validate!(input[:resource_status], context: "#{context}[:resource_status]") unless input[:resource_status].nil?
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class FailedAccountList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::FailedAccount.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Filter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Filter, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:owner_id], ::String, context: "#{context}[:owner_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::FilterCriteria.validate!(input[:criteria], context: "#{context}[:criteria]") unless input[:criteria].nil?
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class FilterArnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class FilterCriteria
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FilterCriteria, context: context)
        Validators::StringFilterList.validate!(input[:finding_arn], context: "#{context}[:finding_arn]") unless input[:finding_arn].nil?
        Validators::StringFilterList.validate!(input[:aws_account_id], context: "#{context}[:aws_account_id]") unless input[:aws_account_id].nil?
        Validators::StringFilterList.validate!(input[:finding_type], context: "#{context}[:finding_type]") unless input[:finding_type].nil?
        Validators::StringFilterList.validate!(input[:severity], context: "#{context}[:severity]") unless input[:severity].nil?
        Validators::DateFilterList.validate!(input[:first_observed_at], context: "#{context}[:first_observed_at]") unless input[:first_observed_at].nil?
        Validators::DateFilterList.validate!(input[:last_observed_at], context: "#{context}[:last_observed_at]") unless input[:last_observed_at].nil?
        Validators::DateFilterList.validate!(input[:updated_at], context: "#{context}[:updated_at]") unless input[:updated_at].nil?
        Validators::StringFilterList.validate!(input[:finding_status], context: "#{context}[:finding_status]") unless input[:finding_status].nil?
        Validators::StringFilterList.validate!(input[:title], context: "#{context}[:title]") unless input[:title].nil?
        Validators::NumberFilterList.validate!(input[:inspector_score], context: "#{context}[:inspector_score]") unless input[:inspector_score].nil?
        Validators::StringFilterList.validate!(input[:resource_type], context: "#{context}[:resource_type]") unless input[:resource_type].nil?
        Validators::StringFilterList.validate!(input[:resource_id], context: "#{context}[:resource_id]") unless input[:resource_id].nil?
        Validators::MapFilterList.validate!(input[:resource_tags], context: "#{context}[:resource_tags]") unless input[:resource_tags].nil?
        Validators::StringFilterList.validate!(input[:ec2_instance_image_id], context: "#{context}[:ec2_instance_image_id]") unless input[:ec2_instance_image_id].nil?
        Validators::StringFilterList.validate!(input[:ec2_instance_vpc_id], context: "#{context}[:ec2_instance_vpc_id]") unless input[:ec2_instance_vpc_id].nil?
        Validators::StringFilterList.validate!(input[:ec2_instance_subnet_id], context: "#{context}[:ec2_instance_subnet_id]") unless input[:ec2_instance_subnet_id].nil?
        Validators::DateFilterList.validate!(input[:ecr_image_pushed_at], context: "#{context}[:ecr_image_pushed_at]") unless input[:ecr_image_pushed_at].nil?
        Validators::StringFilterList.validate!(input[:ecr_image_architecture], context: "#{context}[:ecr_image_architecture]") unless input[:ecr_image_architecture].nil?
        Validators::StringFilterList.validate!(input[:ecr_image_registry], context: "#{context}[:ecr_image_registry]") unless input[:ecr_image_registry].nil?
        Validators::StringFilterList.validate!(input[:ecr_image_repository_name], context: "#{context}[:ecr_image_repository_name]") unless input[:ecr_image_repository_name].nil?
        Validators::StringFilterList.validate!(input[:ecr_image_tags], context: "#{context}[:ecr_image_tags]") unless input[:ecr_image_tags].nil?
        Validators::StringFilterList.validate!(input[:ecr_image_hash], context: "#{context}[:ecr_image_hash]") unless input[:ecr_image_hash].nil?
        Validators::PortRangeFilterList.validate!(input[:port_range], context: "#{context}[:port_range]") unless input[:port_range].nil?
        Validators::StringFilterList.validate!(input[:network_protocol], context: "#{context}[:network_protocol]") unless input[:network_protocol].nil?
        Validators::StringFilterList.validate!(input[:component_id], context: "#{context}[:component_id]") unless input[:component_id].nil?
        Validators::StringFilterList.validate!(input[:component_type], context: "#{context}[:component_type]") unless input[:component_type].nil?
        Validators::StringFilterList.validate!(input[:vulnerability_id], context: "#{context}[:vulnerability_id]") unless input[:vulnerability_id].nil?
        Validators::StringFilterList.validate!(input[:vulnerability_source], context: "#{context}[:vulnerability_source]") unless input[:vulnerability_source].nil?
        Validators::StringFilterList.validate!(input[:vendor_severity], context: "#{context}[:vendor_severity]") unless input[:vendor_severity].nil?
        Validators::PackageFilterList.validate!(input[:vulnerable_packages], context: "#{context}[:vulnerable_packages]") unless input[:vulnerable_packages].nil?
        Validators::StringFilterList.validate!(input[:related_vulnerabilities], context: "#{context}[:related_vulnerabilities]") unless input[:related_vulnerabilities].nil?
      end
    end

    class FilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Filter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Finding
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Finding, context: context)
        Hearth::Validator.validate!(input[:finding_arn], ::String, context: "#{context}[:finding_arn]")
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:title], ::String, context: "#{context}[:title]")
        Validators::Remediation.validate!(input[:remediation], context: "#{context}[:remediation]") unless input[:remediation].nil?
        Hearth::Validator.validate!(input[:severity], ::String, context: "#{context}[:severity]")
        Hearth::Validator.validate!(input[:first_observed_at], ::Time, context: "#{context}[:first_observed_at]")
        Hearth::Validator.validate!(input[:last_observed_at], ::Time, context: "#{context}[:last_observed_at]")
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Validators::ResourceList.validate!(input[:resources], context: "#{context}[:resources]") unless input[:resources].nil?
        Hearth::Validator.validate!(input[:inspector_score], ::Float, context: "#{context}[:inspector_score]")
        Validators::InspectorScoreDetails.validate!(input[:inspector_score_details], context: "#{context}[:inspector_score_details]") unless input[:inspector_score_details].nil?
        Validators::NetworkReachabilityDetails.validate!(input[:network_reachability_details], context: "#{context}[:network_reachability_details]") unless input[:network_reachability_details].nil?
        Validators::PackageVulnerabilityDetails.validate!(input[:package_vulnerability_details], context: "#{context}[:package_vulnerability_details]") unless input[:package_vulnerability_details].nil?
      end
    end

    class FindingList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Finding.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FindingTypeAggregation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FindingTypeAggregation, context: context)
        Hearth::Validator.validate!(input[:finding_type], ::String, context: "#{context}[:finding_type]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
      end
    end

    class FindingTypeAggregationResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FindingTypeAggregationResponse, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Validators::SeverityCounts.validate!(input[:severity_counts], context: "#{context}[:severity_counts]") unless input[:severity_counts].nil?
      end
    end

    class FreeTrialAccountInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FreeTrialAccountInfo, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Validators::FreeTrialInfoList.validate!(input[:free_trial_info], context: "#{context}[:free_trial_info]") unless input[:free_trial_info].nil?
      end
    end

    class FreeTrialAccountInfoList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::FreeTrialAccountInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FreeTrialInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FreeTrialInfo, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:start], ::Time, context: "#{context}[:start]")
        Hearth::Validator.validate!(input[:end], ::Time, context: "#{context}[:end]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class FreeTrialInfoError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FreeTrialInfoError, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class FreeTrialInfoErrorList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::FreeTrialInfoError.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FreeTrialInfoList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::FreeTrialInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GetDelegatedAdminAccountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDelegatedAdminAccountInput, context: context)
      end
    end

    class GetDelegatedAdminAccountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDelegatedAdminAccountOutput, context: context)
        Validators::DelegatedAdmin.validate!(input[:delegated_admin], context: "#{context}[:delegated_admin]") unless input[:delegated_admin].nil?
      end
    end

    class GetFindingsReportStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFindingsReportStatusInput, context: context)
        Hearth::Validator.validate!(input[:report_id], ::String, context: "#{context}[:report_id]")
      end
    end

    class GetFindingsReportStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFindingsReportStatusOutput, context: context)
        Hearth::Validator.validate!(input[:report_id], ::String, context: "#{context}[:report_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
        Validators::Destination.validate!(input[:destination], context: "#{context}[:destination]") unless input[:destination].nil?
        Validators::FilterCriteria.validate!(input[:filter_criteria], context: "#{context}[:filter_criteria]") unless input[:filter_criteria].nil?
      end
    end

    class GetMemberInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMemberInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
      end
    end

    class GetMemberOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMemberOutput, context: context)
        Validators::Member.validate!(input[:member], context: "#{context}[:member]") unless input[:member].nil?
      end
    end

    class ImageLayerAggregation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImageLayerAggregation, context: context)
        Validators::StringFilterList.validate!(input[:repositories], context: "#{context}[:repositories]") unless input[:repositories].nil?
        Validators::StringFilterList.validate!(input[:resource_ids], context: "#{context}[:resource_ids]") unless input[:resource_ids].nil?
        Validators::StringFilterList.validate!(input[:layer_hashes], context: "#{context}[:layer_hashes]") unless input[:layer_hashes].nil?
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
      end
    end

    class ImageLayerAggregationResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImageLayerAggregationResponse, context: context)
        Hearth::Validator.validate!(input[:repository], ::String, context: "#{context}[:repository]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:layer_hash], ::String, context: "#{context}[:layer_hash]")
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Validators::SeverityCounts.validate!(input[:severity_counts], context: "#{context}[:severity_counts]") unless input[:severity_counts].nil?
      end
    end

    class ImageTagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InspectorScoreDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InspectorScoreDetails, context: context)
        Validators::CvssScoreDetails.validate!(input[:adjusted_cvss], context: "#{context}[:adjusted_cvss]") unless input[:adjusted_cvss].nil?
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:retry_after_seconds], ::Integer, context: "#{context}[:retry_after_seconds]")
      end
    end

    class IpV4AddressList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class IpV6AddressList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ListAccountPermissionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAccountPermissionsInput, context: context)
        Hearth::Validator.validate!(input[:service], ::String, context: "#{context}[:service]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAccountPermissionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAccountPermissionsOutput, context: context)
        Validators::Permissions.validate!(input[:permissions], context: "#{context}[:permissions]") unless input[:permissions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListCoverageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCoverageInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::CoverageFilterCriteria.validate!(input[:filter_criteria], context: "#{context}[:filter_criteria]") unless input[:filter_criteria].nil?
      end
    end

    class ListCoverageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCoverageOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::CoveredResources.validate!(input[:covered_resources], context: "#{context}[:covered_resources]") unless input[:covered_resources].nil?
      end
    end

    class ListCoverageStatisticsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCoverageStatisticsInput, context: context)
        Validators::CoverageFilterCriteria.validate!(input[:filter_criteria], context: "#{context}[:filter_criteria]") unless input[:filter_criteria].nil?
        Hearth::Validator.validate!(input[:group_by], ::String, context: "#{context}[:group_by]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListCoverageStatisticsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCoverageStatisticsOutput, context: context)
        Validators::CountsList.validate!(input[:counts_by_group], context: "#{context}[:counts_by_group]") unless input[:counts_by_group].nil?
        Hearth::Validator.validate!(input[:total_counts], ::Integer, context: "#{context}[:total_counts]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDelegatedAdminAccountsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDelegatedAdminAccountsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDelegatedAdminAccountsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDelegatedAdminAccountsOutput, context: context)
        Validators::DelegatedAdminAccountList.validate!(input[:delegated_admin_accounts], context: "#{context}[:delegated_admin_accounts]") unless input[:delegated_admin_accounts].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListFiltersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFiltersInput, context: context)
        Validators::FilterArnList.validate!(input[:arns], context: "#{context}[:arns]") unless input[:arns].nil?
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListFiltersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFiltersOutput, context: context)
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListFindingAggregationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFindingAggregationsInput, context: context)
        Hearth::Validator.validate!(input[:aggregation_type], ::String, context: "#{context}[:aggregation_type]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Validators::StringFilterList.validate!(input[:account_ids], context: "#{context}[:account_ids]") unless input[:account_ids].nil?
        Validators::AggregationRequest.validate!(input[:aggregation_request], context: "#{context}[:aggregation_request]") unless input[:aggregation_request].nil?
      end
    end

    class ListFindingAggregationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFindingAggregationsOutput, context: context)
        Hearth::Validator.validate!(input[:aggregation_type], ::String, context: "#{context}[:aggregation_type]")
        Validators::AggregationResponseList.validate!(input[:responses], context: "#{context}[:responses]") unless input[:responses].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListFindingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFindingsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::FilterCriteria.validate!(input[:filter_criteria], context: "#{context}[:filter_criteria]") unless input[:filter_criteria].nil?
        Validators::SortCriteria.validate!(input[:sort_criteria], context: "#{context}[:sort_criteria]") unless input[:sort_criteria].nil?
      end
    end

    class ListFindingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFindingsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::FindingList.validate!(input[:findings], context: "#{context}[:findings]") unless input[:findings].nil?
      end
    end

    class ListMembersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMembersInput, context: context)
        Hearth::Validator.validate!(input[:only_associated], ::TrueClass, ::FalseClass, context: "#{context}[:only_associated]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListMembersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMembersOutput, context: context)
        Validators::MemberList.validate!(input[:members], context: "#{context}[:members]") unless input[:members].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ListUsageTotalsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListUsageTotalsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::UsageAccountIdList.validate!(input[:account_ids], context: "#{context}[:account_ids]") unless input[:account_ids].nil?
      end
    end

    class ListUsageTotalsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListUsageTotalsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::UsageTotalList.validate!(input[:totals], context: "#{context}[:totals]") unless input[:totals].nil?
      end
    end

    class MapFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MapFilter, context: context)
        Hearth::Validator.validate!(input[:comparison], ::String, context: "#{context}[:comparison]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class MapFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::MapFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Member
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Member, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:relationship_status], ::String, context: "#{context}[:relationship_status]")
        Hearth::Validator.validate!(input[:delegated_admin_account_id], ::String, context: "#{context}[:delegated_admin_account_id]")
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
      end
    end

    class MemberList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Member.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MeteringAccountIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class NetworkPath
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NetworkPath, context: context)
        Validators::StepList.validate!(input[:steps], context: "#{context}[:steps]") unless input[:steps].nil?
      end
    end

    class NetworkReachabilityDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NetworkReachabilityDetails, context: context)
        Validators::PortRange.validate!(input[:open_port_range], context: "#{context}[:open_port_range]") unless input[:open_port_range].nil?
        Hearth::Validator.validate!(input[:protocol], ::String, context: "#{context}[:protocol]")
        Validators::NetworkPath.validate!(input[:network_path], context: "#{context}[:network_path]") unless input[:network_path].nil?
      end
    end

    class NonEmptyStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class NumberFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NumberFilter, context: context)
        Hearth::Validator.validate!(input[:upper_inclusive], ::Float, context: "#{context}[:upper_inclusive]")
        Hearth::Validator.validate!(input[:lower_inclusive], ::Float, context: "#{context}[:lower_inclusive]")
      end
    end

    class NumberFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::NumberFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PackageAggregation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PackageAggregation, context: context)
        Validators::StringFilterList.validate!(input[:package_names], context: "#{context}[:package_names]") unless input[:package_names].nil?
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
      end
    end

    class PackageAggregationResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PackageAggregationResponse, context: context)
        Hearth::Validator.validate!(input[:package_name], ::String, context: "#{context}[:package_name]")
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Validators::SeverityCounts.validate!(input[:severity_counts], context: "#{context}[:severity_counts]") unless input[:severity_counts].nil?
      end
    end

    class PackageFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PackageFilter, context: context)
        Validators::StringFilter.validate!(input[:name], context: "#{context}[:name]") unless input[:name].nil?
        Validators::StringFilter.validate!(input[:version], context: "#{context}[:version]") unless input[:version].nil?
        Validators::NumberFilter.validate!(input[:epoch], context: "#{context}[:epoch]") unless input[:epoch].nil?
        Validators::StringFilter.validate!(input[:release], context: "#{context}[:release]") unless input[:release].nil?
        Validators::StringFilter.validate!(input[:architecture], context: "#{context}[:architecture]") unless input[:architecture].nil?
        Validators::StringFilter.validate!(input[:source_layer_hash], context: "#{context}[:source_layer_hash]") unless input[:source_layer_hash].nil?
      end
    end

    class PackageFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PackageFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PackageVulnerabilityDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PackageVulnerabilityDetails, context: context)
        Hearth::Validator.validate!(input[:vulnerability_id], ::String, context: "#{context}[:vulnerability_id]")
        Validators::VulnerablePackageList.validate!(input[:vulnerable_packages], context: "#{context}[:vulnerable_packages]") unless input[:vulnerable_packages].nil?
        Hearth::Validator.validate!(input[:source], ::String, context: "#{context}[:source]")
        Validators::CvssScoreList.validate!(input[:cvss], context: "#{context}[:cvss]") unless input[:cvss].nil?
        Validators::VulnerabilityIdList.validate!(input[:related_vulnerabilities], context: "#{context}[:related_vulnerabilities]") unless input[:related_vulnerabilities].nil?
        Hearth::Validator.validate!(input[:source_url], ::String, context: "#{context}[:source_url]")
        Hearth::Validator.validate!(input[:vendor_severity], ::String, context: "#{context}[:vendor_severity]")
        Hearth::Validator.validate!(input[:vendor_created_at], ::Time, context: "#{context}[:vendor_created_at]")
        Hearth::Validator.validate!(input[:vendor_updated_at], ::Time, context: "#{context}[:vendor_updated_at]")
        Validators::NonEmptyStringList.validate!(input[:reference_urls], context: "#{context}[:reference_urls]") unless input[:reference_urls].nil?
      end
    end

    class Permission
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Permission, context: context)
        Hearth::Validator.validate!(input[:service], ::String, context: "#{context}[:service]")
        Hearth::Validator.validate!(input[:operation], ::String, context: "#{context}[:operation]")
      end
    end

    class Permissions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Permission.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PortRange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PortRange, context: context)
        Hearth::Validator.validate!(input[:begin], ::Integer, context: "#{context}[:begin]")
        Hearth::Validator.validate!(input[:end], ::Integer, context: "#{context}[:end]")
      end
    end

    class PortRangeFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PortRangeFilter, context: context)
        Hearth::Validator.validate!(input[:begin_inclusive], ::Integer, context: "#{context}[:begin_inclusive]")
        Hearth::Validator.validate!(input[:end_inclusive], ::Integer, context: "#{context}[:end_inclusive]")
      end
    end

    class PortRangeFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PortRangeFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Recommendation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Recommendation, context: context)
        Hearth::Validator.validate!(input[:text], ::String, context: "#{context}[:text]")
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
      end
    end

    class Remediation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Remediation, context: context)
        Validators::Recommendation.validate!(input[:recommendation], context: "#{context}[:recommendation]") unless input[:recommendation].nil?
      end
    end

    class RepositoryAggregation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RepositoryAggregation, context: context)
        Validators::StringFilterList.validate!(input[:repositories], context: "#{context}[:repositories]") unless input[:repositories].nil?
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
      end
    end

    class RepositoryAggregationResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RepositoryAggregationResponse, context: context)
        Hearth::Validator.validate!(input[:repository], ::String, context: "#{context}[:repository]")
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Validators::SeverityCounts.validate!(input[:severity_counts], context: "#{context}[:severity_counts]") unless input[:severity_counts].nil?
        Hearth::Validator.validate!(input[:affected_images], ::Integer, context: "#{context}[:affected_images]")
      end
    end

    class Resource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Resource, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:partition], ::String, context: "#{context}[:partition]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::ResourceDetails.validate!(input[:details], context: "#{context}[:details]") unless input[:details].nil?
      end
    end

    class ResourceDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceDetails, context: context)
        Validators::AwsEc2InstanceDetails.validate!(input[:aws_ec2_instance], context: "#{context}[:aws_ec2_instance]") unless input[:aws_ec2_instance].nil?
        Validators::AwsEcrContainerImageDetails.validate!(input[:aws_ecr_container_image], context: "#{context}[:aws_ecr_container_image]") unless input[:aws_ecr_container_image].nil?
      end
    end

    class ResourceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Resource.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceScanMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceScanMetadata, context: context)
        Validators::EcrRepositoryMetadata.validate!(input[:ecr_repository], context: "#{context}[:ecr_repository]") unless input[:ecr_repository].nil?
        Validators::EcrContainerImageMetadata.validate!(input[:ecr_image], context: "#{context}[:ecr_image]") unless input[:ecr_image].nil?
        Validators::Ec2Metadata.validate!(input[:ec2], context: "#{context}[:ec2]") unless input[:ec2].nil?
      end
    end

    class ResourceState
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceState, context: context)
        Validators::State.validate!(input[:ec2], context: "#{context}[:ec2]") unless input[:ec2].nil?
        Validators::State.validate!(input[:ecr], context: "#{context}[:ecr]") unless input[:ecr].nil?
      end
    end

    class ResourceStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceStatus, context: context)
        Hearth::Validator.validate!(input[:ec2], ::String, context: "#{context}[:ec2]")
        Hearth::Validator.validate!(input[:ecr], ::String, context: "#{context}[:ecr]")
      end
    end

    class ScanStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScanStatus, context: context)
        Hearth::Validator.validate!(input[:status_code], ::String, context: "#{context}[:status_code]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
      end
    end

    class ServiceQuotaExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceQuotaExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
      end
    end

    class SeverityCounts
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SeverityCounts, context: context)
        Hearth::Validator.validate!(input[:all], ::Integer, context: "#{context}[:all]")
        Hearth::Validator.validate!(input[:medium], ::Integer, context: "#{context}[:medium]")
        Hearth::Validator.validate!(input[:high], ::Integer, context: "#{context}[:high]")
        Hearth::Validator.validate!(input[:critical], ::Integer, context: "#{context}[:critical]")
      end
    end

    class SortCriteria
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SortCriteria, context: context)
        Hearth::Validator.validate!(input[:field], ::String, context: "#{context}[:field]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
      end
    end

    class State
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::State, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class Step
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Step, context: context)
        Hearth::Validator.validate!(input[:component_id], ::String, context: "#{context}[:component_id]")
        Hearth::Validator.validate!(input[:component_type], ::String, context: "#{context}[:component_type]")
      end
    end

    class StepList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Step.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StringFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StringFilter, context: context)
        Hearth::Validator.validate!(input[:comparison], ::String, context: "#{context}[:comparison]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class StringFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::StringFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StringList
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

    class TagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
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

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TitleAggregation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TitleAggregation, context: context)
        Validators::StringFilterList.validate!(input[:titles], context: "#{context}[:titles]") unless input[:titles].nil?
        Validators::StringFilterList.validate!(input[:vulnerability_ids], context: "#{context}[:vulnerability_ids]") unless input[:vulnerability_ids].nil?
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
      end
    end

    class TitleAggregationResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TitleAggregationResponse, context: context)
        Hearth::Validator.validate!(input[:title], ::String, context: "#{context}[:title]")
        Hearth::Validator.validate!(input[:vulnerability_id], ::String, context: "#{context}[:vulnerability_id]")
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Validators::SeverityCounts.validate!(input[:severity_counts], context: "#{context}[:severity_counts]") unless input[:severity_counts].nil?
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateFilterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFilterInput, context: context)
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::FilterCriteria.validate!(input[:filter_criteria], context: "#{context}[:filter_criteria]") unless input[:filter_criteria].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:filter_arn], ::String, context: "#{context}[:filter_arn]")
      end
    end

    class UpdateFilterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFilterOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class UpdateOrganizationConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateOrganizationConfigurationInput, context: context)
        Validators::AutoEnable.validate!(input[:auto_enable], context: "#{context}[:auto_enable]") unless input[:auto_enable].nil?
      end
    end

    class UpdateOrganizationConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateOrganizationConfigurationOutput, context: context)
        Validators::AutoEnable.validate!(input[:auto_enable], context: "#{context}[:auto_enable]") unless input[:auto_enable].nil?
      end
    end

    class Usage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Usage, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:total], ::Float, context: "#{context}[:total]")
        Hearth::Validator.validate!(input[:estimated_monthly_cost], ::Float, context: "#{context}[:estimated_monthly_cost]")
        Hearth::Validator.validate!(input[:currency], ::String, context: "#{context}[:currency]")
      end
    end

    class UsageAccountIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class UsageList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Usage.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UsageTotal
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UsageTotal, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Validators::UsageList.validate!(input[:usage], context: "#{context}[:usage]") unless input[:usage].nil?
      end
    end

    class UsageTotalList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::UsageTotal.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
        Validators::ValidationExceptionFields.validate!(input[:fields], context: "#{context}[:fields]") unless input[:fields].nil?
      end
    end

    class ValidationExceptionField
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationExceptionField, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ValidationExceptionFields
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ValidationExceptionField.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class VulnerabilityIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class VulnerablePackage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VulnerablePackage, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:source_layer_hash], ::String, context: "#{context}[:source_layer_hash]")
        Hearth::Validator.validate!(input[:epoch], ::Integer, context: "#{context}[:epoch]")
        Hearth::Validator.validate!(input[:release], ::String, context: "#{context}[:release]")
        Hearth::Validator.validate!(input[:arch], ::String, context: "#{context}[:arch]")
        Hearth::Validator.validate!(input[:package_manager], ::String, context: "#{context}[:package_manager]")
        Hearth::Validator.validate!(input[:file_path], ::String, context: "#{context}[:file_path]")
        Hearth::Validator.validate!(input[:fixed_in_version], ::String, context: "#{context}[:fixed_in_version]")
      end
    end

    class VulnerablePackageList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::VulnerablePackage.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

  end
end
