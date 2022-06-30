# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::XRay
  module Validators

    class Alias
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Alias, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::AliasNames.validate!(input[:names], context: "#{context}[:names]") unless input[:names].nil?
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class AliasList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Alias.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AliasNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AnnotationValue
      def self.validate!(input, context:)
        case input
        when Types::AnnotationValue::NumberValue
          Hearth::Validator.validate!(input.__getobj__, ::Float, context: context)
        when Types::AnnotationValue::BooleanValue
          Hearth::Validator.validate!(input.__getobj__, ::TrueClass, ::FalseClass, context: context)
        when Types::AnnotationValue::StringValue
          Hearth::Validator.validate!(input.__getobj__, ::String, context: context)
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::AnnotationValue, got #{input.class}."
        end
      end

      class NumberValue
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::Float, context: context)
        end
      end

      class BooleanValue
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::TrueClass, ::FalseClass, context: context)
        end
      end

      class StringValue
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::String, context: context)
        end
      end
    end

    class Annotations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::ValuesWithServiceIds.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class AnomalousService
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AnomalousService, context: context)
        Validators::ServiceId.validate!(input[:service_id], context: "#{context}[:service_id]") unless input[:service_id].nil?
      end
    end

    class AnomalousServiceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AnomalousService.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AttributeMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class AvailabilityZoneDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AvailabilityZoneDetail, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class BackendConnectionErrors
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BackendConnectionErrors, context: context)
        Hearth::Validator.validate!(input[:timeout_count], ::Integer, context: "#{context}[:timeout_count]")
        Hearth::Validator.validate!(input[:connection_refused_count], ::Integer, context: "#{context}[:connection_refused_count]")
        Hearth::Validator.validate!(input[:http_code4_xx_count], ::Integer, context: "#{context}[:http_code4_xx_count]")
        Hearth::Validator.validate!(input[:http_code5_xx_count], ::Integer, context: "#{context}[:http_code5_xx_count]")
        Hearth::Validator.validate!(input[:unknown_host_count], ::Integer, context: "#{context}[:unknown_host_count]")
        Hearth::Validator.validate!(input[:other_count], ::Integer, context: "#{context}[:other_count]")
      end
    end

    class BatchGetTracesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetTracesInput, context: context)
        Validators::TraceIdList.validate!(input[:trace_ids], context: "#{context}[:trace_ids]") unless input[:trace_ids].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class BatchGetTracesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetTracesOutput, context: context)
        Validators::TraceList.validate!(input[:traces], context: "#{context}[:traces]") unless input[:traces].nil?
        Validators::UnprocessedTraceIdList.validate!(input[:unprocessed_trace_ids], context: "#{context}[:unprocessed_trace_ids]") unless input[:unprocessed_trace_ids].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class CreateGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateGroupInput, context: context)
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Hearth::Validator.validate!(input[:filter_expression], ::String, context: "#{context}[:filter_expression]")
        Validators::InsightsConfiguration.validate!(input[:insights_configuration], context: "#{context}[:insights_configuration]") unless input[:insights_configuration].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateGroupOutput, context: context)
        Validators::Group.validate!(input[:group], context: "#{context}[:group]") unless input[:group].nil?
      end
    end

    class CreateSamplingRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSamplingRuleInput, context: context)
        Validators::SamplingRule.validate!(input[:sampling_rule], context: "#{context}[:sampling_rule]") unless input[:sampling_rule].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateSamplingRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSamplingRuleOutput, context: context)
        Validators::SamplingRuleRecord.validate!(input[:sampling_rule_record], context: "#{context}[:sampling_rule_record]") unless input[:sampling_rule_record].nil?
      end
    end

    class DeleteGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteGroupInput, context: context)
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Hearth::Validator.validate!(input[:group_arn], ::String, context: "#{context}[:group_arn]")
      end
    end

    class DeleteGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteGroupOutput, context: context)
      end
    end

    class DeleteSamplingRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSamplingRuleInput, context: context)
        Hearth::Validator.validate!(input[:rule_name], ::String, context: "#{context}[:rule_name]")
        Hearth::Validator.validate!(input[:rule_arn], ::String, context: "#{context}[:rule_arn]")
      end
    end

    class DeleteSamplingRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSamplingRuleOutput, context: context)
        Validators::SamplingRuleRecord.validate!(input[:sampling_rule_record], context: "#{context}[:sampling_rule_record]") unless input[:sampling_rule_record].nil?
      end
    end

    class Edge
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Edge, context: context)
        Hearth::Validator.validate!(input[:reference_id], ::Integer, context: "#{context}[:reference_id]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Validators::EdgeStatistics.validate!(input[:summary_statistics], context: "#{context}[:summary_statistics]") unless input[:summary_statistics].nil?
        Validators::Histogram.validate!(input[:response_time_histogram], context: "#{context}[:response_time_histogram]") unless input[:response_time_histogram].nil?
        Validators::AliasList.validate!(input[:aliases], context: "#{context}[:aliases]") unless input[:aliases].nil?
      end
    end

    class EdgeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Edge.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EdgeStatistics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EdgeStatistics, context: context)
        Hearth::Validator.validate!(input[:ok_count], ::Integer, context: "#{context}[:ok_count]")
        Validators::ErrorStatistics.validate!(input[:error_statistics], context: "#{context}[:error_statistics]") unless input[:error_statistics].nil?
        Validators::FaultStatistics.validate!(input[:fault_statistics], context: "#{context}[:fault_statistics]") unless input[:fault_statistics].nil?
        Hearth::Validator.validate!(input[:total_count], ::Integer, context: "#{context}[:total_count]")
        Hearth::Validator.validate!(input[:total_response_time], ::Float, context: "#{context}[:total_response_time]")
      end
    end

    class EncryptionConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EncryptionConfig, context: context)
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class ErrorRootCause
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ErrorRootCause, context: context)
        Validators::ErrorRootCauseServices.validate!(input[:services], context: "#{context}[:services]") unless input[:services].nil?
        Hearth::Validator.validate!(input[:client_impacting], ::TrueClass, ::FalseClass, context: "#{context}[:client_impacting]")
      end
    end

    class ErrorRootCauseEntity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ErrorRootCauseEntity, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::RootCauseExceptions.validate!(input[:exceptions], context: "#{context}[:exceptions]") unless input[:exceptions].nil?
        Hearth::Validator.validate!(input[:remote], ::TrueClass, ::FalseClass, context: "#{context}[:remote]")
      end
    end

    class ErrorRootCauseEntityPath
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ErrorRootCauseEntity.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ErrorRootCauseService
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ErrorRootCauseService, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::ServiceNames.validate!(input[:names], context: "#{context}[:names]") unless input[:names].nil?
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Validators::ErrorRootCauseEntityPath.validate!(input[:entity_path], context: "#{context}[:entity_path]") unless input[:entity_path].nil?
        Hearth::Validator.validate!(input[:inferred], ::TrueClass, ::FalseClass, context: "#{context}[:inferred]")
      end
    end

    class ErrorRootCauseServices
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ErrorRootCauseService.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ErrorRootCauses
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ErrorRootCause.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ErrorStatistics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ErrorStatistics, context: context)
        Hearth::Validator.validate!(input[:throttle_count], ::Integer, context: "#{context}[:throttle_count]")
        Hearth::Validator.validate!(input[:other_count], ::Integer, context: "#{context}[:other_count]")
        Hearth::Validator.validate!(input[:total_count], ::Integer, context: "#{context}[:total_count]")
      end
    end

    class FaultRootCause
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FaultRootCause, context: context)
        Validators::FaultRootCauseServices.validate!(input[:services], context: "#{context}[:services]") unless input[:services].nil?
        Hearth::Validator.validate!(input[:client_impacting], ::TrueClass, ::FalseClass, context: "#{context}[:client_impacting]")
      end
    end

    class FaultRootCauseEntity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FaultRootCauseEntity, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::RootCauseExceptions.validate!(input[:exceptions], context: "#{context}[:exceptions]") unless input[:exceptions].nil?
        Hearth::Validator.validate!(input[:remote], ::TrueClass, ::FalseClass, context: "#{context}[:remote]")
      end
    end

    class FaultRootCauseEntityPath
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::FaultRootCauseEntity.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FaultRootCauseService
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FaultRootCauseService, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::ServiceNames.validate!(input[:names], context: "#{context}[:names]") unless input[:names].nil?
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Validators::FaultRootCauseEntityPath.validate!(input[:entity_path], context: "#{context}[:entity_path]") unless input[:entity_path].nil?
        Hearth::Validator.validate!(input[:inferred], ::TrueClass, ::FalseClass, context: "#{context}[:inferred]")
      end
    end

    class FaultRootCauseServices
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::FaultRootCauseService.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FaultRootCauses
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::FaultRootCause.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FaultStatistics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FaultStatistics, context: context)
        Hearth::Validator.validate!(input[:other_count], ::Integer, context: "#{context}[:other_count]")
        Hearth::Validator.validate!(input[:total_count], ::Integer, context: "#{context}[:total_count]")
      end
    end

    class ForecastStatistics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ForecastStatistics, context: context)
        Hearth::Validator.validate!(input[:fault_count_high], ::Integer, context: "#{context}[:fault_count_high]")
        Hearth::Validator.validate!(input[:fault_count_low], ::Integer, context: "#{context}[:fault_count_low]")
      end
    end

    class GetEncryptionConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEncryptionConfigInput, context: context)
      end
    end

    class GetEncryptionConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEncryptionConfigOutput, context: context)
        Validators::EncryptionConfig.validate!(input[:encryption_config], context: "#{context}[:encryption_config]") unless input[:encryption_config].nil?
      end
    end

    class GetGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetGroupInput, context: context)
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Hearth::Validator.validate!(input[:group_arn], ::String, context: "#{context}[:group_arn]")
      end
    end

    class GetGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetGroupOutput, context: context)
        Validators::Group.validate!(input[:group], context: "#{context}[:group]") unless input[:group].nil?
      end
    end

    class GetGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetGroupsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetGroupsOutput, context: context)
        Validators::GroupSummaryList.validate!(input[:groups], context: "#{context}[:groups]") unless input[:groups].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetInsightEventsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetInsightEventsInput, context: context)
        Hearth::Validator.validate!(input[:insight_id], ::String, context: "#{context}[:insight_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetInsightEventsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetInsightEventsOutput, context: context)
        Validators::InsightEventList.validate!(input[:insight_events], context: "#{context}[:insight_events]") unless input[:insight_events].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetInsightImpactGraphInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetInsightImpactGraphInput, context: context)
        Hearth::Validator.validate!(input[:insight_id], ::String, context: "#{context}[:insight_id]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetInsightImpactGraphOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetInsightImpactGraphOutput, context: context)
        Hearth::Validator.validate!(input[:insight_id], ::String, context: "#{context}[:insight_id]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:service_graph_start_time], ::Time, context: "#{context}[:service_graph_start_time]")
        Hearth::Validator.validate!(input[:service_graph_end_time], ::Time, context: "#{context}[:service_graph_end_time]")
        Validators::InsightImpactGraphServiceList.validate!(input[:services], context: "#{context}[:services]") unless input[:services].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetInsightInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetInsightInput, context: context)
        Hearth::Validator.validate!(input[:insight_id], ::String, context: "#{context}[:insight_id]")
      end
    end

    class GetInsightOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetInsightOutput, context: context)
        Validators::Insight.validate!(input[:insight], context: "#{context}[:insight]") unless input[:insight].nil?
      end
    end

    class GetInsightSummariesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetInsightSummariesInput, context: context)
        Validators::InsightStateList.validate!(input[:states], context: "#{context}[:states]") unless input[:states].nil?
        Hearth::Validator.validate!(input[:group_arn], ::String, context: "#{context}[:group_arn]")
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetInsightSummariesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetInsightSummariesOutput, context: context)
        Validators::InsightSummaryList.validate!(input[:insight_summaries], context: "#{context}[:insight_summaries]") unless input[:insight_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetSamplingRulesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSamplingRulesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetSamplingRulesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSamplingRulesOutput, context: context)
        Validators::SamplingRuleRecordList.validate!(input[:sampling_rule_records], context: "#{context}[:sampling_rule_records]") unless input[:sampling_rule_records].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetSamplingStatisticSummariesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSamplingStatisticSummariesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetSamplingStatisticSummariesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSamplingStatisticSummariesOutput, context: context)
        Validators::SamplingStatisticSummaryList.validate!(input[:sampling_statistic_summaries], context: "#{context}[:sampling_statistic_summaries]") unless input[:sampling_statistic_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetSamplingTargetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSamplingTargetsInput, context: context)
        Validators::SamplingStatisticsDocumentList.validate!(input[:sampling_statistics_documents], context: "#{context}[:sampling_statistics_documents]") unless input[:sampling_statistics_documents].nil?
      end
    end

    class GetSamplingTargetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSamplingTargetsOutput, context: context)
        Validators::SamplingTargetDocumentList.validate!(input[:sampling_target_documents], context: "#{context}[:sampling_target_documents]") unless input[:sampling_target_documents].nil?
        Hearth::Validator.validate!(input[:last_rule_modification], ::Time, context: "#{context}[:last_rule_modification]")
        Validators::UnprocessedStatisticsList.validate!(input[:unprocessed_statistics], context: "#{context}[:unprocessed_statistics]") unless input[:unprocessed_statistics].nil?
      end
    end

    class GetServiceGraphInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetServiceGraphInput, context: context)
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Hearth::Validator.validate!(input[:group_arn], ::String, context: "#{context}[:group_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetServiceGraphOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetServiceGraphOutput, context: context)
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Validators::ServiceList.validate!(input[:services], context: "#{context}[:services]") unless input[:services].nil?
        Hearth::Validator.validate!(input[:contains_old_group_versions], ::TrueClass, ::FalseClass, context: "#{context}[:contains_old_group_versions]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetTimeSeriesServiceStatisticsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTimeSeriesServiceStatisticsInput, context: context)
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Hearth::Validator.validate!(input[:group_arn], ::String, context: "#{context}[:group_arn]")
        Hearth::Validator.validate!(input[:entity_selector_expression], ::String, context: "#{context}[:entity_selector_expression]")
        Hearth::Validator.validate!(input[:period], ::Integer, context: "#{context}[:period]")
        Hearth::Validator.validate!(input[:forecast_statistics], ::TrueClass, ::FalseClass, context: "#{context}[:forecast_statistics]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetTimeSeriesServiceStatisticsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTimeSeriesServiceStatisticsOutput, context: context)
        Validators::TimeSeriesServiceStatisticsList.validate!(input[:time_series_service_statistics], context: "#{context}[:time_series_service_statistics]") unless input[:time_series_service_statistics].nil?
        Hearth::Validator.validate!(input[:contains_old_group_versions], ::TrueClass, ::FalseClass, context: "#{context}[:contains_old_group_versions]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetTraceGraphInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTraceGraphInput, context: context)
        Validators::TraceIdList.validate!(input[:trace_ids], context: "#{context}[:trace_ids]") unless input[:trace_ids].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetTraceGraphOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTraceGraphOutput, context: context)
        Validators::ServiceList.validate!(input[:services], context: "#{context}[:services]") unless input[:services].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetTraceSummariesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTraceSummariesInput, context: context)
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:time_range_type], ::String, context: "#{context}[:time_range_type]")
        Hearth::Validator.validate!(input[:sampling], ::TrueClass, ::FalseClass, context: "#{context}[:sampling]")
        Validators::SamplingStrategy.validate!(input[:sampling_strategy], context: "#{context}[:sampling_strategy]") unless input[:sampling_strategy].nil?
        Hearth::Validator.validate!(input[:filter_expression], ::String, context: "#{context}[:filter_expression]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetTraceSummariesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTraceSummariesOutput, context: context)
        Validators::TraceSummaryList.validate!(input[:trace_summaries], context: "#{context}[:trace_summaries]") unless input[:trace_summaries].nil?
        Hearth::Validator.validate!(input[:approximate_time], ::Time, context: "#{context}[:approximate_time]")
        Hearth::Validator.validate!(input[:traces_processed_count], ::Integer, context: "#{context}[:traces_processed_count]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class Group
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Group, context: context)
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Hearth::Validator.validate!(input[:group_arn], ::String, context: "#{context}[:group_arn]")
        Hearth::Validator.validate!(input[:filter_expression], ::String, context: "#{context}[:filter_expression]")
        Validators::InsightsConfiguration.validate!(input[:insights_configuration], context: "#{context}[:insights_configuration]") unless input[:insights_configuration].nil?
      end
    end

    class GroupSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GroupSummary, context: context)
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Hearth::Validator.validate!(input[:group_arn], ::String, context: "#{context}[:group_arn]")
        Hearth::Validator.validate!(input[:filter_expression], ::String, context: "#{context}[:filter_expression]")
        Validators::InsightsConfiguration.validate!(input[:insights_configuration], context: "#{context}[:insights_configuration]") unless input[:insights_configuration].nil?
      end
    end

    class GroupSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::GroupSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Histogram
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::HistogramEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class HistogramEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HistogramEntry, context: context)
        Hearth::Validator.validate!(input[:value], ::Float, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:count], ::Integer, context: "#{context}[:count]")
      end
    end

    class Http
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Http, context: context)
        Hearth::Validator.validate!(input[:http_url], ::String, context: "#{context}[:http_url]")
        Hearth::Validator.validate!(input[:http_status], ::Integer, context: "#{context}[:http_status]")
        Hearth::Validator.validate!(input[:http_method], ::String, context: "#{context}[:http_method]")
        Hearth::Validator.validate!(input[:user_agent], ::String, context: "#{context}[:user_agent]")
        Hearth::Validator.validate!(input[:client_ip], ::String, context: "#{context}[:client_ip]")
      end
    end

    class Insight
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Insight, context: context)
        Hearth::Validator.validate!(input[:insight_id], ::String, context: "#{context}[:insight_id]")
        Hearth::Validator.validate!(input[:group_arn], ::String, context: "#{context}[:group_arn]")
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Validators::ServiceId.validate!(input[:root_cause_service_id], context: "#{context}[:root_cause_service_id]") unless input[:root_cause_service_id].nil?
        Validators::InsightCategoryList.validate!(input[:categories], context: "#{context}[:categories]") unless input[:categories].nil?
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:summary], ::String, context: "#{context}[:summary]")
        Validators::RequestImpactStatistics.validate!(input[:client_request_impact_statistics], context: "#{context}[:client_request_impact_statistics]") unless input[:client_request_impact_statistics].nil?
        Validators::RequestImpactStatistics.validate!(input[:root_cause_service_request_impact_statistics], context: "#{context}[:root_cause_service_request_impact_statistics]") unless input[:root_cause_service_request_impact_statistics].nil?
        Validators::AnomalousServiceList.validate!(input[:top_anomalous_services], context: "#{context}[:top_anomalous_services]") unless input[:top_anomalous_services].nil?
      end
    end

    class InsightCategoryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InsightEvent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InsightEvent, context: context)
        Hearth::Validator.validate!(input[:summary], ::String, context: "#{context}[:summary]")
        Hearth::Validator.validate!(input[:event_time], ::Time, context: "#{context}[:event_time]")
        Validators::RequestImpactStatistics.validate!(input[:client_request_impact_statistics], context: "#{context}[:client_request_impact_statistics]") unless input[:client_request_impact_statistics].nil?
        Validators::RequestImpactStatistics.validate!(input[:root_cause_service_request_impact_statistics], context: "#{context}[:root_cause_service_request_impact_statistics]") unless input[:root_cause_service_request_impact_statistics].nil?
        Validators::AnomalousServiceList.validate!(input[:top_anomalous_services], context: "#{context}[:top_anomalous_services]") unless input[:top_anomalous_services].nil?
      end
    end

    class InsightEventList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::InsightEvent.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InsightImpactGraphEdge
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InsightImpactGraphEdge, context: context)
        Hearth::Validator.validate!(input[:reference_id], ::Integer, context: "#{context}[:reference_id]")
      end
    end

    class InsightImpactGraphEdgeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::InsightImpactGraphEdge.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InsightImpactGraphService
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InsightImpactGraphService, context: context)
        Hearth::Validator.validate!(input[:reference_id], ::Integer, context: "#{context}[:reference_id]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::ServiceNames.validate!(input[:names], context: "#{context}[:names]") unless input[:names].nil?
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Validators::InsightImpactGraphEdgeList.validate!(input[:edges], context: "#{context}[:edges]") unless input[:edges].nil?
      end
    end

    class InsightImpactGraphServiceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::InsightImpactGraphService.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InsightStateList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InsightSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InsightSummary, context: context)
        Hearth::Validator.validate!(input[:insight_id], ::String, context: "#{context}[:insight_id]")
        Hearth::Validator.validate!(input[:group_arn], ::String, context: "#{context}[:group_arn]")
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Validators::ServiceId.validate!(input[:root_cause_service_id], context: "#{context}[:root_cause_service_id]") unless input[:root_cause_service_id].nil?
        Validators::InsightCategoryList.validate!(input[:categories], context: "#{context}[:categories]") unless input[:categories].nil?
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:summary], ::String, context: "#{context}[:summary]")
        Validators::RequestImpactStatistics.validate!(input[:client_request_impact_statistics], context: "#{context}[:client_request_impact_statistics]") unless input[:client_request_impact_statistics].nil?
        Validators::RequestImpactStatistics.validate!(input[:root_cause_service_request_impact_statistics], context: "#{context}[:root_cause_service_request_impact_statistics]") unless input[:root_cause_service_request_impact_statistics].nil?
        Validators::AnomalousServiceList.validate!(input[:top_anomalous_services], context: "#{context}[:top_anomalous_services]") unless input[:top_anomalous_services].nil?
        Hearth::Validator.validate!(input[:last_update_time], ::Time, context: "#{context}[:last_update_time]")
      end
    end

    class InsightSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::InsightSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InsightsConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InsightsConfiguration, context: context)
        Hearth::Validator.validate!(input[:insights_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:insights_enabled]")
        Hearth::Validator.validate!(input[:notifications_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:notifications_enabled]")
      end
    end

    class InstanceIdDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceIdDetail, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class InvalidRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class PutEncryptionConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutEncryptionConfigInput, context: context)
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class PutEncryptionConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutEncryptionConfigOutput, context: context)
        Validators::EncryptionConfig.validate!(input[:encryption_config], context: "#{context}[:encryption_config]") unless input[:encryption_config].nil?
      end
    end

    class PutTelemetryRecordsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutTelemetryRecordsInput, context: context)
        Validators::TelemetryRecordList.validate!(input[:telemetry_records], context: "#{context}[:telemetry_records]") unless input[:telemetry_records].nil?
        Hearth::Validator.validate!(input[:ec2_instance_id], ::String, context: "#{context}[:ec2_instance_id]")
        Hearth::Validator.validate!(input[:hostname], ::String, context: "#{context}[:hostname]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class PutTelemetryRecordsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutTelemetryRecordsOutput, context: context)
      end
    end

    class PutTraceSegmentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutTraceSegmentsInput, context: context)
        Validators::TraceSegmentDocumentList.validate!(input[:trace_segment_documents], context: "#{context}[:trace_segment_documents]") unless input[:trace_segment_documents].nil?
      end
    end

    class PutTraceSegmentsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutTraceSegmentsOutput, context: context)
        Validators::UnprocessedTraceSegmentList.validate!(input[:unprocessed_trace_segments], context: "#{context}[:unprocessed_trace_segments]") unless input[:unprocessed_trace_segments].nil?
      end
    end

    class RequestImpactStatistics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RequestImpactStatistics, context: context)
        Hearth::Validator.validate!(input[:fault_count], ::Integer, context: "#{context}[:fault_count]")
        Hearth::Validator.validate!(input[:ok_count], ::Integer, context: "#{context}[:ok_count]")
        Hearth::Validator.validate!(input[:total_count], ::Integer, context: "#{context}[:total_count]")
      end
    end

    class ResourceARNDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceARNDetail, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
      end
    end

    class ResponseTimeRootCause
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResponseTimeRootCause, context: context)
        Validators::ResponseTimeRootCauseServices.validate!(input[:services], context: "#{context}[:services]") unless input[:services].nil?
        Hearth::Validator.validate!(input[:client_impacting], ::TrueClass, ::FalseClass, context: "#{context}[:client_impacting]")
      end
    end

    class ResponseTimeRootCauseEntity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResponseTimeRootCauseEntity, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:coverage], ::Float, context: "#{context}[:coverage]")
        Hearth::Validator.validate!(input[:remote], ::TrueClass, ::FalseClass, context: "#{context}[:remote]")
      end
    end

    class ResponseTimeRootCauseEntityPath
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ResponseTimeRootCauseEntity.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResponseTimeRootCauseService
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResponseTimeRootCauseService, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::ServiceNames.validate!(input[:names], context: "#{context}[:names]") unless input[:names].nil?
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Validators::ResponseTimeRootCauseEntityPath.validate!(input[:entity_path], context: "#{context}[:entity_path]") unless input[:entity_path].nil?
        Hearth::Validator.validate!(input[:inferred], ::TrueClass, ::FalseClass, context: "#{context}[:inferred]")
      end
    end

    class ResponseTimeRootCauseServices
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ResponseTimeRootCauseService.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResponseTimeRootCauses
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ResponseTimeRootCause.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RootCauseException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RootCauseException, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RootCauseExceptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RootCauseException.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RuleLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RuleLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SamplingRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SamplingRule, context: context)
        Hearth::Validator.validate!(input[:rule_name], ::String, context: "#{context}[:rule_name]")
        Hearth::Validator.validate!(input[:rule_arn], ::String, context: "#{context}[:rule_arn]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:priority], ::Integer, context: "#{context}[:priority]")
        Hearth::Validator.validate!(input[:fixed_rate], ::Float, context: "#{context}[:fixed_rate]")
        Hearth::Validator.validate!(input[:reservoir_size], ::Integer, context: "#{context}[:reservoir_size]")
        Hearth::Validator.validate!(input[:service_name], ::String, context: "#{context}[:service_name]")
        Hearth::Validator.validate!(input[:service_type], ::String, context: "#{context}[:service_type]")
        Hearth::Validator.validate!(input[:host], ::String, context: "#{context}[:host]")
        Hearth::Validator.validate!(input[:http_method], ::String, context: "#{context}[:http_method]")
        Hearth::Validator.validate!(input[:url_path], ::String, context: "#{context}[:url_path]")
        Hearth::Validator.validate!(input[:version], ::Integer, context: "#{context}[:version]")
        Validators::AttributeMap.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
      end
    end

    class SamplingRuleRecord
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SamplingRuleRecord, context: context)
        Validators::SamplingRule.validate!(input[:sampling_rule], context: "#{context}[:sampling_rule]") unless input[:sampling_rule].nil?
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:modified_at], ::Time, context: "#{context}[:modified_at]")
      end
    end

    class SamplingRuleRecordList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SamplingRuleRecord.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SamplingRuleUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SamplingRuleUpdate, context: context)
        Hearth::Validator.validate!(input[:rule_name], ::String, context: "#{context}[:rule_name]")
        Hearth::Validator.validate!(input[:rule_arn], ::String, context: "#{context}[:rule_arn]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:priority], ::Integer, context: "#{context}[:priority]")
        Hearth::Validator.validate!(input[:fixed_rate], ::Float, context: "#{context}[:fixed_rate]")
        Hearth::Validator.validate!(input[:reservoir_size], ::Integer, context: "#{context}[:reservoir_size]")
        Hearth::Validator.validate!(input[:host], ::String, context: "#{context}[:host]")
        Hearth::Validator.validate!(input[:service_name], ::String, context: "#{context}[:service_name]")
        Hearth::Validator.validate!(input[:service_type], ::String, context: "#{context}[:service_type]")
        Hearth::Validator.validate!(input[:http_method], ::String, context: "#{context}[:http_method]")
        Hearth::Validator.validate!(input[:url_path], ::String, context: "#{context}[:url_path]")
        Validators::AttributeMap.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
      end
    end

    class SamplingStatisticSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SamplingStatisticSummary, context: context)
        Hearth::Validator.validate!(input[:rule_name], ::String, context: "#{context}[:rule_name]")
        Hearth::Validator.validate!(input[:timestamp], ::Time, context: "#{context}[:timestamp]")
        Hearth::Validator.validate!(input[:request_count], ::Integer, context: "#{context}[:request_count]")
        Hearth::Validator.validate!(input[:borrow_count], ::Integer, context: "#{context}[:borrow_count]")
        Hearth::Validator.validate!(input[:sampled_count], ::Integer, context: "#{context}[:sampled_count]")
      end
    end

    class SamplingStatisticSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SamplingStatisticSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SamplingStatisticsDocument
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SamplingStatisticsDocument, context: context)
        Hearth::Validator.validate!(input[:rule_name], ::String, context: "#{context}[:rule_name]")
        Hearth::Validator.validate!(input[:client_id], ::String, context: "#{context}[:client_id]")
        Hearth::Validator.validate!(input[:timestamp], ::Time, context: "#{context}[:timestamp]")
        Hearth::Validator.validate!(input[:request_count], ::Integer, context: "#{context}[:request_count]")
        Hearth::Validator.validate!(input[:sampled_count], ::Integer, context: "#{context}[:sampled_count]")
        Hearth::Validator.validate!(input[:borrow_count], ::Integer, context: "#{context}[:borrow_count]")
      end
    end

    class SamplingStatisticsDocumentList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SamplingStatisticsDocument.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SamplingStrategy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SamplingStrategy, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::Float, context: "#{context}[:value]")
      end
    end

    class SamplingTargetDocument
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SamplingTargetDocument, context: context)
        Hearth::Validator.validate!(input[:rule_name], ::String, context: "#{context}[:rule_name]")
        Hearth::Validator.validate!(input[:fixed_rate], ::Float, context: "#{context}[:fixed_rate]")
        Hearth::Validator.validate!(input[:reservoir_quota], ::Integer, context: "#{context}[:reservoir_quota]")
        Hearth::Validator.validate!(input[:reservoir_quota_ttl], ::Time, context: "#{context}[:reservoir_quota_ttl]")
        Hearth::Validator.validate!(input[:interval], ::Integer, context: "#{context}[:interval]")
      end
    end

    class SamplingTargetDocumentList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SamplingTargetDocument.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Segment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Segment, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:document], ::String, context: "#{context}[:document]")
      end
    end

    class SegmentList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Segment.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Service
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Service, context: context)
        Hearth::Validator.validate!(input[:reference_id], ::Integer, context: "#{context}[:reference_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::ServiceNames.validate!(input[:names], context: "#{context}[:names]") unless input[:names].nil?
        Hearth::Validator.validate!(input[:root], ::TrueClass, ::FalseClass, context: "#{context}[:root]")
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Validators::EdgeList.validate!(input[:edges], context: "#{context}[:edges]") unless input[:edges].nil?
        Validators::ServiceStatistics.validate!(input[:summary_statistics], context: "#{context}[:summary_statistics]") unless input[:summary_statistics].nil?
        Validators::Histogram.validate!(input[:duration_histogram], context: "#{context}[:duration_histogram]") unless input[:duration_histogram].nil?
        Validators::Histogram.validate!(input[:response_time_histogram], context: "#{context}[:response_time_histogram]") unless input[:response_time_histogram].nil?
      end
    end

    class ServiceId
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceId, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::ServiceNames.validate!(input[:names], context: "#{context}[:names]") unless input[:names].nil?
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class ServiceIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ServiceId.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ServiceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Service.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ServiceNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ServiceStatistics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceStatistics, context: context)
        Hearth::Validator.validate!(input[:ok_count], ::Integer, context: "#{context}[:ok_count]")
        Validators::ErrorStatistics.validate!(input[:error_statistics], context: "#{context}[:error_statistics]") unless input[:error_statistics].nil?
        Validators::FaultStatistics.validate!(input[:fault_statistics], context: "#{context}[:fault_statistics]") unless input[:fault_statistics].nil?
        Hearth::Validator.validate!(input[:total_count], ::Integer, context: "#{context}[:total_count]")
        Hearth::Validator.validate!(input[:total_response_time], ::Float, context: "#{context}[:total_response_time]")
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class TagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class TelemetryRecord
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TelemetryRecord, context: context)
        Hearth::Validator.validate!(input[:timestamp], ::Time, context: "#{context}[:timestamp]")
        Hearth::Validator.validate!(input[:segments_received_count], ::Integer, context: "#{context}[:segments_received_count]")
        Hearth::Validator.validate!(input[:segments_sent_count], ::Integer, context: "#{context}[:segments_sent_count]")
        Hearth::Validator.validate!(input[:segments_spillover_count], ::Integer, context: "#{context}[:segments_spillover_count]")
        Hearth::Validator.validate!(input[:segments_rejected_count], ::Integer, context: "#{context}[:segments_rejected_count]")
        Validators::BackendConnectionErrors.validate!(input[:backend_connection_errors], context: "#{context}[:backend_connection_errors]") unless input[:backend_connection_errors].nil?
      end
    end

    class TelemetryRecordList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::TelemetryRecord.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ThrottledException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottledException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TimeSeriesServiceStatistics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TimeSeriesServiceStatistics, context: context)
        Hearth::Validator.validate!(input[:timestamp], ::Time, context: "#{context}[:timestamp]")
        Validators::EdgeStatistics.validate!(input[:edge_summary_statistics], context: "#{context}[:edge_summary_statistics]") unless input[:edge_summary_statistics].nil?
        Validators::ServiceStatistics.validate!(input[:service_summary_statistics], context: "#{context}[:service_summary_statistics]") unless input[:service_summary_statistics].nil?
        Validators::ForecastStatistics.validate!(input[:service_forecast_statistics], context: "#{context}[:service_forecast_statistics]") unless input[:service_forecast_statistics].nil?
        Validators::Histogram.validate!(input[:response_time_histogram], context: "#{context}[:response_time_histogram]") unless input[:response_time_histogram].nil?
      end
    end

    class TimeSeriesServiceStatisticsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::TimeSeriesServiceStatistics.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TooManyTagsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyTagsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
      end
    end

    class Trace
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Trace, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:duration], ::Float, context: "#{context}[:duration]")
        Hearth::Validator.validate!(input[:limit_exceeded], ::TrueClass, ::FalseClass, context: "#{context}[:limit_exceeded]")
        Validators::SegmentList.validate!(input[:segments], context: "#{context}[:segments]") unless input[:segments].nil?
      end
    end

    class TraceAvailabilityZones
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AvailabilityZoneDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TraceIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TraceInstanceIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::InstanceIdDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TraceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Trace.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TraceResourceARNs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ResourceARNDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TraceSegmentDocumentList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TraceSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TraceSummary, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:duration], ::Float, context: "#{context}[:duration]")
        Hearth::Validator.validate!(input[:response_time], ::Float, context: "#{context}[:response_time]")
        Hearth::Validator.validate!(input[:has_fault], ::TrueClass, ::FalseClass, context: "#{context}[:has_fault]")
        Hearth::Validator.validate!(input[:has_error], ::TrueClass, ::FalseClass, context: "#{context}[:has_error]")
        Hearth::Validator.validate!(input[:has_throttle], ::TrueClass, ::FalseClass, context: "#{context}[:has_throttle]")
        Hearth::Validator.validate!(input[:is_partial], ::TrueClass, ::FalseClass, context: "#{context}[:is_partial]")
        Validators::Http.validate!(input[:http], context: "#{context}[:http]") unless input[:http].nil?
        Validators::Annotations.validate!(input[:annotations], context: "#{context}[:annotations]") unless input[:annotations].nil?
        Validators::TraceUsers.validate!(input[:users], context: "#{context}[:users]") unless input[:users].nil?
        Validators::ServiceIds.validate!(input[:service_ids], context: "#{context}[:service_ids]") unless input[:service_ids].nil?
        Validators::TraceResourceARNs.validate!(input[:resource_ar_ns], context: "#{context}[:resource_ar_ns]") unless input[:resource_ar_ns].nil?
        Validators::TraceInstanceIds.validate!(input[:instance_ids], context: "#{context}[:instance_ids]") unless input[:instance_ids].nil?
        Validators::TraceAvailabilityZones.validate!(input[:availability_zones], context: "#{context}[:availability_zones]") unless input[:availability_zones].nil?
        Validators::ServiceId.validate!(input[:entry_point], context: "#{context}[:entry_point]") unless input[:entry_point].nil?
        Validators::FaultRootCauses.validate!(input[:fault_root_causes], context: "#{context}[:fault_root_causes]") unless input[:fault_root_causes].nil?
        Validators::ErrorRootCauses.validate!(input[:error_root_causes], context: "#{context}[:error_root_causes]") unless input[:error_root_causes].nil?
        Validators::ResponseTimeRootCauses.validate!(input[:response_time_root_causes], context: "#{context}[:response_time_root_causes]") unless input[:response_time_root_causes].nil?
        Hearth::Validator.validate!(input[:revision], ::Integer, context: "#{context}[:revision]")
        Hearth::Validator.validate!(input[:matched_event_time], ::Time, context: "#{context}[:matched_event_time]")
      end
    end

    class TraceSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::TraceSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TraceUser
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TraceUser, context: context)
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Validators::ServiceIds.validate!(input[:service_ids], context: "#{context}[:service_ids]") unless input[:service_ids].nil?
      end
    end

    class TraceUsers
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::TraceUser.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UnprocessedStatistics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnprocessedStatistics, context: context)
        Hearth::Validator.validate!(input[:rule_name], ::String, context: "#{context}[:rule_name]")
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UnprocessedStatisticsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::UnprocessedStatistics.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UnprocessedTraceIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class UnprocessedTraceSegment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnprocessedTraceSegment, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UnprocessedTraceSegmentList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::UnprocessedTraceSegment.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateGroupInput, context: context)
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Hearth::Validator.validate!(input[:group_arn], ::String, context: "#{context}[:group_arn]")
        Hearth::Validator.validate!(input[:filter_expression], ::String, context: "#{context}[:filter_expression]")
        Validators::InsightsConfiguration.validate!(input[:insights_configuration], context: "#{context}[:insights_configuration]") unless input[:insights_configuration].nil?
      end
    end

    class UpdateGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateGroupOutput, context: context)
        Validators::Group.validate!(input[:group], context: "#{context}[:group]") unless input[:group].nil?
      end
    end

    class UpdateSamplingRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSamplingRuleInput, context: context)
        Validators::SamplingRuleUpdate.validate!(input[:sampling_rule_update], context: "#{context}[:sampling_rule_update]") unless input[:sampling_rule_update].nil?
      end
    end

    class UpdateSamplingRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSamplingRuleOutput, context: context)
        Validators::SamplingRuleRecord.validate!(input[:sampling_rule_record], context: "#{context}[:sampling_rule_record]") unless input[:sampling_rule_record].nil?
      end
    end

    class ValueWithServiceIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValueWithServiceIds, context: context)
        Validators::AnnotationValue.validate!(input[:annotation_value], context: "#{context}[:annotation_value]") unless input[:annotation_value].nil?
        Validators::ServiceIds.validate!(input[:service_ids], context: "#{context}[:service_ids]") unless input[:service_ids].nil?
      end
    end

    class ValuesWithServiceIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ValueWithServiceIds.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

  end
end
