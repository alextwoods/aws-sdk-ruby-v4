# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Kafka
  module Params

    module BadRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BadRequestException, context: context)
        type = Types::BadRequestException.new
        type.invalid_parameter = params[:invalid_parameter]
        type.message = params[:message]
        type
      end
    end

    module BatchAssociateScramSecretInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchAssociateScramSecretInput, context: context)
        type = Types::BatchAssociateScramSecretInput.new
        type.cluster_arn = params[:cluster_arn]
        type.secret_arn_list = List____listOf__string.build(params[:secret_arn_list], context: "#{context}[:secret_arn_list]") unless params[:secret_arn_list].nil?
        type
      end
    end

    module BatchAssociateScramSecretOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchAssociateScramSecretOutput, context: context)
        type = Types::BatchAssociateScramSecretOutput.new
        type.cluster_arn = params[:cluster_arn]
        type.unprocessed_scram_secrets = List____listOfUnprocessedScramSecret.build(params[:unprocessed_scram_secrets], context: "#{context}[:unprocessed_scram_secrets]") unless params[:unprocessed_scram_secrets].nil?
        type
      end
    end

    module BatchDisassociateScramSecretInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDisassociateScramSecretInput, context: context)
        type = Types::BatchDisassociateScramSecretInput.new
        type.cluster_arn = params[:cluster_arn]
        type.secret_arn_list = List____listOf__string.build(params[:secret_arn_list], context: "#{context}[:secret_arn_list]") unless params[:secret_arn_list].nil?
        type
      end
    end

    module BatchDisassociateScramSecretOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDisassociateScramSecretOutput, context: context)
        type = Types::BatchDisassociateScramSecretOutput.new
        type.cluster_arn = params[:cluster_arn]
        type.unprocessed_scram_secrets = List____listOfUnprocessedScramSecret.build(params[:unprocessed_scram_secrets], context: "#{context}[:unprocessed_scram_secrets]") unless params[:unprocessed_scram_secrets].nil?
        type
      end
    end

    module BrokerEBSVolumeInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BrokerEBSVolumeInfo, context: context)
        type = Types::BrokerEBSVolumeInfo.new
        type.kafka_broker_node_id = params[:kafka_broker_node_id]
        type.provisioned_throughput = ProvisionedThroughput.build(params[:provisioned_throughput], context: "#{context}[:provisioned_throughput]") unless params[:provisioned_throughput].nil?
        type.volume_size_gb = params[:volume_size_gb]
        type
      end
    end

    module BrokerLogs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BrokerLogs, context: context)
        type = Types::BrokerLogs.new
        type.cloud_watch_logs = CloudWatchLogs.build(params[:cloud_watch_logs], context: "#{context}[:cloud_watch_logs]") unless params[:cloud_watch_logs].nil?
        type.firehose = Firehose.build(params[:firehose], context: "#{context}[:firehose]") unless params[:firehose].nil?
        type.s3 = S3.build(params[:s3], context: "#{context}[:s3]") unless params[:s3].nil?
        type
      end
    end

    module BrokerNodeGroupInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BrokerNodeGroupInfo, context: context)
        type = Types::BrokerNodeGroupInfo.new
        type.broker_az_distribution = params[:broker_az_distribution]
        type.client_subnets = List____listOf__string.build(params[:client_subnets], context: "#{context}[:client_subnets]") unless params[:client_subnets].nil?
        type.instance_type = params[:instance_type]
        type.security_groups = List____listOf__string.build(params[:security_groups], context: "#{context}[:security_groups]") unless params[:security_groups].nil?
        type.storage_info = StorageInfo.build(params[:storage_info], context: "#{context}[:storage_info]") unless params[:storage_info].nil?
        type.connectivity_info = ConnectivityInfo.build(params[:connectivity_info], context: "#{context}[:connectivity_info]") unless params[:connectivity_info].nil?
        type
      end
    end

    module BrokerNodeInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BrokerNodeInfo, context: context)
        type = Types::BrokerNodeInfo.new
        type.attached_eni_id = params[:attached_eni_id]
        type.broker_id = params[:broker_id]
        type.client_subnet = params[:client_subnet]
        type.client_vpc_ip_address = params[:client_vpc_ip_address]
        type.current_broker_software_info = BrokerSoftwareInfo.build(params[:current_broker_software_info], context: "#{context}[:current_broker_software_info]") unless params[:current_broker_software_info].nil?
        type.endpoints = List____listOf__string.build(params[:endpoints], context: "#{context}[:endpoints]") unless params[:endpoints].nil?
        type
      end
    end

    module BrokerSoftwareInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BrokerSoftwareInfo, context: context)
        type = Types::BrokerSoftwareInfo.new
        type.configuration_arn = params[:configuration_arn]
        type.configuration_revision = params[:configuration_revision]
        type.kafka_version = params[:kafka_version]
        type
      end
    end

    module ClientAuthentication
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClientAuthentication, context: context)
        type = Types::ClientAuthentication.new
        type.sasl = Sasl.build(params[:sasl], context: "#{context}[:sasl]") unless params[:sasl].nil?
        type.tls = Tls.build(params[:tls], context: "#{context}[:tls]") unless params[:tls].nil?
        type.unauthenticated = Unauthenticated.build(params[:unauthenticated], context: "#{context}[:unauthenticated]") unless params[:unauthenticated].nil?
        type
      end
    end

    module CloudWatchLogs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloudWatchLogs, context: context)
        type = Types::CloudWatchLogs.new
        type.enabled = params[:enabled]
        type.log_group = params[:log_group]
        type
      end
    end

    module Cluster
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Cluster, context: context)
        type = Types::Cluster.new
        type.active_operation_arn = params[:active_operation_arn]
        type.cluster_type = params[:cluster_type]
        type.cluster_arn = params[:cluster_arn]
        type.cluster_name = params[:cluster_name]
        type.creation_time = params[:creation_time]
        type.current_version = params[:current_version]
        type.state = params[:state]
        type.state_info = StateInfo.build(params[:state_info], context: "#{context}[:state_info]") unless params[:state_info].nil?
        type.tags = Map____mapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.provisioned = Provisioned.build(params[:provisioned], context: "#{context}[:provisioned]") unless params[:provisioned].nil?
        type.serverless = Serverless.build(params[:serverless], context: "#{context}[:serverless]") unless params[:serverless].nil?
        type
      end
    end

    module ClusterInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClusterInfo, context: context)
        type = Types::ClusterInfo.new
        type.active_operation_arn = params[:active_operation_arn]
        type.broker_node_group_info = BrokerNodeGroupInfo.build(params[:broker_node_group_info], context: "#{context}[:broker_node_group_info]") unless params[:broker_node_group_info].nil?
        type.client_authentication = ClientAuthentication.build(params[:client_authentication], context: "#{context}[:client_authentication]") unless params[:client_authentication].nil?
        type.cluster_arn = params[:cluster_arn]
        type.cluster_name = params[:cluster_name]
        type.creation_time = params[:creation_time]
        type.current_broker_software_info = BrokerSoftwareInfo.build(params[:current_broker_software_info], context: "#{context}[:current_broker_software_info]") unless params[:current_broker_software_info].nil?
        type.current_version = params[:current_version]
        type.encryption_info = EncryptionInfo.build(params[:encryption_info], context: "#{context}[:encryption_info]") unless params[:encryption_info].nil?
        type.enhanced_monitoring = params[:enhanced_monitoring]
        type.open_monitoring = OpenMonitoring.build(params[:open_monitoring], context: "#{context}[:open_monitoring]") unless params[:open_monitoring].nil?
        type.logging_info = LoggingInfo.build(params[:logging_info], context: "#{context}[:logging_info]") unless params[:logging_info].nil?
        type.number_of_broker_nodes = params[:number_of_broker_nodes]
        type.state = params[:state]
        type.state_info = StateInfo.build(params[:state_info], context: "#{context}[:state_info]") unless params[:state_info].nil?
        type.tags = Map____mapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.zookeeper_connect_string = params[:zookeeper_connect_string]
        type.zookeeper_connect_string_tls = params[:zookeeper_connect_string_tls]
        type
      end
    end

    module ClusterOperationInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClusterOperationInfo, context: context)
        type = Types::ClusterOperationInfo.new
        type.client_request_id = params[:client_request_id]
        type.cluster_arn = params[:cluster_arn]
        type.creation_time = params[:creation_time]
        type.end_time = params[:end_time]
        type.error_info = ErrorInfo.build(params[:error_info], context: "#{context}[:error_info]") unless params[:error_info].nil?
        type.operation_arn = params[:operation_arn]
        type.operation_state = params[:operation_state]
        type.operation_steps = List____listOfClusterOperationStep.build(params[:operation_steps], context: "#{context}[:operation_steps]") unless params[:operation_steps].nil?
        type.operation_type = params[:operation_type]
        type.source_cluster_info = MutableClusterInfo.build(params[:source_cluster_info], context: "#{context}[:source_cluster_info]") unless params[:source_cluster_info].nil?
        type.target_cluster_info = MutableClusterInfo.build(params[:target_cluster_info], context: "#{context}[:target_cluster_info]") unless params[:target_cluster_info].nil?
        type
      end
    end

    module ClusterOperationStep
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClusterOperationStep, context: context)
        type = Types::ClusterOperationStep.new
        type.step_info = ClusterOperationStepInfo.build(params[:step_info], context: "#{context}[:step_info]") unless params[:step_info].nil?
        type.step_name = params[:step_name]
        type
      end
    end

    module ClusterOperationStepInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClusterOperationStepInfo, context: context)
        type = Types::ClusterOperationStepInfo.new
        type.step_status = params[:step_status]
        type
      end
    end

    module CompatibleKafkaVersion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CompatibleKafkaVersion, context: context)
        type = Types::CompatibleKafkaVersion.new
        type.source_version = params[:source_version]
        type.target_versions = List____listOf__string.build(params[:target_versions], context: "#{context}[:target_versions]") unless params[:target_versions].nil?
        type
      end
    end

    module Configuration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Configuration, context: context)
        type = Types::Configuration.new
        type.arn = params[:arn]
        type.creation_time = params[:creation_time]
        type.description = params[:description]
        type.kafka_versions = List____listOf__string.build(params[:kafka_versions], context: "#{context}[:kafka_versions]") unless params[:kafka_versions].nil?
        type.latest_revision = ConfigurationRevision.build(params[:latest_revision], context: "#{context}[:latest_revision]") unless params[:latest_revision].nil?
        type.name = params[:name]
        type.state = params[:state]
        type
      end
    end

    module ConfigurationInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfigurationInfo, context: context)
        type = Types::ConfigurationInfo.new
        type.arn = params[:arn]
        type.revision = params[:revision]
        type
      end
    end

    module ConfigurationRevision
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfigurationRevision, context: context)
        type = Types::ConfigurationRevision.new
        type.creation_time = params[:creation_time]
        type.description = params[:description]
        type.revision = params[:revision]
        type
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.invalid_parameter = params[:invalid_parameter]
        type.message = params[:message]
        type
      end
    end

    module ConnectivityInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConnectivityInfo, context: context)
        type = Types::ConnectivityInfo.new
        type.public_access = PublicAccess.build(params[:public_access], context: "#{context}[:public_access]") unless params[:public_access].nil?
        type
      end
    end

    module CreateClusterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateClusterInput, context: context)
        type = Types::CreateClusterInput.new
        type.broker_node_group_info = BrokerNodeGroupInfo.build(params[:broker_node_group_info], context: "#{context}[:broker_node_group_info]") unless params[:broker_node_group_info].nil?
        type.client_authentication = ClientAuthentication.build(params[:client_authentication], context: "#{context}[:client_authentication]") unless params[:client_authentication].nil?
        type.cluster_name = params[:cluster_name]
        type.configuration_info = ConfigurationInfo.build(params[:configuration_info], context: "#{context}[:configuration_info]") unless params[:configuration_info].nil?
        type.encryption_info = EncryptionInfo.build(params[:encryption_info], context: "#{context}[:encryption_info]") unless params[:encryption_info].nil?
        type.enhanced_monitoring = params[:enhanced_monitoring]
        type.open_monitoring = OpenMonitoringInfo.build(params[:open_monitoring], context: "#{context}[:open_monitoring]") unless params[:open_monitoring].nil?
        type.kafka_version = params[:kafka_version]
        type.logging_info = LoggingInfo.build(params[:logging_info], context: "#{context}[:logging_info]") unless params[:logging_info].nil?
        type.number_of_broker_nodes = params[:number_of_broker_nodes]
        type.tags = Map____mapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateClusterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateClusterOutput, context: context)
        type = Types::CreateClusterOutput.new
        type.cluster_arn = params[:cluster_arn]
        type.cluster_name = params[:cluster_name]
        type.state = params[:state]
        type
      end
    end

    module CreateClusterV2Input
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateClusterV2Input, context: context)
        type = Types::CreateClusterV2Input.new
        type.cluster_name = params[:cluster_name]
        type.tags = Map____mapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.provisioned = ProvisionedRequest.build(params[:provisioned], context: "#{context}[:provisioned]") unless params[:provisioned].nil?
        type.serverless = ServerlessRequest.build(params[:serverless], context: "#{context}[:serverless]") unless params[:serverless].nil?
        type
      end
    end

    module CreateClusterV2Output
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateClusterV2Output, context: context)
        type = Types::CreateClusterV2Output.new
        type.cluster_arn = params[:cluster_arn]
        type.cluster_name = params[:cluster_name]
        type.state = params[:state]
        type.cluster_type = params[:cluster_type]
        type
      end
    end

    module CreateConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateConfigurationInput, context: context)
        type = Types::CreateConfigurationInput.new
        type.description = params[:description]
        type.kafka_versions = List____listOf__string.build(params[:kafka_versions], context: "#{context}[:kafka_versions]") unless params[:kafka_versions].nil?
        type.name = params[:name]
        type.server_properties = params[:server_properties]
        type
      end
    end

    module CreateConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateConfigurationOutput, context: context)
        type = Types::CreateConfigurationOutput.new
        type.arn = params[:arn]
        type.creation_time = params[:creation_time]
        type.latest_revision = ConfigurationRevision.build(params[:latest_revision], context: "#{context}[:latest_revision]") unless params[:latest_revision].nil?
        type.name = params[:name]
        type.state = params[:state]
        type
      end
    end

    module DeleteClusterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteClusterInput, context: context)
        type = Types::DeleteClusterInput.new
        type.cluster_arn = params[:cluster_arn]
        type.current_version = params[:current_version]
        type
      end
    end

    module DeleteClusterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteClusterOutput, context: context)
        type = Types::DeleteClusterOutput.new
        type.cluster_arn = params[:cluster_arn]
        type.state = params[:state]
        type
      end
    end

    module DeleteConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteConfigurationInput, context: context)
        type = Types::DeleteConfigurationInput.new
        type.arn = params[:arn]
        type
      end
    end

    module DeleteConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteConfigurationOutput, context: context)
        type = Types::DeleteConfigurationOutput.new
        type.arn = params[:arn]
        type.state = params[:state]
        type
      end
    end

    module DescribeClusterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeClusterInput, context: context)
        type = Types::DescribeClusterInput.new
        type.cluster_arn = params[:cluster_arn]
        type
      end
    end

    module DescribeClusterOperationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeClusterOperationInput, context: context)
        type = Types::DescribeClusterOperationInput.new
        type.cluster_operation_arn = params[:cluster_operation_arn]
        type
      end
    end

    module DescribeClusterOperationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeClusterOperationOutput, context: context)
        type = Types::DescribeClusterOperationOutput.new
        type.cluster_operation_info = ClusterOperationInfo.build(params[:cluster_operation_info], context: "#{context}[:cluster_operation_info]") unless params[:cluster_operation_info].nil?
        type
      end
    end

    module DescribeClusterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeClusterOutput, context: context)
        type = Types::DescribeClusterOutput.new
        type.cluster_info = ClusterInfo.build(params[:cluster_info], context: "#{context}[:cluster_info]") unless params[:cluster_info].nil?
        type
      end
    end

    module DescribeClusterV2Input
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeClusterV2Input, context: context)
        type = Types::DescribeClusterV2Input.new
        type.cluster_arn = params[:cluster_arn]
        type
      end
    end

    module DescribeClusterV2Output
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeClusterV2Output, context: context)
        type = Types::DescribeClusterV2Output.new
        type.cluster_info = Cluster.build(params[:cluster_info], context: "#{context}[:cluster_info]") unless params[:cluster_info].nil?
        type
      end
    end

    module DescribeConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeConfigurationInput, context: context)
        type = Types::DescribeConfigurationInput.new
        type.arn = params[:arn]
        type
      end
    end

    module DescribeConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeConfigurationOutput, context: context)
        type = Types::DescribeConfigurationOutput.new
        type.arn = params[:arn]
        type.creation_time = params[:creation_time]
        type.description = params[:description]
        type.kafka_versions = List____listOf__string.build(params[:kafka_versions], context: "#{context}[:kafka_versions]") unless params[:kafka_versions].nil?
        type.latest_revision = ConfigurationRevision.build(params[:latest_revision], context: "#{context}[:latest_revision]") unless params[:latest_revision].nil?
        type.name = params[:name]
        type.state = params[:state]
        type
      end
    end

    module DescribeConfigurationRevisionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeConfigurationRevisionInput, context: context)
        type = Types::DescribeConfigurationRevisionInput.new
        type.arn = params[:arn]
        type.revision = params[:revision]
        type
      end
    end

    module DescribeConfigurationRevisionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeConfigurationRevisionOutput, context: context)
        type = Types::DescribeConfigurationRevisionOutput.new
        type.arn = params[:arn]
        type.creation_time = params[:creation_time]
        type.description = params[:description]
        type.revision = params[:revision]
        type.server_properties = params[:server_properties]
        type
      end
    end

    module EBSStorageInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EBSStorageInfo, context: context)
        type = Types::EBSStorageInfo.new
        type.provisioned_throughput = ProvisionedThroughput.build(params[:provisioned_throughput], context: "#{context}[:provisioned_throughput]") unless params[:provisioned_throughput].nil?
        type.volume_size = params[:volume_size]
        type
      end
    end

    module EncryptionAtRest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EncryptionAtRest, context: context)
        type = Types::EncryptionAtRest.new
        type.data_volume_kms_key_id = params[:data_volume_kms_key_id]
        type
      end
    end

    module EncryptionInTransit
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EncryptionInTransit, context: context)
        type = Types::EncryptionInTransit.new
        type.client_broker = params[:client_broker]
        type.in_cluster = params[:in_cluster]
        type
      end
    end

    module EncryptionInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EncryptionInfo, context: context)
        type = Types::EncryptionInfo.new
        type.encryption_at_rest = EncryptionAtRest.build(params[:encryption_at_rest], context: "#{context}[:encryption_at_rest]") unless params[:encryption_at_rest].nil?
        type.encryption_in_transit = EncryptionInTransit.build(params[:encryption_in_transit], context: "#{context}[:encryption_in_transit]") unless params[:encryption_in_transit].nil?
        type
      end
    end

    module ErrorInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ErrorInfo, context: context)
        type = Types::ErrorInfo.new
        type.error_code = params[:error_code]
        type.error_string = params[:error_string]
        type
      end
    end

    module Firehose
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Firehose, context: context)
        type = Types::Firehose.new
        type.delivery_stream = params[:delivery_stream]
        type.enabled = params[:enabled]
        type
      end
    end

    module ForbiddenException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ForbiddenException, context: context)
        type = Types::ForbiddenException.new
        type.invalid_parameter = params[:invalid_parameter]
        type.message = params[:message]
        type
      end
    end

    module GetBootstrapBrokersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBootstrapBrokersInput, context: context)
        type = Types::GetBootstrapBrokersInput.new
        type.cluster_arn = params[:cluster_arn]
        type
      end
    end

    module GetBootstrapBrokersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBootstrapBrokersOutput, context: context)
        type = Types::GetBootstrapBrokersOutput.new
        type.bootstrap_broker_string = params[:bootstrap_broker_string]
        type.bootstrap_broker_string_tls = params[:bootstrap_broker_string_tls]
        type.bootstrap_broker_string_sasl_scram = params[:bootstrap_broker_string_sasl_scram]
        type.bootstrap_broker_string_sasl_iam = params[:bootstrap_broker_string_sasl_iam]
        type.bootstrap_broker_string_public_tls = params[:bootstrap_broker_string_public_tls]
        type.bootstrap_broker_string_public_sasl_scram = params[:bootstrap_broker_string_public_sasl_scram]
        type.bootstrap_broker_string_public_sasl_iam = params[:bootstrap_broker_string_public_sasl_iam]
        type
      end
    end

    module GetCompatibleKafkaVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCompatibleKafkaVersionsInput, context: context)
        type = Types::GetCompatibleKafkaVersionsInput.new
        type.cluster_arn = params[:cluster_arn]
        type
      end
    end

    module GetCompatibleKafkaVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCompatibleKafkaVersionsOutput, context: context)
        type = Types::GetCompatibleKafkaVersionsOutput.new
        type.compatible_kafka_versions = List____listOfCompatibleKafkaVersion.build(params[:compatible_kafka_versions], context: "#{context}[:compatible_kafka_versions]") unless params[:compatible_kafka_versions].nil?
        type
      end
    end

    module Iam
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Iam, context: context)
        type = Types::Iam.new
        type.enabled = params[:enabled]
        type
      end
    end

    module InternalServerErrorException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerErrorException, context: context)
        type = Types::InternalServerErrorException.new
        type.invalid_parameter = params[:invalid_parameter]
        type.message = params[:message]
        type
      end
    end

    module JmxExporter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JmxExporter, context: context)
        type = Types::JmxExporter.new
        type.enabled_in_broker = params[:enabled_in_broker]
        type
      end
    end

    module JmxExporterInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JmxExporterInfo, context: context)
        type = Types::JmxExporterInfo.new
        type.enabled_in_broker = params[:enabled_in_broker]
        type
      end
    end

    module KafkaVersion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KafkaVersion, context: context)
        type = Types::KafkaVersion.new
        type.version = params[:version]
        type.status = params[:status]
        type
      end
    end

    module ListClusterOperationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListClusterOperationsInput, context: context)
        type = Types::ListClusterOperationsInput.new
        type.cluster_arn = params[:cluster_arn]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListClusterOperationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListClusterOperationsOutput, context: context)
        type = Types::ListClusterOperationsOutput.new
        type.cluster_operation_info_list = List____listOfClusterOperationInfo.build(params[:cluster_operation_info_list], context: "#{context}[:cluster_operation_info_list]") unless params[:cluster_operation_info_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListClustersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListClustersInput, context: context)
        type = Types::ListClustersInput.new
        type.cluster_name_filter = params[:cluster_name_filter]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListClustersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListClustersOutput, context: context)
        type = Types::ListClustersOutput.new
        type.cluster_info_list = List____listOfClusterInfo.build(params[:cluster_info_list], context: "#{context}[:cluster_info_list]") unless params[:cluster_info_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListClustersV2Input
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListClustersV2Input, context: context)
        type = Types::ListClustersV2Input.new
        type.cluster_name_filter = params[:cluster_name_filter]
        type.cluster_type_filter = params[:cluster_type_filter]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListClustersV2Output
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListClustersV2Output, context: context)
        type = Types::ListClustersV2Output.new
        type.cluster_info_list = List____listOfCluster.build(params[:cluster_info_list], context: "#{context}[:cluster_info_list]") unless params[:cluster_info_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListConfigurationRevisionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListConfigurationRevisionsInput, context: context)
        type = Types::ListConfigurationRevisionsInput.new
        type.arn = params[:arn]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListConfigurationRevisionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListConfigurationRevisionsOutput, context: context)
        type = Types::ListConfigurationRevisionsOutput.new
        type.next_token = params[:next_token]
        type.revisions = List____listOfConfigurationRevision.build(params[:revisions], context: "#{context}[:revisions]") unless params[:revisions].nil?
        type
      end
    end

    module ListConfigurationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListConfigurationsInput, context: context)
        type = Types::ListConfigurationsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListConfigurationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListConfigurationsOutput, context: context)
        type = Types::ListConfigurationsOutput.new
        type.configurations = List____listOfConfiguration.build(params[:configurations], context: "#{context}[:configurations]") unless params[:configurations].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListKafkaVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListKafkaVersionsInput, context: context)
        type = Types::ListKafkaVersionsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListKafkaVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListKafkaVersionsOutput, context: context)
        type = Types::ListKafkaVersionsOutput.new
        type.kafka_versions = List____listOfKafkaVersion.build(params[:kafka_versions], context: "#{context}[:kafka_versions]") unless params[:kafka_versions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListNodesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListNodesInput, context: context)
        type = Types::ListNodesInput.new
        type.cluster_arn = params[:cluster_arn]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListNodesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListNodesOutput, context: context)
        type = Types::ListNodesOutput.new
        type.next_token = params[:next_token]
        type.node_info_list = List____listOfNodeInfo.build(params[:node_info_list], context: "#{context}[:node_info_list]") unless params[:node_info_list].nil?
        type
      end
    end

    module ListScramSecretsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListScramSecretsInput, context: context)
        type = Types::ListScramSecretsInput.new
        type.cluster_arn = params[:cluster_arn]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListScramSecretsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListScramSecretsOutput, context: context)
        type = Types::ListScramSecretsOutput.new
        type.next_token = params[:next_token]
        type.secret_arn_list = List____listOf__string.build(params[:secret_arn_list], context: "#{context}[:secret_arn_list]") unless params[:secret_arn_list].nil?
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = Map____mapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module LoggingInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LoggingInfo, context: context)
        type = Types::LoggingInfo.new
        type.broker_logs = BrokerLogs.build(params[:broker_logs], context: "#{context}[:broker_logs]") unless params[:broker_logs].nil?
        type
      end
    end

    module MutableClusterInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MutableClusterInfo, context: context)
        type = Types::MutableClusterInfo.new
        type.broker_ebs_volume_info = List____listOfBrokerEBSVolumeInfo.build(params[:broker_ebs_volume_info], context: "#{context}[:broker_ebs_volume_info]") unless params[:broker_ebs_volume_info].nil?
        type.configuration_info = ConfigurationInfo.build(params[:configuration_info], context: "#{context}[:configuration_info]") unless params[:configuration_info].nil?
        type.number_of_broker_nodes = params[:number_of_broker_nodes]
        type.enhanced_monitoring = params[:enhanced_monitoring]
        type.open_monitoring = OpenMonitoring.build(params[:open_monitoring], context: "#{context}[:open_monitoring]") unless params[:open_monitoring].nil?
        type.kafka_version = params[:kafka_version]
        type.logging_info = LoggingInfo.build(params[:logging_info], context: "#{context}[:logging_info]") unless params[:logging_info].nil?
        type.instance_type = params[:instance_type]
        type.client_authentication = ClientAuthentication.build(params[:client_authentication], context: "#{context}[:client_authentication]") unless params[:client_authentication].nil?
        type.encryption_info = EncryptionInfo.build(params[:encryption_info], context: "#{context}[:encryption_info]") unless params[:encryption_info].nil?
        type.connectivity_info = ConnectivityInfo.build(params[:connectivity_info], context: "#{context}[:connectivity_info]") unless params[:connectivity_info].nil?
        type
      end
    end

    module NodeExporter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NodeExporter, context: context)
        type = Types::NodeExporter.new
        type.enabled_in_broker = params[:enabled_in_broker]
        type
      end
    end

    module NodeExporterInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NodeExporterInfo, context: context)
        type = Types::NodeExporterInfo.new
        type.enabled_in_broker = params[:enabled_in_broker]
        type
      end
    end

    module NodeInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NodeInfo, context: context)
        type = Types::NodeInfo.new
        type.added_to_cluster_time = params[:added_to_cluster_time]
        type.broker_node_info = BrokerNodeInfo.build(params[:broker_node_info], context: "#{context}[:broker_node_info]") unless params[:broker_node_info].nil?
        type.instance_type = params[:instance_type]
        type.node_arn = params[:node_arn]
        type.node_type = params[:node_type]
        type.zookeeper_node_info = ZookeeperNodeInfo.build(params[:zookeeper_node_info], context: "#{context}[:zookeeper_node_info]") unless params[:zookeeper_node_info].nil?
        type
      end
    end

    module NotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotFoundException, context: context)
        type = Types::NotFoundException.new
        type.invalid_parameter = params[:invalid_parameter]
        type.message = params[:message]
        type
      end
    end

    module OpenMonitoring
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OpenMonitoring, context: context)
        type = Types::OpenMonitoring.new
        type.prometheus = Prometheus.build(params[:prometheus], context: "#{context}[:prometheus]") unless params[:prometheus].nil?
        type
      end
    end

    module OpenMonitoringInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OpenMonitoringInfo, context: context)
        type = Types::OpenMonitoringInfo.new
        type.prometheus = PrometheusInfo.build(params[:prometheus], context: "#{context}[:prometheus]") unless params[:prometheus].nil?
        type
      end
    end

    module Prometheus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Prometheus, context: context)
        type = Types::Prometheus.new
        type.jmx_exporter = JmxExporter.build(params[:jmx_exporter], context: "#{context}[:jmx_exporter]") unless params[:jmx_exporter].nil?
        type.node_exporter = NodeExporter.build(params[:node_exporter], context: "#{context}[:node_exporter]") unless params[:node_exporter].nil?
        type
      end
    end

    module PrometheusInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PrometheusInfo, context: context)
        type = Types::PrometheusInfo.new
        type.jmx_exporter = JmxExporterInfo.build(params[:jmx_exporter], context: "#{context}[:jmx_exporter]") unless params[:jmx_exporter].nil?
        type.node_exporter = NodeExporterInfo.build(params[:node_exporter], context: "#{context}[:node_exporter]") unless params[:node_exporter].nil?
        type
      end
    end

    module Provisioned
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Provisioned, context: context)
        type = Types::Provisioned.new
        type.broker_node_group_info = BrokerNodeGroupInfo.build(params[:broker_node_group_info], context: "#{context}[:broker_node_group_info]") unless params[:broker_node_group_info].nil?
        type.current_broker_software_info = BrokerSoftwareInfo.build(params[:current_broker_software_info], context: "#{context}[:current_broker_software_info]") unless params[:current_broker_software_info].nil?
        type.client_authentication = ClientAuthentication.build(params[:client_authentication], context: "#{context}[:client_authentication]") unless params[:client_authentication].nil?
        type.encryption_info = EncryptionInfo.build(params[:encryption_info], context: "#{context}[:encryption_info]") unless params[:encryption_info].nil?
        type.enhanced_monitoring = params[:enhanced_monitoring]
        type.open_monitoring = OpenMonitoringInfo.build(params[:open_monitoring], context: "#{context}[:open_monitoring]") unless params[:open_monitoring].nil?
        type.logging_info = LoggingInfo.build(params[:logging_info], context: "#{context}[:logging_info]") unless params[:logging_info].nil?
        type.number_of_broker_nodes = params[:number_of_broker_nodes]
        type.zookeeper_connect_string = params[:zookeeper_connect_string]
        type.zookeeper_connect_string_tls = params[:zookeeper_connect_string_tls]
        type
      end
    end

    module ProvisionedRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProvisionedRequest, context: context)
        type = Types::ProvisionedRequest.new
        type.broker_node_group_info = BrokerNodeGroupInfo.build(params[:broker_node_group_info], context: "#{context}[:broker_node_group_info]") unless params[:broker_node_group_info].nil?
        type.client_authentication = ClientAuthentication.build(params[:client_authentication], context: "#{context}[:client_authentication]") unless params[:client_authentication].nil?
        type.configuration_info = ConfigurationInfo.build(params[:configuration_info], context: "#{context}[:configuration_info]") unless params[:configuration_info].nil?
        type.encryption_info = EncryptionInfo.build(params[:encryption_info], context: "#{context}[:encryption_info]") unless params[:encryption_info].nil?
        type.enhanced_monitoring = params[:enhanced_monitoring]
        type.open_monitoring = OpenMonitoringInfo.build(params[:open_monitoring], context: "#{context}[:open_monitoring]") unless params[:open_monitoring].nil?
        type.kafka_version = params[:kafka_version]
        type.logging_info = LoggingInfo.build(params[:logging_info], context: "#{context}[:logging_info]") unless params[:logging_info].nil?
        type.number_of_broker_nodes = params[:number_of_broker_nodes]
        type
      end
    end

    module ProvisionedThroughput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProvisionedThroughput, context: context)
        type = Types::ProvisionedThroughput.new
        type.enabled = params[:enabled]
        type.volume_throughput = params[:volume_throughput]
        type
      end
    end

    module PublicAccess
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PublicAccess, context: context)
        type = Types::PublicAccess.new
        type.type = params[:type]
        type
      end
    end

    module RebootBrokerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RebootBrokerInput, context: context)
        type = Types::RebootBrokerInput.new
        type.broker_ids = List____listOf__string.build(params[:broker_ids], context: "#{context}[:broker_ids]") unless params[:broker_ids].nil?
        type.cluster_arn = params[:cluster_arn]
        type
      end
    end

    module RebootBrokerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RebootBrokerOutput, context: context)
        type = Types::RebootBrokerOutput.new
        type.cluster_arn = params[:cluster_arn]
        type.cluster_operation_arn = params[:cluster_operation_arn]
        type
      end
    end

    module S3
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3, context: context)
        type = Types::S3.new
        type.bucket = params[:bucket]
        type.enabled = params[:enabled]
        type.prefix = params[:prefix]
        type
      end
    end

    module Sasl
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Sasl, context: context)
        type = Types::Sasl.new
        type.scram = Scram.build(params[:scram], context: "#{context}[:scram]") unless params[:scram].nil?
        type.iam = Iam.build(params[:iam], context: "#{context}[:iam]") unless params[:iam].nil?
        type
      end
    end

    module Scram
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Scram, context: context)
        type = Types::Scram.new
        type.enabled = params[:enabled]
        type
      end
    end

    module Serverless
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Serverless, context: context)
        type = Types::Serverless.new
        type.vpc_configs = List____listOfVpcConfig.build(params[:vpc_configs], context: "#{context}[:vpc_configs]") unless params[:vpc_configs].nil?
        type.client_authentication = ServerlessClientAuthentication.build(params[:client_authentication], context: "#{context}[:client_authentication]") unless params[:client_authentication].nil?
        type
      end
    end

    module ServerlessClientAuthentication
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServerlessClientAuthentication, context: context)
        type = Types::ServerlessClientAuthentication.new
        type.sasl = ServerlessSasl.build(params[:sasl], context: "#{context}[:sasl]") unless params[:sasl].nil?
        type
      end
    end

    module ServerlessRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServerlessRequest, context: context)
        type = Types::ServerlessRequest.new
        type.vpc_configs = List____listOfVpcConfig.build(params[:vpc_configs], context: "#{context}[:vpc_configs]") unless params[:vpc_configs].nil?
        type.client_authentication = ServerlessClientAuthentication.build(params[:client_authentication], context: "#{context}[:client_authentication]") unless params[:client_authentication].nil?
        type
      end
    end

    module ServerlessSasl
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServerlessSasl, context: context)
        type = Types::ServerlessSasl.new
        type.iam = Iam.build(params[:iam], context: "#{context}[:iam]") unless params[:iam].nil?
        type
      end
    end

    module ServiceUnavailableException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceUnavailableException, context: context)
        type = Types::ServiceUnavailableException.new
        type.invalid_parameter = params[:invalid_parameter]
        type.message = params[:message]
        type
      end
    end

    module StateInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StateInfo, context: context)
        type = Types::StateInfo.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module StorageInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StorageInfo, context: context)
        type = Types::StorageInfo.new
        type.ebs_storage_info = EBSStorageInfo.build(params[:ebs_storage_info], context: "#{context}[:ebs_storage_info]") unless params[:ebs_storage_info].nil?
        type
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = Map____mapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceOutput, context: context)
        type = Types::TagResourceOutput.new
        type
      end
    end

    module Tls
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Tls, context: context)
        type = Types::Tls.new
        type.certificate_authority_arn_list = List____listOf__string.build(params[:certificate_authority_arn_list], context: "#{context}[:certificate_authority_arn_list]") unless params[:certificate_authority_arn_list].nil?
        type.enabled = params[:enabled]
        type
      end
    end

    module TooManyRequestsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyRequestsException, context: context)
        type = Types::TooManyRequestsException.new
        type.invalid_parameter = params[:invalid_parameter]
        type.message = params[:message]
        type
      end
    end

    module Unauthenticated
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Unauthenticated, context: context)
        type = Types::Unauthenticated.new
        type.enabled = params[:enabled]
        type
      end
    end

    module UnauthorizedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnauthorizedException, context: context)
        type = Types::UnauthorizedException.new
        type.invalid_parameter = params[:invalid_parameter]
        type.message = params[:message]
        type
      end
    end

    module UnprocessedScramSecret
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnprocessedScramSecret, context: context)
        type = Types::UnprocessedScramSecret.new
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type.secret_arn = params[:secret_arn]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = List____listOf__string.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceOutput, context: context)
        type = Types::UntagResourceOutput.new
        type
      end
    end

    module UpdateBrokerCountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateBrokerCountInput, context: context)
        type = Types::UpdateBrokerCountInput.new
        type.cluster_arn = params[:cluster_arn]
        type.current_version = params[:current_version]
        type.target_number_of_broker_nodes = params[:target_number_of_broker_nodes]
        type
      end
    end

    module UpdateBrokerCountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateBrokerCountOutput, context: context)
        type = Types::UpdateBrokerCountOutput.new
        type.cluster_arn = params[:cluster_arn]
        type.cluster_operation_arn = params[:cluster_operation_arn]
        type
      end
    end

    module UpdateBrokerStorageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateBrokerStorageInput, context: context)
        type = Types::UpdateBrokerStorageInput.new
        type.cluster_arn = params[:cluster_arn]
        type.current_version = params[:current_version]
        type.target_broker_ebs_volume_info = List____listOfBrokerEBSVolumeInfo.build(params[:target_broker_ebs_volume_info], context: "#{context}[:target_broker_ebs_volume_info]") unless params[:target_broker_ebs_volume_info].nil?
        type
      end
    end

    module UpdateBrokerStorageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateBrokerStorageOutput, context: context)
        type = Types::UpdateBrokerStorageOutput.new
        type.cluster_arn = params[:cluster_arn]
        type.cluster_operation_arn = params[:cluster_operation_arn]
        type
      end
    end

    module UpdateBrokerTypeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateBrokerTypeInput, context: context)
        type = Types::UpdateBrokerTypeInput.new
        type.cluster_arn = params[:cluster_arn]
        type.current_version = params[:current_version]
        type.target_instance_type = params[:target_instance_type]
        type
      end
    end

    module UpdateBrokerTypeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateBrokerTypeOutput, context: context)
        type = Types::UpdateBrokerTypeOutput.new
        type.cluster_arn = params[:cluster_arn]
        type.cluster_operation_arn = params[:cluster_operation_arn]
        type
      end
    end

    module UpdateClusterConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateClusterConfigurationInput, context: context)
        type = Types::UpdateClusterConfigurationInput.new
        type.cluster_arn = params[:cluster_arn]
        type.configuration_info = ConfigurationInfo.build(params[:configuration_info], context: "#{context}[:configuration_info]") unless params[:configuration_info].nil?
        type.current_version = params[:current_version]
        type
      end
    end

    module UpdateClusterConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateClusterConfigurationOutput, context: context)
        type = Types::UpdateClusterConfigurationOutput.new
        type.cluster_arn = params[:cluster_arn]
        type.cluster_operation_arn = params[:cluster_operation_arn]
        type
      end
    end

    module UpdateClusterKafkaVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateClusterKafkaVersionInput, context: context)
        type = Types::UpdateClusterKafkaVersionInput.new
        type.cluster_arn = params[:cluster_arn]
        type.configuration_info = ConfigurationInfo.build(params[:configuration_info], context: "#{context}[:configuration_info]") unless params[:configuration_info].nil?
        type.current_version = params[:current_version]
        type.target_kafka_version = params[:target_kafka_version]
        type
      end
    end

    module UpdateClusterKafkaVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateClusterKafkaVersionOutput, context: context)
        type = Types::UpdateClusterKafkaVersionOutput.new
        type.cluster_arn = params[:cluster_arn]
        type.cluster_operation_arn = params[:cluster_operation_arn]
        type
      end
    end

    module UpdateConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateConfigurationInput, context: context)
        type = Types::UpdateConfigurationInput.new
        type.arn = params[:arn]
        type.description = params[:description]
        type.server_properties = params[:server_properties]
        type
      end
    end

    module UpdateConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateConfigurationOutput, context: context)
        type = Types::UpdateConfigurationOutput.new
        type.arn = params[:arn]
        type.latest_revision = ConfigurationRevision.build(params[:latest_revision], context: "#{context}[:latest_revision]") unless params[:latest_revision].nil?
        type
      end
    end

    module UpdateConnectivityInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateConnectivityInput, context: context)
        type = Types::UpdateConnectivityInput.new
        type.cluster_arn = params[:cluster_arn]
        type.connectivity_info = ConnectivityInfo.build(params[:connectivity_info], context: "#{context}[:connectivity_info]") unless params[:connectivity_info].nil?
        type.current_version = params[:current_version]
        type
      end
    end

    module UpdateConnectivityOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateConnectivityOutput, context: context)
        type = Types::UpdateConnectivityOutput.new
        type.cluster_arn = params[:cluster_arn]
        type.cluster_operation_arn = params[:cluster_operation_arn]
        type
      end
    end

    module UpdateMonitoringInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateMonitoringInput, context: context)
        type = Types::UpdateMonitoringInput.new
        type.cluster_arn = params[:cluster_arn]
        type.current_version = params[:current_version]
        type.enhanced_monitoring = params[:enhanced_monitoring]
        type.open_monitoring = OpenMonitoringInfo.build(params[:open_monitoring], context: "#{context}[:open_monitoring]") unless params[:open_monitoring].nil?
        type.logging_info = LoggingInfo.build(params[:logging_info], context: "#{context}[:logging_info]") unless params[:logging_info].nil?
        type
      end
    end

    module UpdateMonitoringOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateMonitoringOutput, context: context)
        type = Types::UpdateMonitoringOutput.new
        type.cluster_arn = params[:cluster_arn]
        type.cluster_operation_arn = params[:cluster_operation_arn]
        type
      end
    end

    module UpdateSecurityInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSecurityInput, context: context)
        type = Types::UpdateSecurityInput.new
        type.client_authentication = ClientAuthentication.build(params[:client_authentication], context: "#{context}[:client_authentication]") unless params[:client_authentication].nil?
        type.cluster_arn = params[:cluster_arn]
        type.current_version = params[:current_version]
        type.encryption_info = EncryptionInfo.build(params[:encryption_info], context: "#{context}[:encryption_info]") unless params[:encryption_info].nil?
        type
      end
    end

    module UpdateSecurityOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSecurityOutput, context: context)
        type = Types::UpdateSecurityOutput.new
        type.cluster_arn = params[:cluster_arn]
        type.cluster_operation_arn = params[:cluster_operation_arn]
        type
      end
    end

    module VpcConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VpcConfig, context: context)
        type = Types::VpcConfig.new
        type.subnet_ids = List____listOf__string.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type.security_group_ids = List____listOf__string.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type
      end
    end

    module ZookeeperNodeInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ZookeeperNodeInfo, context: context)
        type = Types::ZookeeperNodeInfo.new
        type.attached_eni_id = params[:attached_eni_id]
        type.client_vpc_ip_address = params[:client_vpc_ip_address]
        type.endpoints = List____listOf__string.build(params[:endpoints], context: "#{context}[:endpoints]") unless params[:endpoints].nil?
        type.zookeeper_id = params[:zookeeper_id]
        type.zookeeper_version = params[:zookeeper_version]
        type
      end
    end

    module List____listOfBrokerEBSVolumeInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BrokerEBSVolumeInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfCluster
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Cluster.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfClusterInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ClusterInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfClusterOperationInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ClusterOperationInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfClusterOperationStep
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ClusterOperationStep.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfCompatibleKafkaVersion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CompatibleKafkaVersion.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Configuration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfConfigurationRevision
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ConfigurationRevision.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfKafkaVersion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << KafkaVersion.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfNodeInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << NodeInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfUnprocessedScramSecret
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UnprocessedScramSecret.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfVpcConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << VpcConfig.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOf__string
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Map____mapOf__string
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

  end
end
