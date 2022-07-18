# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::GreengrassV2
  module Builders

    # Operation Builder for AssociateServiceRoleToAccount
    class AssociateServiceRoleToAccount
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/greengrass/servicerole')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for BatchAssociateClientDeviceWithCoreDevice
    class BatchAssociateClientDeviceWithCoreDevice
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:core_device_thing_name].to_s.empty?
          raise ArgumentError, "HTTP label :core_device_thing_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/v2/coreDevices/%<coreDeviceThingName>s/associateClientDevices',
            coreDeviceThingName: Hearth::HTTP.uri_escape(input[:core_device_thing_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['entries'] = Builders::AssociateClientDeviceWithCoreDeviceEntryList.build(input[:entries]) unless input[:entries].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for AssociateClientDeviceWithCoreDeviceEntryList
    class AssociateClientDeviceWithCoreDeviceEntryList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AssociateClientDeviceWithCoreDeviceEntry.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AssociateClientDeviceWithCoreDeviceEntry
    class AssociateClientDeviceWithCoreDeviceEntry
      def self.build(input)
        data = {}
        data['thingName'] = input[:thing_name] unless input[:thing_name].nil?
        data
      end
    end

    # Operation Builder for BatchDisassociateClientDeviceFromCoreDevice
    class BatchDisassociateClientDeviceFromCoreDevice
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:core_device_thing_name].to_s.empty?
          raise ArgumentError, "HTTP label :core_device_thing_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/v2/coreDevices/%<coreDeviceThingName>s/disassociateClientDevices',
            coreDeviceThingName: Hearth::HTTP.uri_escape(input[:core_device_thing_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['entries'] = Builders::DisassociateClientDeviceFromCoreDeviceEntryList.build(input[:entries]) unless input[:entries].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for DisassociateClientDeviceFromCoreDeviceEntryList
    class DisassociateClientDeviceFromCoreDeviceEntryList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::DisassociateClientDeviceFromCoreDeviceEntry.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DisassociateClientDeviceFromCoreDeviceEntry
    class DisassociateClientDeviceFromCoreDeviceEntry
      def self.build(input)
        data = {}
        data['thingName'] = input[:thing_name] unless input[:thing_name].nil?
        data
      end
    end

    # Operation Builder for CancelDeployment
    class CancelDeployment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:deployment_id].to_s.empty?
          raise ArgumentError, "HTTP label :deployment_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/v2/deployments/%<deploymentId>s/cancel',
            deploymentId: Hearth::HTTP.uri_escape(input[:deployment_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for CreateComponentVersion
    class CreateComponentVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/greengrass/v2/createComponentVersion')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['inlineRecipe'] = Base64::encode64(input[:inline_recipe]).strip unless input[:inline_recipe].nil?
        data['lambdaFunction'] = Builders::LambdaFunctionRecipeSource.build(input[:lambda_function]) unless input[:lambda_function].nil?
        data['tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for TagMap
    class TagMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for LambdaFunctionRecipeSource
    class LambdaFunctionRecipeSource
      def self.build(input)
        data = {}
        data['lambdaArn'] = input[:lambda_arn] unless input[:lambda_arn].nil?
        data['componentName'] = input[:component_name] unless input[:component_name].nil?
        data['componentVersion'] = input[:component_version] unless input[:component_version].nil?
        data['componentPlatforms'] = Builders::ComponentPlatformList.build(input[:component_platforms]) unless input[:component_platforms].nil?
        data['componentDependencies'] = Builders::ComponentDependencyMap.build(input[:component_dependencies]) unless input[:component_dependencies].nil?
        data['componentLambdaParameters'] = Builders::LambdaExecutionParameters.build(input[:component_lambda_parameters]) unless input[:component_lambda_parameters].nil?
        data
      end
    end

    # Structure Builder for LambdaExecutionParameters
    class LambdaExecutionParameters
      def self.build(input)
        data = {}
        data['eventSources'] = Builders::LambdaEventSourceList.build(input[:event_sources]) unless input[:event_sources].nil?
        data['maxQueueSize'] = input[:max_queue_size] unless input[:max_queue_size].nil?
        data['maxInstancesCount'] = input[:max_instances_count] unless input[:max_instances_count].nil?
        data['maxIdleTimeInSeconds'] = input[:max_idle_time_in_seconds] unless input[:max_idle_time_in_seconds].nil?
        data['timeoutInSeconds'] = input[:timeout_in_seconds] unless input[:timeout_in_seconds].nil?
        data['statusTimeoutInSeconds'] = input[:status_timeout_in_seconds] unless input[:status_timeout_in_seconds].nil?
        data['pinned'] = input[:pinned] unless input[:pinned].nil?
        data['inputPayloadEncodingType'] = input[:input_payload_encoding_type] unless input[:input_payload_encoding_type].nil?
        data['execArgs'] = Builders::LambdaExecArgsList.build(input[:exec_args]) unless input[:exec_args].nil?
        data['environmentVariables'] = Builders::LambdaEnvironmentVariables.build(input[:environment_variables]) unless input[:environment_variables].nil?
        data['linuxProcessParams'] = Builders::LambdaLinuxProcessParams.build(input[:linux_process_params]) unless input[:linux_process_params].nil?
        data
      end
    end

    # Structure Builder for LambdaLinuxProcessParams
    class LambdaLinuxProcessParams
      def self.build(input)
        data = {}
        data['isolationMode'] = input[:isolation_mode] unless input[:isolation_mode].nil?
        data['containerParams'] = Builders::LambdaContainerParams.build(input[:container_params]) unless input[:container_params].nil?
        data
      end
    end

    # Structure Builder for LambdaContainerParams
    class LambdaContainerParams
      def self.build(input)
        data = {}
        data['memorySizeInKB'] = input[:memory_size_in_kb] unless input[:memory_size_in_kb].nil?
        data['mountROSysfs'] = input[:mount_ro_sysfs] unless input[:mount_ro_sysfs].nil?
        data['volumes'] = Builders::LambdaVolumeList.build(input[:volumes]) unless input[:volumes].nil?
        data['devices'] = Builders::LambdaDeviceList.build(input[:devices]) unless input[:devices].nil?
        data
      end
    end

    # List Builder for LambdaDeviceList
    class LambdaDeviceList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::LambdaDeviceMount.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for LambdaDeviceMount
    class LambdaDeviceMount
      def self.build(input)
        data = {}
        data['path'] = input[:path] unless input[:path].nil?
        data['permission'] = input[:permission] unless input[:permission].nil?
        data['addGroupOwner'] = input[:add_group_owner] unless input[:add_group_owner].nil?
        data
      end
    end

    # List Builder for LambdaVolumeList
    class LambdaVolumeList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::LambdaVolumeMount.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for LambdaVolumeMount
    class LambdaVolumeMount
      def self.build(input)
        data = {}
        data['sourcePath'] = input[:source_path] unless input[:source_path].nil?
        data['destinationPath'] = input[:destination_path] unless input[:destination_path].nil?
        data['permission'] = input[:permission] unless input[:permission].nil?
        data['addGroupOwner'] = input[:add_group_owner] unless input[:add_group_owner].nil?
        data
      end
    end

    # Map Builder for LambdaEnvironmentVariables
    class LambdaEnvironmentVariables
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Builder for LambdaExecArgsList
    class LambdaExecArgsList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for LambdaEventSourceList
    class LambdaEventSourceList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::LambdaEventSource.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for LambdaEventSource
    class LambdaEventSource
      def self.build(input)
        data = {}
        data['topic'] = input[:topic] unless input[:topic].nil?
        data['type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # Map Builder for ComponentDependencyMap
    class ComponentDependencyMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::ComponentDependencyRequirement.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for ComponentDependencyRequirement
    class ComponentDependencyRequirement
      def self.build(input)
        data = {}
        data['versionRequirement'] = input[:version_requirement] unless input[:version_requirement].nil?
        data['dependencyType'] = input[:dependency_type] unless input[:dependency_type].nil?
        data
      end
    end

    # List Builder for ComponentPlatformList
    class ComponentPlatformList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ComponentPlatform.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ComponentPlatform
    class ComponentPlatform
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['attributes'] = Builders::PlatformAttributesMap.build(input[:attributes]) unless input[:attributes].nil?
        data
      end
    end

    # Map Builder for PlatformAttributesMap
    class PlatformAttributesMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for CreateDeployment
    class CreateDeployment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/greengrass/v2/deployments')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['targetArn'] = input[:target_arn] unless input[:target_arn].nil?
        data['deploymentName'] = input[:deployment_name] unless input[:deployment_name].nil?
        data['components'] = Builders::ComponentDeploymentSpecifications.build(input[:components]) unless input[:components].nil?
        data['iotJobConfiguration'] = Builders::DeploymentIoTJobConfiguration.build(input[:iot_job_configuration]) unless input[:iot_job_configuration].nil?
        data['deploymentPolicies'] = Builders::DeploymentPolicies.build(input[:deployment_policies]) unless input[:deployment_policies].nil?
        data['tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for DeploymentPolicies
    class DeploymentPolicies
      def self.build(input)
        data = {}
        data['failureHandlingPolicy'] = input[:failure_handling_policy] unless input[:failure_handling_policy].nil?
        data['componentUpdatePolicy'] = Builders::DeploymentComponentUpdatePolicy.build(input[:component_update_policy]) unless input[:component_update_policy].nil?
        data['configurationValidationPolicy'] = Builders::DeploymentConfigurationValidationPolicy.build(input[:configuration_validation_policy]) unless input[:configuration_validation_policy].nil?
        data
      end
    end

    # Structure Builder for DeploymentConfigurationValidationPolicy
    class DeploymentConfigurationValidationPolicy
      def self.build(input)
        data = {}
        data['timeoutInSeconds'] = input[:timeout_in_seconds] unless input[:timeout_in_seconds].nil?
        data
      end
    end

    # Structure Builder for DeploymentComponentUpdatePolicy
    class DeploymentComponentUpdatePolicy
      def self.build(input)
        data = {}
        data['timeoutInSeconds'] = input[:timeout_in_seconds] unless input[:timeout_in_seconds].nil?
        data['action'] = input[:action] unless input[:action].nil?
        data
      end
    end

    # Structure Builder for DeploymentIoTJobConfiguration
    class DeploymentIoTJobConfiguration
      def self.build(input)
        data = {}
        data['jobExecutionsRolloutConfig'] = Builders::IoTJobExecutionsRolloutConfig.build(input[:job_executions_rollout_config]) unless input[:job_executions_rollout_config].nil?
        data['abortConfig'] = Builders::IoTJobAbortConfig.build(input[:abort_config]) unless input[:abort_config].nil?
        data['timeoutConfig'] = Builders::IoTJobTimeoutConfig.build(input[:timeout_config]) unless input[:timeout_config].nil?
        data
      end
    end

    # Structure Builder for IoTJobTimeoutConfig
    class IoTJobTimeoutConfig
      def self.build(input)
        data = {}
        data['inProgressTimeoutInMinutes'] = input[:in_progress_timeout_in_minutes] unless input[:in_progress_timeout_in_minutes].nil?
        data
      end
    end

    # Structure Builder for IoTJobAbortConfig
    class IoTJobAbortConfig
      def self.build(input)
        data = {}
        data['criteriaList'] = Builders::IoTJobAbortCriteriaList.build(input[:criteria_list]) unless input[:criteria_list].nil?
        data
      end
    end

    # List Builder for IoTJobAbortCriteriaList
    class IoTJobAbortCriteriaList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::IoTJobAbortCriteria.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for IoTJobAbortCriteria
    class IoTJobAbortCriteria
      def self.build(input)
        data = {}
        data['failureType'] = input[:failure_type] unless input[:failure_type].nil?
        data['action'] = input[:action] unless input[:action].nil?
        data['thresholdPercentage'] = Hearth::NumberHelper.serialize(input[:threshold_percentage]) unless input[:threshold_percentage].nil?
        data['minNumberOfExecutedThings'] = input[:min_number_of_executed_things] unless input[:min_number_of_executed_things].nil?
        data
      end
    end

    # Structure Builder for IoTJobExecutionsRolloutConfig
    class IoTJobExecutionsRolloutConfig
      def self.build(input)
        data = {}
        data['exponentialRate'] = Builders::IoTJobExponentialRolloutRate.build(input[:exponential_rate]) unless input[:exponential_rate].nil?
        data['maximumPerMinute'] = input[:maximum_per_minute] unless input[:maximum_per_minute].nil?
        data
      end
    end

    # Structure Builder for IoTJobExponentialRolloutRate
    class IoTJobExponentialRolloutRate
      def self.build(input)
        data = {}
        data['baseRatePerMinute'] = input[:base_rate_per_minute] unless input[:base_rate_per_minute].nil?
        data['incrementFactor'] = Hearth::NumberHelper.serialize(input[:increment_factor]) unless input[:increment_factor].nil?
        data['rateIncreaseCriteria'] = Builders::IoTJobRateIncreaseCriteria.build(input[:rate_increase_criteria]) unless input[:rate_increase_criteria].nil?
        data
      end
    end

    # Structure Builder for IoTJobRateIncreaseCriteria
    class IoTJobRateIncreaseCriteria
      def self.build(input)
        data = {}
        data['numberOfNotifiedThings'] = input[:number_of_notified_things] unless input[:number_of_notified_things].nil?
        data['numberOfSucceededThings'] = input[:number_of_succeeded_things] unless input[:number_of_succeeded_things].nil?
        data
      end
    end

    # Map Builder for ComponentDeploymentSpecifications
    class ComponentDeploymentSpecifications
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::ComponentDeploymentSpecification.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for ComponentDeploymentSpecification
    class ComponentDeploymentSpecification
      def self.build(input)
        data = {}
        data['componentVersion'] = input[:component_version] unless input[:component_version].nil?
        data['configurationUpdate'] = Builders::ComponentConfigurationUpdate.build(input[:configuration_update]) unless input[:configuration_update].nil?
        data['runWith'] = Builders::ComponentRunWith.build(input[:run_with]) unless input[:run_with].nil?
        data
      end
    end

    # Structure Builder for ComponentRunWith
    class ComponentRunWith
      def self.build(input)
        data = {}
        data['posixUser'] = input[:posix_user] unless input[:posix_user].nil?
        data['systemResourceLimits'] = Builders::SystemResourceLimits.build(input[:system_resource_limits]) unless input[:system_resource_limits].nil?
        data['windowsUser'] = input[:windows_user] unless input[:windows_user].nil?
        data
      end
    end

    # Structure Builder for SystemResourceLimits
    class SystemResourceLimits
      def self.build(input)
        data = {}
        data['memory'] = input[:memory] unless input[:memory].nil?
        data['cpus'] = Hearth::NumberHelper.serialize(input[:cpus]) unless input[:cpus].nil?
        data
      end
    end

    # Structure Builder for ComponentConfigurationUpdate
    class ComponentConfigurationUpdate
      def self.build(input)
        data = {}
        data['merge'] = input[:merge] unless input[:merge].nil?
        data['reset'] = Builders::ComponentConfigurationPathList.build(input[:reset]) unless input[:reset].nil?
        data
      end
    end

    # List Builder for ComponentConfigurationPathList
    class ComponentConfigurationPathList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DeleteComponent
    class DeleteComponent
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:arn].to_s.empty?
          raise ArgumentError, "HTTP label :arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/v2/components/%<arn>s',
            arn: Hearth::HTTP.uri_escape(input[:arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteCoreDevice
    class DeleteCoreDevice
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:core_device_thing_name].to_s.empty?
          raise ArgumentError, "HTTP label :core_device_thing_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/v2/coreDevices/%<coreDeviceThingName>s',
            coreDeviceThingName: Hearth::HTTP.uri_escape(input[:core_device_thing_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteDeployment
    class DeleteDeployment
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:deployment_id].to_s.empty?
          raise ArgumentError, "HTTP label :deployment_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/v2/deployments/%<deploymentId>s',
            deploymentId: Hearth::HTTP.uri_escape(input[:deployment_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeComponent
    class DescribeComponent
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:arn].to_s.empty?
          raise ArgumentError, "HTTP label :arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/v2/components/%<arn>s/metadata',
            arn: Hearth::HTTP.uri_escape(input[:arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DisassociateServiceRoleFromAccount
    class DisassociateServiceRoleFromAccount
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        http_req.append_path('/greengrass/servicerole')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetComponent
    class GetComponent
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:arn].to_s.empty?
          raise ArgumentError, "HTTP label :arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/v2/components/%<arn>s',
            arn: Hearth::HTTP.uri_escape(input[:arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['recipeOutputFormat'] = input[:recipe_output_format].to_s unless input[:recipe_output_format].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetComponentVersionArtifact
    class GetComponentVersionArtifact
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:arn].to_s.empty?
          raise ArgumentError, "HTTP label :arn cannot be nil or empty."
        end
        if input[:artifact_name].to_s.empty?
          raise ArgumentError, "HTTP label :artifact_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/v2/components/%<arn>s/artifacts/%<artifactName>s',
            arn: Hearth::HTTP.uri_escape(input[:arn].to_s),
            artifactName: (input[:artifact_name].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetConnectivityInfo
    class GetConnectivityInfo
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:thing_name].to_s.empty?
          raise ArgumentError, "HTTP label :thing_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/things/%<thingName>s/connectivityInfo',
            thingName: Hearth::HTTP.uri_escape(input[:thing_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetCoreDevice
    class GetCoreDevice
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:core_device_thing_name].to_s.empty?
          raise ArgumentError, "HTTP label :core_device_thing_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/v2/coreDevices/%<coreDeviceThingName>s',
            coreDeviceThingName: Hearth::HTTP.uri_escape(input[:core_device_thing_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetDeployment
    class GetDeployment
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:deployment_id].to_s.empty?
          raise ArgumentError, "HTTP label :deployment_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/v2/deployments/%<deploymentId>s',
            deploymentId: Hearth::HTTP.uri_escape(input[:deployment_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetServiceRoleForAccount
    class GetServiceRoleForAccount
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/greengrass/servicerole')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListClientDevicesAssociatedWithCoreDevice
    class ListClientDevicesAssociatedWithCoreDevice
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:core_device_thing_name].to_s.empty?
          raise ArgumentError, "HTTP label :core_device_thing_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/v2/coreDevices/%<coreDeviceThingName>s/associatedClientDevices',
            coreDeviceThingName: Hearth::HTTP.uri_escape(input[:core_device_thing_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListComponentVersions
    class ListComponentVersions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:arn].to_s.empty?
          raise ArgumentError, "HTTP label :arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/v2/components/%<arn>s/versions',
            arn: Hearth::HTTP.uri_escape(input[:arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListComponents
    class ListComponents
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/greengrass/v2/components')
        params = Hearth::Query::ParamList.new
        params['scope'] = input[:scope].to_s unless input[:scope].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListCoreDevices
    class ListCoreDevices
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/greengrass/v2/coreDevices')
        params = Hearth::Query::ParamList.new
        params['thingGroupArn'] = input[:thing_group_arn].to_s unless input[:thing_group_arn].nil?
        params['status'] = input[:status].to_s unless input[:status].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListDeployments
    class ListDeployments
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/greengrass/v2/deployments')
        params = Hearth::Query::ParamList.new
        params['targetArn'] = input[:target_arn].to_s unless input[:target_arn].nil?
        params['historyFilter'] = input[:history_filter].to_s unless input[:history_filter].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListEffectiveDeployments
    class ListEffectiveDeployments
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:core_device_thing_name].to_s.empty?
          raise ArgumentError, "HTTP label :core_device_thing_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/v2/coreDevices/%<coreDeviceThingName>s/effectiveDeployments',
            coreDeviceThingName: Hearth::HTTP.uri_escape(input[:core_device_thing_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListInstalledComponents
    class ListInstalledComponents
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:core_device_thing_name].to_s.empty?
          raise ArgumentError, "HTTP label :core_device_thing_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/v2/coreDevices/%<coreDeviceThingName>s/installedComponents',
            coreDeviceThingName: Hearth::HTTP.uri_escape(input[:core_device_thing_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ResolveComponentCandidates
    class ResolveComponentCandidates
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/greengrass/v2/resolveComponentCandidates')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['platform'] = Builders::ComponentPlatform.build(input[:platform]) unless input[:platform].nil?
        data['componentCandidates'] = Builders::ComponentCandidateList.build(input[:component_candidates]) unless input[:component_candidates].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ComponentCandidateList
    class ComponentCandidateList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ComponentCandidate.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ComponentCandidate
    class ComponentCandidate
      def self.build(input)
        data = {}
        data['componentName'] = input[:component_name] unless input[:component_name].nil?
        data['componentVersion'] = input[:component_version] unless input[:component_version].nil?
        data['versionRequirements'] = Builders::ComponentVersionRequirementMap.build(input[:version_requirements]) unless input[:version_requirements].nil?
        data
      end
    end

    # Map Builder for ComponentVersionRequirementMap
    class ComponentVersionRequirementMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        unless input[:tag_keys].nil? || input[:tag_keys].empty?
          params['tagKeys'] = input[:tag_keys].map do |value|
            value.to_s unless value.nil?
          end
        end
        http_req.append_query_params(params)
      end
    end

    # List Builder for TagKeyList
    class TagKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateConnectivityInfo
    class UpdateConnectivityInfo
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:thing_name].to_s.empty?
          raise ArgumentError, "HTTP label :thing_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/things/%<thingName>s/connectivityInfo',
            thingName: Hearth::HTTP.uri_escape(input[:thing_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ConnectivityInfo'] = Builders::ConnectivityInfoList.build(input[:connectivity_info]) unless input[:connectivity_info].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for connectivityInfoList
    class ConnectivityInfoList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ConnectivityInfo.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ConnectivityInfo
    class ConnectivityInfo
      def self.build(input)
        data = {}
        data['Id'] = input[:id] unless input[:id].nil?
        data['HostAddress'] = input[:host_address] unless input[:host_address].nil?
        data['PortNumber'] = input[:port_number] unless input[:port_number].nil?
        data['Metadata'] = input[:metadata] unless input[:metadata].nil?
        data
      end
    end
  end
end
