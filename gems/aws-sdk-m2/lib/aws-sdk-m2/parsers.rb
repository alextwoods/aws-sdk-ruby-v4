# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::M2
  module Parsers

    # Operation Parser for CancelBatchJobExecution
    class CancelBatchJobExecution
      def self.parse(http_resp)
        data = Types::CancelBatchJobExecutionOutput.new
        map = Hearth::JSON.load(http_resp.body)
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

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        data.retry_after_seconds = http_resp.headers['Retry-After'].to_i unless http_resp.headers['Retry-After'].nil?
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.service_code = map['serviceCode']
        data.quota_code = map['quotaCode']
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
        data.field_list = (Parsers::ValidationExceptionFieldList.parse(map['fieldList']) unless map['fieldList'].nil?)
        data
      end
    end

    class ValidationExceptionFieldList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ValidationExceptionField.parse(value) unless value.nil?
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

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for CreateApplication
    class CreateApplication
      def self.parse(http_resp)
        data = Types::CreateApplicationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.application_arn = map['applicationArn']
        data.application_id = map['applicationId']
        data.application_version = map['applicationVersion']
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
        data.service_code = map['serviceCode']
        data.quota_code = map['quotaCode']
        data
      end
    end

    # Operation Parser for CreateDataSetImportTask
    class CreateDataSetImportTask
      def self.parse(http_resp)
        data = Types::CreateDataSetImportTaskOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.task_id = map['taskId']
        data
      end
    end

    # Operation Parser for CreateDeployment
    class CreateDeployment
      def self.parse(http_resp)
        data = Types::CreateDeploymentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.deployment_id = map['deploymentId']
        data
      end
    end

    # Operation Parser for CreateEnvironment
    class CreateEnvironment
      def self.parse(http_resp)
        data = Types::CreateEnvironmentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.environment_id = map['environmentId']
        data
      end
    end

    # Operation Parser for DeleteApplication
    class DeleteApplication
      def self.parse(http_resp)
        data = Types::DeleteApplicationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteApplicationFromEnvironment
    class DeleteApplicationFromEnvironment
      def self.parse(http_resp)
        data = Types::DeleteApplicationFromEnvironmentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteEnvironment
    class DeleteEnvironment
      def self.parse(http_resp)
        data = Types::DeleteEnvironmentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for GetApplication
    class GetApplication
      def self.parse(http_resp)
        data = Types::GetApplicationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.name = map['name']
        data.description = map['description']
        data.application_id = map['applicationId']
        data.application_arn = map['applicationArn']
        data.status = map['status']
        data.latest_version = (Parsers::ApplicationVersionSummary.parse(map['latestVersion']) unless map['latestVersion'].nil?)
        data.deployed_version = (Parsers::DeployedVersionSummary.parse(map['deployedVersion']) unless map['deployedVersion'].nil?)
        data.engine_type = map['engineType']
        data.log_groups = (Parsers::LogGroupSummaries.parse(map['logGroups']) unless map['logGroups'].nil?)
        data.creation_time = Time.at(map['creationTime'].to_i) if map['creationTime']
        data.last_start_time = Time.at(map['lastStartTime'].to_i) if map['lastStartTime']
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        data.environment_id = map['environmentId']
        data.target_group_arns = (Parsers::ArnList.parse(map['targetGroupArns']) unless map['targetGroupArns'].nil?)
        data.listener_arns = (Parsers::ArnList.parse(map['listenerArns']) unless map['listenerArns'].nil?)
        data.listener_ports = (Parsers::PortList.parse(map['listenerPorts']) unless map['listenerPorts'].nil?)
        data.load_balancer_dns_name = map['loadBalancerDnsName']
        data.status_reason = map['statusReason']
        data
      end
    end

    class PortList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class ArnList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
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

    class LogGroupSummaries
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::LogGroupSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class LogGroupSummary
      def self.parse(map)
        data = Types::LogGroupSummary.new
        data.log_type = map['logType']
        data.log_group_name = map['logGroupName']
        return data
      end
    end

    class DeployedVersionSummary
      def self.parse(map)
        data = Types::DeployedVersionSummary.new
        data.application_version = map['applicationVersion']
        data.status = map['status']
        data.status_reason = map['statusReason']
        return data
      end
    end

    class ApplicationVersionSummary
      def self.parse(map)
        data = Types::ApplicationVersionSummary.new
        data.application_version = map['applicationVersion']
        data.status = map['status']
        data.status_reason = map['statusReason']
        data.creation_time = Time.at(map['creationTime'].to_i) if map['creationTime']
        return data
      end
    end

    # Operation Parser for GetApplicationVersion
    class GetApplicationVersion
      def self.parse(http_resp)
        data = Types::GetApplicationVersionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.name = map['name']
        data.application_version = map['applicationVersion']
        data.description = map['description']
        data.definition_content = map['definitionContent']
        data.status = map['status']
        data.creation_time = Time.at(map['creationTime'].to_i) if map['creationTime']
        data.status_reason = map['statusReason']
        data
      end
    end

    # Operation Parser for GetBatchJobExecution
    class GetBatchJobExecution
      def self.parse(http_resp)
        data = Types::GetBatchJobExecutionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.execution_id = map['executionId']
        data.application_id = map['applicationId']
        data.job_id = map['jobId']
        data.job_name = map['jobName']
        data.job_user = map['jobUser']
        data.job_type = map['jobType']
        data.status = map['status']
        data.start_time = Time.at(map['startTime'].to_i) if map['startTime']
        data.end_time = Time.at(map['endTime'].to_i) if map['endTime']
        data.status_reason = map['statusReason']
        data
      end
    end

    # Operation Parser for GetDataSetDetails
    class GetDataSetDetails
      def self.parse(http_resp)
        data = Types::GetDataSetDetailsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.data_set_name = map['dataSetName']
        data.data_set_org = (Parsers::DatasetDetailOrgAttributes.parse(map['dataSetOrg']) unless map['dataSetOrg'].nil?)
        data.record_length = map['recordLength']
        data.location = map['location']
        data.blocksize = map['blocksize']
        data.creation_time = Time.at(map['creationTime'].to_i) if map['creationTime']
        data.last_updated_time = Time.at(map['lastUpdatedTime'].to_i) if map['lastUpdatedTime']
        data.last_referenced_time = Time.at(map['lastReferencedTime'].to_i) if map['lastReferencedTime']
        data
      end
    end

    class DatasetDetailOrgAttributes
      def self.parse(map)
        key, value = map.flatten
        case key
        when 'vsam'
          value = (Parsers::VsamDetailAttributes.parse(value) unless value.nil?)
          Types::DatasetDetailOrgAttributes::Vsam.new(value) if value
        when 'gdg'
          value = (Parsers::GdgDetailAttributes.parse(value) unless value.nil?)
          Types::DatasetDetailOrgAttributes::Gdg.new(value) if value
        else
          Types::DatasetDetailOrgAttributes::Unknown.new({name: key, value: value})
        end
      end
    end

    class GdgDetailAttributes
      def self.parse(map)
        data = Types::GdgDetailAttributes.new
        data.limit = map['limit']
        data.roll_disposition = map['rollDisposition']
        return data
      end
    end

    class VsamDetailAttributes
      def self.parse(map)
        data = Types::VsamDetailAttributes.new
        data.encoding = map['encoding']
        data.record_format = map['recordFormat']
        data.compressed = map['compressed']
        data.cache_at_startup = map['cacheAtStartup']
        data.primary_key = (Parsers::PrimaryKey.parse(map['primaryKey']) unless map['primaryKey'].nil?)
        data.alternate_keys = (Parsers::AlternateKeyList.parse(map['alternateKeys']) unless map['alternateKeys'].nil?)
        return data
      end
    end

    class AlternateKeyList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AlternateKey.parse(value) unless value.nil?
        end
        data
      end
    end

    class AlternateKey
      def self.parse(map)
        data = Types::AlternateKey.new
        data.name = map['name']
        data.offset = map['offset']
        data.length = map['length']
        data.allow_duplicates = map['allowDuplicates']
        return data
      end
    end

    class PrimaryKey
      def self.parse(map)
        data = Types::PrimaryKey.new
        data.name = map['name']
        data.offset = map['offset']
        data.length = map['length']
        return data
      end
    end

    # Operation Parser for GetDataSetImportTask
    class GetDataSetImportTask
      def self.parse(http_resp)
        data = Types::GetDataSetImportTaskOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.task_id = map['taskId']
        data.status = map['status']
        data.summary = (Parsers::DataSetImportSummary.parse(map['summary']) unless map['summary'].nil?)
        data
      end
    end

    class DataSetImportSummary
      def self.parse(map)
        data = Types::DataSetImportSummary.new
        data.total = map['total']
        data.succeeded = map['succeeded']
        data.failed = map['failed']
        data.pending = map['pending']
        data.in_progress = map['inProgress']
        return data
      end
    end

    # Operation Parser for GetDeployment
    class GetDeployment
      def self.parse(http_resp)
        data = Types::GetDeploymentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.deployment_id = map['deploymentId']
        data.application_id = map['applicationId']
        data.environment_id = map['environmentId']
        data.application_version = map['applicationVersion']
        data.status = map['status']
        data.creation_time = Time.at(map['creationTime'].to_i) if map['creationTime']
        data.status_reason = map['statusReason']
        data
      end
    end

    # Operation Parser for GetEnvironment
    class GetEnvironment
      def self.parse(http_resp)
        data = Types::GetEnvironmentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.name = map['name']
        data.description = map['description']
        data.environment_arn = map['environmentArn']
        data.environment_id = map['environmentId']
        data.instance_type = map['instanceType']
        data.status = map['status']
        data.engine_type = map['engineType']
        data.engine_version = map['engineVersion']
        data.vpc_id = map['vpcId']
        data.subnet_ids = (Parsers::String50List.parse(map['subnetIds']) unless map['subnetIds'].nil?)
        data.security_group_ids = (Parsers::String50List.parse(map['securityGroupIds']) unless map['securityGroupIds'].nil?)
        data.creation_time = Time.at(map['creationTime'].to_i) if map['creationTime']
        data.storage_configurations = (Parsers::StorageConfigurationList.parse(map['storageConfigurations']) unless map['storageConfigurations'].nil?)
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        data.high_availability_config = (Parsers::HighAvailabilityConfig.parse(map['highAvailabilityConfig']) unless map['highAvailabilityConfig'].nil?)
        data.publicly_accessible = map['publiclyAccessible']
        data.actual_capacity = map['actualCapacity']
        data.load_balancer_arn = map['loadBalancerArn']
        data.status_reason = map['statusReason']
        data.preferred_maintenance_window = map['preferredMaintenanceWindow']
        data.pending_maintenance = (Parsers::PendingMaintenance.parse(map['pendingMaintenance']) unless map['pendingMaintenance'].nil?)
        data
      end
    end

    class PendingMaintenance
      def self.parse(map)
        data = Types::PendingMaintenance.new
        data.schedule = (Parsers::MaintenanceSchedule.parse(map['schedule']) unless map['schedule'].nil?)
        data.engine_version = map['engineVersion']
        return data
      end
    end

    class MaintenanceSchedule
      def self.parse(map)
        data = Types::MaintenanceSchedule.new
        data.start_time = Time.at(map['startTime'].to_i) if map['startTime']
        data.end_time = Time.at(map['endTime'].to_i) if map['endTime']
        return data
      end
    end

    class HighAvailabilityConfig
      def self.parse(map)
        data = Types::HighAvailabilityConfig.new
        data.desired_capacity = map['desiredCapacity']
        return data
      end
    end

    class StorageConfigurationList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::StorageConfiguration.parse(value) unless value.nil?
        end
        data
      end
    end

    class StorageConfiguration
      def self.parse(map)
        key, value = map.flatten
        case key
        when 'efs'
          value = (Parsers::EfsStorageConfiguration.parse(value) unless value.nil?)
          Types::StorageConfiguration::Efs.new(value) if value
        when 'fsx'
          value = (Parsers::FsxStorageConfiguration.parse(value) unless value.nil?)
          Types::StorageConfiguration::Fsx.new(value) if value
        else
          Types::StorageConfiguration::Unknown.new({name: key, value: value})
        end
      end
    end

    class FsxStorageConfiguration
      def self.parse(map)
        data = Types::FsxStorageConfiguration.new
        data.file_system_id = map['file-system-id']
        data.mount_point = map['mount-point']
        return data
      end
    end

    class EfsStorageConfiguration
      def self.parse(map)
        data = Types::EfsStorageConfiguration.new
        data.file_system_id = map['file-system-id']
        data.mount_point = map['mount-point']
        return data
      end
    end

    class String50List
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListApplicationVersions
    class ListApplicationVersions
      def self.parse(http_resp)
        data = Types::ListApplicationVersionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.application_versions = (Parsers::ApplicationVersionSummaryList.parse(map['applicationVersions']) unless map['applicationVersions'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ApplicationVersionSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ApplicationVersionSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListApplications
    class ListApplications
      def self.parse(http_resp)
        data = Types::ListApplicationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.applications = (Parsers::ApplicationSummaryList.parse(map['applications']) unless map['applications'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ApplicationSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ApplicationSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class ApplicationSummary
      def self.parse(map)
        data = Types::ApplicationSummary.new
        data.name = map['name']
        data.description = map['description']
        data.application_id = map['applicationId']
        data.application_arn = map['applicationArn']
        data.application_version = map['applicationVersion']
        data.status = map['status']
        data.engine_type = map['engineType']
        data.creation_time = Time.at(map['creationTime'].to_i) if map['creationTime']
        data.environment_id = map['environmentId']
        data.last_start_time = Time.at(map['lastStartTime'].to_i) if map['lastStartTime']
        data.version_status = map['versionStatus']
        data.deployment_status = map['deploymentStatus']
        return data
      end
    end

    # Operation Parser for ListBatchJobDefinitions
    class ListBatchJobDefinitions
      def self.parse(http_resp)
        data = Types::ListBatchJobDefinitionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.batch_job_definitions = (Parsers::BatchJobDefinitions.parse(map['batchJobDefinitions']) unless map['batchJobDefinitions'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class BatchJobDefinitions
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::BatchJobDefinition.parse(value) unless value.nil?
        end
        data
      end
    end

    class BatchJobDefinition
      def self.parse(map)
        key, value = map.flatten
        case key
        when 'fileBatchJobDefinition'
          value = (Parsers::FileBatchJobDefinition.parse(value) unless value.nil?)
          Types::BatchJobDefinition::FileBatchJobDefinition.new(value) if value
        when 'scriptBatchJobDefinition'
          value = (Parsers::ScriptBatchJobDefinition.parse(value) unless value.nil?)
          Types::BatchJobDefinition::ScriptBatchJobDefinition.new(value) if value
        else
          Types::BatchJobDefinition::Unknown.new({name: key, value: value})
        end
      end
    end

    class ScriptBatchJobDefinition
      def self.parse(map)
        data = Types::ScriptBatchJobDefinition.new
        data.script_name = map['scriptName']
        return data
      end
    end

    class FileBatchJobDefinition
      def self.parse(map)
        data = Types::FileBatchJobDefinition.new
        data.file_name = map['fileName']
        data.folder_path = map['folderPath']
        return data
      end
    end

    # Operation Parser for ListBatchJobExecutions
    class ListBatchJobExecutions
      def self.parse(http_resp)
        data = Types::ListBatchJobExecutionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.batch_job_executions = (Parsers::BatchJobExecutionSummaryList.parse(map['batchJobExecutions']) unless map['batchJobExecutions'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class BatchJobExecutionSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::BatchJobExecutionSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class BatchJobExecutionSummary
      def self.parse(map)
        data = Types::BatchJobExecutionSummary.new
        data.execution_id = map['executionId']
        data.application_id = map['applicationId']
        data.job_id = map['jobId']
        data.job_name = map['jobName']
        data.job_type = map['jobType']
        data.status = map['status']
        data.start_time = Time.at(map['startTime'].to_i) if map['startTime']
        data.end_time = Time.at(map['endTime'].to_i) if map['endTime']
        return data
      end
    end

    # Operation Parser for ListDataSetImportHistory
    class ListDataSetImportHistory
      def self.parse(http_resp)
        data = Types::ListDataSetImportHistoryOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.data_set_import_tasks = (Parsers::DataSetImportTaskList.parse(map['dataSetImportTasks']) unless map['dataSetImportTasks'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class DataSetImportTaskList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::DataSetImportTask.parse(value) unless value.nil?
        end
        data
      end
    end

    class DataSetImportTask
      def self.parse(map)
        data = Types::DataSetImportTask.new
        data.task_id = map['taskId']
        data.status = map['status']
        data.summary = (Parsers::DataSetImportSummary.parse(map['summary']) unless map['summary'].nil?)
        return data
      end
    end

    # Operation Parser for ListDataSets
    class ListDataSets
      def self.parse(http_resp)
        data = Types::ListDataSetsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.data_sets = (Parsers::DataSetsSummaryList.parse(map['dataSets']) unless map['dataSets'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class DataSetsSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::DataSetSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class DataSetSummary
      def self.parse(map)
        data = Types::DataSetSummary.new
        data.data_set_name = map['dataSetName']
        data.data_set_org = map['dataSetOrg']
        data.format = map['format']
        data.creation_time = Time.at(map['creationTime'].to_i) if map['creationTime']
        data.last_updated_time = Time.at(map['lastUpdatedTime'].to_i) if map['lastUpdatedTime']
        data.last_referenced_time = Time.at(map['lastReferencedTime'].to_i) if map['lastReferencedTime']
        return data
      end
    end

    # Operation Parser for ListDeployments
    class ListDeployments
      def self.parse(http_resp)
        data = Types::ListDeploymentsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.deployments = (Parsers::DeploymentList.parse(map['deployments']) unless map['deployments'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class DeploymentList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::DeploymentSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class DeploymentSummary
      def self.parse(map)
        data = Types::DeploymentSummary.new
        data.deployment_id = map['deploymentId']
        data.application_id = map['applicationId']
        data.environment_id = map['environmentId']
        data.application_version = map['applicationVersion']
        data.status = map['status']
        data.creation_time = Time.at(map['creationTime'].to_i) if map['creationTime']
        data.status_reason = map['statusReason']
        return data
      end
    end

    # Operation Parser for ListEngineVersions
    class ListEngineVersions
      def self.parse(http_resp)
        data = Types::ListEngineVersionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.engine_versions = (Parsers::EngineVersionsSummaryList.parse(map['engineVersions']) unless map['engineVersions'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class EngineVersionsSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::EngineVersionsSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class EngineVersionsSummary
      def self.parse(map)
        data = Types::EngineVersionsSummary.new
        data.engine_type = map['engineType']
        data.engine_version = map['engineVersion']
        return data
      end
    end

    # Operation Parser for ListEnvironments
    class ListEnvironments
      def self.parse(http_resp)
        data = Types::ListEnvironmentsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.environments = (Parsers::EnvironmentSummaryList.parse(map['environments']) unless map['environments'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class EnvironmentSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::EnvironmentSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class EnvironmentSummary
      def self.parse(map)
        data = Types::EnvironmentSummary.new
        data.name = map['name']
        data.environment_arn = map['environmentArn']
        data.environment_id = map['environmentId']
        data.instance_type = map['instanceType']
        data.status = map['status']
        data.engine_type = map['engineType']
        data.engine_version = map['engineVersion']
        data.creation_time = Time.at(map['creationTime'].to_i) if map['creationTime']
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for StartApplication
    class StartApplication
      def self.parse(http_resp)
        data = Types::StartApplicationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for StartBatchJob
    class StartBatchJob
      def self.parse(http_resp)
        data = Types::StartBatchJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.execution_id = map['executionId']
        data
      end
    end

    # Operation Parser for StopApplication
    class StopApplication
      def self.parse(http_resp)
        data = Types::StopApplicationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
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

    # Operation Parser for UpdateApplication
    class UpdateApplication
      def self.parse(http_resp)
        data = Types::UpdateApplicationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.application_version = map['applicationVersion']
        data
      end
    end

    # Operation Parser for UpdateEnvironment
    class UpdateEnvironment
      def self.parse(http_resp)
        data = Types::UpdateEnvironmentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.environment_id = map['environmentId']
        data
      end
    end
  end
end
