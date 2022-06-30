# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::GreengrassV2
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module AssociateClientDeviceWithCoreDeviceEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateClientDeviceWithCoreDeviceEntry, context: context)
        type = Types::AssociateClientDeviceWithCoreDeviceEntry.new
        type.thing_name = params[:thing_name]
        type
      end
    end

    module AssociateClientDeviceWithCoreDeviceEntryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AssociateClientDeviceWithCoreDeviceEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AssociateClientDeviceWithCoreDeviceErrorEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateClientDeviceWithCoreDeviceErrorEntry, context: context)
        type = Types::AssociateClientDeviceWithCoreDeviceErrorEntry.new
        type.thing_name = params[:thing_name]
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module AssociateClientDeviceWithCoreDeviceErrorList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AssociateClientDeviceWithCoreDeviceErrorEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AssociateServiceRoleToAccountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateServiceRoleToAccountInput, context: context)
        type = Types::AssociateServiceRoleToAccountInput.new
        type.role_arn = params[:role_arn]
        type
      end
    end

    module AssociateServiceRoleToAccountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateServiceRoleToAccountOutput, context: context)
        type = Types::AssociateServiceRoleToAccountOutput.new
        type.associated_at = params[:associated_at]
        type
      end
    end

    module AssociatedClientDevice
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociatedClientDevice, context: context)
        type = Types::AssociatedClientDevice.new
        type.thing_name = params[:thing_name]
        type.association_timestamp = params[:association_timestamp]
        type
      end
    end

    module AssociatedClientDeviceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AssociatedClientDevice.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BatchAssociateClientDeviceWithCoreDeviceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchAssociateClientDeviceWithCoreDeviceInput, context: context)
        type = Types::BatchAssociateClientDeviceWithCoreDeviceInput.new
        type.entries = AssociateClientDeviceWithCoreDeviceEntryList.build(params[:entries], context: "#{context}[:entries]") unless params[:entries].nil?
        type.core_device_thing_name = params[:core_device_thing_name]
        type
      end
    end

    module BatchAssociateClientDeviceWithCoreDeviceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchAssociateClientDeviceWithCoreDeviceOutput, context: context)
        type = Types::BatchAssociateClientDeviceWithCoreDeviceOutput.new
        type.error_entries = AssociateClientDeviceWithCoreDeviceErrorList.build(params[:error_entries], context: "#{context}[:error_entries]") unless params[:error_entries].nil?
        type
      end
    end

    module BatchDisassociateClientDeviceFromCoreDeviceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDisassociateClientDeviceFromCoreDeviceInput, context: context)
        type = Types::BatchDisassociateClientDeviceFromCoreDeviceInput.new
        type.entries = DisassociateClientDeviceFromCoreDeviceEntryList.build(params[:entries], context: "#{context}[:entries]") unless params[:entries].nil?
        type.core_device_thing_name = params[:core_device_thing_name]
        type
      end
    end

    module BatchDisassociateClientDeviceFromCoreDeviceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDisassociateClientDeviceFromCoreDeviceOutput, context: context)
        type = Types::BatchDisassociateClientDeviceFromCoreDeviceOutput.new
        type.error_entries = DisassociateClientDeviceFromCoreDeviceErrorList.build(params[:error_entries], context: "#{context}[:error_entries]") unless params[:error_entries].nil?
        type
      end
    end

    module CancelDeploymentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelDeploymentInput, context: context)
        type = Types::CancelDeploymentInput.new
        type.deployment_id = params[:deployment_id]
        type
      end
    end

    module CancelDeploymentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelDeploymentOutput, context: context)
        type = Types::CancelDeploymentOutput.new
        type.message = params[:message]
        type
      end
    end

    module CloudComponentStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloudComponentStatus, context: context)
        type = Types::CloudComponentStatus.new
        type.component_state = params[:component_state]
        type.message = params[:message]
        type.errors = StringMap.build(params[:errors], context: "#{context}[:errors]") unless params[:errors].nil?
        type.vendor_guidance = params[:vendor_guidance]
        type.vendor_guidance_message = params[:vendor_guidance_message]
        type
      end
    end

    module Component
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Component, context: context)
        type = Types::Component.new
        type.arn = params[:arn]
        type.component_name = params[:component_name]
        type.latest_version = ComponentLatestVersion.build(params[:latest_version], context: "#{context}[:latest_version]") unless params[:latest_version].nil?
        type
      end
    end

    module ComponentCandidate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ComponentCandidate, context: context)
        type = Types::ComponentCandidate.new
        type.component_name = params[:component_name]
        type.component_version = params[:component_version]
        type.version_requirements = ComponentVersionRequirementMap.build(params[:version_requirements], context: "#{context}[:version_requirements]") unless params[:version_requirements].nil?
        type
      end
    end

    module ComponentCandidateList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ComponentCandidate.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ComponentConfigurationPathList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ComponentConfigurationUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ComponentConfigurationUpdate, context: context)
        type = Types::ComponentConfigurationUpdate.new
        type.merge = params[:merge]
        type.reset = ComponentConfigurationPathList.build(params[:reset], context: "#{context}[:reset]") unless params[:reset].nil?
        type
      end
    end

    module ComponentDependencyMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = ComponentDependencyRequirement.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module ComponentDependencyRequirement
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ComponentDependencyRequirement, context: context)
        type = Types::ComponentDependencyRequirement.new
        type.version_requirement = params[:version_requirement]
        type.dependency_type = params[:dependency_type]
        type
      end
    end

    module ComponentDeploymentSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ComponentDeploymentSpecification, context: context)
        type = Types::ComponentDeploymentSpecification.new
        type.component_version = params[:component_version]
        type.configuration_update = ComponentConfigurationUpdate.build(params[:configuration_update], context: "#{context}[:configuration_update]") unless params[:configuration_update].nil?
        type.run_with = ComponentRunWith.build(params[:run_with], context: "#{context}[:run_with]") unless params[:run_with].nil?
        type
      end
    end

    module ComponentDeploymentSpecifications
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = ComponentDeploymentSpecification.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module ComponentLatestVersion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ComponentLatestVersion, context: context)
        type = Types::ComponentLatestVersion.new
        type.arn = params[:arn]
        type.component_version = params[:component_version]
        type.creation_timestamp = params[:creation_timestamp]
        type.description = params[:description]
        type.publisher = params[:publisher]
        type.platforms = ComponentPlatformList.build(params[:platforms], context: "#{context}[:platforms]") unless params[:platforms].nil?
        type
      end
    end

    module ComponentList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Component.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ComponentPlatform
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ComponentPlatform, context: context)
        type = Types::ComponentPlatform.new
        type.name = params[:name]
        type.attributes = PlatformAttributesMap.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type
      end
    end

    module ComponentPlatformList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ComponentPlatform.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ComponentRunWith
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ComponentRunWith, context: context)
        type = Types::ComponentRunWith.new
        type.posix_user = params[:posix_user]
        type.system_resource_limits = SystemResourceLimits.build(params[:system_resource_limits], context: "#{context}[:system_resource_limits]") unless params[:system_resource_limits].nil?
        type.windows_user = params[:windows_user]
        type
      end
    end

    module ComponentVersionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ComponentVersionListItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ComponentVersionListItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ComponentVersionListItem, context: context)
        type = Types::ComponentVersionListItem.new
        type.component_name = params[:component_name]
        type.component_version = params[:component_version]
        type.arn = params[:arn]
        type
      end
    end

    module ComponentVersionRequirementMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.message = params[:message]
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module ConnectivityInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConnectivityInfo, context: context)
        type = Types::ConnectivityInfo.new
        type.id = params[:id]
        type.host_address = params[:host_address]
        type.port_number = params[:port_number]
        type.metadata = params[:metadata]
        type
      end
    end

    module CoreDevice
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CoreDevice, context: context)
        type = Types::CoreDevice.new
        type.core_device_thing_name = params[:core_device_thing_name]
        type.status = params[:status]
        type.last_status_update_timestamp = params[:last_status_update_timestamp]
        type
      end
    end

    module CoreDevicesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CoreDevice.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CreateComponentVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateComponentVersionInput, context: context)
        type = Types::CreateComponentVersionInput.new
        type.inline_recipe = params[:inline_recipe]
        type.lambda_function = LambdaFunctionRecipeSource.build(params[:lambda_function], context: "#{context}[:lambda_function]") unless params[:lambda_function].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module CreateComponentVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateComponentVersionOutput, context: context)
        type = Types::CreateComponentVersionOutput.new
        type.arn = params[:arn]
        type.component_name = params[:component_name]
        type.component_version = params[:component_version]
        type.creation_timestamp = params[:creation_timestamp]
        type.status = CloudComponentStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type
      end
    end

    module CreateDeploymentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDeploymentInput, context: context)
        type = Types::CreateDeploymentInput.new
        type.target_arn = params[:target_arn]
        type.deployment_name = params[:deployment_name]
        type.components = ComponentDeploymentSpecifications.build(params[:components], context: "#{context}[:components]") unless params[:components].nil?
        type.iot_job_configuration = DeploymentIoTJobConfiguration.build(params[:iot_job_configuration], context: "#{context}[:iot_job_configuration]") unless params[:iot_job_configuration].nil?
        type.deployment_policies = DeploymentPolicies.build(params[:deployment_policies], context: "#{context}[:deployment_policies]") unless params[:deployment_policies].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module CreateDeploymentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDeploymentOutput, context: context)
        type = Types::CreateDeploymentOutput.new
        type.deployment_id = params[:deployment_id]
        type.iot_job_id = params[:iot_job_id]
        type.iot_job_arn = params[:iot_job_arn]
        type
      end
    end

    module DeleteComponentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteComponentInput, context: context)
        type = Types::DeleteComponentInput.new
        type.arn = params[:arn]
        type
      end
    end

    module DeleteComponentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteComponentOutput, context: context)
        type = Types::DeleteComponentOutput.new
        type
      end
    end

    module DeleteCoreDeviceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCoreDeviceInput, context: context)
        type = Types::DeleteCoreDeviceInput.new
        type.core_device_thing_name = params[:core_device_thing_name]
        type
      end
    end

    module DeleteCoreDeviceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCoreDeviceOutput, context: context)
        type = Types::DeleteCoreDeviceOutput.new
        type
      end
    end

    module DeleteDeploymentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDeploymentInput, context: context)
        type = Types::DeleteDeploymentInput.new
        type.deployment_id = params[:deployment_id]
        type
      end
    end

    module DeleteDeploymentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDeploymentOutput, context: context)
        type = Types::DeleteDeploymentOutput.new
        type
      end
    end

    module Deployment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Deployment, context: context)
        type = Types::Deployment.new
        type.target_arn = params[:target_arn]
        type.revision_id = params[:revision_id]
        type.deployment_id = params[:deployment_id]
        type.deployment_name = params[:deployment_name]
        type.creation_timestamp = params[:creation_timestamp]
        type.deployment_status = params[:deployment_status]
        type.is_latest_for_target = params[:is_latest_for_target]
        type
      end
    end

    module DeploymentComponentUpdatePolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeploymentComponentUpdatePolicy, context: context)
        type = Types::DeploymentComponentUpdatePolicy.new
        type.timeout_in_seconds = params[:timeout_in_seconds]
        type.action = params[:action]
        type
      end
    end

    module DeploymentConfigurationValidationPolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeploymentConfigurationValidationPolicy, context: context)
        type = Types::DeploymentConfigurationValidationPolicy.new
        type.timeout_in_seconds = params[:timeout_in_seconds]
        type
      end
    end

    module DeploymentIoTJobConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeploymentIoTJobConfiguration, context: context)
        type = Types::DeploymentIoTJobConfiguration.new
        type.job_executions_rollout_config = IoTJobExecutionsRolloutConfig.build(params[:job_executions_rollout_config], context: "#{context}[:job_executions_rollout_config]") unless params[:job_executions_rollout_config].nil?
        type.abort_config = IoTJobAbortConfig.build(params[:abort_config], context: "#{context}[:abort_config]") unless params[:abort_config].nil?
        type.timeout_config = IoTJobTimeoutConfig.build(params[:timeout_config], context: "#{context}[:timeout_config]") unless params[:timeout_config].nil?
        type
      end
    end

    module DeploymentList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Deployment.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DeploymentPolicies
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeploymentPolicies, context: context)
        type = Types::DeploymentPolicies.new
        type.failure_handling_policy = params[:failure_handling_policy]
        type.component_update_policy = DeploymentComponentUpdatePolicy.build(params[:component_update_policy], context: "#{context}[:component_update_policy]") unless params[:component_update_policy].nil?
        type.configuration_validation_policy = DeploymentConfigurationValidationPolicy.build(params[:configuration_validation_policy], context: "#{context}[:configuration_validation_policy]") unless params[:configuration_validation_policy].nil?
        type
      end
    end

    module DescribeComponentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeComponentInput, context: context)
        type = Types::DescribeComponentInput.new
        type.arn = params[:arn]
        type
      end
    end

    module DescribeComponentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeComponentOutput, context: context)
        type = Types::DescribeComponentOutput.new
        type.arn = params[:arn]
        type.component_name = params[:component_name]
        type.component_version = params[:component_version]
        type.creation_timestamp = params[:creation_timestamp]
        type.publisher = params[:publisher]
        type.description = params[:description]
        type.status = CloudComponentStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type.platforms = ComponentPlatformList.build(params[:platforms], context: "#{context}[:platforms]") unless params[:platforms].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module DisassociateClientDeviceFromCoreDeviceEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateClientDeviceFromCoreDeviceEntry, context: context)
        type = Types::DisassociateClientDeviceFromCoreDeviceEntry.new
        type.thing_name = params[:thing_name]
        type
      end
    end

    module DisassociateClientDeviceFromCoreDeviceEntryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DisassociateClientDeviceFromCoreDeviceEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DisassociateClientDeviceFromCoreDeviceErrorEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateClientDeviceFromCoreDeviceErrorEntry, context: context)
        type = Types::DisassociateClientDeviceFromCoreDeviceErrorEntry.new
        type.thing_name = params[:thing_name]
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module DisassociateClientDeviceFromCoreDeviceErrorList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DisassociateClientDeviceFromCoreDeviceErrorEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DisassociateServiceRoleFromAccountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateServiceRoleFromAccountInput, context: context)
        type = Types::DisassociateServiceRoleFromAccountInput.new
        type
      end
    end

    module DisassociateServiceRoleFromAccountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateServiceRoleFromAccountOutput, context: context)
        type = Types::DisassociateServiceRoleFromAccountOutput.new
        type.disassociated_at = params[:disassociated_at]
        type
      end
    end

    module EffectiveDeployment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EffectiveDeployment, context: context)
        type = Types::EffectiveDeployment.new
        type.deployment_id = params[:deployment_id]
        type.deployment_name = params[:deployment_name]
        type.iot_job_id = params[:iot_job_id]
        type.iot_job_arn = params[:iot_job_arn]
        type.description = params[:description]
        type.target_arn = params[:target_arn]
        type.core_device_execution_status = params[:core_device_execution_status]
        type.reason = params[:reason]
        type.creation_timestamp = params[:creation_timestamp]
        type.modified_timestamp = params[:modified_timestamp]
        type
      end
    end

    module EffectiveDeploymentsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EffectiveDeployment.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GetComponentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetComponentInput, context: context)
        type = Types::GetComponentInput.new
        type.recipe_output_format = params[:recipe_output_format]
        type.arn = params[:arn]
        type
      end
    end

    module GetComponentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetComponentOutput, context: context)
        type = Types::GetComponentOutput.new
        type.recipe_output_format = params[:recipe_output_format]
        type.recipe = params[:recipe]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module GetComponentVersionArtifactInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetComponentVersionArtifactInput, context: context)
        type = Types::GetComponentVersionArtifactInput.new
        type.arn = params[:arn]
        type.artifact_name = params[:artifact_name]
        type
      end
    end

    module GetComponentVersionArtifactOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetComponentVersionArtifactOutput, context: context)
        type = Types::GetComponentVersionArtifactOutput.new
        type.pre_signed_url = params[:pre_signed_url]
        type
      end
    end

    module GetConnectivityInfoInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetConnectivityInfoInput, context: context)
        type = Types::GetConnectivityInfoInput.new
        type.thing_name = params[:thing_name]
        type
      end
    end

    module GetConnectivityInfoOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetConnectivityInfoOutput, context: context)
        type = Types::GetConnectivityInfoOutput.new
        type.connectivity_info = ConnectivityInfoList.build(params[:connectivity_info], context: "#{context}[:connectivity_info]") unless params[:connectivity_info].nil?
        type.message = params[:message]
        type
      end
    end

    module GetCoreDeviceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCoreDeviceInput, context: context)
        type = Types::GetCoreDeviceInput.new
        type.core_device_thing_name = params[:core_device_thing_name]
        type
      end
    end

    module GetCoreDeviceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCoreDeviceOutput, context: context)
        type = Types::GetCoreDeviceOutput.new
        type.core_device_thing_name = params[:core_device_thing_name]
        type.core_version = params[:core_version]
        type.platform = params[:platform]
        type.architecture = params[:architecture]
        type.status = params[:status]
        type.last_status_update_timestamp = params[:last_status_update_timestamp]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module GetDeploymentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDeploymentInput, context: context)
        type = Types::GetDeploymentInput.new
        type.deployment_id = params[:deployment_id]
        type
      end
    end

    module GetDeploymentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDeploymentOutput, context: context)
        type = Types::GetDeploymentOutput.new
        type.target_arn = params[:target_arn]
        type.revision_id = params[:revision_id]
        type.deployment_id = params[:deployment_id]
        type.deployment_name = params[:deployment_name]
        type.deployment_status = params[:deployment_status]
        type.iot_job_id = params[:iot_job_id]
        type.iot_job_arn = params[:iot_job_arn]
        type.components = ComponentDeploymentSpecifications.build(params[:components], context: "#{context}[:components]") unless params[:components].nil?
        type.deployment_policies = DeploymentPolicies.build(params[:deployment_policies], context: "#{context}[:deployment_policies]") unless params[:deployment_policies].nil?
        type.iot_job_configuration = DeploymentIoTJobConfiguration.build(params[:iot_job_configuration], context: "#{context}[:iot_job_configuration]") unless params[:iot_job_configuration].nil?
        type.creation_timestamp = params[:creation_timestamp]
        type.is_latest_for_target = params[:is_latest_for_target]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module GetServiceRoleForAccountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetServiceRoleForAccountInput, context: context)
        type = Types::GetServiceRoleForAccountInput.new
        type
      end
    end

    module GetServiceRoleForAccountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetServiceRoleForAccountOutput, context: context)
        type = Types::GetServiceRoleForAccountOutput.new
        type.associated_at = params[:associated_at]
        type.role_arn = params[:role_arn]
        type
      end
    end

    module InstalledComponent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstalledComponent, context: context)
        type = Types::InstalledComponent.new
        type.component_name = params[:component_name]
        type.component_version = params[:component_version]
        type.lifecycle_state = params[:lifecycle_state]
        type.lifecycle_state_details = params[:lifecycle_state_details]
        type.is_root = params[:is_root]
        type
      end
    end

    module InstalledComponentList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InstalledComponent.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InternalServerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerException, context: context)
        type = Types::InternalServerException.new
        type.message = params[:message]
        type.retry_after_seconds = params[:retry_after_seconds]
        type
      end
    end

    module IoTJobAbortConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IoTJobAbortConfig, context: context)
        type = Types::IoTJobAbortConfig.new
        type.criteria_list = IoTJobAbortCriteriaList.build(params[:criteria_list], context: "#{context}[:criteria_list]") unless params[:criteria_list].nil?
        type
      end
    end

    module IoTJobAbortCriteria
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IoTJobAbortCriteria, context: context)
        type = Types::IoTJobAbortCriteria.new
        type.failure_type = params[:failure_type]
        type.action = params[:action]
        type.threshold_percentage = params[:threshold_percentage]
        type.min_number_of_executed_things = params[:min_number_of_executed_things]
        type
      end
    end

    module IoTJobAbortCriteriaList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << IoTJobAbortCriteria.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module IoTJobExecutionsRolloutConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IoTJobExecutionsRolloutConfig, context: context)
        type = Types::IoTJobExecutionsRolloutConfig.new
        type.exponential_rate = IoTJobExponentialRolloutRate.build(params[:exponential_rate], context: "#{context}[:exponential_rate]") unless params[:exponential_rate].nil?
        type.maximum_per_minute = params[:maximum_per_minute]
        type
      end
    end

    module IoTJobExponentialRolloutRate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IoTJobExponentialRolloutRate, context: context)
        type = Types::IoTJobExponentialRolloutRate.new
        type.base_rate_per_minute = params[:base_rate_per_minute]
        type.increment_factor = params[:increment_factor]
        type.rate_increase_criteria = IoTJobRateIncreaseCriteria.build(params[:rate_increase_criteria], context: "#{context}[:rate_increase_criteria]") unless params[:rate_increase_criteria].nil?
        type
      end
    end

    module IoTJobRateIncreaseCriteria
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IoTJobRateIncreaseCriteria, context: context)
        type = Types::IoTJobRateIncreaseCriteria.new
        type.number_of_notified_things = params[:number_of_notified_things]
        type.number_of_succeeded_things = params[:number_of_succeeded_things]
        type
      end
    end

    module IoTJobTimeoutConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IoTJobTimeoutConfig, context: context)
        type = Types::IoTJobTimeoutConfig.new
        type.in_progress_timeout_in_minutes = params[:in_progress_timeout_in_minutes]
        type
      end
    end

    module LambdaContainerParams
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LambdaContainerParams, context: context)
        type = Types::LambdaContainerParams.new
        type.memory_size_in_kb = params[:memory_size_in_kb]
        type.mount_ro_sysfs = params[:mount_ro_sysfs]
        type.volumes = LambdaVolumeList.build(params[:volumes], context: "#{context}[:volumes]") unless params[:volumes].nil?
        type.devices = LambdaDeviceList.build(params[:devices], context: "#{context}[:devices]") unless params[:devices].nil?
        type
      end
    end

    module LambdaDeviceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LambdaDeviceMount.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LambdaDeviceMount
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LambdaDeviceMount, context: context)
        type = Types::LambdaDeviceMount.new
        type.path = params[:path]
        type.permission = params[:permission]
        type.add_group_owner = params[:add_group_owner]
        type
      end
    end

    module LambdaEnvironmentVariables
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module LambdaEventSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LambdaEventSource, context: context)
        type = Types::LambdaEventSource.new
        type.topic = params[:topic]
        type.type = params[:type]
        type
      end
    end

    module LambdaEventSourceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LambdaEventSource.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LambdaExecArgsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module LambdaExecutionParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LambdaExecutionParameters, context: context)
        type = Types::LambdaExecutionParameters.new
        type.event_sources = LambdaEventSourceList.build(params[:event_sources], context: "#{context}[:event_sources]") unless params[:event_sources].nil?
        type.max_queue_size = params[:max_queue_size]
        type.max_instances_count = params[:max_instances_count]
        type.max_idle_time_in_seconds = params[:max_idle_time_in_seconds]
        type.timeout_in_seconds = params[:timeout_in_seconds]
        type.status_timeout_in_seconds = params[:status_timeout_in_seconds]
        type.pinned = params[:pinned]
        type.input_payload_encoding_type = params[:input_payload_encoding_type]
        type.exec_args = LambdaExecArgsList.build(params[:exec_args], context: "#{context}[:exec_args]") unless params[:exec_args].nil?
        type.environment_variables = LambdaEnvironmentVariables.build(params[:environment_variables], context: "#{context}[:environment_variables]") unless params[:environment_variables].nil?
        type.linux_process_params = LambdaLinuxProcessParams.build(params[:linux_process_params], context: "#{context}[:linux_process_params]") unless params[:linux_process_params].nil?
        type
      end
    end

    module LambdaFunctionRecipeSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LambdaFunctionRecipeSource, context: context)
        type = Types::LambdaFunctionRecipeSource.new
        type.lambda_arn = params[:lambda_arn]
        type.component_name = params[:component_name]
        type.component_version = params[:component_version]
        type.component_platforms = ComponentPlatformList.build(params[:component_platforms], context: "#{context}[:component_platforms]") unless params[:component_platforms].nil?
        type.component_dependencies = ComponentDependencyMap.build(params[:component_dependencies], context: "#{context}[:component_dependencies]") unless params[:component_dependencies].nil?
        type.component_lambda_parameters = LambdaExecutionParameters.build(params[:component_lambda_parameters], context: "#{context}[:component_lambda_parameters]") unless params[:component_lambda_parameters].nil?
        type
      end
    end

    module LambdaLinuxProcessParams
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LambdaLinuxProcessParams, context: context)
        type = Types::LambdaLinuxProcessParams.new
        type.isolation_mode = params[:isolation_mode]
        type.container_params = LambdaContainerParams.build(params[:container_params], context: "#{context}[:container_params]") unless params[:container_params].nil?
        type
      end
    end

    module LambdaVolumeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LambdaVolumeMount.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LambdaVolumeMount
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LambdaVolumeMount, context: context)
        type = Types::LambdaVolumeMount.new
        type.source_path = params[:source_path]
        type.destination_path = params[:destination_path]
        type.permission = params[:permission]
        type.add_group_owner = params[:add_group_owner]
        type
      end
    end

    module ListClientDevicesAssociatedWithCoreDeviceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListClientDevicesAssociatedWithCoreDeviceInput, context: context)
        type = Types::ListClientDevicesAssociatedWithCoreDeviceInput.new
        type.core_device_thing_name = params[:core_device_thing_name]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListClientDevicesAssociatedWithCoreDeviceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListClientDevicesAssociatedWithCoreDeviceOutput, context: context)
        type = Types::ListClientDevicesAssociatedWithCoreDeviceOutput.new
        type.associated_client_devices = AssociatedClientDeviceList.build(params[:associated_client_devices], context: "#{context}[:associated_client_devices]") unless params[:associated_client_devices].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListComponentVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListComponentVersionsInput, context: context)
        type = Types::ListComponentVersionsInput.new
        type.arn = params[:arn]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListComponentVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListComponentVersionsOutput, context: context)
        type = Types::ListComponentVersionsOutput.new
        type.component_versions = ComponentVersionList.build(params[:component_versions], context: "#{context}[:component_versions]") unless params[:component_versions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListComponentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListComponentsInput, context: context)
        type = Types::ListComponentsInput.new
        type.scope = params[:scope]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListComponentsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListComponentsOutput, context: context)
        type = Types::ListComponentsOutput.new
        type.components = ComponentList.build(params[:components], context: "#{context}[:components]") unless params[:components].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListCoreDevicesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCoreDevicesInput, context: context)
        type = Types::ListCoreDevicesInput.new
        type.thing_group_arn = params[:thing_group_arn]
        type.status = params[:status]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListCoreDevicesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCoreDevicesOutput, context: context)
        type = Types::ListCoreDevicesOutput.new
        type.core_devices = CoreDevicesList.build(params[:core_devices], context: "#{context}[:core_devices]") unless params[:core_devices].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDeploymentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDeploymentsInput, context: context)
        type = Types::ListDeploymentsInput.new
        type.target_arn = params[:target_arn]
        type.history_filter = params[:history_filter]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDeploymentsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDeploymentsOutput, context: context)
        type = Types::ListDeploymentsOutput.new
        type.deployments = DeploymentList.build(params[:deployments], context: "#{context}[:deployments]") unless params[:deployments].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListEffectiveDeploymentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEffectiveDeploymentsInput, context: context)
        type = Types::ListEffectiveDeploymentsInput.new
        type.core_device_thing_name = params[:core_device_thing_name]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListEffectiveDeploymentsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEffectiveDeploymentsOutput, context: context)
        type = Types::ListEffectiveDeploymentsOutput.new
        type.effective_deployments = EffectiveDeploymentsList.build(params[:effective_deployments], context: "#{context}[:effective_deployments]") unless params[:effective_deployments].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListInstalledComponentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListInstalledComponentsInput, context: context)
        type = Types::ListInstalledComponentsInput.new
        type.core_device_thing_name = params[:core_device_thing_name]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListInstalledComponentsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListInstalledComponentsOutput, context: context)
        type = Types::ListInstalledComponentsOutput.new
        type.installed_components = InstalledComponentList.build(params[:installed_components], context: "#{context}[:installed_components]") unless params[:installed_components].nil?
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

    module PlatformAttributesMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module RequestAlreadyInProgressException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RequestAlreadyInProgressException, context: context)
        type = Types::RequestAlreadyInProgressException.new
        type.message = params[:message]
        type
      end
    end

    module ResolveComponentCandidatesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResolveComponentCandidatesInput, context: context)
        type = Types::ResolveComponentCandidatesInput.new
        type.platform = ComponentPlatform.build(params[:platform], context: "#{context}[:platform]") unless params[:platform].nil?
        type.component_candidates = ComponentCandidateList.build(params[:component_candidates], context: "#{context}[:component_candidates]") unless params[:component_candidates].nil?
        type
      end
    end

    module ResolveComponentCandidatesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResolveComponentCandidatesOutput, context: context)
        type = Types::ResolveComponentCandidatesOutput.new
        type.resolved_component_versions = ResolvedComponentVersionsList.build(params[:resolved_component_versions], context: "#{context}[:resolved_component_versions]") unless params[:resolved_component_versions].nil?
        type
      end
    end

    module ResolvedComponentVersion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResolvedComponentVersion, context: context)
        type = Types::ResolvedComponentVersion.new
        type.arn = params[:arn]
        type.component_name = params[:component_name]
        type.component_version = params[:component_version]
        type.recipe = params[:recipe]
        type.vendor_guidance = params[:vendor_guidance]
        type.message = params[:message]
        type
      end
    end

    module ResolvedComponentVersionsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResolvedComponentVersion.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module ServiceQuotaExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceQuotaExceededException, context: context)
        type = Types::ServiceQuotaExceededException.new
        type.message = params[:message]
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type.quota_code = params[:quota_code]
        type.service_code = params[:service_code]
        type
      end
    end

    module StringMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module SystemResourceLimits
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SystemResourceLimits, context: context)
        type = Types::SystemResourceLimits.new
        type.memory = params[:memory]
        type.cpus = params[:cpus]
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

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.message = params[:message]
        type.quota_code = params[:quota_code]
        type.service_code = params[:service_code]
        type.retry_after_seconds = params[:retry_after_seconds]
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

    module UpdateConnectivityInfoInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateConnectivityInfoInput, context: context)
        type = Types::UpdateConnectivityInfoInput.new
        type.thing_name = params[:thing_name]
        type.connectivity_info = ConnectivityInfoList.build(params[:connectivity_info], context: "#{context}[:connectivity_info]") unless params[:connectivity_info].nil?
        type
      end
    end

    module UpdateConnectivityInfoOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateConnectivityInfoOutput, context: context)
        type = Types::UpdateConnectivityInfoOutput.new
        type.version = params[:version]
        type.message = params[:message]
        type
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type.reason = params[:reason]
        type.fields = ValidationExceptionFieldList.build(params[:fields], context: "#{context}[:fields]") unless params[:fields].nil?
        type
      end
    end

    module ValidationExceptionField
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationExceptionField, context: context)
        type = Types::ValidationExceptionField.new
        type.name = params[:name]
        type.message = params[:message]
        type
      end
    end

    module ValidationExceptionFieldList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ValidationExceptionField.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ConnectivityInfoList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ConnectivityInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

  end
end
