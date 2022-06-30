# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::AppConfig
  module Params

    module Application
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Application, context: context)
        type = Types::Application.new
        type.id = params[:id]
        type.name = params[:name]
        type.description = params[:description]
        type
      end
    end

    module ApplicationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Application.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BadRequestDetails
      def self.build(params, context: '')
        return params if params.is_a?(Types::BadRequestDetails)
        Hearth::Validator.validate!(params, ::Hash, Types::BadRequestDetails, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :invalid_configuration
          Types::BadRequestDetails::InvalidConfiguration.new(
            (InvalidConfigurationDetailList.build(params[:invalid_configuration], context: "#{context}[:invalid_configuration]") unless params[:invalid_configuration].nil?)
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :invalid_configuration set"
        end
      end
    end

    module BadRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BadRequestException, context: context)
        type = Types::BadRequestException.new
        type.message = params[:message]
        type.reason = params[:reason]
        type.details = BadRequestDetails.build(params[:details], context: "#{context}[:details]") unless params[:details].nil?
        type
      end
    end

    module ConfigurationProfileSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfigurationProfileSummary, context: context)
        type = Types::ConfigurationProfileSummary.new
        type.application_id = params[:application_id]
        type.id = params[:id]
        type.name = params[:name]
        type.location_uri = params[:location_uri]
        type.validator_types = ValidatorTypeList.build(params[:validator_types], context: "#{context}[:validator_types]") unless params[:validator_types].nil?
        type.type = params[:type]
        type
      end
    end

    module ConfigurationProfileSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ConfigurationProfileSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.message = params[:message]
        type
      end
    end

    module CreateApplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateApplicationInput, context: context)
        type = Types::CreateApplicationInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateApplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateApplicationOutput, context: context)
        type = Types::CreateApplicationOutput.new
        type.id = params[:id]
        type.name = params[:name]
        type.description = params[:description]
        type
      end
    end

    module CreateConfigurationProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateConfigurationProfileInput, context: context)
        type = Types::CreateConfigurationProfileInput.new
        type.application_id = params[:application_id]
        type.name = params[:name]
        type.description = params[:description]
        type.location_uri = params[:location_uri]
        type.retrieval_role_arn = params[:retrieval_role_arn]
        type.validators = ValidatorList.build(params[:validators], context: "#{context}[:validators]") unless params[:validators].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.type = params[:type]
        type
      end
    end

    module CreateConfigurationProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateConfigurationProfileOutput, context: context)
        type = Types::CreateConfigurationProfileOutput.new
        type.application_id = params[:application_id]
        type.id = params[:id]
        type.name = params[:name]
        type.description = params[:description]
        type.location_uri = params[:location_uri]
        type.retrieval_role_arn = params[:retrieval_role_arn]
        type.validators = ValidatorList.build(params[:validators], context: "#{context}[:validators]") unless params[:validators].nil?
        type.type = params[:type]
        type
      end
    end

    module CreateDeploymentStrategyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDeploymentStrategyInput, context: context)
        type = Types::CreateDeploymentStrategyInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.deployment_duration_in_minutes = params[:deployment_duration_in_minutes]
        type.final_bake_time_in_minutes = params[:final_bake_time_in_minutes]
        type.growth_factor = params[:growth_factor]
        type.growth_type = params[:growth_type]
        type.replicate_to = params[:replicate_to]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateDeploymentStrategyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDeploymentStrategyOutput, context: context)
        type = Types::CreateDeploymentStrategyOutput.new
        type.id = params[:id]
        type.name = params[:name]
        type.description = params[:description]
        type.deployment_duration_in_minutes = params[:deployment_duration_in_minutes]
        type.growth_type = params[:growth_type]
        type.growth_factor = params[:growth_factor]
        type.final_bake_time_in_minutes = params[:final_bake_time_in_minutes]
        type.replicate_to = params[:replicate_to]
        type
      end
    end

    module CreateEnvironmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEnvironmentInput, context: context)
        type = Types::CreateEnvironmentInput.new
        type.application_id = params[:application_id]
        type.name = params[:name]
        type.description = params[:description]
        type.monitors = MonitorList.build(params[:monitors], context: "#{context}[:monitors]") unless params[:monitors].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateEnvironmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEnvironmentOutput, context: context)
        type = Types::CreateEnvironmentOutput.new
        type.application_id = params[:application_id]
        type.id = params[:id]
        type.name = params[:name]
        type.description = params[:description]
        type.state = params[:state]
        type.monitors = MonitorList.build(params[:monitors], context: "#{context}[:monitors]") unless params[:monitors].nil?
        type
      end
    end

    module CreateHostedConfigurationVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateHostedConfigurationVersionInput, context: context)
        type = Types::CreateHostedConfigurationVersionInput.new
        type.application_id = params[:application_id]
        type.configuration_profile_id = params[:configuration_profile_id]
        type.description = params[:description]
        type.content = params[:content]
        type.content_type = params[:content_type]
        type.latest_version_number = params[:latest_version_number]
        type
      end
    end

    module CreateHostedConfigurationVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateHostedConfigurationVersionOutput, context: context)
        type = Types::CreateHostedConfigurationVersionOutput.new
        type.application_id = params[:application_id]
        type.configuration_profile_id = params[:configuration_profile_id]
        type.version_number = params[:version_number]
        type.description = params[:description]
        type.content = params[:content]
        type.content_type = params[:content_type]
        type
      end
    end

    module DeleteApplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteApplicationInput, context: context)
        type = Types::DeleteApplicationInput.new
        type.application_id = params[:application_id]
        type
      end
    end

    module DeleteApplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteApplicationOutput, context: context)
        type = Types::DeleteApplicationOutput.new
        type
      end
    end

    module DeleteConfigurationProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteConfigurationProfileInput, context: context)
        type = Types::DeleteConfigurationProfileInput.new
        type.application_id = params[:application_id]
        type.configuration_profile_id = params[:configuration_profile_id]
        type
      end
    end

    module DeleteConfigurationProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteConfigurationProfileOutput, context: context)
        type = Types::DeleteConfigurationProfileOutput.new
        type
      end
    end

    module DeleteDeploymentStrategyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDeploymentStrategyInput, context: context)
        type = Types::DeleteDeploymentStrategyInput.new
        type.deployment_strategy_id = params[:deployment_strategy_id]
        type
      end
    end

    module DeleteDeploymentStrategyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDeploymentStrategyOutput, context: context)
        type = Types::DeleteDeploymentStrategyOutput.new
        type
      end
    end

    module DeleteEnvironmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEnvironmentInput, context: context)
        type = Types::DeleteEnvironmentInput.new
        type.application_id = params[:application_id]
        type.environment_id = params[:environment_id]
        type
      end
    end

    module DeleteEnvironmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEnvironmentOutput, context: context)
        type = Types::DeleteEnvironmentOutput.new
        type
      end
    end

    module DeleteHostedConfigurationVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteHostedConfigurationVersionInput, context: context)
        type = Types::DeleteHostedConfigurationVersionInput.new
        type.application_id = params[:application_id]
        type.configuration_profile_id = params[:configuration_profile_id]
        type.version_number = params[:version_number]
        type
      end
    end

    module DeleteHostedConfigurationVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteHostedConfigurationVersionOutput, context: context)
        type = Types::DeleteHostedConfigurationVersionOutput.new
        type
      end
    end

    module DeploymentEvent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeploymentEvent, context: context)
        type = Types::DeploymentEvent.new
        type.event_type = params[:event_type]
        type.triggered_by = params[:triggered_by]
        type.description = params[:description]
        type.occurred_at = params[:occurred_at]
        type
      end
    end

    module DeploymentEvents
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DeploymentEvent.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DeploymentList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DeploymentSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DeploymentStrategy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeploymentStrategy, context: context)
        type = Types::DeploymentStrategy.new
        type.id = params[:id]
        type.name = params[:name]
        type.description = params[:description]
        type.deployment_duration_in_minutes = params[:deployment_duration_in_minutes]
        type.growth_type = params[:growth_type]
        type.growth_factor = params[:growth_factor]
        type.final_bake_time_in_minutes = params[:final_bake_time_in_minutes]
        type.replicate_to = params[:replicate_to]
        type
      end
    end

    module DeploymentStrategyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DeploymentStrategy.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DeploymentSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeploymentSummary, context: context)
        type = Types::DeploymentSummary.new
        type.deployment_number = params[:deployment_number]
        type.configuration_name = params[:configuration_name]
        type.configuration_version = params[:configuration_version]
        type.deployment_duration_in_minutes = params[:deployment_duration_in_minutes]
        type.growth_type = params[:growth_type]
        type.growth_factor = params[:growth_factor]
        type.final_bake_time_in_minutes = params[:final_bake_time_in_minutes]
        type.state = params[:state]
        type.percentage_complete = params[:percentage_complete]
        type.started_at = params[:started_at]
        type.completed_at = params[:completed_at]
        type
      end
    end

    module Environment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Environment, context: context)
        type = Types::Environment.new
        type.application_id = params[:application_id]
        type.id = params[:id]
        type.name = params[:name]
        type.description = params[:description]
        type.state = params[:state]
        type.monitors = MonitorList.build(params[:monitors], context: "#{context}[:monitors]") unless params[:monitors].nil?
        type
      end
    end

    module EnvironmentList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Environment.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GetApplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetApplicationInput, context: context)
        type = Types::GetApplicationInput.new
        type.application_id = params[:application_id]
        type
      end
    end

    module GetApplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetApplicationOutput, context: context)
        type = Types::GetApplicationOutput.new
        type.id = params[:id]
        type.name = params[:name]
        type.description = params[:description]
        type
      end
    end

    module GetConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetConfigurationInput, context: context)
        type = Types::GetConfigurationInput.new
        type.application = params[:application]
        type.environment = params[:environment]
        type.configuration = params[:configuration]
        type.client_id = params[:client_id]
        type.client_configuration_version = params[:client_configuration_version]
        type
      end
    end

    module GetConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetConfigurationOutput, context: context)
        type = Types::GetConfigurationOutput.new
        type.content = params[:content]
        type.configuration_version = params[:configuration_version]
        type.content_type = params[:content_type]
        type
      end
    end

    module GetConfigurationProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetConfigurationProfileInput, context: context)
        type = Types::GetConfigurationProfileInput.new
        type.application_id = params[:application_id]
        type.configuration_profile_id = params[:configuration_profile_id]
        type
      end
    end

    module GetConfigurationProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetConfigurationProfileOutput, context: context)
        type = Types::GetConfigurationProfileOutput.new
        type.application_id = params[:application_id]
        type.id = params[:id]
        type.name = params[:name]
        type.description = params[:description]
        type.location_uri = params[:location_uri]
        type.retrieval_role_arn = params[:retrieval_role_arn]
        type.validators = ValidatorList.build(params[:validators], context: "#{context}[:validators]") unless params[:validators].nil?
        type.type = params[:type]
        type
      end
    end

    module GetDeploymentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDeploymentInput, context: context)
        type = Types::GetDeploymentInput.new
        type.application_id = params[:application_id]
        type.environment_id = params[:environment_id]
        type.deployment_number = params[:deployment_number]
        type
      end
    end

    module GetDeploymentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDeploymentOutput, context: context)
        type = Types::GetDeploymentOutput.new
        type.application_id = params[:application_id]
        type.environment_id = params[:environment_id]
        type.deployment_strategy_id = params[:deployment_strategy_id]
        type.configuration_profile_id = params[:configuration_profile_id]
        type.deployment_number = params[:deployment_number]
        type.configuration_name = params[:configuration_name]
        type.configuration_location_uri = params[:configuration_location_uri]
        type.configuration_version = params[:configuration_version]
        type.description = params[:description]
        type.deployment_duration_in_minutes = params[:deployment_duration_in_minutes]
        type.growth_type = params[:growth_type]
        type.growth_factor = params[:growth_factor]
        type.final_bake_time_in_minutes = params[:final_bake_time_in_minutes]
        type.state = params[:state]
        type.event_log = DeploymentEvents.build(params[:event_log], context: "#{context}[:event_log]") unless params[:event_log].nil?
        type.percentage_complete = params[:percentage_complete]
        type.started_at = params[:started_at]
        type.completed_at = params[:completed_at]
        type
      end
    end

    module GetDeploymentStrategyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDeploymentStrategyInput, context: context)
        type = Types::GetDeploymentStrategyInput.new
        type.deployment_strategy_id = params[:deployment_strategy_id]
        type
      end
    end

    module GetDeploymentStrategyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDeploymentStrategyOutput, context: context)
        type = Types::GetDeploymentStrategyOutput.new
        type.id = params[:id]
        type.name = params[:name]
        type.description = params[:description]
        type.deployment_duration_in_minutes = params[:deployment_duration_in_minutes]
        type.growth_type = params[:growth_type]
        type.growth_factor = params[:growth_factor]
        type.final_bake_time_in_minutes = params[:final_bake_time_in_minutes]
        type.replicate_to = params[:replicate_to]
        type
      end
    end

    module GetEnvironmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEnvironmentInput, context: context)
        type = Types::GetEnvironmentInput.new
        type.application_id = params[:application_id]
        type.environment_id = params[:environment_id]
        type
      end
    end

    module GetEnvironmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEnvironmentOutput, context: context)
        type = Types::GetEnvironmentOutput.new
        type.application_id = params[:application_id]
        type.id = params[:id]
        type.name = params[:name]
        type.description = params[:description]
        type.state = params[:state]
        type.monitors = MonitorList.build(params[:monitors], context: "#{context}[:monitors]") unless params[:monitors].nil?
        type
      end
    end

    module GetHostedConfigurationVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetHostedConfigurationVersionInput, context: context)
        type = Types::GetHostedConfigurationVersionInput.new
        type.application_id = params[:application_id]
        type.configuration_profile_id = params[:configuration_profile_id]
        type.version_number = params[:version_number]
        type
      end
    end

    module GetHostedConfigurationVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetHostedConfigurationVersionOutput, context: context)
        type = Types::GetHostedConfigurationVersionOutput.new
        type.application_id = params[:application_id]
        type.configuration_profile_id = params[:configuration_profile_id]
        type.version_number = params[:version_number]
        type.description = params[:description]
        type.content = params[:content]
        type.content_type = params[:content_type]
        type
      end
    end

    module HostedConfigurationVersionSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HostedConfigurationVersionSummary, context: context)
        type = Types::HostedConfigurationVersionSummary.new
        type.application_id = params[:application_id]
        type.configuration_profile_id = params[:configuration_profile_id]
        type.version_number = params[:version_number]
        type.description = params[:description]
        type.content_type = params[:content_type]
        type
      end
    end

    module HostedConfigurationVersionSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << HostedConfigurationVersionSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
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

    module InvalidConfigurationDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidConfigurationDetail, context: context)
        type = Types::InvalidConfigurationDetail.new
        type.constraint = params[:constraint]
        type.location = params[:location]
        type.reason = params[:reason]
        type.type = params[:type]
        type
      end
    end

    module InvalidConfigurationDetailList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InvalidConfigurationDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListApplicationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListApplicationsInput, context: context)
        type = Types::ListApplicationsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListApplicationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListApplicationsOutput, context: context)
        type = Types::ListApplicationsOutput.new
        type.items = ApplicationList.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListConfigurationProfilesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListConfigurationProfilesInput, context: context)
        type = Types::ListConfigurationProfilesInput.new
        type.application_id = params[:application_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.type = params[:type]
        type
      end
    end

    module ListConfigurationProfilesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListConfigurationProfilesOutput, context: context)
        type = Types::ListConfigurationProfilesOutput.new
        type.items = ConfigurationProfileSummaryList.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDeploymentStrategiesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDeploymentStrategiesInput, context: context)
        type = Types::ListDeploymentStrategiesInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDeploymentStrategiesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDeploymentStrategiesOutput, context: context)
        type = Types::ListDeploymentStrategiesOutput.new
        type.items = DeploymentStrategyList.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDeploymentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDeploymentsInput, context: context)
        type = Types::ListDeploymentsInput.new
        type.application_id = params[:application_id]
        type.environment_id = params[:environment_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDeploymentsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDeploymentsOutput, context: context)
        type = Types::ListDeploymentsOutput.new
        type.items = DeploymentList.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListEnvironmentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEnvironmentsInput, context: context)
        type = Types::ListEnvironmentsInput.new
        type.application_id = params[:application_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListEnvironmentsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEnvironmentsOutput, context: context)
        type = Types::ListEnvironmentsOutput.new
        type.items = EnvironmentList.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListHostedConfigurationVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListHostedConfigurationVersionsInput, context: context)
        type = Types::ListHostedConfigurationVersionsInput.new
        type.application_id = params[:application_id]
        type.configuration_profile_id = params[:configuration_profile_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListHostedConfigurationVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListHostedConfigurationVersionsOutput, context: context)
        type = Types::ListHostedConfigurationVersionsOutput.new
        type.items = HostedConfigurationVersionSummaryList.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
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

    module Monitor
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Monitor, context: context)
        type = Types::Monitor.new
        type.alarm_arn = params[:alarm_arn]
        type.alarm_role_arn = params[:alarm_role_arn]
        type
      end
    end

    module MonitorList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Monitor.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PayloadTooLargeException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PayloadTooLargeException, context: context)
        type = Types::PayloadTooLargeException.new
        type.message = params[:message]
        type.measure = params[:measure]
        type.limit = params[:limit]
        type.size = params[:size]
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type.resource_name = params[:resource_name]
        type
      end
    end

    module ServiceQuotaExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceQuotaExceededException, context: context)
        type = Types::ServiceQuotaExceededException.new
        type.message = params[:message]
        type
      end
    end

    module StartDeploymentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartDeploymentInput, context: context)
        type = Types::StartDeploymentInput.new
        type.application_id = params[:application_id]
        type.environment_id = params[:environment_id]
        type.deployment_strategy_id = params[:deployment_strategy_id]
        type.configuration_profile_id = params[:configuration_profile_id]
        type.configuration_version = params[:configuration_version]
        type.description = params[:description]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module StartDeploymentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartDeploymentOutput, context: context)
        type = Types::StartDeploymentOutput.new
        type.application_id = params[:application_id]
        type.environment_id = params[:environment_id]
        type.deployment_strategy_id = params[:deployment_strategy_id]
        type.configuration_profile_id = params[:configuration_profile_id]
        type.deployment_number = params[:deployment_number]
        type.configuration_name = params[:configuration_name]
        type.configuration_location_uri = params[:configuration_location_uri]
        type.configuration_version = params[:configuration_version]
        type.description = params[:description]
        type.deployment_duration_in_minutes = params[:deployment_duration_in_minutes]
        type.growth_type = params[:growth_type]
        type.growth_factor = params[:growth_factor]
        type.final_bake_time_in_minutes = params[:final_bake_time_in_minutes]
        type.state = params[:state]
        type.event_log = DeploymentEvents.build(params[:event_log], context: "#{context}[:event_log]") unless params[:event_log].nil?
        type.percentage_complete = params[:percentage_complete]
        type.started_at = params[:started_at]
        type.completed_at = params[:completed_at]
        type
      end
    end

    module StopDeploymentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopDeploymentInput, context: context)
        type = Types::StopDeploymentInput.new
        type.application_id = params[:application_id]
        type.environment_id = params[:environment_id]
        type.deployment_number = params[:deployment_number]
        type
      end
    end

    module StopDeploymentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopDeploymentOutput, context: context)
        type = Types::StopDeploymentOutput.new
        type.application_id = params[:application_id]
        type.environment_id = params[:environment_id]
        type.deployment_strategy_id = params[:deployment_strategy_id]
        type.configuration_profile_id = params[:configuration_profile_id]
        type.deployment_number = params[:deployment_number]
        type.configuration_name = params[:configuration_name]
        type.configuration_location_uri = params[:configuration_location_uri]
        type.configuration_version = params[:configuration_version]
        type.description = params[:description]
        type.deployment_duration_in_minutes = params[:deployment_duration_in_minutes]
        type.growth_type = params[:growth_type]
        type.growth_factor = params[:growth_factor]
        type.final_bake_time_in_minutes = params[:final_bake_time_in_minutes]
        type.state = params[:state]
        type.event_log = DeploymentEvents.build(params[:event_log], context: "#{context}[:event_log]") unless params[:event_log].nil?
        type.percentage_complete = params[:percentage_complete]
        type.started_at = params[:started_at]
        type.completed_at = params[:completed_at]
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

    module UpdateApplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateApplicationInput, context: context)
        type = Types::UpdateApplicationInput.new
        type.application_id = params[:application_id]
        type.name = params[:name]
        type.description = params[:description]
        type
      end
    end

    module UpdateApplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateApplicationOutput, context: context)
        type = Types::UpdateApplicationOutput.new
        type.id = params[:id]
        type.name = params[:name]
        type.description = params[:description]
        type
      end
    end

    module UpdateConfigurationProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateConfigurationProfileInput, context: context)
        type = Types::UpdateConfigurationProfileInput.new
        type.application_id = params[:application_id]
        type.configuration_profile_id = params[:configuration_profile_id]
        type.name = params[:name]
        type.description = params[:description]
        type.retrieval_role_arn = params[:retrieval_role_arn]
        type.validators = ValidatorList.build(params[:validators], context: "#{context}[:validators]") unless params[:validators].nil?
        type
      end
    end

    module UpdateConfigurationProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateConfigurationProfileOutput, context: context)
        type = Types::UpdateConfigurationProfileOutput.new
        type.application_id = params[:application_id]
        type.id = params[:id]
        type.name = params[:name]
        type.description = params[:description]
        type.location_uri = params[:location_uri]
        type.retrieval_role_arn = params[:retrieval_role_arn]
        type.validators = ValidatorList.build(params[:validators], context: "#{context}[:validators]") unless params[:validators].nil?
        type.type = params[:type]
        type
      end
    end

    module UpdateDeploymentStrategyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDeploymentStrategyInput, context: context)
        type = Types::UpdateDeploymentStrategyInput.new
        type.deployment_strategy_id = params[:deployment_strategy_id]
        type.description = params[:description]
        type.deployment_duration_in_minutes = params[:deployment_duration_in_minutes]
        type.final_bake_time_in_minutes = params[:final_bake_time_in_minutes]
        type.growth_factor = params[:growth_factor]
        type.growth_type = params[:growth_type]
        type
      end
    end

    module UpdateDeploymentStrategyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDeploymentStrategyOutput, context: context)
        type = Types::UpdateDeploymentStrategyOutput.new
        type.id = params[:id]
        type.name = params[:name]
        type.description = params[:description]
        type.deployment_duration_in_minutes = params[:deployment_duration_in_minutes]
        type.growth_type = params[:growth_type]
        type.growth_factor = params[:growth_factor]
        type.final_bake_time_in_minutes = params[:final_bake_time_in_minutes]
        type.replicate_to = params[:replicate_to]
        type
      end
    end

    module UpdateEnvironmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateEnvironmentInput, context: context)
        type = Types::UpdateEnvironmentInput.new
        type.application_id = params[:application_id]
        type.environment_id = params[:environment_id]
        type.name = params[:name]
        type.description = params[:description]
        type.monitors = MonitorList.build(params[:monitors], context: "#{context}[:monitors]") unless params[:monitors].nil?
        type
      end
    end

    module UpdateEnvironmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateEnvironmentOutput, context: context)
        type = Types::UpdateEnvironmentOutput.new
        type.application_id = params[:application_id]
        type.id = params[:id]
        type.name = params[:name]
        type.description = params[:description]
        type.state = params[:state]
        type.monitors = MonitorList.build(params[:monitors], context: "#{context}[:monitors]") unless params[:monitors].nil?
        type
      end
    end

    module ValidateConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidateConfigurationInput, context: context)
        type = Types::ValidateConfigurationInput.new
        type.application_id = params[:application_id]
        type.configuration_profile_id = params[:configuration_profile_id]
        type.configuration_version = params[:configuration_version]
        type
      end
    end

    module ValidateConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidateConfigurationOutput, context: context)
        type = Types::ValidateConfigurationOutput.new
        type
      end
    end

    module Validator
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Validator, context: context)
        type = Types::Validator.new
        type.type = params[:type]
        type.content = params[:content]
        type
      end
    end

    module ValidatorList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Validator.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ValidatorTypeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

  end
end
