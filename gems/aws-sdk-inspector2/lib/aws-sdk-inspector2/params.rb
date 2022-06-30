# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::Inspector2
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module Account
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Account, context: context)
        type = Types::Account.new
        type.account_id = params[:account_id]
        type.status = params[:status]
        type.resource_status = ResourceStatus.build(params[:resource_status], context: "#{context}[:resource_status]") unless params[:resource_status].nil?
        type
      end
    end

    module AccountAggregation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccountAggregation, context: context)
        type = Types::AccountAggregation.new
        type.finding_type = params[:finding_type]
        type.resource_type = params[:resource_type]
        type.sort_order = params[:sort_order]
        type.sort_by = params[:sort_by]
        type
      end
    end

    module AccountAggregationResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccountAggregationResponse, context: context)
        type = Types::AccountAggregationResponse.new
        type.account_id = params[:account_id]
        type.severity_counts = SeverityCounts.build(params[:severity_counts], context: "#{context}[:severity_counts]") unless params[:severity_counts].nil?
        type
      end
    end

    module AccountIdSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Set, ::Array, context: context)
        data = Set.new
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AccountList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Account.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AccountState
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccountState, context: context)
        type = Types::AccountState.new
        type.account_id = params[:account_id]
        type.state = State.build(params[:state], context: "#{context}[:state]") unless params[:state].nil?
        type.resource_state = ResourceState.build(params[:resource_state], context: "#{context}[:resource_state]") unless params[:resource_state].nil?
        type
      end
    end

    module AccountStateList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AccountState.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AggregationRequest
      def self.build(params, context: '')
        return params if params.is_a?(Types::AggregationRequest)
        Hearth::Validator.validate!(params, ::Hash, Types::AggregationRequest, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :account_aggregation
          Types::AggregationRequest::AccountAggregation.new(
            (AccountAggregation.build(params[:account_aggregation], context: "#{context}[:account_aggregation]") unless params[:account_aggregation].nil?)
          )
        when :ami_aggregation
          Types::AggregationRequest::AmiAggregation.new(
            (AmiAggregation.build(params[:ami_aggregation], context: "#{context}[:ami_aggregation]") unless params[:ami_aggregation].nil?)
          )
        when :aws_ecr_container_aggregation
          Types::AggregationRequest::AwsEcrContainerAggregation.new(
            (AwsEcrContainerAggregation.build(params[:aws_ecr_container_aggregation], context: "#{context}[:aws_ecr_container_aggregation]") unless params[:aws_ecr_container_aggregation].nil?)
          )
        when :ec2_instance_aggregation
          Types::AggregationRequest::Ec2InstanceAggregation.new(
            (Ec2InstanceAggregation.build(params[:ec2_instance_aggregation], context: "#{context}[:ec2_instance_aggregation]") unless params[:ec2_instance_aggregation].nil?)
          )
        when :finding_type_aggregation
          Types::AggregationRequest::FindingTypeAggregation.new(
            (FindingTypeAggregation.build(params[:finding_type_aggregation], context: "#{context}[:finding_type_aggregation]") unless params[:finding_type_aggregation].nil?)
          )
        when :image_layer_aggregation
          Types::AggregationRequest::ImageLayerAggregation.new(
            (ImageLayerAggregation.build(params[:image_layer_aggregation], context: "#{context}[:image_layer_aggregation]") unless params[:image_layer_aggregation].nil?)
          )
        when :package_aggregation
          Types::AggregationRequest::PackageAggregation.new(
            (PackageAggregation.build(params[:package_aggregation], context: "#{context}[:package_aggregation]") unless params[:package_aggregation].nil?)
          )
        when :repository_aggregation
          Types::AggregationRequest::RepositoryAggregation.new(
            (RepositoryAggregation.build(params[:repository_aggregation], context: "#{context}[:repository_aggregation]") unless params[:repository_aggregation].nil?)
          )
        when :title_aggregation
          Types::AggregationRequest::TitleAggregation.new(
            (TitleAggregation.build(params[:title_aggregation], context: "#{context}[:title_aggregation]") unless params[:title_aggregation].nil?)
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :account_aggregation, :ami_aggregation, :aws_ecr_container_aggregation, :ec2_instance_aggregation, :finding_type_aggregation, :image_layer_aggregation, :package_aggregation, :repository_aggregation, :title_aggregation set"
        end
      end
    end

    module AggregationResponse
      def self.build(params, context: '')
        return params if params.is_a?(Types::AggregationResponse)
        Hearth::Validator.validate!(params, ::Hash, Types::AggregationResponse, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :account_aggregation
          Types::AggregationResponse::AccountAggregation.new(
            (AccountAggregationResponse.build(params[:account_aggregation], context: "#{context}[:account_aggregation]") unless params[:account_aggregation].nil?)
          )
        when :ami_aggregation
          Types::AggregationResponse::AmiAggregation.new(
            (AmiAggregationResponse.build(params[:ami_aggregation], context: "#{context}[:ami_aggregation]") unless params[:ami_aggregation].nil?)
          )
        when :aws_ecr_container_aggregation
          Types::AggregationResponse::AwsEcrContainerAggregation.new(
            (AwsEcrContainerAggregationResponse.build(params[:aws_ecr_container_aggregation], context: "#{context}[:aws_ecr_container_aggregation]") unless params[:aws_ecr_container_aggregation].nil?)
          )
        when :ec2_instance_aggregation
          Types::AggregationResponse::Ec2InstanceAggregation.new(
            (Ec2InstanceAggregationResponse.build(params[:ec2_instance_aggregation], context: "#{context}[:ec2_instance_aggregation]") unless params[:ec2_instance_aggregation].nil?)
          )
        when :finding_type_aggregation
          Types::AggregationResponse::FindingTypeAggregation.new(
            (FindingTypeAggregationResponse.build(params[:finding_type_aggregation], context: "#{context}[:finding_type_aggregation]") unless params[:finding_type_aggregation].nil?)
          )
        when :image_layer_aggregation
          Types::AggregationResponse::ImageLayerAggregation.new(
            (ImageLayerAggregationResponse.build(params[:image_layer_aggregation], context: "#{context}[:image_layer_aggregation]") unless params[:image_layer_aggregation].nil?)
          )
        when :package_aggregation
          Types::AggregationResponse::PackageAggregation.new(
            (PackageAggregationResponse.build(params[:package_aggregation], context: "#{context}[:package_aggregation]") unless params[:package_aggregation].nil?)
          )
        when :repository_aggregation
          Types::AggregationResponse::RepositoryAggregation.new(
            (RepositoryAggregationResponse.build(params[:repository_aggregation], context: "#{context}[:repository_aggregation]") unless params[:repository_aggregation].nil?)
          )
        when :title_aggregation
          Types::AggregationResponse::TitleAggregation.new(
            (TitleAggregationResponse.build(params[:title_aggregation], context: "#{context}[:title_aggregation]") unless params[:title_aggregation].nil?)
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :account_aggregation, :ami_aggregation, :aws_ecr_container_aggregation, :ec2_instance_aggregation, :finding_type_aggregation, :image_layer_aggregation, :package_aggregation, :repository_aggregation, :title_aggregation set"
        end
      end
    end

    module AggregationResponseList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AggregationResponse.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AmiAggregation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AmiAggregation, context: context)
        type = Types::AmiAggregation.new
        type.amis = StringFilterList.build(params[:amis], context: "#{context}[:amis]") unless params[:amis].nil?
        type.sort_order = params[:sort_order]
        type.sort_by = params[:sort_by]
        type
      end
    end

    module AmiAggregationResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AmiAggregationResponse, context: context)
        type = Types::AmiAggregationResponse.new
        type.ami = params[:ami]
        type.account_id = params[:account_id]
        type.severity_counts = SeverityCounts.build(params[:severity_counts], context: "#{context}[:severity_counts]") unless params[:severity_counts].nil?
        type.affected_instances = params[:affected_instances]
        type
      end
    end

    module AssociateMemberInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateMemberInput, context: context)
        type = Types::AssociateMemberInput.new
        type.account_id = params[:account_id]
        type
      end
    end

    module AssociateMemberOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateMemberOutput, context: context)
        type = Types::AssociateMemberOutput.new
        type.account_id = params[:account_id]
        type
      end
    end

    module AutoEnable
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutoEnable, context: context)
        type = Types::AutoEnable.new
        type.ec2 = params[:ec2]
        type.ecr = params[:ecr]
        type
      end
    end

    module AwsEc2InstanceDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEc2InstanceDetails, context: context)
        type = Types::AwsEc2InstanceDetails.new
        type.type = params[:type]
        type.image_id = params[:image_id]
        type.ip_v4_addresses = IpV4AddressList.build(params[:ip_v4_addresses], context: "#{context}[:ip_v4_addresses]") unless params[:ip_v4_addresses].nil?
        type.ip_v6_addresses = IpV6AddressList.build(params[:ip_v6_addresses], context: "#{context}[:ip_v6_addresses]") unless params[:ip_v6_addresses].nil?
        type.key_name = params[:key_name]
        type.iam_instance_profile_arn = params[:iam_instance_profile_arn]
        type.vpc_id = params[:vpc_id]
        type.subnet_id = params[:subnet_id]
        type.launched_at = params[:launched_at]
        type.platform = params[:platform]
        type
      end
    end

    module AwsEcrContainerAggregation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEcrContainerAggregation, context: context)
        type = Types::AwsEcrContainerAggregation.new
        type.resource_ids = StringFilterList.build(params[:resource_ids], context: "#{context}[:resource_ids]") unless params[:resource_ids].nil?
        type.image_shas = StringFilterList.build(params[:image_shas], context: "#{context}[:image_shas]") unless params[:image_shas].nil?
        type.repositories = StringFilterList.build(params[:repositories], context: "#{context}[:repositories]") unless params[:repositories].nil?
        type.architectures = StringFilterList.build(params[:architectures], context: "#{context}[:architectures]") unless params[:architectures].nil?
        type.image_tags = StringFilterList.build(params[:image_tags], context: "#{context}[:image_tags]") unless params[:image_tags].nil?
        type.sort_order = params[:sort_order]
        type.sort_by = params[:sort_by]
        type
      end
    end

    module AwsEcrContainerAggregationResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEcrContainerAggregationResponse, context: context)
        type = Types::AwsEcrContainerAggregationResponse.new
        type.resource_id = params[:resource_id]
        type.image_sha = params[:image_sha]
        type.repository = params[:repository]
        type.architecture = params[:architecture]
        type.image_tags = StringList.build(params[:image_tags], context: "#{context}[:image_tags]") unless params[:image_tags].nil?
        type.account_id = params[:account_id]
        type.severity_counts = SeverityCounts.build(params[:severity_counts], context: "#{context}[:severity_counts]") unless params[:severity_counts].nil?
        type
      end
    end

    module AwsEcrContainerImageDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEcrContainerImageDetails, context: context)
        type = Types::AwsEcrContainerImageDetails.new
        type.repository_name = params[:repository_name]
        type.image_tags = ImageTagList.build(params[:image_tags], context: "#{context}[:image_tags]") unless params[:image_tags].nil?
        type.pushed_at = params[:pushed_at]
        type.author = params[:author]
        type.architecture = params[:architecture]
        type.image_hash = params[:image_hash]
        type.registry = params[:registry]
        type.platform = params[:platform]
        type
      end
    end

    module BadRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BadRequestException, context: context)
        type = Types::BadRequestException.new
        type.message = params[:message]
        type
      end
    end

    module BatchGetAccountStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetAccountStatusInput, context: context)
        type = Types::BatchGetAccountStatusInput.new
        type.account_ids = AccountIdSet.build(params[:account_ids], context: "#{context}[:account_ids]") unless params[:account_ids].nil?
        type
      end
    end

    module BatchGetAccountStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetAccountStatusOutput, context: context)
        type = Types::BatchGetAccountStatusOutput.new
        type.accounts = AccountStateList.build(params[:accounts], context: "#{context}[:accounts]") unless params[:accounts].nil?
        type.failed_accounts = FailedAccountList.build(params[:failed_accounts], context: "#{context}[:failed_accounts]") unless params[:failed_accounts].nil?
        type
      end
    end

    module BatchGetFreeTrialInfoInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetFreeTrialInfoInput, context: context)
        type = Types::BatchGetFreeTrialInfoInput.new
        type.account_ids = MeteringAccountIdList.build(params[:account_ids], context: "#{context}[:account_ids]") unless params[:account_ids].nil?
        type
      end
    end

    module BatchGetFreeTrialInfoOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetFreeTrialInfoOutput, context: context)
        type = Types::BatchGetFreeTrialInfoOutput.new
        type.accounts = FreeTrialAccountInfoList.build(params[:accounts], context: "#{context}[:accounts]") unless params[:accounts].nil?
        type.failed_accounts = FreeTrialInfoErrorList.build(params[:failed_accounts], context: "#{context}[:failed_accounts]") unless params[:failed_accounts].nil?
        type
      end
    end

    module CancelFindingsReportInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelFindingsReportInput, context: context)
        type = Types::CancelFindingsReportInput.new
        type.report_id = params[:report_id]
        type
      end
    end

    module CancelFindingsReportOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelFindingsReportOutput, context: context)
        type = Types::CancelFindingsReportOutput.new
        type.report_id = params[:report_id]
        type
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.message = params[:message]
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module Counts
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Counts, context: context)
        type = Types::Counts.new
        type.count = params[:count]
        type.group_key = params[:group_key]
        type
      end
    end

    module CountsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Counts.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CoverageFilterCriteria
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CoverageFilterCriteria, context: context)
        type = Types::CoverageFilterCriteria.new
        type.scan_status_code = CoverageStringFilterList.build(params[:scan_status_code], context: "#{context}[:scan_status_code]") unless params[:scan_status_code].nil?
        type.scan_status_reason = CoverageStringFilterList.build(params[:scan_status_reason], context: "#{context}[:scan_status_reason]") unless params[:scan_status_reason].nil?
        type.account_id = CoverageStringFilterList.build(params[:account_id], context: "#{context}[:account_id]") unless params[:account_id].nil?
        type.resource_id = CoverageStringFilterList.build(params[:resource_id], context: "#{context}[:resource_id]") unless params[:resource_id].nil?
        type.resource_type = CoverageStringFilterList.build(params[:resource_type], context: "#{context}[:resource_type]") unless params[:resource_type].nil?
        type.scan_type = CoverageStringFilterList.build(params[:scan_type], context: "#{context}[:scan_type]") unless params[:scan_type].nil?
        type.ecr_repository_name = CoverageStringFilterList.build(params[:ecr_repository_name], context: "#{context}[:ecr_repository_name]") unless params[:ecr_repository_name].nil?
        type.ecr_image_tags = CoverageStringFilterList.build(params[:ecr_image_tags], context: "#{context}[:ecr_image_tags]") unless params[:ecr_image_tags].nil?
        type.ec2_instance_tags = CoverageMapFilterList.build(params[:ec2_instance_tags], context: "#{context}[:ec2_instance_tags]") unless params[:ec2_instance_tags].nil?
        type
      end
    end

    module CoverageMapFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CoverageMapFilter, context: context)
        type = Types::CoverageMapFilter.new
        type.comparison = params[:comparison]
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module CoverageMapFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CoverageMapFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CoverageStringFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CoverageStringFilter, context: context)
        type = Types::CoverageStringFilter.new
        type.comparison = params[:comparison]
        type.value = params[:value]
        type
      end
    end

    module CoverageStringFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CoverageStringFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CoveredResource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CoveredResource, context: context)
        type = Types::CoveredResource.new
        type.resource_type = params[:resource_type]
        type.resource_id = params[:resource_id]
        type.account_id = params[:account_id]
        type.scan_type = params[:scan_type]
        type.scan_status = ScanStatus.build(params[:scan_status], context: "#{context}[:scan_status]") unless params[:scan_status].nil?
        type.resource_metadata = ResourceScanMetadata.build(params[:resource_metadata], context: "#{context}[:resource_metadata]") unless params[:resource_metadata].nil?
        type
      end
    end

    module CoveredResources
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CoveredResource.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CreateFilterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFilterInput, context: context)
        type = Types::CreateFilterInput.new
        type.action = params[:action]
        type.description = params[:description]
        type.filter_criteria = FilterCriteria.build(params[:filter_criteria], context: "#{context}[:filter_criteria]") unless params[:filter_criteria].nil?
        type.name = params[:name]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateFilterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFilterOutput, context: context)
        type = Types::CreateFilterOutput.new
        type.arn = params[:arn]
        type
      end
    end

    module CreateFindingsReportInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFindingsReportInput, context: context)
        type = Types::CreateFindingsReportInput.new
        type.filter_criteria = FilterCriteria.build(params[:filter_criteria], context: "#{context}[:filter_criteria]") unless params[:filter_criteria].nil?
        type.report_format = params[:report_format]
        type.s3_destination = Destination.build(params[:s3_destination], context: "#{context}[:s3_destination]") unless params[:s3_destination].nil?
        type
      end
    end

    module CreateFindingsReportOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFindingsReportOutput, context: context)
        type = Types::CreateFindingsReportOutput.new
        type.report_id = params[:report_id]
        type
      end
    end

    module CvssScore
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CvssScore, context: context)
        type = Types::CvssScore.new
        type.base_score = params[:base_score]
        type.scoring_vector = params[:scoring_vector]
        type.version = params[:version]
        type.source = params[:source]
        type
      end
    end

    module CvssScoreAdjustment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CvssScoreAdjustment, context: context)
        type = Types::CvssScoreAdjustment.new
        type.metric = params[:metric]
        type.reason = params[:reason]
        type
      end
    end

    module CvssScoreAdjustmentList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CvssScoreAdjustment.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CvssScoreDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CvssScoreDetails, context: context)
        type = Types::CvssScoreDetails.new
        type.score_source = params[:score_source]
        type.cvss_source = params[:cvss_source]
        type.version = params[:version]
        type.score = params[:score]
        type.scoring_vector = params[:scoring_vector]
        type.adjustments = CvssScoreAdjustmentList.build(params[:adjustments], context: "#{context}[:adjustments]") unless params[:adjustments].nil?
        type
      end
    end

    module CvssScoreList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CvssScore.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DateFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DateFilter, context: context)
        type = Types::DateFilter.new
        type.start_inclusive = params[:start_inclusive]
        type.end_inclusive = params[:end_inclusive]
        type
      end
    end

    module DateFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DateFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DelegatedAdmin
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DelegatedAdmin, context: context)
        type = Types::DelegatedAdmin.new
        type.account_id = params[:account_id]
        type.relationship_status = params[:relationship_status]
        type
      end
    end

    module DelegatedAdminAccount
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DelegatedAdminAccount, context: context)
        type = Types::DelegatedAdminAccount.new
        type.account_id = params[:account_id]
        type.status = params[:status]
        type
      end
    end

    module DelegatedAdminAccountList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DelegatedAdminAccount.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DeleteFilterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFilterInput, context: context)
        type = Types::DeleteFilterInput.new
        type.arn = params[:arn]
        type
      end
    end

    module DeleteFilterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFilterOutput, context: context)
        type = Types::DeleteFilterOutput.new
        type.arn = params[:arn]
        type
      end
    end

    module DescribeOrganizationConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeOrganizationConfigurationInput, context: context)
        type = Types::DescribeOrganizationConfigurationInput.new
        type
      end
    end

    module DescribeOrganizationConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeOrganizationConfigurationOutput, context: context)
        type = Types::DescribeOrganizationConfigurationOutput.new
        type.auto_enable = AutoEnable.build(params[:auto_enable], context: "#{context}[:auto_enable]") unless params[:auto_enable].nil?
        type.max_account_limit_reached = params[:max_account_limit_reached]
        type
      end
    end

    module Destination
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Destination, context: context)
        type = Types::Destination.new
        type.bucket_name = params[:bucket_name]
        type.key_prefix = params[:key_prefix]
        type.kms_key_arn = params[:kms_key_arn]
        type
      end
    end

    module DisableDelegatedAdminAccountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableDelegatedAdminAccountInput, context: context)
        type = Types::DisableDelegatedAdminAccountInput.new
        type.delegated_admin_account_id = params[:delegated_admin_account_id]
        type
      end
    end

    module DisableDelegatedAdminAccountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableDelegatedAdminAccountOutput, context: context)
        type = Types::DisableDelegatedAdminAccountOutput.new
        type.delegated_admin_account_id = params[:delegated_admin_account_id]
        type
      end
    end

    module DisableInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableInput, context: context)
        type = Types::DisableInput.new
        type.account_ids = AccountIdSet.build(params[:account_ids], context: "#{context}[:account_ids]") unless params[:account_ids].nil?
        type.resource_types = DisableResourceTypeList.build(params[:resource_types], context: "#{context}[:resource_types]") unless params[:resource_types].nil?
        type
      end
    end

    module DisableOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableOutput, context: context)
        type = Types::DisableOutput.new
        type.accounts = AccountList.build(params[:accounts], context: "#{context}[:accounts]") unless params[:accounts].nil?
        type.failed_accounts = FailedAccountList.build(params[:failed_accounts], context: "#{context}[:failed_accounts]") unless params[:failed_accounts].nil?
        type
      end
    end

    module DisableResourceTypeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DisassociateMemberInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateMemberInput, context: context)
        type = Types::DisassociateMemberInput.new
        type.account_id = params[:account_id]
        type
      end
    end

    module DisassociateMemberOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateMemberOutput, context: context)
        type = Types::DisassociateMemberOutput.new
        type.account_id = params[:account_id]
        type
      end
    end

    module Ec2InstanceAggregation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Ec2InstanceAggregation, context: context)
        type = Types::Ec2InstanceAggregation.new
        type.amis = StringFilterList.build(params[:amis], context: "#{context}[:amis]") unless params[:amis].nil?
        type.operating_systems = StringFilterList.build(params[:operating_systems], context: "#{context}[:operating_systems]") unless params[:operating_systems].nil?
        type.instance_ids = StringFilterList.build(params[:instance_ids], context: "#{context}[:instance_ids]") unless params[:instance_ids].nil?
        type.instance_tags = MapFilterList.build(params[:instance_tags], context: "#{context}[:instance_tags]") unless params[:instance_tags].nil?
        type.sort_order = params[:sort_order]
        type.sort_by = params[:sort_by]
        type
      end
    end

    module Ec2InstanceAggregationResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Ec2InstanceAggregationResponse, context: context)
        type = Types::Ec2InstanceAggregationResponse.new
        type.instance_id = params[:instance_id]
        type.ami = params[:ami]
        type.operating_system = params[:operating_system]
        type.instance_tags = TagMap.build(params[:instance_tags], context: "#{context}[:instance_tags]") unless params[:instance_tags].nil?
        type.account_id = params[:account_id]
        type.severity_counts = SeverityCounts.build(params[:severity_counts], context: "#{context}[:severity_counts]") unless params[:severity_counts].nil?
        type.network_findings = params[:network_findings]
        type
      end
    end

    module Ec2Metadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Ec2Metadata, context: context)
        type = Types::Ec2Metadata.new
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.ami_id = params[:ami_id]
        type.platform = params[:platform]
        type
      end
    end

    module EcrContainerImageMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EcrContainerImageMetadata, context: context)
        type = Types::EcrContainerImageMetadata.new
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module EcrRepositoryMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EcrRepositoryMetadata, context: context)
        type = Types::EcrRepositoryMetadata.new
        type.name = params[:name]
        type.scan_frequency = params[:scan_frequency]
        type
      end
    end

    module EnableDelegatedAdminAccountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableDelegatedAdminAccountInput, context: context)
        type = Types::EnableDelegatedAdminAccountInput.new
        type.delegated_admin_account_id = params[:delegated_admin_account_id]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module EnableDelegatedAdminAccountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableDelegatedAdminAccountOutput, context: context)
        type = Types::EnableDelegatedAdminAccountOutput.new
        type.delegated_admin_account_id = params[:delegated_admin_account_id]
        type
      end
    end

    module EnableInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableInput, context: context)
        type = Types::EnableInput.new
        type.account_ids = AccountIdSet.build(params[:account_ids], context: "#{context}[:account_ids]") unless params[:account_ids].nil?
        type.resource_types = EnableResourceTypeList.build(params[:resource_types], context: "#{context}[:resource_types]") unless params[:resource_types].nil?
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module EnableOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableOutput, context: context)
        type = Types::EnableOutput.new
        type.accounts = AccountList.build(params[:accounts], context: "#{context}[:accounts]") unless params[:accounts].nil?
        type.failed_accounts = FailedAccountList.build(params[:failed_accounts], context: "#{context}[:failed_accounts]") unless params[:failed_accounts].nil?
        type
      end
    end

    module EnableResourceTypeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module FailedAccount
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FailedAccount, context: context)
        type = Types::FailedAccount.new
        type.account_id = params[:account_id]
        type.status = params[:status]
        type.resource_status = ResourceStatus.build(params[:resource_status], context: "#{context}[:resource_status]") unless params[:resource_status].nil?
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type
      end
    end

    module FailedAccountList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FailedAccount.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Filter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Filter, context: context)
        type = Types::Filter.new
        type.arn = params[:arn]
        type.owner_id = params[:owner_id]
        type.name = params[:name]
        type.criteria = FilterCriteria.build(params[:criteria], context: "#{context}[:criteria]") unless params[:criteria].nil?
        type.action = params[:action]
        type.created_at = params[:created_at]
        type.updated_at = params[:updated_at]
        type.description = params[:description]
        type.reason = params[:reason]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module FilterArnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module FilterCriteria
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FilterCriteria, context: context)
        type = Types::FilterCriteria.new
        type.finding_arn = StringFilterList.build(params[:finding_arn], context: "#{context}[:finding_arn]") unless params[:finding_arn].nil?
        type.aws_account_id = StringFilterList.build(params[:aws_account_id], context: "#{context}[:aws_account_id]") unless params[:aws_account_id].nil?
        type.finding_type = StringFilterList.build(params[:finding_type], context: "#{context}[:finding_type]") unless params[:finding_type].nil?
        type.severity = StringFilterList.build(params[:severity], context: "#{context}[:severity]") unless params[:severity].nil?
        type.first_observed_at = DateFilterList.build(params[:first_observed_at], context: "#{context}[:first_observed_at]") unless params[:first_observed_at].nil?
        type.last_observed_at = DateFilterList.build(params[:last_observed_at], context: "#{context}[:last_observed_at]") unless params[:last_observed_at].nil?
        type.updated_at = DateFilterList.build(params[:updated_at], context: "#{context}[:updated_at]") unless params[:updated_at].nil?
        type.finding_status = StringFilterList.build(params[:finding_status], context: "#{context}[:finding_status]") unless params[:finding_status].nil?
        type.title = StringFilterList.build(params[:title], context: "#{context}[:title]") unless params[:title].nil?
        type.inspector_score = NumberFilterList.build(params[:inspector_score], context: "#{context}[:inspector_score]") unless params[:inspector_score].nil?
        type.resource_type = StringFilterList.build(params[:resource_type], context: "#{context}[:resource_type]") unless params[:resource_type].nil?
        type.resource_id = StringFilterList.build(params[:resource_id], context: "#{context}[:resource_id]") unless params[:resource_id].nil?
        type.resource_tags = MapFilterList.build(params[:resource_tags], context: "#{context}[:resource_tags]") unless params[:resource_tags].nil?
        type.ec2_instance_image_id = StringFilterList.build(params[:ec2_instance_image_id], context: "#{context}[:ec2_instance_image_id]") unless params[:ec2_instance_image_id].nil?
        type.ec2_instance_vpc_id = StringFilterList.build(params[:ec2_instance_vpc_id], context: "#{context}[:ec2_instance_vpc_id]") unless params[:ec2_instance_vpc_id].nil?
        type.ec2_instance_subnet_id = StringFilterList.build(params[:ec2_instance_subnet_id], context: "#{context}[:ec2_instance_subnet_id]") unless params[:ec2_instance_subnet_id].nil?
        type.ecr_image_pushed_at = DateFilterList.build(params[:ecr_image_pushed_at], context: "#{context}[:ecr_image_pushed_at]") unless params[:ecr_image_pushed_at].nil?
        type.ecr_image_architecture = StringFilterList.build(params[:ecr_image_architecture], context: "#{context}[:ecr_image_architecture]") unless params[:ecr_image_architecture].nil?
        type.ecr_image_registry = StringFilterList.build(params[:ecr_image_registry], context: "#{context}[:ecr_image_registry]") unless params[:ecr_image_registry].nil?
        type.ecr_image_repository_name = StringFilterList.build(params[:ecr_image_repository_name], context: "#{context}[:ecr_image_repository_name]") unless params[:ecr_image_repository_name].nil?
        type.ecr_image_tags = StringFilterList.build(params[:ecr_image_tags], context: "#{context}[:ecr_image_tags]") unless params[:ecr_image_tags].nil?
        type.ecr_image_hash = StringFilterList.build(params[:ecr_image_hash], context: "#{context}[:ecr_image_hash]") unless params[:ecr_image_hash].nil?
        type.port_range = PortRangeFilterList.build(params[:port_range], context: "#{context}[:port_range]") unless params[:port_range].nil?
        type.network_protocol = StringFilterList.build(params[:network_protocol], context: "#{context}[:network_protocol]") unless params[:network_protocol].nil?
        type.component_id = StringFilterList.build(params[:component_id], context: "#{context}[:component_id]") unless params[:component_id].nil?
        type.component_type = StringFilterList.build(params[:component_type], context: "#{context}[:component_type]") unless params[:component_type].nil?
        type.vulnerability_id = StringFilterList.build(params[:vulnerability_id], context: "#{context}[:vulnerability_id]") unless params[:vulnerability_id].nil?
        type.vulnerability_source = StringFilterList.build(params[:vulnerability_source], context: "#{context}[:vulnerability_source]") unless params[:vulnerability_source].nil?
        type.vendor_severity = StringFilterList.build(params[:vendor_severity], context: "#{context}[:vendor_severity]") unless params[:vendor_severity].nil?
        type.vulnerable_packages = PackageFilterList.build(params[:vulnerable_packages], context: "#{context}[:vulnerable_packages]") unless params[:vulnerable_packages].nil?
        type.related_vulnerabilities = StringFilterList.build(params[:related_vulnerabilities], context: "#{context}[:related_vulnerabilities]") unless params[:related_vulnerabilities].nil?
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

    module Finding
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Finding, context: context)
        type = Types::Finding.new
        type.finding_arn = params[:finding_arn]
        type.aws_account_id = params[:aws_account_id]
        type.type = params[:type]
        type.description = params[:description]
        type.title = params[:title]
        type.remediation = Remediation.build(params[:remediation], context: "#{context}[:remediation]") unless params[:remediation].nil?
        type.severity = params[:severity]
        type.first_observed_at = params[:first_observed_at]
        type.last_observed_at = params[:last_observed_at]
        type.updated_at = params[:updated_at]
        type.status = params[:status]
        type.resources = ResourceList.build(params[:resources], context: "#{context}[:resources]") unless params[:resources].nil?
        type.inspector_score = params[:inspector_score]
        type.inspector_score_details = InspectorScoreDetails.build(params[:inspector_score_details], context: "#{context}[:inspector_score_details]") unless params[:inspector_score_details].nil?
        type.network_reachability_details = NetworkReachabilityDetails.build(params[:network_reachability_details], context: "#{context}[:network_reachability_details]") unless params[:network_reachability_details].nil?
        type.package_vulnerability_details = PackageVulnerabilityDetails.build(params[:package_vulnerability_details], context: "#{context}[:package_vulnerability_details]") unless params[:package_vulnerability_details].nil?
        type
      end
    end

    module FindingList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Finding.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FindingTypeAggregation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FindingTypeAggregation, context: context)
        type = Types::FindingTypeAggregation.new
        type.finding_type = params[:finding_type]
        type.resource_type = params[:resource_type]
        type.sort_order = params[:sort_order]
        type.sort_by = params[:sort_by]
        type
      end
    end

    module FindingTypeAggregationResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FindingTypeAggregationResponse, context: context)
        type = Types::FindingTypeAggregationResponse.new
        type.account_id = params[:account_id]
        type.severity_counts = SeverityCounts.build(params[:severity_counts], context: "#{context}[:severity_counts]") unless params[:severity_counts].nil?
        type
      end
    end

    module FreeTrialAccountInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FreeTrialAccountInfo, context: context)
        type = Types::FreeTrialAccountInfo.new
        type.account_id = params[:account_id]
        type.free_trial_info = FreeTrialInfoList.build(params[:free_trial_info], context: "#{context}[:free_trial_info]") unless params[:free_trial_info].nil?
        type
      end
    end

    module FreeTrialAccountInfoList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FreeTrialAccountInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FreeTrialInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FreeTrialInfo, context: context)
        type = Types::FreeTrialInfo.new
        type.type = params[:type]
        type.start = params[:start]
        type.end = params[:end]
        type.status = params[:status]
        type
      end
    end

    module FreeTrialInfoError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FreeTrialInfoError, context: context)
        type = Types::FreeTrialInfoError.new
        type.account_id = params[:account_id]
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module FreeTrialInfoErrorList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FreeTrialInfoError.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FreeTrialInfoList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FreeTrialInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GetDelegatedAdminAccountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDelegatedAdminAccountInput, context: context)
        type = Types::GetDelegatedAdminAccountInput.new
        type
      end
    end

    module GetDelegatedAdminAccountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDelegatedAdminAccountOutput, context: context)
        type = Types::GetDelegatedAdminAccountOutput.new
        type.delegated_admin = DelegatedAdmin.build(params[:delegated_admin], context: "#{context}[:delegated_admin]") unless params[:delegated_admin].nil?
        type
      end
    end

    module GetFindingsReportStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFindingsReportStatusInput, context: context)
        type = Types::GetFindingsReportStatusInput.new
        type.report_id = params[:report_id]
        type
      end
    end

    module GetFindingsReportStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFindingsReportStatusOutput, context: context)
        type = Types::GetFindingsReportStatusOutput.new
        type.report_id = params[:report_id]
        type.status = params[:status]
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type.destination = Destination.build(params[:destination], context: "#{context}[:destination]") unless params[:destination].nil?
        type.filter_criteria = FilterCriteria.build(params[:filter_criteria], context: "#{context}[:filter_criteria]") unless params[:filter_criteria].nil?
        type
      end
    end

    module GetMemberInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMemberInput, context: context)
        type = Types::GetMemberInput.new
        type.account_id = params[:account_id]
        type
      end
    end

    module GetMemberOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMemberOutput, context: context)
        type = Types::GetMemberOutput.new
        type.member = Member.build(params[:member], context: "#{context}[:member]") unless params[:member].nil?
        type
      end
    end

    module ImageLayerAggregation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImageLayerAggregation, context: context)
        type = Types::ImageLayerAggregation.new
        type.repositories = StringFilterList.build(params[:repositories], context: "#{context}[:repositories]") unless params[:repositories].nil?
        type.resource_ids = StringFilterList.build(params[:resource_ids], context: "#{context}[:resource_ids]") unless params[:resource_ids].nil?
        type.layer_hashes = StringFilterList.build(params[:layer_hashes], context: "#{context}[:layer_hashes]") unless params[:layer_hashes].nil?
        type.sort_order = params[:sort_order]
        type.sort_by = params[:sort_by]
        type
      end
    end

    module ImageLayerAggregationResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImageLayerAggregationResponse, context: context)
        type = Types::ImageLayerAggregationResponse.new
        type.repository = params[:repository]
        type.resource_id = params[:resource_id]
        type.layer_hash = params[:layer_hash]
        type.account_id = params[:account_id]
        type.severity_counts = SeverityCounts.build(params[:severity_counts], context: "#{context}[:severity_counts]") unless params[:severity_counts].nil?
        type
      end
    end

    module ImageTagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module InspectorScoreDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InspectorScoreDetails, context: context)
        type = Types::InspectorScoreDetails.new
        type.adjusted_cvss = CvssScoreDetails.build(params[:adjusted_cvss], context: "#{context}[:adjusted_cvss]") unless params[:adjusted_cvss].nil?
        type
      end
    end

    module InternalServerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerException, context: context)
        type = Types::InternalServerException.new
        type.message = params[:message]
        type.retry_after_seconds = params[:retry_after_seconds]
        type
      end
    end

    module IpV4AddressList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module IpV6AddressList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ListAccountPermissionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAccountPermissionsInput, context: context)
        type = Types::ListAccountPermissionsInput.new
        type.service = params[:service]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAccountPermissionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAccountPermissionsOutput, context: context)
        type = Types::ListAccountPermissionsOutput.new
        type.permissions = Permissions.build(params[:permissions], context: "#{context}[:permissions]") unless params[:permissions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListCoverageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCoverageInput, context: context)
        type = Types::ListCoverageInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.filter_criteria = CoverageFilterCriteria.build(params[:filter_criteria], context: "#{context}[:filter_criteria]") unless params[:filter_criteria].nil?
        type
      end
    end

    module ListCoverageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCoverageOutput, context: context)
        type = Types::ListCoverageOutput.new
        type.next_token = params[:next_token]
        type.covered_resources = CoveredResources.build(params[:covered_resources], context: "#{context}[:covered_resources]") unless params[:covered_resources].nil?
        type
      end
    end

    module ListCoverageStatisticsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCoverageStatisticsInput, context: context)
        type = Types::ListCoverageStatisticsInput.new
        type.filter_criteria = CoverageFilterCriteria.build(params[:filter_criteria], context: "#{context}[:filter_criteria]") unless params[:filter_criteria].nil?
        type.group_by = params[:group_by]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListCoverageStatisticsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCoverageStatisticsOutput, context: context)
        type = Types::ListCoverageStatisticsOutput.new
        type.counts_by_group = CountsList.build(params[:counts_by_group], context: "#{context}[:counts_by_group]") unless params[:counts_by_group].nil?
        type.total_counts = params[:total_counts]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDelegatedAdminAccountsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDelegatedAdminAccountsInput, context: context)
        type = Types::ListDelegatedAdminAccountsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDelegatedAdminAccountsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDelegatedAdminAccountsOutput, context: context)
        type = Types::ListDelegatedAdminAccountsOutput.new
        type.delegated_admin_accounts = DelegatedAdminAccountList.build(params[:delegated_admin_accounts], context: "#{context}[:delegated_admin_accounts]") unless params[:delegated_admin_accounts].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListFiltersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFiltersInput, context: context)
        type = Types::ListFiltersInput.new
        type.arns = FilterArnList.build(params[:arns], context: "#{context}[:arns]") unless params[:arns].nil?
        type.action = params[:action]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListFiltersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFiltersOutput, context: context)
        type = Types::ListFiltersOutput.new
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListFindingAggregationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFindingAggregationsInput, context: context)
        type = Types::ListFindingAggregationsInput.new
        type.aggregation_type = params[:aggregation_type]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.account_ids = StringFilterList.build(params[:account_ids], context: "#{context}[:account_ids]") unless params[:account_ids].nil?
        type.aggregation_request = AggregationRequest.build(params[:aggregation_request], context: "#{context}[:aggregation_request]") unless params[:aggregation_request].nil?
        type
      end
    end

    module ListFindingAggregationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFindingAggregationsOutput, context: context)
        type = Types::ListFindingAggregationsOutput.new
        type.aggregation_type = params[:aggregation_type]
        type.responses = AggregationResponseList.build(params[:responses], context: "#{context}[:responses]") unless params[:responses].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListFindingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFindingsInput, context: context)
        type = Types::ListFindingsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.filter_criteria = FilterCriteria.build(params[:filter_criteria], context: "#{context}[:filter_criteria]") unless params[:filter_criteria].nil?
        type.sort_criteria = SortCriteria.build(params[:sort_criteria], context: "#{context}[:sort_criteria]") unless params[:sort_criteria].nil?
        type
      end
    end

    module ListFindingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFindingsOutput, context: context)
        type = Types::ListFindingsOutput.new
        type.next_token = params[:next_token]
        type.findings = FindingList.build(params[:findings], context: "#{context}[:findings]") unless params[:findings].nil?
        type
      end
    end

    module ListMembersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMembersInput, context: context)
        type = Types::ListMembersInput.new
        type.only_associated = params[:only_associated]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListMembersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMembersOutput, context: context)
        type = Types::ListMembersOutput.new
        type.members = MemberList.build(params[:members], context: "#{context}[:members]") unless params[:members].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ListUsageTotalsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListUsageTotalsInput, context: context)
        type = Types::ListUsageTotalsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.account_ids = UsageAccountIdList.build(params[:account_ids], context: "#{context}[:account_ids]") unless params[:account_ids].nil?
        type
      end
    end

    module ListUsageTotalsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListUsageTotalsOutput, context: context)
        type = Types::ListUsageTotalsOutput.new
        type.next_token = params[:next_token]
        type.totals = UsageTotalList.build(params[:totals], context: "#{context}[:totals]") unless params[:totals].nil?
        type
      end
    end

    module MapFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MapFilter, context: context)
        type = Types::MapFilter.new
        type.comparison = params[:comparison]
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module MapFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MapFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Member
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Member, context: context)
        type = Types::Member.new
        type.account_id = params[:account_id]
        type.relationship_status = params[:relationship_status]
        type.delegated_admin_account_id = params[:delegated_admin_account_id]
        type.updated_at = params[:updated_at]
        type
      end
    end

    module MemberList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Member.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MeteringAccountIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module NetworkPath
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NetworkPath, context: context)
        type = Types::NetworkPath.new
        type.steps = StepList.build(params[:steps], context: "#{context}[:steps]") unless params[:steps].nil?
        type
      end
    end

    module NetworkReachabilityDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NetworkReachabilityDetails, context: context)
        type = Types::NetworkReachabilityDetails.new
        type.open_port_range = PortRange.build(params[:open_port_range], context: "#{context}[:open_port_range]") unless params[:open_port_range].nil?
        type.protocol = params[:protocol]
        type.network_path = NetworkPath.build(params[:network_path], context: "#{context}[:network_path]") unless params[:network_path].nil?
        type
      end
    end

    module NonEmptyStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module NumberFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NumberFilter, context: context)
        type = Types::NumberFilter.new
        type.upper_inclusive = params[:upper_inclusive]
        type.lower_inclusive = params[:lower_inclusive]
        type
      end
    end

    module NumberFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << NumberFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PackageAggregation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PackageAggregation, context: context)
        type = Types::PackageAggregation.new
        type.package_names = StringFilterList.build(params[:package_names], context: "#{context}[:package_names]") unless params[:package_names].nil?
        type.sort_order = params[:sort_order]
        type.sort_by = params[:sort_by]
        type
      end
    end

    module PackageAggregationResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PackageAggregationResponse, context: context)
        type = Types::PackageAggregationResponse.new
        type.package_name = params[:package_name]
        type.account_id = params[:account_id]
        type.severity_counts = SeverityCounts.build(params[:severity_counts], context: "#{context}[:severity_counts]") unless params[:severity_counts].nil?
        type
      end
    end

    module PackageFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PackageFilter, context: context)
        type = Types::PackageFilter.new
        type.name = StringFilter.build(params[:name], context: "#{context}[:name]") unless params[:name].nil?
        type.version = StringFilter.build(params[:version], context: "#{context}[:version]") unless params[:version].nil?
        type.epoch = NumberFilter.build(params[:epoch], context: "#{context}[:epoch]") unless params[:epoch].nil?
        type.release = StringFilter.build(params[:release], context: "#{context}[:release]") unless params[:release].nil?
        type.architecture = StringFilter.build(params[:architecture], context: "#{context}[:architecture]") unless params[:architecture].nil?
        type.source_layer_hash = StringFilter.build(params[:source_layer_hash], context: "#{context}[:source_layer_hash]") unless params[:source_layer_hash].nil?
        type
      end
    end

    module PackageFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PackageFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PackageVulnerabilityDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PackageVulnerabilityDetails, context: context)
        type = Types::PackageVulnerabilityDetails.new
        type.vulnerability_id = params[:vulnerability_id]
        type.vulnerable_packages = VulnerablePackageList.build(params[:vulnerable_packages], context: "#{context}[:vulnerable_packages]") unless params[:vulnerable_packages].nil?
        type.source = params[:source]
        type.cvss = CvssScoreList.build(params[:cvss], context: "#{context}[:cvss]") unless params[:cvss].nil?
        type.related_vulnerabilities = VulnerabilityIdList.build(params[:related_vulnerabilities], context: "#{context}[:related_vulnerabilities]") unless params[:related_vulnerabilities].nil?
        type.source_url = params[:source_url]
        type.vendor_severity = params[:vendor_severity]
        type.vendor_created_at = params[:vendor_created_at]
        type.vendor_updated_at = params[:vendor_updated_at]
        type.reference_urls = NonEmptyStringList.build(params[:reference_urls], context: "#{context}[:reference_urls]") unless params[:reference_urls].nil?
        type
      end
    end

    module Permission
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Permission, context: context)
        type = Types::Permission.new
        type.service = params[:service]
        type.operation = params[:operation]
        type
      end
    end

    module Permissions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Permission.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PortRange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PortRange, context: context)
        type = Types::PortRange.new
        type.begin = params[:begin]
        type.end = params[:end]
        type
      end
    end

    module PortRangeFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PortRangeFilter, context: context)
        type = Types::PortRangeFilter.new
        type.begin_inclusive = params[:begin_inclusive]
        type.end_inclusive = params[:end_inclusive]
        type
      end
    end

    module PortRangeFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PortRangeFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Recommendation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Recommendation, context: context)
        type = Types::Recommendation.new
        type.text = params[:text]
        type.url = params[:url]
        type
      end
    end

    module Remediation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Remediation, context: context)
        type = Types::Remediation.new
        type.recommendation = Recommendation.build(params[:recommendation], context: "#{context}[:recommendation]") unless params[:recommendation].nil?
        type
      end
    end

    module RepositoryAggregation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RepositoryAggregation, context: context)
        type = Types::RepositoryAggregation.new
        type.repositories = StringFilterList.build(params[:repositories], context: "#{context}[:repositories]") unless params[:repositories].nil?
        type.sort_order = params[:sort_order]
        type.sort_by = params[:sort_by]
        type
      end
    end

    module RepositoryAggregationResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RepositoryAggregationResponse, context: context)
        type = Types::RepositoryAggregationResponse.new
        type.repository = params[:repository]
        type.account_id = params[:account_id]
        type.severity_counts = SeverityCounts.build(params[:severity_counts], context: "#{context}[:severity_counts]") unless params[:severity_counts].nil?
        type.affected_images = params[:affected_images]
        type
      end
    end

    module Resource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Resource, context: context)
        type = Types::Resource.new
        type.type = params[:type]
        type.id = params[:id]
        type.partition = params[:partition]
        type.region = params[:region]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.details = ResourceDetails.build(params[:details], context: "#{context}[:details]") unless params[:details].nil?
        type
      end
    end

    module ResourceDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceDetails, context: context)
        type = Types::ResourceDetails.new
        type.aws_ec2_instance = AwsEc2InstanceDetails.build(params[:aws_ec2_instance], context: "#{context}[:aws_ec2_instance]") unless params[:aws_ec2_instance].nil?
        type.aws_ecr_container_image = AwsEcrContainerImageDetails.build(params[:aws_ecr_container_image], context: "#{context}[:aws_ecr_container_image]") unless params[:aws_ecr_container_image].nil?
        type
      end
    end

    module ResourceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Resource.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
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

    module ResourceScanMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceScanMetadata, context: context)
        type = Types::ResourceScanMetadata.new
        type.ecr_repository = EcrRepositoryMetadata.build(params[:ecr_repository], context: "#{context}[:ecr_repository]") unless params[:ecr_repository].nil?
        type.ecr_image = EcrContainerImageMetadata.build(params[:ecr_image], context: "#{context}[:ecr_image]") unless params[:ecr_image].nil?
        type.ec2 = Ec2Metadata.build(params[:ec2], context: "#{context}[:ec2]") unless params[:ec2].nil?
        type
      end
    end

    module ResourceState
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceState, context: context)
        type = Types::ResourceState.new
        type.ec2 = State.build(params[:ec2], context: "#{context}[:ec2]") unless params[:ec2].nil?
        type.ecr = State.build(params[:ecr], context: "#{context}[:ecr]") unless params[:ecr].nil?
        type
      end
    end

    module ResourceStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceStatus, context: context)
        type = Types::ResourceStatus.new
        type.ec2 = params[:ec2]
        type.ecr = params[:ecr]
        type
      end
    end

    module ScanStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScanStatus, context: context)
        type = Types::ScanStatus.new
        type.status_code = params[:status_code]
        type.reason = params[:reason]
        type
      end
    end

    module ServiceQuotaExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceQuotaExceededException, context: context)
        type = Types::ServiceQuotaExceededException.new
        type.message = params[:message]
        type.resource_id = params[:resource_id]
        type
      end
    end

    module SeverityCounts
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SeverityCounts, context: context)
        type = Types::SeverityCounts.new
        type.all = params[:all]
        type.medium = params[:medium]
        type.high = params[:high]
        type.critical = params[:critical]
        type
      end
    end

    module SortCriteria
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SortCriteria, context: context)
        type = Types::SortCriteria.new
        type.field = params[:field]
        type.sort_order = params[:sort_order]
        type
      end
    end

    module State
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::State, context: context)
        type = Types::State.new
        type.status = params[:status]
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type
      end
    end

    module Step
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Step, context: context)
        type = Types::Step.new
        type.component_id = params[:component_id]
        type.component_type = params[:component_type]
        type
      end
    end

    module StepList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Step.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StringFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StringFilter, context: context)
        type = Types::StringFilter.new
        type.comparison = params[:comparison]
        type.value = params[:value]
        type
      end
    end

    module StringFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StringFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StringList
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

    module TagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
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

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceOutput, context: context)
        type = Types::TagResourceOutput.new
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

    module TitleAggregation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TitleAggregation, context: context)
        type = Types::TitleAggregation.new
        type.titles = StringFilterList.build(params[:titles], context: "#{context}[:titles]") unless params[:titles].nil?
        type.vulnerability_ids = StringFilterList.build(params[:vulnerability_ids], context: "#{context}[:vulnerability_ids]") unless params[:vulnerability_ids].nil?
        type.resource_type = params[:resource_type]
        type.sort_order = params[:sort_order]
        type.sort_by = params[:sort_by]
        type
      end
    end

    module TitleAggregationResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TitleAggregationResponse, context: context)
        type = Types::TitleAggregationResponse.new
        type.title = params[:title]
        type.vulnerability_id = params[:vulnerability_id]
        type.account_id = params[:account_id]
        type.severity_counts = SeverityCounts.build(params[:severity_counts], context: "#{context}[:severity_counts]") unless params[:severity_counts].nil?
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceOutput, context: context)
        type = Types::UntagResourceOutput.new
        type
      end
    end

    module UpdateFilterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFilterInput, context: context)
        type = Types::UpdateFilterInput.new
        type.action = params[:action]
        type.description = params[:description]
        type.filter_criteria = FilterCriteria.build(params[:filter_criteria], context: "#{context}[:filter_criteria]") unless params[:filter_criteria].nil?
        type.name = params[:name]
        type.filter_arn = params[:filter_arn]
        type
      end
    end

    module UpdateFilterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFilterOutput, context: context)
        type = Types::UpdateFilterOutput.new
        type.arn = params[:arn]
        type
      end
    end

    module UpdateOrganizationConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateOrganizationConfigurationInput, context: context)
        type = Types::UpdateOrganizationConfigurationInput.new
        type.auto_enable = AutoEnable.build(params[:auto_enable], context: "#{context}[:auto_enable]") unless params[:auto_enable].nil?
        type
      end
    end

    module UpdateOrganizationConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateOrganizationConfigurationOutput, context: context)
        type = Types::UpdateOrganizationConfigurationOutput.new
        type.auto_enable = AutoEnable.build(params[:auto_enable], context: "#{context}[:auto_enable]") unless params[:auto_enable].nil?
        type
      end
    end

    module Usage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Usage, context: context)
        type = Types::Usage.new
        type.type = params[:type]
        type.total = params[:total]
        type.estimated_monthly_cost = params[:estimated_monthly_cost]
        type.currency = params[:currency]
        type
      end
    end

    module UsageAccountIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module UsageList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Usage.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UsageTotal
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UsageTotal, context: context)
        type = Types::UsageTotal.new
        type.account_id = params[:account_id]
        type.usage = UsageList.build(params[:usage], context: "#{context}[:usage]") unless params[:usage].nil?
        type
      end
    end

    module UsageTotalList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UsageTotal.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type.reason = params[:reason]
        type.fields = ValidationExceptionFields.build(params[:fields], context: "#{context}[:fields]") unless params[:fields].nil?
        type
      end
    end

    module ValidationExceptionField
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationExceptionField, context: context)
        type = Types::ValidationExceptionField.new
        type.name = params[:name]
        type.message = params[:message]
        type
      end
    end

    module ValidationExceptionFields
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ValidationExceptionField.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module VulnerabilityIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module VulnerablePackage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VulnerablePackage, context: context)
        type = Types::VulnerablePackage.new
        type.name = params[:name]
        type.version = params[:version]
        type.source_layer_hash = params[:source_layer_hash]
        type.epoch = params[:epoch]
        type.release = params[:release]
        type.arch = params[:arch]
        type.package_manager = params[:package_manager]
        type.file_path = params[:file_path]
        type.fixed_in_version = params[:fixed_in_version]
        type
      end
    end

    module VulnerablePackageList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << VulnerablePackage.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

  end
end
