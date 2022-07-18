# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::XRay
  module Builders

    # Operation Builder for BatchGetTraces
    class BatchGetTraces
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/Traces')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['TraceIds'] = Builders::TraceIdList.build(input[:trace_ids]) unless input[:trace_ids].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TraceIdList
    class TraceIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateGroup
    class CreateGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/CreateGroup')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['GroupName'] = input[:group_name] unless input[:group_name].nil?
        data['FilterExpression'] = input[:filter_expression] unless input[:filter_expression].nil?
        data['InsightsConfiguration'] = Builders::InsightsConfiguration.build(input[:insights_configuration]) unless input[:insights_configuration].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagList
    class TagList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Structure Builder for InsightsConfiguration
    class InsightsConfiguration
      def self.build(input)
        data = {}
        data['InsightsEnabled'] = input[:insights_enabled] unless input[:insights_enabled].nil?
        data['NotificationsEnabled'] = input[:notifications_enabled] unless input[:notifications_enabled].nil?
        data
      end
    end

    # Operation Builder for CreateSamplingRule
    class CreateSamplingRule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/CreateSamplingRule')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['SamplingRule'] = Builders::SamplingRule.build(input[:sampling_rule]) unless input[:sampling_rule].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for SamplingRule
    class SamplingRule
      def self.build(input)
        data = {}
        data['RuleName'] = input[:rule_name] unless input[:rule_name].nil?
        data['RuleARN'] = input[:rule_arn] unless input[:rule_arn].nil?
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['Priority'] = input[:priority] unless input[:priority].nil?
        data['FixedRate'] = Hearth::NumberHelper.serialize(input[:fixed_rate]) unless input[:fixed_rate].nil?
        data['ReservoirSize'] = input[:reservoir_size] unless input[:reservoir_size].nil?
        data['ServiceName'] = input[:service_name] unless input[:service_name].nil?
        data['ServiceType'] = input[:service_type] unless input[:service_type].nil?
        data['Host'] = input[:host] unless input[:host].nil?
        data['HTTPMethod'] = input[:http_method] unless input[:http_method].nil?
        data['URLPath'] = input[:url_path] unless input[:url_path].nil?
        data['Version'] = input[:version] unless input[:version].nil?
        data['Attributes'] = Builders::AttributeMap.build(input[:attributes]) unless input[:attributes].nil?
        data
      end
    end

    # Map Builder for AttributeMap
    class AttributeMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for DeleteGroup
    class DeleteGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/DeleteGroup')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['GroupName'] = input[:group_name] unless input[:group_name].nil?
        data['GroupARN'] = input[:group_arn] unless input[:group_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteSamplingRule
    class DeleteSamplingRule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/DeleteSamplingRule')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['RuleName'] = input[:rule_name] unless input[:rule_name].nil?
        data['RuleARN'] = input[:rule_arn] unless input[:rule_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetEncryptionConfig
    class GetEncryptionConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/EncryptionConfig')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetGroup
    class GetGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/GetGroup')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['GroupName'] = input[:group_name] unless input[:group_name].nil?
        data['GroupARN'] = input[:group_arn] unless input[:group_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetGroups
    class GetGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/Groups')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetInsight
    class GetInsight
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/Insight')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['InsightId'] = input[:insight_id] unless input[:insight_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetInsightEvents
    class GetInsightEvents
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/InsightEvents')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['InsightId'] = input[:insight_id] unless input[:insight_id].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetInsightImpactGraph
    class GetInsightImpactGraph
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/InsightImpactGraph')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['InsightId'] = input[:insight_id] unless input[:insight_id].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:start_time]).to_i unless input[:start_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:end_time]).to_i unless input[:end_time].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetInsightSummaries
    class GetInsightSummaries
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/InsightSummaries')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['States'] = Builders::InsightStateList.build(input[:states]) unless input[:states].nil?
        data['GroupARN'] = input[:group_arn] unless input[:group_arn].nil?
        data['GroupName'] = input[:group_name] unless input[:group_name].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:start_time]).to_i unless input[:start_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:end_time]).to_i unless input[:end_time].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for InsightStateList
    class InsightStateList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for GetSamplingRules
    class GetSamplingRules
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/GetSamplingRules')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetSamplingStatisticSummaries
    class GetSamplingStatisticSummaries
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/SamplingStatisticSummaries')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetSamplingTargets
    class GetSamplingTargets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/SamplingTargets')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['SamplingStatisticsDocuments'] = Builders::SamplingStatisticsDocumentList.build(input[:sampling_statistics_documents]) unless input[:sampling_statistics_documents].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for SamplingStatisticsDocumentList
    class SamplingStatisticsDocumentList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::SamplingStatisticsDocument.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SamplingStatisticsDocument
    class SamplingStatisticsDocument
      def self.build(input)
        data = {}
        data['RuleName'] = input[:rule_name] unless input[:rule_name].nil?
        data['ClientID'] = input[:client_id] unless input[:client_id].nil?
        data['Timestamp'] = Hearth::TimeHelper.to_epoch_seconds(input[:timestamp]).to_i unless input[:timestamp].nil?
        data['RequestCount'] = input[:request_count] unless input[:request_count].nil?
        data['SampledCount'] = input[:sampled_count] unless input[:sampled_count].nil?
        data['BorrowCount'] = input[:borrow_count] unless input[:borrow_count].nil?
        data
      end
    end

    # Operation Builder for GetServiceGraph
    class GetServiceGraph
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/ServiceGraph')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:start_time]).to_i unless input[:start_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:end_time]).to_i unless input[:end_time].nil?
        data['GroupName'] = input[:group_name] unless input[:group_name].nil?
        data['GroupARN'] = input[:group_arn] unless input[:group_arn].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetTimeSeriesServiceStatistics
    class GetTimeSeriesServiceStatistics
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/TimeSeriesServiceStatistics')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:start_time]).to_i unless input[:start_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:end_time]).to_i unless input[:end_time].nil?
        data['GroupName'] = input[:group_name] unless input[:group_name].nil?
        data['GroupARN'] = input[:group_arn] unless input[:group_arn].nil?
        data['EntitySelectorExpression'] = input[:entity_selector_expression] unless input[:entity_selector_expression].nil?
        data['Period'] = input[:period] unless input[:period].nil?
        data['ForecastStatistics'] = input[:forecast_statistics] unless input[:forecast_statistics].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetTraceGraph
    class GetTraceGraph
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/TraceGraph')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['TraceIds'] = Builders::TraceIdList.build(input[:trace_ids]) unless input[:trace_ids].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetTraceSummaries
    class GetTraceSummaries
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/TraceSummaries')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:start_time]).to_i unless input[:start_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:end_time]).to_i unless input[:end_time].nil?
        data['TimeRangeType'] = input[:time_range_type] unless input[:time_range_type].nil?
        data['Sampling'] = input[:sampling] unless input[:sampling].nil?
        data['SamplingStrategy'] = Builders::SamplingStrategy.build(input[:sampling_strategy]) unless input[:sampling_strategy].nil?
        data['FilterExpression'] = input[:filter_expression] unless input[:filter_expression].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for SamplingStrategy
    class SamplingStrategy
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Value'] = Hearth::NumberHelper.serialize(input[:value]) unless input[:value].nil?
        data
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/ListTagsForResource')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutEncryptionConfig
    class PutEncryptionConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/PutEncryptionConfig')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['KeyId'] = input[:key_id] unless input[:key_id].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutTelemetryRecords
    class PutTelemetryRecords
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/TelemetryRecords')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['TelemetryRecords'] = Builders::TelemetryRecordList.build(input[:telemetry_records]) unless input[:telemetry_records].nil?
        data['EC2InstanceId'] = input[:ec2_instance_id] unless input[:ec2_instance_id].nil?
        data['Hostname'] = input[:hostname] unless input[:hostname].nil?
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TelemetryRecordList
    class TelemetryRecordList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::TelemetryRecord.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for TelemetryRecord
    class TelemetryRecord
      def self.build(input)
        data = {}
        data['Timestamp'] = Hearth::TimeHelper.to_epoch_seconds(input[:timestamp]).to_i unless input[:timestamp].nil?
        data['SegmentsReceivedCount'] = input[:segments_received_count] unless input[:segments_received_count].nil?
        data['SegmentsSentCount'] = input[:segments_sent_count] unless input[:segments_sent_count].nil?
        data['SegmentsSpilloverCount'] = input[:segments_spillover_count] unless input[:segments_spillover_count].nil?
        data['SegmentsRejectedCount'] = input[:segments_rejected_count] unless input[:segments_rejected_count].nil?
        data['BackendConnectionErrors'] = Builders::BackendConnectionErrors.build(input[:backend_connection_errors]) unless input[:backend_connection_errors].nil?
        data
      end
    end

    # Structure Builder for BackendConnectionErrors
    class BackendConnectionErrors
      def self.build(input)
        data = {}
        data['TimeoutCount'] = input[:timeout_count] unless input[:timeout_count].nil?
        data['ConnectionRefusedCount'] = input[:connection_refused_count] unless input[:connection_refused_count].nil?
        data['HTTPCode4XXCount'] = input[:http_code4_xx_count] unless input[:http_code4_xx_count].nil?
        data['HTTPCode5XXCount'] = input[:http_code5_xx_count] unless input[:http_code5_xx_count].nil?
        data['UnknownHostCount'] = input[:unknown_host_count] unless input[:unknown_host_count].nil?
        data['OtherCount'] = input[:other_count] unless input[:other_count].nil?
        data
      end
    end

    # Operation Builder for PutTraceSegments
    class PutTraceSegments
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/TraceSegments')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['TraceSegmentDocuments'] = Builders::TraceSegmentDocumentList.build(input[:trace_segment_documents]) unless input[:trace_segment_documents].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TraceSegmentDocumentList
    class TraceSegmentDocumentList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/TagResource')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/UntagResource')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['TagKeys'] = Builders::TagKeyList.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagKeyList
    class TagKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateGroup
    class UpdateGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/UpdateGroup')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['GroupName'] = input[:group_name] unless input[:group_name].nil?
        data['GroupARN'] = input[:group_arn] unless input[:group_arn].nil?
        data['FilterExpression'] = input[:filter_expression] unless input[:filter_expression].nil?
        data['InsightsConfiguration'] = Builders::InsightsConfiguration.build(input[:insights_configuration]) unless input[:insights_configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateSamplingRule
    class UpdateSamplingRule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/UpdateSamplingRule')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['SamplingRuleUpdate'] = Builders::SamplingRuleUpdate.build(input[:sampling_rule_update]) unless input[:sampling_rule_update].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for SamplingRuleUpdate
    class SamplingRuleUpdate
      def self.build(input)
        data = {}
        data['RuleName'] = input[:rule_name] unless input[:rule_name].nil?
        data['RuleARN'] = input[:rule_arn] unless input[:rule_arn].nil?
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['Priority'] = input[:priority] unless input[:priority].nil?
        data['FixedRate'] = Hearth::NumberHelper.serialize(input[:fixed_rate]) unless input[:fixed_rate].nil?
        data['ReservoirSize'] = input[:reservoir_size] unless input[:reservoir_size].nil?
        data['Host'] = input[:host] unless input[:host].nil?
        data['ServiceName'] = input[:service_name] unless input[:service_name].nil?
        data['ServiceType'] = input[:service_type] unless input[:service_type].nil?
        data['HTTPMethod'] = input[:http_method] unless input[:http_method].nil?
        data['URLPath'] = input[:url_path] unless input[:url_path].nil?
        data['Attributes'] = Builders::AttributeMap.build(input[:attributes]) unless input[:attributes].nil?
        data
      end
    end
  end
end
