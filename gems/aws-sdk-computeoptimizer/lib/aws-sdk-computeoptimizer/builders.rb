# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::ComputeOptimizer
  module Builders

    # Operation Builder for DeleteRecommendationPreferences
    class DeleteRecommendationPreferences
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'ComputeOptimizerService.DeleteRecommendationPreferences'
        data = {}
        data['resourceType'] = input[:resource_type] unless input[:resource_type].nil?
        data['scope'] = Builders::Scope.build(input[:scope]) unless input[:scope].nil?
        data['recommendationPreferenceNames'] = Builders::RecommendationPreferenceNames.build(input[:recommendation_preference_names]) unless input[:recommendation_preference_names].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for RecommendationPreferenceNames
    class RecommendationPreferenceNames
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Scope
    class Scope
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for DescribeRecommendationExportJobs
    class DescribeRecommendationExportJobs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'ComputeOptimizerService.DescribeRecommendationExportJobs'
        data = {}
        data['jobIds'] = Builders::JobIds.build(input[:job_ids]) unless input[:job_ids].nil?
        data['filters'] = Builders::JobFilters.build(input[:filters]) unless input[:filters].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for JobFilters
    class JobFilters
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::JobFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for JobFilter
    class JobFilter
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['values'] = Builders::FilterValues.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # List Builder for FilterValues
    class FilterValues
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for JobIds
    class JobIds
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ExportAutoScalingGroupRecommendations
    class ExportAutoScalingGroupRecommendations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'ComputeOptimizerService.ExportAutoScalingGroupRecommendations'
        data = {}
        data['accountIds'] = Builders::AccountIds.build(input[:account_ids]) unless input[:account_ids].nil?
        data['filters'] = Builders::Filters.build(input[:filters]) unless input[:filters].nil?
        data['fieldsToExport'] = Builders::ExportableAutoScalingGroupFields.build(input[:fields_to_export]) unless input[:fields_to_export].nil?
        data['s3DestinationConfig'] = Builders::S3DestinationConfig.build(input[:s3_destination_config]) unless input[:s3_destination_config].nil?
        data['fileFormat'] = input[:file_format] unless input[:file_format].nil?
        data['includeMemberAccounts'] = input[:include_member_accounts] unless input[:include_member_accounts].nil?
        data['recommendationPreferences'] = Builders::RecommendationPreferences.build(input[:recommendation_preferences]) unless input[:recommendation_preferences].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for RecommendationPreferences
    class RecommendationPreferences
      def self.build(input)
        data = {}
        data['cpuVendorArchitectures'] = Builders::CpuVendorArchitectures.build(input[:cpu_vendor_architectures]) unless input[:cpu_vendor_architectures].nil?
        data
      end
    end

    # List Builder for CpuVendorArchitectures
    class CpuVendorArchitectures
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for S3DestinationConfig
    class S3DestinationConfig
      def self.build(input)
        data = {}
        data['bucket'] = input[:bucket] unless input[:bucket].nil?
        data['keyPrefix'] = input[:key_prefix] unless input[:key_prefix].nil?
        data
      end
    end

    # List Builder for ExportableAutoScalingGroupFields
    class ExportableAutoScalingGroupFields
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for Filters
    class Filters
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Filter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Filter
    class Filter
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['values'] = Builders::FilterValues.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # List Builder for AccountIds
    class AccountIds
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ExportEBSVolumeRecommendations
    class ExportEBSVolumeRecommendations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'ComputeOptimizerService.ExportEBSVolumeRecommendations'
        data = {}
        data['accountIds'] = Builders::AccountIds.build(input[:account_ids]) unless input[:account_ids].nil?
        data['filters'] = Builders::EBSFilters.build(input[:filters]) unless input[:filters].nil?
        data['fieldsToExport'] = Builders::ExportableVolumeFields.build(input[:fields_to_export]) unless input[:fields_to_export].nil?
        data['s3DestinationConfig'] = Builders::S3DestinationConfig.build(input[:s3_destination_config]) unless input[:s3_destination_config].nil?
        data['fileFormat'] = input[:file_format] unless input[:file_format].nil?
        data['includeMemberAccounts'] = input[:include_member_accounts] unless input[:include_member_accounts].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ExportableVolumeFields
    class ExportableVolumeFields
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for EBSFilters
    class EBSFilters
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::EBSFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for EBSFilter
    class EBSFilter
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['values'] = Builders::FilterValues.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # Operation Builder for ExportEC2InstanceRecommendations
    class ExportEC2InstanceRecommendations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'ComputeOptimizerService.ExportEC2InstanceRecommendations'
        data = {}
        data['accountIds'] = Builders::AccountIds.build(input[:account_ids]) unless input[:account_ids].nil?
        data['filters'] = Builders::Filters.build(input[:filters]) unless input[:filters].nil?
        data['fieldsToExport'] = Builders::ExportableInstanceFields.build(input[:fields_to_export]) unless input[:fields_to_export].nil?
        data['s3DestinationConfig'] = Builders::S3DestinationConfig.build(input[:s3_destination_config]) unless input[:s3_destination_config].nil?
        data['fileFormat'] = input[:file_format] unless input[:file_format].nil?
        data['includeMemberAccounts'] = input[:include_member_accounts] unless input[:include_member_accounts].nil?
        data['recommendationPreferences'] = Builders::RecommendationPreferences.build(input[:recommendation_preferences]) unless input[:recommendation_preferences].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ExportableInstanceFields
    class ExportableInstanceFields
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ExportLambdaFunctionRecommendations
    class ExportLambdaFunctionRecommendations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'ComputeOptimizerService.ExportLambdaFunctionRecommendations'
        data = {}
        data['accountIds'] = Builders::AccountIds.build(input[:account_ids]) unless input[:account_ids].nil?
        data['filters'] = Builders::LambdaFunctionRecommendationFilters.build(input[:filters]) unless input[:filters].nil?
        data['fieldsToExport'] = Builders::ExportableLambdaFunctionFields.build(input[:fields_to_export]) unless input[:fields_to_export].nil?
        data['s3DestinationConfig'] = Builders::S3DestinationConfig.build(input[:s3_destination_config]) unless input[:s3_destination_config].nil?
        data['fileFormat'] = input[:file_format] unless input[:file_format].nil?
        data['includeMemberAccounts'] = input[:include_member_accounts] unless input[:include_member_accounts].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ExportableLambdaFunctionFields
    class ExportableLambdaFunctionFields
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for LambdaFunctionRecommendationFilters
    class LambdaFunctionRecommendationFilters
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::LambdaFunctionRecommendationFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for LambdaFunctionRecommendationFilter
    class LambdaFunctionRecommendationFilter
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['values'] = Builders::FilterValues.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # Operation Builder for GetAutoScalingGroupRecommendations
    class GetAutoScalingGroupRecommendations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'ComputeOptimizerService.GetAutoScalingGroupRecommendations'
        data = {}
        data['accountIds'] = Builders::AccountIds.build(input[:account_ids]) unless input[:account_ids].nil?
        data['autoScalingGroupArns'] = Builders::AutoScalingGroupArns.build(input[:auto_scaling_group_arns]) unless input[:auto_scaling_group_arns].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['filters'] = Builders::Filters.build(input[:filters]) unless input[:filters].nil?
        data['recommendationPreferences'] = Builders::RecommendationPreferences.build(input[:recommendation_preferences]) unless input[:recommendation_preferences].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for AutoScalingGroupArns
    class AutoScalingGroupArns
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for GetEBSVolumeRecommendations
    class GetEBSVolumeRecommendations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'ComputeOptimizerService.GetEBSVolumeRecommendations'
        data = {}
        data['volumeArns'] = Builders::VolumeArns.build(input[:volume_arns]) unless input[:volume_arns].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['filters'] = Builders::EBSFilters.build(input[:filters]) unless input[:filters].nil?
        data['accountIds'] = Builders::AccountIds.build(input[:account_ids]) unless input[:account_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for VolumeArns
    class VolumeArns
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for GetEC2InstanceRecommendations
    class GetEC2InstanceRecommendations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'ComputeOptimizerService.GetEC2InstanceRecommendations'
        data = {}
        data['instanceArns'] = Builders::InstanceArns.build(input[:instance_arns]) unless input[:instance_arns].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['filters'] = Builders::Filters.build(input[:filters]) unless input[:filters].nil?
        data['accountIds'] = Builders::AccountIds.build(input[:account_ids]) unless input[:account_ids].nil?
        data['recommendationPreferences'] = Builders::RecommendationPreferences.build(input[:recommendation_preferences]) unless input[:recommendation_preferences].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for InstanceArns
    class InstanceArns
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for GetEC2RecommendationProjectedMetrics
    class GetEC2RecommendationProjectedMetrics
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'ComputeOptimizerService.GetEC2RecommendationProjectedMetrics'
        data = {}
        data['instanceArn'] = input[:instance_arn] unless input[:instance_arn].nil?
        data['stat'] = input[:stat] unless input[:stat].nil?
        data['period'] = input[:period] unless input[:period].nil?
        data['startTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:start_time]).to_i unless input[:start_time].nil?
        data['endTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:end_time]).to_i unless input[:end_time].nil?
        data['recommendationPreferences'] = Builders::RecommendationPreferences.build(input[:recommendation_preferences]) unless input[:recommendation_preferences].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetEffectiveRecommendationPreferences
    class GetEffectiveRecommendationPreferences
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'ComputeOptimizerService.GetEffectiveRecommendationPreferences'
        data = {}
        data['resourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetEnrollmentStatus
    class GetEnrollmentStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'ComputeOptimizerService.GetEnrollmentStatus'
        data = {}
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetEnrollmentStatusesForOrganization
    class GetEnrollmentStatusesForOrganization
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'ComputeOptimizerService.GetEnrollmentStatusesForOrganization'
        data = {}
        data['filters'] = Builders::EnrollmentFilters.build(input[:filters]) unless input[:filters].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for EnrollmentFilters
    class EnrollmentFilters
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::EnrollmentFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for EnrollmentFilter
    class EnrollmentFilter
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['values'] = Builders::FilterValues.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # Operation Builder for GetLambdaFunctionRecommendations
    class GetLambdaFunctionRecommendations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'ComputeOptimizerService.GetLambdaFunctionRecommendations'
        data = {}
        data['functionArns'] = Builders::FunctionArns.build(input[:function_arns]) unless input[:function_arns].nil?
        data['accountIds'] = Builders::AccountIds.build(input[:account_ids]) unless input[:account_ids].nil?
        data['filters'] = Builders::LambdaFunctionRecommendationFilters.build(input[:filters]) unless input[:filters].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for FunctionArns
    class FunctionArns
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for GetRecommendationPreferences
    class GetRecommendationPreferences
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'ComputeOptimizerService.GetRecommendationPreferences'
        data = {}
        data['resourceType'] = input[:resource_type] unless input[:resource_type].nil?
        data['scope'] = Builders::Scope.build(input[:scope]) unless input[:scope].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetRecommendationSummaries
    class GetRecommendationSummaries
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'ComputeOptimizerService.GetRecommendationSummaries'
        data = {}
        data['accountIds'] = Builders::AccountIds.build(input[:account_ids]) unless input[:account_ids].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutRecommendationPreferences
    class PutRecommendationPreferences
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'ComputeOptimizerService.PutRecommendationPreferences'
        data = {}
        data['resourceType'] = input[:resource_type] unless input[:resource_type].nil?
        data['scope'] = Builders::Scope.build(input[:scope]) unless input[:scope].nil?
        data['enhancedInfrastructureMetrics'] = input[:enhanced_infrastructure_metrics] unless input[:enhanced_infrastructure_metrics].nil?
        data['inferredWorkloadTypes'] = input[:inferred_workload_types] unless input[:inferred_workload_types].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateEnrollmentStatus
    class UpdateEnrollmentStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'ComputeOptimizerService.UpdateEnrollmentStatus'
        data = {}
        data['status'] = input[:status] unless input[:status].nil?
        data['includeMemberAccounts'] = input[:include_member_accounts] unless input[:include_member_accounts].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
