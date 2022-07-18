# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Kafka
  module Parsers

    # Operation Parser for BatchAssociateScramSecret
    class BatchAssociateScramSecret
      def self.parse(http_resp)
        data = Types::BatchAssociateScramSecretOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.cluster_arn = map['clusterArn']
        data.unprocessed_scram_secrets = (Parsers::List____listOfUnprocessedScramSecret.parse(map['unprocessedScramSecrets']) unless map['unprocessedScramSecrets'].nil?)
        data
      end
    end

    class List____listOfUnprocessedScramSecret
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::UnprocessedScramSecret.parse(value) unless value.nil?
        end
        data
      end
    end

    class UnprocessedScramSecret
      def self.parse(map)
        data = Types::UnprocessedScramSecret.new
        data.error_code = map['errorCode']
        data.error_message = map['errorMessage']
        data.secret_arn = map['secretArn']
        return data
      end
    end

    # Error Parser for BadRequestException
    class BadRequestException
      def self.parse(http_resp)
        data = Types::BadRequestException.new
        map = Hearth::JSON.load(http_resp.body)
        data.invalid_parameter = map['invalidParameter']
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for TooManyRequestsException
    class TooManyRequestsException
      def self.parse(http_resp)
        data = Types::TooManyRequestsException.new
        map = Hearth::JSON.load(http_resp.body)
        data.invalid_parameter = map['invalidParameter']
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for UnauthorizedException
    class UnauthorizedException
      def self.parse(http_resp)
        data = Types::UnauthorizedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.invalid_parameter = map['invalidParameter']
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ForbiddenException
    class ForbiddenException
      def self.parse(http_resp)
        data = Types::ForbiddenException.new
        map = Hearth::JSON.load(http_resp.body)
        data.invalid_parameter = map['invalidParameter']
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ServiceUnavailableException
    class ServiceUnavailableException
      def self.parse(http_resp)
        data = Types::ServiceUnavailableException.new
        map = Hearth::JSON.load(http_resp.body)
        data.invalid_parameter = map['invalidParameter']
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for NotFoundException
    class NotFoundException
      def self.parse(http_resp)
        data = Types::NotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.invalid_parameter = map['invalidParameter']
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for InternalServerErrorException
    class InternalServerErrorException
      def self.parse(http_resp)
        data = Types::InternalServerErrorException.new
        map = Hearth::JSON.load(http_resp.body)
        data.invalid_parameter = map['invalidParameter']
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for BatchDisassociateScramSecret
    class BatchDisassociateScramSecret
      def self.parse(http_resp)
        data = Types::BatchDisassociateScramSecretOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.cluster_arn = map['clusterArn']
        data.unprocessed_scram_secrets = (Parsers::List____listOfUnprocessedScramSecret.parse(map['unprocessedScramSecrets']) unless map['unprocessedScramSecrets'].nil?)
        data
      end
    end

    # Operation Parser for CreateCluster
    class CreateCluster
      def self.parse(http_resp)
        data = Types::CreateClusterOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.cluster_arn = map['clusterArn']
        data.cluster_name = map['clusterName']
        data.state = map['state']
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.invalid_parameter = map['invalidParameter']
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for CreateClusterV2
    class CreateClusterV2
      def self.parse(http_resp)
        data = Types::CreateClusterV2Output.new
        map = Hearth::JSON.load(http_resp.body)
        data.cluster_arn = map['clusterArn']
        data.cluster_name = map['clusterName']
        data.state = map['state']
        data.cluster_type = map['clusterType']
        data
      end
    end

    # Operation Parser for CreateConfiguration
    class CreateConfiguration
      def self.parse(http_resp)
        data = Types::CreateConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.creation_time = Time.parse(map['creationTime']) if map['creationTime']
        data.latest_revision = (Parsers::ConfigurationRevision.parse(map['latestRevision']) unless map['latestRevision'].nil?)
        data.name = map['name']
        data.state = map['state']
        data
      end
    end

    class ConfigurationRevision
      def self.parse(map)
        data = Types::ConfigurationRevision.new
        data.creation_time = Time.parse(map['creationTime']) if map['creationTime']
        data.description = map['description']
        data.revision = map['revision']
        return data
      end
    end

    # Operation Parser for DeleteCluster
    class DeleteCluster
      def self.parse(http_resp)
        data = Types::DeleteClusterOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.cluster_arn = map['clusterArn']
        data.state = map['state']
        data
      end
    end

    # Operation Parser for DeleteConfiguration
    class DeleteConfiguration
      def self.parse(http_resp)
        data = Types::DeleteConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.state = map['state']
        data
      end
    end

    # Operation Parser for DescribeCluster
    class DescribeCluster
      def self.parse(http_resp)
        data = Types::DescribeClusterOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.cluster_info = (Parsers::ClusterInfo.parse(map['clusterInfo']) unless map['clusterInfo'].nil?)
        data
      end
    end

    class ClusterInfo
      def self.parse(map)
        data = Types::ClusterInfo.new
        data.active_operation_arn = map['activeOperationArn']
        data.broker_node_group_info = (Parsers::BrokerNodeGroupInfo.parse(map['brokerNodeGroupInfo']) unless map['brokerNodeGroupInfo'].nil?)
        data.client_authentication = (Parsers::ClientAuthentication.parse(map['clientAuthentication']) unless map['clientAuthentication'].nil?)
        data.cluster_arn = map['clusterArn']
        data.cluster_name = map['clusterName']
        data.creation_time = Time.parse(map['creationTime']) if map['creationTime']
        data.current_broker_software_info = (Parsers::BrokerSoftwareInfo.parse(map['currentBrokerSoftwareInfo']) unless map['currentBrokerSoftwareInfo'].nil?)
        data.current_version = map['currentVersion']
        data.encryption_info = (Parsers::EncryptionInfo.parse(map['encryptionInfo']) unless map['encryptionInfo'].nil?)
        data.enhanced_monitoring = map['enhancedMonitoring']
        data.open_monitoring = (Parsers::OpenMonitoring.parse(map['openMonitoring']) unless map['openMonitoring'].nil?)
        data.logging_info = (Parsers::LoggingInfo.parse(map['loggingInfo']) unless map['loggingInfo'].nil?)
        data.number_of_broker_nodes = map['numberOfBrokerNodes']
        data.state = map['state']
        data.state_info = (Parsers::StateInfo.parse(map['stateInfo']) unless map['stateInfo'].nil?)
        data.tags = (Parsers::Map____mapOf__string.parse(map['tags']) unless map['tags'].nil?)
        data.zookeeper_connect_string = map['zookeeperConnectString']
        data.zookeeper_connect_string_tls = map['zookeeperConnectStringTls']
        return data
      end
    end

    class Map____mapOf__string
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class StateInfo
      def self.parse(map)
        data = Types::StateInfo.new
        data.code = map['code']
        data.message = map['message'] || map['Message']
        return data
      end
    end

    class LoggingInfo
      def self.parse(map)
        data = Types::LoggingInfo.new
        data.broker_logs = (Parsers::BrokerLogs.parse(map['brokerLogs']) unless map['brokerLogs'].nil?)
        return data
      end
    end

    class BrokerLogs
      def self.parse(map)
        data = Types::BrokerLogs.new
        data.cloud_watch_logs = (Parsers::CloudWatchLogs.parse(map['cloudWatchLogs']) unless map['cloudWatchLogs'].nil?)
        data.firehose = (Parsers::Firehose.parse(map['firehose']) unless map['firehose'].nil?)
        data.s3 = (Parsers::S3.parse(map['s3']) unless map['s3'].nil?)
        return data
      end
    end

    class S3
      def self.parse(map)
        data = Types::S3.new
        data.bucket = map['bucket']
        data.enabled = map['enabled']
        data.prefix = map['prefix']
        return data
      end
    end

    class Firehose
      def self.parse(map)
        data = Types::Firehose.new
        data.delivery_stream = map['deliveryStream']
        data.enabled = map['enabled']
        return data
      end
    end

    class CloudWatchLogs
      def self.parse(map)
        data = Types::CloudWatchLogs.new
        data.enabled = map['enabled']
        data.log_group = map['logGroup']
        return data
      end
    end

    class OpenMonitoring
      def self.parse(map)
        data = Types::OpenMonitoring.new
        data.prometheus = (Parsers::Prometheus.parse(map['prometheus']) unless map['prometheus'].nil?)
        return data
      end
    end

    class Prometheus
      def self.parse(map)
        data = Types::Prometheus.new
        data.jmx_exporter = (Parsers::JmxExporter.parse(map['jmxExporter']) unless map['jmxExporter'].nil?)
        data.node_exporter = (Parsers::NodeExporter.parse(map['nodeExporter']) unless map['nodeExporter'].nil?)
        return data
      end
    end

    class NodeExporter
      def self.parse(map)
        data = Types::NodeExporter.new
        data.enabled_in_broker = map['enabledInBroker']
        return data
      end
    end

    class JmxExporter
      def self.parse(map)
        data = Types::JmxExporter.new
        data.enabled_in_broker = map['enabledInBroker']
        return data
      end
    end

    class EncryptionInfo
      def self.parse(map)
        data = Types::EncryptionInfo.new
        data.encryption_at_rest = (Parsers::EncryptionAtRest.parse(map['encryptionAtRest']) unless map['encryptionAtRest'].nil?)
        data.encryption_in_transit = (Parsers::EncryptionInTransit.parse(map['encryptionInTransit']) unless map['encryptionInTransit'].nil?)
        return data
      end
    end

    class EncryptionInTransit
      def self.parse(map)
        data = Types::EncryptionInTransit.new
        data.client_broker = map['clientBroker']
        data.in_cluster = map['inCluster']
        return data
      end
    end

    class EncryptionAtRest
      def self.parse(map)
        data = Types::EncryptionAtRest.new
        data.data_volume_kms_key_id = map['dataVolumeKMSKeyId']
        return data
      end
    end

    class BrokerSoftwareInfo
      def self.parse(map)
        data = Types::BrokerSoftwareInfo.new
        data.configuration_arn = map['configurationArn']
        data.configuration_revision = map['configurationRevision']
        data.kafka_version = map['kafkaVersion']
        return data
      end
    end

    class ClientAuthentication
      def self.parse(map)
        data = Types::ClientAuthentication.new
        data.sasl = (Parsers::Sasl.parse(map['sasl']) unless map['sasl'].nil?)
        data.tls = (Parsers::Tls.parse(map['tls']) unless map['tls'].nil?)
        data.unauthenticated = (Parsers::Unauthenticated.parse(map['unauthenticated']) unless map['unauthenticated'].nil?)
        return data
      end
    end

    class Unauthenticated
      def self.parse(map)
        data = Types::Unauthenticated.new
        data.enabled = map['enabled']
        return data
      end
    end

    class Tls
      def self.parse(map)
        data = Types::Tls.new
        data.certificate_authority_arn_list = (Parsers::List____listOf__string.parse(map['certificateAuthorityArnList']) unless map['certificateAuthorityArnList'].nil?)
        data.enabled = map['enabled']
        return data
      end
    end

    class List____listOf__string
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class Sasl
      def self.parse(map)
        data = Types::Sasl.new
        data.scram = (Parsers::Scram.parse(map['scram']) unless map['scram'].nil?)
        data.iam = (Parsers::Iam.parse(map['iam']) unless map['iam'].nil?)
        return data
      end
    end

    class Iam
      def self.parse(map)
        data = Types::Iam.new
        data.enabled = map['enabled']
        return data
      end
    end

    class Scram
      def self.parse(map)
        data = Types::Scram.new
        data.enabled = map['enabled']
        return data
      end
    end

    class BrokerNodeGroupInfo
      def self.parse(map)
        data = Types::BrokerNodeGroupInfo.new
        data.broker_az_distribution = map['brokerAZDistribution']
        data.client_subnets = (Parsers::List____listOf__string.parse(map['clientSubnets']) unless map['clientSubnets'].nil?)
        data.instance_type = map['instanceType']
        data.security_groups = (Parsers::List____listOf__string.parse(map['securityGroups']) unless map['securityGroups'].nil?)
        data.storage_info = (Parsers::StorageInfo.parse(map['storageInfo']) unless map['storageInfo'].nil?)
        data.connectivity_info = (Parsers::ConnectivityInfo.parse(map['connectivityInfo']) unless map['connectivityInfo'].nil?)
        return data
      end
    end

    class ConnectivityInfo
      def self.parse(map)
        data = Types::ConnectivityInfo.new
        data.public_access = (Parsers::PublicAccess.parse(map['publicAccess']) unless map['publicAccess'].nil?)
        return data
      end
    end

    class PublicAccess
      def self.parse(map)
        data = Types::PublicAccess.new
        data.type = map['type']
        return data
      end
    end

    class StorageInfo
      def self.parse(map)
        data = Types::StorageInfo.new
        data.ebs_storage_info = (Parsers::EBSStorageInfo.parse(map['ebsStorageInfo']) unless map['ebsStorageInfo'].nil?)
        return data
      end
    end

    class EBSStorageInfo
      def self.parse(map)
        data = Types::EBSStorageInfo.new
        data.provisioned_throughput = (Parsers::ProvisionedThroughput.parse(map['provisionedThroughput']) unless map['provisionedThroughput'].nil?)
        data.volume_size = map['volumeSize']
        return data
      end
    end

    class ProvisionedThroughput
      def self.parse(map)
        data = Types::ProvisionedThroughput.new
        data.enabled = map['enabled']
        data.volume_throughput = map['volumeThroughput']
        return data
      end
    end

    # Operation Parser for DescribeClusterOperation
    class DescribeClusterOperation
      def self.parse(http_resp)
        data = Types::DescribeClusterOperationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.cluster_operation_info = (Parsers::ClusterOperationInfo.parse(map['clusterOperationInfo']) unless map['clusterOperationInfo'].nil?)
        data
      end
    end

    class ClusterOperationInfo
      def self.parse(map)
        data = Types::ClusterOperationInfo.new
        data.client_request_id = map['clientRequestId']
        data.cluster_arn = map['clusterArn']
        data.creation_time = Time.parse(map['creationTime']) if map['creationTime']
        data.end_time = Time.parse(map['endTime']) if map['endTime']
        data.error_info = (Parsers::ErrorInfo.parse(map['errorInfo']) unless map['errorInfo'].nil?)
        data.operation_arn = map['operationArn']
        data.operation_state = map['operationState']
        data.operation_steps = (Parsers::List____listOfClusterOperationStep.parse(map['operationSteps']) unless map['operationSteps'].nil?)
        data.operation_type = map['operationType']
        data.source_cluster_info = (Parsers::MutableClusterInfo.parse(map['sourceClusterInfo']) unless map['sourceClusterInfo'].nil?)
        data.target_cluster_info = (Parsers::MutableClusterInfo.parse(map['targetClusterInfo']) unless map['targetClusterInfo'].nil?)
        return data
      end
    end

    class MutableClusterInfo
      def self.parse(map)
        data = Types::MutableClusterInfo.new
        data.broker_ebs_volume_info = (Parsers::List____listOfBrokerEBSVolumeInfo.parse(map['brokerEBSVolumeInfo']) unless map['brokerEBSVolumeInfo'].nil?)
        data.configuration_info = (Parsers::ConfigurationInfo.parse(map['configurationInfo']) unless map['configurationInfo'].nil?)
        data.number_of_broker_nodes = map['numberOfBrokerNodes']
        data.enhanced_monitoring = map['enhancedMonitoring']
        data.open_monitoring = (Parsers::OpenMonitoring.parse(map['openMonitoring']) unless map['openMonitoring'].nil?)
        data.kafka_version = map['kafkaVersion']
        data.logging_info = (Parsers::LoggingInfo.parse(map['loggingInfo']) unless map['loggingInfo'].nil?)
        data.instance_type = map['instanceType']
        data.client_authentication = (Parsers::ClientAuthentication.parse(map['clientAuthentication']) unless map['clientAuthentication'].nil?)
        data.encryption_info = (Parsers::EncryptionInfo.parse(map['encryptionInfo']) unless map['encryptionInfo'].nil?)
        data.connectivity_info = (Parsers::ConnectivityInfo.parse(map['connectivityInfo']) unless map['connectivityInfo'].nil?)
        return data
      end
    end

    class ConfigurationInfo
      def self.parse(map)
        data = Types::ConfigurationInfo.new
        data.arn = map['arn']
        data.revision = map['revision']
        return data
      end
    end

    class List____listOfBrokerEBSVolumeInfo
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::BrokerEBSVolumeInfo.parse(value) unless value.nil?
        end
        data
      end
    end

    class BrokerEBSVolumeInfo
      def self.parse(map)
        data = Types::BrokerEBSVolumeInfo.new
        data.kafka_broker_node_id = map['kafkaBrokerNodeId']
        data.provisioned_throughput = (Parsers::ProvisionedThroughput.parse(map['provisionedThroughput']) unless map['provisionedThroughput'].nil?)
        data.volume_size_gb = map['volumeSizeGB']
        return data
      end
    end

    class List____listOfClusterOperationStep
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ClusterOperationStep.parse(value) unless value.nil?
        end
        data
      end
    end

    class ClusterOperationStep
      def self.parse(map)
        data = Types::ClusterOperationStep.new
        data.step_info = (Parsers::ClusterOperationStepInfo.parse(map['stepInfo']) unless map['stepInfo'].nil?)
        data.step_name = map['stepName']
        return data
      end
    end

    class ClusterOperationStepInfo
      def self.parse(map)
        data = Types::ClusterOperationStepInfo.new
        data.step_status = map['stepStatus']
        return data
      end
    end

    class ErrorInfo
      def self.parse(map)
        data = Types::ErrorInfo.new
        data.error_code = map['errorCode']
        data.error_string = map['errorString']
        return data
      end
    end

    # Operation Parser for DescribeClusterV2
    class DescribeClusterV2
      def self.parse(http_resp)
        data = Types::DescribeClusterV2Output.new
        map = Hearth::JSON.load(http_resp.body)
        data.cluster_info = (Parsers::Cluster.parse(map['clusterInfo']) unless map['clusterInfo'].nil?)
        data
      end
    end

    class Cluster
      def self.parse(map)
        data = Types::Cluster.new
        data.active_operation_arn = map['activeOperationArn']
        data.cluster_type = map['clusterType']
        data.cluster_arn = map['clusterArn']
        data.cluster_name = map['clusterName']
        data.creation_time = Time.parse(map['creationTime']) if map['creationTime']
        data.current_version = map['currentVersion']
        data.state = map['state']
        data.state_info = (Parsers::StateInfo.parse(map['stateInfo']) unless map['stateInfo'].nil?)
        data.tags = (Parsers::Map____mapOf__string.parse(map['tags']) unless map['tags'].nil?)
        data.provisioned = (Parsers::Provisioned.parse(map['provisioned']) unless map['provisioned'].nil?)
        data.serverless = (Parsers::Serverless.parse(map['serverless']) unless map['serverless'].nil?)
        return data
      end
    end

    class Serverless
      def self.parse(map)
        data = Types::Serverless.new
        data.vpc_configs = (Parsers::List____listOfVpcConfig.parse(map['vpcConfigs']) unless map['vpcConfigs'].nil?)
        data.client_authentication = (Parsers::ServerlessClientAuthentication.parse(map['clientAuthentication']) unless map['clientAuthentication'].nil?)
        return data
      end
    end

    class ServerlessClientAuthentication
      def self.parse(map)
        data = Types::ServerlessClientAuthentication.new
        data.sasl = (Parsers::ServerlessSasl.parse(map['sasl']) unless map['sasl'].nil?)
        return data
      end
    end

    class ServerlessSasl
      def self.parse(map)
        data = Types::ServerlessSasl.new
        data.iam = (Parsers::Iam.parse(map['iam']) unless map['iam'].nil?)
        return data
      end
    end

    class List____listOfVpcConfig
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::VpcConfig.parse(value) unless value.nil?
        end
        data
      end
    end

    class VpcConfig
      def self.parse(map)
        data = Types::VpcConfig.new
        data.subnet_ids = (Parsers::List____listOf__string.parse(map['subnetIds']) unless map['subnetIds'].nil?)
        data.security_group_ids = (Parsers::List____listOf__string.parse(map['securityGroupIds']) unless map['securityGroupIds'].nil?)
        return data
      end
    end

    class Provisioned
      def self.parse(map)
        data = Types::Provisioned.new
        data.broker_node_group_info = (Parsers::BrokerNodeGroupInfo.parse(map['brokerNodeGroupInfo']) unless map['brokerNodeGroupInfo'].nil?)
        data.current_broker_software_info = (Parsers::BrokerSoftwareInfo.parse(map['currentBrokerSoftwareInfo']) unless map['currentBrokerSoftwareInfo'].nil?)
        data.client_authentication = (Parsers::ClientAuthentication.parse(map['clientAuthentication']) unless map['clientAuthentication'].nil?)
        data.encryption_info = (Parsers::EncryptionInfo.parse(map['encryptionInfo']) unless map['encryptionInfo'].nil?)
        data.enhanced_monitoring = map['enhancedMonitoring']
        data.open_monitoring = (Parsers::OpenMonitoringInfo.parse(map['openMonitoring']) unless map['openMonitoring'].nil?)
        data.logging_info = (Parsers::LoggingInfo.parse(map['loggingInfo']) unless map['loggingInfo'].nil?)
        data.number_of_broker_nodes = map['numberOfBrokerNodes']
        data.zookeeper_connect_string = map['zookeeperConnectString']
        data.zookeeper_connect_string_tls = map['zookeeperConnectStringTls']
        return data
      end
    end

    class OpenMonitoringInfo
      def self.parse(map)
        data = Types::OpenMonitoringInfo.new
        data.prometheus = (Parsers::PrometheusInfo.parse(map['prometheus']) unless map['prometheus'].nil?)
        return data
      end
    end

    class PrometheusInfo
      def self.parse(map)
        data = Types::PrometheusInfo.new
        data.jmx_exporter = (Parsers::JmxExporterInfo.parse(map['jmxExporter']) unless map['jmxExporter'].nil?)
        data.node_exporter = (Parsers::NodeExporterInfo.parse(map['nodeExporter']) unless map['nodeExporter'].nil?)
        return data
      end
    end

    class NodeExporterInfo
      def self.parse(map)
        data = Types::NodeExporterInfo.new
        data.enabled_in_broker = map['enabledInBroker']
        return data
      end
    end

    class JmxExporterInfo
      def self.parse(map)
        data = Types::JmxExporterInfo.new
        data.enabled_in_broker = map['enabledInBroker']
        return data
      end
    end

    # Operation Parser for DescribeConfiguration
    class DescribeConfiguration
      def self.parse(http_resp)
        data = Types::DescribeConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.creation_time = Time.parse(map['creationTime']) if map['creationTime']
        data.description = map['description']
        data.kafka_versions = (Parsers::List____listOf__string.parse(map['kafkaVersions']) unless map['kafkaVersions'].nil?)
        data.latest_revision = (Parsers::ConfigurationRevision.parse(map['latestRevision']) unless map['latestRevision'].nil?)
        data.name = map['name']
        data.state = map['state']
        data
      end
    end

    # Operation Parser for DescribeConfigurationRevision
    class DescribeConfigurationRevision
      def self.parse(http_resp)
        data = Types::DescribeConfigurationRevisionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.creation_time = Time.parse(map['creationTime']) if map['creationTime']
        data.description = map['description']
        data.revision = map['revision']
        data.server_properties = Base64::decode64(map['serverProperties']) unless map['serverProperties'].nil?
        data
      end
    end

    # Operation Parser for GetBootstrapBrokers
    class GetBootstrapBrokers
      def self.parse(http_resp)
        data = Types::GetBootstrapBrokersOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.bootstrap_broker_string = map['bootstrapBrokerString']
        data.bootstrap_broker_string_tls = map['bootstrapBrokerStringTls']
        data.bootstrap_broker_string_sasl_scram = map['bootstrapBrokerStringSaslScram']
        data.bootstrap_broker_string_sasl_iam = map['bootstrapBrokerStringSaslIam']
        data.bootstrap_broker_string_public_tls = map['bootstrapBrokerStringPublicTls']
        data.bootstrap_broker_string_public_sasl_scram = map['bootstrapBrokerStringPublicSaslScram']
        data.bootstrap_broker_string_public_sasl_iam = map['bootstrapBrokerStringPublicSaslIam']
        data
      end
    end

    # Operation Parser for GetCompatibleKafkaVersions
    class GetCompatibleKafkaVersions
      def self.parse(http_resp)
        data = Types::GetCompatibleKafkaVersionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.compatible_kafka_versions = (Parsers::List____listOfCompatibleKafkaVersion.parse(map['compatibleKafkaVersions']) unless map['compatibleKafkaVersions'].nil?)
        data
      end
    end

    class List____listOfCompatibleKafkaVersion
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::CompatibleKafkaVersion.parse(value) unless value.nil?
        end
        data
      end
    end

    class CompatibleKafkaVersion
      def self.parse(map)
        data = Types::CompatibleKafkaVersion.new
        data.source_version = map['sourceVersion']
        data.target_versions = (Parsers::List____listOf__string.parse(map['targetVersions']) unless map['targetVersions'].nil?)
        return data
      end
    end

    # Operation Parser for ListClusterOperations
    class ListClusterOperations
      def self.parse(http_resp)
        data = Types::ListClusterOperationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.cluster_operation_info_list = (Parsers::List____listOfClusterOperationInfo.parse(map['clusterOperationInfoList']) unless map['clusterOperationInfoList'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class List____listOfClusterOperationInfo
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ClusterOperationInfo.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListClusters
    class ListClusters
      def self.parse(http_resp)
        data = Types::ListClustersOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.cluster_info_list = (Parsers::List____listOfClusterInfo.parse(map['clusterInfoList']) unless map['clusterInfoList'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class List____listOfClusterInfo
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ClusterInfo.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListClustersV2
    class ListClustersV2
      def self.parse(http_resp)
        data = Types::ListClustersV2Output.new
        map = Hearth::JSON.load(http_resp.body)
        data.cluster_info_list = (Parsers::List____listOfCluster.parse(map['clusterInfoList']) unless map['clusterInfoList'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class List____listOfCluster
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Cluster.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListConfigurationRevisions
    class ListConfigurationRevisions
      def self.parse(http_resp)
        data = Types::ListConfigurationRevisionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['nextToken']
        data.revisions = (Parsers::List____listOfConfigurationRevision.parse(map['revisions']) unless map['revisions'].nil?)
        data
      end
    end

    class List____listOfConfigurationRevision
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ConfigurationRevision.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListConfigurations
    class ListConfigurations
      def self.parse(http_resp)
        data = Types::ListConfigurationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.configurations = (Parsers::List____listOfConfiguration.parse(map['configurations']) unless map['configurations'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class List____listOfConfiguration
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Configuration.parse(value) unless value.nil?
        end
        data
      end
    end

    class Configuration
      def self.parse(map)
        data = Types::Configuration.new
        data.arn = map['arn']
        data.creation_time = Time.parse(map['creationTime']) if map['creationTime']
        data.description = map['description']
        data.kafka_versions = (Parsers::List____listOf__string.parse(map['kafkaVersions']) unless map['kafkaVersions'].nil?)
        data.latest_revision = (Parsers::ConfigurationRevision.parse(map['latestRevision']) unless map['latestRevision'].nil?)
        data.name = map['name']
        data.state = map['state']
        return data
      end
    end

    # Operation Parser for ListKafkaVersions
    class ListKafkaVersions
      def self.parse(http_resp)
        data = Types::ListKafkaVersionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.kafka_versions = (Parsers::List____listOfKafkaVersion.parse(map['kafkaVersions']) unless map['kafkaVersions'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class List____listOfKafkaVersion
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::KafkaVersion.parse(value) unless value.nil?
        end
        data
      end
    end

    class KafkaVersion
      def self.parse(map)
        data = Types::KafkaVersion.new
        data.version = map['version']
        data.status = map['status']
        return data
      end
    end

    # Operation Parser for ListNodes
    class ListNodes
      def self.parse(http_resp)
        data = Types::ListNodesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['nextToken']
        data.node_info_list = (Parsers::List____listOfNodeInfo.parse(map['nodeInfoList']) unless map['nodeInfoList'].nil?)
        data
      end
    end

    class List____listOfNodeInfo
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::NodeInfo.parse(value) unless value.nil?
        end
        data
      end
    end

    class NodeInfo
      def self.parse(map)
        data = Types::NodeInfo.new
        data.added_to_cluster_time = map['addedToClusterTime']
        data.broker_node_info = (Parsers::BrokerNodeInfo.parse(map['brokerNodeInfo']) unless map['brokerNodeInfo'].nil?)
        data.instance_type = map['instanceType']
        data.node_arn = map['nodeARN']
        data.node_type = map['nodeType']
        data.zookeeper_node_info = (Parsers::ZookeeperNodeInfo.parse(map['zookeeperNodeInfo']) unless map['zookeeperNodeInfo'].nil?)
        return data
      end
    end

    class ZookeeperNodeInfo
      def self.parse(map)
        data = Types::ZookeeperNodeInfo.new
        data.attached_eni_id = map['attachedENIId']
        data.client_vpc_ip_address = map['clientVpcIpAddress']
        data.endpoints = (Parsers::List____listOf__string.parse(map['endpoints']) unless map['endpoints'].nil?)
        data.zookeeper_id = Hearth::NumberHelper.deserialize(map['zookeeperId'])
        data.zookeeper_version = map['zookeeperVersion']
        return data
      end
    end

    class BrokerNodeInfo
      def self.parse(map)
        data = Types::BrokerNodeInfo.new
        data.attached_eni_id = map['attachedENIId']
        data.broker_id = Hearth::NumberHelper.deserialize(map['brokerId'])
        data.client_subnet = map['clientSubnet']
        data.client_vpc_ip_address = map['clientVpcIpAddress']
        data.current_broker_software_info = (Parsers::BrokerSoftwareInfo.parse(map['currentBrokerSoftwareInfo']) unless map['currentBrokerSoftwareInfo'].nil?)
        data.endpoints = (Parsers::List____listOf__string.parse(map['endpoints']) unless map['endpoints'].nil?)
        return data
      end
    end

    # Operation Parser for ListScramSecrets
    class ListScramSecrets
      def self.parse(http_resp)
        data = Types::ListScramSecretsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['nextToken']
        data.secret_arn_list = (Parsers::List____listOf__string.parse(map['secretArnList']) unless map['secretArnList'].nil?)
        data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (Parsers::Map____mapOf__string.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for RebootBroker
    class RebootBroker
      def self.parse(http_resp)
        data = Types::RebootBrokerOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.cluster_arn = map['clusterArn']
        data.cluster_operation_arn = map['clusterOperationArn']
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

    # Operation Parser for UpdateBrokerCount
    class UpdateBrokerCount
      def self.parse(http_resp)
        data = Types::UpdateBrokerCountOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.cluster_arn = map['clusterArn']
        data.cluster_operation_arn = map['clusterOperationArn']
        data
      end
    end

    # Operation Parser for UpdateBrokerStorage
    class UpdateBrokerStorage
      def self.parse(http_resp)
        data = Types::UpdateBrokerStorageOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.cluster_arn = map['clusterArn']
        data.cluster_operation_arn = map['clusterOperationArn']
        data
      end
    end

    # Operation Parser for UpdateBrokerType
    class UpdateBrokerType
      def self.parse(http_resp)
        data = Types::UpdateBrokerTypeOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.cluster_arn = map['clusterArn']
        data.cluster_operation_arn = map['clusterOperationArn']
        data
      end
    end

    # Operation Parser for UpdateClusterConfiguration
    class UpdateClusterConfiguration
      def self.parse(http_resp)
        data = Types::UpdateClusterConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.cluster_arn = map['clusterArn']
        data.cluster_operation_arn = map['clusterOperationArn']
        data
      end
    end

    # Operation Parser for UpdateClusterKafkaVersion
    class UpdateClusterKafkaVersion
      def self.parse(http_resp)
        data = Types::UpdateClusterKafkaVersionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.cluster_arn = map['clusterArn']
        data.cluster_operation_arn = map['clusterOperationArn']
        data
      end
    end

    # Operation Parser for UpdateConfiguration
    class UpdateConfiguration
      def self.parse(http_resp)
        data = Types::UpdateConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.latest_revision = (Parsers::ConfigurationRevision.parse(map['latestRevision']) unless map['latestRevision'].nil?)
        data
      end
    end

    # Operation Parser for UpdateConnectivity
    class UpdateConnectivity
      def self.parse(http_resp)
        data = Types::UpdateConnectivityOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.cluster_arn = map['clusterArn']
        data.cluster_operation_arn = map['clusterOperationArn']
        data
      end
    end

    # Operation Parser for UpdateMonitoring
    class UpdateMonitoring
      def self.parse(http_resp)
        data = Types::UpdateMonitoringOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.cluster_arn = map['clusterArn']
        data.cluster_operation_arn = map['clusterOperationArn']
        data
      end
    end

    # Operation Parser for UpdateSecurity
    class UpdateSecurity
      def self.parse(http_resp)
        data = Types::UpdateSecurityOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.cluster_arn = map['clusterArn']
        data.cluster_operation_arn = map['clusterOperationArn']
        data
      end
    end
  end
end
