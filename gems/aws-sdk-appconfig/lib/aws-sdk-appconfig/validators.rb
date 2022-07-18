# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::AppConfig
  module Validators

    class Application
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Application, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class ApplicationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Application.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BadRequestDetails
      def self.validate!(input, context:)
        case input
        when Types::BadRequestDetails::InvalidConfiguration
          InvalidConfigurationDetailList.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::BadRequestDetails, got #{input.class}."
        end
      end

      class InvalidConfiguration
        def self.validate!(input, context:)
          Validators::InvalidConfigurationDetailList.validate!(input, context: context) unless input.nil?
        end
      end
    end

    class BadRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BadRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
        BadRequestDetails.validate!(input[:details], context: "#{context}[:details]") unless input[:details].nil?
      end
    end

    class ConfigurationProfileSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfigurationProfileSummary, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:location_uri], ::String, context: "#{context}[:location_uri]")
        ValidatorTypeList.validate!(input[:validator_types], context: "#{context}[:validator_types]") unless input[:validator_types].nil?
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class ConfigurationProfileSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ConfigurationProfileSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CreateApplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateApplicationInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateApplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateApplicationOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class CreateConfigurationProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateConfigurationProfileInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:location_uri], ::String, context: "#{context}[:location_uri]")
        Hearth::Validator.validate!(input[:retrieval_role_arn], ::String, context: "#{context}[:retrieval_role_arn]")
        ValidatorList.validate!(input[:validators], context: "#{context}[:validators]") unless input[:validators].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class CreateConfigurationProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateConfigurationProfileOutput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:location_uri], ::String, context: "#{context}[:location_uri]")
        Hearth::Validator.validate!(input[:retrieval_role_arn], ::String, context: "#{context}[:retrieval_role_arn]")
        ValidatorList.validate!(input[:validators], context: "#{context}[:validators]") unless input[:validators].nil?
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class CreateDeploymentStrategyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDeploymentStrategyInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:deployment_duration_in_minutes], ::Integer, context: "#{context}[:deployment_duration_in_minutes]")
        Hearth::Validator.validate!(input[:final_bake_time_in_minutes], ::Integer, context: "#{context}[:final_bake_time_in_minutes]")
        Hearth::Validator.validate!(input[:growth_factor], ::Float, context: "#{context}[:growth_factor]")
        Hearth::Validator.validate!(input[:growth_type], ::String, context: "#{context}[:growth_type]")
        Hearth::Validator.validate!(input[:replicate_to], ::String, context: "#{context}[:replicate_to]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateDeploymentStrategyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDeploymentStrategyOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:deployment_duration_in_minutes], ::Integer, context: "#{context}[:deployment_duration_in_minutes]")
        Hearth::Validator.validate!(input[:growth_type], ::String, context: "#{context}[:growth_type]")
        Hearth::Validator.validate!(input[:growth_factor], ::Float, context: "#{context}[:growth_factor]")
        Hearth::Validator.validate!(input[:final_bake_time_in_minutes], ::Integer, context: "#{context}[:final_bake_time_in_minutes]")
        Hearth::Validator.validate!(input[:replicate_to], ::String, context: "#{context}[:replicate_to]")
      end
    end

    class CreateEnvironmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEnvironmentInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        MonitorList.validate!(input[:monitors], context: "#{context}[:monitors]") unless input[:monitors].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateEnvironmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEnvironmentOutput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        MonitorList.validate!(input[:monitors], context: "#{context}[:monitors]") unless input[:monitors].nil?
      end
    end

    class CreateHostedConfigurationVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateHostedConfigurationVersionInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:configuration_profile_id], ::String, context: "#{context}[:configuration_profile_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:content], ::String, context: "#{context}[:content]")
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
        Hearth::Validator.validate!(input[:latest_version_number], ::Integer, context: "#{context}[:latest_version_number]")
      end
    end

    class CreateHostedConfigurationVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateHostedConfigurationVersionOutput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:configuration_profile_id], ::String, context: "#{context}[:configuration_profile_id]")
        Hearth::Validator.validate!(input[:version_number], ::Integer, context: "#{context}[:version_number]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:content], ::String, context: "#{context}[:content]")
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
      end
    end

    class DeleteApplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteApplicationInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
      end
    end

    class DeleteApplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteApplicationOutput, context: context)
      end
    end

    class DeleteConfigurationProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteConfigurationProfileInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:configuration_profile_id], ::String, context: "#{context}[:configuration_profile_id]")
      end
    end

    class DeleteConfigurationProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteConfigurationProfileOutput, context: context)
      end
    end

    class DeleteDeploymentStrategyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDeploymentStrategyInput, context: context)
        Hearth::Validator.validate!(input[:deployment_strategy_id], ::String, context: "#{context}[:deployment_strategy_id]")
      end
    end

    class DeleteDeploymentStrategyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDeploymentStrategyOutput, context: context)
      end
    end

    class DeleteEnvironmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEnvironmentInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:environment_id], ::String, context: "#{context}[:environment_id]")
      end
    end

    class DeleteEnvironmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEnvironmentOutput, context: context)
      end
    end

    class DeleteHostedConfigurationVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteHostedConfigurationVersionInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:configuration_profile_id], ::String, context: "#{context}[:configuration_profile_id]")
        Hearth::Validator.validate!(input[:version_number], ::Integer, context: "#{context}[:version_number]")
      end
    end

    class DeleteHostedConfigurationVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteHostedConfigurationVersionOutput, context: context)
      end
    end

    class DeploymentEvent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeploymentEvent, context: context)
        Hearth::Validator.validate!(input[:event_type], ::String, context: "#{context}[:event_type]")
        Hearth::Validator.validate!(input[:triggered_by], ::String, context: "#{context}[:triggered_by]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:occurred_at], ::Time, context: "#{context}[:occurred_at]")
      end
    end

    class DeploymentEvents
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DeploymentEvent.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeploymentList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DeploymentSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeploymentStrategy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeploymentStrategy, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:deployment_duration_in_minutes], ::Integer, context: "#{context}[:deployment_duration_in_minutes]")
        Hearth::Validator.validate!(input[:growth_type], ::String, context: "#{context}[:growth_type]")
        Hearth::Validator.validate!(input[:growth_factor], ::Float, context: "#{context}[:growth_factor]")
        Hearth::Validator.validate!(input[:final_bake_time_in_minutes], ::Integer, context: "#{context}[:final_bake_time_in_minutes]")
        Hearth::Validator.validate!(input[:replicate_to], ::String, context: "#{context}[:replicate_to]")
      end
    end

    class DeploymentStrategyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DeploymentStrategy.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeploymentSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeploymentSummary, context: context)
        Hearth::Validator.validate!(input[:deployment_number], ::Integer, context: "#{context}[:deployment_number]")
        Hearth::Validator.validate!(input[:configuration_name], ::String, context: "#{context}[:configuration_name]")
        Hearth::Validator.validate!(input[:configuration_version], ::String, context: "#{context}[:configuration_version]")
        Hearth::Validator.validate!(input[:deployment_duration_in_minutes], ::Integer, context: "#{context}[:deployment_duration_in_minutes]")
        Hearth::Validator.validate!(input[:growth_type], ::String, context: "#{context}[:growth_type]")
        Hearth::Validator.validate!(input[:growth_factor], ::Float, context: "#{context}[:growth_factor]")
        Hearth::Validator.validate!(input[:final_bake_time_in_minutes], ::Integer, context: "#{context}[:final_bake_time_in_minutes]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:percentage_complete], ::Float, context: "#{context}[:percentage_complete]")
        Hearth::Validator.validate!(input[:started_at], ::Time, context: "#{context}[:started_at]")
        Hearth::Validator.validate!(input[:completed_at], ::Time, context: "#{context}[:completed_at]")
      end
    end

    class Environment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Environment, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        MonitorList.validate!(input[:monitors], context: "#{context}[:monitors]") unless input[:monitors].nil?
      end
    end

    class EnvironmentList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Environment.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GetApplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetApplicationInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
      end
    end

    class GetApplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetApplicationOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class GetConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:application], ::String, context: "#{context}[:application]")
        Hearth::Validator.validate!(input[:environment], ::String, context: "#{context}[:environment]")
        Hearth::Validator.validate!(input[:configuration], ::String, context: "#{context}[:configuration]")
        Hearth::Validator.validate!(input[:client_id], ::String, context: "#{context}[:client_id]")
        Hearth::Validator.validate!(input[:client_configuration_version], ::String, context: "#{context}[:client_configuration_version]")
      end
    end

    class GetConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:content], ::String, context: "#{context}[:content]")
        Hearth::Validator.validate!(input[:configuration_version], ::String, context: "#{context}[:configuration_version]")
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
      end
    end

    class GetConfigurationProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetConfigurationProfileInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:configuration_profile_id], ::String, context: "#{context}[:configuration_profile_id]")
      end
    end

    class GetConfigurationProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetConfigurationProfileOutput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:location_uri], ::String, context: "#{context}[:location_uri]")
        Hearth::Validator.validate!(input[:retrieval_role_arn], ::String, context: "#{context}[:retrieval_role_arn]")
        ValidatorList.validate!(input[:validators], context: "#{context}[:validators]") unless input[:validators].nil?
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class GetDeploymentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDeploymentInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:environment_id], ::String, context: "#{context}[:environment_id]")
        Hearth::Validator.validate!(input[:deployment_number], ::Integer, context: "#{context}[:deployment_number]")
      end
    end

    class GetDeploymentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDeploymentOutput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:environment_id], ::String, context: "#{context}[:environment_id]")
        Hearth::Validator.validate!(input[:deployment_strategy_id], ::String, context: "#{context}[:deployment_strategy_id]")
        Hearth::Validator.validate!(input[:configuration_profile_id], ::String, context: "#{context}[:configuration_profile_id]")
        Hearth::Validator.validate!(input[:deployment_number], ::Integer, context: "#{context}[:deployment_number]")
        Hearth::Validator.validate!(input[:configuration_name], ::String, context: "#{context}[:configuration_name]")
        Hearth::Validator.validate!(input[:configuration_location_uri], ::String, context: "#{context}[:configuration_location_uri]")
        Hearth::Validator.validate!(input[:configuration_version], ::String, context: "#{context}[:configuration_version]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:deployment_duration_in_minutes], ::Integer, context: "#{context}[:deployment_duration_in_minutes]")
        Hearth::Validator.validate!(input[:growth_type], ::String, context: "#{context}[:growth_type]")
        Hearth::Validator.validate!(input[:growth_factor], ::Float, context: "#{context}[:growth_factor]")
        Hearth::Validator.validate!(input[:final_bake_time_in_minutes], ::Integer, context: "#{context}[:final_bake_time_in_minutes]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        DeploymentEvents.validate!(input[:event_log], context: "#{context}[:event_log]") unless input[:event_log].nil?
        Hearth::Validator.validate!(input[:percentage_complete], ::Float, context: "#{context}[:percentage_complete]")
        Hearth::Validator.validate!(input[:started_at], ::Time, context: "#{context}[:started_at]")
        Hearth::Validator.validate!(input[:completed_at], ::Time, context: "#{context}[:completed_at]")
      end
    end

    class GetDeploymentStrategyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDeploymentStrategyInput, context: context)
        Hearth::Validator.validate!(input[:deployment_strategy_id], ::String, context: "#{context}[:deployment_strategy_id]")
      end
    end

    class GetDeploymentStrategyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDeploymentStrategyOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:deployment_duration_in_minutes], ::Integer, context: "#{context}[:deployment_duration_in_minutes]")
        Hearth::Validator.validate!(input[:growth_type], ::String, context: "#{context}[:growth_type]")
        Hearth::Validator.validate!(input[:growth_factor], ::Float, context: "#{context}[:growth_factor]")
        Hearth::Validator.validate!(input[:final_bake_time_in_minutes], ::Integer, context: "#{context}[:final_bake_time_in_minutes]")
        Hearth::Validator.validate!(input[:replicate_to], ::String, context: "#{context}[:replicate_to]")
      end
    end

    class GetEnvironmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEnvironmentInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:environment_id], ::String, context: "#{context}[:environment_id]")
      end
    end

    class GetEnvironmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEnvironmentOutput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        MonitorList.validate!(input[:monitors], context: "#{context}[:monitors]") unless input[:monitors].nil?
      end
    end

    class GetHostedConfigurationVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetHostedConfigurationVersionInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:configuration_profile_id], ::String, context: "#{context}[:configuration_profile_id]")
        Hearth::Validator.validate!(input[:version_number], ::Integer, context: "#{context}[:version_number]")
      end
    end

    class GetHostedConfigurationVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetHostedConfigurationVersionOutput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:configuration_profile_id], ::String, context: "#{context}[:configuration_profile_id]")
        Hearth::Validator.validate!(input[:version_number], ::Integer, context: "#{context}[:version_number]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:content], ::String, context: "#{context}[:content]")
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
      end
    end

    class HostedConfigurationVersionSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HostedConfigurationVersionSummary, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:configuration_profile_id], ::String, context: "#{context}[:configuration_profile_id]")
        Hearth::Validator.validate!(input[:version_number], ::Integer, context: "#{context}[:version_number]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
      end
    end

    class HostedConfigurationVersionSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          HostedConfigurationVersionSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidConfigurationDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidConfigurationDetail, context: context)
        Hearth::Validator.validate!(input[:constraint], ::String, context: "#{context}[:constraint]")
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class InvalidConfigurationDetailList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InvalidConfigurationDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListApplicationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListApplicationsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListApplicationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListApplicationsOutput, context: context)
        ApplicationList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListConfigurationProfilesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListConfigurationProfilesInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class ListConfigurationProfilesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListConfigurationProfilesOutput, context: context)
        ConfigurationProfileSummaryList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDeploymentStrategiesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDeploymentStrategiesInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDeploymentStrategiesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDeploymentStrategiesOutput, context: context)
        DeploymentStrategyList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDeploymentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDeploymentsInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:environment_id], ::String, context: "#{context}[:environment_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDeploymentsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDeploymentsOutput, context: context)
        DeploymentList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListEnvironmentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEnvironmentsInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListEnvironmentsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEnvironmentsOutput, context: context)
        EnvironmentList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListHostedConfigurationVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListHostedConfigurationVersionsInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:configuration_profile_id], ::String, context: "#{context}[:configuration_profile_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListHostedConfigurationVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListHostedConfigurationVersionsOutput, context: context)
        HostedConfigurationVersionSummaryList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
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

    class Monitor
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Monitor, context: context)
        Hearth::Validator.validate!(input[:alarm_arn], ::String, context: "#{context}[:alarm_arn]")
        Hearth::Validator.validate!(input[:alarm_role_arn], ::String, context: "#{context}[:alarm_role_arn]")
      end
    end

    class MonitorList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Monitor.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PayloadTooLargeException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PayloadTooLargeException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:measure], ::String, context: "#{context}[:measure]")
        Hearth::Validator.validate!(input[:limit], ::Float, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:size], ::Float, context: "#{context}[:size]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
      end
    end

    class ServiceQuotaExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceQuotaExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class StartDeploymentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartDeploymentInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:environment_id], ::String, context: "#{context}[:environment_id]")
        Hearth::Validator.validate!(input[:deployment_strategy_id], ::String, context: "#{context}[:deployment_strategy_id]")
        Hearth::Validator.validate!(input[:configuration_profile_id], ::String, context: "#{context}[:configuration_profile_id]")
        Hearth::Validator.validate!(input[:configuration_version], ::String, context: "#{context}[:configuration_version]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class StartDeploymentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartDeploymentOutput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:environment_id], ::String, context: "#{context}[:environment_id]")
        Hearth::Validator.validate!(input[:deployment_strategy_id], ::String, context: "#{context}[:deployment_strategy_id]")
        Hearth::Validator.validate!(input[:configuration_profile_id], ::String, context: "#{context}[:configuration_profile_id]")
        Hearth::Validator.validate!(input[:deployment_number], ::Integer, context: "#{context}[:deployment_number]")
        Hearth::Validator.validate!(input[:configuration_name], ::String, context: "#{context}[:configuration_name]")
        Hearth::Validator.validate!(input[:configuration_location_uri], ::String, context: "#{context}[:configuration_location_uri]")
        Hearth::Validator.validate!(input[:configuration_version], ::String, context: "#{context}[:configuration_version]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:deployment_duration_in_minutes], ::Integer, context: "#{context}[:deployment_duration_in_minutes]")
        Hearth::Validator.validate!(input[:growth_type], ::String, context: "#{context}[:growth_type]")
        Hearth::Validator.validate!(input[:growth_factor], ::Float, context: "#{context}[:growth_factor]")
        Hearth::Validator.validate!(input[:final_bake_time_in_minutes], ::Integer, context: "#{context}[:final_bake_time_in_minutes]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        DeploymentEvents.validate!(input[:event_log], context: "#{context}[:event_log]") unless input[:event_log].nil?
        Hearth::Validator.validate!(input[:percentage_complete], ::Float, context: "#{context}[:percentage_complete]")
        Hearth::Validator.validate!(input[:started_at], ::Time, context: "#{context}[:started_at]")
        Hearth::Validator.validate!(input[:completed_at], ::Time, context: "#{context}[:completed_at]")
      end
    end

    class StopDeploymentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopDeploymentInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:environment_id], ::String, context: "#{context}[:environment_id]")
        Hearth::Validator.validate!(input[:deployment_number], ::Integer, context: "#{context}[:deployment_number]")
      end
    end

    class StopDeploymentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopDeploymentOutput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:environment_id], ::String, context: "#{context}[:environment_id]")
        Hearth::Validator.validate!(input[:deployment_strategy_id], ::String, context: "#{context}[:deployment_strategy_id]")
        Hearth::Validator.validate!(input[:configuration_profile_id], ::String, context: "#{context}[:configuration_profile_id]")
        Hearth::Validator.validate!(input[:deployment_number], ::Integer, context: "#{context}[:deployment_number]")
        Hearth::Validator.validate!(input[:configuration_name], ::String, context: "#{context}[:configuration_name]")
        Hearth::Validator.validate!(input[:configuration_location_uri], ::String, context: "#{context}[:configuration_location_uri]")
        Hearth::Validator.validate!(input[:configuration_version], ::String, context: "#{context}[:configuration_version]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:deployment_duration_in_minutes], ::Integer, context: "#{context}[:deployment_duration_in_minutes]")
        Hearth::Validator.validate!(input[:growth_type], ::String, context: "#{context}[:growth_type]")
        Hearth::Validator.validate!(input[:growth_factor], ::Float, context: "#{context}[:growth_factor]")
        Hearth::Validator.validate!(input[:final_bake_time_in_minutes], ::Integer, context: "#{context}[:final_bake_time_in_minutes]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        DeploymentEvents.validate!(input[:event_log], context: "#{context}[:event_log]") unless input[:event_log].nil?
        Hearth::Validator.validate!(input[:percentage_complete], ::Float, context: "#{context}[:percentage_complete]")
        Hearth::Validator.validate!(input[:started_at], ::Time, context: "#{context}[:started_at]")
        Hearth::Validator.validate!(input[:completed_at], ::Time, context: "#{context}[:completed_at]")
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

    class UpdateApplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateApplicationInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class UpdateApplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateApplicationOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class UpdateConfigurationProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateConfigurationProfileInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:configuration_profile_id], ::String, context: "#{context}[:configuration_profile_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:retrieval_role_arn], ::String, context: "#{context}[:retrieval_role_arn]")
        ValidatorList.validate!(input[:validators], context: "#{context}[:validators]") unless input[:validators].nil?
      end
    end

    class UpdateConfigurationProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateConfigurationProfileOutput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:location_uri], ::String, context: "#{context}[:location_uri]")
        Hearth::Validator.validate!(input[:retrieval_role_arn], ::String, context: "#{context}[:retrieval_role_arn]")
        ValidatorList.validate!(input[:validators], context: "#{context}[:validators]") unless input[:validators].nil?
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class UpdateDeploymentStrategyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDeploymentStrategyInput, context: context)
        Hearth::Validator.validate!(input[:deployment_strategy_id], ::String, context: "#{context}[:deployment_strategy_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:deployment_duration_in_minutes], ::Integer, context: "#{context}[:deployment_duration_in_minutes]")
        Hearth::Validator.validate!(input[:final_bake_time_in_minutes], ::Integer, context: "#{context}[:final_bake_time_in_minutes]")
        Hearth::Validator.validate!(input[:growth_factor], ::Float, context: "#{context}[:growth_factor]")
        Hearth::Validator.validate!(input[:growth_type], ::String, context: "#{context}[:growth_type]")
      end
    end

    class UpdateDeploymentStrategyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDeploymentStrategyOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:deployment_duration_in_minutes], ::Integer, context: "#{context}[:deployment_duration_in_minutes]")
        Hearth::Validator.validate!(input[:growth_type], ::String, context: "#{context}[:growth_type]")
        Hearth::Validator.validate!(input[:growth_factor], ::Float, context: "#{context}[:growth_factor]")
        Hearth::Validator.validate!(input[:final_bake_time_in_minutes], ::Integer, context: "#{context}[:final_bake_time_in_minutes]")
        Hearth::Validator.validate!(input[:replicate_to], ::String, context: "#{context}[:replicate_to]")
      end
    end

    class UpdateEnvironmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateEnvironmentInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:environment_id], ::String, context: "#{context}[:environment_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        MonitorList.validate!(input[:monitors], context: "#{context}[:monitors]") unless input[:monitors].nil?
      end
    end

    class UpdateEnvironmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateEnvironmentOutput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        MonitorList.validate!(input[:monitors], context: "#{context}[:monitors]") unless input[:monitors].nil?
      end
    end

    class ValidateConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidateConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:configuration_profile_id], ::String, context: "#{context}[:configuration_profile_id]")
        Hearth::Validator.validate!(input[:configuration_version], ::String, context: "#{context}[:configuration_version]")
      end
    end

    class ValidateConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidateConfigurationOutput, context: context)
      end
    end

    class Validator
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Validator, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:content], ::String, context: "#{context}[:content]")
      end
    end

    class ValidatorList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validator.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ValidatorTypeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

  end
end
