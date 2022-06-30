# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::ComputeOptimizer
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module AccountEnrollmentStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccountEnrollmentStatus, context: context)
        type = Types::AccountEnrollmentStatus.new
        type.account_id = params[:account_id]
        type.status = params[:status]
        type.status_reason = params[:status_reason]
        type.last_updated_timestamp = params[:last_updated_timestamp]
        type
      end
    end

    module AccountEnrollmentStatuses
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AccountEnrollmentStatus.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AccountIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AutoScalingGroupArns
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AutoScalingGroupConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutoScalingGroupConfiguration, context: context)
        type = Types::AutoScalingGroupConfiguration.new
        type.desired_capacity = params[:desired_capacity]
        type.min_size = params[:min_size]
        type.max_size = params[:max_size]
        type.instance_type = params[:instance_type]
        type
      end
    end

    module AutoScalingGroupRecommendation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutoScalingGroupRecommendation, context: context)
        type = Types::AutoScalingGroupRecommendation.new
        type.account_id = params[:account_id]
        type.auto_scaling_group_arn = params[:auto_scaling_group_arn]
        type.auto_scaling_group_name = params[:auto_scaling_group_name]
        type.finding = params[:finding]
        type.utilization_metrics = UtilizationMetrics.build(params[:utilization_metrics], context: "#{context}[:utilization_metrics]") unless params[:utilization_metrics].nil?
        type.look_back_period_in_days = params[:look_back_period_in_days]
        type.current_configuration = AutoScalingGroupConfiguration.build(params[:current_configuration], context: "#{context}[:current_configuration]") unless params[:current_configuration].nil?
        type.recommendation_options = AutoScalingGroupRecommendationOptions.build(params[:recommendation_options], context: "#{context}[:recommendation_options]") unless params[:recommendation_options].nil?
        type.last_refresh_timestamp = params[:last_refresh_timestamp]
        type.current_performance_risk = params[:current_performance_risk]
        type.effective_recommendation_preferences = EffectiveRecommendationPreferences.build(params[:effective_recommendation_preferences], context: "#{context}[:effective_recommendation_preferences]") unless params[:effective_recommendation_preferences].nil?
        type.inferred_workload_types = InferredWorkloadTypes.build(params[:inferred_workload_types], context: "#{context}[:inferred_workload_types]") unless params[:inferred_workload_types].nil?
        type
      end
    end

    module AutoScalingGroupRecommendationOption
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutoScalingGroupRecommendationOption, context: context)
        type = Types::AutoScalingGroupRecommendationOption.new
        type.configuration = AutoScalingGroupConfiguration.build(params[:configuration], context: "#{context}[:configuration]") unless params[:configuration].nil?
        type.projected_utilization_metrics = ProjectedUtilizationMetrics.build(params[:projected_utilization_metrics], context: "#{context}[:projected_utilization_metrics]") unless params[:projected_utilization_metrics].nil?
        type.performance_risk = params[:performance_risk]
        type.rank = params[:rank]
        type.savings_opportunity = SavingsOpportunity.build(params[:savings_opportunity], context: "#{context}[:savings_opportunity]") unless params[:savings_opportunity].nil?
        type.migration_effort = params[:migration_effort]
        type
      end
    end

    module AutoScalingGroupRecommendationOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AutoScalingGroupRecommendationOption.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AutoScalingGroupRecommendations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AutoScalingGroupRecommendation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CpuVendorArchitectures
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CurrentPerformanceRiskRatings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CurrentPerformanceRiskRatings, context: context)
        type = Types::CurrentPerformanceRiskRatings.new
        type.high = params[:high]
        type.medium = params[:medium]
        type.low = params[:low]
        type.very_low = params[:very_low]
        type
      end
    end

    module DeleteRecommendationPreferencesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRecommendationPreferencesInput, context: context)
        type = Types::DeleteRecommendationPreferencesInput.new
        type.resource_type = params[:resource_type]
        type.scope = Scope.build(params[:scope], context: "#{context}[:scope]") unless params[:scope].nil?
        type.recommendation_preference_names = RecommendationPreferenceNames.build(params[:recommendation_preference_names], context: "#{context}[:recommendation_preference_names]") unless params[:recommendation_preference_names].nil?
        type
      end
    end

    module DeleteRecommendationPreferencesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRecommendationPreferencesOutput, context: context)
        type = Types::DeleteRecommendationPreferencesOutput.new
        type
      end
    end

    module DescribeRecommendationExportJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRecommendationExportJobsInput, context: context)
        type = Types::DescribeRecommendationExportJobsInput.new
        type.job_ids = JobIds.build(params[:job_ids], context: "#{context}[:job_ids]") unless params[:job_ids].nil?
        type.filters = JobFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribeRecommendationExportJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRecommendationExportJobsOutput, context: context)
        type = Types::DescribeRecommendationExportJobsOutput.new
        type.recommendation_export_jobs = RecommendationExportJobs.build(params[:recommendation_export_jobs], context: "#{context}[:recommendation_export_jobs]") unless params[:recommendation_export_jobs].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module EBSFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EBSFilter, context: context)
        type = Types::EBSFilter.new
        type.name = params[:name]
        type.values = FilterValues.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module EBSFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EBSFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EBSUtilizationMetric
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EBSUtilizationMetric, context: context)
        type = Types::EBSUtilizationMetric.new
        type.name = params[:name]
        type.statistic = params[:statistic]
        type.value = params[:value]
        type
      end
    end

    module EBSUtilizationMetrics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EBSUtilizationMetric.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EffectiveRecommendationPreferences
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EffectiveRecommendationPreferences, context: context)
        type = Types::EffectiveRecommendationPreferences.new
        type.cpu_vendor_architectures = CpuVendorArchitectures.build(params[:cpu_vendor_architectures], context: "#{context}[:cpu_vendor_architectures]") unless params[:cpu_vendor_architectures].nil?
        type.enhanced_infrastructure_metrics = params[:enhanced_infrastructure_metrics]
        type.inferred_workload_types = params[:inferred_workload_types]
        type
      end
    end

    module EnrollmentFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnrollmentFilter, context: context)
        type = Types::EnrollmentFilter.new
        type.name = params[:name]
        type.values = FilterValues.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module EnrollmentFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EnrollmentFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EstimatedMonthlySavings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EstimatedMonthlySavings, context: context)
        type = Types::EstimatedMonthlySavings.new
        type.currency = params[:currency]
        type.value = params[:value]
        type
      end
    end

    module ExportAutoScalingGroupRecommendationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportAutoScalingGroupRecommendationsInput, context: context)
        type = Types::ExportAutoScalingGroupRecommendationsInput.new
        type.account_ids = AccountIds.build(params[:account_ids], context: "#{context}[:account_ids]") unless params[:account_ids].nil?
        type.filters = Filters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.fields_to_export = ExportableAutoScalingGroupFields.build(params[:fields_to_export], context: "#{context}[:fields_to_export]") unless params[:fields_to_export].nil?
        type.s3_destination_config = S3DestinationConfig.build(params[:s3_destination_config], context: "#{context}[:s3_destination_config]") unless params[:s3_destination_config].nil?
        type.file_format = params[:file_format]
        type.include_member_accounts = params[:include_member_accounts]
        type.recommendation_preferences = RecommendationPreferences.build(params[:recommendation_preferences], context: "#{context}[:recommendation_preferences]") unless params[:recommendation_preferences].nil?
        type
      end
    end

    module ExportAutoScalingGroupRecommendationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportAutoScalingGroupRecommendationsOutput, context: context)
        type = Types::ExportAutoScalingGroupRecommendationsOutput.new
        type.job_id = params[:job_id]
        type.s3_destination = S3Destination.build(params[:s3_destination], context: "#{context}[:s3_destination]") unless params[:s3_destination].nil?
        type
      end
    end

    module ExportDestination
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportDestination, context: context)
        type = Types::ExportDestination.new
        type.s3 = S3Destination.build(params[:s3], context: "#{context}[:s3]") unless params[:s3].nil?
        type
      end
    end

    module ExportEBSVolumeRecommendationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportEBSVolumeRecommendationsInput, context: context)
        type = Types::ExportEBSVolumeRecommendationsInput.new
        type.account_ids = AccountIds.build(params[:account_ids], context: "#{context}[:account_ids]") unless params[:account_ids].nil?
        type.filters = EBSFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.fields_to_export = ExportableVolumeFields.build(params[:fields_to_export], context: "#{context}[:fields_to_export]") unless params[:fields_to_export].nil?
        type.s3_destination_config = S3DestinationConfig.build(params[:s3_destination_config], context: "#{context}[:s3_destination_config]") unless params[:s3_destination_config].nil?
        type.file_format = params[:file_format]
        type.include_member_accounts = params[:include_member_accounts]
        type
      end
    end

    module ExportEBSVolumeRecommendationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportEBSVolumeRecommendationsOutput, context: context)
        type = Types::ExportEBSVolumeRecommendationsOutput.new
        type.job_id = params[:job_id]
        type.s3_destination = S3Destination.build(params[:s3_destination], context: "#{context}[:s3_destination]") unless params[:s3_destination].nil?
        type
      end
    end

    module ExportEC2InstanceRecommendationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportEC2InstanceRecommendationsInput, context: context)
        type = Types::ExportEC2InstanceRecommendationsInput.new
        type.account_ids = AccountIds.build(params[:account_ids], context: "#{context}[:account_ids]") unless params[:account_ids].nil?
        type.filters = Filters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.fields_to_export = ExportableInstanceFields.build(params[:fields_to_export], context: "#{context}[:fields_to_export]") unless params[:fields_to_export].nil?
        type.s3_destination_config = S3DestinationConfig.build(params[:s3_destination_config], context: "#{context}[:s3_destination_config]") unless params[:s3_destination_config].nil?
        type.file_format = params[:file_format]
        type.include_member_accounts = params[:include_member_accounts]
        type.recommendation_preferences = RecommendationPreferences.build(params[:recommendation_preferences], context: "#{context}[:recommendation_preferences]") unless params[:recommendation_preferences].nil?
        type
      end
    end

    module ExportEC2InstanceRecommendationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportEC2InstanceRecommendationsOutput, context: context)
        type = Types::ExportEC2InstanceRecommendationsOutput.new
        type.job_id = params[:job_id]
        type.s3_destination = S3Destination.build(params[:s3_destination], context: "#{context}[:s3_destination]") unless params[:s3_destination].nil?
        type
      end
    end

    module ExportLambdaFunctionRecommendationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportLambdaFunctionRecommendationsInput, context: context)
        type = Types::ExportLambdaFunctionRecommendationsInput.new
        type.account_ids = AccountIds.build(params[:account_ids], context: "#{context}[:account_ids]") unless params[:account_ids].nil?
        type.filters = LambdaFunctionRecommendationFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.fields_to_export = ExportableLambdaFunctionFields.build(params[:fields_to_export], context: "#{context}[:fields_to_export]") unless params[:fields_to_export].nil?
        type.s3_destination_config = S3DestinationConfig.build(params[:s3_destination_config], context: "#{context}[:s3_destination_config]") unless params[:s3_destination_config].nil?
        type.file_format = params[:file_format]
        type.include_member_accounts = params[:include_member_accounts]
        type
      end
    end

    module ExportLambdaFunctionRecommendationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportLambdaFunctionRecommendationsOutput, context: context)
        type = Types::ExportLambdaFunctionRecommendationsOutput.new
        type.job_id = params[:job_id]
        type.s3_destination = S3Destination.build(params[:s3_destination], context: "#{context}[:s3_destination]") unless params[:s3_destination].nil?
        type
      end
    end

    module ExportableAutoScalingGroupFields
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ExportableInstanceFields
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ExportableLambdaFunctionFields
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ExportableVolumeFields
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Filter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Filter, context: context)
        type = Types::Filter.new
        type.name = params[:name]
        type.values = FilterValues.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module FilterValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Filters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Filter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FunctionArns
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module GetAutoScalingGroupRecommendationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAutoScalingGroupRecommendationsInput, context: context)
        type = Types::GetAutoScalingGroupRecommendationsInput.new
        type.account_ids = AccountIds.build(params[:account_ids], context: "#{context}[:account_ids]") unless params[:account_ids].nil?
        type.auto_scaling_group_arns = AutoScalingGroupArns.build(params[:auto_scaling_group_arns], context: "#{context}[:auto_scaling_group_arns]") unless params[:auto_scaling_group_arns].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.filters = Filters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.recommendation_preferences = RecommendationPreferences.build(params[:recommendation_preferences], context: "#{context}[:recommendation_preferences]") unless params[:recommendation_preferences].nil?
        type
      end
    end

    module GetAutoScalingGroupRecommendationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAutoScalingGroupRecommendationsOutput, context: context)
        type = Types::GetAutoScalingGroupRecommendationsOutput.new
        type.next_token = params[:next_token]
        type.auto_scaling_group_recommendations = AutoScalingGroupRecommendations.build(params[:auto_scaling_group_recommendations], context: "#{context}[:auto_scaling_group_recommendations]") unless params[:auto_scaling_group_recommendations].nil?
        type.errors = GetRecommendationErrors.build(params[:errors], context: "#{context}[:errors]") unless params[:errors].nil?
        type
      end
    end

    module GetEBSVolumeRecommendationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEBSVolumeRecommendationsInput, context: context)
        type = Types::GetEBSVolumeRecommendationsInput.new
        type.volume_arns = VolumeArns.build(params[:volume_arns], context: "#{context}[:volume_arns]") unless params[:volume_arns].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.filters = EBSFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.account_ids = AccountIds.build(params[:account_ids], context: "#{context}[:account_ids]") unless params[:account_ids].nil?
        type
      end
    end

    module GetEBSVolumeRecommendationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEBSVolumeRecommendationsOutput, context: context)
        type = Types::GetEBSVolumeRecommendationsOutput.new
        type.next_token = params[:next_token]
        type.volume_recommendations = VolumeRecommendations.build(params[:volume_recommendations], context: "#{context}[:volume_recommendations]") unless params[:volume_recommendations].nil?
        type.errors = GetRecommendationErrors.build(params[:errors], context: "#{context}[:errors]") unless params[:errors].nil?
        type
      end
    end

    module GetEC2InstanceRecommendationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEC2InstanceRecommendationsInput, context: context)
        type = Types::GetEC2InstanceRecommendationsInput.new
        type.instance_arns = InstanceArns.build(params[:instance_arns], context: "#{context}[:instance_arns]") unless params[:instance_arns].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.filters = Filters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.account_ids = AccountIds.build(params[:account_ids], context: "#{context}[:account_ids]") unless params[:account_ids].nil?
        type.recommendation_preferences = RecommendationPreferences.build(params[:recommendation_preferences], context: "#{context}[:recommendation_preferences]") unless params[:recommendation_preferences].nil?
        type
      end
    end

    module GetEC2InstanceRecommendationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEC2InstanceRecommendationsOutput, context: context)
        type = Types::GetEC2InstanceRecommendationsOutput.new
        type.next_token = params[:next_token]
        type.instance_recommendations = InstanceRecommendations.build(params[:instance_recommendations], context: "#{context}[:instance_recommendations]") unless params[:instance_recommendations].nil?
        type.errors = GetRecommendationErrors.build(params[:errors], context: "#{context}[:errors]") unless params[:errors].nil?
        type
      end
    end

    module GetEC2RecommendationProjectedMetricsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEC2RecommendationProjectedMetricsInput, context: context)
        type = Types::GetEC2RecommendationProjectedMetricsInput.new
        type.instance_arn = params[:instance_arn]
        type.stat = params[:stat]
        type.period = params[:period]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.recommendation_preferences = RecommendationPreferences.build(params[:recommendation_preferences], context: "#{context}[:recommendation_preferences]") unless params[:recommendation_preferences].nil?
        type
      end
    end

    module GetEC2RecommendationProjectedMetricsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEC2RecommendationProjectedMetricsOutput, context: context)
        type = Types::GetEC2RecommendationProjectedMetricsOutput.new
        type.recommended_option_projected_metrics = RecommendedOptionProjectedMetrics.build(params[:recommended_option_projected_metrics], context: "#{context}[:recommended_option_projected_metrics]") unless params[:recommended_option_projected_metrics].nil?
        type
      end
    end

    module GetEffectiveRecommendationPreferencesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEffectiveRecommendationPreferencesInput, context: context)
        type = Types::GetEffectiveRecommendationPreferencesInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module GetEffectiveRecommendationPreferencesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEffectiveRecommendationPreferencesOutput, context: context)
        type = Types::GetEffectiveRecommendationPreferencesOutput.new
        type.enhanced_infrastructure_metrics = params[:enhanced_infrastructure_metrics]
        type
      end
    end

    module GetEnrollmentStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEnrollmentStatusInput, context: context)
        type = Types::GetEnrollmentStatusInput.new
        type
      end
    end

    module GetEnrollmentStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEnrollmentStatusOutput, context: context)
        type = Types::GetEnrollmentStatusOutput.new
        type.status = params[:status]
        type.status_reason = params[:status_reason]
        type.member_accounts_enrolled = params[:member_accounts_enrolled]
        type.last_updated_timestamp = params[:last_updated_timestamp]
        type.number_of_member_accounts_opted_in = params[:number_of_member_accounts_opted_in]
        type
      end
    end

    module GetEnrollmentStatusesForOrganizationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEnrollmentStatusesForOrganizationInput, context: context)
        type = Types::GetEnrollmentStatusesForOrganizationInput.new
        type.filters = EnrollmentFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module GetEnrollmentStatusesForOrganizationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEnrollmentStatusesForOrganizationOutput, context: context)
        type = Types::GetEnrollmentStatusesForOrganizationOutput.new
        type.account_enrollment_statuses = AccountEnrollmentStatuses.build(params[:account_enrollment_statuses], context: "#{context}[:account_enrollment_statuses]") unless params[:account_enrollment_statuses].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetLambdaFunctionRecommendationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLambdaFunctionRecommendationsInput, context: context)
        type = Types::GetLambdaFunctionRecommendationsInput.new
        type.function_arns = FunctionArns.build(params[:function_arns], context: "#{context}[:function_arns]") unless params[:function_arns].nil?
        type.account_ids = AccountIds.build(params[:account_ids], context: "#{context}[:account_ids]") unless params[:account_ids].nil?
        type.filters = LambdaFunctionRecommendationFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module GetLambdaFunctionRecommendationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLambdaFunctionRecommendationsOutput, context: context)
        type = Types::GetLambdaFunctionRecommendationsOutput.new
        type.next_token = params[:next_token]
        type.lambda_function_recommendations = LambdaFunctionRecommendations.build(params[:lambda_function_recommendations], context: "#{context}[:lambda_function_recommendations]") unless params[:lambda_function_recommendations].nil?
        type
      end
    end

    module GetRecommendationError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRecommendationError, context: context)
        type = Types::GetRecommendationError.new
        type.identifier = params[:identifier]
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module GetRecommendationErrors
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GetRecommendationError.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GetRecommendationPreferencesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRecommendationPreferencesInput, context: context)
        type = Types::GetRecommendationPreferencesInput.new
        type.resource_type = params[:resource_type]
        type.scope = Scope.build(params[:scope], context: "#{context}[:scope]") unless params[:scope].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module GetRecommendationPreferencesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRecommendationPreferencesOutput, context: context)
        type = Types::GetRecommendationPreferencesOutput.new
        type.next_token = params[:next_token]
        type.recommendation_preferences_details = RecommendationPreferencesDetails.build(params[:recommendation_preferences_details], context: "#{context}[:recommendation_preferences_details]") unless params[:recommendation_preferences_details].nil?
        type
      end
    end

    module GetRecommendationSummariesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRecommendationSummariesInput, context: context)
        type = Types::GetRecommendationSummariesInput.new
        type.account_ids = AccountIds.build(params[:account_ids], context: "#{context}[:account_ids]") unless params[:account_ids].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module GetRecommendationSummariesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRecommendationSummariesOutput, context: context)
        type = Types::GetRecommendationSummariesOutput.new
        type.next_token = params[:next_token]
        type.recommendation_summaries = RecommendationSummaries.build(params[:recommendation_summaries], context: "#{context}[:recommendation_summaries]") unless params[:recommendation_summaries].nil?
        type
      end
    end

    module InferredWorkloadTypes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module InstanceArns
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module InstanceRecommendation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceRecommendation, context: context)
        type = Types::InstanceRecommendation.new
        type.instance_arn = params[:instance_arn]
        type.account_id = params[:account_id]
        type.instance_name = params[:instance_name]
        type.current_instance_type = params[:current_instance_type]
        type.finding = params[:finding]
        type.finding_reason_codes = InstanceRecommendationFindingReasonCodes.build(params[:finding_reason_codes], context: "#{context}[:finding_reason_codes]") unless params[:finding_reason_codes].nil?
        type.utilization_metrics = UtilizationMetrics.build(params[:utilization_metrics], context: "#{context}[:utilization_metrics]") unless params[:utilization_metrics].nil?
        type.look_back_period_in_days = params[:look_back_period_in_days]
        type.recommendation_options = RecommendationOptions.build(params[:recommendation_options], context: "#{context}[:recommendation_options]") unless params[:recommendation_options].nil?
        type.recommendation_sources = RecommendationSources.build(params[:recommendation_sources], context: "#{context}[:recommendation_sources]") unless params[:recommendation_sources].nil?
        type.last_refresh_timestamp = params[:last_refresh_timestamp]
        type.current_performance_risk = params[:current_performance_risk]
        type.effective_recommendation_preferences = EffectiveRecommendationPreferences.build(params[:effective_recommendation_preferences], context: "#{context}[:effective_recommendation_preferences]") unless params[:effective_recommendation_preferences].nil?
        type.inferred_workload_types = InferredWorkloadTypes.build(params[:inferred_workload_types], context: "#{context}[:inferred_workload_types]") unless params[:inferred_workload_types].nil?
        type
      end
    end

    module InstanceRecommendationFindingReasonCodes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module InstanceRecommendationOption
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceRecommendationOption, context: context)
        type = Types::InstanceRecommendationOption.new
        type.instance_type = params[:instance_type]
        type.projected_utilization_metrics = ProjectedUtilizationMetrics.build(params[:projected_utilization_metrics], context: "#{context}[:projected_utilization_metrics]") unless params[:projected_utilization_metrics].nil?
        type.platform_differences = PlatformDifferences.build(params[:platform_differences], context: "#{context}[:platform_differences]") unless params[:platform_differences].nil?
        type.performance_risk = params[:performance_risk]
        type.rank = params[:rank]
        type.savings_opportunity = SavingsOpportunity.build(params[:savings_opportunity], context: "#{context}[:savings_opportunity]") unless params[:savings_opportunity].nil?
        type.migration_effort = params[:migration_effort]
        type
      end
    end

    module InstanceRecommendations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InstanceRecommendation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InternalServerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerException, context: context)
        type = Types::InternalServerException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidParameterValueException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidParameterValueException, context: context)
        type = Types::InvalidParameterValueException.new
        type.message = params[:message]
        type
      end
    end

    module JobFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobFilter, context: context)
        type = Types::JobFilter.new
        type.name = params[:name]
        type.values = FilterValues.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module JobFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << JobFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module JobIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module LambdaFunctionMemoryProjectedMetric
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LambdaFunctionMemoryProjectedMetric, context: context)
        type = Types::LambdaFunctionMemoryProjectedMetric.new
        type.name = params[:name]
        type.statistic = params[:statistic]
        type.value = params[:value]
        type
      end
    end

    module LambdaFunctionMemoryProjectedMetrics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LambdaFunctionMemoryProjectedMetric.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LambdaFunctionMemoryRecommendationOption
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LambdaFunctionMemoryRecommendationOption, context: context)
        type = Types::LambdaFunctionMemoryRecommendationOption.new
        type.rank = params[:rank]
        type.memory_size = params[:memory_size]
        type.projected_utilization_metrics = LambdaFunctionMemoryProjectedMetrics.build(params[:projected_utilization_metrics], context: "#{context}[:projected_utilization_metrics]") unless params[:projected_utilization_metrics].nil?
        type.savings_opportunity = SavingsOpportunity.build(params[:savings_opportunity], context: "#{context}[:savings_opportunity]") unless params[:savings_opportunity].nil?
        type
      end
    end

    module LambdaFunctionMemoryRecommendationOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LambdaFunctionMemoryRecommendationOption.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LambdaFunctionRecommendation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LambdaFunctionRecommendation, context: context)
        type = Types::LambdaFunctionRecommendation.new
        type.function_arn = params[:function_arn]
        type.function_version = params[:function_version]
        type.account_id = params[:account_id]
        type.current_memory_size = params[:current_memory_size]
        type.number_of_invocations = params[:number_of_invocations]
        type.utilization_metrics = LambdaFunctionUtilizationMetrics.build(params[:utilization_metrics], context: "#{context}[:utilization_metrics]") unless params[:utilization_metrics].nil?
        type.lookback_period_in_days = params[:lookback_period_in_days]
        type.last_refresh_timestamp = params[:last_refresh_timestamp]
        type.finding = params[:finding]
        type.finding_reason_codes = LambdaFunctionRecommendationFindingReasonCodes.build(params[:finding_reason_codes], context: "#{context}[:finding_reason_codes]") unless params[:finding_reason_codes].nil?
        type.memory_size_recommendation_options = LambdaFunctionMemoryRecommendationOptions.build(params[:memory_size_recommendation_options], context: "#{context}[:memory_size_recommendation_options]") unless params[:memory_size_recommendation_options].nil?
        type.current_performance_risk = params[:current_performance_risk]
        type
      end
    end

    module LambdaFunctionRecommendationFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LambdaFunctionRecommendationFilter, context: context)
        type = Types::LambdaFunctionRecommendationFilter.new
        type.name = params[:name]
        type.values = FilterValues.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module LambdaFunctionRecommendationFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LambdaFunctionRecommendationFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LambdaFunctionRecommendationFindingReasonCodes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module LambdaFunctionRecommendations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LambdaFunctionRecommendation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LambdaFunctionUtilizationMetric
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LambdaFunctionUtilizationMetric, context: context)
        type = Types::LambdaFunctionUtilizationMetric.new
        type.name = params[:name]
        type.statistic = params[:statistic]
        type.value = params[:value]
        type
      end
    end

    module LambdaFunctionUtilizationMetrics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LambdaFunctionUtilizationMetric.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LimitExceededException, context: context)
        type = Types::LimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module MetricValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module MissingAuthenticationToken
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MissingAuthenticationToken, context: context)
        type = Types::MissingAuthenticationToken.new
        type.message = params[:message]
        type
      end
    end

    module OptInRequiredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OptInRequiredException, context: context)
        type = Types::OptInRequiredException.new
        type.message = params[:message]
        type
      end
    end

    module PlatformDifferences
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ProjectedMetric
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProjectedMetric, context: context)
        type = Types::ProjectedMetric.new
        type.name = params[:name]
        type.timestamps = Timestamps.build(params[:timestamps], context: "#{context}[:timestamps]") unless params[:timestamps].nil?
        type.values = MetricValues.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module ProjectedMetrics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ProjectedMetric.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ProjectedUtilizationMetrics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UtilizationMetric.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PutRecommendationPreferencesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutRecommendationPreferencesInput, context: context)
        type = Types::PutRecommendationPreferencesInput.new
        type.resource_type = params[:resource_type]
        type.scope = Scope.build(params[:scope], context: "#{context}[:scope]") unless params[:scope].nil?
        type.enhanced_infrastructure_metrics = params[:enhanced_infrastructure_metrics]
        type.inferred_workload_types = params[:inferred_workload_types]
        type
      end
    end

    module PutRecommendationPreferencesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutRecommendationPreferencesOutput, context: context)
        type = Types::PutRecommendationPreferencesOutput.new
        type
      end
    end

    module ReasonCodeSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReasonCodeSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ReasonCodeSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReasonCodeSummary, context: context)
        type = Types::ReasonCodeSummary.new
        type.name = params[:name]
        type.value = params[:value]
        type
      end
    end

    module RecommendationExportJob
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecommendationExportJob, context: context)
        type = Types::RecommendationExportJob.new
        type.job_id = params[:job_id]
        type.destination = ExportDestination.build(params[:destination], context: "#{context}[:destination]") unless params[:destination].nil?
        type.resource_type = params[:resource_type]
        type.status = params[:status]
        type.creation_timestamp = params[:creation_timestamp]
        type.last_updated_timestamp = params[:last_updated_timestamp]
        type.failure_reason = params[:failure_reason]
        type
      end
    end

    module RecommendationExportJobs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RecommendationExportJob.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RecommendationOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InstanceRecommendationOption.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RecommendationPreferenceNames
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module RecommendationPreferences
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecommendationPreferences, context: context)
        type = Types::RecommendationPreferences.new
        type.cpu_vendor_architectures = CpuVendorArchitectures.build(params[:cpu_vendor_architectures], context: "#{context}[:cpu_vendor_architectures]") unless params[:cpu_vendor_architectures].nil?
        type
      end
    end

    module RecommendationPreferencesDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecommendationPreferencesDetail, context: context)
        type = Types::RecommendationPreferencesDetail.new
        type.scope = Scope.build(params[:scope], context: "#{context}[:scope]") unless params[:scope].nil?
        type.resource_type = params[:resource_type]
        type.enhanced_infrastructure_metrics = params[:enhanced_infrastructure_metrics]
        type.inferred_workload_types = params[:inferred_workload_types]
        type
      end
    end

    module RecommendationPreferencesDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RecommendationPreferencesDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RecommendationSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecommendationSource, context: context)
        type = Types::RecommendationSource.new
        type.recommendation_source_arn = params[:recommendation_source_arn]
        type.recommendation_source_type = params[:recommendation_source_type]
        type
      end
    end

    module RecommendationSources
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RecommendationSource.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RecommendationSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RecommendationSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RecommendationSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecommendationSummary, context: context)
        type = Types::RecommendationSummary.new
        type.summaries = Summaries.build(params[:summaries], context: "#{context}[:summaries]") unless params[:summaries].nil?
        type.recommendation_resource_type = params[:recommendation_resource_type]
        type.account_id = params[:account_id]
        type.savings_opportunity = SavingsOpportunity.build(params[:savings_opportunity], context: "#{context}[:savings_opportunity]") unless params[:savings_opportunity].nil?
        type.current_performance_risk_ratings = CurrentPerformanceRiskRatings.build(params[:current_performance_risk_ratings], context: "#{context}[:current_performance_risk_ratings]") unless params[:current_performance_risk_ratings].nil?
        type
      end
    end

    module RecommendedOptionProjectedMetric
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecommendedOptionProjectedMetric, context: context)
        type = Types::RecommendedOptionProjectedMetric.new
        type.recommended_instance_type = params[:recommended_instance_type]
        type.rank = params[:rank]
        type.projected_metrics = ProjectedMetrics.build(params[:projected_metrics], context: "#{context}[:projected_metrics]") unless params[:projected_metrics].nil?
        type
      end
    end

    module RecommendedOptionProjectedMetrics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RecommendedOptionProjectedMetric.build(element, context: "#{context}[#{index}]") unless element.nil?
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

    module S3Destination
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3Destination, context: context)
        type = Types::S3Destination.new
        type.bucket = params[:bucket]
        type.key = params[:key]
        type.metadata_key = params[:metadata_key]
        type
      end
    end

    module S3DestinationConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3DestinationConfig, context: context)
        type = Types::S3DestinationConfig.new
        type.bucket = params[:bucket]
        type.key_prefix = params[:key_prefix]
        type
      end
    end

    module SavingsOpportunity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SavingsOpportunity, context: context)
        type = Types::SavingsOpportunity.new
        type.savings_opportunity_percentage = params[:savings_opportunity_percentage]
        type.estimated_monthly_savings = EstimatedMonthlySavings.build(params[:estimated_monthly_savings], context: "#{context}[:estimated_monthly_savings]") unless params[:estimated_monthly_savings].nil?
        type
      end
    end

    module Scope
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Scope, context: context)
        type = Types::Scope.new
        type.name = params[:name]
        type.value = params[:value]
        type
      end
    end

    module ServiceUnavailableException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceUnavailableException, context: context)
        type = Types::ServiceUnavailableException.new
        type.message = params[:message]
        type
      end
    end

    module Summaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Summary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Summary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Summary, context: context)
        type = Types::Summary.new
        type.name = params[:name]
        type.value = params[:value]
        type.reason_code_summaries = ReasonCodeSummaries.build(params[:reason_code_summaries], context: "#{context}[:reason_code_summaries]") unless params[:reason_code_summaries].nil?
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

    module Timestamps
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module UpdateEnrollmentStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateEnrollmentStatusInput, context: context)
        type = Types::UpdateEnrollmentStatusInput.new
        type.status = params[:status]
        type.include_member_accounts = params[:include_member_accounts]
        type
      end
    end

    module UpdateEnrollmentStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateEnrollmentStatusOutput, context: context)
        type = Types::UpdateEnrollmentStatusOutput.new
        type.status = params[:status]
        type.status_reason = params[:status_reason]
        type
      end
    end

    module UtilizationMetric
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UtilizationMetric, context: context)
        type = Types::UtilizationMetric.new
        type.name = params[:name]
        type.statistic = params[:statistic]
        type.value = params[:value]
        type
      end
    end

    module UtilizationMetrics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UtilizationMetric.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module VolumeArns
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module VolumeConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VolumeConfiguration, context: context)
        type = Types::VolumeConfiguration.new
        type.volume_type = params[:volume_type]
        type.volume_size = params[:volume_size]
        type.volume_baseline_iops = params[:volume_baseline_iops]
        type.volume_burst_iops = params[:volume_burst_iops]
        type.volume_baseline_throughput = params[:volume_baseline_throughput]
        type.volume_burst_throughput = params[:volume_burst_throughput]
        type
      end
    end

    module VolumeRecommendation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VolumeRecommendation, context: context)
        type = Types::VolumeRecommendation.new
        type.volume_arn = params[:volume_arn]
        type.account_id = params[:account_id]
        type.current_configuration = VolumeConfiguration.build(params[:current_configuration], context: "#{context}[:current_configuration]") unless params[:current_configuration].nil?
        type.finding = params[:finding]
        type.utilization_metrics = EBSUtilizationMetrics.build(params[:utilization_metrics], context: "#{context}[:utilization_metrics]") unless params[:utilization_metrics].nil?
        type.look_back_period_in_days = params[:look_back_period_in_days]
        type.volume_recommendation_options = VolumeRecommendationOptions.build(params[:volume_recommendation_options], context: "#{context}[:volume_recommendation_options]") unless params[:volume_recommendation_options].nil?
        type.last_refresh_timestamp = params[:last_refresh_timestamp]
        type.current_performance_risk = params[:current_performance_risk]
        type
      end
    end

    module VolumeRecommendationOption
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VolumeRecommendationOption, context: context)
        type = Types::VolumeRecommendationOption.new
        type.configuration = VolumeConfiguration.build(params[:configuration], context: "#{context}[:configuration]") unless params[:configuration].nil?
        type.performance_risk = params[:performance_risk]
        type.rank = params[:rank]
        type.savings_opportunity = SavingsOpportunity.build(params[:savings_opportunity], context: "#{context}[:savings_opportunity]") unless params[:savings_opportunity].nil?
        type
      end
    end

    module VolumeRecommendationOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << VolumeRecommendationOption.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module VolumeRecommendations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << VolumeRecommendation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

  end
end
