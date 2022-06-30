# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Firehose
  module Stubs

    # Operation Stubber for CreateDeliveryStream
    class CreateDeliveryStream
      def self.default(visited=[])
        {
          delivery_stream_arn: 'delivery_stream_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DeliveryStreamARN'] = stub[:delivery_stream_arn] unless stub[:delivery_stream_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteDeliveryStream
    class DeleteDeliveryStream
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeDeliveryStream
    class DescribeDeliveryStream
      def self.default(visited=[])
        {
          delivery_stream_description: Stubs::DeliveryStreamDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DeliveryStreamDescription'] = Stubs::DeliveryStreamDescription.stub(stub[:delivery_stream_description]) unless stub[:delivery_stream_description].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for DeliveryStreamDescription
    class DeliveryStreamDescription
      def self.default(visited=[])
        return nil if visited.include?('DeliveryStreamDescription')
        visited = visited + ['DeliveryStreamDescription']
        {
          delivery_stream_name: 'delivery_stream_name',
          delivery_stream_arn: 'delivery_stream_arn',
          delivery_stream_status: 'delivery_stream_status',
          failure_description: Stubs::FailureDescription.default(visited),
          delivery_stream_encryption_configuration: Stubs::DeliveryStreamEncryptionConfiguration.default(visited),
          delivery_stream_type: 'delivery_stream_type',
          version_id: 'version_id',
          create_timestamp: Time.now,
          last_update_timestamp: Time.now,
          source: Stubs::SourceDescription.default(visited),
          destinations: Stubs::DestinationDescriptionList.default(visited),
          has_more_destinations: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::DeliveryStreamDescription.new
        data = {}
        data['DeliveryStreamName'] = stub[:delivery_stream_name] unless stub[:delivery_stream_name].nil?
        data['DeliveryStreamARN'] = stub[:delivery_stream_arn] unless stub[:delivery_stream_arn].nil?
        data['DeliveryStreamStatus'] = stub[:delivery_stream_status] unless stub[:delivery_stream_status].nil?
        data['FailureDescription'] = Stubs::FailureDescription.stub(stub[:failure_description]) unless stub[:failure_description].nil?
        data['DeliveryStreamEncryptionConfiguration'] = Stubs::DeliveryStreamEncryptionConfiguration.stub(stub[:delivery_stream_encryption_configuration]) unless stub[:delivery_stream_encryption_configuration].nil?
        data['DeliveryStreamType'] = stub[:delivery_stream_type] unless stub[:delivery_stream_type].nil?
        data['VersionId'] = stub[:version_id] unless stub[:version_id].nil?
        data['CreateTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:create_timestamp]).to_i unless stub[:create_timestamp].nil?
        data['LastUpdateTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_update_timestamp]).to_i unless stub[:last_update_timestamp].nil?
        data['Source'] = Stubs::SourceDescription.stub(stub[:source]) unless stub[:source].nil?
        data['Destinations'] = Stubs::DestinationDescriptionList.stub(stub[:destinations]) unless stub[:destinations].nil?
        data['HasMoreDestinations'] = stub[:has_more_destinations] unless stub[:has_more_destinations].nil?
        data
      end
    end

    # List Stubber for DestinationDescriptionList
    class DestinationDescriptionList
      def self.default(visited=[])
        return nil if visited.include?('DestinationDescriptionList')
        visited = visited + ['DestinationDescriptionList']
        [
          Stubs::DestinationDescription.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DestinationDescription.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DestinationDescription
    class DestinationDescription
      def self.default(visited=[])
        return nil if visited.include?('DestinationDescription')
        visited = visited + ['DestinationDescription']
        {
          destination_id: 'destination_id',
          s3_destination_description: Stubs::S3DestinationDescription.default(visited),
          extended_s3_destination_description: Stubs::ExtendedS3DestinationDescription.default(visited),
          redshift_destination_description: Stubs::RedshiftDestinationDescription.default(visited),
          elasticsearch_destination_description: Stubs::ElasticsearchDestinationDescription.default(visited),
          amazonopensearchservice_destination_description: Stubs::AmazonopensearchserviceDestinationDescription.default(visited),
          splunk_destination_description: Stubs::SplunkDestinationDescription.default(visited),
          http_endpoint_destination_description: Stubs::HttpEndpointDestinationDescription.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DestinationDescription.new
        data = {}
        data['DestinationId'] = stub[:destination_id] unless stub[:destination_id].nil?
        data['S3DestinationDescription'] = Stubs::S3DestinationDescription.stub(stub[:s3_destination_description]) unless stub[:s3_destination_description].nil?
        data['ExtendedS3DestinationDescription'] = Stubs::ExtendedS3DestinationDescription.stub(stub[:extended_s3_destination_description]) unless stub[:extended_s3_destination_description].nil?
        data['RedshiftDestinationDescription'] = Stubs::RedshiftDestinationDescription.stub(stub[:redshift_destination_description]) unless stub[:redshift_destination_description].nil?
        data['ElasticsearchDestinationDescription'] = Stubs::ElasticsearchDestinationDescription.stub(stub[:elasticsearch_destination_description]) unless stub[:elasticsearch_destination_description].nil?
        data['AmazonopensearchserviceDestinationDescription'] = Stubs::AmazonopensearchserviceDestinationDescription.stub(stub[:amazonopensearchservice_destination_description]) unless stub[:amazonopensearchservice_destination_description].nil?
        data['SplunkDestinationDescription'] = Stubs::SplunkDestinationDescription.stub(stub[:splunk_destination_description]) unless stub[:splunk_destination_description].nil?
        data['HttpEndpointDestinationDescription'] = Stubs::HttpEndpointDestinationDescription.stub(stub[:http_endpoint_destination_description]) unless stub[:http_endpoint_destination_description].nil?
        data
      end
    end

    # Structure Stubber for HttpEndpointDestinationDescription
    class HttpEndpointDestinationDescription
      def self.default(visited=[])
        return nil if visited.include?('HttpEndpointDestinationDescription')
        visited = visited + ['HttpEndpointDestinationDescription']
        {
          endpoint_configuration: Stubs::HttpEndpointDescription.default(visited),
          buffering_hints: Stubs::HttpEndpointBufferingHints.default(visited),
          cloud_watch_logging_options: Stubs::CloudWatchLoggingOptions.default(visited),
          request_configuration: Stubs::HttpEndpointRequestConfiguration.default(visited),
          processing_configuration: Stubs::ProcessingConfiguration.default(visited),
          role_arn: 'role_arn',
          retry_options: Stubs::HttpEndpointRetryOptions.default(visited),
          s3_backup_mode: 's3_backup_mode',
          s3_destination_description: Stubs::S3DestinationDescription.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::HttpEndpointDestinationDescription.new
        data = {}
        data['EndpointConfiguration'] = Stubs::HttpEndpointDescription.stub(stub[:endpoint_configuration]) unless stub[:endpoint_configuration].nil?
        data['BufferingHints'] = Stubs::HttpEndpointBufferingHints.stub(stub[:buffering_hints]) unless stub[:buffering_hints].nil?
        data['CloudWatchLoggingOptions'] = Stubs::CloudWatchLoggingOptions.stub(stub[:cloud_watch_logging_options]) unless stub[:cloud_watch_logging_options].nil?
        data['RequestConfiguration'] = Stubs::HttpEndpointRequestConfiguration.stub(stub[:request_configuration]) unless stub[:request_configuration].nil?
        data['ProcessingConfiguration'] = Stubs::ProcessingConfiguration.stub(stub[:processing_configuration]) unless stub[:processing_configuration].nil?
        data['RoleARN'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['RetryOptions'] = Stubs::HttpEndpointRetryOptions.stub(stub[:retry_options]) unless stub[:retry_options].nil?
        data['S3BackupMode'] = stub[:s3_backup_mode] unless stub[:s3_backup_mode].nil?
        data['S3DestinationDescription'] = Stubs::S3DestinationDescription.stub(stub[:s3_destination_description]) unless stub[:s3_destination_description].nil?
        data
      end
    end

    # Structure Stubber for S3DestinationDescription
    class S3DestinationDescription
      def self.default(visited=[])
        return nil if visited.include?('S3DestinationDescription')
        visited = visited + ['S3DestinationDescription']
        {
          role_arn: 'role_arn',
          bucket_arn: 'bucket_arn',
          prefix: 'prefix',
          error_output_prefix: 'error_output_prefix',
          buffering_hints: Stubs::BufferingHints.default(visited),
          compression_format: 'compression_format',
          encryption_configuration: Stubs::EncryptionConfiguration.default(visited),
          cloud_watch_logging_options: Stubs::CloudWatchLoggingOptions.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::S3DestinationDescription.new
        data = {}
        data['RoleARN'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['BucketARN'] = stub[:bucket_arn] unless stub[:bucket_arn].nil?
        data['Prefix'] = stub[:prefix] unless stub[:prefix].nil?
        data['ErrorOutputPrefix'] = stub[:error_output_prefix] unless stub[:error_output_prefix].nil?
        data['BufferingHints'] = Stubs::BufferingHints.stub(stub[:buffering_hints]) unless stub[:buffering_hints].nil?
        data['CompressionFormat'] = stub[:compression_format] unless stub[:compression_format].nil?
        data['EncryptionConfiguration'] = Stubs::EncryptionConfiguration.stub(stub[:encryption_configuration]) unless stub[:encryption_configuration].nil?
        data['CloudWatchLoggingOptions'] = Stubs::CloudWatchLoggingOptions.stub(stub[:cloud_watch_logging_options]) unless stub[:cloud_watch_logging_options].nil?
        data
      end
    end

    # Structure Stubber for CloudWatchLoggingOptions
    class CloudWatchLoggingOptions
      def self.default(visited=[])
        return nil if visited.include?('CloudWatchLoggingOptions')
        visited = visited + ['CloudWatchLoggingOptions']
        {
          enabled: false,
          log_group_name: 'log_group_name',
          log_stream_name: 'log_stream_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::CloudWatchLoggingOptions.new
        data = {}
        data['Enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data['LogGroupName'] = stub[:log_group_name] unless stub[:log_group_name].nil?
        data['LogStreamName'] = stub[:log_stream_name] unless stub[:log_stream_name].nil?
        data
      end
    end

    # Structure Stubber for EncryptionConfiguration
    class EncryptionConfiguration
      def self.default(visited=[])
        return nil if visited.include?('EncryptionConfiguration')
        visited = visited + ['EncryptionConfiguration']
        {
          no_encryption_config: 'no_encryption_config',
          kms_encryption_config: Stubs::KMSEncryptionConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::EncryptionConfiguration.new
        data = {}
        data['NoEncryptionConfig'] = stub[:no_encryption_config] unless stub[:no_encryption_config].nil?
        data['KMSEncryptionConfig'] = Stubs::KMSEncryptionConfig.stub(stub[:kms_encryption_config]) unless stub[:kms_encryption_config].nil?
        data
      end
    end

    # Structure Stubber for KMSEncryptionConfig
    class KMSEncryptionConfig
      def self.default(visited=[])
        return nil if visited.include?('KMSEncryptionConfig')
        visited = visited + ['KMSEncryptionConfig']
        {
          awskms_key_arn: 'awskms_key_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::KMSEncryptionConfig.new
        data = {}
        data['AWSKMSKeyARN'] = stub[:awskms_key_arn] unless stub[:awskms_key_arn].nil?
        data
      end
    end

    # Structure Stubber for BufferingHints
    class BufferingHints
      def self.default(visited=[])
        return nil if visited.include?('BufferingHints')
        visited = visited + ['BufferingHints']
        {
          size_in_m_bs: 1,
          interval_in_seconds: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::BufferingHints.new
        data = {}
        data['SizeInMBs'] = stub[:size_in_m_bs] unless stub[:size_in_m_bs].nil?
        data['IntervalInSeconds'] = stub[:interval_in_seconds] unless stub[:interval_in_seconds].nil?
        data
      end
    end

    # Structure Stubber for HttpEndpointRetryOptions
    class HttpEndpointRetryOptions
      def self.default(visited=[])
        return nil if visited.include?('HttpEndpointRetryOptions')
        visited = visited + ['HttpEndpointRetryOptions']
        {
          duration_in_seconds: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::HttpEndpointRetryOptions.new
        data = {}
        data['DurationInSeconds'] = stub[:duration_in_seconds] unless stub[:duration_in_seconds].nil?
        data
      end
    end

    # Structure Stubber for ProcessingConfiguration
    class ProcessingConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ProcessingConfiguration')
        visited = visited + ['ProcessingConfiguration']
        {
          enabled: false,
          processors: Stubs::ProcessorList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ProcessingConfiguration.new
        data = {}
        data['Enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data['Processors'] = Stubs::ProcessorList.stub(stub[:processors]) unless stub[:processors].nil?
        data
      end
    end

    # List Stubber for ProcessorList
    class ProcessorList
      def self.default(visited=[])
        return nil if visited.include?('ProcessorList')
        visited = visited + ['ProcessorList']
        [
          Stubs::Processor.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Processor.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Processor
    class Processor
      def self.default(visited=[])
        return nil if visited.include?('Processor')
        visited = visited + ['Processor']
        {
          type: 'type',
          parameters: Stubs::ProcessorParameterList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Processor.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Parameters'] = Stubs::ProcessorParameterList.stub(stub[:parameters]) unless stub[:parameters].nil?
        data
      end
    end

    # List Stubber for ProcessorParameterList
    class ProcessorParameterList
      def self.default(visited=[])
        return nil if visited.include?('ProcessorParameterList')
        visited = visited + ['ProcessorParameterList']
        [
          Stubs::ProcessorParameter.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ProcessorParameter.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ProcessorParameter
    class ProcessorParameter
      def self.default(visited=[])
        return nil if visited.include?('ProcessorParameter')
        visited = visited + ['ProcessorParameter']
        {
          parameter_name: 'parameter_name',
          parameter_value: 'parameter_value',
        }
      end

      def self.stub(stub)
        stub ||= Types::ProcessorParameter.new
        data = {}
        data['ParameterName'] = stub[:parameter_name] unless stub[:parameter_name].nil?
        data['ParameterValue'] = stub[:parameter_value] unless stub[:parameter_value].nil?
        data
      end
    end

    # Structure Stubber for HttpEndpointRequestConfiguration
    class HttpEndpointRequestConfiguration
      def self.default(visited=[])
        return nil if visited.include?('HttpEndpointRequestConfiguration')
        visited = visited + ['HttpEndpointRequestConfiguration']
        {
          content_encoding: 'content_encoding',
          common_attributes: Stubs::HttpEndpointCommonAttributesList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::HttpEndpointRequestConfiguration.new
        data = {}
        data['ContentEncoding'] = stub[:content_encoding] unless stub[:content_encoding].nil?
        data['CommonAttributes'] = Stubs::HttpEndpointCommonAttributesList.stub(stub[:common_attributes]) unless stub[:common_attributes].nil?
        data
      end
    end

    # List Stubber for HttpEndpointCommonAttributesList
    class HttpEndpointCommonAttributesList
      def self.default(visited=[])
        return nil if visited.include?('HttpEndpointCommonAttributesList')
        visited = visited + ['HttpEndpointCommonAttributesList']
        [
          Stubs::HttpEndpointCommonAttribute.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::HttpEndpointCommonAttribute.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for HttpEndpointCommonAttribute
    class HttpEndpointCommonAttribute
      def self.default(visited=[])
        return nil if visited.include?('HttpEndpointCommonAttribute')
        visited = visited + ['HttpEndpointCommonAttribute']
        {
          attribute_name: 'attribute_name',
          attribute_value: 'attribute_value',
        }
      end

      def self.stub(stub)
        stub ||= Types::HttpEndpointCommonAttribute.new
        data = {}
        data['AttributeName'] = stub[:attribute_name] unless stub[:attribute_name].nil?
        data['AttributeValue'] = stub[:attribute_value] unless stub[:attribute_value].nil?
        data
      end
    end

    # Structure Stubber for HttpEndpointBufferingHints
    class HttpEndpointBufferingHints
      def self.default(visited=[])
        return nil if visited.include?('HttpEndpointBufferingHints')
        visited = visited + ['HttpEndpointBufferingHints']
        {
          size_in_m_bs: 1,
          interval_in_seconds: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::HttpEndpointBufferingHints.new
        data = {}
        data['SizeInMBs'] = stub[:size_in_m_bs] unless stub[:size_in_m_bs].nil?
        data['IntervalInSeconds'] = stub[:interval_in_seconds] unless stub[:interval_in_seconds].nil?
        data
      end
    end

    # Structure Stubber for HttpEndpointDescription
    class HttpEndpointDescription
      def self.default(visited=[])
        return nil if visited.include?('HttpEndpointDescription')
        visited = visited + ['HttpEndpointDescription']
        {
          url: 'url',
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::HttpEndpointDescription.new
        data = {}
        data['Url'] = stub[:url] unless stub[:url].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Structure Stubber for SplunkDestinationDescription
    class SplunkDestinationDescription
      def self.default(visited=[])
        return nil if visited.include?('SplunkDestinationDescription')
        visited = visited + ['SplunkDestinationDescription']
        {
          hec_endpoint: 'hec_endpoint',
          hec_endpoint_type: 'hec_endpoint_type',
          hec_token: 'hec_token',
          hec_acknowledgment_timeout_in_seconds: 1,
          retry_options: Stubs::SplunkRetryOptions.default(visited),
          s3_backup_mode: 's3_backup_mode',
          s3_destination_description: Stubs::S3DestinationDescription.default(visited),
          processing_configuration: Stubs::ProcessingConfiguration.default(visited),
          cloud_watch_logging_options: Stubs::CloudWatchLoggingOptions.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SplunkDestinationDescription.new
        data = {}
        data['HECEndpoint'] = stub[:hec_endpoint] unless stub[:hec_endpoint].nil?
        data['HECEndpointType'] = stub[:hec_endpoint_type] unless stub[:hec_endpoint_type].nil?
        data['HECToken'] = stub[:hec_token] unless stub[:hec_token].nil?
        data['HECAcknowledgmentTimeoutInSeconds'] = stub[:hec_acknowledgment_timeout_in_seconds] unless stub[:hec_acknowledgment_timeout_in_seconds].nil?
        data['RetryOptions'] = Stubs::SplunkRetryOptions.stub(stub[:retry_options]) unless stub[:retry_options].nil?
        data['S3BackupMode'] = stub[:s3_backup_mode] unless stub[:s3_backup_mode].nil?
        data['S3DestinationDescription'] = Stubs::S3DestinationDescription.stub(stub[:s3_destination_description]) unless stub[:s3_destination_description].nil?
        data['ProcessingConfiguration'] = Stubs::ProcessingConfiguration.stub(stub[:processing_configuration]) unless stub[:processing_configuration].nil?
        data['CloudWatchLoggingOptions'] = Stubs::CloudWatchLoggingOptions.stub(stub[:cloud_watch_logging_options]) unless stub[:cloud_watch_logging_options].nil?
        data
      end
    end

    # Structure Stubber for SplunkRetryOptions
    class SplunkRetryOptions
      def self.default(visited=[])
        return nil if visited.include?('SplunkRetryOptions')
        visited = visited + ['SplunkRetryOptions']
        {
          duration_in_seconds: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::SplunkRetryOptions.new
        data = {}
        data['DurationInSeconds'] = stub[:duration_in_seconds] unless stub[:duration_in_seconds].nil?
        data
      end
    end

    # Structure Stubber for AmazonopensearchserviceDestinationDescription
    class AmazonopensearchserviceDestinationDescription
      def self.default(visited=[])
        return nil if visited.include?('AmazonopensearchserviceDestinationDescription')
        visited = visited + ['AmazonopensearchserviceDestinationDescription']
        {
          role_arn: 'role_arn',
          domain_arn: 'domain_arn',
          cluster_endpoint: 'cluster_endpoint',
          index_name: 'index_name',
          type_name: 'type_name',
          index_rotation_period: 'index_rotation_period',
          buffering_hints: Stubs::AmazonopensearchserviceBufferingHints.default(visited),
          retry_options: Stubs::AmazonopensearchserviceRetryOptions.default(visited),
          s3_backup_mode: 's3_backup_mode',
          s3_destination_description: Stubs::S3DestinationDescription.default(visited),
          processing_configuration: Stubs::ProcessingConfiguration.default(visited),
          cloud_watch_logging_options: Stubs::CloudWatchLoggingOptions.default(visited),
          vpc_configuration_description: Stubs::VpcConfigurationDescription.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AmazonopensearchserviceDestinationDescription.new
        data = {}
        data['RoleARN'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['DomainARN'] = stub[:domain_arn] unless stub[:domain_arn].nil?
        data['ClusterEndpoint'] = stub[:cluster_endpoint] unless stub[:cluster_endpoint].nil?
        data['IndexName'] = stub[:index_name] unless stub[:index_name].nil?
        data['TypeName'] = stub[:type_name] unless stub[:type_name].nil?
        data['IndexRotationPeriod'] = stub[:index_rotation_period] unless stub[:index_rotation_period].nil?
        data['BufferingHints'] = Stubs::AmazonopensearchserviceBufferingHints.stub(stub[:buffering_hints]) unless stub[:buffering_hints].nil?
        data['RetryOptions'] = Stubs::AmazonopensearchserviceRetryOptions.stub(stub[:retry_options]) unless stub[:retry_options].nil?
        data['S3BackupMode'] = stub[:s3_backup_mode] unless stub[:s3_backup_mode].nil?
        data['S3DestinationDescription'] = Stubs::S3DestinationDescription.stub(stub[:s3_destination_description]) unless stub[:s3_destination_description].nil?
        data['ProcessingConfiguration'] = Stubs::ProcessingConfiguration.stub(stub[:processing_configuration]) unless stub[:processing_configuration].nil?
        data['CloudWatchLoggingOptions'] = Stubs::CloudWatchLoggingOptions.stub(stub[:cloud_watch_logging_options]) unless stub[:cloud_watch_logging_options].nil?
        data['VpcConfigurationDescription'] = Stubs::VpcConfigurationDescription.stub(stub[:vpc_configuration_description]) unless stub[:vpc_configuration_description].nil?
        data
      end
    end

    # Structure Stubber for VpcConfigurationDescription
    class VpcConfigurationDescription
      def self.default(visited=[])
        return nil if visited.include?('VpcConfigurationDescription')
        visited = visited + ['VpcConfigurationDescription']
        {
          subnet_ids: Stubs::SubnetIdList.default(visited),
          role_arn: 'role_arn',
          security_group_ids: Stubs::SecurityGroupIdList.default(visited),
          vpc_id: 'vpc_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::VpcConfigurationDescription.new
        data = {}
        data['SubnetIds'] = Stubs::SubnetIdList.stub(stub[:subnet_ids]) unless stub[:subnet_ids].nil?
        data['RoleARN'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['SecurityGroupIds'] = Stubs::SecurityGroupIdList.stub(stub[:security_group_ids]) unless stub[:security_group_ids].nil?
        data['VpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data
      end
    end

    # List Stubber for SecurityGroupIdList
    class SecurityGroupIdList
      def self.default(visited=[])
        return nil if visited.include?('SecurityGroupIdList')
        visited = visited + ['SecurityGroupIdList']
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

    # List Stubber for SubnetIdList
    class SubnetIdList
      def self.default(visited=[])
        return nil if visited.include?('SubnetIdList')
        visited = visited + ['SubnetIdList']
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

    # Structure Stubber for AmazonopensearchserviceRetryOptions
    class AmazonopensearchserviceRetryOptions
      def self.default(visited=[])
        return nil if visited.include?('AmazonopensearchserviceRetryOptions')
        visited = visited + ['AmazonopensearchserviceRetryOptions']
        {
          duration_in_seconds: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::AmazonopensearchserviceRetryOptions.new
        data = {}
        data['DurationInSeconds'] = stub[:duration_in_seconds] unless stub[:duration_in_seconds].nil?
        data
      end
    end

    # Structure Stubber for AmazonopensearchserviceBufferingHints
    class AmazonopensearchserviceBufferingHints
      def self.default(visited=[])
        return nil if visited.include?('AmazonopensearchserviceBufferingHints')
        visited = visited + ['AmazonopensearchserviceBufferingHints']
        {
          interval_in_seconds: 1,
          size_in_m_bs: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::AmazonopensearchserviceBufferingHints.new
        data = {}
        data['IntervalInSeconds'] = stub[:interval_in_seconds] unless stub[:interval_in_seconds].nil?
        data['SizeInMBs'] = stub[:size_in_m_bs] unless stub[:size_in_m_bs].nil?
        data
      end
    end

    # Structure Stubber for ElasticsearchDestinationDescription
    class ElasticsearchDestinationDescription
      def self.default(visited=[])
        return nil if visited.include?('ElasticsearchDestinationDescription')
        visited = visited + ['ElasticsearchDestinationDescription']
        {
          role_arn: 'role_arn',
          domain_arn: 'domain_arn',
          cluster_endpoint: 'cluster_endpoint',
          index_name: 'index_name',
          type_name: 'type_name',
          index_rotation_period: 'index_rotation_period',
          buffering_hints: Stubs::ElasticsearchBufferingHints.default(visited),
          retry_options: Stubs::ElasticsearchRetryOptions.default(visited),
          s3_backup_mode: 's3_backup_mode',
          s3_destination_description: Stubs::S3DestinationDescription.default(visited),
          processing_configuration: Stubs::ProcessingConfiguration.default(visited),
          cloud_watch_logging_options: Stubs::CloudWatchLoggingOptions.default(visited),
          vpc_configuration_description: Stubs::VpcConfigurationDescription.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ElasticsearchDestinationDescription.new
        data = {}
        data['RoleARN'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['DomainARN'] = stub[:domain_arn] unless stub[:domain_arn].nil?
        data['ClusterEndpoint'] = stub[:cluster_endpoint] unless stub[:cluster_endpoint].nil?
        data['IndexName'] = stub[:index_name] unless stub[:index_name].nil?
        data['TypeName'] = stub[:type_name] unless stub[:type_name].nil?
        data['IndexRotationPeriod'] = stub[:index_rotation_period] unless stub[:index_rotation_period].nil?
        data['BufferingHints'] = Stubs::ElasticsearchBufferingHints.stub(stub[:buffering_hints]) unless stub[:buffering_hints].nil?
        data['RetryOptions'] = Stubs::ElasticsearchRetryOptions.stub(stub[:retry_options]) unless stub[:retry_options].nil?
        data['S3BackupMode'] = stub[:s3_backup_mode] unless stub[:s3_backup_mode].nil?
        data['S3DestinationDescription'] = Stubs::S3DestinationDescription.stub(stub[:s3_destination_description]) unless stub[:s3_destination_description].nil?
        data['ProcessingConfiguration'] = Stubs::ProcessingConfiguration.stub(stub[:processing_configuration]) unless stub[:processing_configuration].nil?
        data['CloudWatchLoggingOptions'] = Stubs::CloudWatchLoggingOptions.stub(stub[:cloud_watch_logging_options]) unless stub[:cloud_watch_logging_options].nil?
        data['VpcConfigurationDescription'] = Stubs::VpcConfigurationDescription.stub(stub[:vpc_configuration_description]) unless stub[:vpc_configuration_description].nil?
        data
      end
    end

    # Structure Stubber for ElasticsearchRetryOptions
    class ElasticsearchRetryOptions
      def self.default(visited=[])
        return nil if visited.include?('ElasticsearchRetryOptions')
        visited = visited + ['ElasticsearchRetryOptions']
        {
          duration_in_seconds: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ElasticsearchRetryOptions.new
        data = {}
        data['DurationInSeconds'] = stub[:duration_in_seconds] unless stub[:duration_in_seconds].nil?
        data
      end
    end

    # Structure Stubber for ElasticsearchBufferingHints
    class ElasticsearchBufferingHints
      def self.default(visited=[])
        return nil if visited.include?('ElasticsearchBufferingHints')
        visited = visited + ['ElasticsearchBufferingHints']
        {
          interval_in_seconds: 1,
          size_in_m_bs: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ElasticsearchBufferingHints.new
        data = {}
        data['IntervalInSeconds'] = stub[:interval_in_seconds] unless stub[:interval_in_seconds].nil?
        data['SizeInMBs'] = stub[:size_in_m_bs] unless stub[:size_in_m_bs].nil?
        data
      end
    end

    # Structure Stubber for RedshiftDestinationDescription
    class RedshiftDestinationDescription
      def self.default(visited=[])
        return nil if visited.include?('RedshiftDestinationDescription')
        visited = visited + ['RedshiftDestinationDescription']
        {
          role_arn: 'role_arn',
          cluster_jdbcurl: 'cluster_jdbcurl',
          copy_command: Stubs::CopyCommand.default(visited),
          username: 'username',
          retry_options: Stubs::RedshiftRetryOptions.default(visited),
          s3_destination_description: Stubs::S3DestinationDescription.default(visited),
          processing_configuration: Stubs::ProcessingConfiguration.default(visited),
          s3_backup_mode: 's3_backup_mode',
          s3_backup_description: Stubs::S3DestinationDescription.default(visited),
          cloud_watch_logging_options: Stubs::CloudWatchLoggingOptions.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RedshiftDestinationDescription.new
        data = {}
        data['RoleARN'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['ClusterJDBCURL'] = stub[:cluster_jdbcurl] unless stub[:cluster_jdbcurl].nil?
        data['CopyCommand'] = Stubs::CopyCommand.stub(stub[:copy_command]) unless stub[:copy_command].nil?
        data['Username'] = stub[:username] unless stub[:username].nil?
        data['RetryOptions'] = Stubs::RedshiftRetryOptions.stub(stub[:retry_options]) unless stub[:retry_options].nil?
        data['S3DestinationDescription'] = Stubs::S3DestinationDescription.stub(stub[:s3_destination_description]) unless stub[:s3_destination_description].nil?
        data['ProcessingConfiguration'] = Stubs::ProcessingConfiguration.stub(stub[:processing_configuration]) unless stub[:processing_configuration].nil?
        data['S3BackupMode'] = stub[:s3_backup_mode] unless stub[:s3_backup_mode].nil?
        data['S3BackupDescription'] = Stubs::S3DestinationDescription.stub(stub[:s3_backup_description]) unless stub[:s3_backup_description].nil?
        data['CloudWatchLoggingOptions'] = Stubs::CloudWatchLoggingOptions.stub(stub[:cloud_watch_logging_options]) unless stub[:cloud_watch_logging_options].nil?
        data
      end
    end

    # Structure Stubber for RedshiftRetryOptions
    class RedshiftRetryOptions
      def self.default(visited=[])
        return nil if visited.include?('RedshiftRetryOptions')
        visited = visited + ['RedshiftRetryOptions']
        {
          duration_in_seconds: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::RedshiftRetryOptions.new
        data = {}
        data['DurationInSeconds'] = stub[:duration_in_seconds] unless stub[:duration_in_seconds].nil?
        data
      end
    end

    # Structure Stubber for CopyCommand
    class CopyCommand
      def self.default(visited=[])
        return nil if visited.include?('CopyCommand')
        visited = visited + ['CopyCommand']
        {
          data_table_name: 'data_table_name',
          data_table_columns: 'data_table_columns',
          copy_options: 'copy_options',
        }
      end

      def self.stub(stub)
        stub ||= Types::CopyCommand.new
        data = {}
        data['DataTableName'] = stub[:data_table_name] unless stub[:data_table_name].nil?
        data['DataTableColumns'] = stub[:data_table_columns] unless stub[:data_table_columns].nil?
        data['CopyOptions'] = stub[:copy_options] unless stub[:copy_options].nil?
        data
      end
    end

    # Structure Stubber for ExtendedS3DestinationDescription
    class ExtendedS3DestinationDescription
      def self.default(visited=[])
        return nil if visited.include?('ExtendedS3DestinationDescription')
        visited = visited + ['ExtendedS3DestinationDescription']
        {
          role_arn: 'role_arn',
          bucket_arn: 'bucket_arn',
          prefix: 'prefix',
          error_output_prefix: 'error_output_prefix',
          buffering_hints: Stubs::BufferingHints.default(visited),
          compression_format: 'compression_format',
          encryption_configuration: Stubs::EncryptionConfiguration.default(visited),
          cloud_watch_logging_options: Stubs::CloudWatchLoggingOptions.default(visited),
          processing_configuration: Stubs::ProcessingConfiguration.default(visited),
          s3_backup_mode: 's3_backup_mode',
          s3_backup_description: Stubs::S3DestinationDescription.default(visited),
          data_format_conversion_configuration: Stubs::DataFormatConversionConfiguration.default(visited),
          dynamic_partitioning_configuration: Stubs::DynamicPartitioningConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ExtendedS3DestinationDescription.new
        data = {}
        data['RoleARN'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['BucketARN'] = stub[:bucket_arn] unless stub[:bucket_arn].nil?
        data['Prefix'] = stub[:prefix] unless stub[:prefix].nil?
        data['ErrorOutputPrefix'] = stub[:error_output_prefix] unless stub[:error_output_prefix].nil?
        data['BufferingHints'] = Stubs::BufferingHints.stub(stub[:buffering_hints]) unless stub[:buffering_hints].nil?
        data['CompressionFormat'] = stub[:compression_format] unless stub[:compression_format].nil?
        data['EncryptionConfiguration'] = Stubs::EncryptionConfiguration.stub(stub[:encryption_configuration]) unless stub[:encryption_configuration].nil?
        data['CloudWatchLoggingOptions'] = Stubs::CloudWatchLoggingOptions.stub(stub[:cloud_watch_logging_options]) unless stub[:cloud_watch_logging_options].nil?
        data['ProcessingConfiguration'] = Stubs::ProcessingConfiguration.stub(stub[:processing_configuration]) unless stub[:processing_configuration].nil?
        data['S3BackupMode'] = stub[:s3_backup_mode] unless stub[:s3_backup_mode].nil?
        data['S3BackupDescription'] = Stubs::S3DestinationDescription.stub(stub[:s3_backup_description]) unless stub[:s3_backup_description].nil?
        data['DataFormatConversionConfiguration'] = Stubs::DataFormatConversionConfiguration.stub(stub[:data_format_conversion_configuration]) unless stub[:data_format_conversion_configuration].nil?
        data['DynamicPartitioningConfiguration'] = Stubs::DynamicPartitioningConfiguration.stub(stub[:dynamic_partitioning_configuration]) unless stub[:dynamic_partitioning_configuration].nil?
        data
      end
    end

    # Structure Stubber for DynamicPartitioningConfiguration
    class DynamicPartitioningConfiguration
      def self.default(visited=[])
        return nil if visited.include?('DynamicPartitioningConfiguration')
        visited = visited + ['DynamicPartitioningConfiguration']
        {
          retry_options: Stubs::RetryOptions.default(visited),
          enabled: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::DynamicPartitioningConfiguration.new
        data = {}
        data['RetryOptions'] = Stubs::RetryOptions.stub(stub[:retry_options]) unless stub[:retry_options].nil?
        data['Enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data
      end
    end

    # Structure Stubber for RetryOptions
    class RetryOptions
      def self.default(visited=[])
        return nil if visited.include?('RetryOptions')
        visited = visited + ['RetryOptions']
        {
          duration_in_seconds: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::RetryOptions.new
        data = {}
        data['DurationInSeconds'] = stub[:duration_in_seconds] unless stub[:duration_in_seconds].nil?
        data
      end
    end

    # Structure Stubber for DataFormatConversionConfiguration
    class DataFormatConversionConfiguration
      def self.default(visited=[])
        return nil if visited.include?('DataFormatConversionConfiguration')
        visited = visited + ['DataFormatConversionConfiguration']
        {
          schema_configuration: Stubs::SchemaConfiguration.default(visited),
          input_format_configuration: Stubs::InputFormatConfiguration.default(visited),
          output_format_configuration: Stubs::OutputFormatConfiguration.default(visited),
          enabled: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::DataFormatConversionConfiguration.new
        data = {}
        data['SchemaConfiguration'] = Stubs::SchemaConfiguration.stub(stub[:schema_configuration]) unless stub[:schema_configuration].nil?
        data['InputFormatConfiguration'] = Stubs::InputFormatConfiguration.stub(stub[:input_format_configuration]) unless stub[:input_format_configuration].nil?
        data['OutputFormatConfiguration'] = Stubs::OutputFormatConfiguration.stub(stub[:output_format_configuration]) unless stub[:output_format_configuration].nil?
        data['Enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data
      end
    end

    # Structure Stubber for OutputFormatConfiguration
    class OutputFormatConfiguration
      def self.default(visited=[])
        return nil if visited.include?('OutputFormatConfiguration')
        visited = visited + ['OutputFormatConfiguration']
        {
          serializer: Stubs::Serializer.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::OutputFormatConfiguration.new
        data = {}
        data['Serializer'] = Stubs::Serializer.stub(stub[:serializer]) unless stub[:serializer].nil?
        data
      end
    end

    # Structure Stubber for Serializer
    class Serializer
      def self.default(visited=[])
        return nil if visited.include?('Serializer')
        visited = visited + ['Serializer']
        {
          parquet_ser_de: Stubs::ParquetSerDe.default(visited),
          orc_ser_de: Stubs::OrcSerDe.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Serializer.new
        data = {}
        data['ParquetSerDe'] = Stubs::ParquetSerDe.stub(stub[:parquet_ser_de]) unless stub[:parquet_ser_de].nil?
        data['OrcSerDe'] = Stubs::OrcSerDe.stub(stub[:orc_ser_de]) unless stub[:orc_ser_de].nil?
        data
      end
    end

    # Structure Stubber for OrcSerDe
    class OrcSerDe
      def self.default(visited=[])
        return nil if visited.include?('OrcSerDe')
        visited = visited + ['OrcSerDe']
        {
          stripe_size_bytes: 1,
          block_size_bytes: 1,
          row_index_stride: 1,
          enable_padding: false,
          padding_tolerance: 1.0,
          compression: 'compression',
          bloom_filter_columns: Stubs::ListOfNonEmptyStringsWithoutWhitespace.default(visited),
          bloom_filter_false_positive_probability: 1.0,
          dictionary_key_threshold: 1.0,
          format_version: 'format_version',
        }
      end

      def self.stub(stub)
        stub ||= Types::OrcSerDe.new
        data = {}
        data['StripeSizeBytes'] = stub[:stripe_size_bytes] unless stub[:stripe_size_bytes].nil?
        data['BlockSizeBytes'] = stub[:block_size_bytes] unless stub[:block_size_bytes].nil?
        data['RowIndexStride'] = stub[:row_index_stride] unless stub[:row_index_stride].nil?
        data['EnablePadding'] = stub[:enable_padding] unless stub[:enable_padding].nil?
        data['PaddingTolerance'] = Hearth::NumberHelper.serialize(stub[:padding_tolerance])
        data['Compression'] = stub[:compression] unless stub[:compression].nil?
        data['BloomFilterColumns'] = Stubs::ListOfNonEmptyStringsWithoutWhitespace.stub(stub[:bloom_filter_columns]) unless stub[:bloom_filter_columns].nil?
        data['BloomFilterFalsePositiveProbability'] = Hearth::NumberHelper.serialize(stub[:bloom_filter_false_positive_probability])
        data['DictionaryKeyThreshold'] = Hearth::NumberHelper.serialize(stub[:dictionary_key_threshold])
        data['FormatVersion'] = stub[:format_version] unless stub[:format_version].nil?
        data
      end
    end

    # List Stubber for ListOfNonEmptyStringsWithoutWhitespace
    class ListOfNonEmptyStringsWithoutWhitespace
      def self.default(visited=[])
        return nil if visited.include?('ListOfNonEmptyStringsWithoutWhitespace')
        visited = visited + ['ListOfNonEmptyStringsWithoutWhitespace']
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

    # Structure Stubber for ParquetSerDe
    class ParquetSerDe
      def self.default(visited=[])
        return nil if visited.include?('ParquetSerDe')
        visited = visited + ['ParquetSerDe']
        {
          block_size_bytes: 1,
          page_size_bytes: 1,
          compression: 'compression',
          enable_dictionary_compression: false,
          max_padding_bytes: 1,
          writer_version: 'writer_version',
        }
      end

      def self.stub(stub)
        stub ||= Types::ParquetSerDe.new
        data = {}
        data['BlockSizeBytes'] = stub[:block_size_bytes] unless stub[:block_size_bytes].nil?
        data['PageSizeBytes'] = stub[:page_size_bytes] unless stub[:page_size_bytes].nil?
        data['Compression'] = stub[:compression] unless stub[:compression].nil?
        data['EnableDictionaryCompression'] = stub[:enable_dictionary_compression] unless stub[:enable_dictionary_compression].nil?
        data['MaxPaddingBytes'] = stub[:max_padding_bytes] unless stub[:max_padding_bytes].nil?
        data['WriterVersion'] = stub[:writer_version] unless stub[:writer_version].nil?
        data
      end
    end

    # Structure Stubber for InputFormatConfiguration
    class InputFormatConfiguration
      def self.default(visited=[])
        return nil if visited.include?('InputFormatConfiguration')
        visited = visited + ['InputFormatConfiguration']
        {
          deserializer: Stubs::Deserializer.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::InputFormatConfiguration.new
        data = {}
        data['Deserializer'] = Stubs::Deserializer.stub(stub[:deserializer]) unless stub[:deserializer].nil?
        data
      end
    end

    # Structure Stubber for Deserializer
    class Deserializer
      def self.default(visited=[])
        return nil if visited.include?('Deserializer')
        visited = visited + ['Deserializer']
        {
          open_x_json_ser_de: Stubs::OpenXJsonSerDe.default(visited),
          hive_json_ser_de: Stubs::HiveJsonSerDe.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Deserializer.new
        data = {}
        data['OpenXJsonSerDe'] = Stubs::OpenXJsonSerDe.stub(stub[:open_x_json_ser_de]) unless stub[:open_x_json_ser_de].nil?
        data['HiveJsonSerDe'] = Stubs::HiveJsonSerDe.stub(stub[:hive_json_ser_de]) unless stub[:hive_json_ser_de].nil?
        data
      end
    end

    # Structure Stubber for HiveJsonSerDe
    class HiveJsonSerDe
      def self.default(visited=[])
        return nil if visited.include?('HiveJsonSerDe')
        visited = visited + ['HiveJsonSerDe']
        {
          timestamp_formats: Stubs::ListOfNonEmptyStrings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::HiveJsonSerDe.new
        data = {}
        data['TimestampFormats'] = Stubs::ListOfNonEmptyStrings.stub(stub[:timestamp_formats]) unless stub[:timestamp_formats].nil?
        data
      end
    end

    # List Stubber for ListOfNonEmptyStrings
    class ListOfNonEmptyStrings
      def self.default(visited=[])
        return nil if visited.include?('ListOfNonEmptyStrings')
        visited = visited + ['ListOfNonEmptyStrings']
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

    # Structure Stubber for OpenXJsonSerDe
    class OpenXJsonSerDe
      def self.default(visited=[])
        return nil if visited.include?('OpenXJsonSerDe')
        visited = visited + ['OpenXJsonSerDe']
        {
          convert_dots_in_json_keys_to_underscores: false,
          case_insensitive: false,
          column_to_json_key_mappings: Stubs::ColumnToJsonKeyMappings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::OpenXJsonSerDe.new
        data = {}
        data['ConvertDotsInJsonKeysToUnderscores'] = stub[:convert_dots_in_json_keys_to_underscores] unless stub[:convert_dots_in_json_keys_to_underscores].nil?
        data['CaseInsensitive'] = stub[:case_insensitive] unless stub[:case_insensitive].nil?
        data['ColumnToJsonKeyMappings'] = Stubs::ColumnToJsonKeyMappings.stub(stub[:column_to_json_key_mappings]) unless stub[:column_to_json_key_mappings].nil?
        data
      end
    end

    # Map Stubber for ColumnToJsonKeyMappings
    class ColumnToJsonKeyMappings
      def self.default(visited=[])
        return nil if visited.include?('ColumnToJsonKeyMappings')
        visited = visited + ['ColumnToJsonKeyMappings']
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

    # Structure Stubber for SchemaConfiguration
    class SchemaConfiguration
      def self.default(visited=[])
        return nil if visited.include?('SchemaConfiguration')
        visited = visited + ['SchemaConfiguration']
        {
          role_arn: 'role_arn',
          catalog_id: 'catalog_id',
          database_name: 'database_name',
          table_name: 'table_name',
          region: 'region',
          version_id: 'version_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::SchemaConfiguration.new
        data = {}
        data['RoleARN'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['CatalogId'] = stub[:catalog_id] unless stub[:catalog_id].nil?
        data['DatabaseName'] = stub[:database_name] unless stub[:database_name].nil?
        data['TableName'] = stub[:table_name] unless stub[:table_name].nil?
        data['Region'] = stub[:region] unless stub[:region].nil?
        data['VersionId'] = stub[:version_id] unless stub[:version_id].nil?
        data
      end
    end

    # Structure Stubber for SourceDescription
    class SourceDescription
      def self.default(visited=[])
        return nil if visited.include?('SourceDescription')
        visited = visited + ['SourceDescription']
        {
          kinesis_stream_source_description: Stubs::KinesisStreamSourceDescription.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SourceDescription.new
        data = {}
        data['KinesisStreamSourceDescription'] = Stubs::KinesisStreamSourceDescription.stub(stub[:kinesis_stream_source_description]) unless stub[:kinesis_stream_source_description].nil?
        data
      end
    end

    # Structure Stubber for KinesisStreamSourceDescription
    class KinesisStreamSourceDescription
      def self.default(visited=[])
        return nil if visited.include?('KinesisStreamSourceDescription')
        visited = visited + ['KinesisStreamSourceDescription']
        {
          kinesis_stream_arn: 'kinesis_stream_arn',
          role_arn: 'role_arn',
          delivery_start_timestamp: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::KinesisStreamSourceDescription.new
        data = {}
        data['KinesisStreamARN'] = stub[:kinesis_stream_arn] unless stub[:kinesis_stream_arn].nil?
        data['RoleARN'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['DeliveryStartTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:delivery_start_timestamp]).to_i unless stub[:delivery_start_timestamp].nil?
        data
      end
    end

    # Structure Stubber for DeliveryStreamEncryptionConfiguration
    class DeliveryStreamEncryptionConfiguration
      def self.default(visited=[])
        return nil if visited.include?('DeliveryStreamEncryptionConfiguration')
        visited = visited + ['DeliveryStreamEncryptionConfiguration']
        {
          key_arn: 'key_arn',
          key_type: 'key_type',
          status: 'status',
          failure_description: Stubs::FailureDescription.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DeliveryStreamEncryptionConfiguration.new
        data = {}
        data['KeyARN'] = stub[:key_arn] unless stub[:key_arn].nil?
        data['KeyType'] = stub[:key_type] unless stub[:key_type].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['FailureDescription'] = Stubs::FailureDescription.stub(stub[:failure_description]) unless stub[:failure_description].nil?
        data
      end
    end

    # Structure Stubber for FailureDescription
    class FailureDescription
      def self.default(visited=[])
        return nil if visited.include?('FailureDescription')
        visited = visited + ['FailureDescription']
        {
          type: 'type',
          details: 'details',
        }
      end

      def self.stub(stub)
        stub ||= Types::FailureDescription.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Details'] = stub[:details] unless stub[:details].nil?
        data
      end
    end

    # Operation Stubber for ListDeliveryStreams
    class ListDeliveryStreams
      def self.default(visited=[])
        {
          delivery_stream_names: Stubs::DeliveryStreamNameList.default(visited),
          has_more_delivery_streams: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DeliveryStreamNames'] = Stubs::DeliveryStreamNameList.stub(stub[:delivery_stream_names]) unless stub[:delivery_stream_names].nil?
        data['HasMoreDeliveryStreams'] = stub[:has_more_delivery_streams] unless stub[:has_more_delivery_streams].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DeliveryStreamNameList
    class DeliveryStreamNameList
      def self.default(visited=[])
        return nil if visited.include?('DeliveryStreamNameList')
        visited = visited + ['DeliveryStreamNameList']
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

    # Operation Stubber for ListTagsForDeliveryStream
    class ListTagsForDeliveryStream
      def self.default(visited=[])
        {
          tags: Stubs::ListTagsForDeliveryStreamOutputTagList.default(visited),
          has_more_tags: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Tags'] = Stubs::ListTagsForDeliveryStreamOutputTagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['HasMoreTags'] = stub[:has_more_tags] unless stub[:has_more_tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ListTagsForDeliveryStreamOutputTagList
    class ListTagsForDeliveryStreamOutputTagList
      def self.default(visited=[])
        return nil if visited.include?('ListTagsForDeliveryStreamOutputTagList')
        visited = visited + ['ListTagsForDeliveryStreamOutputTagList']
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
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for PutRecord
    class PutRecord
      def self.default(visited=[])
        {
          record_id: 'record_id',
          encrypted: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['RecordId'] = stub[:record_id] unless stub[:record_id].nil?
        data['Encrypted'] = stub[:encrypted] unless stub[:encrypted].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutRecordBatch
    class PutRecordBatch
      def self.default(visited=[])
        {
          failed_put_count: 1,
          encrypted: false,
          request_responses: Stubs::PutRecordBatchResponseEntryList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FailedPutCount'] = stub[:failed_put_count] unless stub[:failed_put_count].nil?
        data['Encrypted'] = stub[:encrypted] unless stub[:encrypted].nil?
        data['RequestResponses'] = Stubs::PutRecordBatchResponseEntryList.stub(stub[:request_responses]) unless stub[:request_responses].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for PutRecordBatchResponseEntryList
    class PutRecordBatchResponseEntryList
      def self.default(visited=[])
        return nil if visited.include?('PutRecordBatchResponseEntryList')
        visited = visited + ['PutRecordBatchResponseEntryList']
        [
          Stubs::PutRecordBatchResponseEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PutRecordBatchResponseEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PutRecordBatchResponseEntry
    class PutRecordBatchResponseEntry
      def self.default(visited=[])
        return nil if visited.include?('PutRecordBatchResponseEntry')
        visited = visited + ['PutRecordBatchResponseEntry']
        {
          record_id: 'record_id',
          error_code: 'error_code',
          error_message: 'error_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::PutRecordBatchResponseEntry.new
        data = {}
        data['RecordId'] = stub[:record_id] unless stub[:record_id].nil?
        data['ErrorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data
      end
    end

    # Operation Stubber for StartDeliveryStreamEncryption
    class StartDeliveryStreamEncryption
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopDeliveryStreamEncryption
    class StopDeliveryStreamEncryption
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for TagDeliveryStream
    class TagDeliveryStream
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UntagDeliveryStream
    class UntagDeliveryStream
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateDestination
    class UpdateDestination
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
