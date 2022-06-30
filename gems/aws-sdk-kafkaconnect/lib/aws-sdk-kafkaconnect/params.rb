# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::KafkaConnect
  module Params

    module ApacheKafkaCluster
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApacheKafkaCluster, context: context)
        type = Types::ApacheKafkaCluster.new
        type.bootstrap_servers = params[:bootstrap_servers]
        type.vpc = Vpc.build(params[:vpc], context: "#{context}[:vpc]") unless params[:vpc].nil?
        type
      end
    end

    module ApacheKafkaClusterDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApacheKafkaClusterDescription, context: context)
        type = Types::ApacheKafkaClusterDescription.new
        type.bootstrap_servers = params[:bootstrap_servers]
        type.vpc = VpcDescription.build(params[:vpc], context: "#{context}[:vpc]") unless params[:vpc].nil?
        type
      end
    end

    module AutoScaling
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutoScaling, context: context)
        type = Types::AutoScaling.new
        type.max_worker_count = params[:max_worker_count]
        type.mcu_count = params[:mcu_count]
        type.min_worker_count = params[:min_worker_count]
        type.scale_in_policy = ScaleInPolicy.build(params[:scale_in_policy], context: "#{context}[:scale_in_policy]") unless params[:scale_in_policy].nil?
        type.scale_out_policy = ScaleOutPolicy.build(params[:scale_out_policy], context: "#{context}[:scale_out_policy]") unless params[:scale_out_policy].nil?
        type
      end
    end

    module AutoScalingDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutoScalingDescription, context: context)
        type = Types::AutoScalingDescription.new
        type.max_worker_count = params[:max_worker_count]
        type.mcu_count = params[:mcu_count]
        type.min_worker_count = params[:min_worker_count]
        type.scale_in_policy = ScaleInPolicyDescription.build(params[:scale_in_policy], context: "#{context}[:scale_in_policy]") unless params[:scale_in_policy].nil?
        type.scale_out_policy = ScaleOutPolicyDescription.build(params[:scale_out_policy], context: "#{context}[:scale_out_policy]") unless params[:scale_out_policy].nil?
        type
      end
    end

    module AutoScalingUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutoScalingUpdate, context: context)
        type = Types::AutoScalingUpdate.new
        type.max_worker_count = params[:max_worker_count]
        type.mcu_count = params[:mcu_count]
        type.min_worker_count = params[:min_worker_count]
        type.scale_in_policy = ScaleInPolicyUpdate.build(params[:scale_in_policy], context: "#{context}[:scale_in_policy]") unless params[:scale_in_policy].nil?
        type.scale_out_policy = ScaleOutPolicyUpdate.build(params[:scale_out_policy], context: "#{context}[:scale_out_policy]") unless params[:scale_out_policy].nil?
        type
      end
    end

    module BadRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BadRequestException, context: context)
        type = Types::BadRequestException.new
        type.message = params[:message]
        type
      end
    end

    module Capacity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Capacity, context: context)
        type = Types::Capacity.new
        type.auto_scaling = AutoScaling.build(params[:auto_scaling], context: "#{context}[:auto_scaling]") unless params[:auto_scaling].nil?
        type.provisioned_capacity = ProvisionedCapacity.build(params[:provisioned_capacity], context: "#{context}[:provisioned_capacity]") unless params[:provisioned_capacity].nil?
        type
      end
    end

    module CapacityDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CapacityDescription, context: context)
        type = Types::CapacityDescription.new
        type.auto_scaling = AutoScalingDescription.build(params[:auto_scaling], context: "#{context}[:auto_scaling]") unless params[:auto_scaling].nil?
        type.provisioned_capacity = ProvisionedCapacityDescription.build(params[:provisioned_capacity], context: "#{context}[:provisioned_capacity]") unless params[:provisioned_capacity].nil?
        type
      end
    end

    module CapacityUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CapacityUpdate, context: context)
        type = Types::CapacityUpdate.new
        type.auto_scaling = AutoScalingUpdate.build(params[:auto_scaling], context: "#{context}[:auto_scaling]") unless params[:auto_scaling].nil?
        type.provisioned_capacity = ProvisionedCapacityUpdate.build(params[:provisioned_capacity], context: "#{context}[:provisioned_capacity]") unless params[:provisioned_capacity].nil?
        type
      end
    end

    module CloudWatchLogsLogDelivery
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloudWatchLogsLogDelivery, context: context)
        type = Types::CloudWatchLogsLogDelivery.new
        type.enabled = params[:enabled]
        type.log_group = params[:log_group]
        type
      end
    end

    module CloudWatchLogsLogDeliveryDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloudWatchLogsLogDeliveryDescription, context: context)
        type = Types::CloudWatchLogsLogDeliveryDescription.new
        type.enabled = params[:enabled]
        type.log_group = params[:log_group]
        type
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.message = params[:message]
        type
      end
    end

    module ConnectorSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConnectorSummary, context: context)
        type = Types::ConnectorSummary.new
        type.capacity = CapacityDescription.build(params[:capacity], context: "#{context}[:capacity]") unless params[:capacity].nil?
        type.connector_arn = params[:connector_arn]
        type.connector_description = params[:connector_description]
        type.connector_name = params[:connector_name]
        type.connector_state = params[:connector_state]
        type.creation_time = params[:creation_time]
        type.current_version = params[:current_version]
        type.kafka_cluster = KafkaClusterDescription.build(params[:kafka_cluster], context: "#{context}[:kafka_cluster]") unless params[:kafka_cluster].nil?
        type.kafka_cluster_client_authentication = KafkaClusterClientAuthenticationDescription.build(params[:kafka_cluster_client_authentication], context: "#{context}[:kafka_cluster_client_authentication]") unless params[:kafka_cluster_client_authentication].nil?
        type.kafka_cluster_encryption_in_transit = KafkaClusterEncryptionInTransitDescription.build(params[:kafka_cluster_encryption_in_transit], context: "#{context}[:kafka_cluster_encryption_in_transit]") unless params[:kafka_cluster_encryption_in_transit].nil?
        type.kafka_connect_version = params[:kafka_connect_version]
        type.log_delivery = LogDeliveryDescription.build(params[:log_delivery], context: "#{context}[:log_delivery]") unless params[:log_delivery].nil?
        type.plugins = List____listOfPluginDescription.build(params[:plugins], context: "#{context}[:plugins]") unless params[:plugins].nil?
        type.service_execution_role_arn = params[:service_execution_role_arn]
        type.worker_configuration = WorkerConfigurationDescription.build(params[:worker_configuration], context: "#{context}[:worker_configuration]") unless params[:worker_configuration].nil?
        type
      end
    end

    module CreateConnectorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateConnectorInput, context: context)
        type = Types::CreateConnectorInput.new
        type.capacity = Capacity.build(params[:capacity], context: "#{context}[:capacity]") unless params[:capacity].nil?
        type.connector_configuration = Map____mapOf__string.build(params[:connector_configuration], context: "#{context}[:connector_configuration]") unless params[:connector_configuration].nil?
        type.connector_description = params[:connector_description]
        type.connector_name = params[:connector_name]
        type.kafka_cluster = KafkaCluster.build(params[:kafka_cluster], context: "#{context}[:kafka_cluster]") unless params[:kafka_cluster].nil?
        type.kafka_cluster_client_authentication = KafkaClusterClientAuthentication.build(params[:kafka_cluster_client_authentication], context: "#{context}[:kafka_cluster_client_authentication]") unless params[:kafka_cluster_client_authentication].nil?
        type.kafka_cluster_encryption_in_transit = KafkaClusterEncryptionInTransit.build(params[:kafka_cluster_encryption_in_transit], context: "#{context}[:kafka_cluster_encryption_in_transit]") unless params[:kafka_cluster_encryption_in_transit].nil?
        type.kafka_connect_version = params[:kafka_connect_version]
        type.log_delivery = LogDelivery.build(params[:log_delivery], context: "#{context}[:log_delivery]") unless params[:log_delivery].nil?
        type.plugins = List____listOfPlugin.build(params[:plugins], context: "#{context}[:plugins]") unless params[:plugins].nil?
        type.service_execution_role_arn = params[:service_execution_role_arn]
        type.worker_configuration = WorkerConfiguration.build(params[:worker_configuration], context: "#{context}[:worker_configuration]") unless params[:worker_configuration].nil?
        type
      end
    end

    module CreateConnectorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateConnectorOutput, context: context)
        type = Types::CreateConnectorOutput.new
        type.connector_arn = params[:connector_arn]
        type.connector_name = params[:connector_name]
        type.connector_state = params[:connector_state]
        type
      end
    end

    module CreateCustomPluginInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCustomPluginInput, context: context)
        type = Types::CreateCustomPluginInput.new
        type.content_type = params[:content_type]
        type.description = params[:description]
        type.location = CustomPluginLocation.build(params[:location], context: "#{context}[:location]") unless params[:location].nil?
        type.name = params[:name]
        type
      end
    end

    module CreateCustomPluginOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCustomPluginOutput, context: context)
        type = Types::CreateCustomPluginOutput.new
        type.custom_plugin_arn = params[:custom_plugin_arn]
        type.custom_plugin_state = params[:custom_plugin_state]
        type.name = params[:name]
        type.revision = params[:revision]
        type
      end
    end

    module CreateWorkerConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateWorkerConfigurationInput, context: context)
        type = Types::CreateWorkerConfigurationInput.new
        type.description = params[:description]
        type.name = params[:name]
        type.properties_file_content = params[:properties_file_content]
        type
      end
    end

    module CreateWorkerConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateWorkerConfigurationOutput, context: context)
        type = Types::CreateWorkerConfigurationOutput.new
        type.creation_time = params[:creation_time]
        type.latest_revision = WorkerConfigurationRevisionSummary.build(params[:latest_revision], context: "#{context}[:latest_revision]") unless params[:latest_revision].nil?
        type.name = params[:name]
        type.worker_configuration_arn = params[:worker_configuration_arn]
        type
      end
    end

    module CustomPlugin
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomPlugin, context: context)
        type = Types::CustomPlugin.new
        type.custom_plugin_arn = params[:custom_plugin_arn]
        type.revision = params[:revision]
        type
      end
    end

    module CustomPluginDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomPluginDescription, context: context)
        type = Types::CustomPluginDescription.new
        type.custom_plugin_arn = params[:custom_plugin_arn]
        type.revision = params[:revision]
        type
      end
    end

    module CustomPluginFileDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomPluginFileDescription, context: context)
        type = Types::CustomPluginFileDescription.new
        type.file_md5 = params[:file_md5]
        type.file_size = params[:file_size]
        type
      end
    end

    module CustomPluginLocation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomPluginLocation, context: context)
        type = Types::CustomPluginLocation.new
        type.s3_location = S3Location.build(params[:s3_location], context: "#{context}[:s3_location]") unless params[:s3_location].nil?
        type
      end
    end

    module CustomPluginLocationDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomPluginLocationDescription, context: context)
        type = Types::CustomPluginLocationDescription.new
        type.s3_location = S3LocationDescription.build(params[:s3_location], context: "#{context}[:s3_location]") unless params[:s3_location].nil?
        type
      end
    end

    module CustomPluginRevisionSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomPluginRevisionSummary, context: context)
        type = Types::CustomPluginRevisionSummary.new
        type.content_type = params[:content_type]
        type.creation_time = params[:creation_time]
        type.description = params[:description]
        type.file_description = CustomPluginFileDescription.build(params[:file_description], context: "#{context}[:file_description]") unless params[:file_description].nil?
        type.location = CustomPluginLocationDescription.build(params[:location], context: "#{context}[:location]") unless params[:location].nil?
        type.revision = params[:revision]
        type
      end
    end

    module CustomPluginSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomPluginSummary, context: context)
        type = Types::CustomPluginSummary.new
        type.creation_time = params[:creation_time]
        type.custom_plugin_arn = params[:custom_plugin_arn]
        type.custom_plugin_state = params[:custom_plugin_state]
        type.description = params[:description]
        type.latest_revision = CustomPluginRevisionSummary.build(params[:latest_revision], context: "#{context}[:latest_revision]") unless params[:latest_revision].nil?
        type.name = params[:name]
        type
      end
    end

    module DeleteConnectorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteConnectorInput, context: context)
        type = Types::DeleteConnectorInput.new
        type.connector_arn = params[:connector_arn]
        type.current_version = params[:current_version]
        type
      end
    end

    module DeleteConnectorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteConnectorOutput, context: context)
        type = Types::DeleteConnectorOutput.new
        type.connector_arn = params[:connector_arn]
        type.connector_state = params[:connector_state]
        type
      end
    end

    module DeleteCustomPluginInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCustomPluginInput, context: context)
        type = Types::DeleteCustomPluginInput.new
        type.custom_plugin_arn = params[:custom_plugin_arn]
        type
      end
    end

    module DeleteCustomPluginOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCustomPluginOutput, context: context)
        type = Types::DeleteCustomPluginOutput.new
        type.custom_plugin_arn = params[:custom_plugin_arn]
        type.custom_plugin_state = params[:custom_plugin_state]
        type
      end
    end

    module DescribeConnectorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeConnectorInput, context: context)
        type = Types::DescribeConnectorInput.new
        type.connector_arn = params[:connector_arn]
        type
      end
    end

    module DescribeConnectorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeConnectorOutput, context: context)
        type = Types::DescribeConnectorOutput.new
        type.capacity = CapacityDescription.build(params[:capacity], context: "#{context}[:capacity]") unless params[:capacity].nil?
        type.connector_arn = params[:connector_arn]
        type.connector_configuration = Map____mapOf__string.build(params[:connector_configuration], context: "#{context}[:connector_configuration]") unless params[:connector_configuration].nil?
        type.connector_description = params[:connector_description]
        type.connector_name = params[:connector_name]
        type.connector_state = params[:connector_state]
        type.creation_time = params[:creation_time]
        type.current_version = params[:current_version]
        type.kafka_cluster = KafkaClusterDescription.build(params[:kafka_cluster], context: "#{context}[:kafka_cluster]") unless params[:kafka_cluster].nil?
        type.kafka_cluster_client_authentication = KafkaClusterClientAuthenticationDescription.build(params[:kafka_cluster_client_authentication], context: "#{context}[:kafka_cluster_client_authentication]") unless params[:kafka_cluster_client_authentication].nil?
        type.kafka_cluster_encryption_in_transit = KafkaClusterEncryptionInTransitDescription.build(params[:kafka_cluster_encryption_in_transit], context: "#{context}[:kafka_cluster_encryption_in_transit]") unless params[:kafka_cluster_encryption_in_transit].nil?
        type.kafka_connect_version = params[:kafka_connect_version]
        type.log_delivery = LogDeliveryDescription.build(params[:log_delivery], context: "#{context}[:log_delivery]") unless params[:log_delivery].nil?
        type.plugins = List____listOfPluginDescription.build(params[:plugins], context: "#{context}[:plugins]") unless params[:plugins].nil?
        type.service_execution_role_arn = params[:service_execution_role_arn]
        type.worker_configuration = WorkerConfigurationDescription.build(params[:worker_configuration], context: "#{context}[:worker_configuration]") unless params[:worker_configuration].nil?
        type.state_description = StateDescription.build(params[:state_description], context: "#{context}[:state_description]") unless params[:state_description].nil?
        type
      end
    end

    module DescribeCustomPluginInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCustomPluginInput, context: context)
        type = Types::DescribeCustomPluginInput.new
        type.custom_plugin_arn = params[:custom_plugin_arn]
        type
      end
    end

    module DescribeCustomPluginOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCustomPluginOutput, context: context)
        type = Types::DescribeCustomPluginOutput.new
        type.creation_time = params[:creation_time]
        type.custom_plugin_arn = params[:custom_plugin_arn]
        type.custom_plugin_state = params[:custom_plugin_state]
        type.description = params[:description]
        type.latest_revision = CustomPluginRevisionSummary.build(params[:latest_revision], context: "#{context}[:latest_revision]") unless params[:latest_revision].nil?
        type.name = params[:name]
        type.state_description = StateDescription.build(params[:state_description], context: "#{context}[:state_description]") unless params[:state_description].nil?
        type
      end
    end

    module DescribeWorkerConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeWorkerConfigurationInput, context: context)
        type = Types::DescribeWorkerConfigurationInput.new
        type.worker_configuration_arn = params[:worker_configuration_arn]
        type
      end
    end

    module DescribeWorkerConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeWorkerConfigurationOutput, context: context)
        type = Types::DescribeWorkerConfigurationOutput.new
        type.creation_time = params[:creation_time]
        type.description = params[:description]
        type.latest_revision = WorkerConfigurationRevisionDescription.build(params[:latest_revision], context: "#{context}[:latest_revision]") unless params[:latest_revision].nil?
        type.name = params[:name]
        type.worker_configuration_arn = params[:worker_configuration_arn]
        type
      end
    end

    module FirehoseLogDelivery
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FirehoseLogDelivery, context: context)
        type = Types::FirehoseLogDelivery.new
        type.delivery_stream = params[:delivery_stream]
        type.enabled = params[:enabled]
        type
      end
    end

    module FirehoseLogDeliveryDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FirehoseLogDeliveryDescription, context: context)
        type = Types::FirehoseLogDeliveryDescription.new
        type.delivery_stream = params[:delivery_stream]
        type.enabled = params[:enabled]
        type
      end
    end

    module ForbiddenException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ForbiddenException, context: context)
        type = Types::ForbiddenException.new
        type.message = params[:message]
        type
      end
    end

    module InternalServerErrorException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerErrorException, context: context)
        type = Types::InternalServerErrorException.new
        type.message = params[:message]
        type
      end
    end

    module KafkaCluster
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KafkaCluster, context: context)
        type = Types::KafkaCluster.new
        type.apache_kafka_cluster = ApacheKafkaCluster.build(params[:apache_kafka_cluster], context: "#{context}[:apache_kafka_cluster]") unless params[:apache_kafka_cluster].nil?
        type
      end
    end

    module KafkaClusterClientAuthentication
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KafkaClusterClientAuthentication, context: context)
        type = Types::KafkaClusterClientAuthentication.new
        type.authentication_type = params[:authentication_type]
        type
      end
    end

    module KafkaClusterClientAuthenticationDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KafkaClusterClientAuthenticationDescription, context: context)
        type = Types::KafkaClusterClientAuthenticationDescription.new
        type.authentication_type = params[:authentication_type]
        type
      end
    end

    module KafkaClusterDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KafkaClusterDescription, context: context)
        type = Types::KafkaClusterDescription.new
        type.apache_kafka_cluster = ApacheKafkaClusterDescription.build(params[:apache_kafka_cluster], context: "#{context}[:apache_kafka_cluster]") unless params[:apache_kafka_cluster].nil?
        type
      end
    end

    module KafkaClusterEncryptionInTransit
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KafkaClusterEncryptionInTransit, context: context)
        type = Types::KafkaClusterEncryptionInTransit.new
        type.encryption_type = params[:encryption_type]
        type
      end
    end

    module KafkaClusterEncryptionInTransitDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KafkaClusterEncryptionInTransitDescription, context: context)
        type = Types::KafkaClusterEncryptionInTransitDescription.new
        type.encryption_type = params[:encryption_type]
        type
      end
    end

    module ListConnectorsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListConnectorsInput, context: context)
        type = Types::ListConnectorsInput.new
        type.connector_name_prefix = params[:connector_name_prefix]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListConnectorsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListConnectorsOutput, context: context)
        type = Types::ListConnectorsOutput.new
        type.connectors = List____listOfConnectorSummary.build(params[:connectors], context: "#{context}[:connectors]") unless params[:connectors].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListCustomPluginsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCustomPluginsInput, context: context)
        type = Types::ListCustomPluginsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListCustomPluginsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCustomPluginsOutput, context: context)
        type = Types::ListCustomPluginsOutput.new
        type.custom_plugins = List____listOfCustomPluginSummary.build(params[:custom_plugins], context: "#{context}[:custom_plugins]") unless params[:custom_plugins].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListWorkerConfigurationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListWorkerConfigurationsInput, context: context)
        type = Types::ListWorkerConfigurationsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListWorkerConfigurationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListWorkerConfigurationsOutput, context: context)
        type = Types::ListWorkerConfigurationsOutput.new
        type.next_token = params[:next_token]
        type.worker_configurations = List____listOfWorkerConfigurationSummary.build(params[:worker_configurations], context: "#{context}[:worker_configurations]") unless params[:worker_configurations].nil?
        type
      end
    end

    module LogDelivery
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LogDelivery, context: context)
        type = Types::LogDelivery.new
        type.worker_log_delivery = WorkerLogDelivery.build(params[:worker_log_delivery], context: "#{context}[:worker_log_delivery]") unless params[:worker_log_delivery].nil?
        type
      end
    end

    module LogDeliveryDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LogDeliveryDescription, context: context)
        type = Types::LogDeliveryDescription.new
        type.worker_log_delivery = WorkerLogDeliveryDescription.build(params[:worker_log_delivery], context: "#{context}[:worker_log_delivery]") unless params[:worker_log_delivery].nil?
        type
      end
    end

    module NotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotFoundException, context: context)
        type = Types::NotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module Plugin
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Plugin, context: context)
        type = Types::Plugin.new
        type.custom_plugin = CustomPlugin.build(params[:custom_plugin], context: "#{context}[:custom_plugin]") unless params[:custom_plugin].nil?
        type
      end
    end

    module PluginDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PluginDescription, context: context)
        type = Types::PluginDescription.new
        type.custom_plugin = CustomPluginDescription.build(params[:custom_plugin], context: "#{context}[:custom_plugin]") unless params[:custom_plugin].nil?
        type
      end
    end

    module ProvisionedCapacity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProvisionedCapacity, context: context)
        type = Types::ProvisionedCapacity.new
        type.mcu_count = params[:mcu_count]
        type.worker_count = params[:worker_count]
        type
      end
    end

    module ProvisionedCapacityDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProvisionedCapacityDescription, context: context)
        type = Types::ProvisionedCapacityDescription.new
        type.mcu_count = params[:mcu_count]
        type.worker_count = params[:worker_count]
        type
      end
    end

    module ProvisionedCapacityUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProvisionedCapacityUpdate, context: context)
        type = Types::ProvisionedCapacityUpdate.new
        type.mcu_count = params[:mcu_count]
        type.worker_count = params[:worker_count]
        type
      end
    end

    module S3Location
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3Location, context: context)
        type = Types::S3Location.new
        type.bucket_arn = params[:bucket_arn]
        type.file_key = params[:file_key]
        type.object_version = params[:object_version]
        type
      end
    end

    module S3LocationDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3LocationDescription, context: context)
        type = Types::S3LocationDescription.new
        type.bucket_arn = params[:bucket_arn]
        type.file_key = params[:file_key]
        type.object_version = params[:object_version]
        type
      end
    end

    module S3LogDelivery
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3LogDelivery, context: context)
        type = Types::S3LogDelivery.new
        type.bucket = params[:bucket]
        type.enabled = params[:enabled]
        type.prefix = params[:prefix]
        type
      end
    end

    module S3LogDeliveryDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3LogDeliveryDescription, context: context)
        type = Types::S3LogDeliveryDescription.new
        type.bucket = params[:bucket]
        type.enabled = params[:enabled]
        type.prefix = params[:prefix]
        type
      end
    end

    module ScaleInPolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScaleInPolicy, context: context)
        type = Types::ScaleInPolicy.new
        type.cpu_utilization_percentage = params[:cpu_utilization_percentage]
        type
      end
    end

    module ScaleInPolicyDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScaleInPolicyDescription, context: context)
        type = Types::ScaleInPolicyDescription.new
        type.cpu_utilization_percentage = params[:cpu_utilization_percentage]
        type
      end
    end

    module ScaleInPolicyUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScaleInPolicyUpdate, context: context)
        type = Types::ScaleInPolicyUpdate.new
        type.cpu_utilization_percentage = params[:cpu_utilization_percentage]
        type
      end
    end

    module ScaleOutPolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScaleOutPolicy, context: context)
        type = Types::ScaleOutPolicy.new
        type.cpu_utilization_percentage = params[:cpu_utilization_percentage]
        type
      end
    end

    module ScaleOutPolicyDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScaleOutPolicyDescription, context: context)
        type = Types::ScaleOutPolicyDescription.new
        type.cpu_utilization_percentage = params[:cpu_utilization_percentage]
        type
      end
    end

    module ScaleOutPolicyUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScaleOutPolicyUpdate, context: context)
        type = Types::ScaleOutPolicyUpdate.new
        type.cpu_utilization_percentage = params[:cpu_utilization_percentage]
        type
      end
    end

    module ServiceUnavailableException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceUnavailableException, context: context)
        type = Types::ServiceUnavailableException.new
        type.message = params[:message]
        type
      end
    end

    module StateDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StateDescription, context: context)
        type = Types::StateDescription.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module TooManyRequestsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyRequestsException, context: context)
        type = Types::TooManyRequestsException.new
        type.message = params[:message]
        type
      end
    end

    module UnauthorizedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnauthorizedException, context: context)
        type = Types::UnauthorizedException.new
        type.message = params[:message]
        type
      end
    end

    module UpdateConnectorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateConnectorInput, context: context)
        type = Types::UpdateConnectorInput.new
        type.capacity = CapacityUpdate.build(params[:capacity], context: "#{context}[:capacity]") unless params[:capacity].nil?
        type.connector_arn = params[:connector_arn]
        type.current_version = params[:current_version]
        type
      end
    end

    module UpdateConnectorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateConnectorOutput, context: context)
        type = Types::UpdateConnectorOutput.new
        type.connector_arn = params[:connector_arn]
        type.connector_state = params[:connector_state]
        type
      end
    end

    module Vpc
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Vpc, context: context)
        type = Types::Vpc.new
        type.security_groups = List____listOf__string.build(params[:security_groups], context: "#{context}[:security_groups]") unless params[:security_groups].nil?
        type.subnets = List____listOf__string.build(params[:subnets], context: "#{context}[:subnets]") unless params[:subnets].nil?
        type
      end
    end

    module VpcDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VpcDescription, context: context)
        type = Types::VpcDescription.new
        type.security_groups = List____listOf__string.build(params[:security_groups], context: "#{context}[:security_groups]") unless params[:security_groups].nil?
        type.subnets = List____listOf__string.build(params[:subnets], context: "#{context}[:subnets]") unless params[:subnets].nil?
        type
      end
    end

    module WorkerConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WorkerConfiguration, context: context)
        type = Types::WorkerConfiguration.new
        type.revision = params[:revision]
        type.worker_configuration_arn = params[:worker_configuration_arn]
        type
      end
    end

    module WorkerConfigurationDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WorkerConfigurationDescription, context: context)
        type = Types::WorkerConfigurationDescription.new
        type.revision = params[:revision]
        type.worker_configuration_arn = params[:worker_configuration_arn]
        type
      end
    end

    module WorkerConfigurationRevisionDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WorkerConfigurationRevisionDescription, context: context)
        type = Types::WorkerConfigurationRevisionDescription.new
        type.creation_time = params[:creation_time]
        type.description = params[:description]
        type.properties_file_content = params[:properties_file_content]
        type.revision = params[:revision]
        type
      end
    end

    module WorkerConfigurationRevisionSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WorkerConfigurationRevisionSummary, context: context)
        type = Types::WorkerConfigurationRevisionSummary.new
        type.creation_time = params[:creation_time]
        type.description = params[:description]
        type.revision = params[:revision]
        type
      end
    end

    module WorkerConfigurationSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WorkerConfigurationSummary, context: context)
        type = Types::WorkerConfigurationSummary.new
        type.creation_time = params[:creation_time]
        type.description = params[:description]
        type.latest_revision = WorkerConfigurationRevisionSummary.build(params[:latest_revision], context: "#{context}[:latest_revision]") unless params[:latest_revision].nil?
        type.name = params[:name]
        type.worker_configuration_arn = params[:worker_configuration_arn]
        type
      end
    end

    module WorkerLogDelivery
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WorkerLogDelivery, context: context)
        type = Types::WorkerLogDelivery.new
        type.cloud_watch_logs = CloudWatchLogsLogDelivery.build(params[:cloud_watch_logs], context: "#{context}[:cloud_watch_logs]") unless params[:cloud_watch_logs].nil?
        type.firehose = FirehoseLogDelivery.build(params[:firehose], context: "#{context}[:firehose]") unless params[:firehose].nil?
        type.s3 = S3LogDelivery.build(params[:s3], context: "#{context}[:s3]") unless params[:s3].nil?
        type
      end
    end

    module WorkerLogDeliveryDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WorkerLogDeliveryDescription, context: context)
        type = Types::WorkerLogDeliveryDescription.new
        type.cloud_watch_logs = CloudWatchLogsLogDeliveryDescription.build(params[:cloud_watch_logs], context: "#{context}[:cloud_watch_logs]") unless params[:cloud_watch_logs].nil?
        type.firehose = FirehoseLogDeliveryDescription.build(params[:firehose], context: "#{context}[:firehose]") unless params[:firehose].nil?
        type.s3 = S3LogDeliveryDescription.build(params[:s3], context: "#{context}[:s3]") unless params[:s3].nil?
        type
      end
    end

    module List____listOfConnectorSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ConnectorSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfCustomPluginSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CustomPluginSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfPlugin
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Plugin.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfPluginDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PluginDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfWorkerConfigurationSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << WorkerConfigurationSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
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
