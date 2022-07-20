# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Kafka
  module Stubs

    # Operation Stubber for BatchAssociateScramSecret
    class BatchAssociateScramSecret
      def self.default(visited=[])
        {
          cluster_arn: 'cluster_arn',
          unprocessed_scram_secrets: List____listOfUnprocessedScramSecret.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['clusterArn'] = stub[:cluster_arn] unless stub[:cluster_arn].nil?
        data['unprocessedScramSecrets'] = Stubs::List____listOfUnprocessedScramSecret.stub(stub[:unprocessed_scram_secrets]) unless stub[:unprocessed_scram_secrets].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfUnprocessedScramSecret
    class List____listOfUnprocessedScramSecret
      def self.default(visited=[])
        return nil if visited.include?('List____listOfUnprocessedScramSecret')
        visited = visited + ['List____listOfUnprocessedScramSecret']
        [
          UnprocessedScramSecret.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::UnprocessedScramSecret.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for UnprocessedScramSecret
    class UnprocessedScramSecret
      def self.default(visited=[])
        return nil if visited.include?('UnprocessedScramSecret')
        visited = visited + ['UnprocessedScramSecret']
        {
          error_code: 'error_code',
          error_message: 'error_message',
          secret_arn: 'secret_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::UnprocessedScramSecret.new
        data = {}
        data['errorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['errorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data['secretArn'] = stub[:secret_arn] unless stub[:secret_arn].nil?
        data
      end
    end

    # Operation Stubber for BatchDisassociateScramSecret
    class BatchDisassociateScramSecret
      def self.default(visited=[])
        {
          cluster_arn: 'cluster_arn',
          unprocessed_scram_secrets: List____listOfUnprocessedScramSecret.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['clusterArn'] = stub[:cluster_arn] unless stub[:cluster_arn].nil?
        data['unprocessedScramSecrets'] = Stubs::List____listOfUnprocessedScramSecret.stub(stub[:unprocessed_scram_secrets]) unless stub[:unprocessed_scram_secrets].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateCluster
    class CreateCluster
      def self.default(visited=[])
        {
          cluster_arn: 'cluster_arn',
          cluster_name: 'cluster_name',
          state: 'state',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['clusterArn'] = stub[:cluster_arn] unless stub[:cluster_arn].nil?
        data['clusterName'] = stub[:cluster_name] unless stub[:cluster_name].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateClusterV2
    class CreateClusterV2
      def self.default(visited=[])
        {
          cluster_arn: 'cluster_arn',
          cluster_name: 'cluster_name',
          state: 'state',
          cluster_type: 'cluster_type',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['clusterArn'] = stub[:cluster_arn] unless stub[:cluster_arn].nil?
        data['clusterName'] = stub[:cluster_name] unless stub[:cluster_name].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data['clusterType'] = stub[:cluster_type] unless stub[:cluster_type].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateConfiguration
    class CreateConfiguration
      def self.default(visited=[])
        {
          arn: 'arn',
          creation_time: Time.now,
          latest_revision: ConfigurationRevision.default(visited),
          name: 'name',
          state: 'state',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['creationTime'] = Hearth::TimeHelper.to_date_time(stub[:creation_time]) unless stub[:creation_time].nil?
        data['latestRevision'] = Stubs::ConfigurationRevision.stub(stub[:latest_revision]) unless stub[:latest_revision].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ConfigurationRevision
    class ConfigurationRevision
      def self.default(visited=[])
        return nil if visited.include?('ConfigurationRevision')
        visited = visited + ['ConfigurationRevision']
        {
          creation_time: Time.now,
          description: 'description',
          revision: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ConfigurationRevision.new
        data = {}
        data['creationTime'] = Hearth::TimeHelper.to_date_time(stub[:creation_time]) unless stub[:creation_time].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['revision'] = stub[:revision] unless stub[:revision].nil?
        data
      end
    end

    # Operation Stubber for DeleteCluster
    class DeleteCluster
      def self.default(visited=[])
        {
          cluster_arn: 'cluster_arn',
          state: 'state',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['clusterArn'] = stub[:cluster_arn] unless stub[:cluster_arn].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteConfiguration
    class DeleteConfiguration
      def self.default(visited=[])
        {
          arn: 'arn',
          state: 'state',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeCluster
    class DescribeCluster
      def self.default(visited=[])
        {
          cluster_info: ClusterInfo.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['clusterInfo'] = Stubs::ClusterInfo.stub(stub[:cluster_info]) unless stub[:cluster_info].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ClusterInfo
    class ClusterInfo
      def self.default(visited=[])
        return nil if visited.include?('ClusterInfo')
        visited = visited + ['ClusterInfo']
        {
          active_operation_arn: 'active_operation_arn',
          broker_node_group_info: BrokerNodeGroupInfo.default(visited),
          client_authentication: ClientAuthentication.default(visited),
          cluster_arn: 'cluster_arn',
          cluster_name: 'cluster_name',
          creation_time: Time.now,
          current_broker_software_info: BrokerSoftwareInfo.default(visited),
          current_version: 'current_version',
          encryption_info: EncryptionInfo.default(visited),
          enhanced_monitoring: 'enhanced_monitoring',
          open_monitoring: OpenMonitoring.default(visited),
          logging_info: LoggingInfo.default(visited),
          number_of_broker_nodes: 1,
          state: 'state',
          state_info: StateInfo.default(visited),
          tags: Map____mapOf__string.default(visited),
          zookeeper_connect_string: 'zookeeper_connect_string',
          zookeeper_connect_string_tls: 'zookeeper_connect_string_tls',
        }
      end

      def self.stub(stub)
        stub ||= Types::ClusterInfo.new
        data = {}
        data['activeOperationArn'] = stub[:active_operation_arn] unless stub[:active_operation_arn].nil?
        data['brokerNodeGroupInfo'] = Stubs::BrokerNodeGroupInfo.stub(stub[:broker_node_group_info]) unless stub[:broker_node_group_info].nil?
        data['clientAuthentication'] = Stubs::ClientAuthentication.stub(stub[:client_authentication]) unless stub[:client_authentication].nil?
        data['clusterArn'] = stub[:cluster_arn] unless stub[:cluster_arn].nil?
        data['clusterName'] = stub[:cluster_name] unless stub[:cluster_name].nil?
        data['creationTime'] = Hearth::TimeHelper.to_date_time(stub[:creation_time]) unless stub[:creation_time].nil?
        data['currentBrokerSoftwareInfo'] = Stubs::BrokerSoftwareInfo.stub(stub[:current_broker_software_info]) unless stub[:current_broker_software_info].nil?
        data['currentVersion'] = stub[:current_version] unless stub[:current_version].nil?
        data['encryptionInfo'] = Stubs::EncryptionInfo.stub(stub[:encryption_info]) unless stub[:encryption_info].nil?
        data['enhancedMonitoring'] = stub[:enhanced_monitoring] unless stub[:enhanced_monitoring].nil?
        data['openMonitoring'] = Stubs::OpenMonitoring.stub(stub[:open_monitoring]) unless stub[:open_monitoring].nil?
        data['loggingInfo'] = Stubs::LoggingInfo.stub(stub[:logging_info]) unless stub[:logging_info].nil?
        data['numberOfBrokerNodes'] = stub[:number_of_broker_nodes] unless stub[:number_of_broker_nodes].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data['stateInfo'] = Stubs::StateInfo.stub(stub[:state_info]) unless stub[:state_info].nil?
        data['tags'] = Stubs::Map____mapOf__string.stub(stub[:tags]) unless stub[:tags].nil?
        data['zookeeperConnectString'] = stub[:zookeeper_connect_string] unless stub[:zookeeper_connect_string].nil?
        data['zookeeperConnectStringTls'] = stub[:zookeeper_connect_string_tls] unless stub[:zookeeper_connect_string_tls].nil?
        data
      end
    end

    # Map Stubber for __mapOf__string
    class Map____mapOf__string
      def self.default(visited=[])
        return nil if visited.include?('Map____mapOf__string')
        visited = visited + ['Map____mapOf__string']
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

    # Structure Stubber for StateInfo
    class StateInfo
      def self.default(visited=[])
        return nil if visited.include?('StateInfo')
        visited = visited + ['StateInfo']
        {
          code: 'code',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::StateInfo.new
        data = {}
        data['code'] = stub[:code] unless stub[:code].nil?
        data['message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Structure Stubber for LoggingInfo
    class LoggingInfo
      def self.default(visited=[])
        return nil if visited.include?('LoggingInfo')
        visited = visited + ['LoggingInfo']
        {
          broker_logs: BrokerLogs.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LoggingInfo.new
        data = {}
        data['brokerLogs'] = Stubs::BrokerLogs.stub(stub[:broker_logs]) unless stub[:broker_logs].nil?
        data
      end
    end

    # Structure Stubber for BrokerLogs
    class BrokerLogs
      def self.default(visited=[])
        return nil if visited.include?('BrokerLogs')
        visited = visited + ['BrokerLogs']
        {
          cloud_watch_logs: CloudWatchLogs.default(visited),
          firehose: Firehose.default(visited),
          s3: S3.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BrokerLogs.new
        data = {}
        data['cloudWatchLogs'] = Stubs::CloudWatchLogs.stub(stub[:cloud_watch_logs]) unless stub[:cloud_watch_logs].nil?
        data['firehose'] = Stubs::Firehose.stub(stub[:firehose]) unless stub[:firehose].nil?
        data['s3'] = Stubs::S3.stub(stub[:s3]) unless stub[:s3].nil?
        data
      end
    end

    # Structure Stubber for S3
    class S3
      def self.default(visited=[])
        return nil if visited.include?('S3')
        visited = visited + ['S3']
        {
          bucket: 'bucket',
          enabled: false,
          prefix: 'prefix',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3.new
        data = {}
        data['bucket'] = stub[:bucket] unless stub[:bucket].nil?
        data['enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data['prefix'] = stub[:prefix] unless stub[:prefix].nil?
        data
      end
    end

    # Structure Stubber for Firehose
    class Firehose
      def self.default(visited=[])
        return nil if visited.include?('Firehose')
        visited = visited + ['Firehose']
        {
          delivery_stream: 'delivery_stream',
          enabled: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::Firehose.new
        data = {}
        data['deliveryStream'] = stub[:delivery_stream] unless stub[:delivery_stream].nil?
        data['enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data
      end
    end

    # Structure Stubber for CloudWatchLogs
    class CloudWatchLogs
      def self.default(visited=[])
        return nil if visited.include?('CloudWatchLogs')
        visited = visited + ['CloudWatchLogs']
        {
          enabled: false,
          log_group: 'log_group',
        }
      end

      def self.stub(stub)
        stub ||= Types::CloudWatchLogs.new
        data = {}
        data['enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data['logGroup'] = stub[:log_group] unless stub[:log_group].nil?
        data
      end
    end

    # Structure Stubber for OpenMonitoring
    class OpenMonitoring
      def self.default(visited=[])
        return nil if visited.include?('OpenMonitoring')
        visited = visited + ['OpenMonitoring']
        {
          prometheus: Prometheus.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::OpenMonitoring.new
        data = {}
        data['prometheus'] = Stubs::Prometheus.stub(stub[:prometheus]) unless stub[:prometheus].nil?
        data
      end
    end

    # Structure Stubber for Prometheus
    class Prometheus
      def self.default(visited=[])
        return nil if visited.include?('Prometheus')
        visited = visited + ['Prometheus']
        {
          jmx_exporter: JmxExporter.default(visited),
          node_exporter: NodeExporter.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Prometheus.new
        data = {}
        data['jmxExporter'] = Stubs::JmxExporter.stub(stub[:jmx_exporter]) unless stub[:jmx_exporter].nil?
        data['nodeExporter'] = Stubs::NodeExporter.stub(stub[:node_exporter]) unless stub[:node_exporter].nil?
        data
      end
    end

    # Structure Stubber for NodeExporter
    class NodeExporter
      def self.default(visited=[])
        return nil if visited.include?('NodeExporter')
        visited = visited + ['NodeExporter']
        {
          enabled_in_broker: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::NodeExporter.new
        data = {}
        data['enabledInBroker'] = stub[:enabled_in_broker] unless stub[:enabled_in_broker].nil?
        data
      end
    end

    # Structure Stubber for JmxExporter
    class JmxExporter
      def self.default(visited=[])
        return nil if visited.include?('JmxExporter')
        visited = visited + ['JmxExporter']
        {
          enabled_in_broker: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::JmxExporter.new
        data = {}
        data['enabledInBroker'] = stub[:enabled_in_broker] unless stub[:enabled_in_broker].nil?
        data
      end
    end

    # Structure Stubber for EncryptionInfo
    class EncryptionInfo
      def self.default(visited=[])
        return nil if visited.include?('EncryptionInfo')
        visited = visited + ['EncryptionInfo']
        {
          encryption_at_rest: EncryptionAtRest.default(visited),
          encryption_in_transit: EncryptionInTransit.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::EncryptionInfo.new
        data = {}
        data['encryptionAtRest'] = Stubs::EncryptionAtRest.stub(stub[:encryption_at_rest]) unless stub[:encryption_at_rest].nil?
        data['encryptionInTransit'] = Stubs::EncryptionInTransit.stub(stub[:encryption_in_transit]) unless stub[:encryption_in_transit].nil?
        data
      end
    end

    # Structure Stubber for EncryptionInTransit
    class EncryptionInTransit
      def self.default(visited=[])
        return nil if visited.include?('EncryptionInTransit')
        visited = visited + ['EncryptionInTransit']
        {
          client_broker: 'client_broker',
          in_cluster: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::EncryptionInTransit.new
        data = {}
        data['clientBroker'] = stub[:client_broker] unless stub[:client_broker].nil?
        data['inCluster'] = stub[:in_cluster] unless stub[:in_cluster].nil?
        data
      end
    end

    # Structure Stubber for EncryptionAtRest
    class EncryptionAtRest
      def self.default(visited=[])
        return nil if visited.include?('EncryptionAtRest')
        visited = visited + ['EncryptionAtRest']
        {
          data_volume_kms_key_id: 'data_volume_kms_key_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::EncryptionAtRest.new
        data = {}
        data['dataVolumeKMSKeyId'] = stub[:data_volume_kms_key_id] unless stub[:data_volume_kms_key_id].nil?
        data
      end
    end

    # Structure Stubber for BrokerSoftwareInfo
    class BrokerSoftwareInfo
      def self.default(visited=[])
        return nil if visited.include?('BrokerSoftwareInfo')
        visited = visited + ['BrokerSoftwareInfo']
        {
          configuration_arn: 'configuration_arn',
          configuration_revision: 1,
          kafka_version: 'kafka_version',
        }
      end

      def self.stub(stub)
        stub ||= Types::BrokerSoftwareInfo.new
        data = {}
        data['configurationArn'] = stub[:configuration_arn] unless stub[:configuration_arn].nil?
        data['configurationRevision'] = stub[:configuration_revision] unless stub[:configuration_revision].nil?
        data['kafkaVersion'] = stub[:kafka_version] unless stub[:kafka_version].nil?
        data
      end
    end

    # Structure Stubber for ClientAuthentication
    class ClientAuthentication
      def self.default(visited=[])
        return nil if visited.include?('ClientAuthentication')
        visited = visited + ['ClientAuthentication']
        {
          sasl: Sasl.default(visited),
          tls: Tls.default(visited),
          unauthenticated: Unauthenticated.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ClientAuthentication.new
        data = {}
        data['sasl'] = Stubs::Sasl.stub(stub[:sasl]) unless stub[:sasl].nil?
        data['tls'] = Stubs::Tls.stub(stub[:tls]) unless stub[:tls].nil?
        data['unauthenticated'] = Stubs::Unauthenticated.stub(stub[:unauthenticated]) unless stub[:unauthenticated].nil?
        data
      end
    end

    # Structure Stubber for Unauthenticated
    class Unauthenticated
      def self.default(visited=[])
        return nil if visited.include?('Unauthenticated')
        visited = visited + ['Unauthenticated']
        {
          enabled: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::Unauthenticated.new
        data = {}
        data['enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data
      end
    end

    # Structure Stubber for Tls
    class Tls
      def self.default(visited=[])
        return nil if visited.include?('Tls')
        visited = visited + ['Tls']
        {
          certificate_authority_arn_list: List____listOf__string.default(visited),
          enabled: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::Tls.new
        data = {}
        data['certificateAuthorityArnList'] = Stubs::List____listOf__string.stub(stub[:certificate_authority_arn_list]) unless stub[:certificate_authority_arn_list].nil?
        data['enabled'] = stub[:enabled] unless stub[:enabled].nil?
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

    # Structure Stubber for Sasl
    class Sasl
      def self.default(visited=[])
        return nil if visited.include?('Sasl')
        visited = visited + ['Sasl']
        {
          scram: Scram.default(visited),
          iam: Iam.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Sasl.new
        data = {}
        data['scram'] = Stubs::Scram.stub(stub[:scram]) unless stub[:scram].nil?
        data['iam'] = Stubs::Iam.stub(stub[:iam]) unless stub[:iam].nil?
        data
      end
    end

    # Structure Stubber for Iam
    class Iam
      def self.default(visited=[])
        return nil if visited.include?('Iam')
        visited = visited + ['Iam']
        {
          enabled: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::Iam.new
        data = {}
        data['enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data
      end
    end

    # Structure Stubber for Scram
    class Scram
      def self.default(visited=[])
        return nil if visited.include?('Scram')
        visited = visited + ['Scram']
        {
          enabled: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::Scram.new
        data = {}
        data['enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data
      end
    end

    # Structure Stubber for BrokerNodeGroupInfo
    class BrokerNodeGroupInfo
      def self.default(visited=[])
        return nil if visited.include?('BrokerNodeGroupInfo')
        visited = visited + ['BrokerNodeGroupInfo']
        {
          broker_az_distribution: 'broker_az_distribution',
          client_subnets: List____listOf__string.default(visited),
          instance_type: 'instance_type',
          security_groups: List____listOf__string.default(visited),
          storage_info: StorageInfo.default(visited),
          connectivity_info: ConnectivityInfo.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BrokerNodeGroupInfo.new
        data = {}
        data['brokerAZDistribution'] = stub[:broker_az_distribution] unless stub[:broker_az_distribution].nil?
        data['clientSubnets'] = Stubs::List____listOf__string.stub(stub[:client_subnets]) unless stub[:client_subnets].nil?
        data['instanceType'] = stub[:instance_type] unless stub[:instance_type].nil?
        data['securityGroups'] = Stubs::List____listOf__string.stub(stub[:security_groups]) unless stub[:security_groups].nil?
        data['storageInfo'] = Stubs::StorageInfo.stub(stub[:storage_info]) unless stub[:storage_info].nil?
        data['connectivityInfo'] = Stubs::ConnectivityInfo.stub(stub[:connectivity_info]) unless stub[:connectivity_info].nil?
        data
      end
    end

    # Structure Stubber for ConnectivityInfo
    class ConnectivityInfo
      def self.default(visited=[])
        return nil if visited.include?('ConnectivityInfo')
        visited = visited + ['ConnectivityInfo']
        {
          public_access: PublicAccess.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ConnectivityInfo.new
        data = {}
        data['publicAccess'] = Stubs::PublicAccess.stub(stub[:public_access]) unless stub[:public_access].nil?
        data
      end
    end

    # Structure Stubber for PublicAccess
    class PublicAccess
      def self.default(visited=[])
        return nil if visited.include?('PublicAccess')
        visited = visited + ['PublicAccess']
        {
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::PublicAccess.new
        data = {}
        data['type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Structure Stubber for StorageInfo
    class StorageInfo
      def self.default(visited=[])
        return nil if visited.include?('StorageInfo')
        visited = visited + ['StorageInfo']
        {
          ebs_storage_info: EBSStorageInfo.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::StorageInfo.new
        data = {}
        data['ebsStorageInfo'] = Stubs::EBSStorageInfo.stub(stub[:ebs_storage_info]) unless stub[:ebs_storage_info].nil?
        data
      end
    end

    # Structure Stubber for EBSStorageInfo
    class EBSStorageInfo
      def self.default(visited=[])
        return nil if visited.include?('EBSStorageInfo')
        visited = visited + ['EBSStorageInfo']
        {
          provisioned_throughput: ProvisionedThroughput.default(visited),
          volume_size: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::EBSStorageInfo.new
        data = {}
        data['provisionedThroughput'] = Stubs::ProvisionedThroughput.stub(stub[:provisioned_throughput]) unless stub[:provisioned_throughput].nil?
        data['volumeSize'] = stub[:volume_size] unless stub[:volume_size].nil?
        data
      end
    end

    # Structure Stubber for ProvisionedThroughput
    class ProvisionedThroughput
      def self.default(visited=[])
        return nil if visited.include?('ProvisionedThroughput')
        visited = visited + ['ProvisionedThroughput']
        {
          enabled: false,
          volume_throughput: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ProvisionedThroughput.new
        data = {}
        data['enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data['volumeThroughput'] = stub[:volume_throughput] unless stub[:volume_throughput].nil?
        data
      end
    end

    # Operation Stubber for DescribeClusterOperation
    class DescribeClusterOperation
      def self.default(visited=[])
        {
          cluster_operation_info: ClusterOperationInfo.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['clusterOperationInfo'] = Stubs::ClusterOperationInfo.stub(stub[:cluster_operation_info]) unless stub[:cluster_operation_info].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ClusterOperationInfo
    class ClusterOperationInfo
      def self.default(visited=[])
        return nil if visited.include?('ClusterOperationInfo')
        visited = visited + ['ClusterOperationInfo']
        {
          client_request_id: 'client_request_id',
          cluster_arn: 'cluster_arn',
          creation_time: Time.now,
          end_time: Time.now,
          error_info: ErrorInfo.default(visited),
          operation_arn: 'operation_arn',
          operation_state: 'operation_state',
          operation_steps: List____listOfClusterOperationStep.default(visited),
          operation_type: 'operation_type',
          source_cluster_info: MutableClusterInfo.default(visited),
          target_cluster_info: MutableClusterInfo.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ClusterOperationInfo.new
        data = {}
        data['clientRequestId'] = stub[:client_request_id] unless stub[:client_request_id].nil?
        data['clusterArn'] = stub[:cluster_arn] unless stub[:cluster_arn].nil?
        data['creationTime'] = Hearth::TimeHelper.to_date_time(stub[:creation_time]) unless stub[:creation_time].nil?
        data['endTime'] = Hearth::TimeHelper.to_date_time(stub[:end_time]) unless stub[:end_time].nil?
        data['errorInfo'] = Stubs::ErrorInfo.stub(stub[:error_info]) unless stub[:error_info].nil?
        data['operationArn'] = stub[:operation_arn] unless stub[:operation_arn].nil?
        data['operationState'] = stub[:operation_state] unless stub[:operation_state].nil?
        data['operationSteps'] = Stubs::List____listOfClusterOperationStep.stub(stub[:operation_steps]) unless stub[:operation_steps].nil?
        data['operationType'] = stub[:operation_type] unless stub[:operation_type].nil?
        data['sourceClusterInfo'] = Stubs::MutableClusterInfo.stub(stub[:source_cluster_info]) unless stub[:source_cluster_info].nil?
        data['targetClusterInfo'] = Stubs::MutableClusterInfo.stub(stub[:target_cluster_info]) unless stub[:target_cluster_info].nil?
        data
      end
    end

    # Structure Stubber for MutableClusterInfo
    class MutableClusterInfo
      def self.default(visited=[])
        return nil if visited.include?('MutableClusterInfo')
        visited = visited + ['MutableClusterInfo']
        {
          broker_ebs_volume_info: List____listOfBrokerEBSVolumeInfo.default(visited),
          configuration_info: ConfigurationInfo.default(visited),
          number_of_broker_nodes: 1,
          enhanced_monitoring: 'enhanced_monitoring',
          open_monitoring: OpenMonitoring.default(visited),
          kafka_version: 'kafka_version',
          logging_info: LoggingInfo.default(visited),
          instance_type: 'instance_type',
          client_authentication: ClientAuthentication.default(visited),
          encryption_info: EncryptionInfo.default(visited),
          connectivity_info: ConnectivityInfo.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MutableClusterInfo.new
        data = {}
        data['brokerEBSVolumeInfo'] = Stubs::List____listOfBrokerEBSVolumeInfo.stub(stub[:broker_ebs_volume_info]) unless stub[:broker_ebs_volume_info].nil?
        data['configurationInfo'] = Stubs::ConfigurationInfo.stub(stub[:configuration_info]) unless stub[:configuration_info].nil?
        data['numberOfBrokerNodes'] = stub[:number_of_broker_nodes] unless stub[:number_of_broker_nodes].nil?
        data['enhancedMonitoring'] = stub[:enhanced_monitoring] unless stub[:enhanced_monitoring].nil?
        data['openMonitoring'] = Stubs::OpenMonitoring.stub(stub[:open_monitoring]) unless stub[:open_monitoring].nil?
        data['kafkaVersion'] = stub[:kafka_version] unless stub[:kafka_version].nil?
        data['loggingInfo'] = Stubs::LoggingInfo.stub(stub[:logging_info]) unless stub[:logging_info].nil?
        data['instanceType'] = stub[:instance_type] unless stub[:instance_type].nil?
        data['clientAuthentication'] = Stubs::ClientAuthentication.stub(stub[:client_authentication]) unless stub[:client_authentication].nil?
        data['encryptionInfo'] = Stubs::EncryptionInfo.stub(stub[:encryption_info]) unless stub[:encryption_info].nil?
        data['connectivityInfo'] = Stubs::ConnectivityInfo.stub(stub[:connectivity_info]) unless stub[:connectivity_info].nil?
        data
      end
    end

    # Structure Stubber for ConfigurationInfo
    class ConfigurationInfo
      def self.default(visited=[])
        return nil if visited.include?('ConfigurationInfo')
        visited = visited + ['ConfigurationInfo']
        {
          arn: 'arn',
          revision: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ConfigurationInfo.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['revision'] = stub[:revision] unless stub[:revision].nil?
        data
      end
    end

    # List Stubber for __listOfBrokerEBSVolumeInfo
    class List____listOfBrokerEBSVolumeInfo
      def self.default(visited=[])
        return nil if visited.include?('List____listOfBrokerEBSVolumeInfo')
        visited = visited + ['List____listOfBrokerEBSVolumeInfo']
        [
          BrokerEBSVolumeInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::BrokerEBSVolumeInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BrokerEBSVolumeInfo
    class BrokerEBSVolumeInfo
      def self.default(visited=[])
        return nil if visited.include?('BrokerEBSVolumeInfo')
        visited = visited + ['BrokerEBSVolumeInfo']
        {
          kafka_broker_node_id: 'kafka_broker_node_id',
          provisioned_throughput: ProvisionedThroughput.default(visited),
          volume_size_gb: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::BrokerEBSVolumeInfo.new
        data = {}
        data['kafkaBrokerNodeId'] = stub[:kafka_broker_node_id] unless stub[:kafka_broker_node_id].nil?
        data['provisionedThroughput'] = Stubs::ProvisionedThroughput.stub(stub[:provisioned_throughput]) unless stub[:provisioned_throughput].nil?
        data['volumeSizeGB'] = stub[:volume_size_gb] unless stub[:volume_size_gb].nil?
        data
      end
    end

    # List Stubber for __listOfClusterOperationStep
    class List____listOfClusterOperationStep
      def self.default(visited=[])
        return nil if visited.include?('List____listOfClusterOperationStep')
        visited = visited + ['List____listOfClusterOperationStep']
        [
          ClusterOperationStep.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ClusterOperationStep.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ClusterOperationStep
    class ClusterOperationStep
      def self.default(visited=[])
        return nil if visited.include?('ClusterOperationStep')
        visited = visited + ['ClusterOperationStep']
        {
          step_info: ClusterOperationStepInfo.default(visited),
          step_name: 'step_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::ClusterOperationStep.new
        data = {}
        data['stepInfo'] = Stubs::ClusterOperationStepInfo.stub(stub[:step_info]) unless stub[:step_info].nil?
        data['stepName'] = stub[:step_name] unless stub[:step_name].nil?
        data
      end
    end

    # Structure Stubber for ClusterOperationStepInfo
    class ClusterOperationStepInfo
      def self.default(visited=[])
        return nil if visited.include?('ClusterOperationStepInfo')
        visited = visited + ['ClusterOperationStepInfo']
        {
          step_status: 'step_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::ClusterOperationStepInfo.new
        data = {}
        data['stepStatus'] = stub[:step_status] unless stub[:step_status].nil?
        data
      end
    end

    # Structure Stubber for ErrorInfo
    class ErrorInfo
      def self.default(visited=[])
        return nil if visited.include?('ErrorInfo')
        visited = visited + ['ErrorInfo']
        {
          error_code: 'error_code',
          error_string: 'error_string',
        }
      end

      def self.stub(stub)
        stub ||= Types::ErrorInfo.new
        data = {}
        data['errorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['errorString'] = stub[:error_string] unless stub[:error_string].nil?
        data
      end
    end

    # Operation Stubber for DescribeClusterV2
    class DescribeClusterV2
      def self.default(visited=[])
        {
          cluster_info: Cluster.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['clusterInfo'] = Stubs::Cluster.stub(stub[:cluster_info]) unless stub[:cluster_info].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Cluster
    class Cluster
      def self.default(visited=[])
        return nil if visited.include?('Cluster')
        visited = visited + ['Cluster']
        {
          active_operation_arn: 'active_operation_arn',
          cluster_type: 'cluster_type',
          cluster_arn: 'cluster_arn',
          cluster_name: 'cluster_name',
          creation_time: Time.now,
          current_version: 'current_version',
          state: 'state',
          state_info: StateInfo.default(visited),
          tags: Map____mapOf__string.default(visited),
          provisioned: Provisioned.default(visited),
          serverless: Serverless.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Cluster.new
        data = {}
        data['activeOperationArn'] = stub[:active_operation_arn] unless stub[:active_operation_arn].nil?
        data['clusterType'] = stub[:cluster_type] unless stub[:cluster_type].nil?
        data['clusterArn'] = stub[:cluster_arn] unless stub[:cluster_arn].nil?
        data['clusterName'] = stub[:cluster_name] unless stub[:cluster_name].nil?
        data['creationTime'] = Hearth::TimeHelper.to_date_time(stub[:creation_time]) unless stub[:creation_time].nil?
        data['currentVersion'] = stub[:current_version] unless stub[:current_version].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data['stateInfo'] = Stubs::StateInfo.stub(stub[:state_info]) unless stub[:state_info].nil?
        data['tags'] = Stubs::Map____mapOf__string.stub(stub[:tags]) unless stub[:tags].nil?
        data['provisioned'] = Stubs::Provisioned.stub(stub[:provisioned]) unless stub[:provisioned].nil?
        data['serverless'] = Stubs::Serverless.stub(stub[:serverless]) unless stub[:serverless].nil?
        data
      end
    end

    # Structure Stubber for Serverless
    class Serverless
      def self.default(visited=[])
        return nil if visited.include?('Serverless')
        visited = visited + ['Serverless']
        {
          vpc_configs: List____listOfVpcConfig.default(visited),
          client_authentication: ServerlessClientAuthentication.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Serverless.new
        data = {}
        data['vpcConfigs'] = Stubs::List____listOfVpcConfig.stub(stub[:vpc_configs]) unless stub[:vpc_configs].nil?
        data['clientAuthentication'] = Stubs::ServerlessClientAuthentication.stub(stub[:client_authentication]) unless stub[:client_authentication].nil?
        data
      end
    end

    # Structure Stubber for ServerlessClientAuthentication
    class ServerlessClientAuthentication
      def self.default(visited=[])
        return nil if visited.include?('ServerlessClientAuthentication')
        visited = visited + ['ServerlessClientAuthentication']
        {
          sasl: ServerlessSasl.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ServerlessClientAuthentication.new
        data = {}
        data['sasl'] = Stubs::ServerlessSasl.stub(stub[:sasl]) unless stub[:sasl].nil?
        data
      end
    end

    # Structure Stubber for ServerlessSasl
    class ServerlessSasl
      def self.default(visited=[])
        return nil if visited.include?('ServerlessSasl')
        visited = visited + ['ServerlessSasl']
        {
          iam: Iam.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ServerlessSasl.new
        data = {}
        data['iam'] = Stubs::Iam.stub(stub[:iam]) unless stub[:iam].nil?
        data
      end
    end

    # List Stubber for __listOfVpcConfig
    class List____listOfVpcConfig
      def self.default(visited=[])
        return nil if visited.include?('List____listOfVpcConfig')
        visited = visited + ['List____listOfVpcConfig']
        [
          VpcConfig.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::VpcConfig.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for VpcConfig
    class VpcConfig
      def self.default(visited=[])
        return nil if visited.include?('VpcConfig')
        visited = visited + ['VpcConfig']
        {
          subnet_ids: List____listOf__string.default(visited),
          security_group_ids: List____listOf__string.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::VpcConfig.new
        data = {}
        data['subnetIds'] = Stubs::List____listOf__string.stub(stub[:subnet_ids]) unless stub[:subnet_ids].nil?
        data['securityGroupIds'] = Stubs::List____listOf__string.stub(stub[:security_group_ids]) unless stub[:security_group_ids].nil?
        data
      end
    end

    # Structure Stubber for Provisioned
    class Provisioned
      def self.default(visited=[])
        return nil if visited.include?('Provisioned')
        visited = visited + ['Provisioned']
        {
          broker_node_group_info: BrokerNodeGroupInfo.default(visited),
          current_broker_software_info: BrokerSoftwareInfo.default(visited),
          client_authentication: ClientAuthentication.default(visited),
          encryption_info: EncryptionInfo.default(visited),
          enhanced_monitoring: 'enhanced_monitoring',
          open_monitoring: OpenMonitoringInfo.default(visited),
          logging_info: LoggingInfo.default(visited),
          number_of_broker_nodes: 1,
          zookeeper_connect_string: 'zookeeper_connect_string',
          zookeeper_connect_string_tls: 'zookeeper_connect_string_tls',
        }
      end

      def self.stub(stub)
        stub ||= Types::Provisioned.new
        data = {}
        data['brokerNodeGroupInfo'] = Stubs::BrokerNodeGroupInfo.stub(stub[:broker_node_group_info]) unless stub[:broker_node_group_info].nil?
        data['currentBrokerSoftwareInfo'] = Stubs::BrokerSoftwareInfo.stub(stub[:current_broker_software_info]) unless stub[:current_broker_software_info].nil?
        data['clientAuthentication'] = Stubs::ClientAuthentication.stub(stub[:client_authentication]) unless stub[:client_authentication].nil?
        data['encryptionInfo'] = Stubs::EncryptionInfo.stub(stub[:encryption_info]) unless stub[:encryption_info].nil?
        data['enhancedMonitoring'] = stub[:enhanced_monitoring] unless stub[:enhanced_monitoring].nil?
        data['openMonitoring'] = Stubs::OpenMonitoringInfo.stub(stub[:open_monitoring]) unless stub[:open_monitoring].nil?
        data['loggingInfo'] = Stubs::LoggingInfo.stub(stub[:logging_info]) unless stub[:logging_info].nil?
        data['numberOfBrokerNodes'] = stub[:number_of_broker_nodes] unless stub[:number_of_broker_nodes].nil?
        data['zookeeperConnectString'] = stub[:zookeeper_connect_string] unless stub[:zookeeper_connect_string].nil?
        data['zookeeperConnectStringTls'] = stub[:zookeeper_connect_string_tls] unless stub[:zookeeper_connect_string_tls].nil?
        data
      end
    end

    # Structure Stubber for OpenMonitoringInfo
    class OpenMonitoringInfo
      def self.default(visited=[])
        return nil if visited.include?('OpenMonitoringInfo')
        visited = visited + ['OpenMonitoringInfo']
        {
          prometheus: PrometheusInfo.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::OpenMonitoringInfo.new
        data = {}
        data['prometheus'] = Stubs::PrometheusInfo.stub(stub[:prometheus]) unless stub[:prometheus].nil?
        data
      end
    end

    # Structure Stubber for PrometheusInfo
    class PrometheusInfo
      def self.default(visited=[])
        return nil if visited.include?('PrometheusInfo')
        visited = visited + ['PrometheusInfo']
        {
          jmx_exporter: JmxExporterInfo.default(visited),
          node_exporter: NodeExporterInfo.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PrometheusInfo.new
        data = {}
        data['jmxExporter'] = Stubs::JmxExporterInfo.stub(stub[:jmx_exporter]) unless stub[:jmx_exporter].nil?
        data['nodeExporter'] = Stubs::NodeExporterInfo.stub(stub[:node_exporter]) unless stub[:node_exporter].nil?
        data
      end
    end

    # Structure Stubber for NodeExporterInfo
    class NodeExporterInfo
      def self.default(visited=[])
        return nil if visited.include?('NodeExporterInfo')
        visited = visited + ['NodeExporterInfo']
        {
          enabled_in_broker: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::NodeExporterInfo.new
        data = {}
        data['enabledInBroker'] = stub[:enabled_in_broker] unless stub[:enabled_in_broker].nil?
        data
      end
    end

    # Structure Stubber for JmxExporterInfo
    class JmxExporterInfo
      def self.default(visited=[])
        return nil if visited.include?('JmxExporterInfo')
        visited = visited + ['JmxExporterInfo']
        {
          enabled_in_broker: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::JmxExporterInfo.new
        data = {}
        data['enabledInBroker'] = stub[:enabled_in_broker] unless stub[:enabled_in_broker].nil?
        data
      end
    end

    # Operation Stubber for DescribeConfiguration
    class DescribeConfiguration
      def self.default(visited=[])
        {
          arn: 'arn',
          creation_time: Time.now,
          description: 'description',
          kafka_versions: List____listOf__string.default(visited),
          latest_revision: ConfigurationRevision.default(visited),
          name: 'name',
          state: 'state',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['creationTime'] = Hearth::TimeHelper.to_date_time(stub[:creation_time]) unless stub[:creation_time].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['kafkaVersions'] = Stubs::List____listOf__string.stub(stub[:kafka_versions]) unless stub[:kafka_versions].nil?
        data['latestRevision'] = Stubs::ConfigurationRevision.stub(stub[:latest_revision]) unless stub[:latest_revision].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeConfigurationRevision
    class DescribeConfigurationRevision
      def self.default(visited=[])
        {
          arn: 'arn',
          creation_time: Time.now,
          description: 'description',
          revision: 1,
          server_properties: 'server_properties',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['creationTime'] = Hearth::TimeHelper.to_date_time(stub[:creation_time]) unless stub[:creation_time].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['revision'] = stub[:revision] unless stub[:revision].nil?
        data['serverProperties'] = Base64::encode64(stub[:server_properties]) unless stub[:server_properties].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetBootstrapBrokers
    class GetBootstrapBrokers
      def self.default(visited=[])
        {
          bootstrap_broker_string: 'bootstrap_broker_string',
          bootstrap_broker_string_tls: 'bootstrap_broker_string_tls',
          bootstrap_broker_string_sasl_scram: 'bootstrap_broker_string_sasl_scram',
          bootstrap_broker_string_sasl_iam: 'bootstrap_broker_string_sasl_iam',
          bootstrap_broker_string_public_tls: 'bootstrap_broker_string_public_tls',
          bootstrap_broker_string_public_sasl_scram: 'bootstrap_broker_string_public_sasl_scram',
          bootstrap_broker_string_public_sasl_iam: 'bootstrap_broker_string_public_sasl_iam',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['bootstrapBrokerString'] = stub[:bootstrap_broker_string] unless stub[:bootstrap_broker_string].nil?
        data['bootstrapBrokerStringTls'] = stub[:bootstrap_broker_string_tls] unless stub[:bootstrap_broker_string_tls].nil?
        data['bootstrapBrokerStringSaslScram'] = stub[:bootstrap_broker_string_sasl_scram] unless stub[:bootstrap_broker_string_sasl_scram].nil?
        data['bootstrapBrokerStringSaslIam'] = stub[:bootstrap_broker_string_sasl_iam] unless stub[:bootstrap_broker_string_sasl_iam].nil?
        data['bootstrapBrokerStringPublicTls'] = stub[:bootstrap_broker_string_public_tls] unless stub[:bootstrap_broker_string_public_tls].nil?
        data['bootstrapBrokerStringPublicSaslScram'] = stub[:bootstrap_broker_string_public_sasl_scram] unless stub[:bootstrap_broker_string_public_sasl_scram].nil?
        data['bootstrapBrokerStringPublicSaslIam'] = stub[:bootstrap_broker_string_public_sasl_iam] unless stub[:bootstrap_broker_string_public_sasl_iam].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetCompatibleKafkaVersions
    class GetCompatibleKafkaVersions
      def self.default(visited=[])
        {
          compatible_kafka_versions: List____listOfCompatibleKafkaVersion.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['compatibleKafkaVersions'] = Stubs::List____listOfCompatibleKafkaVersion.stub(stub[:compatible_kafka_versions]) unless stub[:compatible_kafka_versions].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfCompatibleKafkaVersion
    class List____listOfCompatibleKafkaVersion
      def self.default(visited=[])
        return nil if visited.include?('List____listOfCompatibleKafkaVersion')
        visited = visited + ['List____listOfCompatibleKafkaVersion']
        [
          CompatibleKafkaVersion.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::CompatibleKafkaVersion.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CompatibleKafkaVersion
    class CompatibleKafkaVersion
      def self.default(visited=[])
        return nil if visited.include?('CompatibleKafkaVersion')
        visited = visited + ['CompatibleKafkaVersion']
        {
          source_version: 'source_version',
          target_versions: List____listOf__string.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CompatibleKafkaVersion.new
        data = {}
        data['sourceVersion'] = stub[:source_version] unless stub[:source_version].nil?
        data['targetVersions'] = Stubs::List____listOf__string.stub(stub[:target_versions]) unless stub[:target_versions].nil?
        data
      end
    end

    # Operation Stubber for ListClusterOperations
    class ListClusterOperations
      def self.default(visited=[])
        {
          cluster_operation_info_list: List____listOfClusterOperationInfo.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['clusterOperationInfoList'] = Stubs::List____listOfClusterOperationInfo.stub(stub[:cluster_operation_info_list]) unless stub[:cluster_operation_info_list].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfClusterOperationInfo
    class List____listOfClusterOperationInfo
      def self.default(visited=[])
        return nil if visited.include?('List____listOfClusterOperationInfo')
        visited = visited + ['List____listOfClusterOperationInfo']
        [
          ClusterOperationInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ClusterOperationInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListClusters
    class ListClusters
      def self.default(visited=[])
        {
          cluster_info_list: List____listOfClusterInfo.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['clusterInfoList'] = Stubs::List____listOfClusterInfo.stub(stub[:cluster_info_list]) unless stub[:cluster_info_list].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfClusterInfo
    class List____listOfClusterInfo
      def self.default(visited=[])
        return nil if visited.include?('List____listOfClusterInfo')
        visited = visited + ['List____listOfClusterInfo']
        [
          ClusterInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ClusterInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListClustersV2
    class ListClustersV2
      def self.default(visited=[])
        {
          cluster_info_list: List____listOfCluster.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['clusterInfoList'] = Stubs::List____listOfCluster.stub(stub[:cluster_info_list]) unless stub[:cluster_info_list].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfCluster
    class List____listOfCluster
      def self.default(visited=[])
        return nil if visited.include?('List____listOfCluster')
        visited = visited + ['List____listOfCluster']
        [
          Cluster.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Cluster.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListConfigurationRevisions
    class ListConfigurationRevisions
      def self.default(visited=[])
        {
          next_token: 'next_token',
          revisions: List____listOfConfigurationRevision.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['revisions'] = Stubs::List____listOfConfigurationRevision.stub(stub[:revisions]) unless stub[:revisions].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfConfigurationRevision
    class List____listOfConfigurationRevision
      def self.default(visited=[])
        return nil if visited.include?('List____listOfConfigurationRevision')
        visited = visited + ['List____listOfConfigurationRevision']
        [
          ConfigurationRevision.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ConfigurationRevision.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListConfigurations
    class ListConfigurations
      def self.default(visited=[])
        {
          configurations: List____listOfConfiguration.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['configurations'] = Stubs::List____listOfConfiguration.stub(stub[:configurations]) unless stub[:configurations].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfConfiguration
    class List____listOfConfiguration
      def self.default(visited=[])
        return nil if visited.include?('List____listOfConfiguration')
        visited = visited + ['List____listOfConfiguration']
        [
          Configuration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Configuration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Configuration
    class Configuration
      def self.default(visited=[])
        return nil if visited.include?('Configuration')
        visited = visited + ['Configuration']
        {
          arn: 'arn',
          creation_time: Time.now,
          description: 'description',
          kafka_versions: List____listOf__string.default(visited),
          latest_revision: ConfigurationRevision.default(visited),
          name: 'name',
          state: 'state',
        }
      end

      def self.stub(stub)
        stub ||= Types::Configuration.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['creationTime'] = Hearth::TimeHelper.to_date_time(stub[:creation_time]) unless stub[:creation_time].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['kafkaVersions'] = Stubs::List____listOf__string.stub(stub[:kafka_versions]) unless stub[:kafka_versions].nil?
        data['latestRevision'] = Stubs::ConfigurationRevision.stub(stub[:latest_revision]) unless stub[:latest_revision].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data
      end
    end

    # Operation Stubber for ListKafkaVersions
    class ListKafkaVersions
      def self.default(visited=[])
        {
          kafka_versions: List____listOfKafkaVersion.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['kafkaVersions'] = Stubs::List____listOfKafkaVersion.stub(stub[:kafka_versions]) unless stub[:kafka_versions].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfKafkaVersion
    class List____listOfKafkaVersion
      def self.default(visited=[])
        return nil if visited.include?('List____listOfKafkaVersion')
        visited = visited + ['List____listOfKafkaVersion']
        [
          KafkaVersion.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::KafkaVersion.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for KafkaVersion
    class KafkaVersion
      def self.default(visited=[])
        return nil if visited.include?('KafkaVersion')
        visited = visited + ['KafkaVersion']
        {
          version: 'version',
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::KafkaVersion.new
        data = {}
        data['version'] = stub[:version] unless stub[:version].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Operation Stubber for ListNodes
    class ListNodes
      def self.default(visited=[])
        {
          next_token: 'next_token',
          node_info_list: List____listOfNodeInfo.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['nodeInfoList'] = Stubs::List____listOfNodeInfo.stub(stub[:node_info_list]) unless stub[:node_info_list].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfNodeInfo
    class List____listOfNodeInfo
      def self.default(visited=[])
        return nil if visited.include?('List____listOfNodeInfo')
        visited = visited + ['List____listOfNodeInfo']
        [
          NodeInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::NodeInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for NodeInfo
    class NodeInfo
      def self.default(visited=[])
        return nil if visited.include?('NodeInfo')
        visited = visited + ['NodeInfo']
        {
          added_to_cluster_time: 'added_to_cluster_time',
          broker_node_info: BrokerNodeInfo.default(visited),
          instance_type: 'instance_type',
          node_arn: 'node_arn',
          node_type: 'node_type',
          zookeeper_node_info: ZookeeperNodeInfo.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::NodeInfo.new
        data = {}
        data['addedToClusterTime'] = stub[:added_to_cluster_time] unless stub[:added_to_cluster_time].nil?
        data['brokerNodeInfo'] = Stubs::BrokerNodeInfo.stub(stub[:broker_node_info]) unless stub[:broker_node_info].nil?
        data['instanceType'] = stub[:instance_type] unless stub[:instance_type].nil?
        data['nodeARN'] = stub[:node_arn] unless stub[:node_arn].nil?
        data['nodeType'] = stub[:node_type] unless stub[:node_type].nil?
        data['zookeeperNodeInfo'] = Stubs::ZookeeperNodeInfo.stub(stub[:zookeeper_node_info]) unless stub[:zookeeper_node_info].nil?
        data
      end
    end

    # Structure Stubber for ZookeeperNodeInfo
    class ZookeeperNodeInfo
      def self.default(visited=[])
        return nil if visited.include?('ZookeeperNodeInfo')
        visited = visited + ['ZookeeperNodeInfo']
        {
          attached_eni_id: 'attached_eni_id',
          client_vpc_ip_address: 'client_vpc_ip_address',
          endpoints: List____listOf__string.default(visited),
          zookeeper_id: 1.0,
          zookeeper_version: 'zookeeper_version',
        }
      end

      def self.stub(stub)
        stub ||= Types::ZookeeperNodeInfo.new
        data = {}
        data['attachedENIId'] = stub[:attached_eni_id] unless stub[:attached_eni_id].nil?
        data['clientVpcIpAddress'] = stub[:client_vpc_ip_address] unless stub[:client_vpc_ip_address].nil?
        data['endpoints'] = Stubs::List____listOf__string.stub(stub[:endpoints]) unless stub[:endpoints].nil?
        data['zookeeperId'] = Hearth::NumberHelper.serialize(stub[:zookeeper_id])
        data['zookeeperVersion'] = stub[:zookeeper_version] unless stub[:zookeeper_version].nil?
        data
      end
    end

    # Structure Stubber for BrokerNodeInfo
    class BrokerNodeInfo
      def self.default(visited=[])
        return nil if visited.include?('BrokerNodeInfo')
        visited = visited + ['BrokerNodeInfo']
        {
          attached_eni_id: 'attached_eni_id',
          broker_id: 1.0,
          client_subnet: 'client_subnet',
          client_vpc_ip_address: 'client_vpc_ip_address',
          current_broker_software_info: BrokerSoftwareInfo.default(visited),
          endpoints: List____listOf__string.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BrokerNodeInfo.new
        data = {}
        data['attachedENIId'] = stub[:attached_eni_id] unless stub[:attached_eni_id].nil?
        data['brokerId'] = Hearth::NumberHelper.serialize(stub[:broker_id])
        data['clientSubnet'] = stub[:client_subnet] unless stub[:client_subnet].nil?
        data['clientVpcIpAddress'] = stub[:client_vpc_ip_address] unless stub[:client_vpc_ip_address].nil?
        data['currentBrokerSoftwareInfo'] = Stubs::BrokerSoftwareInfo.stub(stub[:current_broker_software_info]) unless stub[:current_broker_software_info].nil?
        data['endpoints'] = Stubs::List____listOf__string.stub(stub[:endpoints]) unless stub[:endpoints].nil?
        data
      end
    end

    # Operation Stubber for ListScramSecrets
    class ListScramSecrets
      def self.default(visited=[])
        {
          next_token: 'next_token',
          secret_arn_list: List____listOf__string.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['secretArnList'] = Stubs::List____listOf__string.stub(stub[:secret_arn_list]) unless stub[:secret_arn_list].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: Map____mapOf__string.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['tags'] = Stubs::Map____mapOf__string.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for RebootBroker
    class RebootBroker
      def self.default(visited=[])
        {
          cluster_arn: 'cluster_arn',
          cluster_operation_arn: 'cluster_operation_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['clusterArn'] = stub[:cluster_arn] unless stub[:cluster_arn].nil?
        data['clusterOperationArn'] = stub[:cluster_operation_arn] unless stub[:cluster_operation_arn].nil?
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

    # Operation Stubber for UpdateBrokerCount
    class UpdateBrokerCount
      def self.default(visited=[])
        {
          cluster_arn: 'cluster_arn',
          cluster_operation_arn: 'cluster_operation_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['clusterArn'] = stub[:cluster_arn] unless stub[:cluster_arn].nil?
        data['clusterOperationArn'] = stub[:cluster_operation_arn] unless stub[:cluster_operation_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateBrokerStorage
    class UpdateBrokerStorage
      def self.default(visited=[])
        {
          cluster_arn: 'cluster_arn',
          cluster_operation_arn: 'cluster_operation_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['clusterArn'] = stub[:cluster_arn] unless stub[:cluster_arn].nil?
        data['clusterOperationArn'] = stub[:cluster_operation_arn] unless stub[:cluster_operation_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateBrokerType
    class UpdateBrokerType
      def self.default(visited=[])
        {
          cluster_arn: 'cluster_arn',
          cluster_operation_arn: 'cluster_operation_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['clusterArn'] = stub[:cluster_arn] unless stub[:cluster_arn].nil?
        data['clusterOperationArn'] = stub[:cluster_operation_arn] unless stub[:cluster_operation_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateClusterConfiguration
    class UpdateClusterConfiguration
      def self.default(visited=[])
        {
          cluster_arn: 'cluster_arn',
          cluster_operation_arn: 'cluster_operation_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['clusterArn'] = stub[:cluster_arn] unless stub[:cluster_arn].nil?
        data['clusterOperationArn'] = stub[:cluster_operation_arn] unless stub[:cluster_operation_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateClusterKafkaVersion
    class UpdateClusterKafkaVersion
      def self.default(visited=[])
        {
          cluster_arn: 'cluster_arn',
          cluster_operation_arn: 'cluster_operation_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['clusterArn'] = stub[:cluster_arn] unless stub[:cluster_arn].nil?
        data['clusterOperationArn'] = stub[:cluster_operation_arn] unless stub[:cluster_operation_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateConfiguration
    class UpdateConfiguration
      def self.default(visited=[])
        {
          arn: 'arn',
          latest_revision: ConfigurationRevision.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['latestRevision'] = Stubs::ConfigurationRevision.stub(stub[:latest_revision]) unless stub[:latest_revision].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateConnectivity
    class UpdateConnectivity
      def self.default(visited=[])
        {
          cluster_arn: 'cluster_arn',
          cluster_operation_arn: 'cluster_operation_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['clusterArn'] = stub[:cluster_arn] unless stub[:cluster_arn].nil?
        data['clusterOperationArn'] = stub[:cluster_operation_arn] unless stub[:cluster_operation_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateMonitoring
    class UpdateMonitoring
      def self.default(visited=[])
        {
          cluster_arn: 'cluster_arn',
          cluster_operation_arn: 'cluster_operation_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['clusterArn'] = stub[:cluster_arn] unless stub[:cluster_arn].nil?
        data['clusterOperationArn'] = stub[:cluster_operation_arn] unless stub[:cluster_operation_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateSecurity
    class UpdateSecurity
      def self.default(visited=[])
        {
          cluster_arn: 'cluster_arn',
          cluster_operation_arn: 'cluster_operation_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['clusterArn'] = stub[:cluster_arn] unless stub[:cluster_arn].nil?
        data['clusterOperationArn'] = stub[:cluster_operation_arn] unless stub[:cluster_operation_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
