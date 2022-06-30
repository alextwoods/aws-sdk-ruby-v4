# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Kafka
  module Validators

    class BadRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BadRequestException, context: context)
        Hearth::Validator.validate!(input[:invalid_parameter], ::String, context: "#{context}[:invalid_parameter]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class BatchAssociateScramSecretInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchAssociateScramSecretInput, context: context)
        Hearth::Validator.validate!(input[:cluster_arn], ::String, context: "#{context}[:cluster_arn]")
        Validators::List____listOf__string.validate!(input[:secret_arn_list], context: "#{context}[:secret_arn_list]") unless input[:secret_arn_list].nil?
      end
    end

    class BatchAssociateScramSecretOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchAssociateScramSecretOutput, context: context)
        Hearth::Validator.validate!(input[:cluster_arn], ::String, context: "#{context}[:cluster_arn]")
        Validators::List____listOfUnprocessedScramSecret.validate!(input[:unprocessed_scram_secrets], context: "#{context}[:unprocessed_scram_secrets]") unless input[:unprocessed_scram_secrets].nil?
      end
    end

    class BatchDisassociateScramSecretInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDisassociateScramSecretInput, context: context)
        Hearth::Validator.validate!(input[:cluster_arn], ::String, context: "#{context}[:cluster_arn]")
        Validators::List____listOf__string.validate!(input[:secret_arn_list], context: "#{context}[:secret_arn_list]") unless input[:secret_arn_list].nil?
      end
    end

    class BatchDisassociateScramSecretOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDisassociateScramSecretOutput, context: context)
        Hearth::Validator.validate!(input[:cluster_arn], ::String, context: "#{context}[:cluster_arn]")
        Validators::List____listOfUnprocessedScramSecret.validate!(input[:unprocessed_scram_secrets], context: "#{context}[:unprocessed_scram_secrets]") unless input[:unprocessed_scram_secrets].nil?
      end
    end

    class BrokerEBSVolumeInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BrokerEBSVolumeInfo, context: context)
        Hearth::Validator.validate!(input[:kafka_broker_node_id], ::String, context: "#{context}[:kafka_broker_node_id]")
        Validators::ProvisionedThroughput.validate!(input[:provisioned_throughput], context: "#{context}[:provisioned_throughput]") unless input[:provisioned_throughput].nil?
        Hearth::Validator.validate!(input[:volume_size_gb], ::Integer, context: "#{context}[:volume_size_gb]")
      end
    end

    class BrokerLogs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BrokerLogs, context: context)
        Validators::CloudWatchLogs.validate!(input[:cloud_watch_logs], context: "#{context}[:cloud_watch_logs]") unless input[:cloud_watch_logs].nil?
        Validators::Firehose.validate!(input[:firehose], context: "#{context}[:firehose]") unless input[:firehose].nil?
        Validators::S3.validate!(input[:s3], context: "#{context}[:s3]") unless input[:s3].nil?
      end
    end

    class BrokerNodeGroupInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BrokerNodeGroupInfo, context: context)
        Hearth::Validator.validate!(input[:broker_az_distribution], ::String, context: "#{context}[:broker_az_distribution]")
        Validators::List____listOf__string.validate!(input[:client_subnets], context: "#{context}[:client_subnets]") unless input[:client_subnets].nil?
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Validators::List____listOf__string.validate!(input[:security_groups], context: "#{context}[:security_groups]") unless input[:security_groups].nil?
        Validators::StorageInfo.validate!(input[:storage_info], context: "#{context}[:storage_info]") unless input[:storage_info].nil?
        Validators::ConnectivityInfo.validate!(input[:connectivity_info], context: "#{context}[:connectivity_info]") unless input[:connectivity_info].nil?
      end
    end

    class BrokerNodeInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BrokerNodeInfo, context: context)
        Hearth::Validator.validate!(input[:attached_eni_id], ::String, context: "#{context}[:attached_eni_id]")
        Hearth::Validator.validate!(input[:broker_id], ::Float, context: "#{context}[:broker_id]")
        Hearth::Validator.validate!(input[:client_subnet], ::String, context: "#{context}[:client_subnet]")
        Hearth::Validator.validate!(input[:client_vpc_ip_address], ::String, context: "#{context}[:client_vpc_ip_address]")
        Validators::BrokerSoftwareInfo.validate!(input[:current_broker_software_info], context: "#{context}[:current_broker_software_info]") unless input[:current_broker_software_info].nil?
        Validators::List____listOf__string.validate!(input[:endpoints], context: "#{context}[:endpoints]") unless input[:endpoints].nil?
      end
    end

    class BrokerSoftwareInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BrokerSoftwareInfo, context: context)
        Hearth::Validator.validate!(input[:configuration_arn], ::String, context: "#{context}[:configuration_arn]")
        Hearth::Validator.validate!(input[:configuration_revision], ::Integer, context: "#{context}[:configuration_revision]")
        Hearth::Validator.validate!(input[:kafka_version], ::String, context: "#{context}[:kafka_version]")
      end
    end

    class ClientAuthentication
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClientAuthentication, context: context)
        Validators::Sasl.validate!(input[:sasl], context: "#{context}[:sasl]") unless input[:sasl].nil?
        Validators::Tls.validate!(input[:tls], context: "#{context}[:tls]") unless input[:tls].nil?
        Validators::Unauthenticated.validate!(input[:unauthenticated], context: "#{context}[:unauthenticated]") unless input[:unauthenticated].nil?
      end
    end

    class CloudWatchLogs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudWatchLogs, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:log_group], ::String, context: "#{context}[:log_group]")
      end
    end

    class Cluster
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Cluster, context: context)
        Hearth::Validator.validate!(input[:active_operation_arn], ::String, context: "#{context}[:active_operation_arn]")
        Hearth::Validator.validate!(input[:cluster_type], ::String, context: "#{context}[:cluster_type]")
        Hearth::Validator.validate!(input[:cluster_arn], ::String, context: "#{context}[:cluster_arn]")
        Hearth::Validator.validate!(input[:cluster_name], ::String, context: "#{context}[:cluster_name]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:current_version], ::String, context: "#{context}[:current_version]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Validators::StateInfo.validate!(input[:state_info], context: "#{context}[:state_info]") unless input[:state_info].nil?
        Validators::Map____mapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::Provisioned.validate!(input[:provisioned], context: "#{context}[:provisioned]") unless input[:provisioned].nil?
        Validators::Serverless.validate!(input[:serverless], context: "#{context}[:serverless]") unless input[:serverless].nil?
      end
    end

    class ClusterInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClusterInfo, context: context)
        Hearth::Validator.validate!(input[:active_operation_arn], ::String, context: "#{context}[:active_operation_arn]")
        Validators::BrokerNodeGroupInfo.validate!(input[:broker_node_group_info], context: "#{context}[:broker_node_group_info]") unless input[:broker_node_group_info].nil?
        Validators::ClientAuthentication.validate!(input[:client_authentication], context: "#{context}[:client_authentication]") unless input[:client_authentication].nil?
        Hearth::Validator.validate!(input[:cluster_arn], ::String, context: "#{context}[:cluster_arn]")
        Hearth::Validator.validate!(input[:cluster_name], ::String, context: "#{context}[:cluster_name]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Validators::BrokerSoftwareInfo.validate!(input[:current_broker_software_info], context: "#{context}[:current_broker_software_info]") unless input[:current_broker_software_info].nil?
        Hearth::Validator.validate!(input[:current_version], ::String, context: "#{context}[:current_version]")
        Validators::EncryptionInfo.validate!(input[:encryption_info], context: "#{context}[:encryption_info]") unless input[:encryption_info].nil?
        Hearth::Validator.validate!(input[:enhanced_monitoring], ::String, context: "#{context}[:enhanced_monitoring]")
        Validators::OpenMonitoring.validate!(input[:open_monitoring], context: "#{context}[:open_monitoring]") unless input[:open_monitoring].nil?
        Validators::LoggingInfo.validate!(input[:logging_info], context: "#{context}[:logging_info]") unless input[:logging_info].nil?
        Hearth::Validator.validate!(input[:number_of_broker_nodes], ::Integer, context: "#{context}[:number_of_broker_nodes]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Validators::StateInfo.validate!(input[:state_info], context: "#{context}[:state_info]") unless input[:state_info].nil?
        Validators::Map____mapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:zookeeper_connect_string], ::String, context: "#{context}[:zookeeper_connect_string]")
        Hearth::Validator.validate!(input[:zookeeper_connect_string_tls], ::String, context: "#{context}[:zookeeper_connect_string_tls]")
      end
    end

    class ClusterOperationInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClusterOperationInfo, context: context)
        Hearth::Validator.validate!(input[:client_request_id], ::String, context: "#{context}[:client_request_id]")
        Hearth::Validator.validate!(input[:cluster_arn], ::String, context: "#{context}[:cluster_arn]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Validators::ErrorInfo.validate!(input[:error_info], context: "#{context}[:error_info]") unless input[:error_info].nil?
        Hearth::Validator.validate!(input[:operation_arn], ::String, context: "#{context}[:operation_arn]")
        Hearth::Validator.validate!(input[:operation_state], ::String, context: "#{context}[:operation_state]")
        Validators::List____listOfClusterOperationStep.validate!(input[:operation_steps], context: "#{context}[:operation_steps]") unless input[:operation_steps].nil?
        Hearth::Validator.validate!(input[:operation_type], ::String, context: "#{context}[:operation_type]")
        Validators::MutableClusterInfo.validate!(input[:source_cluster_info], context: "#{context}[:source_cluster_info]") unless input[:source_cluster_info].nil?
        Validators::MutableClusterInfo.validate!(input[:target_cluster_info], context: "#{context}[:target_cluster_info]") unless input[:target_cluster_info].nil?
      end
    end

    class ClusterOperationStep
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClusterOperationStep, context: context)
        Validators::ClusterOperationStepInfo.validate!(input[:step_info], context: "#{context}[:step_info]") unless input[:step_info].nil?
        Hearth::Validator.validate!(input[:step_name], ::String, context: "#{context}[:step_name]")
      end
    end

    class ClusterOperationStepInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClusterOperationStepInfo, context: context)
        Hearth::Validator.validate!(input[:step_status], ::String, context: "#{context}[:step_status]")
      end
    end

    class CompatibleKafkaVersion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CompatibleKafkaVersion, context: context)
        Hearth::Validator.validate!(input[:source_version], ::String, context: "#{context}[:source_version]")
        Validators::List____listOf__string.validate!(input[:target_versions], context: "#{context}[:target_versions]") unless input[:target_versions].nil?
      end
    end

    class Configuration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Configuration, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::List____listOf__string.validate!(input[:kafka_versions], context: "#{context}[:kafka_versions]") unless input[:kafka_versions].nil?
        Validators::ConfigurationRevision.validate!(input[:latest_revision], context: "#{context}[:latest_revision]") unless input[:latest_revision].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
      end
    end

    class ConfigurationInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfigurationInfo, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:revision], ::Integer, context: "#{context}[:revision]")
      end
    end

    class ConfigurationRevision
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfigurationRevision, context: context)
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:revision], ::Integer, context: "#{context}[:revision]")
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:invalid_parameter], ::String, context: "#{context}[:invalid_parameter]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ConnectivityInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConnectivityInfo, context: context)
        Validators::PublicAccess.validate!(input[:public_access], context: "#{context}[:public_access]") unless input[:public_access].nil?
      end
    end

    class CreateClusterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateClusterInput, context: context)
        Validators::BrokerNodeGroupInfo.validate!(input[:broker_node_group_info], context: "#{context}[:broker_node_group_info]") unless input[:broker_node_group_info].nil?
        Validators::ClientAuthentication.validate!(input[:client_authentication], context: "#{context}[:client_authentication]") unless input[:client_authentication].nil?
        Hearth::Validator.validate!(input[:cluster_name], ::String, context: "#{context}[:cluster_name]")
        Validators::ConfigurationInfo.validate!(input[:configuration_info], context: "#{context}[:configuration_info]") unless input[:configuration_info].nil?
        Validators::EncryptionInfo.validate!(input[:encryption_info], context: "#{context}[:encryption_info]") unless input[:encryption_info].nil?
        Hearth::Validator.validate!(input[:enhanced_monitoring], ::String, context: "#{context}[:enhanced_monitoring]")
        Validators::OpenMonitoringInfo.validate!(input[:open_monitoring], context: "#{context}[:open_monitoring]") unless input[:open_monitoring].nil?
        Hearth::Validator.validate!(input[:kafka_version], ::String, context: "#{context}[:kafka_version]")
        Validators::LoggingInfo.validate!(input[:logging_info], context: "#{context}[:logging_info]") unless input[:logging_info].nil?
        Hearth::Validator.validate!(input[:number_of_broker_nodes], ::Integer, context: "#{context}[:number_of_broker_nodes]")
        Validators::Map____mapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateClusterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateClusterOutput, context: context)
        Hearth::Validator.validate!(input[:cluster_arn], ::String, context: "#{context}[:cluster_arn]")
        Hearth::Validator.validate!(input[:cluster_name], ::String, context: "#{context}[:cluster_name]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
      end
    end

    class CreateClusterV2Input
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateClusterV2Input, context: context)
        Hearth::Validator.validate!(input[:cluster_name], ::String, context: "#{context}[:cluster_name]")
        Validators::Map____mapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::ProvisionedRequest.validate!(input[:provisioned], context: "#{context}[:provisioned]") unless input[:provisioned].nil?
        Validators::ServerlessRequest.validate!(input[:serverless], context: "#{context}[:serverless]") unless input[:serverless].nil?
      end
    end

    class CreateClusterV2Output
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateClusterV2Output, context: context)
        Hearth::Validator.validate!(input[:cluster_arn], ::String, context: "#{context}[:cluster_arn]")
        Hearth::Validator.validate!(input[:cluster_name], ::String, context: "#{context}[:cluster_name]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:cluster_type], ::String, context: "#{context}[:cluster_type]")
      end
    end

    class CreateConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::List____listOf__string.validate!(input[:kafka_versions], context: "#{context}[:kafka_versions]") unless input[:kafka_versions].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:server_properties], ::String, context: "#{context}[:server_properties]")
      end
    end

    class CreateConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Validators::ConfigurationRevision.validate!(input[:latest_revision], context: "#{context}[:latest_revision]") unless input[:latest_revision].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
      end
    end

    class DeleteClusterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteClusterInput, context: context)
        Hearth::Validator.validate!(input[:cluster_arn], ::String, context: "#{context}[:cluster_arn]")
        Hearth::Validator.validate!(input[:current_version], ::String, context: "#{context}[:current_version]")
      end
    end

    class DeleteClusterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteClusterOutput, context: context)
        Hearth::Validator.validate!(input[:cluster_arn], ::String, context: "#{context}[:cluster_arn]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
      end
    end

    class DeleteConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class DeleteConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
      end
    end

    class DescribeClusterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeClusterInput, context: context)
        Hearth::Validator.validate!(input[:cluster_arn], ::String, context: "#{context}[:cluster_arn]")
      end
    end

    class DescribeClusterOperationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeClusterOperationInput, context: context)
        Hearth::Validator.validate!(input[:cluster_operation_arn], ::String, context: "#{context}[:cluster_operation_arn]")
      end
    end

    class DescribeClusterOperationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeClusterOperationOutput, context: context)
        Validators::ClusterOperationInfo.validate!(input[:cluster_operation_info], context: "#{context}[:cluster_operation_info]") unless input[:cluster_operation_info].nil?
      end
    end

    class DescribeClusterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeClusterOutput, context: context)
        Validators::ClusterInfo.validate!(input[:cluster_info], context: "#{context}[:cluster_info]") unless input[:cluster_info].nil?
      end
    end

    class DescribeClusterV2Input
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeClusterV2Input, context: context)
        Hearth::Validator.validate!(input[:cluster_arn], ::String, context: "#{context}[:cluster_arn]")
      end
    end

    class DescribeClusterV2Output
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeClusterV2Output, context: context)
        Validators::Cluster.validate!(input[:cluster_info], context: "#{context}[:cluster_info]") unless input[:cluster_info].nil?
      end
    end

    class DescribeConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class DescribeConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::List____listOf__string.validate!(input[:kafka_versions], context: "#{context}[:kafka_versions]") unless input[:kafka_versions].nil?
        Validators::ConfigurationRevision.validate!(input[:latest_revision], context: "#{context}[:latest_revision]") unless input[:latest_revision].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
      end
    end

    class DescribeConfigurationRevisionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeConfigurationRevisionInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:revision], ::Integer, context: "#{context}[:revision]")
      end
    end

    class DescribeConfigurationRevisionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeConfigurationRevisionOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:revision], ::Integer, context: "#{context}[:revision]")
        Hearth::Validator.validate!(input[:server_properties], ::String, context: "#{context}[:server_properties]")
      end
    end

    class EBSStorageInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EBSStorageInfo, context: context)
        Validators::ProvisionedThroughput.validate!(input[:provisioned_throughput], context: "#{context}[:provisioned_throughput]") unless input[:provisioned_throughput].nil?
        Hearth::Validator.validate!(input[:volume_size], ::Integer, context: "#{context}[:volume_size]")
      end
    end

    class EncryptionAtRest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EncryptionAtRest, context: context)
        Hearth::Validator.validate!(input[:data_volume_kms_key_id], ::String, context: "#{context}[:data_volume_kms_key_id]")
      end
    end

    class EncryptionInTransit
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EncryptionInTransit, context: context)
        Hearth::Validator.validate!(input[:client_broker], ::String, context: "#{context}[:client_broker]")
        Hearth::Validator.validate!(input[:in_cluster], ::TrueClass, ::FalseClass, context: "#{context}[:in_cluster]")
      end
    end

    class EncryptionInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EncryptionInfo, context: context)
        Validators::EncryptionAtRest.validate!(input[:encryption_at_rest], context: "#{context}[:encryption_at_rest]") unless input[:encryption_at_rest].nil?
        Validators::EncryptionInTransit.validate!(input[:encryption_in_transit], context: "#{context}[:encryption_in_transit]") unless input[:encryption_in_transit].nil?
      end
    end

    class ErrorInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ErrorInfo, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_string], ::String, context: "#{context}[:error_string]")
      end
    end

    class Firehose
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Firehose, context: context)
        Hearth::Validator.validate!(input[:delivery_stream], ::String, context: "#{context}[:delivery_stream]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
      end
    end

    class ForbiddenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ForbiddenException, context: context)
        Hearth::Validator.validate!(input[:invalid_parameter], ::String, context: "#{context}[:invalid_parameter]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class GetBootstrapBrokersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBootstrapBrokersInput, context: context)
        Hearth::Validator.validate!(input[:cluster_arn], ::String, context: "#{context}[:cluster_arn]")
      end
    end

    class GetBootstrapBrokersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBootstrapBrokersOutput, context: context)
        Hearth::Validator.validate!(input[:bootstrap_broker_string], ::String, context: "#{context}[:bootstrap_broker_string]")
        Hearth::Validator.validate!(input[:bootstrap_broker_string_tls], ::String, context: "#{context}[:bootstrap_broker_string_tls]")
        Hearth::Validator.validate!(input[:bootstrap_broker_string_sasl_scram], ::String, context: "#{context}[:bootstrap_broker_string_sasl_scram]")
        Hearth::Validator.validate!(input[:bootstrap_broker_string_sasl_iam], ::String, context: "#{context}[:bootstrap_broker_string_sasl_iam]")
        Hearth::Validator.validate!(input[:bootstrap_broker_string_public_tls], ::String, context: "#{context}[:bootstrap_broker_string_public_tls]")
        Hearth::Validator.validate!(input[:bootstrap_broker_string_public_sasl_scram], ::String, context: "#{context}[:bootstrap_broker_string_public_sasl_scram]")
        Hearth::Validator.validate!(input[:bootstrap_broker_string_public_sasl_iam], ::String, context: "#{context}[:bootstrap_broker_string_public_sasl_iam]")
      end
    end

    class GetCompatibleKafkaVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCompatibleKafkaVersionsInput, context: context)
        Hearth::Validator.validate!(input[:cluster_arn], ::String, context: "#{context}[:cluster_arn]")
      end
    end

    class GetCompatibleKafkaVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCompatibleKafkaVersionsOutput, context: context)
        Validators::List____listOfCompatibleKafkaVersion.validate!(input[:compatible_kafka_versions], context: "#{context}[:compatible_kafka_versions]") unless input[:compatible_kafka_versions].nil?
      end
    end

    class Iam
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Iam, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
      end
    end

    class InternalServerErrorException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerErrorException, context: context)
        Hearth::Validator.validate!(input[:invalid_parameter], ::String, context: "#{context}[:invalid_parameter]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class JmxExporter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JmxExporter, context: context)
        Hearth::Validator.validate!(input[:enabled_in_broker], ::TrueClass, ::FalseClass, context: "#{context}[:enabled_in_broker]")
      end
    end

    class JmxExporterInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JmxExporterInfo, context: context)
        Hearth::Validator.validate!(input[:enabled_in_broker], ::TrueClass, ::FalseClass, context: "#{context}[:enabled_in_broker]")
      end
    end

    class KafkaVersion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KafkaVersion, context: context)
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class ListClusterOperationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListClusterOperationsInput, context: context)
        Hearth::Validator.validate!(input[:cluster_arn], ::String, context: "#{context}[:cluster_arn]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListClusterOperationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListClusterOperationsOutput, context: context)
        Validators::List____listOfClusterOperationInfo.validate!(input[:cluster_operation_info_list], context: "#{context}[:cluster_operation_info_list]") unless input[:cluster_operation_info_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListClustersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListClustersInput, context: context)
        Hearth::Validator.validate!(input[:cluster_name_filter], ::String, context: "#{context}[:cluster_name_filter]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListClustersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListClustersOutput, context: context)
        Validators::List____listOfClusterInfo.validate!(input[:cluster_info_list], context: "#{context}[:cluster_info_list]") unless input[:cluster_info_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListClustersV2Input
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListClustersV2Input, context: context)
        Hearth::Validator.validate!(input[:cluster_name_filter], ::String, context: "#{context}[:cluster_name_filter]")
        Hearth::Validator.validate!(input[:cluster_type_filter], ::String, context: "#{context}[:cluster_type_filter]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListClustersV2Output
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListClustersV2Output, context: context)
        Validators::List____listOfCluster.validate!(input[:cluster_info_list], context: "#{context}[:cluster_info_list]") unless input[:cluster_info_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListConfigurationRevisionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListConfigurationRevisionsInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListConfigurationRevisionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListConfigurationRevisionsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::List____listOfConfigurationRevision.validate!(input[:revisions], context: "#{context}[:revisions]") unless input[:revisions].nil?
      end
    end

    class ListConfigurationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListConfigurationsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListConfigurationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListConfigurationsOutput, context: context)
        Validators::List____listOfConfiguration.validate!(input[:configurations], context: "#{context}[:configurations]") unless input[:configurations].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListKafkaVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListKafkaVersionsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListKafkaVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListKafkaVersionsOutput, context: context)
        Validators::List____listOfKafkaVersion.validate!(input[:kafka_versions], context: "#{context}[:kafka_versions]") unless input[:kafka_versions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListNodesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListNodesInput, context: context)
        Hearth::Validator.validate!(input[:cluster_arn], ::String, context: "#{context}[:cluster_arn]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListNodesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListNodesOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::List____listOfNodeInfo.validate!(input[:node_info_list], context: "#{context}[:node_info_list]") unless input[:node_info_list].nil?
      end
    end

    class ListScramSecretsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListScramSecretsInput, context: context)
        Hearth::Validator.validate!(input[:cluster_arn], ::String, context: "#{context}[:cluster_arn]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListScramSecretsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListScramSecretsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::List____listOf__string.validate!(input[:secret_arn_list], context: "#{context}[:secret_arn_list]") unless input[:secret_arn_list].nil?
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        Validators::Map____mapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class LoggingInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LoggingInfo, context: context)
        Validators::BrokerLogs.validate!(input[:broker_logs], context: "#{context}[:broker_logs]") unless input[:broker_logs].nil?
      end
    end

    class MutableClusterInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MutableClusterInfo, context: context)
        Validators::List____listOfBrokerEBSVolumeInfo.validate!(input[:broker_ebs_volume_info], context: "#{context}[:broker_ebs_volume_info]") unless input[:broker_ebs_volume_info].nil?
        Validators::ConfigurationInfo.validate!(input[:configuration_info], context: "#{context}[:configuration_info]") unless input[:configuration_info].nil?
        Hearth::Validator.validate!(input[:number_of_broker_nodes], ::Integer, context: "#{context}[:number_of_broker_nodes]")
        Hearth::Validator.validate!(input[:enhanced_monitoring], ::String, context: "#{context}[:enhanced_monitoring]")
        Validators::OpenMonitoring.validate!(input[:open_monitoring], context: "#{context}[:open_monitoring]") unless input[:open_monitoring].nil?
        Hearth::Validator.validate!(input[:kafka_version], ::String, context: "#{context}[:kafka_version]")
        Validators::LoggingInfo.validate!(input[:logging_info], context: "#{context}[:logging_info]") unless input[:logging_info].nil?
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Validators::ClientAuthentication.validate!(input[:client_authentication], context: "#{context}[:client_authentication]") unless input[:client_authentication].nil?
        Validators::EncryptionInfo.validate!(input[:encryption_info], context: "#{context}[:encryption_info]") unless input[:encryption_info].nil?
        Validators::ConnectivityInfo.validate!(input[:connectivity_info], context: "#{context}[:connectivity_info]") unless input[:connectivity_info].nil?
      end
    end

    class NodeExporter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NodeExporter, context: context)
        Hearth::Validator.validate!(input[:enabled_in_broker], ::TrueClass, ::FalseClass, context: "#{context}[:enabled_in_broker]")
      end
    end

    class NodeExporterInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NodeExporterInfo, context: context)
        Hearth::Validator.validate!(input[:enabled_in_broker], ::TrueClass, ::FalseClass, context: "#{context}[:enabled_in_broker]")
      end
    end

    class NodeInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NodeInfo, context: context)
        Hearth::Validator.validate!(input[:added_to_cluster_time], ::String, context: "#{context}[:added_to_cluster_time]")
        Validators::BrokerNodeInfo.validate!(input[:broker_node_info], context: "#{context}[:broker_node_info]") unless input[:broker_node_info].nil?
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:node_arn], ::String, context: "#{context}[:node_arn]")
        Hearth::Validator.validate!(input[:node_type], ::String, context: "#{context}[:node_type]")
        Validators::ZookeeperNodeInfo.validate!(input[:zookeeper_node_info], context: "#{context}[:zookeeper_node_info]") unless input[:zookeeper_node_info].nil?
      end
    end

    class NotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotFoundException, context: context)
        Hearth::Validator.validate!(input[:invalid_parameter], ::String, context: "#{context}[:invalid_parameter]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class OpenMonitoring
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OpenMonitoring, context: context)
        Validators::Prometheus.validate!(input[:prometheus], context: "#{context}[:prometheus]") unless input[:prometheus].nil?
      end
    end

    class OpenMonitoringInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OpenMonitoringInfo, context: context)
        Validators::PrometheusInfo.validate!(input[:prometheus], context: "#{context}[:prometheus]") unless input[:prometheus].nil?
      end
    end

    class Prometheus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Prometheus, context: context)
        Validators::JmxExporter.validate!(input[:jmx_exporter], context: "#{context}[:jmx_exporter]") unless input[:jmx_exporter].nil?
        Validators::NodeExporter.validate!(input[:node_exporter], context: "#{context}[:node_exporter]") unless input[:node_exporter].nil?
      end
    end

    class PrometheusInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PrometheusInfo, context: context)
        Validators::JmxExporterInfo.validate!(input[:jmx_exporter], context: "#{context}[:jmx_exporter]") unless input[:jmx_exporter].nil?
        Validators::NodeExporterInfo.validate!(input[:node_exporter], context: "#{context}[:node_exporter]") unless input[:node_exporter].nil?
      end
    end

    class Provisioned
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Provisioned, context: context)
        Validators::BrokerNodeGroupInfo.validate!(input[:broker_node_group_info], context: "#{context}[:broker_node_group_info]") unless input[:broker_node_group_info].nil?
        Validators::BrokerSoftwareInfo.validate!(input[:current_broker_software_info], context: "#{context}[:current_broker_software_info]") unless input[:current_broker_software_info].nil?
        Validators::ClientAuthentication.validate!(input[:client_authentication], context: "#{context}[:client_authentication]") unless input[:client_authentication].nil?
        Validators::EncryptionInfo.validate!(input[:encryption_info], context: "#{context}[:encryption_info]") unless input[:encryption_info].nil?
        Hearth::Validator.validate!(input[:enhanced_monitoring], ::String, context: "#{context}[:enhanced_monitoring]")
        Validators::OpenMonitoringInfo.validate!(input[:open_monitoring], context: "#{context}[:open_monitoring]") unless input[:open_monitoring].nil?
        Validators::LoggingInfo.validate!(input[:logging_info], context: "#{context}[:logging_info]") unless input[:logging_info].nil?
        Hearth::Validator.validate!(input[:number_of_broker_nodes], ::Integer, context: "#{context}[:number_of_broker_nodes]")
        Hearth::Validator.validate!(input[:zookeeper_connect_string], ::String, context: "#{context}[:zookeeper_connect_string]")
        Hearth::Validator.validate!(input[:zookeeper_connect_string_tls], ::String, context: "#{context}[:zookeeper_connect_string_tls]")
      end
    end

    class ProvisionedRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProvisionedRequest, context: context)
        Validators::BrokerNodeGroupInfo.validate!(input[:broker_node_group_info], context: "#{context}[:broker_node_group_info]") unless input[:broker_node_group_info].nil?
        Validators::ClientAuthentication.validate!(input[:client_authentication], context: "#{context}[:client_authentication]") unless input[:client_authentication].nil?
        Validators::ConfigurationInfo.validate!(input[:configuration_info], context: "#{context}[:configuration_info]") unless input[:configuration_info].nil?
        Validators::EncryptionInfo.validate!(input[:encryption_info], context: "#{context}[:encryption_info]") unless input[:encryption_info].nil?
        Hearth::Validator.validate!(input[:enhanced_monitoring], ::String, context: "#{context}[:enhanced_monitoring]")
        Validators::OpenMonitoringInfo.validate!(input[:open_monitoring], context: "#{context}[:open_monitoring]") unless input[:open_monitoring].nil?
        Hearth::Validator.validate!(input[:kafka_version], ::String, context: "#{context}[:kafka_version]")
        Validators::LoggingInfo.validate!(input[:logging_info], context: "#{context}[:logging_info]") unless input[:logging_info].nil?
        Hearth::Validator.validate!(input[:number_of_broker_nodes], ::Integer, context: "#{context}[:number_of_broker_nodes]")
      end
    end

    class ProvisionedThroughput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProvisionedThroughput, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:volume_throughput], ::Integer, context: "#{context}[:volume_throughput]")
      end
    end

    class PublicAccess
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PublicAccess, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class RebootBrokerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RebootBrokerInput, context: context)
        Validators::List____listOf__string.validate!(input[:broker_ids], context: "#{context}[:broker_ids]") unless input[:broker_ids].nil?
        Hearth::Validator.validate!(input[:cluster_arn], ::String, context: "#{context}[:cluster_arn]")
      end
    end

    class RebootBrokerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RebootBrokerOutput, context: context)
        Hearth::Validator.validate!(input[:cluster_arn], ::String, context: "#{context}[:cluster_arn]")
        Hearth::Validator.validate!(input[:cluster_operation_arn], ::String, context: "#{context}[:cluster_operation_arn]")
      end
    end

    class S3
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
      end
    end

    class Sasl
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Sasl, context: context)
        Validators::Scram.validate!(input[:scram], context: "#{context}[:scram]") unless input[:scram].nil?
        Validators::Iam.validate!(input[:iam], context: "#{context}[:iam]") unless input[:iam].nil?
      end
    end

    class Scram
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Scram, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
      end
    end

    class Serverless
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Serverless, context: context)
        Validators::List____listOfVpcConfig.validate!(input[:vpc_configs], context: "#{context}[:vpc_configs]") unless input[:vpc_configs].nil?
        Validators::ServerlessClientAuthentication.validate!(input[:client_authentication], context: "#{context}[:client_authentication]") unless input[:client_authentication].nil?
      end
    end

    class ServerlessClientAuthentication
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServerlessClientAuthentication, context: context)
        Validators::ServerlessSasl.validate!(input[:sasl], context: "#{context}[:sasl]") unless input[:sasl].nil?
      end
    end

    class ServerlessRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServerlessRequest, context: context)
        Validators::List____listOfVpcConfig.validate!(input[:vpc_configs], context: "#{context}[:vpc_configs]") unless input[:vpc_configs].nil?
        Validators::ServerlessClientAuthentication.validate!(input[:client_authentication], context: "#{context}[:client_authentication]") unless input[:client_authentication].nil?
      end
    end

    class ServerlessSasl
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServerlessSasl, context: context)
        Validators::Iam.validate!(input[:iam], context: "#{context}[:iam]") unless input[:iam].nil?
      end
    end

    class ServiceUnavailableException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceUnavailableException, context: context)
        Hearth::Validator.validate!(input[:invalid_parameter], ::String, context: "#{context}[:invalid_parameter]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class StateInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StateInfo, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class StorageInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StorageInfo, context: context)
        Validators::EBSStorageInfo.validate!(input[:ebs_storage_info], context: "#{context}[:ebs_storage_info]") unless input[:ebs_storage_info].nil?
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::Map____mapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class Tls
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tls, context: context)
        Validators::List____listOf__string.validate!(input[:certificate_authority_arn_list], context: "#{context}[:certificate_authority_arn_list]") unless input[:certificate_authority_arn_list].nil?
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
      end
    end

    class TooManyRequestsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyRequestsException, context: context)
        Hearth::Validator.validate!(input[:invalid_parameter], ::String, context: "#{context}[:invalid_parameter]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Unauthenticated
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Unauthenticated, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
      end
    end

    class UnauthorizedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnauthorizedException, context: context)
        Hearth::Validator.validate!(input[:invalid_parameter], ::String, context: "#{context}[:invalid_parameter]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UnprocessedScramSecret
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnprocessedScramSecret, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
        Hearth::Validator.validate!(input[:secret_arn], ::String, context: "#{context}[:secret_arn]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::List____listOf__string.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateBrokerCountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateBrokerCountInput, context: context)
        Hearth::Validator.validate!(input[:cluster_arn], ::String, context: "#{context}[:cluster_arn]")
        Hearth::Validator.validate!(input[:current_version], ::String, context: "#{context}[:current_version]")
        Hearth::Validator.validate!(input[:target_number_of_broker_nodes], ::Integer, context: "#{context}[:target_number_of_broker_nodes]")
      end
    end

    class UpdateBrokerCountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateBrokerCountOutput, context: context)
        Hearth::Validator.validate!(input[:cluster_arn], ::String, context: "#{context}[:cluster_arn]")
        Hearth::Validator.validate!(input[:cluster_operation_arn], ::String, context: "#{context}[:cluster_operation_arn]")
      end
    end

    class UpdateBrokerStorageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateBrokerStorageInput, context: context)
        Hearth::Validator.validate!(input[:cluster_arn], ::String, context: "#{context}[:cluster_arn]")
        Hearth::Validator.validate!(input[:current_version], ::String, context: "#{context}[:current_version]")
        Validators::List____listOfBrokerEBSVolumeInfo.validate!(input[:target_broker_ebs_volume_info], context: "#{context}[:target_broker_ebs_volume_info]") unless input[:target_broker_ebs_volume_info].nil?
      end
    end

    class UpdateBrokerStorageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateBrokerStorageOutput, context: context)
        Hearth::Validator.validate!(input[:cluster_arn], ::String, context: "#{context}[:cluster_arn]")
        Hearth::Validator.validate!(input[:cluster_operation_arn], ::String, context: "#{context}[:cluster_operation_arn]")
      end
    end

    class UpdateBrokerTypeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateBrokerTypeInput, context: context)
        Hearth::Validator.validate!(input[:cluster_arn], ::String, context: "#{context}[:cluster_arn]")
        Hearth::Validator.validate!(input[:current_version], ::String, context: "#{context}[:current_version]")
        Hearth::Validator.validate!(input[:target_instance_type], ::String, context: "#{context}[:target_instance_type]")
      end
    end

    class UpdateBrokerTypeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateBrokerTypeOutput, context: context)
        Hearth::Validator.validate!(input[:cluster_arn], ::String, context: "#{context}[:cluster_arn]")
        Hearth::Validator.validate!(input[:cluster_operation_arn], ::String, context: "#{context}[:cluster_operation_arn]")
      end
    end

    class UpdateClusterConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateClusterConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:cluster_arn], ::String, context: "#{context}[:cluster_arn]")
        Validators::ConfigurationInfo.validate!(input[:configuration_info], context: "#{context}[:configuration_info]") unless input[:configuration_info].nil?
        Hearth::Validator.validate!(input[:current_version], ::String, context: "#{context}[:current_version]")
      end
    end

    class UpdateClusterConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateClusterConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:cluster_arn], ::String, context: "#{context}[:cluster_arn]")
        Hearth::Validator.validate!(input[:cluster_operation_arn], ::String, context: "#{context}[:cluster_operation_arn]")
      end
    end

    class UpdateClusterKafkaVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateClusterKafkaVersionInput, context: context)
        Hearth::Validator.validate!(input[:cluster_arn], ::String, context: "#{context}[:cluster_arn]")
        Validators::ConfigurationInfo.validate!(input[:configuration_info], context: "#{context}[:configuration_info]") unless input[:configuration_info].nil?
        Hearth::Validator.validate!(input[:current_version], ::String, context: "#{context}[:current_version]")
        Hearth::Validator.validate!(input[:target_kafka_version], ::String, context: "#{context}[:target_kafka_version]")
      end
    end

    class UpdateClusterKafkaVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateClusterKafkaVersionOutput, context: context)
        Hearth::Validator.validate!(input[:cluster_arn], ::String, context: "#{context}[:cluster_arn]")
        Hearth::Validator.validate!(input[:cluster_operation_arn], ::String, context: "#{context}[:cluster_operation_arn]")
      end
    end

    class UpdateConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:server_properties], ::String, context: "#{context}[:server_properties]")
      end
    end

    class UpdateConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Validators::ConfigurationRevision.validate!(input[:latest_revision], context: "#{context}[:latest_revision]") unless input[:latest_revision].nil?
      end
    end

    class UpdateConnectivityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateConnectivityInput, context: context)
        Hearth::Validator.validate!(input[:cluster_arn], ::String, context: "#{context}[:cluster_arn]")
        Validators::ConnectivityInfo.validate!(input[:connectivity_info], context: "#{context}[:connectivity_info]") unless input[:connectivity_info].nil?
        Hearth::Validator.validate!(input[:current_version], ::String, context: "#{context}[:current_version]")
      end
    end

    class UpdateConnectivityOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateConnectivityOutput, context: context)
        Hearth::Validator.validate!(input[:cluster_arn], ::String, context: "#{context}[:cluster_arn]")
        Hearth::Validator.validate!(input[:cluster_operation_arn], ::String, context: "#{context}[:cluster_operation_arn]")
      end
    end

    class UpdateMonitoringInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateMonitoringInput, context: context)
        Hearth::Validator.validate!(input[:cluster_arn], ::String, context: "#{context}[:cluster_arn]")
        Hearth::Validator.validate!(input[:current_version], ::String, context: "#{context}[:current_version]")
        Hearth::Validator.validate!(input[:enhanced_monitoring], ::String, context: "#{context}[:enhanced_monitoring]")
        Validators::OpenMonitoringInfo.validate!(input[:open_monitoring], context: "#{context}[:open_monitoring]") unless input[:open_monitoring].nil?
        Validators::LoggingInfo.validate!(input[:logging_info], context: "#{context}[:logging_info]") unless input[:logging_info].nil?
      end
    end

    class UpdateMonitoringOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateMonitoringOutput, context: context)
        Hearth::Validator.validate!(input[:cluster_arn], ::String, context: "#{context}[:cluster_arn]")
        Hearth::Validator.validate!(input[:cluster_operation_arn], ::String, context: "#{context}[:cluster_operation_arn]")
      end
    end

    class UpdateSecurityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSecurityInput, context: context)
        Validators::ClientAuthentication.validate!(input[:client_authentication], context: "#{context}[:client_authentication]") unless input[:client_authentication].nil?
        Hearth::Validator.validate!(input[:cluster_arn], ::String, context: "#{context}[:cluster_arn]")
        Hearth::Validator.validate!(input[:current_version], ::String, context: "#{context}[:current_version]")
        Validators::EncryptionInfo.validate!(input[:encryption_info], context: "#{context}[:encryption_info]") unless input[:encryption_info].nil?
      end
    end

    class UpdateSecurityOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSecurityOutput, context: context)
        Hearth::Validator.validate!(input[:cluster_arn], ::String, context: "#{context}[:cluster_arn]")
        Hearth::Validator.validate!(input[:cluster_operation_arn], ::String, context: "#{context}[:cluster_operation_arn]")
      end
    end

    class VpcConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VpcConfig, context: context)
        Validators::List____listOf__string.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        Validators::List____listOf__string.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
      end
    end

    class ZookeeperNodeInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ZookeeperNodeInfo, context: context)
        Hearth::Validator.validate!(input[:attached_eni_id], ::String, context: "#{context}[:attached_eni_id]")
        Hearth::Validator.validate!(input[:client_vpc_ip_address], ::String, context: "#{context}[:client_vpc_ip_address]")
        Validators::List____listOf__string.validate!(input[:endpoints], context: "#{context}[:endpoints]") unless input[:endpoints].nil?
        Hearth::Validator.validate!(input[:zookeeper_id], ::Float, context: "#{context}[:zookeeper_id]")
        Hearth::Validator.validate!(input[:zookeeper_version], ::String, context: "#{context}[:zookeeper_version]")
      end
    end

    class List____listOfBrokerEBSVolumeInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::BrokerEBSVolumeInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfCluster
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Cluster.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfClusterInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ClusterInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfClusterOperationInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ClusterOperationInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfClusterOperationStep
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ClusterOperationStep.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfCompatibleKafkaVersion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::CompatibleKafkaVersion.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Configuration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfConfigurationRevision
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ConfigurationRevision.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfKafkaVersion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::KafkaVersion.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfNodeInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::NodeInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfUnprocessedScramSecret
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::UnprocessedScramSecret.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfVpcConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::VpcConfig.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOf__string
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Map____mapOf__string
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

  end
end
