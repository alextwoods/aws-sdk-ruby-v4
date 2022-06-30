# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::KafkaConnect
  module Validators

    class ApacheKafkaCluster
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApacheKafkaCluster, context: context)
        Hearth::Validator.validate!(input[:bootstrap_servers], ::String, context: "#{context}[:bootstrap_servers]")
        Validators::Vpc.validate!(input[:vpc], context: "#{context}[:vpc]") unless input[:vpc].nil?
      end
    end

    class ApacheKafkaClusterDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApacheKafkaClusterDescription, context: context)
        Hearth::Validator.validate!(input[:bootstrap_servers], ::String, context: "#{context}[:bootstrap_servers]")
        Validators::VpcDescription.validate!(input[:vpc], context: "#{context}[:vpc]") unless input[:vpc].nil?
      end
    end

    class AutoScaling
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutoScaling, context: context)
        Hearth::Validator.validate!(input[:max_worker_count], ::Integer, context: "#{context}[:max_worker_count]")
        Hearth::Validator.validate!(input[:mcu_count], ::Integer, context: "#{context}[:mcu_count]")
        Hearth::Validator.validate!(input[:min_worker_count], ::Integer, context: "#{context}[:min_worker_count]")
        Validators::ScaleInPolicy.validate!(input[:scale_in_policy], context: "#{context}[:scale_in_policy]") unless input[:scale_in_policy].nil?
        Validators::ScaleOutPolicy.validate!(input[:scale_out_policy], context: "#{context}[:scale_out_policy]") unless input[:scale_out_policy].nil?
      end
    end

    class AutoScalingDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutoScalingDescription, context: context)
        Hearth::Validator.validate!(input[:max_worker_count], ::Integer, context: "#{context}[:max_worker_count]")
        Hearth::Validator.validate!(input[:mcu_count], ::Integer, context: "#{context}[:mcu_count]")
        Hearth::Validator.validate!(input[:min_worker_count], ::Integer, context: "#{context}[:min_worker_count]")
        Validators::ScaleInPolicyDescription.validate!(input[:scale_in_policy], context: "#{context}[:scale_in_policy]") unless input[:scale_in_policy].nil?
        Validators::ScaleOutPolicyDescription.validate!(input[:scale_out_policy], context: "#{context}[:scale_out_policy]") unless input[:scale_out_policy].nil?
      end
    end

    class AutoScalingUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutoScalingUpdate, context: context)
        Hearth::Validator.validate!(input[:max_worker_count], ::Integer, context: "#{context}[:max_worker_count]")
        Hearth::Validator.validate!(input[:mcu_count], ::Integer, context: "#{context}[:mcu_count]")
        Hearth::Validator.validate!(input[:min_worker_count], ::Integer, context: "#{context}[:min_worker_count]")
        Validators::ScaleInPolicyUpdate.validate!(input[:scale_in_policy], context: "#{context}[:scale_in_policy]") unless input[:scale_in_policy].nil?
        Validators::ScaleOutPolicyUpdate.validate!(input[:scale_out_policy], context: "#{context}[:scale_out_policy]") unless input[:scale_out_policy].nil?
      end
    end

    class BadRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BadRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Capacity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Capacity, context: context)
        Validators::AutoScaling.validate!(input[:auto_scaling], context: "#{context}[:auto_scaling]") unless input[:auto_scaling].nil?
        Validators::ProvisionedCapacity.validate!(input[:provisioned_capacity], context: "#{context}[:provisioned_capacity]") unless input[:provisioned_capacity].nil?
      end
    end

    class CapacityDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CapacityDescription, context: context)
        Validators::AutoScalingDescription.validate!(input[:auto_scaling], context: "#{context}[:auto_scaling]") unless input[:auto_scaling].nil?
        Validators::ProvisionedCapacityDescription.validate!(input[:provisioned_capacity], context: "#{context}[:provisioned_capacity]") unless input[:provisioned_capacity].nil?
      end
    end

    class CapacityUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CapacityUpdate, context: context)
        Validators::AutoScalingUpdate.validate!(input[:auto_scaling], context: "#{context}[:auto_scaling]") unless input[:auto_scaling].nil?
        Validators::ProvisionedCapacityUpdate.validate!(input[:provisioned_capacity], context: "#{context}[:provisioned_capacity]") unless input[:provisioned_capacity].nil?
      end
    end

    class CloudWatchLogsLogDelivery
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudWatchLogsLogDelivery, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:log_group], ::String, context: "#{context}[:log_group]")
      end
    end

    class CloudWatchLogsLogDeliveryDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudWatchLogsLogDeliveryDescription, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:log_group], ::String, context: "#{context}[:log_group]")
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ConnectorSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConnectorSummary, context: context)
        Validators::CapacityDescription.validate!(input[:capacity], context: "#{context}[:capacity]") unless input[:capacity].nil?
        Hearth::Validator.validate!(input[:connector_arn], ::String, context: "#{context}[:connector_arn]")
        Hearth::Validator.validate!(input[:connector_description], ::String, context: "#{context}[:connector_description]")
        Hearth::Validator.validate!(input[:connector_name], ::String, context: "#{context}[:connector_name]")
        Hearth::Validator.validate!(input[:connector_state], ::String, context: "#{context}[:connector_state]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:current_version], ::String, context: "#{context}[:current_version]")
        Validators::KafkaClusterDescription.validate!(input[:kafka_cluster], context: "#{context}[:kafka_cluster]") unless input[:kafka_cluster].nil?
        Validators::KafkaClusterClientAuthenticationDescription.validate!(input[:kafka_cluster_client_authentication], context: "#{context}[:kafka_cluster_client_authentication]") unless input[:kafka_cluster_client_authentication].nil?
        Validators::KafkaClusterEncryptionInTransitDescription.validate!(input[:kafka_cluster_encryption_in_transit], context: "#{context}[:kafka_cluster_encryption_in_transit]") unless input[:kafka_cluster_encryption_in_transit].nil?
        Hearth::Validator.validate!(input[:kafka_connect_version], ::String, context: "#{context}[:kafka_connect_version]")
        Validators::LogDeliveryDescription.validate!(input[:log_delivery], context: "#{context}[:log_delivery]") unless input[:log_delivery].nil?
        Validators::List____listOfPluginDescription.validate!(input[:plugins], context: "#{context}[:plugins]") unless input[:plugins].nil?
        Hearth::Validator.validate!(input[:service_execution_role_arn], ::String, context: "#{context}[:service_execution_role_arn]")
        Validators::WorkerConfigurationDescription.validate!(input[:worker_configuration], context: "#{context}[:worker_configuration]") unless input[:worker_configuration].nil?
      end
    end

    class CreateConnectorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateConnectorInput, context: context)
        Validators::Capacity.validate!(input[:capacity], context: "#{context}[:capacity]") unless input[:capacity].nil?
        Validators::Map____mapOf__string.validate!(input[:connector_configuration], context: "#{context}[:connector_configuration]") unless input[:connector_configuration].nil?
        Hearth::Validator.validate!(input[:connector_description], ::String, context: "#{context}[:connector_description]")
        Hearth::Validator.validate!(input[:connector_name], ::String, context: "#{context}[:connector_name]")
        Validators::KafkaCluster.validate!(input[:kafka_cluster], context: "#{context}[:kafka_cluster]") unless input[:kafka_cluster].nil?
        Validators::KafkaClusterClientAuthentication.validate!(input[:kafka_cluster_client_authentication], context: "#{context}[:kafka_cluster_client_authentication]") unless input[:kafka_cluster_client_authentication].nil?
        Validators::KafkaClusterEncryptionInTransit.validate!(input[:kafka_cluster_encryption_in_transit], context: "#{context}[:kafka_cluster_encryption_in_transit]") unless input[:kafka_cluster_encryption_in_transit].nil?
        Hearth::Validator.validate!(input[:kafka_connect_version], ::String, context: "#{context}[:kafka_connect_version]")
        Validators::LogDelivery.validate!(input[:log_delivery], context: "#{context}[:log_delivery]") unless input[:log_delivery].nil?
        Validators::List____listOfPlugin.validate!(input[:plugins], context: "#{context}[:plugins]") unless input[:plugins].nil?
        Hearth::Validator.validate!(input[:service_execution_role_arn], ::String, context: "#{context}[:service_execution_role_arn]")
        Validators::WorkerConfiguration.validate!(input[:worker_configuration], context: "#{context}[:worker_configuration]") unless input[:worker_configuration].nil?
      end
    end

    class CreateConnectorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateConnectorOutput, context: context)
        Hearth::Validator.validate!(input[:connector_arn], ::String, context: "#{context}[:connector_arn]")
        Hearth::Validator.validate!(input[:connector_name], ::String, context: "#{context}[:connector_name]")
        Hearth::Validator.validate!(input[:connector_state], ::String, context: "#{context}[:connector_state]")
      end
    end

    class CreateCustomPluginInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCustomPluginInput, context: context)
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::CustomPluginLocation.validate!(input[:location], context: "#{context}[:location]") unless input[:location].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class CreateCustomPluginOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCustomPluginOutput, context: context)
        Hearth::Validator.validate!(input[:custom_plugin_arn], ::String, context: "#{context}[:custom_plugin_arn]")
        Hearth::Validator.validate!(input[:custom_plugin_state], ::String, context: "#{context}[:custom_plugin_state]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:revision], ::Integer, context: "#{context}[:revision]")
      end
    end

    class CreateWorkerConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateWorkerConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:properties_file_content], ::String, context: "#{context}[:properties_file_content]")
      end
    end

    class CreateWorkerConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateWorkerConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Validators::WorkerConfigurationRevisionSummary.validate!(input[:latest_revision], context: "#{context}[:latest_revision]") unless input[:latest_revision].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:worker_configuration_arn], ::String, context: "#{context}[:worker_configuration_arn]")
      end
    end

    class CustomPlugin
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomPlugin, context: context)
        Hearth::Validator.validate!(input[:custom_plugin_arn], ::String, context: "#{context}[:custom_plugin_arn]")
        Hearth::Validator.validate!(input[:revision], ::Integer, context: "#{context}[:revision]")
      end
    end

    class CustomPluginDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomPluginDescription, context: context)
        Hearth::Validator.validate!(input[:custom_plugin_arn], ::String, context: "#{context}[:custom_plugin_arn]")
        Hearth::Validator.validate!(input[:revision], ::Integer, context: "#{context}[:revision]")
      end
    end

    class CustomPluginFileDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomPluginFileDescription, context: context)
        Hearth::Validator.validate!(input[:file_md5], ::String, context: "#{context}[:file_md5]")
        Hearth::Validator.validate!(input[:file_size], ::Integer, context: "#{context}[:file_size]")
      end
    end

    class CustomPluginLocation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomPluginLocation, context: context)
        Validators::S3Location.validate!(input[:s3_location], context: "#{context}[:s3_location]") unless input[:s3_location].nil?
      end
    end

    class CustomPluginLocationDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomPluginLocationDescription, context: context)
        Validators::S3LocationDescription.validate!(input[:s3_location], context: "#{context}[:s3_location]") unless input[:s3_location].nil?
      end
    end

    class CustomPluginRevisionSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomPluginRevisionSummary, context: context)
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::CustomPluginFileDescription.validate!(input[:file_description], context: "#{context}[:file_description]") unless input[:file_description].nil?
        Validators::CustomPluginLocationDescription.validate!(input[:location], context: "#{context}[:location]") unless input[:location].nil?
        Hearth::Validator.validate!(input[:revision], ::Integer, context: "#{context}[:revision]")
      end
    end

    class CustomPluginSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomPluginSummary, context: context)
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:custom_plugin_arn], ::String, context: "#{context}[:custom_plugin_arn]")
        Hearth::Validator.validate!(input[:custom_plugin_state], ::String, context: "#{context}[:custom_plugin_state]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::CustomPluginRevisionSummary.validate!(input[:latest_revision], context: "#{context}[:latest_revision]") unless input[:latest_revision].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteConnectorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteConnectorInput, context: context)
        Hearth::Validator.validate!(input[:connector_arn], ::String, context: "#{context}[:connector_arn]")
        Hearth::Validator.validate!(input[:current_version], ::String, context: "#{context}[:current_version]")
      end
    end

    class DeleteConnectorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteConnectorOutput, context: context)
        Hearth::Validator.validate!(input[:connector_arn], ::String, context: "#{context}[:connector_arn]")
        Hearth::Validator.validate!(input[:connector_state], ::String, context: "#{context}[:connector_state]")
      end
    end

    class DeleteCustomPluginInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCustomPluginInput, context: context)
        Hearth::Validator.validate!(input[:custom_plugin_arn], ::String, context: "#{context}[:custom_plugin_arn]")
      end
    end

    class DeleteCustomPluginOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCustomPluginOutput, context: context)
        Hearth::Validator.validate!(input[:custom_plugin_arn], ::String, context: "#{context}[:custom_plugin_arn]")
        Hearth::Validator.validate!(input[:custom_plugin_state], ::String, context: "#{context}[:custom_plugin_state]")
      end
    end

    class DescribeConnectorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeConnectorInput, context: context)
        Hearth::Validator.validate!(input[:connector_arn], ::String, context: "#{context}[:connector_arn]")
      end
    end

    class DescribeConnectorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeConnectorOutput, context: context)
        Validators::CapacityDescription.validate!(input[:capacity], context: "#{context}[:capacity]") unless input[:capacity].nil?
        Hearth::Validator.validate!(input[:connector_arn], ::String, context: "#{context}[:connector_arn]")
        Validators::Map____mapOf__string.validate!(input[:connector_configuration], context: "#{context}[:connector_configuration]") unless input[:connector_configuration].nil?
        Hearth::Validator.validate!(input[:connector_description], ::String, context: "#{context}[:connector_description]")
        Hearth::Validator.validate!(input[:connector_name], ::String, context: "#{context}[:connector_name]")
        Hearth::Validator.validate!(input[:connector_state], ::String, context: "#{context}[:connector_state]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:current_version], ::String, context: "#{context}[:current_version]")
        Validators::KafkaClusterDescription.validate!(input[:kafka_cluster], context: "#{context}[:kafka_cluster]") unless input[:kafka_cluster].nil?
        Validators::KafkaClusterClientAuthenticationDescription.validate!(input[:kafka_cluster_client_authentication], context: "#{context}[:kafka_cluster_client_authentication]") unless input[:kafka_cluster_client_authentication].nil?
        Validators::KafkaClusterEncryptionInTransitDescription.validate!(input[:kafka_cluster_encryption_in_transit], context: "#{context}[:kafka_cluster_encryption_in_transit]") unless input[:kafka_cluster_encryption_in_transit].nil?
        Hearth::Validator.validate!(input[:kafka_connect_version], ::String, context: "#{context}[:kafka_connect_version]")
        Validators::LogDeliveryDescription.validate!(input[:log_delivery], context: "#{context}[:log_delivery]") unless input[:log_delivery].nil?
        Validators::List____listOfPluginDescription.validate!(input[:plugins], context: "#{context}[:plugins]") unless input[:plugins].nil?
        Hearth::Validator.validate!(input[:service_execution_role_arn], ::String, context: "#{context}[:service_execution_role_arn]")
        Validators::WorkerConfigurationDescription.validate!(input[:worker_configuration], context: "#{context}[:worker_configuration]") unless input[:worker_configuration].nil?
        Validators::StateDescription.validate!(input[:state_description], context: "#{context}[:state_description]") unless input[:state_description].nil?
      end
    end

    class DescribeCustomPluginInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCustomPluginInput, context: context)
        Hearth::Validator.validate!(input[:custom_plugin_arn], ::String, context: "#{context}[:custom_plugin_arn]")
      end
    end

    class DescribeCustomPluginOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCustomPluginOutput, context: context)
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:custom_plugin_arn], ::String, context: "#{context}[:custom_plugin_arn]")
        Hearth::Validator.validate!(input[:custom_plugin_state], ::String, context: "#{context}[:custom_plugin_state]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::CustomPluginRevisionSummary.validate!(input[:latest_revision], context: "#{context}[:latest_revision]") unless input[:latest_revision].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::StateDescription.validate!(input[:state_description], context: "#{context}[:state_description]") unless input[:state_description].nil?
      end
    end

    class DescribeWorkerConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeWorkerConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:worker_configuration_arn], ::String, context: "#{context}[:worker_configuration_arn]")
      end
    end

    class DescribeWorkerConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeWorkerConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::WorkerConfigurationRevisionDescription.validate!(input[:latest_revision], context: "#{context}[:latest_revision]") unless input[:latest_revision].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:worker_configuration_arn], ::String, context: "#{context}[:worker_configuration_arn]")
      end
    end

    class FirehoseLogDelivery
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FirehoseLogDelivery, context: context)
        Hearth::Validator.validate!(input[:delivery_stream], ::String, context: "#{context}[:delivery_stream]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
      end
    end

    class FirehoseLogDeliveryDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FirehoseLogDeliveryDescription, context: context)
        Hearth::Validator.validate!(input[:delivery_stream], ::String, context: "#{context}[:delivery_stream]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
      end
    end

    class ForbiddenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ForbiddenException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InternalServerErrorException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerErrorException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class KafkaCluster
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KafkaCluster, context: context)
        Validators::ApacheKafkaCluster.validate!(input[:apache_kafka_cluster], context: "#{context}[:apache_kafka_cluster]") unless input[:apache_kafka_cluster].nil?
      end
    end

    class KafkaClusterClientAuthentication
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KafkaClusterClientAuthentication, context: context)
        Hearth::Validator.validate!(input[:authentication_type], ::String, context: "#{context}[:authentication_type]")
      end
    end

    class KafkaClusterClientAuthenticationDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KafkaClusterClientAuthenticationDescription, context: context)
        Hearth::Validator.validate!(input[:authentication_type], ::String, context: "#{context}[:authentication_type]")
      end
    end

    class KafkaClusterDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KafkaClusterDescription, context: context)
        Validators::ApacheKafkaClusterDescription.validate!(input[:apache_kafka_cluster], context: "#{context}[:apache_kafka_cluster]") unless input[:apache_kafka_cluster].nil?
      end
    end

    class KafkaClusterEncryptionInTransit
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KafkaClusterEncryptionInTransit, context: context)
        Hearth::Validator.validate!(input[:encryption_type], ::String, context: "#{context}[:encryption_type]")
      end
    end

    class KafkaClusterEncryptionInTransitDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KafkaClusterEncryptionInTransitDescription, context: context)
        Hearth::Validator.validate!(input[:encryption_type], ::String, context: "#{context}[:encryption_type]")
      end
    end

    class ListConnectorsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListConnectorsInput, context: context)
        Hearth::Validator.validate!(input[:connector_name_prefix], ::String, context: "#{context}[:connector_name_prefix]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListConnectorsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListConnectorsOutput, context: context)
        Validators::List____listOfConnectorSummary.validate!(input[:connectors], context: "#{context}[:connectors]") unless input[:connectors].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListCustomPluginsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCustomPluginsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListCustomPluginsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCustomPluginsOutput, context: context)
        Validators::List____listOfCustomPluginSummary.validate!(input[:custom_plugins], context: "#{context}[:custom_plugins]") unless input[:custom_plugins].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListWorkerConfigurationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListWorkerConfigurationsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListWorkerConfigurationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListWorkerConfigurationsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::List____listOfWorkerConfigurationSummary.validate!(input[:worker_configurations], context: "#{context}[:worker_configurations]") unless input[:worker_configurations].nil?
      end
    end

    class LogDelivery
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LogDelivery, context: context)
        Validators::WorkerLogDelivery.validate!(input[:worker_log_delivery], context: "#{context}[:worker_log_delivery]") unless input[:worker_log_delivery].nil?
      end
    end

    class LogDeliveryDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LogDeliveryDescription, context: context)
        Validators::WorkerLogDeliveryDescription.validate!(input[:worker_log_delivery], context: "#{context}[:worker_log_delivery]") unless input[:worker_log_delivery].nil?
      end
    end

    class NotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Plugin
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Plugin, context: context)
        Validators::CustomPlugin.validate!(input[:custom_plugin], context: "#{context}[:custom_plugin]") unless input[:custom_plugin].nil?
      end
    end

    class PluginDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PluginDescription, context: context)
        Validators::CustomPluginDescription.validate!(input[:custom_plugin], context: "#{context}[:custom_plugin]") unless input[:custom_plugin].nil?
      end
    end

    class ProvisionedCapacity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProvisionedCapacity, context: context)
        Hearth::Validator.validate!(input[:mcu_count], ::Integer, context: "#{context}[:mcu_count]")
        Hearth::Validator.validate!(input[:worker_count], ::Integer, context: "#{context}[:worker_count]")
      end
    end

    class ProvisionedCapacityDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProvisionedCapacityDescription, context: context)
        Hearth::Validator.validate!(input[:mcu_count], ::Integer, context: "#{context}[:mcu_count]")
        Hearth::Validator.validate!(input[:worker_count], ::Integer, context: "#{context}[:worker_count]")
      end
    end

    class ProvisionedCapacityUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProvisionedCapacityUpdate, context: context)
        Hearth::Validator.validate!(input[:mcu_count], ::Integer, context: "#{context}[:mcu_count]")
        Hearth::Validator.validate!(input[:worker_count], ::Integer, context: "#{context}[:worker_count]")
      end
    end

    class S3Location
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3Location, context: context)
        Hearth::Validator.validate!(input[:bucket_arn], ::String, context: "#{context}[:bucket_arn]")
        Hearth::Validator.validate!(input[:file_key], ::String, context: "#{context}[:file_key]")
        Hearth::Validator.validate!(input[:object_version], ::String, context: "#{context}[:object_version]")
      end
    end

    class S3LocationDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3LocationDescription, context: context)
        Hearth::Validator.validate!(input[:bucket_arn], ::String, context: "#{context}[:bucket_arn]")
        Hearth::Validator.validate!(input[:file_key], ::String, context: "#{context}[:file_key]")
        Hearth::Validator.validate!(input[:object_version], ::String, context: "#{context}[:object_version]")
      end
    end

    class S3LogDelivery
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3LogDelivery, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
      end
    end

    class S3LogDeliveryDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3LogDeliveryDescription, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
      end
    end

    class ScaleInPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScaleInPolicy, context: context)
        Hearth::Validator.validate!(input[:cpu_utilization_percentage], ::Integer, context: "#{context}[:cpu_utilization_percentage]")
      end
    end

    class ScaleInPolicyDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScaleInPolicyDescription, context: context)
        Hearth::Validator.validate!(input[:cpu_utilization_percentage], ::Integer, context: "#{context}[:cpu_utilization_percentage]")
      end
    end

    class ScaleInPolicyUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScaleInPolicyUpdate, context: context)
        Hearth::Validator.validate!(input[:cpu_utilization_percentage], ::Integer, context: "#{context}[:cpu_utilization_percentage]")
      end
    end

    class ScaleOutPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScaleOutPolicy, context: context)
        Hearth::Validator.validate!(input[:cpu_utilization_percentage], ::Integer, context: "#{context}[:cpu_utilization_percentage]")
      end
    end

    class ScaleOutPolicyDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScaleOutPolicyDescription, context: context)
        Hearth::Validator.validate!(input[:cpu_utilization_percentage], ::Integer, context: "#{context}[:cpu_utilization_percentage]")
      end
    end

    class ScaleOutPolicyUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScaleOutPolicyUpdate, context: context)
        Hearth::Validator.validate!(input[:cpu_utilization_percentage], ::Integer, context: "#{context}[:cpu_utilization_percentage]")
      end
    end

    class ServiceUnavailableException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceUnavailableException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class StateDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StateDescription, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyRequestsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyRequestsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UnauthorizedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnauthorizedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UpdateConnectorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateConnectorInput, context: context)
        Validators::CapacityUpdate.validate!(input[:capacity], context: "#{context}[:capacity]") unless input[:capacity].nil?
        Hearth::Validator.validate!(input[:connector_arn], ::String, context: "#{context}[:connector_arn]")
        Hearth::Validator.validate!(input[:current_version], ::String, context: "#{context}[:current_version]")
      end
    end

    class UpdateConnectorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateConnectorOutput, context: context)
        Hearth::Validator.validate!(input[:connector_arn], ::String, context: "#{context}[:connector_arn]")
        Hearth::Validator.validate!(input[:connector_state], ::String, context: "#{context}[:connector_state]")
      end
    end

    class Vpc
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Vpc, context: context)
        Validators::List____listOf__string.validate!(input[:security_groups], context: "#{context}[:security_groups]") unless input[:security_groups].nil?
        Validators::List____listOf__string.validate!(input[:subnets], context: "#{context}[:subnets]") unless input[:subnets].nil?
      end
    end

    class VpcDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VpcDescription, context: context)
        Validators::List____listOf__string.validate!(input[:security_groups], context: "#{context}[:security_groups]") unless input[:security_groups].nil?
        Validators::List____listOf__string.validate!(input[:subnets], context: "#{context}[:subnets]") unless input[:subnets].nil?
      end
    end

    class WorkerConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WorkerConfiguration, context: context)
        Hearth::Validator.validate!(input[:revision], ::Integer, context: "#{context}[:revision]")
        Hearth::Validator.validate!(input[:worker_configuration_arn], ::String, context: "#{context}[:worker_configuration_arn]")
      end
    end

    class WorkerConfigurationDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WorkerConfigurationDescription, context: context)
        Hearth::Validator.validate!(input[:revision], ::Integer, context: "#{context}[:revision]")
        Hearth::Validator.validate!(input[:worker_configuration_arn], ::String, context: "#{context}[:worker_configuration_arn]")
      end
    end

    class WorkerConfigurationRevisionDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WorkerConfigurationRevisionDescription, context: context)
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:properties_file_content], ::String, context: "#{context}[:properties_file_content]")
        Hearth::Validator.validate!(input[:revision], ::Integer, context: "#{context}[:revision]")
      end
    end

    class WorkerConfigurationRevisionSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WorkerConfigurationRevisionSummary, context: context)
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:revision], ::Integer, context: "#{context}[:revision]")
      end
    end

    class WorkerConfigurationSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WorkerConfigurationSummary, context: context)
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::WorkerConfigurationRevisionSummary.validate!(input[:latest_revision], context: "#{context}[:latest_revision]") unless input[:latest_revision].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:worker_configuration_arn], ::String, context: "#{context}[:worker_configuration_arn]")
      end
    end

    class WorkerLogDelivery
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WorkerLogDelivery, context: context)
        Validators::CloudWatchLogsLogDelivery.validate!(input[:cloud_watch_logs], context: "#{context}[:cloud_watch_logs]") unless input[:cloud_watch_logs].nil?
        Validators::FirehoseLogDelivery.validate!(input[:firehose], context: "#{context}[:firehose]") unless input[:firehose].nil?
        Validators::S3LogDelivery.validate!(input[:s3], context: "#{context}[:s3]") unless input[:s3].nil?
      end
    end

    class WorkerLogDeliveryDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WorkerLogDeliveryDescription, context: context)
        Validators::CloudWatchLogsLogDeliveryDescription.validate!(input[:cloud_watch_logs], context: "#{context}[:cloud_watch_logs]") unless input[:cloud_watch_logs].nil?
        Validators::FirehoseLogDeliveryDescription.validate!(input[:firehose], context: "#{context}[:firehose]") unless input[:firehose].nil?
        Validators::S3LogDeliveryDescription.validate!(input[:s3], context: "#{context}[:s3]") unless input[:s3].nil?
      end
    end

    class List____listOfConnectorSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ConnectorSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfCustomPluginSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::CustomPluginSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfPlugin
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Plugin.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfPluginDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PluginDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfWorkerConfigurationSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::WorkerConfigurationSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
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
