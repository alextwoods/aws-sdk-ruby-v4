# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::RoboMaker
  module Validators

    class Arns
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class BatchDeleteWorldsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDeleteWorldsInput, context: context)
        Arns.validate!(input[:worlds], context: "#{context}[:worlds]") unless input[:worlds].nil?
      end
    end

    class BatchDeleteWorldsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDeleteWorldsOutput, context: context)
        Arns.validate!(input[:unprocessed_worlds], context: "#{context}[:unprocessed_worlds]") unless input[:unprocessed_worlds].nil?
      end
    end

    class BatchDescribeSimulationJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDescribeSimulationJobInput, context: context)
        Arns.validate!(input[:jobs], context: "#{context}[:jobs]") unless input[:jobs].nil?
      end
    end

    class BatchDescribeSimulationJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDescribeSimulationJobOutput, context: context)
        SimulationJobs.validate!(input[:jobs], context: "#{context}[:jobs]") unless input[:jobs].nil?
        Arns.validate!(input[:unprocessed_jobs], context: "#{context}[:unprocessed_jobs]") unless input[:unprocessed_jobs].nil?
      end
    end

    class BatchPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchPolicy, context: context)
        Hearth::Validator.validate!(input[:timeout_in_seconds], ::Integer, context: "#{context}[:timeout_in_seconds]")
        Hearth::Validator.validate!(input[:max_concurrency], ::Integer, context: "#{context}[:max_concurrency]")
      end
    end

    class CancelDeploymentJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelDeploymentJobInput, context: context)
        Hearth::Validator.validate!(input[:job], ::String, context: "#{context}[:job]")
      end
    end

    class CancelDeploymentJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelDeploymentJobOutput, context: context)
      end
    end

    class CancelSimulationJobBatchInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelSimulationJobBatchInput, context: context)
        Hearth::Validator.validate!(input[:batch], ::String, context: "#{context}[:batch]")
      end
    end

    class CancelSimulationJobBatchOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelSimulationJobBatchOutput, context: context)
      end
    end

    class CancelSimulationJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelSimulationJobInput, context: context)
        Hearth::Validator.validate!(input[:job], ::String, context: "#{context}[:job]")
      end
    end

    class CancelSimulationJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelSimulationJobOutput, context: context)
      end
    end

    class CancelWorldExportJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelWorldExportJobInput, context: context)
        Hearth::Validator.validate!(input[:job], ::String, context: "#{context}[:job]")
      end
    end

    class CancelWorldExportJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelWorldExportJobOutput, context: context)
      end
    end

    class CancelWorldGenerationJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelWorldGenerationJobInput, context: context)
        Hearth::Validator.validate!(input[:job], ::String, context: "#{context}[:job]")
      end
    end

    class CancelWorldGenerationJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelWorldGenerationJobOutput, context: context)
      end
    end

    class CommandList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Compute
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Compute, context: context)
        Hearth::Validator.validate!(input[:simulation_unit_limit], ::Integer, context: "#{context}[:simulation_unit_limit]")
        Hearth::Validator.validate!(input[:compute_type], ::String, context: "#{context}[:compute_type]")
        Hearth::Validator.validate!(input[:gpu_unit_limit], ::Integer, context: "#{context}[:gpu_unit_limit]")
      end
    end

    class ComputeResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ComputeResponse, context: context)
        Hearth::Validator.validate!(input[:simulation_unit_limit], ::Integer, context: "#{context}[:simulation_unit_limit]")
        Hearth::Validator.validate!(input[:compute_type], ::String, context: "#{context}[:compute_type]")
        Hearth::Validator.validate!(input[:gpu_unit_limit], ::Integer, context: "#{context}[:gpu_unit_limit]")
      end
    end

    class ConcurrentDeploymentException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConcurrentDeploymentException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CreateDeploymentJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDeploymentJobInput, context: context)
        DeploymentConfig.validate!(input[:deployment_config], context: "#{context}[:deployment_config]") unless input[:deployment_config].nil?
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:fleet], ::String, context: "#{context}[:fleet]")
        DeploymentApplicationConfigs.validate!(input[:deployment_application_configs], context: "#{context}[:deployment_application_configs]") unless input[:deployment_application_configs].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateDeploymentJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDeploymentJobOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:fleet], ::String, context: "#{context}[:fleet]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        DeploymentApplicationConfigs.validate!(input[:deployment_application_configs], context: "#{context}[:deployment_application_configs]") unless input[:deployment_application_configs].nil?
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        Hearth::Validator.validate!(input[:failure_code], ::String, context: "#{context}[:failure_code]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        DeploymentConfig.validate!(input[:deployment_config], context: "#{context}[:deployment_config]") unless input[:deployment_config].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateFleetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFleetInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateFleetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFleetOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateRobotApplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRobotApplicationInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        SourceConfigs.validate!(input[:sources], context: "#{context}[:sources]") unless input[:sources].nil?
        RobotSoftwareSuite.validate!(input[:robot_software_suite], context: "#{context}[:robot_software_suite]") unless input[:robot_software_suite].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Environment.validate!(input[:environment], context: "#{context}[:environment]") unless input[:environment].nil?
      end
    end

    class CreateRobotApplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRobotApplicationOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Sources.validate!(input[:sources], context: "#{context}[:sources]") unless input[:sources].nil?
        RobotSoftwareSuite.validate!(input[:robot_software_suite], context: "#{context}[:robot_software_suite]") unless input[:robot_software_suite].nil?
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Environment.validate!(input[:environment], context: "#{context}[:environment]") unless input[:environment].nil?
      end
    end

    class CreateRobotApplicationVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRobotApplicationVersionInput, context: context)
        Hearth::Validator.validate!(input[:application], ::String, context: "#{context}[:application]")
        Hearth::Validator.validate!(input[:current_revision_id], ::String, context: "#{context}[:current_revision_id]")
        S3Etags.validate!(input[:s3_etags], context: "#{context}[:s3_etags]") unless input[:s3_etags].nil?
        Hearth::Validator.validate!(input[:image_digest], ::String, context: "#{context}[:image_digest]")
      end
    end

    class CreateRobotApplicationVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRobotApplicationVersionOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Sources.validate!(input[:sources], context: "#{context}[:sources]") unless input[:sources].nil?
        RobotSoftwareSuite.validate!(input[:robot_software_suite], context: "#{context}[:robot_software_suite]") unless input[:robot_software_suite].nil?
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
        Environment.validate!(input[:environment], context: "#{context}[:environment]") unless input[:environment].nil?
      end
    end

    class CreateRobotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRobotInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:architecture], ::String, context: "#{context}[:architecture]")
        Hearth::Validator.validate!(input[:greengrass_group_id], ::String, context: "#{context}[:greengrass_group_id]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateRobotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRobotOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:greengrass_group_id], ::String, context: "#{context}[:greengrass_group_id]")
        Hearth::Validator.validate!(input[:architecture], ::String, context: "#{context}[:architecture]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateSimulationApplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSimulationApplicationInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        SourceConfigs.validate!(input[:sources], context: "#{context}[:sources]") unless input[:sources].nil?
        SimulationSoftwareSuite.validate!(input[:simulation_software_suite], context: "#{context}[:simulation_software_suite]") unless input[:simulation_software_suite].nil?
        RobotSoftwareSuite.validate!(input[:robot_software_suite], context: "#{context}[:robot_software_suite]") unless input[:robot_software_suite].nil?
        RenderingEngine.validate!(input[:rendering_engine], context: "#{context}[:rendering_engine]") unless input[:rendering_engine].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Environment.validate!(input[:environment], context: "#{context}[:environment]") unless input[:environment].nil?
      end
    end

    class CreateSimulationApplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSimulationApplicationOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Sources.validate!(input[:sources], context: "#{context}[:sources]") unless input[:sources].nil?
        SimulationSoftwareSuite.validate!(input[:simulation_software_suite], context: "#{context}[:simulation_software_suite]") unless input[:simulation_software_suite].nil?
        RobotSoftwareSuite.validate!(input[:robot_software_suite], context: "#{context}[:robot_software_suite]") unless input[:robot_software_suite].nil?
        RenderingEngine.validate!(input[:rendering_engine], context: "#{context}[:rendering_engine]") unless input[:rendering_engine].nil?
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Environment.validate!(input[:environment], context: "#{context}[:environment]") unless input[:environment].nil?
      end
    end

    class CreateSimulationApplicationVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSimulationApplicationVersionInput, context: context)
        Hearth::Validator.validate!(input[:application], ::String, context: "#{context}[:application]")
        Hearth::Validator.validate!(input[:current_revision_id], ::String, context: "#{context}[:current_revision_id]")
        S3Etags.validate!(input[:s3_etags], context: "#{context}[:s3_etags]") unless input[:s3_etags].nil?
        Hearth::Validator.validate!(input[:image_digest], ::String, context: "#{context}[:image_digest]")
      end
    end

    class CreateSimulationApplicationVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSimulationApplicationVersionOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Sources.validate!(input[:sources], context: "#{context}[:sources]") unless input[:sources].nil?
        SimulationSoftwareSuite.validate!(input[:simulation_software_suite], context: "#{context}[:simulation_software_suite]") unless input[:simulation_software_suite].nil?
        RobotSoftwareSuite.validate!(input[:robot_software_suite], context: "#{context}[:robot_software_suite]") unless input[:robot_software_suite].nil?
        RenderingEngine.validate!(input[:rendering_engine], context: "#{context}[:rendering_engine]") unless input[:rendering_engine].nil?
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
        Environment.validate!(input[:environment], context: "#{context}[:environment]") unless input[:environment].nil?
      end
    end

    class CreateSimulationJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSimulationJobInput, context: context)
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        OutputLocation.validate!(input[:output_location], context: "#{context}[:output_location]") unless input[:output_location].nil?
        LoggingConfig.validate!(input[:logging_config], context: "#{context}[:logging_config]") unless input[:logging_config].nil?
        Hearth::Validator.validate!(input[:max_job_duration_in_seconds], ::Integer, context: "#{context}[:max_job_duration_in_seconds]")
        Hearth::Validator.validate!(input[:iam_role], ::String, context: "#{context}[:iam_role]")
        Hearth::Validator.validate!(input[:failure_behavior], ::String, context: "#{context}[:failure_behavior]")
        RobotApplicationConfigs.validate!(input[:robot_applications], context: "#{context}[:robot_applications]") unless input[:robot_applications].nil?
        SimulationApplicationConfigs.validate!(input[:simulation_applications], context: "#{context}[:simulation_applications]") unless input[:simulation_applications].nil?
        DataSourceConfigs.validate!(input[:data_sources], context: "#{context}[:data_sources]") unless input[:data_sources].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        VPCConfig.validate!(input[:vpc_config], context: "#{context}[:vpc_config]") unless input[:vpc_config].nil?
        Compute.validate!(input[:compute], context: "#{context}[:compute]") unless input[:compute].nil?
      end
    end

    class CreateSimulationJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSimulationJobOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:last_started_at], ::Time, context: "#{context}[:last_started_at]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
        Hearth::Validator.validate!(input[:failure_behavior], ::String, context: "#{context}[:failure_behavior]")
        Hearth::Validator.validate!(input[:failure_code], ::String, context: "#{context}[:failure_code]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        OutputLocation.validate!(input[:output_location], context: "#{context}[:output_location]") unless input[:output_location].nil?
        LoggingConfig.validate!(input[:logging_config], context: "#{context}[:logging_config]") unless input[:logging_config].nil?
        Hearth::Validator.validate!(input[:max_job_duration_in_seconds], ::Integer, context: "#{context}[:max_job_duration_in_seconds]")
        Hearth::Validator.validate!(input[:simulation_time_millis], ::Integer, context: "#{context}[:simulation_time_millis]")
        Hearth::Validator.validate!(input[:iam_role], ::String, context: "#{context}[:iam_role]")
        RobotApplicationConfigs.validate!(input[:robot_applications], context: "#{context}[:robot_applications]") unless input[:robot_applications].nil?
        SimulationApplicationConfigs.validate!(input[:simulation_applications], context: "#{context}[:simulation_applications]") unless input[:simulation_applications].nil?
        DataSources.validate!(input[:data_sources], context: "#{context}[:data_sources]") unless input[:data_sources].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        VPCConfigResponse.validate!(input[:vpc_config], context: "#{context}[:vpc_config]") unless input[:vpc_config].nil?
        ComputeResponse.validate!(input[:compute], context: "#{context}[:compute]") unless input[:compute].nil?
      end
    end

    class CreateSimulationJobRequests
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SimulationJobRequest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CreateWorldExportJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateWorldExportJobInput, context: context)
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Arns.validate!(input[:worlds], context: "#{context}[:worlds]") unless input[:worlds].nil?
        OutputLocation.validate!(input[:output_location], context: "#{context}[:output_location]") unless input[:output_location].nil?
        Hearth::Validator.validate!(input[:iam_role], ::String, context: "#{context}[:iam_role]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateWorldExportJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateWorldExportJobOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:failure_code], ::String, context: "#{context}[:failure_code]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        OutputLocation.validate!(input[:output_location], context: "#{context}[:output_location]") unless input[:output_location].nil?
        Hearth::Validator.validate!(input[:iam_role], ::String, context: "#{context}[:iam_role]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateWorldGenerationJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateWorldGenerationJobInput, context: context)
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:template], ::String, context: "#{context}[:template]")
        WorldCount.validate!(input[:world_count], context: "#{context}[:world_count]") unless input[:world_count].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        TagMap.validate!(input[:world_tags], context: "#{context}[:world_tags]") unless input[:world_tags].nil?
      end
    end

    class CreateWorldGenerationJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateWorldGenerationJobOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:failure_code], ::String, context: "#{context}[:failure_code]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:template], ::String, context: "#{context}[:template]")
        WorldCount.validate!(input[:world_count], context: "#{context}[:world_count]") unless input[:world_count].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        TagMap.validate!(input[:world_tags], context: "#{context}[:world_tags]") unless input[:world_tags].nil?
      end
    end

    class CreateWorldTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateWorldTemplateInput, context: context)
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:template_body], ::String, context: "#{context}[:template_body]")
        TemplateLocation.validate!(input[:template_location], context: "#{context}[:template_location]") unless input[:template_location].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateWorldTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateWorldTemplateOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class DataSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataSource, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:s3_bucket], ::String, context: "#{context}[:s3_bucket]")
        S3KeyOutputs.validate!(input[:s3_keys], context: "#{context}[:s3_keys]") unless input[:s3_keys].nil?
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:destination], ::String, context: "#{context}[:destination]")
      end
    end

    class DataSourceConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataSourceConfig, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:s3_bucket], ::String, context: "#{context}[:s3_bucket]")
        S3KeysOrPrefixes.validate!(input[:s3_keys], context: "#{context}[:s3_keys]") unless input[:s3_keys].nil?
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:destination], ::String, context: "#{context}[:destination]")
      end
    end

    class DataSourceConfigs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DataSourceConfig.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DataSourceNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DataSources
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DataSource.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeleteFleetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFleetInput, context: context)
        Hearth::Validator.validate!(input[:fleet], ::String, context: "#{context}[:fleet]")
      end
    end

    class DeleteFleetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFleetOutput, context: context)
      end
    end

    class DeleteRobotApplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRobotApplicationInput, context: context)
        Hearth::Validator.validate!(input[:application], ::String, context: "#{context}[:application]")
        Hearth::Validator.validate!(input[:application_version], ::String, context: "#{context}[:application_version]")
      end
    end

    class DeleteRobotApplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRobotApplicationOutput, context: context)
      end
    end

    class DeleteRobotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRobotInput, context: context)
        Hearth::Validator.validate!(input[:robot], ::String, context: "#{context}[:robot]")
      end
    end

    class DeleteRobotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRobotOutput, context: context)
      end
    end

    class DeleteSimulationApplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSimulationApplicationInput, context: context)
        Hearth::Validator.validate!(input[:application], ::String, context: "#{context}[:application]")
        Hearth::Validator.validate!(input[:application_version], ::String, context: "#{context}[:application_version]")
      end
    end

    class DeleteSimulationApplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSimulationApplicationOutput, context: context)
      end
    end

    class DeleteWorldTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteWorldTemplateInput, context: context)
        Hearth::Validator.validate!(input[:template], ::String, context: "#{context}[:template]")
      end
    end

    class DeleteWorldTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteWorldTemplateOutput, context: context)
      end
    end

    class DeploymentApplicationConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeploymentApplicationConfig, context: context)
        Hearth::Validator.validate!(input[:application], ::String, context: "#{context}[:application]")
        Hearth::Validator.validate!(input[:application_version], ::String, context: "#{context}[:application_version]")
        DeploymentLaunchConfig.validate!(input[:launch_config], context: "#{context}[:launch_config]") unless input[:launch_config].nil?
      end
    end

    class DeploymentApplicationConfigs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DeploymentApplicationConfig.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeploymentConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeploymentConfig, context: context)
        Hearth::Validator.validate!(input[:concurrent_deployment_percentage], ::Integer, context: "#{context}[:concurrent_deployment_percentage]")
        Hearth::Validator.validate!(input[:failure_threshold_percentage], ::Integer, context: "#{context}[:failure_threshold_percentage]")
        Hearth::Validator.validate!(input[:robot_deployment_timeout_in_seconds], ::Integer, context: "#{context}[:robot_deployment_timeout_in_seconds]")
        S3Object.validate!(input[:download_condition_file], context: "#{context}[:download_condition_file]") unless input[:download_condition_file].nil?
      end
    end

    class DeploymentJob
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeploymentJob, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:fleet], ::String, context: "#{context}[:fleet]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        DeploymentApplicationConfigs.validate!(input[:deployment_application_configs], context: "#{context}[:deployment_application_configs]") unless input[:deployment_application_configs].nil?
        DeploymentConfig.validate!(input[:deployment_config], context: "#{context}[:deployment_config]") unless input[:deployment_config].nil?
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        Hearth::Validator.validate!(input[:failure_code], ::String, context: "#{context}[:failure_code]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
      end
    end

    class DeploymentJobs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DeploymentJob.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeploymentLaunchConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeploymentLaunchConfig, context: context)
        Hearth::Validator.validate!(input[:package_name], ::String, context: "#{context}[:package_name]")
        Hearth::Validator.validate!(input[:pre_launch_file], ::String, context: "#{context}[:pre_launch_file]")
        Hearth::Validator.validate!(input[:launch_file], ::String, context: "#{context}[:launch_file]")
        Hearth::Validator.validate!(input[:post_launch_file], ::String, context: "#{context}[:post_launch_file]")
        EnvironmentVariableMap.validate!(input[:environment_variables], context: "#{context}[:environment_variables]") unless input[:environment_variables].nil?
      end
    end

    class DeregisterRobotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterRobotInput, context: context)
        Hearth::Validator.validate!(input[:fleet], ::String, context: "#{context}[:fleet]")
        Hearth::Validator.validate!(input[:robot], ::String, context: "#{context}[:robot]")
      end
    end

    class DeregisterRobotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterRobotOutput, context: context)
        Hearth::Validator.validate!(input[:fleet], ::String, context: "#{context}[:fleet]")
        Hearth::Validator.validate!(input[:robot], ::String, context: "#{context}[:robot]")
      end
    end

    class DescribeDeploymentJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDeploymentJobInput, context: context)
        Hearth::Validator.validate!(input[:job], ::String, context: "#{context}[:job]")
      end
    end

    class DescribeDeploymentJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDeploymentJobOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:fleet], ::String, context: "#{context}[:fleet]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        DeploymentConfig.validate!(input[:deployment_config], context: "#{context}[:deployment_config]") unless input[:deployment_config].nil?
        DeploymentApplicationConfigs.validate!(input[:deployment_application_configs], context: "#{context}[:deployment_application_configs]") unless input[:deployment_application_configs].nil?
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        Hearth::Validator.validate!(input[:failure_code], ::String, context: "#{context}[:failure_code]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        RobotDeploymentSummary.validate!(input[:robot_deployment_summary], context: "#{context}[:robot_deployment_summary]") unless input[:robot_deployment_summary].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class DescribeFleetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFleetInput, context: context)
        Hearth::Validator.validate!(input[:fleet], ::String, context: "#{context}[:fleet]")
      end
    end

    class DescribeFleetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFleetOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Robots.validate!(input[:robots], context: "#{context}[:robots]") unless input[:robots].nil?
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_deployment_status], ::String, context: "#{context}[:last_deployment_status]")
        Hearth::Validator.validate!(input[:last_deployment_job], ::String, context: "#{context}[:last_deployment_job]")
        Hearth::Validator.validate!(input[:last_deployment_time], ::Time, context: "#{context}[:last_deployment_time]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class DescribeRobotApplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRobotApplicationInput, context: context)
        Hearth::Validator.validate!(input[:application], ::String, context: "#{context}[:application]")
        Hearth::Validator.validate!(input[:application_version], ::String, context: "#{context}[:application_version]")
      end
    end

    class DescribeRobotApplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRobotApplicationOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Sources.validate!(input[:sources], context: "#{context}[:sources]") unless input[:sources].nil?
        RobotSoftwareSuite.validate!(input[:robot_software_suite], context: "#{context}[:robot_software_suite]") unless input[:robot_software_suite].nil?
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Environment.validate!(input[:environment], context: "#{context}[:environment]") unless input[:environment].nil?
        Hearth::Validator.validate!(input[:image_digest], ::String, context: "#{context}[:image_digest]")
      end
    end

    class DescribeRobotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRobotInput, context: context)
        Hearth::Validator.validate!(input[:robot], ::String, context: "#{context}[:robot]")
      end
    end

    class DescribeRobotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRobotOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:fleet_arn], ::String, context: "#{context}[:fleet_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:greengrass_group_id], ::String, context: "#{context}[:greengrass_group_id]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:architecture], ::String, context: "#{context}[:architecture]")
        Hearth::Validator.validate!(input[:last_deployment_job], ::String, context: "#{context}[:last_deployment_job]")
        Hearth::Validator.validate!(input[:last_deployment_time], ::Time, context: "#{context}[:last_deployment_time]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class DescribeSimulationApplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSimulationApplicationInput, context: context)
        Hearth::Validator.validate!(input[:application], ::String, context: "#{context}[:application]")
        Hearth::Validator.validate!(input[:application_version], ::String, context: "#{context}[:application_version]")
      end
    end

    class DescribeSimulationApplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSimulationApplicationOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Sources.validate!(input[:sources], context: "#{context}[:sources]") unless input[:sources].nil?
        SimulationSoftwareSuite.validate!(input[:simulation_software_suite], context: "#{context}[:simulation_software_suite]") unless input[:simulation_software_suite].nil?
        RobotSoftwareSuite.validate!(input[:robot_software_suite], context: "#{context}[:robot_software_suite]") unless input[:robot_software_suite].nil?
        RenderingEngine.validate!(input[:rendering_engine], context: "#{context}[:rendering_engine]") unless input[:rendering_engine].nil?
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Environment.validate!(input[:environment], context: "#{context}[:environment]") unless input[:environment].nil?
        Hearth::Validator.validate!(input[:image_digest], ::String, context: "#{context}[:image_digest]")
      end
    end

    class DescribeSimulationJobBatchInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSimulationJobBatchInput, context: context)
        Hearth::Validator.validate!(input[:batch], ::String, context: "#{context}[:batch]")
      end
    end

    class DescribeSimulationJobBatchOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSimulationJobBatchOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        BatchPolicy.validate!(input[:batch_policy], context: "#{context}[:batch_policy]") unless input[:batch_policy].nil?
        Hearth::Validator.validate!(input[:failure_code], ::String, context: "#{context}[:failure_code]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        FailedCreateSimulationJobRequests.validate!(input[:failed_requests], context: "#{context}[:failed_requests]") unless input[:failed_requests].nil?
        CreateSimulationJobRequests.validate!(input[:pending_requests], context: "#{context}[:pending_requests]") unless input[:pending_requests].nil?
        SimulationJobSummaries.validate!(input[:created_requests], context: "#{context}[:created_requests]") unless input[:created_requests].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class DescribeSimulationJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSimulationJobInput, context: context)
        Hearth::Validator.validate!(input[:job], ::String, context: "#{context}[:job]")
      end
    end

    class DescribeSimulationJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSimulationJobOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:last_started_at], ::Time, context: "#{context}[:last_started_at]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
        Hearth::Validator.validate!(input[:failure_behavior], ::String, context: "#{context}[:failure_behavior]")
        Hearth::Validator.validate!(input[:failure_code], ::String, context: "#{context}[:failure_code]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        OutputLocation.validate!(input[:output_location], context: "#{context}[:output_location]") unless input[:output_location].nil?
        LoggingConfig.validate!(input[:logging_config], context: "#{context}[:logging_config]") unless input[:logging_config].nil?
        Hearth::Validator.validate!(input[:max_job_duration_in_seconds], ::Integer, context: "#{context}[:max_job_duration_in_seconds]")
        Hearth::Validator.validate!(input[:simulation_time_millis], ::Integer, context: "#{context}[:simulation_time_millis]")
        Hearth::Validator.validate!(input[:iam_role], ::String, context: "#{context}[:iam_role]")
        RobotApplicationConfigs.validate!(input[:robot_applications], context: "#{context}[:robot_applications]") unless input[:robot_applications].nil?
        SimulationApplicationConfigs.validate!(input[:simulation_applications], context: "#{context}[:simulation_applications]") unless input[:simulation_applications].nil?
        DataSources.validate!(input[:data_sources], context: "#{context}[:data_sources]") unless input[:data_sources].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        VPCConfigResponse.validate!(input[:vpc_config], context: "#{context}[:vpc_config]") unless input[:vpc_config].nil?
        NetworkInterface.validate!(input[:network_interface], context: "#{context}[:network_interface]") unless input[:network_interface].nil?
        ComputeResponse.validate!(input[:compute], context: "#{context}[:compute]") unless input[:compute].nil?
      end
    end

    class DescribeWorldExportJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeWorldExportJobInput, context: context)
        Hearth::Validator.validate!(input[:job], ::String, context: "#{context}[:job]")
      end
    end

    class DescribeWorldExportJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeWorldExportJobOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:failure_code], ::String, context: "#{context}[:failure_code]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Arns.validate!(input[:worlds], context: "#{context}[:worlds]") unless input[:worlds].nil?
        OutputLocation.validate!(input[:output_location], context: "#{context}[:output_location]") unless input[:output_location].nil?
        Hearth::Validator.validate!(input[:iam_role], ::String, context: "#{context}[:iam_role]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class DescribeWorldGenerationJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeWorldGenerationJobInput, context: context)
        Hearth::Validator.validate!(input[:job], ::String, context: "#{context}[:job]")
      end
    end

    class DescribeWorldGenerationJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeWorldGenerationJobOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:failure_code], ::String, context: "#{context}[:failure_code]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:template], ::String, context: "#{context}[:template]")
        WorldCount.validate!(input[:world_count], context: "#{context}[:world_count]") unless input[:world_count].nil?
        FinishedWorldsSummary.validate!(input[:finished_worlds_summary], context: "#{context}[:finished_worlds_summary]") unless input[:finished_worlds_summary].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        TagMap.validate!(input[:world_tags], context: "#{context}[:world_tags]") unless input[:world_tags].nil?
      end
    end

    class DescribeWorldInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeWorldInput, context: context)
        Hearth::Validator.validate!(input[:world], ::String, context: "#{context}[:world]")
      end
    end

    class DescribeWorldOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeWorldOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:generation_job], ::String, context: "#{context}[:generation_job]")
        Hearth::Validator.validate!(input[:template], ::String, context: "#{context}[:template]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:world_description_body], ::String, context: "#{context}[:world_description_body]")
      end
    end

    class DescribeWorldTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeWorldTemplateInput, context: context)
        Hearth::Validator.validate!(input[:template], ::String, context: "#{context}[:template]")
      end
    end

    class DescribeWorldTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeWorldTemplateOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class Environment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Environment, context: context)
        Hearth::Validator.validate!(input[:uri], ::String, context: "#{context}[:uri]")
      end
    end

    class EnvironmentVariableMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class FailedCreateSimulationJobRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FailedCreateSimulationJobRequest, context: context)
        SimulationJobRequest.validate!(input[:request], context: "#{context}[:request]") unless input[:request].nil?
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        Hearth::Validator.validate!(input[:failure_code], ::String, context: "#{context}[:failure_code]")
        Hearth::Validator.validate!(input[:failed_at], ::Time, context: "#{context}[:failed_at]")
      end
    end

    class FailedCreateSimulationJobRequests
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          FailedCreateSimulationJobRequest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FailureSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FailureSummary, context: context)
        Hearth::Validator.validate!(input[:total_failure_count], ::Integer, context: "#{context}[:total_failure_count]")
        WorldFailures.validate!(input[:failures], context: "#{context}[:failures]") unless input[:failures].nil?
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

    class FinishedWorldsSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FinishedWorldsSummary, context: context)
        Hearth::Validator.validate!(input[:finished_count], ::Integer, context: "#{context}[:finished_count]")
        Arns.validate!(input[:succeeded_worlds], context: "#{context}[:succeeded_worlds]") unless input[:succeeded_worlds].nil?
        FailureSummary.validate!(input[:failure_summary], context: "#{context}[:failure_summary]") unless input[:failure_summary].nil?
      end
    end

    class Fleet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Fleet, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_deployment_status], ::String, context: "#{context}[:last_deployment_status]")
        Hearth::Validator.validate!(input[:last_deployment_job], ::String, context: "#{context}[:last_deployment_job]")
        Hearth::Validator.validate!(input[:last_deployment_time], ::Time, context: "#{context}[:last_deployment_time]")
      end
    end

    class Fleets
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Fleet.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GetWorldTemplateBodyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetWorldTemplateBodyInput, context: context)
        Hearth::Validator.validate!(input[:template], ::String, context: "#{context}[:template]")
        Hearth::Validator.validate!(input[:generation_job], ::String, context: "#{context}[:generation_job]")
      end
    end

    class GetWorldTemplateBodyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetWorldTemplateBodyOutput, context: context)
        Hearth::Validator.validate!(input[:template_body], ::String, context: "#{context}[:template_body]")
      end
    end

    class IdempotentParameterMismatchException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IdempotentParameterMismatchException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidParameterException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidParameterException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LaunchConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LaunchConfig, context: context)
        Hearth::Validator.validate!(input[:package_name], ::String, context: "#{context}[:package_name]")
        Hearth::Validator.validate!(input[:launch_file], ::String, context: "#{context}[:launch_file]")
        EnvironmentVariableMap.validate!(input[:environment_variables], context: "#{context}[:environment_variables]") unless input[:environment_variables].nil?
        PortForwardingConfig.validate!(input[:port_forwarding_config], context: "#{context}[:port_forwarding_config]") unless input[:port_forwarding_config].nil?
        Hearth::Validator.validate!(input[:stream_ui], ::TrueClass, ::FalseClass, context: "#{context}[:stream_ui]")
        CommandList.validate!(input[:command], context: "#{context}[:command]") unless input[:command].nil?
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListDeploymentJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDeploymentJobsInput, context: context)
        Filters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListDeploymentJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDeploymentJobsOutput, context: context)
        DeploymentJobs.validate!(input[:deployment_jobs], context: "#{context}[:deployment_jobs]") unless input[:deployment_jobs].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListFleetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFleetsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Filters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
      end
    end

    class ListFleetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFleetsOutput, context: context)
        Fleets.validate!(input[:fleet_details], context: "#{context}[:fleet_details]") unless input[:fleet_details].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListRobotApplicationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRobotApplicationsInput, context: context)
        Hearth::Validator.validate!(input[:version_qualifier], ::String, context: "#{context}[:version_qualifier]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Filters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
      end
    end

    class ListRobotApplicationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRobotApplicationsOutput, context: context)
        RobotApplicationSummaries.validate!(input[:robot_application_summaries], context: "#{context}[:robot_application_summaries]") unless input[:robot_application_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListRobotsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRobotsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Filters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
      end
    end

    class ListRobotsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRobotsOutput, context: context)
        Robots.validate!(input[:robots], context: "#{context}[:robots]") unless input[:robots].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSimulationApplicationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSimulationApplicationsInput, context: context)
        Hearth::Validator.validate!(input[:version_qualifier], ::String, context: "#{context}[:version_qualifier]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Filters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
      end
    end

    class ListSimulationApplicationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSimulationApplicationsOutput, context: context)
        SimulationApplicationSummaries.validate!(input[:simulation_application_summaries], context: "#{context}[:simulation_application_summaries]") unless input[:simulation_application_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSimulationJobBatchesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSimulationJobBatchesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Filters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
      end
    end

    class ListSimulationJobBatchesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSimulationJobBatchesOutput, context: context)
        SimulationJobBatchSummaries.validate!(input[:simulation_job_batch_summaries], context: "#{context}[:simulation_job_batch_summaries]") unless input[:simulation_job_batch_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSimulationJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSimulationJobsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Filters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
      end
    end

    class ListSimulationJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSimulationJobsOutput, context: context)
        SimulationJobSummaries.validate!(input[:simulation_job_summaries], context: "#{context}[:simulation_job_summaries]") unless input[:simulation_job_summaries].nil?
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
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ListWorldExportJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListWorldExportJobsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Filters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
      end
    end

    class ListWorldExportJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListWorldExportJobsOutput, context: context)
        WorldExportJobSummaries.validate!(input[:world_export_job_summaries], context: "#{context}[:world_export_job_summaries]") unless input[:world_export_job_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListWorldGenerationJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListWorldGenerationJobsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Filters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
      end
    end

    class ListWorldGenerationJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListWorldGenerationJobsOutput, context: context)
        WorldGenerationJobSummaries.validate!(input[:world_generation_job_summaries], context: "#{context}[:world_generation_job_summaries]") unless input[:world_generation_job_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListWorldTemplatesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListWorldTemplatesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListWorldTemplatesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListWorldTemplatesOutput, context: context)
        TemplateSummaries.validate!(input[:template_summaries], context: "#{context}[:template_summaries]") unless input[:template_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListWorldsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListWorldsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Filters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
      end
    end

    class ListWorldsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListWorldsOutput, context: context)
        WorldSummaries.validate!(input[:world_summaries], context: "#{context}[:world_summaries]") unless input[:world_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class LoggingConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LoggingConfig, context: context)
        Hearth::Validator.validate!(input[:record_all_ros_topics], ::TrueClass, ::FalseClass, context: "#{context}[:record_all_ros_topics]")
      end
    end

    class NetworkInterface
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NetworkInterface, context: context)
        Hearth::Validator.validate!(input[:network_interface_id], ::String, context: "#{context}[:network_interface_id]")
        Hearth::Validator.validate!(input[:private_ip_address], ::String, context: "#{context}[:private_ip_address]")
        Hearth::Validator.validate!(input[:public_ip_address], ::String, context: "#{context}[:public_ip_address]")
      end
    end

    class OutputLocation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OutputLocation, context: context)
        Hearth::Validator.validate!(input[:s3_bucket], ::String, context: "#{context}[:s3_bucket]")
        Hearth::Validator.validate!(input[:s3_prefix], ::String, context: "#{context}[:s3_prefix]")
      end
    end

    class PortForwardingConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PortForwardingConfig, context: context)
        PortMappingList.validate!(input[:port_mappings], context: "#{context}[:port_mappings]") unless input[:port_mappings].nil?
      end
    end

    class PortMapping
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PortMapping, context: context)
        Hearth::Validator.validate!(input[:job_port], ::Integer, context: "#{context}[:job_port]")
        Hearth::Validator.validate!(input[:application_port], ::Integer, context: "#{context}[:application_port]")
        Hearth::Validator.validate!(input[:enable_on_public_ip], ::TrueClass, ::FalseClass, context: "#{context}[:enable_on_public_ip]")
      end
    end

    class PortMappingList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PortMapping.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ProgressDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProgressDetail, context: context)
        Hearth::Validator.validate!(input[:current_progress], ::String, context: "#{context}[:current_progress]")
        Hearth::Validator.validate!(input[:percent_done], ::Float, context: "#{context}[:percent_done]")
        Hearth::Validator.validate!(input[:estimated_time_remaining_seconds], ::Integer, context: "#{context}[:estimated_time_remaining_seconds]")
        Hearth::Validator.validate!(input[:target_resource], ::String, context: "#{context}[:target_resource]")
      end
    end

    class RegisterRobotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterRobotInput, context: context)
        Hearth::Validator.validate!(input[:fleet], ::String, context: "#{context}[:fleet]")
        Hearth::Validator.validate!(input[:robot], ::String, context: "#{context}[:robot]")
      end
    end

    class RegisterRobotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterRobotOutput, context: context)
        Hearth::Validator.validate!(input[:fleet], ::String, context: "#{context}[:fleet]")
        Hearth::Validator.validate!(input[:robot], ::String, context: "#{context}[:robot]")
      end
    end

    class RenderingEngine
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RenderingEngine, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class ResourceAlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceAlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RestartSimulationJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RestartSimulationJobInput, context: context)
        Hearth::Validator.validate!(input[:job], ::String, context: "#{context}[:job]")
      end
    end

    class RestartSimulationJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RestartSimulationJobOutput, context: context)
      end
    end

    class Robot
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Robot, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:fleet_arn], ::String, context: "#{context}[:fleet_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:green_grass_group_id], ::String, context: "#{context}[:green_grass_group_id]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:architecture], ::String, context: "#{context}[:architecture]")
        Hearth::Validator.validate!(input[:last_deployment_job], ::String, context: "#{context}[:last_deployment_job]")
        Hearth::Validator.validate!(input[:last_deployment_time], ::Time, context: "#{context}[:last_deployment_time]")
      end
    end

    class RobotApplicationConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RobotApplicationConfig, context: context)
        Hearth::Validator.validate!(input[:application], ::String, context: "#{context}[:application]")
        Hearth::Validator.validate!(input[:application_version], ::String, context: "#{context}[:application_version]")
        LaunchConfig.validate!(input[:launch_config], context: "#{context}[:launch_config]") unless input[:launch_config].nil?
        UploadConfigurations.validate!(input[:upload_configurations], context: "#{context}[:upload_configurations]") unless input[:upload_configurations].nil?
        Hearth::Validator.validate!(input[:use_default_upload_configurations], ::TrueClass, ::FalseClass, context: "#{context}[:use_default_upload_configurations]")
        Tools.validate!(input[:tools], context: "#{context}[:tools]") unless input[:tools].nil?
        Hearth::Validator.validate!(input[:use_default_tools], ::TrueClass, ::FalseClass, context: "#{context}[:use_default_tools]")
      end
    end

    class RobotApplicationConfigs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RobotApplicationConfig.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RobotApplicationNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class RobotApplicationSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RobotApplicationSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RobotApplicationSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RobotApplicationSummary, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
        RobotSoftwareSuite.validate!(input[:robot_software_suite], context: "#{context}[:robot_software_suite]") unless input[:robot_software_suite].nil?
      end
    end

    class RobotDeployment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RobotDeployment, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:deployment_start_time], ::Time, context: "#{context}[:deployment_start_time]")
        Hearth::Validator.validate!(input[:deployment_finish_time], ::Time, context: "#{context}[:deployment_finish_time]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        ProgressDetail.validate!(input[:progress_detail], context: "#{context}[:progress_detail]") unless input[:progress_detail].nil?
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        Hearth::Validator.validate!(input[:failure_code], ::String, context: "#{context}[:failure_code]")
      end
    end

    class RobotDeploymentSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RobotDeployment.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RobotSoftwareSuite
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RobotSoftwareSuite, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class Robots
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Robot.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class S3Etags
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class S3KeyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3KeyOutput, context: context)
        Hearth::Validator.validate!(input[:s3_key], ::String, context: "#{context}[:s3_key]")
        Hearth::Validator.validate!(input[:etag], ::String, context: "#{context}[:etag]")
      end
    end

    class S3KeyOutputs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          S3KeyOutput.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class S3KeysOrPrefixes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class S3Object
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3Object, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:etag], ::String, context: "#{context}[:etag]")
      end
    end

    class SecurityGroups
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ServiceUnavailableException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceUnavailableException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SimulationApplicationConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SimulationApplicationConfig, context: context)
        Hearth::Validator.validate!(input[:application], ::String, context: "#{context}[:application]")
        Hearth::Validator.validate!(input[:application_version], ::String, context: "#{context}[:application_version]")
        LaunchConfig.validate!(input[:launch_config], context: "#{context}[:launch_config]") unless input[:launch_config].nil?
        UploadConfigurations.validate!(input[:upload_configurations], context: "#{context}[:upload_configurations]") unless input[:upload_configurations].nil?
        WorldConfigs.validate!(input[:world_configs], context: "#{context}[:world_configs]") unless input[:world_configs].nil?
        Hearth::Validator.validate!(input[:use_default_upload_configurations], ::TrueClass, ::FalseClass, context: "#{context}[:use_default_upload_configurations]")
        Tools.validate!(input[:tools], context: "#{context}[:tools]") unless input[:tools].nil?
        Hearth::Validator.validate!(input[:use_default_tools], ::TrueClass, ::FalseClass, context: "#{context}[:use_default_tools]")
      end
    end

    class SimulationApplicationConfigs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SimulationApplicationConfig.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SimulationApplicationNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SimulationApplicationSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SimulationApplicationSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SimulationApplicationSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SimulationApplicationSummary, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
        RobotSoftwareSuite.validate!(input[:robot_software_suite], context: "#{context}[:robot_software_suite]") unless input[:robot_software_suite].nil?
        SimulationSoftwareSuite.validate!(input[:simulation_software_suite], context: "#{context}[:simulation_software_suite]") unless input[:simulation_software_suite].nil?
      end
    end

    class SimulationJob
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SimulationJob, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:last_started_at], ::Time, context: "#{context}[:last_started_at]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
        Hearth::Validator.validate!(input[:failure_behavior], ::String, context: "#{context}[:failure_behavior]")
        Hearth::Validator.validate!(input[:failure_code], ::String, context: "#{context}[:failure_code]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        OutputLocation.validate!(input[:output_location], context: "#{context}[:output_location]") unless input[:output_location].nil?
        LoggingConfig.validate!(input[:logging_config], context: "#{context}[:logging_config]") unless input[:logging_config].nil?
        Hearth::Validator.validate!(input[:max_job_duration_in_seconds], ::Integer, context: "#{context}[:max_job_duration_in_seconds]")
        Hearth::Validator.validate!(input[:simulation_time_millis], ::Integer, context: "#{context}[:simulation_time_millis]")
        Hearth::Validator.validate!(input[:iam_role], ::String, context: "#{context}[:iam_role]")
        RobotApplicationConfigs.validate!(input[:robot_applications], context: "#{context}[:robot_applications]") unless input[:robot_applications].nil?
        SimulationApplicationConfigs.validate!(input[:simulation_applications], context: "#{context}[:simulation_applications]") unless input[:simulation_applications].nil?
        DataSources.validate!(input[:data_sources], context: "#{context}[:data_sources]") unless input[:data_sources].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        VPCConfigResponse.validate!(input[:vpc_config], context: "#{context}[:vpc_config]") unless input[:vpc_config].nil?
        NetworkInterface.validate!(input[:network_interface], context: "#{context}[:network_interface]") unless input[:network_interface].nil?
        ComputeResponse.validate!(input[:compute], context: "#{context}[:compute]") unless input[:compute].nil?
      end
    end

    class SimulationJobBatchSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SimulationJobBatchSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SimulationJobBatchSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SimulationJobBatchSummary, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:failed_request_count], ::Integer, context: "#{context}[:failed_request_count]")
        Hearth::Validator.validate!(input[:pending_request_count], ::Integer, context: "#{context}[:pending_request_count]")
        Hearth::Validator.validate!(input[:created_request_count], ::Integer, context: "#{context}[:created_request_count]")
      end
    end

    class SimulationJobRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SimulationJobRequest, context: context)
        OutputLocation.validate!(input[:output_location], context: "#{context}[:output_location]") unless input[:output_location].nil?
        LoggingConfig.validate!(input[:logging_config], context: "#{context}[:logging_config]") unless input[:logging_config].nil?
        Hearth::Validator.validate!(input[:max_job_duration_in_seconds], ::Integer, context: "#{context}[:max_job_duration_in_seconds]")
        Hearth::Validator.validate!(input[:iam_role], ::String, context: "#{context}[:iam_role]")
        Hearth::Validator.validate!(input[:failure_behavior], ::String, context: "#{context}[:failure_behavior]")
        Hearth::Validator.validate!(input[:use_default_applications], ::TrueClass, ::FalseClass, context: "#{context}[:use_default_applications]")
        RobotApplicationConfigs.validate!(input[:robot_applications], context: "#{context}[:robot_applications]") unless input[:robot_applications].nil?
        SimulationApplicationConfigs.validate!(input[:simulation_applications], context: "#{context}[:simulation_applications]") unless input[:simulation_applications].nil?
        DataSourceConfigs.validate!(input[:data_sources], context: "#{context}[:data_sources]") unless input[:data_sources].nil?
        VPCConfig.validate!(input[:vpc_config], context: "#{context}[:vpc_config]") unless input[:vpc_config].nil?
        Compute.validate!(input[:compute], context: "#{context}[:compute]") unless input[:compute].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class SimulationJobSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SimulationJobSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SimulationJobSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SimulationJobSummary, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        SimulationApplicationNames.validate!(input[:simulation_application_names], context: "#{context}[:simulation_application_names]") unless input[:simulation_application_names].nil?
        RobotApplicationNames.validate!(input[:robot_application_names], context: "#{context}[:robot_application_names]") unless input[:robot_application_names].nil?
        DataSourceNames.validate!(input[:data_source_names], context: "#{context}[:data_source_names]") unless input[:data_source_names].nil?
        Hearth::Validator.validate!(input[:compute_type], ::String, context: "#{context}[:compute_type]")
      end
    end

    class SimulationJobs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SimulationJob.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SimulationSoftwareSuite
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SimulationSoftwareSuite, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class Source
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Source, context: context)
        Hearth::Validator.validate!(input[:s3_bucket], ::String, context: "#{context}[:s3_bucket]")
        Hearth::Validator.validate!(input[:s3_key], ::String, context: "#{context}[:s3_key]")
        Hearth::Validator.validate!(input[:etag], ::String, context: "#{context}[:etag]")
        Hearth::Validator.validate!(input[:architecture], ::String, context: "#{context}[:architecture]")
      end
    end

    class SourceConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SourceConfig, context: context)
        Hearth::Validator.validate!(input[:s3_bucket], ::String, context: "#{context}[:s3_bucket]")
        Hearth::Validator.validate!(input[:s3_key], ::String, context: "#{context}[:s3_key]")
        Hearth::Validator.validate!(input[:architecture], ::String, context: "#{context}[:architecture]")
      end
    end

    class SourceConfigs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SourceConfig.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Sources
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Source.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StartSimulationJobBatchInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartSimulationJobBatchInput, context: context)
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        BatchPolicy.validate!(input[:batch_policy], context: "#{context}[:batch_policy]") unless input[:batch_policy].nil?
        CreateSimulationJobRequests.validate!(input[:create_simulation_job_requests], context: "#{context}[:create_simulation_job_requests]") unless input[:create_simulation_job_requests].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class StartSimulationJobBatchOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartSimulationJobBatchOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        BatchPolicy.validate!(input[:batch_policy], context: "#{context}[:batch_policy]") unless input[:batch_policy].nil?
        Hearth::Validator.validate!(input[:failure_code], ::String, context: "#{context}[:failure_code]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        FailedCreateSimulationJobRequests.validate!(input[:failed_requests], context: "#{context}[:failed_requests]") unless input[:failed_requests].nil?
        CreateSimulationJobRequests.validate!(input[:pending_requests], context: "#{context}[:pending_requests]") unless input[:pending_requests].nil?
        SimulationJobSummaries.validate!(input[:created_requests], context: "#{context}[:created_requests]") unless input[:created_requests].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class Subnets
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SyncDeploymentJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SyncDeploymentJobInput, context: context)
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:fleet], ::String, context: "#{context}[:fleet]")
      end
    end

    class SyncDeploymentJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SyncDeploymentJobOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:fleet], ::String, context: "#{context}[:fleet]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        DeploymentConfig.validate!(input[:deployment_config], context: "#{context}[:deployment_config]") unless input[:deployment_config].nil?
        DeploymentApplicationConfigs.validate!(input[:deployment_application_configs], context: "#{context}[:deployment_application_configs]") unless input[:deployment_application_configs].nil?
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        Hearth::Validator.validate!(input[:failure_code], ::String, context: "#{context}[:failure_code]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
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
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class TemplateLocation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TemplateLocation, context: context)
        Hearth::Validator.validate!(input[:s3_bucket], ::String, context: "#{context}[:s3_bucket]")
        Hearth::Validator.validate!(input[:s3_key], ::String, context: "#{context}[:s3_key]")
      end
    end

    class TemplateSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TemplateSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TemplateSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TemplateSummary, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Tool
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tool, context: context)
        Hearth::Validator.validate!(input[:stream_ui], ::TrueClass, ::FalseClass, context: "#{context}[:stream_ui]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:command], ::String, context: "#{context}[:command]")
        Hearth::Validator.validate!(input[:stream_output_to_cloud_watch], ::TrueClass, ::FalseClass, context: "#{context}[:stream_output_to_cloud_watch]")
        Hearth::Validator.validate!(input[:exit_behavior], ::String, context: "#{context}[:exit_behavior]")
      end
    end

    class Tools
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Tool.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateRobotApplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRobotApplicationInput, context: context)
        Hearth::Validator.validate!(input[:application], ::String, context: "#{context}[:application]")
        SourceConfigs.validate!(input[:sources], context: "#{context}[:sources]") unless input[:sources].nil?
        RobotSoftwareSuite.validate!(input[:robot_software_suite], context: "#{context}[:robot_software_suite]") unless input[:robot_software_suite].nil?
        Hearth::Validator.validate!(input[:current_revision_id], ::String, context: "#{context}[:current_revision_id]")
        Environment.validate!(input[:environment], context: "#{context}[:environment]") unless input[:environment].nil?
      end
    end

    class UpdateRobotApplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRobotApplicationOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Sources.validate!(input[:sources], context: "#{context}[:sources]") unless input[:sources].nil?
        RobotSoftwareSuite.validate!(input[:robot_software_suite], context: "#{context}[:robot_software_suite]") unless input[:robot_software_suite].nil?
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
        Environment.validate!(input[:environment], context: "#{context}[:environment]") unless input[:environment].nil?
      end
    end

    class UpdateSimulationApplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSimulationApplicationInput, context: context)
        Hearth::Validator.validate!(input[:application], ::String, context: "#{context}[:application]")
        SourceConfigs.validate!(input[:sources], context: "#{context}[:sources]") unless input[:sources].nil?
        SimulationSoftwareSuite.validate!(input[:simulation_software_suite], context: "#{context}[:simulation_software_suite]") unless input[:simulation_software_suite].nil?
        RobotSoftwareSuite.validate!(input[:robot_software_suite], context: "#{context}[:robot_software_suite]") unless input[:robot_software_suite].nil?
        RenderingEngine.validate!(input[:rendering_engine], context: "#{context}[:rendering_engine]") unless input[:rendering_engine].nil?
        Hearth::Validator.validate!(input[:current_revision_id], ::String, context: "#{context}[:current_revision_id]")
        Environment.validate!(input[:environment], context: "#{context}[:environment]") unless input[:environment].nil?
      end
    end

    class UpdateSimulationApplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSimulationApplicationOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Sources.validate!(input[:sources], context: "#{context}[:sources]") unless input[:sources].nil?
        SimulationSoftwareSuite.validate!(input[:simulation_software_suite], context: "#{context}[:simulation_software_suite]") unless input[:simulation_software_suite].nil?
        RobotSoftwareSuite.validate!(input[:robot_software_suite], context: "#{context}[:robot_software_suite]") unless input[:robot_software_suite].nil?
        RenderingEngine.validate!(input[:rendering_engine], context: "#{context}[:rendering_engine]") unless input[:rendering_engine].nil?
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
        Environment.validate!(input[:environment], context: "#{context}[:environment]") unless input[:environment].nil?
      end
    end

    class UpdateWorldTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateWorldTemplateInput, context: context)
        Hearth::Validator.validate!(input[:template], ::String, context: "#{context}[:template]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:template_body], ::String, context: "#{context}[:template_body]")
        TemplateLocation.validate!(input[:template_location], context: "#{context}[:template_location]") unless input[:template_location].nil?
      end
    end

    class UpdateWorldTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateWorldTemplateOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
      end
    end

    class UploadConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UploadConfiguration, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
        Hearth::Validator.validate!(input[:upload_behavior], ::String, context: "#{context}[:upload_behavior]")
      end
    end

    class UploadConfigurations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          UploadConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class VPCConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VPCConfig, context: context)
        Subnets.validate!(input[:subnets], context: "#{context}[:subnets]") unless input[:subnets].nil?
        SecurityGroups.validate!(input[:security_groups], context: "#{context}[:security_groups]") unless input[:security_groups].nil?
        Hearth::Validator.validate!(input[:assign_public_ip], ::TrueClass, ::FalseClass, context: "#{context}[:assign_public_ip]")
      end
    end

    class VPCConfigResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VPCConfigResponse, context: context)
        Subnets.validate!(input[:subnets], context: "#{context}[:subnets]") unless input[:subnets].nil?
        SecurityGroups.validate!(input[:security_groups], context: "#{context}[:security_groups]") unless input[:security_groups].nil?
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Hearth::Validator.validate!(input[:assign_public_ip], ::TrueClass, ::FalseClass, context: "#{context}[:assign_public_ip]")
      end
    end

    class WorldConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WorldConfig, context: context)
        Hearth::Validator.validate!(input[:world], ::String, context: "#{context}[:world]")
      end
    end

    class WorldConfigs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          WorldConfig.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class WorldCount
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WorldCount, context: context)
        Hearth::Validator.validate!(input[:floorplan_count], ::Integer, context: "#{context}[:floorplan_count]")
        Hearth::Validator.validate!(input[:interior_count_per_floorplan], ::Integer, context: "#{context}[:interior_count_per_floorplan]")
      end
    end

    class WorldExportJobSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          WorldExportJobSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class WorldExportJobSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WorldExportJobSummary, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Arns.validate!(input[:worlds], context: "#{context}[:worlds]") unless input[:worlds].nil?
        OutputLocation.validate!(input[:output_location], context: "#{context}[:output_location]") unless input[:output_location].nil?
      end
    end

    class WorldFailure
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WorldFailure, context: context)
        Hearth::Validator.validate!(input[:failure_code], ::String, context: "#{context}[:failure_code]")
        Hearth::Validator.validate!(input[:sample_failure_reason], ::String, context: "#{context}[:sample_failure_reason]")
        Hearth::Validator.validate!(input[:failure_count], ::Integer, context: "#{context}[:failure_count]")
      end
    end

    class WorldFailures
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          WorldFailure.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class WorldGenerationJobSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          WorldGenerationJobSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class WorldGenerationJobSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WorldGenerationJobSummary, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:template], ::String, context: "#{context}[:template]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        WorldCount.validate!(input[:world_count], context: "#{context}[:world_count]") unless input[:world_count].nil?
        Hearth::Validator.validate!(input[:succeeded_world_count], ::Integer, context: "#{context}[:succeeded_world_count]")
        Hearth::Validator.validate!(input[:failed_world_count], ::Integer, context: "#{context}[:failed_world_count]")
      end
    end

    class WorldSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          WorldSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class WorldSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WorldSummary, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:generation_job], ::String, context: "#{context}[:generation_job]")
        Hearth::Validator.validate!(input[:template], ::String, context: "#{context}[:template]")
      end
    end

  end
end
