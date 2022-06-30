# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::IoTAnalytics
  module Stubs

    # Operation Stubber for BatchPutMessage
    class BatchPutMessage
      def self.default(visited=[])
        {
          batch_put_message_error_entries: Stubs::BatchPutMessageErrorEntries.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['batchPutMessageErrorEntries'] = Stubs::BatchPutMessageErrorEntries.stub(stub[:batch_put_message_error_entries]) unless stub[:batch_put_message_error_entries].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for BatchPutMessageErrorEntries
    class BatchPutMessageErrorEntries
      def self.default(visited=[])
        return nil if visited.include?('BatchPutMessageErrorEntries')
        visited = visited + ['BatchPutMessageErrorEntries']
        [
          Stubs::BatchPutMessageErrorEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::BatchPutMessageErrorEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BatchPutMessageErrorEntry
    class BatchPutMessageErrorEntry
      def self.default(visited=[])
        return nil if visited.include?('BatchPutMessageErrorEntry')
        visited = visited + ['BatchPutMessageErrorEntry']
        {
          message_id: 'message_id',
          error_code: 'error_code',
          error_message: 'error_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchPutMessageErrorEntry.new
        data = {}
        data['messageId'] = stub[:message_id] unless stub[:message_id].nil?
        data['errorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['errorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data
      end
    end

    # Operation Stubber for CancelPipelineReprocessing
    class CancelPipelineReprocessing
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateChannel
    class CreateChannel
      def self.default(visited=[])
        {
          channel_name: 'channel_name',
          channel_arn: 'channel_arn',
          retention_period: Stubs::RetentionPeriod.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['channelName'] = stub[:channel_name] unless stub[:channel_name].nil?
        data['channelArn'] = stub[:channel_arn] unless stub[:channel_arn].nil?
        data['retentionPeriod'] = Stubs::RetentionPeriod.stub(stub[:retention_period]) unless stub[:retention_period].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for RetentionPeriod
    class RetentionPeriod
      def self.default(visited=[])
        return nil if visited.include?('RetentionPeriod')
        visited = visited + ['RetentionPeriod']
        {
          unlimited: false,
          number_of_days: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::RetentionPeriod.new
        data = {}
        data['unlimited'] = stub[:unlimited] unless stub[:unlimited].nil?
        data['numberOfDays'] = stub[:number_of_days] unless stub[:number_of_days].nil?
        data
      end
    end

    # Operation Stubber for CreateDataset
    class CreateDataset
      def self.default(visited=[])
        {
          dataset_name: 'dataset_name',
          dataset_arn: 'dataset_arn',
          retention_period: Stubs::RetentionPeriod.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['datasetName'] = stub[:dataset_name] unless stub[:dataset_name].nil?
        data['datasetArn'] = stub[:dataset_arn] unless stub[:dataset_arn].nil?
        data['retentionPeriod'] = Stubs::RetentionPeriod.stub(stub[:retention_period]) unless stub[:retention_period].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateDatasetContent
    class CreateDatasetContent
      def self.default(visited=[])
        {
          version_id: 'version_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['versionId'] = stub[:version_id] unless stub[:version_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateDatastore
    class CreateDatastore
      def self.default(visited=[])
        {
          datastore_name: 'datastore_name',
          datastore_arn: 'datastore_arn',
          retention_period: Stubs::RetentionPeriod.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['datastoreName'] = stub[:datastore_name] unless stub[:datastore_name].nil?
        data['datastoreArn'] = stub[:datastore_arn] unless stub[:datastore_arn].nil?
        data['retentionPeriod'] = Stubs::RetentionPeriod.stub(stub[:retention_period]) unless stub[:retention_period].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreatePipeline
    class CreatePipeline
      def self.default(visited=[])
        {
          pipeline_name: 'pipeline_name',
          pipeline_arn: 'pipeline_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['pipelineName'] = stub[:pipeline_name] unless stub[:pipeline_name].nil?
        data['pipelineArn'] = stub[:pipeline_arn] unless stub[:pipeline_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteChannel
    class DeleteChannel
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteDataset
    class DeleteDataset
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteDatasetContent
    class DeleteDatasetContent
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteDatastore
    class DeleteDatastore
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeletePipeline
    class DeletePipeline
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DescribeChannel
    class DescribeChannel
      def self.default(visited=[])
        {
          channel: Stubs::Channel.default(visited),
          statistics: Stubs::ChannelStatistics.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['channel'] = Stubs::Channel.stub(stub[:channel]) unless stub[:channel].nil?
        data['statistics'] = Stubs::ChannelStatistics.stub(stub[:statistics]) unless stub[:statistics].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ChannelStatistics
    class ChannelStatistics
      def self.default(visited=[])
        return nil if visited.include?('ChannelStatistics')
        visited = visited + ['ChannelStatistics']
        {
          size: Stubs::EstimatedResourceSize.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ChannelStatistics.new
        data = {}
        data['size'] = Stubs::EstimatedResourceSize.stub(stub[:size]) unless stub[:size].nil?
        data
      end
    end

    # Structure Stubber for EstimatedResourceSize
    class EstimatedResourceSize
      def self.default(visited=[])
        return nil if visited.include?('EstimatedResourceSize')
        visited = visited + ['EstimatedResourceSize']
        {
          estimated_size_in_bytes: 1.0,
          estimated_on: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::EstimatedResourceSize.new
        data = {}
        data['estimatedSizeInBytes'] = Hearth::NumberHelper.serialize(stub[:estimated_size_in_bytes])
        data['estimatedOn'] = Hearth::TimeHelper.to_epoch_seconds(stub[:estimated_on]).to_i unless stub[:estimated_on].nil?
        data
      end
    end

    # Structure Stubber for Channel
    class Channel
      def self.default(visited=[])
        return nil if visited.include?('Channel')
        visited = visited + ['Channel']
        {
          name: 'name',
          storage: Stubs::ChannelStorage.default(visited),
          arn: 'arn',
          status: 'status',
          retention_period: Stubs::RetentionPeriod.default(visited),
          creation_time: Time.now,
          last_update_time: Time.now,
          last_message_arrival_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Channel.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['storage'] = Stubs::ChannelStorage.stub(stub[:storage]) unless stub[:storage].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['retentionPeriod'] = Stubs::RetentionPeriod.stub(stub[:retention_period]) unless stub[:retention_period].nil?
        data['creationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['lastUpdateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_update_time]).to_i unless stub[:last_update_time].nil?
        data['lastMessageArrivalTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_message_arrival_time]).to_i unless stub[:last_message_arrival_time].nil?
        data
      end
    end

    # Structure Stubber for ChannelStorage
    class ChannelStorage
      def self.default(visited=[])
        return nil if visited.include?('ChannelStorage')
        visited = visited + ['ChannelStorage']
        {
          service_managed_s3: Stubs::ServiceManagedChannelS3Storage.default(visited),
          customer_managed_s3: Stubs::CustomerManagedChannelS3Storage.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ChannelStorage.new
        data = {}
        data['serviceManagedS3'] = Stubs::ServiceManagedChannelS3Storage.stub(stub[:service_managed_s3]) unless stub[:service_managed_s3].nil?
        data['customerManagedS3'] = Stubs::CustomerManagedChannelS3Storage.stub(stub[:customer_managed_s3]) unless stub[:customer_managed_s3].nil?
        data
      end
    end

    # Structure Stubber for CustomerManagedChannelS3Storage
    class CustomerManagedChannelS3Storage
      def self.default(visited=[])
        return nil if visited.include?('CustomerManagedChannelS3Storage')
        visited = visited + ['CustomerManagedChannelS3Storage']
        {
          bucket: 'bucket',
          key_prefix: 'key_prefix',
          role_arn: 'role_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::CustomerManagedChannelS3Storage.new
        data = {}
        data['bucket'] = stub[:bucket] unless stub[:bucket].nil?
        data['keyPrefix'] = stub[:key_prefix] unless stub[:key_prefix].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data
      end
    end

    # Structure Stubber for ServiceManagedChannelS3Storage
    class ServiceManagedChannelS3Storage
      def self.default(visited=[])
        return nil if visited.include?('ServiceManagedChannelS3Storage')
        visited = visited + ['ServiceManagedChannelS3Storage']
        {
        }
      end

      def self.stub(stub)
        stub ||= Types::ServiceManagedChannelS3Storage.new
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeDataset
    class DescribeDataset
      def self.default(visited=[])
        {
          dataset: Stubs::Dataset.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['dataset'] = Stubs::Dataset.stub(stub[:dataset]) unless stub[:dataset].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Dataset
    class Dataset
      def self.default(visited=[])
        return nil if visited.include?('Dataset')
        visited = visited + ['Dataset']
        {
          name: 'name',
          arn: 'arn',
          actions: Stubs::DatasetActions.default(visited),
          triggers: Stubs::DatasetTriggers.default(visited),
          content_delivery_rules: Stubs::DatasetContentDeliveryRules.default(visited),
          status: 'status',
          creation_time: Time.now,
          last_update_time: Time.now,
          retention_period: Stubs::RetentionPeriod.default(visited),
          versioning_configuration: Stubs::VersioningConfiguration.default(visited),
          late_data_rules: Stubs::LateDataRules.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Dataset.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['actions'] = Stubs::DatasetActions.stub(stub[:actions]) unless stub[:actions].nil?
        data['triggers'] = Stubs::DatasetTriggers.stub(stub[:triggers]) unless stub[:triggers].nil?
        data['contentDeliveryRules'] = Stubs::DatasetContentDeliveryRules.stub(stub[:content_delivery_rules]) unless stub[:content_delivery_rules].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['creationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['lastUpdateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_update_time]).to_i unless stub[:last_update_time].nil?
        data['retentionPeriod'] = Stubs::RetentionPeriod.stub(stub[:retention_period]) unless stub[:retention_period].nil?
        data['versioningConfiguration'] = Stubs::VersioningConfiguration.stub(stub[:versioning_configuration]) unless stub[:versioning_configuration].nil?
        data['lateDataRules'] = Stubs::LateDataRules.stub(stub[:late_data_rules]) unless stub[:late_data_rules].nil?
        data
      end
    end

    # List Stubber for LateDataRules
    class LateDataRules
      def self.default(visited=[])
        return nil if visited.include?('LateDataRules')
        visited = visited + ['LateDataRules']
        [
          Stubs::LateDataRule.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::LateDataRule.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for LateDataRule
    class LateDataRule
      def self.default(visited=[])
        return nil if visited.include?('LateDataRule')
        visited = visited + ['LateDataRule']
        {
          rule_name: 'rule_name',
          rule_configuration: Stubs::LateDataRuleConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LateDataRule.new
        data = {}
        data['ruleName'] = stub[:rule_name] unless stub[:rule_name].nil?
        data['ruleConfiguration'] = Stubs::LateDataRuleConfiguration.stub(stub[:rule_configuration]) unless stub[:rule_configuration].nil?
        data
      end
    end

    # Structure Stubber for LateDataRuleConfiguration
    class LateDataRuleConfiguration
      def self.default(visited=[])
        return nil if visited.include?('LateDataRuleConfiguration')
        visited = visited + ['LateDataRuleConfiguration']
        {
          delta_time_session_window_configuration: Stubs::DeltaTimeSessionWindowConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LateDataRuleConfiguration.new
        data = {}
        data['deltaTimeSessionWindowConfiguration'] = Stubs::DeltaTimeSessionWindowConfiguration.stub(stub[:delta_time_session_window_configuration]) unless stub[:delta_time_session_window_configuration].nil?
        data
      end
    end

    # Structure Stubber for DeltaTimeSessionWindowConfiguration
    class DeltaTimeSessionWindowConfiguration
      def self.default(visited=[])
        return nil if visited.include?('DeltaTimeSessionWindowConfiguration')
        visited = visited + ['DeltaTimeSessionWindowConfiguration']
        {
          timeout_in_minutes: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::DeltaTimeSessionWindowConfiguration.new
        data = {}
        data['timeoutInMinutes'] = stub[:timeout_in_minutes] unless stub[:timeout_in_minutes].nil?
        data
      end
    end

    # Structure Stubber for VersioningConfiguration
    class VersioningConfiguration
      def self.default(visited=[])
        return nil if visited.include?('VersioningConfiguration')
        visited = visited + ['VersioningConfiguration']
        {
          unlimited: false,
          max_versions: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::VersioningConfiguration.new
        data = {}
        data['unlimited'] = stub[:unlimited] unless stub[:unlimited].nil?
        data['maxVersions'] = stub[:max_versions] unless stub[:max_versions].nil?
        data
      end
    end

    # List Stubber for DatasetContentDeliveryRules
    class DatasetContentDeliveryRules
      def self.default(visited=[])
        return nil if visited.include?('DatasetContentDeliveryRules')
        visited = visited + ['DatasetContentDeliveryRules']
        [
          Stubs::DatasetContentDeliveryRule.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DatasetContentDeliveryRule.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DatasetContentDeliveryRule
    class DatasetContentDeliveryRule
      def self.default(visited=[])
        return nil if visited.include?('DatasetContentDeliveryRule')
        visited = visited + ['DatasetContentDeliveryRule']
        {
          entry_name: 'entry_name',
          destination: Stubs::DatasetContentDeliveryDestination.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DatasetContentDeliveryRule.new
        data = {}
        data['entryName'] = stub[:entry_name] unless stub[:entry_name].nil?
        data['destination'] = Stubs::DatasetContentDeliveryDestination.stub(stub[:destination]) unless stub[:destination].nil?
        data
      end
    end

    # Structure Stubber for DatasetContentDeliveryDestination
    class DatasetContentDeliveryDestination
      def self.default(visited=[])
        return nil if visited.include?('DatasetContentDeliveryDestination')
        visited = visited + ['DatasetContentDeliveryDestination']
        {
          iot_events_destination_configuration: Stubs::IotEventsDestinationConfiguration.default(visited),
          s3_destination_configuration: Stubs::S3DestinationConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DatasetContentDeliveryDestination.new
        data = {}
        data['iotEventsDestinationConfiguration'] = Stubs::IotEventsDestinationConfiguration.stub(stub[:iot_events_destination_configuration]) unless stub[:iot_events_destination_configuration].nil?
        data['s3DestinationConfiguration'] = Stubs::S3DestinationConfiguration.stub(stub[:s3_destination_configuration]) unless stub[:s3_destination_configuration].nil?
        data
      end
    end

    # Structure Stubber for S3DestinationConfiguration
    class S3DestinationConfiguration
      def self.default(visited=[])
        return nil if visited.include?('S3DestinationConfiguration')
        visited = visited + ['S3DestinationConfiguration']
        {
          bucket: 'bucket',
          key: 'key',
          glue_configuration: Stubs::GlueConfiguration.default(visited),
          role_arn: 'role_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3DestinationConfiguration.new
        data = {}
        data['bucket'] = stub[:bucket] unless stub[:bucket].nil?
        data['key'] = stub[:key] unless stub[:key].nil?
        data['glueConfiguration'] = Stubs::GlueConfiguration.stub(stub[:glue_configuration]) unless stub[:glue_configuration].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data
      end
    end

    # Structure Stubber for GlueConfiguration
    class GlueConfiguration
      def self.default(visited=[])
        return nil if visited.include?('GlueConfiguration')
        visited = visited + ['GlueConfiguration']
        {
          table_name: 'table_name',
          database_name: 'database_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::GlueConfiguration.new
        data = {}
        data['tableName'] = stub[:table_name] unless stub[:table_name].nil?
        data['databaseName'] = stub[:database_name] unless stub[:database_name].nil?
        data
      end
    end

    # Structure Stubber for IotEventsDestinationConfiguration
    class IotEventsDestinationConfiguration
      def self.default(visited=[])
        return nil if visited.include?('IotEventsDestinationConfiguration')
        visited = visited + ['IotEventsDestinationConfiguration']
        {
          input_name: 'input_name',
          role_arn: 'role_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::IotEventsDestinationConfiguration.new
        data = {}
        data['inputName'] = stub[:input_name] unless stub[:input_name].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data
      end
    end

    # List Stubber for DatasetTriggers
    class DatasetTriggers
      def self.default(visited=[])
        return nil if visited.include?('DatasetTriggers')
        visited = visited + ['DatasetTriggers']
        [
          Stubs::DatasetTrigger.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DatasetTrigger.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DatasetTrigger
    class DatasetTrigger
      def self.default(visited=[])
        return nil if visited.include?('DatasetTrigger')
        visited = visited + ['DatasetTrigger']
        {
          schedule: Stubs::Schedule.default(visited),
          dataset: Stubs::TriggeringDataset.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DatasetTrigger.new
        data = {}
        data['schedule'] = Stubs::Schedule.stub(stub[:schedule]) unless stub[:schedule].nil?
        data['dataset'] = Stubs::TriggeringDataset.stub(stub[:dataset]) unless stub[:dataset].nil?
        data
      end
    end

    # Structure Stubber for TriggeringDataset
    class TriggeringDataset
      def self.default(visited=[])
        return nil if visited.include?('TriggeringDataset')
        visited = visited + ['TriggeringDataset']
        {
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::TriggeringDataset.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Structure Stubber for Schedule
    class Schedule
      def self.default(visited=[])
        return nil if visited.include?('Schedule')
        visited = visited + ['Schedule']
        {
          expression: 'expression',
        }
      end

      def self.stub(stub)
        stub ||= Types::Schedule.new
        data = {}
        data['expression'] = stub[:expression] unless stub[:expression].nil?
        data
      end
    end

    # List Stubber for DatasetActions
    class DatasetActions
      def self.default(visited=[])
        return nil if visited.include?('DatasetActions')
        visited = visited + ['DatasetActions']
        [
          Stubs::DatasetAction.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DatasetAction.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DatasetAction
    class DatasetAction
      def self.default(visited=[])
        return nil if visited.include?('DatasetAction')
        visited = visited + ['DatasetAction']
        {
          action_name: 'action_name',
          query_action: Stubs::SqlQueryDatasetAction.default(visited),
          container_action: Stubs::ContainerDatasetAction.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DatasetAction.new
        data = {}
        data['actionName'] = stub[:action_name] unless stub[:action_name].nil?
        data['queryAction'] = Stubs::SqlQueryDatasetAction.stub(stub[:query_action]) unless stub[:query_action].nil?
        data['containerAction'] = Stubs::ContainerDatasetAction.stub(stub[:container_action]) unless stub[:container_action].nil?
        data
      end
    end

    # Structure Stubber for ContainerDatasetAction
    class ContainerDatasetAction
      def self.default(visited=[])
        return nil if visited.include?('ContainerDatasetAction')
        visited = visited + ['ContainerDatasetAction']
        {
          image: 'image',
          execution_role_arn: 'execution_role_arn',
          resource_configuration: Stubs::ResourceConfiguration.default(visited),
          variables: Stubs::Variables.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ContainerDatasetAction.new
        data = {}
        data['image'] = stub[:image] unless stub[:image].nil?
        data['executionRoleArn'] = stub[:execution_role_arn] unless stub[:execution_role_arn].nil?
        data['resourceConfiguration'] = Stubs::ResourceConfiguration.stub(stub[:resource_configuration]) unless stub[:resource_configuration].nil?
        data['variables'] = Stubs::Variables.stub(stub[:variables]) unless stub[:variables].nil?
        data
      end
    end

    # List Stubber for Variables
    class Variables
      def self.default(visited=[])
        return nil if visited.include?('Variables')
        visited = visited + ['Variables']
        [
          Stubs::Variable.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Variable.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Variable
    class Variable
      def self.default(visited=[])
        return nil if visited.include?('Variable')
        visited = visited + ['Variable']
        {
          name: 'name',
          string_value: 'string_value',
          double_value: 1.0,
          dataset_content_version_value: Stubs::DatasetContentVersionValue.default(visited),
          output_file_uri_value: Stubs::OutputFileUriValue.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Variable.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['stringValue'] = stub[:string_value] unless stub[:string_value].nil?
        data['doubleValue'] = Hearth::NumberHelper.serialize(stub[:double_value])
        data['datasetContentVersionValue'] = Stubs::DatasetContentVersionValue.stub(stub[:dataset_content_version_value]) unless stub[:dataset_content_version_value].nil?
        data['outputFileUriValue'] = Stubs::OutputFileUriValue.stub(stub[:output_file_uri_value]) unless stub[:output_file_uri_value].nil?
        data
      end
    end

    # Structure Stubber for OutputFileUriValue
    class OutputFileUriValue
      def self.default(visited=[])
        return nil if visited.include?('OutputFileUriValue')
        visited = visited + ['OutputFileUriValue']
        {
          file_name: 'file_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::OutputFileUriValue.new
        data = {}
        data['fileName'] = stub[:file_name] unless stub[:file_name].nil?
        data
      end
    end

    # Structure Stubber for DatasetContentVersionValue
    class DatasetContentVersionValue
      def self.default(visited=[])
        return nil if visited.include?('DatasetContentVersionValue')
        visited = visited + ['DatasetContentVersionValue']
        {
          dataset_name: 'dataset_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::DatasetContentVersionValue.new
        data = {}
        data['datasetName'] = stub[:dataset_name] unless stub[:dataset_name].nil?
        data
      end
    end

    # Structure Stubber for ResourceConfiguration
    class ResourceConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ResourceConfiguration')
        visited = visited + ['ResourceConfiguration']
        {
          compute_type: 'compute_type',
          volume_size_in_gb: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceConfiguration.new
        data = {}
        data['computeType'] = stub[:compute_type] unless stub[:compute_type].nil?
        data['volumeSizeInGB'] = stub[:volume_size_in_gb] unless stub[:volume_size_in_gb].nil?
        data
      end
    end

    # Structure Stubber for SqlQueryDatasetAction
    class SqlQueryDatasetAction
      def self.default(visited=[])
        return nil if visited.include?('SqlQueryDatasetAction')
        visited = visited + ['SqlQueryDatasetAction']
        {
          sql_query: 'sql_query',
          filters: Stubs::QueryFilters.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SqlQueryDatasetAction.new
        data = {}
        data['sqlQuery'] = stub[:sql_query] unless stub[:sql_query].nil?
        data['filters'] = Stubs::QueryFilters.stub(stub[:filters]) unless stub[:filters].nil?
        data
      end
    end

    # List Stubber for QueryFilters
    class QueryFilters
      def self.default(visited=[])
        return nil if visited.include?('QueryFilters')
        visited = visited + ['QueryFilters']
        [
          Stubs::QueryFilter.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::QueryFilter.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for QueryFilter
    class QueryFilter
      def self.default(visited=[])
        return nil if visited.include?('QueryFilter')
        visited = visited + ['QueryFilter']
        {
          delta_time: Stubs::DeltaTime.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::QueryFilter.new
        data = {}
        data['deltaTime'] = Stubs::DeltaTime.stub(stub[:delta_time]) unless stub[:delta_time].nil?
        data
      end
    end

    # Structure Stubber for DeltaTime
    class DeltaTime
      def self.default(visited=[])
        return nil if visited.include?('DeltaTime')
        visited = visited + ['DeltaTime']
        {
          offset_seconds: 1,
          time_expression: 'time_expression',
        }
      end

      def self.stub(stub)
        stub ||= Types::DeltaTime.new
        data = {}
        data['offsetSeconds'] = stub[:offset_seconds] unless stub[:offset_seconds].nil?
        data['timeExpression'] = stub[:time_expression] unless stub[:time_expression].nil?
        data
      end
    end

    # Operation Stubber for DescribeDatastore
    class DescribeDatastore
      def self.default(visited=[])
        {
          datastore: Stubs::Datastore.default(visited),
          statistics: Stubs::DatastoreStatistics.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['datastore'] = Stubs::Datastore.stub(stub[:datastore]) unless stub[:datastore].nil?
        data['statistics'] = Stubs::DatastoreStatistics.stub(stub[:statistics]) unless stub[:statistics].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for DatastoreStatistics
    class DatastoreStatistics
      def self.default(visited=[])
        return nil if visited.include?('DatastoreStatistics')
        visited = visited + ['DatastoreStatistics']
        {
          size: Stubs::EstimatedResourceSize.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DatastoreStatistics.new
        data = {}
        data['size'] = Stubs::EstimatedResourceSize.stub(stub[:size]) unless stub[:size].nil?
        data
      end
    end

    # Structure Stubber for Datastore
    class Datastore
      def self.default(visited=[])
        return nil if visited.include?('Datastore')
        visited = visited + ['Datastore']
        {
          name: 'name',
          storage: Stubs::DatastoreStorage.default(visited),
          arn: 'arn',
          status: 'status',
          retention_period: Stubs::RetentionPeriod.default(visited),
          creation_time: Time.now,
          last_update_time: Time.now,
          last_message_arrival_time: Time.now,
          file_format_configuration: Stubs::FileFormatConfiguration.default(visited),
          datastore_partitions: Stubs::DatastorePartitions.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Datastore.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['storage'] = Stubs::DatastoreStorage.stub(stub[:storage]) unless stub[:storage].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['retentionPeriod'] = Stubs::RetentionPeriod.stub(stub[:retention_period]) unless stub[:retention_period].nil?
        data['creationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['lastUpdateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_update_time]).to_i unless stub[:last_update_time].nil?
        data['lastMessageArrivalTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_message_arrival_time]).to_i unless stub[:last_message_arrival_time].nil?
        data['fileFormatConfiguration'] = Stubs::FileFormatConfiguration.stub(stub[:file_format_configuration]) unless stub[:file_format_configuration].nil?
        data['datastorePartitions'] = Stubs::DatastorePartitions.stub(stub[:datastore_partitions]) unless stub[:datastore_partitions].nil?
        data
      end
    end

    # Structure Stubber for DatastorePartitions
    class DatastorePartitions
      def self.default(visited=[])
        return nil if visited.include?('DatastorePartitions')
        visited = visited + ['DatastorePartitions']
        {
          partitions: Stubs::Partitions.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DatastorePartitions.new
        data = {}
        data['partitions'] = Stubs::Partitions.stub(stub[:partitions]) unless stub[:partitions].nil?
        data
      end
    end

    # List Stubber for Partitions
    class Partitions
      def self.default(visited=[])
        return nil if visited.include?('Partitions')
        visited = visited + ['Partitions']
        [
          Stubs::DatastorePartition.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DatastorePartition.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DatastorePartition
    class DatastorePartition
      def self.default(visited=[])
        return nil if visited.include?('DatastorePartition')
        visited = visited + ['DatastorePartition']
        {
          attribute_partition: Stubs::Partition.default(visited),
          timestamp_partition: Stubs::TimestampPartition.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DatastorePartition.new
        data = {}
        data['attributePartition'] = Stubs::Partition.stub(stub[:attribute_partition]) unless stub[:attribute_partition].nil?
        data['timestampPartition'] = Stubs::TimestampPartition.stub(stub[:timestamp_partition]) unless stub[:timestamp_partition].nil?
        data
      end
    end

    # Structure Stubber for TimestampPartition
    class TimestampPartition
      def self.default(visited=[])
        return nil if visited.include?('TimestampPartition')
        visited = visited + ['TimestampPartition']
        {
          attribute_name: 'attribute_name',
          timestamp_format: 'timestamp_format',
        }
      end

      def self.stub(stub)
        stub ||= Types::TimestampPartition.new
        data = {}
        data['attributeName'] = stub[:attribute_name] unless stub[:attribute_name].nil?
        data['timestampFormat'] = stub[:timestamp_format] unless stub[:timestamp_format].nil?
        data
      end
    end

    # Structure Stubber for Partition
    class Partition
      def self.default(visited=[])
        return nil if visited.include?('Partition')
        visited = visited + ['Partition']
        {
          attribute_name: 'attribute_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::Partition.new
        data = {}
        data['attributeName'] = stub[:attribute_name] unless stub[:attribute_name].nil?
        data
      end
    end

    # Structure Stubber for FileFormatConfiguration
    class FileFormatConfiguration
      def self.default(visited=[])
        return nil if visited.include?('FileFormatConfiguration')
        visited = visited + ['FileFormatConfiguration']
        {
          json_configuration: Stubs::JsonConfiguration.default(visited),
          parquet_configuration: Stubs::ParquetConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FileFormatConfiguration.new
        data = {}
        data['jsonConfiguration'] = Stubs::JsonConfiguration.stub(stub[:json_configuration]) unless stub[:json_configuration].nil?
        data['parquetConfiguration'] = Stubs::ParquetConfiguration.stub(stub[:parquet_configuration]) unless stub[:parquet_configuration].nil?
        data
      end
    end

    # Structure Stubber for ParquetConfiguration
    class ParquetConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ParquetConfiguration')
        visited = visited + ['ParquetConfiguration']
        {
          schema_definition: Stubs::SchemaDefinition.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ParquetConfiguration.new
        data = {}
        data['schemaDefinition'] = Stubs::SchemaDefinition.stub(stub[:schema_definition]) unless stub[:schema_definition].nil?
        data
      end
    end

    # Structure Stubber for SchemaDefinition
    class SchemaDefinition
      def self.default(visited=[])
        return nil if visited.include?('SchemaDefinition')
        visited = visited + ['SchemaDefinition']
        {
          columns: Stubs::Columns.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SchemaDefinition.new
        data = {}
        data['columns'] = Stubs::Columns.stub(stub[:columns]) unless stub[:columns].nil?
        data
      end
    end

    # List Stubber for Columns
    class Columns
      def self.default(visited=[])
        return nil if visited.include?('Columns')
        visited = visited + ['Columns']
        [
          Stubs::Column.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Column.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Column
    class Column
      def self.default(visited=[])
        return nil if visited.include?('Column')
        visited = visited + ['Column']
        {
          name: 'name',
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::Column.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Structure Stubber for JsonConfiguration
    class JsonConfiguration
      def self.default(visited=[])
        return nil if visited.include?('JsonConfiguration')
        visited = visited + ['JsonConfiguration']
        {
        }
      end

      def self.stub(stub)
        stub ||= Types::JsonConfiguration.new
        data = {}
        data
      end
    end

    # Union Stubber for DatastoreStorage
    class DatastoreStorage
      def self.default(visited=[])
        return nil if visited.include?('DatastoreStorage')
        visited = visited + ['DatastoreStorage']
        {
          service_managed_s3: Stubs::ServiceManagedDatastoreS3Storage.default(visited),
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::DatastoreStorage::ServiceManagedS3
          data['serviceManagedS3'] = (Stubs::ServiceManagedDatastoreS3Storage.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::DatastoreStorage::CustomerManagedS3
          data['customerManagedS3'] = (Stubs::CustomerManagedDatastoreS3Storage.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::DatastoreStorage::IotSiteWiseMultiLayerStorage
          data['iotSiteWiseMultiLayerStorage'] = (Stubs::DatastoreIotSiteWiseMultiLayerStorage.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::DatastoreStorage"
        end

        data
      end
    end

    # Structure Stubber for DatastoreIotSiteWiseMultiLayerStorage
    class DatastoreIotSiteWiseMultiLayerStorage
      def self.default(visited=[])
        return nil if visited.include?('DatastoreIotSiteWiseMultiLayerStorage')
        visited = visited + ['DatastoreIotSiteWiseMultiLayerStorage']
        {
          customer_managed_s3_storage: Stubs::IotSiteWiseCustomerManagedDatastoreS3Storage.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DatastoreIotSiteWiseMultiLayerStorage.new
        data = {}
        data['customerManagedS3Storage'] = Stubs::IotSiteWiseCustomerManagedDatastoreS3Storage.stub(stub[:customer_managed_s3_storage]) unless stub[:customer_managed_s3_storage].nil?
        data
      end
    end

    # Structure Stubber for IotSiteWiseCustomerManagedDatastoreS3Storage
    class IotSiteWiseCustomerManagedDatastoreS3Storage
      def self.default(visited=[])
        return nil if visited.include?('IotSiteWiseCustomerManagedDatastoreS3Storage')
        visited = visited + ['IotSiteWiseCustomerManagedDatastoreS3Storage']
        {
          bucket: 'bucket',
          key_prefix: 'key_prefix',
        }
      end

      def self.stub(stub)
        stub ||= Types::IotSiteWiseCustomerManagedDatastoreS3Storage.new
        data = {}
        data['bucket'] = stub[:bucket] unless stub[:bucket].nil?
        data['keyPrefix'] = stub[:key_prefix] unless stub[:key_prefix].nil?
        data
      end
    end

    # Structure Stubber for CustomerManagedDatastoreS3Storage
    class CustomerManagedDatastoreS3Storage
      def self.default(visited=[])
        return nil if visited.include?('CustomerManagedDatastoreS3Storage')
        visited = visited + ['CustomerManagedDatastoreS3Storage']
        {
          bucket: 'bucket',
          key_prefix: 'key_prefix',
          role_arn: 'role_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::CustomerManagedDatastoreS3Storage.new
        data = {}
        data['bucket'] = stub[:bucket] unless stub[:bucket].nil?
        data['keyPrefix'] = stub[:key_prefix] unless stub[:key_prefix].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data
      end
    end

    # Structure Stubber for ServiceManagedDatastoreS3Storage
    class ServiceManagedDatastoreS3Storage
      def self.default(visited=[])
        return nil if visited.include?('ServiceManagedDatastoreS3Storage')
        visited = visited + ['ServiceManagedDatastoreS3Storage']
        {
        }
      end

      def self.stub(stub)
        stub ||= Types::ServiceManagedDatastoreS3Storage.new
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeLoggingOptions
    class DescribeLoggingOptions
      def self.default(visited=[])
        {
          logging_options: Stubs::LoggingOptions.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['loggingOptions'] = Stubs::LoggingOptions.stub(stub[:logging_options]) unless stub[:logging_options].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for LoggingOptions
    class LoggingOptions
      def self.default(visited=[])
        return nil if visited.include?('LoggingOptions')
        visited = visited + ['LoggingOptions']
        {
          role_arn: 'role_arn',
          level: 'level',
          enabled: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::LoggingOptions.new
        data = {}
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['level'] = stub[:level] unless stub[:level].nil?
        data['enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data
      end
    end

    # Operation Stubber for DescribePipeline
    class DescribePipeline
      def self.default(visited=[])
        {
          pipeline: Stubs::Pipeline.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['pipeline'] = Stubs::Pipeline.stub(stub[:pipeline]) unless stub[:pipeline].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Pipeline
    class Pipeline
      def self.default(visited=[])
        return nil if visited.include?('Pipeline')
        visited = visited + ['Pipeline']
        {
          name: 'name',
          arn: 'arn',
          activities: Stubs::PipelineActivities.default(visited),
          reprocessing_summaries: Stubs::ReprocessingSummaries.default(visited),
          creation_time: Time.now,
          last_update_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Pipeline.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['activities'] = Stubs::PipelineActivities.stub(stub[:activities]) unless stub[:activities].nil?
        data['reprocessingSummaries'] = Stubs::ReprocessingSummaries.stub(stub[:reprocessing_summaries]) unless stub[:reprocessing_summaries].nil?
        data['creationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['lastUpdateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_update_time]).to_i unless stub[:last_update_time].nil?
        data
      end
    end

    # List Stubber for ReprocessingSummaries
    class ReprocessingSummaries
      def self.default(visited=[])
        return nil if visited.include?('ReprocessingSummaries')
        visited = visited + ['ReprocessingSummaries']
        [
          Stubs::ReprocessingSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ReprocessingSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ReprocessingSummary
    class ReprocessingSummary
      def self.default(visited=[])
        return nil if visited.include?('ReprocessingSummary')
        visited = visited + ['ReprocessingSummary']
        {
          id: 'id',
          status: 'status',
          creation_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ReprocessingSummary.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['creationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data
      end
    end

    # List Stubber for PipelineActivities
    class PipelineActivities
      def self.default(visited=[])
        return nil if visited.include?('PipelineActivities')
        visited = visited + ['PipelineActivities']
        [
          Stubs::PipelineActivity.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PipelineActivity.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PipelineActivity
    class PipelineActivity
      def self.default(visited=[])
        return nil if visited.include?('PipelineActivity')
        visited = visited + ['PipelineActivity']
        {
          channel: Stubs::ChannelActivity.default(visited),
          lambda: Stubs::LambdaActivity.default(visited),
          datastore: Stubs::DatastoreActivity.default(visited),
          add_attributes: Stubs::AddAttributesActivity.default(visited),
          remove_attributes: Stubs::RemoveAttributesActivity.default(visited),
          select_attributes: Stubs::SelectAttributesActivity.default(visited),
          filter: Stubs::FilterActivity.default(visited),
          math: Stubs::MathActivity.default(visited),
          device_registry_enrich: Stubs::DeviceRegistryEnrichActivity.default(visited),
          device_shadow_enrich: Stubs::DeviceShadowEnrichActivity.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PipelineActivity.new
        data = {}
        data['channel'] = Stubs::ChannelActivity.stub(stub[:channel]) unless stub[:channel].nil?
        data['lambda'] = Stubs::LambdaActivity.stub(stub[:lambda]) unless stub[:lambda].nil?
        data['datastore'] = Stubs::DatastoreActivity.stub(stub[:datastore]) unless stub[:datastore].nil?
        data['addAttributes'] = Stubs::AddAttributesActivity.stub(stub[:add_attributes]) unless stub[:add_attributes].nil?
        data['removeAttributes'] = Stubs::RemoveAttributesActivity.stub(stub[:remove_attributes]) unless stub[:remove_attributes].nil?
        data['selectAttributes'] = Stubs::SelectAttributesActivity.stub(stub[:select_attributes]) unless stub[:select_attributes].nil?
        data['filter'] = Stubs::FilterActivity.stub(stub[:filter]) unless stub[:filter].nil?
        data['math'] = Stubs::MathActivity.stub(stub[:math]) unless stub[:math].nil?
        data['deviceRegistryEnrich'] = Stubs::DeviceRegistryEnrichActivity.stub(stub[:device_registry_enrich]) unless stub[:device_registry_enrich].nil?
        data['deviceShadowEnrich'] = Stubs::DeviceShadowEnrichActivity.stub(stub[:device_shadow_enrich]) unless stub[:device_shadow_enrich].nil?
        data
      end
    end

    # Structure Stubber for DeviceShadowEnrichActivity
    class DeviceShadowEnrichActivity
      def self.default(visited=[])
        return nil if visited.include?('DeviceShadowEnrichActivity')
        visited = visited + ['DeviceShadowEnrichActivity']
        {
          name: 'name',
          attribute: 'attribute',
          thing_name: 'thing_name',
          role_arn: 'role_arn',
          next: 'next',
        }
      end

      def self.stub(stub)
        stub ||= Types::DeviceShadowEnrichActivity.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['attribute'] = stub[:attribute] unless stub[:attribute].nil?
        data['thingName'] = stub[:thing_name] unless stub[:thing_name].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['next'] = stub[:next] unless stub[:next].nil?
        data
      end
    end

    # Structure Stubber for DeviceRegistryEnrichActivity
    class DeviceRegistryEnrichActivity
      def self.default(visited=[])
        return nil if visited.include?('DeviceRegistryEnrichActivity')
        visited = visited + ['DeviceRegistryEnrichActivity']
        {
          name: 'name',
          attribute: 'attribute',
          thing_name: 'thing_name',
          role_arn: 'role_arn',
          next: 'next',
        }
      end

      def self.stub(stub)
        stub ||= Types::DeviceRegistryEnrichActivity.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['attribute'] = stub[:attribute] unless stub[:attribute].nil?
        data['thingName'] = stub[:thing_name] unless stub[:thing_name].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['next'] = stub[:next] unless stub[:next].nil?
        data
      end
    end

    # Structure Stubber for MathActivity
    class MathActivity
      def self.default(visited=[])
        return nil if visited.include?('MathActivity')
        visited = visited + ['MathActivity']
        {
          name: 'name',
          attribute: 'attribute',
          math: 'math',
          next: 'next',
        }
      end

      def self.stub(stub)
        stub ||= Types::MathActivity.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['attribute'] = stub[:attribute] unless stub[:attribute].nil?
        data['math'] = stub[:math] unless stub[:math].nil?
        data['next'] = stub[:next] unless stub[:next].nil?
        data
      end
    end

    # Structure Stubber for FilterActivity
    class FilterActivity
      def self.default(visited=[])
        return nil if visited.include?('FilterActivity')
        visited = visited + ['FilterActivity']
        {
          name: 'name',
          filter: 'filter',
          next: 'next',
        }
      end

      def self.stub(stub)
        stub ||= Types::FilterActivity.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['filter'] = stub[:filter] unless stub[:filter].nil?
        data['next'] = stub[:next] unless stub[:next].nil?
        data
      end
    end

    # Structure Stubber for SelectAttributesActivity
    class SelectAttributesActivity
      def self.default(visited=[])
        return nil if visited.include?('SelectAttributesActivity')
        visited = visited + ['SelectAttributesActivity']
        {
          name: 'name',
          attributes: Stubs::AttributeNames.default(visited),
          next: 'next',
        }
      end

      def self.stub(stub)
        stub ||= Types::SelectAttributesActivity.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['attributes'] = Stubs::AttributeNames.stub(stub[:attributes]) unless stub[:attributes].nil?
        data['next'] = stub[:next] unless stub[:next].nil?
        data
      end
    end

    # List Stubber for AttributeNames
    class AttributeNames
      def self.default(visited=[])
        return nil if visited.include?('AttributeNames')
        visited = visited + ['AttributeNames']
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

    # Structure Stubber for RemoveAttributesActivity
    class RemoveAttributesActivity
      def self.default(visited=[])
        return nil if visited.include?('RemoveAttributesActivity')
        visited = visited + ['RemoveAttributesActivity']
        {
          name: 'name',
          attributes: Stubs::AttributeNames.default(visited),
          next: 'next',
        }
      end

      def self.stub(stub)
        stub ||= Types::RemoveAttributesActivity.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['attributes'] = Stubs::AttributeNames.stub(stub[:attributes]) unless stub[:attributes].nil?
        data['next'] = stub[:next] unless stub[:next].nil?
        data
      end
    end

    # Structure Stubber for AddAttributesActivity
    class AddAttributesActivity
      def self.default(visited=[])
        return nil if visited.include?('AddAttributesActivity')
        visited = visited + ['AddAttributesActivity']
        {
          name: 'name',
          attributes: Stubs::AttributeNameMapping.default(visited),
          next: 'next',
        }
      end

      def self.stub(stub)
        stub ||= Types::AddAttributesActivity.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['attributes'] = Stubs::AttributeNameMapping.stub(stub[:attributes]) unless stub[:attributes].nil?
        data['next'] = stub[:next] unless stub[:next].nil?
        data
      end
    end

    # Map Stubber for AttributeNameMapping
    class AttributeNameMapping
      def self.default(visited=[])
        return nil if visited.include?('AttributeNameMapping')
        visited = visited + ['AttributeNameMapping']
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

    # Structure Stubber for DatastoreActivity
    class DatastoreActivity
      def self.default(visited=[])
        return nil if visited.include?('DatastoreActivity')
        visited = visited + ['DatastoreActivity']
        {
          name: 'name',
          datastore_name: 'datastore_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::DatastoreActivity.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['datastoreName'] = stub[:datastore_name] unless stub[:datastore_name].nil?
        data
      end
    end

    # Structure Stubber for LambdaActivity
    class LambdaActivity
      def self.default(visited=[])
        return nil if visited.include?('LambdaActivity')
        visited = visited + ['LambdaActivity']
        {
          name: 'name',
          lambda_name: 'lambda_name',
          batch_size: 1,
          next: 'next',
        }
      end

      def self.stub(stub)
        stub ||= Types::LambdaActivity.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['lambdaName'] = stub[:lambda_name] unless stub[:lambda_name].nil?
        data['batchSize'] = stub[:batch_size] unless stub[:batch_size].nil?
        data['next'] = stub[:next] unless stub[:next].nil?
        data
      end
    end

    # Structure Stubber for ChannelActivity
    class ChannelActivity
      def self.default(visited=[])
        return nil if visited.include?('ChannelActivity')
        visited = visited + ['ChannelActivity']
        {
          name: 'name',
          channel_name: 'channel_name',
          next: 'next',
        }
      end

      def self.stub(stub)
        stub ||= Types::ChannelActivity.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['channelName'] = stub[:channel_name] unless stub[:channel_name].nil?
        data['next'] = stub[:next] unless stub[:next].nil?
        data
      end
    end

    # Operation Stubber for GetDatasetContent
    class GetDatasetContent
      def self.default(visited=[])
        {
          entries: Stubs::DatasetEntries.default(visited),
          timestamp: Time.now,
          status: Stubs::DatasetContentStatus.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['entries'] = Stubs::DatasetEntries.stub(stub[:entries]) unless stub[:entries].nil?
        data['timestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:timestamp]).to_i unless stub[:timestamp].nil?
        data['status'] = Stubs::DatasetContentStatus.stub(stub[:status]) unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for DatasetContentStatus
    class DatasetContentStatus
      def self.default(visited=[])
        return nil if visited.include?('DatasetContentStatus')
        visited = visited + ['DatasetContentStatus']
        {
          state: 'state',
          reason: 'reason',
        }
      end

      def self.stub(stub)
        stub ||= Types::DatasetContentStatus.new
        data = {}
        data['state'] = stub[:state] unless stub[:state].nil?
        data['reason'] = stub[:reason] unless stub[:reason].nil?
        data
      end
    end

    # List Stubber for DatasetEntries
    class DatasetEntries
      def self.default(visited=[])
        return nil if visited.include?('DatasetEntries')
        visited = visited + ['DatasetEntries']
        [
          Stubs::DatasetEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DatasetEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DatasetEntry
    class DatasetEntry
      def self.default(visited=[])
        return nil if visited.include?('DatasetEntry')
        visited = visited + ['DatasetEntry']
        {
          entry_name: 'entry_name',
          data_uri: 'data_uri',
        }
      end

      def self.stub(stub)
        stub ||= Types::DatasetEntry.new
        data = {}
        data['entryName'] = stub[:entry_name] unless stub[:entry_name].nil?
        data['dataURI'] = stub[:data_uri] unless stub[:data_uri].nil?
        data
      end
    end

    # Operation Stubber for ListChannels
    class ListChannels
      def self.default(visited=[])
        {
          channel_summaries: Stubs::ChannelSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['channelSummaries'] = Stubs::ChannelSummaries.stub(stub[:channel_summaries]) unless stub[:channel_summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ChannelSummaries
    class ChannelSummaries
      def self.default(visited=[])
        return nil if visited.include?('ChannelSummaries')
        visited = visited + ['ChannelSummaries']
        [
          Stubs::ChannelSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ChannelSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ChannelSummary
    class ChannelSummary
      def self.default(visited=[])
        return nil if visited.include?('ChannelSummary')
        visited = visited + ['ChannelSummary']
        {
          channel_name: 'channel_name',
          channel_storage: Stubs::ChannelStorageSummary.default(visited),
          status: 'status',
          creation_time: Time.now,
          last_update_time: Time.now,
          last_message_arrival_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ChannelSummary.new
        data = {}
        data['channelName'] = stub[:channel_name] unless stub[:channel_name].nil?
        data['channelStorage'] = Stubs::ChannelStorageSummary.stub(stub[:channel_storage]) unless stub[:channel_storage].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['creationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['lastUpdateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_update_time]).to_i unless stub[:last_update_time].nil?
        data['lastMessageArrivalTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_message_arrival_time]).to_i unless stub[:last_message_arrival_time].nil?
        data
      end
    end

    # Structure Stubber for ChannelStorageSummary
    class ChannelStorageSummary
      def self.default(visited=[])
        return nil if visited.include?('ChannelStorageSummary')
        visited = visited + ['ChannelStorageSummary']
        {
          service_managed_s3: Stubs::ServiceManagedChannelS3StorageSummary.default(visited),
          customer_managed_s3: Stubs::CustomerManagedChannelS3StorageSummary.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ChannelStorageSummary.new
        data = {}
        data['serviceManagedS3'] = Stubs::ServiceManagedChannelS3StorageSummary.stub(stub[:service_managed_s3]) unless stub[:service_managed_s3].nil?
        data['customerManagedS3'] = Stubs::CustomerManagedChannelS3StorageSummary.stub(stub[:customer_managed_s3]) unless stub[:customer_managed_s3].nil?
        data
      end
    end

    # Structure Stubber for CustomerManagedChannelS3StorageSummary
    class CustomerManagedChannelS3StorageSummary
      def self.default(visited=[])
        return nil if visited.include?('CustomerManagedChannelS3StorageSummary')
        visited = visited + ['CustomerManagedChannelS3StorageSummary']
        {
          bucket: 'bucket',
          key_prefix: 'key_prefix',
          role_arn: 'role_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::CustomerManagedChannelS3StorageSummary.new
        data = {}
        data['bucket'] = stub[:bucket] unless stub[:bucket].nil?
        data['keyPrefix'] = stub[:key_prefix] unless stub[:key_prefix].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data
      end
    end

    # Structure Stubber for ServiceManagedChannelS3StorageSummary
    class ServiceManagedChannelS3StorageSummary
      def self.default(visited=[])
        return nil if visited.include?('ServiceManagedChannelS3StorageSummary')
        visited = visited + ['ServiceManagedChannelS3StorageSummary']
        {
        }
      end

      def self.stub(stub)
        stub ||= Types::ServiceManagedChannelS3StorageSummary.new
        data = {}
        data
      end
    end

    # Operation Stubber for ListDatasetContents
    class ListDatasetContents
      def self.default(visited=[])
        {
          dataset_content_summaries: Stubs::DatasetContentSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['datasetContentSummaries'] = Stubs::DatasetContentSummaries.stub(stub[:dataset_content_summaries]) unless stub[:dataset_content_summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for DatasetContentSummaries
    class DatasetContentSummaries
      def self.default(visited=[])
        return nil if visited.include?('DatasetContentSummaries')
        visited = visited + ['DatasetContentSummaries']
        [
          Stubs::DatasetContentSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DatasetContentSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DatasetContentSummary
    class DatasetContentSummary
      def self.default(visited=[])
        return nil if visited.include?('DatasetContentSummary')
        visited = visited + ['DatasetContentSummary']
        {
          version: 'version',
          status: Stubs::DatasetContentStatus.default(visited),
          creation_time: Time.now,
          schedule_time: Time.now,
          completion_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::DatasetContentSummary.new
        data = {}
        data['version'] = stub[:version] unless stub[:version].nil?
        data['status'] = Stubs::DatasetContentStatus.stub(stub[:status]) unless stub[:status].nil?
        data['creationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['scheduleTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:schedule_time]).to_i unless stub[:schedule_time].nil?
        data['completionTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:completion_time]).to_i unless stub[:completion_time].nil?
        data
      end
    end

    # Operation Stubber for ListDatasets
    class ListDatasets
      def self.default(visited=[])
        {
          dataset_summaries: Stubs::DatasetSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['datasetSummaries'] = Stubs::DatasetSummaries.stub(stub[:dataset_summaries]) unless stub[:dataset_summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for DatasetSummaries
    class DatasetSummaries
      def self.default(visited=[])
        return nil if visited.include?('DatasetSummaries')
        visited = visited + ['DatasetSummaries']
        [
          Stubs::DatasetSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DatasetSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DatasetSummary
    class DatasetSummary
      def self.default(visited=[])
        return nil if visited.include?('DatasetSummary')
        visited = visited + ['DatasetSummary']
        {
          dataset_name: 'dataset_name',
          status: 'status',
          creation_time: Time.now,
          last_update_time: Time.now,
          triggers: Stubs::DatasetTriggers.default(visited),
          actions: Stubs::DatasetActionSummaries.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DatasetSummary.new
        data = {}
        data['datasetName'] = stub[:dataset_name] unless stub[:dataset_name].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['creationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['lastUpdateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_update_time]).to_i unless stub[:last_update_time].nil?
        data['triggers'] = Stubs::DatasetTriggers.stub(stub[:triggers]) unless stub[:triggers].nil?
        data['actions'] = Stubs::DatasetActionSummaries.stub(stub[:actions]) unless stub[:actions].nil?
        data
      end
    end

    # List Stubber for DatasetActionSummaries
    class DatasetActionSummaries
      def self.default(visited=[])
        return nil if visited.include?('DatasetActionSummaries')
        visited = visited + ['DatasetActionSummaries']
        [
          Stubs::DatasetActionSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DatasetActionSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DatasetActionSummary
    class DatasetActionSummary
      def self.default(visited=[])
        return nil if visited.include?('DatasetActionSummary')
        visited = visited + ['DatasetActionSummary']
        {
          action_name: 'action_name',
          action_type: 'action_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::DatasetActionSummary.new
        data = {}
        data['actionName'] = stub[:action_name] unless stub[:action_name].nil?
        data['actionType'] = stub[:action_type] unless stub[:action_type].nil?
        data
      end
    end

    # Operation Stubber for ListDatastores
    class ListDatastores
      def self.default(visited=[])
        {
          datastore_summaries: Stubs::DatastoreSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['datastoreSummaries'] = Stubs::DatastoreSummaries.stub(stub[:datastore_summaries]) unless stub[:datastore_summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for DatastoreSummaries
    class DatastoreSummaries
      def self.default(visited=[])
        return nil if visited.include?('DatastoreSummaries')
        visited = visited + ['DatastoreSummaries']
        [
          Stubs::DatastoreSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DatastoreSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DatastoreSummary
    class DatastoreSummary
      def self.default(visited=[])
        return nil if visited.include?('DatastoreSummary')
        visited = visited + ['DatastoreSummary']
        {
          datastore_name: 'datastore_name',
          datastore_storage: Stubs::DatastoreStorageSummary.default(visited),
          status: 'status',
          creation_time: Time.now,
          last_update_time: Time.now,
          last_message_arrival_time: Time.now,
          file_format_type: 'file_format_type',
          datastore_partitions: Stubs::DatastorePartitions.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DatastoreSummary.new
        data = {}
        data['datastoreName'] = stub[:datastore_name] unless stub[:datastore_name].nil?
        data['datastoreStorage'] = Stubs::DatastoreStorageSummary.stub(stub[:datastore_storage]) unless stub[:datastore_storage].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['creationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['lastUpdateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_update_time]).to_i unless stub[:last_update_time].nil?
        data['lastMessageArrivalTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_message_arrival_time]).to_i unless stub[:last_message_arrival_time].nil?
        data['fileFormatType'] = stub[:file_format_type] unless stub[:file_format_type].nil?
        data['datastorePartitions'] = Stubs::DatastorePartitions.stub(stub[:datastore_partitions]) unless stub[:datastore_partitions].nil?
        data
      end
    end

    # Structure Stubber for DatastoreStorageSummary
    class DatastoreStorageSummary
      def self.default(visited=[])
        return nil if visited.include?('DatastoreStorageSummary')
        visited = visited + ['DatastoreStorageSummary']
        {
          service_managed_s3: Stubs::ServiceManagedDatastoreS3StorageSummary.default(visited),
          customer_managed_s3: Stubs::CustomerManagedDatastoreS3StorageSummary.default(visited),
          iot_site_wise_multi_layer_storage: Stubs::DatastoreIotSiteWiseMultiLayerStorageSummary.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DatastoreStorageSummary.new
        data = {}
        data['serviceManagedS3'] = Stubs::ServiceManagedDatastoreS3StorageSummary.stub(stub[:service_managed_s3]) unless stub[:service_managed_s3].nil?
        data['customerManagedS3'] = Stubs::CustomerManagedDatastoreS3StorageSummary.stub(stub[:customer_managed_s3]) unless stub[:customer_managed_s3].nil?
        data['iotSiteWiseMultiLayerStorage'] = Stubs::DatastoreIotSiteWiseMultiLayerStorageSummary.stub(stub[:iot_site_wise_multi_layer_storage]) unless stub[:iot_site_wise_multi_layer_storage].nil?
        data
      end
    end

    # Structure Stubber for DatastoreIotSiteWiseMultiLayerStorageSummary
    class DatastoreIotSiteWiseMultiLayerStorageSummary
      def self.default(visited=[])
        return nil if visited.include?('DatastoreIotSiteWiseMultiLayerStorageSummary')
        visited = visited + ['DatastoreIotSiteWiseMultiLayerStorageSummary']
        {
          customer_managed_s3_storage: Stubs::IotSiteWiseCustomerManagedDatastoreS3StorageSummary.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DatastoreIotSiteWiseMultiLayerStorageSummary.new
        data = {}
        data['customerManagedS3Storage'] = Stubs::IotSiteWiseCustomerManagedDatastoreS3StorageSummary.stub(stub[:customer_managed_s3_storage]) unless stub[:customer_managed_s3_storage].nil?
        data
      end
    end

    # Structure Stubber for IotSiteWiseCustomerManagedDatastoreS3StorageSummary
    class IotSiteWiseCustomerManagedDatastoreS3StorageSummary
      def self.default(visited=[])
        return nil if visited.include?('IotSiteWiseCustomerManagedDatastoreS3StorageSummary')
        visited = visited + ['IotSiteWiseCustomerManagedDatastoreS3StorageSummary']
        {
          bucket: 'bucket',
          key_prefix: 'key_prefix',
        }
      end

      def self.stub(stub)
        stub ||= Types::IotSiteWiseCustomerManagedDatastoreS3StorageSummary.new
        data = {}
        data['bucket'] = stub[:bucket] unless stub[:bucket].nil?
        data['keyPrefix'] = stub[:key_prefix] unless stub[:key_prefix].nil?
        data
      end
    end

    # Structure Stubber for CustomerManagedDatastoreS3StorageSummary
    class CustomerManagedDatastoreS3StorageSummary
      def self.default(visited=[])
        return nil if visited.include?('CustomerManagedDatastoreS3StorageSummary')
        visited = visited + ['CustomerManagedDatastoreS3StorageSummary']
        {
          bucket: 'bucket',
          key_prefix: 'key_prefix',
          role_arn: 'role_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::CustomerManagedDatastoreS3StorageSummary.new
        data = {}
        data['bucket'] = stub[:bucket] unless stub[:bucket].nil?
        data['keyPrefix'] = stub[:key_prefix] unless stub[:key_prefix].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data
      end
    end

    # Structure Stubber for ServiceManagedDatastoreS3StorageSummary
    class ServiceManagedDatastoreS3StorageSummary
      def self.default(visited=[])
        return nil if visited.include?('ServiceManagedDatastoreS3StorageSummary')
        visited = visited + ['ServiceManagedDatastoreS3StorageSummary']
        {
        }
      end

      def self.stub(stub)
        stub ||= Types::ServiceManagedDatastoreS3StorageSummary.new
        data = {}
        data
      end
    end

    # Operation Stubber for ListPipelines
    class ListPipelines
      def self.default(visited=[])
        {
          pipeline_summaries: Stubs::PipelineSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['pipelineSummaries'] = Stubs::PipelineSummaries.stub(stub[:pipeline_summaries]) unless stub[:pipeline_summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for PipelineSummaries
    class PipelineSummaries
      def self.default(visited=[])
        return nil if visited.include?('PipelineSummaries')
        visited = visited + ['PipelineSummaries']
        [
          Stubs::PipelineSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PipelineSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PipelineSummary
    class PipelineSummary
      def self.default(visited=[])
        return nil if visited.include?('PipelineSummary')
        visited = visited + ['PipelineSummary']
        {
          pipeline_name: 'pipeline_name',
          reprocessing_summaries: Stubs::ReprocessingSummaries.default(visited),
          creation_time: Time.now,
          last_update_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::PipelineSummary.new
        data = {}
        data['pipelineName'] = stub[:pipeline_name] unless stub[:pipeline_name].nil?
        data['reprocessingSummaries'] = Stubs::ReprocessingSummaries.stub(stub[:reprocessing_summaries]) unless stub[:reprocessing_summaries].nil?
        data['creationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['lastUpdateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_update_time]).to_i unless stub[:last_update_time].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for TagList
    class TagList
      def self.default(visited=[])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
        [
          Stubs::Tag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Tag.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Tag
    class Tag
      def self.default(visited=[])
        return nil if visited.include?('Tag')
        visited = visited + ['Tag']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::Tag.new
        data = {}
        data['key'] = stub[:key] unless stub[:key].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for PutLoggingOptions
    class PutLoggingOptions
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for RunPipelineActivity
    class RunPipelineActivity
      def self.default(visited=[])
        {
          payloads: Stubs::MessagePayloads.default(visited),
          log_result: 'log_result',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['payloads'] = Stubs::MessagePayloads.stub(stub[:payloads]) unless stub[:payloads].nil?
        data['logResult'] = stub[:log_result] unless stub[:log_result].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for MessagePayloads
    class MessagePayloads
      def self.default(visited=[])
        return nil if visited.include?('MessagePayloads')
        visited = visited + ['MessagePayloads']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Base64::encode64(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for SampleChannelData
    class SampleChannelData
      def self.default(visited=[])
        {
          payloads: Stubs::MessagePayloads.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['payloads'] = Stubs::MessagePayloads.stub(stub[:payloads]) unless stub[:payloads].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StartPipelineReprocessing
    class StartPipelineReprocessing
      def self.default(visited=[])
        {
          reprocessing_id: 'reprocessing_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['reprocessingId'] = stub[:reprocessing_id] unless stub[:reprocessing_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.status = 204
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
        http_resp.status = 204
      end
    end

    # Operation Stubber for UpdateChannel
    class UpdateChannel
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateDataset
    class UpdateDataset
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateDatastore
    class UpdateDatastore
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdatePipeline
    class UpdatePipeline
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end
  end
end
