# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Kafka
  module Builders

    # Operation Builder for BatchAssociateScramSecret
    class BatchAssociateScramSecret
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:cluster_arn].to_s.empty?
          raise ArgumentError, "HTTP label :cluster_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/clusters/%<ClusterArn>s/scram-secrets',
            ClusterArn: Hearth::HTTP.uri_escape(input[:cluster_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['secretArnList'] = Builders::List____listOf__string.build(input[:secret_arn_list]) unless input[:secret_arn_list].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for __listOf__string
    class List____listOf__string
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for BatchDisassociateScramSecret
    class BatchDisassociateScramSecret
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:cluster_arn].to_s.empty?
          raise ArgumentError, "HTTP label :cluster_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/clusters/%<ClusterArn>s/scram-secrets',
            ClusterArn: Hearth::HTTP.uri_escape(input[:cluster_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['secretArnList'] = Builders::List____listOf__string.build(input[:secret_arn_list]) unless input[:secret_arn_list].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateCluster
    class CreateCluster
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v1/clusters')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['brokerNodeGroupInfo'] = Builders::BrokerNodeGroupInfo.build(input[:broker_node_group_info]) unless input[:broker_node_group_info].nil?
        data['clientAuthentication'] = Builders::ClientAuthentication.build(input[:client_authentication]) unless input[:client_authentication].nil?
        data['clusterName'] = input[:cluster_name] unless input[:cluster_name].nil?
        data['configurationInfo'] = Builders::ConfigurationInfo.build(input[:configuration_info]) unless input[:configuration_info].nil?
        data['encryptionInfo'] = Builders::EncryptionInfo.build(input[:encryption_info]) unless input[:encryption_info].nil?
        data['enhancedMonitoring'] = input[:enhanced_monitoring] unless input[:enhanced_monitoring].nil?
        data['openMonitoring'] = Builders::OpenMonitoringInfo.build(input[:open_monitoring]) unless input[:open_monitoring].nil?
        data['kafkaVersion'] = input[:kafka_version] unless input[:kafka_version].nil?
        data['loggingInfo'] = Builders::LoggingInfo.build(input[:logging_info]) unless input[:logging_info].nil?
        data['numberOfBrokerNodes'] = input[:number_of_broker_nodes] unless input[:number_of_broker_nodes].nil?
        data['tags'] = Builders::Map____mapOf__string.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for __mapOf__string
    class Map____mapOf__string
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for LoggingInfo
    class LoggingInfo
      def self.build(input)
        data = {}
        data['brokerLogs'] = Builders::BrokerLogs.build(input[:broker_logs]) unless input[:broker_logs].nil?
        data
      end
    end

    # Structure Builder for BrokerLogs
    class BrokerLogs
      def self.build(input)
        data = {}
        data['cloudWatchLogs'] = Builders::CloudWatchLogs.build(input[:cloud_watch_logs]) unless input[:cloud_watch_logs].nil?
        data['firehose'] = Builders::Firehose.build(input[:firehose]) unless input[:firehose].nil?
        data['s3'] = Builders::S3.build(input[:s3]) unless input[:s3].nil?
        data
      end
    end

    # Structure Builder for S3
    class S3
      def self.build(input)
        data = {}
        data['bucket'] = input[:bucket] unless input[:bucket].nil?
        data['enabled'] = input[:enabled] unless input[:enabled].nil?
        data['prefix'] = input[:prefix] unless input[:prefix].nil?
        data
      end
    end

    # Structure Builder for Firehose
    class Firehose
      def self.build(input)
        data = {}
        data['deliveryStream'] = input[:delivery_stream] unless input[:delivery_stream].nil?
        data['enabled'] = input[:enabled] unless input[:enabled].nil?
        data
      end
    end

    # Structure Builder for CloudWatchLogs
    class CloudWatchLogs
      def self.build(input)
        data = {}
        data['enabled'] = input[:enabled] unless input[:enabled].nil?
        data['logGroup'] = input[:log_group] unless input[:log_group].nil?
        data
      end
    end

    # Structure Builder for OpenMonitoringInfo
    class OpenMonitoringInfo
      def self.build(input)
        data = {}
        data['prometheus'] = Builders::PrometheusInfo.build(input[:prometheus]) unless input[:prometheus].nil?
        data
      end
    end

    # Structure Builder for PrometheusInfo
    class PrometheusInfo
      def self.build(input)
        data = {}
        data['jmxExporter'] = Builders::JmxExporterInfo.build(input[:jmx_exporter]) unless input[:jmx_exporter].nil?
        data['nodeExporter'] = Builders::NodeExporterInfo.build(input[:node_exporter]) unless input[:node_exporter].nil?
        data
      end
    end

    # Structure Builder for NodeExporterInfo
    class NodeExporterInfo
      def self.build(input)
        data = {}
        data['enabledInBroker'] = input[:enabled_in_broker] unless input[:enabled_in_broker].nil?
        data
      end
    end

    # Structure Builder for JmxExporterInfo
    class JmxExporterInfo
      def self.build(input)
        data = {}
        data['enabledInBroker'] = input[:enabled_in_broker] unless input[:enabled_in_broker].nil?
        data
      end
    end

    # Structure Builder for EncryptionInfo
    class EncryptionInfo
      def self.build(input)
        data = {}
        data['encryptionAtRest'] = Builders::EncryptionAtRest.build(input[:encryption_at_rest]) unless input[:encryption_at_rest].nil?
        data['encryptionInTransit'] = Builders::EncryptionInTransit.build(input[:encryption_in_transit]) unless input[:encryption_in_transit].nil?
        data
      end
    end

    # Structure Builder for EncryptionInTransit
    class EncryptionInTransit
      def self.build(input)
        data = {}
        data['clientBroker'] = input[:client_broker] unless input[:client_broker].nil?
        data['inCluster'] = input[:in_cluster] unless input[:in_cluster].nil?
        data
      end
    end

    # Structure Builder for EncryptionAtRest
    class EncryptionAtRest
      def self.build(input)
        data = {}
        data['dataVolumeKMSKeyId'] = input[:data_volume_kms_key_id] unless input[:data_volume_kms_key_id].nil?
        data
      end
    end

    # Structure Builder for ConfigurationInfo
    class ConfigurationInfo
      def self.build(input)
        data = {}
        data['arn'] = input[:arn] unless input[:arn].nil?
        data['revision'] = input[:revision] unless input[:revision].nil?
        data
      end
    end

    # Structure Builder for ClientAuthentication
    class ClientAuthentication
      def self.build(input)
        data = {}
        data['sasl'] = Builders::Sasl.build(input[:sasl]) unless input[:sasl].nil?
        data['tls'] = Builders::Tls.build(input[:tls]) unless input[:tls].nil?
        data['unauthenticated'] = Builders::Unauthenticated.build(input[:unauthenticated]) unless input[:unauthenticated].nil?
        data
      end
    end

    # Structure Builder for Unauthenticated
    class Unauthenticated
      def self.build(input)
        data = {}
        data['enabled'] = input[:enabled] unless input[:enabled].nil?
        data
      end
    end

    # Structure Builder for Tls
    class Tls
      def self.build(input)
        data = {}
        data['certificateAuthorityArnList'] = Builders::List____listOf__string.build(input[:certificate_authority_arn_list]) unless input[:certificate_authority_arn_list].nil?
        data['enabled'] = input[:enabled] unless input[:enabled].nil?
        data
      end
    end

    # Structure Builder for Sasl
    class Sasl
      def self.build(input)
        data = {}
        data['scram'] = Builders::Scram.build(input[:scram]) unless input[:scram].nil?
        data['iam'] = Builders::Iam.build(input[:iam]) unless input[:iam].nil?
        data
      end
    end

    # Structure Builder for Iam
    class Iam
      def self.build(input)
        data = {}
        data['enabled'] = input[:enabled] unless input[:enabled].nil?
        data
      end
    end

    # Structure Builder for Scram
    class Scram
      def self.build(input)
        data = {}
        data['enabled'] = input[:enabled] unless input[:enabled].nil?
        data
      end
    end

    # Structure Builder for BrokerNodeGroupInfo
    class BrokerNodeGroupInfo
      def self.build(input)
        data = {}
        data['brokerAZDistribution'] = input[:broker_az_distribution] unless input[:broker_az_distribution].nil?
        data['clientSubnets'] = Builders::List____listOf__string.build(input[:client_subnets]) unless input[:client_subnets].nil?
        data['instanceType'] = input[:instance_type] unless input[:instance_type].nil?
        data['securityGroups'] = Builders::List____listOf__string.build(input[:security_groups]) unless input[:security_groups].nil?
        data['storageInfo'] = Builders::StorageInfo.build(input[:storage_info]) unless input[:storage_info].nil?
        data['connectivityInfo'] = Builders::ConnectivityInfo.build(input[:connectivity_info]) unless input[:connectivity_info].nil?
        data
      end
    end

    # Structure Builder for ConnectivityInfo
    class ConnectivityInfo
      def self.build(input)
        data = {}
        data['publicAccess'] = Builders::PublicAccess.build(input[:public_access]) unless input[:public_access].nil?
        data
      end
    end

    # Structure Builder for PublicAccess
    class PublicAccess
      def self.build(input)
        data = {}
        data['type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # Structure Builder for StorageInfo
    class StorageInfo
      def self.build(input)
        data = {}
        data['ebsStorageInfo'] = Builders::EBSStorageInfo.build(input[:ebs_storage_info]) unless input[:ebs_storage_info].nil?
        data
      end
    end

    # Structure Builder for EBSStorageInfo
    class EBSStorageInfo
      def self.build(input)
        data = {}
        data['provisionedThroughput'] = Builders::ProvisionedThroughput.build(input[:provisioned_throughput]) unless input[:provisioned_throughput].nil?
        data['volumeSize'] = input[:volume_size] unless input[:volume_size].nil?
        data
      end
    end

    # Structure Builder for ProvisionedThroughput
    class ProvisionedThroughput
      def self.build(input)
        data = {}
        data['enabled'] = input[:enabled] unless input[:enabled].nil?
        data['volumeThroughput'] = input[:volume_throughput] unless input[:volume_throughput].nil?
        data
      end
    end

    # Operation Builder for CreateClusterV2
    class CreateClusterV2
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/api/v2/clusters')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['clusterName'] = input[:cluster_name] unless input[:cluster_name].nil?
        data['tags'] = Builders::Map____mapOf__string.build(input[:tags]) unless input[:tags].nil?
        data['provisioned'] = Builders::ProvisionedRequest.build(input[:provisioned]) unless input[:provisioned].nil?
        data['serverless'] = Builders::ServerlessRequest.build(input[:serverless]) unless input[:serverless].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ServerlessRequest
    class ServerlessRequest
      def self.build(input)
        data = {}
        data['vpcConfigs'] = Builders::List____listOfVpcConfig.build(input[:vpc_configs]) unless input[:vpc_configs].nil?
        data['clientAuthentication'] = Builders::ServerlessClientAuthentication.build(input[:client_authentication]) unless input[:client_authentication].nil?
        data
      end
    end

    # Structure Builder for ServerlessClientAuthentication
    class ServerlessClientAuthentication
      def self.build(input)
        data = {}
        data['sasl'] = Builders::ServerlessSasl.build(input[:sasl]) unless input[:sasl].nil?
        data
      end
    end

    # Structure Builder for ServerlessSasl
    class ServerlessSasl
      def self.build(input)
        data = {}
        data['iam'] = Builders::Iam.build(input[:iam]) unless input[:iam].nil?
        data
      end
    end

    # List Builder for __listOfVpcConfig
    class List____listOfVpcConfig
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::VpcConfig.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for VpcConfig
    class VpcConfig
      def self.build(input)
        data = {}
        data['subnetIds'] = Builders::List____listOf__string.build(input[:subnet_ids]) unless input[:subnet_ids].nil?
        data['securityGroupIds'] = Builders::List____listOf__string.build(input[:security_group_ids]) unless input[:security_group_ids].nil?
        data
      end
    end

    # Structure Builder for ProvisionedRequest
    class ProvisionedRequest
      def self.build(input)
        data = {}
        data['brokerNodeGroupInfo'] = Builders::BrokerNodeGroupInfo.build(input[:broker_node_group_info]) unless input[:broker_node_group_info].nil?
        data['clientAuthentication'] = Builders::ClientAuthentication.build(input[:client_authentication]) unless input[:client_authentication].nil?
        data['configurationInfo'] = Builders::ConfigurationInfo.build(input[:configuration_info]) unless input[:configuration_info].nil?
        data['encryptionInfo'] = Builders::EncryptionInfo.build(input[:encryption_info]) unless input[:encryption_info].nil?
        data['enhancedMonitoring'] = input[:enhanced_monitoring] unless input[:enhanced_monitoring].nil?
        data['openMonitoring'] = Builders::OpenMonitoringInfo.build(input[:open_monitoring]) unless input[:open_monitoring].nil?
        data['kafkaVersion'] = input[:kafka_version] unless input[:kafka_version].nil?
        data['loggingInfo'] = Builders::LoggingInfo.build(input[:logging_info]) unless input[:logging_info].nil?
        data['numberOfBrokerNodes'] = input[:number_of_broker_nodes] unless input[:number_of_broker_nodes].nil?
        data
      end
    end

    # Operation Builder for CreateConfiguration
    class CreateConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v1/configurations')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['description'] = input[:description] unless input[:description].nil?
        data['kafkaVersions'] = Builders::List____listOf__string.build(input[:kafka_versions]) unless input[:kafka_versions].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['serverProperties'] = Base64::encode64(input[:server_properties]).strip unless input[:server_properties].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteCluster
    class DeleteCluster
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:cluster_arn].to_s.empty?
          raise ArgumentError, "HTTP label :cluster_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/clusters/%<ClusterArn>s',
            ClusterArn: Hearth::HTTP.uri_escape(input[:cluster_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['currentVersion'] = input[:current_version].to_s unless input[:current_version].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteConfiguration
    class DeleteConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:arn].to_s.empty?
          raise ArgumentError, "HTTP label :arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/configurations/%<Arn>s',
            Arn: Hearth::HTTP.uri_escape(input[:arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeCluster
    class DescribeCluster
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:cluster_arn].to_s.empty?
          raise ArgumentError, "HTTP label :cluster_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/clusters/%<ClusterArn>s',
            ClusterArn: Hearth::HTTP.uri_escape(input[:cluster_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeClusterOperation
    class DescribeClusterOperation
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:cluster_operation_arn].to_s.empty?
          raise ArgumentError, "HTTP label :cluster_operation_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/operations/%<ClusterOperationArn>s',
            ClusterOperationArn: Hearth::HTTP.uri_escape(input[:cluster_operation_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeClusterV2
    class DescribeClusterV2
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:cluster_arn].to_s.empty?
          raise ArgumentError, "HTTP label :cluster_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/api/v2/clusters/%<ClusterArn>s',
            ClusterArn: Hearth::HTTP.uri_escape(input[:cluster_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeConfiguration
    class DescribeConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:arn].to_s.empty?
          raise ArgumentError, "HTTP label :arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/configurations/%<Arn>s',
            Arn: Hearth::HTTP.uri_escape(input[:arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeConfigurationRevision
    class DescribeConfigurationRevision
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:arn].to_s.empty?
          raise ArgumentError, "HTTP label :arn cannot be nil or empty."
        end
        if input[:revision].to_s.empty?
          raise ArgumentError, "HTTP label :revision cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/configurations/%<Arn>s/revisions/%<Revision>s',
            Arn: Hearth::HTTP.uri_escape(input[:arn].to_s),
            Revision: Hearth::HTTP.uri_escape(input[:revision].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetBootstrapBrokers
    class GetBootstrapBrokers
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:cluster_arn].to_s.empty?
          raise ArgumentError, "HTTP label :cluster_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/clusters/%<ClusterArn>s/bootstrap-brokers',
            ClusterArn: Hearth::HTTP.uri_escape(input[:cluster_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetCompatibleKafkaVersions
    class GetCompatibleKafkaVersions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/v1/compatible-kafka-versions')
        params = Hearth::Query::ParamList.new
        params['clusterArn'] = input[:cluster_arn].to_s unless input[:cluster_arn].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListClusterOperations
    class ListClusterOperations
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:cluster_arn].to_s.empty?
          raise ArgumentError, "HTTP label :cluster_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/clusters/%<ClusterArn>s/operations',
            ClusterArn: Hearth::HTTP.uri_escape(input[:cluster_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListClusters
    class ListClusters
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/v1/clusters')
        params = Hearth::Query::ParamList.new
        params['clusterNameFilter'] = input[:cluster_name_filter].to_s unless input[:cluster_name_filter].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListClustersV2
    class ListClustersV2
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/api/v2/clusters')
        params = Hearth::Query::ParamList.new
        params['clusterNameFilter'] = input[:cluster_name_filter].to_s unless input[:cluster_name_filter].nil?
        params['clusterTypeFilter'] = input[:cluster_type_filter].to_s unless input[:cluster_type_filter].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListConfigurationRevisions
    class ListConfigurationRevisions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:arn].to_s.empty?
          raise ArgumentError, "HTTP label :arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/configurations/%<Arn>s/revisions',
            Arn: Hearth::HTTP.uri_escape(input[:arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListConfigurations
    class ListConfigurations
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/v1/configurations')
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListKafkaVersions
    class ListKafkaVersions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/v1/kafka-versions')
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListNodes
    class ListNodes
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:cluster_arn].to_s.empty?
          raise ArgumentError, "HTTP label :cluster_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/clusters/%<ClusterArn>s/nodes',
            ClusterArn: Hearth::HTTP.uri_escape(input[:cluster_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListScramSecrets
    class ListScramSecrets
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:cluster_arn].to_s.empty?
          raise ArgumentError, "HTTP label :cluster_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/clusters/%<ClusterArn>s/scram-secrets',
            ClusterArn: Hearth::HTTP.uri_escape(input[:cluster_arn].to_s)
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
            '/v1/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for RebootBroker
    class RebootBroker
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:cluster_arn].to_s.empty?
          raise ArgumentError, "HTTP label :cluster_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/clusters/%<ClusterArn>s/reboot-broker',
            ClusterArn: Hearth::HTTP.uri_escape(input[:cluster_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['brokerIds'] = Builders::List____listOf__string.build(input[:broker_ids]) unless input[:broker_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
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
            '/v1/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['tags'] = Builders::Map____mapOf__string.build(input[:tags]) unless input[:tags].nil?
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
            '/v1/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
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

    # Operation Builder for UpdateBrokerCount
    class UpdateBrokerCount
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:cluster_arn].to_s.empty?
          raise ArgumentError, "HTTP label :cluster_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/clusters/%<ClusterArn>s/nodes/count',
            ClusterArn: Hearth::HTTP.uri_escape(input[:cluster_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['currentVersion'] = input[:current_version] unless input[:current_version].nil?
        data['targetNumberOfBrokerNodes'] = input[:target_number_of_broker_nodes] unless input[:target_number_of_broker_nodes].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateBrokerStorage
    class UpdateBrokerStorage
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:cluster_arn].to_s.empty?
          raise ArgumentError, "HTTP label :cluster_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/clusters/%<ClusterArn>s/nodes/storage',
            ClusterArn: Hearth::HTTP.uri_escape(input[:cluster_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['currentVersion'] = input[:current_version] unless input[:current_version].nil?
        data['targetBrokerEBSVolumeInfo'] = Builders::List____listOfBrokerEBSVolumeInfo.build(input[:target_broker_ebs_volume_info]) unless input[:target_broker_ebs_volume_info].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for __listOfBrokerEBSVolumeInfo
    class List____listOfBrokerEBSVolumeInfo
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::BrokerEBSVolumeInfo.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for BrokerEBSVolumeInfo
    class BrokerEBSVolumeInfo
      def self.build(input)
        data = {}
        data['kafkaBrokerNodeId'] = input[:kafka_broker_node_id] unless input[:kafka_broker_node_id].nil?
        data['provisionedThroughput'] = Builders::ProvisionedThroughput.build(input[:provisioned_throughput]) unless input[:provisioned_throughput].nil?
        data['volumeSizeGB'] = input[:volume_size_gb] unless input[:volume_size_gb].nil?
        data
      end
    end

    # Operation Builder for UpdateBrokerType
    class UpdateBrokerType
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:cluster_arn].to_s.empty?
          raise ArgumentError, "HTTP label :cluster_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/clusters/%<ClusterArn>s/nodes/type',
            ClusterArn: Hearth::HTTP.uri_escape(input[:cluster_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['currentVersion'] = input[:current_version] unless input[:current_version].nil?
        data['targetInstanceType'] = input[:target_instance_type] unless input[:target_instance_type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateClusterConfiguration
    class UpdateClusterConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:cluster_arn].to_s.empty?
          raise ArgumentError, "HTTP label :cluster_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/clusters/%<ClusterArn>s/configuration',
            ClusterArn: Hearth::HTTP.uri_escape(input[:cluster_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['configurationInfo'] = Builders::ConfigurationInfo.build(input[:configuration_info]) unless input[:configuration_info].nil?
        data['currentVersion'] = input[:current_version] unless input[:current_version].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateClusterKafkaVersion
    class UpdateClusterKafkaVersion
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:cluster_arn].to_s.empty?
          raise ArgumentError, "HTTP label :cluster_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/clusters/%<ClusterArn>s/version',
            ClusterArn: Hearth::HTTP.uri_escape(input[:cluster_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['configurationInfo'] = Builders::ConfigurationInfo.build(input[:configuration_info]) unless input[:configuration_info].nil?
        data['currentVersion'] = input[:current_version] unless input[:current_version].nil?
        data['targetKafkaVersion'] = input[:target_kafka_version] unless input[:target_kafka_version].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateConfiguration
    class UpdateConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:arn].to_s.empty?
          raise ArgumentError, "HTTP label :arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/configurations/%<Arn>s',
            Arn: Hearth::HTTP.uri_escape(input[:arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['description'] = input[:description] unless input[:description].nil?
        data['serverProperties'] = Base64::encode64(input[:server_properties]).strip unless input[:server_properties].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateConnectivity
    class UpdateConnectivity
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:cluster_arn].to_s.empty?
          raise ArgumentError, "HTTP label :cluster_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/clusters/%<ClusterArn>s/connectivity',
            ClusterArn: Hearth::HTTP.uri_escape(input[:cluster_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['connectivityInfo'] = Builders::ConnectivityInfo.build(input[:connectivity_info]) unless input[:connectivity_info].nil?
        data['currentVersion'] = input[:current_version] unless input[:current_version].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateMonitoring
    class UpdateMonitoring
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:cluster_arn].to_s.empty?
          raise ArgumentError, "HTTP label :cluster_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/clusters/%<ClusterArn>s/monitoring',
            ClusterArn: Hearth::HTTP.uri_escape(input[:cluster_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['currentVersion'] = input[:current_version] unless input[:current_version].nil?
        data['enhancedMonitoring'] = input[:enhanced_monitoring] unless input[:enhanced_monitoring].nil?
        data['openMonitoring'] = Builders::OpenMonitoringInfo.build(input[:open_monitoring]) unless input[:open_monitoring].nil?
        data['loggingInfo'] = Builders::LoggingInfo.build(input[:logging_info]) unless input[:logging_info].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateSecurity
    class UpdateSecurity
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:cluster_arn].to_s.empty?
          raise ArgumentError, "HTTP label :cluster_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/clusters/%<ClusterArn>s/security',
            ClusterArn: Hearth::HTTP.uri_escape(input[:cluster_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['clientAuthentication'] = Builders::ClientAuthentication.build(input[:client_authentication]) unless input[:client_authentication].nil?
        data['currentVersion'] = input[:current_version] unless input[:current_version].nil?
        data['encryptionInfo'] = Builders::EncryptionInfo.build(input[:encryption_info]) unless input[:encryption_info].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
