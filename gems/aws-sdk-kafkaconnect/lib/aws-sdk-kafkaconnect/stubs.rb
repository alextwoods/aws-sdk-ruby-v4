# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::KafkaConnect
  module Stubs

    # Operation Stubber for CreateConnector
    class CreateConnector
      def self.default(visited=[])
        {
          connector_arn: 'connector_arn',
          connector_name: 'connector_name',
          connector_state: 'connector_state',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['connectorArn'] = stub[:connector_arn] unless stub[:connector_arn].nil?
        data['connectorName'] = stub[:connector_name] unless stub[:connector_name].nil?
        data['connectorState'] = stub[:connector_state] unless stub[:connector_state].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateCustomPlugin
    class CreateCustomPlugin
      def self.default(visited=[])
        {
          custom_plugin_arn: 'custom_plugin_arn',
          custom_plugin_state: 'custom_plugin_state',
          name: 'name',
          revision: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['customPluginArn'] = stub[:custom_plugin_arn] unless stub[:custom_plugin_arn].nil?
        data['customPluginState'] = stub[:custom_plugin_state] unless stub[:custom_plugin_state].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['revision'] = stub[:revision] unless stub[:revision].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateWorkerConfiguration
    class CreateWorkerConfiguration
      def self.default(visited=[])
        {
          creation_time: Time.now,
          latest_revision: WorkerConfigurationRevisionSummary.default(visited),
          name: 'name',
          worker_configuration_arn: 'worker_configuration_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['creationTime'] = Hearth::TimeHelper.to_date_time(stub[:creation_time]) unless stub[:creation_time].nil?
        data['latestRevision'] = Stubs::WorkerConfigurationRevisionSummary.stub(stub[:latest_revision]) unless stub[:latest_revision].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['workerConfigurationArn'] = stub[:worker_configuration_arn] unless stub[:worker_configuration_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for WorkerConfigurationRevisionSummary
    class WorkerConfigurationRevisionSummary
      def self.default(visited=[])
        return nil if visited.include?('WorkerConfigurationRevisionSummary')
        visited = visited + ['WorkerConfigurationRevisionSummary']
        {
          creation_time: Time.now,
          description: 'description',
          revision: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::WorkerConfigurationRevisionSummary.new
        data = {}
        data['creationTime'] = Hearth::TimeHelper.to_date_time(stub[:creation_time]) unless stub[:creation_time].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['revision'] = stub[:revision] unless stub[:revision].nil?
        data
      end
    end

    # Operation Stubber for DeleteConnector
    class DeleteConnector
      def self.default(visited=[])
        {
          connector_arn: 'connector_arn',
          connector_state: 'connector_state',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['connectorArn'] = stub[:connector_arn] unless stub[:connector_arn].nil?
        data['connectorState'] = stub[:connector_state] unless stub[:connector_state].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteCustomPlugin
    class DeleteCustomPlugin
      def self.default(visited=[])
        {
          custom_plugin_arn: 'custom_plugin_arn',
          custom_plugin_state: 'custom_plugin_state',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['customPluginArn'] = stub[:custom_plugin_arn] unless stub[:custom_plugin_arn].nil?
        data['customPluginState'] = stub[:custom_plugin_state] unless stub[:custom_plugin_state].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeConnector
    class DescribeConnector
      def self.default(visited=[])
        {
          capacity: CapacityDescription.default(visited),
          connector_arn: 'connector_arn',
          connector_configuration: Map____sensitive__mapOf__string.default(visited),
          connector_description: 'connector_description',
          connector_name: 'connector_name',
          connector_state: 'connector_state',
          creation_time: Time.now,
          current_version: 'current_version',
          kafka_cluster: KafkaClusterDescription.default(visited),
          kafka_cluster_client_authentication: KafkaClusterClientAuthenticationDescription.default(visited),
          kafka_cluster_encryption_in_transit: KafkaClusterEncryptionInTransitDescription.default(visited),
          kafka_connect_version: 'kafka_connect_version',
          log_delivery: LogDeliveryDescription.default(visited),
          plugins: List____listOfPluginDescription.default(visited),
          service_execution_role_arn: 'service_execution_role_arn',
          worker_configuration: WorkerConfigurationDescription.default(visited),
          state_description: StateDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['capacity'] = Stubs::CapacityDescription.stub(stub[:capacity]) unless stub[:capacity].nil?
        data['connectorArn'] = stub[:connector_arn] unless stub[:connector_arn].nil?
        data['connectorConfiguration'] = Stubs::Map____sensitive__mapOf__string.stub(stub[:connector_configuration]) unless stub[:connector_configuration].nil?
        data['connectorDescription'] = stub[:connector_description] unless stub[:connector_description].nil?
        data['connectorName'] = stub[:connector_name] unless stub[:connector_name].nil?
        data['connectorState'] = stub[:connector_state] unless stub[:connector_state].nil?
        data['creationTime'] = Hearth::TimeHelper.to_date_time(stub[:creation_time]) unless stub[:creation_time].nil?
        data['currentVersion'] = stub[:current_version] unless stub[:current_version].nil?
        data['kafkaCluster'] = Stubs::KafkaClusterDescription.stub(stub[:kafka_cluster]) unless stub[:kafka_cluster].nil?
        data['kafkaClusterClientAuthentication'] = Stubs::KafkaClusterClientAuthenticationDescription.stub(stub[:kafka_cluster_client_authentication]) unless stub[:kafka_cluster_client_authentication].nil?
        data['kafkaClusterEncryptionInTransit'] = Stubs::KafkaClusterEncryptionInTransitDescription.stub(stub[:kafka_cluster_encryption_in_transit]) unless stub[:kafka_cluster_encryption_in_transit].nil?
        data['kafkaConnectVersion'] = stub[:kafka_connect_version] unless stub[:kafka_connect_version].nil?
        data['logDelivery'] = Stubs::LogDeliveryDescription.stub(stub[:log_delivery]) unless stub[:log_delivery].nil?
        data['plugins'] = Stubs::List____listOfPluginDescription.stub(stub[:plugins]) unless stub[:plugins].nil?
        data['serviceExecutionRoleArn'] = stub[:service_execution_role_arn] unless stub[:service_execution_role_arn].nil?
        data['workerConfiguration'] = Stubs::WorkerConfigurationDescription.stub(stub[:worker_configuration]) unless stub[:worker_configuration].nil?
        data['stateDescription'] = Stubs::StateDescription.stub(stub[:state_description]) unless stub[:state_description].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for StateDescription
    class StateDescription
      def self.default(visited=[])
        return nil if visited.include?('StateDescription')
        visited = visited + ['StateDescription']
        {
          code: 'code',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::StateDescription.new
        data = {}
        data['code'] = stub[:code] unless stub[:code].nil?
        data['message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Structure Stubber for WorkerConfigurationDescription
    class WorkerConfigurationDescription
      def self.default(visited=[])
        return nil if visited.include?('WorkerConfigurationDescription')
        visited = visited + ['WorkerConfigurationDescription']
        {
          revision: 1,
          worker_configuration_arn: 'worker_configuration_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::WorkerConfigurationDescription.new
        data = {}
        data['revision'] = stub[:revision] unless stub[:revision].nil?
        data['workerConfigurationArn'] = stub[:worker_configuration_arn] unless stub[:worker_configuration_arn].nil?
        data
      end
    end

    # List Stubber for __listOfPluginDescription
    class List____listOfPluginDescription
      def self.default(visited=[])
        return nil if visited.include?('List____listOfPluginDescription')
        visited = visited + ['List____listOfPluginDescription']
        [
          PluginDescription.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PluginDescription.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PluginDescription
    class PluginDescription
      def self.default(visited=[])
        return nil if visited.include?('PluginDescription')
        visited = visited + ['PluginDescription']
        {
          custom_plugin: CustomPluginDescription.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PluginDescription.new
        data = {}
        data['customPlugin'] = Stubs::CustomPluginDescription.stub(stub[:custom_plugin]) unless stub[:custom_plugin].nil?
        data
      end
    end

    # Structure Stubber for CustomPluginDescription
    class CustomPluginDescription
      def self.default(visited=[])
        return nil if visited.include?('CustomPluginDescription')
        visited = visited + ['CustomPluginDescription']
        {
          custom_plugin_arn: 'custom_plugin_arn',
          revision: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::CustomPluginDescription.new
        data = {}
        data['customPluginArn'] = stub[:custom_plugin_arn] unless stub[:custom_plugin_arn].nil?
        data['revision'] = stub[:revision] unless stub[:revision].nil?
        data
      end
    end

    # Structure Stubber for LogDeliveryDescription
    class LogDeliveryDescription
      def self.default(visited=[])
        return nil if visited.include?('LogDeliveryDescription')
        visited = visited + ['LogDeliveryDescription']
        {
          worker_log_delivery: WorkerLogDeliveryDescription.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LogDeliveryDescription.new
        data = {}
        data['workerLogDelivery'] = Stubs::WorkerLogDeliveryDescription.stub(stub[:worker_log_delivery]) unless stub[:worker_log_delivery].nil?
        data
      end
    end

    # Structure Stubber for WorkerLogDeliveryDescription
    class WorkerLogDeliveryDescription
      def self.default(visited=[])
        return nil if visited.include?('WorkerLogDeliveryDescription')
        visited = visited + ['WorkerLogDeliveryDescription']
        {
          cloud_watch_logs: CloudWatchLogsLogDeliveryDescription.default(visited),
          firehose: FirehoseLogDeliveryDescription.default(visited),
          s3: S3LogDeliveryDescription.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::WorkerLogDeliveryDescription.new
        data = {}
        data['cloudWatchLogs'] = Stubs::CloudWatchLogsLogDeliveryDescription.stub(stub[:cloud_watch_logs]) unless stub[:cloud_watch_logs].nil?
        data['firehose'] = Stubs::FirehoseLogDeliveryDescription.stub(stub[:firehose]) unless stub[:firehose].nil?
        data['s3'] = Stubs::S3LogDeliveryDescription.stub(stub[:s3]) unless stub[:s3].nil?
        data
      end
    end

    # Structure Stubber for S3LogDeliveryDescription
    class S3LogDeliveryDescription
      def self.default(visited=[])
        return nil if visited.include?('S3LogDeliveryDescription')
        visited = visited + ['S3LogDeliveryDescription']
        {
          bucket: 'bucket',
          enabled: false,
          prefix: 'prefix',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3LogDeliveryDescription.new
        data = {}
        data['bucket'] = stub[:bucket] unless stub[:bucket].nil?
        data['enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data['prefix'] = stub[:prefix] unless stub[:prefix].nil?
        data
      end
    end

    # Structure Stubber for FirehoseLogDeliveryDescription
    class FirehoseLogDeliveryDescription
      def self.default(visited=[])
        return nil if visited.include?('FirehoseLogDeliveryDescription')
        visited = visited + ['FirehoseLogDeliveryDescription']
        {
          delivery_stream: 'delivery_stream',
          enabled: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::FirehoseLogDeliveryDescription.new
        data = {}
        data['deliveryStream'] = stub[:delivery_stream] unless stub[:delivery_stream].nil?
        data['enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data
      end
    end

    # Structure Stubber for CloudWatchLogsLogDeliveryDescription
    class CloudWatchLogsLogDeliveryDescription
      def self.default(visited=[])
        return nil if visited.include?('CloudWatchLogsLogDeliveryDescription')
        visited = visited + ['CloudWatchLogsLogDeliveryDescription']
        {
          enabled: false,
          log_group: 'log_group',
        }
      end

      def self.stub(stub)
        stub ||= Types::CloudWatchLogsLogDeliveryDescription.new
        data = {}
        data['enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data['logGroup'] = stub[:log_group] unless stub[:log_group].nil?
        data
      end
    end

    # Structure Stubber for KafkaClusterEncryptionInTransitDescription
    class KafkaClusterEncryptionInTransitDescription
      def self.default(visited=[])
        return nil if visited.include?('KafkaClusterEncryptionInTransitDescription')
        visited = visited + ['KafkaClusterEncryptionInTransitDescription']
        {
          encryption_type: 'encryption_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::KafkaClusterEncryptionInTransitDescription.new
        data = {}
        data['encryptionType'] = stub[:encryption_type] unless stub[:encryption_type].nil?
        data
      end
    end

    # Structure Stubber for KafkaClusterClientAuthenticationDescription
    class KafkaClusterClientAuthenticationDescription
      def self.default(visited=[])
        return nil if visited.include?('KafkaClusterClientAuthenticationDescription')
        visited = visited + ['KafkaClusterClientAuthenticationDescription']
        {
          authentication_type: 'authentication_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::KafkaClusterClientAuthenticationDescription.new
        data = {}
        data['authenticationType'] = stub[:authentication_type] unless stub[:authentication_type].nil?
        data
      end
    end

    # Structure Stubber for KafkaClusterDescription
    class KafkaClusterDescription
      def self.default(visited=[])
        return nil if visited.include?('KafkaClusterDescription')
        visited = visited + ['KafkaClusterDescription']
        {
          apache_kafka_cluster: ApacheKafkaClusterDescription.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::KafkaClusterDescription.new
        data = {}
        data['apacheKafkaCluster'] = Stubs::ApacheKafkaClusterDescription.stub(stub[:apache_kafka_cluster]) unless stub[:apache_kafka_cluster].nil?
        data
      end
    end

    # Structure Stubber for ApacheKafkaClusterDescription
    class ApacheKafkaClusterDescription
      def self.default(visited=[])
        return nil if visited.include?('ApacheKafkaClusterDescription')
        visited = visited + ['ApacheKafkaClusterDescription']
        {
          bootstrap_servers: 'bootstrap_servers',
          vpc: VpcDescription.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ApacheKafkaClusterDescription.new
        data = {}
        data['bootstrapServers'] = stub[:bootstrap_servers] unless stub[:bootstrap_servers].nil?
        data['vpc'] = Stubs::VpcDescription.stub(stub[:vpc]) unless stub[:vpc].nil?
        data
      end
    end

    # Structure Stubber for VpcDescription
    class VpcDescription
      def self.default(visited=[])
        return nil if visited.include?('VpcDescription')
        visited = visited + ['VpcDescription']
        {
          security_groups: List____listOf__string.default(visited),
          subnets: List____listOf__string.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::VpcDescription.new
        data = {}
        data['securityGroups'] = Stubs::List____listOf__string.stub(stub[:security_groups]) unless stub[:security_groups].nil?
        data['subnets'] = Stubs::List____listOf__string.stub(stub[:subnets]) unless stub[:subnets].nil?
        data
      end
    end

    # List Stubber for __listOf__string
    class List____listOf__string
      def self.default(visited=[])
        return nil if visited.include?('List____listOf__string')
        visited = visited + ['List____listOf__string']
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

    # Map Stubber for __sensitive__mapOf__string
    class Map____sensitive__mapOf__string
      def self.default(visited=[])
        return nil if visited.include?('Map____sensitive__mapOf__string')
        visited = visited + ['Map____sensitive__mapOf__string']
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

    # Structure Stubber for CapacityDescription
    class CapacityDescription
      def self.default(visited=[])
        return nil if visited.include?('CapacityDescription')
        visited = visited + ['CapacityDescription']
        {
          auto_scaling: AutoScalingDescription.default(visited),
          provisioned_capacity: ProvisionedCapacityDescription.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CapacityDescription.new
        data = {}
        data['autoScaling'] = Stubs::AutoScalingDescription.stub(stub[:auto_scaling]) unless stub[:auto_scaling].nil?
        data['provisionedCapacity'] = Stubs::ProvisionedCapacityDescription.stub(stub[:provisioned_capacity]) unless stub[:provisioned_capacity].nil?
        data
      end
    end

    # Structure Stubber for ProvisionedCapacityDescription
    class ProvisionedCapacityDescription
      def self.default(visited=[])
        return nil if visited.include?('ProvisionedCapacityDescription')
        visited = visited + ['ProvisionedCapacityDescription']
        {
          mcu_count: 1,
          worker_count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ProvisionedCapacityDescription.new
        data = {}
        data['mcuCount'] = stub[:mcu_count] unless stub[:mcu_count].nil?
        data['workerCount'] = stub[:worker_count] unless stub[:worker_count].nil?
        data
      end
    end

    # Structure Stubber for AutoScalingDescription
    class AutoScalingDescription
      def self.default(visited=[])
        return nil if visited.include?('AutoScalingDescription')
        visited = visited + ['AutoScalingDescription']
        {
          max_worker_count: 1,
          mcu_count: 1,
          min_worker_count: 1,
          scale_in_policy: ScaleInPolicyDescription.default(visited),
          scale_out_policy: ScaleOutPolicyDescription.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AutoScalingDescription.new
        data = {}
        data['maxWorkerCount'] = stub[:max_worker_count] unless stub[:max_worker_count].nil?
        data['mcuCount'] = stub[:mcu_count] unless stub[:mcu_count].nil?
        data['minWorkerCount'] = stub[:min_worker_count] unless stub[:min_worker_count].nil?
        data['scaleInPolicy'] = Stubs::ScaleInPolicyDescription.stub(stub[:scale_in_policy]) unless stub[:scale_in_policy].nil?
        data['scaleOutPolicy'] = Stubs::ScaleOutPolicyDescription.stub(stub[:scale_out_policy]) unless stub[:scale_out_policy].nil?
        data
      end
    end

    # Structure Stubber for ScaleOutPolicyDescription
    class ScaleOutPolicyDescription
      def self.default(visited=[])
        return nil if visited.include?('ScaleOutPolicyDescription')
        visited = visited + ['ScaleOutPolicyDescription']
        {
          cpu_utilization_percentage: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ScaleOutPolicyDescription.new
        data = {}
        data['cpuUtilizationPercentage'] = stub[:cpu_utilization_percentage] unless stub[:cpu_utilization_percentage].nil?
        data
      end
    end

    # Structure Stubber for ScaleInPolicyDescription
    class ScaleInPolicyDescription
      def self.default(visited=[])
        return nil if visited.include?('ScaleInPolicyDescription')
        visited = visited + ['ScaleInPolicyDescription']
        {
          cpu_utilization_percentage: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ScaleInPolicyDescription.new
        data = {}
        data['cpuUtilizationPercentage'] = stub[:cpu_utilization_percentage] unless stub[:cpu_utilization_percentage].nil?
        data
      end
    end

    # Operation Stubber for DescribeCustomPlugin
    class DescribeCustomPlugin
      def self.default(visited=[])
        {
          creation_time: Time.now,
          custom_plugin_arn: 'custom_plugin_arn',
          custom_plugin_state: 'custom_plugin_state',
          description: 'description',
          latest_revision: CustomPluginRevisionSummary.default(visited),
          name: 'name',
          state_description: StateDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['creationTime'] = Hearth::TimeHelper.to_date_time(stub[:creation_time]) unless stub[:creation_time].nil?
        data['customPluginArn'] = stub[:custom_plugin_arn] unless stub[:custom_plugin_arn].nil?
        data['customPluginState'] = stub[:custom_plugin_state] unless stub[:custom_plugin_state].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['latestRevision'] = Stubs::CustomPluginRevisionSummary.stub(stub[:latest_revision]) unless stub[:latest_revision].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['stateDescription'] = Stubs::StateDescription.stub(stub[:state_description]) unless stub[:state_description].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for CustomPluginRevisionSummary
    class CustomPluginRevisionSummary
      def self.default(visited=[])
        return nil if visited.include?('CustomPluginRevisionSummary')
        visited = visited + ['CustomPluginRevisionSummary']
        {
          content_type: 'content_type',
          creation_time: Time.now,
          description: 'description',
          file_description: CustomPluginFileDescription.default(visited),
          location: CustomPluginLocationDescription.default(visited),
          revision: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::CustomPluginRevisionSummary.new
        data = {}
        data['contentType'] = stub[:content_type] unless stub[:content_type].nil?
        data['creationTime'] = Hearth::TimeHelper.to_date_time(stub[:creation_time]) unless stub[:creation_time].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['fileDescription'] = Stubs::CustomPluginFileDescription.stub(stub[:file_description]) unless stub[:file_description].nil?
        data['location'] = Stubs::CustomPluginLocationDescription.stub(stub[:location]) unless stub[:location].nil?
        data['revision'] = stub[:revision] unless stub[:revision].nil?
        data
      end
    end

    # Structure Stubber for CustomPluginLocationDescription
    class CustomPluginLocationDescription
      def self.default(visited=[])
        return nil if visited.include?('CustomPluginLocationDescription')
        visited = visited + ['CustomPluginLocationDescription']
        {
          s3_location: S3LocationDescription.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CustomPluginLocationDescription.new
        data = {}
        data['s3Location'] = Stubs::S3LocationDescription.stub(stub[:s3_location]) unless stub[:s3_location].nil?
        data
      end
    end

    # Structure Stubber for S3LocationDescription
    class S3LocationDescription
      def self.default(visited=[])
        return nil if visited.include?('S3LocationDescription')
        visited = visited + ['S3LocationDescription']
        {
          bucket_arn: 'bucket_arn',
          file_key: 'file_key',
          object_version: 'object_version',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3LocationDescription.new
        data = {}
        data['bucketArn'] = stub[:bucket_arn] unless stub[:bucket_arn].nil?
        data['fileKey'] = stub[:file_key] unless stub[:file_key].nil?
        data['objectVersion'] = stub[:object_version] unless stub[:object_version].nil?
        data
      end
    end

    # Structure Stubber for CustomPluginFileDescription
    class CustomPluginFileDescription
      def self.default(visited=[])
        return nil if visited.include?('CustomPluginFileDescription')
        visited = visited + ['CustomPluginFileDescription']
        {
          file_md5: 'file_md5',
          file_size: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::CustomPluginFileDescription.new
        data = {}
        data['fileMd5'] = stub[:file_md5] unless stub[:file_md5].nil?
        data['fileSize'] = stub[:file_size] unless stub[:file_size].nil?
        data
      end
    end

    # Operation Stubber for DescribeWorkerConfiguration
    class DescribeWorkerConfiguration
      def self.default(visited=[])
        {
          creation_time: Time.now,
          description: 'description',
          latest_revision: WorkerConfigurationRevisionDescription.default(visited),
          name: 'name',
          worker_configuration_arn: 'worker_configuration_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['creationTime'] = Hearth::TimeHelper.to_date_time(stub[:creation_time]) unless stub[:creation_time].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['latestRevision'] = Stubs::WorkerConfigurationRevisionDescription.stub(stub[:latest_revision]) unless stub[:latest_revision].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['workerConfigurationArn'] = stub[:worker_configuration_arn] unless stub[:worker_configuration_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for WorkerConfigurationRevisionDescription
    class WorkerConfigurationRevisionDescription
      def self.default(visited=[])
        return nil if visited.include?('WorkerConfigurationRevisionDescription')
        visited = visited + ['WorkerConfigurationRevisionDescription']
        {
          creation_time: Time.now,
          description: 'description',
          properties_file_content: 'properties_file_content',
          revision: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::WorkerConfigurationRevisionDescription.new
        data = {}
        data['creationTime'] = Hearth::TimeHelper.to_date_time(stub[:creation_time]) unless stub[:creation_time].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['propertiesFileContent'] = stub[:properties_file_content] unless stub[:properties_file_content].nil?
        data['revision'] = stub[:revision] unless stub[:revision].nil?
        data
      end
    end

    # Operation Stubber for ListConnectors
    class ListConnectors
      def self.default(visited=[])
        {
          connectors: List____listOfConnectorSummary.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['connectors'] = Stubs::List____listOfConnectorSummary.stub(stub[:connectors]) unless stub[:connectors].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfConnectorSummary
    class List____listOfConnectorSummary
      def self.default(visited=[])
        return nil if visited.include?('List____listOfConnectorSummary')
        visited = visited + ['List____listOfConnectorSummary']
        [
          ConnectorSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ConnectorSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ConnectorSummary
    class ConnectorSummary
      def self.default(visited=[])
        return nil if visited.include?('ConnectorSummary')
        visited = visited + ['ConnectorSummary']
        {
          capacity: CapacityDescription.default(visited),
          connector_arn: 'connector_arn',
          connector_description: 'connector_description',
          connector_name: 'connector_name',
          connector_state: 'connector_state',
          creation_time: Time.now,
          current_version: 'current_version',
          kafka_cluster: KafkaClusterDescription.default(visited),
          kafka_cluster_client_authentication: KafkaClusterClientAuthenticationDescription.default(visited),
          kafka_cluster_encryption_in_transit: KafkaClusterEncryptionInTransitDescription.default(visited),
          kafka_connect_version: 'kafka_connect_version',
          log_delivery: LogDeliveryDescription.default(visited),
          plugins: List____listOfPluginDescription.default(visited),
          service_execution_role_arn: 'service_execution_role_arn',
          worker_configuration: WorkerConfigurationDescription.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ConnectorSummary.new
        data = {}
        data['capacity'] = Stubs::CapacityDescription.stub(stub[:capacity]) unless stub[:capacity].nil?
        data['connectorArn'] = stub[:connector_arn] unless stub[:connector_arn].nil?
        data['connectorDescription'] = stub[:connector_description] unless stub[:connector_description].nil?
        data['connectorName'] = stub[:connector_name] unless stub[:connector_name].nil?
        data['connectorState'] = stub[:connector_state] unless stub[:connector_state].nil?
        data['creationTime'] = Hearth::TimeHelper.to_date_time(stub[:creation_time]) unless stub[:creation_time].nil?
        data['currentVersion'] = stub[:current_version] unless stub[:current_version].nil?
        data['kafkaCluster'] = Stubs::KafkaClusterDescription.stub(stub[:kafka_cluster]) unless stub[:kafka_cluster].nil?
        data['kafkaClusterClientAuthentication'] = Stubs::KafkaClusterClientAuthenticationDescription.stub(stub[:kafka_cluster_client_authentication]) unless stub[:kafka_cluster_client_authentication].nil?
        data['kafkaClusterEncryptionInTransit'] = Stubs::KafkaClusterEncryptionInTransitDescription.stub(stub[:kafka_cluster_encryption_in_transit]) unless stub[:kafka_cluster_encryption_in_transit].nil?
        data['kafkaConnectVersion'] = stub[:kafka_connect_version] unless stub[:kafka_connect_version].nil?
        data['logDelivery'] = Stubs::LogDeliveryDescription.stub(stub[:log_delivery]) unless stub[:log_delivery].nil?
        data['plugins'] = Stubs::List____listOfPluginDescription.stub(stub[:plugins]) unless stub[:plugins].nil?
        data['serviceExecutionRoleArn'] = stub[:service_execution_role_arn] unless stub[:service_execution_role_arn].nil?
        data['workerConfiguration'] = Stubs::WorkerConfigurationDescription.stub(stub[:worker_configuration]) unless stub[:worker_configuration].nil?
        data
      end
    end

    # Operation Stubber for ListCustomPlugins
    class ListCustomPlugins
      def self.default(visited=[])
        {
          custom_plugins: List____listOfCustomPluginSummary.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['customPlugins'] = Stubs::List____listOfCustomPluginSummary.stub(stub[:custom_plugins]) unless stub[:custom_plugins].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfCustomPluginSummary
    class List____listOfCustomPluginSummary
      def self.default(visited=[])
        return nil if visited.include?('List____listOfCustomPluginSummary')
        visited = visited + ['List____listOfCustomPluginSummary']
        [
          CustomPluginSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::CustomPluginSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CustomPluginSummary
    class CustomPluginSummary
      def self.default(visited=[])
        return nil if visited.include?('CustomPluginSummary')
        visited = visited + ['CustomPluginSummary']
        {
          creation_time: Time.now,
          custom_plugin_arn: 'custom_plugin_arn',
          custom_plugin_state: 'custom_plugin_state',
          description: 'description',
          latest_revision: CustomPluginRevisionSummary.default(visited),
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::CustomPluginSummary.new
        data = {}
        data['creationTime'] = Hearth::TimeHelper.to_date_time(stub[:creation_time]) unless stub[:creation_time].nil?
        data['customPluginArn'] = stub[:custom_plugin_arn] unless stub[:custom_plugin_arn].nil?
        data['customPluginState'] = stub[:custom_plugin_state] unless stub[:custom_plugin_state].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['latestRevision'] = Stubs::CustomPluginRevisionSummary.stub(stub[:latest_revision]) unless stub[:latest_revision].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Operation Stubber for ListWorkerConfigurations
    class ListWorkerConfigurations
      def self.default(visited=[])
        {
          next_token: 'next_token',
          worker_configurations: List____listOfWorkerConfigurationSummary.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['workerConfigurations'] = Stubs::List____listOfWorkerConfigurationSummary.stub(stub[:worker_configurations]) unless stub[:worker_configurations].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfWorkerConfigurationSummary
    class List____listOfWorkerConfigurationSummary
      def self.default(visited=[])
        return nil if visited.include?('List____listOfWorkerConfigurationSummary')
        visited = visited + ['List____listOfWorkerConfigurationSummary']
        [
          WorkerConfigurationSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::WorkerConfigurationSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for WorkerConfigurationSummary
    class WorkerConfigurationSummary
      def self.default(visited=[])
        return nil if visited.include?('WorkerConfigurationSummary')
        visited = visited + ['WorkerConfigurationSummary']
        {
          creation_time: Time.now,
          description: 'description',
          latest_revision: WorkerConfigurationRevisionSummary.default(visited),
          name: 'name',
          worker_configuration_arn: 'worker_configuration_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::WorkerConfigurationSummary.new
        data = {}
        data['creationTime'] = Hearth::TimeHelper.to_date_time(stub[:creation_time]) unless stub[:creation_time].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['latestRevision'] = Stubs::WorkerConfigurationRevisionSummary.stub(stub[:latest_revision]) unless stub[:latest_revision].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['workerConfigurationArn'] = stub[:worker_configuration_arn] unless stub[:worker_configuration_arn].nil?
        data
      end
    end

    # Operation Stubber for UpdateConnector
    class UpdateConnector
      def self.default(visited=[])
        {
          connector_arn: 'connector_arn',
          connector_state: 'connector_state',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['connectorArn'] = stub[:connector_arn] unless stub[:connector_arn].nil?
        data['connectorState'] = stub[:connector_state] unless stub[:connector_state].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
