# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ComputeOptimizer
  module Stubs

    # Operation Stubber for DeleteRecommendationPreferences
    class DeleteRecommendationPreferences
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeRecommendationExportJobs
    class DescribeRecommendationExportJobs
      def self.default(visited=[])
        {
          recommendation_export_jobs: Stubs::RecommendationExportJobs.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['recommendationExportJobs'] = Stubs::RecommendationExportJobs.stub(stub[:recommendation_export_jobs]) unless stub[:recommendation_export_jobs].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for RecommendationExportJobs
    class RecommendationExportJobs
      def self.default(visited=[])
        return nil if visited.include?('RecommendationExportJobs')
        visited = visited + ['RecommendationExportJobs']
        [
          Stubs::RecommendationExportJob.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RecommendationExportJob.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RecommendationExportJob
    class RecommendationExportJob
      def self.default(visited=[])
        return nil if visited.include?('RecommendationExportJob')
        visited = visited + ['RecommendationExportJob']
        {
          job_id: 'job_id',
          destination: Stubs::ExportDestination.default(visited),
          resource_type: 'resource_type',
          status: 'status',
          creation_timestamp: Time.now,
          last_updated_timestamp: Time.now,
          failure_reason: 'failure_reason',
        }
      end

      def self.stub(stub)
        stub ||= Types::RecommendationExportJob.new
        data = {}
        data['jobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['destination'] = Stubs::ExportDestination.stub(stub[:destination]) unless stub[:destination].nil?
        data['resourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['creationTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_timestamp]).to_i unless stub[:creation_timestamp].nil?
        data['lastUpdatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_timestamp]).to_i unless stub[:last_updated_timestamp].nil?
        data['failureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data
      end
    end

    # Structure Stubber for ExportDestination
    class ExportDestination
      def self.default(visited=[])
        return nil if visited.include?('ExportDestination')
        visited = visited + ['ExportDestination']
        {
          s3: Stubs::S3Destination.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ExportDestination.new
        data = {}
        data['s3'] = Stubs::S3Destination.stub(stub[:s3]) unless stub[:s3].nil?
        data
      end
    end

    # Structure Stubber for S3Destination
    class S3Destination
      def self.default(visited=[])
        return nil if visited.include?('S3Destination')
        visited = visited + ['S3Destination']
        {
          bucket: 'bucket',
          key: 'key',
          metadata_key: 'metadata_key',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3Destination.new
        data = {}
        data['bucket'] = stub[:bucket] unless stub[:bucket].nil?
        data['key'] = stub[:key] unless stub[:key].nil?
        data['metadataKey'] = stub[:metadata_key] unless stub[:metadata_key].nil?
        data
      end
    end

    # Operation Stubber for ExportAutoScalingGroupRecommendations
    class ExportAutoScalingGroupRecommendations
      def self.default(visited=[])
        {
          job_id: 'job_id',
          s3_destination: Stubs::S3Destination.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['jobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['s3Destination'] = Stubs::S3Destination.stub(stub[:s3_destination]) unless stub[:s3_destination].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ExportEBSVolumeRecommendations
    class ExportEBSVolumeRecommendations
      def self.default(visited=[])
        {
          job_id: 'job_id',
          s3_destination: Stubs::S3Destination.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['jobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['s3Destination'] = Stubs::S3Destination.stub(stub[:s3_destination]) unless stub[:s3_destination].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ExportEC2InstanceRecommendations
    class ExportEC2InstanceRecommendations
      def self.default(visited=[])
        {
          job_id: 'job_id',
          s3_destination: Stubs::S3Destination.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['jobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['s3Destination'] = Stubs::S3Destination.stub(stub[:s3_destination]) unless stub[:s3_destination].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ExportLambdaFunctionRecommendations
    class ExportLambdaFunctionRecommendations
      def self.default(visited=[])
        {
          job_id: 'job_id',
          s3_destination: Stubs::S3Destination.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['jobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['s3Destination'] = Stubs::S3Destination.stub(stub[:s3_destination]) unless stub[:s3_destination].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetAutoScalingGroupRecommendations
    class GetAutoScalingGroupRecommendations
      def self.default(visited=[])
        {
          next_token: 'next_token',
          auto_scaling_group_recommendations: Stubs::AutoScalingGroupRecommendations.default(visited),
          errors: Stubs::GetRecommendationErrors.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['autoScalingGroupRecommendations'] = Stubs::AutoScalingGroupRecommendations.stub(stub[:auto_scaling_group_recommendations]) unless stub[:auto_scaling_group_recommendations].nil?
        data['errors'] = Stubs::GetRecommendationErrors.stub(stub[:errors]) unless stub[:errors].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for GetRecommendationErrors
    class GetRecommendationErrors
      def self.default(visited=[])
        return nil if visited.include?('GetRecommendationErrors')
        visited = visited + ['GetRecommendationErrors']
        [
          Stubs::GetRecommendationError.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::GetRecommendationError.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for GetRecommendationError
    class GetRecommendationError
      def self.default(visited=[])
        return nil if visited.include?('GetRecommendationError')
        visited = visited + ['GetRecommendationError']
        {
          identifier: 'identifier',
          code: 'code',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::GetRecommendationError.new
        data = {}
        data['identifier'] = stub[:identifier] unless stub[:identifier].nil?
        data['code'] = stub[:code] unless stub[:code].nil?
        data['message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # List Stubber for AutoScalingGroupRecommendations
    class AutoScalingGroupRecommendations
      def self.default(visited=[])
        return nil if visited.include?('AutoScalingGroupRecommendations')
        visited = visited + ['AutoScalingGroupRecommendations']
        [
          Stubs::AutoScalingGroupRecommendation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AutoScalingGroupRecommendation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AutoScalingGroupRecommendation
    class AutoScalingGroupRecommendation
      def self.default(visited=[])
        return nil if visited.include?('AutoScalingGroupRecommendation')
        visited = visited + ['AutoScalingGroupRecommendation']
        {
          account_id: 'account_id',
          auto_scaling_group_arn: 'auto_scaling_group_arn',
          auto_scaling_group_name: 'auto_scaling_group_name',
          finding: 'finding',
          utilization_metrics: Stubs::UtilizationMetrics.default(visited),
          look_back_period_in_days: 1.0,
          current_configuration: Stubs::AutoScalingGroupConfiguration.default(visited),
          recommendation_options: Stubs::AutoScalingGroupRecommendationOptions.default(visited),
          last_refresh_timestamp: Time.now,
          current_performance_risk: 'current_performance_risk',
          effective_recommendation_preferences: Stubs::EffectiveRecommendationPreferences.default(visited),
          inferred_workload_types: Stubs::InferredWorkloadTypes.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AutoScalingGroupRecommendation.new
        data = {}
        data['accountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['autoScalingGroupArn'] = stub[:auto_scaling_group_arn] unless stub[:auto_scaling_group_arn].nil?
        data['autoScalingGroupName'] = stub[:auto_scaling_group_name] unless stub[:auto_scaling_group_name].nil?
        data['finding'] = stub[:finding] unless stub[:finding].nil?
        data['utilizationMetrics'] = Stubs::UtilizationMetrics.stub(stub[:utilization_metrics]) unless stub[:utilization_metrics].nil?
        data['lookBackPeriodInDays'] = Hearth::NumberHelper.serialize(stub[:look_back_period_in_days])
        data['currentConfiguration'] = Stubs::AutoScalingGroupConfiguration.stub(stub[:current_configuration]) unless stub[:current_configuration].nil?
        data['recommendationOptions'] = Stubs::AutoScalingGroupRecommendationOptions.stub(stub[:recommendation_options]) unless stub[:recommendation_options].nil?
        data['lastRefreshTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_refresh_timestamp]).to_i unless stub[:last_refresh_timestamp].nil?
        data['currentPerformanceRisk'] = stub[:current_performance_risk] unless stub[:current_performance_risk].nil?
        data['effectiveRecommendationPreferences'] = Stubs::EffectiveRecommendationPreferences.stub(stub[:effective_recommendation_preferences]) unless stub[:effective_recommendation_preferences].nil?
        data['inferredWorkloadTypes'] = Stubs::InferredWorkloadTypes.stub(stub[:inferred_workload_types]) unless stub[:inferred_workload_types].nil?
        data
      end
    end

    # List Stubber for InferredWorkloadTypes
    class InferredWorkloadTypes
      def self.default(visited=[])
        return nil if visited.include?('InferredWorkloadTypes')
        visited = visited + ['InferredWorkloadTypes']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EffectiveRecommendationPreferences
    class EffectiveRecommendationPreferences
      def self.default(visited=[])
        return nil if visited.include?('EffectiveRecommendationPreferences')
        visited = visited + ['EffectiveRecommendationPreferences']
        {
          cpu_vendor_architectures: Stubs::CpuVendorArchitectures.default(visited),
          enhanced_infrastructure_metrics: 'enhanced_infrastructure_metrics',
          inferred_workload_types: 'inferred_workload_types',
        }
      end

      def self.stub(stub)
        stub ||= Types::EffectiveRecommendationPreferences.new
        data = {}
        data['cpuVendorArchitectures'] = Stubs::CpuVendorArchitectures.stub(stub[:cpu_vendor_architectures]) unless stub[:cpu_vendor_architectures].nil?
        data['enhancedInfrastructureMetrics'] = stub[:enhanced_infrastructure_metrics] unless stub[:enhanced_infrastructure_metrics].nil?
        data['inferredWorkloadTypes'] = stub[:inferred_workload_types] unless stub[:inferred_workload_types].nil?
        data
      end
    end

    # List Stubber for CpuVendorArchitectures
    class CpuVendorArchitectures
      def self.default(visited=[])
        return nil if visited.include?('CpuVendorArchitectures')
        visited = visited + ['CpuVendorArchitectures']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for AutoScalingGroupRecommendationOptions
    class AutoScalingGroupRecommendationOptions
      def self.default(visited=[])
        return nil if visited.include?('AutoScalingGroupRecommendationOptions')
        visited = visited + ['AutoScalingGroupRecommendationOptions']
        [
          Stubs::AutoScalingGroupRecommendationOption.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AutoScalingGroupRecommendationOption.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AutoScalingGroupRecommendationOption
    class AutoScalingGroupRecommendationOption
      def self.default(visited=[])
        return nil if visited.include?('AutoScalingGroupRecommendationOption')
        visited = visited + ['AutoScalingGroupRecommendationOption']
        {
          configuration: Stubs::AutoScalingGroupConfiguration.default(visited),
          projected_utilization_metrics: Stubs::ProjectedUtilizationMetrics.default(visited),
          performance_risk: 1.0,
          rank: 1,
          savings_opportunity: Stubs::SavingsOpportunity.default(visited),
          migration_effort: 'migration_effort',
        }
      end

      def self.stub(stub)
        stub ||= Types::AutoScalingGroupRecommendationOption.new
        data = {}
        data['configuration'] = Stubs::AutoScalingGroupConfiguration.stub(stub[:configuration]) unless stub[:configuration].nil?
        data['projectedUtilizationMetrics'] = Stubs::ProjectedUtilizationMetrics.stub(stub[:projected_utilization_metrics]) unless stub[:projected_utilization_metrics].nil?
        data['performanceRisk'] = Hearth::NumberHelper.serialize(stub[:performance_risk])
        data['rank'] = stub[:rank] unless stub[:rank].nil?
        data['savingsOpportunity'] = Stubs::SavingsOpportunity.stub(stub[:savings_opportunity]) unless stub[:savings_opportunity].nil?
        data['migrationEffort'] = stub[:migration_effort] unless stub[:migration_effort].nil?
        data
      end
    end

    # Structure Stubber for SavingsOpportunity
    class SavingsOpportunity
      def self.default(visited=[])
        return nil if visited.include?('SavingsOpportunity')
        visited = visited + ['SavingsOpportunity']
        {
          savings_opportunity_percentage: 1.0,
          estimated_monthly_savings: Stubs::EstimatedMonthlySavings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SavingsOpportunity.new
        data = {}
        data['savingsOpportunityPercentage'] = Hearth::NumberHelper.serialize(stub[:savings_opportunity_percentage])
        data['estimatedMonthlySavings'] = Stubs::EstimatedMonthlySavings.stub(stub[:estimated_monthly_savings]) unless stub[:estimated_monthly_savings].nil?
        data
      end
    end

    # Structure Stubber for EstimatedMonthlySavings
    class EstimatedMonthlySavings
      def self.default(visited=[])
        return nil if visited.include?('EstimatedMonthlySavings')
        visited = visited + ['EstimatedMonthlySavings']
        {
          currency: 'currency',
          value: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::EstimatedMonthlySavings.new
        data = {}
        data['currency'] = stub[:currency] unless stub[:currency].nil?
        data['value'] = Hearth::NumberHelper.serialize(stub[:value])
        data
      end
    end

    # List Stubber for ProjectedUtilizationMetrics
    class ProjectedUtilizationMetrics
      def self.default(visited=[])
        return nil if visited.include?('ProjectedUtilizationMetrics')
        visited = visited + ['ProjectedUtilizationMetrics']
        [
          Stubs::UtilizationMetric.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::UtilizationMetric.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for UtilizationMetric
    class UtilizationMetric
      def self.default(visited=[])
        return nil if visited.include?('UtilizationMetric')
        visited = visited + ['UtilizationMetric']
        {
          name: 'name',
          statistic: 'statistic',
          value: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::UtilizationMetric.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['statistic'] = stub[:statistic] unless stub[:statistic].nil?
        data['value'] = Hearth::NumberHelper.serialize(stub[:value])
        data
      end
    end

    # Structure Stubber for AutoScalingGroupConfiguration
    class AutoScalingGroupConfiguration
      def self.default(visited=[])
        return nil if visited.include?('AutoScalingGroupConfiguration')
        visited = visited + ['AutoScalingGroupConfiguration']
        {
          desired_capacity: 1,
          min_size: 1,
          max_size: 1,
          instance_type: 'instance_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::AutoScalingGroupConfiguration.new
        data = {}
        data['desiredCapacity'] = stub[:desired_capacity] unless stub[:desired_capacity].nil?
        data['minSize'] = stub[:min_size] unless stub[:min_size].nil?
        data['maxSize'] = stub[:max_size] unless stub[:max_size].nil?
        data['instanceType'] = stub[:instance_type] unless stub[:instance_type].nil?
        data
      end
    end

    # List Stubber for UtilizationMetrics
    class UtilizationMetrics
      def self.default(visited=[])
        return nil if visited.include?('UtilizationMetrics')
        visited = visited + ['UtilizationMetrics']
        [
          Stubs::UtilizationMetric.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::UtilizationMetric.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetEBSVolumeRecommendations
    class GetEBSVolumeRecommendations
      def self.default(visited=[])
        {
          next_token: 'next_token',
          volume_recommendations: Stubs::VolumeRecommendations.default(visited),
          errors: Stubs::GetRecommendationErrors.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['volumeRecommendations'] = Stubs::VolumeRecommendations.stub(stub[:volume_recommendations]) unless stub[:volume_recommendations].nil?
        data['errors'] = Stubs::GetRecommendationErrors.stub(stub[:errors]) unless stub[:errors].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for VolumeRecommendations
    class VolumeRecommendations
      def self.default(visited=[])
        return nil if visited.include?('VolumeRecommendations')
        visited = visited + ['VolumeRecommendations']
        [
          Stubs::VolumeRecommendation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::VolumeRecommendation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for VolumeRecommendation
    class VolumeRecommendation
      def self.default(visited=[])
        return nil if visited.include?('VolumeRecommendation')
        visited = visited + ['VolumeRecommendation']
        {
          volume_arn: 'volume_arn',
          account_id: 'account_id',
          current_configuration: Stubs::VolumeConfiguration.default(visited),
          finding: 'finding',
          utilization_metrics: Stubs::EBSUtilizationMetrics.default(visited),
          look_back_period_in_days: 1.0,
          volume_recommendation_options: Stubs::VolumeRecommendationOptions.default(visited),
          last_refresh_timestamp: Time.now,
          current_performance_risk: 'current_performance_risk',
        }
      end

      def self.stub(stub)
        stub ||= Types::VolumeRecommendation.new
        data = {}
        data['volumeArn'] = stub[:volume_arn] unless stub[:volume_arn].nil?
        data['accountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['currentConfiguration'] = Stubs::VolumeConfiguration.stub(stub[:current_configuration]) unless stub[:current_configuration].nil?
        data['finding'] = stub[:finding] unless stub[:finding].nil?
        data['utilizationMetrics'] = Stubs::EBSUtilizationMetrics.stub(stub[:utilization_metrics]) unless stub[:utilization_metrics].nil?
        data['lookBackPeriodInDays'] = Hearth::NumberHelper.serialize(stub[:look_back_period_in_days])
        data['volumeRecommendationOptions'] = Stubs::VolumeRecommendationOptions.stub(stub[:volume_recommendation_options]) unless stub[:volume_recommendation_options].nil?
        data['lastRefreshTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_refresh_timestamp]).to_i unless stub[:last_refresh_timestamp].nil?
        data['currentPerformanceRisk'] = stub[:current_performance_risk] unless stub[:current_performance_risk].nil?
        data
      end
    end

    # List Stubber for VolumeRecommendationOptions
    class VolumeRecommendationOptions
      def self.default(visited=[])
        return nil if visited.include?('VolumeRecommendationOptions')
        visited = visited + ['VolumeRecommendationOptions']
        [
          Stubs::VolumeRecommendationOption.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::VolumeRecommendationOption.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for VolumeRecommendationOption
    class VolumeRecommendationOption
      def self.default(visited=[])
        return nil if visited.include?('VolumeRecommendationOption')
        visited = visited + ['VolumeRecommendationOption']
        {
          configuration: Stubs::VolumeConfiguration.default(visited),
          performance_risk: 1.0,
          rank: 1,
          savings_opportunity: Stubs::SavingsOpportunity.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::VolumeRecommendationOption.new
        data = {}
        data['configuration'] = Stubs::VolumeConfiguration.stub(stub[:configuration]) unless stub[:configuration].nil?
        data['performanceRisk'] = Hearth::NumberHelper.serialize(stub[:performance_risk])
        data['rank'] = stub[:rank] unless stub[:rank].nil?
        data['savingsOpportunity'] = Stubs::SavingsOpportunity.stub(stub[:savings_opportunity]) unless stub[:savings_opportunity].nil?
        data
      end
    end

    # Structure Stubber for VolumeConfiguration
    class VolumeConfiguration
      def self.default(visited=[])
        return nil if visited.include?('VolumeConfiguration')
        visited = visited + ['VolumeConfiguration']
        {
          volume_type: 'volume_type',
          volume_size: 1,
          volume_baseline_iops: 1,
          volume_burst_iops: 1,
          volume_baseline_throughput: 1,
          volume_burst_throughput: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::VolumeConfiguration.new
        data = {}
        data['volumeType'] = stub[:volume_type] unless stub[:volume_type].nil?
        data['volumeSize'] = stub[:volume_size] unless stub[:volume_size].nil?
        data['volumeBaselineIOPS'] = stub[:volume_baseline_iops] unless stub[:volume_baseline_iops].nil?
        data['volumeBurstIOPS'] = stub[:volume_burst_iops] unless stub[:volume_burst_iops].nil?
        data['volumeBaselineThroughput'] = stub[:volume_baseline_throughput] unless stub[:volume_baseline_throughput].nil?
        data['volumeBurstThroughput'] = stub[:volume_burst_throughput] unless stub[:volume_burst_throughput].nil?
        data
      end
    end

    # List Stubber for EBSUtilizationMetrics
    class EBSUtilizationMetrics
      def self.default(visited=[])
        return nil if visited.include?('EBSUtilizationMetrics')
        visited = visited + ['EBSUtilizationMetrics']
        [
          Stubs::EBSUtilizationMetric.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::EBSUtilizationMetric.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EBSUtilizationMetric
    class EBSUtilizationMetric
      def self.default(visited=[])
        return nil if visited.include?('EBSUtilizationMetric')
        visited = visited + ['EBSUtilizationMetric']
        {
          name: 'name',
          statistic: 'statistic',
          value: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::EBSUtilizationMetric.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['statistic'] = stub[:statistic] unless stub[:statistic].nil?
        data['value'] = Hearth::NumberHelper.serialize(stub[:value])
        data
      end
    end

    # Operation Stubber for GetEC2InstanceRecommendations
    class GetEC2InstanceRecommendations
      def self.default(visited=[])
        {
          next_token: 'next_token',
          instance_recommendations: Stubs::InstanceRecommendations.default(visited),
          errors: Stubs::GetRecommendationErrors.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['instanceRecommendations'] = Stubs::InstanceRecommendations.stub(stub[:instance_recommendations]) unless stub[:instance_recommendations].nil?
        data['errors'] = Stubs::GetRecommendationErrors.stub(stub[:errors]) unless stub[:errors].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for InstanceRecommendations
    class InstanceRecommendations
      def self.default(visited=[])
        return nil if visited.include?('InstanceRecommendations')
        visited = visited + ['InstanceRecommendations']
        [
          Stubs::InstanceRecommendation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::InstanceRecommendation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for InstanceRecommendation
    class InstanceRecommendation
      def self.default(visited=[])
        return nil if visited.include?('InstanceRecommendation')
        visited = visited + ['InstanceRecommendation']
        {
          instance_arn: 'instance_arn',
          account_id: 'account_id',
          instance_name: 'instance_name',
          current_instance_type: 'current_instance_type',
          finding: 'finding',
          finding_reason_codes: Stubs::InstanceRecommendationFindingReasonCodes.default(visited),
          utilization_metrics: Stubs::UtilizationMetrics.default(visited),
          look_back_period_in_days: 1.0,
          recommendation_options: Stubs::RecommendationOptions.default(visited),
          recommendation_sources: Stubs::RecommendationSources.default(visited),
          last_refresh_timestamp: Time.now,
          current_performance_risk: 'current_performance_risk',
          effective_recommendation_preferences: Stubs::EffectiveRecommendationPreferences.default(visited),
          inferred_workload_types: Stubs::InferredWorkloadTypes.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::InstanceRecommendation.new
        data = {}
        data['instanceArn'] = stub[:instance_arn] unless stub[:instance_arn].nil?
        data['accountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['instanceName'] = stub[:instance_name] unless stub[:instance_name].nil?
        data['currentInstanceType'] = stub[:current_instance_type] unless stub[:current_instance_type].nil?
        data['finding'] = stub[:finding] unless stub[:finding].nil?
        data['findingReasonCodes'] = Stubs::InstanceRecommendationFindingReasonCodes.stub(stub[:finding_reason_codes]) unless stub[:finding_reason_codes].nil?
        data['utilizationMetrics'] = Stubs::UtilizationMetrics.stub(stub[:utilization_metrics]) unless stub[:utilization_metrics].nil?
        data['lookBackPeriodInDays'] = Hearth::NumberHelper.serialize(stub[:look_back_period_in_days])
        data['recommendationOptions'] = Stubs::RecommendationOptions.stub(stub[:recommendation_options]) unless stub[:recommendation_options].nil?
        data['recommendationSources'] = Stubs::RecommendationSources.stub(stub[:recommendation_sources]) unless stub[:recommendation_sources].nil?
        data['lastRefreshTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_refresh_timestamp]).to_i unless stub[:last_refresh_timestamp].nil?
        data['currentPerformanceRisk'] = stub[:current_performance_risk] unless stub[:current_performance_risk].nil?
        data['effectiveRecommendationPreferences'] = Stubs::EffectiveRecommendationPreferences.stub(stub[:effective_recommendation_preferences]) unless stub[:effective_recommendation_preferences].nil?
        data['inferredWorkloadTypes'] = Stubs::InferredWorkloadTypes.stub(stub[:inferred_workload_types]) unless stub[:inferred_workload_types].nil?
        data
      end
    end

    # List Stubber for RecommendationSources
    class RecommendationSources
      def self.default(visited=[])
        return nil if visited.include?('RecommendationSources')
        visited = visited + ['RecommendationSources']
        [
          Stubs::RecommendationSource.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RecommendationSource.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RecommendationSource
    class RecommendationSource
      def self.default(visited=[])
        return nil if visited.include?('RecommendationSource')
        visited = visited + ['RecommendationSource']
        {
          recommendation_source_arn: 'recommendation_source_arn',
          recommendation_source_type: 'recommendation_source_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::RecommendationSource.new
        data = {}
        data['recommendationSourceArn'] = stub[:recommendation_source_arn] unless stub[:recommendation_source_arn].nil?
        data['recommendationSourceType'] = stub[:recommendation_source_type] unless stub[:recommendation_source_type].nil?
        data
      end
    end

    # List Stubber for RecommendationOptions
    class RecommendationOptions
      def self.default(visited=[])
        return nil if visited.include?('RecommendationOptions')
        visited = visited + ['RecommendationOptions']
        [
          Stubs::InstanceRecommendationOption.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::InstanceRecommendationOption.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for InstanceRecommendationOption
    class InstanceRecommendationOption
      def self.default(visited=[])
        return nil if visited.include?('InstanceRecommendationOption')
        visited = visited + ['InstanceRecommendationOption']
        {
          instance_type: 'instance_type',
          projected_utilization_metrics: Stubs::ProjectedUtilizationMetrics.default(visited),
          platform_differences: Stubs::PlatformDifferences.default(visited),
          performance_risk: 1.0,
          rank: 1,
          savings_opportunity: Stubs::SavingsOpportunity.default(visited),
          migration_effort: 'migration_effort',
        }
      end

      def self.stub(stub)
        stub ||= Types::InstanceRecommendationOption.new
        data = {}
        data['instanceType'] = stub[:instance_type] unless stub[:instance_type].nil?
        data['projectedUtilizationMetrics'] = Stubs::ProjectedUtilizationMetrics.stub(stub[:projected_utilization_metrics]) unless stub[:projected_utilization_metrics].nil?
        data['platformDifferences'] = Stubs::PlatformDifferences.stub(stub[:platform_differences]) unless stub[:platform_differences].nil?
        data['performanceRisk'] = Hearth::NumberHelper.serialize(stub[:performance_risk])
        data['rank'] = stub[:rank] unless stub[:rank].nil?
        data['savingsOpportunity'] = Stubs::SavingsOpportunity.stub(stub[:savings_opportunity]) unless stub[:savings_opportunity].nil?
        data['migrationEffort'] = stub[:migration_effort] unless stub[:migration_effort].nil?
        data
      end
    end

    # List Stubber for PlatformDifferences
    class PlatformDifferences
      def self.default(visited=[])
        return nil if visited.include?('PlatformDifferences')
        visited = visited + ['PlatformDifferences']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for InstanceRecommendationFindingReasonCodes
    class InstanceRecommendationFindingReasonCodes
      def self.default(visited=[])
        return nil if visited.include?('InstanceRecommendationFindingReasonCodes')
        visited = visited + ['InstanceRecommendationFindingReasonCodes']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetEC2RecommendationProjectedMetrics
    class GetEC2RecommendationProjectedMetrics
      def self.default(visited=[])
        {
          recommended_option_projected_metrics: Stubs::RecommendedOptionProjectedMetrics.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['recommendedOptionProjectedMetrics'] = Stubs::RecommendedOptionProjectedMetrics.stub(stub[:recommended_option_projected_metrics]) unless stub[:recommended_option_projected_metrics].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for RecommendedOptionProjectedMetrics
    class RecommendedOptionProjectedMetrics
      def self.default(visited=[])
        return nil if visited.include?('RecommendedOptionProjectedMetrics')
        visited = visited + ['RecommendedOptionProjectedMetrics']
        [
          Stubs::RecommendedOptionProjectedMetric.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RecommendedOptionProjectedMetric.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RecommendedOptionProjectedMetric
    class RecommendedOptionProjectedMetric
      def self.default(visited=[])
        return nil if visited.include?('RecommendedOptionProjectedMetric')
        visited = visited + ['RecommendedOptionProjectedMetric']
        {
          recommended_instance_type: 'recommended_instance_type',
          rank: 1,
          projected_metrics: Stubs::ProjectedMetrics.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RecommendedOptionProjectedMetric.new
        data = {}
        data['recommendedInstanceType'] = stub[:recommended_instance_type] unless stub[:recommended_instance_type].nil?
        data['rank'] = stub[:rank] unless stub[:rank].nil?
        data['projectedMetrics'] = Stubs::ProjectedMetrics.stub(stub[:projected_metrics]) unless stub[:projected_metrics].nil?
        data
      end
    end

    # List Stubber for ProjectedMetrics
    class ProjectedMetrics
      def self.default(visited=[])
        return nil if visited.include?('ProjectedMetrics')
        visited = visited + ['ProjectedMetrics']
        [
          Stubs::ProjectedMetric.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ProjectedMetric.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ProjectedMetric
    class ProjectedMetric
      def self.default(visited=[])
        return nil if visited.include?('ProjectedMetric')
        visited = visited + ['ProjectedMetric']
        {
          name: 'name',
          timestamps: Stubs::Timestamps.default(visited),
          values: Stubs::MetricValues.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ProjectedMetric.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['timestamps'] = Stubs::Timestamps.stub(stub[:timestamps]) unless stub[:timestamps].nil?
        data['values'] = Stubs::MetricValues.stub(stub[:values]) unless stub[:values].nil?
        data
      end
    end

    # List Stubber for MetricValues
    class MetricValues
      def self.default(visited=[])
        return nil if visited.include?('MetricValues')
        visited = visited + ['MetricValues']
        [
          1.0
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Hearth::NumberHelper.serialize(element)
        end
        data
      end
    end

    # List Stubber for Timestamps
    class Timestamps
      def self.default(visited=[])
        return nil if visited.include?('Timestamps')
        visited = visited + ['Timestamps']
        [
          Time.now
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Hearth::TimeHelper.to_epoch_seconds(element).to_i unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetEffectiveRecommendationPreferences
    class GetEffectiveRecommendationPreferences
      def self.default(visited=[])
        {
          enhanced_infrastructure_metrics: 'enhanced_infrastructure_metrics',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['enhancedInfrastructureMetrics'] = stub[:enhanced_infrastructure_metrics] unless stub[:enhanced_infrastructure_metrics].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetEnrollmentStatus
    class GetEnrollmentStatus
      def self.default(visited=[])
        {
          status: 'status',
          status_reason: 'status_reason',
          member_accounts_enrolled: false,
          last_updated_timestamp: Time.now,
          number_of_member_accounts_opted_in: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['status'] = stub[:status] unless stub[:status].nil?
        data['statusReason'] = stub[:status_reason] unless stub[:status_reason].nil?
        data['memberAccountsEnrolled'] = stub[:member_accounts_enrolled] unless stub[:member_accounts_enrolled].nil?
        data['lastUpdatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_timestamp]).to_i unless stub[:last_updated_timestamp].nil?
        data['numberOfMemberAccountsOptedIn'] = stub[:number_of_member_accounts_opted_in] unless stub[:number_of_member_accounts_opted_in].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetEnrollmentStatusesForOrganization
    class GetEnrollmentStatusesForOrganization
      def self.default(visited=[])
        {
          account_enrollment_statuses: Stubs::AccountEnrollmentStatuses.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['accountEnrollmentStatuses'] = Stubs::AccountEnrollmentStatuses.stub(stub[:account_enrollment_statuses]) unless stub[:account_enrollment_statuses].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for AccountEnrollmentStatuses
    class AccountEnrollmentStatuses
      def self.default(visited=[])
        return nil if visited.include?('AccountEnrollmentStatuses')
        visited = visited + ['AccountEnrollmentStatuses']
        [
          Stubs::AccountEnrollmentStatus.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AccountEnrollmentStatus.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AccountEnrollmentStatus
    class AccountEnrollmentStatus
      def self.default(visited=[])
        return nil if visited.include?('AccountEnrollmentStatus')
        visited = visited + ['AccountEnrollmentStatus']
        {
          account_id: 'account_id',
          status: 'status',
          status_reason: 'status_reason',
          last_updated_timestamp: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::AccountEnrollmentStatus.new
        data = {}
        data['accountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['statusReason'] = stub[:status_reason] unless stub[:status_reason].nil?
        data['lastUpdatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_timestamp]).to_i unless stub[:last_updated_timestamp].nil?
        data
      end
    end

    # Operation Stubber for GetLambdaFunctionRecommendations
    class GetLambdaFunctionRecommendations
      def self.default(visited=[])
        {
          next_token: 'next_token',
          lambda_function_recommendations: Stubs::LambdaFunctionRecommendations.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['lambdaFunctionRecommendations'] = Stubs::LambdaFunctionRecommendations.stub(stub[:lambda_function_recommendations]) unless stub[:lambda_function_recommendations].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for LambdaFunctionRecommendations
    class LambdaFunctionRecommendations
      def self.default(visited=[])
        return nil if visited.include?('LambdaFunctionRecommendations')
        visited = visited + ['LambdaFunctionRecommendations']
        [
          Stubs::LambdaFunctionRecommendation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::LambdaFunctionRecommendation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for LambdaFunctionRecommendation
    class LambdaFunctionRecommendation
      def self.default(visited=[])
        return nil if visited.include?('LambdaFunctionRecommendation')
        visited = visited + ['LambdaFunctionRecommendation']
        {
          function_arn: 'function_arn',
          function_version: 'function_version',
          account_id: 'account_id',
          current_memory_size: 1,
          number_of_invocations: 1,
          utilization_metrics: Stubs::LambdaFunctionUtilizationMetrics.default(visited),
          lookback_period_in_days: 1.0,
          last_refresh_timestamp: Time.now,
          finding: 'finding',
          finding_reason_codes: Stubs::LambdaFunctionRecommendationFindingReasonCodes.default(visited),
          memory_size_recommendation_options: Stubs::LambdaFunctionMemoryRecommendationOptions.default(visited),
          current_performance_risk: 'current_performance_risk',
        }
      end

      def self.stub(stub)
        stub ||= Types::LambdaFunctionRecommendation.new
        data = {}
        data['functionArn'] = stub[:function_arn] unless stub[:function_arn].nil?
        data['functionVersion'] = stub[:function_version] unless stub[:function_version].nil?
        data['accountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['currentMemorySize'] = stub[:current_memory_size] unless stub[:current_memory_size].nil?
        data['numberOfInvocations'] = stub[:number_of_invocations] unless stub[:number_of_invocations].nil?
        data['utilizationMetrics'] = Stubs::LambdaFunctionUtilizationMetrics.stub(stub[:utilization_metrics]) unless stub[:utilization_metrics].nil?
        data['lookbackPeriodInDays'] = Hearth::NumberHelper.serialize(stub[:lookback_period_in_days])
        data['lastRefreshTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_refresh_timestamp]).to_i unless stub[:last_refresh_timestamp].nil?
        data['finding'] = stub[:finding] unless stub[:finding].nil?
        data['findingReasonCodes'] = Stubs::LambdaFunctionRecommendationFindingReasonCodes.stub(stub[:finding_reason_codes]) unless stub[:finding_reason_codes].nil?
        data['memorySizeRecommendationOptions'] = Stubs::LambdaFunctionMemoryRecommendationOptions.stub(stub[:memory_size_recommendation_options]) unless stub[:memory_size_recommendation_options].nil?
        data['currentPerformanceRisk'] = stub[:current_performance_risk] unless stub[:current_performance_risk].nil?
        data
      end
    end

    # List Stubber for LambdaFunctionMemoryRecommendationOptions
    class LambdaFunctionMemoryRecommendationOptions
      def self.default(visited=[])
        return nil if visited.include?('LambdaFunctionMemoryRecommendationOptions')
        visited = visited + ['LambdaFunctionMemoryRecommendationOptions']
        [
          Stubs::LambdaFunctionMemoryRecommendationOption.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::LambdaFunctionMemoryRecommendationOption.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for LambdaFunctionMemoryRecommendationOption
    class LambdaFunctionMemoryRecommendationOption
      def self.default(visited=[])
        return nil if visited.include?('LambdaFunctionMemoryRecommendationOption')
        visited = visited + ['LambdaFunctionMemoryRecommendationOption']
        {
          rank: 1,
          memory_size: 1,
          projected_utilization_metrics: Stubs::LambdaFunctionMemoryProjectedMetrics.default(visited),
          savings_opportunity: Stubs::SavingsOpportunity.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LambdaFunctionMemoryRecommendationOption.new
        data = {}
        data['rank'] = stub[:rank] unless stub[:rank].nil?
        data['memorySize'] = stub[:memory_size] unless stub[:memory_size].nil?
        data['projectedUtilizationMetrics'] = Stubs::LambdaFunctionMemoryProjectedMetrics.stub(stub[:projected_utilization_metrics]) unless stub[:projected_utilization_metrics].nil?
        data['savingsOpportunity'] = Stubs::SavingsOpportunity.stub(stub[:savings_opportunity]) unless stub[:savings_opportunity].nil?
        data
      end
    end

    # List Stubber for LambdaFunctionMemoryProjectedMetrics
    class LambdaFunctionMemoryProjectedMetrics
      def self.default(visited=[])
        return nil if visited.include?('LambdaFunctionMemoryProjectedMetrics')
        visited = visited + ['LambdaFunctionMemoryProjectedMetrics']
        [
          Stubs::LambdaFunctionMemoryProjectedMetric.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::LambdaFunctionMemoryProjectedMetric.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for LambdaFunctionMemoryProjectedMetric
    class LambdaFunctionMemoryProjectedMetric
      def self.default(visited=[])
        return nil if visited.include?('LambdaFunctionMemoryProjectedMetric')
        visited = visited + ['LambdaFunctionMemoryProjectedMetric']
        {
          name: 'name',
          statistic: 'statistic',
          value: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::LambdaFunctionMemoryProjectedMetric.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['statistic'] = stub[:statistic] unless stub[:statistic].nil?
        data['value'] = Hearth::NumberHelper.serialize(stub[:value])
        data
      end
    end

    # List Stubber for LambdaFunctionRecommendationFindingReasonCodes
    class LambdaFunctionRecommendationFindingReasonCodes
      def self.default(visited=[])
        return nil if visited.include?('LambdaFunctionRecommendationFindingReasonCodes')
        visited = visited + ['LambdaFunctionRecommendationFindingReasonCodes']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for LambdaFunctionUtilizationMetrics
    class LambdaFunctionUtilizationMetrics
      def self.default(visited=[])
        return nil if visited.include?('LambdaFunctionUtilizationMetrics')
        visited = visited + ['LambdaFunctionUtilizationMetrics']
        [
          Stubs::LambdaFunctionUtilizationMetric.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::LambdaFunctionUtilizationMetric.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for LambdaFunctionUtilizationMetric
    class LambdaFunctionUtilizationMetric
      def self.default(visited=[])
        return nil if visited.include?('LambdaFunctionUtilizationMetric')
        visited = visited + ['LambdaFunctionUtilizationMetric']
        {
          name: 'name',
          statistic: 'statistic',
          value: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::LambdaFunctionUtilizationMetric.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['statistic'] = stub[:statistic] unless stub[:statistic].nil?
        data['value'] = Hearth::NumberHelper.serialize(stub[:value])
        data
      end
    end

    # Operation Stubber for GetRecommendationPreferences
    class GetRecommendationPreferences
      def self.default(visited=[])
        {
          next_token: 'next_token',
          recommendation_preferences_details: Stubs::RecommendationPreferencesDetails.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['recommendationPreferencesDetails'] = Stubs::RecommendationPreferencesDetails.stub(stub[:recommendation_preferences_details]) unless stub[:recommendation_preferences_details].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for RecommendationPreferencesDetails
    class RecommendationPreferencesDetails
      def self.default(visited=[])
        return nil if visited.include?('RecommendationPreferencesDetails')
        visited = visited + ['RecommendationPreferencesDetails']
        [
          Stubs::RecommendationPreferencesDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RecommendationPreferencesDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RecommendationPreferencesDetail
    class RecommendationPreferencesDetail
      def self.default(visited=[])
        return nil if visited.include?('RecommendationPreferencesDetail')
        visited = visited + ['RecommendationPreferencesDetail']
        {
          scope: Stubs::Scope.default(visited),
          resource_type: 'resource_type',
          enhanced_infrastructure_metrics: 'enhanced_infrastructure_metrics',
          inferred_workload_types: 'inferred_workload_types',
        }
      end

      def self.stub(stub)
        stub ||= Types::RecommendationPreferencesDetail.new
        data = {}
        data['scope'] = Stubs::Scope.stub(stub[:scope]) unless stub[:scope].nil?
        data['resourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['enhancedInfrastructureMetrics'] = stub[:enhanced_infrastructure_metrics] unless stub[:enhanced_infrastructure_metrics].nil?
        data['inferredWorkloadTypes'] = stub[:inferred_workload_types] unless stub[:inferred_workload_types].nil?
        data
      end
    end

    # Structure Stubber for Scope
    class Scope
      def self.default(visited=[])
        return nil if visited.include?('Scope')
        visited = visited + ['Scope']
        {
          name: 'name',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::Scope.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for GetRecommendationSummaries
    class GetRecommendationSummaries
      def self.default(visited=[])
        {
          next_token: 'next_token',
          recommendation_summaries: Stubs::RecommendationSummaries.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['recommendationSummaries'] = Stubs::RecommendationSummaries.stub(stub[:recommendation_summaries]) unless stub[:recommendation_summaries].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for RecommendationSummaries
    class RecommendationSummaries
      def self.default(visited=[])
        return nil if visited.include?('RecommendationSummaries')
        visited = visited + ['RecommendationSummaries']
        [
          Stubs::RecommendationSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RecommendationSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RecommendationSummary
    class RecommendationSummary
      def self.default(visited=[])
        return nil if visited.include?('RecommendationSummary')
        visited = visited + ['RecommendationSummary']
        {
          summaries: Stubs::Summaries.default(visited),
          recommendation_resource_type: 'recommendation_resource_type',
          account_id: 'account_id',
          savings_opportunity: Stubs::SavingsOpportunity.default(visited),
          current_performance_risk_ratings: Stubs::CurrentPerformanceRiskRatings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RecommendationSummary.new
        data = {}
        data['summaries'] = Stubs::Summaries.stub(stub[:summaries]) unless stub[:summaries].nil?
        data['recommendationResourceType'] = stub[:recommendation_resource_type] unless stub[:recommendation_resource_type].nil?
        data['accountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['savingsOpportunity'] = Stubs::SavingsOpportunity.stub(stub[:savings_opportunity]) unless stub[:savings_opportunity].nil?
        data['currentPerformanceRiskRatings'] = Stubs::CurrentPerformanceRiskRatings.stub(stub[:current_performance_risk_ratings]) unless stub[:current_performance_risk_ratings].nil?
        data
      end
    end

    # Structure Stubber for CurrentPerformanceRiskRatings
    class CurrentPerformanceRiskRatings
      def self.default(visited=[])
        return nil if visited.include?('CurrentPerformanceRiskRatings')
        visited = visited + ['CurrentPerformanceRiskRatings']
        {
          high: 1,
          medium: 1,
          low: 1,
          very_low: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::CurrentPerformanceRiskRatings.new
        data = {}
        data['high'] = stub[:high] unless stub[:high].nil?
        data['medium'] = stub[:medium] unless stub[:medium].nil?
        data['low'] = stub[:low] unless stub[:low].nil?
        data['veryLow'] = stub[:very_low] unless stub[:very_low].nil?
        data
      end
    end

    # List Stubber for Summaries
    class Summaries
      def self.default(visited=[])
        return nil if visited.include?('Summaries')
        visited = visited + ['Summaries']
        [
          Stubs::Summary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Summary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Summary
    class Summary
      def self.default(visited=[])
        return nil if visited.include?('Summary')
        visited = visited + ['Summary']
        {
          name: 'name',
          value: 1.0,
          reason_code_summaries: Stubs::ReasonCodeSummaries.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Summary.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['value'] = Hearth::NumberHelper.serialize(stub[:value])
        data['reasonCodeSummaries'] = Stubs::ReasonCodeSummaries.stub(stub[:reason_code_summaries]) unless stub[:reason_code_summaries].nil?
        data
      end
    end

    # List Stubber for ReasonCodeSummaries
    class ReasonCodeSummaries
      def self.default(visited=[])
        return nil if visited.include?('ReasonCodeSummaries')
        visited = visited + ['ReasonCodeSummaries']
        [
          Stubs::ReasonCodeSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ReasonCodeSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ReasonCodeSummary
    class ReasonCodeSummary
      def self.default(visited=[])
        return nil if visited.include?('ReasonCodeSummary')
        visited = visited + ['ReasonCodeSummary']
        {
          name: 'name',
          value: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::ReasonCodeSummary.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['value'] = Hearth::NumberHelper.serialize(stub[:value])
        data
      end
    end

    # Operation Stubber for PutRecommendationPreferences
    class PutRecommendationPreferences
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateEnrollmentStatus
    class UpdateEnrollmentStatus
      def self.default(visited=[])
        {
          status: 'status',
          status_reason: 'status_reason',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['status'] = stub[:status] unless stub[:status].nil?
        data['statusReason'] = stub[:status_reason] unless stub[:status_reason].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
