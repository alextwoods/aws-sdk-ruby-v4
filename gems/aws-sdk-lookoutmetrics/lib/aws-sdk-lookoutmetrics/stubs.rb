# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::LookoutMetrics
  module Stubs

    # Operation Stubber for ActivateAnomalyDetector
    class ActivateAnomalyDetector
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for BackTestAnomalyDetector
    class BackTestAnomalyDetector
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateAlert
    class CreateAlert
      def self.default(visited=[])
        {
          alert_arn: 'alert_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AlertArn'] = stub[:alert_arn] unless stub[:alert_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateAnomalyDetector
    class CreateAnomalyDetector
      def self.default(visited=[])
        {
          anomaly_detector_arn: 'anomaly_detector_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AnomalyDetectorArn'] = stub[:anomaly_detector_arn] unless stub[:anomaly_detector_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateMetricSet
    class CreateMetricSet
      def self.default(visited=[])
        {
          metric_set_arn: 'metric_set_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['MetricSetArn'] = stub[:metric_set_arn] unless stub[:metric_set_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeactivateAnomalyDetector
    class DeactivateAnomalyDetector
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteAlert
    class DeleteAlert
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteAnomalyDetector
    class DeleteAnomalyDetector
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeAlert
    class DescribeAlert
      def self.default(visited=[])
        {
          alert: Alert.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Alert'] = Stubs::Alert.stub(stub[:alert]) unless stub[:alert].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Alert
    class Alert
      def self.default(visited=[])
        return nil if visited.include?('Alert')
        visited = visited + ['Alert']
        {
          action: Action.default(visited),
          alert_description: 'alert_description',
          alert_arn: 'alert_arn',
          anomaly_detector_arn: 'anomaly_detector_arn',
          alert_name: 'alert_name',
          alert_sensitivity_threshold: 1,
          alert_type: 'alert_type',
          alert_status: 'alert_status',
          last_modification_time: Time.now,
          creation_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Alert.new
        data = {}
        data['Action'] = Stubs::Action.stub(stub[:action]) unless stub[:action].nil?
        data['AlertDescription'] = stub[:alert_description] unless stub[:alert_description].nil?
        data['AlertArn'] = stub[:alert_arn] unless stub[:alert_arn].nil?
        data['AnomalyDetectorArn'] = stub[:anomaly_detector_arn] unless stub[:anomaly_detector_arn].nil?
        data['AlertName'] = stub[:alert_name] unless stub[:alert_name].nil?
        data['AlertSensitivityThreshold'] = stub[:alert_sensitivity_threshold] unless stub[:alert_sensitivity_threshold].nil?
        data['AlertType'] = stub[:alert_type] unless stub[:alert_type].nil?
        data['AlertStatus'] = stub[:alert_status] unless stub[:alert_status].nil?
        data['LastModificationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modification_time]).to_i unless stub[:last_modification_time].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data
      end
    end

    # Structure Stubber for Action
    class Action
      def self.default(visited=[])
        return nil if visited.include?('Action')
        visited = visited + ['Action']
        {
          sns_configuration: SNSConfiguration.default(visited),
          lambda_configuration: LambdaConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Action.new
        data = {}
        data['SNSConfiguration'] = Stubs::SNSConfiguration.stub(stub[:sns_configuration]) unless stub[:sns_configuration].nil?
        data['LambdaConfiguration'] = Stubs::LambdaConfiguration.stub(stub[:lambda_configuration]) unless stub[:lambda_configuration].nil?
        data
      end
    end

    # Structure Stubber for LambdaConfiguration
    class LambdaConfiguration
      def self.default(visited=[])
        return nil if visited.include?('LambdaConfiguration')
        visited = visited + ['LambdaConfiguration']
        {
          role_arn: 'role_arn',
          lambda_arn: 'lambda_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::LambdaConfiguration.new
        data = {}
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['LambdaArn'] = stub[:lambda_arn] unless stub[:lambda_arn].nil?
        data
      end
    end

    # Structure Stubber for SNSConfiguration
    class SNSConfiguration
      def self.default(visited=[])
        return nil if visited.include?('SNSConfiguration')
        visited = visited + ['SNSConfiguration']
        {
          role_arn: 'role_arn',
          sns_topic_arn: 'sns_topic_arn',
          sns_format: 'sns_format',
        }
      end

      def self.stub(stub)
        stub ||= Types::SNSConfiguration.new
        data = {}
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['SnsTopicArn'] = stub[:sns_topic_arn] unless stub[:sns_topic_arn].nil?
        data['SnsFormat'] = stub[:sns_format] unless stub[:sns_format].nil?
        data
      end
    end

    # Operation Stubber for DescribeAnomalyDetectionExecutions
    class DescribeAnomalyDetectionExecutions
      def self.default(visited=[])
        {
          execution_list: ExecutionList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ExecutionList'] = Stubs::ExecutionList.stub(stub[:execution_list]) unless stub[:execution_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ExecutionList
    class ExecutionList
      def self.default(visited=[])
        return nil if visited.include?('ExecutionList')
        visited = visited + ['ExecutionList']
        [
          ExecutionStatus.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ExecutionStatus.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ExecutionStatus
    class ExecutionStatus
      def self.default(visited=[])
        return nil if visited.include?('ExecutionStatus')
        visited = visited + ['ExecutionStatus']
        {
          timestamp: 'timestamp',
          status: 'status',
          failure_reason: 'failure_reason',
        }
      end

      def self.stub(stub)
        stub ||= Types::ExecutionStatus.new
        data = {}
        data['Timestamp'] = stub[:timestamp] unless stub[:timestamp].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['FailureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data
      end
    end

    # Operation Stubber for DescribeAnomalyDetector
    class DescribeAnomalyDetector
      def self.default(visited=[])
        {
          anomaly_detector_arn: 'anomaly_detector_arn',
          anomaly_detector_name: 'anomaly_detector_name',
          anomaly_detector_description: 'anomaly_detector_description',
          anomaly_detector_config: AnomalyDetectorConfigSummary.default(visited),
          creation_time: Time.now,
          last_modification_time: Time.now,
          status: 'status',
          failure_reason: 'failure_reason',
          kms_key_arn: 'kms_key_arn',
          failure_type: 'failure_type',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AnomalyDetectorArn'] = stub[:anomaly_detector_arn] unless stub[:anomaly_detector_arn].nil?
        data['AnomalyDetectorName'] = stub[:anomaly_detector_name] unless stub[:anomaly_detector_name].nil?
        data['AnomalyDetectorDescription'] = stub[:anomaly_detector_description] unless stub[:anomaly_detector_description].nil?
        data['AnomalyDetectorConfig'] = Stubs::AnomalyDetectorConfigSummary.stub(stub[:anomaly_detector_config]) unless stub[:anomaly_detector_config].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModificationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modification_time]).to_i unless stub[:last_modification_time].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['FailureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['KmsKeyArn'] = stub[:kms_key_arn] unless stub[:kms_key_arn].nil?
        data['FailureType'] = stub[:failure_type] unless stub[:failure_type].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for AnomalyDetectorConfigSummary
    class AnomalyDetectorConfigSummary
      def self.default(visited=[])
        return nil if visited.include?('AnomalyDetectorConfigSummary')
        visited = visited + ['AnomalyDetectorConfigSummary']
        {
          anomaly_detector_frequency: 'anomaly_detector_frequency',
        }
      end

      def self.stub(stub)
        stub ||= Types::AnomalyDetectorConfigSummary.new
        data = {}
        data['AnomalyDetectorFrequency'] = stub[:anomaly_detector_frequency] unless stub[:anomaly_detector_frequency].nil?
        data
      end
    end

    # Operation Stubber for DescribeMetricSet
    class DescribeMetricSet
      def self.default(visited=[])
        {
          metric_set_arn: 'metric_set_arn',
          anomaly_detector_arn: 'anomaly_detector_arn',
          metric_set_name: 'metric_set_name',
          metric_set_description: 'metric_set_description',
          creation_time: Time.now,
          last_modification_time: Time.now,
          offset: 1,
          metric_list: MetricList.default(visited),
          timestamp_column: TimestampColumn.default(visited),
          dimension_list: DimensionList.default(visited),
          metric_set_frequency: 'metric_set_frequency',
          timezone: 'timezone',
          metric_source: MetricSource.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['MetricSetArn'] = stub[:metric_set_arn] unless stub[:metric_set_arn].nil?
        data['AnomalyDetectorArn'] = stub[:anomaly_detector_arn] unless stub[:anomaly_detector_arn].nil?
        data['MetricSetName'] = stub[:metric_set_name] unless stub[:metric_set_name].nil?
        data['MetricSetDescription'] = stub[:metric_set_description] unless stub[:metric_set_description].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModificationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modification_time]).to_i unless stub[:last_modification_time].nil?
        data['Offset'] = stub[:offset] unless stub[:offset].nil?
        data['MetricList'] = Stubs::MetricList.stub(stub[:metric_list]) unless stub[:metric_list].nil?
        data['TimestampColumn'] = Stubs::TimestampColumn.stub(stub[:timestamp_column]) unless stub[:timestamp_column].nil?
        data['DimensionList'] = Stubs::DimensionList.stub(stub[:dimension_list]) unless stub[:dimension_list].nil?
        data['MetricSetFrequency'] = stub[:metric_set_frequency] unless stub[:metric_set_frequency].nil?
        data['Timezone'] = stub[:timezone] unless stub[:timezone].nil?
        data['MetricSource'] = Stubs::MetricSource.stub(stub[:metric_source]) unless stub[:metric_source].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for MetricSource
    class MetricSource
      def self.default(visited=[])
        return nil if visited.include?('MetricSource')
        visited = visited + ['MetricSource']
        {
          s3_source_config: S3SourceConfig.default(visited),
          app_flow_config: AppFlowConfig.default(visited),
          cloud_watch_config: CloudWatchConfig.default(visited),
          rds_source_config: RDSSourceConfig.default(visited),
          redshift_source_config: RedshiftSourceConfig.default(visited),
          athena_source_config: AthenaSourceConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MetricSource.new
        data = {}
        data['S3SourceConfig'] = Stubs::S3SourceConfig.stub(stub[:s3_source_config]) unless stub[:s3_source_config].nil?
        data['AppFlowConfig'] = Stubs::AppFlowConfig.stub(stub[:app_flow_config]) unless stub[:app_flow_config].nil?
        data['CloudWatchConfig'] = Stubs::CloudWatchConfig.stub(stub[:cloud_watch_config]) unless stub[:cloud_watch_config].nil?
        data['RDSSourceConfig'] = Stubs::RDSSourceConfig.stub(stub[:rds_source_config]) unless stub[:rds_source_config].nil?
        data['RedshiftSourceConfig'] = Stubs::RedshiftSourceConfig.stub(stub[:redshift_source_config]) unless stub[:redshift_source_config].nil?
        data['AthenaSourceConfig'] = Stubs::AthenaSourceConfig.stub(stub[:athena_source_config]) unless stub[:athena_source_config].nil?
        data
      end
    end

    # Structure Stubber for AthenaSourceConfig
    class AthenaSourceConfig
      def self.default(visited=[])
        return nil if visited.include?('AthenaSourceConfig')
        visited = visited + ['AthenaSourceConfig']
        {
          role_arn: 'role_arn',
          database_name: 'database_name',
          data_catalog: 'data_catalog',
          table_name: 'table_name',
          work_group_name: 'work_group_name',
          s3_results_path: 's3_results_path',
          back_test_configuration: BackTestConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AthenaSourceConfig.new
        data = {}
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['DatabaseName'] = stub[:database_name] unless stub[:database_name].nil?
        data['DataCatalog'] = stub[:data_catalog] unless stub[:data_catalog].nil?
        data['TableName'] = stub[:table_name] unless stub[:table_name].nil?
        data['WorkGroupName'] = stub[:work_group_name] unless stub[:work_group_name].nil?
        data['S3ResultsPath'] = stub[:s3_results_path] unless stub[:s3_results_path].nil?
        data['BackTestConfiguration'] = Stubs::BackTestConfiguration.stub(stub[:back_test_configuration]) unless stub[:back_test_configuration].nil?
        data
      end
    end

    # Structure Stubber for BackTestConfiguration
    class BackTestConfiguration
      def self.default(visited=[])
        return nil if visited.include?('BackTestConfiguration')
        visited = visited + ['BackTestConfiguration']
        {
          run_back_test_mode: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::BackTestConfiguration.new
        data = {}
        data['RunBackTestMode'] = stub[:run_back_test_mode] unless stub[:run_back_test_mode].nil?
        data
      end
    end

    # Structure Stubber for RedshiftSourceConfig
    class RedshiftSourceConfig
      def self.default(visited=[])
        return nil if visited.include?('RedshiftSourceConfig')
        visited = visited + ['RedshiftSourceConfig']
        {
          cluster_identifier: 'cluster_identifier',
          database_host: 'database_host',
          database_port: 1,
          secret_manager_arn: 'secret_manager_arn',
          database_name: 'database_name',
          table_name: 'table_name',
          role_arn: 'role_arn',
          vpc_configuration: VpcConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RedshiftSourceConfig.new
        data = {}
        data['ClusterIdentifier'] = stub[:cluster_identifier] unless stub[:cluster_identifier].nil?
        data['DatabaseHost'] = stub[:database_host] unless stub[:database_host].nil?
        data['DatabasePort'] = stub[:database_port] unless stub[:database_port].nil?
        data['SecretManagerArn'] = stub[:secret_manager_arn] unless stub[:secret_manager_arn].nil?
        data['DatabaseName'] = stub[:database_name] unless stub[:database_name].nil?
        data['TableName'] = stub[:table_name] unless stub[:table_name].nil?
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['VpcConfiguration'] = Stubs::VpcConfiguration.stub(stub[:vpc_configuration]) unless stub[:vpc_configuration].nil?
        data
      end
    end

    # Structure Stubber for VpcConfiguration
    class VpcConfiguration
      def self.default(visited=[])
        return nil if visited.include?('VpcConfiguration')
        visited = visited + ['VpcConfiguration']
        {
          subnet_id_list: SubnetIdList.default(visited),
          security_group_id_list: SecurityGroupIdList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::VpcConfiguration.new
        data = {}
        data['SubnetIdList'] = Stubs::SubnetIdList.stub(stub[:subnet_id_list]) unless stub[:subnet_id_list].nil?
        data['SecurityGroupIdList'] = Stubs::SecurityGroupIdList.stub(stub[:security_group_id_list]) unless stub[:security_group_id_list].nil?
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

    # Structure Stubber for RDSSourceConfig
    class RDSSourceConfig
      def self.default(visited=[])
        return nil if visited.include?('RDSSourceConfig')
        visited = visited + ['RDSSourceConfig']
        {
          db_instance_identifier: 'db_instance_identifier',
          database_host: 'database_host',
          database_port: 1,
          secret_manager_arn: 'secret_manager_arn',
          database_name: 'database_name',
          table_name: 'table_name',
          role_arn: 'role_arn',
          vpc_configuration: VpcConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RDSSourceConfig.new
        data = {}
        data['DBInstanceIdentifier'] = stub[:db_instance_identifier] unless stub[:db_instance_identifier].nil?
        data['DatabaseHost'] = stub[:database_host] unless stub[:database_host].nil?
        data['DatabasePort'] = stub[:database_port] unless stub[:database_port].nil?
        data['SecretManagerArn'] = stub[:secret_manager_arn] unless stub[:secret_manager_arn].nil?
        data['DatabaseName'] = stub[:database_name] unless stub[:database_name].nil?
        data['TableName'] = stub[:table_name] unless stub[:table_name].nil?
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['VpcConfiguration'] = Stubs::VpcConfiguration.stub(stub[:vpc_configuration]) unless stub[:vpc_configuration].nil?
        data
      end
    end

    # Structure Stubber for CloudWatchConfig
    class CloudWatchConfig
      def self.default(visited=[])
        return nil if visited.include?('CloudWatchConfig')
        visited = visited + ['CloudWatchConfig']
        {
          role_arn: 'role_arn',
          back_test_configuration: BackTestConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CloudWatchConfig.new
        data = {}
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['BackTestConfiguration'] = Stubs::BackTestConfiguration.stub(stub[:back_test_configuration]) unless stub[:back_test_configuration].nil?
        data
      end
    end

    # Structure Stubber for AppFlowConfig
    class AppFlowConfig
      def self.default(visited=[])
        return nil if visited.include?('AppFlowConfig')
        visited = visited + ['AppFlowConfig']
        {
          role_arn: 'role_arn',
          flow_name: 'flow_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::AppFlowConfig.new
        data = {}
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['FlowName'] = stub[:flow_name] unless stub[:flow_name].nil?
        data
      end
    end

    # Structure Stubber for S3SourceConfig
    class S3SourceConfig
      def self.default(visited=[])
        return nil if visited.include?('S3SourceConfig')
        visited = visited + ['S3SourceConfig']
        {
          role_arn: 'role_arn',
          templated_path_list: TemplatedPathList.default(visited),
          historical_data_path_list: HistoricalDataPathList.default(visited),
          file_format_descriptor: FileFormatDescriptor.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::S3SourceConfig.new
        data = {}
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['TemplatedPathList'] = Stubs::TemplatedPathList.stub(stub[:templated_path_list]) unless stub[:templated_path_list].nil?
        data['HistoricalDataPathList'] = Stubs::HistoricalDataPathList.stub(stub[:historical_data_path_list]) unless stub[:historical_data_path_list].nil?
        data['FileFormatDescriptor'] = Stubs::FileFormatDescriptor.stub(stub[:file_format_descriptor]) unless stub[:file_format_descriptor].nil?
        data
      end
    end

    # Structure Stubber for FileFormatDescriptor
    class FileFormatDescriptor
      def self.default(visited=[])
        return nil if visited.include?('FileFormatDescriptor')
        visited = visited + ['FileFormatDescriptor']
        {
          csv_format_descriptor: CsvFormatDescriptor.default(visited),
          json_format_descriptor: JsonFormatDescriptor.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FileFormatDescriptor.new
        data = {}
        data['CsvFormatDescriptor'] = Stubs::CsvFormatDescriptor.stub(stub[:csv_format_descriptor]) unless stub[:csv_format_descriptor].nil?
        data['JsonFormatDescriptor'] = Stubs::JsonFormatDescriptor.stub(stub[:json_format_descriptor]) unless stub[:json_format_descriptor].nil?
        data
      end
    end

    # Structure Stubber for JsonFormatDescriptor
    class JsonFormatDescriptor
      def self.default(visited=[])
        return nil if visited.include?('JsonFormatDescriptor')
        visited = visited + ['JsonFormatDescriptor']
        {
          file_compression: 'file_compression',
          charset: 'charset',
        }
      end

      def self.stub(stub)
        stub ||= Types::JsonFormatDescriptor.new
        data = {}
        data['FileCompression'] = stub[:file_compression] unless stub[:file_compression].nil?
        data['Charset'] = stub[:charset] unless stub[:charset].nil?
        data
      end
    end

    # Structure Stubber for CsvFormatDescriptor
    class CsvFormatDescriptor
      def self.default(visited=[])
        return nil if visited.include?('CsvFormatDescriptor')
        visited = visited + ['CsvFormatDescriptor']
        {
          file_compression: 'file_compression',
          charset: 'charset',
          contains_header: false,
          delimiter: 'delimiter',
          header_list: HeaderList.default(visited),
          quote_symbol: 'quote_symbol',
        }
      end

      def self.stub(stub)
        stub ||= Types::CsvFormatDescriptor.new
        data = {}
        data['FileCompression'] = stub[:file_compression] unless stub[:file_compression].nil?
        data['Charset'] = stub[:charset] unless stub[:charset].nil?
        data['ContainsHeader'] = stub[:contains_header] unless stub[:contains_header].nil?
        data['Delimiter'] = stub[:delimiter] unless stub[:delimiter].nil?
        data['HeaderList'] = Stubs::HeaderList.stub(stub[:header_list]) unless stub[:header_list].nil?
        data['QuoteSymbol'] = stub[:quote_symbol] unless stub[:quote_symbol].nil?
        data
      end
    end

    # List Stubber for HeaderList
    class HeaderList
      def self.default(visited=[])
        return nil if visited.include?('HeaderList')
        visited = visited + ['HeaderList']
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

    # List Stubber for HistoricalDataPathList
    class HistoricalDataPathList
      def self.default(visited=[])
        return nil if visited.include?('HistoricalDataPathList')
        visited = visited + ['HistoricalDataPathList']
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

    # List Stubber for TemplatedPathList
    class TemplatedPathList
      def self.default(visited=[])
        return nil if visited.include?('TemplatedPathList')
        visited = visited + ['TemplatedPathList']
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

    # List Stubber for DimensionList
    class DimensionList
      def self.default(visited=[])
        return nil if visited.include?('DimensionList')
        visited = visited + ['DimensionList']
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

    # Structure Stubber for TimestampColumn
    class TimestampColumn
      def self.default(visited=[])
        return nil if visited.include?('TimestampColumn')
        visited = visited + ['TimestampColumn']
        {
          column_name: 'column_name',
          column_format: 'column_format',
        }
      end

      def self.stub(stub)
        stub ||= Types::TimestampColumn.new
        data = {}
        data['ColumnName'] = stub[:column_name] unless stub[:column_name].nil?
        data['ColumnFormat'] = stub[:column_format] unless stub[:column_format].nil?
        data
      end
    end

    # List Stubber for MetricList
    class MetricList
      def self.default(visited=[])
        return nil if visited.include?('MetricList')
        visited = visited + ['MetricList']
        [
          Metric.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Metric.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Metric
    class Metric
      def self.default(visited=[])
        return nil if visited.include?('Metric')
        visited = visited + ['Metric']
        {
          metric_name: 'metric_name',
          aggregation_function: 'aggregation_function',
          namespace: 'namespace',
        }
      end

      def self.stub(stub)
        stub ||= Types::Metric.new
        data = {}
        data['MetricName'] = stub[:metric_name] unless stub[:metric_name].nil?
        data['AggregationFunction'] = stub[:aggregation_function] unless stub[:aggregation_function].nil?
        data['Namespace'] = stub[:namespace] unless stub[:namespace].nil?
        data
      end
    end

    # Operation Stubber for DetectMetricSetConfig
    class DetectMetricSetConfig
      def self.default(visited=[])
        {
          detected_metric_set_config: DetectedMetricSetConfig.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DetectedMetricSetConfig'] = Stubs::DetectedMetricSetConfig.stub(stub[:detected_metric_set_config]) unless stub[:detected_metric_set_config].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for DetectedMetricSetConfig
    class DetectedMetricSetConfig
      def self.default(visited=[])
        return nil if visited.include?('DetectedMetricSetConfig')
        visited = visited + ['DetectedMetricSetConfig']
        {
          offset: DetectedField.default(visited),
          metric_set_frequency: DetectedField.default(visited),
          metric_source: DetectedMetricSource.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DetectedMetricSetConfig.new
        data = {}
        data['Offset'] = Stubs::DetectedField.stub(stub[:offset]) unless stub[:offset].nil?
        data['MetricSetFrequency'] = Stubs::DetectedField.stub(stub[:metric_set_frequency]) unless stub[:metric_set_frequency].nil?
        data['MetricSource'] = Stubs::DetectedMetricSource.stub(stub[:metric_source]) unless stub[:metric_source].nil?
        data
      end
    end

    # Structure Stubber for DetectedMetricSource
    class DetectedMetricSource
      def self.default(visited=[])
        return nil if visited.include?('DetectedMetricSource')
        visited = visited + ['DetectedMetricSource']
        {
          s3_source_config: DetectedS3SourceConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DetectedMetricSource.new
        data = {}
        data['S3SourceConfig'] = Stubs::DetectedS3SourceConfig.stub(stub[:s3_source_config]) unless stub[:s3_source_config].nil?
        data
      end
    end

    # Structure Stubber for DetectedS3SourceConfig
    class DetectedS3SourceConfig
      def self.default(visited=[])
        return nil if visited.include?('DetectedS3SourceConfig')
        visited = visited + ['DetectedS3SourceConfig']
        {
          file_format_descriptor: DetectedFileFormatDescriptor.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DetectedS3SourceConfig.new
        data = {}
        data['FileFormatDescriptor'] = Stubs::DetectedFileFormatDescriptor.stub(stub[:file_format_descriptor]) unless stub[:file_format_descriptor].nil?
        data
      end
    end

    # Structure Stubber for DetectedFileFormatDescriptor
    class DetectedFileFormatDescriptor
      def self.default(visited=[])
        return nil if visited.include?('DetectedFileFormatDescriptor')
        visited = visited + ['DetectedFileFormatDescriptor']
        {
          csv_format_descriptor: DetectedCsvFormatDescriptor.default(visited),
          json_format_descriptor: DetectedJsonFormatDescriptor.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DetectedFileFormatDescriptor.new
        data = {}
        data['CsvFormatDescriptor'] = Stubs::DetectedCsvFormatDescriptor.stub(stub[:csv_format_descriptor]) unless stub[:csv_format_descriptor].nil?
        data['JsonFormatDescriptor'] = Stubs::DetectedJsonFormatDescriptor.stub(stub[:json_format_descriptor]) unless stub[:json_format_descriptor].nil?
        data
      end
    end

    # Structure Stubber for DetectedJsonFormatDescriptor
    class DetectedJsonFormatDescriptor
      def self.default(visited=[])
        return nil if visited.include?('DetectedJsonFormatDescriptor')
        visited = visited + ['DetectedJsonFormatDescriptor']
        {
          file_compression: DetectedField.default(visited),
          charset: DetectedField.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DetectedJsonFormatDescriptor.new
        data = {}
        data['FileCompression'] = Stubs::DetectedField.stub(stub[:file_compression]) unless stub[:file_compression].nil?
        data['Charset'] = Stubs::DetectedField.stub(stub[:charset]) unless stub[:charset].nil?
        data
      end
    end

    # Structure Stubber for DetectedField
    class DetectedField
      def self.default(visited=[])
        return nil if visited.include?('DetectedField')
        visited = visited + ['DetectedField']
        {
          value: AttributeValue.default(visited),
          confidence: 'confidence',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::DetectedField.new
        data = {}
        data['Value'] = Stubs::AttributeValue.stub(stub[:value]) unless stub[:value].nil?
        data['Confidence'] = stub[:confidence] unless stub[:confidence].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Structure Stubber for AttributeValue
    class AttributeValue
      def self.default(visited=[])
        return nil if visited.include?('AttributeValue')
        visited = visited + ['AttributeValue']
        {
          s: 's',
          n: 'n',
          b: 'b',
          ss: StringListAttributeValue.default(visited),
          ns: NumberListAttributeValue.default(visited),
          bs: BinaryListAttributeValue.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AttributeValue.new
        data = {}
        data['S'] = stub[:s] unless stub[:s].nil?
        data['N'] = stub[:n] unless stub[:n].nil?
        data['B'] = stub[:b] unless stub[:b].nil?
        data['SS'] = Stubs::StringListAttributeValue.stub(stub[:ss]) unless stub[:ss].nil?
        data['NS'] = Stubs::NumberListAttributeValue.stub(stub[:ns]) unless stub[:ns].nil?
        data['BS'] = Stubs::BinaryListAttributeValue.stub(stub[:bs]) unless stub[:bs].nil?
        data
      end
    end

    # List Stubber for BinaryListAttributeValue
    class BinaryListAttributeValue
      def self.default(visited=[])
        return nil if visited.include?('BinaryListAttributeValue')
        visited = visited + ['BinaryListAttributeValue']
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

    # List Stubber for NumberListAttributeValue
    class NumberListAttributeValue
      def self.default(visited=[])
        return nil if visited.include?('NumberListAttributeValue')
        visited = visited + ['NumberListAttributeValue']
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

    # List Stubber for StringListAttributeValue
    class StringListAttributeValue
      def self.default(visited=[])
        return nil if visited.include?('StringListAttributeValue')
        visited = visited + ['StringListAttributeValue']
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

    # Structure Stubber for DetectedCsvFormatDescriptor
    class DetectedCsvFormatDescriptor
      def self.default(visited=[])
        return nil if visited.include?('DetectedCsvFormatDescriptor')
        visited = visited + ['DetectedCsvFormatDescriptor']
        {
          file_compression: DetectedField.default(visited),
          charset: DetectedField.default(visited),
          contains_header: DetectedField.default(visited),
          delimiter: DetectedField.default(visited),
          header_list: DetectedField.default(visited),
          quote_symbol: DetectedField.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DetectedCsvFormatDescriptor.new
        data = {}
        data['FileCompression'] = Stubs::DetectedField.stub(stub[:file_compression]) unless stub[:file_compression].nil?
        data['Charset'] = Stubs::DetectedField.stub(stub[:charset]) unless stub[:charset].nil?
        data['ContainsHeader'] = Stubs::DetectedField.stub(stub[:contains_header]) unless stub[:contains_header].nil?
        data['Delimiter'] = Stubs::DetectedField.stub(stub[:delimiter]) unless stub[:delimiter].nil?
        data['HeaderList'] = Stubs::DetectedField.stub(stub[:header_list]) unless stub[:header_list].nil?
        data['QuoteSymbol'] = Stubs::DetectedField.stub(stub[:quote_symbol]) unless stub[:quote_symbol].nil?
        data
      end
    end

    # Operation Stubber for GetAnomalyGroup
    class GetAnomalyGroup
      def self.default(visited=[])
        {
          anomaly_group: AnomalyGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AnomalyGroup'] = Stubs::AnomalyGroup.stub(stub[:anomaly_group]) unless stub[:anomaly_group].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for AnomalyGroup
    class AnomalyGroup
      def self.default(visited=[])
        return nil if visited.include?('AnomalyGroup')
        visited = visited + ['AnomalyGroup']
        {
          start_time: 'start_time',
          end_time: 'end_time',
          anomaly_group_id: 'anomaly_group_id',
          anomaly_group_score: 1.0,
          primary_metric_name: 'primary_metric_name',
          metric_level_impact_list: MetricLevelImpactList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AnomalyGroup.new
        data = {}
        data['StartTime'] = stub[:start_time] unless stub[:start_time].nil?
        data['EndTime'] = stub[:end_time] unless stub[:end_time].nil?
        data['AnomalyGroupId'] = stub[:anomaly_group_id] unless stub[:anomaly_group_id].nil?
        data['AnomalyGroupScore'] = Hearth::NumberHelper.serialize(stub[:anomaly_group_score])
        data['PrimaryMetricName'] = stub[:primary_metric_name] unless stub[:primary_metric_name].nil?
        data['MetricLevelImpactList'] = Stubs::MetricLevelImpactList.stub(stub[:metric_level_impact_list]) unless stub[:metric_level_impact_list].nil?
        data
      end
    end

    # List Stubber for MetricLevelImpactList
    class MetricLevelImpactList
      def self.default(visited=[])
        return nil if visited.include?('MetricLevelImpactList')
        visited = visited + ['MetricLevelImpactList']
        [
          MetricLevelImpact.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::MetricLevelImpact.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MetricLevelImpact
    class MetricLevelImpact
      def self.default(visited=[])
        return nil if visited.include?('MetricLevelImpact')
        visited = visited + ['MetricLevelImpact']
        {
          metric_name: 'metric_name',
          num_time_series: 1,
          contribution_matrix: ContributionMatrix.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MetricLevelImpact.new
        data = {}
        data['MetricName'] = stub[:metric_name] unless stub[:metric_name].nil?
        data['NumTimeSeries'] = stub[:num_time_series] unless stub[:num_time_series].nil?
        data['ContributionMatrix'] = Stubs::ContributionMatrix.stub(stub[:contribution_matrix]) unless stub[:contribution_matrix].nil?
        data
      end
    end

    # Structure Stubber for ContributionMatrix
    class ContributionMatrix
      def self.default(visited=[])
        return nil if visited.include?('ContributionMatrix')
        visited = visited + ['ContributionMatrix']
        {
          dimension_contribution_list: DimensionContributionList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ContributionMatrix.new
        data = {}
        data['DimensionContributionList'] = Stubs::DimensionContributionList.stub(stub[:dimension_contribution_list]) unless stub[:dimension_contribution_list].nil?
        data
      end
    end

    # List Stubber for DimensionContributionList
    class DimensionContributionList
      def self.default(visited=[])
        return nil if visited.include?('DimensionContributionList')
        visited = visited + ['DimensionContributionList']
        [
          DimensionContribution.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DimensionContribution.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DimensionContribution
    class DimensionContribution
      def self.default(visited=[])
        return nil if visited.include?('DimensionContribution')
        visited = visited + ['DimensionContribution']
        {
          dimension_name: 'dimension_name',
          dimension_value_contribution_list: DimensionValueContributionList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DimensionContribution.new
        data = {}
        data['DimensionName'] = stub[:dimension_name] unless stub[:dimension_name].nil?
        data['DimensionValueContributionList'] = Stubs::DimensionValueContributionList.stub(stub[:dimension_value_contribution_list]) unless stub[:dimension_value_contribution_list].nil?
        data
      end
    end

    # List Stubber for DimensionValueContributionList
    class DimensionValueContributionList
      def self.default(visited=[])
        return nil if visited.include?('DimensionValueContributionList')
        visited = visited + ['DimensionValueContributionList']
        [
          DimensionValueContribution.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DimensionValueContribution.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DimensionValueContribution
    class DimensionValueContribution
      def self.default(visited=[])
        return nil if visited.include?('DimensionValueContribution')
        visited = visited + ['DimensionValueContribution']
        {
          dimension_value: 'dimension_value',
          contribution_score: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::DimensionValueContribution.new
        data = {}
        data['DimensionValue'] = stub[:dimension_value] unless stub[:dimension_value].nil?
        data['ContributionScore'] = Hearth::NumberHelper.serialize(stub[:contribution_score])
        data
      end
    end

    # Operation Stubber for GetFeedback
    class GetFeedback
      def self.default(visited=[])
        {
          anomaly_group_time_series_feedback: TimeSeriesFeedbackList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AnomalyGroupTimeSeriesFeedback'] = Stubs::TimeSeriesFeedbackList.stub(stub[:anomaly_group_time_series_feedback]) unless stub[:anomaly_group_time_series_feedback].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for TimeSeriesFeedbackList
    class TimeSeriesFeedbackList
      def self.default(visited=[])
        return nil if visited.include?('TimeSeriesFeedbackList')
        visited = visited + ['TimeSeriesFeedbackList']
        [
          TimeSeriesFeedback.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::TimeSeriesFeedback.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TimeSeriesFeedback
    class TimeSeriesFeedback
      def self.default(visited=[])
        return nil if visited.include?('TimeSeriesFeedback')
        visited = visited + ['TimeSeriesFeedback']
        {
          time_series_id: 'time_series_id',
          is_anomaly: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::TimeSeriesFeedback.new
        data = {}
        data['TimeSeriesId'] = stub[:time_series_id] unless stub[:time_series_id].nil?
        data['IsAnomaly'] = stub[:is_anomaly] unless stub[:is_anomaly].nil?
        data
      end
    end

    # Operation Stubber for GetSampleData
    class GetSampleData
      def self.default(visited=[])
        {
          header_values: HeaderValueList.default(visited),
          sample_rows: SampleRows.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['HeaderValues'] = Stubs::HeaderValueList.stub(stub[:header_values]) unless stub[:header_values].nil?
        data['SampleRows'] = Stubs::SampleRows.stub(stub[:sample_rows]) unless stub[:sample_rows].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for SampleRows
    class SampleRows
      def self.default(visited=[])
        return nil if visited.include?('SampleRows')
        visited = visited + ['SampleRows']
        [
          SampleRow.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SampleRow.stub(element) unless element.nil?
        end
        data
      end
    end

    # List Stubber for SampleRow
    class SampleRow
      def self.default(visited=[])
        return nil if visited.include?('SampleRow')
        visited = visited + ['SampleRow']
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

    # List Stubber for HeaderValueList
    class HeaderValueList
      def self.default(visited=[])
        return nil if visited.include?('HeaderValueList')
        visited = visited + ['HeaderValueList']
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

    # Operation Stubber for ListAlerts
    class ListAlerts
      def self.default(visited=[])
        {
          alert_summary_list: AlertSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AlertSummaryList'] = Stubs::AlertSummaryList.stub(stub[:alert_summary_list]) unless stub[:alert_summary_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AlertSummaryList
    class AlertSummaryList
      def self.default(visited=[])
        return nil if visited.include?('AlertSummaryList')
        visited = visited + ['AlertSummaryList']
        [
          AlertSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AlertSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AlertSummary
    class AlertSummary
      def self.default(visited=[])
        return nil if visited.include?('AlertSummary')
        visited = visited + ['AlertSummary']
        {
          alert_arn: 'alert_arn',
          anomaly_detector_arn: 'anomaly_detector_arn',
          alert_name: 'alert_name',
          alert_sensitivity_threshold: 1,
          alert_type: 'alert_type',
          alert_status: 'alert_status',
          last_modification_time: Time.now,
          creation_time: Time.now,
          tags: TagMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AlertSummary.new
        data = {}
        data['AlertArn'] = stub[:alert_arn] unless stub[:alert_arn].nil?
        data['AnomalyDetectorArn'] = stub[:anomaly_detector_arn] unless stub[:anomaly_detector_arn].nil?
        data['AlertName'] = stub[:alert_name] unless stub[:alert_name].nil?
        data['AlertSensitivityThreshold'] = stub[:alert_sensitivity_threshold] unless stub[:alert_sensitivity_threshold].nil?
        data['AlertType'] = stub[:alert_type] unless stub[:alert_type].nil?
        data['AlertStatus'] = stub[:alert_status] unless stub[:alert_status].nil?
        data['LastModificationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modification_time]).to_i unless stub[:last_modification_time].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['Tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Map Stubber for TagMap
    class TagMap
      def self.default(visited=[])
        return nil if visited.include?('TagMap')
        visited = visited + ['TagMap']
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

    # Operation Stubber for ListAnomalyDetectors
    class ListAnomalyDetectors
      def self.default(visited=[])
        {
          anomaly_detector_summary_list: AnomalyDetectorSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AnomalyDetectorSummaryList'] = Stubs::AnomalyDetectorSummaryList.stub(stub[:anomaly_detector_summary_list]) unless stub[:anomaly_detector_summary_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AnomalyDetectorSummaryList
    class AnomalyDetectorSummaryList
      def self.default(visited=[])
        return nil if visited.include?('AnomalyDetectorSummaryList')
        visited = visited + ['AnomalyDetectorSummaryList']
        [
          AnomalyDetectorSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AnomalyDetectorSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AnomalyDetectorSummary
    class AnomalyDetectorSummary
      def self.default(visited=[])
        return nil if visited.include?('AnomalyDetectorSummary')
        visited = visited + ['AnomalyDetectorSummary']
        {
          anomaly_detector_arn: 'anomaly_detector_arn',
          anomaly_detector_name: 'anomaly_detector_name',
          anomaly_detector_description: 'anomaly_detector_description',
          creation_time: Time.now,
          last_modification_time: Time.now,
          status: 'status',
          tags: TagMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AnomalyDetectorSummary.new
        data = {}
        data['AnomalyDetectorArn'] = stub[:anomaly_detector_arn] unless stub[:anomaly_detector_arn].nil?
        data['AnomalyDetectorName'] = stub[:anomaly_detector_name] unless stub[:anomaly_detector_name].nil?
        data['AnomalyDetectorDescription'] = stub[:anomaly_detector_description] unless stub[:anomaly_detector_description].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModificationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modification_time]).to_i unless stub[:last_modification_time].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for ListAnomalyGroupRelatedMetrics
    class ListAnomalyGroupRelatedMetrics
      def self.default(visited=[])
        {
          inter_metric_impact_list: InterMetricImpactList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['InterMetricImpactList'] = Stubs::InterMetricImpactList.stub(stub[:inter_metric_impact_list]) unless stub[:inter_metric_impact_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for InterMetricImpactList
    class InterMetricImpactList
      def self.default(visited=[])
        return nil if visited.include?('InterMetricImpactList')
        visited = visited + ['InterMetricImpactList']
        [
          InterMetricImpactDetails.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::InterMetricImpactDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for InterMetricImpactDetails
    class InterMetricImpactDetails
      def self.default(visited=[])
        return nil if visited.include?('InterMetricImpactDetails')
        visited = visited + ['InterMetricImpactDetails']
        {
          metric_name: 'metric_name',
          anomaly_group_id: 'anomaly_group_id',
          relationship_type: 'relationship_type',
          contribution_percentage: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::InterMetricImpactDetails.new
        data = {}
        data['MetricName'] = stub[:metric_name] unless stub[:metric_name].nil?
        data['AnomalyGroupId'] = stub[:anomaly_group_id] unless stub[:anomaly_group_id].nil?
        data['RelationshipType'] = stub[:relationship_type] unless stub[:relationship_type].nil?
        data['ContributionPercentage'] = Hearth::NumberHelper.serialize(stub[:contribution_percentage])
        data
      end
    end

    # Operation Stubber for ListAnomalyGroupSummaries
    class ListAnomalyGroupSummaries
      def self.default(visited=[])
        {
          anomaly_group_summary_list: AnomalyGroupSummaryList.default(visited),
          anomaly_group_statistics: AnomalyGroupStatistics.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AnomalyGroupSummaryList'] = Stubs::AnomalyGroupSummaryList.stub(stub[:anomaly_group_summary_list]) unless stub[:anomaly_group_summary_list].nil?
        data['AnomalyGroupStatistics'] = Stubs::AnomalyGroupStatistics.stub(stub[:anomaly_group_statistics]) unless stub[:anomaly_group_statistics].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for AnomalyGroupStatistics
    class AnomalyGroupStatistics
      def self.default(visited=[])
        return nil if visited.include?('AnomalyGroupStatistics')
        visited = visited + ['AnomalyGroupStatistics']
        {
          evaluation_start_date: 'evaluation_start_date',
          total_count: 1,
          itemized_metric_stats_list: ItemizedMetricStatsList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AnomalyGroupStatistics.new
        data = {}
        data['EvaluationStartDate'] = stub[:evaluation_start_date] unless stub[:evaluation_start_date].nil?
        data['TotalCount'] = stub[:total_count] unless stub[:total_count].nil?
        data['ItemizedMetricStatsList'] = Stubs::ItemizedMetricStatsList.stub(stub[:itemized_metric_stats_list]) unless stub[:itemized_metric_stats_list].nil?
        data
      end
    end

    # List Stubber for ItemizedMetricStatsList
    class ItemizedMetricStatsList
      def self.default(visited=[])
        return nil if visited.include?('ItemizedMetricStatsList')
        visited = visited + ['ItemizedMetricStatsList']
        [
          ItemizedMetricStats.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ItemizedMetricStats.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ItemizedMetricStats
    class ItemizedMetricStats
      def self.default(visited=[])
        return nil if visited.include?('ItemizedMetricStats')
        visited = visited + ['ItemizedMetricStats']
        {
          metric_name: 'metric_name',
          occurrence_count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ItemizedMetricStats.new
        data = {}
        data['MetricName'] = stub[:metric_name] unless stub[:metric_name].nil?
        data['OccurrenceCount'] = stub[:occurrence_count] unless stub[:occurrence_count].nil?
        data
      end
    end

    # List Stubber for AnomalyGroupSummaryList
    class AnomalyGroupSummaryList
      def self.default(visited=[])
        return nil if visited.include?('AnomalyGroupSummaryList')
        visited = visited + ['AnomalyGroupSummaryList']
        [
          AnomalyGroupSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AnomalyGroupSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AnomalyGroupSummary
    class AnomalyGroupSummary
      def self.default(visited=[])
        return nil if visited.include?('AnomalyGroupSummary')
        visited = visited + ['AnomalyGroupSummary']
        {
          start_time: 'start_time',
          end_time: 'end_time',
          anomaly_group_id: 'anomaly_group_id',
          anomaly_group_score: 1.0,
          primary_metric_name: 'primary_metric_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::AnomalyGroupSummary.new
        data = {}
        data['StartTime'] = stub[:start_time] unless stub[:start_time].nil?
        data['EndTime'] = stub[:end_time] unless stub[:end_time].nil?
        data['AnomalyGroupId'] = stub[:anomaly_group_id] unless stub[:anomaly_group_id].nil?
        data['AnomalyGroupScore'] = Hearth::NumberHelper.serialize(stub[:anomaly_group_score])
        data['PrimaryMetricName'] = stub[:primary_metric_name] unless stub[:primary_metric_name].nil?
        data
      end
    end

    # Operation Stubber for ListAnomalyGroupTimeSeries
    class ListAnomalyGroupTimeSeries
      def self.default(visited=[])
        {
          anomaly_group_id: 'anomaly_group_id',
          metric_name: 'metric_name',
          timestamp_list: TimestampList.default(visited),
          next_token: 'next_token',
          time_series_list: TimeSeriesList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AnomalyGroupId'] = stub[:anomaly_group_id] unless stub[:anomaly_group_id].nil?
        data['MetricName'] = stub[:metric_name] unless stub[:metric_name].nil?
        data['TimestampList'] = Stubs::TimestampList.stub(stub[:timestamp_list]) unless stub[:timestamp_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['TimeSeriesList'] = Stubs::TimeSeriesList.stub(stub[:time_series_list]) unless stub[:time_series_list].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for TimeSeriesList
    class TimeSeriesList
      def self.default(visited=[])
        return nil if visited.include?('TimeSeriesList')
        visited = visited + ['TimeSeriesList']
        [
          TimeSeries.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::TimeSeries.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TimeSeries
    class TimeSeries
      def self.default(visited=[])
        return nil if visited.include?('TimeSeries')
        visited = visited + ['TimeSeries']
        {
          time_series_id: 'time_series_id',
          dimension_list: DimensionNameValueList.default(visited),
          metric_value_list: MetricValueList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TimeSeries.new
        data = {}
        data['TimeSeriesId'] = stub[:time_series_id] unless stub[:time_series_id].nil?
        data['DimensionList'] = Stubs::DimensionNameValueList.stub(stub[:dimension_list]) unless stub[:dimension_list].nil?
        data['MetricValueList'] = Stubs::MetricValueList.stub(stub[:metric_value_list]) unless stub[:metric_value_list].nil?
        data
      end
    end

    # List Stubber for MetricValueList
    class MetricValueList
      def self.default(visited=[])
        return nil if visited.include?('MetricValueList')
        visited = visited + ['MetricValueList']
        [
          1.0
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Hearth::NumberHelper.serialize(element)
        end
        data
      end
    end

    # List Stubber for DimensionNameValueList
    class DimensionNameValueList
      def self.default(visited=[])
        return nil if visited.include?('DimensionNameValueList')
        visited = visited + ['DimensionNameValueList']
        [
          DimensionNameValue.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DimensionNameValue.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DimensionNameValue
    class DimensionNameValue
      def self.default(visited=[])
        return nil if visited.include?('DimensionNameValue')
        visited = visited + ['DimensionNameValue']
        {
          dimension_name: 'dimension_name',
          dimension_value: 'dimension_value',
        }
      end

      def self.stub(stub)
        stub ||= Types::DimensionNameValue.new
        data = {}
        data['DimensionName'] = stub[:dimension_name] unless stub[:dimension_name].nil?
        data['DimensionValue'] = stub[:dimension_value] unless stub[:dimension_value].nil?
        data
      end
    end

    # List Stubber for TimestampList
    class TimestampList
      def self.default(visited=[])
        return nil if visited.include?('TimestampList')
        visited = visited + ['TimestampList']
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

    # Operation Stubber for ListMetricSets
    class ListMetricSets
      def self.default(visited=[])
        {
          metric_set_summary_list: MetricSetSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['MetricSetSummaryList'] = Stubs::MetricSetSummaryList.stub(stub[:metric_set_summary_list]) unless stub[:metric_set_summary_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for MetricSetSummaryList
    class MetricSetSummaryList
      def self.default(visited=[])
        return nil if visited.include?('MetricSetSummaryList')
        visited = visited + ['MetricSetSummaryList']
        [
          MetricSetSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::MetricSetSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MetricSetSummary
    class MetricSetSummary
      def self.default(visited=[])
        return nil if visited.include?('MetricSetSummary')
        visited = visited + ['MetricSetSummary']
        {
          metric_set_arn: 'metric_set_arn',
          anomaly_detector_arn: 'anomaly_detector_arn',
          metric_set_description: 'metric_set_description',
          metric_set_name: 'metric_set_name',
          creation_time: Time.now,
          last_modification_time: Time.now,
          tags: TagMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MetricSetSummary.new
        data = {}
        data['MetricSetArn'] = stub[:metric_set_arn] unless stub[:metric_set_arn].nil?
        data['AnomalyDetectorArn'] = stub[:anomaly_detector_arn] unless stub[:anomaly_detector_arn].nil?
        data['MetricSetDescription'] = stub[:metric_set_description] unless stub[:metric_set_description].nil?
        data['MetricSetName'] = stub[:metric_set_name] unless stub[:metric_set_name].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModificationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modification_time]).to_i unless stub[:last_modification_time].nil?
        data['Tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for PutFeedback
    class PutFeedback
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
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

    # Operation Stubber for UpdateAnomalyDetector
    class UpdateAnomalyDetector
      def self.default(visited=[])
        {
          anomaly_detector_arn: 'anomaly_detector_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AnomalyDetectorArn'] = stub[:anomaly_detector_arn] unless stub[:anomaly_detector_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateMetricSet
    class UpdateMetricSet
      def self.default(visited=[])
        {
          metric_set_arn: 'metric_set_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['MetricSetArn'] = stub[:metric_set_arn] unless stub[:metric_set_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
