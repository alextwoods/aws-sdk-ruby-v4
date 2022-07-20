# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::M2
  module Stubs

    # Operation Stubber for CancelBatchJobExecution
    class CancelBatchJobExecution
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateApplication
    class CreateApplication
      def self.default(visited=[])
        {
          application_arn: 'application_arn',
          application_id: 'application_id',
          application_version: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['applicationArn'] = stub[:application_arn] unless stub[:application_arn].nil?
        data['applicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['applicationVersion'] = stub[:application_version] unless stub[:application_version].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateDataSetImportTask
    class CreateDataSetImportTask
      def self.default(visited=[])
        {
          task_id: 'task_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['taskId'] = stub[:task_id] unless stub[:task_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateDeployment
    class CreateDeployment
      def self.default(visited=[])
        {
          deployment_id: 'deployment_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['deploymentId'] = stub[:deployment_id] unless stub[:deployment_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateEnvironment
    class CreateEnvironment
      def self.default(visited=[])
        {
          environment_id: 'environment_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['environmentId'] = stub[:environment_id] unless stub[:environment_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteApplication
    class DeleteApplication
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteApplicationFromEnvironment
    class DeleteApplicationFromEnvironment
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteEnvironment
    class DeleteEnvironment
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetApplication
    class GetApplication
      def self.default(visited=[])
        {
          name: 'name',
          description: 'description',
          application_id: 'application_id',
          application_arn: 'application_arn',
          status: 'status',
          latest_version: ApplicationVersionSummary.default(visited),
          deployed_version: DeployedVersionSummary.default(visited),
          engine_type: 'engine_type',
          log_groups: LogGroupSummaries.default(visited),
          creation_time: Time.now,
          last_start_time: Time.now,
          tags: TagMap.default(visited),
          environment_id: 'environment_id',
          target_group_arns: ArnList.default(visited),
          listener_arns: ArnList.default(visited),
          listener_ports: PortList.default(visited),
          load_balancer_dns_name: 'load_balancer_dns_name',
          status_reason: 'status_reason',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['applicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['applicationArn'] = stub[:application_arn] unless stub[:application_arn].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['latestVersion'] = ApplicationVersionSummary.stub(stub[:latest_version]) unless stub[:latest_version].nil?
        data['deployedVersion'] = DeployedVersionSummary.stub(stub[:deployed_version]) unless stub[:deployed_version].nil?
        data['engineType'] = stub[:engine_type] unless stub[:engine_type].nil?
        data['logGroups'] = LogGroupSummaries.stub(stub[:log_groups]) unless stub[:log_groups].nil?
        data['creationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['lastStartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_start_time]).to_i unless stub[:last_start_time].nil?
        data['tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['environmentId'] = stub[:environment_id] unless stub[:environment_id].nil?
        data['targetGroupArns'] = ArnList.stub(stub[:target_group_arns]) unless stub[:target_group_arns].nil?
        data['listenerArns'] = ArnList.stub(stub[:listener_arns]) unless stub[:listener_arns].nil?
        data['listenerPorts'] = PortList.stub(stub[:listener_ports]) unless stub[:listener_ports].nil?
        data['loadBalancerDnsName'] = stub[:load_balancer_dns_name] unless stub[:load_balancer_dns_name].nil?
        data['statusReason'] = stub[:status_reason] unless stub[:status_reason].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for PortList
    class PortList
      def self.default(visited=[])
        return nil if visited.include?('PortList')
        visited = visited + ['PortList']
        [
          1
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

    # List Stubber for ArnList
    class ArnList
      def self.default(visited=[])
        return nil if visited.include?('ArnList')
        visited = visited + ['ArnList']
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

    # List Stubber for LogGroupSummaries
    class LogGroupSummaries
      def self.default(visited=[])
        return nil if visited.include?('LogGroupSummaries')
        visited = visited + ['LogGroupSummaries']
        [
          LogGroupSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << LogGroupSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for LogGroupSummary
    class LogGroupSummary
      def self.default(visited=[])
        return nil if visited.include?('LogGroupSummary')
        visited = visited + ['LogGroupSummary']
        {
          log_type: 'log_type',
          log_group_name: 'log_group_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::LogGroupSummary.new
        data = {}
        data['logType'] = stub[:log_type] unless stub[:log_type].nil?
        data['logGroupName'] = stub[:log_group_name] unless stub[:log_group_name].nil?
        data
      end
    end

    # Structure Stubber for DeployedVersionSummary
    class DeployedVersionSummary
      def self.default(visited=[])
        return nil if visited.include?('DeployedVersionSummary')
        visited = visited + ['DeployedVersionSummary']
        {
          application_version: 1,
          status: 'status',
          status_reason: 'status_reason',
        }
      end

      def self.stub(stub)
        stub ||= Types::DeployedVersionSummary.new
        data = {}
        data['applicationVersion'] = stub[:application_version] unless stub[:application_version].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['statusReason'] = stub[:status_reason] unless stub[:status_reason].nil?
        data
      end
    end

    # Structure Stubber for ApplicationVersionSummary
    class ApplicationVersionSummary
      def self.default(visited=[])
        return nil if visited.include?('ApplicationVersionSummary')
        visited = visited + ['ApplicationVersionSummary']
        {
          application_version: 1,
          status: 'status',
          status_reason: 'status_reason',
          creation_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ApplicationVersionSummary.new
        data = {}
        data['applicationVersion'] = stub[:application_version] unless stub[:application_version].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['statusReason'] = stub[:status_reason] unless stub[:status_reason].nil?
        data['creationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data
      end
    end

    # Operation Stubber for GetApplicationVersion
    class GetApplicationVersion
      def self.default(visited=[])
        {
          name: 'name',
          application_version: 1,
          description: 'description',
          definition_content: 'definition_content',
          status: 'status',
          creation_time: Time.now,
          status_reason: 'status_reason',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['name'] = stub[:name] unless stub[:name].nil?
        data['applicationVersion'] = stub[:application_version] unless stub[:application_version].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['definitionContent'] = stub[:definition_content] unless stub[:definition_content].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['creationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['statusReason'] = stub[:status_reason] unless stub[:status_reason].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetBatchJobExecution
    class GetBatchJobExecution
      def self.default(visited=[])
        {
          execution_id: 'execution_id',
          application_id: 'application_id',
          job_id: 'job_id',
          job_name: 'job_name',
          job_user: 'job_user',
          job_type: 'job_type',
          status: 'status',
          start_time: Time.now,
          end_time: Time.now,
          status_reason: 'status_reason',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['executionId'] = stub[:execution_id] unless stub[:execution_id].nil?
        data['applicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['jobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['jobName'] = stub[:job_name] unless stub[:job_name].nil?
        data['jobUser'] = stub[:job_user] unless stub[:job_user].nil?
        data['jobType'] = stub[:job_type] unless stub[:job_type].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['startTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['endTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data['statusReason'] = stub[:status_reason] unless stub[:status_reason].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetDataSetDetails
    class GetDataSetDetails
      def self.default(visited=[])
        {
          data_set_name: 'data_set_name',
          data_set_org: DatasetDetailOrgAttributes.default(visited),
          record_length: 1,
          location: 'location',
          blocksize: 1,
          creation_time: Time.now,
          last_updated_time: Time.now,
          last_referenced_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['dataSetName'] = stub[:data_set_name] unless stub[:data_set_name].nil?
        data['dataSetOrg'] = DatasetDetailOrgAttributes.stub(stub[:data_set_org]) unless stub[:data_set_org].nil?
        data['recordLength'] = stub[:record_length] unless stub[:record_length].nil?
        data['location'] = stub[:location] unless stub[:location].nil?
        data['blocksize'] = stub[:blocksize] unless stub[:blocksize].nil?
        data['creationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['lastUpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_time]).to_i unless stub[:last_updated_time].nil?
        data['lastReferencedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_referenced_time]).to_i unless stub[:last_referenced_time].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Union Stubber for DatasetDetailOrgAttributes
    class DatasetDetailOrgAttributes
      def self.default(visited=[])
        return nil if visited.include?('DatasetDetailOrgAttributes')
        visited = visited + ['DatasetDetailOrgAttributes']
        {
          vsam: VsamDetailAttributes.default(visited),
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::DatasetDetailOrgAttributes::Vsam
          data['vsam'] = (VsamDetailAttributes.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::DatasetDetailOrgAttributes::Gdg
          data['gdg'] = (GdgDetailAttributes.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::DatasetDetailOrgAttributes"
        end

        data
      end
    end

    # Structure Stubber for GdgDetailAttributes
    class GdgDetailAttributes
      def self.default(visited=[])
        return nil if visited.include?('GdgDetailAttributes')
        visited = visited + ['GdgDetailAttributes']
        {
          limit: 1,
          roll_disposition: 'roll_disposition',
        }
      end

      def self.stub(stub)
        stub ||= Types::GdgDetailAttributes.new
        data = {}
        data['limit'] = stub[:limit] unless stub[:limit].nil?
        data['rollDisposition'] = stub[:roll_disposition] unless stub[:roll_disposition].nil?
        data
      end
    end

    # Structure Stubber for VsamDetailAttributes
    class VsamDetailAttributes
      def self.default(visited=[])
        return nil if visited.include?('VsamDetailAttributes')
        visited = visited + ['VsamDetailAttributes']
        {
          encoding: 'encoding',
          record_format: 'record_format',
          compressed: false,
          cache_at_startup: false,
          primary_key: PrimaryKey.default(visited),
          alternate_keys: AlternateKeyList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::VsamDetailAttributes.new
        data = {}
        data['encoding'] = stub[:encoding] unless stub[:encoding].nil?
        data['recordFormat'] = stub[:record_format] unless stub[:record_format].nil?
        data['compressed'] = stub[:compressed] unless stub[:compressed].nil?
        data['cacheAtStartup'] = stub[:cache_at_startup] unless stub[:cache_at_startup].nil?
        data['primaryKey'] = PrimaryKey.stub(stub[:primary_key]) unless stub[:primary_key].nil?
        data['alternateKeys'] = AlternateKeyList.stub(stub[:alternate_keys]) unless stub[:alternate_keys].nil?
        data
      end
    end

    # List Stubber for AlternateKeyList
    class AlternateKeyList
      def self.default(visited=[])
        return nil if visited.include?('AlternateKeyList')
        visited = visited + ['AlternateKeyList']
        [
          AlternateKey.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AlternateKey.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AlternateKey
    class AlternateKey
      def self.default(visited=[])
        return nil if visited.include?('AlternateKey')
        visited = visited + ['AlternateKey']
        {
          name: 'name',
          offset: 1,
          length: 1,
          allow_duplicates: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::AlternateKey.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['offset'] = stub[:offset] unless stub[:offset].nil?
        data['length'] = stub[:length] unless stub[:length].nil?
        data['allowDuplicates'] = stub[:allow_duplicates] unless stub[:allow_duplicates].nil?
        data
      end
    end

    # Structure Stubber for PrimaryKey
    class PrimaryKey
      def self.default(visited=[])
        return nil if visited.include?('PrimaryKey')
        visited = visited + ['PrimaryKey']
        {
          name: 'name',
          offset: 1,
          length: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::PrimaryKey.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['offset'] = stub[:offset] unless stub[:offset].nil?
        data['length'] = stub[:length] unless stub[:length].nil?
        data
      end
    end

    # Operation Stubber for GetDataSetImportTask
    class GetDataSetImportTask
      def self.default(visited=[])
        {
          task_id: 'task_id',
          status: 'status',
          summary: DataSetImportSummary.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['taskId'] = stub[:task_id] unless stub[:task_id].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['summary'] = DataSetImportSummary.stub(stub[:summary]) unless stub[:summary].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for DataSetImportSummary
    class DataSetImportSummary
      def self.default(visited=[])
        return nil if visited.include?('DataSetImportSummary')
        visited = visited + ['DataSetImportSummary']
        {
          total: 1,
          succeeded: 1,
          failed: 1,
          pending: 1,
          in_progress: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::DataSetImportSummary.new
        data = {}
        data['total'] = stub[:total] unless stub[:total].nil?
        data['succeeded'] = stub[:succeeded] unless stub[:succeeded].nil?
        data['failed'] = stub[:failed] unless stub[:failed].nil?
        data['pending'] = stub[:pending] unless stub[:pending].nil?
        data['inProgress'] = stub[:in_progress] unless stub[:in_progress].nil?
        data
      end
    end

    # Operation Stubber for GetDeployment
    class GetDeployment
      def self.default(visited=[])
        {
          deployment_id: 'deployment_id',
          application_id: 'application_id',
          environment_id: 'environment_id',
          application_version: 1,
          status: 'status',
          creation_time: Time.now,
          status_reason: 'status_reason',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['deploymentId'] = stub[:deployment_id] unless stub[:deployment_id].nil?
        data['applicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['environmentId'] = stub[:environment_id] unless stub[:environment_id].nil?
        data['applicationVersion'] = stub[:application_version] unless stub[:application_version].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['creationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['statusReason'] = stub[:status_reason] unless stub[:status_reason].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetEnvironment
    class GetEnvironment
      def self.default(visited=[])
        {
          name: 'name',
          description: 'description',
          environment_arn: 'environment_arn',
          environment_id: 'environment_id',
          instance_type: 'instance_type',
          status: 'status',
          engine_type: 'engine_type',
          engine_version: 'engine_version',
          vpc_id: 'vpc_id',
          subnet_ids: String50List.default(visited),
          security_group_ids: String50List.default(visited),
          creation_time: Time.now,
          storage_configurations: StorageConfigurationList.default(visited),
          tags: TagMap.default(visited),
          high_availability_config: HighAvailabilityConfig.default(visited),
          publicly_accessible: false,
          actual_capacity: 1,
          load_balancer_arn: 'load_balancer_arn',
          status_reason: 'status_reason',
          preferred_maintenance_window: 'preferred_maintenance_window',
          pending_maintenance: PendingMaintenance.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['environmentArn'] = stub[:environment_arn] unless stub[:environment_arn].nil?
        data['environmentId'] = stub[:environment_id] unless stub[:environment_id].nil?
        data['instanceType'] = stub[:instance_type] unless stub[:instance_type].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['engineType'] = stub[:engine_type] unless stub[:engine_type].nil?
        data['engineVersion'] = stub[:engine_version] unless stub[:engine_version].nil?
        data['vpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data['subnetIds'] = String50List.stub(stub[:subnet_ids]) unless stub[:subnet_ids].nil?
        data['securityGroupIds'] = String50List.stub(stub[:security_group_ids]) unless stub[:security_group_ids].nil?
        data['creationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['storageConfigurations'] = StorageConfigurationList.stub(stub[:storage_configurations]) unless stub[:storage_configurations].nil?
        data['tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['highAvailabilityConfig'] = HighAvailabilityConfig.stub(stub[:high_availability_config]) unless stub[:high_availability_config].nil?
        data['publiclyAccessible'] = stub[:publicly_accessible] unless stub[:publicly_accessible].nil?
        data['actualCapacity'] = stub[:actual_capacity] unless stub[:actual_capacity].nil?
        data['loadBalancerArn'] = stub[:load_balancer_arn] unless stub[:load_balancer_arn].nil?
        data['statusReason'] = stub[:status_reason] unless stub[:status_reason].nil?
        data['preferredMaintenanceWindow'] = stub[:preferred_maintenance_window] unless stub[:preferred_maintenance_window].nil?
        data['pendingMaintenance'] = PendingMaintenance.stub(stub[:pending_maintenance]) unless stub[:pending_maintenance].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for PendingMaintenance
    class PendingMaintenance
      def self.default(visited=[])
        return nil if visited.include?('PendingMaintenance')
        visited = visited + ['PendingMaintenance']
        {
          schedule: MaintenanceSchedule.default(visited),
          engine_version: 'engine_version',
        }
      end

      def self.stub(stub)
        stub ||= Types::PendingMaintenance.new
        data = {}
        data['schedule'] = MaintenanceSchedule.stub(stub[:schedule]) unless stub[:schedule].nil?
        data['engineVersion'] = stub[:engine_version] unless stub[:engine_version].nil?
        data
      end
    end

    # Structure Stubber for MaintenanceSchedule
    class MaintenanceSchedule
      def self.default(visited=[])
        return nil if visited.include?('MaintenanceSchedule')
        visited = visited + ['MaintenanceSchedule']
        {
          start_time: Time.now,
          end_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::MaintenanceSchedule.new
        data = {}
        data['startTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['endTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data
      end
    end

    # Structure Stubber for HighAvailabilityConfig
    class HighAvailabilityConfig
      def self.default(visited=[])
        return nil if visited.include?('HighAvailabilityConfig')
        visited = visited + ['HighAvailabilityConfig']
        {
          desired_capacity: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::HighAvailabilityConfig.new
        data = {}
        data['desiredCapacity'] = stub[:desired_capacity] unless stub[:desired_capacity].nil?
        data
      end
    end

    # List Stubber for StorageConfigurationList
    class StorageConfigurationList
      def self.default(visited=[])
        return nil if visited.include?('StorageConfigurationList')
        visited = visited + ['StorageConfigurationList']
        [
          StorageConfiguration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << StorageConfiguration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Union Stubber for StorageConfiguration
    class StorageConfiguration
      def self.default(visited=[])
        return nil if visited.include?('StorageConfiguration')
        visited = visited + ['StorageConfiguration']
        {
          efs: EfsStorageConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::StorageConfiguration::Efs
          data['efs'] = (EfsStorageConfiguration.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::StorageConfiguration::Fsx
          data['fsx'] = (FsxStorageConfiguration.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::StorageConfiguration"
        end

        data
      end
    end

    # Structure Stubber for FsxStorageConfiguration
    class FsxStorageConfiguration
      def self.default(visited=[])
        return nil if visited.include?('FsxStorageConfiguration')
        visited = visited + ['FsxStorageConfiguration']
        {
          file_system_id: 'file_system_id',
          mount_point: 'mount_point',
        }
      end

      def self.stub(stub)
        stub ||= Types::FsxStorageConfiguration.new
        data = {}
        data['file-system-id'] = stub[:file_system_id] unless stub[:file_system_id].nil?
        data['mount-point'] = stub[:mount_point] unless stub[:mount_point].nil?
        data
      end
    end

    # Structure Stubber for EfsStorageConfiguration
    class EfsStorageConfiguration
      def self.default(visited=[])
        return nil if visited.include?('EfsStorageConfiguration')
        visited = visited + ['EfsStorageConfiguration']
        {
          file_system_id: 'file_system_id',
          mount_point: 'mount_point',
        }
      end

      def self.stub(stub)
        stub ||= Types::EfsStorageConfiguration.new
        data = {}
        data['file-system-id'] = stub[:file_system_id] unless stub[:file_system_id].nil?
        data['mount-point'] = stub[:mount_point] unless stub[:mount_point].nil?
        data
      end
    end

    # List Stubber for String50List
    class String50List
      def self.default(visited=[])
        return nil if visited.include?('String50List')
        visited = visited + ['String50List']
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

    # Operation Stubber for ListApplicationVersions
    class ListApplicationVersions
      def self.default(visited=[])
        {
          application_versions: ApplicationVersionSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['applicationVersions'] = ApplicationVersionSummaryList.stub(stub[:application_versions]) unless stub[:application_versions].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ApplicationVersionSummaryList
    class ApplicationVersionSummaryList
      def self.default(visited=[])
        return nil if visited.include?('ApplicationVersionSummaryList')
        visited = visited + ['ApplicationVersionSummaryList']
        [
          ApplicationVersionSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ApplicationVersionSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListApplications
    class ListApplications
      def self.default(visited=[])
        {
          applications: ApplicationSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['applications'] = ApplicationSummaryList.stub(stub[:applications]) unless stub[:applications].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ApplicationSummaryList
    class ApplicationSummaryList
      def self.default(visited=[])
        return nil if visited.include?('ApplicationSummaryList')
        visited = visited + ['ApplicationSummaryList']
        [
          ApplicationSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ApplicationSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ApplicationSummary
    class ApplicationSummary
      def self.default(visited=[])
        return nil if visited.include?('ApplicationSummary')
        visited = visited + ['ApplicationSummary']
        {
          name: 'name',
          description: 'description',
          application_id: 'application_id',
          application_arn: 'application_arn',
          application_version: 1,
          status: 'status',
          engine_type: 'engine_type',
          creation_time: Time.now,
          environment_id: 'environment_id',
          last_start_time: Time.now,
          version_status: 'version_status',
          deployment_status: 'deployment_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::ApplicationSummary.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['applicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['applicationArn'] = stub[:application_arn] unless stub[:application_arn].nil?
        data['applicationVersion'] = stub[:application_version] unless stub[:application_version].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['engineType'] = stub[:engine_type] unless stub[:engine_type].nil?
        data['creationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['environmentId'] = stub[:environment_id] unless stub[:environment_id].nil?
        data['lastStartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_start_time]).to_i unless stub[:last_start_time].nil?
        data['versionStatus'] = stub[:version_status] unless stub[:version_status].nil?
        data['deploymentStatus'] = stub[:deployment_status] unless stub[:deployment_status].nil?
        data
      end
    end

    # Operation Stubber for ListBatchJobDefinitions
    class ListBatchJobDefinitions
      def self.default(visited=[])
        {
          batch_job_definitions: BatchJobDefinitions.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['batchJobDefinitions'] = BatchJobDefinitions.stub(stub[:batch_job_definitions]) unless stub[:batch_job_definitions].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for BatchJobDefinitions
    class BatchJobDefinitions
      def self.default(visited=[])
        return nil if visited.include?('BatchJobDefinitions')
        visited = visited + ['BatchJobDefinitions']
        [
          BatchJobDefinition.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BatchJobDefinition.stub(element) unless element.nil?
        end
        data
      end
    end

    # Union Stubber for BatchJobDefinition
    class BatchJobDefinition
      def self.default(visited=[])
        return nil if visited.include?('BatchJobDefinition')
        visited = visited + ['BatchJobDefinition']
        {
          file_batch_job_definition: FileBatchJobDefinition.default(visited),
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::BatchJobDefinition::FileBatchJobDefinition
          data['fileBatchJobDefinition'] = (FileBatchJobDefinition.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::BatchJobDefinition::ScriptBatchJobDefinition
          data['scriptBatchJobDefinition'] = (ScriptBatchJobDefinition.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::BatchJobDefinition"
        end

        data
      end
    end

    # Structure Stubber for ScriptBatchJobDefinition
    class ScriptBatchJobDefinition
      def self.default(visited=[])
        return nil if visited.include?('ScriptBatchJobDefinition')
        visited = visited + ['ScriptBatchJobDefinition']
        {
          script_name: 'script_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::ScriptBatchJobDefinition.new
        data = {}
        data['scriptName'] = stub[:script_name] unless stub[:script_name].nil?
        data
      end
    end

    # Structure Stubber for FileBatchJobDefinition
    class FileBatchJobDefinition
      def self.default(visited=[])
        return nil if visited.include?('FileBatchJobDefinition')
        visited = visited + ['FileBatchJobDefinition']
        {
          file_name: 'file_name',
          folder_path: 'folder_path',
        }
      end

      def self.stub(stub)
        stub ||= Types::FileBatchJobDefinition.new
        data = {}
        data['fileName'] = stub[:file_name] unless stub[:file_name].nil?
        data['folderPath'] = stub[:folder_path] unless stub[:folder_path].nil?
        data
      end
    end

    # Operation Stubber for ListBatchJobExecutions
    class ListBatchJobExecutions
      def self.default(visited=[])
        {
          batch_job_executions: BatchJobExecutionSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['batchJobExecutions'] = BatchJobExecutionSummaryList.stub(stub[:batch_job_executions]) unless stub[:batch_job_executions].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for BatchJobExecutionSummaryList
    class BatchJobExecutionSummaryList
      def self.default(visited=[])
        return nil if visited.include?('BatchJobExecutionSummaryList')
        visited = visited + ['BatchJobExecutionSummaryList']
        [
          BatchJobExecutionSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BatchJobExecutionSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BatchJobExecutionSummary
    class BatchJobExecutionSummary
      def self.default(visited=[])
        return nil if visited.include?('BatchJobExecutionSummary')
        visited = visited + ['BatchJobExecutionSummary']
        {
          execution_id: 'execution_id',
          application_id: 'application_id',
          job_id: 'job_id',
          job_name: 'job_name',
          job_type: 'job_type',
          status: 'status',
          start_time: Time.now,
          end_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchJobExecutionSummary.new
        data = {}
        data['executionId'] = stub[:execution_id] unless stub[:execution_id].nil?
        data['applicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['jobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['jobName'] = stub[:job_name] unless stub[:job_name].nil?
        data['jobType'] = stub[:job_type] unless stub[:job_type].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['startTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['endTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data
      end
    end

    # Operation Stubber for ListDataSetImportHistory
    class ListDataSetImportHistory
      def self.default(visited=[])
        {
          data_set_import_tasks: DataSetImportTaskList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['dataSetImportTasks'] = DataSetImportTaskList.stub(stub[:data_set_import_tasks]) unless stub[:data_set_import_tasks].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for DataSetImportTaskList
    class DataSetImportTaskList
      def self.default(visited=[])
        return nil if visited.include?('DataSetImportTaskList')
        visited = visited + ['DataSetImportTaskList']
        [
          DataSetImportTask.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DataSetImportTask.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DataSetImportTask
    class DataSetImportTask
      def self.default(visited=[])
        return nil if visited.include?('DataSetImportTask')
        visited = visited + ['DataSetImportTask']
        {
          task_id: 'task_id',
          status: 'status',
          summary: DataSetImportSummary.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DataSetImportTask.new
        data = {}
        data['taskId'] = stub[:task_id] unless stub[:task_id].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['summary'] = DataSetImportSummary.stub(stub[:summary]) unless stub[:summary].nil?
        data
      end
    end

    # Operation Stubber for ListDataSets
    class ListDataSets
      def self.default(visited=[])
        {
          data_sets: DataSetsSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['dataSets'] = DataSetsSummaryList.stub(stub[:data_sets]) unless stub[:data_sets].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for DataSetsSummaryList
    class DataSetsSummaryList
      def self.default(visited=[])
        return nil if visited.include?('DataSetsSummaryList')
        visited = visited + ['DataSetsSummaryList']
        [
          DataSetSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DataSetSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DataSetSummary
    class DataSetSummary
      def self.default(visited=[])
        return nil if visited.include?('DataSetSummary')
        visited = visited + ['DataSetSummary']
        {
          data_set_name: 'data_set_name',
          data_set_org: 'data_set_org',
          format: 'format',
          creation_time: Time.now,
          last_updated_time: Time.now,
          last_referenced_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::DataSetSummary.new
        data = {}
        data['dataSetName'] = stub[:data_set_name] unless stub[:data_set_name].nil?
        data['dataSetOrg'] = stub[:data_set_org] unless stub[:data_set_org].nil?
        data['format'] = stub[:format] unless stub[:format].nil?
        data['creationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['lastUpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_time]).to_i unless stub[:last_updated_time].nil?
        data['lastReferencedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_referenced_time]).to_i unless stub[:last_referenced_time].nil?
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
        data['deployments'] = DeploymentList.stub(stub[:deployments]) unless stub[:deployments].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for DeploymentList
    class DeploymentList
      def self.default(visited=[])
        return nil if visited.include?('DeploymentList')
        visited = visited + ['DeploymentList']
        [
          DeploymentSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DeploymentSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DeploymentSummary
    class DeploymentSummary
      def self.default(visited=[])
        return nil if visited.include?('DeploymentSummary')
        visited = visited + ['DeploymentSummary']
        {
          deployment_id: 'deployment_id',
          application_id: 'application_id',
          environment_id: 'environment_id',
          application_version: 1,
          status: 'status',
          creation_time: Time.now,
          status_reason: 'status_reason',
        }
      end

      def self.stub(stub)
        stub ||= Types::DeploymentSummary.new
        data = {}
        data['deploymentId'] = stub[:deployment_id] unless stub[:deployment_id].nil?
        data['applicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['environmentId'] = stub[:environment_id] unless stub[:environment_id].nil?
        data['applicationVersion'] = stub[:application_version] unless stub[:application_version].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['creationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['statusReason'] = stub[:status_reason] unless stub[:status_reason].nil?
        data
      end
    end

    # Operation Stubber for ListEngineVersions
    class ListEngineVersions
      def self.default(visited=[])
        {
          engine_versions: EngineVersionsSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['engineVersions'] = EngineVersionsSummaryList.stub(stub[:engine_versions]) unless stub[:engine_versions].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for EngineVersionsSummaryList
    class EngineVersionsSummaryList
      def self.default(visited=[])
        return nil if visited.include?('EngineVersionsSummaryList')
        visited = visited + ['EngineVersionsSummaryList']
        [
          EngineVersionsSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << EngineVersionsSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EngineVersionsSummary
    class EngineVersionsSummary
      def self.default(visited=[])
        return nil if visited.include?('EngineVersionsSummary')
        visited = visited + ['EngineVersionsSummary']
        {
          engine_type: 'engine_type',
          engine_version: 'engine_version',
        }
      end

      def self.stub(stub)
        stub ||= Types::EngineVersionsSummary.new
        data = {}
        data['engineType'] = stub[:engine_type] unless stub[:engine_type].nil?
        data['engineVersion'] = stub[:engine_version] unless stub[:engine_version].nil?
        data
      end
    end

    # Operation Stubber for ListEnvironments
    class ListEnvironments
      def self.default(visited=[])
        {
          environments: EnvironmentSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['environments'] = EnvironmentSummaryList.stub(stub[:environments]) unless stub[:environments].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for EnvironmentSummaryList
    class EnvironmentSummaryList
      def self.default(visited=[])
        return nil if visited.include?('EnvironmentSummaryList')
        visited = visited + ['EnvironmentSummaryList']
        [
          EnvironmentSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << EnvironmentSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EnvironmentSummary
    class EnvironmentSummary
      def self.default(visited=[])
        return nil if visited.include?('EnvironmentSummary')
        visited = visited + ['EnvironmentSummary']
        {
          name: 'name',
          environment_arn: 'environment_arn',
          environment_id: 'environment_id',
          instance_type: 'instance_type',
          status: 'status',
          engine_type: 'engine_type',
          engine_version: 'engine_version',
          creation_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::EnvironmentSummary.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['environmentArn'] = stub[:environment_arn] unless stub[:environment_arn].nil?
        data['environmentId'] = stub[:environment_id] unless stub[:environment_id].nil?
        data['instanceType'] = stub[:instance_type] unless stub[:instance_type].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['engineType'] = stub[:engine_type] unless stub[:engine_type].nil?
        data['engineVersion'] = stub[:engine_version] unless stub[:engine_version].nil?
        data['creationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
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
        data['tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StartApplication
    class StartApplication
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartBatchJob
    class StartBatchJob
      def self.default(visited=[])
        {
          execution_id: 'execution_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['executionId'] = stub[:execution_id] unless stub[:execution_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StopApplication
    class StopApplication
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
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

    # Operation Stubber for UpdateApplication
    class UpdateApplication
      def self.default(visited=[])
        {
          application_version: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['applicationVersion'] = stub[:application_version] unless stub[:application_version].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateEnvironment
    class UpdateEnvironment
      def self.default(visited=[])
        {
          environment_id: 'environment_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['environmentId'] = stub[:environment_id] unless stub[:environment_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
