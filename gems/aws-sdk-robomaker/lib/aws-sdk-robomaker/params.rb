# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::RoboMaker
  module Params

    module Arns
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module BatchDeleteWorldsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDeleteWorldsInput, context: context)
        type = Types::BatchDeleteWorldsInput.new
        type.worlds = Arns.build(params[:worlds], context: "#{context}[:worlds]") unless params[:worlds].nil?
        type
      end
    end

    module BatchDeleteWorldsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDeleteWorldsOutput, context: context)
        type = Types::BatchDeleteWorldsOutput.new
        type.unprocessed_worlds = Arns.build(params[:unprocessed_worlds], context: "#{context}[:unprocessed_worlds]") unless params[:unprocessed_worlds].nil?
        type
      end
    end

    module BatchDescribeSimulationJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDescribeSimulationJobInput, context: context)
        type = Types::BatchDescribeSimulationJobInput.new
        type.jobs = Arns.build(params[:jobs], context: "#{context}[:jobs]") unless params[:jobs].nil?
        type
      end
    end

    module BatchDescribeSimulationJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDescribeSimulationJobOutput, context: context)
        type = Types::BatchDescribeSimulationJobOutput.new
        type.jobs = SimulationJobs.build(params[:jobs], context: "#{context}[:jobs]") unless params[:jobs].nil?
        type.unprocessed_jobs = Arns.build(params[:unprocessed_jobs], context: "#{context}[:unprocessed_jobs]") unless params[:unprocessed_jobs].nil?
        type
      end
    end

    module BatchPolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchPolicy, context: context)
        type = Types::BatchPolicy.new
        type.timeout_in_seconds = params[:timeout_in_seconds]
        type.max_concurrency = params[:max_concurrency]
        type
      end
    end

    module CancelDeploymentJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelDeploymentJobInput, context: context)
        type = Types::CancelDeploymentJobInput.new
        type.job = params[:job]
        type
      end
    end

    module CancelDeploymentJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelDeploymentJobOutput, context: context)
        type = Types::CancelDeploymentJobOutput.new
        type
      end
    end

    module CancelSimulationJobBatchInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelSimulationJobBatchInput, context: context)
        type = Types::CancelSimulationJobBatchInput.new
        type.batch = params[:batch]
        type
      end
    end

    module CancelSimulationJobBatchOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelSimulationJobBatchOutput, context: context)
        type = Types::CancelSimulationJobBatchOutput.new
        type
      end
    end

    module CancelSimulationJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelSimulationJobInput, context: context)
        type = Types::CancelSimulationJobInput.new
        type.job = params[:job]
        type
      end
    end

    module CancelSimulationJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelSimulationJobOutput, context: context)
        type = Types::CancelSimulationJobOutput.new
        type
      end
    end

    module CancelWorldExportJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelWorldExportJobInput, context: context)
        type = Types::CancelWorldExportJobInput.new
        type.job = params[:job]
        type
      end
    end

    module CancelWorldExportJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelWorldExportJobOutput, context: context)
        type = Types::CancelWorldExportJobOutput.new
        type
      end
    end

    module CancelWorldGenerationJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelWorldGenerationJobInput, context: context)
        type = Types::CancelWorldGenerationJobInput.new
        type.job = params[:job]
        type
      end
    end

    module CancelWorldGenerationJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelWorldGenerationJobOutput, context: context)
        type = Types::CancelWorldGenerationJobOutput.new
        type
      end
    end

    module CommandList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Compute
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Compute, context: context)
        type = Types::Compute.new
        type.simulation_unit_limit = params[:simulation_unit_limit]
        type.compute_type = params[:compute_type]
        type.gpu_unit_limit = params[:gpu_unit_limit]
        type
      end
    end

    module ComputeResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ComputeResponse, context: context)
        type = Types::ComputeResponse.new
        type.simulation_unit_limit = params[:simulation_unit_limit]
        type.compute_type = params[:compute_type]
        type.gpu_unit_limit = params[:gpu_unit_limit]
        type
      end
    end

    module ConcurrentDeploymentException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConcurrentDeploymentException, context: context)
        type = Types::ConcurrentDeploymentException.new
        type.message = params[:message]
        type
      end
    end

    module CreateDeploymentJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDeploymentJobInput, context: context)
        type = Types::CreateDeploymentJobInput.new
        type.deployment_config = DeploymentConfig.build(params[:deployment_config], context: "#{context}[:deployment_config]") unless params[:deployment_config].nil?
        type.client_request_token = params[:client_request_token] || SecureRandom.uuid
        type.fleet = params[:fleet]
        type.deployment_application_configs = DeploymentApplicationConfigs.build(params[:deployment_application_configs], context: "#{context}[:deployment_application_configs]") unless params[:deployment_application_configs].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateDeploymentJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDeploymentJobOutput, context: context)
        type = Types::CreateDeploymentJobOutput.new
        type.arn = params[:arn]
        type.fleet = params[:fleet]
        type.status = params[:status]
        type.deployment_application_configs = DeploymentApplicationConfigs.build(params[:deployment_application_configs], context: "#{context}[:deployment_application_configs]") unless params[:deployment_application_configs].nil?
        type.failure_reason = params[:failure_reason]
        type.failure_code = params[:failure_code]
        type.created_at = params[:created_at]
        type.deployment_config = DeploymentConfig.build(params[:deployment_config], context: "#{context}[:deployment_config]") unless params[:deployment_config].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateFleetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFleetInput, context: context)
        type = Types::CreateFleetInput.new
        type.name = params[:name]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateFleetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFleetOutput, context: context)
        type = Types::CreateFleetOutput.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.created_at = params[:created_at]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateRobotApplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRobotApplicationInput, context: context)
        type = Types::CreateRobotApplicationInput.new
        type.name = params[:name]
        type.sources = SourceConfigs.build(params[:sources], context: "#{context}[:sources]") unless params[:sources].nil?
        type.robot_software_suite = RobotSoftwareSuite.build(params[:robot_software_suite], context: "#{context}[:robot_software_suite]") unless params[:robot_software_suite].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.environment = Environment.build(params[:environment], context: "#{context}[:environment]") unless params[:environment].nil?
        type
      end
    end

    module CreateRobotApplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRobotApplicationOutput, context: context)
        type = Types::CreateRobotApplicationOutput.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.version = params[:version]
        type.sources = Sources.build(params[:sources], context: "#{context}[:sources]") unless params[:sources].nil?
        type.robot_software_suite = RobotSoftwareSuite.build(params[:robot_software_suite], context: "#{context}[:robot_software_suite]") unless params[:robot_software_suite].nil?
        type.last_updated_at = params[:last_updated_at]
        type.revision_id = params[:revision_id]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.environment = Environment.build(params[:environment], context: "#{context}[:environment]") unless params[:environment].nil?
        type
      end
    end

    module CreateRobotApplicationVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRobotApplicationVersionInput, context: context)
        type = Types::CreateRobotApplicationVersionInput.new
        type.application = params[:application]
        type.current_revision_id = params[:current_revision_id]
        type.s3_etags = S3Etags.build(params[:s3_etags], context: "#{context}[:s3_etags]") unless params[:s3_etags].nil?
        type.image_digest = params[:image_digest]
        type
      end
    end

    module CreateRobotApplicationVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRobotApplicationVersionOutput, context: context)
        type = Types::CreateRobotApplicationVersionOutput.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.version = params[:version]
        type.sources = Sources.build(params[:sources], context: "#{context}[:sources]") unless params[:sources].nil?
        type.robot_software_suite = RobotSoftwareSuite.build(params[:robot_software_suite], context: "#{context}[:robot_software_suite]") unless params[:robot_software_suite].nil?
        type.last_updated_at = params[:last_updated_at]
        type.revision_id = params[:revision_id]
        type.environment = Environment.build(params[:environment], context: "#{context}[:environment]") unless params[:environment].nil?
        type
      end
    end

    module CreateRobotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRobotInput, context: context)
        type = Types::CreateRobotInput.new
        type.name = params[:name]
        type.architecture = params[:architecture]
        type.greengrass_group_id = params[:greengrass_group_id]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateRobotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRobotOutput, context: context)
        type = Types::CreateRobotOutput.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.created_at = params[:created_at]
        type.greengrass_group_id = params[:greengrass_group_id]
        type.architecture = params[:architecture]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateSimulationApplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSimulationApplicationInput, context: context)
        type = Types::CreateSimulationApplicationInput.new
        type.name = params[:name]
        type.sources = SourceConfigs.build(params[:sources], context: "#{context}[:sources]") unless params[:sources].nil?
        type.simulation_software_suite = SimulationSoftwareSuite.build(params[:simulation_software_suite], context: "#{context}[:simulation_software_suite]") unless params[:simulation_software_suite].nil?
        type.robot_software_suite = RobotSoftwareSuite.build(params[:robot_software_suite], context: "#{context}[:robot_software_suite]") unless params[:robot_software_suite].nil?
        type.rendering_engine = RenderingEngine.build(params[:rendering_engine], context: "#{context}[:rendering_engine]") unless params[:rendering_engine].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.environment = Environment.build(params[:environment], context: "#{context}[:environment]") unless params[:environment].nil?
        type
      end
    end

    module CreateSimulationApplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSimulationApplicationOutput, context: context)
        type = Types::CreateSimulationApplicationOutput.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.version = params[:version]
        type.sources = Sources.build(params[:sources], context: "#{context}[:sources]") unless params[:sources].nil?
        type.simulation_software_suite = SimulationSoftwareSuite.build(params[:simulation_software_suite], context: "#{context}[:simulation_software_suite]") unless params[:simulation_software_suite].nil?
        type.robot_software_suite = RobotSoftwareSuite.build(params[:robot_software_suite], context: "#{context}[:robot_software_suite]") unless params[:robot_software_suite].nil?
        type.rendering_engine = RenderingEngine.build(params[:rendering_engine], context: "#{context}[:rendering_engine]") unless params[:rendering_engine].nil?
        type.last_updated_at = params[:last_updated_at]
        type.revision_id = params[:revision_id]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.environment = Environment.build(params[:environment], context: "#{context}[:environment]") unless params[:environment].nil?
        type
      end
    end

    module CreateSimulationApplicationVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSimulationApplicationVersionInput, context: context)
        type = Types::CreateSimulationApplicationVersionInput.new
        type.application = params[:application]
        type.current_revision_id = params[:current_revision_id]
        type.s3_etags = S3Etags.build(params[:s3_etags], context: "#{context}[:s3_etags]") unless params[:s3_etags].nil?
        type.image_digest = params[:image_digest]
        type
      end
    end

    module CreateSimulationApplicationVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSimulationApplicationVersionOutput, context: context)
        type = Types::CreateSimulationApplicationVersionOutput.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.version = params[:version]
        type.sources = Sources.build(params[:sources], context: "#{context}[:sources]") unless params[:sources].nil?
        type.simulation_software_suite = SimulationSoftwareSuite.build(params[:simulation_software_suite], context: "#{context}[:simulation_software_suite]") unless params[:simulation_software_suite].nil?
        type.robot_software_suite = RobotSoftwareSuite.build(params[:robot_software_suite], context: "#{context}[:robot_software_suite]") unless params[:robot_software_suite].nil?
        type.rendering_engine = RenderingEngine.build(params[:rendering_engine], context: "#{context}[:rendering_engine]") unless params[:rendering_engine].nil?
        type.last_updated_at = params[:last_updated_at]
        type.revision_id = params[:revision_id]
        type.environment = Environment.build(params[:environment], context: "#{context}[:environment]") unless params[:environment].nil?
        type
      end
    end

    module CreateSimulationJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSimulationJobInput, context: context)
        type = Types::CreateSimulationJobInput.new
        type.client_request_token = params[:client_request_token] || SecureRandom.uuid
        type.output_location = OutputLocation.build(params[:output_location], context: "#{context}[:output_location]") unless params[:output_location].nil?
        type.logging_config = LoggingConfig.build(params[:logging_config], context: "#{context}[:logging_config]") unless params[:logging_config].nil?
        type.max_job_duration_in_seconds = params[:max_job_duration_in_seconds]
        type.iam_role = params[:iam_role]
        type.failure_behavior = params[:failure_behavior]
        type.robot_applications = RobotApplicationConfigs.build(params[:robot_applications], context: "#{context}[:robot_applications]") unless params[:robot_applications].nil?
        type.simulation_applications = SimulationApplicationConfigs.build(params[:simulation_applications], context: "#{context}[:simulation_applications]") unless params[:simulation_applications].nil?
        type.data_sources = DataSourceConfigs.build(params[:data_sources], context: "#{context}[:data_sources]") unless params[:data_sources].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.vpc_config = VPCConfig.build(params[:vpc_config], context: "#{context}[:vpc_config]") unless params[:vpc_config].nil?
        type.compute = Compute.build(params[:compute], context: "#{context}[:compute]") unless params[:compute].nil?
        type
      end
    end

    module CreateSimulationJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSimulationJobOutput, context: context)
        type = Types::CreateSimulationJobOutput.new
        type.arn = params[:arn]
        type.status = params[:status]
        type.last_started_at = params[:last_started_at]
        type.last_updated_at = params[:last_updated_at]
        type.failure_behavior = params[:failure_behavior]
        type.failure_code = params[:failure_code]
        type.client_request_token = params[:client_request_token]
        type.output_location = OutputLocation.build(params[:output_location], context: "#{context}[:output_location]") unless params[:output_location].nil?
        type.logging_config = LoggingConfig.build(params[:logging_config], context: "#{context}[:logging_config]") unless params[:logging_config].nil?
        type.max_job_duration_in_seconds = params[:max_job_duration_in_seconds]
        type.simulation_time_millis = params[:simulation_time_millis]
        type.iam_role = params[:iam_role]
        type.robot_applications = RobotApplicationConfigs.build(params[:robot_applications], context: "#{context}[:robot_applications]") unless params[:robot_applications].nil?
        type.simulation_applications = SimulationApplicationConfigs.build(params[:simulation_applications], context: "#{context}[:simulation_applications]") unless params[:simulation_applications].nil?
        type.data_sources = DataSources.build(params[:data_sources], context: "#{context}[:data_sources]") unless params[:data_sources].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.vpc_config = VPCConfigResponse.build(params[:vpc_config], context: "#{context}[:vpc_config]") unless params[:vpc_config].nil?
        type.compute = ComputeResponse.build(params[:compute], context: "#{context}[:compute]") unless params[:compute].nil?
        type
      end
    end

    module CreateSimulationJobRequests
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SimulationJobRequest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CreateWorldExportJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateWorldExportJobInput, context: context)
        type = Types::CreateWorldExportJobInput.new
        type.client_request_token = params[:client_request_token] || SecureRandom.uuid
        type.worlds = Arns.build(params[:worlds], context: "#{context}[:worlds]") unless params[:worlds].nil?
        type.output_location = OutputLocation.build(params[:output_location], context: "#{context}[:output_location]") unless params[:output_location].nil?
        type.iam_role = params[:iam_role]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateWorldExportJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateWorldExportJobOutput, context: context)
        type = Types::CreateWorldExportJobOutput.new
        type.arn = params[:arn]
        type.status = params[:status]
        type.created_at = params[:created_at]
        type.failure_code = params[:failure_code]
        type.client_request_token = params[:client_request_token]
        type.output_location = OutputLocation.build(params[:output_location], context: "#{context}[:output_location]") unless params[:output_location].nil?
        type.iam_role = params[:iam_role]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateWorldGenerationJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateWorldGenerationJobInput, context: context)
        type = Types::CreateWorldGenerationJobInput.new
        type.client_request_token = params[:client_request_token] || SecureRandom.uuid
        type.template = params[:template]
        type.world_count = WorldCount.build(params[:world_count], context: "#{context}[:world_count]") unless params[:world_count].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.world_tags = TagMap.build(params[:world_tags], context: "#{context}[:world_tags]") unless params[:world_tags].nil?
        type
      end
    end

    module CreateWorldGenerationJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateWorldGenerationJobOutput, context: context)
        type = Types::CreateWorldGenerationJobOutput.new
        type.arn = params[:arn]
        type.status = params[:status]
        type.created_at = params[:created_at]
        type.failure_code = params[:failure_code]
        type.client_request_token = params[:client_request_token]
        type.template = params[:template]
        type.world_count = WorldCount.build(params[:world_count], context: "#{context}[:world_count]") unless params[:world_count].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.world_tags = TagMap.build(params[:world_tags], context: "#{context}[:world_tags]") unless params[:world_tags].nil?
        type
      end
    end

    module CreateWorldTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateWorldTemplateInput, context: context)
        type = Types::CreateWorldTemplateInput.new
        type.client_request_token = params[:client_request_token]
        type.name = params[:name]
        type.template_body = params[:template_body]
        type.template_location = TemplateLocation.build(params[:template_location], context: "#{context}[:template_location]") unless params[:template_location].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateWorldTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateWorldTemplateOutput, context: context)
        type = Types::CreateWorldTemplateOutput.new
        type.arn = params[:arn]
        type.client_request_token = params[:client_request_token]
        type.created_at = params[:created_at]
        type.name = params[:name]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module DataSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataSource, context: context)
        type = Types::DataSource.new
        type.name = params[:name]
        type.s3_bucket = params[:s3_bucket]
        type.s3_keys = S3KeyOutputs.build(params[:s3_keys], context: "#{context}[:s3_keys]") unless params[:s3_keys].nil?
        type.type = params[:type]
        type.destination = params[:destination]
        type
      end
    end

    module DataSourceConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataSourceConfig, context: context)
        type = Types::DataSourceConfig.new
        type.name = params[:name]
        type.s3_bucket = params[:s3_bucket]
        type.s3_keys = S3KeysOrPrefixes.build(params[:s3_keys], context: "#{context}[:s3_keys]") unless params[:s3_keys].nil?
        type.type = params[:type]
        type.destination = params[:destination]
        type
      end
    end

    module DataSourceConfigs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DataSourceConfig.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DataSourceNames
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DataSources
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DataSource.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DeleteFleetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFleetInput, context: context)
        type = Types::DeleteFleetInput.new
        type.fleet = params[:fleet]
        type
      end
    end

    module DeleteFleetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFleetOutput, context: context)
        type = Types::DeleteFleetOutput.new
        type
      end
    end

    module DeleteRobotApplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRobotApplicationInput, context: context)
        type = Types::DeleteRobotApplicationInput.new
        type.application = params[:application]
        type.application_version = params[:application_version]
        type
      end
    end

    module DeleteRobotApplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRobotApplicationOutput, context: context)
        type = Types::DeleteRobotApplicationOutput.new
        type
      end
    end

    module DeleteRobotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRobotInput, context: context)
        type = Types::DeleteRobotInput.new
        type.robot = params[:robot]
        type
      end
    end

    module DeleteRobotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRobotOutput, context: context)
        type = Types::DeleteRobotOutput.new
        type
      end
    end

    module DeleteSimulationApplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSimulationApplicationInput, context: context)
        type = Types::DeleteSimulationApplicationInput.new
        type.application = params[:application]
        type.application_version = params[:application_version]
        type
      end
    end

    module DeleteSimulationApplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSimulationApplicationOutput, context: context)
        type = Types::DeleteSimulationApplicationOutput.new
        type
      end
    end

    module DeleteWorldTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteWorldTemplateInput, context: context)
        type = Types::DeleteWorldTemplateInput.new
        type.template = params[:template]
        type
      end
    end

    module DeleteWorldTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteWorldTemplateOutput, context: context)
        type = Types::DeleteWorldTemplateOutput.new
        type
      end
    end

    module DeploymentApplicationConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeploymentApplicationConfig, context: context)
        type = Types::DeploymentApplicationConfig.new
        type.application = params[:application]
        type.application_version = params[:application_version]
        type.launch_config = DeploymentLaunchConfig.build(params[:launch_config], context: "#{context}[:launch_config]") unless params[:launch_config].nil?
        type
      end
    end

    module DeploymentApplicationConfigs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DeploymentApplicationConfig.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DeploymentConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeploymentConfig, context: context)
        type = Types::DeploymentConfig.new
        type.concurrent_deployment_percentage = params[:concurrent_deployment_percentage]
        type.failure_threshold_percentage = params[:failure_threshold_percentage]
        type.robot_deployment_timeout_in_seconds = params[:robot_deployment_timeout_in_seconds]
        type.download_condition_file = S3Object.build(params[:download_condition_file], context: "#{context}[:download_condition_file]") unless params[:download_condition_file].nil?
        type
      end
    end

    module DeploymentJob
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeploymentJob, context: context)
        type = Types::DeploymentJob.new
        type.arn = params[:arn]
        type.fleet = params[:fleet]
        type.status = params[:status]
        type.deployment_application_configs = DeploymentApplicationConfigs.build(params[:deployment_application_configs], context: "#{context}[:deployment_application_configs]") unless params[:deployment_application_configs].nil?
        type.deployment_config = DeploymentConfig.build(params[:deployment_config], context: "#{context}[:deployment_config]") unless params[:deployment_config].nil?
        type.failure_reason = params[:failure_reason]
        type.failure_code = params[:failure_code]
        type.created_at = params[:created_at]
        type
      end
    end

    module DeploymentJobs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DeploymentJob.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DeploymentLaunchConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeploymentLaunchConfig, context: context)
        type = Types::DeploymentLaunchConfig.new
        type.package_name = params[:package_name]
        type.pre_launch_file = params[:pre_launch_file]
        type.launch_file = params[:launch_file]
        type.post_launch_file = params[:post_launch_file]
        type.environment_variables = EnvironmentVariableMap.build(params[:environment_variables], context: "#{context}[:environment_variables]") unless params[:environment_variables].nil?
        type
      end
    end

    module DeregisterRobotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterRobotInput, context: context)
        type = Types::DeregisterRobotInput.new
        type.fleet = params[:fleet]
        type.robot = params[:robot]
        type
      end
    end

    module DeregisterRobotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterRobotOutput, context: context)
        type = Types::DeregisterRobotOutput.new
        type.fleet = params[:fleet]
        type.robot = params[:robot]
        type
      end
    end

    module DescribeDeploymentJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDeploymentJobInput, context: context)
        type = Types::DescribeDeploymentJobInput.new
        type.job = params[:job]
        type
      end
    end

    module DescribeDeploymentJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDeploymentJobOutput, context: context)
        type = Types::DescribeDeploymentJobOutput.new
        type.arn = params[:arn]
        type.fleet = params[:fleet]
        type.status = params[:status]
        type.deployment_config = DeploymentConfig.build(params[:deployment_config], context: "#{context}[:deployment_config]") unless params[:deployment_config].nil?
        type.deployment_application_configs = DeploymentApplicationConfigs.build(params[:deployment_application_configs], context: "#{context}[:deployment_application_configs]") unless params[:deployment_application_configs].nil?
        type.failure_reason = params[:failure_reason]
        type.failure_code = params[:failure_code]
        type.created_at = params[:created_at]
        type.robot_deployment_summary = RobotDeploymentSummary.build(params[:robot_deployment_summary], context: "#{context}[:robot_deployment_summary]") unless params[:robot_deployment_summary].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module DescribeFleetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFleetInput, context: context)
        type = Types::DescribeFleetInput.new
        type.fleet = params[:fleet]
        type
      end
    end

    module DescribeFleetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFleetOutput, context: context)
        type = Types::DescribeFleetOutput.new
        type.name = params[:name]
        type.arn = params[:arn]
        type.robots = Robots.build(params[:robots], context: "#{context}[:robots]") unless params[:robots].nil?
        type.created_at = params[:created_at]
        type.last_deployment_status = params[:last_deployment_status]
        type.last_deployment_job = params[:last_deployment_job]
        type.last_deployment_time = params[:last_deployment_time]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module DescribeRobotApplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRobotApplicationInput, context: context)
        type = Types::DescribeRobotApplicationInput.new
        type.application = params[:application]
        type.application_version = params[:application_version]
        type
      end
    end

    module DescribeRobotApplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRobotApplicationOutput, context: context)
        type = Types::DescribeRobotApplicationOutput.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.version = params[:version]
        type.sources = Sources.build(params[:sources], context: "#{context}[:sources]") unless params[:sources].nil?
        type.robot_software_suite = RobotSoftwareSuite.build(params[:robot_software_suite], context: "#{context}[:robot_software_suite]") unless params[:robot_software_suite].nil?
        type.revision_id = params[:revision_id]
        type.last_updated_at = params[:last_updated_at]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.environment = Environment.build(params[:environment], context: "#{context}[:environment]") unless params[:environment].nil?
        type.image_digest = params[:image_digest]
        type
      end
    end

    module DescribeRobotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRobotInput, context: context)
        type = Types::DescribeRobotInput.new
        type.robot = params[:robot]
        type
      end
    end

    module DescribeRobotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRobotOutput, context: context)
        type = Types::DescribeRobotOutput.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.fleet_arn = params[:fleet_arn]
        type.status = params[:status]
        type.greengrass_group_id = params[:greengrass_group_id]
        type.created_at = params[:created_at]
        type.architecture = params[:architecture]
        type.last_deployment_job = params[:last_deployment_job]
        type.last_deployment_time = params[:last_deployment_time]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module DescribeSimulationApplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSimulationApplicationInput, context: context)
        type = Types::DescribeSimulationApplicationInput.new
        type.application = params[:application]
        type.application_version = params[:application_version]
        type
      end
    end

    module DescribeSimulationApplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSimulationApplicationOutput, context: context)
        type = Types::DescribeSimulationApplicationOutput.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.version = params[:version]
        type.sources = Sources.build(params[:sources], context: "#{context}[:sources]") unless params[:sources].nil?
        type.simulation_software_suite = SimulationSoftwareSuite.build(params[:simulation_software_suite], context: "#{context}[:simulation_software_suite]") unless params[:simulation_software_suite].nil?
        type.robot_software_suite = RobotSoftwareSuite.build(params[:robot_software_suite], context: "#{context}[:robot_software_suite]") unless params[:robot_software_suite].nil?
        type.rendering_engine = RenderingEngine.build(params[:rendering_engine], context: "#{context}[:rendering_engine]") unless params[:rendering_engine].nil?
        type.revision_id = params[:revision_id]
        type.last_updated_at = params[:last_updated_at]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.environment = Environment.build(params[:environment], context: "#{context}[:environment]") unless params[:environment].nil?
        type.image_digest = params[:image_digest]
        type
      end
    end

    module DescribeSimulationJobBatchInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSimulationJobBatchInput, context: context)
        type = Types::DescribeSimulationJobBatchInput.new
        type.batch = params[:batch]
        type
      end
    end

    module DescribeSimulationJobBatchOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSimulationJobBatchOutput, context: context)
        type = Types::DescribeSimulationJobBatchOutput.new
        type.arn = params[:arn]
        type.status = params[:status]
        type.last_updated_at = params[:last_updated_at]
        type.created_at = params[:created_at]
        type.client_request_token = params[:client_request_token]
        type.batch_policy = BatchPolicy.build(params[:batch_policy], context: "#{context}[:batch_policy]") unless params[:batch_policy].nil?
        type.failure_code = params[:failure_code]
        type.failure_reason = params[:failure_reason]
        type.failed_requests = FailedCreateSimulationJobRequests.build(params[:failed_requests], context: "#{context}[:failed_requests]") unless params[:failed_requests].nil?
        type.pending_requests = CreateSimulationJobRequests.build(params[:pending_requests], context: "#{context}[:pending_requests]") unless params[:pending_requests].nil?
        type.created_requests = SimulationJobSummaries.build(params[:created_requests], context: "#{context}[:created_requests]") unless params[:created_requests].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module DescribeSimulationJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSimulationJobInput, context: context)
        type = Types::DescribeSimulationJobInput.new
        type.job = params[:job]
        type
      end
    end

    module DescribeSimulationJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSimulationJobOutput, context: context)
        type = Types::DescribeSimulationJobOutput.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.status = params[:status]
        type.last_started_at = params[:last_started_at]
        type.last_updated_at = params[:last_updated_at]
        type.failure_behavior = params[:failure_behavior]
        type.failure_code = params[:failure_code]
        type.failure_reason = params[:failure_reason]
        type.client_request_token = params[:client_request_token]
        type.output_location = OutputLocation.build(params[:output_location], context: "#{context}[:output_location]") unless params[:output_location].nil?
        type.logging_config = LoggingConfig.build(params[:logging_config], context: "#{context}[:logging_config]") unless params[:logging_config].nil?
        type.max_job_duration_in_seconds = params[:max_job_duration_in_seconds]
        type.simulation_time_millis = params[:simulation_time_millis]
        type.iam_role = params[:iam_role]
        type.robot_applications = RobotApplicationConfigs.build(params[:robot_applications], context: "#{context}[:robot_applications]") unless params[:robot_applications].nil?
        type.simulation_applications = SimulationApplicationConfigs.build(params[:simulation_applications], context: "#{context}[:simulation_applications]") unless params[:simulation_applications].nil?
        type.data_sources = DataSources.build(params[:data_sources], context: "#{context}[:data_sources]") unless params[:data_sources].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.vpc_config = VPCConfigResponse.build(params[:vpc_config], context: "#{context}[:vpc_config]") unless params[:vpc_config].nil?
        type.network_interface = NetworkInterface.build(params[:network_interface], context: "#{context}[:network_interface]") unless params[:network_interface].nil?
        type.compute = ComputeResponse.build(params[:compute], context: "#{context}[:compute]") unless params[:compute].nil?
        type
      end
    end

    module DescribeWorldExportJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeWorldExportJobInput, context: context)
        type = Types::DescribeWorldExportJobInput.new
        type.job = params[:job]
        type
      end
    end

    module DescribeWorldExportJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeWorldExportJobOutput, context: context)
        type = Types::DescribeWorldExportJobOutput.new
        type.arn = params[:arn]
        type.status = params[:status]
        type.created_at = params[:created_at]
        type.failure_code = params[:failure_code]
        type.failure_reason = params[:failure_reason]
        type.client_request_token = params[:client_request_token]
        type.worlds = Arns.build(params[:worlds], context: "#{context}[:worlds]") unless params[:worlds].nil?
        type.output_location = OutputLocation.build(params[:output_location], context: "#{context}[:output_location]") unless params[:output_location].nil?
        type.iam_role = params[:iam_role]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module DescribeWorldGenerationJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeWorldGenerationJobInput, context: context)
        type = Types::DescribeWorldGenerationJobInput.new
        type.job = params[:job]
        type
      end
    end

    module DescribeWorldGenerationJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeWorldGenerationJobOutput, context: context)
        type = Types::DescribeWorldGenerationJobOutput.new
        type.arn = params[:arn]
        type.status = params[:status]
        type.created_at = params[:created_at]
        type.failure_code = params[:failure_code]
        type.failure_reason = params[:failure_reason]
        type.client_request_token = params[:client_request_token]
        type.template = params[:template]
        type.world_count = WorldCount.build(params[:world_count], context: "#{context}[:world_count]") unless params[:world_count].nil?
        type.finished_worlds_summary = FinishedWorldsSummary.build(params[:finished_worlds_summary], context: "#{context}[:finished_worlds_summary]") unless params[:finished_worlds_summary].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.world_tags = TagMap.build(params[:world_tags], context: "#{context}[:world_tags]") unless params[:world_tags].nil?
        type
      end
    end

    module DescribeWorldInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeWorldInput, context: context)
        type = Types::DescribeWorldInput.new
        type.world = params[:world]
        type
      end
    end

    module DescribeWorldOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeWorldOutput, context: context)
        type = Types::DescribeWorldOutput.new
        type.arn = params[:arn]
        type.generation_job = params[:generation_job]
        type.template = params[:template]
        type.created_at = params[:created_at]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.world_description_body = params[:world_description_body]
        type
      end
    end

    module DescribeWorldTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeWorldTemplateInput, context: context)
        type = Types::DescribeWorldTemplateInput.new
        type.template = params[:template]
        type
      end
    end

    module DescribeWorldTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeWorldTemplateOutput, context: context)
        type = Types::DescribeWorldTemplateOutput.new
        type.arn = params[:arn]
        type.client_request_token = params[:client_request_token]
        type.name = params[:name]
        type.created_at = params[:created_at]
        type.last_updated_at = params[:last_updated_at]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.version = params[:version]
        type
      end
    end

    module Environment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Environment, context: context)
        type = Types::Environment.new
        type.uri = params[:uri]
        type
      end
    end

    module EnvironmentVariableMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module FailedCreateSimulationJobRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FailedCreateSimulationJobRequest, context: context)
        type = Types::FailedCreateSimulationJobRequest.new
        type.request = SimulationJobRequest.build(params[:request], context: "#{context}[:request]") unless params[:request].nil?
        type.failure_reason = params[:failure_reason]
        type.failure_code = params[:failure_code]
        type.failed_at = params[:failed_at]
        type
      end
    end

    module FailedCreateSimulationJobRequests
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FailedCreateSimulationJobRequest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FailureSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FailureSummary, context: context)
        type = Types::FailureSummary.new
        type.total_failure_count = params[:total_failure_count]
        type.failures = WorldFailures.build(params[:failures], context: "#{context}[:failures]") unless params[:failures].nil?
        type
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

    module FinishedWorldsSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FinishedWorldsSummary, context: context)
        type = Types::FinishedWorldsSummary.new
        type.finished_count = params[:finished_count]
        type.succeeded_worlds = Arns.build(params[:succeeded_worlds], context: "#{context}[:succeeded_worlds]") unless params[:succeeded_worlds].nil?
        type.failure_summary = FailureSummary.build(params[:failure_summary], context: "#{context}[:failure_summary]") unless params[:failure_summary].nil?
        type
      end
    end

    module Fleet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Fleet, context: context)
        type = Types::Fleet.new
        type.name = params[:name]
        type.arn = params[:arn]
        type.created_at = params[:created_at]
        type.last_deployment_status = params[:last_deployment_status]
        type.last_deployment_job = params[:last_deployment_job]
        type.last_deployment_time = params[:last_deployment_time]
        type
      end
    end

    module Fleets
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Fleet.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GetWorldTemplateBodyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetWorldTemplateBodyInput, context: context)
        type = Types::GetWorldTemplateBodyInput.new
        type.template = params[:template]
        type.generation_job = params[:generation_job]
        type
      end
    end

    module GetWorldTemplateBodyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetWorldTemplateBodyOutput, context: context)
        type = Types::GetWorldTemplateBodyOutput.new
        type.template_body = params[:template_body]
        type
      end
    end

    module IdempotentParameterMismatchException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IdempotentParameterMismatchException, context: context)
        type = Types::IdempotentParameterMismatchException.new
        type.message = params[:message]
        type
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

    module InvalidParameterException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidParameterException, context: context)
        type = Types::InvalidParameterException.new
        type.message = params[:message]
        type
      end
    end

    module LaunchConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LaunchConfig, context: context)
        type = Types::LaunchConfig.new
        type.package_name = params[:package_name]
        type.launch_file = params[:launch_file]
        type.environment_variables = EnvironmentVariableMap.build(params[:environment_variables], context: "#{context}[:environment_variables]") unless params[:environment_variables].nil?
        type.port_forwarding_config = PortForwardingConfig.build(params[:port_forwarding_config], context: "#{context}[:port_forwarding_config]") unless params[:port_forwarding_config].nil?
        type.stream_ui = params[:stream_ui]
        type.command = CommandList.build(params[:command], context: "#{context}[:command]") unless params[:command].nil?
        type
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

    module ListDeploymentJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDeploymentJobsInput, context: context)
        type = Types::ListDeploymentJobsInput.new
        type.filters = Filters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListDeploymentJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDeploymentJobsOutput, context: context)
        type = Types::ListDeploymentJobsOutput.new
        type.deployment_jobs = DeploymentJobs.build(params[:deployment_jobs], context: "#{context}[:deployment_jobs]") unless params[:deployment_jobs].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListFleetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFleetsInput, context: context)
        type = Types::ListFleetsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.filters = Filters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type
      end
    end

    module ListFleetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFleetsOutput, context: context)
        type = Types::ListFleetsOutput.new
        type.fleet_details = Fleets.build(params[:fleet_details], context: "#{context}[:fleet_details]") unless params[:fleet_details].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListRobotApplicationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRobotApplicationsInput, context: context)
        type = Types::ListRobotApplicationsInput.new
        type.version_qualifier = params[:version_qualifier]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.filters = Filters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type
      end
    end

    module ListRobotApplicationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRobotApplicationsOutput, context: context)
        type = Types::ListRobotApplicationsOutput.new
        type.robot_application_summaries = RobotApplicationSummaries.build(params[:robot_application_summaries], context: "#{context}[:robot_application_summaries]") unless params[:robot_application_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListRobotsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRobotsInput, context: context)
        type = Types::ListRobotsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.filters = Filters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type
      end
    end

    module ListRobotsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRobotsOutput, context: context)
        type = Types::ListRobotsOutput.new
        type.robots = Robots.build(params[:robots], context: "#{context}[:robots]") unless params[:robots].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListSimulationApplicationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSimulationApplicationsInput, context: context)
        type = Types::ListSimulationApplicationsInput.new
        type.version_qualifier = params[:version_qualifier]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.filters = Filters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type
      end
    end

    module ListSimulationApplicationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSimulationApplicationsOutput, context: context)
        type = Types::ListSimulationApplicationsOutput.new
        type.simulation_application_summaries = SimulationApplicationSummaries.build(params[:simulation_application_summaries], context: "#{context}[:simulation_application_summaries]") unless params[:simulation_application_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListSimulationJobBatchesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSimulationJobBatchesInput, context: context)
        type = Types::ListSimulationJobBatchesInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.filters = Filters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type
      end
    end

    module ListSimulationJobBatchesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSimulationJobBatchesOutput, context: context)
        type = Types::ListSimulationJobBatchesOutput.new
        type.simulation_job_batch_summaries = SimulationJobBatchSummaries.build(params[:simulation_job_batch_summaries], context: "#{context}[:simulation_job_batch_summaries]") unless params[:simulation_job_batch_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListSimulationJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSimulationJobsInput, context: context)
        type = Types::ListSimulationJobsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.filters = Filters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type
      end
    end

    module ListSimulationJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSimulationJobsOutput, context: context)
        type = Types::ListSimulationJobsOutput.new
        type.simulation_job_summaries = SimulationJobSummaries.build(params[:simulation_job_summaries], context: "#{context}[:simulation_job_summaries]") unless params[:simulation_job_summaries].nil?
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

    module ListWorldExportJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListWorldExportJobsInput, context: context)
        type = Types::ListWorldExportJobsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.filters = Filters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type
      end
    end

    module ListWorldExportJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListWorldExportJobsOutput, context: context)
        type = Types::ListWorldExportJobsOutput.new
        type.world_export_job_summaries = WorldExportJobSummaries.build(params[:world_export_job_summaries], context: "#{context}[:world_export_job_summaries]") unless params[:world_export_job_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListWorldGenerationJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListWorldGenerationJobsInput, context: context)
        type = Types::ListWorldGenerationJobsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.filters = Filters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type
      end
    end

    module ListWorldGenerationJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListWorldGenerationJobsOutput, context: context)
        type = Types::ListWorldGenerationJobsOutput.new
        type.world_generation_job_summaries = WorldGenerationJobSummaries.build(params[:world_generation_job_summaries], context: "#{context}[:world_generation_job_summaries]") unless params[:world_generation_job_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListWorldTemplatesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListWorldTemplatesInput, context: context)
        type = Types::ListWorldTemplatesInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListWorldTemplatesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListWorldTemplatesOutput, context: context)
        type = Types::ListWorldTemplatesOutput.new
        type.template_summaries = TemplateSummaries.build(params[:template_summaries], context: "#{context}[:template_summaries]") unless params[:template_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListWorldsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListWorldsInput, context: context)
        type = Types::ListWorldsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.filters = Filters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type
      end
    end

    module ListWorldsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListWorldsOutput, context: context)
        type = Types::ListWorldsOutput.new
        type.world_summaries = WorldSummaries.build(params[:world_summaries], context: "#{context}[:world_summaries]") unless params[:world_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module LoggingConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LoggingConfig, context: context)
        type = Types::LoggingConfig.new
        type.record_all_ros_topics = params[:record_all_ros_topics]
        type
      end
    end

    module NetworkInterface
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NetworkInterface, context: context)
        type = Types::NetworkInterface.new
        type.network_interface_id = params[:network_interface_id]
        type.private_ip_address = params[:private_ip_address]
        type.public_ip_address = params[:public_ip_address]
        type
      end
    end

    module OutputLocation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OutputLocation, context: context)
        type = Types::OutputLocation.new
        type.s3_bucket = params[:s3_bucket]
        type.s3_prefix = params[:s3_prefix]
        type
      end
    end

    module PortForwardingConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PortForwardingConfig, context: context)
        type = Types::PortForwardingConfig.new
        type.port_mappings = PortMappingList.build(params[:port_mappings], context: "#{context}[:port_mappings]") unless params[:port_mappings].nil?
        type
      end
    end

    module PortMapping
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PortMapping, context: context)
        type = Types::PortMapping.new
        type.job_port = params[:job_port]
        type.application_port = params[:application_port]
        type.enable_on_public_ip = params[:enable_on_public_ip]
        type
      end
    end

    module PortMappingList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PortMapping.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ProgressDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProgressDetail, context: context)
        type = Types::ProgressDetail.new
        type.current_progress = params[:current_progress]
        type.percent_done = params[:percent_done]
        type.estimated_time_remaining_seconds = params[:estimated_time_remaining_seconds]
        type.target_resource = params[:target_resource]
        type
      end
    end

    module RegisterRobotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterRobotInput, context: context)
        type = Types::RegisterRobotInput.new
        type.fleet = params[:fleet]
        type.robot = params[:robot]
        type
      end
    end

    module RegisterRobotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterRobotOutput, context: context)
        type = Types::RegisterRobotOutput.new
        type.fleet = params[:fleet]
        type.robot = params[:robot]
        type
      end
    end

    module RenderingEngine
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RenderingEngine, context: context)
        type = Types::RenderingEngine.new
        type.name = params[:name]
        type.version = params[:version]
        type
      end
    end

    module ResourceAlreadyExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceAlreadyExistsException, context: context)
        type = Types::ResourceAlreadyExistsException.new
        type.message = params[:message]
        type
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

    module RestartSimulationJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RestartSimulationJobInput, context: context)
        type = Types::RestartSimulationJobInput.new
        type.job = params[:job]
        type
      end
    end

    module RestartSimulationJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RestartSimulationJobOutput, context: context)
        type = Types::RestartSimulationJobOutput.new
        type
      end
    end

    module Robot
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Robot, context: context)
        type = Types::Robot.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.fleet_arn = params[:fleet_arn]
        type.status = params[:status]
        type.green_grass_group_id = params[:green_grass_group_id]
        type.created_at = params[:created_at]
        type.architecture = params[:architecture]
        type.last_deployment_job = params[:last_deployment_job]
        type.last_deployment_time = params[:last_deployment_time]
        type
      end
    end

    module RobotApplicationConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RobotApplicationConfig, context: context)
        type = Types::RobotApplicationConfig.new
        type.application = params[:application]
        type.application_version = params[:application_version]
        type.launch_config = LaunchConfig.build(params[:launch_config], context: "#{context}[:launch_config]") unless params[:launch_config].nil?
        type.upload_configurations = UploadConfigurations.build(params[:upload_configurations], context: "#{context}[:upload_configurations]") unless params[:upload_configurations].nil?
        type.use_default_upload_configurations = params[:use_default_upload_configurations]
        type.tools = Tools.build(params[:tools], context: "#{context}[:tools]") unless params[:tools].nil?
        type.use_default_tools = params[:use_default_tools]
        type
      end
    end

    module RobotApplicationConfigs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RobotApplicationConfig.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RobotApplicationNames
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module RobotApplicationSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RobotApplicationSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RobotApplicationSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RobotApplicationSummary, context: context)
        type = Types::RobotApplicationSummary.new
        type.name = params[:name]
        type.arn = params[:arn]
        type.version = params[:version]
        type.last_updated_at = params[:last_updated_at]
        type.robot_software_suite = RobotSoftwareSuite.build(params[:robot_software_suite], context: "#{context}[:robot_software_suite]") unless params[:robot_software_suite].nil?
        type
      end
    end

    module RobotDeployment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RobotDeployment, context: context)
        type = Types::RobotDeployment.new
        type.arn = params[:arn]
        type.deployment_start_time = params[:deployment_start_time]
        type.deployment_finish_time = params[:deployment_finish_time]
        type.status = params[:status]
        type.progress_detail = ProgressDetail.build(params[:progress_detail], context: "#{context}[:progress_detail]") unless params[:progress_detail].nil?
        type.failure_reason = params[:failure_reason]
        type.failure_code = params[:failure_code]
        type
      end
    end

    module RobotDeploymentSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RobotDeployment.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RobotSoftwareSuite
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RobotSoftwareSuite, context: context)
        type = Types::RobotSoftwareSuite.new
        type.name = params[:name]
        type.version = params[:version]
        type
      end
    end

    module Robots
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Robot.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module S3Etags
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module S3KeyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3KeyOutput, context: context)
        type = Types::S3KeyOutput.new
        type.s3_key = params[:s3_key]
        type.etag = params[:etag]
        type
      end
    end

    module S3KeyOutputs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << S3KeyOutput.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module S3KeysOrPrefixes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module S3Object
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3Object, context: context)
        type = Types::S3Object.new
        type.bucket = params[:bucket]
        type.key = params[:key]
        type.etag = params[:etag]
        type
      end
    end

    module SecurityGroups
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
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

    module SimulationApplicationConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SimulationApplicationConfig, context: context)
        type = Types::SimulationApplicationConfig.new
        type.application = params[:application]
        type.application_version = params[:application_version]
        type.launch_config = LaunchConfig.build(params[:launch_config], context: "#{context}[:launch_config]") unless params[:launch_config].nil?
        type.upload_configurations = UploadConfigurations.build(params[:upload_configurations], context: "#{context}[:upload_configurations]") unless params[:upload_configurations].nil?
        type.world_configs = WorldConfigs.build(params[:world_configs], context: "#{context}[:world_configs]") unless params[:world_configs].nil?
        type.use_default_upload_configurations = params[:use_default_upload_configurations]
        type.tools = Tools.build(params[:tools], context: "#{context}[:tools]") unless params[:tools].nil?
        type.use_default_tools = params[:use_default_tools]
        type
      end
    end

    module SimulationApplicationConfigs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SimulationApplicationConfig.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SimulationApplicationNames
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SimulationApplicationSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SimulationApplicationSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SimulationApplicationSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SimulationApplicationSummary, context: context)
        type = Types::SimulationApplicationSummary.new
        type.name = params[:name]
        type.arn = params[:arn]
        type.version = params[:version]
        type.last_updated_at = params[:last_updated_at]
        type.robot_software_suite = RobotSoftwareSuite.build(params[:robot_software_suite], context: "#{context}[:robot_software_suite]") unless params[:robot_software_suite].nil?
        type.simulation_software_suite = SimulationSoftwareSuite.build(params[:simulation_software_suite], context: "#{context}[:simulation_software_suite]") unless params[:simulation_software_suite].nil?
        type
      end
    end

    module SimulationJob
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SimulationJob, context: context)
        type = Types::SimulationJob.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.status = params[:status]
        type.last_started_at = params[:last_started_at]
        type.last_updated_at = params[:last_updated_at]
        type.failure_behavior = params[:failure_behavior]
        type.failure_code = params[:failure_code]
        type.failure_reason = params[:failure_reason]
        type.client_request_token = params[:client_request_token]
        type.output_location = OutputLocation.build(params[:output_location], context: "#{context}[:output_location]") unless params[:output_location].nil?
        type.logging_config = LoggingConfig.build(params[:logging_config], context: "#{context}[:logging_config]") unless params[:logging_config].nil?
        type.max_job_duration_in_seconds = params[:max_job_duration_in_seconds]
        type.simulation_time_millis = params[:simulation_time_millis]
        type.iam_role = params[:iam_role]
        type.robot_applications = RobotApplicationConfigs.build(params[:robot_applications], context: "#{context}[:robot_applications]") unless params[:robot_applications].nil?
        type.simulation_applications = SimulationApplicationConfigs.build(params[:simulation_applications], context: "#{context}[:simulation_applications]") unless params[:simulation_applications].nil?
        type.data_sources = DataSources.build(params[:data_sources], context: "#{context}[:data_sources]") unless params[:data_sources].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.vpc_config = VPCConfigResponse.build(params[:vpc_config], context: "#{context}[:vpc_config]") unless params[:vpc_config].nil?
        type.network_interface = NetworkInterface.build(params[:network_interface], context: "#{context}[:network_interface]") unless params[:network_interface].nil?
        type.compute = ComputeResponse.build(params[:compute], context: "#{context}[:compute]") unless params[:compute].nil?
        type
      end
    end

    module SimulationJobBatchSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SimulationJobBatchSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SimulationJobBatchSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SimulationJobBatchSummary, context: context)
        type = Types::SimulationJobBatchSummary.new
        type.arn = params[:arn]
        type.last_updated_at = params[:last_updated_at]
        type.created_at = params[:created_at]
        type.status = params[:status]
        type.failed_request_count = params[:failed_request_count]
        type.pending_request_count = params[:pending_request_count]
        type.created_request_count = params[:created_request_count]
        type
      end
    end

    module SimulationJobRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SimulationJobRequest, context: context)
        type = Types::SimulationJobRequest.new
        type.output_location = OutputLocation.build(params[:output_location], context: "#{context}[:output_location]") unless params[:output_location].nil?
        type.logging_config = LoggingConfig.build(params[:logging_config], context: "#{context}[:logging_config]") unless params[:logging_config].nil?
        type.max_job_duration_in_seconds = params[:max_job_duration_in_seconds]
        type.iam_role = params[:iam_role]
        type.failure_behavior = params[:failure_behavior]
        type.use_default_applications = params[:use_default_applications]
        type.robot_applications = RobotApplicationConfigs.build(params[:robot_applications], context: "#{context}[:robot_applications]") unless params[:robot_applications].nil?
        type.simulation_applications = SimulationApplicationConfigs.build(params[:simulation_applications], context: "#{context}[:simulation_applications]") unless params[:simulation_applications].nil?
        type.data_sources = DataSourceConfigs.build(params[:data_sources], context: "#{context}[:data_sources]") unless params[:data_sources].nil?
        type.vpc_config = VPCConfig.build(params[:vpc_config], context: "#{context}[:vpc_config]") unless params[:vpc_config].nil?
        type.compute = Compute.build(params[:compute], context: "#{context}[:compute]") unless params[:compute].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module SimulationJobSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SimulationJobSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SimulationJobSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SimulationJobSummary, context: context)
        type = Types::SimulationJobSummary.new
        type.arn = params[:arn]
        type.last_updated_at = params[:last_updated_at]
        type.name = params[:name]
        type.status = params[:status]
        type.simulation_application_names = SimulationApplicationNames.build(params[:simulation_application_names], context: "#{context}[:simulation_application_names]") unless params[:simulation_application_names].nil?
        type.robot_application_names = RobotApplicationNames.build(params[:robot_application_names], context: "#{context}[:robot_application_names]") unless params[:robot_application_names].nil?
        type.data_source_names = DataSourceNames.build(params[:data_source_names], context: "#{context}[:data_source_names]") unless params[:data_source_names].nil?
        type.compute_type = params[:compute_type]
        type
      end
    end

    module SimulationJobs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SimulationJob.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SimulationSoftwareSuite
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SimulationSoftwareSuite, context: context)
        type = Types::SimulationSoftwareSuite.new
        type.name = params[:name]
        type.version = params[:version]
        type
      end
    end

    module Source
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Source, context: context)
        type = Types::Source.new
        type.s3_bucket = params[:s3_bucket]
        type.s3_key = params[:s3_key]
        type.etag = params[:etag]
        type.architecture = params[:architecture]
        type
      end
    end

    module SourceConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SourceConfig, context: context)
        type = Types::SourceConfig.new
        type.s3_bucket = params[:s3_bucket]
        type.s3_key = params[:s3_key]
        type.architecture = params[:architecture]
        type
      end
    end

    module SourceConfigs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SourceConfig.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Sources
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Source.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StartSimulationJobBatchInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartSimulationJobBatchInput, context: context)
        type = Types::StartSimulationJobBatchInput.new
        type.client_request_token = params[:client_request_token] || SecureRandom.uuid
        type.batch_policy = BatchPolicy.build(params[:batch_policy], context: "#{context}[:batch_policy]") unless params[:batch_policy].nil?
        type.create_simulation_job_requests = CreateSimulationJobRequests.build(params[:create_simulation_job_requests], context: "#{context}[:create_simulation_job_requests]") unless params[:create_simulation_job_requests].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module StartSimulationJobBatchOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartSimulationJobBatchOutput, context: context)
        type = Types::StartSimulationJobBatchOutput.new
        type.arn = params[:arn]
        type.status = params[:status]
        type.created_at = params[:created_at]
        type.client_request_token = params[:client_request_token]
        type.batch_policy = BatchPolicy.build(params[:batch_policy], context: "#{context}[:batch_policy]") unless params[:batch_policy].nil?
        type.failure_code = params[:failure_code]
        type.failure_reason = params[:failure_reason]
        type.failed_requests = FailedCreateSimulationJobRequests.build(params[:failed_requests], context: "#{context}[:failed_requests]") unless params[:failed_requests].nil?
        type.pending_requests = CreateSimulationJobRequests.build(params[:pending_requests], context: "#{context}[:pending_requests]") unless params[:pending_requests].nil?
        type.created_requests = SimulationJobSummaries.build(params[:created_requests], context: "#{context}[:created_requests]") unless params[:created_requests].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module Subnets
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SyncDeploymentJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SyncDeploymentJobInput, context: context)
        type = Types::SyncDeploymentJobInput.new
        type.client_request_token = params[:client_request_token] || SecureRandom.uuid
        type.fleet = params[:fleet]
        type
      end
    end

    module SyncDeploymentJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SyncDeploymentJobOutput, context: context)
        type = Types::SyncDeploymentJobOutput.new
        type.arn = params[:arn]
        type.fleet = params[:fleet]
        type.status = params[:status]
        type.deployment_config = DeploymentConfig.build(params[:deployment_config], context: "#{context}[:deployment_config]") unless params[:deployment_config].nil?
        type.deployment_application_configs = DeploymentApplicationConfigs.build(params[:deployment_application_configs], context: "#{context}[:deployment_application_configs]") unless params[:deployment_application_configs].nil?
        type.failure_reason = params[:failure_reason]
        type.failure_code = params[:failure_code]
        type.created_at = params[:created_at]
        type
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

    module TemplateLocation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TemplateLocation, context: context)
        type = Types::TemplateLocation.new
        type.s3_bucket = params[:s3_bucket]
        type.s3_key = params[:s3_key]
        type
      end
    end

    module TemplateSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TemplateSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TemplateSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TemplateSummary, context: context)
        type = Types::TemplateSummary.new
        type.arn = params[:arn]
        type.created_at = params[:created_at]
        type.last_updated_at = params[:last_updated_at]
        type.name = params[:name]
        type.version = params[:version]
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

    module Tool
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Tool, context: context)
        type = Types::Tool.new
        type.stream_ui = params[:stream_ui]
        type.name = params[:name]
        type.command = params[:command]
        type.stream_output_to_cloud_watch = params[:stream_output_to_cloud_watch]
        type.exit_behavior = params[:exit_behavior]
        type
      end
    end

    module Tools
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tool.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
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

    module UpdateRobotApplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRobotApplicationInput, context: context)
        type = Types::UpdateRobotApplicationInput.new
        type.application = params[:application]
        type.sources = SourceConfigs.build(params[:sources], context: "#{context}[:sources]") unless params[:sources].nil?
        type.robot_software_suite = RobotSoftwareSuite.build(params[:robot_software_suite], context: "#{context}[:robot_software_suite]") unless params[:robot_software_suite].nil?
        type.current_revision_id = params[:current_revision_id]
        type.environment = Environment.build(params[:environment], context: "#{context}[:environment]") unless params[:environment].nil?
        type
      end
    end

    module UpdateRobotApplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRobotApplicationOutput, context: context)
        type = Types::UpdateRobotApplicationOutput.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.version = params[:version]
        type.sources = Sources.build(params[:sources], context: "#{context}[:sources]") unless params[:sources].nil?
        type.robot_software_suite = RobotSoftwareSuite.build(params[:robot_software_suite], context: "#{context}[:robot_software_suite]") unless params[:robot_software_suite].nil?
        type.last_updated_at = params[:last_updated_at]
        type.revision_id = params[:revision_id]
        type.environment = Environment.build(params[:environment], context: "#{context}[:environment]") unless params[:environment].nil?
        type
      end
    end

    module UpdateSimulationApplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSimulationApplicationInput, context: context)
        type = Types::UpdateSimulationApplicationInput.new
        type.application = params[:application]
        type.sources = SourceConfigs.build(params[:sources], context: "#{context}[:sources]") unless params[:sources].nil?
        type.simulation_software_suite = SimulationSoftwareSuite.build(params[:simulation_software_suite], context: "#{context}[:simulation_software_suite]") unless params[:simulation_software_suite].nil?
        type.robot_software_suite = RobotSoftwareSuite.build(params[:robot_software_suite], context: "#{context}[:robot_software_suite]") unless params[:robot_software_suite].nil?
        type.rendering_engine = RenderingEngine.build(params[:rendering_engine], context: "#{context}[:rendering_engine]") unless params[:rendering_engine].nil?
        type.current_revision_id = params[:current_revision_id]
        type.environment = Environment.build(params[:environment], context: "#{context}[:environment]") unless params[:environment].nil?
        type
      end
    end

    module UpdateSimulationApplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSimulationApplicationOutput, context: context)
        type = Types::UpdateSimulationApplicationOutput.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.version = params[:version]
        type.sources = Sources.build(params[:sources], context: "#{context}[:sources]") unless params[:sources].nil?
        type.simulation_software_suite = SimulationSoftwareSuite.build(params[:simulation_software_suite], context: "#{context}[:simulation_software_suite]") unless params[:simulation_software_suite].nil?
        type.robot_software_suite = RobotSoftwareSuite.build(params[:robot_software_suite], context: "#{context}[:robot_software_suite]") unless params[:robot_software_suite].nil?
        type.rendering_engine = RenderingEngine.build(params[:rendering_engine], context: "#{context}[:rendering_engine]") unless params[:rendering_engine].nil?
        type.last_updated_at = params[:last_updated_at]
        type.revision_id = params[:revision_id]
        type.environment = Environment.build(params[:environment], context: "#{context}[:environment]") unless params[:environment].nil?
        type
      end
    end

    module UpdateWorldTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateWorldTemplateInput, context: context)
        type = Types::UpdateWorldTemplateInput.new
        type.template = params[:template]
        type.name = params[:name]
        type.template_body = params[:template_body]
        type.template_location = TemplateLocation.build(params[:template_location], context: "#{context}[:template_location]") unless params[:template_location].nil?
        type
      end
    end

    module UpdateWorldTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateWorldTemplateOutput, context: context)
        type = Types::UpdateWorldTemplateOutput.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.created_at = params[:created_at]
        type.last_updated_at = params[:last_updated_at]
        type
      end
    end

    module UploadConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UploadConfiguration, context: context)
        type = Types::UploadConfiguration.new
        type.name = params[:name]
        type.path = params[:path]
        type.upload_behavior = params[:upload_behavior]
        type
      end
    end

    module UploadConfigurations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UploadConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module VPCConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VPCConfig, context: context)
        type = Types::VPCConfig.new
        type.subnets = Subnets.build(params[:subnets], context: "#{context}[:subnets]") unless params[:subnets].nil?
        type.security_groups = SecurityGroups.build(params[:security_groups], context: "#{context}[:security_groups]") unless params[:security_groups].nil?
        type.assign_public_ip = params[:assign_public_ip]
        type
      end
    end

    module VPCConfigResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VPCConfigResponse, context: context)
        type = Types::VPCConfigResponse.new
        type.subnets = Subnets.build(params[:subnets], context: "#{context}[:subnets]") unless params[:subnets].nil?
        type.security_groups = SecurityGroups.build(params[:security_groups], context: "#{context}[:security_groups]") unless params[:security_groups].nil?
        type.vpc_id = params[:vpc_id]
        type.assign_public_ip = params[:assign_public_ip]
        type
      end
    end

    module WorldConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WorldConfig, context: context)
        type = Types::WorldConfig.new
        type.world = params[:world]
        type
      end
    end

    module WorldConfigs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << WorldConfig.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module WorldCount
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WorldCount, context: context)
        type = Types::WorldCount.new
        type.floorplan_count = params[:floorplan_count]
        type.interior_count_per_floorplan = params[:interior_count_per_floorplan]
        type
      end
    end

    module WorldExportJobSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << WorldExportJobSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module WorldExportJobSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WorldExportJobSummary, context: context)
        type = Types::WorldExportJobSummary.new
        type.arn = params[:arn]
        type.status = params[:status]
        type.created_at = params[:created_at]
        type.worlds = Arns.build(params[:worlds], context: "#{context}[:worlds]") unless params[:worlds].nil?
        type.output_location = OutputLocation.build(params[:output_location], context: "#{context}[:output_location]") unless params[:output_location].nil?
        type
      end
    end

    module WorldFailure
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WorldFailure, context: context)
        type = Types::WorldFailure.new
        type.failure_code = params[:failure_code]
        type.sample_failure_reason = params[:sample_failure_reason]
        type.failure_count = params[:failure_count]
        type
      end
    end

    module WorldFailures
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << WorldFailure.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module WorldGenerationJobSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << WorldGenerationJobSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module WorldGenerationJobSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WorldGenerationJobSummary, context: context)
        type = Types::WorldGenerationJobSummary.new
        type.arn = params[:arn]
        type.template = params[:template]
        type.created_at = params[:created_at]
        type.status = params[:status]
        type.world_count = WorldCount.build(params[:world_count], context: "#{context}[:world_count]") unless params[:world_count].nil?
        type.succeeded_world_count = params[:succeeded_world_count]
        type.failed_world_count = params[:failed_world_count]
        type
      end
    end

    module WorldSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << WorldSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module WorldSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WorldSummary, context: context)
        type = Types::WorldSummary.new
        type.arn = params[:arn]
        type.created_at = params[:created_at]
        type.generation_job = params[:generation_job]
        type.template = params[:template]
        type
      end
    end

  end
end
