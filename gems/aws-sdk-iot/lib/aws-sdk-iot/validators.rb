# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::IoT
  module Validators

    class AbortConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AbortConfig, context: context)
        Validators::AbortCriteriaList.validate!(input[:criteria_list], context: "#{context}[:criteria_list]") unless input[:criteria_list].nil?
      end
    end

    class AbortCriteria
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AbortCriteria, context: context)
        Hearth::Validator.validate!(input[:failure_type], ::String, context: "#{context}[:failure_type]")
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
        Hearth::Validator.validate!(input[:threshold_percentage], ::Float, context: "#{context}[:threshold_percentage]")
        Hearth::Validator.validate!(input[:min_number_of_executed_things], ::Integer, context: "#{context}[:min_number_of_executed_things]")
      end
    end

    class AbortCriteriaList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AbortCriteria.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AcceptCertificateTransferInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AcceptCertificateTransferInput, context: context)
        Hearth::Validator.validate!(input[:certificate_id], ::String, context: "#{context}[:certificate_id]")
        Hearth::Validator.validate!(input[:set_as_active], ::TrueClass, ::FalseClass, context: "#{context}[:set_as_active]")
      end
    end

    class AcceptCertificateTransferOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AcceptCertificateTransferOutput, context: context)
      end
    end

    class Action
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Action, context: context)
        Validators::DynamoDBAction.validate!(input[:dynamo_db], context: "#{context}[:dynamo_db]") unless input[:dynamo_db].nil?
        Validators::DynamoDBv2Action.validate!(input[:dynamo_d_bv2], context: "#{context}[:dynamo_d_bv2]") unless input[:dynamo_d_bv2].nil?
        Validators::LambdaAction.validate!(input[:lambda], context: "#{context}[:lambda]") unless input[:lambda].nil?
        Validators::SnsAction.validate!(input[:sns], context: "#{context}[:sns]") unless input[:sns].nil?
        Validators::SqsAction.validate!(input[:sqs], context: "#{context}[:sqs]") unless input[:sqs].nil?
        Validators::KinesisAction.validate!(input[:kinesis], context: "#{context}[:kinesis]") unless input[:kinesis].nil?
        Validators::RepublishAction.validate!(input[:republish], context: "#{context}[:republish]") unless input[:republish].nil?
        Validators::S3Action.validate!(input[:s3], context: "#{context}[:s3]") unless input[:s3].nil?
        Validators::FirehoseAction.validate!(input[:firehose], context: "#{context}[:firehose]") unless input[:firehose].nil?
        Validators::CloudwatchMetricAction.validate!(input[:cloudwatch_metric], context: "#{context}[:cloudwatch_metric]") unless input[:cloudwatch_metric].nil?
        Validators::CloudwatchAlarmAction.validate!(input[:cloudwatch_alarm], context: "#{context}[:cloudwatch_alarm]") unless input[:cloudwatch_alarm].nil?
        Validators::CloudwatchLogsAction.validate!(input[:cloudwatch_logs], context: "#{context}[:cloudwatch_logs]") unless input[:cloudwatch_logs].nil?
        Validators::ElasticsearchAction.validate!(input[:elasticsearch], context: "#{context}[:elasticsearch]") unless input[:elasticsearch].nil?
        Validators::SalesforceAction.validate!(input[:salesforce], context: "#{context}[:salesforce]") unless input[:salesforce].nil?
        Validators::IotAnalyticsAction.validate!(input[:iot_analytics], context: "#{context}[:iot_analytics]") unless input[:iot_analytics].nil?
        Validators::IotEventsAction.validate!(input[:iot_events], context: "#{context}[:iot_events]") unless input[:iot_events].nil?
        Validators::IotSiteWiseAction.validate!(input[:iot_site_wise], context: "#{context}[:iot_site_wise]") unless input[:iot_site_wise].nil?
        Validators::StepFunctionsAction.validate!(input[:step_functions], context: "#{context}[:step_functions]") unless input[:step_functions].nil?
        Validators::TimestreamAction.validate!(input[:timestream], context: "#{context}[:timestream]") unless input[:timestream].nil?
        Validators::HttpAction.validate!(input[:http], context: "#{context}[:http]") unless input[:http].nil?
        Validators::KafkaAction.validate!(input[:kafka], context: "#{context}[:kafka]") unless input[:kafka].nil?
        Validators::OpenSearchAction.validate!(input[:open_search], context: "#{context}[:open_search]") unless input[:open_search].nil?
      end
    end

    class ActionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Action.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ActiveViolation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActiveViolation, context: context)
        Hearth::Validator.validate!(input[:violation_id], ::String, context: "#{context}[:violation_id]")
        Hearth::Validator.validate!(input[:thing_name], ::String, context: "#{context}[:thing_name]")
        Hearth::Validator.validate!(input[:security_profile_name], ::String, context: "#{context}[:security_profile_name]")
        Validators::Behavior.validate!(input[:behavior], context: "#{context}[:behavior]") unless input[:behavior].nil?
        Validators::MetricValue.validate!(input[:last_violation_value], context: "#{context}[:last_violation_value]") unless input[:last_violation_value].nil?
        Validators::ViolationEventAdditionalInfo.validate!(input[:violation_event_additional_info], context: "#{context}[:violation_event_additional_info]") unless input[:violation_event_additional_info].nil?
        Hearth::Validator.validate!(input[:verification_state], ::String, context: "#{context}[:verification_state]")
        Hearth::Validator.validate!(input[:verification_state_description], ::String, context: "#{context}[:verification_state_description]")
        Hearth::Validator.validate!(input[:last_violation_time], ::Time, context: "#{context}[:last_violation_time]")
        Hearth::Validator.validate!(input[:violation_start_time], ::Time, context: "#{context}[:violation_start_time]")
      end
    end

    class ActiveViolations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ActiveViolation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AddThingToBillingGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddThingToBillingGroupInput, context: context)
        Hearth::Validator.validate!(input[:billing_group_name], ::String, context: "#{context}[:billing_group_name]")
        Hearth::Validator.validate!(input[:billing_group_arn], ::String, context: "#{context}[:billing_group_arn]")
        Hearth::Validator.validate!(input[:thing_name], ::String, context: "#{context}[:thing_name]")
        Hearth::Validator.validate!(input[:thing_arn], ::String, context: "#{context}[:thing_arn]")
      end
    end

    class AddThingToBillingGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddThingToBillingGroupOutput, context: context)
      end
    end

    class AddThingToThingGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddThingToThingGroupInput, context: context)
        Hearth::Validator.validate!(input[:thing_group_name], ::String, context: "#{context}[:thing_group_name]")
        Hearth::Validator.validate!(input[:thing_group_arn], ::String, context: "#{context}[:thing_group_arn]")
        Hearth::Validator.validate!(input[:thing_name], ::String, context: "#{context}[:thing_name]")
        Hearth::Validator.validate!(input[:thing_arn], ::String, context: "#{context}[:thing_arn]")
        Hearth::Validator.validate!(input[:override_dynamic_groups], ::TrueClass, ::FalseClass, context: "#{context}[:override_dynamic_groups]")
      end
    end

    class AddThingToThingGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddThingToThingGroupOutput, context: context)
      end
    end

    class AddThingsToThingGroupParams
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddThingsToThingGroupParams, context: context)
        Validators::ThingGroupNames.validate!(input[:thing_group_names], context: "#{context}[:thing_group_names]") unless input[:thing_group_names].nil?
        Hearth::Validator.validate!(input[:override_dynamic_groups], ::TrueClass, ::FalseClass, context: "#{context}[:override_dynamic_groups]")
      end
    end

    class AdditionalMetricsToRetainList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AdditionalMetricsToRetainV2List
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::MetricToRetain.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AdditionalParameterMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class AggregationType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AggregationType, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::AggregationTypeValues.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class AggregationTypeValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AlertTarget
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AlertTarget, context: context)
        Hearth::Validator.validate!(input[:alert_target_arn], ::String, context: "#{context}[:alert_target_arn]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
      end
    end

    class AlertTargets
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::AlertTarget.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class Allowed
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Allowed, context: context)
        Validators::Policies.validate!(input[:policies], context: "#{context}[:policies]") unless input[:policies].nil?
      end
    end

    class AssetPropertyTimestamp
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssetPropertyTimestamp, context: context)
        Hearth::Validator.validate!(input[:time_in_seconds], ::String, context: "#{context}[:time_in_seconds]")
        Hearth::Validator.validate!(input[:offset_in_nanos], ::String, context: "#{context}[:offset_in_nanos]")
      end
    end

    class AssetPropertyValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssetPropertyValue, context: context)
        Validators::AssetPropertyVariant.validate!(input[:value], context: "#{context}[:value]") unless input[:value].nil?
        Validators::AssetPropertyTimestamp.validate!(input[:timestamp], context: "#{context}[:timestamp]") unless input[:timestamp].nil?
        Hearth::Validator.validate!(input[:quality], ::String, context: "#{context}[:quality]")
      end
    end

    class AssetPropertyValueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AssetPropertyValue.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AssetPropertyVariant
      def self.validate!(input, context:)
        case input
        when Types::AssetPropertyVariant::StringValue
          Hearth::Validator.validate!(input.__getobj__, ::String, context: context)
        when Types::AssetPropertyVariant::IntegerValue
          Hearth::Validator.validate!(input.__getobj__, ::String, context: context)
        when Types::AssetPropertyVariant::DoubleValue
          Hearth::Validator.validate!(input.__getobj__, ::String, context: context)
        when Types::AssetPropertyVariant::BooleanValue
          Hearth::Validator.validate!(input.__getobj__, ::String, context: context)
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::AssetPropertyVariant, got #{input.class}."
        end
      end

      class StringValue
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::String, context: context)
        end
      end

      class IntegerValue
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::String, context: context)
        end
      end

      class DoubleValue
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::String, context: context)
        end
      end

      class BooleanValue
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::String, context: context)
        end
      end
    end

    class AssociateTargetsWithJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateTargetsWithJobInput, context: context)
        Validators::JobTargets.validate!(input[:targets], context: "#{context}[:targets]") unless input[:targets].nil?
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:comment], ::String, context: "#{context}[:comment]")
        Hearth::Validator.validate!(input[:namespace_id], ::String, context: "#{context}[:namespace_id]")
      end
    end

    class AssociateTargetsWithJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateTargetsWithJobOutput, context: context)
        Hearth::Validator.validate!(input[:job_arn], ::String, context: "#{context}[:job_arn]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class AttachPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttachPolicyInput, context: context)
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
        Hearth::Validator.validate!(input[:target], ::String, context: "#{context}[:target]")
      end
    end

    class AttachPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttachPolicyOutput, context: context)
      end
    end

    class AttachPrincipalPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttachPrincipalPolicyInput, context: context)
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
        Hearth::Validator.validate!(input[:principal], ::String, context: "#{context}[:principal]")
      end
    end

    class AttachPrincipalPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttachPrincipalPolicyOutput, context: context)
      end
    end

    class AttachSecurityProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttachSecurityProfileInput, context: context)
        Hearth::Validator.validate!(input[:security_profile_name], ::String, context: "#{context}[:security_profile_name]")
        Hearth::Validator.validate!(input[:security_profile_target_arn], ::String, context: "#{context}[:security_profile_target_arn]")
      end
    end

    class AttachSecurityProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttachSecurityProfileOutput, context: context)
      end
    end

    class AttachThingPrincipalInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttachThingPrincipalInput, context: context)
        Hearth::Validator.validate!(input[:thing_name], ::String, context: "#{context}[:thing_name]")
        Hearth::Validator.validate!(input[:principal], ::String, context: "#{context}[:principal]")
      end
    end

    class AttachThingPrincipalOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttachThingPrincipalOutput, context: context)
      end
    end

    class AttributePayload
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttributePayload, context: context)
        Validators::Attributes.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
        Hearth::Validator.validate!(input[:merge], ::TrueClass, ::FalseClass, context: "#{context}[:merge]")
      end
    end

    class Attributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class AttributesMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class AuditCheckConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AuditCheckConfiguration, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
      end
    end

    class AuditCheckConfigurations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::AuditCheckConfiguration.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class AuditCheckDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AuditCheckDetails, context: context)
        Hearth::Validator.validate!(input[:check_run_status], ::String, context: "#{context}[:check_run_status]")
        Hearth::Validator.validate!(input[:check_compliant], ::TrueClass, ::FalseClass, context: "#{context}[:check_compliant]")
        Hearth::Validator.validate!(input[:total_resources_count], ::Integer, context: "#{context}[:total_resources_count]")
        Hearth::Validator.validate!(input[:non_compliant_resources_count], ::Integer, context: "#{context}[:non_compliant_resources_count]")
        Hearth::Validator.validate!(input[:suppressed_non_compliant_resources_count], ::Integer, context: "#{context}[:suppressed_non_compliant_resources_count]")
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AuditCheckToActionsMapping
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::MitigationActionNameList.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class AuditCheckToReasonCodeFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::ReasonForNonComplianceCodes.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class AuditDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::AuditCheckDetails.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class AuditFinding
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AuditFinding, context: context)
        Hearth::Validator.validate!(input[:finding_id], ::String, context: "#{context}[:finding_id]")
        Hearth::Validator.validate!(input[:task_id], ::String, context: "#{context}[:task_id]")
        Hearth::Validator.validate!(input[:check_name], ::String, context: "#{context}[:check_name]")
        Hearth::Validator.validate!(input[:task_start_time], ::Time, context: "#{context}[:task_start_time]")
        Hearth::Validator.validate!(input[:finding_time], ::Time, context: "#{context}[:finding_time]")
        Hearth::Validator.validate!(input[:severity], ::String, context: "#{context}[:severity]")
        Validators::NonCompliantResource.validate!(input[:non_compliant_resource], context: "#{context}[:non_compliant_resource]") unless input[:non_compliant_resource].nil?
        Validators::RelatedResources.validate!(input[:related_resources], context: "#{context}[:related_resources]") unless input[:related_resources].nil?
        Hearth::Validator.validate!(input[:reason_for_non_compliance], ::String, context: "#{context}[:reason_for_non_compliance]")
        Hearth::Validator.validate!(input[:reason_for_non_compliance_code], ::String, context: "#{context}[:reason_for_non_compliance_code]")
        Hearth::Validator.validate!(input[:is_suppressed], ::TrueClass, ::FalseClass, context: "#{context}[:is_suppressed]")
      end
    end

    class AuditFindings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AuditFinding.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AuditMitigationActionExecutionMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AuditMitigationActionExecutionMetadata, context: context)
        Hearth::Validator.validate!(input[:task_id], ::String, context: "#{context}[:task_id]")
        Hearth::Validator.validate!(input[:finding_id], ::String, context: "#{context}[:finding_id]")
        Hearth::Validator.validate!(input[:action_name], ::String, context: "#{context}[:action_name]")
        Hearth::Validator.validate!(input[:action_id], ::String, context: "#{context}[:action_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AuditMitigationActionExecutionMetadataList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AuditMitigationActionExecutionMetadata.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AuditMitigationActionsTaskMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AuditMitigationActionsTaskMetadata, context: context)
        Hearth::Validator.validate!(input[:task_id], ::String, context: "#{context}[:task_id]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:task_status], ::String, context: "#{context}[:task_status]")
      end
    end

    class AuditMitigationActionsTaskMetadataList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AuditMitigationActionsTaskMetadata.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AuditMitigationActionsTaskStatistics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::TaskStatisticsForAuditCheck.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class AuditMitigationActionsTaskTarget
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AuditMitigationActionsTaskTarget, context: context)
        Hearth::Validator.validate!(input[:audit_task_id], ::String, context: "#{context}[:audit_task_id]")
        Validators::FindingIds.validate!(input[:finding_ids], context: "#{context}[:finding_ids]") unless input[:finding_ids].nil?
        Validators::AuditCheckToReasonCodeFilter.validate!(input[:audit_check_to_reason_code_filter], context: "#{context}[:audit_check_to_reason_code_filter]") unless input[:audit_check_to_reason_code_filter].nil?
      end
    end

    class AuditNotificationTarget
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AuditNotificationTarget, context: context)
        Hearth::Validator.validate!(input[:target_arn], ::String, context: "#{context}[:target_arn]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
      end
    end

    class AuditNotificationTargetConfigurations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::AuditNotificationTarget.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class AuditSuppression
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AuditSuppression, context: context)
        Hearth::Validator.validate!(input[:check_name], ::String, context: "#{context}[:check_name]")
        Validators::ResourceIdentifier.validate!(input[:resource_identifier], context: "#{context}[:resource_identifier]") unless input[:resource_identifier].nil?
        Hearth::Validator.validate!(input[:expiration_date], ::Time, context: "#{context}[:expiration_date]")
        Hearth::Validator.validate!(input[:suppress_indefinitely], ::TrueClass, ::FalseClass, context: "#{context}[:suppress_indefinitely]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class AuditSuppressionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AuditSuppression.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AuditTaskMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AuditTaskMetadata, context: context)
        Hearth::Validator.validate!(input[:task_id], ::String, context: "#{context}[:task_id]")
        Hearth::Validator.validate!(input[:task_status], ::String, context: "#{context}[:task_status]")
        Hearth::Validator.validate!(input[:task_type], ::String, context: "#{context}[:task_type]")
      end
    end

    class AuditTaskMetadataList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AuditTaskMetadata.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AuthInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AuthInfo, context: context)
        Hearth::Validator.validate!(input[:action_type], ::String, context: "#{context}[:action_type]")
        Validators::Resources.validate!(input[:resources], context: "#{context}[:resources]") unless input[:resources].nil?
      end
    end

    class AuthInfos
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AuthInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AuthResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AuthResult, context: context)
        Validators::AuthInfo.validate!(input[:auth_info], context: "#{context}[:auth_info]") unless input[:auth_info].nil?
        Validators::Allowed.validate!(input[:allowed], context: "#{context}[:allowed]") unless input[:allowed].nil?
        Validators::Denied.validate!(input[:denied], context: "#{context}[:denied]") unless input[:denied].nil?
        Hearth::Validator.validate!(input[:auth_decision], ::String, context: "#{context}[:auth_decision]")
        Validators::MissingContextValues.validate!(input[:missing_context_values], context: "#{context}[:missing_context_values]") unless input[:missing_context_values].nil?
      end
    end

    class AuthResults
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AuthResult.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AuthorizerConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AuthorizerConfig, context: context)
        Hearth::Validator.validate!(input[:default_authorizer_name], ::String, context: "#{context}[:default_authorizer_name]")
        Hearth::Validator.validate!(input[:allow_authorizer_override], ::TrueClass, ::FalseClass, context: "#{context}[:allow_authorizer_override]")
      end
    end

    class AuthorizerDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AuthorizerDescription, context: context)
        Hearth::Validator.validate!(input[:authorizer_name], ::String, context: "#{context}[:authorizer_name]")
        Hearth::Validator.validate!(input[:authorizer_arn], ::String, context: "#{context}[:authorizer_arn]")
        Hearth::Validator.validate!(input[:authorizer_function_arn], ::String, context: "#{context}[:authorizer_function_arn]")
        Hearth::Validator.validate!(input[:token_key_name], ::String, context: "#{context}[:token_key_name]")
        Validators::PublicKeyMap.validate!(input[:token_signing_public_keys], context: "#{context}[:token_signing_public_keys]") unless input[:token_signing_public_keys].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:last_modified_date], ::Time, context: "#{context}[:last_modified_date]")
        Hearth::Validator.validate!(input[:signing_disabled], ::TrueClass, ::FalseClass, context: "#{context}[:signing_disabled]")
        Hearth::Validator.validate!(input[:enable_caching_for_http], ::TrueClass, ::FalseClass, context: "#{context}[:enable_caching_for_http]")
      end
    end

    class AuthorizerSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AuthorizerSummary, context: context)
        Hearth::Validator.validate!(input[:authorizer_name], ::String, context: "#{context}[:authorizer_name]")
        Hearth::Validator.validate!(input[:authorizer_arn], ::String, context: "#{context}[:authorizer_arn]")
      end
    end

    class Authorizers
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AuthorizerSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsJobAbortConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsJobAbortConfig, context: context)
        Validators::AwsJobAbortCriteriaList.validate!(input[:abort_criteria_list], context: "#{context}[:abort_criteria_list]") unless input[:abort_criteria_list].nil?
      end
    end

    class AwsJobAbortCriteria
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsJobAbortCriteria, context: context)
        Hearth::Validator.validate!(input[:failure_type], ::String, context: "#{context}[:failure_type]")
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
        Hearth::Validator.validate!(input[:threshold_percentage], ::Float, context: "#{context}[:threshold_percentage]")
        Hearth::Validator.validate!(input[:min_number_of_executed_things], ::Integer, context: "#{context}[:min_number_of_executed_things]")
      end
    end

    class AwsJobAbortCriteriaList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsJobAbortCriteria.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsJobExecutionsRolloutConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsJobExecutionsRolloutConfig, context: context)
        Hearth::Validator.validate!(input[:maximum_per_minute], ::Integer, context: "#{context}[:maximum_per_minute]")
        Validators::AwsJobExponentialRolloutRate.validate!(input[:exponential_rate], context: "#{context}[:exponential_rate]") unless input[:exponential_rate].nil?
      end
    end

    class AwsJobExponentialRolloutRate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsJobExponentialRolloutRate, context: context)
        Hearth::Validator.validate!(input[:base_rate_per_minute], ::Integer, context: "#{context}[:base_rate_per_minute]")
        Hearth::Validator.validate!(input[:increment_factor], ::Float, context: "#{context}[:increment_factor]")
        Validators::AwsJobRateIncreaseCriteria.validate!(input[:rate_increase_criteria], context: "#{context}[:rate_increase_criteria]") unless input[:rate_increase_criteria].nil?
      end
    end

    class AwsJobPresignedUrlConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsJobPresignedUrlConfig, context: context)
        Hearth::Validator.validate!(input[:expires_in_sec], ::Integer, context: "#{context}[:expires_in_sec]")
      end
    end

    class AwsJobRateIncreaseCriteria
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsJobRateIncreaseCriteria, context: context)
        Hearth::Validator.validate!(input[:number_of_notified_things], ::Integer, context: "#{context}[:number_of_notified_things]")
        Hearth::Validator.validate!(input[:number_of_succeeded_things], ::Integer, context: "#{context}[:number_of_succeeded_things]")
      end
    end

    class AwsJobTimeoutConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsJobTimeoutConfig, context: context)
        Hearth::Validator.validate!(input[:in_progress_timeout_in_minutes], ::Integer, context: "#{context}[:in_progress_timeout_in_minutes]")
      end
    end

    class Behavior
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Behavior, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:metric], ::String, context: "#{context}[:metric]")
        Validators::MetricDimension.validate!(input[:metric_dimension], context: "#{context}[:metric_dimension]") unless input[:metric_dimension].nil?
        Validators::BehaviorCriteria.validate!(input[:criteria], context: "#{context}[:criteria]") unless input[:criteria].nil?
        Hearth::Validator.validate!(input[:suppress_alerts], ::TrueClass, ::FalseClass, context: "#{context}[:suppress_alerts]")
      end
    end

    class BehaviorCriteria
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BehaviorCriteria, context: context)
        Hearth::Validator.validate!(input[:comparison_operator], ::String, context: "#{context}[:comparison_operator]")
        Validators::MetricValue.validate!(input[:value], context: "#{context}[:value]") unless input[:value].nil?
        Hearth::Validator.validate!(input[:duration_seconds], ::Integer, context: "#{context}[:duration_seconds]")
        Hearth::Validator.validate!(input[:consecutive_datapoints_to_alarm], ::Integer, context: "#{context}[:consecutive_datapoints_to_alarm]")
        Hearth::Validator.validate!(input[:consecutive_datapoints_to_clear], ::Integer, context: "#{context}[:consecutive_datapoints_to_clear]")
        Validators::StatisticalThreshold.validate!(input[:statistical_threshold], context: "#{context}[:statistical_threshold]") unless input[:statistical_threshold].nil?
        Validators::MachineLearningDetectionConfig.validate!(input[:ml_detection_config], context: "#{context}[:ml_detection_config]") unless input[:ml_detection_config].nil?
      end
    end

    class BehaviorModelTrainingSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::BehaviorModelTrainingSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BehaviorModelTrainingSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BehaviorModelTrainingSummary, context: context)
        Hearth::Validator.validate!(input[:security_profile_name], ::String, context: "#{context}[:security_profile_name]")
        Hearth::Validator.validate!(input[:behavior_name], ::String, context: "#{context}[:behavior_name]")
        Hearth::Validator.validate!(input[:training_data_collection_start_date], ::Time, context: "#{context}[:training_data_collection_start_date]")
        Hearth::Validator.validate!(input[:model_status], ::String, context: "#{context}[:model_status]")
        Hearth::Validator.validate!(input[:datapoints_collection_percentage], ::Float, context: "#{context}[:datapoints_collection_percentage]")
        Hearth::Validator.validate!(input[:last_model_refresh_date], ::Time, context: "#{context}[:last_model_refresh_date]")
      end
    end

    class Behaviors
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Behavior.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BillingGroupMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BillingGroupMetadata, context: context)
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
      end
    end

    class BillingGroupNameAndArnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::GroupNameAndArn.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BillingGroupProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BillingGroupProperties, context: context)
        Hearth::Validator.validate!(input[:billing_group_description], ::String, context: "#{context}[:billing_group_description]")
      end
    end

    class Bucket
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Bucket, context: context)
        Hearth::Validator.validate!(input[:key_value], ::String, context: "#{context}[:key_value]")
        Hearth::Validator.validate!(input[:count], ::Integer, context: "#{context}[:count]")
      end
    end

    class Buckets
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Bucket.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BucketsAggregationType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BucketsAggregationType, context: context)
        Validators::TermsAggregation.validate!(input[:terms_aggregation], context: "#{context}[:terms_aggregation]") unless input[:terms_aggregation].nil?
      end
    end

    class CACertificate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CACertificate, context: context)
        Hearth::Validator.validate!(input[:certificate_arn], ::String, context: "#{context}[:certificate_arn]")
        Hearth::Validator.validate!(input[:certificate_id], ::String, context: "#{context}[:certificate_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
      end
    end

    class CACertificateDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CACertificateDescription, context: context)
        Hearth::Validator.validate!(input[:certificate_arn], ::String, context: "#{context}[:certificate_arn]")
        Hearth::Validator.validate!(input[:certificate_id], ::String, context: "#{context}[:certificate_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:certificate_pem], ::String, context: "#{context}[:certificate_pem]")
        Hearth::Validator.validate!(input[:owned_by], ::String, context: "#{context}[:owned_by]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:auto_registration_status], ::String, context: "#{context}[:auto_registration_status]")
        Hearth::Validator.validate!(input[:last_modified_date], ::Time, context: "#{context}[:last_modified_date]")
        Hearth::Validator.validate!(input[:customer_version], ::Integer, context: "#{context}[:customer_version]")
        Hearth::Validator.validate!(input[:generation_id], ::String, context: "#{context}[:generation_id]")
        Validators::CertificateValidity.validate!(input[:validity], context: "#{context}[:validity]") unless input[:validity].nil?
      end
    end

    class CACertificates
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::CACertificate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CancelAuditMitigationActionsTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelAuditMitigationActionsTaskInput, context: context)
        Hearth::Validator.validate!(input[:task_id], ::String, context: "#{context}[:task_id]")
      end
    end

    class CancelAuditMitigationActionsTaskOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelAuditMitigationActionsTaskOutput, context: context)
      end
    end

    class CancelAuditTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelAuditTaskInput, context: context)
        Hearth::Validator.validate!(input[:task_id], ::String, context: "#{context}[:task_id]")
      end
    end

    class CancelAuditTaskOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelAuditTaskOutput, context: context)
      end
    end

    class CancelCertificateTransferInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelCertificateTransferInput, context: context)
        Hearth::Validator.validate!(input[:certificate_id], ::String, context: "#{context}[:certificate_id]")
      end
    end

    class CancelCertificateTransferOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelCertificateTransferOutput, context: context)
      end
    end

    class CancelDetectMitigationActionsTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelDetectMitigationActionsTaskInput, context: context)
        Hearth::Validator.validate!(input[:task_id], ::String, context: "#{context}[:task_id]")
      end
    end

    class CancelDetectMitigationActionsTaskOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelDetectMitigationActionsTaskOutput, context: context)
      end
    end

    class CancelJobExecutionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelJobExecutionInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:thing_name], ::String, context: "#{context}[:thing_name]")
        Hearth::Validator.validate!(input[:force], ::TrueClass, ::FalseClass, context: "#{context}[:force]")
        Hearth::Validator.validate!(input[:expected_version], ::Integer, context: "#{context}[:expected_version]")
        Validators::DetailsMap.validate!(input[:status_details], context: "#{context}[:status_details]") unless input[:status_details].nil?
      end
    end

    class CancelJobExecutionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelJobExecutionOutput, context: context)
      end
    end

    class CancelJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelJobInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:reason_code], ::String, context: "#{context}[:reason_code]")
        Hearth::Validator.validate!(input[:comment], ::String, context: "#{context}[:comment]")
        Hearth::Validator.validate!(input[:force], ::TrueClass, ::FalseClass, context: "#{context}[:force]")
      end
    end

    class CancelJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelJobOutput, context: context)
        Hearth::Validator.validate!(input[:job_arn], ::String, context: "#{context}[:job_arn]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class Certificate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Certificate, context: context)
        Hearth::Validator.validate!(input[:certificate_arn], ::String, context: "#{context}[:certificate_arn]")
        Hearth::Validator.validate!(input[:certificate_id], ::String, context: "#{context}[:certificate_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:certificate_mode], ::String, context: "#{context}[:certificate_mode]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
      end
    end

    class CertificateConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CertificateConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CertificateDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CertificateDescription, context: context)
        Hearth::Validator.validate!(input[:certificate_arn], ::String, context: "#{context}[:certificate_arn]")
        Hearth::Validator.validate!(input[:certificate_id], ::String, context: "#{context}[:certificate_id]")
        Hearth::Validator.validate!(input[:ca_certificate_id], ::String, context: "#{context}[:ca_certificate_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:certificate_pem], ::String, context: "#{context}[:certificate_pem]")
        Hearth::Validator.validate!(input[:owned_by], ::String, context: "#{context}[:owned_by]")
        Hearth::Validator.validate!(input[:previous_owned_by], ::String, context: "#{context}[:previous_owned_by]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:last_modified_date], ::Time, context: "#{context}[:last_modified_date]")
        Hearth::Validator.validate!(input[:customer_version], ::Integer, context: "#{context}[:customer_version]")
        Validators::TransferData.validate!(input[:transfer_data], context: "#{context}[:transfer_data]") unless input[:transfer_data].nil?
        Hearth::Validator.validate!(input[:generation_id], ::String, context: "#{context}[:generation_id]")
        Validators::CertificateValidity.validate!(input[:validity], context: "#{context}[:validity]") unless input[:validity].nil?
        Hearth::Validator.validate!(input[:certificate_mode], ::String, context: "#{context}[:certificate_mode]")
      end
    end

    class CertificateStateException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CertificateStateException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CertificateValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CertificateValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CertificateValidity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CertificateValidity, context: context)
        Hearth::Validator.validate!(input[:not_before], ::Time, context: "#{context}[:not_before]")
        Hearth::Validator.validate!(input[:not_after], ::Time, context: "#{context}[:not_after]")
      end
    end

    class Certificates
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Certificate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Cidrs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ClearDefaultAuthorizerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClearDefaultAuthorizerInput, context: context)
      end
    end

    class ClearDefaultAuthorizerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClearDefaultAuthorizerOutput, context: context)
      end
    end

    class ClientProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class CloudwatchAlarmAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudwatchAlarmAction, context: context)
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:alarm_name], ::String, context: "#{context}[:alarm_name]")
        Hearth::Validator.validate!(input[:state_reason], ::String, context: "#{context}[:state_reason]")
        Hearth::Validator.validate!(input[:state_value], ::String, context: "#{context}[:state_value]")
      end
    end

    class CloudwatchLogsAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudwatchLogsAction, context: context)
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:log_group_name], ::String, context: "#{context}[:log_group_name]")
      end
    end

    class CloudwatchMetricAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudwatchMetricAction, context: context)
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:metric_namespace], ::String, context: "#{context}[:metric_namespace]")
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        Hearth::Validator.validate!(input[:metric_value], ::String, context: "#{context}[:metric_value]")
        Hearth::Validator.validate!(input[:metric_unit], ::String, context: "#{context}[:metric_unit]")
        Hearth::Validator.validate!(input[:metric_timestamp], ::String, context: "#{context}[:metric_timestamp]")
      end
    end

    class CodeSigning
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CodeSigning, context: context)
        Hearth::Validator.validate!(input[:aws_signer_job_id], ::String, context: "#{context}[:aws_signer_job_id]")
        Validators::StartSigningJobParameter.validate!(input[:start_signing_job_parameter], context: "#{context}[:start_signing_job_parameter]") unless input[:start_signing_job_parameter].nil?
        Validators::CustomCodeSigning.validate!(input[:custom_code_signing], context: "#{context}[:custom_code_signing]") unless input[:custom_code_signing].nil?
      end
    end

    class CodeSigningCertificateChain
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CodeSigningCertificateChain, context: context)
        Hearth::Validator.validate!(input[:certificate_name], ::String, context: "#{context}[:certificate_name]")
        Hearth::Validator.validate!(input[:inline_document], ::String, context: "#{context}[:inline_document]")
      end
    end

    class CodeSigningSignature
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CodeSigningSignature, context: context)
        Hearth::Validator.validate!(input[:inline_document], ::String, context: "#{context}[:inline_document]")
      end
    end

    class Configuration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Configuration, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
      end
    end

    class ConfirmTopicRuleDestinationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfirmTopicRuleDestinationInput, context: context)
        Hearth::Validator.validate!(input[:confirmation_token], ::String, context: "#{context}[:confirmation_token]")
      end
    end

    class ConfirmTopicRuleDestinationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfirmTopicRuleDestinationOutput, context: context)
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ConflictingResourceUpdateException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictingResourceUpdateException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CreateAuditSuppressionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAuditSuppressionInput, context: context)
        Hearth::Validator.validate!(input[:check_name], ::String, context: "#{context}[:check_name]")
        Validators::ResourceIdentifier.validate!(input[:resource_identifier], context: "#{context}[:resource_identifier]") unless input[:resource_identifier].nil?
        Hearth::Validator.validate!(input[:expiration_date], ::Time, context: "#{context}[:expiration_date]")
        Hearth::Validator.validate!(input[:suppress_indefinitely], ::TrueClass, ::FalseClass, context: "#{context}[:suppress_indefinitely]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
      end
    end

    class CreateAuditSuppressionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAuditSuppressionOutput, context: context)
      end
    end

    class CreateAuthorizerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAuthorizerInput, context: context)
        Hearth::Validator.validate!(input[:authorizer_name], ::String, context: "#{context}[:authorizer_name]")
        Hearth::Validator.validate!(input[:authorizer_function_arn], ::String, context: "#{context}[:authorizer_function_arn]")
        Hearth::Validator.validate!(input[:token_key_name], ::String, context: "#{context}[:token_key_name]")
        Validators::PublicKeyMap.validate!(input[:token_signing_public_keys], context: "#{context}[:token_signing_public_keys]") unless input[:token_signing_public_keys].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:signing_disabled], ::TrueClass, ::FalseClass, context: "#{context}[:signing_disabled]")
        Hearth::Validator.validate!(input[:enable_caching_for_http], ::TrueClass, ::FalseClass, context: "#{context}[:enable_caching_for_http]")
      end
    end

    class CreateAuthorizerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAuthorizerOutput, context: context)
        Hearth::Validator.validate!(input[:authorizer_name], ::String, context: "#{context}[:authorizer_name]")
        Hearth::Validator.validate!(input[:authorizer_arn], ::String, context: "#{context}[:authorizer_arn]")
      end
    end

    class CreateBillingGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBillingGroupInput, context: context)
        Hearth::Validator.validate!(input[:billing_group_name], ::String, context: "#{context}[:billing_group_name]")
        Validators::BillingGroupProperties.validate!(input[:billing_group_properties], context: "#{context}[:billing_group_properties]") unless input[:billing_group_properties].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateBillingGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBillingGroupOutput, context: context)
        Hearth::Validator.validate!(input[:billing_group_name], ::String, context: "#{context}[:billing_group_name]")
        Hearth::Validator.validate!(input[:billing_group_arn], ::String, context: "#{context}[:billing_group_arn]")
        Hearth::Validator.validate!(input[:billing_group_id], ::String, context: "#{context}[:billing_group_id]")
      end
    end

    class CreateCertificateFromCsrInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCertificateFromCsrInput, context: context)
        Hearth::Validator.validate!(input[:certificate_signing_request], ::String, context: "#{context}[:certificate_signing_request]")
        Hearth::Validator.validate!(input[:set_as_active], ::TrueClass, ::FalseClass, context: "#{context}[:set_as_active]")
      end
    end

    class CreateCertificateFromCsrOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCertificateFromCsrOutput, context: context)
        Hearth::Validator.validate!(input[:certificate_arn], ::String, context: "#{context}[:certificate_arn]")
        Hearth::Validator.validate!(input[:certificate_id], ::String, context: "#{context}[:certificate_id]")
        Hearth::Validator.validate!(input[:certificate_pem], ::String, context: "#{context}[:certificate_pem]")
      end
    end

    class CreateCustomMetricInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCustomMetricInput, context: context)
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:metric_type], ::String, context: "#{context}[:metric_type]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
      end
    end

    class CreateCustomMetricOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCustomMetricOutput, context: context)
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        Hearth::Validator.validate!(input[:metric_arn], ::String, context: "#{context}[:metric_arn]")
      end
    end

    class CreateDimensionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDimensionInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Validators::DimensionStringValues.validate!(input[:string_values], context: "#{context}[:string_values]") unless input[:string_values].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
      end
    end

    class CreateDimensionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDimensionOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class CreateDomainConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDomainConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:domain_configuration_name], ::String, context: "#{context}[:domain_configuration_name]")
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Validators::ServerCertificateArns.validate!(input[:server_certificate_arns], context: "#{context}[:server_certificate_arns]") unless input[:server_certificate_arns].nil?
        Hearth::Validator.validate!(input[:validation_certificate_arn], ::String, context: "#{context}[:validation_certificate_arn]")
        Validators::AuthorizerConfig.validate!(input[:authorizer_config], context: "#{context}[:authorizer_config]") unless input[:authorizer_config].nil?
        Hearth::Validator.validate!(input[:service_type], ::String, context: "#{context}[:service_type]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateDomainConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDomainConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:domain_configuration_name], ::String, context: "#{context}[:domain_configuration_name]")
        Hearth::Validator.validate!(input[:domain_configuration_arn], ::String, context: "#{context}[:domain_configuration_arn]")
      end
    end

    class CreateDynamicThingGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDynamicThingGroupInput, context: context)
        Hearth::Validator.validate!(input[:thing_group_name], ::String, context: "#{context}[:thing_group_name]")
        Validators::ThingGroupProperties.validate!(input[:thing_group_properties], context: "#{context}[:thing_group_properties]") unless input[:thing_group_properties].nil?
        Hearth::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
        Hearth::Validator.validate!(input[:query_string], ::String, context: "#{context}[:query_string]")
        Hearth::Validator.validate!(input[:query_version], ::String, context: "#{context}[:query_version]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateDynamicThingGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDynamicThingGroupOutput, context: context)
        Hearth::Validator.validate!(input[:thing_group_name], ::String, context: "#{context}[:thing_group_name]")
        Hearth::Validator.validate!(input[:thing_group_arn], ::String, context: "#{context}[:thing_group_arn]")
        Hearth::Validator.validate!(input[:thing_group_id], ::String, context: "#{context}[:thing_group_id]")
        Hearth::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
        Hearth::Validator.validate!(input[:query_string], ::String, context: "#{context}[:query_string]")
        Hearth::Validator.validate!(input[:query_version], ::String, context: "#{context}[:query_version]")
      end
    end

    class CreateFleetMetricInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFleetMetricInput, context: context)
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        Hearth::Validator.validate!(input[:query_string], ::String, context: "#{context}[:query_string]")
        Validators::AggregationType.validate!(input[:aggregation_type], context: "#{context}[:aggregation_type]") unless input[:aggregation_type].nil?
        Hearth::Validator.validate!(input[:period], ::Integer, context: "#{context}[:period]")
        Hearth::Validator.validate!(input[:aggregation_field], ::String, context: "#{context}[:aggregation_field]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:query_version], ::String, context: "#{context}[:query_version]")
        Hearth::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
        Hearth::Validator.validate!(input[:unit], ::String, context: "#{context}[:unit]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateFleetMetricOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFleetMetricOutput, context: context)
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        Hearth::Validator.validate!(input[:metric_arn], ::String, context: "#{context}[:metric_arn]")
      end
    end

    class CreateJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateJobInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Validators::JobTargets.validate!(input[:targets], context: "#{context}[:targets]") unless input[:targets].nil?
        Hearth::Validator.validate!(input[:document_source], ::String, context: "#{context}[:document_source]")
        Hearth::Validator.validate!(input[:document], ::String, context: "#{context}[:document]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::PresignedUrlConfig.validate!(input[:presigned_url_config], context: "#{context}[:presigned_url_config]") unless input[:presigned_url_config].nil?
        Hearth::Validator.validate!(input[:target_selection], ::String, context: "#{context}[:target_selection]")
        Validators::JobExecutionsRolloutConfig.validate!(input[:job_executions_rollout_config], context: "#{context}[:job_executions_rollout_config]") unless input[:job_executions_rollout_config].nil?
        Validators::AbortConfig.validate!(input[:abort_config], context: "#{context}[:abort_config]") unless input[:abort_config].nil?
        Validators::TimeoutConfig.validate!(input[:timeout_config], context: "#{context}[:timeout_config]") unless input[:timeout_config].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:namespace_id], ::String, context: "#{context}[:namespace_id]")
        Hearth::Validator.validate!(input[:job_template_arn], ::String, context: "#{context}[:job_template_arn]")
        Validators::JobExecutionsRetryConfig.validate!(input[:job_executions_retry_config], context: "#{context}[:job_executions_retry_config]") unless input[:job_executions_retry_config].nil?
        Validators::ParameterMap.validate!(input[:document_parameters], context: "#{context}[:document_parameters]") unless input[:document_parameters].nil?
      end
    end

    class CreateJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateJobOutput, context: context)
        Hearth::Validator.validate!(input[:job_arn], ::String, context: "#{context}[:job_arn]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class CreateJobTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateJobTemplateInput, context: context)
        Hearth::Validator.validate!(input[:job_template_id], ::String, context: "#{context}[:job_template_id]")
        Hearth::Validator.validate!(input[:job_arn], ::String, context: "#{context}[:job_arn]")
        Hearth::Validator.validate!(input[:document_source], ::String, context: "#{context}[:document_source]")
        Hearth::Validator.validate!(input[:document], ::String, context: "#{context}[:document]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::PresignedUrlConfig.validate!(input[:presigned_url_config], context: "#{context}[:presigned_url_config]") unless input[:presigned_url_config].nil?
        Validators::JobExecutionsRolloutConfig.validate!(input[:job_executions_rollout_config], context: "#{context}[:job_executions_rollout_config]") unless input[:job_executions_rollout_config].nil?
        Validators::AbortConfig.validate!(input[:abort_config], context: "#{context}[:abort_config]") unless input[:abort_config].nil?
        Validators::TimeoutConfig.validate!(input[:timeout_config], context: "#{context}[:timeout_config]") unless input[:timeout_config].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::JobExecutionsRetryConfig.validate!(input[:job_executions_retry_config], context: "#{context}[:job_executions_retry_config]") unless input[:job_executions_retry_config].nil?
      end
    end

    class CreateJobTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateJobTemplateOutput, context: context)
        Hearth::Validator.validate!(input[:job_template_arn], ::String, context: "#{context}[:job_template_arn]")
        Hearth::Validator.validate!(input[:job_template_id], ::String, context: "#{context}[:job_template_id]")
      end
    end

    class CreateKeysAndCertificateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateKeysAndCertificateInput, context: context)
        Hearth::Validator.validate!(input[:set_as_active], ::TrueClass, ::FalseClass, context: "#{context}[:set_as_active]")
      end
    end

    class CreateKeysAndCertificateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateKeysAndCertificateOutput, context: context)
        Hearth::Validator.validate!(input[:certificate_arn], ::String, context: "#{context}[:certificate_arn]")
        Hearth::Validator.validate!(input[:certificate_id], ::String, context: "#{context}[:certificate_id]")
        Hearth::Validator.validate!(input[:certificate_pem], ::String, context: "#{context}[:certificate_pem]")
        Validators::KeyPair.validate!(input[:key_pair], context: "#{context}[:key_pair]") unless input[:key_pair].nil?
      end
    end

    class CreateMitigationActionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateMitigationActionInput, context: context)
        Hearth::Validator.validate!(input[:action_name], ::String, context: "#{context}[:action_name]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Validators::MitigationActionParams.validate!(input[:action_params], context: "#{context}[:action_params]") unless input[:action_params].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateMitigationActionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateMitigationActionOutput, context: context)
        Hearth::Validator.validate!(input[:action_arn], ::String, context: "#{context}[:action_arn]")
        Hearth::Validator.validate!(input[:action_id], ::String, context: "#{context}[:action_id]")
      end
    end

    class CreateOTAUpdateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateOTAUpdateInput, context: context)
        Hearth::Validator.validate!(input[:ota_update_id], ::String, context: "#{context}[:ota_update_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::Targets.validate!(input[:targets], context: "#{context}[:targets]") unless input[:targets].nil?
        Validators::Protocols.validate!(input[:protocols], context: "#{context}[:protocols]") unless input[:protocols].nil?
        Hearth::Validator.validate!(input[:target_selection], ::String, context: "#{context}[:target_selection]")
        Validators::AwsJobExecutionsRolloutConfig.validate!(input[:aws_job_executions_rollout_config], context: "#{context}[:aws_job_executions_rollout_config]") unless input[:aws_job_executions_rollout_config].nil?
        Validators::AwsJobPresignedUrlConfig.validate!(input[:aws_job_presigned_url_config], context: "#{context}[:aws_job_presigned_url_config]") unless input[:aws_job_presigned_url_config].nil?
        Validators::AwsJobAbortConfig.validate!(input[:aws_job_abort_config], context: "#{context}[:aws_job_abort_config]") unless input[:aws_job_abort_config].nil?
        Validators::AwsJobTimeoutConfig.validate!(input[:aws_job_timeout_config], context: "#{context}[:aws_job_timeout_config]") unless input[:aws_job_timeout_config].nil?
        Validators::OTAUpdateFiles.validate!(input[:files], context: "#{context}[:files]") unless input[:files].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Validators::AdditionalParameterMap.validate!(input[:additional_parameters], context: "#{context}[:additional_parameters]") unless input[:additional_parameters].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateOTAUpdateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateOTAUpdateOutput, context: context)
        Hearth::Validator.validate!(input[:ota_update_id], ::String, context: "#{context}[:ota_update_id]")
        Hearth::Validator.validate!(input[:aws_iot_job_id], ::String, context: "#{context}[:aws_iot_job_id]")
        Hearth::Validator.validate!(input[:ota_update_arn], ::String, context: "#{context}[:ota_update_arn]")
        Hearth::Validator.validate!(input[:aws_iot_job_arn], ::String, context: "#{context}[:aws_iot_job_arn]")
        Hearth::Validator.validate!(input[:ota_update_status], ::String, context: "#{context}[:ota_update_status]")
      end
    end

    class CreatePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePolicyInput, context: context)
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
        Hearth::Validator.validate!(input[:policy_document], ::String, context: "#{context}[:policy_document]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreatePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePolicyOutput, context: context)
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
        Hearth::Validator.validate!(input[:policy_arn], ::String, context: "#{context}[:policy_arn]")
        Hearth::Validator.validate!(input[:policy_document], ::String, context: "#{context}[:policy_document]")
        Hearth::Validator.validate!(input[:policy_version_id], ::String, context: "#{context}[:policy_version_id]")
      end
    end

    class CreatePolicyVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePolicyVersionInput, context: context)
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
        Hearth::Validator.validate!(input[:policy_document], ::String, context: "#{context}[:policy_document]")
        Hearth::Validator.validate!(input[:set_as_default], ::TrueClass, ::FalseClass, context: "#{context}[:set_as_default]")
      end
    end

    class CreatePolicyVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePolicyVersionOutput, context: context)
        Hearth::Validator.validate!(input[:policy_arn], ::String, context: "#{context}[:policy_arn]")
        Hearth::Validator.validate!(input[:policy_document], ::String, context: "#{context}[:policy_document]")
        Hearth::Validator.validate!(input[:policy_version_id], ::String, context: "#{context}[:policy_version_id]")
        Hearth::Validator.validate!(input[:is_default_version], ::TrueClass, ::FalseClass, context: "#{context}[:is_default_version]")
      end
    end

    class CreateProvisioningClaimInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateProvisioningClaimInput, context: context)
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
      end
    end

    class CreateProvisioningClaimOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateProvisioningClaimOutput, context: context)
        Hearth::Validator.validate!(input[:certificate_id], ::String, context: "#{context}[:certificate_id]")
        Hearth::Validator.validate!(input[:certificate_pem], ::String, context: "#{context}[:certificate_pem]")
        Validators::KeyPair.validate!(input[:key_pair], context: "#{context}[:key_pair]") unless input[:key_pair].nil?
        Hearth::Validator.validate!(input[:expiration], ::Time, context: "#{context}[:expiration]")
      end
    end

    class CreateProvisioningTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateProvisioningTemplateInput, context: context)
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:template_body], ::String, context: "#{context}[:template_body]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:provisioning_role_arn], ::String, context: "#{context}[:provisioning_role_arn]")
        Validators::ProvisioningHook.validate!(input[:pre_provisioning_hook], context: "#{context}[:pre_provisioning_hook]") unless input[:pre_provisioning_hook].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateProvisioningTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateProvisioningTemplateOutput, context: context)
        Hearth::Validator.validate!(input[:template_arn], ::String, context: "#{context}[:template_arn]")
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:default_version_id], ::Integer, context: "#{context}[:default_version_id]")
      end
    end

    class CreateProvisioningTemplateVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateProvisioningTemplateVersionInput, context: context)
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:template_body], ::String, context: "#{context}[:template_body]")
        Hearth::Validator.validate!(input[:set_as_default], ::TrueClass, ::FalseClass, context: "#{context}[:set_as_default]")
      end
    end

    class CreateProvisioningTemplateVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateProvisioningTemplateVersionOutput, context: context)
        Hearth::Validator.validate!(input[:template_arn], ::String, context: "#{context}[:template_arn]")
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:version_id], ::Integer, context: "#{context}[:version_id]")
        Hearth::Validator.validate!(input[:is_default_version], ::TrueClass, ::FalseClass, context: "#{context}[:is_default_version]")
      end
    end

    class CreateRoleAliasInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRoleAliasInput, context: context)
        Hearth::Validator.validate!(input[:role_alias], ::String, context: "#{context}[:role_alias]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:credential_duration_seconds], ::Integer, context: "#{context}[:credential_duration_seconds]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateRoleAliasOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRoleAliasOutput, context: context)
        Hearth::Validator.validate!(input[:role_alias], ::String, context: "#{context}[:role_alias]")
        Hearth::Validator.validate!(input[:role_alias_arn], ::String, context: "#{context}[:role_alias_arn]")
      end
    end

    class CreateScheduledAuditInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateScheduledAuditInput, context: context)
        Hearth::Validator.validate!(input[:frequency], ::String, context: "#{context}[:frequency]")
        Hearth::Validator.validate!(input[:day_of_month], ::String, context: "#{context}[:day_of_month]")
        Hearth::Validator.validate!(input[:day_of_week], ::String, context: "#{context}[:day_of_week]")
        Validators::TargetAuditCheckNames.validate!(input[:target_check_names], context: "#{context}[:target_check_names]") unless input[:target_check_names].nil?
        Hearth::Validator.validate!(input[:scheduled_audit_name], ::String, context: "#{context}[:scheduled_audit_name]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateScheduledAuditOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateScheduledAuditOutput, context: context)
        Hearth::Validator.validate!(input[:scheduled_audit_arn], ::String, context: "#{context}[:scheduled_audit_arn]")
      end
    end

    class CreateSecurityProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSecurityProfileInput, context: context)
        Hearth::Validator.validate!(input[:security_profile_name], ::String, context: "#{context}[:security_profile_name]")
        Hearth::Validator.validate!(input[:security_profile_description], ::String, context: "#{context}[:security_profile_description]")
        Validators::Behaviors.validate!(input[:behaviors], context: "#{context}[:behaviors]") unless input[:behaviors].nil?
        Validators::AlertTargets.validate!(input[:alert_targets], context: "#{context}[:alert_targets]") unless input[:alert_targets].nil?
        Validators::AdditionalMetricsToRetainList.validate!(input[:additional_metrics_to_retain], context: "#{context}[:additional_metrics_to_retain]") unless input[:additional_metrics_to_retain].nil?
        Validators::AdditionalMetricsToRetainV2List.validate!(input[:additional_metrics_to_retain_v2], context: "#{context}[:additional_metrics_to_retain_v2]") unless input[:additional_metrics_to_retain_v2].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateSecurityProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSecurityProfileOutput, context: context)
        Hearth::Validator.validate!(input[:security_profile_name], ::String, context: "#{context}[:security_profile_name]")
        Hearth::Validator.validate!(input[:security_profile_arn], ::String, context: "#{context}[:security_profile_arn]")
      end
    end

    class CreateStreamInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateStreamInput, context: context)
        Hearth::Validator.validate!(input[:stream_id], ::String, context: "#{context}[:stream_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::StreamFiles.validate!(input[:files], context: "#{context}[:files]") unless input[:files].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateStreamOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateStreamOutput, context: context)
        Hearth::Validator.validate!(input[:stream_id], ::String, context: "#{context}[:stream_id]")
        Hearth::Validator.validate!(input[:stream_arn], ::String, context: "#{context}[:stream_arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:stream_version], ::Integer, context: "#{context}[:stream_version]")
      end
    end

    class CreateThingGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateThingGroupInput, context: context)
        Hearth::Validator.validate!(input[:thing_group_name], ::String, context: "#{context}[:thing_group_name]")
        Hearth::Validator.validate!(input[:parent_group_name], ::String, context: "#{context}[:parent_group_name]")
        Validators::ThingGroupProperties.validate!(input[:thing_group_properties], context: "#{context}[:thing_group_properties]") unless input[:thing_group_properties].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateThingGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateThingGroupOutput, context: context)
        Hearth::Validator.validate!(input[:thing_group_name], ::String, context: "#{context}[:thing_group_name]")
        Hearth::Validator.validate!(input[:thing_group_arn], ::String, context: "#{context}[:thing_group_arn]")
        Hearth::Validator.validate!(input[:thing_group_id], ::String, context: "#{context}[:thing_group_id]")
      end
    end

    class CreateThingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateThingInput, context: context)
        Hearth::Validator.validate!(input[:thing_name], ::String, context: "#{context}[:thing_name]")
        Hearth::Validator.validate!(input[:thing_type_name], ::String, context: "#{context}[:thing_type_name]")
        Validators::AttributePayload.validate!(input[:attribute_payload], context: "#{context}[:attribute_payload]") unless input[:attribute_payload].nil?
        Hearth::Validator.validate!(input[:billing_group_name], ::String, context: "#{context}[:billing_group_name]")
      end
    end

    class CreateThingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateThingOutput, context: context)
        Hearth::Validator.validate!(input[:thing_name], ::String, context: "#{context}[:thing_name]")
        Hearth::Validator.validate!(input[:thing_arn], ::String, context: "#{context}[:thing_arn]")
        Hearth::Validator.validate!(input[:thing_id], ::String, context: "#{context}[:thing_id]")
      end
    end

    class CreateThingTypeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateThingTypeInput, context: context)
        Hearth::Validator.validate!(input[:thing_type_name], ::String, context: "#{context}[:thing_type_name]")
        Validators::ThingTypeProperties.validate!(input[:thing_type_properties], context: "#{context}[:thing_type_properties]") unless input[:thing_type_properties].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateThingTypeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateThingTypeOutput, context: context)
        Hearth::Validator.validate!(input[:thing_type_name], ::String, context: "#{context}[:thing_type_name]")
        Hearth::Validator.validate!(input[:thing_type_arn], ::String, context: "#{context}[:thing_type_arn]")
        Hearth::Validator.validate!(input[:thing_type_id], ::String, context: "#{context}[:thing_type_id]")
      end
    end

    class CreateTopicRuleDestinationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTopicRuleDestinationInput, context: context)
        Validators::TopicRuleDestinationConfiguration.validate!(input[:destination_configuration], context: "#{context}[:destination_configuration]") unless input[:destination_configuration].nil?
      end
    end

    class CreateTopicRuleDestinationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTopicRuleDestinationOutput, context: context)
        Validators::TopicRuleDestination.validate!(input[:topic_rule_destination], context: "#{context}[:topic_rule_destination]") unless input[:topic_rule_destination].nil?
      end
    end

    class CreateTopicRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTopicRuleInput, context: context)
        Hearth::Validator.validate!(input[:rule_name], ::String, context: "#{context}[:rule_name]")
        Validators::TopicRulePayload.validate!(input[:topic_rule_payload], context: "#{context}[:topic_rule_payload]") unless input[:topic_rule_payload].nil?
        Hearth::Validator.validate!(input[:tags], ::String, context: "#{context}[:tags]")
      end
    end

    class CreateTopicRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTopicRuleOutput, context: context)
      end
    end

    class CustomCodeSigning
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomCodeSigning, context: context)
        Validators::CodeSigningSignature.validate!(input[:signature], context: "#{context}[:signature]") unless input[:signature].nil?
        Validators::CodeSigningCertificateChain.validate!(input[:certificate_chain], context: "#{context}[:certificate_chain]") unless input[:certificate_chain].nil?
        Hearth::Validator.validate!(input[:hash_algorithm], ::String, context: "#{context}[:hash_algorithm]")
        Hearth::Validator.validate!(input[:signature_algorithm], ::String, context: "#{context}[:signature_algorithm]")
      end
    end

    class DeleteAccountAuditConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAccountAuditConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:delete_scheduled_audits], ::TrueClass, ::FalseClass, context: "#{context}[:delete_scheduled_audits]")
      end
    end

    class DeleteAccountAuditConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAccountAuditConfigurationOutput, context: context)
      end
    end

    class DeleteAuditSuppressionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAuditSuppressionInput, context: context)
        Hearth::Validator.validate!(input[:check_name], ::String, context: "#{context}[:check_name]")
        Validators::ResourceIdentifier.validate!(input[:resource_identifier], context: "#{context}[:resource_identifier]") unless input[:resource_identifier].nil?
      end
    end

    class DeleteAuditSuppressionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAuditSuppressionOutput, context: context)
      end
    end

    class DeleteAuthorizerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAuthorizerInput, context: context)
        Hearth::Validator.validate!(input[:authorizer_name], ::String, context: "#{context}[:authorizer_name]")
      end
    end

    class DeleteAuthorizerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAuthorizerOutput, context: context)
      end
    end

    class DeleteBillingGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBillingGroupInput, context: context)
        Hearth::Validator.validate!(input[:billing_group_name], ::String, context: "#{context}[:billing_group_name]")
        Hearth::Validator.validate!(input[:expected_version], ::Integer, context: "#{context}[:expected_version]")
      end
    end

    class DeleteBillingGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBillingGroupOutput, context: context)
      end
    end

    class DeleteCACertificateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCACertificateInput, context: context)
        Hearth::Validator.validate!(input[:certificate_id], ::String, context: "#{context}[:certificate_id]")
      end
    end

    class DeleteCACertificateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCACertificateOutput, context: context)
      end
    end

    class DeleteCertificateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCertificateInput, context: context)
        Hearth::Validator.validate!(input[:certificate_id], ::String, context: "#{context}[:certificate_id]")
        Hearth::Validator.validate!(input[:force_delete], ::TrueClass, ::FalseClass, context: "#{context}[:force_delete]")
      end
    end

    class DeleteCertificateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCertificateOutput, context: context)
      end
    end

    class DeleteConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DeleteCustomMetricInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCustomMetricInput, context: context)
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
      end
    end

    class DeleteCustomMetricOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCustomMetricOutput, context: context)
      end
    end

    class DeleteDimensionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDimensionInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteDimensionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDimensionOutput, context: context)
      end
    end

    class DeleteDomainConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDomainConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:domain_configuration_name], ::String, context: "#{context}[:domain_configuration_name]")
      end
    end

    class DeleteDomainConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDomainConfigurationOutput, context: context)
      end
    end

    class DeleteDynamicThingGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDynamicThingGroupInput, context: context)
        Hearth::Validator.validate!(input[:thing_group_name], ::String, context: "#{context}[:thing_group_name]")
        Hearth::Validator.validate!(input[:expected_version], ::Integer, context: "#{context}[:expected_version]")
      end
    end

    class DeleteDynamicThingGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDynamicThingGroupOutput, context: context)
      end
    end

    class DeleteFleetMetricInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFleetMetricInput, context: context)
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        Hearth::Validator.validate!(input[:expected_version], ::Integer, context: "#{context}[:expected_version]")
      end
    end

    class DeleteFleetMetricOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFleetMetricOutput, context: context)
      end
    end

    class DeleteJobExecutionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteJobExecutionInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:thing_name], ::String, context: "#{context}[:thing_name]")
        Hearth::Validator.validate!(input[:execution_number], ::Integer, context: "#{context}[:execution_number]")
        Hearth::Validator.validate!(input[:force], ::TrueClass, ::FalseClass, context: "#{context}[:force]")
        Hearth::Validator.validate!(input[:namespace_id], ::String, context: "#{context}[:namespace_id]")
      end
    end

    class DeleteJobExecutionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteJobExecutionOutput, context: context)
      end
    end

    class DeleteJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteJobInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:force], ::TrueClass, ::FalseClass, context: "#{context}[:force]")
        Hearth::Validator.validate!(input[:namespace_id], ::String, context: "#{context}[:namespace_id]")
      end
    end

    class DeleteJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteJobOutput, context: context)
      end
    end

    class DeleteJobTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteJobTemplateInput, context: context)
        Hearth::Validator.validate!(input[:job_template_id], ::String, context: "#{context}[:job_template_id]")
      end
    end

    class DeleteJobTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteJobTemplateOutput, context: context)
      end
    end

    class DeleteMitigationActionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMitigationActionInput, context: context)
        Hearth::Validator.validate!(input[:action_name], ::String, context: "#{context}[:action_name]")
      end
    end

    class DeleteMitigationActionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMitigationActionOutput, context: context)
      end
    end

    class DeleteOTAUpdateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteOTAUpdateInput, context: context)
        Hearth::Validator.validate!(input[:ota_update_id], ::String, context: "#{context}[:ota_update_id]")
        Hearth::Validator.validate!(input[:delete_stream], ::TrueClass, ::FalseClass, context: "#{context}[:delete_stream]")
        Hearth::Validator.validate!(input[:force_delete_aws_job], ::TrueClass, ::FalseClass, context: "#{context}[:force_delete_aws_job]")
      end
    end

    class DeleteOTAUpdateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteOTAUpdateOutput, context: context)
      end
    end

    class DeletePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePolicyInput, context: context)
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
      end
    end

    class DeletePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePolicyOutput, context: context)
      end
    end

    class DeletePolicyVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePolicyVersionInput, context: context)
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
        Hearth::Validator.validate!(input[:policy_version_id], ::String, context: "#{context}[:policy_version_id]")
      end
    end

    class DeletePolicyVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePolicyVersionOutput, context: context)
      end
    end

    class DeleteProvisioningTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteProvisioningTemplateInput, context: context)
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
      end
    end

    class DeleteProvisioningTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteProvisioningTemplateOutput, context: context)
      end
    end

    class DeleteProvisioningTemplateVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteProvisioningTemplateVersionInput, context: context)
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:version_id], ::Integer, context: "#{context}[:version_id]")
      end
    end

    class DeleteProvisioningTemplateVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteProvisioningTemplateVersionOutput, context: context)
      end
    end

    class DeleteRegistrationCodeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRegistrationCodeInput, context: context)
      end
    end

    class DeleteRegistrationCodeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRegistrationCodeOutput, context: context)
      end
    end

    class DeleteRoleAliasInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRoleAliasInput, context: context)
        Hearth::Validator.validate!(input[:role_alias], ::String, context: "#{context}[:role_alias]")
      end
    end

    class DeleteRoleAliasOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRoleAliasOutput, context: context)
      end
    end

    class DeleteScheduledAuditInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteScheduledAuditInput, context: context)
        Hearth::Validator.validate!(input[:scheduled_audit_name], ::String, context: "#{context}[:scheduled_audit_name]")
      end
    end

    class DeleteScheduledAuditOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteScheduledAuditOutput, context: context)
      end
    end

    class DeleteSecurityProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSecurityProfileInput, context: context)
        Hearth::Validator.validate!(input[:security_profile_name], ::String, context: "#{context}[:security_profile_name]")
        Hearth::Validator.validate!(input[:expected_version], ::Integer, context: "#{context}[:expected_version]")
      end
    end

    class DeleteSecurityProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSecurityProfileOutput, context: context)
      end
    end

    class DeleteStreamInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteStreamInput, context: context)
        Hearth::Validator.validate!(input[:stream_id], ::String, context: "#{context}[:stream_id]")
      end
    end

    class DeleteStreamOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteStreamOutput, context: context)
      end
    end

    class DeleteThingGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteThingGroupInput, context: context)
        Hearth::Validator.validate!(input[:thing_group_name], ::String, context: "#{context}[:thing_group_name]")
        Hearth::Validator.validate!(input[:expected_version], ::Integer, context: "#{context}[:expected_version]")
      end
    end

    class DeleteThingGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteThingGroupOutput, context: context)
      end
    end

    class DeleteThingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteThingInput, context: context)
        Hearth::Validator.validate!(input[:thing_name], ::String, context: "#{context}[:thing_name]")
        Hearth::Validator.validate!(input[:expected_version], ::Integer, context: "#{context}[:expected_version]")
      end
    end

    class DeleteThingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteThingOutput, context: context)
      end
    end

    class DeleteThingTypeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteThingTypeInput, context: context)
        Hearth::Validator.validate!(input[:thing_type_name], ::String, context: "#{context}[:thing_type_name]")
      end
    end

    class DeleteThingTypeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteThingTypeOutput, context: context)
      end
    end

    class DeleteTopicRuleDestinationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTopicRuleDestinationInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class DeleteTopicRuleDestinationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTopicRuleDestinationOutput, context: context)
      end
    end

    class DeleteTopicRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTopicRuleInput, context: context)
        Hearth::Validator.validate!(input[:rule_name], ::String, context: "#{context}[:rule_name]")
      end
    end

    class DeleteTopicRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTopicRuleOutput, context: context)
      end
    end

    class DeleteV2LoggingLevelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteV2LoggingLevelInput, context: context)
        Hearth::Validator.validate!(input[:target_type], ::String, context: "#{context}[:target_type]")
        Hearth::Validator.validate!(input[:target_name], ::String, context: "#{context}[:target_name]")
      end
    end

    class DeleteV2LoggingLevelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteV2LoggingLevelOutput, context: context)
      end
    end

    class Denied
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Denied, context: context)
        Validators::ImplicitDeny.validate!(input[:implicit_deny], context: "#{context}[:implicit_deny]") unless input[:implicit_deny].nil?
        Validators::ExplicitDeny.validate!(input[:explicit_deny], context: "#{context}[:explicit_deny]") unless input[:explicit_deny].nil?
      end
    end

    class DeprecateThingTypeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeprecateThingTypeInput, context: context)
        Hearth::Validator.validate!(input[:thing_type_name], ::String, context: "#{context}[:thing_type_name]")
        Hearth::Validator.validate!(input[:undo_deprecate], ::TrueClass, ::FalseClass, context: "#{context}[:undo_deprecate]")
      end
    end

    class DeprecateThingTypeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeprecateThingTypeOutput, context: context)
      end
    end

    class DescribeAccountAuditConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAccountAuditConfigurationInput, context: context)
      end
    end

    class DescribeAccountAuditConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAccountAuditConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Validators::AuditNotificationTargetConfigurations.validate!(input[:audit_notification_target_configurations], context: "#{context}[:audit_notification_target_configurations]") unless input[:audit_notification_target_configurations].nil?
        Validators::AuditCheckConfigurations.validate!(input[:audit_check_configurations], context: "#{context}[:audit_check_configurations]") unless input[:audit_check_configurations].nil?
      end
    end

    class DescribeAuditFindingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAuditFindingInput, context: context)
        Hearth::Validator.validate!(input[:finding_id], ::String, context: "#{context}[:finding_id]")
      end
    end

    class DescribeAuditFindingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAuditFindingOutput, context: context)
        Validators::AuditFinding.validate!(input[:finding], context: "#{context}[:finding]") unless input[:finding].nil?
      end
    end

    class DescribeAuditMitigationActionsTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAuditMitigationActionsTaskInput, context: context)
        Hearth::Validator.validate!(input[:task_id], ::String, context: "#{context}[:task_id]")
      end
    end

    class DescribeAuditMitigationActionsTaskOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAuditMitigationActionsTaskOutput, context: context)
        Hearth::Validator.validate!(input[:task_status], ::String, context: "#{context}[:task_status]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Validators::AuditMitigationActionsTaskStatistics.validate!(input[:task_statistics], context: "#{context}[:task_statistics]") unless input[:task_statistics].nil?
        Validators::AuditMitigationActionsTaskTarget.validate!(input[:target], context: "#{context}[:target]") unless input[:target].nil?
        Validators::AuditCheckToActionsMapping.validate!(input[:audit_check_to_actions_mapping], context: "#{context}[:audit_check_to_actions_mapping]") unless input[:audit_check_to_actions_mapping].nil?
        Validators::MitigationActionList.validate!(input[:actions_definition], context: "#{context}[:actions_definition]") unless input[:actions_definition].nil?
      end
    end

    class DescribeAuditSuppressionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAuditSuppressionInput, context: context)
        Hearth::Validator.validate!(input[:check_name], ::String, context: "#{context}[:check_name]")
        Validators::ResourceIdentifier.validate!(input[:resource_identifier], context: "#{context}[:resource_identifier]") unless input[:resource_identifier].nil?
      end
    end

    class DescribeAuditSuppressionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAuditSuppressionOutput, context: context)
        Hearth::Validator.validate!(input[:check_name], ::String, context: "#{context}[:check_name]")
        Validators::ResourceIdentifier.validate!(input[:resource_identifier], context: "#{context}[:resource_identifier]") unless input[:resource_identifier].nil?
        Hearth::Validator.validate!(input[:expiration_date], ::Time, context: "#{context}[:expiration_date]")
        Hearth::Validator.validate!(input[:suppress_indefinitely], ::TrueClass, ::FalseClass, context: "#{context}[:suppress_indefinitely]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class DescribeAuditTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAuditTaskInput, context: context)
        Hearth::Validator.validate!(input[:task_id], ::String, context: "#{context}[:task_id]")
      end
    end

    class DescribeAuditTaskOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAuditTaskOutput, context: context)
        Hearth::Validator.validate!(input[:task_status], ::String, context: "#{context}[:task_status]")
        Hearth::Validator.validate!(input[:task_type], ::String, context: "#{context}[:task_type]")
        Hearth::Validator.validate!(input[:task_start_time], ::Time, context: "#{context}[:task_start_time]")
        Validators::TaskStatistics.validate!(input[:task_statistics], context: "#{context}[:task_statistics]") unless input[:task_statistics].nil?
        Hearth::Validator.validate!(input[:scheduled_audit_name], ::String, context: "#{context}[:scheduled_audit_name]")
        Validators::AuditDetails.validate!(input[:audit_details], context: "#{context}[:audit_details]") unless input[:audit_details].nil?
      end
    end

    class DescribeAuthorizerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAuthorizerInput, context: context)
        Hearth::Validator.validate!(input[:authorizer_name], ::String, context: "#{context}[:authorizer_name]")
      end
    end

    class DescribeAuthorizerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAuthorizerOutput, context: context)
        Validators::AuthorizerDescription.validate!(input[:authorizer_description], context: "#{context}[:authorizer_description]") unless input[:authorizer_description].nil?
      end
    end

    class DescribeBillingGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeBillingGroupInput, context: context)
        Hearth::Validator.validate!(input[:billing_group_name], ::String, context: "#{context}[:billing_group_name]")
      end
    end

    class DescribeBillingGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeBillingGroupOutput, context: context)
        Hearth::Validator.validate!(input[:billing_group_name], ::String, context: "#{context}[:billing_group_name]")
        Hearth::Validator.validate!(input[:billing_group_id], ::String, context: "#{context}[:billing_group_id]")
        Hearth::Validator.validate!(input[:billing_group_arn], ::String, context: "#{context}[:billing_group_arn]")
        Hearth::Validator.validate!(input[:version], ::Integer, context: "#{context}[:version]")
        Validators::BillingGroupProperties.validate!(input[:billing_group_properties], context: "#{context}[:billing_group_properties]") unless input[:billing_group_properties].nil?
        Validators::BillingGroupMetadata.validate!(input[:billing_group_metadata], context: "#{context}[:billing_group_metadata]") unless input[:billing_group_metadata].nil?
      end
    end

    class DescribeCACertificateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCACertificateInput, context: context)
        Hearth::Validator.validate!(input[:certificate_id], ::String, context: "#{context}[:certificate_id]")
      end
    end

    class DescribeCACertificateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCACertificateOutput, context: context)
        Validators::CACertificateDescription.validate!(input[:certificate_description], context: "#{context}[:certificate_description]") unless input[:certificate_description].nil?
        Validators::RegistrationConfig.validate!(input[:registration_config], context: "#{context}[:registration_config]") unless input[:registration_config].nil?
      end
    end

    class DescribeCertificateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCertificateInput, context: context)
        Hearth::Validator.validate!(input[:certificate_id], ::String, context: "#{context}[:certificate_id]")
      end
    end

    class DescribeCertificateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCertificateOutput, context: context)
        Validators::CertificateDescription.validate!(input[:certificate_description], context: "#{context}[:certificate_description]") unless input[:certificate_description].nil?
      end
    end

    class DescribeCustomMetricInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCustomMetricInput, context: context)
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
      end
    end

    class DescribeCustomMetricOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCustomMetricOutput, context: context)
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        Hearth::Validator.validate!(input[:metric_arn], ::String, context: "#{context}[:metric_arn]")
        Hearth::Validator.validate!(input[:metric_type], ::String, context: "#{context}[:metric_type]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:last_modified_date], ::Time, context: "#{context}[:last_modified_date]")
      end
    end

    class DescribeDefaultAuthorizerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDefaultAuthorizerInput, context: context)
      end
    end

    class DescribeDefaultAuthorizerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDefaultAuthorizerOutput, context: context)
        Validators::AuthorizerDescription.validate!(input[:authorizer_description], context: "#{context}[:authorizer_description]") unless input[:authorizer_description].nil?
      end
    end

    class DescribeDetectMitigationActionsTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDetectMitigationActionsTaskInput, context: context)
        Hearth::Validator.validate!(input[:task_id], ::String, context: "#{context}[:task_id]")
      end
    end

    class DescribeDetectMitigationActionsTaskOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDetectMitigationActionsTaskOutput, context: context)
        Validators::DetectMitigationActionsTaskSummary.validate!(input[:task_summary], context: "#{context}[:task_summary]") unless input[:task_summary].nil?
      end
    end

    class DescribeDimensionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDimensionInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DescribeDimensionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDimensionOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Validators::DimensionStringValues.validate!(input[:string_values], context: "#{context}[:string_values]") unless input[:string_values].nil?
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:last_modified_date], ::Time, context: "#{context}[:last_modified_date]")
      end
    end

    class DescribeDomainConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDomainConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:domain_configuration_name], ::String, context: "#{context}[:domain_configuration_name]")
      end
    end

    class DescribeDomainConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDomainConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:domain_configuration_name], ::String, context: "#{context}[:domain_configuration_name]")
        Hearth::Validator.validate!(input[:domain_configuration_arn], ::String, context: "#{context}[:domain_configuration_arn]")
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Validators::ServerCertificates.validate!(input[:server_certificates], context: "#{context}[:server_certificates]") unless input[:server_certificates].nil?
        Validators::AuthorizerConfig.validate!(input[:authorizer_config], context: "#{context}[:authorizer_config]") unless input[:authorizer_config].nil?
        Hearth::Validator.validate!(input[:domain_configuration_status], ::String, context: "#{context}[:domain_configuration_status]")
        Hearth::Validator.validate!(input[:service_type], ::String, context: "#{context}[:service_type]")
        Hearth::Validator.validate!(input[:domain_type], ::String, context: "#{context}[:domain_type]")
        Hearth::Validator.validate!(input[:last_status_change_date], ::Time, context: "#{context}[:last_status_change_date]")
      end
    end

    class DescribeEndpointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEndpointInput, context: context)
        Hearth::Validator.validate!(input[:endpoint_type], ::String, context: "#{context}[:endpoint_type]")
      end
    end

    class DescribeEndpointOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEndpointOutput, context: context)
        Hearth::Validator.validate!(input[:endpoint_address], ::String, context: "#{context}[:endpoint_address]")
      end
    end

    class DescribeEventConfigurationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEventConfigurationsInput, context: context)
      end
    end

    class DescribeEventConfigurationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEventConfigurationsOutput, context: context)
        Validators::EventConfigurations.validate!(input[:event_configurations], context: "#{context}[:event_configurations]") unless input[:event_configurations].nil?
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:last_modified_date], ::Time, context: "#{context}[:last_modified_date]")
      end
    end

    class DescribeFleetMetricInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFleetMetricInput, context: context)
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
      end
    end

    class DescribeFleetMetricOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFleetMetricOutput, context: context)
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        Hearth::Validator.validate!(input[:query_string], ::String, context: "#{context}[:query_string]")
        Validators::AggregationType.validate!(input[:aggregation_type], context: "#{context}[:aggregation_type]") unless input[:aggregation_type].nil?
        Hearth::Validator.validate!(input[:period], ::Integer, context: "#{context}[:period]")
        Hearth::Validator.validate!(input[:aggregation_field], ::String, context: "#{context}[:aggregation_field]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:query_version], ::String, context: "#{context}[:query_version]")
        Hearth::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:last_modified_date], ::Time, context: "#{context}[:last_modified_date]")
        Hearth::Validator.validate!(input[:unit], ::String, context: "#{context}[:unit]")
        Hearth::Validator.validate!(input[:version], ::Integer, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:metric_arn], ::String, context: "#{context}[:metric_arn]")
      end
    end

    class DescribeIndexInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeIndexInput, context: context)
        Hearth::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
      end
    end

    class DescribeIndexOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeIndexOutput, context: context)
        Hearth::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
        Hearth::Validator.validate!(input[:index_status], ::String, context: "#{context}[:index_status]")
        Hearth::Validator.validate!(input[:schema], ::String, context: "#{context}[:schema]")
      end
    end

    class DescribeJobExecutionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeJobExecutionInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:thing_name], ::String, context: "#{context}[:thing_name]")
        Hearth::Validator.validate!(input[:execution_number], ::Integer, context: "#{context}[:execution_number]")
      end
    end

    class DescribeJobExecutionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeJobExecutionOutput, context: context)
        Validators::JobExecution.validate!(input[:execution], context: "#{context}[:execution]") unless input[:execution].nil?
      end
    end

    class DescribeJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeJobInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class DescribeJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeJobOutput, context: context)
        Hearth::Validator.validate!(input[:document_source], ::String, context: "#{context}[:document_source]")
        Validators::Job.validate!(input[:job], context: "#{context}[:job]") unless input[:job].nil?
      end
    end

    class DescribeJobTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeJobTemplateInput, context: context)
        Hearth::Validator.validate!(input[:job_template_id], ::String, context: "#{context}[:job_template_id]")
      end
    end

    class DescribeJobTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeJobTemplateOutput, context: context)
        Hearth::Validator.validate!(input[:job_template_arn], ::String, context: "#{context}[:job_template_arn]")
        Hearth::Validator.validate!(input[:job_template_id], ::String, context: "#{context}[:job_template_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:document_source], ::String, context: "#{context}[:document_source]")
        Hearth::Validator.validate!(input[:document], ::String, context: "#{context}[:document]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Validators::PresignedUrlConfig.validate!(input[:presigned_url_config], context: "#{context}[:presigned_url_config]") unless input[:presigned_url_config].nil?
        Validators::JobExecutionsRolloutConfig.validate!(input[:job_executions_rollout_config], context: "#{context}[:job_executions_rollout_config]") unless input[:job_executions_rollout_config].nil?
        Validators::AbortConfig.validate!(input[:abort_config], context: "#{context}[:abort_config]") unless input[:abort_config].nil?
        Validators::TimeoutConfig.validate!(input[:timeout_config], context: "#{context}[:timeout_config]") unless input[:timeout_config].nil?
        Validators::JobExecutionsRetryConfig.validate!(input[:job_executions_retry_config], context: "#{context}[:job_executions_retry_config]") unless input[:job_executions_retry_config].nil?
      end
    end

    class DescribeManagedJobTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeManagedJobTemplateInput, context: context)
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:template_version], ::String, context: "#{context}[:template_version]")
      end
    end

    class DescribeManagedJobTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeManagedJobTemplateOutput, context: context)
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:template_arn], ::String, context: "#{context}[:template_arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:template_version], ::String, context: "#{context}[:template_version]")
        Validators::Environments.validate!(input[:environments], context: "#{context}[:environments]") unless input[:environments].nil?
        Validators::DocumentParameters.validate!(input[:document_parameters], context: "#{context}[:document_parameters]") unless input[:document_parameters].nil?
        Hearth::Validator.validate!(input[:document], ::String, context: "#{context}[:document]")
      end
    end

    class DescribeMitigationActionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeMitigationActionInput, context: context)
        Hearth::Validator.validate!(input[:action_name], ::String, context: "#{context}[:action_name]")
      end
    end

    class DescribeMitigationActionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeMitigationActionOutput, context: context)
        Hearth::Validator.validate!(input[:action_name], ::String, context: "#{context}[:action_name]")
        Hearth::Validator.validate!(input[:action_type], ::String, context: "#{context}[:action_type]")
        Hearth::Validator.validate!(input[:action_arn], ::String, context: "#{context}[:action_arn]")
        Hearth::Validator.validate!(input[:action_id], ::String, context: "#{context}[:action_id]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Validators::MitigationActionParams.validate!(input[:action_params], context: "#{context}[:action_params]") unless input[:action_params].nil?
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:last_modified_date], ::Time, context: "#{context}[:last_modified_date]")
      end
    end

    class DescribeProvisioningTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeProvisioningTemplateInput, context: context)
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
      end
    end

    class DescribeProvisioningTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeProvisioningTemplateOutput, context: context)
        Hearth::Validator.validate!(input[:template_arn], ::String, context: "#{context}[:template_arn]")
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:last_modified_date], ::Time, context: "#{context}[:last_modified_date]")
        Hearth::Validator.validate!(input[:default_version_id], ::Integer, context: "#{context}[:default_version_id]")
        Hearth::Validator.validate!(input[:template_body], ::String, context: "#{context}[:template_body]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:provisioning_role_arn], ::String, context: "#{context}[:provisioning_role_arn]")
        Validators::ProvisioningHook.validate!(input[:pre_provisioning_hook], context: "#{context}[:pre_provisioning_hook]") unless input[:pre_provisioning_hook].nil?
      end
    end

    class DescribeProvisioningTemplateVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeProvisioningTemplateVersionInput, context: context)
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:version_id], ::Integer, context: "#{context}[:version_id]")
      end
    end

    class DescribeProvisioningTemplateVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeProvisioningTemplateVersionOutput, context: context)
        Hearth::Validator.validate!(input[:version_id], ::Integer, context: "#{context}[:version_id]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:template_body], ::String, context: "#{context}[:template_body]")
        Hearth::Validator.validate!(input[:is_default_version], ::TrueClass, ::FalseClass, context: "#{context}[:is_default_version]")
      end
    end

    class DescribeRoleAliasInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRoleAliasInput, context: context)
        Hearth::Validator.validate!(input[:role_alias], ::String, context: "#{context}[:role_alias]")
      end
    end

    class DescribeRoleAliasOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRoleAliasOutput, context: context)
        Validators::RoleAliasDescription.validate!(input[:role_alias_description], context: "#{context}[:role_alias_description]") unless input[:role_alias_description].nil?
      end
    end

    class DescribeScheduledAuditInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeScheduledAuditInput, context: context)
        Hearth::Validator.validate!(input[:scheduled_audit_name], ::String, context: "#{context}[:scheduled_audit_name]")
      end
    end

    class DescribeScheduledAuditOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeScheduledAuditOutput, context: context)
        Hearth::Validator.validate!(input[:frequency], ::String, context: "#{context}[:frequency]")
        Hearth::Validator.validate!(input[:day_of_month], ::String, context: "#{context}[:day_of_month]")
        Hearth::Validator.validate!(input[:day_of_week], ::String, context: "#{context}[:day_of_week]")
        Validators::TargetAuditCheckNames.validate!(input[:target_check_names], context: "#{context}[:target_check_names]") unless input[:target_check_names].nil?
        Hearth::Validator.validate!(input[:scheduled_audit_name], ::String, context: "#{context}[:scheduled_audit_name]")
        Hearth::Validator.validate!(input[:scheduled_audit_arn], ::String, context: "#{context}[:scheduled_audit_arn]")
      end
    end

    class DescribeSecurityProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSecurityProfileInput, context: context)
        Hearth::Validator.validate!(input[:security_profile_name], ::String, context: "#{context}[:security_profile_name]")
      end
    end

    class DescribeSecurityProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSecurityProfileOutput, context: context)
        Hearth::Validator.validate!(input[:security_profile_name], ::String, context: "#{context}[:security_profile_name]")
        Hearth::Validator.validate!(input[:security_profile_arn], ::String, context: "#{context}[:security_profile_arn]")
        Hearth::Validator.validate!(input[:security_profile_description], ::String, context: "#{context}[:security_profile_description]")
        Validators::Behaviors.validate!(input[:behaviors], context: "#{context}[:behaviors]") unless input[:behaviors].nil?
        Validators::AlertTargets.validate!(input[:alert_targets], context: "#{context}[:alert_targets]") unless input[:alert_targets].nil?
        Validators::AdditionalMetricsToRetainList.validate!(input[:additional_metrics_to_retain], context: "#{context}[:additional_metrics_to_retain]") unless input[:additional_metrics_to_retain].nil?
        Validators::AdditionalMetricsToRetainV2List.validate!(input[:additional_metrics_to_retain_v2], context: "#{context}[:additional_metrics_to_retain_v2]") unless input[:additional_metrics_to_retain_v2].nil?
        Hearth::Validator.validate!(input[:version], ::Integer, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:last_modified_date], ::Time, context: "#{context}[:last_modified_date]")
      end
    end

    class DescribeStreamInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeStreamInput, context: context)
        Hearth::Validator.validate!(input[:stream_id], ::String, context: "#{context}[:stream_id]")
      end
    end

    class DescribeStreamOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeStreamOutput, context: context)
        Validators::StreamInfo.validate!(input[:stream_info], context: "#{context}[:stream_info]") unless input[:stream_info].nil?
      end
    end

    class DescribeThingGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeThingGroupInput, context: context)
        Hearth::Validator.validate!(input[:thing_group_name], ::String, context: "#{context}[:thing_group_name]")
      end
    end

    class DescribeThingGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeThingGroupOutput, context: context)
        Hearth::Validator.validate!(input[:thing_group_name], ::String, context: "#{context}[:thing_group_name]")
        Hearth::Validator.validate!(input[:thing_group_id], ::String, context: "#{context}[:thing_group_id]")
        Hearth::Validator.validate!(input[:thing_group_arn], ::String, context: "#{context}[:thing_group_arn]")
        Hearth::Validator.validate!(input[:version], ::Integer, context: "#{context}[:version]")
        Validators::ThingGroupProperties.validate!(input[:thing_group_properties], context: "#{context}[:thing_group_properties]") unless input[:thing_group_properties].nil?
        Validators::ThingGroupMetadata.validate!(input[:thing_group_metadata], context: "#{context}[:thing_group_metadata]") unless input[:thing_group_metadata].nil?
        Hearth::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
        Hearth::Validator.validate!(input[:query_string], ::String, context: "#{context}[:query_string]")
        Hearth::Validator.validate!(input[:query_version], ::String, context: "#{context}[:query_version]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class DescribeThingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeThingInput, context: context)
        Hearth::Validator.validate!(input[:thing_name], ::String, context: "#{context}[:thing_name]")
      end
    end

    class DescribeThingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeThingOutput, context: context)
        Hearth::Validator.validate!(input[:default_client_id], ::String, context: "#{context}[:default_client_id]")
        Hearth::Validator.validate!(input[:thing_name], ::String, context: "#{context}[:thing_name]")
        Hearth::Validator.validate!(input[:thing_id], ::String, context: "#{context}[:thing_id]")
        Hearth::Validator.validate!(input[:thing_arn], ::String, context: "#{context}[:thing_arn]")
        Hearth::Validator.validate!(input[:thing_type_name], ::String, context: "#{context}[:thing_type_name]")
        Validators::Attributes.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
        Hearth::Validator.validate!(input[:version], ::Integer, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:billing_group_name], ::String, context: "#{context}[:billing_group_name]")
      end
    end

    class DescribeThingRegistrationTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeThingRegistrationTaskInput, context: context)
        Hearth::Validator.validate!(input[:task_id], ::String, context: "#{context}[:task_id]")
      end
    end

    class DescribeThingRegistrationTaskOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeThingRegistrationTaskOutput, context: context)
        Hearth::Validator.validate!(input[:task_id], ::String, context: "#{context}[:task_id]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:last_modified_date], ::Time, context: "#{context}[:last_modified_date]")
        Hearth::Validator.validate!(input[:template_body], ::String, context: "#{context}[:template_body]")
        Hearth::Validator.validate!(input[:input_file_bucket], ::String, context: "#{context}[:input_file_bucket]")
        Hearth::Validator.validate!(input[:input_file_key], ::String, context: "#{context}[:input_file_key]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:success_count], ::Integer, context: "#{context}[:success_count]")
        Hearth::Validator.validate!(input[:failure_count], ::Integer, context: "#{context}[:failure_count]")
        Hearth::Validator.validate!(input[:percentage_progress], ::Integer, context: "#{context}[:percentage_progress]")
      end
    end

    class DescribeThingTypeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeThingTypeInput, context: context)
        Hearth::Validator.validate!(input[:thing_type_name], ::String, context: "#{context}[:thing_type_name]")
      end
    end

    class DescribeThingTypeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeThingTypeOutput, context: context)
        Hearth::Validator.validate!(input[:thing_type_name], ::String, context: "#{context}[:thing_type_name]")
        Hearth::Validator.validate!(input[:thing_type_id], ::String, context: "#{context}[:thing_type_id]")
        Hearth::Validator.validate!(input[:thing_type_arn], ::String, context: "#{context}[:thing_type_arn]")
        Validators::ThingTypeProperties.validate!(input[:thing_type_properties], context: "#{context}[:thing_type_properties]") unless input[:thing_type_properties].nil?
        Validators::ThingTypeMetadata.validate!(input[:thing_type_metadata], context: "#{context}[:thing_type_metadata]") unless input[:thing_type_metadata].nil?
      end
    end

    class Destination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Destination, context: context)
        Validators::S3Destination.validate!(input[:s3_destination], context: "#{context}[:s3_destination]") unless input[:s3_destination].nil?
      end
    end

    class DetachPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetachPolicyInput, context: context)
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
        Hearth::Validator.validate!(input[:target], ::String, context: "#{context}[:target]")
      end
    end

    class DetachPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetachPolicyOutput, context: context)
      end
    end

    class DetachPrincipalPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetachPrincipalPolicyInput, context: context)
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
        Hearth::Validator.validate!(input[:principal], ::String, context: "#{context}[:principal]")
      end
    end

    class DetachPrincipalPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetachPrincipalPolicyOutput, context: context)
      end
    end

    class DetachSecurityProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetachSecurityProfileInput, context: context)
        Hearth::Validator.validate!(input[:security_profile_name], ::String, context: "#{context}[:security_profile_name]")
        Hearth::Validator.validate!(input[:security_profile_target_arn], ::String, context: "#{context}[:security_profile_target_arn]")
      end
    end

    class DetachSecurityProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetachSecurityProfileOutput, context: context)
      end
    end

    class DetachThingPrincipalInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetachThingPrincipalInput, context: context)
        Hearth::Validator.validate!(input[:thing_name], ::String, context: "#{context}[:thing_name]")
        Hearth::Validator.validate!(input[:principal], ::String, context: "#{context}[:principal]")
      end
    end

    class DetachThingPrincipalOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetachThingPrincipalOutput, context: context)
      end
    end

    class DetailsMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class DetectMitigationActionExecution
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetectMitigationActionExecution, context: context)
        Hearth::Validator.validate!(input[:task_id], ::String, context: "#{context}[:task_id]")
        Hearth::Validator.validate!(input[:violation_id], ::String, context: "#{context}[:violation_id]")
        Hearth::Validator.validate!(input[:action_name], ::String, context: "#{context}[:action_name]")
        Hearth::Validator.validate!(input[:thing_name], ::String, context: "#{context}[:thing_name]")
        Hearth::Validator.validate!(input[:execution_start_date], ::Time, context: "#{context}[:execution_start_date]")
        Hearth::Validator.validate!(input[:execution_end_date], ::Time, context: "#{context}[:execution_end_date]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DetectMitigationActionExecutionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DetectMitigationActionExecution.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DetectMitigationActionsTaskStatistics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetectMitigationActionsTaskStatistics, context: context)
        Hearth::Validator.validate!(input[:actions_executed], ::Integer, context: "#{context}[:actions_executed]")
        Hearth::Validator.validate!(input[:actions_skipped], ::Integer, context: "#{context}[:actions_skipped]")
        Hearth::Validator.validate!(input[:actions_failed], ::Integer, context: "#{context}[:actions_failed]")
      end
    end

    class DetectMitigationActionsTaskSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetectMitigationActionsTaskSummary, context: context)
        Hearth::Validator.validate!(input[:task_id], ::String, context: "#{context}[:task_id]")
        Hearth::Validator.validate!(input[:task_status], ::String, context: "#{context}[:task_status]")
        Hearth::Validator.validate!(input[:task_start_time], ::Time, context: "#{context}[:task_start_time]")
        Hearth::Validator.validate!(input[:task_end_time], ::Time, context: "#{context}[:task_end_time]")
        Validators::DetectMitigationActionsTaskTarget.validate!(input[:target], context: "#{context}[:target]") unless input[:target].nil?
        Validators::ViolationEventOccurrenceRange.validate!(input[:violation_event_occurrence_range], context: "#{context}[:violation_event_occurrence_range]") unless input[:violation_event_occurrence_range].nil?
        Hearth::Validator.validate!(input[:only_active_violations_included], ::TrueClass, ::FalseClass, context: "#{context}[:only_active_violations_included]")
        Hearth::Validator.validate!(input[:suppressed_alerts_included], ::TrueClass, ::FalseClass, context: "#{context}[:suppressed_alerts_included]")
        Validators::MitigationActionList.validate!(input[:actions_definition], context: "#{context}[:actions_definition]") unless input[:actions_definition].nil?
        Validators::DetectMitigationActionsTaskStatistics.validate!(input[:task_statistics], context: "#{context}[:task_statistics]") unless input[:task_statistics].nil?
      end
    end

    class DetectMitigationActionsTaskSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DetectMitigationActionsTaskSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DetectMitigationActionsTaskTarget
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetectMitigationActionsTaskTarget, context: context)
        Validators::TargetViolationIdsForDetectMitigationActions.validate!(input[:violation_ids], context: "#{context}[:violation_ids]") unless input[:violation_ids].nil?
        Hearth::Validator.validate!(input[:security_profile_name], ::String, context: "#{context}[:security_profile_name]")
        Hearth::Validator.validate!(input[:behavior_name], ::String, context: "#{context}[:behavior_name]")
      end
    end

    class DetectMitigationActionsToExecuteList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DimensionNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DimensionStringValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DisableTopicRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableTopicRuleInput, context: context)
        Hearth::Validator.validate!(input[:rule_name], ::String, context: "#{context}[:rule_name]")
      end
    end

    class DisableTopicRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableTopicRuleOutput, context: context)
      end
    end

    class DocumentParameter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DocumentParameter, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:regex], ::String, context: "#{context}[:regex]")
        Hearth::Validator.validate!(input[:example], ::String, context: "#{context}[:example]")
        Hearth::Validator.validate!(input[:optional], ::TrueClass, ::FalseClass, context: "#{context}[:optional]")
      end
    end

    class DocumentParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DocumentParameter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DomainConfigurationSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DomainConfigurationSummary, context: context)
        Hearth::Validator.validate!(input[:domain_configuration_name], ::String, context: "#{context}[:domain_configuration_name]")
        Hearth::Validator.validate!(input[:domain_configuration_arn], ::String, context: "#{context}[:domain_configuration_arn]")
        Hearth::Validator.validate!(input[:service_type], ::String, context: "#{context}[:service_type]")
      end
    end

    class DomainConfigurations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DomainConfigurationSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DynamoDBAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DynamoDBAction, context: context)
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:operation], ::String, context: "#{context}[:operation]")
        Hearth::Validator.validate!(input[:hash_key_field], ::String, context: "#{context}[:hash_key_field]")
        Hearth::Validator.validate!(input[:hash_key_value], ::String, context: "#{context}[:hash_key_value]")
        Hearth::Validator.validate!(input[:hash_key_type], ::String, context: "#{context}[:hash_key_type]")
        Hearth::Validator.validate!(input[:range_key_field], ::String, context: "#{context}[:range_key_field]")
        Hearth::Validator.validate!(input[:range_key_value], ::String, context: "#{context}[:range_key_value]")
        Hearth::Validator.validate!(input[:range_key_type], ::String, context: "#{context}[:range_key_type]")
        Hearth::Validator.validate!(input[:payload_field], ::String, context: "#{context}[:payload_field]")
      end
    end

    class DynamoDBv2Action
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DynamoDBv2Action, context: context)
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Validators::PutItemInput.validate!(input[:put_item], context: "#{context}[:put_item]") unless input[:put_item].nil?
      end
    end

    class EffectivePolicies
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::EffectivePolicy.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EffectivePolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EffectivePolicy, context: context)
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
        Hearth::Validator.validate!(input[:policy_arn], ::String, context: "#{context}[:policy_arn]")
        Hearth::Validator.validate!(input[:policy_document], ::String, context: "#{context}[:policy_document]")
      end
    end

    class ElasticsearchAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ElasticsearchAction, context: context)
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:endpoint], ::String, context: "#{context}[:endpoint]")
        Hearth::Validator.validate!(input[:index], ::String, context: "#{context}[:index]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class EnableIoTLoggingParams
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableIoTLoggingParams, context: context)
        Hearth::Validator.validate!(input[:role_arn_for_logging], ::String, context: "#{context}[:role_arn_for_logging]")
        Hearth::Validator.validate!(input[:log_level], ::String, context: "#{context}[:log_level]")
      end
    end

    class EnableTopicRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableTopicRuleInput, context: context)
        Hearth::Validator.validate!(input[:rule_name], ::String, context: "#{context}[:rule_name]")
      end
    end

    class EnableTopicRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableTopicRuleOutput, context: context)
      end
    end

    class Environments
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ErrorInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ErrorInfo, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class EventConfigurations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::Configuration.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class ExplicitDeny
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExplicitDeny, context: context)
        Validators::Policies.validate!(input[:policies], context: "#{context}[:policies]") unless input[:policies].nil?
      end
    end

    class ExponentialRolloutRate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExponentialRolloutRate, context: context)
        Hearth::Validator.validate!(input[:base_rate_per_minute], ::Integer, context: "#{context}[:base_rate_per_minute]")
        Hearth::Validator.validate!(input[:increment_factor], ::Float, context: "#{context}[:increment_factor]")
        Validators::RateIncreaseCriteria.validate!(input[:rate_increase_criteria], context: "#{context}[:rate_increase_criteria]") unless input[:rate_increase_criteria].nil?
      end
    end

    class Field
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Field, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class Fields
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Field.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FileLocation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FileLocation, context: context)
        Validators::Stream.validate!(input[:stream], context: "#{context}[:stream]") unless input[:stream].nil?
        Validators::S3Location.validate!(input[:s3_location], context: "#{context}[:s3_location]") unless input[:s3_location].nil?
      end
    end

    class FindingIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class FirehoseAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FirehoseAction, context: context)
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:delivery_stream_name], ::String, context: "#{context}[:delivery_stream_name]")
        Hearth::Validator.validate!(input[:separator], ::String, context: "#{context}[:separator]")
        Hearth::Validator.validate!(input[:batch_mode], ::TrueClass, ::FalseClass, context: "#{context}[:batch_mode]")
      end
    end

    class FleetMetricNameAndArn
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FleetMetricNameAndArn, context: context)
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        Hearth::Validator.validate!(input[:metric_arn], ::String, context: "#{context}[:metric_arn]")
      end
    end

    class FleetMetricNameAndArnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::FleetMetricNameAndArn.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GetBehaviorModelTrainingSummariesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBehaviorModelTrainingSummariesInput, context: context)
        Hearth::Validator.validate!(input[:security_profile_name], ::String, context: "#{context}[:security_profile_name]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetBehaviorModelTrainingSummariesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBehaviorModelTrainingSummariesOutput, context: context)
        Validators::BehaviorModelTrainingSummaries.validate!(input[:summaries], context: "#{context}[:summaries]") unless input[:summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetBucketsAggregationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBucketsAggregationInput, context: context)
        Hearth::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
        Hearth::Validator.validate!(input[:query_string], ::String, context: "#{context}[:query_string]")
        Hearth::Validator.validate!(input[:aggregation_field], ::String, context: "#{context}[:aggregation_field]")
        Hearth::Validator.validate!(input[:query_version], ::String, context: "#{context}[:query_version]")
        Validators::BucketsAggregationType.validate!(input[:buckets_aggregation_type], context: "#{context}[:buckets_aggregation_type]") unless input[:buckets_aggregation_type].nil?
      end
    end

    class GetBucketsAggregationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBucketsAggregationOutput, context: context)
        Hearth::Validator.validate!(input[:total_count], ::Integer, context: "#{context}[:total_count]")
        Validators::Buckets.validate!(input[:buckets], context: "#{context}[:buckets]") unless input[:buckets].nil?
      end
    end

    class GetCardinalityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCardinalityInput, context: context)
        Hearth::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
        Hearth::Validator.validate!(input[:query_string], ::String, context: "#{context}[:query_string]")
        Hearth::Validator.validate!(input[:aggregation_field], ::String, context: "#{context}[:aggregation_field]")
        Hearth::Validator.validate!(input[:query_version], ::String, context: "#{context}[:query_version]")
      end
    end

    class GetCardinalityOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCardinalityOutput, context: context)
        Hearth::Validator.validate!(input[:cardinality], ::Integer, context: "#{context}[:cardinality]")
      end
    end

    class GetEffectivePoliciesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEffectivePoliciesInput, context: context)
        Hearth::Validator.validate!(input[:principal], ::String, context: "#{context}[:principal]")
        Hearth::Validator.validate!(input[:cognito_identity_pool_id], ::String, context: "#{context}[:cognito_identity_pool_id]")
        Hearth::Validator.validate!(input[:thing_name], ::String, context: "#{context}[:thing_name]")
      end
    end

    class GetEffectivePoliciesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEffectivePoliciesOutput, context: context)
        Validators::EffectivePolicies.validate!(input[:effective_policies], context: "#{context}[:effective_policies]") unless input[:effective_policies].nil?
      end
    end

    class GetIndexingConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetIndexingConfigurationInput, context: context)
      end
    end

    class GetIndexingConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetIndexingConfigurationOutput, context: context)
        Validators::ThingIndexingConfiguration.validate!(input[:thing_indexing_configuration], context: "#{context}[:thing_indexing_configuration]") unless input[:thing_indexing_configuration].nil?
        Validators::ThingGroupIndexingConfiguration.validate!(input[:thing_group_indexing_configuration], context: "#{context}[:thing_group_indexing_configuration]") unless input[:thing_group_indexing_configuration].nil?
      end
    end

    class GetJobDocumentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetJobDocumentInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class GetJobDocumentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetJobDocumentOutput, context: context)
        Hearth::Validator.validate!(input[:document], ::String, context: "#{context}[:document]")
      end
    end

    class GetLoggingOptionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLoggingOptionsInput, context: context)
      end
    end

    class GetLoggingOptionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLoggingOptionsOutput, context: context)
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:log_level], ::String, context: "#{context}[:log_level]")
      end
    end

    class GetOTAUpdateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetOTAUpdateInput, context: context)
        Hearth::Validator.validate!(input[:ota_update_id], ::String, context: "#{context}[:ota_update_id]")
      end
    end

    class GetOTAUpdateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetOTAUpdateOutput, context: context)
        Validators::OTAUpdateInfo.validate!(input[:ota_update_info], context: "#{context}[:ota_update_info]") unless input[:ota_update_info].nil?
      end
    end

    class GetPercentilesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPercentilesInput, context: context)
        Hearth::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
        Hearth::Validator.validate!(input[:query_string], ::String, context: "#{context}[:query_string]")
        Hearth::Validator.validate!(input[:aggregation_field], ::String, context: "#{context}[:aggregation_field]")
        Hearth::Validator.validate!(input[:query_version], ::String, context: "#{context}[:query_version]")
        Validators::PercentList.validate!(input[:percents], context: "#{context}[:percents]") unless input[:percents].nil?
      end
    end

    class GetPercentilesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPercentilesOutput, context: context)
        Validators::Percentiles.validate!(input[:percentiles], context: "#{context}[:percentiles]") unless input[:percentiles].nil?
      end
    end

    class GetPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPolicyInput, context: context)
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
      end
    end

    class GetPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPolicyOutput, context: context)
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
        Hearth::Validator.validate!(input[:policy_arn], ::String, context: "#{context}[:policy_arn]")
        Hearth::Validator.validate!(input[:policy_document], ::String, context: "#{context}[:policy_document]")
        Hearth::Validator.validate!(input[:default_version_id], ::String, context: "#{context}[:default_version_id]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:last_modified_date], ::Time, context: "#{context}[:last_modified_date]")
        Hearth::Validator.validate!(input[:generation_id], ::String, context: "#{context}[:generation_id]")
      end
    end

    class GetPolicyVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPolicyVersionInput, context: context)
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
        Hearth::Validator.validate!(input[:policy_version_id], ::String, context: "#{context}[:policy_version_id]")
      end
    end

    class GetPolicyVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPolicyVersionOutput, context: context)
        Hearth::Validator.validate!(input[:policy_arn], ::String, context: "#{context}[:policy_arn]")
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
        Hearth::Validator.validate!(input[:policy_document], ::String, context: "#{context}[:policy_document]")
        Hearth::Validator.validate!(input[:policy_version_id], ::String, context: "#{context}[:policy_version_id]")
        Hearth::Validator.validate!(input[:is_default_version], ::TrueClass, ::FalseClass, context: "#{context}[:is_default_version]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:last_modified_date], ::Time, context: "#{context}[:last_modified_date]")
        Hearth::Validator.validate!(input[:generation_id], ::String, context: "#{context}[:generation_id]")
      end
    end

    class GetRegistrationCodeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRegistrationCodeInput, context: context)
      end
    end

    class GetRegistrationCodeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRegistrationCodeOutput, context: context)
        Hearth::Validator.validate!(input[:registration_code], ::String, context: "#{context}[:registration_code]")
      end
    end

    class GetStatisticsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetStatisticsInput, context: context)
        Hearth::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
        Hearth::Validator.validate!(input[:query_string], ::String, context: "#{context}[:query_string]")
        Hearth::Validator.validate!(input[:aggregation_field], ::String, context: "#{context}[:aggregation_field]")
        Hearth::Validator.validate!(input[:query_version], ::String, context: "#{context}[:query_version]")
      end
    end

    class GetStatisticsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetStatisticsOutput, context: context)
        Validators::Statistics.validate!(input[:statistics], context: "#{context}[:statistics]") unless input[:statistics].nil?
      end
    end

    class GetTopicRuleDestinationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTopicRuleDestinationInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class GetTopicRuleDestinationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTopicRuleDestinationOutput, context: context)
        Validators::TopicRuleDestination.validate!(input[:topic_rule_destination], context: "#{context}[:topic_rule_destination]") unless input[:topic_rule_destination].nil?
      end
    end

    class GetTopicRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTopicRuleInput, context: context)
        Hearth::Validator.validate!(input[:rule_name], ::String, context: "#{context}[:rule_name]")
      end
    end

    class GetTopicRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTopicRuleOutput, context: context)
        Hearth::Validator.validate!(input[:rule_arn], ::String, context: "#{context}[:rule_arn]")
        Validators::TopicRule.validate!(input[:rule], context: "#{context}[:rule]") unless input[:rule].nil?
      end
    end

    class GetV2LoggingOptionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetV2LoggingOptionsInput, context: context)
      end
    end

    class GetV2LoggingOptionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetV2LoggingOptionsOutput, context: context)
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:default_log_level], ::String, context: "#{context}[:default_log_level]")
        Hearth::Validator.validate!(input[:disable_all_logs], ::TrueClass, ::FalseClass, context: "#{context}[:disable_all_logs]")
      end
    end

    class GroupNameAndArn
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GroupNameAndArn, context: context)
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Hearth::Validator.validate!(input[:group_arn], ::String, context: "#{context}[:group_arn]")
      end
    end

    class HeaderList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::HttpActionHeader.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class HttpAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HttpAction, context: context)
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
        Hearth::Validator.validate!(input[:confirmation_url], ::String, context: "#{context}[:confirmation_url]")
        Validators::HeaderList.validate!(input[:headers], context: "#{context}[:headers]") unless input[:headers].nil?
        Validators::HttpAuthorization.validate!(input[:auth], context: "#{context}[:auth]") unless input[:auth].nil?
      end
    end

    class HttpActionHeader
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HttpActionHeader, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class HttpAuthorization
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HttpAuthorization, context: context)
        Validators::SigV4Authorization.validate!(input[:sigv4], context: "#{context}[:sigv4]") unless input[:sigv4].nil?
      end
    end

    class HttpContext
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HttpContext, context: context)
        Validators::HttpHeaders.validate!(input[:headers], context: "#{context}[:headers]") unless input[:headers].nil?
        Hearth::Validator.validate!(input[:query_string], ::String, context: "#{context}[:query_string]")
      end
    end

    class HttpHeaders
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class HttpUrlDestinationConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HttpUrlDestinationConfiguration, context: context)
        Hearth::Validator.validate!(input[:confirmation_url], ::String, context: "#{context}[:confirmation_url]")
      end
    end

    class HttpUrlDestinationProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HttpUrlDestinationProperties, context: context)
        Hearth::Validator.validate!(input[:confirmation_url], ::String, context: "#{context}[:confirmation_url]")
      end
    end

    class HttpUrlDestinationSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HttpUrlDestinationSummary, context: context)
        Hearth::Validator.validate!(input[:confirmation_url], ::String, context: "#{context}[:confirmation_url]")
      end
    end

    class ImplicitDeny
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImplicitDeny, context: context)
        Validators::Policies.validate!(input[:policies], context: "#{context}[:policies]") unless input[:policies].nil?
      end
    end

    class IndexNamesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class IndexNotReadyException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IndexNotReadyException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InternalException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InternalFailureException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalFailureException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidAggregationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidAggregationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidQueryException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidQueryException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidResponseException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidResponseException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidStateTransitionException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidStateTransitionException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class IotAnalyticsAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IotAnalyticsAction, context: context)
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
        Hearth::Validator.validate!(input[:channel_name], ::String, context: "#{context}[:channel_name]")
        Hearth::Validator.validate!(input[:batch_mode], ::TrueClass, ::FalseClass, context: "#{context}[:batch_mode]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
      end
    end

    class IotEventsAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IotEventsAction, context: context)
        Hearth::Validator.validate!(input[:input_name], ::String, context: "#{context}[:input_name]")
        Hearth::Validator.validate!(input[:message_id], ::String, context: "#{context}[:message_id]")
        Hearth::Validator.validate!(input[:batch_mode], ::TrueClass, ::FalseClass, context: "#{context}[:batch_mode]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
      end
    end

    class IotSiteWiseAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IotSiteWiseAction, context: context)
        Validators::PutAssetPropertyValueEntryList.validate!(input[:put_asset_property_value_entries], context: "#{context}[:put_asset_property_value_entries]") unless input[:put_asset_property_value_entries].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
      end
    end

    class Job
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Job, context: context)
        Hearth::Validator.validate!(input[:job_arn], ::String, context: "#{context}[:job_arn]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:target_selection], ::String, context: "#{context}[:target_selection]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:force_canceled], ::TrueClass, ::FalseClass, context: "#{context}[:force_canceled]")
        Hearth::Validator.validate!(input[:reason_code], ::String, context: "#{context}[:reason_code]")
        Hearth::Validator.validate!(input[:comment], ::String, context: "#{context}[:comment]")
        Validators::JobTargets.validate!(input[:targets], context: "#{context}[:targets]") unless input[:targets].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::PresignedUrlConfig.validate!(input[:presigned_url_config], context: "#{context}[:presigned_url_config]") unless input[:presigned_url_config].nil?
        Validators::JobExecutionsRolloutConfig.validate!(input[:job_executions_rollout_config], context: "#{context}[:job_executions_rollout_config]") unless input[:job_executions_rollout_config].nil?
        Validators::AbortConfig.validate!(input[:abort_config], context: "#{context}[:abort_config]") unless input[:abort_config].nil?
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
        Hearth::Validator.validate!(input[:completed_at], ::Time, context: "#{context}[:completed_at]")
        Validators::JobProcessDetails.validate!(input[:job_process_details], context: "#{context}[:job_process_details]") unless input[:job_process_details].nil?
        Validators::TimeoutConfig.validate!(input[:timeout_config], context: "#{context}[:timeout_config]") unless input[:timeout_config].nil?
        Hearth::Validator.validate!(input[:namespace_id], ::String, context: "#{context}[:namespace_id]")
        Hearth::Validator.validate!(input[:job_template_arn], ::String, context: "#{context}[:job_template_arn]")
        Validators::JobExecutionsRetryConfig.validate!(input[:job_executions_retry_config], context: "#{context}[:job_executions_retry_config]") unless input[:job_executions_retry_config].nil?
        Validators::ParameterMap.validate!(input[:document_parameters], context: "#{context}[:document_parameters]") unless input[:document_parameters].nil?
        Hearth::Validator.validate!(input[:is_concurrent], ::TrueClass, ::FalseClass, context: "#{context}[:is_concurrent]")
      end
    end

    class JobExecution
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobExecution, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:force_canceled], ::TrueClass, ::FalseClass, context: "#{context}[:force_canceled]")
        Validators::JobExecutionStatusDetails.validate!(input[:status_details], context: "#{context}[:status_details]") unless input[:status_details].nil?
        Hearth::Validator.validate!(input[:thing_arn], ::String, context: "#{context}[:thing_arn]")
        Hearth::Validator.validate!(input[:queued_at], ::Time, context: "#{context}[:queued_at]")
        Hearth::Validator.validate!(input[:started_at], ::Time, context: "#{context}[:started_at]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
        Hearth::Validator.validate!(input[:execution_number], ::Integer, context: "#{context}[:execution_number]")
        Hearth::Validator.validate!(input[:version_number], ::Integer, context: "#{context}[:version_number]")
        Hearth::Validator.validate!(input[:approximate_seconds_before_timed_out], ::Integer, context: "#{context}[:approximate_seconds_before_timed_out]")
      end
    end

    class JobExecutionStatusDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobExecutionStatusDetails, context: context)
        Validators::DetailsMap.validate!(input[:details_map], context: "#{context}[:details_map]") unless input[:details_map].nil?
      end
    end

    class JobExecutionSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobExecutionSummary, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:queued_at], ::Time, context: "#{context}[:queued_at]")
        Hearth::Validator.validate!(input[:started_at], ::Time, context: "#{context}[:started_at]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
        Hearth::Validator.validate!(input[:execution_number], ::Integer, context: "#{context}[:execution_number]")
        Hearth::Validator.validate!(input[:retry_attempt], ::Integer, context: "#{context}[:retry_attempt]")
      end
    end

    class JobExecutionSummaryForJob
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobExecutionSummaryForJob, context: context)
        Hearth::Validator.validate!(input[:thing_arn], ::String, context: "#{context}[:thing_arn]")
        Validators::JobExecutionSummary.validate!(input[:job_execution_summary], context: "#{context}[:job_execution_summary]") unless input[:job_execution_summary].nil?
      end
    end

    class JobExecutionSummaryForJobList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::JobExecutionSummaryForJob.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class JobExecutionSummaryForThing
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobExecutionSummaryForThing, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Validators::JobExecutionSummary.validate!(input[:job_execution_summary], context: "#{context}[:job_execution_summary]") unless input[:job_execution_summary].nil?
      end
    end

    class JobExecutionSummaryForThingList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::JobExecutionSummaryForThing.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class JobExecutionsRetryConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobExecutionsRetryConfig, context: context)
        Validators::RetryCriteriaList.validate!(input[:criteria_list], context: "#{context}[:criteria_list]") unless input[:criteria_list].nil?
      end
    end

    class JobExecutionsRolloutConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobExecutionsRolloutConfig, context: context)
        Hearth::Validator.validate!(input[:maximum_per_minute], ::Integer, context: "#{context}[:maximum_per_minute]")
        Validators::ExponentialRolloutRate.validate!(input[:exponential_rate], context: "#{context}[:exponential_rate]") unless input[:exponential_rate].nil?
      end
    end

    class JobProcessDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobProcessDetails, context: context)
        Validators::ProcessingTargetNameList.validate!(input[:processing_targets], context: "#{context}[:processing_targets]") unless input[:processing_targets].nil?
        Hearth::Validator.validate!(input[:number_of_canceled_things], ::Integer, context: "#{context}[:number_of_canceled_things]")
        Hearth::Validator.validate!(input[:number_of_succeeded_things], ::Integer, context: "#{context}[:number_of_succeeded_things]")
        Hearth::Validator.validate!(input[:number_of_failed_things], ::Integer, context: "#{context}[:number_of_failed_things]")
        Hearth::Validator.validate!(input[:number_of_rejected_things], ::Integer, context: "#{context}[:number_of_rejected_things]")
        Hearth::Validator.validate!(input[:number_of_queued_things], ::Integer, context: "#{context}[:number_of_queued_things]")
        Hearth::Validator.validate!(input[:number_of_in_progress_things], ::Integer, context: "#{context}[:number_of_in_progress_things]")
        Hearth::Validator.validate!(input[:number_of_removed_things], ::Integer, context: "#{context}[:number_of_removed_things]")
        Hearth::Validator.validate!(input[:number_of_timed_out_things], ::Integer, context: "#{context}[:number_of_timed_out_things]")
      end
    end

    class JobSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobSummary, context: context)
        Hearth::Validator.validate!(input[:job_arn], ::String, context: "#{context}[:job_arn]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:thing_group_id], ::String, context: "#{context}[:thing_group_id]")
        Hearth::Validator.validate!(input[:target_selection], ::String, context: "#{context}[:target_selection]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
        Hearth::Validator.validate!(input[:completed_at], ::Time, context: "#{context}[:completed_at]")
        Hearth::Validator.validate!(input[:is_concurrent], ::TrueClass, ::FalseClass, context: "#{context}[:is_concurrent]")
      end
    end

    class JobSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::JobSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class JobTargets
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class JobTemplateSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobTemplateSummary, context: context)
        Hearth::Validator.validate!(input[:job_template_arn], ::String, context: "#{context}[:job_template_arn]")
        Hearth::Validator.validate!(input[:job_template_id], ::String, context: "#{context}[:job_template_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
      end
    end

    class JobTemplateSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::JobTemplateSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class KafkaAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KafkaAction, context: context)
        Hearth::Validator.validate!(input[:destination_arn], ::String, context: "#{context}[:destination_arn]")
        Hearth::Validator.validate!(input[:topic], ::String, context: "#{context}[:topic]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:partition], ::String, context: "#{context}[:partition]")
        Validators::ClientProperties.validate!(input[:client_properties], context: "#{context}[:client_properties]") unless input[:client_properties].nil?
      end
    end

    class KeyPair
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KeyPair, context: context)
        Hearth::Validator.validate!(input[:public_key], ::String, context: "#{context}[:public_key]")
        Hearth::Validator.validate!(input[:private_key], ::String, context: "#{context}[:private_key]")
      end
    end

    class KinesisAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KinesisAction, context: context)
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:stream_name], ::String, context: "#{context}[:stream_name]")
        Hearth::Validator.validate!(input[:partition_key], ::String, context: "#{context}[:partition_key]")
      end
    end

    class LambdaAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LambdaAction, context: context)
        Hearth::Validator.validate!(input[:function_arn], ::String, context: "#{context}[:function_arn]")
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListActiveViolationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListActiveViolationsInput, context: context)
        Hearth::Validator.validate!(input[:thing_name], ::String, context: "#{context}[:thing_name]")
        Hearth::Validator.validate!(input[:security_profile_name], ::String, context: "#{context}[:security_profile_name]")
        Hearth::Validator.validate!(input[:behavior_criteria_type], ::String, context: "#{context}[:behavior_criteria_type]")
        Hearth::Validator.validate!(input[:list_suppressed_alerts], ::TrueClass, ::FalseClass, context: "#{context}[:list_suppressed_alerts]")
        Hearth::Validator.validate!(input[:verification_state], ::String, context: "#{context}[:verification_state]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListActiveViolationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListActiveViolationsOutput, context: context)
        Validators::ActiveViolations.validate!(input[:active_violations], context: "#{context}[:active_violations]") unless input[:active_violations].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAttachedPoliciesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAttachedPoliciesInput, context: context)
        Hearth::Validator.validate!(input[:target], ::String, context: "#{context}[:target]")
        Hearth::Validator.validate!(input[:recursive], ::TrueClass, ::FalseClass, context: "#{context}[:recursive]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:page_size], ::Integer, context: "#{context}[:page_size]")
      end
    end

    class ListAttachedPoliciesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAttachedPoliciesOutput, context: context)
        Validators::Policies.validate!(input[:policies], context: "#{context}[:policies]") unless input[:policies].nil?
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
      end
    end

    class ListAuditFindingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAuditFindingsInput, context: context)
        Hearth::Validator.validate!(input[:task_id], ::String, context: "#{context}[:task_id]")
        Hearth::Validator.validate!(input[:check_name], ::String, context: "#{context}[:check_name]")
        Validators::ResourceIdentifier.validate!(input[:resource_identifier], context: "#{context}[:resource_identifier]") unless input[:resource_identifier].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:list_suppressed_findings], ::TrueClass, ::FalseClass, context: "#{context}[:list_suppressed_findings]")
      end
    end

    class ListAuditFindingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAuditFindingsOutput, context: context)
        Validators::AuditFindings.validate!(input[:findings], context: "#{context}[:findings]") unless input[:findings].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAuditMitigationActionsExecutionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAuditMitigationActionsExecutionsInput, context: context)
        Hearth::Validator.validate!(input[:task_id], ::String, context: "#{context}[:task_id]")
        Hearth::Validator.validate!(input[:action_status], ::String, context: "#{context}[:action_status]")
        Hearth::Validator.validate!(input[:finding_id], ::String, context: "#{context}[:finding_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAuditMitigationActionsExecutionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAuditMitigationActionsExecutionsOutput, context: context)
        Validators::AuditMitigationActionExecutionMetadataList.validate!(input[:actions_executions], context: "#{context}[:actions_executions]") unless input[:actions_executions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAuditMitigationActionsTasksInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAuditMitigationActionsTasksInput, context: context)
        Hearth::Validator.validate!(input[:audit_task_id], ::String, context: "#{context}[:audit_task_id]")
        Hearth::Validator.validate!(input[:finding_id], ::String, context: "#{context}[:finding_id]")
        Hearth::Validator.validate!(input[:task_status], ::String, context: "#{context}[:task_status]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
      end
    end

    class ListAuditMitigationActionsTasksOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAuditMitigationActionsTasksOutput, context: context)
        Validators::AuditMitigationActionsTaskMetadataList.validate!(input[:tasks], context: "#{context}[:tasks]") unless input[:tasks].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAuditSuppressionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAuditSuppressionsInput, context: context)
        Hearth::Validator.validate!(input[:check_name], ::String, context: "#{context}[:check_name]")
        Validators::ResourceIdentifier.validate!(input[:resource_identifier], context: "#{context}[:resource_identifier]") unless input[:resource_identifier].nil?
        Hearth::Validator.validate!(input[:ascending_order], ::TrueClass, ::FalseClass, context: "#{context}[:ascending_order]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListAuditSuppressionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAuditSuppressionsOutput, context: context)
        Validators::AuditSuppressionList.validate!(input[:suppressions], context: "#{context}[:suppressions]") unless input[:suppressions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAuditTasksInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAuditTasksInput, context: context)
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:task_type], ::String, context: "#{context}[:task_type]")
        Hearth::Validator.validate!(input[:task_status], ::String, context: "#{context}[:task_status]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListAuditTasksOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAuditTasksOutput, context: context)
        Validators::AuditTaskMetadataList.validate!(input[:tasks], context: "#{context}[:tasks]") unless input[:tasks].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAuthorizersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAuthorizersInput, context: context)
        Hearth::Validator.validate!(input[:page_size], ::Integer, context: "#{context}[:page_size]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:ascending_order], ::TrueClass, ::FalseClass, context: "#{context}[:ascending_order]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class ListAuthorizersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAuthorizersOutput, context: context)
        Validators::Authorizers.validate!(input[:authorizers], context: "#{context}[:authorizers]") unless input[:authorizers].nil?
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
      end
    end

    class ListBillingGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBillingGroupsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:name_prefix_filter], ::String, context: "#{context}[:name_prefix_filter]")
      end
    end

    class ListBillingGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBillingGroupsOutput, context: context)
        Validators::BillingGroupNameAndArnList.validate!(input[:billing_groups], context: "#{context}[:billing_groups]") unless input[:billing_groups].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListCACertificatesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCACertificatesInput, context: context)
        Hearth::Validator.validate!(input[:page_size], ::Integer, context: "#{context}[:page_size]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:ascending_order], ::TrueClass, ::FalseClass, context: "#{context}[:ascending_order]")
      end
    end

    class ListCACertificatesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCACertificatesOutput, context: context)
        Validators::CACertificates.validate!(input[:certificates], context: "#{context}[:certificates]") unless input[:certificates].nil?
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
      end
    end

    class ListCertificatesByCAInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCertificatesByCAInput, context: context)
        Hearth::Validator.validate!(input[:ca_certificate_id], ::String, context: "#{context}[:ca_certificate_id]")
        Hearth::Validator.validate!(input[:page_size], ::Integer, context: "#{context}[:page_size]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:ascending_order], ::TrueClass, ::FalseClass, context: "#{context}[:ascending_order]")
      end
    end

    class ListCertificatesByCAOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCertificatesByCAOutput, context: context)
        Validators::Certificates.validate!(input[:certificates], context: "#{context}[:certificates]") unless input[:certificates].nil?
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
      end
    end

    class ListCertificatesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCertificatesInput, context: context)
        Hearth::Validator.validate!(input[:page_size], ::Integer, context: "#{context}[:page_size]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:ascending_order], ::TrueClass, ::FalseClass, context: "#{context}[:ascending_order]")
      end
    end

    class ListCertificatesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCertificatesOutput, context: context)
        Validators::Certificates.validate!(input[:certificates], context: "#{context}[:certificates]") unless input[:certificates].nil?
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
      end
    end

    class ListCustomMetricsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCustomMetricsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListCustomMetricsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCustomMetricsOutput, context: context)
        Validators::MetricNames.validate!(input[:metric_names], context: "#{context}[:metric_names]") unless input[:metric_names].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDetectMitigationActionsExecutionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDetectMitigationActionsExecutionsInput, context: context)
        Hearth::Validator.validate!(input[:task_id], ::String, context: "#{context}[:task_id]")
        Hearth::Validator.validate!(input[:violation_id], ::String, context: "#{context}[:violation_id]")
        Hearth::Validator.validate!(input[:thing_name], ::String, context: "#{context}[:thing_name]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDetectMitigationActionsExecutionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDetectMitigationActionsExecutionsOutput, context: context)
        Validators::DetectMitigationActionExecutionList.validate!(input[:actions_executions], context: "#{context}[:actions_executions]") unless input[:actions_executions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDetectMitigationActionsTasksInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDetectMitigationActionsTasksInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
      end
    end

    class ListDetectMitigationActionsTasksOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDetectMitigationActionsTasksOutput, context: context)
        Validators::DetectMitigationActionsTaskSummaryList.validate!(input[:tasks], context: "#{context}[:tasks]") unless input[:tasks].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDimensionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDimensionsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListDimensionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDimensionsOutput, context: context)
        Validators::DimensionNames.validate!(input[:dimension_names], context: "#{context}[:dimension_names]") unless input[:dimension_names].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDomainConfigurationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDomainConfigurationsInput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:page_size], ::Integer, context: "#{context}[:page_size]")
        Hearth::Validator.validate!(input[:service_type], ::String, context: "#{context}[:service_type]")
      end
    end

    class ListDomainConfigurationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDomainConfigurationsOutput, context: context)
        Validators::DomainConfigurations.validate!(input[:domain_configurations], context: "#{context}[:domain_configurations]") unless input[:domain_configurations].nil?
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
      end
    end

    class ListFleetMetricsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFleetMetricsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListFleetMetricsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFleetMetricsOutput, context: context)
        Validators::FleetMetricNameAndArnList.validate!(input[:fleet_metrics], context: "#{context}[:fleet_metrics]") unless input[:fleet_metrics].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListIndicesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListIndicesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListIndicesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListIndicesOutput, context: context)
        Validators::IndexNamesList.validate!(input[:index_names], context: "#{context}[:index_names]") unless input[:index_names].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListJobExecutionsForJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListJobExecutionsForJobInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListJobExecutionsForJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListJobExecutionsForJobOutput, context: context)
        Validators::JobExecutionSummaryForJobList.validate!(input[:execution_summaries], context: "#{context}[:execution_summaries]") unless input[:execution_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListJobExecutionsForThingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListJobExecutionsForThingInput, context: context)
        Hearth::Validator.validate!(input[:thing_name], ::String, context: "#{context}[:thing_name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:namespace_id], ::String, context: "#{context}[:namespace_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class ListJobExecutionsForThingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListJobExecutionsForThingOutput, context: context)
        Validators::JobExecutionSummaryForThingList.validate!(input[:execution_summaries], context: "#{context}[:execution_summaries]") unless input[:execution_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListJobTemplatesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListJobTemplatesInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListJobTemplatesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListJobTemplatesOutput, context: context)
        Validators::JobTemplateSummaryList.validate!(input[:job_templates], context: "#{context}[:job_templates]") unless input[:job_templates].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListJobsInput, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:target_selection], ::String, context: "#{context}[:target_selection]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:thing_group_name], ::String, context: "#{context}[:thing_group_name]")
        Hearth::Validator.validate!(input[:thing_group_id], ::String, context: "#{context}[:thing_group_id]")
        Hearth::Validator.validate!(input[:namespace_id], ::String, context: "#{context}[:namespace_id]")
      end
    end

    class ListJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListJobsOutput, context: context)
        Validators::JobSummaryList.validate!(input[:jobs], context: "#{context}[:jobs]") unless input[:jobs].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListManagedJobTemplatesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListManagedJobTemplatesInput, context: context)
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListManagedJobTemplatesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListManagedJobTemplatesOutput, context: context)
        Validators::ManagedJobTemplatesSummaryList.validate!(input[:managed_job_templates], context: "#{context}[:managed_job_templates]") unless input[:managed_job_templates].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListMetricValuesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMetricValuesInput, context: context)
        Hearth::Validator.validate!(input[:thing_name], ::String, context: "#{context}[:thing_name]")
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        Hearth::Validator.validate!(input[:dimension_name], ::String, context: "#{context}[:dimension_name]")
        Hearth::Validator.validate!(input[:dimension_value_operator], ::String, context: "#{context}[:dimension_value_operator]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListMetricValuesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMetricValuesOutput, context: context)
        Validators::MetricDatumList.validate!(input[:metric_datum_list], context: "#{context}[:metric_datum_list]") unless input[:metric_datum_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListMitigationActionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMitigationActionsInput, context: context)
        Hearth::Validator.validate!(input[:action_type], ::String, context: "#{context}[:action_type]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListMitigationActionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMitigationActionsOutput, context: context)
        Validators::MitigationActionIdentifierList.validate!(input[:action_identifiers], context: "#{context}[:action_identifiers]") unless input[:action_identifiers].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListOTAUpdatesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListOTAUpdatesInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:ota_update_status], ::String, context: "#{context}[:ota_update_status]")
      end
    end

    class ListOTAUpdatesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListOTAUpdatesOutput, context: context)
        Validators::OTAUpdatesSummary.validate!(input[:ota_updates], context: "#{context}[:ota_updates]") unless input[:ota_updates].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListOutgoingCertificatesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListOutgoingCertificatesInput, context: context)
        Hearth::Validator.validate!(input[:page_size], ::Integer, context: "#{context}[:page_size]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:ascending_order], ::TrueClass, ::FalseClass, context: "#{context}[:ascending_order]")
      end
    end

    class ListOutgoingCertificatesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListOutgoingCertificatesOutput, context: context)
        Validators::OutgoingCertificates.validate!(input[:outgoing_certificates], context: "#{context}[:outgoing_certificates]") unless input[:outgoing_certificates].nil?
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
      end
    end

    class ListPoliciesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPoliciesInput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:page_size], ::Integer, context: "#{context}[:page_size]")
        Hearth::Validator.validate!(input[:ascending_order], ::TrueClass, ::FalseClass, context: "#{context}[:ascending_order]")
      end
    end

    class ListPoliciesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPoliciesOutput, context: context)
        Validators::Policies.validate!(input[:policies], context: "#{context}[:policies]") unless input[:policies].nil?
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
      end
    end

    class ListPolicyPrincipalsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPolicyPrincipalsInput, context: context)
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:page_size], ::Integer, context: "#{context}[:page_size]")
        Hearth::Validator.validate!(input[:ascending_order], ::TrueClass, ::FalseClass, context: "#{context}[:ascending_order]")
      end
    end

    class ListPolicyPrincipalsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPolicyPrincipalsOutput, context: context)
        Validators::Principals.validate!(input[:principals], context: "#{context}[:principals]") unless input[:principals].nil?
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
      end
    end

    class ListPolicyVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPolicyVersionsInput, context: context)
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
      end
    end

    class ListPolicyVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPolicyVersionsOutput, context: context)
        Validators::PolicyVersions.validate!(input[:policy_versions], context: "#{context}[:policy_versions]") unless input[:policy_versions].nil?
      end
    end

    class ListPrincipalPoliciesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPrincipalPoliciesInput, context: context)
        Hearth::Validator.validate!(input[:principal], ::String, context: "#{context}[:principal]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:page_size], ::Integer, context: "#{context}[:page_size]")
        Hearth::Validator.validate!(input[:ascending_order], ::TrueClass, ::FalseClass, context: "#{context}[:ascending_order]")
      end
    end

    class ListPrincipalPoliciesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPrincipalPoliciesOutput, context: context)
        Validators::Policies.validate!(input[:policies], context: "#{context}[:policies]") unless input[:policies].nil?
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
      end
    end

    class ListPrincipalThingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPrincipalThingsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:principal], ::String, context: "#{context}[:principal]")
      end
    end

    class ListPrincipalThingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPrincipalThingsOutput, context: context)
        Validators::ThingNameList.validate!(input[:things], context: "#{context}[:things]") unless input[:things].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListProvisioningTemplateVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListProvisioningTemplateVersionsInput, context: context)
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListProvisioningTemplateVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListProvisioningTemplateVersionsOutput, context: context)
        Validators::ProvisioningTemplateVersionListing.validate!(input[:versions], context: "#{context}[:versions]") unless input[:versions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListProvisioningTemplatesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListProvisioningTemplatesInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListProvisioningTemplatesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListProvisioningTemplatesOutput, context: context)
        Validators::ProvisioningTemplateListing.validate!(input[:templates], context: "#{context}[:templates]") unless input[:templates].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListRoleAliasesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRoleAliasesInput, context: context)
        Hearth::Validator.validate!(input[:page_size], ::Integer, context: "#{context}[:page_size]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:ascending_order], ::TrueClass, ::FalseClass, context: "#{context}[:ascending_order]")
      end
    end

    class ListRoleAliasesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRoleAliasesOutput, context: context)
        Validators::RoleAliases.validate!(input[:role_aliases], context: "#{context}[:role_aliases]") unless input[:role_aliases].nil?
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
      end
    end

    class ListScheduledAuditsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListScheduledAuditsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListScheduledAuditsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListScheduledAuditsOutput, context: context)
        Validators::ScheduledAuditMetadataList.validate!(input[:scheduled_audits], context: "#{context}[:scheduled_audits]") unless input[:scheduled_audits].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSecurityProfilesForTargetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSecurityProfilesForTargetInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:recursive], ::TrueClass, ::FalseClass, context: "#{context}[:recursive]")
        Hearth::Validator.validate!(input[:security_profile_target_arn], ::String, context: "#{context}[:security_profile_target_arn]")
      end
    end

    class ListSecurityProfilesForTargetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSecurityProfilesForTargetOutput, context: context)
        Validators::SecurityProfileTargetMappings.validate!(input[:security_profile_target_mappings], context: "#{context}[:security_profile_target_mappings]") unless input[:security_profile_target_mappings].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSecurityProfilesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSecurityProfilesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:dimension_name], ::String, context: "#{context}[:dimension_name]")
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
      end
    end

    class ListSecurityProfilesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSecurityProfilesOutput, context: context)
        Validators::SecurityProfileIdentifiers.validate!(input[:security_profile_identifiers], context: "#{context}[:security_profile_identifiers]") unless input[:security_profile_identifiers].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListStreamsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListStreamsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:ascending_order], ::TrueClass, ::FalseClass, context: "#{context}[:ascending_order]")
      end
    end

    class ListStreamsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListStreamsOutput, context: context)
        Validators::StreamsSummary.validate!(input[:streams], context: "#{context}[:streams]") unless input[:streams].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
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

    class ListTargetsForPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTargetsForPolicyInput, context: context)
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:page_size], ::Integer, context: "#{context}[:page_size]")
      end
    end

    class ListTargetsForPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTargetsForPolicyOutput, context: context)
        Validators::PolicyTargets.validate!(input[:targets], context: "#{context}[:targets]") unless input[:targets].nil?
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
      end
    end

    class ListTargetsForSecurityProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTargetsForSecurityProfileInput, context: context)
        Hearth::Validator.validate!(input[:security_profile_name], ::String, context: "#{context}[:security_profile_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListTargetsForSecurityProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTargetsForSecurityProfileOutput, context: context)
        Validators::SecurityProfileTargets.validate!(input[:security_profile_targets], context: "#{context}[:security_profile_targets]") unless input[:security_profile_targets].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListThingGroupsForThingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListThingGroupsForThingInput, context: context)
        Hearth::Validator.validate!(input[:thing_name], ::String, context: "#{context}[:thing_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListThingGroupsForThingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListThingGroupsForThingOutput, context: context)
        Validators::ThingGroupNameAndArnList.validate!(input[:thing_groups], context: "#{context}[:thing_groups]") unless input[:thing_groups].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListThingGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListThingGroupsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:parent_group], ::String, context: "#{context}[:parent_group]")
        Hearth::Validator.validate!(input[:name_prefix_filter], ::String, context: "#{context}[:name_prefix_filter]")
        Hearth::Validator.validate!(input[:recursive], ::TrueClass, ::FalseClass, context: "#{context}[:recursive]")
      end
    end

    class ListThingGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListThingGroupsOutput, context: context)
        Validators::ThingGroupNameAndArnList.validate!(input[:thing_groups], context: "#{context}[:thing_groups]") unless input[:thing_groups].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListThingPrincipalsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListThingPrincipalsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:thing_name], ::String, context: "#{context}[:thing_name]")
      end
    end

    class ListThingPrincipalsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListThingPrincipalsOutput, context: context)
        Validators::Principals.validate!(input[:principals], context: "#{context}[:principals]") unless input[:principals].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListThingRegistrationTaskReportsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListThingRegistrationTaskReportsInput, context: context)
        Hearth::Validator.validate!(input[:task_id], ::String, context: "#{context}[:task_id]")
        Hearth::Validator.validate!(input[:report_type], ::String, context: "#{context}[:report_type]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListThingRegistrationTaskReportsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListThingRegistrationTaskReportsOutput, context: context)
        Validators::S3FileUrlList.validate!(input[:resource_links], context: "#{context}[:resource_links]") unless input[:resource_links].nil?
        Hearth::Validator.validate!(input[:report_type], ::String, context: "#{context}[:report_type]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListThingRegistrationTasksInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListThingRegistrationTasksInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class ListThingRegistrationTasksOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListThingRegistrationTasksOutput, context: context)
        Validators::TaskIdList.validate!(input[:task_ids], context: "#{context}[:task_ids]") unless input[:task_ids].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListThingTypesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListThingTypesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:thing_type_name], ::String, context: "#{context}[:thing_type_name]")
      end
    end

    class ListThingTypesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListThingTypesOutput, context: context)
        Validators::ThingTypeList.validate!(input[:thing_types], context: "#{context}[:thing_types]") unless input[:thing_types].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListThingsInBillingGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListThingsInBillingGroupInput, context: context)
        Hearth::Validator.validate!(input[:billing_group_name], ::String, context: "#{context}[:billing_group_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListThingsInBillingGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListThingsInBillingGroupOutput, context: context)
        Validators::ThingNameList.validate!(input[:things], context: "#{context}[:things]") unless input[:things].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListThingsInThingGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListThingsInThingGroupInput, context: context)
        Hearth::Validator.validate!(input[:thing_group_name], ::String, context: "#{context}[:thing_group_name]")
        Hearth::Validator.validate!(input[:recursive], ::TrueClass, ::FalseClass, context: "#{context}[:recursive]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListThingsInThingGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListThingsInThingGroupOutput, context: context)
        Validators::ThingNameList.validate!(input[:things], context: "#{context}[:things]") unless input[:things].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListThingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListThingsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:attribute_name], ::String, context: "#{context}[:attribute_name]")
        Hearth::Validator.validate!(input[:attribute_value], ::String, context: "#{context}[:attribute_value]")
        Hearth::Validator.validate!(input[:thing_type_name], ::String, context: "#{context}[:thing_type_name]")
        Hearth::Validator.validate!(input[:use_prefix_attribute_value], ::TrueClass, ::FalseClass, context: "#{context}[:use_prefix_attribute_value]")
      end
    end

    class ListThingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListThingsOutput, context: context)
        Validators::ThingAttributeList.validate!(input[:things], context: "#{context}[:things]") unless input[:things].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTopicRuleDestinationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTopicRuleDestinationsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTopicRuleDestinationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTopicRuleDestinationsOutput, context: context)
        Validators::TopicRuleDestinationSummaries.validate!(input[:destination_summaries], context: "#{context}[:destination_summaries]") unless input[:destination_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTopicRulesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTopicRulesInput, context: context)
        Hearth::Validator.validate!(input[:topic], ::String, context: "#{context}[:topic]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:rule_disabled], ::TrueClass, ::FalseClass, context: "#{context}[:rule_disabled]")
      end
    end

    class ListTopicRulesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTopicRulesOutput, context: context)
        Validators::TopicRuleList.validate!(input[:rules], context: "#{context}[:rules]") unless input[:rules].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListV2LoggingLevelsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListV2LoggingLevelsInput, context: context)
        Hearth::Validator.validate!(input[:target_type], ::String, context: "#{context}[:target_type]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListV2LoggingLevelsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListV2LoggingLevelsOutput, context: context)
        Validators::LogTargetConfigurations.validate!(input[:log_target_configurations], context: "#{context}[:log_target_configurations]") unless input[:log_target_configurations].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListViolationEventsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListViolationEventsInput, context: context)
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:thing_name], ::String, context: "#{context}[:thing_name]")
        Hearth::Validator.validate!(input[:security_profile_name], ::String, context: "#{context}[:security_profile_name]")
        Hearth::Validator.validate!(input[:behavior_criteria_type], ::String, context: "#{context}[:behavior_criteria_type]")
        Hearth::Validator.validate!(input[:list_suppressed_alerts], ::TrueClass, ::FalseClass, context: "#{context}[:list_suppressed_alerts]")
        Hearth::Validator.validate!(input[:verification_state], ::String, context: "#{context}[:verification_state]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListViolationEventsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListViolationEventsOutput, context: context)
        Validators::ViolationEvents.validate!(input[:violation_events], context: "#{context}[:violation_events]") unless input[:violation_events].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class LogTarget
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LogTarget, context: context)
        Hearth::Validator.validate!(input[:target_type], ::String, context: "#{context}[:target_type]")
        Hearth::Validator.validate!(input[:target_name], ::String, context: "#{context}[:target_name]")
      end
    end

    class LogTargetConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LogTargetConfiguration, context: context)
        Validators::LogTarget.validate!(input[:log_target], context: "#{context}[:log_target]") unless input[:log_target].nil?
        Hearth::Validator.validate!(input[:log_level], ::String, context: "#{context}[:log_level]")
      end
    end

    class LogTargetConfigurations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::LogTargetConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LoggingOptionsPayload
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LoggingOptionsPayload, context: context)
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:log_level], ::String, context: "#{context}[:log_level]")
      end
    end

    class MachineLearningDetectionConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MachineLearningDetectionConfig, context: context)
        Hearth::Validator.validate!(input[:confidence_level], ::String, context: "#{context}[:confidence_level]")
      end
    end

    class MalformedPolicyException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MalformedPolicyException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ManagedJobTemplateSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ManagedJobTemplateSummary, context: context)
        Hearth::Validator.validate!(input[:template_arn], ::String, context: "#{context}[:template_arn]")
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::Environments.validate!(input[:environments], context: "#{context}[:environments]") unless input[:environments].nil?
        Hearth::Validator.validate!(input[:template_version], ::String, context: "#{context}[:template_version]")
      end
    end

    class ManagedJobTemplatesSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ManagedJobTemplateSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MetricDatum
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MetricDatum, context: context)
        Hearth::Validator.validate!(input[:timestamp], ::Time, context: "#{context}[:timestamp]")
        Validators::MetricValue.validate!(input[:value], context: "#{context}[:value]") unless input[:value].nil?
      end
    end

    class MetricDatumList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::MetricDatum.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MetricDimension
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MetricDimension, context: context)
        Hearth::Validator.validate!(input[:dimension_name], ::String, context: "#{context}[:dimension_name]")
        Hearth::Validator.validate!(input[:operator], ::String, context: "#{context}[:operator]")
      end
    end

    class MetricNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class MetricToRetain
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MetricToRetain, context: context)
        Hearth::Validator.validate!(input[:metric], ::String, context: "#{context}[:metric]")
        Validators::MetricDimension.validate!(input[:metric_dimension], context: "#{context}[:metric_dimension]") unless input[:metric_dimension].nil?
      end
    end

    class MetricValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MetricValue, context: context)
        Hearth::Validator.validate!(input[:count], ::Integer, context: "#{context}[:count]")
        Validators::Cidrs.validate!(input[:cidrs], context: "#{context}[:cidrs]") unless input[:cidrs].nil?
        Validators::Ports.validate!(input[:ports], context: "#{context}[:ports]") unless input[:ports].nil?
        Hearth::Validator.validate!(input[:number], ::Float, context: "#{context}[:number]")
        Validators::NumberList.validate!(input[:numbers], context: "#{context}[:numbers]") unless input[:numbers].nil?
        Validators::StringList.validate!(input[:strings], context: "#{context}[:strings]") unless input[:strings].nil?
      end
    end

    class MissingContextValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class MitigationAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MitigationAction, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Validators::MitigationActionParams.validate!(input[:action_params], context: "#{context}[:action_params]") unless input[:action_params].nil?
      end
    end

    class MitigationActionIdentifier
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MitigationActionIdentifier, context: context)
        Hearth::Validator.validate!(input[:action_name], ::String, context: "#{context}[:action_name]")
        Hearth::Validator.validate!(input[:action_arn], ::String, context: "#{context}[:action_arn]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
      end
    end

    class MitigationActionIdentifierList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::MitigationActionIdentifier.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MitigationActionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::MitigationAction.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MitigationActionNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class MitigationActionParams
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MitigationActionParams, context: context)
        Validators::UpdateDeviceCertificateParams.validate!(input[:update_device_certificate_params], context: "#{context}[:update_device_certificate_params]") unless input[:update_device_certificate_params].nil?
        Validators::UpdateCACertificateParams.validate!(input[:update_ca_certificate_params], context: "#{context}[:update_ca_certificate_params]") unless input[:update_ca_certificate_params].nil?
        Validators::AddThingsToThingGroupParams.validate!(input[:add_things_to_thing_group_params], context: "#{context}[:add_things_to_thing_group_params]") unless input[:add_things_to_thing_group_params].nil?
        Validators::ReplaceDefaultPolicyVersionParams.validate!(input[:replace_default_policy_version_params], context: "#{context}[:replace_default_policy_version_params]") unless input[:replace_default_policy_version_params].nil?
        Validators::EnableIoTLoggingParams.validate!(input[:enable_io_t_logging_params], context: "#{context}[:enable_io_t_logging_params]") unless input[:enable_io_t_logging_params].nil?
        Validators::PublishFindingToSnsParams.validate!(input[:publish_finding_to_sns_params], context: "#{context}[:publish_finding_to_sns_params]") unless input[:publish_finding_to_sns_params].nil?
      end
    end

    class MqttContext
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MqttContext, context: context)
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
        Hearth::Validator.validate!(input[:password], ::String, context: "#{context}[:password]")
        Hearth::Validator.validate!(input[:client_id], ::String, context: "#{context}[:client_id]")
      end
    end

    class NonCompliantResource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NonCompliantResource, context: context)
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Validators::ResourceIdentifier.validate!(input[:resource_identifier], context: "#{context}[:resource_identifier]") unless input[:resource_identifier].nil?
        Validators::StringMap.validate!(input[:additional_info], context: "#{context}[:additional_info]") unless input[:additional_info].nil?
      end
    end

    class NotConfiguredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotConfiguredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NumberList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::Float, context: "#{context}[#{index}]")
        end
      end
    end

    class OTAUpdateFile
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OTAUpdateFile, context: context)
        Hearth::Validator.validate!(input[:file_name], ::String, context: "#{context}[:file_name]")
        Hearth::Validator.validate!(input[:file_type], ::Integer, context: "#{context}[:file_type]")
        Hearth::Validator.validate!(input[:file_version], ::String, context: "#{context}[:file_version]")
        Validators::FileLocation.validate!(input[:file_location], context: "#{context}[:file_location]") unless input[:file_location].nil?
        Validators::CodeSigning.validate!(input[:code_signing], context: "#{context}[:code_signing]") unless input[:code_signing].nil?
        Validators::AttributesMap.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
      end
    end

    class OTAUpdateFiles
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::OTAUpdateFile.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OTAUpdateInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OTAUpdateInfo, context: context)
        Hearth::Validator.validate!(input[:ota_update_id], ::String, context: "#{context}[:ota_update_id]")
        Hearth::Validator.validate!(input[:ota_update_arn], ::String, context: "#{context}[:ota_update_arn]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:last_modified_date], ::Time, context: "#{context}[:last_modified_date]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::Targets.validate!(input[:targets], context: "#{context}[:targets]") unless input[:targets].nil?
        Validators::Protocols.validate!(input[:protocols], context: "#{context}[:protocols]") unless input[:protocols].nil?
        Validators::AwsJobExecutionsRolloutConfig.validate!(input[:aws_job_executions_rollout_config], context: "#{context}[:aws_job_executions_rollout_config]") unless input[:aws_job_executions_rollout_config].nil?
        Validators::AwsJobPresignedUrlConfig.validate!(input[:aws_job_presigned_url_config], context: "#{context}[:aws_job_presigned_url_config]") unless input[:aws_job_presigned_url_config].nil?
        Hearth::Validator.validate!(input[:target_selection], ::String, context: "#{context}[:target_selection]")
        Validators::OTAUpdateFiles.validate!(input[:ota_update_files], context: "#{context}[:ota_update_files]") unless input[:ota_update_files].nil?
        Hearth::Validator.validate!(input[:ota_update_status], ::String, context: "#{context}[:ota_update_status]")
        Hearth::Validator.validate!(input[:aws_iot_job_id], ::String, context: "#{context}[:aws_iot_job_id]")
        Hearth::Validator.validate!(input[:aws_iot_job_arn], ::String, context: "#{context}[:aws_iot_job_arn]")
        Validators::ErrorInfo.validate!(input[:error_info], context: "#{context}[:error_info]") unless input[:error_info].nil?
        Validators::AdditionalParameterMap.validate!(input[:additional_parameters], context: "#{context}[:additional_parameters]") unless input[:additional_parameters].nil?
      end
    end

    class OTAUpdateSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OTAUpdateSummary, context: context)
        Hearth::Validator.validate!(input[:ota_update_id], ::String, context: "#{context}[:ota_update_id]")
        Hearth::Validator.validate!(input[:ota_update_arn], ::String, context: "#{context}[:ota_update_arn]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
      end
    end

    class OTAUpdatesSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::OTAUpdateSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OpenSearchAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OpenSearchAction, context: context)
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:endpoint], ::String, context: "#{context}[:endpoint]")
        Hearth::Validator.validate!(input[:index], ::String, context: "#{context}[:index]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class OutgoingCertificate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OutgoingCertificate, context: context)
        Hearth::Validator.validate!(input[:certificate_arn], ::String, context: "#{context}[:certificate_arn]")
        Hearth::Validator.validate!(input[:certificate_id], ::String, context: "#{context}[:certificate_id]")
        Hearth::Validator.validate!(input[:transferred_to], ::String, context: "#{context}[:transferred_to]")
        Hearth::Validator.validate!(input[:transfer_date], ::Time, context: "#{context}[:transfer_date]")
        Hearth::Validator.validate!(input[:transfer_message], ::String, context: "#{context}[:transfer_message]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
      end
    end

    class OutgoingCertificates
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::OutgoingCertificate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ParameterMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class Parameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class PercentList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::Float, context: "#{context}[#{index}]")
        end
      end
    end

    class PercentPair
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PercentPair, context: context)
        Hearth::Validator.validate!(input[:percent], ::Float, context: "#{context}[:percent]")
        Hearth::Validator.validate!(input[:value], ::Float, context: "#{context}[:value]")
      end
    end

    class Percentiles
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PercentPair.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Policies
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Policy.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Policy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Policy, context: context)
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
        Hearth::Validator.validate!(input[:policy_arn], ::String, context: "#{context}[:policy_arn]")
      end
    end

    class PolicyDocuments
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PolicyNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PolicyTargets
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PolicyVersion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PolicyVersion, context: context)
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
        Hearth::Validator.validate!(input[:is_default_version], ::TrueClass, ::FalseClass, context: "#{context}[:is_default_version]")
        Hearth::Validator.validate!(input[:create_date], ::Time, context: "#{context}[:create_date]")
      end
    end

    class PolicyVersionIdentifier
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PolicyVersionIdentifier, context: context)
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
        Hearth::Validator.validate!(input[:policy_version_id], ::String, context: "#{context}[:policy_version_id]")
      end
    end

    class PolicyVersions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PolicyVersion.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Ports
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::Integer, context: "#{context}[#{index}]")
        end
      end
    end

    class PresignedUrlConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PresignedUrlConfig, context: context)
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:expires_in_sec], ::Integer, context: "#{context}[:expires_in_sec]")
      end
    end

    class Principals
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ProcessingTargetNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Protocols
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ProvisioningHook
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProvisioningHook, context: context)
        Hearth::Validator.validate!(input[:payload_version], ::String, context: "#{context}[:payload_version]")
        Hearth::Validator.validate!(input[:target_arn], ::String, context: "#{context}[:target_arn]")
      end
    end

    class ProvisioningTemplateListing
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ProvisioningTemplateSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ProvisioningTemplateSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProvisioningTemplateSummary, context: context)
        Hearth::Validator.validate!(input[:template_arn], ::String, context: "#{context}[:template_arn]")
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:last_modified_date], ::Time, context: "#{context}[:last_modified_date]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
      end
    end

    class ProvisioningTemplateVersionListing
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ProvisioningTemplateVersionSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ProvisioningTemplateVersionSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProvisioningTemplateVersionSummary, context: context)
        Hearth::Validator.validate!(input[:version_id], ::Integer, context: "#{context}[:version_id]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:is_default_version], ::TrueClass, ::FalseClass, context: "#{context}[:is_default_version]")
      end
    end

    class PublicKeyMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class PublishFindingToSnsParams
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PublishFindingToSnsParams, context: context)
        Hearth::Validator.validate!(input[:topic_arn], ::String, context: "#{context}[:topic_arn]")
      end
    end

    class PutAssetPropertyValueEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutAssetPropertyValueEntry, context: context)
        Hearth::Validator.validate!(input[:entry_id], ::String, context: "#{context}[:entry_id]")
        Hearth::Validator.validate!(input[:asset_id], ::String, context: "#{context}[:asset_id]")
        Hearth::Validator.validate!(input[:property_id], ::String, context: "#{context}[:property_id]")
        Hearth::Validator.validate!(input[:property_alias], ::String, context: "#{context}[:property_alias]")
        Validators::AssetPropertyValueList.validate!(input[:property_values], context: "#{context}[:property_values]") unless input[:property_values].nil?
      end
    end

    class PutAssetPropertyValueEntryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PutAssetPropertyValueEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PutItemInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutItemInput, context: context)
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
      end
    end

    class PutVerificationStateOnViolationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutVerificationStateOnViolationInput, context: context)
        Hearth::Validator.validate!(input[:violation_id], ::String, context: "#{context}[:violation_id]")
        Hearth::Validator.validate!(input[:verification_state], ::String, context: "#{context}[:verification_state]")
        Hearth::Validator.validate!(input[:verification_state_description], ::String, context: "#{context}[:verification_state_description]")
      end
    end

    class PutVerificationStateOnViolationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutVerificationStateOnViolationOutput, context: context)
      end
    end

    class RateIncreaseCriteria
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RateIncreaseCriteria, context: context)
        Hearth::Validator.validate!(input[:number_of_notified_things], ::Integer, context: "#{context}[:number_of_notified_things]")
        Hearth::Validator.validate!(input[:number_of_succeeded_things], ::Integer, context: "#{context}[:number_of_succeeded_things]")
      end
    end

    class ReasonForNonComplianceCodes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class RegisterCACertificateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterCACertificateInput, context: context)
        Hearth::Validator.validate!(input[:ca_certificate], ::String, context: "#{context}[:ca_certificate]")
        Hearth::Validator.validate!(input[:verification_certificate], ::String, context: "#{context}[:verification_certificate]")
        Hearth::Validator.validate!(input[:set_as_active], ::TrueClass, ::FalseClass, context: "#{context}[:set_as_active]")
        Hearth::Validator.validate!(input[:allow_auto_registration], ::TrueClass, ::FalseClass, context: "#{context}[:allow_auto_registration]")
        Validators::RegistrationConfig.validate!(input[:registration_config], context: "#{context}[:registration_config]") unless input[:registration_config].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class RegisterCACertificateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterCACertificateOutput, context: context)
        Hearth::Validator.validate!(input[:certificate_arn], ::String, context: "#{context}[:certificate_arn]")
        Hearth::Validator.validate!(input[:certificate_id], ::String, context: "#{context}[:certificate_id]")
      end
    end

    class RegisterCertificateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterCertificateInput, context: context)
        Hearth::Validator.validate!(input[:certificate_pem], ::String, context: "#{context}[:certificate_pem]")
        Hearth::Validator.validate!(input[:ca_certificate_pem], ::String, context: "#{context}[:ca_certificate_pem]")
        Hearth::Validator.validate!(input[:set_as_active], ::TrueClass, ::FalseClass, context: "#{context}[:set_as_active]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class RegisterCertificateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterCertificateOutput, context: context)
        Hearth::Validator.validate!(input[:certificate_arn], ::String, context: "#{context}[:certificate_arn]")
        Hearth::Validator.validate!(input[:certificate_id], ::String, context: "#{context}[:certificate_id]")
      end
    end

    class RegisterCertificateWithoutCAInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterCertificateWithoutCAInput, context: context)
        Hearth::Validator.validate!(input[:certificate_pem], ::String, context: "#{context}[:certificate_pem]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class RegisterCertificateWithoutCAOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterCertificateWithoutCAOutput, context: context)
        Hearth::Validator.validate!(input[:certificate_arn], ::String, context: "#{context}[:certificate_arn]")
        Hearth::Validator.validate!(input[:certificate_id], ::String, context: "#{context}[:certificate_id]")
      end
    end

    class RegisterThingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterThingInput, context: context)
        Hearth::Validator.validate!(input[:template_body], ::String, context: "#{context}[:template_body]")
        Validators::Parameters.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
      end
    end

    class RegisterThingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterThingOutput, context: context)
        Hearth::Validator.validate!(input[:certificate_pem], ::String, context: "#{context}[:certificate_pem]")
        Validators::ResourceArns.validate!(input[:resource_arns], context: "#{context}[:resource_arns]") unless input[:resource_arns].nil?
      end
    end

    class RegistrationCodeValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegistrationCodeValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RegistrationConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegistrationConfig, context: context)
        Hearth::Validator.validate!(input[:template_body], ::String, context: "#{context}[:template_body]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
      end
    end

    class RejectCertificateTransferInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RejectCertificateTransferInput, context: context)
        Hearth::Validator.validate!(input[:certificate_id], ::String, context: "#{context}[:certificate_id]")
        Hearth::Validator.validate!(input[:reject_reason], ::String, context: "#{context}[:reject_reason]")
      end
    end

    class RejectCertificateTransferOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RejectCertificateTransferOutput, context: context)
      end
    end

    class RelatedResource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RelatedResource, context: context)
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Validators::ResourceIdentifier.validate!(input[:resource_identifier], context: "#{context}[:resource_identifier]") unless input[:resource_identifier].nil?
        Validators::StringMap.validate!(input[:additional_info], context: "#{context}[:additional_info]") unless input[:additional_info].nil?
      end
    end

    class RelatedResources
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RelatedResource.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RemoveThingFromBillingGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveThingFromBillingGroupInput, context: context)
        Hearth::Validator.validate!(input[:billing_group_name], ::String, context: "#{context}[:billing_group_name]")
        Hearth::Validator.validate!(input[:billing_group_arn], ::String, context: "#{context}[:billing_group_arn]")
        Hearth::Validator.validate!(input[:thing_name], ::String, context: "#{context}[:thing_name]")
        Hearth::Validator.validate!(input[:thing_arn], ::String, context: "#{context}[:thing_arn]")
      end
    end

    class RemoveThingFromBillingGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveThingFromBillingGroupOutput, context: context)
      end
    end

    class RemoveThingFromThingGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveThingFromThingGroupInput, context: context)
        Hearth::Validator.validate!(input[:thing_group_name], ::String, context: "#{context}[:thing_group_name]")
        Hearth::Validator.validate!(input[:thing_group_arn], ::String, context: "#{context}[:thing_group_arn]")
        Hearth::Validator.validate!(input[:thing_name], ::String, context: "#{context}[:thing_name]")
        Hearth::Validator.validate!(input[:thing_arn], ::String, context: "#{context}[:thing_arn]")
      end
    end

    class RemoveThingFromThingGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveThingFromThingGroupOutput, context: context)
      end
    end

    class ReplaceDefaultPolicyVersionParams
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplaceDefaultPolicyVersionParams, context: context)
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
      end
    end

    class ReplaceTopicRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplaceTopicRuleInput, context: context)
        Hearth::Validator.validate!(input[:rule_name], ::String, context: "#{context}[:rule_name]")
        Validators::TopicRulePayload.validate!(input[:topic_rule_payload], context: "#{context}[:topic_rule_payload]") unless input[:topic_rule_payload].nil?
      end
    end

    class ReplaceTopicRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplaceTopicRuleOutput, context: context)
      end
    end

    class RepublishAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RepublishAction, context: context)
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:topic], ::String, context: "#{context}[:topic]")
        Hearth::Validator.validate!(input[:qos], ::Integer, context: "#{context}[:qos]")
      end
    end

    class ResourceAlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceAlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ResourceArns
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class ResourceIdentifier
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceIdentifier, context: context)
        Hearth::Validator.validate!(input[:device_certificate_id], ::String, context: "#{context}[:device_certificate_id]")
        Hearth::Validator.validate!(input[:ca_certificate_id], ::String, context: "#{context}[:ca_certificate_id]")
        Hearth::Validator.validate!(input[:cognito_identity_pool_id], ::String, context: "#{context}[:cognito_identity_pool_id]")
        Hearth::Validator.validate!(input[:client_id], ::String, context: "#{context}[:client_id]")
        Validators::PolicyVersionIdentifier.validate!(input[:policy_version_identifier], context: "#{context}[:policy_version_identifier]") unless input[:policy_version_identifier].nil?
        Hearth::Validator.validate!(input[:account], ::String, context: "#{context}[:account]")
        Hearth::Validator.validate!(input[:iam_role_arn], ::String, context: "#{context}[:iam_role_arn]")
        Hearth::Validator.validate!(input[:role_alias_arn], ::String, context: "#{context}[:role_alias_arn]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceRegistrationFailureException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceRegistrationFailureException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Resources
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class RetryCriteria
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RetryCriteria, context: context)
        Hearth::Validator.validate!(input[:failure_type], ::String, context: "#{context}[:failure_type]")
        Hearth::Validator.validate!(input[:number_of_retries], ::Integer, context: "#{context}[:number_of_retries]")
      end
    end

    class RetryCriteriaList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RetryCriteria.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RoleAliasDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RoleAliasDescription, context: context)
        Hearth::Validator.validate!(input[:role_alias], ::String, context: "#{context}[:role_alias]")
        Hearth::Validator.validate!(input[:role_alias_arn], ::String, context: "#{context}[:role_alias_arn]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:owner], ::String, context: "#{context}[:owner]")
        Hearth::Validator.validate!(input[:credential_duration_seconds], ::Integer, context: "#{context}[:credential_duration_seconds]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:last_modified_date], ::Time, context: "#{context}[:last_modified_date]")
      end
    end

    class RoleAliases
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class S3Action
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3Action, context: context)
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:bucket_name], ::String, context: "#{context}[:bucket_name]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:canned_acl], ::String, context: "#{context}[:canned_acl]")
      end
    end

    class S3Destination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3Destination, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
      end
    end

    class S3FileUrlList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class S3Location
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3Location, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class SalesforceAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SalesforceAction, context: context)
        Hearth::Validator.validate!(input[:token], ::String, context: "#{context}[:token]")
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
      end
    end

    class ScheduledAuditMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScheduledAuditMetadata, context: context)
        Hearth::Validator.validate!(input[:scheduled_audit_name], ::String, context: "#{context}[:scheduled_audit_name]")
        Hearth::Validator.validate!(input[:scheduled_audit_arn], ::String, context: "#{context}[:scheduled_audit_arn]")
        Hearth::Validator.validate!(input[:frequency], ::String, context: "#{context}[:frequency]")
        Hearth::Validator.validate!(input[:day_of_month], ::String, context: "#{context}[:day_of_month]")
        Hearth::Validator.validate!(input[:day_of_week], ::String, context: "#{context}[:day_of_week]")
      end
    end

    class ScheduledAuditMetadataList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ScheduledAuditMetadata.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SearchIndexInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchIndexInput, context: context)
        Hearth::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
        Hearth::Validator.validate!(input[:query_string], ::String, context: "#{context}[:query_string]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:query_version], ::String, context: "#{context}[:query_version]")
      end
    end

    class SearchIndexOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchIndexOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::ThingDocumentList.validate!(input[:things], context: "#{context}[:things]") unless input[:things].nil?
        Validators::ThingGroupDocumentList.validate!(input[:thing_groups], context: "#{context}[:thing_groups]") unless input[:thing_groups].nil?
      end
    end

    class SearchableAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SecurityGroupList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SecurityProfileIdentifier
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SecurityProfileIdentifier, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class SecurityProfileIdentifiers
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SecurityProfileIdentifier.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SecurityProfileTarget
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SecurityProfileTarget, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class SecurityProfileTargetMapping
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SecurityProfileTargetMapping, context: context)
        Validators::SecurityProfileIdentifier.validate!(input[:security_profile_identifier], context: "#{context}[:security_profile_identifier]") unless input[:security_profile_identifier].nil?
        Validators::SecurityProfileTarget.validate!(input[:target], context: "#{context}[:target]") unless input[:target].nil?
      end
    end

    class SecurityProfileTargetMappings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SecurityProfileTargetMapping.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SecurityProfileTargets
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SecurityProfileTarget.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ServerCertificateArns
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ServerCertificateSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServerCertificateSummary, context: context)
        Hearth::Validator.validate!(input[:server_certificate_arn], ::String, context: "#{context}[:server_certificate_arn]")
        Hearth::Validator.validate!(input[:server_certificate_status], ::String, context: "#{context}[:server_certificate_status]")
        Hearth::Validator.validate!(input[:server_certificate_status_detail], ::String, context: "#{context}[:server_certificate_status_detail]")
      end
    end

    class ServerCertificates
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ServerCertificateSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ServiceUnavailableException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceUnavailableException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SetDefaultAuthorizerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetDefaultAuthorizerInput, context: context)
        Hearth::Validator.validate!(input[:authorizer_name], ::String, context: "#{context}[:authorizer_name]")
      end
    end

    class SetDefaultAuthorizerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetDefaultAuthorizerOutput, context: context)
        Hearth::Validator.validate!(input[:authorizer_name], ::String, context: "#{context}[:authorizer_name]")
        Hearth::Validator.validate!(input[:authorizer_arn], ::String, context: "#{context}[:authorizer_arn]")
      end
    end

    class SetDefaultPolicyVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetDefaultPolicyVersionInput, context: context)
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
        Hearth::Validator.validate!(input[:policy_version_id], ::String, context: "#{context}[:policy_version_id]")
      end
    end

    class SetDefaultPolicyVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetDefaultPolicyVersionOutput, context: context)
      end
    end

    class SetLoggingOptionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetLoggingOptionsInput, context: context)
        Validators::LoggingOptionsPayload.validate!(input[:logging_options_payload], context: "#{context}[:logging_options_payload]") unless input[:logging_options_payload].nil?
      end
    end

    class SetLoggingOptionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetLoggingOptionsOutput, context: context)
      end
    end

    class SetV2LoggingLevelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetV2LoggingLevelInput, context: context)
        Validators::LogTarget.validate!(input[:log_target], context: "#{context}[:log_target]") unless input[:log_target].nil?
        Hearth::Validator.validate!(input[:log_level], ::String, context: "#{context}[:log_level]")
      end
    end

    class SetV2LoggingLevelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetV2LoggingLevelOutput, context: context)
      end
    end

    class SetV2LoggingOptionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetV2LoggingOptionsInput, context: context)
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:default_log_level], ::String, context: "#{context}[:default_log_level]")
        Hearth::Validator.validate!(input[:disable_all_logs], ::TrueClass, ::FalseClass, context: "#{context}[:disable_all_logs]")
      end
    end

    class SetV2LoggingOptionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetV2LoggingOptionsOutput, context: context)
      end
    end

    class SigV4Authorization
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SigV4Authorization, context: context)
        Hearth::Validator.validate!(input[:signing_region], ::String, context: "#{context}[:signing_region]")
        Hearth::Validator.validate!(input[:service_name], ::String, context: "#{context}[:service_name]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
      end
    end

    class SigningProfileParameter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SigningProfileParameter, context: context)
        Hearth::Validator.validate!(input[:certificate_arn], ::String, context: "#{context}[:certificate_arn]")
        Hearth::Validator.validate!(input[:platform], ::String, context: "#{context}[:platform]")
        Hearth::Validator.validate!(input[:certificate_path_on_device], ::String, context: "#{context}[:certificate_path_on_device]")
      end
    end

    class SnsAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SnsAction, context: context)
        Hearth::Validator.validate!(input[:target_arn], ::String, context: "#{context}[:target_arn]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:message_format], ::String, context: "#{context}[:message_format]")
      end
    end

    class SqlParseException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SqlParseException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SqsAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SqsAction, context: context)
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:queue_url], ::String, context: "#{context}[:queue_url]")
        Hearth::Validator.validate!(input[:use_base64], ::TrueClass, ::FalseClass, context: "#{context}[:use_base64]")
      end
    end

    class StartAuditMitigationActionsTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartAuditMitigationActionsTaskInput, context: context)
        Hearth::Validator.validate!(input[:task_id], ::String, context: "#{context}[:task_id]")
        Validators::AuditMitigationActionsTaskTarget.validate!(input[:target], context: "#{context}[:target]") unless input[:target].nil?
        Validators::AuditCheckToActionsMapping.validate!(input[:audit_check_to_actions_mapping], context: "#{context}[:audit_check_to_actions_mapping]") unless input[:audit_check_to_actions_mapping].nil?
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
      end
    end

    class StartAuditMitigationActionsTaskOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartAuditMitigationActionsTaskOutput, context: context)
        Hearth::Validator.validate!(input[:task_id], ::String, context: "#{context}[:task_id]")
      end
    end

    class StartDetectMitigationActionsTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartDetectMitigationActionsTaskInput, context: context)
        Hearth::Validator.validate!(input[:task_id], ::String, context: "#{context}[:task_id]")
        Validators::DetectMitigationActionsTaskTarget.validate!(input[:target], context: "#{context}[:target]") unless input[:target].nil?
        Validators::DetectMitigationActionsToExecuteList.validate!(input[:actions], context: "#{context}[:actions]") unless input[:actions].nil?
        Validators::ViolationEventOccurrenceRange.validate!(input[:violation_event_occurrence_range], context: "#{context}[:violation_event_occurrence_range]") unless input[:violation_event_occurrence_range].nil?
        Hearth::Validator.validate!(input[:include_only_active_violations], ::TrueClass, ::FalseClass, context: "#{context}[:include_only_active_violations]")
        Hearth::Validator.validate!(input[:include_suppressed_alerts], ::TrueClass, ::FalseClass, context: "#{context}[:include_suppressed_alerts]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
      end
    end

    class StartDetectMitigationActionsTaskOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartDetectMitigationActionsTaskOutput, context: context)
        Hearth::Validator.validate!(input[:task_id], ::String, context: "#{context}[:task_id]")
      end
    end

    class StartOnDemandAuditTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartOnDemandAuditTaskInput, context: context)
        Validators::TargetAuditCheckNames.validate!(input[:target_check_names], context: "#{context}[:target_check_names]") unless input[:target_check_names].nil?
      end
    end

    class StartOnDemandAuditTaskOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartOnDemandAuditTaskOutput, context: context)
        Hearth::Validator.validate!(input[:task_id], ::String, context: "#{context}[:task_id]")
      end
    end

    class StartSigningJobParameter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartSigningJobParameter, context: context)
        Validators::SigningProfileParameter.validate!(input[:signing_profile_parameter], context: "#{context}[:signing_profile_parameter]") unless input[:signing_profile_parameter].nil?
        Hearth::Validator.validate!(input[:signing_profile_name], ::String, context: "#{context}[:signing_profile_name]")
        Validators::Destination.validate!(input[:destination], context: "#{context}[:destination]") unless input[:destination].nil?
      end
    end

    class StartThingRegistrationTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartThingRegistrationTaskInput, context: context)
        Hearth::Validator.validate!(input[:template_body], ::String, context: "#{context}[:template_body]")
        Hearth::Validator.validate!(input[:input_file_bucket], ::String, context: "#{context}[:input_file_bucket]")
        Hearth::Validator.validate!(input[:input_file_key], ::String, context: "#{context}[:input_file_key]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
      end
    end

    class StartThingRegistrationTaskOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartThingRegistrationTaskOutput, context: context)
        Hearth::Validator.validate!(input[:task_id], ::String, context: "#{context}[:task_id]")
      end
    end

    class StatisticalThreshold
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StatisticalThreshold, context: context)
        Hearth::Validator.validate!(input[:statistic], ::String, context: "#{context}[:statistic]")
      end
    end

    class Statistics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Statistics, context: context)
        Hearth::Validator.validate!(input[:count], ::Integer, context: "#{context}[:count]")
        Hearth::Validator.validate!(input[:average], ::Float, context: "#{context}[:average]")
        Hearth::Validator.validate!(input[:sum], ::Float, context: "#{context}[:sum]")
        Hearth::Validator.validate!(input[:minimum], ::Float, context: "#{context}[:minimum]")
        Hearth::Validator.validate!(input[:maximum], ::Float, context: "#{context}[:maximum]")
        Hearth::Validator.validate!(input[:sum_of_squares], ::Float, context: "#{context}[:sum_of_squares]")
        Hearth::Validator.validate!(input[:variance], ::Float, context: "#{context}[:variance]")
        Hearth::Validator.validate!(input[:std_deviation], ::Float, context: "#{context}[:std_deviation]")
      end
    end

    class StepFunctionsAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StepFunctionsAction, context: context)
        Hearth::Validator.validate!(input[:execution_name_prefix], ::String, context: "#{context}[:execution_name_prefix]")
        Hearth::Validator.validate!(input[:state_machine_name], ::String, context: "#{context}[:state_machine_name]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
      end
    end

    class StopThingRegistrationTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopThingRegistrationTaskInput, context: context)
        Hearth::Validator.validate!(input[:task_id], ::String, context: "#{context}[:task_id]")
      end
    end

    class StopThingRegistrationTaskOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopThingRegistrationTaskOutput, context: context)
      end
    end

    class Stream
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Stream, context: context)
        Hearth::Validator.validate!(input[:stream_id], ::String, context: "#{context}[:stream_id]")
        Hearth::Validator.validate!(input[:file_id], ::Integer, context: "#{context}[:file_id]")
      end
    end

    class StreamFile
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StreamFile, context: context)
        Hearth::Validator.validate!(input[:file_id], ::Integer, context: "#{context}[:file_id]")
        Validators::S3Location.validate!(input[:s3_location], context: "#{context}[:s3_location]") unless input[:s3_location].nil?
      end
    end

    class StreamFiles
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::StreamFile.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StreamInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StreamInfo, context: context)
        Hearth::Validator.validate!(input[:stream_id], ::String, context: "#{context}[:stream_id]")
        Hearth::Validator.validate!(input[:stream_arn], ::String, context: "#{context}[:stream_arn]")
        Hearth::Validator.validate!(input[:stream_version], ::Integer, context: "#{context}[:stream_version]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::StreamFiles.validate!(input[:files], context: "#{context}[:files]") unless input[:files].nil?
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
      end
    end

    class StreamSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StreamSummary, context: context)
        Hearth::Validator.validate!(input[:stream_id], ::String, context: "#{context}[:stream_id]")
        Hearth::Validator.validate!(input[:stream_arn], ::String, context: "#{context}[:stream_arn]")
        Hearth::Validator.validate!(input[:stream_version], ::Integer, context: "#{context}[:stream_version]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class StreamsSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::StreamSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class StringMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class SubnetIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
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

    class TargetAuditCheckNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TargetViolationIdsForDetectMitigationActions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Targets
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TaskAlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TaskAlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TaskIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TaskStatistics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TaskStatistics, context: context)
        Hearth::Validator.validate!(input[:total_checks], ::Integer, context: "#{context}[:total_checks]")
        Hearth::Validator.validate!(input[:in_progress_checks], ::Integer, context: "#{context}[:in_progress_checks]")
        Hearth::Validator.validate!(input[:waiting_for_data_collection_checks], ::Integer, context: "#{context}[:waiting_for_data_collection_checks]")
        Hearth::Validator.validate!(input[:compliant_checks], ::Integer, context: "#{context}[:compliant_checks]")
        Hearth::Validator.validate!(input[:non_compliant_checks], ::Integer, context: "#{context}[:non_compliant_checks]")
        Hearth::Validator.validate!(input[:failed_checks], ::Integer, context: "#{context}[:failed_checks]")
        Hearth::Validator.validate!(input[:canceled_checks], ::Integer, context: "#{context}[:canceled_checks]")
      end
    end

    class TaskStatisticsForAuditCheck
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TaskStatisticsForAuditCheck, context: context)
        Hearth::Validator.validate!(input[:total_findings_count], ::Integer, context: "#{context}[:total_findings_count]")
        Hearth::Validator.validate!(input[:failed_findings_count], ::Integer, context: "#{context}[:failed_findings_count]")
        Hearth::Validator.validate!(input[:succeeded_findings_count], ::Integer, context: "#{context}[:succeeded_findings_count]")
        Hearth::Validator.validate!(input[:skipped_findings_count], ::Integer, context: "#{context}[:skipped_findings_count]")
        Hearth::Validator.validate!(input[:canceled_findings_count], ::Integer, context: "#{context}[:canceled_findings_count]")
      end
    end

    class TermsAggregation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TermsAggregation, context: context)
        Hearth::Validator.validate!(input[:max_buckets], ::Integer, context: "#{context}[:max_buckets]")
      end
    end

    class TestAuthorizationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TestAuthorizationInput, context: context)
        Hearth::Validator.validate!(input[:principal], ::String, context: "#{context}[:principal]")
        Hearth::Validator.validate!(input[:cognito_identity_pool_id], ::String, context: "#{context}[:cognito_identity_pool_id]")
        Validators::AuthInfos.validate!(input[:auth_infos], context: "#{context}[:auth_infos]") unless input[:auth_infos].nil?
        Hearth::Validator.validate!(input[:client_id], ::String, context: "#{context}[:client_id]")
        Validators::PolicyNames.validate!(input[:policy_names_to_add], context: "#{context}[:policy_names_to_add]") unless input[:policy_names_to_add].nil?
        Validators::PolicyNames.validate!(input[:policy_names_to_skip], context: "#{context}[:policy_names_to_skip]") unless input[:policy_names_to_skip].nil?
      end
    end

    class TestAuthorizationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TestAuthorizationOutput, context: context)
        Validators::AuthResults.validate!(input[:auth_results], context: "#{context}[:auth_results]") unless input[:auth_results].nil?
      end
    end

    class TestInvokeAuthorizerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TestInvokeAuthorizerInput, context: context)
        Hearth::Validator.validate!(input[:authorizer_name], ::String, context: "#{context}[:authorizer_name]")
        Hearth::Validator.validate!(input[:token], ::String, context: "#{context}[:token]")
        Hearth::Validator.validate!(input[:token_signature], ::String, context: "#{context}[:token_signature]")
        Validators::HttpContext.validate!(input[:http_context], context: "#{context}[:http_context]") unless input[:http_context].nil?
        Validators::MqttContext.validate!(input[:mqtt_context], context: "#{context}[:mqtt_context]") unless input[:mqtt_context].nil?
        Validators::TlsContext.validate!(input[:tls_context], context: "#{context}[:tls_context]") unless input[:tls_context].nil?
      end
    end

    class TestInvokeAuthorizerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TestInvokeAuthorizerOutput, context: context)
        Hearth::Validator.validate!(input[:is_authenticated], ::TrueClass, ::FalseClass, context: "#{context}[:is_authenticated]")
        Hearth::Validator.validate!(input[:principal_id], ::String, context: "#{context}[:principal_id]")
        Validators::PolicyDocuments.validate!(input[:policy_documents], context: "#{context}[:policy_documents]") unless input[:policy_documents].nil?
        Hearth::Validator.validate!(input[:refresh_after_in_seconds], ::Integer, context: "#{context}[:refresh_after_in_seconds]")
        Hearth::Validator.validate!(input[:disconnect_after_in_seconds], ::Integer, context: "#{context}[:disconnect_after_in_seconds]")
      end
    end

    class ThingAttribute
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThingAttribute, context: context)
        Hearth::Validator.validate!(input[:thing_name], ::String, context: "#{context}[:thing_name]")
        Hearth::Validator.validate!(input[:thing_type_name], ::String, context: "#{context}[:thing_type_name]")
        Hearth::Validator.validate!(input[:thing_arn], ::String, context: "#{context}[:thing_arn]")
        Validators::Attributes.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
        Hearth::Validator.validate!(input[:version], ::Integer, context: "#{context}[:version]")
      end
    end

    class ThingAttributeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ThingAttribute.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ThingConnectivity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThingConnectivity, context: context)
        Hearth::Validator.validate!(input[:connected], ::TrueClass, ::FalseClass, context: "#{context}[:connected]")
        Hearth::Validator.validate!(input[:timestamp], ::Integer, context: "#{context}[:timestamp]")
        Hearth::Validator.validate!(input[:disconnect_reason], ::String, context: "#{context}[:disconnect_reason]")
      end
    end

    class ThingDocument
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThingDocument, context: context)
        Hearth::Validator.validate!(input[:thing_name], ::String, context: "#{context}[:thing_name]")
        Hearth::Validator.validate!(input[:thing_id], ::String, context: "#{context}[:thing_id]")
        Hearth::Validator.validate!(input[:thing_type_name], ::String, context: "#{context}[:thing_type_name]")
        Validators::ThingGroupNameList.validate!(input[:thing_group_names], context: "#{context}[:thing_group_names]") unless input[:thing_group_names].nil?
        Validators::Attributes.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
        Hearth::Validator.validate!(input[:shadow], ::String, context: "#{context}[:shadow]")
        Hearth::Validator.validate!(input[:device_defender], ::String, context: "#{context}[:device_defender]")
        Validators::ThingConnectivity.validate!(input[:connectivity], context: "#{context}[:connectivity]") unless input[:connectivity].nil?
      end
    end

    class ThingDocumentList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ThingDocument.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ThingGroupDocument
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThingGroupDocument, context: context)
        Hearth::Validator.validate!(input[:thing_group_name], ::String, context: "#{context}[:thing_group_name]")
        Hearth::Validator.validate!(input[:thing_group_id], ::String, context: "#{context}[:thing_group_id]")
        Hearth::Validator.validate!(input[:thing_group_description], ::String, context: "#{context}[:thing_group_description]")
        Validators::Attributes.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
        Validators::ThingGroupNameList.validate!(input[:parent_group_names], context: "#{context}[:parent_group_names]") unless input[:parent_group_names].nil?
      end
    end

    class ThingGroupDocumentList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ThingGroupDocument.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ThingGroupIndexingConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThingGroupIndexingConfiguration, context: context)
        Hearth::Validator.validate!(input[:thing_group_indexing_mode], ::String, context: "#{context}[:thing_group_indexing_mode]")
        Validators::Fields.validate!(input[:managed_fields], context: "#{context}[:managed_fields]") unless input[:managed_fields].nil?
        Validators::Fields.validate!(input[:custom_fields], context: "#{context}[:custom_fields]") unless input[:custom_fields].nil?
      end
    end

    class ThingGroupList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ThingGroupMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThingGroupMetadata, context: context)
        Hearth::Validator.validate!(input[:parent_group_name], ::String, context: "#{context}[:parent_group_name]")
        Validators::ThingGroupNameAndArnList.validate!(input[:root_to_parent_thing_groups], context: "#{context}[:root_to_parent_thing_groups]") unless input[:root_to_parent_thing_groups].nil?
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
      end
    end

    class ThingGroupNameAndArnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::GroupNameAndArn.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ThingGroupNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ThingGroupNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ThingGroupProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThingGroupProperties, context: context)
        Hearth::Validator.validate!(input[:thing_group_description], ::String, context: "#{context}[:thing_group_description]")
        Validators::AttributePayload.validate!(input[:attribute_payload], context: "#{context}[:attribute_payload]") unless input[:attribute_payload].nil?
      end
    end

    class ThingIndexingConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThingIndexingConfiguration, context: context)
        Hearth::Validator.validate!(input[:thing_indexing_mode], ::String, context: "#{context}[:thing_indexing_mode]")
        Hearth::Validator.validate!(input[:thing_connectivity_indexing_mode], ::String, context: "#{context}[:thing_connectivity_indexing_mode]")
        Hearth::Validator.validate!(input[:device_defender_indexing_mode], ::String, context: "#{context}[:device_defender_indexing_mode]")
        Hearth::Validator.validate!(input[:named_shadow_indexing_mode], ::String, context: "#{context}[:named_shadow_indexing_mode]")
        Validators::Fields.validate!(input[:managed_fields], context: "#{context}[:managed_fields]") unless input[:managed_fields].nil?
        Validators::Fields.validate!(input[:custom_fields], context: "#{context}[:custom_fields]") unless input[:custom_fields].nil?
      end
    end

    class ThingNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ThingTypeDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThingTypeDefinition, context: context)
        Hearth::Validator.validate!(input[:thing_type_name], ::String, context: "#{context}[:thing_type_name]")
        Hearth::Validator.validate!(input[:thing_type_arn], ::String, context: "#{context}[:thing_type_arn]")
        Validators::ThingTypeProperties.validate!(input[:thing_type_properties], context: "#{context}[:thing_type_properties]") unless input[:thing_type_properties].nil?
        Validators::ThingTypeMetadata.validate!(input[:thing_type_metadata], context: "#{context}[:thing_type_metadata]") unless input[:thing_type_metadata].nil?
      end
    end

    class ThingTypeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ThingTypeDefinition.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ThingTypeMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThingTypeMetadata, context: context)
        Hearth::Validator.validate!(input[:deprecated], ::TrueClass, ::FalseClass, context: "#{context}[:deprecated]")
        Hearth::Validator.validate!(input[:deprecation_date], ::Time, context: "#{context}[:deprecation_date]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
      end
    end

    class ThingTypeProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThingTypeProperties, context: context)
        Hearth::Validator.validate!(input[:thing_type_description], ::String, context: "#{context}[:thing_type_description]")
        Validators::SearchableAttributes.validate!(input[:searchable_attributes], context: "#{context}[:searchable_attributes]") unless input[:searchable_attributes].nil?
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TimeoutConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TimeoutConfig, context: context)
        Hearth::Validator.validate!(input[:in_progress_timeout_in_minutes], ::Integer, context: "#{context}[:in_progress_timeout_in_minutes]")
      end
    end

    class TimestreamAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TimestreamAction, context: context)
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Validators::TimestreamDimensionList.validate!(input[:dimensions], context: "#{context}[:dimensions]") unless input[:dimensions].nil?
        Validators::TimestreamTimestamp.validate!(input[:timestamp], context: "#{context}[:timestamp]") unless input[:timestamp].nil?
      end
    end

    class TimestreamDimension
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TimestreamDimension, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class TimestreamDimensionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::TimestreamDimension.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TimestreamTimestamp
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TimestreamTimestamp, context: context)
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:unit], ::String, context: "#{context}[:unit]")
      end
    end

    class TlsContext
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TlsContext, context: context)
        Hearth::Validator.validate!(input[:server_name], ::String, context: "#{context}[:server_name]")
      end
    end

    class TopicRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TopicRule, context: context)
        Hearth::Validator.validate!(input[:rule_name], ::String, context: "#{context}[:rule_name]")
        Hearth::Validator.validate!(input[:sql], ::String, context: "#{context}[:sql]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Validators::ActionList.validate!(input[:actions], context: "#{context}[:actions]") unless input[:actions].nil?
        Hearth::Validator.validate!(input[:rule_disabled], ::TrueClass, ::FalseClass, context: "#{context}[:rule_disabled]")
        Hearth::Validator.validate!(input[:aws_iot_sql_version], ::String, context: "#{context}[:aws_iot_sql_version]")
        Validators::Action.validate!(input[:error_action], context: "#{context}[:error_action]") unless input[:error_action].nil?
      end
    end

    class TopicRuleDestination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TopicRuleDestination, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
        Hearth::Validator.validate!(input[:status_reason], ::String, context: "#{context}[:status_reason]")
        Validators::HttpUrlDestinationProperties.validate!(input[:http_url_properties], context: "#{context}[:http_url_properties]") unless input[:http_url_properties].nil?
        Validators::VpcDestinationProperties.validate!(input[:vpc_properties], context: "#{context}[:vpc_properties]") unless input[:vpc_properties].nil?
      end
    end

    class TopicRuleDestinationConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TopicRuleDestinationConfiguration, context: context)
        Validators::HttpUrlDestinationConfiguration.validate!(input[:http_url_configuration], context: "#{context}[:http_url_configuration]") unless input[:http_url_configuration].nil?
        Validators::VpcDestinationConfiguration.validate!(input[:vpc_configuration], context: "#{context}[:vpc_configuration]") unless input[:vpc_configuration].nil?
      end
    end

    class TopicRuleDestinationSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::TopicRuleDestinationSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TopicRuleDestinationSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TopicRuleDestinationSummary, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
        Hearth::Validator.validate!(input[:status_reason], ::String, context: "#{context}[:status_reason]")
        Validators::HttpUrlDestinationSummary.validate!(input[:http_url_summary], context: "#{context}[:http_url_summary]") unless input[:http_url_summary].nil?
        Validators::VpcDestinationSummary.validate!(input[:vpc_destination_summary], context: "#{context}[:vpc_destination_summary]") unless input[:vpc_destination_summary].nil?
      end
    end

    class TopicRuleList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::TopicRuleListItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TopicRuleListItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TopicRuleListItem, context: context)
        Hearth::Validator.validate!(input[:rule_arn], ::String, context: "#{context}[:rule_arn]")
        Hearth::Validator.validate!(input[:rule_name], ::String, context: "#{context}[:rule_name]")
        Hearth::Validator.validate!(input[:topic_pattern], ::String, context: "#{context}[:topic_pattern]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:rule_disabled], ::TrueClass, ::FalseClass, context: "#{context}[:rule_disabled]")
      end
    end

    class TopicRulePayload
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TopicRulePayload, context: context)
        Hearth::Validator.validate!(input[:sql], ::String, context: "#{context}[:sql]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::ActionList.validate!(input[:actions], context: "#{context}[:actions]") unless input[:actions].nil?
        Hearth::Validator.validate!(input[:rule_disabled], ::TrueClass, ::FalseClass, context: "#{context}[:rule_disabled]")
        Hearth::Validator.validate!(input[:aws_iot_sql_version], ::String, context: "#{context}[:aws_iot_sql_version]")
        Validators::Action.validate!(input[:error_action], context: "#{context}[:error_action]") unless input[:error_action].nil?
      end
    end

    class TransferAlreadyCompletedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TransferAlreadyCompletedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TransferCertificateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TransferCertificateInput, context: context)
        Hearth::Validator.validate!(input[:certificate_id], ::String, context: "#{context}[:certificate_id]")
        Hearth::Validator.validate!(input[:target_aws_account], ::String, context: "#{context}[:target_aws_account]")
        Hearth::Validator.validate!(input[:transfer_message], ::String, context: "#{context}[:transfer_message]")
      end
    end

    class TransferCertificateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TransferCertificateOutput, context: context)
        Hearth::Validator.validate!(input[:transferred_certificate_arn], ::String, context: "#{context}[:transferred_certificate_arn]")
      end
    end

    class TransferConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TransferConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TransferData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TransferData, context: context)
        Hearth::Validator.validate!(input[:transfer_message], ::String, context: "#{context}[:transfer_message]")
        Hearth::Validator.validate!(input[:reject_reason], ::String, context: "#{context}[:reject_reason]")
        Hearth::Validator.validate!(input[:transfer_date], ::Time, context: "#{context}[:transfer_date]")
        Hearth::Validator.validate!(input[:accept_date], ::Time, context: "#{context}[:accept_date]")
        Hearth::Validator.validate!(input[:reject_date], ::Time, context: "#{context}[:reject_date]")
      end
    end

    class UnauthorizedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnauthorizedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
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

    class UpdateAccountAuditConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAccountAuditConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Validators::AuditNotificationTargetConfigurations.validate!(input[:audit_notification_target_configurations], context: "#{context}[:audit_notification_target_configurations]") unless input[:audit_notification_target_configurations].nil?
        Validators::AuditCheckConfigurations.validate!(input[:audit_check_configurations], context: "#{context}[:audit_check_configurations]") unless input[:audit_check_configurations].nil?
      end
    end

    class UpdateAccountAuditConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAccountAuditConfigurationOutput, context: context)
      end
    end

    class UpdateAuditSuppressionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAuditSuppressionInput, context: context)
        Hearth::Validator.validate!(input[:check_name], ::String, context: "#{context}[:check_name]")
        Validators::ResourceIdentifier.validate!(input[:resource_identifier], context: "#{context}[:resource_identifier]") unless input[:resource_identifier].nil?
        Hearth::Validator.validate!(input[:expiration_date], ::Time, context: "#{context}[:expiration_date]")
        Hearth::Validator.validate!(input[:suppress_indefinitely], ::TrueClass, ::FalseClass, context: "#{context}[:suppress_indefinitely]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class UpdateAuditSuppressionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAuditSuppressionOutput, context: context)
      end
    end

    class UpdateAuthorizerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAuthorizerInput, context: context)
        Hearth::Validator.validate!(input[:authorizer_name], ::String, context: "#{context}[:authorizer_name]")
        Hearth::Validator.validate!(input[:authorizer_function_arn], ::String, context: "#{context}[:authorizer_function_arn]")
        Hearth::Validator.validate!(input[:token_key_name], ::String, context: "#{context}[:token_key_name]")
        Validators::PublicKeyMap.validate!(input[:token_signing_public_keys], context: "#{context}[:token_signing_public_keys]") unless input[:token_signing_public_keys].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:enable_caching_for_http], ::TrueClass, ::FalseClass, context: "#{context}[:enable_caching_for_http]")
      end
    end

    class UpdateAuthorizerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAuthorizerOutput, context: context)
        Hearth::Validator.validate!(input[:authorizer_name], ::String, context: "#{context}[:authorizer_name]")
        Hearth::Validator.validate!(input[:authorizer_arn], ::String, context: "#{context}[:authorizer_arn]")
      end
    end

    class UpdateBillingGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateBillingGroupInput, context: context)
        Hearth::Validator.validate!(input[:billing_group_name], ::String, context: "#{context}[:billing_group_name]")
        Validators::BillingGroupProperties.validate!(input[:billing_group_properties], context: "#{context}[:billing_group_properties]") unless input[:billing_group_properties].nil?
        Hearth::Validator.validate!(input[:expected_version], ::Integer, context: "#{context}[:expected_version]")
      end
    end

    class UpdateBillingGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateBillingGroupOutput, context: context)
        Hearth::Validator.validate!(input[:version], ::Integer, context: "#{context}[:version]")
      end
    end

    class UpdateCACertificateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateCACertificateInput, context: context)
        Hearth::Validator.validate!(input[:certificate_id], ::String, context: "#{context}[:certificate_id]")
        Hearth::Validator.validate!(input[:new_status], ::String, context: "#{context}[:new_status]")
        Hearth::Validator.validate!(input[:new_auto_registration_status], ::String, context: "#{context}[:new_auto_registration_status]")
        Validators::RegistrationConfig.validate!(input[:registration_config], context: "#{context}[:registration_config]") unless input[:registration_config].nil?
        Hearth::Validator.validate!(input[:remove_auto_registration], ::TrueClass, ::FalseClass, context: "#{context}[:remove_auto_registration]")
      end
    end

    class UpdateCACertificateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateCACertificateOutput, context: context)
      end
    end

    class UpdateCACertificateParams
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateCACertificateParams, context: context)
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
      end
    end

    class UpdateCertificateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateCertificateInput, context: context)
        Hearth::Validator.validate!(input[:certificate_id], ::String, context: "#{context}[:certificate_id]")
        Hearth::Validator.validate!(input[:new_status], ::String, context: "#{context}[:new_status]")
      end
    end

    class UpdateCertificateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateCertificateOutput, context: context)
      end
    end

    class UpdateCustomMetricInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateCustomMetricInput, context: context)
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
      end
    end

    class UpdateCustomMetricOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateCustomMetricOutput, context: context)
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        Hearth::Validator.validate!(input[:metric_arn], ::String, context: "#{context}[:metric_arn]")
        Hearth::Validator.validate!(input[:metric_type], ::String, context: "#{context}[:metric_type]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:last_modified_date], ::Time, context: "#{context}[:last_modified_date]")
      end
    end

    class UpdateDeviceCertificateParams
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDeviceCertificateParams, context: context)
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
      end
    end

    class UpdateDimensionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDimensionInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::DimensionStringValues.validate!(input[:string_values], context: "#{context}[:string_values]") unless input[:string_values].nil?
      end
    end

    class UpdateDimensionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDimensionOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Validators::DimensionStringValues.validate!(input[:string_values], context: "#{context}[:string_values]") unless input[:string_values].nil?
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:last_modified_date], ::Time, context: "#{context}[:last_modified_date]")
      end
    end

    class UpdateDomainConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDomainConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:domain_configuration_name], ::String, context: "#{context}[:domain_configuration_name]")
        Validators::AuthorizerConfig.validate!(input[:authorizer_config], context: "#{context}[:authorizer_config]") unless input[:authorizer_config].nil?
        Hearth::Validator.validate!(input[:domain_configuration_status], ::String, context: "#{context}[:domain_configuration_status]")
        Hearth::Validator.validate!(input[:remove_authorizer_config], ::TrueClass, ::FalseClass, context: "#{context}[:remove_authorizer_config]")
      end
    end

    class UpdateDomainConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDomainConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:domain_configuration_name], ::String, context: "#{context}[:domain_configuration_name]")
        Hearth::Validator.validate!(input[:domain_configuration_arn], ::String, context: "#{context}[:domain_configuration_arn]")
      end
    end

    class UpdateDynamicThingGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDynamicThingGroupInput, context: context)
        Hearth::Validator.validate!(input[:thing_group_name], ::String, context: "#{context}[:thing_group_name]")
        Validators::ThingGroupProperties.validate!(input[:thing_group_properties], context: "#{context}[:thing_group_properties]") unless input[:thing_group_properties].nil?
        Hearth::Validator.validate!(input[:expected_version], ::Integer, context: "#{context}[:expected_version]")
        Hearth::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
        Hearth::Validator.validate!(input[:query_string], ::String, context: "#{context}[:query_string]")
        Hearth::Validator.validate!(input[:query_version], ::String, context: "#{context}[:query_version]")
      end
    end

    class UpdateDynamicThingGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDynamicThingGroupOutput, context: context)
        Hearth::Validator.validate!(input[:version], ::Integer, context: "#{context}[:version]")
      end
    end

    class UpdateEventConfigurationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateEventConfigurationsInput, context: context)
        Validators::EventConfigurations.validate!(input[:event_configurations], context: "#{context}[:event_configurations]") unless input[:event_configurations].nil?
      end
    end

    class UpdateEventConfigurationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateEventConfigurationsOutput, context: context)
      end
    end

    class UpdateFleetMetricInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFleetMetricInput, context: context)
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        Hearth::Validator.validate!(input[:query_string], ::String, context: "#{context}[:query_string]")
        Validators::AggregationType.validate!(input[:aggregation_type], context: "#{context}[:aggregation_type]") unless input[:aggregation_type].nil?
        Hearth::Validator.validate!(input[:period], ::Integer, context: "#{context}[:period]")
        Hearth::Validator.validate!(input[:aggregation_field], ::String, context: "#{context}[:aggregation_field]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:query_version], ::String, context: "#{context}[:query_version]")
        Hearth::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
        Hearth::Validator.validate!(input[:unit], ::String, context: "#{context}[:unit]")
        Hearth::Validator.validate!(input[:expected_version], ::Integer, context: "#{context}[:expected_version]")
      end
    end

    class UpdateFleetMetricOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFleetMetricOutput, context: context)
      end
    end

    class UpdateIndexingConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateIndexingConfigurationInput, context: context)
        Validators::ThingIndexingConfiguration.validate!(input[:thing_indexing_configuration], context: "#{context}[:thing_indexing_configuration]") unless input[:thing_indexing_configuration].nil?
        Validators::ThingGroupIndexingConfiguration.validate!(input[:thing_group_indexing_configuration], context: "#{context}[:thing_group_indexing_configuration]") unless input[:thing_group_indexing_configuration].nil?
      end
    end

    class UpdateIndexingConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateIndexingConfigurationOutput, context: context)
      end
    end

    class UpdateJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateJobInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::PresignedUrlConfig.validate!(input[:presigned_url_config], context: "#{context}[:presigned_url_config]") unless input[:presigned_url_config].nil?
        Validators::JobExecutionsRolloutConfig.validate!(input[:job_executions_rollout_config], context: "#{context}[:job_executions_rollout_config]") unless input[:job_executions_rollout_config].nil?
        Validators::AbortConfig.validate!(input[:abort_config], context: "#{context}[:abort_config]") unless input[:abort_config].nil?
        Validators::TimeoutConfig.validate!(input[:timeout_config], context: "#{context}[:timeout_config]") unless input[:timeout_config].nil?
        Hearth::Validator.validate!(input[:namespace_id], ::String, context: "#{context}[:namespace_id]")
        Validators::JobExecutionsRetryConfig.validate!(input[:job_executions_retry_config], context: "#{context}[:job_executions_retry_config]") unless input[:job_executions_retry_config].nil?
      end
    end

    class UpdateJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateJobOutput, context: context)
      end
    end

    class UpdateMitigationActionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateMitigationActionInput, context: context)
        Hearth::Validator.validate!(input[:action_name], ::String, context: "#{context}[:action_name]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Validators::MitigationActionParams.validate!(input[:action_params], context: "#{context}[:action_params]") unless input[:action_params].nil?
      end
    end

    class UpdateMitigationActionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateMitigationActionOutput, context: context)
        Hearth::Validator.validate!(input[:action_arn], ::String, context: "#{context}[:action_arn]")
        Hearth::Validator.validate!(input[:action_id], ::String, context: "#{context}[:action_id]")
      end
    end

    class UpdateProvisioningTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateProvisioningTemplateInput, context: context)
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:default_version_id], ::Integer, context: "#{context}[:default_version_id]")
        Hearth::Validator.validate!(input[:provisioning_role_arn], ::String, context: "#{context}[:provisioning_role_arn]")
        Validators::ProvisioningHook.validate!(input[:pre_provisioning_hook], context: "#{context}[:pre_provisioning_hook]") unless input[:pre_provisioning_hook].nil?
        Hearth::Validator.validate!(input[:remove_pre_provisioning_hook], ::TrueClass, ::FalseClass, context: "#{context}[:remove_pre_provisioning_hook]")
      end
    end

    class UpdateProvisioningTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateProvisioningTemplateOutput, context: context)
      end
    end

    class UpdateRoleAliasInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRoleAliasInput, context: context)
        Hearth::Validator.validate!(input[:role_alias], ::String, context: "#{context}[:role_alias]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:credential_duration_seconds], ::Integer, context: "#{context}[:credential_duration_seconds]")
      end
    end

    class UpdateRoleAliasOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRoleAliasOutput, context: context)
        Hearth::Validator.validate!(input[:role_alias], ::String, context: "#{context}[:role_alias]")
        Hearth::Validator.validate!(input[:role_alias_arn], ::String, context: "#{context}[:role_alias_arn]")
      end
    end

    class UpdateScheduledAuditInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateScheduledAuditInput, context: context)
        Hearth::Validator.validate!(input[:frequency], ::String, context: "#{context}[:frequency]")
        Hearth::Validator.validate!(input[:day_of_month], ::String, context: "#{context}[:day_of_month]")
        Hearth::Validator.validate!(input[:day_of_week], ::String, context: "#{context}[:day_of_week]")
        Validators::TargetAuditCheckNames.validate!(input[:target_check_names], context: "#{context}[:target_check_names]") unless input[:target_check_names].nil?
        Hearth::Validator.validate!(input[:scheduled_audit_name], ::String, context: "#{context}[:scheduled_audit_name]")
      end
    end

    class UpdateScheduledAuditOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateScheduledAuditOutput, context: context)
        Hearth::Validator.validate!(input[:scheduled_audit_arn], ::String, context: "#{context}[:scheduled_audit_arn]")
      end
    end

    class UpdateSecurityProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSecurityProfileInput, context: context)
        Hearth::Validator.validate!(input[:security_profile_name], ::String, context: "#{context}[:security_profile_name]")
        Hearth::Validator.validate!(input[:security_profile_description], ::String, context: "#{context}[:security_profile_description]")
        Validators::Behaviors.validate!(input[:behaviors], context: "#{context}[:behaviors]") unless input[:behaviors].nil?
        Validators::AlertTargets.validate!(input[:alert_targets], context: "#{context}[:alert_targets]") unless input[:alert_targets].nil?
        Validators::AdditionalMetricsToRetainList.validate!(input[:additional_metrics_to_retain], context: "#{context}[:additional_metrics_to_retain]") unless input[:additional_metrics_to_retain].nil?
        Validators::AdditionalMetricsToRetainV2List.validate!(input[:additional_metrics_to_retain_v2], context: "#{context}[:additional_metrics_to_retain_v2]") unless input[:additional_metrics_to_retain_v2].nil?
        Hearth::Validator.validate!(input[:delete_behaviors], ::TrueClass, ::FalseClass, context: "#{context}[:delete_behaviors]")
        Hearth::Validator.validate!(input[:delete_alert_targets], ::TrueClass, ::FalseClass, context: "#{context}[:delete_alert_targets]")
        Hearth::Validator.validate!(input[:delete_additional_metrics_to_retain], ::TrueClass, ::FalseClass, context: "#{context}[:delete_additional_metrics_to_retain]")
        Hearth::Validator.validate!(input[:expected_version], ::Integer, context: "#{context}[:expected_version]")
      end
    end

    class UpdateSecurityProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSecurityProfileOutput, context: context)
        Hearth::Validator.validate!(input[:security_profile_name], ::String, context: "#{context}[:security_profile_name]")
        Hearth::Validator.validate!(input[:security_profile_arn], ::String, context: "#{context}[:security_profile_arn]")
        Hearth::Validator.validate!(input[:security_profile_description], ::String, context: "#{context}[:security_profile_description]")
        Validators::Behaviors.validate!(input[:behaviors], context: "#{context}[:behaviors]") unless input[:behaviors].nil?
        Validators::AlertTargets.validate!(input[:alert_targets], context: "#{context}[:alert_targets]") unless input[:alert_targets].nil?
        Validators::AdditionalMetricsToRetainList.validate!(input[:additional_metrics_to_retain], context: "#{context}[:additional_metrics_to_retain]") unless input[:additional_metrics_to_retain].nil?
        Validators::AdditionalMetricsToRetainV2List.validate!(input[:additional_metrics_to_retain_v2], context: "#{context}[:additional_metrics_to_retain_v2]") unless input[:additional_metrics_to_retain_v2].nil?
        Hearth::Validator.validate!(input[:version], ::Integer, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:last_modified_date], ::Time, context: "#{context}[:last_modified_date]")
      end
    end

    class UpdateStreamInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateStreamInput, context: context)
        Hearth::Validator.validate!(input[:stream_id], ::String, context: "#{context}[:stream_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::StreamFiles.validate!(input[:files], context: "#{context}[:files]") unless input[:files].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
      end
    end

    class UpdateStreamOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateStreamOutput, context: context)
        Hearth::Validator.validate!(input[:stream_id], ::String, context: "#{context}[:stream_id]")
        Hearth::Validator.validate!(input[:stream_arn], ::String, context: "#{context}[:stream_arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:stream_version], ::Integer, context: "#{context}[:stream_version]")
      end
    end

    class UpdateThingGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateThingGroupInput, context: context)
        Hearth::Validator.validate!(input[:thing_group_name], ::String, context: "#{context}[:thing_group_name]")
        Validators::ThingGroupProperties.validate!(input[:thing_group_properties], context: "#{context}[:thing_group_properties]") unless input[:thing_group_properties].nil?
        Hearth::Validator.validate!(input[:expected_version], ::Integer, context: "#{context}[:expected_version]")
      end
    end

    class UpdateThingGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateThingGroupOutput, context: context)
        Hearth::Validator.validate!(input[:version], ::Integer, context: "#{context}[:version]")
      end
    end

    class UpdateThingGroupsForThingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateThingGroupsForThingInput, context: context)
        Hearth::Validator.validate!(input[:thing_name], ::String, context: "#{context}[:thing_name]")
        Validators::ThingGroupList.validate!(input[:thing_groups_to_add], context: "#{context}[:thing_groups_to_add]") unless input[:thing_groups_to_add].nil?
        Validators::ThingGroupList.validate!(input[:thing_groups_to_remove], context: "#{context}[:thing_groups_to_remove]") unless input[:thing_groups_to_remove].nil?
        Hearth::Validator.validate!(input[:override_dynamic_groups], ::TrueClass, ::FalseClass, context: "#{context}[:override_dynamic_groups]")
      end
    end

    class UpdateThingGroupsForThingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateThingGroupsForThingOutput, context: context)
      end
    end

    class UpdateThingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateThingInput, context: context)
        Hearth::Validator.validate!(input[:thing_name], ::String, context: "#{context}[:thing_name]")
        Hearth::Validator.validate!(input[:thing_type_name], ::String, context: "#{context}[:thing_type_name]")
        Validators::AttributePayload.validate!(input[:attribute_payload], context: "#{context}[:attribute_payload]") unless input[:attribute_payload].nil?
        Hearth::Validator.validate!(input[:expected_version], ::Integer, context: "#{context}[:expected_version]")
        Hearth::Validator.validate!(input[:remove_thing_type], ::TrueClass, ::FalseClass, context: "#{context}[:remove_thing_type]")
      end
    end

    class UpdateThingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateThingOutput, context: context)
      end
    end

    class UpdateTopicRuleDestinationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTopicRuleDestinationInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class UpdateTopicRuleDestinationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTopicRuleDestinationOutput, context: context)
      end
    end

    class ValidateSecurityProfileBehaviorsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidateSecurityProfileBehaviorsInput, context: context)
        Validators::Behaviors.validate!(input[:behaviors], context: "#{context}[:behaviors]") unless input[:behaviors].nil?
      end
    end

    class ValidateSecurityProfileBehaviorsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidateSecurityProfileBehaviorsOutput, context: context)
        Hearth::Validator.validate!(input[:valid], ::TrueClass, ::FalseClass, context: "#{context}[:valid]")
        Validators::ValidationErrors.validate!(input[:validation_errors], context: "#{context}[:validation_errors]") unless input[:validation_errors].nil?
      end
    end

    class ValidationError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationError, context: context)
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class ValidationErrors
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ValidationError.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class VersionConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VersionConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class VersionsLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VersionsLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ViolationEvent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ViolationEvent, context: context)
        Hearth::Validator.validate!(input[:violation_id], ::String, context: "#{context}[:violation_id]")
        Hearth::Validator.validate!(input[:thing_name], ::String, context: "#{context}[:thing_name]")
        Hearth::Validator.validate!(input[:security_profile_name], ::String, context: "#{context}[:security_profile_name]")
        Validators::Behavior.validate!(input[:behavior], context: "#{context}[:behavior]") unless input[:behavior].nil?
        Validators::MetricValue.validate!(input[:metric_value], context: "#{context}[:metric_value]") unless input[:metric_value].nil?
        Validators::ViolationEventAdditionalInfo.validate!(input[:violation_event_additional_info], context: "#{context}[:violation_event_additional_info]") unless input[:violation_event_additional_info].nil?
        Hearth::Validator.validate!(input[:violation_event_type], ::String, context: "#{context}[:violation_event_type]")
        Hearth::Validator.validate!(input[:verification_state], ::String, context: "#{context}[:verification_state]")
        Hearth::Validator.validate!(input[:verification_state_description], ::String, context: "#{context}[:verification_state_description]")
        Hearth::Validator.validate!(input[:violation_event_time], ::Time, context: "#{context}[:violation_event_time]")
      end
    end

    class ViolationEventAdditionalInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ViolationEventAdditionalInfo, context: context)
        Hearth::Validator.validate!(input[:confidence_level], ::String, context: "#{context}[:confidence_level]")
      end
    end

    class ViolationEventOccurrenceRange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ViolationEventOccurrenceRange, context: context)
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
      end
    end

    class ViolationEvents
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ViolationEvent.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class VpcDestinationConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VpcDestinationConfiguration, context: context)
        Validators::SubnetIdList.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        Validators::SecurityGroupList.validate!(input[:security_groups], context: "#{context}[:security_groups]") unless input[:security_groups].nil?
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
      end
    end

    class VpcDestinationProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VpcDestinationProperties, context: context)
        Validators::SubnetIdList.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        Validators::SecurityGroupList.validate!(input[:security_groups], context: "#{context}[:security_groups]") unless input[:security_groups].nil?
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
      end
    end

    class VpcDestinationSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VpcDestinationSummary, context: context)
        Validators::SubnetIdList.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        Validators::SecurityGroupList.validate!(input[:security_groups], context: "#{context}[:security_groups]") unless input[:security_groups].nil?
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
      end
    end

  end
end
