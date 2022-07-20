# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::GreengrassV2
  module Parsers

    # Operation Parser for AssociateServiceRoleToAccount
    class AssociateServiceRoleToAccount
      def self.parse(http_resp)
        data = Types::AssociateServiceRoleToAccountOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.associated_at = map['AssociatedAt']
        data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        data.retry_after_seconds = http_resp.headers['Retry-After'].to_i unless http_resp.headers['Retry-After'].nil?
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.reason = map['reason']
        data.fields = (ValidationExceptionFieldList.parse(map['fields']) unless map['fields'].nil?)
        data
      end
    end

    class ValidationExceptionFieldList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ValidationExceptionField.parse(value) unless value.nil?
        end
        data
      end
    end

    class ValidationExceptionField
      def self.parse(map)
        data = Types::ValidationExceptionField.new
        data.name = map['name']
        data.message = map['message'] || map['Message']
        return data
      end
    end

    # Operation Parser for BatchAssociateClientDeviceWithCoreDevice
    class BatchAssociateClientDeviceWithCoreDevice
      def self.parse(http_resp)
        data = Types::BatchAssociateClientDeviceWithCoreDeviceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.error_entries = (AssociateClientDeviceWithCoreDeviceErrorList.parse(map['errorEntries']) unless map['errorEntries'].nil?)
        data
      end
    end

    class AssociateClientDeviceWithCoreDeviceErrorList
      def self.parse(list)
        data = []
        list.map do |value|
          data << AssociateClientDeviceWithCoreDeviceErrorEntry.parse(value) unless value.nil?
        end
        data
      end
    end

    class AssociateClientDeviceWithCoreDeviceErrorEntry
      def self.parse(map)
        data = Types::AssociateClientDeviceWithCoreDeviceErrorEntry.new
        data.thing_name = map['thingName']
        data.code = map['code']
        data.message = map['message'] || map['Message']
        return data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        data.retry_after_seconds = http_resp.headers['Retry-After'].to_i unless http_resp.headers['Retry-After'].nil?
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.quota_code = map['quotaCode']
        data.service_code = map['serviceCode']
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.resource_id = map['resourceId']
        data.resource_type = map['resourceType']
        data
      end
    end

    # Operation Parser for BatchDisassociateClientDeviceFromCoreDevice
    class BatchDisassociateClientDeviceFromCoreDevice
      def self.parse(http_resp)
        data = Types::BatchDisassociateClientDeviceFromCoreDeviceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.error_entries = (DisassociateClientDeviceFromCoreDeviceErrorList.parse(map['errorEntries']) unless map['errorEntries'].nil?)
        data
      end
    end

    class DisassociateClientDeviceFromCoreDeviceErrorList
      def self.parse(list)
        data = []
        list.map do |value|
          data << DisassociateClientDeviceFromCoreDeviceErrorEntry.parse(value) unless value.nil?
        end
        data
      end
    end

    class DisassociateClientDeviceFromCoreDeviceErrorEntry
      def self.parse(map)
        data = Types::DisassociateClientDeviceFromCoreDeviceErrorEntry.new
        data.thing_name = map['thingName']
        data.code = map['code']
        data.message = map['message'] || map['Message']
        return data
      end
    end

    # Operation Parser for CancelDeployment
    class CancelDeployment
      def self.parse(http_resp)
        data = Types::CancelDeploymentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.resource_id = map['resourceId']
        data.resource_type = map['resourceType']
        data
      end
    end

    # Operation Parser for CreateComponentVersion
    class CreateComponentVersion
      def self.parse(http_resp)
        data = Types::CreateComponentVersionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.component_name = map['componentName']
        data.component_version = map['componentVersion']
        data.creation_timestamp = Time.at(map['creationTimestamp'].to_i) if map['creationTimestamp']
        data.status = (CloudComponentStatus.parse(map['status']) unless map['status'].nil?)
        data
      end
    end

    class CloudComponentStatus
      def self.parse(map)
        data = Types::CloudComponentStatus.new
        data.component_state = map['componentState']
        data.message = map['message'] || map['Message']
        data.errors = (StringMap.parse(map['errors']) unless map['errors'].nil?)
        data.vendor_guidance = map['vendorGuidance']
        data.vendor_guidance_message = map['vendorGuidanceMessage']
        return data
      end
    end

    class StringMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Error Parser for RequestAlreadyInProgressException
    class RequestAlreadyInProgressException
      def self.parse(http_resp)
        data = Types::RequestAlreadyInProgressException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ServiceQuotaExceededException
    class ServiceQuotaExceededException
      def self.parse(http_resp)
        data = Types::ServiceQuotaExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.resource_id = map['resourceId']
        data.resource_type = map['resourceType']
        data.quota_code = map['quotaCode']
        data.service_code = map['serviceCode']
        data
      end
    end

    # Operation Parser for CreateDeployment
    class CreateDeployment
      def self.parse(http_resp)
        data = Types::CreateDeploymentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.deployment_id = map['deploymentId']
        data.iot_job_id = map['iotJobId']
        data.iot_job_arn = map['iotJobArn']
        data
      end
    end

    # Operation Parser for DeleteComponent
    class DeleteComponent
      def self.parse(http_resp)
        data = Types::DeleteComponentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteCoreDevice
    class DeleteCoreDevice
      def self.parse(http_resp)
        data = Types::DeleteCoreDeviceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteDeployment
    class DeleteDeployment
      def self.parse(http_resp)
        data = Types::DeleteDeploymentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DescribeComponent
    class DescribeComponent
      def self.parse(http_resp)
        data = Types::DescribeComponentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.component_name = map['componentName']
        data.component_version = map['componentVersion']
        data.creation_timestamp = Time.at(map['creationTimestamp'].to_i) if map['creationTimestamp']
        data.publisher = map['publisher']
        data.description = map['description']
        data.status = (CloudComponentStatus.parse(map['status']) unless map['status'].nil?)
        data.platforms = (ComponentPlatformList.parse(map['platforms']) unless map['platforms'].nil?)
        data.tags = (TagMap.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    class TagMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class ComponentPlatformList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ComponentPlatform.parse(value) unless value.nil?
        end
        data
      end
    end

    class ComponentPlatform
      def self.parse(map)
        data = Types::ComponentPlatform.new
        data.name = map['name']
        data.attributes = (PlatformAttributesMap.parse(map['attributes']) unless map['attributes'].nil?)
        return data
      end
    end

    class PlatformAttributesMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DisassociateServiceRoleFromAccount
    class DisassociateServiceRoleFromAccount
      def self.parse(http_resp)
        data = Types::DisassociateServiceRoleFromAccountOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.disassociated_at = map['DisassociatedAt']
        data
      end
    end

    # Operation Parser for GetComponent
    class GetComponent
      def self.parse(http_resp)
        data = Types::GetComponentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.recipe_output_format = map['recipeOutputFormat']
        data.recipe = Base64::decode64(map['recipe']) unless map['recipe'].nil?
        data.tags = (TagMap.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for GetComponentVersionArtifact
    class GetComponentVersionArtifact
      def self.parse(http_resp)
        data = Types::GetComponentVersionArtifactOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.pre_signed_url = map['preSignedUrl']
        data
      end
    end

    # Operation Parser for GetConnectivityInfo
    class GetConnectivityInfo
      def self.parse(http_resp)
        data = Types::GetConnectivityInfoOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.connectivity_info = (ConnectivityInfoList.parse(map['ConnectivityInfo']) unless map['ConnectivityInfo'].nil?)
        data.message = map['Message']
        data
      end
    end

    class ConnectivityInfoList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ConnectivityInfo.parse(value) unless value.nil?
        end
        data
      end
    end

    class ConnectivityInfo
      def self.parse(map)
        data = Types::ConnectivityInfo.new
        data.id = map['Id']
        data.host_address = map['HostAddress']
        data.port_number = map['PortNumber']
        data.metadata = map['Metadata']
        return data
      end
    end

    # Operation Parser for GetCoreDevice
    class GetCoreDevice
      def self.parse(http_resp)
        data = Types::GetCoreDeviceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.core_device_thing_name = map['coreDeviceThingName']
        data.core_version = map['coreVersion']
        data.platform = map['platform']
        data.architecture = map['architecture']
        data.status = map['status']
        data.last_status_update_timestamp = Time.at(map['lastStatusUpdateTimestamp'].to_i) if map['lastStatusUpdateTimestamp']
        data.tags = (TagMap.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for GetDeployment
    class GetDeployment
      def self.parse(http_resp)
        data = Types::GetDeploymentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.target_arn = map['targetArn']
        data.revision_id = map['revisionId']
        data.deployment_id = map['deploymentId']
        data.deployment_name = map['deploymentName']
        data.deployment_status = map['deploymentStatus']
        data.iot_job_id = map['iotJobId']
        data.iot_job_arn = map['iotJobArn']
        data.components = (ComponentDeploymentSpecifications.parse(map['components']) unless map['components'].nil?)
        data.deployment_policies = (DeploymentPolicies.parse(map['deploymentPolicies']) unless map['deploymentPolicies'].nil?)
        data.iot_job_configuration = (DeploymentIoTJobConfiguration.parse(map['iotJobConfiguration']) unless map['iotJobConfiguration'].nil?)
        data.creation_timestamp = Time.at(map['creationTimestamp'].to_i) if map['creationTimestamp']
        data.is_latest_for_target = map['isLatestForTarget']
        data.tags = (TagMap.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    class DeploymentIoTJobConfiguration
      def self.parse(map)
        data = Types::DeploymentIoTJobConfiguration.new
        data.job_executions_rollout_config = (IoTJobExecutionsRolloutConfig.parse(map['jobExecutionsRolloutConfig']) unless map['jobExecutionsRolloutConfig'].nil?)
        data.abort_config = (IoTJobAbortConfig.parse(map['abortConfig']) unless map['abortConfig'].nil?)
        data.timeout_config = (IoTJobTimeoutConfig.parse(map['timeoutConfig']) unless map['timeoutConfig'].nil?)
        return data
      end
    end

    class IoTJobTimeoutConfig
      def self.parse(map)
        data = Types::IoTJobTimeoutConfig.new
        data.in_progress_timeout_in_minutes = map['inProgressTimeoutInMinutes']
        return data
      end
    end

    class IoTJobAbortConfig
      def self.parse(map)
        data = Types::IoTJobAbortConfig.new
        data.criteria_list = (IoTJobAbortCriteriaList.parse(map['criteriaList']) unless map['criteriaList'].nil?)
        return data
      end
    end

    class IoTJobAbortCriteriaList
      def self.parse(list)
        data = []
        list.map do |value|
          data << IoTJobAbortCriteria.parse(value) unless value.nil?
        end
        data
      end
    end

    class IoTJobAbortCriteria
      def self.parse(map)
        data = Types::IoTJobAbortCriteria.new
        data.failure_type = map['failureType']
        data.action = map['action']
        data.threshold_percentage = Hearth::NumberHelper.deserialize(map['thresholdPercentage'])
        data.min_number_of_executed_things = map['minNumberOfExecutedThings']
        return data
      end
    end

    class IoTJobExecutionsRolloutConfig
      def self.parse(map)
        data = Types::IoTJobExecutionsRolloutConfig.new
        data.exponential_rate = (IoTJobExponentialRolloutRate.parse(map['exponentialRate']) unless map['exponentialRate'].nil?)
        data.maximum_per_minute = map['maximumPerMinute']
        return data
      end
    end

    class IoTJobExponentialRolloutRate
      def self.parse(map)
        data = Types::IoTJobExponentialRolloutRate.new
        data.base_rate_per_minute = map['baseRatePerMinute']
        data.increment_factor = Hearth::NumberHelper.deserialize(map['incrementFactor'])
        data.rate_increase_criteria = (IoTJobRateIncreaseCriteria.parse(map['rateIncreaseCriteria']) unless map['rateIncreaseCriteria'].nil?)
        return data
      end
    end

    class IoTJobRateIncreaseCriteria
      def self.parse(map)
        data = Types::IoTJobRateIncreaseCriteria.new
        data.number_of_notified_things = map['numberOfNotifiedThings']
        data.number_of_succeeded_things = map['numberOfSucceededThings']
        return data
      end
    end

    class DeploymentPolicies
      def self.parse(map)
        data = Types::DeploymentPolicies.new
        data.failure_handling_policy = map['failureHandlingPolicy']
        data.component_update_policy = (DeploymentComponentUpdatePolicy.parse(map['componentUpdatePolicy']) unless map['componentUpdatePolicy'].nil?)
        data.configuration_validation_policy = (DeploymentConfigurationValidationPolicy.parse(map['configurationValidationPolicy']) unless map['configurationValidationPolicy'].nil?)
        return data
      end
    end

    class DeploymentConfigurationValidationPolicy
      def self.parse(map)
        data = Types::DeploymentConfigurationValidationPolicy.new
        data.timeout_in_seconds = map['timeoutInSeconds']
        return data
      end
    end

    class DeploymentComponentUpdatePolicy
      def self.parse(map)
        data = Types::DeploymentComponentUpdatePolicy.new
        data.timeout_in_seconds = map['timeoutInSeconds']
        data.action = map['action']
        return data
      end
    end

    class ComponentDeploymentSpecifications
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = ComponentDeploymentSpecification.parse(value) unless value.nil?
        end
        data
      end
    end

    class ComponentDeploymentSpecification
      def self.parse(map)
        data = Types::ComponentDeploymentSpecification.new
        data.component_version = map['componentVersion']
        data.configuration_update = (ComponentConfigurationUpdate.parse(map['configurationUpdate']) unless map['configurationUpdate'].nil?)
        data.run_with = (ComponentRunWith.parse(map['runWith']) unless map['runWith'].nil?)
        return data
      end
    end

    class ComponentRunWith
      def self.parse(map)
        data = Types::ComponentRunWith.new
        data.posix_user = map['posixUser']
        data.system_resource_limits = (SystemResourceLimits.parse(map['systemResourceLimits']) unless map['systemResourceLimits'].nil?)
        data.windows_user = map['windowsUser']
        return data
      end
    end

    class SystemResourceLimits
      def self.parse(map)
        data = Types::SystemResourceLimits.new
        data.memory = map['memory']
        data.cpus = Hearth::NumberHelper.deserialize(map['cpus'])
        return data
      end
    end

    class ComponentConfigurationUpdate
      def self.parse(map)
        data = Types::ComponentConfigurationUpdate.new
        data.merge = map['merge']
        data.reset = (ComponentConfigurationPathList.parse(map['reset']) unless map['reset'].nil?)
        return data
      end
    end

    class ComponentConfigurationPathList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetServiceRoleForAccount
    class GetServiceRoleForAccount
      def self.parse(http_resp)
        data = Types::GetServiceRoleForAccountOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.associated_at = map['AssociatedAt']
        data.role_arn = map['RoleArn']
        data
      end
    end

    # Operation Parser for ListClientDevicesAssociatedWithCoreDevice
    class ListClientDevicesAssociatedWithCoreDevice
      def self.parse(http_resp)
        data = Types::ListClientDevicesAssociatedWithCoreDeviceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.associated_client_devices = (AssociatedClientDeviceList.parse(map['associatedClientDevices']) unless map['associatedClientDevices'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class AssociatedClientDeviceList
      def self.parse(list)
        data = []
        list.map do |value|
          data << AssociatedClientDevice.parse(value) unless value.nil?
        end
        data
      end
    end

    class AssociatedClientDevice
      def self.parse(map)
        data = Types::AssociatedClientDevice.new
        data.thing_name = map['thingName']
        data.association_timestamp = Time.at(map['associationTimestamp'].to_i) if map['associationTimestamp']
        return data
      end
    end

    # Operation Parser for ListComponentVersions
    class ListComponentVersions
      def self.parse(http_resp)
        data = Types::ListComponentVersionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.component_versions = (ComponentVersionList.parse(map['componentVersions']) unless map['componentVersions'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ComponentVersionList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ComponentVersionListItem.parse(value) unless value.nil?
        end
        data
      end
    end

    class ComponentVersionListItem
      def self.parse(map)
        data = Types::ComponentVersionListItem.new
        data.component_name = map['componentName']
        data.component_version = map['componentVersion']
        data.arn = map['arn']
        return data
      end
    end

    # Operation Parser for ListComponents
    class ListComponents
      def self.parse(http_resp)
        data = Types::ListComponentsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.components = (ComponentList.parse(map['components']) unless map['components'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ComponentList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Component.parse(value) unless value.nil?
        end
        data
      end
    end

    class Component
      def self.parse(map)
        data = Types::Component.new
        data.arn = map['arn']
        data.component_name = map['componentName']
        data.latest_version = (ComponentLatestVersion.parse(map['latestVersion']) unless map['latestVersion'].nil?)
        return data
      end
    end

    class ComponentLatestVersion
      def self.parse(map)
        data = Types::ComponentLatestVersion.new
        data.arn = map['arn']
        data.component_version = map['componentVersion']
        data.creation_timestamp = Time.at(map['creationTimestamp'].to_i) if map['creationTimestamp']
        data.description = map['description']
        data.publisher = map['publisher']
        data.platforms = (ComponentPlatformList.parse(map['platforms']) unless map['platforms'].nil?)
        return data
      end
    end

    # Operation Parser for ListCoreDevices
    class ListCoreDevices
      def self.parse(http_resp)
        data = Types::ListCoreDevicesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.core_devices = (CoreDevicesList.parse(map['coreDevices']) unless map['coreDevices'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class CoreDevicesList
      def self.parse(list)
        data = []
        list.map do |value|
          data << CoreDevice.parse(value) unless value.nil?
        end
        data
      end
    end

    class CoreDevice
      def self.parse(map)
        data = Types::CoreDevice.new
        data.core_device_thing_name = map['coreDeviceThingName']
        data.status = map['status']
        data.last_status_update_timestamp = Time.at(map['lastStatusUpdateTimestamp'].to_i) if map['lastStatusUpdateTimestamp']
        return data
      end
    end

    # Operation Parser for ListDeployments
    class ListDeployments
      def self.parse(http_resp)
        data = Types::ListDeploymentsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.deployments = (DeploymentList.parse(map['deployments']) unless map['deployments'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class DeploymentList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Deployment.parse(value) unless value.nil?
        end
        data
      end
    end

    class Deployment
      def self.parse(map)
        data = Types::Deployment.new
        data.target_arn = map['targetArn']
        data.revision_id = map['revisionId']
        data.deployment_id = map['deploymentId']
        data.deployment_name = map['deploymentName']
        data.creation_timestamp = Time.at(map['creationTimestamp'].to_i) if map['creationTimestamp']
        data.deployment_status = map['deploymentStatus']
        data.is_latest_for_target = map['isLatestForTarget']
        return data
      end
    end

    # Operation Parser for ListEffectiveDeployments
    class ListEffectiveDeployments
      def self.parse(http_resp)
        data = Types::ListEffectiveDeploymentsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.effective_deployments = (EffectiveDeploymentsList.parse(map['effectiveDeployments']) unless map['effectiveDeployments'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class EffectiveDeploymentsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << EffectiveDeployment.parse(value) unless value.nil?
        end
        data
      end
    end

    class EffectiveDeployment
      def self.parse(map)
        data = Types::EffectiveDeployment.new
        data.deployment_id = map['deploymentId']
        data.deployment_name = map['deploymentName']
        data.iot_job_id = map['iotJobId']
        data.iot_job_arn = map['iotJobArn']
        data.description = map['description']
        data.target_arn = map['targetArn']
        data.core_device_execution_status = map['coreDeviceExecutionStatus']
        data.reason = map['reason']
        data.creation_timestamp = Time.at(map['creationTimestamp'].to_i) if map['creationTimestamp']
        data.modified_timestamp = Time.at(map['modifiedTimestamp'].to_i) if map['modifiedTimestamp']
        return data
      end
    end

    # Operation Parser for ListInstalledComponents
    class ListInstalledComponents
      def self.parse(http_resp)
        data = Types::ListInstalledComponentsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.installed_components = (InstalledComponentList.parse(map['installedComponents']) unless map['installedComponents'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class InstalledComponentList
      def self.parse(list)
        data = []
        list.map do |value|
          data << InstalledComponent.parse(value) unless value.nil?
        end
        data
      end
    end

    class InstalledComponent
      def self.parse(map)
        data = Types::InstalledComponent.new
        data.component_name = map['componentName']
        data.component_version = map['componentVersion']
        data.lifecycle_state = map['lifecycleState']
        data.lifecycle_state_details = map['lifecycleStateDetails']
        data.is_root = map['isRoot']
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (TagMap.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for ResolveComponentCandidates
    class ResolveComponentCandidates
      def self.parse(http_resp)
        data = Types::ResolveComponentCandidatesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.resolved_component_versions = (ResolvedComponentVersionsList.parse(map['resolvedComponentVersions']) unless map['resolvedComponentVersions'].nil?)
        data
      end
    end

    class ResolvedComponentVersionsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ResolvedComponentVersion.parse(value) unless value.nil?
        end
        data
      end
    end

    class ResolvedComponentVersion
      def self.parse(map)
        data = Types::ResolvedComponentVersion.new
        data.arn = map['arn']
        data.component_name = map['componentName']
        data.component_version = map['componentVersion']
        data.recipe = Base64::decode64(map['recipe']) unless map['recipe'].nil?
        data.vendor_guidance = map['vendorGuidance']
        data.message = map['message'] || map['Message']
        return data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateConnectivityInfo
    class UpdateConnectivityInfo
      def self.parse(http_resp)
        data = Types::UpdateConnectivityInfoOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.version = map['Version']
        data.message = map['Message']
        data
      end
    end
  end
end
