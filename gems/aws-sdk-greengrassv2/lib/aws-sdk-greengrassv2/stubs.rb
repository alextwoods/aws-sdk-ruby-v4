# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::GreengrassV2
  module Stubs

    # Operation Stubber for AssociateServiceRoleToAccount
    class AssociateServiceRoleToAccount
      def self.default(visited=[])
        {
          associated_at: 'associated_at',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AssociatedAt'] = stub[:associated_at] unless stub[:associated_at].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for BatchAssociateClientDeviceWithCoreDevice
    class BatchAssociateClientDeviceWithCoreDevice
      def self.default(visited=[])
        {
          error_entries: AssociateClientDeviceWithCoreDeviceErrorList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['errorEntries'] = Stubs::AssociateClientDeviceWithCoreDeviceErrorList.stub(stub[:error_entries]) unless stub[:error_entries].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AssociateClientDeviceWithCoreDeviceErrorList
    class AssociateClientDeviceWithCoreDeviceErrorList
      def self.default(visited=[])
        return nil if visited.include?('AssociateClientDeviceWithCoreDeviceErrorList')
        visited = visited + ['AssociateClientDeviceWithCoreDeviceErrorList']
        [
          AssociateClientDeviceWithCoreDeviceErrorEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AssociateClientDeviceWithCoreDeviceErrorEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AssociateClientDeviceWithCoreDeviceErrorEntry
    class AssociateClientDeviceWithCoreDeviceErrorEntry
      def self.default(visited=[])
        return nil if visited.include?('AssociateClientDeviceWithCoreDeviceErrorEntry')
        visited = visited + ['AssociateClientDeviceWithCoreDeviceErrorEntry']
        {
          thing_name: 'thing_name',
          code: 'code',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::AssociateClientDeviceWithCoreDeviceErrorEntry.new
        data = {}
        data['thingName'] = stub[:thing_name] unless stub[:thing_name].nil?
        data['code'] = stub[:code] unless stub[:code].nil?
        data['message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Operation Stubber for BatchDisassociateClientDeviceFromCoreDevice
    class BatchDisassociateClientDeviceFromCoreDevice
      def self.default(visited=[])
        {
          error_entries: DisassociateClientDeviceFromCoreDeviceErrorList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['errorEntries'] = Stubs::DisassociateClientDeviceFromCoreDeviceErrorList.stub(stub[:error_entries]) unless stub[:error_entries].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for DisassociateClientDeviceFromCoreDeviceErrorList
    class DisassociateClientDeviceFromCoreDeviceErrorList
      def self.default(visited=[])
        return nil if visited.include?('DisassociateClientDeviceFromCoreDeviceErrorList')
        visited = visited + ['DisassociateClientDeviceFromCoreDeviceErrorList']
        [
          DisassociateClientDeviceFromCoreDeviceErrorEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DisassociateClientDeviceFromCoreDeviceErrorEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DisassociateClientDeviceFromCoreDeviceErrorEntry
    class DisassociateClientDeviceFromCoreDeviceErrorEntry
      def self.default(visited=[])
        return nil if visited.include?('DisassociateClientDeviceFromCoreDeviceErrorEntry')
        visited = visited + ['DisassociateClientDeviceFromCoreDeviceErrorEntry']
        {
          thing_name: 'thing_name',
          code: 'code',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::DisassociateClientDeviceFromCoreDeviceErrorEntry.new
        data = {}
        data['thingName'] = stub[:thing_name] unless stub[:thing_name].nil?
        data['code'] = stub[:code] unless stub[:code].nil?
        data['message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Operation Stubber for CancelDeployment
    class CancelDeployment
      def self.default(visited=[])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateComponentVersion
    class CreateComponentVersion
      def self.default(visited=[])
        {
          arn: 'arn',
          component_name: 'component_name',
          component_version: 'component_version',
          creation_timestamp: Time.now,
          status: CloudComponentStatus.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['componentName'] = stub[:component_name] unless stub[:component_name].nil?
        data['componentVersion'] = stub[:component_version] unless stub[:component_version].nil?
        data['creationTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_timestamp]).to_i unless stub[:creation_timestamp].nil?
        data['status'] = Stubs::CloudComponentStatus.stub(stub[:status]) unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for CloudComponentStatus
    class CloudComponentStatus
      def self.default(visited=[])
        return nil if visited.include?('CloudComponentStatus')
        visited = visited + ['CloudComponentStatus']
        {
          component_state: 'component_state',
          message: 'message',
          errors: StringMap.default(visited),
          vendor_guidance: 'vendor_guidance',
          vendor_guidance_message: 'vendor_guidance_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::CloudComponentStatus.new
        data = {}
        data['componentState'] = stub[:component_state] unless stub[:component_state].nil?
        data['message'] = stub[:message] unless stub[:message].nil?
        data['errors'] = Stubs::StringMap.stub(stub[:errors]) unless stub[:errors].nil?
        data['vendorGuidance'] = stub[:vendor_guidance] unless stub[:vendor_guidance].nil?
        data['vendorGuidanceMessage'] = stub[:vendor_guidance_message] unless stub[:vendor_guidance_message].nil?
        data
      end
    end

    # Map Stubber for StringMap
    class StringMap
      def self.default(visited=[])
        return nil if visited.include?('StringMap')
        visited = visited + ['StringMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for CreateDeployment
    class CreateDeployment
      def self.default(visited=[])
        {
          deployment_id: 'deployment_id',
          iot_job_id: 'iot_job_id',
          iot_job_arn: 'iot_job_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['deploymentId'] = stub[:deployment_id] unless stub[:deployment_id].nil?
        data['iotJobId'] = stub[:iot_job_id] unless stub[:iot_job_id].nil?
        data['iotJobArn'] = stub[:iot_job_arn] unless stub[:iot_job_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteComponent
    class DeleteComponent
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteCoreDevice
    class DeleteCoreDevice
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteDeployment
    class DeleteDeployment
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DescribeComponent
    class DescribeComponent
      def self.default(visited=[])
        {
          arn: 'arn',
          component_name: 'component_name',
          component_version: 'component_version',
          creation_timestamp: Time.now,
          publisher: 'publisher',
          description: 'description',
          status: CloudComponentStatus.default(visited),
          platforms: ComponentPlatformList.default(visited),
          tags: TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['componentName'] = stub[:component_name] unless stub[:component_name].nil?
        data['componentVersion'] = stub[:component_version] unless stub[:component_version].nil?
        data['creationTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_timestamp]).to_i unless stub[:creation_timestamp].nil?
        data['publisher'] = stub[:publisher] unless stub[:publisher].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['status'] = Stubs::CloudComponentStatus.stub(stub[:status]) unless stub[:status].nil?
        data['platforms'] = Stubs::ComponentPlatformList.stub(stub[:platforms]) unless stub[:platforms].nil?
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Stubber for TagMap
    class TagMap
      def self.default(visited=[])
        return nil if visited.include?('TagMap')
        visited = visited + ['TagMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Stubber for ComponentPlatformList
    class ComponentPlatformList
      def self.default(visited=[])
        return nil if visited.include?('ComponentPlatformList')
        visited = visited + ['ComponentPlatformList']
        [
          ComponentPlatform.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ComponentPlatform.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ComponentPlatform
    class ComponentPlatform
      def self.default(visited=[])
        return nil if visited.include?('ComponentPlatform')
        visited = visited + ['ComponentPlatform']
        {
          name: 'name',
          attributes: PlatformAttributesMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ComponentPlatform.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['attributes'] = Stubs::PlatformAttributesMap.stub(stub[:attributes]) unless stub[:attributes].nil?
        data
      end
    end

    # Map Stubber for PlatformAttributesMap
    class PlatformAttributesMap
      def self.default(visited=[])
        return nil if visited.include?('PlatformAttributesMap')
        visited = visited + ['PlatformAttributesMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for DisassociateServiceRoleFromAccount
    class DisassociateServiceRoleFromAccount
      def self.default(visited=[])
        {
          disassociated_at: 'disassociated_at',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DisassociatedAt'] = stub[:disassociated_at] unless stub[:disassociated_at].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetComponent
    class GetComponent
      def self.default(visited=[])
        {
          recipe_output_format: 'recipe_output_format',
          recipe: 'recipe',
          tags: TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['recipeOutputFormat'] = stub[:recipe_output_format] unless stub[:recipe_output_format].nil?
        data['recipe'] = Base64::encode64(stub[:recipe]) unless stub[:recipe].nil?
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetComponentVersionArtifact
    class GetComponentVersionArtifact
      def self.default(visited=[])
        {
          pre_signed_url: 'pre_signed_url',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['preSignedUrl'] = stub[:pre_signed_url] unless stub[:pre_signed_url].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetConnectivityInfo
    class GetConnectivityInfo
      def self.default(visited=[])
        {
          connectivity_info: ConnectivityInfoList.default(visited),
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ConnectivityInfo'] = Stubs::ConnectivityInfoList.stub(stub[:connectivity_info]) unless stub[:connectivity_info].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for connectivityInfoList
    class ConnectivityInfoList
      def self.default(visited=[])
        return nil if visited.include?('ConnectivityInfoList')
        visited = visited + ['ConnectivityInfoList']
        [
          ConnectivityInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ConnectivityInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ConnectivityInfo
    class ConnectivityInfo
      def self.default(visited=[])
        return nil if visited.include?('ConnectivityInfo')
        visited = visited + ['ConnectivityInfo']
        {
          id: 'id',
          host_address: 'host_address',
          port_number: 1,
          metadata: 'metadata',
        }
      end

      def self.stub(stub)
        stub ||= Types::ConnectivityInfo.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['HostAddress'] = stub[:host_address] unless stub[:host_address].nil?
        data['PortNumber'] = stub[:port_number] unless stub[:port_number].nil?
        data['Metadata'] = stub[:metadata] unless stub[:metadata].nil?
        data
      end
    end

    # Operation Stubber for GetCoreDevice
    class GetCoreDevice
      def self.default(visited=[])
        {
          core_device_thing_name: 'core_device_thing_name',
          core_version: 'core_version',
          platform: 'platform',
          architecture: 'architecture',
          status: 'status',
          last_status_update_timestamp: Time.now,
          tags: TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['coreDeviceThingName'] = stub[:core_device_thing_name] unless stub[:core_device_thing_name].nil?
        data['coreVersion'] = stub[:core_version] unless stub[:core_version].nil?
        data['platform'] = stub[:platform] unless stub[:platform].nil?
        data['architecture'] = stub[:architecture] unless stub[:architecture].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['lastStatusUpdateTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_status_update_timestamp]).to_i unless stub[:last_status_update_timestamp].nil?
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetDeployment
    class GetDeployment
      def self.default(visited=[])
        {
          target_arn: 'target_arn',
          revision_id: 'revision_id',
          deployment_id: 'deployment_id',
          deployment_name: 'deployment_name',
          deployment_status: 'deployment_status',
          iot_job_id: 'iot_job_id',
          iot_job_arn: 'iot_job_arn',
          components: ComponentDeploymentSpecifications.default(visited),
          deployment_policies: DeploymentPolicies.default(visited),
          iot_job_configuration: DeploymentIoTJobConfiguration.default(visited),
          creation_timestamp: Time.now,
          is_latest_for_target: false,
          tags: TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['targetArn'] = stub[:target_arn] unless stub[:target_arn].nil?
        data['revisionId'] = stub[:revision_id] unless stub[:revision_id].nil?
        data['deploymentId'] = stub[:deployment_id] unless stub[:deployment_id].nil?
        data['deploymentName'] = stub[:deployment_name] unless stub[:deployment_name].nil?
        data['deploymentStatus'] = stub[:deployment_status] unless stub[:deployment_status].nil?
        data['iotJobId'] = stub[:iot_job_id] unless stub[:iot_job_id].nil?
        data['iotJobArn'] = stub[:iot_job_arn] unless stub[:iot_job_arn].nil?
        data['components'] = Stubs::ComponentDeploymentSpecifications.stub(stub[:components]) unless stub[:components].nil?
        data['deploymentPolicies'] = Stubs::DeploymentPolicies.stub(stub[:deployment_policies]) unless stub[:deployment_policies].nil?
        data['iotJobConfiguration'] = Stubs::DeploymentIoTJobConfiguration.stub(stub[:iot_job_configuration]) unless stub[:iot_job_configuration].nil?
        data['creationTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_timestamp]).to_i unless stub[:creation_timestamp].nil?
        data['isLatestForTarget'] = stub[:is_latest_for_target] unless stub[:is_latest_for_target].nil?
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for DeploymentIoTJobConfiguration
    class DeploymentIoTJobConfiguration
      def self.default(visited=[])
        return nil if visited.include?('DeploymentIoTJobConfiguration')
        visited = visited + ['DeploymentIoTJobConfiguration']
        {
          job_executions_rollout_config: IoTJobExecutionsRolloutConfig.default(visited),
          abort_config: IoTJobAbortConfig.default(visited),
          timeout_config: IoTJobTimeoutConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DeploymentIoTJobConfiguration.new
        data = {}
        data['jobExecutionsRolloutConfig'] = Stubs::IoTJobExecutionsRolloutConfig.stub(stub[:job_executions_rollout_config]) unless stub[:job_executions_rollout_config].nil?
        data['abortConfig'] = Stubs::IoTJobAbortConfig.stub(stub[:abort_config]) unless stub[:abort_config].nil?
        data['timeoutConfig'] = Stubs::IoTJobTimeoutConfig.stub(stub[:timeout_config]) unless stub[:timeout_config].nil?
        data
      end
    end

    # Structure Stubber for IoTJobTimeoutConfig
    class IoTJobTimeoutConfig
      def self.default(visited=[])
        return nil if visited.include?('IoTJobTimeoutConfig')
        visited = visited + ['IoTJobTimeoutConfig']
        {
          in_progress_timeout_in_minutes: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::IoTJobTimeoutConfig.new
        data = {}
        data['inProgressTimeoutInMinutes'] = stub[:in_progress_timeout_in_minutes] unless stub[:in_progress_timeout_in_minutes].nil?
        data
      end
    end

    # Structure Stubber for IoTJobAbortConfig
    class IoTJobAbortConfig
      def self.default(visited=[])
        return nil if visited.include?('IoTJobAbortConfig')
        visited = visited + ['IoTJobAbortConfig']
        {
          criteria_list: IoTJobAbortCriteriaList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::IoTJobAbortConfig.new
        data = {}
        data['criteriaList'] = Stubs::IoTJobAbortCriteriaList.stub(stub[:criteria_list]) unless stub[:criteria_list].nil?
        data
      end
    end

    # List Stubber for IoTJobAbortCriteriaList
    class IoTJobAbortCriteriaList
      def self.default(visited=[])
        return nil if visited.include?('IoTJobAbortCriteriaList')
        visited = visited + ['IoTJobAbortCriteriaList']
        [
          IoTJobAbortCriteria.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::IoTJobAbortCriteria.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for IoTJobAbortCriteria
    class IoTJobAbortCriteria
      def self.default(visited=[])
        return nil if visited.include?('IoTJobAbortCriteria')
        visited = visited + ['IoTJobAbortCriteria']
        {
          failure_type: 'failure_type',
          action: 'action',
          threshold_percentage: 1.0,
          min_number_of_executed_things: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::IoTJobAbortCriteria.new
        data = {}
        data['failureType'] = stub[:failure_type] unless stub[:failure_type].nil?
        data['action'] = stub[:action] unless stub[:action].nil?
        data['thresholdPercentage'] = Hearth::NumberHelper.serialize(stub[:threshold_percentage])
        data['minNumberOfExecutedThings'] = stub[:min_number_of_executed_things] unless stub[:min_number_of_executed_things].nil?
        data
      end
    end

    # Structure Stubber for IoTJobExecutionsRolloutConfig
    class IoTJobExecutionsRolloutConfig
      def self.default(visited=[])
        return nil if visited.include?('IoTJobExecutionsRolloutConfig')
        visited = visited + ['IoTJobExecutionsRolloutConfig']
        {
          exponential_rate: IoTJobExponentialRolloutRate.default(visited),
          maximum_per_minute: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::IoTJobExecutionsRolloutConfig.new
        data = {}
        data['exponentialRate'] = Stubs::IoTJobExponentialRolloutRate.stub(stub[:exponential_rate]) unless stub[:exponential_rate].nil?
        data['maximumPerMinute'] = stub[:maximum_per_minute] unless stub[:maximum_per_minute].nil?
        data
      end
    end

    # Structure Stubber for IoTJobExponentialRolloutRate
    class IoTJobExponentialRolloutRate
      def self.default(visited=[])
        return nil if visited.include?('IoTJobExponentialRolloutRate')
        visited = visited + ['IoTJobExponentialRolloutRate']
        {
          base_rate_per_minute: 1,
          increment_factor: 1.0,
          rate_increase_criteria: IoTJobRateIncreaseCriteria.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::IoTJobExponentialRolloutRate.new
        data = {}
        data['baseRatePerMinute'] = stub[:base_rate_per_minute] unless stub[:base_rate_per_minute].nil?
        data['incrementFactor'] = Hearth::NumberHelper.serialize(stub[:increment_factor])
        data['rateIncreaseCriteria'] = Stubs::IoTJobRateIncreaseCriteria.stub(stub[:rate_increase_criteria]) unless stub[:rate_increase_criteria].nil?
        data
      end
    end

    # Structure Stubber for IoTJobRateIncreaseCriteria
    class IoTJobRateIncreaseCriteria
      def self.default(visited=[])
        return nil if visited.include?('IoTJobRateIncreaseCriteria')
        visited = visited + ['IoTJobRateIncreaseCriteria']
        {
          number_of_notified_things: 1,
          number_of_succeeded_things: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::IoTJobRateIncreaseCriteria.new
        data = {}
        data['numberOfNotifiedThings'] = stub[:number_of_notified_things] unless stub[:number_of_notified_things].nil?
        data['numberOfSucceededThings'] = stub[:number_of_succeeded_things] unless stub[:number_of_succeeded_things].nil?
        data
      end
    end

    # Structure Stubber for DeploymentPolicies
    class DeploymentPolicies
      def self.default(visited=[])
        return nil if visited.include?('DeploymentPolicies')
        visited = visited + ['DeploymentPolicies']
        {
          failure_handling_policy: 'failure_handling_policy',
          component_update_policy: DeploymentComponentUpdatePolicy.default(visited),
          configuration_validation_policy: DeploymentConfigurationValidationPolicy.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DeploymentPolicies.new
        data = {}
        data['failureHandlingPolicy'] = stub[:failure_handling_policy] unless stub[:failure_handling_policy].nil?
        data['componentUpdatePolicy'] = Stubs::DeploymentComponentUpdatePolicy.stub(stub[:component_update_policy]) unless stub[:component_update_policy].nil?
        data['configurationValidationPolicy'] = Stubs::DeploymentConfigurationValidationPolicy.stub(stub[:configuration_validation_policy]) unless stub[:configuration_validation_policy].nil?
        data
      end
    end

    # Structure Stubber for DeploymentConfigurationValidationPolicy
    class DeploymentConfigurationValidationPolicy
      def self.default(visited=[])
        return nil if visited.include?('DeploymentConfigurationValidationPolicy')
        visited = visited + ['DeploymentConfigurationValidationPolicy']
        {
          timeout_in_seconds: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::DeploymentConfigurationValidationPolicy.new
        data = {}
        data['timeoutInSeconds'] = stub[:timeout_in_seconds] unless stub[:timeout_in_seconds].nil?
        data
      end
    end

    # Structure Stubber for DeploymentComponentUpdatePolicy
    class DeploymentComponentUpdatePolicy
      def self.default(visited=[])
        return nil if visited.include?('DeploymentComponentUpdatePolicy')
        visited = visited + ['DeploymentComponentUpdatePolicy']
        {
          timeout_in_seconds: 1,
          action: 'action',
        }
      end

      def self.stub(stub)
        stub ||= Types::DeploymentComponentUpdatePolicy.new
        data = {}
        data['timeoutInSeconds'] = stub[:timeout_in_seconds] unless stub[:timeout_in_seconds].nil?
        data['action'] = stub[:action] unless stub[:action].nil?
        data
      end
    end

    # Map Stubber for ComponentDeploymentSpecifications
    class ComponentDeploymentSpecifications
      def self.default(visited=[])
        return nil if visited.include?('ComponentDeploymentSpecifications')
        visited = visited + ['ComponentDeploymentSpecifications']
        {
          test_key: ComponentDeploymentSpecification.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::ComponentDeploymentSpecification.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for ComponentDeploymentSpecification
    class ComponentDeploymentSpecification
      def self.default(visited=[])
        return nil if visited.include?('ComponentDeploymentSpecification')
        visited = visited + ['ComponentDeploymentSpecification']
        {
          component_version: 'component_version',
          configuration_update: ComponentConfigurationUpdate.default(visited),
          run_with: ComponentRunWith.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ComponentDeploymentSpecification.new
        data = {}
        data['componentVersion'] = stub[:component_version] unless stub[:component_version].nil?
        data['configurationUpdate'] = Stubs::ComponentConfigurationUpdate.stub(stub[:configuration_update]) unless stub[:configuration_update].nil?
        data['runWith'] = Stubs::ComponentRunWith.stub(stub[:run_with]) unless stub[:run_with].nil?
        data
      end
    end

    # Structure Stubber for ComponentRunWith
    class ComponentRunWith
      def self.default(visited=[])
        return nil if visited.include?('ComponentRunWith')
        visited = visited + ['ComponentRunWith']
        {
          posix_user: 'posix_user',
          system_resource_limits: SystemResourceLimits.default(visited),
          windows_user: 'windows_user',
        }
      end

      def self.stub(stub)
        stub ||= Types::ComponentRunWith.new
        data = {}
        data['posixUser'] = stub[:posix_user] unless stub[:posix_user].nil?
        data['systemResourceLimits'] = Stubs::SystemResourceLimits.stub(stub[:system_resource_limits]) unless stub[:system_resource_limits].nil?
        data['windowsUser'] = stub[:windows_user] unless stub[:windows_user].nil?
        data
      end
    end

    # Structure Stubber for SystemResourceLimits
    class SystemResourceLimits
      def self.default(visited=[])
        return nil if visited.include?('SystemResourceLimits')
        visited = visited + ['SystemResourceLimits']
        {
          memory: 1,
          cpus: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::SystemResourceLimits.new
        data = {}
        data['memory'] = stub[:memory] unless stub[:memory].nil?
        data['cpus'] = Hearth::NumberHelper.serialize(stub[:cpus])
        data
      end
    end

    # Structure Stubber for ComponentConfigurationUpdate
    class ComponentConfigurationUpdate
      def self.default(visited=[])
        return nil if visited.include?('ComponentConfigurationUpdate')
        visited = visited + ['ComponentConfigurationUpdate']
        {
          merge: 'merge',
          reset: ComponentConfigurationPathList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ComponentConfigurationUpdate.new
        data = {}
        data['merge'] = stub[:merge] unless stub[:merge].nil?
        data['reset'] = Stubs::ComponentConfigurationPathList.stub(stub[:reset]) unless stub[:reset].nil?
        data
      end
    end

    # List Stubber for ComponentConfigurationPathList
    class ComponentConfigurationPathList
      def self.default(visited=[])
        return nil if visited.include?('ComponentConfigurationPathList')
        visited = visited + ['ComponentConfigurationPathList']
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

    # Operation Stubber for GetServiceRoleForAccount
    class GetServiceRoleForAccount
      def self.default(visited=[])
        {
          associated_at: 'associated_at',
          role_arn: 'role_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AssociatedAt'] = stub[:associated_at] unless stub[:associated_at].nil?
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListClientDevicesAssociatedWithCoreDevice
    class ListClientDevicesAssociatedWithCoreDevice
      def self.default(visited=[])
        {
          associated_client_devices: AssociatedClientDeviceList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['associatedClientDevices'] = Stubs::AssociatedClientDeviceList.stub(stub[:associated_client_devices]) unless stub[:associated_client_devices].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AssociatedClientDeviceList
    class AssociatedClientDeviceList
      def self.default(visited=[])
        return nil if visited.include?('AssociatedClientDeviceList')
        visited = visited + ['AssociatedClientDeviceList']
        [
          AssociatedClientDevice.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AssociatedClientDevice.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AssociatedClientDevice
    class AssociatedClientDevice
      def self.default(visited=[])
        return nil if visited.include?('AssociatedClientDevice')
        visited = visited + ['AssociatedClientDevice']
        {
          thing_name: 'thing_name',
          association_timestamp: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::AssociatedClientDevice.new
        data = {}
        data['thingName'] = stub[:thing_name] unless stub[:thing_name].nil?
        data['associationTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:association_timestamp]).to_i unless stub[:association_timestamp].nil?
        data
      end
    end

    # Operation Stubber for ListComponentVersions
    class ListComponentVersions
      def self.default(visited=[])
        {
          component_versions: ComponentVersionList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['componentVersions'] = Stubs::ComponentVersionList.stub(stub[:component_versions]) unless stub[:component_versions].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ComponentVersionList
    class ComponentVersionList
      def self.default(visited=[])
        return nil if visited.include?('ComponentVersionList')
        visited = visited + ['ComponentVersionList']
        [
          ComponentVersionListItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ComponentVersionListItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ComponentVersionListItem
    class ComponentVersionListItem
      def self.default(visited=[])
        return nil if visited.include?('ComponentVersionListItem')
        visited = visited + ['ComponentVersionListItem']
        {
          component_name: 'component_name',
          component_version: 'component_version',
          arn: 'arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::ComponentVersionListItem.new
        data = {}
        data['componentName'] = stub[:component_name] unless stub[:component_name].nil?
        data['componentVersion'] = stub[:component_version] unless stub[:component_version].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data
      end
    end

    # Operation Stubber for ListComponents
    class ListComponents
      def self.default(visited=[])
        {
          components: ComponentList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['components'] = Stubs::ComponentList.stub(stub[:components]) unless stub[:components].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ComponentList
    class ComponentList
      def self.default(visited=[])
        return nil if visited.include?('ComponentList')
        visited = visited + ['ComponentList']
        [
          Component.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Component.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Component
    class Component
      def self.default(visited=[])
        return nil if visited.include?('Component')
        visited = visited + ['Component']
        {
          arn: 'arn',
          component_name: 'component_name',
          latest_version: ComponentLatestVersion.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Component.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['componentName'] = stub[:component_name] unless stub[:component_name].nil?
        data['latestVersion'] = Stubs::ComponentLatestVersion.stub(stub[:latest_version]) unless stub[:latest_version].nil?
        data
      end
    end

    # Structure Stubber for ComponentLatestVersion
    class ComponentLatestVersion
      def self.default(visited=[])
        return nil if visited.include?('ComponentLatestVersion')
        visited = visited + ['ComponentLatestVersion']
        {
          arn: 'arn',
          component_version: 'component_version',
          creation_timestamp: Time.now,
          description: 'description',
          publisher: 'publisher',
          platforms: ComponentPlatformList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ComponentLatestVersion.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['componentVersion'] = stub[:component_version] unless stub[:component_version].nil?
        data['creationTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_timestamp]).to_i unless stub[:creation_timestamp].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['publisher'] = stub[:publisher] unless stub[:publisher].nil?
        data['platforms'] = Stubs::ComponentPlatformList.stub(stub[:platforms]) unless stub[:platforms].nil?
        data
      end
    end

    # Operation Stubber for ListCoreDevices
    class ListCoreDevices
      def self.default(visited=[])
        {
          core_devices: CoreDevicesList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['coreDevices'] = Stubs::CoreDevicesList.stub(stub[:core_devices]) unless stub[:core_devices].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for CoreDevicesList
    class CoreDevicesList
      def self.default(visited=[])
        return nil if visited.include?('CoreDevicesList')
        visited = visited + ['CoreDevicesList']
        [
          CoreDevice.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::CoreDevice.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CoreDevice
    class CoreDevice
      def self.default(visited=[])
        return nil if visited.include?('CoreDevice')
        visited = visited + ['CoreDevice']
        {
          core_device_thing_name: 'core_device_thing_name',
          status: 'status',
          last_status_update_timestamp: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::CoreDevice.new
        data = {}
        data['coreDeviceThingName'] = stub[:core_device_thing_name] unless stub[:core_device_thing_name].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['lastStatusUpdateTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_status_update_timestamp]).to_i unless stub[:last_status_update_timestamp].nil?
        data
      end
    end

    # Operation Stubber for ListDeployments
    class ListDeployments
      def self.default(visited=[])
        {
          deployments: DeploymentList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['deployments'] = Stubs::DeploymentList.stub(stub[:deployments]) unless stub[:deployments].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for DeploymentList
    class DeploymentList
      def self.default(visited=[])
        return nil if visited.include?('DeploymentList')
        visited = visited + ['DeploymentList']
        [
          Deployment.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Deployment.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Deployment
    class Deployment
      def self.default(visited=[])
        return nil if visited.include?('Deployment')
        visited = visited + ['Deployment']
        {
          target_arn: 'target_arn',
          revision_id: 'revision_id',
          deployment_id: 'deployment_id',
          deployment_name: 'deployment_name',
          creation_timestamp: Time.now,
          deployment_status: 'deployment_status',
          is_latest_for_target: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::Deployment.new
        data = {}
        data['targetArn'] = stub[:target_arn] unless stub[:target_arn].nil?
        data['revisionId'] = stub[:revision_id] unless stub[:revision_id].nil?
        data['deploymentId'] = stub[:deployment_id] unless stub[:deployment_id].nil?
        data['deploymentName'] = stub[:deployment_name] unless stub[:deployment_name].nil?
        data['creationTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_timestamp]).to_i unless stub[:creation_timestamp].nil?
        data['deploymentStatus'] = stub[:deployment_status] unless stub[:deployment_status].nil?
        data['isLatestForTarget'] = stub[:is_latest_for_target] unless stub[:is_latest_for_target].nil?
        data
      end
    end

    # Operation Stubber for ListEffectiveDeployments
    class ListEffectiveDeployments
      def self.default(visited=[])
        {
          effective_deployments: EffectiveDeploymentsList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['effectiveDeployments'] = Stubs::EffectiveDeploymentsList.stub(stub[:effective_deployments]) unless stub[:effective_deployments].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for EffectiveDeploymentsList
    class EffectiveDeploymentsList
      def self.default(visited=[])
        return nil if visited.include?('EffectiveDeploymentsList')
        visited = visited + ['EffectiveDeploymentsList']
        [
          EffectiveDeployment.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::EffectiveDeployment.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EffectiveDeployment
    class EffectiveDeployment
      def self.default(visited=[])
        return nil if visited.include?('EffectiveDeployment')
        visited = visited + ['EffectiveDeployment']
        {
          deployment_id: 'deployment_id',
          deployment_name: 'deployment_name',
          iot_job_id: 'iot_job_id',
          iot_job_arn: 'iot_job_arn',
          description: 'description',
          target_arn: 'target_arn',
          core_device_execution_status: 'core_device_execution_status',
          reason: 'reason',
          creation_timestamp: Time.now,
          modified_timestamp: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::EffectiveDeployment.new
        data = {}
        data['deploymentId'] = stub[:deployment_id] unless stub[:deployment_id].nil?
        data['deploymentName'] = stub[:deployment_name] unless stub[:deployment_name].nil?
        data['iotJobId'] = stub[:iot_job_id] unless stub[:iot_job_id].nil?
        data['iotJobArn'] = stub[:iot_job_arn] unless stub[:iot_job_arn].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['targetArn'] = stub[:target_arn] unless stub[:target_arn].nil?
        data['coreDeviceExecutionStatus'] = stub[:core_device_execution_status] unless stub[:core_device_execution_status].nil?
        data['reason'] = stub[:reason] unless stub[:reason].nil?
        data['creationTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_timestamp]).to_i unless stub[:creation_timestamp].nil?
        data['modifiedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:modified_timestamp]).to_i unless stub[:modified_timestamp].nil?
        data
      end
    end

    # Operation Stubber for ListInstalledComponents
    class ListInstalledComponents
      def self.default(visited=[])
        {
          installed_components: InstalledComponentList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['installedComponents'] = Stubs::InstalledComponentList.stub(stub[:installed_components]) unless stub[:installed_components].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for InstalledComponentList
    class InstalledComponentList
      def self.default(visited=[])
        return nil if visited.include?('InstalledComponentList')
        visited = visited + ['InstalledComponentList']
        [
          InstalledComponent.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::InstalledComponent.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for InstalledComponent
    class InstalledComponent
      def self.default(visited=[])
        return nil if visited.include?('InstalledComponent')
        visited = visited + ['InstalledComponent']
        {
          component_name: 'component_name',
          component_version: 'component_version',
          lifecycle_state: 'lifecycle_state',
          lifecycle_state_details: 'lifecycle_state_details',
          is_root: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::InstalledComponent.new
        data = {}
        data['componentName'] = stub[:component_name] unless stub[:component_name].nil?
        data['componentVersion'] = stub[:component_version] unless stub[:component_version].nil?
        data['lifecycleState'] = stub[:lifecycle_state] unless stub[:lifecycle_state].nil?
        data['lifecycleStateDetails'] = stub[:lifecycle_state_details] unless stub[:lifecycle_state_details].nil?
        data['isRoot'] = stub[:is_root] unless stub[:is_root].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ResolveComponentCandidates
    class ResolveComponentCandidates
      def self.default(visited=[])
        {
          resolved_component_versions: ResolvedComponentVersionsList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['resolvedComponentVersions'] = Stubs::ResolvedComponentVersionsList.stub(stub[:resolved_component_versions]) unless stub[:resolved_component_versions].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ResolvedComponentVersionsList
    class ResolvedComponentVersionsList
      def self.default(visited=[])
        return nil if visited.include?('ResolvedComponentVersionsList')
        visited = visited + ['ResolvedComponentVersionsList']
        [
          ResolvedComponentVersion.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ResolvedComponentVersion.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ResolvedComponentVersion
    class ResolvedComponentVersion
      def self.default(visited=[])
        return nil if visited.include?('ResolvedComponentVersion')
        visited = visited + ['ResolvedComponentVersion']
        {
          arn: 'arn',
          component_name: 'component_name',
          component_version: 'component_version',
          recipe: 'recipe',
          vendor_guidance: 'vendor_guidance',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::ResolvedComponentVersion.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['componentName'] = stub[:component_name] unless stub[:component_name].nil?
        data['componentVersion'] = stub[:component_version] unless stub[:component_version].nil?
        data['recipe'] = Base64::encode64(stub[:recipe]) unless stub[:recipe].nil?
        data['vendorGuidance'] = stub[:vendor_guidance] unless stub[:vendor_guidance].nil?
        data['message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UntagResource
    class UntagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateConnectivityInfo
    class UpdateConnectivityInfo
      def self.default(visited=[])
        {
          version: 'version',
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Version'] = stub[:version] unless stub[:version].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
