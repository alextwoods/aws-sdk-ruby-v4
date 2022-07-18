# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ComputeOptimizer
  module Parsers

    # Operation Parser for DeleteRecommendationPreferences
    class DeleteRecommendationPreferences
      def self.parse(http_resp)
        data = Types::DeleteRecommendationPreferencesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for OptInRequiredException
    class OptInRequiredException
      def self.parse(http_resp)
        data = Types::OptInRequiredException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ServiceUnavailableException
    class ServiceUnavailableException
      def self.parse(http_resp)
        data = Types::ServiceUnavailableException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidParameterValueException
    class InvalidParameterValueException
      def self.parse(http_resp)
        data = Types::InvalidParameterValueException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for MissingAuthenticationToken
    class MissingAuthenticationToken
      def self.parse(http_resp)
        data = Types::MissingAuthenticationToken.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DescribeRecommendationExportJobs
    class DescribeRecommendationExportJobs
      def self.parse(http_resp)
        data = Types::DescribeRecommendationExportJobsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.recommendation_export_jobs = (Parsers::RecommendationExportJobs.parse(map['recommendationExportJobs']) unless map['recommendationExportJobs'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class RecommendationExportJobs
      def self.parse(list)
        list.map do |value|
          Parsers::RecommendationExportJob.parse(value) unless value.nil?
        end
      end
    end

    class RecommendationExportJob
      def self.parse(map)
        data = Types::RecommendationExportJob.new
        data.job_id = map['jobId']
        data.destination = (Parsers::ExportDestination.parse(map['destination']) unless map['destination'].nil?)
        data.resource_type = map['resourceType']
        data.status = map['status']
        data.creation_timestamp = Time.at(map['creationTimestamp'].to_i) if map['creationTimestamp']
        data.last_updated_timestamp = Time.at(map['lastUpdatedTimestamp'].to_i) if map['lastUpdatedTimestamp']
        data.failure_reason = map['failureReason']
        return data
      end
    end

    class ExportDestination
      def self.parse(map)
        data = Types::ExportDestination.new
        data.s3 = (Parsers::S3Destination.parse(map['s3']) unless map['s3'].nil?)
        return data
      end
    end

    class S3Destination
      def self.parse(map)
        data = Types::S3Destination.new
        data.bucket = map['bucket']
        data.key = map['key']
        data.metadata_key = map['metadataKey']
        return data
      end
    end

    # Operation Parser for ExportAutoScalingGroupRecommendations
    class ExportAutoScalingGroupRecommendations
      def self.parse(http_resp)
        data = Types::ExportAutoScalingGroupRecommendationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_id = map['jobId']
        data.s3_destination = (Parsers::S3Destination.parse(map['s3Destination']) unless map['s3Destination'].nil?)
        data
      end
    end

    # Error Parser for LimitExceededException
    class LimitExceededException
      def self.parse(http_resp)
        data = Types::LimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for ExportEBSVolumeRecommendations
    class ExportEBSVolumeRecommendations
      def self.parse(http_resp)
        data = Types::ExportEBSVolumeRecommendationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_id = map['jobId']
        data.s3_destination = (Parsers::S3Destination.parse(map['s3Destination']) unless map['s3Destination'].nil?)
        data
      end
    end

    # Operation Parser for ExportEC2InstanceRecommendations
    class ExportEC2InstanceRecommendations
      def self.parse(http_resp)
        data = Types::ExportEC2InstanceRecommendationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_id = map['jobId']
        data.s3_destination = (Parsers::S3Destination.parse(map['s3Destination']) unless map['s3Destination'].nil?)
        data
      end
    end

    # Operation Parser for ExportLambdaFunctionRecommendations
    class ExportLambdaFunctionRecommendations
      def self.parse(http_resp)
        data = Types::ExportLambdaFunctionRecommendationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_id = map['jobId']
        data.s3_destination = (Parsers::S3Destination.parse(map['s3Destination']) unless map['s3Destination'].nil?)
        data
      end
    end

    # Operation Parser for GetAutoScalingGroupRecommendations
    class GetAutoScalingGroupRecommendations
      def self.parse(http_resp)
        data = Types::GetAutoScalingGroupRecommendationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['nextToken']
        data.auto_scaling_group_recommendations = (Parsers::AutoScalingGroupRecommendations.parse(map['autoScalingGroupRecommendations']) unless map['autoScalingGroupRecommendations'].nil?)
        data.errors = (Parsers::GetRecommendationErrors.parse(map['errors']) unless map['errors'].nil?)
        data
      end
    end

    class GetRecommendationErrors
      def self.parse(list)
        list.map do |value|
          Parsers::GetRecommendationError.parse(value) unless value.nil?
        end
      end
    end

    class GetRecommendationError
      def self.parse(map)
        data = Types::GetRecommendationError.new
        data.identifier = map['identifier']
        data.code = map['code']
        data.message = map['message']
        return data
      end
    end

    class AutoScalingGroupRecommendations
      def self.parse(list)
        list.map do |value|
          Parsers::AutoScalingGroupRecommendation.parse(value) unless value.nil?
        end
      end
    end

    class AutoScalingGroupRecommendation
      def self.parse(map)
        data = Types::AutoScalingGroupRecommendation.new
        data.account_id = map['accountId']
        data.auto_scaling_group_arn = map['autoScalingGroupArn']
        data.auto_scaling_group_name = map['autoScalingGroupName']
        data.finding = map['finding']
        data.utilization_metrics = (Parsers::UtilizationMetrics.parse(map['utilizationMetrics']) unless map['utilizationMetrics'].nil?)
        data.look_back_period_in_days = Hearth::NumberHelper.deserialize(map['lookBackPeriodInDays'])
        data.current_configuration = (Parsers::AutoScalingGroupConfiguration.parse(map['currentConfiguration']) unless map['currentConfiguration'].nil?)
        data.recommendation_options = (Parsers::AutoScalingGroupRecommendationOptions.parse(map['recommendationOptions']) unless map['recommendationOptions'].nil?)
        data.last_refresh_timestamp = Time.at(map['lastRefreshTimestamp'].to_i) if map['lastRefreshTimestamp']
        data.current_performance_risk = map['currentPerformanceRisk']
        data.effective_recommendation_preferences = (Parsers::EffectiveRecommendationPreferences.parse(map['effectiveRecommendationPreferences']) unless map['effectiveRecommendationPreferences'].nil?)
        data.inferred_workload_types = (Parsers::InferredWorkloadTypes.parse(map['inferredWorkloadTypes']) unless map['inferredWorkloadTypes'].nil?)
        return data
      end
    end

    class InferredWorkloadTypes
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class EffectiveRecommendationPreferences
      def self.parse(map)
        data = Types::EffectiveRecommendationPreferences.new
        data.cpu_vendor_architectures = (Parsers::CpuVendorArchitectures.parse(map['cpuVendorArchitectures']) unless map['cpuVendorArchitectures'].nil?)
        data.enhanced_infrastructure_metrics = map['enhancedInfrastructureMetrics']
        data.inferred_workload_types = map['inferredWorkloadTypes']
        return data
      end
    end

    class CpuVendorArchitectures
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class AutoScalingGroupRecommendationOptions
      def self.parse(list)
        list.map do |value|
          Parsers::AutoScalingGroupRecommendationOption.parse(value) unless value.nil?
        end
      end
    end

    class AutoScalingGroupRecommendationOption
      def self.parse(map)
        data = Types::AutoScalingGroupRecommendationOption.new
        data.configuration = (Parsers::AutoScalingGroupConfiguration.parse(map['configuration']) unless map['configuration'].nil?)
        data.projected_utilization_metrics = (Parsers::ProjectedUtilizationMetrics.parse(map['projectedUtilizationMetrics']) unless map['projectedUtilizationMetrics'].nil?)
        data.performance_risk = Hearth::NumberHelper.deserialize(map['performanceRisk'])
        data.rank = map['rank']
        data.savings_opportunity = (Parsers::SavingsOpportunity.parse(map['savingsOpportunity']) unless map['savingsOpportunity'].nil?)
        data.migration_effort = map['migrationEffort']
        return data
      end
    end

    class SavingsOpportunity
      def self.parse(map)
        data = Types::SavingsOpportunity.new
        data.savings_opportunity_percentage = Hearth::NumberHelper.deserialize(map['savingsOpportunityPercentage'])
        data.estimated_monthly_savings = (Parsers::EstimatedMonthlySavings.parse(map['estimatedMonthlySavings']) unless map['estimatedMonthlySavings'].nil?)
        return data
      end
    end

    class EstimatedMonthlySavings
      def self.parse(map)
        data = Types::EstimatedMonthlySavings.new
        data.currency = map['currency']
        data.value = Hearth::NumberHelper.deserialize(map['value'])
        return data
      end
    end

    class ProjectedUtilizationMetrics
      def self.parse(list)
        list.map do |value|
          Parsers::UtilizationMetric.parse(value) unless value.nil?
        end
      end
    end

    class UtilizationMetric
      def self.parse(map)
        data = Types::UtilizationMetric.new
        data.name = map['name']
        data.statistic = map['statistic']
        data.value = Hearth::NumberHelper.deserialize(map['value'])
        return data
      end
    end

    class AutoScalingGroupConfiguration
      def self.parse(map)
        data = Types::AutoScalingGroupConfiguration.new
        data.desired_capacity = map['desiredCapacity']
        data.min_size = map['minSize']
        data.max_size = map['maxSize']
        data.instance_type = map['instanceType']
        return data
      end
    end

    class UtilizationMetrics
      def self.parse(list)
        list.map do |value|
          Parsers::UtilizationMetric.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for GetEBSVolumeRecommendations
    class GetEBSVolumeRecommendations
      def self.parse(http_resp)
        data = Types::GetEBSVolumeRecommendationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['nextToken']
        data.volume_recommendations = (Parsers::VolumeRecommendations.parse(map['volumeRecommendations']) unless map['volumeRecommendations'].nil?)
        data.errors = (Parsers::GetRecommendationErrors.parse(map['errors']) unless map['errors'].nil?)
        data
      end
    end

    class VolumeRecommendations
      def self.parse(list)
        list.map do |value|
          Parsers::VolumeRecommendation.parse(value) unless value.nil?
        end
      end
    end

    class VolumeRecommendation
      def self.parse(map)
        data = Types::VolumeRecommendation.new
        data.volume_arn = map['volumeArn']
        data.account_id = map['accountId']
        data.current_configuration = (Parsers::VolumeConfiguration.parse(map['currentConfiguration']) unless map['currentConfiguration'].nil?)
        data.finding = map['finding']
        data.utilization_metrics = (Parsers::EBSUtilizationMetrics.parse(map['utilizationMetrics']) unless map['utilizationMetrics'].nil?)
        data.look_back_period_in_days = Hearth::NumberHelper.deserialize(map['lookBackPeriodInDays'])
        data.volume_recommendation_options = (Parsers::VolumeRecommendationOptions.parse(map['volumeRecommendationOptions']) unless map['volumeRecommendationOptions'].nil?)
        data.last_refresh_timestamp = Time.at(map['lastRefreshTimestamp'].to_i) if map['lastRefreshTimestamp']
        data.current_performance_risk = map['currentPerformanceRisk']
        return data
      end
    end

    class VolumeRecommendationOptions
      def self.parse(list)
        list.map do |value|
          Parsers::VolumeRecommendationOption.parse(value) unless value.nil?
        end
      end
    end

    class VolumeRecommendationOption
      def self.parse(map)
        data = Types::VolumeRecommendationOption.new
        data.configuration = (Parsers::VolumeConfiguration.parse(map['configuration']) unless map['configuration'].nil?)
        data.performance_risk = Hearth::NumberHelper.deserialize(map['performanceRisk'])
        data.rank = map['rank']
        data.savings_opportunity = (Parsers::SavingsOpportunity.parse(map['savingsOpportunity']) unless map['savingsOpportunity'].nil?)
        return data
      end
    end

    class VolumeConfiguration
      def self.parse(map)
        data = Types::VolumeConfiguration.new
        data.volume_type = map['volumeType']
        data.volume_size = map['volumeSize']
        data.volume_baseline_iops = map['volumeBaselineIOPS']
        data.volume_burst_iops = map['volumeBurstIOPS']
        data.volume_baseline_throughput = map['volumeBaselineThroughput']
        data.volume_burst_throughput = map['volumeBurstThroughput']
        return data
      end
    end

    class EBSUtilizationMetrics
      def self.parse(list)
        list.map do |value|
          Parsers::EBSUtilizationMetric.parse(value) unless value.nil?
        end
      end
    end

    class EBSUtilizationMetric
      def self.parse(map)
        data = Types::EBSUtilizationMetric.new
        data.name = map['name']
        data.statistic = map['statistic']
        data.value = Hearth::NumberHelper.deserialize(map['value'])
        return data
      end
    end

    # Operation Parser for GetEC2InstanceRecommendations
    class GetEC2InstanceRecommendations
      def self.parse(http_resp)
        data = Types::GetEC2InstanceRecommendationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['nextToken']
        data.instance_recommendations = (Parsers::InstanceRecommendations.parse(map['instanceRecommendations']) unless map['instanceRecommendations'].nil?)
        data.errors = (Parsers::GetRecommendationErrors.parse(map['errors']) unless map['errors'].nil?)
        data
      end
    end

    class InstanceRecommendations
      def self.parse(list)
        list.map do |value|
          Parsers::InstanceRecommendation.parse(value) unless value.nil?
        end
      end
    end

    class InstanceRecommendation
      def self.parse(map)
        data = Types::InstanceRecommendation.new
        data.instance_arn = map['instanceArn']
        data.account_id = map['accountId']
        data.instance_name = map['instanceName']
        data.current_instance_type = map['currentInstanceType']
        data.finding = map['finding']
        data.finding_reason_codes = (Parsers::InstanceRecommendationFindingReasonCodes.parse(map['findingReasonCodes']) unless map['findingReasonCodes'].nil?)
        data.utilization_metrics = (Parsers::UtilizationMetrics.parse(map['utilizationMetrics']) unless map['utilizationMetrics'].nil?)
        data.look_back_period_in_days = Hearth::NumberHelper.deserialize(map['lookBackPeriodInDays'])
        data.recommendation_options = (Parsers::RecommendationOptions.parse(map['recommendationOptions']) unless map['recommendationOptions'].nil?)
        data.recommendation_sources = (Parsers::RecommendationSources.parse(map['recommendationSources']) unless map['recommendationSources'].nil?)
        data.last_refresh_timestamp = Time.at(map['lastRefreshTimestamp'].to_i) if map['lastRefreshTimestamp']
        data.current_performance_risk = map['currentPerformanceRisk']
        data.effective_recommendation_preferences = (Parsers::EffectiveRecommendationPreferences.parse(map['effectiveRecommendationPreferences']) unless map['effectiveRecommendationPreferences'].nil?)
        data.inferred_workload_types = (Parsers::InferredWorkloadTypes.parse(map['inferredWorkloadTypes']) unless map['inferredWorkloadTypes'].nil?)
        return data
      end
    end

    class RecommendationSources
      def self.parse(list)
        list.map do |value|
          Parsers::RecommendationSource.parse(value) unless value.nil?
        end
      end
    end

    class RecommendationSource
      def self.parse(map)
        data = Types::RecommendationSource.new
        data.recommendation_source_arn = map['recommendationSourceArn']
        data.recommendation_source_type = map['recommendationSourceType']
        return data
      end
    end

    class RecommendationOptions
      def self.parse(list)
        list.map do |value|
          Parsers::InstanceRecommendationOption.parse(value) unless value.nil?
        end
      end
    end

    class InstanceRecommendationOption
      def self.parse(map)
        data = Types::InstanceRecommendationOption.new
        data.instance_type = map['instanceType']
        data.projected_utilization_metrics = (Parsers::ProjectedUtilizationMetrics.parse(map['projectedUtilizationMetrics']) unless map['projectedUtilizationMetrics'].nil?)
        data.platform_differences = (Parsers::PlatformDifferences.parse(map['platformDifferences']) unless map['platformDifferences'].nil?)
        data.performance_risk = Hearth::NumberHelper.deserialize(map['performanceRisk'])
        data.rank = map['rank']
        data.savings_opportunity = (Parsers::SavingsOpportunity.parse(map['savingsOpportunity']) unless map['savingsOpportunity'].nil?)
        data.migration_effort = map['migrationEffort']
        return data
      end
    end

    class PlatformDifferences
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class InstanceRecommendationFindingReasonCodes
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for GetEC2RecommendationProjectedMetrics
    class GetEC2RecommendationProjectedMetrics
      def self.parse(http_resp)
        data = Types::GetEC2RecommendationProjectedMetricsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.recommended_option_projected_metrics = (Parsers::RecommendedOptionProjectedMetrics.parse(map['recommendedOptionProjectedMetrics']) unless map['recommendedOptionProjectedMetrics'].nil?)
        data
      end
    end

    class RecommendedOptionProjectedMetrics
      def self.parse(list)
        list.map do |value|
          Parsers::RecommendedOptionProjectedMetric.parse(value) unless value.nil?
        end
      end
    end

    class RecommendedOptionProjectedMetric
      def self.parse(map)
        data = Types::RecommendedOptionProjectedMetric.new
        data.recommended_instance_type = map['recommendedInstanceType']
        data.rank = map['rank']
        data.projected_metrics = (Parsers::ProjectedMetrics.parse(map['projectedMetrics']) unless map['projectedMetrics'].nil?)
        return data
      end
    end

    class ProjectedMetrics
      def self.parse(list)
        list.map do |value|
          Parsers::ProjectedMetric.parse(value) unless value.nil?
        end
      end
    end

    class ProjectedMetric
      def self.parse(map)
        data = Types::ProjectedMetric.new
        data.name = map['name']
        data.timestamps = (Parsers::Timestamps.parse(map['timestamps']) unless map['timestamps'].nil?)
        data.values = (Parsers::MetricValues.parse(map['values']) unless map['values'].nil?)
        return data
      end
    end

    class MetricValues
      def self.parse(list)
        list.map do |value|
          Hearth::NumberHelper.deserialize(value) unless value.nil?
        end
      end
    end

    class Timestamps
      def self.parse(list)
        list.map do |value|
          Time.at(value.to_i) if value
        end
      end
    end

    # Operation Parser for GetEffectiveRecommendationPreferences
    class GetEffectiveRecommendationPreferences
      def self.parse(http_resp)
        data = Types::GetEffectiveRecommendationPreferencesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.enhanced_infrastructure_metrics = map['enhancedInfrastructureMetrics']
        data
      end
    end

    # Operation Parser for GetEnrollmentStatus
    class GetEnrollmentStatus
      def self.parse(http_resp)
        data = Types::GetEnrollmentStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.status = map['status']
        data.status_reason = map['statusReason']
        data.member_accounts_enrolled = map['memberAccountsEnrolled']
        data.last_updated_timestamp = Time.at(map['lastUpdatedTimestamp'].to_i) if map['lastUpdatedTimestamp']
        data.number_of_member_accounts_opted_in = map['numberOfMemberAccountsOptedIn']
        data
      end
    end

    # Operation Parser for GetEnrollmentStatusesForOrganization
    class GetEnrollmentStatusesForOrganization
      def self.parse(http_resp)
        data = Types::GetEnrollmentStatusesForOrganizationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.account_enrollment_statuses = (Parsers::AccountEnrollmentStatuses.parse(map['accountEnrollmentStatuses']) unless map['accountEnrollmentStatuses'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class AccountEnrollmentStatuses
      def self.parse(list)
        list.map do |value|
          Parsers::AccountEnrollmentStatus.parse(value) unless value.nil?
        end
      end
    end

    class AccountEnrollmentStatus
      def self.parse(map)
        data = Types::AccountEnrollmentStatus.new
        data.account_id = map['accountId']
        data.status = map['status']
        data.status_reason = map['statusReason']
        data.last_updated_timestamp = Time.at(map['lastUpdatedTimestamp'].to_i) if map['lastUpdatedTimestamp']
        return data
      end
    end

    # Operation Parser for GetLambdaFunctionRecommendations
    class GetLambdaFunctionRecommendations
      def self.parse(http_resp)
        data = Types::GetLambdaFunctionRecommendationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['nextToken']
        data.lambda_function_recommendations = (Parsers::LambdaFunctionRecommendations.parse(map['lambdaFunctionRecommendations']) unless map['lambdaFunctionRecommendations'].nil?)
        data
      end
    end

    class LambdaFunctionRecommendations
      def self.parse(list)
        list.map do |value|
          Parsers::LambdaFunctionRecommendation.parse(value) unless value.nil?
        end
      end
    end

    class LambdaFunctionRecommendation
      def self.parse(map)
        data = Types::LambdaFunctionRecommendation.new
        data.function_arn = map['functionArn']
        data.function_version = map['functionVersion']
        data.account_id = map['accountId']
        data.current_memory_size = map['currentMemorySize']
        data.number_of_invocations = map['numberOfInvocations']
        data.utilization_metrics = (Parsers::LambdaFunctionUtilizationMetrics.parse(map['utilizationMetrics']) unless map['utilizationMetrics'].nil?)
        data.lookback_period_in_days = Hearth::NumberHelper.deserialize(map['lookbackPeriodInDays'])
        data.last_refresh_timestamp = Time.at(map['lastRefreshTimestamp'].to_i) if map['lastRefreshTimestamp']
        data.finding = map['finding']
        data.finding_reason_codes = (Parsers::LambdaFunctionRecommendationFindingReasonCodes.parse(map['findingReasonCodes']) unless map['findingReasonCodes'].nil?)
        data.memory_size_recommendation_options = (Parsers::LambdaFunctionMemoryRecommendationOptions.parse(map['memorySizeRecommendationOptions']) unless map['memorySizeRecommendationOptions'].nil?)
        data.current_performance_risk = map['currentPerformanceRisk']
        return data
      end
    end

    class LambdaFunctionMemoryRecommendationOptions
      def self.parse(list)
        list.map do |value|
          Parsers::LambdaFunctionMemoryRecommendationOption.parse(value) unless value.nil?
        end
      end
    end

    class LambdaFunctionMemoryRecommendationOption
      def self.parse(map)
        data = Types::LambdaFunctionMemoryRecommendationOption.new
        data.rank = map['rank']
        data.memory_size = map['memorySize']
        data.projected_utilization_metrics = (Parsers::LambdaFunctionMemoryProjectedMetrics.parse(map['projectedUtilizationMetrics']) unless map['projectedUtilizationMetrics'].nil?)
        data.savings_opportunity = (Parsers::SavingsOpportunity.parse(map['savingsOpportunity']) unless map['savingsOpportunity'].nil?)
        return data
      end
    end

    class LambdaFunctionMemoryProjectedMetrics
      def self.parse(list)
        list.map do |value|
          Parsers::LambdaFunctionMemoryProjectedMetric.parse(value) unless value.nil?
        end
      end
    end

    class LambdaFunctionMemoryProjectedMetric
      def self.parse(map)
        data = Types::LambdaFunctionMemoryProjectedMetric.new
        data.name = map['name']
        data.statistic = map['statistic']
        data.value = Hearth::NumberHelper.deserialize(map['value'])
        return data
      end
    end

    class LambdaFunctionRecommendationFindingReasonCodes
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class LambdaFunctionUtilizationMetrics
      def self.parse(list)
        list.map do |value|
          Parsers::LambdaFunctionUtilizationMetric.parse(value) unless value.nil?
        end
      end
    end

    class LambdaFunctionUtilizationMetric
      def self.parse(map)
        data = Types::LambdaFunctionUtilizationMetric.new
        data.name = map['name']
        data.statistic = map['statistic']
        data.value = Hearth::NumberHelper.deserialize(map['value'])
        return data
      end
    end

    # Operation Parser for GetRecommendationPreferences
    class GetRecommendationPreferences
      def self.parse(http_resp)
        data = Types::GetRecommendationPreferencesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['nextToken']
        data.recommendation_preferences_details = (Parsers::RecommendationPreferencesDetails.parse(map['recommendationPreferencesDetails']) unless map['recommendationPreferencesDetails'].nil?)
        data
      end
    end

    class RecommendationPreferencesDetails
      def self.parse(list)
        list.map do |value|
          Parsers::RecommendationPreferencesDetail.parse(value) unless value.nil?
        end
      end
    end

    class RecommendationPreferencesDetail
      def self.parse(map)
        data = Types::RecommendationPreferencesDetail.new
        data.scope = (Parsers::Scope.parse(map['scope']) unless map['scope'].nil?)
        data.resource_type = map['resourceType']
        data.enhanced_infrastructure_metrics = map['enhancedInfrastructureMetrics']
        data.inferred_workload_types = map['inferredWorkloadTypes']
        return data
      end
    end

    class Scope
      def self.parse(map)
        data = Types::Scope.new
        data.name = map['name']
        data.value = map['value']
        return data
      end
    end

    # Operation Parser for GetRecommendationSummaries
    class GetRecommendationSummaries
      def self.parse(http_resp)
        data = Types::GetRecommendationSummariesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['nextToken']
        data.recommendation_summaries = (Parsers::RecommendationSummaries.parse(map['recommendationSummaries']) unless map['recommendationSummaries'].nil?)
        data
      end
    end

    class RecommendationSummaries
      def self.parse(list)
        list.map do |value|
          Parsers::RecommendationSummary.parse(value) unless value.nil?
        end
      end
    end

    class RecommendationSummary
      def self.parse(map)
        data = Types::RecommendationSummary.new
        data.summaries = (Parsers::Summaries.parse(map['summaries']) unless map['summaries'].nil?)
        data.recommendation_resource_type = map['recommendationResourceType']
        data.account_id = map['accountId']
        data.savings_opportunity = (Parsers::SavingsOpportunity.parse(map['savingsOpportunity']) unless map['savingsOpportunity'].nil?)
        data.current_performance_risk_ratings = (Parsers::CurrentPerformanceRiskRatings.parse(map['currentPerformanceRiskRatings']) unless map['currentPerformanceRiskRatings'].nil?)
        return data
      end
    end

    class CurrentPerformanceRiskRatings
      def self.parse(map)
        data = Types::CurrentPerformanceRiskRatings.new
        data.high = map['high']
        data.medium = map['medium']
        data.low = map['low']
        data.very_low = map['veryLow']
        return data
      end
    end

    class Summaries
      def self.parse(list)
        list.map do |value|
          Parsers::Summary.parse(value) unless value.nil?
        end
      end
    end

    class Summary
      def self.parse(map)
        data = Types::Summary.new
        data.name = map['name']
        data.value = Hearth::NumberHelper.deserialize(map['value'])
        data.reason_code_summaries = (Parsers::ReasonCodeSummaries.parse(map['reasonCodeSummaries']) unless map['reasonCodeSummaries'].nil?)
        return data
      end
    end

    class ReasonCodeSummaries
      def self.parse(list)
        list.map do |value|
          Parsers::ReasonCodeSummary.parse(value) unless value.nil?
        end
      end
    end

    class ReasonCodeSummary
      def self.parse(map)
        data = Types::ReasonCodeSummary.new
        data.name = map['name']
        data.value = Hearth::NumberHelper.deserialize(map['value'])
        return data
      end
    end

    # Operation Parser for PutRecommendationPreferences
    class PutRecommendationPreferences
      def self.parse(http_resp)
        data = Types::PutRecommendationPreferencesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateEnrollmentStatus
    class UpdateEnrollmentStatus
      def self.parse(http_resp)
        data = Types::UpdateEnrollmentStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.status = map['status']
        data.status_reason = map['statusReason']
        data
      end
    end
  end
end
