# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::ComputeOptimizer
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AccountEnrollmentStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccountEnrollmentStatus, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_reason], ::String, context: "#{context}[:status_reason]")
        Hearth::Validator.validate!(input[:last_updated_timestamp], ::Time, context: "#{context}[:last_updated_timestamp]")
      end
    end

    class AccountEnrollmentStatuses
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AccountEnrollmentStatus.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AccountIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AutoScalingGroupArns
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AutoScalingGroupConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutoScalingGroupConfiguration, context: context)
        Hearth::Validator.validate!(input[:desired_capacity], ::Integer, context: "#{context}[:desired_capacity]")
        Hearth::Validator.validate!(input[:min_size], ::Integer, context: "#{context}[:min_size]")
        Hearth::Validator.validate!(input[:max_size], ::Integer, context: "#{context}[:max_size]")
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
      end
    end

    class AutoScalingGroupRecommendation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutoScalingGroupRecommendation, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:auto_scaling_group_arn], ::String, context: "#{context}[:auto_scaling_group_arn]")
        Hearth::Validator.validate!(input[:auto_scaling_group_name], ::String, context: "#{context}[:auto_scaling_group_name]")
        Hearth::Validator.validate!(input[:finding], ::String, context: "#{context}[:finding]")
        UtilizationMetrics.validate!(input[:utilization_metrics], context: "#{context}[:utilization_metrics]") unless input[:utilization_metrics].nil?
        Hearth::Validator.validate!(input[:look_back_period_in_days], ::Float, context: "#{context}[:look_back_period_in_days]")
        AutoScalingGroupConfiguration.validate!(input[:current_configuration], context: "#{context}[:current_configuration]") unless input[:current_configuration].nil?
        AutoScalingGroupRecommendationOptions.validate!(input[:recommendation_options], context: "#{context}[:recommendation_options]") unless input[:recommendation_options].nil?
        Hearth::Validator.validate!(input[:last_refresh_timestamp], ::Time, context: "#{context}[:last_refresh_timestamp]")
        Hearth::Validator.validate!(input[:current_performance_risk], ::String, context: "#{context}[:current_performance_risk]")
        EffectiveRecommendationPreferences.validate!(input[:effective_recommendation_preferences], context: "#{context}[:effective_recommendation_preferences]") unless input[:effective_recommendation_preferences].nil?
        InferredWorkloadTypes.validate!(input[:inferred_workload_types], context: "#{context}[:inferred_workload_types]") unless input[:inferred_workload_types].nil?
      end
    end

    class AutoScalingGroupRecommendationOption
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutoScalingGroupRecommendationOption, context: context)
        AutoScalingGroupConfiguration.validate!(input[:configuration], context: "#{context}[:configuration]") unless input[:configuration].nil?
        ProjectedUtilizationMetrics.validate!(input[:projected_utilization_metrics], context: "#{context}[:projected_utilization_metrics]") unless input[:projected_utilization_metrics].nil?
        Hearth::Validator.validate!(input[:performance_risk], ::Float, context: "#{context}[:performance_risk]")
        Hearth::Validator.validate!(input[:rank], ::Integer, context: "#{context}[:rank]")
        SavingsOpportunity.validate!(input[:savings_opportunity], context: "#{context}[:savings_opportunity]") unless input[:savings_opportunity].nil?
        Hearth::Validator.validate!(input[:migration_effort], ::String, context: "#{context}[:migration_effort]")
      end
    end

    class AutoScalingGroupRecommendationOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AutoScalingGroupRecommendationOption.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AutoScalingGroupRecommendations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AutoScalingGroupRecommendation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CpuVendorArchitectures
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CurrentPerformanceRiskRatings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CurrentPerformanceRiskRatings, context: context)
        Hearth::Validator.validate!(input[:high], ::Integer, context: "#{context}[:high]")
        Hearth::Validator.validate!(input[:medium], ::Integer, context: "#{context}[:medium]")
        Hearth::Validator.validate!(input[:low], ::Integer, context: "#{context}[:low]")
        Hearth::Validator.validate!(input[:very_low], ::Integer, context: "#{context}[:very_low]")
      end
    end

    class DeleteRecommendationPreferencesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRecommendationPreferencesInput, context: context)
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Scope.validate!(input[:scope], context: "#{context}[:scope]") unless input[:scope].nil?
        RecommendationPreferenceNames.validate!(input[:recommendation_preference_names], context: "#{context}[:recommendation_preference_names]") unless input[:recommendation_preference_names].nil?
      end
    end

    class DeleteRecommendationPreferencesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRecommendationPreferencesOutput, context: context)
      end
    end

    class DescribeRecommendationExportJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRecommendationExportJobsInput, context: context)
        JobIds.validate!(input[:job_ids], context: "#{context}[:job_ids]") unless input[:job_ids].nil?
        JobFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeRecommendationExportJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRecommendationExportJobsOutput, context: context)
        RecommendationExportJobs.validate!(input[:recommendation_export_jobs], context: "#{context}[:recommendation_export_jobs]") unless input[:recommendation_export_jobs].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class EBSFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EBSFilter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        FilterValues.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class EBSFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EBSFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EBSUtilizationMetric
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EBSUtilizationMetric, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:statistic], ::String, context: "#{context}[:statistic]")
        Hearth::Validator.validate!(input[:value], ::Float, context: "#{context}[:value]")
      end
    end

    class EBSUtilizationMetrics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EBSUtilizationMetric.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EffectiveRecommendationPreferences
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EffectiveRecommendationPreferences, context: context)
        CpuVendorArchitectures.validate!(input[:cpu_vendor_architectures], context: "#{context}[:cpu_vendor_architectures]") unless input[:cpu_vendor_architectures].nil?
        Hearth::Validator.validate!(input[:enhanced_infrastructure_metrics], ::String, context: "#{context}[:enhanced_infrastructure_metrics]")
        Hearth::Validator.validate!(input[:inferred_workload_types], ::String, context: "#{context}[:inferred_workload_types]")
      end
    end

    class EnrollmentFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnrollmentFilter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        FilterValues.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class EnrollmentFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EnrollmentFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EstimatedMonthlySavings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EstimatedMonthlySavings, context: context)
        Hearth::Validator.validate!(input[:currency], ::String, context: "#{context}[:currency]")
        Hearth::Validator.validate!(input[:value], ::Float, context: "#{context}[:value]")
      end
    end

    class ExportAutoScalingGroupRecommendationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportAutoScalingGroupRecommendationsInput, context: context)
        AccountIds.validate!(input[:account_ids], context: "#{context}[:account_ids]") unless input[:account_ids].nil?
        Filters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        ExportableAutoScalingGroupFields.validate!(input[:fields_to_export], context: "#{context}[:fields_to_export]") unless input[:fields_to_export].nil?
        S3DestinationConfig.validate!(input[:s3_destination_config], context: "#{context}[:s3_destination_config]") unless input[:s3_destination_config].nil?
        Hearth::Validator.validate!(input[:file_format], ::String, context: "#{context}[:file_format]")
        Hearth::Validator.validate!(input[:include_member_accounts], ::TrueClass, ::FalseClass, context: "#{context}[:include_member_accounts]")
        RecommendationPreferences.validate!(input[:recommendation_preferences], context: "#{context}[:recommendation_preferences]") unless input[:recommendation_preferences].nil?
      end
    end

    class ExportAutoScalingGroupRecommendationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportAutoScalingGroupRecommendationsOutput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        S3Destination.validate!(input[:s3_destination], context: "#{context}[:s3_destination]") unless input[:s3_destination].nil?
      end
    end

    class ExportDestination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportDestination, context: context)
        S3Destination.validate!(input[:s3], context: "#{context}[:s3]") unless input[:s3].nil?
      end
    end

    class ExportEBSVolumeRecommendationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportEBSVolumeRecommendationsInput, context: context)
        AccountIds.validate!(input[:account_ids], context: "#{context}[:account_ids]") unless input[:account_ids].nil?
        EBSFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        ExportableVolumeFields.validate!(input[:fields_to_export], context: "#{context}[:fields_to_export]") unless input[:fields_to_export].nil?
        S3DestinationConfig.validate!(input[:s3_destination_config], context: "#{context}[:s3_destination_config]") unless input[:s3_destination_config].nil?
        Hearth::Validator.validate!(input[:file_format], ::String, context: "#{context}[:file_format]")
        Hearth::Validator.validate!(input[:include_member_accounts], ::TrueClass, ::FalseClass, context: "#{context}[:include_member_accounts]")
      end
    end

    class ExportEBSVolumeRecommendationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportEBSVolumeRecommendationsOutput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        S3Destination.validate!(input[:s3_destination], context: "#{context}[:s3_destination]") unless input[:s3_destination].nil?
      end
    end

    class ExportEC2InstanceRecommendationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportEC2InstanceRecommendationsInput, context: context)
        AccountIds.validate!(input[:account_ids], context: "#{context}[:account_ids]") unless input[:account_ids].nil?
        Filters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        ExportableInstanceFields.validate!(input[:fields_to_export], context: "#{context}[:fields_to_export]") unless input[:fields_to_export].nil?
        S3DestinationConfig.validate!(input[:s3_destination_config], context: "#{context}[:s3_destination_config]") unless input[:s3_destination_config].nil?
        Hearth::Validator.validate!(input[:file_format], ::String, context: "#{context}[:file_format]")
        Hearth::Validator.validate!(input[:include_member_accounts], ::TrueClass, ::FalseClass, context: "#{context}[:include_member_accounts]")
        RecommendationPreferences.validate!(input[:recommendation_preferences], context: "#{context}[:recommendation_preferences]") unless input[:recommendation_preferences].nil?
      end
    end

    class ExportEC2InstanceRecommendationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportEC2InstanceRecommendationsOutput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        S3Destination.validate!(input[:s3_destination], context: "#{context}[:s3_destination]") unless input[:s3_destination].nil?
      end
    end

    class ExportLambdaFunctionRecommendationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportLambdaFunctionRecommendationsInput, context: context)
        AccountIds.validate!(input[:account_ids], context: "#{context}[:account_ids]") unless input[:account_ids].nil?
        LambdaFunctionRecommendationFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        ExportableLambdaFunctionFields.validate!(input[:fields_to_export], context: "#{context}[:fields_to_export]") unless input[:fields_to_export].nil?
        S3DestinationConfig.validate!(input[:s3_destination_config], context: "#{context}[:s3_destination_config]") unless input[:s3_destination_config].nil?
        Hearth::Validator.validate!(input[:file_format], ::String, context: "#{context}[:file_format]")
        Hearth::Validator.validate!(input[:include_member_accounts], ::TrueClass, ::FalseClass, context: "#{context}[:include_member_accounts]")
      end
    end

    class ExportLambdaFunctionRecommendationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportLambdaFunctionRecommendationsOutput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        S3Destination.validate!(input[:s3_destination], context: "#{context}[:s3_destination]") unless input[:s3_destination].nil?
      end
    end

    class ExportableAutoScalingGroupFields
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ExportableInstanceFields
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ExportableLambdaFunctionFields
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ExportableVolumeFields
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Filter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Filter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        FilterValues.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class FilterValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Filters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Filter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FunctionArns
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class GetAutoScalingGroupRecommendationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAutoScalingGroupRecommendationsInput, context: context)
        AccountIds.validate!(input[:account_ids], context: "#{context}[:account_ids]") unless input[:account_ids].nil?
        AutoScalingGroupArns.validate!(input[:auto_scaling_group_arns], context: "#{context}[:auto_scaling_group_arns]") unless input[:auto_scaling_group_arns].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Filters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        RecommendationPreferences.validate!(input[:recommendation_preferences], context: "#{context}[:recommendation_preferences]") unless input[:recommendation_preferences].nil?
      end
    end

    class GetAutoScalingGroupRecommendationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAutoScalingGroupRecommendationsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        AutoScalingGroupRecommendations.validate!(input[:auto_scaling_group_recommendations], context: "#{context}[:auto_scaling_group_recommendations]") unless input[:auto_scaling_group_recommendations].nil?
        GetRecommendationErrors.validate!(input[:errors], context: "#{context}[:errors]") unless input[:errors].nil?
      end
    end

    class GetEBSVolumeRecommendationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEBSVolumeRecommendationsInput, context: context)
        VolumeArns.validate!(input[:volume_arns], context: "#{context}[:volume_arns]") unless input[:volume_arns].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        EBSFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        AccountIds.validate!(input[:account_ids], context: "#{context}[:account_ids]") unless input[:account_ids].nil?
      end
    end

    class GetEBSVolumeRecommendationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEBSVolumeRecommendationsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        VolumeRecommendations.validate!(input[:volume_recommendations], context: "#{context}[:volume_recommendations]") unless input[:volume_recommendations].nil?
        GetRecommendationErrors.validate!(input[:errors], context: "#{context}[:errors]") unless input[:errors].nil?
      end
    end

    class GetEC2InstanceRecommendationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEC2InstanceRecommendationsInput, context: context)
        InstanceArns.validate!(input[:instance_arns], context: "#{context}[:instance_arns]") unless input[:instance_arns].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Filters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        AccountIds.validate!(input[:account_ids], context: "#{context}[:account_ids]") unless input[:account_ids].nil?
        RecommendationPreferences.validate!(input[:recommendation_preferences], context: "#{context}[:recommendation_preferences]") unless input[:recommendation_preferences].nil?
      end
    end

    class GetEC2InstanceRecommendationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEC2InstanceRecommendationsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        InstanceRecommendations.validate!(input[:instance_recommendations], context: "#{context}[:instance_recommendations]") unless input[:instance_recommendations].nil?
        GetRecommendationErrors.validate!(input[:errors], context: "#{context}[:errors]") unless input[:errors].nil?
      end
    end

    class GetEC2RecommendationProjectedMetricsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEC2RecommendationProjectedMetricsInput, context: context)
        Hearth::Validator.validate!(input[:instance_arn], ::String, context: "#{context}[:instance_arn]")
        Hearth::Validator.validate!(input[:stat], ::String, context: "#{context}[:stat]")
        Hearth::Validator.validate!(input[:period], ::Integer, context: "#{context}[:period]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        RecommendationPreferences.validate!(input[:recommendation_preferences], context: "#{context}[:recommendation_preferences]") unless input[:recommendation_preferences].nil?
      end
    end

    class GetEC2RecommendationProjectedMetricsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEC2RecommendationProjectedMetricsOutput, context: context)
        RecommendedOptionProjectedMetrics.validate!(input[:recommended_option_projected_metrics], context: "#{context}[:recommended_option_projected_metrics]") unless input[:recommended_option_projected_metrics].nil?
      end
    end

    class GetEffectiveRecommendationPreferencesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEffectiveRecommendationPreferencesInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class GetEffectiveRecommendationPreferencesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEffectiveRecommendationPreferencesOutput, context: context)
        Hearth::Validator.validate!(input[:enhanced_infrastructure_metrics], ::String, context: "#{context}[:enhanced_infrastructure_metrics]")
      end
    end

    class GetEnrollmentStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEnrollmentStatusInput, context: context)
      end
    end

    class GetEnrollmentStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEnrollmentStatusOutput, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_reason], ::String, context: "#{context}[:status_reason]")
        Hearth::Validator.validate!(input[:member_accounts_enrolled], ::TrueClass, ::FalseClass, context: "#{context}[:member_accounts_enrolled]")
        Hearth::Validator.validate!(input[:last_updated_timestamp], ::Time, context: "#{context}[:last_updated_timestamp]")
        Hearth::Validator.validate!(input[:number_of_member_accounts_opted_in], ::Integer, context: "#{context}[:number_of_member_accounts_opted_in]")
      end
    end

    class GetEnrollmentStatusesForOrganizationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEnrollmentStatusesForOrganizationInput, context: context)
        EnrollmentFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class GetEnrollmentStatusesForOrganizationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEnrollmentStatusesForOrganizationOutput, context: context)
        AccountEnrollmentStatuses.validate!(input[:account_enrollment_statuses], context: "#{context}[:account_enrollment_statuses]") unless input[:account_enrollment_statuses].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetLambdaFunctionRecommendationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLambdaFunctionRecommendationsInput, context: context)
        FunctionArns.validate!(input[:function_arns], context: "#{context}[:function_arns]") unless input[:function_arns].nil?
        AccountIds.validate!(input[:account_ids], context: "#{context}[:account_ids]") unless input[:account_ids].nil?
        LambdaFunctionRecommendationFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class GetLambdaFunctionRecommendationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLambdaFunctionRecommendationsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        LambdaFunctionRecommendations.validate!(input[:lambda_function_recommendations], context: "#{context}[:lambda_function_recommendations]") unless input[:lambda_function_recommendations].nil?
      end
    end

    class GetRecommendationError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRecommendationError, context: context)
        Hearth::Validator.validate!(input[:identifier], ::String, context: "#{context}[:identifier]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class GetRecommendationErrors
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          GetRecommendationError.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GetRecommendationPreferencesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRecommendationPreferencesInput, context: context)
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Scope.validate!(input[:scope], context: "#{context}[:scope]") unless input[:scope].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class GetRecommendationPreferencesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRecommendationPreferencesOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        RecommendationPreferencesDetails.validate!(input[:recommendation_preferences_details], context: "#{context}[:recommendation_preferences_details]") unless input[:recommendation_preferences_details].nil?
      end
    end

    class GetRecommendationSummariesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRecommendationSummariesInput, context: context)
        AccountIds.validate!(input[:account_ids], context: "#{context}[:account_ids]") unless input[:account_ids].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class GetRecommendationSummariesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRecommendationSummariesOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        RecommendationSummaries.validate!(input[:recommendation_summaries], context: "#{context}[:recommendation_summaries]") unless input[:recommendation_summaries].nil?
      end
    end

    class InferredWorkloadTypes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InstanceArns
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InstanceRecommendation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceRecommendation, context: context)
        Hearth::Validator.validate!(input[:instance_arn], ::String, context: "#{context}[:instance_arn]")
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:instance_name], ::String, context: "#{context}[:instance_name]")
        Hearth::Validator.validate!(input[:current_instance_type], ::String, context: "#{context}[:current_instance_type]")
        Hearth::Validator.validate!(input[:finding], ::String, context: "#{context}[:finding]")
        InstanceRecommendationFindingReasonCodes.validate!(input[:finding_reason_codes], context: "#{context}[:finding_reason_codes]") unless input[:finding_reason_codes].nil?
        UtilizationMetrics.validate!(input[:utilization_metrics], context: "#{context}[:utilization_metrics]") unless input[:utilization_metrics].nil?
        Hearth::Validator.validate!(input[:look_back_period_in_days], ::Float, context: "#{context}[:look_back_period_in_days]")
        RecommendationOptions.validate!(input[:recommendation_options], context: "#{context}[:recommendation_options]") unless input[:recommendation_options].nil?
        RecommendationSources.validate!(input[:recommendation_sources], context: "#{context}[:recommendation_sources]") unless input[:recommendation_sources].nil?
        Hearth::Validator.validate!(input[:last_refresh_timestamp], ::Time, context: "#{context}[:last_refresh_timestamp]")
        Hearth::Validator.validate!(input[:current_performance_risk], ::String, context: "#{context}[:current_performance_risk]")
        EffectiveRecommendationPreferences.validate!(input[:effective_recommendation_preferences], context: "#{context}[:effective_recommendation_preferences]") unless input[:effective_recommendation_preferences].nil?
        InferredWorkloadTypes.validate!(input[:inferred_workload_types], context: "#{context}[:inferred_workload_types]") unless input[:inferred_workload_types].nil?
      end
    end

    class InstanceRecommendationFindingReasonCodes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InstanceRecommendationOption
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceRecommendationOption, context: context)
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        ProjectedUtilizationMetrics.validate!(input[:projected_utilization_metrics], context: "#{context}[:projected_utilization_metrics]") unless input[:projected_utilization_metrics].nil?
        PlatformDifferences.validate!(input[:platform_differences], context: "#{context}[:platform_differences]") unless input[:platform_differences].nil?
        Hearth::Validator.validate!(input[:performance_risk], ::Float, context: "#{context}[:performance_risk]")
        Hearth::Validator.validate!(input[:rank], ::Integer, context: "#{context}[:rank]")
        SavingsOpportunity.validate!(input[:savings_opportunity], context: "#{context}[:savings_opportunity]") unless input[:savings_opportunity].nil?
        Hearth::Validator.validate!(input[:migration_effort], ::String, context: "#{context}[:migration_effort]")
      end
    end

    class InstanceRecommendations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InstanceRecommendation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidParameterValueException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidParameterValueException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class JobFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobFilter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        FilterValues.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class JobFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          JobFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class JobIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class LambdaFunctionMemoryProjectedMetric
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LambdaFunctionMemoryProjectedMetric, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:statistic], ::String, context: "#{context}[:statistic]")
        Hearth::Validator.validate!(input[:value], ::Float, context: "#{context}[:value]")
      end
    end

    class LambdaFunctionMemoryProjectedMetrics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          LambdaFunctionMemoryProjectedMetric.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LambdaFunctionMemoryRecommendationOption
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LambdaFunctionMemoryRecommendationOption, context: context)
        Hearth::Validator.validate!(input[:rank], ::Integer, context: "#{context}[:rank]")
        Hearth::Validator.validate!(input[:memory_size], ::Integer, context: "#{context}[:memory_size]")
        LambdaFunctionMemoryProjectedMetrics.validate!(input[:projected_utilization_metrics], context: "#{context}[:projected_utilization_metrics]") unless input[:projected_utilization_metrics].nil?
        SavingsOpportunity.validate!(input[:savings_opportunity], context: "#{context}[:savings_opportunity]") unless input[:savings_opportunity].nil?
      end
    end

    class LambdaFunctionMemoryRecommendationOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          LambdaFunctionMemoryRecommendationOption.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LambdaFunctionRecommendation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LambdaFunctionRecommendation, context: context)
        Hearth::Validator.validate!(input[:function_arn], ::String, context: "#{context}[:function_arn]")
        Hearth::Validator.validate!(input[:function_version], ::String, context: "#{context}[:function_version]")
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:current_memory_size], ::Integer, context: "#{context}[:current_memory_size]")
        Hearth::Validator.validate!(input[:number_of_invocations], ::Integer, context: "#{context}[:number_of_invocations]")
        LambdaFunctionUtilizationMetrics.validate!(input[:utilization_metrics], context: "#{context}[:utilization_metrics]") unless input[:utilization_metrics].nil?
        Hearth::Validator.validate!(input[:lookback_period_in_days], ::Float, context: "#{context}[:lookback_period_in_days]")
        Hearth::Validator.validate!(input[:last_refresh_timestamp], ::Time, context: "#{context}[:last_refresh_timestamp]")
        Hearth::Validator.validate!(input[:finding], ::String, context: "#{context}[:finding]")
        LambdaFunctionRecommendationFindingReasonCodes.validate!(input[:finding_reason_codes], context: "#{context}[:finding_reason_codes]") unless input[:finding_reason_codes].nil?
        LambdaFunctionMemoryRecommendationOptions.validate!(input[:memory_size_recommendation_options], context: "#{context}[:memory_size_recommendation_options]") unless input[:memory_size_recommendation_options].nil?
        Hearth::Validator.validate!(input[:current_performance_risk], ::String, context: "#{context}[:current_performance_risk]")
      end
    end

    class LambdaFunctionRecommendationFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LambdaFunctionRecommendationFilter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        FilterValues.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class LambdaFunctionRecommendationFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          LambdaFunctionRecommendationFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LambdaFunctionRecommendationFindingReasonCodes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class LambdaFunctionRecommendations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          LambdaFunctionRecommendation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LambdaFunctionUtilizationMetric
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LambdaFunctionUtilizationMetric, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:statistic], ::String, context: "#{context}[:statistic]")
        Hearth::Validator.validate!(input[:value], ::Float, context: "#{context}[:value]")
      end
    end

    class LambdaFunctionUtilizationMetrics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          LambdaFunctionUtilizationMetric.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class MetricValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::Float, context: "#{context}[#{index}]")
        end
      end
    end

    class MissingAuthenticationToken
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MissingAuthenticationToken, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class OptInRequiredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OptInRequiredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PlatformDifferences
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ProjectedMetric
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProjectedMetric, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Timestamps.validate!(input[:timestamps], context: "#{context}[:timestamps]") unless input[:timestamps].nil?
        MetricValues.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class ProjectedMetrics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ProjectedMetric.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ProjectedUtilizationMetrics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          UtilizationMetric.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PutRecommendationPreferencesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutRecommendationPreferencesInput, context: context)
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Scope.validate!(input[:scope], context: "#{context}[:scope]") unless input[:scope].nil?
        Hearth::Validator.validate!(input[:enhanced_infrastructure_metrics], ::String, context: "#{context}[:enhanced_infrastructure_metrics]")
        Hearth::Validator.validate!(input[:inferred_workload_types], ::String, context: "#{context}[:inferred_workload_types]")
      end
    end

    class PutRecommendationPreferencesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutRecommendationPreferencesOutput, context: context)
      end
    end

    class ReasonCodeSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ReasonCodeSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReasonCodeSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReasonCodeSummary, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::Float, context: "#{context}[:value]")
      end
    end

    class RecommendationExportJob
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecommendationExportJob, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        ExportDestination.validate!(input[:destination], context: "#{context}[:destination]") unless input[:destination].nil?
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:creation_timestamp], ::Time, context: "#{context}[:creation_timestamp]")
        Hearth::Validator.validate!(input[:last_updated_timestamp], ::Time, context: "#{context}[:last_updated_timestamp]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
      end
    end

    class RecommendationExportJobs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RecommendationExportJob.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RecommendationOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InstanceRecommendationOption.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RecommendationPreferenceNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class RecommendationPreferences
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecommendationPreferences, context: context)
        CpuVendorArchitectures.validate!(input[:cpu_vendor_architectures], context: "#{context}[:cpu_vendor_architectures]") unless input[:cpu_vendor_architectures].nil?
      end
    end

    class RecommendationPreferencesDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecommendationPreferencesDetail, context: context)
        Scope.validate!(input[:scope], context: "#{context}[:scope]") unless input[:scope].nil?
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:enhanced_infrastructure_metrics], ::String, context: "#{context}[:enhanced_infrastructure_metrics]")
        Hearth::Validator.validate!(input[:inferred_workload_types], ::String, context: "#{context}[:inferred_workload_types]")
      end
    end

    class RecommendationPreferencesDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RecommendationPreferencesDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RecommendationSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecommendationSource, context: context)
        Hearth::Validator.validate!(input[:recommendation_source_arn], ::String, context: "#{context}[:recommendation_source_arn]")
        Hearth::Validator.validate!(input[:recommendation_source_type], ::String, context: "#{context}[:recommendation_source_type]")
      end
    end

    class RecommendationSources
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RecommendationSource.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RecommendationSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RecommendationSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RecommendationSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecommendationSummary, context: context)
        Summaries.validate!(input[:summaries], context: "#{context}[:summaries]") unless input[:summaries].nil?
        Hearth::Validator.validate!(input[:recommendation_resource_type], ::String, context: "#{context}[:recommendation_resource_type]")
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        SavingsOpportunity.validate!(input[:savings_opportunity], context: "#{context}[:savings_opportunity]") unless input[:savings_opportunity].nil?
        CurrentPerformanceRiskRatings.validate!(input[:current_performance_risk_ratings], context: "#{context}[:current_performance_risk_ratings]") unless input[:current_performance_risk_ratings].nil?
      end
    end

    class RecommendedOptionProjectedMetric
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecommendedOptionProjectedMetric, context: context)
        Hearth::Validator.validate!(input[:recommended_instance_type], ::String, context: "#{context}[:recommended_instance_type]")
        Hearth::Validator.validate!(input[:rank], ::Integer, context: "#{context}[:rank]")
        ProjectedMetrics.validate!(input[:projected_metrics], context: "#{context}[:projected_metrics]") unless input[:projected_metrics].nil?
      end
    end

    class RecommendedOptionProjectedMetrics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RecommendedOptionProjectedMetric.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class S3Destination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3Destination, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:metadata_key], ::String, context: "#{context}[:metadata_key]")
      end
    end

    class S3DestinationConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3DestinationConfig, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:key_prefix], ::String, context: "#{context}[:key_prefix]")
      end
    end

    class SavingsOpportunity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SavingsOpportunity, context: context)
        Hearth::Validator.validate!(input[:savings_opportunity_percentage], ::Float, context: "#{context}[:savings_opportunity_percentage]")
        EstimatedMonthlySavings.validate!(input[:estimated_monthly_savings], context: "#{context}[:estimated_monthly_savings]") unless input[:estimated_monthly_savings].nil?
      end
    end

    class Scope
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Scope, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class ServiceUnavailableException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceUnavailableException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Summaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Summary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Summary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Summary, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::Float, context: "#{context}[:value]")
        ReasonCodeSummaries.validate!(input[:reason_code_summaries], context: "#{context}[:reason_code_summaries]") unless input[:reason_code_summaries].nil?
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Timestamps
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::Time, context: "#{context}[#{index}]")
        end
      end
    end

    class UpdateEnrollmentStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateEnrollmentStatusInput, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:include_member_accounts], ::TrueClass, ::FalseClass, context: "#{context}[:include_member_accounts]")
      end
    end

    class UpdateEnrollmentStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateEnrollmentStatusOutput, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_reason], ::String, context: "#{context}[:status_reason]")
      end
    end

    class UtilizationMetric
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UtilizationMetric, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:statistic], ::String, context: "#{context}[:statistic]")
        Hearth::Validator.validate!(input[:value], ::Float, context: "#{context}[:value]")
      end
    end

    class UtilizationMetrics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          UtilizationMetric.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class VolumeArns
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class VolumeConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VolumeConfiguration, context: context)
        Hearth::Validator.validate!(input[:volume_type], ::String, context: "#{context}[:volume_type]")
        Hearth::Validator.validate!(input[:volume_size], ::Integer, context: "#{context}[:volume_size]")
        Hearth::Validator.validate!(input[:volume_baseline_iops], ::Integer, context: "#{context}[:volume_baseline_iops]")
        Hearth::Validator.validate!(input[:volume_burst_iops], ::Integer, context: "#{context}[:volume_burst_iops]")
        Hearth::Validator.validate!(input[:volume_baseline_throughput], ::Integer, context: "#{context}[:volume_baseline_throughput]")
        Hearth::Validator.validate!(input[:volume_burst_throughput], ::Integer, context: "#{context}[:volume_burst_throughput]")
      end
    end

    class VolumeRecommendation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VolumeRecommendation, context: context)
        Hearth::Validator.validate!(input[:volume_arn], ::String, context: "#{context}[:volume_arn]")
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        VolumeConfiguration.validate!(input[:current_configuration], context: "#{context}[:current_configuration]") unless input[:current_configuration].nil?
        Hearth::Validator.validate!(input[:finding], ::String, context: "#{context}[:finding]")
        EBSUtilizationMetrics.validate!(input[:utilization_metrics], context: "#{context}[:utilization_metrics]") unless input[:utilization_metrics].nil?
        Hearth::Validator.validate!(input[:look_back_period_in_days], ::Float, context: "#{context}[:look_back_period_in_days]")
        VolumeRecommendationOptions.validate!(input[:volume_recommendation_options], context: "#{context}[:volume_recommendation_options]") unless input[:volume_recommendation_options].nil?
        Hearth::Validator.validate!(input[:last_refresh_timestamp], ::Time, context: "#{context}[:last_refresh_timestamp]")
        Hearth::Validator.validate!(input[:current_performance_risk], ::String, context: "#{context}[:current_performance_risk]")
      end
    end

    class VolumeRecommendationOption
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VolumeRecommendationOption, context: context)
        VolumeConfiguration.validate!(input[:configuration], context: "#{context}[:configuration]") unless input[:configuration].nil?
        Hearth::Validator.validate!(input[:performance_risk], ::Float, context: "#{context}[:performance_risk]")
        Hearth::Validator.validate!(input[:rank], ::Integer, context: "#{context}[:rank]")
        SavingsOpportunity.validate!(input[:savings_opportunity], context: "#{context}[:savings_opportunity]") unless input[:savings_opportunity].nil?
      end
    end

    class VolumeRecommendationOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          VolumeRecommendationOption.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class VolumeRecommendations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          VolumeRecommendation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

  end
end
