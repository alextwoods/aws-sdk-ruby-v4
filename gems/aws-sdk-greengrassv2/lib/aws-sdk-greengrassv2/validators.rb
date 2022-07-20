# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::GreengrassV2
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AssociateClientDeviceWithCoreDeviceEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateClientDeviceWithCoreDeviceEntry, context: context)
        Hearth::Validator.validate!(input[:thing_name], ::String, context: "#{context}[:thing_name]")
      end
    end

    class AssociateClientDeviceWithCoreDeviceEntryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AssociateClientDeviceWithCoreDeviceEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AssociateClientDeviceWithCoreDeviceErrorEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateClientDeviceWithCoreDeviceErrorEntry, context: context)
        Hearth::Validator.validate!(input[:thing_name], ::String, context: "#{context}[:thing_name]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AssociateClientDeviceWithCoreDeviceErrorList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AssociateClientDeviceWithCoreDeviceErrorEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AssociateServiceRoleToAccountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateServiceRoleToAccountInput, context: context)
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
      end
    end

    class AssociateServiceRoleToAccountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateServiceRoleToAccountOutput, context: context)
        Hearth::Validator.validate!(input[:associated_at], ::String, context: "#{context}[:associated_at]")
      end
    end

    class AssociatedClientDevice
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociatedClientDevice, context: context)
        Hearth::Validator.validate!(input[:thing_name], ::String, context: "#{context}[:thing_name]")
        Hearth::Validator.validate!(input[:association_timestamp], ::Time, context: "#{context}[:association_timestamp]")
      end
    end

    class AssociatedClientDeviceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AssociatedClientDevice.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BatchAssociateClientDeviceWithCoreDeviceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchAssociateClientDeviceWithCoreDeviceInput, context: context)
        AssociateClientDeviceWithCoreDeviceEntryList.validate!(input[:entries], context: "#{context}[:entries]") unless input[:entries].nil?
        Hearth::Validator.validate!(input[:core_device_thing_name], ::String, context: "#{context}[:core_device_thing_name]")
      end
    end

    class BatchAssociateClientDeviceWithCoreDeviceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchAssociateClientDeviceWithCoreDeviceOutput, context: context)
        AssociateClientDeviceWithCoreDeviceErrorList.validate!(input[:error_entries], context: "#{context}[:error_entries]") unless input[:error_entries].nil?
      end
    end

    class BatchDisassociateClientDeviceFromCoreDeviceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDisassociateClientDeviceFromCoreDeviceInput, context: context)
        DisassociateClientDeviceFromCoreDeviceEntryList.validate!(input[:entries], context: "#{context}[:entries]") unless input[:entries].nil?
        Hearth::Validator.validate!(input[:core_device_thing_name], ::String, context: "#{context}[:core_device_thing_name]")
      end
    end

    class BatchDisassociateClientDeviceFromCoreDeviceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDisassociateClientDeviceFromCoreDeviceOutput, context: context)
        DisassociateClientDeviceFromCoreDeviceErrorList.validate!(input[:error_entries], context: "#{context}[:error_entries]") unless input[:error_entries].nil?
      end
    end

    class CancelDeploymentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelDeploymentInput, context: context)
        Hearth::Validator.validate!(input[:deployment_id], ::String, context: "#{context}[:deployment_id]")
      end
    end

    class CancelDeploymentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelDeploymentOutput, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CloudComponentStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudComponentStatus, context: context)
        Hearth::Validator.validate!(input[:component_state], ::String, context: "#{context}[:component_state]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        StringMap.validate!(input[:errors], context: "#{context}[:errors]") unless input[:errors].nil?
        Hearth::Validator.validate!(input[:vendor_guidance], ::String, context: "#{context}[:vendor_guidance]")
        Hearth::Validator.validate!(input[:vendor_guidance_message], ::String, context: "#{context}[:vendor_guidance_message]")
      end
    end

    class Component
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Component, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:component_name], ::String, context: "#{context}[:component_name]")
        ComponentLatestVersion.validate!(input[:latest_version], context: "#{context}[:latest_version]") unless input[:latest_version].nil?
      end
    end

    class ComponentCandidate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ComponentCandidate, context: context)
        Hearth::Validator.validate!(input[:component_name], ::String, context: "#{context}[:component_name]")
        Hearth::Validator.validate!(input[:component_version], ::String, context: "#{context}[:component_version]")
        ComponentVersionRequirementMap.validate!(input[:version_requirements], context: "#{context}[:version_requirements]") unless input[:version_requirements].nil?
      end
    end

    class ComponentCandidateList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ComponentCandidate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ComponentConfigurationPathList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ComponentConfigurationUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ComponentConfigurationUpdate, context: context)
        Hearth::Validator.validate!(input[:merge], ::String, context: "#{context}[:merge]")
        ComponentConfigurationPathList.validate!(input[:reset], context: "#{context}[:reset]") unless input[:reset].nil?
      end
    end

    class ComponentDependencyMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          ComponentDependencyRequirement.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class ComponentDependencyRequirement
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ComponentDependencyRequirement, context: context)
        Hearth::Validator.validate!(input[:version_requirement], ::String, context: "#{context}[:version_requirement]")
        Hearth::Validator.validate!(input[:dependency_type], ::String, context: "#{context}[:dependency_type]")
      end
    end

    class ComponentDeploymentSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ComponentDeploymentSpecification, context: context)
        Hearth::Validator.validate!(input[:component_version], ::String, context: "#{context}[:component_version]")
        ComponentConfigurationUpdate.validate!(input[:configuration_update], context: "#{context}[:configuration_update]") unless input[:configuration_update].nil?
        ComponentRunWith.validate!(input[:run_with], context: "#{context}[:run_with]") unless input[:run_with].nil?
      end
    end

    class ComponentDeploymentSpecifications
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          ComponentDeploymentSpecification.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class ComponentLatestVersion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ComponentLatestVersion, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:component_version], ::String, context: "#{context}[:component_version]")
        Hearth::Validator.validate!(input[:creation_timestamp], ::Time, context: "#{context}[:creation_timestamp]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:publisher], ::String, context: "#{context}[:publisher]")
        ComponentPlatformList.validate!(input[:platforms], context: "#{context}[:platforms]") unless input[:platforms].nil?
      end
    end

    class ComponentList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Component.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ComponentPlatform
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ComponentPlatform, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        PlatformAttributesMap.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
      end
    end

    class ComponentPlatformList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ComponentPlatform.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ComponentRunWith
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ComponentRunWith, context: context)
        Hearth::Validator.validate!(input[:posix_user], ::String, context: "#{context}[:posix_user]")
        SystemResourceLimits.validate!(input[:system_resource_limits], context: "#{context}[:system_resource_limits]") unless input[:system_resource_limits].nil?
        Hearth::Validator.validate!(input[:windows_user], ::String, context: "#{context}[:windows_user]")
      end
    end

    class ComponentVersionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ComponentVersionListItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ComponentVersionListItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ComponentVersionListItem, context: context)
        Hearth::Validator.validate!(input[:component_name], ::String, context: "#{context}[:component_name]")
        Hearth::Validator.validate!(input[:component_version], ::String, context: "#{context}[:component_version]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class ComponentVersionRequirementMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class ConnectivityInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConnectivityInfo, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:host_address], ::String, context: "#{context}[:host_address]")
        Hearth::Validator.validate!(input[:port_number], ::Integer, context: "#{context}[:port_number]")
        Hearth::Validator.validate!(input[:metadata], ::String, context: "#{context}[:metadata]")
      end
    end

    class CoreDevice
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CoreDevice, context: context)
        Hearth::Validator.validate!(input[:core_device_thing_name], ::String, context: "#{context}[:core_device_thing_name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:last_status_update_timestamp], ::Time, context: "#{context}[:last_status_update_timestamp]")
      end
    end

    class CoreDevicesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CoreDevice.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CreateComponentVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateComponentVersionInput, context: context)
        Hearth::Validator.validate!(input[:inline_recipe], ::String, context: "#{context}[:inline_recipe]")
        LambdaFunctionRecipeSource.validate!(input[:lambda_function], context: "#{context}[:lambda_function]") unless input[:lambda_function].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class CreateComponentVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateComponentVersionOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:component_name], ::String, context: "#{context}[:component_name]")
        Hearth::Validator.validate!(input[:component_version], ::String, context: "#{context}[:component_version]")
        Hearth::Validator.validate!(input[:creation_timestamp], ::Time, context: "#{context}[:creation_timestamp]")
        CloudComponentStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
      end
    end

    class CreateDeploymentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDeploymentInput, context: context)
        Hearth::Validator.validate!(input[:target_arn], ::String, context: "#{context}[:target_arn]")
        Hearth::Validator.validate!(input[:deployment_name], ::String, context: "#{context}[:deployment_name]")
        ComponentDeploymentSpecifications.validate!(input[:components], context: "#{context}[:components]") unless input[:components].nil?
        DeploymentIoTJobConfiguration.validate!(input[:iot_job_configuration], context: "#{context}[:iot_job_configuration]") unless input[:iot_job_configuration].nil?
        DeploymentPolicies.validate!(input[:deployment_policies], context: "#{context}[:deployment_policies]") unless input[:deployment_policies].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class CreateDeploymentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDeploymentOutput, context: context)
        Hearth::Validator.validate!(input[:deployment_id], ::String, context: "#{context}[:deployment_id]")
        Hearth::Validator.validate!(input[:iot_job_id], ::String, context: "#{context}[:iot_job_id]")
        Hearth::Validator.validate!(input[:iot_job_arn], ::String, context: "#{context}[:iot_job_arn]")
      end
    end

    class DeleteComponentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteComponentInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class DeleteComponentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteComponentOutput, context: context)
      end
    end

    class DeleteCoreDeviceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCoreDeviceInput, context: context)
        Hearth::Validator.validate!(input[:core_device_thing_name], ::String, context: "#{context}[:core_device_thing_name]")
      end
    end

    class DeleteCoreDeviceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCoreDeviceOutput, context: context)
      end
    end

    class DeleteDeploymentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDeploymentInput, context: context)
        Hearth::Validator.validate!(input[:deployment_id], ::String, context: "#{context}[:deployment_id]")
      end
    end

    class DeleteDeploymentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDeploymentOutput, context: context)
      end
    end

    class Deployment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Deployment, context: context)
        Hearth::Validator.validate!(input[:target_arn], ::String, context: "#{context}[:target_arn]")
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
        Hearth::Validator.validate!(input[:deployment_id], ::String, context: "#{context}[:deployment_id]")
        Hearth::Validator.validate!(input[:deployment_name], ::String, context: "#{context}[:deployment_name]")
        Hearth::Validator.validate!(input[:creation_timestamp], ::Time, context: "#{context}[:creation_timestamp]")
        Hearth::Validator.validate!(input[:deployment_status], ::String, context: "#{context}[:deployment_status]")
        Hearth::Validator.validate!(input[:is_latest_for_target], ::TrueClass, ::FalseClass, context: "#{context}[:is_latest_for_target]")
      end
    end

    class DeploymentComponentUpdatePolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeploymentComponentUpdatePolicy, context: context)
        Hearth::Validator.validate!(input[:timeout_in_seconds], ::Integer, context: "#{context}[:timeout_in_seconds]")
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
      end
    end

    class DeploymentConfigurationValidationPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeploymentConfigurationValidationPolicy, context: context)
        Hearth::Validator.validate!(input[:timeout_in_seconds], ::Integer, context: "#{context}[:timeout_in_seconds]")
      end
    end

    class DeploymentIoTJobConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeploymentIoTJobConfiguration, context: context)
        IoTJobExecutionsRolloutConfig.validate!(input[:job_executions_rollout_config], context: "#{context}[:job_executions_rollout_config]") unless input[:job_executions_rollout_config].nil?
        IoTJobAbortConfig.validate!(input[:abort_config], context: "#{context}[:abort_config]") unless input[:abort_config].nil?
        IoTJobTimeoutConfig.validate!(input[:timeout_config], context: "#{context}[:timeout_config]") unless input[:timeout_config].nil?
      end
    end

    class DeploymentList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Deployment.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeploymentPolicies
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeploymentPolicies, context: context)
        Hearth::Validator.validate!(input[:failure_handling_policy], ::String, context: "#{context}[:failure_handling_policy]")
        DeploymentComponentUpdatePolicy.validate!(input[:component_update_policy], context: "#{context}[:component_update_policy]") unless input[:component_update_policy].nil?
        DeploymentConfigurationValidationPolicy.validate!(input[:configuration_validation_policy], context: "#{context}[:configuration_validation_policy]") unless input[:configuration_validation_policy].nil?
      end
    end

    class DescribeComponentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeComponentInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class DescribeComponentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeComponentOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:component_name], ::String, context: "#{context}[:component_name]")
        Hearth::Validator.validate!(input[:component_version], ::String, context: "#{context}[:component_version]")
        Hearth::Validator.validate!(input[:creation_timestamp], ::Time, context: "#{context}[:creation_timestamp]")
        Hearth::Validator.validate!(input[:publisher], ::String, context: "#{context}[:publisher]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        CloudComponentStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
        ComponentPlatformList.validate!(input[:platforms], context: "#{context}[:platforms]") unless input[:platforms].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class DisassociateClientDeviceFromCoreDeviceEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateClientDeviceFromCoreDeviceEntry, context: context)
        Hearth::Validator.validate!(input[:thing_name], ::String, context: "#{context}[:thing_name]")
      end
    end

    class DisassociateClientDeviceFromCoreDeviceEntryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DisassociateClientDeviceFromCoreDeviceEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DisassociateClientDeviceFromCoreDeviceErrorEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateClientDeviceFromCoreDeviceErrorEntry, context: context)
        Hearth::Validator.validate!(input[:thing_name], ::String, context: "#{context}[:thing_name]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DisassociateClientDeviceFromCoreDeviceErrorList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DisassociateClientDeviceFromCoreDeviceErrorEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DisassociateServiceRoleFromAccountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateServiceRoleFromAccountInput, context: context)
      end
    end

    class DisassociateServiceRoleFromAccountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateServiceRoleFromAccountOutput, context: context)
        Hearth::Validator.validate!(input[:disassociated_at], ::String, context: "#{context}[:disassociated_at]")
      end
    end

    class EffectiveDeployment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EffectiveDeployment, context: context)
        Hearth::Validator.validate!(input[:deployment_id], ::String, context: "#{context}[:deployment_id]")
        Hearth::Validator.validate!(input[:deployment_name], ::String, context: "#{context}[:deployment_name]")
        Hearth::Validator.validate!(input[:iot_job_id], ::String, context: "#{context}[:iot_job_id]")
        Hearth::Validator.validate!(input[:iot_job_arn], ::String, context: "#{context}[:iot_job_arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:target_arn], ::String, context: "#{context}[:target_arn]")
        Hearth::Validator.validate!(input[:core_device_execution_status], ::String, context: "#{context}[:core_device_execution_status]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
        Hearth::Validator.validate!(input[:creation_timestamp], ::Time, context: "#{context}[:creation_timestamp]")
        Hearth::Validator.validate!(input[:modified_timestamp], ::Time, context: "#{context}[:modified_timestamp]")
      end
    end

    class EffectiveDeploymentsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EffectiveDeployment.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GetComponentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetComponentInput, context: context)
        Hearth::Validator.validate!(input[:recipe_output_format], ::String, context: "#{context}[:recipe_output_format]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class GetComponentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetComponentOutput, context: context)
        Hearth::Validator.validate!(input[:recipe_output_format], ::String, context: "#{context}[:recipe_output_format]")
        Hearth::Validator.validate!(input[:recipe], ::String, context: "#{context}[:recipe]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class GetComponentVersionArtifactInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetComponentVersionArtifactInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:artifact_name], ::String, context: "#{context}[:artifact_name]")
      end
    end

    class GetComponentVersionArtifactOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetComponentVersionArtifactOutput, context: context)
        Hearth::Validator.validate!(input[:pre_signed_url], ::String, context: "#{context}[:pre_signed_url]")
      end
    end

    class GetConnectivityInfoInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetConnectivityInfoInput, context: context)
        Hearth::Validator.validate!(input[:thing_name], ::String, context: "#{context}[:thing_name]")
      end
    end

    class GetConnectivityInfoOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetConnectivityInfoOutput, context: context)
        ConnectivityInfoList.validate!(input[:connectivity_info], context: "#{context}[:connectivity_info]") unless input[:connectivity_info].nil?
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class GetCoreDeviceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCoreDeviceInput, context: context)
        Hearth::Validator.validate!(input[:core_device_thing_name], ::String, context: "#{context}[:core_device_thing_name]")
      end
    end

    class GetCoreDeviceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCoreDeviceOutput, context: context)
        Hearth::Validator.validate!(input[:core_device_thing_name], ::String, context: "#{context}[:core_device_thing_name]")
        Hearth::Validator.validate!(input[:core_version], ::String, context: "#{context}[:core_version]")
        Hearth::Validator.validate!(input[:platform], ::String, context: "#{context}[:platform]")
        Hearth::Validator.validate!(input[:architecture], ::String, context: "#{context}[:architecture]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:last_status_update_timestamp], ::Time, context: "#{context}[:last_status_update_timestamp]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class GetDeploymentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDeploymentInput, context: context)
        Hearth::Validator.validate!(input[:deployment_id], ::String, context: "#{context}[:deployment_id]")
      end
    end

    class GetDeploymentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDeploymentOutput, context: context)
        Hearth::Validator.validate!(input[:target_arn], ::String, context: "#{context}[:target_arn]")
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
        Hearth::Validator.validate!(input[:deployment_id], ::String, context: "#{context}[:deployment_id]")
        Hearth::Validator.validate!(input[:deployment_name], ::String, context: "#{context}[:deployment_name]")
        Hearth::Validator.validate!(input[:deployment_status], ::String, context: "#{context}[:deployment_status]")
        Hearth::Validator.validate!(input[:iot_job_id], ::String, context: "#{context}[:iot_job_id]")
        Hearth::Validator.validate!(input[:iot_job_arn], ::String, context: "#{context}[:iot_job_arn]")
        ComponentDeploymentSpecifications.validate!(input[:components], context: "#{context}[:components]") unless input[:components].nil?
        DeploymentPolicies.validate!(input[:deployment_policies], context: "#{context}[:deployment_policies]") unless input[:deployment_policies].nil?
        DeploymentIoTJobConfiguration.validate!(input[:iot_job_configuration], context: "#{context}[:iot_job_configuration]") unless input[:iot_job_configuration].nil?
        Hearth::Validator.validate!(input[:creation_timestamp], ::Time, context: "#{context}[:creation_timestamp]")
        Hearth::Validator.validate!(input[:is_latest_for_target], ::TrueClass, ::FalseClass, context: "#{context}[:is_latest_for_target]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class GetServiceRoleForAccountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetServiceRoleForAccountInput, context: context)
      end
    end

    class GetServiceRoleForAccountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetServiceRoleForAccountOutput, context: context)
        Hearth::Validator.validate!(input[:associated_at], ::String, context: "#{context}[:associated_at]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
      end
    end

    class InstalledComponent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstalledComponent, context: context)
        Hearth::Validator.validate!(input[:component_name], ::String, context: "#{context}[:component_name]")
        Hearth::Validator.validate!(input[:component_version], ::String, context: "#{context}[:component_version]")
        Hearth::Validator.validate!(input[:lifecycle_state], ::String, context: "#{context}[:lifecycle_state]")
        Hearth::Validator.validate!(input[:lifecycle_state_details], ::String, context: "#{context}[:lifecycle_state_details]")
        Hearth::Validator.validate!(input[:is_root], ::TrueClass, ::FalseClass, context: "#{context}[:is_root]")
      end
    end

    class InstalledComponentList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InstalledComponent.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:retry_after_seconds], ::Integer, context: "#{context}[:retry_after_seconds]")
      end
    end

    class IoTJobAbortConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IoTJobAbortConfig, context: context)
        IoTJobAbortCriteriaList.validate!(input[:criteria_list], context: "#{context}[:criteria_list]") unless input[:criteria_list].nil?
      end
    end

    class IoTJobAbortCriteria
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IoTJobAbortCriteria, context: context)
        Hearth::Validator.validate!(input[:failure_type], ::String, context: "#{context}[:failure_type]")
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
        Hearth::Validator.validate!(input[:threshold_percentage], ::Float, context: "#{context}[:threshold_percentage]")
        Hearth::Validator.validate!(input[:min_number_of_executed_things], ::Integer, context: "#{context}[:min_number_of_executed_things]")
      end
    end

    class IoTJobAbortCriteriaList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          IoTJobAbortCriteria.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class IoTJobExecutionsRolloutConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IoTJobExecutionsRolloutConfig, context: context)
        IoTJobExponentialRolloutRate.validate!(input[:exponential_rate], context: "#{context}[:exponential_rate]") unless input[:exponential_rate].nil?
        Hearth::Validator.validate!(input[:maximum_per_minute], ::Integer, context: "#{context}[:maximum_per_minute]")
      end
    end

    class IoTJobExponentialRolloutRate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IoTJobExponentialRolloutRate, context: context)
        Hearth::Validator.validate!(input[:base_rate_per_minute], ::Integer, context: "#{context}[:base_rate_per_minute]")
        Hearth::Validator.validate!(input[:increment_factor], ::Float, context: "#{context}[:increment_factor]")
        IoTJobRateIncreaseCriteria.validate!(input[:rate_increase_criteria], context: "#{context}[:rate_increase_criteria]") unless input[:rate_increase_criteria].nil?
      end
    end

    class IoTJobRateIncreaseCriteria
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IoTJobRateIncreaseCriteria, context: context)
        Hearth::Validator.validate!(input[:number_of_notified_things], ::Integer, context: "#{context}[:number_of_notified_things]")
        Hearth::Validator.validate!(input[:number_of_succeeded_things], ::Integer, context: "#{context}[:number_of_succeeded_things]")
      end
    end

    class IoTJobTimeoutConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IoTJobTimeoutConfig, context: context)
        Hearth::Validator.validate!(input[:in_progress_timeout_in_minutes], ::Integer, context: "#{context}[:in_progress_timeout_in_minutes]")
      end
    end

    class LambdaContainerParams
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LambdaContainerParams, context: context)
        Hearth::Validator.validate!(input[:memory_size_in_kb], ::Integer, context: "#{context}[:memory_size_in_kb]")
        Hearth::Validator.validate!(input[:mount_ro_sysfs], ::TrueClass, ::FalseClass, context: "#{context}[:mount_ro_sysfs]")
        LambdaVolumeList.validate!(input[:volumes], context: "#{context}[:volumes]") unless input[:volumes].nil?
        LambdaDeviceList.validate!(input[:devices], context: "#{context}[:devices]") unless input[:devices].nil?
      end
    end

    class LambdaDeviceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          LambdaDeviceMount.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LambdaDeviceMount
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LambdaDeviceMount, context: context)
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
        Hearth::Validator.validate!(input[:permission], ::String, context: "#{context}[:permission]")
        Hearth::Validator.validate!(input[:add_group_owner], ::TrueClass, ::FalseClass, context: "#{context}[:add_group_owner]")
      end
    end

    class LambdaEnvironmentVariables
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class LambdaEventSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LambdaEventSource, context: context)
        Hearth::Validator.validate!(input[:topic], ::String, context: "#{context}[:topic]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class LambdaEventSourceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          LambdaEventSource.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LambdaExecArgsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class LambdaExecutionParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LambdaExecutionParameters, context: context)
        LambdaEventSourceList.validate!(input[:event_sources], context: "#{context}[:event_sources]") unless input[:event_sources].nil?
        Hearth::Validator.validate!(input[:max_queue_size], ::Integer, context: "#{context}[:max_queue_size]")
        Hearth::Validator.validate!(input[:max_instances_count], ::Integer, context: "#{context}[:max_instances_count]")
        Hearth::Validator.validate!(input[:max_idle_time_in_seconds], ::Integer, context: "#{context}[:max_idle_time_in_seconds]")
        Hearth::Validator.validate!(input[:timeout_in_seconds], ::Integer, context: "#{context}[:timeout_in_seconds]")
        Hearth::Validator.validate!(input[:status_timeout_in_seconds], ::Integer, context: "#{context}[:status_timeout_in_seconds]")
        Hearth::Validator.validate!(input[:pinned], ::TrueClass, ::FalseClass, context: "#{context}[:pinned]")
        Hearth::Validator.validate!(input[:input_payload_encoding_type], ::String, context: "#{context}[:input_payload_encoding_type]")
        LambdaExecArgsList.validate!(input[:exec_args], context: "#{context}[:exec_args]") unless input[:exec_args].nil?
        LambdaEnvironmentVariables.validate!(input[:environment_variables], context: "#{context}[:environment_variables]") unless input[:environment_variables].nil?
        LambdaLinuxProcessParams.validate!(input[:linux_process_params], context: "#{context}[:linux_process_params]") unless input[:linux_process_params].nil?
      end
    end

    class LambdaFunctionRecipeSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LambdaFunctionRecipeSource, context: context)
        Hearth::Validator.validate!(input[:lambda_arn], ::String, context: "#{context}[:lambda_arn]")
        Hearth::Validator.validate!(input[:component_name], ::String, context: "#{context}[:component_name]")
        Hearth::Validator.validate!(input[:component_version], ::String, context: "#{context}[:component_version]")
        ComponentPlatformList.validate!(input[:component_platforms], context: "#{context}[:component_platforms]") unless input[:component_platforms].nil?
        ComponentDependencyMap.validate!(input[:component_dependencies], context: "#{context}[:component_dependencies]") unless input[:component_dependencies].nil?
        LambdaExecutionParameters.validate!(input[:component_lambda_parameters], context: "#{context}[:component_lambda_parameters]") unless input[:component_lambda_parameters].nil?
      end
    end

    class LambdaLinuxProcessParams
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LambdaLinuxProcessParams, context: context)
        Hearth::Validator.validate!(input[:isolation_mode], ::String, context: "#{context}[:isolation_mode]")
        LambdaContainerParams.validate!(input[:container_params], context: "#{context}[:container_params]") unless input[:container_params].nil?
      end
    end

    class LambdaVolumeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          LambdaVolumeMount.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LambdaVolumeMount
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LambdaVolumeMount, context: context)
        Hearth::Validator.validate!(input[:source_path], ::String, context: "#{context}[:source_path]")
        Hearth::Validator.validate!(input[:destination_path], ::String, context: "#{context}[:destination_path]")
        Hearth::Validator.validate!(input[:permission], ::String, context: "#{context}[:permission]")
        Hearth::Validator.validate!(input[:add_group_owner], ::TrueClass, ::FalseClass, context: "#{context}[:add_group_owner]")
      end
    end

    class ListClientDevicesAssociatedWithCoreDeviceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListClientDevicesAssociatedWithCoreDeviceInput, context: context)
        Hearth::Validator.validate!(input[:core_device_thing_name], ::String, context: "#{context}[:core_device_thing_name]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListClientDevicesAssociatedWithCoreDeviceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListClientDevicesAssociatedWithCoreDeviceOutput, context: context)
        AssociatedClientDeviceList.validate!(input[:associated_client_devices], context: "#{context}[:associated_client_devices]") unless input[:associated_client_devices].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListComponentVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListComponentVersionsInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListComponentVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListComponentVersionsOutput, context: context)
        ComponentVersionList.validate!(input[:component_versions], context: "#{context}[:component_versions]") unless input[:component_versions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListComponentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListComponentsInput, context: context)
        Hearth::Validator.validate!(input[:scope], ::String, context: "#{context}[:scope]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListComponentsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListComponentsOutput, context: context)
        ComponentList.validate!(input[:components], context: "#{context}[:components]") unless input[:components].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListCoreDevicesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCoreDevicesInput, context: context)
        Hearth::Validator.validate!(input[:thing_group_arn], ::String, context: "#{context}[:thing_group_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListCoreDevicesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCoreDevicesOutput, context: context)
        CoreDevicesList.validate!(input[:core_devices], context: "#{context}[:core_devices]") unless input[:core_devices].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDeploymentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDeploymentsInput, context: context)
        Hearth::Validator.validate!(input[:target_arn], ::String, context: "#{context}[:target_arn]")
        Hearth::Validator.validate!(input[:history_filter], ::String, context: "#{context}[:history_filter]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDeploymentsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDeploymentsOutput, context: context)
        DeploymentList.validate!(input[:deployments], context: "#{context}[:deployments]") unless input[:deployments].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListEffectiveDeploymentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEffectiveDeploymentsInput, context: context)
        Hearth::Validator.validate!(input[:core_device_thing_name], ::String, context: "#{context}[:core_device_thing_name]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListEffectiveDeploymentsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEffectiveDeploymentsOutput, context: context)
        EffectiveDeploymentsList.validate!(input[:effective_deployments], context: "#{context}[:effective_deployments]") unless input[:effective_deployments].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListInstalledComponentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListInstalledComponentsInput, context: context)
        Hearth::Validator.validate!(input[:core_device_thing_name], ::String, context: "#{context}[:core_device_thing_name]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListInstalledComponentsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListInstalledComponentsOutput, context: context)
        InstalledComponentList.validate!(input[:installed_components], context: "#{context}[:installed_components]") unless input[:installed_components].nil?
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

    class PlatformAttributesMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class RequestAlreadyInProgressException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RequestAlreadyInProgressException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResolveComponentCandidatesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResolveComponentCandidatesInput, context: context)
        ComponentPlatform.validate!(input[:platform], context: "#{context}[:platform]") unless input[:platform].nil?
        ComponentCandidateList.validate!(input[:component_candidates], context: "#{context}[:component_candidates]") unless input[:component_candidates].nil?
      end
    end

    class ResolveComponentCandidatesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResolveComponentCandidatesOutput, context: context)
        ResolvedComponentVersionsList.validate!(input[:resolved_component_versions], context: "#{context}[:resolved_component_versions]") unless input[:resolved_component_versions].nil?
      end
    end

    class ResolvedComponentVersion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResolvedComponentVersion, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:component_name], ::String, context: "#{context}[:component_name]")
        Hearth::Validator.validate!(input[:component_version], ::String, context: "#{context}[:component_version]")
        Hearth::Validator.validate!(input[:recipe], ::String, context: "#{context}[:recipe]")
        Hearth::Validator.validate!(input[:vendor_guidance], ::String, context: "#{context}[:vendor_guidance]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResolvedComponentVersionsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ResolvedComponentVersion.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class ServiceQuotaExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceQuotaExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:quota_code], ::String, context: "#{context}[:quota_code]")
        Hearth::Validator.validate!(input[:service_code], ::String, context: "#{context}[:service_code]")
      end
    end

    class StringMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class SystemResourceLimits
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SystemResourceLimits, context: context)
        Hearth::Validator.validate!(input[:memory], ::Integer, context: "#{context}[:memory]")
        Hearth::Validator.validate!(input[:cpus], ::Float, context: "#{context}[:cpus]")
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

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:quota_code], ::String, context: "#{context}[:quota_code]")
        Hearth::Validator.validate!(input[:service_code], ::String, context: "#{context}[:service_code]")
        Hearth::Validator.validate!(input[:retry_after_seconds], ::Integer, context: "#{context}[:retry_after_seconds]")
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

    class UpdateConnectivityInfoInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateConnectivityInfoInput, context: context)
        Hearth::Validator.validate!(input[:thing_name], ::String, context: "#{context}[:thing_name]")
        ConnectivityInfoList.validate!(input[:connectivity_info], context: "#{context}[:connectivity_info]") unless input[:connectivity_info].nil?
      end
    end

    class UpdateConnectivityInfoOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateConnectivityInfoOutput, context: context)
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
        ValidationExceptionFieldList.validate!(input[:fields], context: "#{context}[:fields]") unless input[:fields].nil?
      end
    end

    class ValidationExceptionField
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationExceptionField, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ValidationExceptionFieldList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ValidationExceptionField.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConnectivityInfoList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ConnectivityInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

  end
end
