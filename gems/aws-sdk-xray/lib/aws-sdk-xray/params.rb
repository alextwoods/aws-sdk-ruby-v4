# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::XRay
  module Params

    module Alias
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Alias, context: context)
        type = Types::Alias.new
        type.name = params[:name]
        type.names = AliasNames.build(params[:names], context: "#{context}[:names]") unless params[:names].nil?
        type.type = params[:type]
        type
      end
    end

    module AliasList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Alias.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AliasNames
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AnnotationValue
      def self.build(params, context: '')
        return params if params.is_a?(Types::AnnotationValue)
        Hearth::Validator.validate!(params, ::Hash, Types::AnnotationValue, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :number_value
          Types::AnnotationValue::NumberValue.new(
            params[:number_value]
          )
        when :boolean_value
          Types::AnnotationValue::BooleanValue.new(
            params[:boolean_value]
          )
        when :string_value
          Types::AnnotationValue::StringValue.new(
            params[:string_value]
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :number_value, :boolean_value, :string_value set"
        end
      end
    end

    module Annotations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = ValuesWithServiceIds.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module AnomalousService
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AnomalousService, context: context)
        type = Types::AnomalousService.new
        type.service_id = ServiceId.build(params[:service_id], context: "#{context}[:service_id]") unless params[:service_id].nil?
        type
      end
    end

    module AnomalousServiceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AnomalousService.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AttributeMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module AvailabilityZoneDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AvailabilityZoneDetail, context: context)
        type = Types::AvailabilityZoneDetail.new
        type.name = params[:name]
        type
      end
    end

    module BackendConnectionErrors
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BackendConnectionErrors, context: context)
        type = Types::BackendConnectionErrors.new
        type.timeout_count = params[:timeout_count]
        type.connection_refused_count = params[:connection_refused_count]
        type.http_code4_xx_count = params[:http_code4_xx_count]
        type.http_code5_xx_count = params[:http_code5_xx_count]
        type.unknown_host_count = params[:unknown_host_count]
        type.other_count = params[:other_count]
        type
      end
    end

    module BatchGetTracesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetTracesInput, context: context)
        type = Types::BatchGetTracesInput.new
        type.trace_ids = TraceIdList.build(params[:trace_ids], context: "#{context}[:trace_ids]") unless params[:trace_ids].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module BatchGetTracesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetTracesOutput, context: context)
        type = Types::BatchGetTracesOutput.new
        type.traces = TraceList.build(params[:traces], context: "#{context}[:traces]") unless params[:traces].nil?
        type.unprocessed_trace_ids = UnprocessedTraceIdList.build(params[:unprocessed_trace_ids], context: "#{context}[:unprocessed_trace_ids]") unless params[:unprocessed_trace_ids].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module CreateGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateGroupInput, context: context)
        type = Types::CreateGroupInput.new
        type.group_name = params[:group_name]
        type.filter_expression = params[:filter_expression]
        type.insights_configuration = InsightsConfiguration.build(params[:insights_configuration], context: "#{context}[:insights_configuration]") unless params[:insights_configuration].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateGroupOutput, context: context)
        type = Types::CreateGroupOutput.new
        type.group = Group.build(params[:group], context: "#{context}[:group]") unless params[:group].nil?
        type
      end
    end

    module CreateSamplingRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSamplingRuleInput, context: context)
        type = Types::CreateSamplingRuleInput.new
        type.sampling_rule = SamplingRule.build(params[:sampling_rule], context: "#{context}[:sampling_rule]") unless params[:sampling_rule].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateSamplingRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSamplingRuleOutput, context: context)
        type = Types::CreateSamplingRuleOutput.new
        type.sampling_rule_record = SamplingRuleRecord.build(params[:sampling_rule_record], context: "#{context}[:sampling_rule_record]") unless params[:sampling_rule_record].nil?
        type
      end
    end

    module DeleteGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteGroupInput, context: context)
        type = Types::DeleteGroupInput.new
        type.group_name = params[:group_name]
        type.group_arn = params[:group_arn]
        type
      end
    end

    module DeleteGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteGroupOutput, context: context)
        type = Types::DeleteGroupOutput.new
        type
      end
    end

    module DeleteSamplingRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSamplingRuleInput, context: context)
        type = Types::DeleteSamplingRuleInput.new
        type.rule_name = params[:rule_name]
        type.rule_arn = params[:rule_arn]
        type
      end
    end

    module DeleteSamplingRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSamplingRuleOutput, context: context)
        type = Types::DeleteSamplingRuleOutput.new
        type.sampling_rule_record = SamplingRuleRecord.build(params[:sampling_rule_record], context: "#{context}[:sampling_rule_record]") unless params[:sampling_rule_record].nil?
        type
      end
    end

    module Edge
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Edge, context: context)
        type = Types::Edge.new
        type.reference_id = params[:reference_id]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.summary_statistics = EdgeStatistics.build(params[:summary_statistics], context: "#{context}[:summary_statistics]") unless params[:summary_statistics].nil?
        type.response_time_histogram = Histogram.build(params[:response_time_histogram], context: "#{context}[:response_time_histogram]") unless params[:response_time_histogram].nil?
        type.aliases = AliasList.build(params[:aliases], context: "#{context}[:aliases]") unless params[:aliases].nil?
        type
      end
    end

    module EdgeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Edge.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EdgeStatistics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EdgeStatistics, context: context)
        type = Types::EdgeStatistics.new
        type.ok_count = params[:ok_count]
        type.error_statistics = ErrorStatistics.build(params[:error_statistics], context: "#{context}[:error_statistics]") unless params[:error_statistics].nil?
        type.fault_statistics = FaultStatistics.build(params[:fault_statistics], context: "#{context}[:fault_statistics]") unless params[:fault_statistics].nil?
        type.total_count = params[:total_count]
        type.total_response_time = params[:total_response_time]
        type
      end
    end

    module EncryptionConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EncryptionConfig, context: context)
        type = Types::EncryptionConfig.new
        type.key_id = params[:key_id]
        type.status = params[:status]
        type.type = params[:type]
        type
      end
    end

    module ErrorRootCause
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ErrorRootCause, context: context)
        type = Types::ErrorRootCause.new
        type.services = ErrorRootCauseServices.build(params[:services], context: "#{context}[:services]") unless params[:services].nil?
        type.client_impacting = params[:client_impacting]
        type
      end
    end

    module ErrorRootCauseEntity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ErrorRootCauseEntity, context: context)
        type = Types::ErrorRootCauseEntity.new
        type.name = params[:name]
        type.exceptions = RootCauseExceptions.build(params[:exceptions], context: "#{context}[:exceptions]") unless params[:exceptions].nil?
        type.remote = params[:remote]
        type
      end
    end

    module ErrorRootCauseEntityPath
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ErrorRootCauseEntity.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ErrorRootCauseService
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ErrorRootCauseService, context: context)
        type = Types::ErrorRootCauseService.new
        type.name = params[:name]
        type.names = ServiceNames.build(params[:names], context: "#{context}[:names]") unless params[:names].nil?
        type.type = params[:type]
        type.account_id = params[:account_id]
        type.entity_path = ErrorRootCauseEntityPath.build(params[:entity_path], context: "#{context}[:entity_path]") unless params[:entity_path].nil?
        type.inferred = params[:inferred]
        type
      end
    end

    module ErrorRootCauseServices
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ErrorRootCauseService.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ErrorRootCauses
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ErrorRootCause.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ErrorStatistics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ErrorStatistics, context: context)
        type = Types::ErrorStatistics.new
        type.throttle_count = params[:throttle_count]
        type.other_count = params[:other_count]
        type.total_count = params[:total_count]
        type
      end
    end

    module FaultRootCause
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FaultRootCause, context: context)
        type = Types::FaultRootCause.new
        type.services = FaultRootCauseServices.build(params[:services], context: "#{context}[:services]") unless params[:services].nil?
        type.client_impacting = params[:client_impacting]
        type
      end
    end

    module FaultRootCauseEntity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FaultRootCauseEntity, context: context)
        type = Types::FaultRootCauseEntity.new
        type.name = params[:name]
        type.exceptions = RootCauseExceptions.build(params[:exceptions], context: "#{context}[:exceptions]") unless params[:exceptions].nil?
        type.remote = params[:remote]
        type
      end
    end

    module FaultRootCauseEntityPath
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FaultRootCauseEntity.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FaultRootCauseService
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FaultRootCauseService, context: context)
        type = Types::FaultRootCauseService.new
        type.name = params[:name]
        type.names = ServiceNames.build(params[:names], context: "#{context}[:names]") unless params[:names].nil?
        type.type = params[:type]
        type.account_id = params[:account_id]
        type.entity_path = FaultRootCauseEntityPath.build(params[:entity_path], context: "#{context}[:entity_path]") unless params[:entity_path].nil?
        type.inferred = params[:inferred]
        type
      end
    end

    module FaultRootCauseServices
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FaultRootCauseService.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FaultRootCauses
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FaultRootCause.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FaultStatistics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FaultStatistics, context: context)
        type = Types::FaultStatistics.new
        type.other_count = params[:other_count]
        type.total_count = params[:total_count]
        type
      end
    end

    module ForecastStatistics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ForecastStatistics, context: context)
        type = Types::ForecastStatistics.new
        type.fault_count_high = params[:fault_count_high]
        type.fault_count_low = params[:fault_count_low]
        type
      end
    end

    module GetEncryptionConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEncryptionConfigInput, context: context)
        type = Types::GetEncryptionConfigInput.new
        type
      end
    end

    module GetEncryptionConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEncryptionConfigOutput, context: context)
        type = Types::GetEncryptionConfigOutput.new
        type.encryption_config = EncryptionConfig.build(params[:encryption_config], context: "#{context}[:encryption_config]") unless params[:encryption_config].nil?
        type
      end
    end

    module GetGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetGroupInput, context: context)
        type = Types::GetGroupInput.new
        type.group_name = params[:group_name]
        type.group_arn = params[:group_arn]
        type
      end
    end

    module GetGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetGroupOutput, context: context)
        type = Types::GetGroupOutput.new
        type.group = Group.build(params[:group], context: "#{context}[:group]") unless params[:group].nil?
        type
      end
    end

    module GetGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetGroupsInput, context: context)
        type = Types::GetGroupsInput.new
        type.next_token = params[:next_token]
        type
      end
    end

    module GetGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetGroupsOutput, context: context)
        type = Types::GetGroupsOutput.new
        type.groups = GroupSummaryList.build(params[:groups], context: "#{context}[:groups]") unless params[:groups].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetInsightEventsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetInsightEventsInput, context: context)
        type = Types::GetInsightEventsInput.new
        type.insight_id = params[:insight_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetInsightEventsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetInsightEventsOutput, context: context)
        type = Types::GetInsightEventsOutput.new
        type.insight_events = InsightEventList.build(params[:insight_events], context: "#{context}[:insight_events]") unless params[:insight_events].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetInsightImpactGraphInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetInsightImpactGraphInput, context: context)
        type = Types::GetInsightImpactGraphInput.new
        type.insight_id = params[:insight_id]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetInsightImpactGraphOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetInsightImpactGraphOutput, context: context)
        type = Types::GetInsightImpactGraphOutput.new
        type.insight_id = params[:insight_id]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.service_graph_start_time = params[:service_graph_start_time]
        type.service_graph_end_time = params[:service_graph_end_time]
        type.services = InsightImpactGraphServiceList.build(params[:services], context: "#{context}[:services]") unless params[:services].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetInsightInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetInsightInput, context: context)
        type = Types::GetInsightInput.new
        type.insight_id = params[:insight_id]
        type
      end
    end

    module GetInsightOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetInsightOutput, context: context)
        type = Types::GetInsightOutput.new
        type.insight = Insight.build(params[:insight], context: "#{context}[:insight]") unless params[:insight].nil?
        type
      end
    end

    module GetInsightSummariesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetInsightSummariesInput, context: context)
        type = Types::GetInsightSummariesInput.new
        type.states = InsightStateList.build(params[:states], context: "#{context}[:states]") unless params[:states].nil?
        type.group_arn = params[:group_arn]
        type.group_name = params[:group_name]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetInsightSummariesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetInsightSummariesOutput, context: context)
        type = Types::GetInsightSummariesOutput.new
        type.insight_summaries = InsightSummaryList.build(params[:insight_summaries], context: "#{context}[:insight_summaries]") unless params[:insight_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetSamplingRulesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSamplingRulesInput, context: context)
        type = Types::GetSamplingRulesInput.new
        type.next_token = params[:next_token]
        type
      end
    end

    module GetSamplingRulesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSamplingRulesOutput, context: context)
        type = Types::GetSamplingRulesOutput.new
        type.sampling_rule_records = SamplingRuleRecordList.build(params[:sampling_rule_records], context: "#{context}[:sampling_rule_records]") unless params[:sampling_rule_records].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetSamplingStatisticSummariesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSamplingStatisticSummariesInput, context: context)
        type = Types::GetSamplingStatisticSummariesInput.new
        type.next_token = params[:next_token]
        type
      end
    end

    module GetSamplingStatisticSummariesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSamplingStatisticSummariesOutput, context: context)
        type = Types::GetSamplingStatisticSummariesOutput.new
        type.sampling_statistic_summaries = SamplingStatisticSummaryList.build(params[:sampling_statistic_summaries], context: "#{context}[:sampling_statistic_summaries]") unless params[:sampling_statistic_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetSamplingTargetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSamplingTargetsInput, context: context)
        type = Types::GetSamplingTargetsInput.new
        type.sampling_statistics_documents = SamplingStatisticsDocumentList.build(params[:sampling_statistics_documents], context: "#{context}[:sampling_statistics_documents]") unless params[:sampling_statistics_documents].nil?
        type
      end
    end

    module GetSamplingTargetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSamplingTargetsOutput, context: context)
        type = Types::GetSamplingTargetsOutput.new
        type.sampling_target_documents = SamplingTargetDocumentList.build(params[:sampling_target_documents], context: "#{context}[:sampling_target_documents]") unless params[:sampling_target_documents].nil?
        type.last_rule_modification = params[:last_rule_modification]
        type.unprocessed_statistics = UnprocessedStatisticsList.build(params[:unprocessed_statistics], context: "#{context}[:unprocessed_statistics]") unless params[:unprocessed_statistics].nil?
        type
      end
    end

    module GetServiceGraphInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetServiceGraphInput, context: context)
        type = Types::GetServiceGraphInput.new
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.group_name = params[:group_name]
        type.group_arn = params[:group_arn]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetServiceGraphOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetServiceGraphOutput, context: context)
        type = Types::GetServiceGraphOutput.new
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.services = ServiceList.build(params[:services], context: "#{context}[:services]") unless params[:services].nil?
        type.contains_old_group_versions = params[:contains_old_group_versions]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetTimeSeriesServiceStatisticsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTimeSeriesServiceStatisticsInput, context: context)
        type = Types::GetTimeSeriesServiceStatisticsInput.new
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.group_name = params[:group_name]
        type.group_arn = params[:group_arn]
        type.entity_selector_expression = params[:entity_selector_expression]
        type.period = params[:period]
        type.forecast_statistics = params[:forecast_statistics]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetTimeSeriesServiceStatisticsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTimeSeriesServiceStatisticsOutput, context: context)
        type = Types::GetTimeSeriesServiceStatisticsOutput.new
        type.time_series_service_statistics = TimeSeriesServiceStatisticsList.build(params[:time_series_service_statistics], context: "#{context}[:time_series_service_statistics]") unless params[:time_series_service_statistics].nil?
        type.contains_old_group_versions = params[:contains_old_group_versions]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetTraceGraphInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTraceGraphInput, context: context)
        type = Types::GetTraceGraphInput.new
        type.trace_ids = TraceIdList.build(params[:trace_ids], context: "#{context}[:trace_ids]") unless params[:trace_ids].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetTraceGraphOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTraceGraphOutput, context: context)
        type = Types::GetTraceGraphOutput.new
        type.services = ServiceList.build(params[:services], context: "#{context}[:services]") unless params[:services].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetTraceSummariesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTraceSummariesInput, context: context)
        type = Types::GetTraceSummariesInput.new
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.time_range_type = params[:time_range_type]
        type.sampling = params[:sampling]
        type.sampling_strategy = SamplingStrategy.build(params[:sampling_strategy], context: "#{context}[:sampling_strategy]") unless params[:sampling_strategy].nil?
        type.filter_expression = params[:filter_expression]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetTraceSummariesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTraceSummariesOutput, context: context)
        type = Types::GetTraceSummariesOutput.new
        type.trace_summaries = TraceSummaryList.build(params[:trace_summaries], context: "#{context}[:trace_summaries]") unless params[:trace_summaries].nil?
        type.approximate_time = params[:approximate_time]
        type.traces_processed_count = params[:traces_processed_count]
        type.next_token = params[:next_token]
        type
      end
    end

    module Group
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Group, context: context)
        type = Types::Group.new
        type.group_name = params[:group_name]
        type.group_arn = params[:group_arn]
        type.filter_expression = params[:filter_expression]
        type.insights_configuration = InsightsConfiguration.build(params[:insights_configuration], context: "#{context}[:insights_configuration]") unless params[:insights_configuration].nil?
        type
      end
    end

    module GroupSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GroupSummary, context: context)
        type = Types::GroupSummary.new
        type.group_name = params[:group_name]
        type.group_arn = params[:group_arn]
        type.filter_expression = params[:filter_expression]
        type.insights_configuration = InsightsConfiguration.build(params[:insights_configuration], context: "#{context}[:insights_configuration]") unless params[:insights_configuration].nil?
        type
      end
    end

    module GroupSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GroupSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Histogram
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << HistogramEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module HistogramEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HistogramEntry, context: context)
        type = Types::HistogramEntry.new
        type.value = params[:value]
        type.count = params[:count]
        type
      end
    end

    module Http
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Http, context: context)
        type = Types::Http.new
        type.http_url = params[:http_url]
        type.http_status = params[:http_status]
        type.http_method = params[:http_method]
        type.user_agent = params[:user_agent]
        type.client_ip = params[:client_ip]
        type
      end
    end

    module Insight
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Insight, context: context)
        type = Types::Insight.new
        type.insight_id = params[:insight_id]
        type.group_arn = params[:group_arn]
        type.group_name = params[:group_name]
        type.root_cause_service_id = ServiceId.build(params[:root_cause_service_id], context: "#{context}[:root_cause_service_id]") unless params[:root_cause_service_id].nil?
        type.categories = InsightCategoryList.build(params[:categories], context: "#{context}[:categories]") unless params[:categories].nil?
        type.state = params[:state]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.summary = params[:summary]
        type.client_request_impact_statistics = RequestImpactStatistics.build(params[:client_request_impact_statistics], context: "#{context}[:client_request_impact_statistics]") unless params[:client_request_impact_statistics].nil?
        type.root_cause_service_request_impact_statistics = RequestImpactStatistics.build(params[:root_cause_service_request_impact_statistics], context: "#{context}[:root_cause_service_request_impact_statistics]") unless params[:root_cause_service_request_impact_statistics].nil?
        type.top_anomalous_services = AnomalousServiceList.build(params[:top_anomalous_services], context: "#{context}[:top_anomalous_services]") unless params[:top_anomalous_services].nil?
        type
      end
    end

    module InsightCategoryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module InsightEvent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InsightEvent, context: context)
        type = Types::InsightEvent.new
        type.summary = params[:summary]
        type.event_time = params[:event_time]
        type.client_request_impact_statistics = RequestImpactStatistics.build(params[:client_request_impact_statistics], context: "#{context}[:client_request_impact_statistics]") unless params[:client_request_impact_statistics].nil?
        type.root_cause_service_request_impact_statistics = RequestImpactStatistics.build(params[:root_cause_service_request_impact_statistics], context: "#{context}[:root_cause_service_request_impact_statistics]") unless params[:root_cause_service_request_impact_statistics].nil?
        type.top_anomalous_services = AnomalousServiceList.build(params[:top_anomalous_services], context: "#{context}[:top_anomalous_services]") unless params[:top_anomalous_services].nil?
        type
      end
    end

    module InsightEventList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InsightEvent.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InsightImpactGraphEdge
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InsightImpactGraphEdge, context: context)
        type = Types::InsightImpactGraphEdge.new
        type.reference_id = params[:reference_id]
        type
      end
    end

    module InsightImpactGraphEdgeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InsightImpactGraphEdge.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InsightImpactGraphService
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InsightImpactGraphService, context: context)
        type = Types::InsightImpactGraphService.new
        type.reference_id = params[:reference_id]
        type.type = params[:type]
        type.name = params[:name]
        type.names = ServiceNames.build(params[:names], context: "#{context}[:names]") unless params[:names].nil?
        type.account_id = params[:account_id]
        type.edges = InsightImpactGraphEdgeList.build(params[:edges], context: "#{context}[:edges]") unless params[:edges].nil?
        type
      end
    end

    module InsightImpactGraphServiceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InsightImpactGraphService.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InsightStateList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module InsightSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InsightSummary, context: context)
        type = Types::InsightSummary.new
        type.insight_id = params[:insight_id]
        type.group_arn = params[:group_arn]
        type.group_name = params[:group_name]
        type.root_cause_service_id = ServiceId.build(params[:root_cause_service_id], context: "#{context}[:root_cause_service_id]") unless params[:root_cause_service_id].nil?
        type.categories = InsightCategoryList.build(params[:categories], context: "#{context}[:categories]") unless params[:categories].nil?
        type.state = params[:state]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.summary = params[:summary]
        type.client_request_impact_statistics = RequestImpactStatistics.build(params[:client_request_impact_statistics], context: "#{context}[:client_request_impact_statistics]") unless params[:client_request_impact_statistics].nil?
        type.root_cause_service_request_impact_statistics = RequestImpactStatistics.build(params[:root_cause_service_request_impact_statistics], context: "#{context}[:root_cause_service_request_impact_statistics]") unless params[:root_cause_service_request_impact_statistics].nil?
        type.top_anomalous_services = AnomalousServiceList.build(params[:top_anomalous_services], context: "#{context}[:top_anomalous_services]") unless params[:top_anomalous_services].nil?
        type.last_update_time = params[:last_update_time]
        type
      end
    end

    module InsightSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InsightSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InsightsConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InsightsConfiguration, context: context)
        type = Types::InsightsConfiguration.new
        type.insights_enabled = params[:insights_enabled]
        type.notifications_enabled = params[:notifications_enabled]
        type
      end
    end

    module InstanceIdDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceIdDetail, context: context)
        type = Types::InstanceIdDetail.new
        type.id = params[:id]
        type
      end
    end

    module InvalidRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidRequestException, context: context)
        type = Types::InvalidRequestException.new
        type.message = params[:message]
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module PutEncryptionConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutEncryptionConfigInput, context: context)
        type = Types::PutEncryptionConfigInput.new
        type.key_id = params[:key_id]
        type.type = params[:type]
        type
      end
    end

    module PutEncryptionConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutEncryptionConfigOutput, context: context)
        type = Types::PutEncryptionConfigOutput.new
        type.encryption_config = EncryptionConfig.build(params[:encryption_config], context: "#{context}[:encryption_config]") unless params[:encryption_config].nil?
        type
      end
    end

    module PutTelemetryRecordsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutTelemetryRecordsInput, context: context)
        type = Types::PutTelemetryRecordsInput.new
        type.telemetry_records = TelemetryRecordList.build(params[:telemetry_records], context: "#{context}[:telemetry_records]") unless params[:telemetry_records].nil?
        type.ec2_instance_id = params[:ec2_instance_id]
        type.hostname = params[:hostname]
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module PutTelemetryRecordsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutTelemetryRecordsOutput, context: context)
        type = Types::PutTelemetryRecordsOutput.new
        type
      end
    end

    module PutTraceSegmentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutTraceSegmentsInput, context: context)
        type = Types::PutTraceSegmentsInput.new
        type.trace_segment_documents = TraceSegmentDocumentList.build(params[:trace_segment_documents], context: "#{context}[:trace_segment_documents]") unless params[:trace_segment_documents].nil?
        type
      end
    end

    module PutTraceSegmentsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutTraceSegmentsOutput, context: context)
        type = Types::PutTraceSegmentsOutput.new
        type.unprocessed_trace_segments = UnprocessedTraceSegmentList.build(params[:unprocessed_trace_segments], context: "#{context}[:unprocessed_trace_segments]") unless params[:unprocessed_trace_segments].nil?
        type
      end
    end

    module RequestImpactStatistics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RequestImpactStatistics, context: context)
        type = Types::RequestImpactStatistics.new
        type.fault_count = params[:fault_count]
        type.ok_count = params[:ok_count]
        type.total_count = params[:total_count]
        type
      end
    end

    module ResourceARNDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceARNDetail, context: context)
        type = Types::ResourceARNDetail.new
        type.arn = params[:arn]
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type.resource_name = params[:resource_name]
        type
      end
    end

    module ResponseTimeRootCause
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResponseTimeRootCause, context: context)
        type = Types::ResponseTimeRootCause.new
        type.services = ResponseTimeRootCauseServices.build(params[:services], context: "#{context}[:services]") unless params[:services].nil?
        type.client_impacting = params[:client_impacting]
        type
      end
    end

    module ResponseTimeRootCauseEntity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResponseTimeRootCauseEntity, context: context)
        type = Types::ResponseTimeRootCauseEntity.new
        type.name = params[:name]
        type.coverage = params[:coverage]
        type.remote = params[:remote]
        type
      end
    end

    module ResponseTimeRootCauseEntityPath
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResponseTimeRootCauseEntity.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResponseTimeRootCauseService
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResponseTimeRootCauseService, context: context)
        type = Types::ResponseTimeRootCauseService.new
        type.name = params[:name]
        type.names = ServiceNames.build(params[:names], context: "#{context}[:names]") unless params[:names].nil?
        type.type = params[:type]
        type.account_id = params[:account_id]
        type.entity_path = ResponseTimeRootCauseEntityPath.build(params[:entity_path], context: "#{context}[:entity_path]") unless params[:entity_path].nil?
        type.inferred = params[:inferred]
        type
      end
    end

    module ResponseTimeRootCauseServices
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResponseTimeRootCauseService.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResponseTimeRootCauses
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResponseTimeRootCause.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RootCauseException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RootCauseException, context: context)
        type = Types::RootCauseException.new
        type.name = params[:name]
        type.message = params[:message]
        type
      end
    end

    module RootCauseExceptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RootCauseException.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RuleLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RuleLimitExceededException, context: context)
        type = Types::RuleLimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module SamplingRule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SamplingRule, context: context)
        type = Types::SamplingRule.new
        type.rule_name = params[:rule_name]
        type.rule_arn = params[:rule_arn]
        type.resource_arn = params[:resource_arn]
        type.priority = params[:priority]
        type.fixed_rate = params[:fixed_rate]
        type.reservoir_size = params[:reservoir_size]
        type.service_name = params[:service_name]
        type.service_type = params[:service_type]
        type.host = params[:host]
        type.http_method = params[:http_method]
        type.url_path = params[:url_path]
        type.version = params[:version]
        type.attributes = AttributeMap.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type
      end
    end

    module SamplingRuleRecord
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SamplingRuleRecord, context: context)
        type = Types::SamplingRuleRecord.new
        type.sampling_rule = SamplingRule.build(params[:sampling_rule], context: "#{context}[:sampling_rule]") unless params[:sampling_rule].nil?
        type.created_at = params[:created_at]
        type.modified_at = params[:modified_at]
        type
      end
    end

    module SamplingRuleRecordList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SamplingRuleRecord.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SamplingRuleUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SamplingRuleUpdate, context: context)
        type = Types::SamplingRuleUpdate.new
        type.rule_name = params[:rule_name]
        type.rule_arn = params[:rule_arn]
        type.resource_arn = params[:resource_arn]
        type.priority = params[:priority]
        type.fixed_rate = params[:fixed_rate]
        type.reservoir_size = params[:reservoir_size]
        type.host = params[:host]
        type.service_name = params[:service_name]
        type.service_type = params[:service_type]
        type.http_method = params[:http_method]
        type.url_path = params[:url_path]
        type.attributes = AttributeMap.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type
      end
    end

    module SamplingStatisticSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SamplingStatisticSummary, context: context)
        type = Types::SamplingStatisticSummary.new
        type.rule_name = params[:rule_name]
        type.timestamp = params[:timestamp]
        type.request_count = params[:request_count]
        type.borrow_count = params[:borrow_count]
        type.sampled_count = params[:sampled_count]
        type
      end
    end

    module SamplingStatisticSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SamplingStatisticSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SamplingStatisticsDocument
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SamplingStatisticsDocument, context: context)
        type = Types::SamplingStatisticsDocument.new
        type.rule_name = params[:rule_name]
        type.client_id = params[:client_id]
        type.timestamp = params[:timestamp]
        type.request_count = params[:request_count]
        type.sampled_count = params[:sampled_count]
        type.borrow_count = params[:borrow_count]
        type
      end
    end

    module SamplingStatisticsDocumentList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SamplingStatisticsDocument.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SamplingStrategy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SamplingStrategy, context: context)
        type = Types::SamplingStrategy.new
        type.name = params[:name]
        type.value = params[:value]
        type
      end
    end

    module SamplingTargetDocument
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SamplingTargetDocument, context: context)
        type = Types::SamplingTargetDocument.new
        type.rule_name = params[:rule_name]
        type.fixed_rate = params[:fixed_rate]
        type.reservoir_quota = params[:reservoir_quota]
        type.reservoir_quota_ttl = params[:reservoir_quota_ttl]
        type.interval = params[:interval]
        type
      end
    end

    module SamplingTargetDocumentList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SamplingTargetDocument.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Segment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Segment, context: context)
        type = Types::Segment.new
        type.id = params[:id]
        type.document = params[:document]
        type
      end
    end

    module SegmentList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Segment.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Service
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Service, context: context)
        type = Types::Service.new
        type.reference_id = params[:reference_id]
        type.name = params[:name]
        type.names = ServiceNames.build(params[:names], context: "#{context}[:names]") unless params[:names].nil?
        type.root = params[:root]
        type.account_id = params[:account_id]
        type.type = params[:type]
        type.state = params[:state]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.edges = EdgeList.build(params[:edges], context: "#{context}[:edges]") unless params[:edges].nil?
        type.summary_statistics = ServiceStatistics.build(params[:summary_statistics], context: "#{context}[:summary_statistics]") unless params[:summary_statistics].nil?
        type.duration_histogram = Histogram.build(params[:duration_histogram], context: "#{context}[:duration_histogram]") unless params[:duration_histogram].nil?
        type.response_time_histogram = Histogram.build(params[:response_time_histogram], context: "#{context}[:response_time_histogram]") unless params[:response_time_histogram].nil?
        type
      end
    end

    module ServiceId
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceId, context: context)
        type = Types::ServiceId.new
        type.name = params[:name]
        type.names = ServiceNames.build(params[:names], context: "#{context}[:names]") unless params[:names].nil?
        type.account_id = params[:account_id]
        type.type = params[:type]
        type
      end
    end

    module ServiceIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ServiceId.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ServiceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Service.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ServiceNames
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ServiceStatistics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceStatistics, context: context)
        type = Types::ServiceStatistics.new
        type.ok_count = params[:ok_count]
        type.error_statistics = ErrorStatistics.build(params[:error_statistics], context: "#{context}[:error_statistics]") unless params[:error_statistics].nil?
        type.fault_statistics = FaultStatistics.build(params[:fault_statistics], context: "#{context}[:fault_statistics]") unless params[:fault_statistics].nil?
        type.total_count = params[:total_count]
        type.total_response_time = params[:total_response_time]
        type
      end
    end

    module Tag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Tag, context: context)
        type = Types::Tag.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module TagKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
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

    module TelemetryRecord
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TelemetryRecord, context: context)
        type = Types::TelemetryRecord.new
        type.timestamp = params[:timestamp]
        type.segments_received_count = params[:segments_received_count]
        type.segments_sent_count = params[:segments_sent_count]
        type.segments_spillover_count = params[:segments_spillover_count]
        type.segments_rejected_count = params[:segments_rejected_count]
        type.backend_connection_errors = BackendConnectionErrors.build(params[:backend_connection_errors], context: "#{context}[:backend_connection_errors]") unless params[:backend_connection_errors].nil?
        type
      end
    end

    module TelemetryRecordList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TelemetryRecord.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ThrottledException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottledException, context: context)
        type = Types::ThrottledException.new
        type.message = params[:message]
        type
      end
    end

    module TimeSeriesServiceStatistics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TimeSeriesServiceStatistics, context: context)
        type = Types::TimeSeriesServiceStatistics.new
        type.timestamp = params[:timestamp]
        type.edge_summary_statistics = EdgeStatistics.build(params[:edge_summary_statistics], context: "#{context}[:edge_summary_statistics]") unless params[:edge_summary_statistics].nil?
        type.service_summary_statistics = ServiceStatistics.build(params[:service_summary_statistics], context: "#{context}[:service_summary_statistics]") unless params[:service_summary_statistics].nil?
        type.service_forecast_statistics = ForecastStatistics.build(params[:service_forecast_statistics], context: "#{context}[:service_forecast_statistics]") unless params[:service_forecast_statistics].nil?
        type.response_time_histogram = Histogram.build(params[:response_time_histogram], context: "#{context}[:response_time_histogram]") unless params[:response_time_histogram].nil?
        type
      end
    end

    module TimeSeriesServiceStatisticsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TimeSeriesServiceStatistics.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TooManyTagsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyTagsException, context: context)
        type = Types::TooManyTagsException.new
        type.message = params[:message]
        type.resource_name = params[:resource_name]
        type
      end
    end

    module Trace
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Trace, context: context)
        type = Types::Trace.new
        type.id = params[:id]
        type.duration = params[:duration]
        type.limit_exceeded = params[:limit_exceeded]
        type.segments = SegmentList.build(params[:segments], context: "#{context}[:segments]") unless params[:segments].nil?
        type
      end
    end

    module TraceAvailabilityZones
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AvailabilityZoneDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TraceIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TraceInstanceIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InstanceIdDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TraceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Trace.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TraceResourceARNs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResourceARNDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TraceSegmentDocumentList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TraceSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TraceSummary, context: context)
        type = Types::TraceSummary.new
        type.id = params[:id]
        type.duration = params[:duration]
        type.response_time = params[:response_time]
        type.has_fault = params[:has_fault]
        type.has_error = params[:has_error]
        type.has_throttle = params[:has_throttle]
        type.is_partial = params[:is_partial]
        type.http = Http.build(params[:http], context: "#{context}[:http]") unless params[:http].nil?
        type.annotations = Annotations.build(params[:annotations], context: "#{context}[:annotations]") unless params[:annotations].nil?
        type.users = TraceUsers.build(params[:users], context: "#{context}[:users]") unless params[:users].nil?
        type.service_ids = ServiceIds.build(params[:service_ids], context: "#{context}[:service_ids]") unless params[:service_ids].nil?
        type.resource_ar_ns = TraceResourceARNs.build(params[:resource_ar_ns], context: "#{context}[:resource_ar_ns]") unless params[:resource_ar_ns].nil?
        type.instance_ids = TraceInstanceIds.build(params[:instance_ids], context: "#{context}[:instance_ids]") unless params[:instance_ids].nil?
        type.availability_zones = TraceAvailabilityZones.build(params[:availability_zones], context: "#{context}[:availability_zones]") unless params[:availability_zones].nil?
        type.entry_point = ServiceId.build(params[:entry_point], context: "#{context}[:entry_point]") unless params[:entry_point].nil?
        type.fault_root_causes = FaultRootCauses.build(params[:fault_root_causes], context: "#{context}[:fault_root_causes]") unless params[:fault_root_causes].nil?
        type.error_root_causes = ErrorRootCauses.build(params[:error_root_causes], context: "#{context}[:error_root_causes]") unless params[:error_root_causes].nil?
        type.response_time_root_causes = ResponseTimeRootCauses.build(params[:response_time_root_causes], context: "#{context}[:response_time_root_causes]") unless params[:response_time_root_causes].nil?
        type.revision = params[:revision]
        type.matched_event_time = params[:matched_event_time]
        type
      end
    end

    module TraceSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TraceSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TraceUser
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TraceUser, context: context)
        type = Types::TraceUser.new
        type.user_name = params[:user_name]
        type.service_ids = ServiceIds.build(params[:service_ids], context: "#{context}[:service_ids]") unless params[:service_ids].nil?
        type
      end
    end

    module TraceUsers
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TraceUser.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UnprocessedStatistics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnprocessedStatistics, context: context)
        type = Types::UnprocessedStatistics.new
        type.rule_name = params[:rule_name]
        type.error_code = params[:error_code]
        type.message = params[:message]
        type
      end
    end

    module UnprocessedStatisticsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UnprocessedStatistics.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UnprocessedTraceIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module UnprocessedTraceSegment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnprocessedTraceSegment, context: context)
        type = Types::UnprocessedTraceSegment.new
        type.id = params[:id]
        type.error_code = params[:error_code]
        type.message = params[:message]
        type
      end
    end

    module UnprocessedTraceSegmentList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UnprocessedTraceSegment.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
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

    module UpdateGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateGroupInput, context: context)
        type = Types::UpdateGroupInput.new
        type.group_name = params[:group_name]
        type.group_arn = params[:group_arn]
        type.filter_expression = params[:filter_expression]
        type.insights_configuration = InsightsConfiguration.build(params[:insights_configuration], context: "#{context}[:insights_configuration]") unless params[:insights_configuration].nil?
        type
      end
    end

    module UpdateGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateGroupOutput, context: context)
        type = Types::UpdateGroupOutput.new
        type.group = Group.build(params[:group], context: "#{context}[:group]") unless params[:group].nil?
        type
      end
    end

    module UpdateSamplingRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSamplingRuleInput, context: context)
        type = Types::UpdateSamplingRuleInput.new
        type.sampling_rule_update = SamplingRuleUpdate.build(params[:sampling_rule_update], context: "#{context}[:sampling_rule_update]") unless params[:sampling_rule_update].nil?
        type
      end
    end

    module UpdateSamplingRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSamplingRuleOutput, context: context)
        type = Types::UpdateSamplingRuleOutput.new
        type.sampling_rule_record = SamplingRuleRecord.build(params[:sampling_rule_record], context: "#{context}[:sampling_rule_record]") unless params[:sampling_rule_record].nil?
        type
      end
    end

    module ValueWithServiceIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValueWithServiceIds, context: context)
        type = Types::ValueWithServiceIds.new
        type.annotation_value = AnnotationValue.build(params[:annotation_value], context: "#{context}[:annotation_value]") unless params[:annotation_value].nil?
        type.service_ids = ServiceIds.build(params[:service_ids], context: "#{context}[:service_ids]") unless params[:service_ids].nil?
        type
      end
    end

    module ValuesWithServiceIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ValueWithServiceIds.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

  end
end
