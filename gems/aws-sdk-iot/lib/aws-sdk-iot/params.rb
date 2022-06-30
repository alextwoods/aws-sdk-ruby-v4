# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::IoT
  module Params

    module AbortConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AbortConfig, context: context)
        type = Types::AbortConfig.new
        type.criteria_list = AbortCriteriaList.build(params[:criteria_list], context: "#{context}[:criteria_list]") unless params[:criteria_list].nil?
        type
      end
    end

    module AbortCriteria
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AbortCriteria, context: context)
        type = Types::AbortCriteria.new
        type.failure_type = params[:failure_type]
        type.action = params[:action]
        type.threshold_percentage = params[:threshold_percentage]
        type.min_number_of_executed_things = params[:min_number_of_executed_things]
        type
      end
    end

    module AbortCriteriaList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AbortCriteria.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AcceptCertificateTransferInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AcceptCertificateTransferInput, context: context)
        type = Types::AcceptCertificateTransferInput.new
        type.certificate_id = params[:certificate_id]
        type.set_as_active = params[:set_as_active]
        type
      end
    end

    module AcceptCertificateTransferOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AcceptCertificateTransferOutput, context: context)
        type = Types::AcceptCertificateTransferOutput.new
        type
      end
    end

    module Action
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Action, context: context)
        type = Types::Action.new
        type.dynamo_db = DynamoDBAction.build(params[:dynamo_db], context: "#{context}[:dynamo_db]") unless params[:dynamo_db].nil?
        type.dynamo_d_bv2 = DynamoDBv2Action.build(params[:dynamo_d_bv2], context: "#{context}[:dynamo_d_bv2]") unless params[:dynamo_d_bv2].nil?
        type.lambda = LambdaAction.build(params[:lambda], context: "#{context}[:lambda]") unless params[:lambda].nil?
        type.sns = SnsAction.build(params[:sns], context: "#{context}[:sns]") unless params[:sns].nil?
        type.sqs = SqsAction.build(params[:sqs], context: "#{context}[:sqs]") unless params[:sqs].nil?
        type.kinesis = KinesisAction.build(params[:kinesis], context: "#{context}[:kinesis]") unless params[:kinesis].nil?
        type.republish = RepublishAction.build(params[:republish], context: "#{context}[:republish]") unless params[:republish].nil?
        type.s3 = S3Action.build(params[:s3], context: "#{context}[:s3]") unless params[:s3].nil?
        type.firehose = FirehoseAction.build(params[:firehose], context: "#{context}[:firehose]") unless params[:firehose].nil?
        type.cloudwatch_metric = CloudwatchMetricAction.build(params[:cloudwatch_metric], context: "#{context}[:cloudwatch_metric]") unless params[:cloudwatch_metric].nil?
        type.cloudwatch_alarm = CloudwatchAlarmAction.build(params[:cloudwatch_alarm], context: "#{context}[:cloudwatch_alarm]") unless params[:cloudwatch_alarm].nil?
        type.cloudwatch_logs = CloudwatchLogsAction.build(params[:cloudwatch_logs], context: "#{context}[:cloudwatch_logs]") unless params[:cloudwatch_logs].nil?
        type.elasticsearch = ElasticsearchAction.build(params[:elasticsearch], context: "#{context}[:elasticsearch]") unless params[:elasticsearch].nil?
        type.salesforce = SalesforceAction.build(params[:salesforce], context: "#{context}[:salesforce]") unless params[:salesforce].nil?
        type.iot_analytics = IotAnalyticsAction.build(params[:iot_analytics], context: "#{context}[:iot_analytics]") unless params[:iot_analytics].nil?
        type.iot_events = IotEventsAction.build(params[:iot_events], context: "#{context}[:iot_events]") unless params[:iot_events].nil?
        type.iot_site_wise = IotSiteWiseAction.build(params[:iot_site_wise], context: "#{context}[:iot_site_wise]") unless params[:iot_site_wise].nil?
        type.step_functions = StepFunctionsAction.build(params[:step_functions], context: "#{context}[:step_functions]") unless params[:step_functions].nil?
        type.timestream = TimestreamAction.build(params[:timestream], context: "#{context}[:timestream]") unless params[:timestream].nil?
        type.http = HttpAction.build(params[:http], context: "#{context}[:http]") unless params[:http].nil?
        type.kafka = KafkaAction.build(params[:kafka], context: "#{context}[:kafka]") unless params[:kafka].nil?
        type.open_search = OpenSearchAction.build(params[:open_search], context: "#{context}[:open_search]") unless params[:open_search].nil?
        type
      end
    end

    module ActionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Action.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ActiveViolation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActiveViolation, context: context)
        type = Types::ActiveViolation.new
        type.violation_id = params[:violation_id]
        type.thing_name = params[:thing_name]
        type.security_profile_name = params[:security_profile_name]
        type.behavior = Behavior.build(params[:behavior], context: "#{context}[:behavior]") unless params[:behavior].nil?
        type.last_violation_value = MetricValue.build(params[:last_violation_value], context: "#{context}[:last_violation_value]") unless params[:last_violation_value].nil?
        type.violation_event_additional_info = ViolationEventAdditionalInfo.build(params[:violation_event_additional_info], context: "#{context}[:violation_event_additional_info]") unless params[:violation_event_additional_info].nil?
        type.verification_state = params[:verification_state]
        type.verification_state_description = params[:verification_state_description]
        type.last_violation_time = params[:last_violation_time]
        type.violation_start_time = params[:violation_start_time]
        type
      end
    end

    module ActiveViolations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ActiveViolation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AddThingToBillingGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddThingToBillingGroupInput, context: context)
        type = Types::AddThingToBillingGroupInput.new
        type.billing_group_name = params[:billing_group_name]
        type.billing_group_arn = params[:billing_group_arn]
        type.thing_name = params[:thing_name]
        type.thing_arn = params[:thing_arn]
        type
      end
    end

    module AddThingToBillingGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddThingToBillingGroupOutput, context: context)
        type = Types::AddThingToBillingGroupOutput.new
        type
      end
    end

    module AddThingToThingGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddThingToThingGroupInput, context: context)
        type = Types::AddThingToThingGroupInput.new
        type.thing_group_name = params[:thing_group_name]
        type.thing_group_arn = params[:thing_group_arn]
        type.thing_name = params[:thing_name]
        type.thing_arn = params[:thing_arn]
        type.override_dynamic_groups = params[:override_dynamic_groups]
        type
      end
    end

    module AddThingToThingGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddThingToThingGroupOutput, context: context)
        type = Types::AddThingToThingGroupOutput.new
        type
      end
    end

    module AddThingsToThingGroupParams
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddThingsToThingGroupParams, context: context)
        type = Types::AddThingsToThingGroupParams.new
        type.thing_group_names = ThingGroupNames.build(params[:thing_group_names], context: "#{context}[:thing_group_names]") unless params[:thing_group_names].nil?
        type.override_dynamic_groups = params[:override_dynamic_groups]
        type
      end
    end

    module AdditionalMetricsToRetainList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AdditionalMetricsToRetainV2List
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MetricToRetain.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AdditionalParameterMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module AggregationType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AggregationType, context: context)
        type = Types::AggregationType.new
        type.name = params[:name]
        type.values = AggregationTypeValues.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module AggregationTypeValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AlertTarget
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AlertTarget, context: context)
        type = Types::AlertTarget.new
        type.alert_target_arn = params[:alert_target_arn]
        type.role_arn = params[:role_arn]
        type
      end
    end

    module AlertTargets
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = AlertTarget.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module Allowed
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Allowed, context: context)
        type = Types::Allowed.new
        type.policies = Policies.build(params[:policies], context: "#{context}[:policies]") unless params[:policies].nil?
        type
      end
    end

    module AssetPropertyTimestamp
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssetPropertyTimestamp, context: context)
        type = Types::AssetPropertyTimestamp.new
        type.time_in_seconds = params[:time_in_seconds]
        type.offset_in_nanos = params[:offset_in_nanos]
        type
      end
    end

    module AssetPropertyValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssetPropertyValue, context: context)
        type = Types::AssetPropertyValue.new
        type.value = AssetPropertyVariant.build(params[:value], context: "#{context}[:value]") unless params[:value].nil?
        type.timestamp = AssetPropertyTimestamp.build(params[:timestamp], context: "#{context}[:timestamp]") unless params[:timestamp].nil?
        type.quality = params[:quality]
        type
      end
    end

    module AssetPropertyValueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AssetPropertyValue.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AssetPropertyVariant
      def self.build(params, context: '')
        return params if params.is_a?(Types::AssetPropertyVariant)
        Hearth::Validator.validate!(params, ::Hash, Types::AssetPropertyVariant, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :string_value
          Types::AssetPropertyVariant::StringValue.new(
            params[:string_value]
          )
        when :integer_value
          Types::AssetPropertyVariant::IntegerValue.new(
            params[:integer_value]
          )
        when :double_value
          Types::AssetPropertyVariant::DoubleValue.new(
            params[:double_value]
          )
        when :boolean_value
          Types::AssetPropertyVariant::BooleanValue.new(
            params[:boolean_value]
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :string_value, :integer_value, :double_value, :boolean_value set"
        end
      end
    end

    module AssociateTargetsWithJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateTargetsWithJobInput, context: context)
        type = Types::AssociateTargetsWithJobInput.new
        type.targets = JobTargets.build(params[:targets], context: "#{context}[:targets]") unless params[:targets].nil?
        type.job_id = params[:job_id]
        type.comment = params[:comment]
        type.namespace_id = params[:namespace_id]
        type
      end
    end

    module AssociateTargetsWithJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateTargetsWithJobOutput, context: context)
        type = Types::AssociateTargetsWithJobOutput.new
        type.job_arn = params[:job_arn]
        type.job_id = params[:job_id]
        type.description = params[:description]
        type
      end
    end

    module AttachPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttachPolicyInput, context: context)
        type = Types::AttachPolicyInput.new
        type.policy_name = params[:policy_name]
        type.target = params[:target]
        type
      end
    end

    module AttachPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttachPolicyOutput, context: context)
        type = Types::AttachPolicyOutput.new
        type
      end
    end

    module AttachPrincipalPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttachPrincipalPolicyInput, context: context)
        type = Types::AttachPrincipalPolicyInput.new
        type.policy_name = params[:policy_name]
        type.principal = params[:principal]
        type
      end
    end

    module AttachPrincipalPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttachPrincipalPolicyOutput, context: context)
        type = Types::AttachPrincipalPolicyOutput.new
        type
      end
    end

    module AttachSecurityProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttachSecurityProfileInput, context: context)
        type = Types::AttachSecurityProfileInput.new
        type.security_profile_name = params[:security_profile_name]
        type.security_profile_target_arn = params[:security_profile_target_arn]
        type
      end
    end

    module AttachSecurityProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttachSecurityProfileOutput, context: context)
        type = Types::AttachSecurityProfileOutput.new
        type
      end
    end

    module AttachThingPrincipalInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttachThingPrincipalInput, context: context)
        type = Types::AttachThingPrincipalInput.new
        type.thing_name = params[:thing_name]
        type.principal = params[:principal]
        type
      end
    end

    module AttachThingPrincipalOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttachThingPrincipalOutput, context: context)
        type = Types::AttachThingPrincipalOutput.new
        type
      end
    end

    module AttributePayload
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttributePayload, context: context)
        type = Types::AttributePayload.new
        type.attributes = Attributes.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type.merge = params[:merge]
        type
      end
    end

    module Attributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module AttributesMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module AuditCheckConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AuditCheckConfiguration, context: context)
        type = Types::AuditCheckConfiguration.new
        type.enabled = params[:enabled]
        type
      end
    end

    module AuditCheckConfigurations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = AuditCheckConfiguration.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module AuditCheckDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AuditCheckDetails, context: context)
        type = Types::AuditCheckDetails.new
        type.check_run_status = params[:check_run_status]
        type.check_compliant = params[:check_compliant]
        type.total_resources_count = params[:total_resources_count]
        type.non_compliant_resources_count = params[:non_compliant_resources_count]
        type.suppressed_non_compliant_resources_count = params[:suppressed_non_compliant_resources_count]
        type.error_code = params[:error_code]
        type.message = params[:message]
        type
      end
    end

    module AuditCheckToActionsMapping
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = MitigationActionNameList.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module AuditCheckToReasonCodeFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = ReasonForNonComplianceCodes.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module AuditDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = AuditCheckDetails.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module AuditFinding
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AuditFinding, context: context)
        type = Types::AuditFinding.new
        type.finding_id = params[:finding_id]
        type.task_id = params[:task_id]
        type.check_name = params[:check_name]
        type.task_start_time = params[:task_start_time]
        type.finding_time = params[:finding_time]
        type.severity = params[:severity]
        type.non_compliant_resource = NonCompliantResource.build(params[:non_compliant_resource], context: "#{context}[:non_compliant_resource]") unless params[:non_compliant_resource].nil?
        type.related_resources = RelatedResources.build(params[:related_resources], context: "#{context}[:related_resources]") unless params[:related_resources].nil?
        type.reason_for_non_compliance = params[:reason_for_non_compliance]
        type.reason_for_non_compliance_code = params[:reason_for_non_compliance_code]
        type.is_suppressed = params[:is_suppressed]
        type
      end
    end

    module AuditFindings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AuditFinding.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AuditMitigationActionExecutionMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AuditMitigationActionExecutionMetadata, context: context)
        type = Types::AuditMitigationActionExecutionMetadata.new
        type.task_id = params[:task_id]
        type.finding_id = params[:finding_id]
        type.action_name = params[:action_name]
        type.action_id = params[:action_id]
        type.status = params[:status]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.error_code = params[:error_code]
        type.message = params[:message]
        type
      end
    end

    module AuditMitigationActionExecutionMetadataList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AuditMitigationActionExecutionMetadata.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AuditMitigationActionsTaskMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AuditMitigationActionsTaskMetadata, context: context)
        type = Types::AuditMitigationActionsTaskMetadata.new
        type.task_id = params[:task_id]
        type.start_time = params[:start_time]
        type.task_status = params[:task_status]
        type
      end
    end

    module AuditMitigationActionsTaskMetadataList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AuditMitigationActionsTaskMetadata.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AuditMitigationActionsTaskStatistics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = TaskStatisticsForAuditCheck.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module AuditMitigationActionsTaskTarget
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AuditMitigationActionsTaskTarget, context: context)
        type = Types::AuditMitigationActionsTaskTarget.new
        type.audit_task_id = params[:audit_task_id]
        type.finding_ids = FindingIds.build(params[:finding_ids], context: "#{context}[:finding_ids]") unless params[:finding_ids].nil?
        type.audit_check_to_reason_code_filter = AuditCheckToReasonCodeFilter.build(params[:audit_check_to_reason_code_filter], context: "#{context}[:audit_check_to_reason_code_filter]") unless params[:audit_check_to_reason_code_filter].nil?
        type
      end
    end

    module AuditNotificationTarget
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AuditNotificationTarget, context: context)
        type = Types::AuditNotificationTarget.new
        type.target_arn = params[:target_arn]
        type.role_arn = params[:role_arn]
        type.enabled = params[:enabled]
        type
      end
    end

    module AuditNotificationTargetConfigurations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = AuditNotificationTarget.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module AuditSuppression
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AuditSuppression, context: context)
        type = Types::AuditSuppression.new
        type.check_name = params[:check_name]
        type.resource_identifier = ResourceIdentifier.build(params[:resource_identifier], context: "#{context}[:resource_identifier]") unless params[:resource_identifier].nil?
        type.expiration_date = params[:expiration_date]
        type.suppress_indefinitely = params[:suppress_indefinitely]
        type.description = params[:description]
        type
      end
    end

    module AuditSuppressionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AuditSuppression.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AuditTaskMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AuditTaskMetadata, context: context)
        type = Types::AuditTaskMetadata.new
        type.task_id = params[:task_id]
        type.task_status = params[:task_status]
        type.task_type = params[:task_type]
        type
      end
    end

    module AuditTaskMetadataList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AuditTaskMetadata.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AuthInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AuthInfo, context: context)
        type = Types::AuthInfo.new
        type.action_type = params[:action_type]
        type.resources = Resources.build(params[:resources], context: "#{context}[:resources]") unless params[:resources].nil?
        type
      end
    end

    module AuthInfos
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AuthInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AuthResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AuthResult, context: context)
        type = Types::AuthResult.new
        type.auth_info = AuthInfo.build(params[:auth_info], context: "#{context}[:auth_info]") unless params[:auth_info].nil?
        type.allowed = Allowed.build(params[:allowed], context: "#{context}[:allowed]") unless params[:allowed].nil?
        type.denied = Denied.build(params[:denied], context: "#{context}[:denied]") unless params[:denied].nil?
        type.auth_decision = params[:auth_decision]
        type.missing_context_values = MissingContextValues.build(params[:missing_context_values], context: "#{context}[:missing_context_values]") unless params[:missing_context_values].nil?
        type
      end
    end

    module AuthResults
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AuthResult.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AuthorizerConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AuthorizerConfig, context: context)
        type = Types::AuthorizerConfig.new
        type.default_authorizer_name = params[:default_authorizer_name]
        type.allow_authorizer_override = params[:allow_authorizer_override]
        type
      end
    end

    module AuthorizerDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AuthorizerDescription, context: context)
        type = Types::AuthorizerDescription.new
        type.authorizer_name = params[:authorizer_name]
        type.authorizer_arn = params[:authorizer_arn]
        type.authorizer_function_arn = params[:authorizer_function_arn]
        type.token_key_name = params[:token_key_name]
        type.token_signing_public_keys = PublicKeyMap.build(params[:token_signing_public_keys], context: "#{context}[:token_signing_public_keys]") unless params[:token_signing_public_keys].nil?
        type.status = params[:status]
        type.creation_date = params[:creation_date]
        type.last_modified_date = params[:last_modified_date]
        type.signing_disabled = params[:signing_disabled]
        type.enable_caching_for_http = params[:enable_caching_for_http]
        type
      end
    end

    module AuthorizerSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AuthorizerSummary, context: context)
        type = Types::AuthorizerSummary.new
        type.authorizer_name = params[:authorizer_name]
        type.authorizer_arn = params[:authorizer_arn]
        type
      end
    end

    module Authorizers
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AuthorizerSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsJobAbortConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsJobAbortConfig, context: context)
        type = Types::AwsJobAbortConfig.new
        type.abort_criteria_list = AwsJobAbortCriteriaList.build(params[:abort_criteria_list], context: "#{context}[:abort_criteria_list]") unless params[:abort_criteria_list].nil?
        type
      end
    end

    module AwsJobAbortCriteria
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsJobAbortCriteria, context: context)
        type = Types::AwsJobAbortCriteria.new
        type.failure_type = params[:failure_type]
        type.action = params[:action]
        type.threshold_percentage = params[:threshold_percentage]
        type.min_number_of_executed_things = params[:min_number_of_executed_things]
        type
      end
    end

    module AwsJobAbortCriteriaList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsJobAbortCriteria.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsJobExecutionsRolloutConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsJobExecutionsRolloutConfig, context: context)
        type = Types::AwsJobExecutionsRolloutConfig.new
        type.maximum_per_minute = params[:maximum_per_minute]
        type.exponential_rate = AwsJobExponentialRolloutRate.build(params[:exponential_rate], context: "#{context}[:exponential_rate]") unless params[:exponential_rate].nil?
        type
      end
    end

    module AwsJobExponentialRolloutRate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsJobExponentialRolloutRate, context: context)
        type = Types::AwsJobExponentialRolloutRate.new
        type.base_rate_per_minute = params[:base_rate_per_minute]
        type.increment_factor = params[:increment_factor]
        type.rate_increase_criteria = AwsJobRateIncreaseCriteria.build(params[:rate_increase_criteria], context: "#{context}[:rate_increase_criteria]") unless params[:rate_increase_criteria].nil?
        type
      end
    end

    module AwsJobPresignedUrlConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsJobPresignedUrlConfig, context: context)
        type = Types::AwsJobPresignedUrlConfig.new
        type.expires_in_sec = params[:expires_in_sec]
        type
      end
    end

    module AwsJobRateIncreaseCriteria
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsJobRateIncreaseCriteria, context: context)
        type = Types::AwsJobRateIncreaseCriteria.new
        type.number_of_notified_things = params[:number_of_notified_things]
        type.number_of_succeeded_things = params[:number_of_succeeded_things]
        type
      end
    end

    module AwsJobTimeoutConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsJobTimeoutConfig, context: context)
        type = Types::AwsJobTimeoutConfig.new
        type.in_progress_timeout_in_minutes = params[:in_progress_timeout_in_minutes]
        type
      end
    end

    module Behavior
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Behavior, context: context)
        type = Types::Behavior.new
        type.name = params[:name]
        type.metric = params[:metric]
        type.metric_dimension = MetricDimension.build(params[:metric_dimension], context: "#{context}[:metric_dimension]") unless params[:metric_dimension].nil?
        type.criteria = BehaviorCriteria.build(params[:criteria], context: "#{context}[:criteria]") unless params[:criteria].nil?
        type.suppress_alerts = params[:suppress_alerts]
        type
      end
    end

    module BehaviorCriteria
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BehaviorCriteria, context: context)
        type = Types::BehaviorCriteria.new
        type.comparison_operator = params[:comparison_operator]
        type.value = MetricValue.build(params[:value], context: "#{context}[:value]") unless params[:value].nil?
        type.duration_seconds = params[:duration_seconds]
        type.consecutive_datapoints_to_alarm = params[:consecutive_datapoints_to_alarm]
        type.consecutive_datapoints_to_clear = params[:consecutive_datapoints_to_clear]
        type.statistical_threshold = StatisticalThreshold.build(params[:statistical_threshold], context: "#{context}[:statistical_threshold]") unless params[:statistical_threshold].nil?
        type.ml_detection_config = MachineLearningDetectionConfig.build(params[:ml_detection_config], context: "#{context}[:ml_detection_config]") unless params[:ml_detection_config].nil?
        type
      end
    end

    module BehaviorModelTrainingSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BehaviorModelTrainingSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BehaviorModelTrainingSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BehaviorModelTrainingSummary, context: context)
        type = Types::BehaviorModelTrainingSummary.new
        type.security_profile_name = params[:security_profile_name]
        type.behavior_name = params[:behavior_name]
        type.training_data_collection_start_date = params[:training_data_collection_start_date]
        type.model_status = params[:model_status]
        type.datapoints_collection_percentage = params[:datapoints_collection_percentage]
        type.last_model_refresh_date = params[:last_model_refresh_date]
        type
      end
    end

    module Behaviors
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Behavior.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BillingGroupMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BillingGroupMetadata, context: context)
        type = Types::BillingGroupMetadata.new
        type.creation_date = params[:creation_date]
        type
      end
    end

    module BillingGroupNameAndArnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GroupNameAndArn.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BillingGroupProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BillingGroupProperties, context: context)
        type = Types::BillingGroupProperties.new
        type.billing_group_description = params[:billing_group_description]
        type
      end
    end

    module Bucket
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Bucket, context: context)
        type = Types::Bucket.new
        type.key_value = params[:key_value]
        type.count = params[:count]
        type
      end
    end

    module Buckets
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Bucket.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BucketsAggregationType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BucketsAggregationType, context: context)
        type = Types::BucketsAggregationType.new
        type.terms_aggregation = TermsAggregation.build(params[:terms_aggregation], context: "#{context}[:terms_aggregation]") unless params[:terms_aggregation].nil?
        type
      end
    end

    module CACertificate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CACertificate, context: context)
        type = Types::CACertificate.new
        type.certificate_arn = params[:certificate_arn]
        type.certificate_id = params[:certificate_id]
        type.status = params[:status]
        type.creation_date = params[:creation_date]
        type
      end
    end

    module CACertificateDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CACertificateDescription, context: context)
        type = Types::CACertificateDescription.new
        type.certificate_arn = params[:certificate_arn]
        type.certificate_id = params[:certificate_id]
        type.status = params[:status]
        type.certificate_pem = params[:certificate_pem]
        type.owned_by = params[:owned_by]
        type.creation_date = params[:creation_date]
        type.auto_registration_status = params[:auto_registration_status]
        type.last_modified_date = params[:last_modified_date]
        type.customer_version = params[:customer_version]
        type.generation_id = params[:generation_id]
        type.validity = CertificateValidity.build(params[:validity], context: "#{context}[:validity]") unless params[:validity].nil?
        type
      end
    end

    module CACertificates
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CACertificate.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CancelAuditMitigationActionsTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelAuditMitigationActionsTaskInput, context: context)
        type = Types::CancelAuditMitigationActionsTaskInput.new
        type.task_id = params[:task_id]
        type
      end
    end

    module CancelAuditMitigationActionsTaskOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelAuditMitigationActionsTaskOutput, context: context)
        type = Types::CancelAuditMitigationActionsTaskOutput.new
        type
      end
    end

    module CancelAuditTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelAuditTaskInput, context: context)
        type = Types::CancelAuditTaskInput.new
        type.task_id = params[:task_id]
        type
      end
    end

    module CancelAuditTaskOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelAuditTaskOutput, context: context)
        type = Types::CancelAuditTaskOutput.new
        type
      end
    end

    module CancelCertificateTransferInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelCertificateTransferInput, context: context)
        type = Types::CancelCertificateTransferInput.new
        type.certificate_id = params[:certificate_id]
        type
      end
    end

    module CancelCertificateTransferOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelCertificateTransferOutput, context: context)
        type = Types::CancelCertificateTransferOutput.new
        type
      end
    end

    module CancelDetectMitigationActionsTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelDetectMitigationActionsTaskInput, context: context)
        type = Types::CancelDetectMitigationActionsTaskInput.new
        type.task_id = params[:task_id]
        type
      end
    end

    module CancelDetectMitigationActionsTaskOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelDetectMitigationActionsTaskOutput, context: context)
        type = Types::CancelDetectMitigationActionsTaskOutput.new
        type
      end
    end

    module CancelJobExecutionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelJobExecutionInput, context: context)
        type = Types::CancelJobExecutionInput.new
        type.job_id = params[:job_id]
        type.thing_name = params[:thing_name]
        type.force = params[:force]
        type.expected_version = params[:expected_version]
        type.status_details = DetailsMap.build(params[:status_details], context: "#{context}[:status_details]") unless params[:status_details].nil?
        type
      end
    end

    module CancelJobExecutionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelJobExecutionOutput, context: context)
        type = Types::CancelJobExecutionOutput.new
        type
      end
    end

    module CancelJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelJobInput, context: context)
        type = Types::CancelJobInput.new
        type.job_id = params[:job_id]
        type.reason_code = params[:reason_code]
        type.comment = params[:comment]
        type.force = params[:force]
        type
      end
    end

    module CancelJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelJobOutput, context: context)
        type = Types::CancelJobOutput.new
        type.job_arn = params[:job_arn]
        type.job_id = params[:job_id]
        type.description = params[:description]
        type
      end
    end

    module Certificate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Certificate, context: context)
        type = Types::Certificate.new
        type.certificate_arn = params[:certificate_arn]
        type.certificate_id = params[:certificate_id]
        type.status = params[:status]
        type.certificate_mode = params[:certificate_mode]
        type.creation_date = params[:creation_date]
        type
      end
    end

    module CertificateConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CertificateConflictException, context: context)
        type = Types::CertificateConflictException.new
        type.message = params[:message]
        type
      end
    end

    module CertificateDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CertificateDescription, context: context)
        type = Types::CertificateDescription.new
        type.certificate_arn = params[:certificate_arn]
        type.certificate_id = params[:certificate_id]
        type.ca_certificate_id = params[:ca_certificate_id]
        type.status = params[:status]
        type.certificate_pem = params[:certificate_pem]
        type.owned_by = params[:owned_by]
        type.previous_owned_by = params[:previous_owned_by]
        type.creation_date = params[:creation_date]
        type.last_modified_date = params[:last_modified_date]
        type.customer_version = params[:customer_version]
        type.transfer_data = TransferData.build(params[:transfer_data], context: "#{context}[:transfer_data]") unless params[:transfer_data].nil?
        type.generation_id = params[:generation_id]
        type.validity = CertificateValidity.build(params[:validity], context: "#{context}[:validity]") unless params[:validity].nil?
        type.certificate_mode = params[:certificate_mode]
        type
      end
    end

    module CertificateStateException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CertificateStateException, context: context)
        type = Types::CertificateStateException.new
        type.message = params[:message]
        type
      end
    end

    module CertificateValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CertificateValidationException, context: context)
        type = Types::CertificateValidationException.new
        type.message = params[:message]
        type
      end
    end

    module CertificateValidity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CertificateValidity, context: context)
        type = Types::CertificateValidity.new
        type.not_before = params[:not_before]
        type.not_after = params[:not_after]
        type
      end
    end

    module Certificates
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Certificate.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Cidrs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ClearDefaultAuthorizerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClearDefaultAuthorizerInput, context: context)
        type = Types::ClearDefaultAuthorizerInput.new
        type
      end
    end

    module ClearDefaultAuthorizerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClearDefaultAuthorizerOutput, context: context)
        type = Types::ClearDefaultAuthorizerOutput.new
        type
      end
    end

    module ClientProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module CloudwatchAlarmAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloudwatchAlarmAction, context: context)
        type = Types::CloudwatchAlarmAction.new
        type.role_arn = params[:role_arn]
        type.alarm_name = params[:alarm_name]
        type.state_reason = params[:state_reason]
        type.state_value = params[:state_value]
        type
      end
    end

    module CloudwatchLogsAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloudwatchLogsAction, context: context)
        type = Types::CloudwatchLogsAction.new
        type.role_arn = params[:role_arn]
        type.log_group_name = params[:log_group_name]
        type
      end
    end

    module CloudwatchMetricAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloudwatchMetricAction, context: context)
        type = Types::CloudwatchMetricAction.new
        type.role_arn = params[:role_arn]
        type.metric_namespace = params[:metric_namespace]
        type.metric_name = params[:metric_name]
        type.metric_value = params[:metric_value]
        type.metric_unit = params[:metric_unit]
        type.metric_timestamp = params[:metric_timestamp]
        type
      end
    end

    module CodeSigning
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CodeSigning, context: context)
        type = Types::CodeSigning.new
        type.aws_signer_job_id = params[:aws_signer_job_id]
        type.start_signing_job_parameter = StartSigningJobParameter.build(params[:start_signing_job_parameter], context: "#{context}[:start_signing_job_parameter]") unless params[:start_signing_job_parameter].nil?
        type.custom_code_signing = CustomCodeSigning.build(params[:custom_code_signing], context: "#{context}[:custom_code_signing]") unless params[:custom_code_signing].nil?
        type
      end
    end

    module CodeSigningCertificateChain
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CodeSigningCertificateChain, context: context)
        type = Types::CodeSigningCertificateChain.new
        type.certificate_name = params[:certificate_name]
        type.inline_document = params[:inline_document]
        type
      end
    end

    module CodeSigningSignature
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CodeSigningSignature, context: context)
        type = Types::CodeSigningSignature.new
        type.inline_document = params[:inline_document]
        type
      end
    end

    module Configuration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Configuration, context: context)
        type = Types::Configuration.new
        type.enabled = params[:enabled]
        type
      end
    end

    module ConfirmTopicRuleDestinationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfirmTopicRuleDestinationInput, context: context)
        type = Types::ConfirmTopicRuleDestinationInput.new
        type.confirmation_token = params[:confirmation_token]
        type
      end
    end

    module ConfirmTopicRuleDestinationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfirmTopicRuleDestinationOutput, context: context)
        type = Types::ConfirmTopicRuleDestinationOutput.new
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

    module ConflictingResourceUpdateException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictingResourceUpdateException, context: context)
        type = Types::ConflictingResourceUpdateException.new
        type.message = params[:message]
        type
      end
    end

    module CreateAuditSuppressionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAuditSuppressionInput, context: context)
        type = Types::CreateAuditSuppressionInput.new
        type.check_name = params[:check_name]
        type.resource_identifier = ResourceIdentifier.build(params[:resource_identifier], context: "#{context}[:resource_identifier]") unless params[:resource_identifier].nil?
        type.expiration_date = params[:expiration_date]
        type.suppress_indefinitely = params[:suppress_indefinitely]
        type.description = params[:description]
        type.client_request_token = params[:client_request_token] || SecureRandom.uuid
        type
      end
    end

    module CreateAuditSuppressionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAuditSuppressionOutput, context: context)
        type = Types::CreateAuditSuppressionOutput.new
        type
      end
    end

    module CreateAuthorizerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAuthorizerInput, context: context)
        type = Types::CreateAuthorizerInput.new
        type.authorizer_name = params[:authorizer_name]
        type.authorizer_function_arn = params[:authorizer_function_arn]
        type.token_key_name = params[:token_key_name]
        type.token_signing_public_keys = PublicKeyMap.build(params[:token_signing_public_keys], context: "#{context}[:token_signing_public_keys]") unless params[:token_signing_public_keys].nil?
        type.status = params[:status]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.signing_disabled = params[:signing_disabled]
        type.enable_caching_for_http = params[:enable_caching_for_http]
        type
      end
    end

    module CreateAuthorizerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAuthorizerOutput, context: context)
        type = Types::CreateAuthorizerOutput.new
        type.authorizer_name = params[:authorizer_name]
        type.authorizer_arn = params[:authorizer_arn]
        type
      end
    end

    module CreateBillingGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBillingGroupInput, context: context)
        type = Types::CreateBillingGroupInput.new
        type.billing_group_name = params[:billing_group_name]
        type.billing_group_properties = BillingGroupProperties.build(params[:billing_group_properties], context: "#{context}[:billing_group_properties]") unless params[:billing_group_properties].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateBillingGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBillingGroupOutput, context: context)
        type = Types::CreateBillingGroupOutput.new
        type.billing_group_name = params[:billing_group_name]
        type.billing_group_arn = params[:billing_group_arn]
        type.billing_group_id = params[:billing_group_id]
        type
      end
    end

    module CreateCertificateFromCsrInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCertificateFromCsrInput, context: context)
        type = Types::CreateCertificateFromCsrInput.new
        type.certificate_signing_request = params[:certificate_signing_request]
        type.set_as_active = params[:set_as_active]
        type
      end
    end

    module CreateCertificateFromCsrOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCertificateFromCsrOutput, context: context)
        type = Types::CreateCertificateFromCsrOutput.new
        type.certificate_arn = params[:certificate_arn]
        type.certificate_id = params[:certificate_id]
        type.certificate_pem = params[:certificate_pem]
        type
      end
    end

    module CreateCustomMetricInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCustomMetricInput, context: context)
        type = Types::CreateCustomMetricInput.new
        type.metric_name = params[:metric_name]
        type.display_name = params[:display_name]
        type.metric_type = params[:metric_type]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.client_request_token = params[:client_request_token] || SecureRandom.uuid
        type
      end
    end

    module CreateCustomMetricOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCustomMetricOutput, context: context)
        type = Types::CreateCustomMetricOutput.new
        type.metric_name = params[:metric_name]
        type.metric_arn = params[:metric_arn]
        type
      end
    end

    module CreateDimensionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDimensionInput, context: context)
        type = Types::CreateDimensionInput.new
        type.name = params[:name]
        type.type = params[:type]
        type.string_values = DimensionStringValues.build(params[:string_values], context: "#{context}[:string_values]") unless params[:string_values].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.client_request_token = params[:client_request_token] || SecureRandom.uuid
        type
      end
    end

    module CreateDimensionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDimensionOutput, context: context)
        type = Types::CreateDimensionOutput.new
        type.name = params[:name]
        type.arn = params[:arn]
        type
      end
    end

    module CreateDomainConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDomainConfigurationInput, context: context)
        type = Types::CreateDomainConfigurationInput.new
        type.domain_configuration_name = params[:domain_configuration_name]
        type.domain_name = params[:domain_name]
        type.server_certificate_arns = ServerCertificateArns.build(params[:server_certificate_arns], context: "#{context}[:server_certificate_arns]") unless params[:server_certificate_arns].nil?
        type.validation_certificate_arn = params[:validation_certificate_arn]
        type.authorizer_config = AuthorizerConfig.build(params[:authorizer_config], context: "#{context}[:authorizer_config]") unless params[:authorizer_config].nil?
        type.service_type = params[:service_type]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateDomainConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDomainConfigurationOutput, context: context)
        type = Types::CreateDomainConfigurationOutput.new
        type.domain_configuration_name = params[:domain_configuration_name]
        type.domain_configuration_arn = params[:domain_configuration_arn]
        type
      end
    end

    module CreateDynamicThingGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDynamicThingGroupInput, context: context)
        type = Types::CreateDynamicThingGroupInput.new
        type.thing_group_name = params[:thing_group_name]
        type.thing_group_properties = ThingGroupProperties.build(params[:thing_group_properties], context: "#{context}[:thing_group_properties]") unless params[:thing_group_properties].nil?
        type.index_name = params[:index_name]
        type.query_string = params[:query_string]
        type.query_version = params[:query_version]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateDynamicThingGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDynamicThingGroupOutput, context: context)
        type = Types::CreateDynamicThingGroupOutput.new
        type.thing_group_name = params[:thing_group_name]
        type.thing_group_arn = params[:thing_group_arn]
        type.thing_group_id = params[:thing_group_id]
        type.index_name = params[:index_name]
        type.query_string = params[:query_string]
        type.query_version = params[:query_version]
        type
      end
    end

    module CreateFleetMetricInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFleetMetricInput, context: context)
        type = Types::CreateFleetMetricInput.new
        type.metric_name = params[:metric_name]
        type.query_string = params[:query_string]
        type.aggregation_type = AggregationType.build(params[:aggregation_type], context: "#{context}[:aggregation_type]") unless params[:aggregation_type].nil?
        type.period = params[:period]
        type.aggregation_field = params[:aggregation_field]
        type.description = params[:description]
        type.query_version = params[:query_version]
        type.index_name = params[:index_name]
        type.unit = params[:unit]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateFleetMetricOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFleetMetricOutput, context: context)
        type = Types::CreateFleetMetricOutput.new
        type.metric_name = params[:metric_name]
        type.metric_arn = params[:metric_arn]
        type
      end
    end

    module CreateJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateJobInput, context: context)
        type = Types::CreateJobInput.new
        type.job_id = params[:job_id]
        type.targets = JobTargets.build(params[:targets], context: "#{context}[:targets]") unless params[:targets].nil?
        type.document_source = params[:document_source]
        type.document = params[:document]
        type.description = params[:description]
        type.presigned_url_config = PresignedUrlConfig.build(params[:presigned_url_config], context: "#{context}[:presigned_url_config]") unless params[:presigned_url_config].nil?
        type.target_selection = params[:target_selection]
        type.job_executions_rollout_config = JobExecutionsRolloutConfig.build(params[:job_executions_rollout_config], context: "#{context}[:job_executions_rollout_config]") unless params[:job_executions_rollout_config].nil?
        type.abort_config = AbortConfig.build(params[:abort_config], context: "#{context}[:abort_config]") unless params[:abort_config].nil?
        type.timeout_config = TimeoutConfig.build(params[:timeout_config], context: "#{context}[:timeout_config]") unless params[:timeout_config].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.namespace_id = params[:namespace_id]
        type.job_template_arn = params[:job_template_arn]
        type.job_executions_retry_config = JobExecutionsRetryConfig.build(params[:job_executions_retry_config], context: "#{context}[:job_executions_retry_config]") unless params[:job_executions_retry_config].nil?
        type.document_parameters = ParameterMap.build(params[:document_parameters], context: "#{context}[:document_parameters]") unless params[:document_parameters].nil?
        type
      end
    end

    module CreateJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateJobOutput, context: context)
        type = Types::CreateJobOutput.new
        type.job_arn = params[:job_arn]
        type.job_id = params[:job_id]
        type.description = params[:description]
        type
      end
    end

    module CreateJobTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateJobTemplateInput, context: context)
        type = Types::CreateJobTemplateInput.new
        type.job_template_id = params[:job_template_id]
        type.job_arn = params[:job_arn]
        type.document_source = params[:document_source]
        type.document = params[:document]
        type.description = params[:description]
        type.presigned_url_config = PresignedUrlConfig.build(params[:presigned_url_config], context: "#{context}[:presigned_url_config]") unless params[:presigned_url_config].nil?
        type.job_executions_rollout_config = JobExecutionsRolloutConfig.build(params[:job_executions_rollout_config], context: "#{context}[:job_executions_rollout_config]") unless params[:job_executions_rollout_config].nil?
        type.abort_config = AbortConfig.build(params[:abort_config], context: "#{context}[:abort_config]") unless params[:abort_config].nil?
        type.timeout_config = TimeoutConfig.build(params[:timeout_config], context: "#{context}[:timeout_config]") unless params[:timeout_config].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.job_executions_retry_config = JobExecutionsRetryConfig.build(params[:job_executions_retry_config], context: "#{context}[:job_executions_retry_config]") unless params[:job_executions_retry_config].nil?
        type
      end
    end

    module CreateJobTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateJobTemplateOutput, context: context)
        type = Types::CreateJobTemplateOutput.new
        type.job_template_arn = params[:job_template_arn]
        type.job_template_id = params[:job_template_id]
        type
      end
    end

    module CreateKeysAndCertificateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateKeysAndCertificateInput, context: context)
        type = Types::CreateKeysAndCertificateInput.new
        type.set_as_active = params[:set_as_active]
        type
      end
    end

    module CreateKeysAndCertificateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateKeysAndCertificateOutput, context: context)
        type = Types::CreateKeysAndCertificateOutput.new
        type.certificate_arn = params[:certificate_arn]
        type.certificate_id = params[:certificate_id]
        type.certificate_pem = params[:certificate_pem]
        type.key_pair = KeyPair.build(params[:key_pair], context: "#{context}[:key_pair]") unless params[:key_pair].nil?
        type
      end
    end

    module CreateMitigationActionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateMitigationActionInput, context: context)
        type = Types::CreateMitigationActionInput.new
        type.action_name = params[:action_name]
        type.role_arn = params[:role_arn]
        type.action_params = MitigationActionParams.build(params[:action_params], context: "#{context}[:action_params]") unless params[:action_params].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateMitigationActionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateMitigationActionOutput, context: context)
        type = Types::CreateMitigationActionOutput.new
        type.action_arn = params[:action_arn]
        type.action_id = params[:action_id]
        type
      end
    end

    module CreateOTAUpdateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateOTAUpdateInput, context: context)
        type = Types::CreateOTAUpdateInput.new
        type.ota_update_id = params[:ota_update_id]
        type.description = params[:description]
        type.targets = Targets.build(params[:targets], context: "#{context}[:targets]") unless params[:targets].nil?
        type.protocols = Protocols.build(params[:protocols], context: "#{context}[:protocols]") unless params[:protocols].nil?
        type.target_selection = params[:target_selection]
        type.aws_job_executions_rollout_config = AwsJobExecutionsRolloutConfig.build(params[:aws_job_executions_rollout_config], context: "#{context}[:aws_job_executions_rollout_config]") unless params[:aws_job_executions_rollout_config].nil?
        type.aws_job_presigned_url_config = AwsJobPresignedUrlConfig.build(params[:aws_job_presigned_url_config], context: "#{context}[:aws_job_presigned_url_config]") unless params[:aws_job_presigned_url_config].nil?
        type.aws_job_abort_config = AwsJobAbortConfig.build(params[:aws_job_abort_config], context: "#{context}[:aws_job_abort_config]") unless params[:aws_job_abort_config].nil?
        type.aws_job_timeout_config = AwsJobTimeoutConfig.build(params[:aws_job_timeout_config], context: "#{context}[:aws_job_timeout_config]") unless params[:aws_job_timeout_config].nil?
        type.files = OTAUpdateFiles.build(params[:files], context: "#{context}[:files]") unless params[:files].nil?
        type.role_arn = params[:role_arn]
        type.additional_parameters = AdditionalParameterMap.build(params[:additional_parameters], context: "#{context}[:additional_parameters]") unless params[:additional_parameters].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateOTAUpdateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateOTAUpdateOutput, context: context)
        type = Types::CreateOTAUpdateOutput.new
        type.ota_update_id = params[:ota_update_id]
        type.aws_iot_job_id = params[:aws_iot_job_id]
        type.ota_update_arn = params[:ota_update_arn]
        type.aws_iot_job_arn = params[:aws_iot_job_arn]
        type.ota_update_status = params[:ota_update_status]
        type
      end
    end

    module CreatePolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePolicyInput, context: context)
        type = Types::CreatePolicyInput.new
        type.policy_name = params[:policy_name]
        type.policy_document = params[:policy_document]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreatePolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePolicyOutput, context: context)
        type = Types::CreatePolicyOutput.new
        type.policy_name = params[:policy_name]
        type.policy_arn = params[:policy_arn]
        type.policy_document = params[:policy_document]
        type.policy_version_id = params[:policy_version_id]
        type
      end
    end

    module CreatePolicyVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePolicyVersionInput, context: context)
        type = Types::CreatePolicyVersionInput.new
        type.policy_name = params[:policy_name]
        type.policy_document = params[:policy_document]
        type.set_as_default = params[:set_as_default]
        type
      end
    end

    module CreatePolicyVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePolicyVersionOutput, context: context)
        type = Types::CreatePolicyVersionOutput.new
        type.policy_arn = params[:policy_arn]
        type.policy_document = params[:policy_document]
        type.policy_version_id = params[:policy_version_id]
        type.is_default_version = params[:is_default_version]
        type
      end
    end

    module CreateProvisioningClaimInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateProvisioningClaimInput, context: context)
        type = Types::CreateProvisioningClaimInput.new
        type.template_name = params[:template_name]
        type
      end
    end

    module CreateProvisioningClaimOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateProvisioningClaimOutput, context: context)
        type = Types::CreateProvisioningClaimOutput.new
        type.certificate_id = params[:certificate_id]
        type.certificate_pem = params[:certificate_pem]
        type.key_pair = KeyPair.build(params[:key_pair], context: "#{context}[:key_pair]") unless params[:key_pair].nil?
        type.expiration = params[:expiration]
        type
      end
    end

    module CreateProvisioningTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateProvisioningTemplateInput, context: context)
        type = Types::CreateProvisioningTemplateInput.new
        type.template_name = params[:template_name]
        type.description = params[:description]
        type.template_body = params[:template_body]
        type.enabled = params[:enabled]
        type.provisioning_role_arn = params[:provisioning_role_arn]
        type.pre_provisioning_hook = ProvisioningHook.build(params[:pre_provisioning_hook], context: "#{context}[:pre_provisioning_hook]") unless params[:pre_provisioning_hook].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateProvisioningTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateProvisioningTemplateOutput, context: context)
        type = Types::CreateProvisioningTemplateOutput.new
        type.template_arn = params[:template_arn]
        type.template_name = params[:template_name]
        type.default_version_id = params[:default_version_id]
        type
      end
    end

    module CreateProvisioningTemplateVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateProvisioningTemplateVersionInput, context: context)
        type = Types::CreateProvisioningTemplateVersionInput.new
        type.template_name = params[:template_name]
        type.template_body = params[:template_body]
        type.set_as_default = params[:set_as_default]
        type
      end
    end

    module CreateProvisioningTemplateVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateProvisioningTemplateVersionOutput, context: context)
        type = Types::CreateProvisioningTemplateVersionOutput.new
        type.template_arn = params[:template_arn]
        type.template_name = params[:template_name]
        type.version_id = params[:version_id]
        type.is_default_version = params[:is_default_version]
        type
      end
    end

    module CreateRoleAliasInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRoleAliasInput, context: context)
        type = Types::CreateRoleAliasInput.new
        type.role_alias = params[:role_alias]
        type.role_arn = params[:role_arn]
        type.credential_duration_seconds = params[:credential_duration_seconds]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateRoleAliasOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRoleAliasOutput, context: context)
        type = Types::CreateRoleAliasOutput.new
        type.role_alias = params[:role_alias]
        type.role_alias_arn = params[:role_alias_arn]
        type
      end
    end

    module CreateScheduledAuditInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateScheduledAuditInput, context: context)
        type = Types::CreateScheduledAuditInput.new
        type.frequency = params[:frequency]
        type.day_of_month = params[:day_of_month]
        type.day_of_week = params[:day_of_week]
        type.target_check_names = TargetAuditCheckNames.build(params[:target_check_names], context: "#{context}[:target_check_names]") unless params[:target_check_names].nil?
        type.scheduled_audit_name = params[:scheduled_audit_name]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateScheduledAuditOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateScheduledAuditOutput, context: context)
        type = Types::CreateScheduledAuditOutput.new
        type.scheduled_audit_arn = params[:scheduled_audit_arn]
        type
      end
    end

    module CreateSecurityProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSecurityProfileInput, context: context)
        type = Types::CreateSecurityProfileInput.new
        type.security_profile_name = params[:security_profile_name]
        type.security_profile_description = params[:security_profile_description]
        type.behaviors = Behaviors.build(params[:behaviors], context: "#{context}[:behaviors]") unless params[:behaviors].nil?
        type.alert_targets = AlertTargets.build(params[:alert_targets], context: "#{context}[:alert_targets]") unless params[:alert_targets].nil?
        type.additional_metrics_to_retain = AdditionalMetricsToRetainList.build(params[:additional_metrics_to_retain], context: "#{context}[:additional_metrics_to_retain]") unless params[:additional_metrics_to_retain].nil?
        type.additional_metrics_to_retain_v2 = AdditionalMetricsToRetainV2List.build(params[:additional_metrics_to_retain_v2], context: "#{context}[:additional_metrics_to_retain_v2]") unless params[:additional_metrics_to_retain_v2].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateSecurityProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSecurityProfileOutput, context: context)
        type = Types::CreateSecurityProfileOutput.new
        type.security_profile_name = params[:security_profile_name]
        type.security_profile_arn = params[:security_profile_arn]
        type
      end
    end

    module CreateStreamInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateStreamInput, context: context)
        type = Types::CreateStreamInput.new
        type.stream_id = params[:stream_id]
        type.description = params[:description]
        type.files = StreamFiles.build(params[:files], context: "#{context}[:files]") unless params[:files].nil?
        type.role_arn = params[:role_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateStreamOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateStreamOutput, context: context)
        type = Types::CreateStreamOutput.new
        type.stream_id = params[:stream_id]
        type.stream_arn = params[:stream_arn]
        type.description = params[:description]
        type.stream_version = params[:stream_version]
        type
      end
    end

    module CreateThingGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateThingGroupInput, context: context)
        type = Types::CreateThingGroupInput.new
        type.thing_group_name = params[:thing_group_name]
        type.parent_group_name = params[:parent_group_name]
        type.thing_group_properties = ThingGroupProperties.build(params[:thing_group_properties], context: "#{context}[:thing_group_properties]") unless params[:thing_group_properties].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateThingGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateThingGroupOutput, context: context)
        type = Types::CreateThingGroupOutput.new
        type.thing_group_name = params[:thing_group_name]
        type.thing_group_arn = params[:thing_group_arn]
        type.thing_group_id = params[:thing_group_id]
        type
      end
    end

    module CreateThingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateThingInput, context: context)
        type = Types::CreateThingInput.new
        type.thing_name = params[:thing_name]
        type.thing_type_name = params[:thing_type_name]
        type.attribute_payload = AttributePayload.build(params[:attribute_payload], context: "#{context}[:attribute_payload]") unless params[:attribute_payload].nil?
        type.billing_group_name = params[:billing_group_name]
        type
      end
    end

    module CreateThingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateThingOutput, context: context)
        type = Types::CreateThingOutput.new
        type.thing_name = params[:thing_name]
        type.thing_arn = params[:thing_arn]
        type.thing_id = params[:thing_id]
        type
      end
    end

    module CreateThingTypeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateThingTypeInput, context: context)
        type = Types::CreateThingTypeInput.new
        type.thing_type_name = params[:thing_type_name]
        type.thing_type_properties = ThingTypeProperties.build(params[:thing_type_properties], context: "#{context}[:thing_type_properties]") unless params[:thing_type_properties].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateThingTypeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateThingTypeOutput, context: context)
        type = Types::CreateThingTypeOutput.new
        type.thing_type_name = params[:thing_type_name]
        type.thing_type_arn = params[:thing_type_arn]
        type.thing_type_id = params[:thing_type_id]
        type
      end
    end

    module CreateTopicRuleDestinationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTopicRuleDestinationInput, context: context)
        type = Types::CreateTopicRuleDestinationInput.new
        type.destination_configuration = TopicRuleDestinationConfiguration.build(params[:destination_configuration], context: "#{context}[:destination_configuration]") unless params[:destination_configuration].nil?
        type
      end
    end

    module CreateTopicRuleDestinationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTopicRuleDestinationOutput, context: context)
        type = Types::CreateTopicRuleDestinationOutput.new
        type.topic_rule_destination = TopicRuleDestination.build(params[:topic_rule_destination], context: "#{context}[:topic_rule_destination]") unless params[:topic_rule_destination].nil?
        type
      end
    end

    module CreateTopicRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTopicRuleInput, context: context)
        type = Types::CreateTopicRuleInput.new
        type.rule_name = params[:rule_name]
        type.topic_rule_payload = TopicRulePayload.build(params[:topic_rule_payload], context: "#{context}[:topic_rule_payload]") unless params[:topic_rule_payload].nil?
        type.tags = params[:tags]
        type
      end
    end

    module CreateTopicRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTopicRuleOutput, context: context)
        type = Types::CreateTopicRuleOutput.new
        type
      end
    end

    module CustomCodeSigning
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomCodeSigning, context: context)
        type = Types::CustomCodeSigning.new
        type.signature = CodeSigningSignature.build(params[:signature], context: "#{context}[:signature]") unless params[:signature].nil?
        type.certificate_chain = CodeSigningCertificateChain.build(params[:certificate_chain], context: "#{context}[:certificate_chain]") unless params[:certificate_chain].nil?
        type.hash_algorithm = params[:hash_algorithm]
        type.signature_algorithm = params[:signature_algorithm]
        type
      end
    end

    module DeleteAccountAuditConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAccountAuditConfigurationInput, context: context)
        type = Types::DeleteAccountAuditConfigurationInput.new
        type.delete_scheduled_audits = params[:delete_scheduled_audits]
        type
      end
    end

    module DeleteAccountAuditConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAccountAuditConfigurationOutput, context: context)
        type = Types::DeleteAccountAuditConfigurationOutput.new
        type
      end
    end

    module DeleteAuditSuppressionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAuditSuppressionInput, context: context)
        type = Types::DeleteAuditSuppressionInput.new
        type.check_name = params[:check_name]
        type.resource_identifier = ResourceIdentifier.build(params[:resource_identifier], context: "#{context}[:resource_identifier]") unless params[:resource_identifier].nil?
        type
      end
    end

    module DeleteAuditSuppressionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAuditSuppressionOutput, context: context)
        type = Types::DeleteAuditSuppressionOutput.new
        type
      end
    end

    module DeleteAuthorizerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAuthorizerInput, context: context)
        type = Types::DeleteAuthorizerInput.new
        type.authorizer_name = params[:authorizer_name]
        type
      end
    end

    module DeleteAuthorizerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAuthorizerOutput, context: context)
        type = Types::DeleteAuthorizerOutput.new
        type
      end
    end

    module DeleteBillingGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBillingGroupInput, context: context)
        type = Types::DeleteBillingGroupInput.new
        type.billing_group_name = params[:billing_group_name]
        type.expected_version = params[:expected_version]
        type
      end
    end

    module DeleteBillingGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBillingGroupOutput, context: context)
        type = Types::DeleteBillingGroupOutput.new
        type
      end
    end

    module DeleteCACertificateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCACertificateInput, context: context)
        type = Types::DeleteCACertificateInput.new
        type.certificate_id = params[:certificate_id]
        type
      end
    end

    module DeleteCACertificateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCACertificateOutput, context: context)
        type = Types::DeleteCACertificateOutput.new
        type
      end
    end

    module DeleteCertificateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCertificateInput, context: context)
        type = Types::DeleteCertificateInput.new
        type.certificate_id = params[:certificate_id]
        type.force_delete = params[:force_delete]
        type
      end
    end

    module DeleteCertificateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCertificateOutput, context: context)
        type = Types::DeleteCertificateOutput.new
        type
      end
    end

    module DeleteConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteConflictException, context: context)
        type = Types::DeleteConflictException.new
        type.message = params[:message]
        type
      end
    end

    module DeleteCustomMetricInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCustomMetricInput, context: context)
        type = Types::DeleteCustomMetricInput.new
        type.metric_name = params[:metric_name]
        type
      end
    end

    module DeleteCustomMetricOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCustomMetricOutput, context: context)
        type = Types::DeleteCustomMetricOutput.new
        type
      end
    end

    module DeleteDimensionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDimensionInput, context: context)
        type = Types::DeleteDimensionInput.new
        type.name = params[:name]
        type
      end
    end

    module DeleteDimensionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDimensionOutput, context: context)
        type = Types::DeleteDimensionOutput.new
        type
      end
    end

    module DeleteDomainConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDomainConfigurationInput, context: context)
        type = Types::DeleteDomainConfigurationInput.new
        type.domain_configuration_name = params[:domain_configuration_name]
        type
      end
    end

    module DeleteDomainConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDomainConfigurationOutput, context: context)
        type = Types::DeleteDomainConfigurationOutput.new
        type
      end
    end

    module DeleteDynamicThingGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDynamicThingGroupInput, context: context)
        type = Types::DeleteDynamicThingGroupInput.new
        type.thing_group_name = params[:thing_group_name]
        type.expected_version = params[:expected_version]
        type
      end
    end

    module DeleteDynamicThingGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDynamicThingGroupOutput, context: context)
        type = Types::DeleteDynamicThingGroupOutput.new
        type
      end
    end

    module DeleteFleetMetricInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFleetMetricInput, context: context)
        type = Types::DeleteFleetMetricInput.new
        type.metric_name = params[:metric_name]
        type.expected_version = params[:expected_version]
        type
      end
    end

    module DeleteFleetMetricOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFleetMetricOutput, context: context)
        type = Types::DeleteFleetMetricOutput.new
        type
      end
    end

    module DeleteJobExecutionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteJobExecutionInput, context: context)
        type = Types::DeleteJobExecutionInput.new
        type.job_id = params[:job_id]
        type.thing_name = params[:thing_name]
        type.execution_number = params[:execution_number]
        type.force = params[:force]
        type.namespace_id = params[:namespace_id]
        type
      end
    end

    module DeleteJobExecutionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteJobExecutionOutput, context: context)
        type = Types::DeleteJobExecutionOutput.new
        type
      end
    end

    module DeleteJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteJobInput, context: context)
        type = Types::DeleteJobInput.new
        type.job_id = params[:job_id]
        type.force = params[:force]
        type.namespace_id = params[:namespace_id]
        type
      end
    end

    module DeleteJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteJobOutput, context: context)
        type = Types::DeleteJobOutput.new
        type
      end
    end

    module DeleteJobTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteJobTemplateInput, context: context)
        type = Types::DeleteJobTemplateInput.new
        type.job_template_id = params[:job_template_id]
        type
      end
    end

    module DeleteJobTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteJobTemplateOutput, context: context)
        type = Types::DeleteJobTemplateOutput.new
        type
      end
    end

    module DeleteMitigationActionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteMitigationActionInput, context: context)
        type = Types::DeleteMitigationActionInput.new
        type.action_name = params[:action_name]
        type
      end
    end

    module DeleteMitigationActionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteMitigationActionOutput, context: context)
        type = Types::DeleteMitigationActionOutput.new
        type
      end
    end

    module DeleteOTAUpdateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteOTAUpdateInput, context: context)
        type = Types::DeleteOTAUpdateInput.new
        type.ota_update_id = params[:ota_update_id]
        type.delete_stream = params[:delete_stream]
        type.force_delete_aws_job = params[:force_delete_aws_job]
        type
      end
    end

    module DeleteOTAUpdateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteOTAUpdateOutput, context: context)
        type = Types::DeleteOTAUpdateOutput.new
        type
      end
    end

    module DeletePolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePolicyInput, context: context)
        type = Types::DeletePolicyInput.new
        type.policy_name = params[:policy_name]
        type
      end
    end

    module DeletePolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePolicyOutput, context: context)
        type = Types::DeletePolicyOutput.new
        type
      end
    end

    module DeletePolicyVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePolicyVersionInput, context: context)
        type = Types::DeletePolicyVersionInput.new
        type.policy_name = params[:policy_name]
        type.policy_version_id = params[:policy_version_id]
        type
      end
    end

    module DeletePolicyVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePolicyVersionOutput, context: context)
        type = Types::DeletePolicyVersionOutput.new
        type
      end
    end

    module DeleteProvisioningTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteProvisioningTemplateInput, context: context)
        type = Types::DeleteProvisioningTemplateInput.new
        type.template_name = params[:template_name]
        type
      end
    end

    module DeleteProvisioningTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteProvisioningTemplateOutput, context: context)
        type = Types::DeleteProvisioningTemplateOutput.new
        type
      end
    end

    module DeleteProvisioningTemplateVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteProvisioningTemplateVersionInput, context: context)
        type = Types::DeleteProvisioningTemplateVersionInput.new
        type.template_name = params[:template_name]
        type.version_id = params[:version_id]
        type
      end
    end

    module DeleteProvisioningTemplateVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteProvisioningTemplateVersionOutput, context: context)
        type = Types::DeleteProvisioningTemplateVersionOutput.new
        type
      end
    end

    module DeleteRegistrationCodeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRegistrationCodeInput, context: context)
        type = Types::DeleteRegistrationCodeInput.new
        type
      end
    end

    module DeleteRegistrationCodeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRegistrationCodeOutput, context: context)
        type = Types::DeleteRegistrationCodeOutput.new
        type
      end
    end

    module DeleteRoleAliasInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRoleAliasInput, context: context)
        type = Types::DeleteRoleAliasInput.new
        type.role_alias = params[:role_alias]
        type
      end
    end

    module DeleteRoleAliasOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRoleAliasOutput, context: context)
        type = Types::DeleteRoleAliasOutput.new
        type
      end
    end

    module DeleteScheduledAuditInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteScheduledAuditInput, context: context)
        type = Types::DeleteScheduledAuditInput.new
        type.scheduled_audit_name = params[:scheduled_audit_name]
        type
      end
    end

    module DeleteScheduledAuditOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteScheduledAuditOutput, context: context)
        type = Types::DeleteScheduledAuditOutput.new
        type
      end
    end

    module DeleteSecurityProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSecurityProfileInput, context: context)
        type = Types::DeleteSecurityProfileInput.new
        type.security_profile_name = params[:security_profile_name]
        type.expected_version = params[:expected_version]
        type
      end
    end

    module DeleteSecurityProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSecurityProfileOutput, context: context)
        type = Types::DeleteSecurityProfileOutput.new
        type
      end
    end

    module DeleteStreamInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteStreamInput, context: context)
        type = Types::DeleteStreamInput.new
        type.stream_id = params[:stream_id]
        type
      end
    end

    module DeleteStreamOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteStreamOutput, context: context)
        type = Types::DeleteStreamOutput.new
        type
      end
    end

    module DeleteThingGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteThingGroupInput, context: context)
        type = Types::DeleteThingGroupInput.new
        type.thing_group_name = params[:thing_group_name]
        type.expected_version = params[:expected_version]
        type
      end
    end

    module DeleteThingGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteThingGroupOutput, context: context)
        type = Types::DeleteThingGroupOutput.new
        type
      end
    end

    module DeleteThingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteThingInput, context: context)
        type = Types::DeleteThingInput.new
        type.thing_name = params[:thing_name]
        type.expected_version = params[:expected_version]
        type
      end
    end

    module DeleteThingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteThingOutput, context: context)
        type = Types::DeleteThingOutput.new
        type
      end
    end

    module DeleteThingTypeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteThingTypeInput, context: context)
        type = Types::DeleteThingTypeInput.new
        type.thing_type_name = params[:thing_type_name]
        type
      end
    end

    module DeleteThingTypeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteThingTypeOutput, context: context)
        type = Types::DeleteThingTypeOutput.new
        type
      end
    end

    module DeleteTopicRuleDestinationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTopicRuleDestinationInput, context: context)
        type = Types::DeleteTopicRuleDestinationInput.new
        type.arn = params[:arn]
        type
      end
    end

    module DeleteTopicRuleDestinationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTopicRuleDestinationOutput, context: context)
        type = Types::DeleteTopicRuleDestinationOutput.new
        type
      end
    end

    module DeleteTopicRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTopicRuleInput, context: context)
        type = Types::DeleteTopicRuleInput.new
        type.rule_name = params[:rule_name]
        type
      end
    end

    module DeleteTopicRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTopicRuleOutput, context: context)
        type = Types::DeleteTopicRuleOutput.new
        type
      end
    end

    module DeleteV2LoggingLevelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteV2LoggingLevelInput, context: context)
        type = Types::DeleteV2LoggingLevelInput.new
        type.target_type = params[:target_type]
        type.target_name = params[:target_name]
        type
      end
    end

    module DeleteV2LoggingLevelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteV2LoggingLevelOutput, context: context)
        type = Types::DeleteV2LoggingLevelOutput.new
        type
      end
    end

    module Denied
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Denied, context: context)
        type = Types::Denied.new
        type.implicit_deny = ImplicitDeny.build(params[:implicit_deny], context: "#{context}[:implicit_deny]") unless params[:implicit_deny].nil?
        type.explicit_deny = ExplicitDeny.build(params[:explicit_deny], context: "#{context}[:explicit_deny]") unless params[:explicit_deny].nil?
        type
      end
    end

    module DeprecateThingTypeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeprecateThingTypeInput, context: context)
        type = Types::DeprecateThingTypeInput.new
        type.thing_type_name = params[:thing_type_name]
        type.undo_deprecate = params[:undo_deprecate]
        type
      end
    end

    module DeprecateThingTypeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeprecateThingTypeOutput, context: context)
        type = Types::DeprecateThingTypeOutput.new
        type
      end
    end

    module DescribeAccountAuditConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAccountAuditConfigurationInput, context: context)
        type = Types::DescribeAccountAuditConfigurationInput.new
        type
      end
    end

    module DescribeAccountAuditConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAccountAuditConfigurationOutput, context: context)
        type = Types::DescribeAccountAuditConfigurationOutput.new
        type.role_arn = params[:role_arn]
        type.audit_notification_target_configurations = AuditNotificationTargetConfigurations.build(params[:audit_notification_target_configurations], context: "#{context}[:audit_notification_target_configurations]") unless params[:audit_notification_target_configurations].nil?
        type.audit_check_configurations = AuditCheckConfigurations.build(params[:audit_check_configurations], context: "#{context}[:audit_check_configurations]") unless params[:audit_check_configurations].nil?
        type
      end
    end

    module DescribeAuditFindingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAuditFindingInput, context: context)
        type = Types::DescribeAuditFindingInput.new
        type.finding_id = params[:finding_id]
        type
      end
    end

    module DescribeAuditFindingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAuditFindingOutput, context: context)
        type = Types::DescribeAuditFindingOutput.new
        type.finding = AuditFinding.build(params[:finding], context: "#{context}[:finding]") unless params[:finding].nil?
        type
      end
    end

    module DescribeAuditMitigationActionsTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAuditMitigationActionsTaskInput, context: context)
        type = Types::DescribeAuditMitigationActionsTaskInput.new
        type.task_id = params[:task_id]
        type
      end
    end

    module DescribeAuditMitigationActionsTaskOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAuditMitigationActionsTaskOutput, context: context)
        type = Types::DescribeAuditMitigationActionsTaskOutput.new
        type.task_status = params[:task_status]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.task_statistics = AuditMitigationActionsTaskStatistics.build(params[:task_statistics], context: "#{context}[:task_statistics]") unless params[:task_statistics].nil?
        type.target = AuditMitigationActionsTaskTarget.build(params[:target], context: "#{context}[:target]") unless params[:target].nil?
        type.audit_check_to_actions_mapping = AuditCheckToActionsMapping.build(params[:audit_check_to_actions_mapping], context: "#{context}[:audit_check_to_actions_mapping]") unless params[:audit_check_to_actions_mapping].nil?
        type.actions_definition = MitigationActionList.build(params[:actions_definition], context: "#{context}[:actions_definition]") unless params[:actions_definition].nil?
        type
      end
    end

    module DescribeAuditSuppressionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAuditSuppressionInput, context: context)
        type = Types::DescribeAuditSuppressionInput.new
        type.check_name = params[:check_name]
        type.resource_identifier = ResourceIdentifier.build(params[:resource_identifier], context: "#{context}[:resource_identifier]") unless params[:resource_identifier].nil?
        type
      end
    end

    module DescribeAuditSuppressionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAuditSuppressionOutput, context: context)
        type = Types::DescribeAuditSuppressionOutput.new
        type.check_name = params[:check_name]
        type.resource_identifier = ResourceIdentifier.build(params[:resource_identifier], context: "#{context}[:resource_identifier]") unless params[:resource_identifier].nil?
        type.expiration_date = params[:expiration_date]
        type.suppress_indefinitely = params[:suppress_indefinitely]
        type.description = params[:description]
        type
      end
    end

    module DescribeAuditTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAuditTaskInput, context: context)
        type = Types::DescribeAuditTaskInput.new
        type.task_id = params[:task_id]
        type
      end
    end

    module DescribeAuditTaskOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAuditTaskOutput, context: context)
        type = Types::DescribeAuditTaskOutput.new
        type.task_status = params[:task_status]
        type.task_type = params[:task_type]
        type.task_start_time = params[:task_start_time]
        type.task_statistics = TaskStatistics.build(params[:task_statistics], context: "#{context}[:task_statistics]") unless params[:task_statistics].nil?
        type.scheduled_audit_name = params[:scheduled_audit_name]
        type.audit_details = AuditDetails.build(params[:audit_details], context: "#{context}[:audit_details]") unless params[:audit_details].nil?
        type
      end
    end

    module DescribeAuthorizerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAuthorizerInput, context: context)
        type = Types::DescribeAuthorizerInput.new
        type.authorizer_name = params[:authorizer_name]
        type
      end
    end

    module DescribeAuthorizerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAuthorizerOutput, context: context)
        type = Types::DescribeAuthorizerOutput.new
        type.authorizer_description = AuthorizerDescription.build(params[:authorizer_description], context: "#{context}[:authorizer_description]") unless params[:authorizer_description].nil?
        type
      end
    end

    module DescribeBillingGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeBillingGroupInput, context: context)
        type = Types::DescribeBillingGroupInput.new
        type.billing_group_name = params[:billing_group_name]
        type
      end
    end

    module DescribeBillingGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeBillingGroupOutput, context: context)
        type = Types::DescribeBillingGroupOutput.new
        type.billing_group_name = params[:billing_group_name]
        type.billing_group_id = params[:billing_group_id]
        type.billing_group_arn = params[:billing_group_arn]
        type.version = params[:version]
        type.billing_group_properties = BillingGroupProperties.build(params[:billing_group_properties], context: "#{context}[:billing_group_properties]") unless params[:billing_group_properties].nil?
        type.billing_group_metadata = BillingGroupMetadata.build(params[:billing_group_metadata], context: "#{context}[:billing_group_metadata]") unless params[:billing_group_metadata].nil?
        type
      end
    end

    module DescribeCACertificateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCACertificateInput, context: context)
        type = Types::DescribeCACertificateInput.new
        type.certificate_id = params[:certificate_id]
        type
      end
    end

    module DescribeCACertificateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCACertificateOutput, context: context)
        type = Types::DescribeCACertificateOutput.new
        type.certificate_description = CACertificateDescription.build(params[:certificate_description], context: "#{context}[:certificate_description]") unless params[:certificate_description].nil?
        type.registration_config = RegistrationConfig.build(params[:registration_config], context: "#{context}[:registration_config]") unless params[:registration_config].nil?
        type
      end
    end

    module DescribeCertificateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCertificateInput, context: context)
        type = Types::DescribeCertificateInput.new
        type.certificate_id = params[:certificate_id]
        type
      end
    end

    module DescribeCertificateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCertificateOutput, context: context)
        type = Types::DescribeCertificateOutput.new
        type.certificate_description = CertificateDescription.build(params[:certificate_description], context: "#{context}[:certificate_description]") unless params[:certificate_description].nil?
        type
      end
    end

    module DescribeCustomMetricInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCustomMetricInput, context: context)
        type = Types::DescribeCustomMetricInput.new
        type.metric_name = params[:metric_name]
        type
      end
    end

    module DescribeCustomMetricOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCustomMetricOutput, context: context)
        type = Types::DescribeCustomMetricOutput.new
        type.metric_name = params[:metric_name]
        type.metric_arn = params[:metric_arn]
        type.metric_type = params[:metric_type]
        type.display_name = params[:display_name]
        type.creation_date = params[:creation_date]
        type.last_modified_date = params[:last_modified_date]
        type
      end
    end

    module DescribeDefaultAuthorizerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDefaultAuthorizerInput, context: context)
        type = Types::DescribeDefaultAuthorizerInput.new
        type
      end
    end

    module DescribeDefaultAuthorizerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDefaultAuthorizerOutput, context: context)
        type = Types::DescribeDefaultAuthorizerOutput.new
        type.authorizer_description = AuthorizerDescription.build(params[:authorizer_description], context: "#{context}[:authorizer_description]") unless params[:authorizer_description].nil?
        type
      end
    end

    module DescribeDetectMitigationActionsTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDetectMitigationActionsTaskInput, context: context)
        type = Types::DescribeDetectMitigationActionsTaskInput.new
        type.task_id = params[:task_id]
        type
      end
    end

    module DescribeDetectMitigationActionsTaskOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDetectMitigationActionsTaskOutput, context: context)
        type = Types::DescribeDetectMitigationActionsTaskOutput.new
        type.task_summary = DetectMitigationActionsTaskSummary.build(params[:task_summary], context: "#{context}[:task_summary]") unless params[:task_summary].nil?
        type
      end
    end

    module DescribeDimensionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDimensionInput, context: context)
        type = Types::DescribeDimensionInput.new
        type.name = params[:name]
        type
      end
    end

    module DescribeDimensionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDimensionOutput, context: context)
        type = Types::DescribeDimensionOutput.new
        type.name = params[:name]
        type.arn = params[:arn]
        type.type = params[:type]
        type.string_values = DimensionStringValues.build(params[:string_values], context: "#{context}[:string_values]") unless params[:string_values].nil?
        type.creation_date = params[:creation_date]
        type.last_modified_date = params[:last_modified_date]
        type
      end
    end

    module DescribeDomainConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDomainConfigurationInput, context: context)
        type = Types::DescribeDomainConfigurationInput.new
        type.domain_configuration_name = params[:domain_configuration_name]
        type
      end
    end

    module DescribeDomainConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDomainConfigurationOutput, context: context)
        type = Types::DescribeDomainConfigurationOutput.new
        type.domain_configuration_name = params[:domain_configuration_name]
        type.domain_configuration_arn = params[:domain_configuration_arn]
        type.domain_name = params[:domain_name]
        type.server_certificates = ServerCertificates.build(params[:server_certificates], context: "#{context}[:server_certificates]") unless params[:server_certificates].nil?
        type.authorizer_config = AuthorizerConfig.build(params[:authorizer_config], context: "#{context}[:authorizer_config]") unless params[:authorizer_config].nil?
        type.domain_configuration_status = params[:domain_configuration_status]
        type.service_type = params[:service_type]
        type.domain_type = params[:domain_type]
        type.last_status_change_date = params[:last_status_change_date]
        type
      end
    end

    module DescribeEndpointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEndpointInput, context: context)
        type = Types::DescribeEndpointInput.new
        type.endpoint_type = params[:endpoint_type]
        type
      end
    end

    module DescribeEndpointOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEndpointOutput, context: context)
        type = Types::DescribeEndpointOutput.new
        type.endpoint_address = params[:endpoint_address]
        type
      end
    end

    module DescribeEventConfigurationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEventConfigurationsInput, context: context)
        type = Types::DescribeEventConfigurationsInput.new
        type
      end
    end

    module DescribeEventConfigurationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEventConfigurationsOutput, context: context)
        type = Types::DescribeEventConfigurationsOutput.new
        type.event_configurations = EventConfigurations.build(params[:event_configurations], context: "#{context}[:event_configurations]") unless params[:event_configurations].nil?
        type.creation_date = params[:creation_date]
        type.last_modified_date = params[:last_modified_date]
        type
      end
    end

    module DescribeFleetMetricInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFleetMetricInput, context: context)
        type = Types::DescribeFleetMetricInput.new
        type.metric_name = params[:metric_name]
        type
      end
    end

    module DescribeFleetMetricOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFleetMetricOutput, context: context)
        type = Types::DescribeFleetMetricOutput.new
        type.metric_name = params[:metric_name]
        type.query_string = params[:query_string]
        type.aggregation_type = AggregationType.build(params[:aggregation_type], context: "#{context}[:aggregation_type]") unless params[:aggregation_type].nil?
        type.period = params[:period]
        type.aggregation_field = params[:aggregation_field]
        type.description = params[:description]
        type.query_version = params[:query_version]
        type.index_name = params[:index_name]
        type.creation_date = params[:creation_date]
        type.last_modified_date = params[:last_modified_date]
        type.unit = params[:unit]
        type.version = params[:version]
        type.metric_arn = params[:metric_arn]
        type
      end
    end

    module DescribeIndexInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeIndexInput, context: context)
        type = Types::DescribeIndexInput.new
        type.index_name = params[:index_name]
        type
      end
    end

    module DescribeIndexOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeIndexOutput, context: context)
        type = Types::DescribeIndexOutput.new
        type.index_name = params[:index_name]
        type.index_status = params[:index_status]
        type.schema = params[:schema]
        type
      end
    end

    module DescribeJobExecutionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeJobExecutionInput, context: context)
        type = Types::DescribeJobExecutionInput.new
        type.job_id = params[:job_id]
        type.thing_name = params[:thing_name]
        type.execution_number = params[:execution_number]
        type
      end
    end

    module DescribeJobExecutionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeJobExecutionOutput, context: context)
        type = Types::DescribeJobExecutionOutput.new
        type.execution = JobExecution.build(params[:execution], context: "#{context}[:execution]") unless params[:execution].nil?
        type
      end
    end

    module DescribeJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeJobInput, context: context)
        type = Types::DescribeJobInput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module DescribeJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeJobOutput, context: context)
        type = Types::DescribeJobOutput.new
        type.document_source = params[:document_source]
        type.job = Job.build(params[:job], context: "#{context}[:job]") unless params[:job].nil?
        type
      end
    end

    module DescribeJobTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeJobTemplateInput, context: context)
        type = Types::DescribeJobTemplateInput.new
        type.job_template_id = params[:job_template_id]
        type
      end
    end

    module DescribeJobTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeJobTemplateOutput, context: context)
        type = Types::DescribeJobTemplateOutput.new
        type.job_template_arn = params[:job_template_arn]
        type.job_template_id = params[:job_template_id]
        type.description = params[:description]
        type.document_source = params[:document_source]
        type.document = params[:document]
        type.created_at = params[:created_at]
        type.presigned_url_config = PresignedUrlConfig.build(params[:presigned_url_config], context: "#{context}[:presigned_url_config]") unless params[:presigned_url_config].nil?
        type.job_executions_rollout_config = JobExecutionsRolloutConfig.build(params[:job_executions_rollout_config], context: "#{context}[:job_executions_rollout_config]") unless params[:job_executions_rollout_config].nil?
        type.abort_config = AbortConfig.build(params[:abort_config], context: "#{context}[:abort_config]") unless params[:abort_config].nil?
        type.timeout_config = TimeoutConfig.build(params[:timeout_config], context: "#{context}[:timeout_config]") unless params[:timeout_config].nil?
        type.job_executions_retry_config = JobExecutionsRetryConfig.build(params[:job_executions_retry_config], context: "#{context}[:job_executions_retry_config]") unless params[:job_executions_retry_config].nil?
        type
      end
    end

    module DescribeManagedJobTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeManagedJobTemplateInput, context: context)
        type = Types::DescribeManagedJobTemplateInput.new
        type.template_name = params[:template_name]
        type.template_version = params[:template_version]
        type
      end
    end

    module DescribeManagedJobTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeManagedJobTemplateOutput, context: context)
        type = Types::DescribeManagedJobTemplateOutput.new
        type.template_name = params[:template_name]
        type.template_arn = params[:template_arn]
        type.description = params[:description]
        type.template_version = params[:template_version]
        type.environments = Environments.build(params[:environments], context: "#{context}[:environments]") unless params[:environments].nil?
        type.document_parameters = DocumentParameters.build(params[:document_parameters], context: "#{context}[:document_parameters]") unless params[:document_parameters].nil?
        type.document = params[:document]
        type
      end
    end

    module DescribeMitigationActionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeMitigationActionInput, context: context)
        type = Types::DescribeMitigationActionInput.new
        type.action_name = params[:action_name]
        type
      end
    end

    module DescribeMitigationActionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeMitigationActionOutput, context: context)
        type = Types::DescribeMitigationActionOutput.new
        type.action_name = params[:action_name]
        type.action_type = params[:action_type]
        type.action_arn = params[:action_arn]
        type.action_id = params[:action_id]
        type.role_arn = params[:role_arn]
        type.action_params = MitigationActionParams.build(params[:action_params], context: "#{context}[:action_params]") unless params[:action_params].nil?
        type.creation_date = params[:creation_date]
        type.last_modified_date = params[:last_modified_date]
        type
      end
    end

    module DescribeProvisioningTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeProvisioningTemplateInput, context: context)
        type = Types::DescribeProvisioningTemplateInput.new
        type.template_name = params[:template_name]
        type
      end
    end

    module DescribeProvisioningTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeProvisioningTemplateOutput, context: context)
        type = Types::DescribeProvisioningTemplateOutput.new
        type.template_arn = params[:template_arn]
        type.template_name = params[:template_name]
        type.description = params[:description]
        type.creation_date = params[:creation_date]
        type.last_modified_date = params[:last_modified_date]
        type.default_version_id = params[:default_version_id]
        type.template_body = params[:template_body]
        type.enabled = params[:enabled]
        type.provisioning_role_arn = params[:provisioning_role_arn]
        type.pre_provisioning_hook = ProvisioningHook.build(params[:pre_provisioning_hook], context: "#{context}[:pre_provisioning_hook]") unless params[:pre_provisioning_hook].nil?
        type
      end
    end

    module DescribeProvisioningTemplateVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeProvisioningTemplateVersionInput, context: context)
        type = Types::DescribeProvisioningTemplateVersionInput.new
        type.template_name = params[:template_name]
        type.version_id = params[:version_id]
        type
      end
    end

    module DescribeProvisioningTemplateVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeProvisioningTemplateVersionOutput, context: context)
        type = Types::DescribeProvisioningTemplateVersionOutput.new
        type.version_id = params[:version_id]
        type.creation_date = params[:creation_date]
        type.template_body = params[:template_body]
        type.is_default_version = params[:is_default_version]
        type
      end
    end

    module DescribeRoleAliasInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRoleAliasInput, context: context)
        type = Types::DescribeRoleAliasInput.new
        type.role_alias = params[:role_alias]
        type
      end
    end

    module DescribeRoleAliasOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRoleAliasOutput, context: context)
        type = Types::DescribeRoleAliasOutput.new
        type.role_alias_description = RoleAliasDescription.build(params[:role_alias_description], context: "#{context}[:role_alias_description]") unless params[:role_alias_description].nil?
        type
      end
    end

    module DescribeScheduledAuditInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeScheduledAuditInput, context: context)
        type = Types::DescribeScheduledAuditInput.new
        type.scheduled_audit_name = params[:scheduled_audit_name]
        type
      end
    end

    module DescribeScheduledAuditOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeScheduledAuditOutput, context: context)
        type = Types::DescribeScheduledAuditOutput.new
        type.frequency = params[:frequency]
        type.day_of_month = params[:day_of_month]
        type.day_of_week = params[:day_of_week]
        type.target_check_names = TargetAuditCheckNames.build(params[:target_check_names], context: "#{context}[:target_check_names]") unless params[:target_check_names].nil?
        type.scheduled_audit_name = params[:scheduled_audit_name]
        type.scheduled_audit_arn = params[:scheduled_audit_arn]
        type
      end
    end

    module DescribeSecurityProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSecurityProfileInput, context: context)
        type = Types::DescribeSecurityProfileInput.new
        type.security_profile_name = params[:security_profile_name]
        type
      end
    end

    module DescribeSecurityProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSecurityProfileOutput, context: context)
        type = Types::DescribeSecurityProfileOutput.new
        type.security_profile_name = params[:security_profile_name]
        type.security_profile_arn = params[:security_profile_arn]
        type.security_profile_description = params[:security_profile_description]
        type.behaviors = Behaviors.build(params[:behaviors], context: "#{context}[:behaviors]") unless params[:behaviors].nil?
        type.alert_targets = AlertTargets.build(params[:alert_targets], context: "#{context}[:alert_targets]") unless params[:alert_targets].nil?
        type.additional_metrics_to_retain = AdditionalMetricsToRetainList.build(params[:additional_metrics_to_retain], context: "#{context}[:additional_metrics_to_retain]") unless params[:additional_metrics_to_retain].nil?
        type.additional_metrics_to_retain_v2 = AdditionalMetricsToRetainV2List.build(params[:additional_metrics_to_retain_v2], context: "#{context}[:additional_metrics_to_retain_v2]") unless params[:additional_metrics_to_retain_v2].nil?
        type.version = params[:version]
        type.creation_date = params[:creation_date]
        type.last_modified_date = params[:last_modified_date]
        type
      end
    end

    module DescribeStreamInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeStreamInput, context: context)
        type = Types::DescribeStreamInput.new
        type.stream_id = params[:stream_id]
        type
      end
    end

    module DescribeStreamOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeStreamOutput, context: context)
        type = Types::DescribeStreamOutput.new
        type.stream_info = StreamInfo.build(params[:stream_info], context: "#{context}[:stream_info]") unless params[:stream_info].nil?
        type
      end
    end

    module DescribeThingGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeThingGroupInput, context: context)
        type = Types::DescribeThingGroupInput.new
        type.thing_group_name = params[:thing_group_name]
        type
      end
    end

    module DescribeThingGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeThingGroupOutput, context: context)
        type = Types::DescribeThingGroupOutput.new
        type.thing_group_name = params[:thing_group_name]
        type.thing_group_id = params[:thing_group_id]
        type.thing_group_arn = params[:thing_group_arn]
        type.version = params[:version]
        type.thing_group_properties = ThingGroupProperties.build(params[:thing_group_properties], context: "#{context}[:thing_group_properties]") unless params[:thing_group_properties].nil?
        type.thing_group_metadata = ThingGroupMetadata.build(params[:thing_group_metadata], context: "#{context}[:thing_group_metadata]") unless params[:thing_group_metadata].nil?
        type.index_name = params[:index_name]
        type.query_string = params[:query_string]
        type.query_version = params[:query_version]
        type.status = params[:status]
        type
      end
    end

    module DescribeThingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeThingInput, context: context)
        type = Types::DescribeThingInput.new
        type.thing_name = params[:thing_name]
        type
      end
    end

    module DescribeThingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeThingOutput, context: context)
        type = Types::DescribeThingOutput.new
        type.default_client_id = params[:default_client_id]
        type.thing_name = params[:thing_name]
        type.thing_id = params[:thing_id]
        type.thing_arn = params[:thing_arn]
        type.thing_type_name = params[:thing_type_name]
        type.attributes = Attributes.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type.version = params[:version]
        type.billing_group_name = params[:billing_group_name]
        type
      end
    end

    module DescribeThingRegistrationTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeThingRegistrationTaskInput, context: context)
        type = Types::DescribeThingRegistrationTaskInput.new
        type.task_id = params[:task_id]
        type
      end
    end

    module DescribeThingRegistrationTaskOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeThingRegistrationTaskOutput, context: context)
        type = Types::DescribeThingRegistrationTaskOutput.new
        type.task_id = params[:task_id]
        type.creation_date = params[:creation_date]
        type.last_modified_date = params[:last_modified_date]
        type.template_body = params[:template_body]
        type.input_file_bucket = params[:input_file_bucket]
        type.input_file_key = params[:input_file_key]
        type.role_arn = params[:role_arn]
        type.status = params[:status]
        type.message = params[:message]
        type.success_count = params[:success_count]
        type.failure_count = params[:failure_count]
        type.percentage_progress = params[:percentage_progress]
        type
      end
    end

    module DescribeThingTypeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeThingTypeInput, context: context)
        type = Types::DescribeThingTypeInput.new
        type.thing_type_name = params[:thing_type_name]
        type
      end
    end

    module DescribeThingTypeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeThingTypeOutput, context: context)
        type = Types::DescribeThingTypeOutput.new
        type.thing_type_name = params[:thing_type_name]
        type.thing_type_id = params[:thing_type_id]
        type.thing_type_arn = params[:thing_type_arn]
        type.thing_type_properties = ThingTypeProperties.build(params[:thing_type_properties], context: "#{context}[:thing_type_properties]") unless params[:thing_type_properties].nil?
        type.thing_type_metadata = ThingTypeMetadata.build(params[:thing_type_metadata], context: "#{context}[:thing_type_metadata]") unless params[:thing_type_metadata].nil?
        type
      end
    end

    module Destination
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Destination, context: context)
        type = Types::Destination.new
        type.s3_destination = S3Destination.build(params[:s3_destination], context: "#{context}[:s3_destination]") unless params[:s3_destination].nil?
        type
      end
    end

    module DetachPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetachPolicyInput, context: context)
        type = Types::DetachPolicyInput.new
        type.policy_name = params[:policy_name]
        type.target = params[:target]
        type
      end
    end

    module DetachPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetachPolicyOutput, context: context)
        type = Types::DetachPolicyOutput.new
        type
      end
    end

    module DetachPrincipalPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetachPrincipalPolicyInput, context: context)
        type = Types::DetachPrincipalPolicyInput.new
        type.policy_name = params[:policy_name]
        type.principal = params[:principal]
        type
      end
    end

    module DetachPrincipalPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetachPrincipalPolicyOutput, context: context)
        type = Types::DetachPrincipalPolicyOutput.new
        type
      end
    end

    module DetachSecurityProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetachSecurityProfileInput, context: context)
        type = Types::DetachSecurityProfileInput.new
        type.security_profile_name = params[:security_profile_name]
        type.security_profile_target_arn = params[:security_profile_target_arn]
        type
      end
    end

    module DetachSecurityProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetachSecurityProfileOutput, context: context)
        type = Types::DetachSecurityProfileOutput.new
        type
      end
    end

    module DetachThingPrincipalInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetachThingPrincipalInput, context: context)
        type = Types::DetachThingPrincipalInput.new
        type.thing_name = params[:thing_name]
        type.principal = params[:principal]
        type
      end
    end

    module DetachThingPrincipalOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetachThingPrincipalOutput, context: context)
        type = Types::DetachThingPrincipalOutput.new
        type
      end
    end

    module DetailsMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module DetectMitigationActionExecution
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetectMitigationActionExecution, context: context)
        type = Types::DetectMitigationActionExecution.new
        type.task_id = params[:task_id]
        type.violation_id = params[:violation_id]
        type.action_name = params[:action_name]
        type.thing_name = params[:thing_name]
        type.execution_start_date = params[:execution_start_date]
        type.execution_end_date = params[:execution_end_date]
        type.status = params[:status]
        type.error_code = params[:error_code]
        type.message = params[:message]
        type
      end
    end

    module DetectMitigationActionExecutionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DetectMitigationActionExecution.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DetectMitigationActionsTaskStatistics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetectMitigationActionsTaskStatistics, context: context)
        type = Types::DetectMitigationActionsTaskStatistics.new
        type.actions_executed = params[:actions_executed]
        type.actions_skipped = params[:actions_skipped]
        type.actions_failed = params[:actions_failed]
        type
      end
    end

    module DetectMitigationActionsTaskSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetectMitigationActionsTaskSummary, context: context)
        type = Types::DetectMitigationActionsTaskSummary.new
        type.task_id = params[:task_id]
        type.task_status = params[:task_status]
        type.task_start_time = params[:task_start_time]
        type.task_end_time = params[:task_end_time]
        type.target = DetectMitigationActionsTaskTarget.build(params[:target], context: "#{context}[:target]") unless params[:target].nil?
        type.violation_event_occurrence_range = ViolationEventOccurrenceRange.build(params[:violation_event_occurrence_range], context: "#{context}[:violation_event_occurrence_range]") unless params[:violation_event_occurrence_range].nil?
        type.only_active_violations_included = params[:only_active_violations_included]
        type.suppressed_alerts_included = params[:suppressed_alerts_included]
        type.actions_definition = MitigationActionList.build(params[:actions_definition], context: "#{context}[:actions_definition]") unless params[:actions_definition].nil?
        type.task_statistics = DetectMitigationActionsTaskStatistics.build(params[:task_statistics], context: "#{context}[:task_statistics]") unless params[:task_statistics].nil?
        type
      end
    end

    module DetectMitigationActionsTaskSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DetectMitigationActionsTaskSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DetectMitigationActionsTaskTarget
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetectMitigationActionsTaskTarget, context: context)
        type = Types::DetectMitigationActionsTaskTarget.new
        type.violation_ids = TargetViolationIdsForDetectMitigationActions.build(params[:violation_ids], context: "#{context}[:violation_ids]") unless params[:violation_ids].nil?
        type.security_profile_name = params[:security_profile_name]
        type.behavior_name = params[:behavior_name]
        type
      end
    end

    module DetectMitigationActionsToExecuteList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DimensionNames
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DimensionStringValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DisableTopicRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableTopicRuleInput, context: context)
        type = Types::DisableTopicRuleInput.new
        type.rule_name = params[:rule_name]
        type
      end
    end

    module DisableTopicRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableTopicRuleOutput, context: context)
        type = Types::DisableTopicRuleOutput.new
        type
      end
    end

    module DocumentParameter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DocumentParameter, context: context)
        type = Types::DocumentParameter.new
        type.key = params[:key]
        type.description = params[:description]
        type.regex = params[:regex]
        type.example = params[:example]
        type.optional = params[:optional]
        type
      end
    end

    module DocumentParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DocumentParameter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DomainConfigurationSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DomainConfigurationSummary, context: context)
        type = Types::DomainConfigurationSummary.new
        type.domain_configuration_name = params[:domain_configuration_name]
        type.domain_configuration_arn = params[:domain_configuration_arn]
        type.service_type = params[:service_type]
        type
      end
    end

    module DomainConfigurations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DomainConfigurationSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DynamoDBAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DynamoDBAction, context: context)
        type = Types::DynamoDBAction.new
        type.table_name = params[:table_name]
        type.role_arn = params[:role_arn]
        type.operation = params[:operation]
        type.hash_key_field = params[:hash_key_field]
        type.hash_key_value = params[:hash_key_value]
        type.hash_key_type = params[:hash_key_type]
        type.range_key_field = params[:range_key_field]
        type.range_key_value = params[:range_key_value]
        type.range_key_type = params[:range_key_type]
        type.payload_field = params[:payload_field]
        type
      end
    end

    module DynamoDBv2Action
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DynamoDBv2Action, context: context)
        type = Types::DynamoDBv2Action.new
        type.role_arn = params[:role_arn]
        type.put_item = PutItemInput.build(params[:put_item], context: "#{context}[:put_item]") unless params[:put_item].nil?
        type
      end
    end

    module EffectivePolicies
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EffectivePolicy.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EffectivePolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EffectivePolicy, context: context)
        type = Types::EffectivePolicy.new
        type.policy_name = params[:policy_name]
        type.policy_arn = params[:policy_arn]
        type.policy_document = params[:policy_document]
        type
      end
    end

    module ElasticsearchAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ElasticsearchAction, context: context)
        type = Types::ElasticsearchAction.new
        type.role_arn = params[:role_arn]
        type.endpoint = params[:endpoint]
        type.index = params[:index]
        type.type = params[:type]
        type.id = params[:id]
        type
      end
    end

    module EnableIoTLoggingParams
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableIoTLoggingParams, context: context)
        type = Types::EnableIoTLoggingParams.new
        type.role_arn_for_logging = params[:role_arn_for_logging]
        type.log_level = params[:log_level]
        type
      end
    end

    module EnableTopicRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableTopicRuleInput, context: context)
        type = Types::EnableTopicRuleInput.new
        type.rule_name = params[:rule_name]
        type
      end
    end

    module EnableTopicRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableTopicRuleOutput, context: context)
        type = Types::EnableTopicRuleOutput.new
        type
      end
    end

    module Environments
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ErrorInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ErrorInfo, context: context)
        type = Types::ErrorInfo.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module EventConfigurations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = Configuration.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module ExplicitDeny
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExplicitDeny, context: context)
        type = Types::ExplicitDeny.new
        type.policies = Policies.build(params[:policies], context: "#{context}[:policies]") unless params[:policies].nil?
        type
      end
    end

    module ExponentialRolloutRate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExponentialRolloutRate, context: context)
        type = Types::ExponentialRolloutRate.new
        type.base_rate_per_minute = params[:base_rate_per_minute]
        type.increment_factor = params[:increment_factor]
        type.rate_increase_criteria = RateIncreaseCriteria.build(params[:rate_increase_criteria], context: "#{context}[:rate_increase_criteria]") unless params[:rate_increase_criteria].nil?
        type
      end
    end

    module Field
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Field, context: context)
        type = Types::Field.new
        type.name = params[:name]
        type.type = params[:type]
        type
      end
    end

    module Fields
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Field.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FileLocation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FileLocation, context: context)
        type = Types::FileLocation.new
        type.stream = Stream.build(params[:stream], context: "#{context}[:stream]") unless params[:stream].nil?
        type.s3_location = S3Location.build(params[:s3_location], context: "#{context}[:s3_location]") unless params[:s3_location].nil?
        type
      end
    end

    module FindingIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module FirehoseAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FirehoseAction, context: context)
        type = Types::FirehoseAction.new
        type.role_arn = params[:role_arn]
        type.delivery_stream_name = params[:delivery_stream_name]
        type.separator = params[:separator]
        type.batch_mode = params[:batch_mode]
        type
      end
    end

    module FleetMetricNameAndArn
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FleetMetricNameAndArn, context: context)
        type = Types::FleetMetricNameAndArn.new
        type.metric_name = params[:metric_name]
        type.metric_arn = params[:metric_arn]
        type
      end
    end

    module FleetMetricNameAndArnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FleetMetricNameAndArn.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GetBehaviorModelTrainingSummariesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBehaviorModelTrainingSummariesInput, context: context)
        type = Types::GetBehaviorModelTrainingSummariesInput.new
        type.security_profile_name = params[:security_profile_name]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetBehaviorModelTrainingSummariesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBehaviorModelTrainingSummariesOutput, context: context)
        type = Types::GetBehaviorModelTrainingSummariesOutput.new
        type.summaries = BehaviorModelTrainingSummaries.build(params[:summaries], context: "#{context}[:summaries]") unless params[:summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetBucketsAggregationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBucketsAggregationInput, context: context)
        type = Types::GetBucketsAggregationInput.new
        type.index_name = params[:index_name]
        type.query_string = params[:query_string]
        type.aggregation_field = params[:aggregation_field]
        type.query_version = params[:query_version]
        type.buckets_aggregation_type = BucketsAggregationType.build(params[:buckets_aggregation_type], context: "#{context}[:buckets_aggregation_type]") unless params[:buckets_aggregation_type].nil?
        type
      end
    end

    module GetBucketsAggregationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBucketsAggregationOutput, context: context)
        type = Types::GetBucketsAggregationOutput.new
        type.total_count = params[:total_count]
        type.buckets = Buckets.build(params[:buckets], context: "#{context}[:buckets]") unless params[:buckets].nil?
        type
      end
    end

    module GetCardinalityInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCardinalityInput, context: context)
        type = Types::GetCardinalityInput.new
        type.index_name = params[:index_name]
        type.query_string = params[:query_string]
        type.aggregation_field = params[:aggregation_field]
        type.query_version = params[:query_version]
        type
      end
    end

    module GetCardinalityOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCardinalityOutput, context: context)
        type = Types::GetCardinalityOutput.new
        type.cardinality = params[:cardinality]
        type
      end
    end

    module GetEffectivePoliciesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEffectivePoliciesInput, context: context)
        type = Types::GetEffectivePoliciesInput.new
        type.principal = params[:principal]
        type.cognito_identity_pool_id = params[:cognito_identity_pool_id]
        type.thing_name = params[:thing_name]
        type
      end
    end

    module GetEffectivePoliciesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEffectivePoliciesOutput, context: context)
        type = Types::GetEffectivePoliciesOutput.new
        type.effective_policies = EffectivePolicies.build(params[:effective_policies], context: "#{context}[:effective_policies]") unless params[:effective_policies].nil?
        type
      end
    end

    module GetIndexingConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetIndexingConfigurationInput, context: context)
        type = Types::GetIndexingConfigurationInput.new
        type
      end
    end

    module GetIndexingConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetIndexingConfigurationOutput, context: context)
        type = Types::GetIndexingConfigurationOutput.new
        type.thing_indexing_configuration = ThingIndexingConfiguration.build(params[:thing_indexing_configuration], context: "#{context}[:thing_indexing_configuration]") unless params[:thing_indexing_configuration].nil?
        type.thing_group_indexing_configuration = ThingGroupIndexingConfiguration.build(params[:thing_group_indexing_configuration], context: "#{context}[:thing_group_indexing_configuration]") unless params[:thing_group_indexing_configuration].nil?
        type
      end
    end

    module GetJobDocumentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetJobDocumentInput, context: context)
        type = Types::GetJobDocumentInput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module GetJobDocumentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetJobDocumentOutput, context: context)
        type = Types::GetJobDocumentOutput.new
        type.document = params[:document]
        type
      end
    end

    module GetLoggingOptionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLoggingOptionsInput, context: context)
        type = Types::GetLoggingOptionsInput.new
        type
      end
    end

    module GetLoggingOptionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLoggingOptionsOutput, context: context)
        type = Types::GetLoggingOptionsOutput.new
        type.role_arn = params[:role_arn]
        type.log_level = params[:log_level]
        type
      end
    end

    module GetOTAUpdateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetOTAUpdateInput, context: context)
        type = Types::GetOTAUpdateInput.new
        type.ota_update_id = params[:ota_update_id]
        type
      end
    end

    module GetOTAUpdateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetOTAUpdateOutput, context: context)
        type = Types::GetOTAUpdateOutput.new
        type.ota_update_info = OTAUpdateInfo.build(params[:ota_update_info], context: "#{context}[:ota_update_info]") unless params[:ota_update_info].nil?
        type
      end
    end

    module GetPercentilesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPercentilesInput, context: context)
        type = Types::GetPercentilesInput.new
        type.index_name = params[:index_name]
        type.query_string = params[:query_string]
        type.aggregation_field = params[:aggregation_field]
        type.query_version = params[:query_version]
        type.percents = PercentList.build(params[:percents], context: "#{context}[:percents]") unless params[:percents].nil?
        type
      end
    end

    module GetPercentilesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPercentilesOutput, context: context)
        type = Types::GetPercentilesOutput.new
        type.percentiles = Percentiles.build(params[:percentiles], context: "#{context}[:percentiles]") unless params[:percentiles].nil?
        type
      end
    end

    module GetPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPolicyInput, context: context)
        type = Types::GetPolicyInput.new
        type.policy_name = params[:policy_name]
        type
      end
    end

    module GetPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPolicyOutput, context: context)
        type = Types::GetPolicyOutput.new
        type.policy_name = params[:policy_name]
        type.policy_arn = params[:policy_arn]
        type.policy_document = params[:policy_document]
        type.default_version_id = params[:default_version_id]
        type.creation_date = params[:creation_date]
        type.last_modified_date = params[:last_modified_date]
        type.generation_id = params[:generation_id]
        type
      end
    end

    module GetPolicyVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPolicyVersionInput, context: context)
        type = Types::GetPolicyVersionInput.new
        type.policy_name = params[:policy_name]
        type.policy_version_id = params[:policy_version_id]
        type
      end
    end

    module GetPolicyVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPolicyVersionOutput, context: context)
        type = Types::GetPolicyVersionOutput.new
        type.policy_arn = params[:policy_arn]
        type.policy_name = params[:policy_name]
        type.policy_document = params[:policy_document]
        type.policy_version_id = params[:policy_version_id]
        type.is_default_version = params[:is_default_version]
        type.creation_date = params[:creation_date]
        type.last_modified_date = params[:last_modified_date]
        type.generation_id = params[:generation_id]
        type
      end
    end

    module GetRegistrationCodeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRegistrationCodeInput, context: context)
        type = Types::GetRegistrationCodeInput.new
        type
      end
    end

    module GetRegistrationCodeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRegistrationCodeOutput, context: context)
        type = Types::GetRegistrationCodeOutput.new
        type.registration_code = params[:registration_code]
        type
      end
    end

    module GetStatisticsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetStatisticsInput, context: context)
        type = Types::GetStatisticsInput.new
        type.index_name = params[:index_name]
        type.query_string = params[:query_string]
        type.aggregation_field = params[:aggregation_field]
        type.query_version = params[:query_version]
        type
      end
    end

    module GetStatisticsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetStatisticsOutput, context: context)
        type = Types::GetStatisticsOutput.new
        type.statistics = Statistics.build(params[:statistics], context: "#{context}[:statistics]") unless params[:statistics].nil?
        type
      end
    end

    module GetTopicRuleDestinationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTopicRuleDestinationInput, context: context)
        type = Types::GetTopicRuleDestinationInput.new
        type.arn = params[:arn]
        type
      end
    end

    module GetTopicRuleDestinationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTopicRuleDestinationOutput, context: context)
        type = Types::GetTopicRuleDestinationOutput.new
        type.topic_rule_destination = TopicRuleDestination.build(params[:topic_rule_destination], context: "#{context}[:topic_rule_destination]") unless params[:topic_rule_destination].nil?
        type
      end
    end

    module GetTopicRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTopicRuleInput, context: context)
        type = Types::GetTopicRuleInput.new
        type.rule_name = params[:rule_name]
        type
      end
    end

    module GetTopicRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTopicRuleOutput, context: context)
        type = Types::GetTopicRuleOutput.new
        type.rule_arn = params[:rule_arn]
        type.rule = TopicRule.build(params[:rule], context: "#{context}[:rule]") unless params[:rule].nil?
        type
      end
    end

    module GetV2LoggingOptionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetV2LoggingOptionsInput, context: context)
        type = Types::GetV2LoggingOptionsInput.new
        type
      end
    end

    module GetV2LoggingOptionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetV2LoggingOptionsOutput, context: context)
        type = Types::GetV2LoggingOptionsOutput.new
        type.role_arn = params[:role_arn]
        type.default_log_level = params[:default_log_level]
        type.disable_all_logs = params[:disable_all_logs]
        type
      end
    end

    module GroupNameAndArn
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GroupNameAndArn, context: context)
        type = Types::GroupNameAndArn.new
        type.group_name = params[:group_name]
        type.group_arn = params[:group_arn]
        type
      end
    end

    module HeaderList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << HttpActionHeader.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module HttpAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HttpAction, context: context)
        type = Types::HttpAction.new
        type.url = params[:url]
        type.confirmation_url = params[:confirmation_url]
        type.headers = HeaderList.build(params[:headers], context: "#{context}[:headers]") unless params[:headers].nil?
        type.auth = HttpAuthorization.build(params[:auth], context: "#{context}[:auth]") unless params[:auth].nil?
        type
      end
    end

    module HttpActionHeader
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HttpActionHeader, context: context)
        type = Types::HttpActionHeader.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module HttpAuthorization
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HttpAuthorization, context: context)
        type = Types::HttpAuthorization.new
        type.sigv4 = SigV4Authorization.build(params[:sigv4], context: "#{context}[:sigv4]") unless params[:sigv4].nil?
        type
      end
    end

    module HttpContext
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HttpContext, context: context)
        type = Types::HttpContext.new
        type.headers = HttpHeaders.build(params[:headers], context: "#{context}[:headers]") unless params[:headers].nil?
        type.query_string = params[:query_string]
        type
      end
    end

    module HttpHeaders
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module HttpUrlDestinationConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HttpUrlDestinationConfiguration, context: context)
        type = Types::HttpUrlDestinationConfiguration.new
        type.confirmation_url = params[:confirmation_url]
        type
      end
    end

    module HttpUrlDestinationProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HttpUrlDestinationProperties, context: context)
        type = Types::HttpUrlDestinationProperties.new
        type.confirmation_url = params[:confirmation_url]
        type
      end
    end

    module HttpUrlDestinationSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HttpUrlDestinationSummary, context: context)
        type = Types::HttpUrlDestinationSummary.new
        type.confirmation_url = params[:confirmation_url]
        type
      end
    end

    module ImplicitDeny
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImplicitDeny, context: context)
        type = Types::ImplicitDeny.new
        type.policies = Policies.build(params[:policies], context: "#{context}[:policies]") unless params[:policies].nil?
        type
      end
    end

    module IndexNamesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module IndexNotReadyException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IndexNotReadyException, context: context)
        type = Types::IndexNotReadyException.new
        type.message = params[:message]
        type
      end
    end

    module InternalException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalException, context: context)
        type = Types::InternalException.new
        type.message = params[:message]
        type
      end
    end

    module InternalFailureException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalFailureException, context: context)
        type = Types::InternalFailureException.new
        type.message = params[:message]
        type
      end
    end

    module InternalServerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerException, context: context)
        type = Types::InternalServerException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidAggregationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidAggregationException, context: context)
        type = Types::InvalidAggregationException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidQueryException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidQueryException, context: context)
        type = Types::InvalidQueryException.new
        type.message = params[:message]
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

    module InvalidResponseException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidResponseException, context: context)
        type = Types::InvalidResponseException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidStateTransitionException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidStateTransitionException, context: context)
        type = Types::InvalidStateTransitionException.new
        type.message = params[:message]
        type
      end
    end

    module IotAnalyticsAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IotAnalyticsAction, context: context)
        type = Types::IotAnalyticsAction.new
        type.channel_arn = params[:channel_arn]
        type.channel_name = params[:channel_name]
        type.batch_mode = params[:batch_mode]
        type.role_arn = params[:role_arn]
        type
      end
    end

    module IotEventsAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IotEventsAction, context: context)
        type = Types::IotEventsAction.new
        type.input_name = params[:input_name]
        type.message_id = params[:message_id]
        type.batch_mode = params[:batch_mode]
        type.role_arn = params[:role_arn]
        type
      end
    end

    module IotSiteWiseAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IotSiteWiseAction, context: context)
        type = Types::IotSiteWiseAction.new
        type.put_asset_property_value_entries = PutAssetPropertyValueEntryList.build(params[:put_asset_property_value_entries], context: "#{context}[:put_asset_property_value_entries]") unless params[:put_asset_property_value_entries].nil?
        type.role_arn = params[:role_arn]
        type
      end
    end

    module Job
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Job, context: context)
        type = Types::Job.new
        type.job_arn = params[:job_arn]
        type.job_id = params[:job_id]
        type.target_selection = params[:target_selection]
        type.status = params[:status]
        type.force_canceled = params[:force_canceled]
        type.reason_code = params[:reason_code]
        type.comment = params[:comment]
        type.targets = JobTargets.build(params[:targets], context: "#{context}[:targets]") unless params[:targets].nil?
        type.description = params[:description]
        type.presigned_url_config = PresignedUrlConfig.build(params[:presigned_url_config], context: "#{context}[:presigned_url_config]") unless params[:presigned_url_config].nil?
        type.job_executions_rollout_config = JobExecutionsRolloutConfig.build(params[:job_executions_rollout_config], context: "#{context}[:job_executions_rollout_config]") unless params[:job_executions_rollout_config].nil?
        type.abort_config = AbortConfig.build(params[:abort_config], context: "#{context}[:abort_config]") unless params[:abort_config].nil?
        type.created_at = params[:created_at]
        type.last_updated_at = params[:last_updated_at]
        type.completed_at = params[:completed_at]
        type.job_process_details = JobProcessDetails.build(params[:job_process_details], context: "#{context}[:job_process_details]") unless params[:job_process_details].nil?
        type.timeout_config = TimeoutConfig.build(params[:timeout_config], context: "#{context}[:timeout_config]") unless params[:timeout_config].nil?
        type.namespace_id = params[:namespace_id]
        type.job_template_arn = params[:job_template_arn]
        type.job_executions_retry_config = JobExecutionsRetryConfig.build(params[:job_executions_retry_config], context: "#{context}[:job_executions_retry_config]") unless params[:job_executions_retry_config].nil?
        type.document_parameters = ParameterMap.build(params[:document_parameters], context: "#{context}[:document_parameters]") unless params[:document_parameters].nil?
        type.is_concurrent = params[:is_concurrent]
        type
      end
    end

    module JobExecution
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobExecution, context: context)
        type = Types::JobExecution.new
        type.job_id = params[:job_id]
        type.status = params[:status]
        type.force_canceled = params[:force_canceled]
        type.status_details = JobExecutionStatusDetails.build(params[:status_details], context: "#{context}[:status_details]") unless params[:status_details].nil?
        type.thing_arn = params[:thing_arn]
        type.queued_at = params[:queued_at]
        type.started_at = params[:started_at]
        type.last_updated_at = params[:last_updated_at]
        type.execution_number = params[:execution_number]
        type.version_number = params[:version_number]
        type.approximate_seconds_before_timed_out = params[:approximate_seconds_before_timed_out]
        type
      end
    end

    module JobExecutionStatusDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobExecutionStatusDetails, context: context)
        type = Types::JobExecutionStatusDetails.new
        type.details_map = DetailsMap.build(params[:details_map], context: "#{context}[:details_map]") unless params[:details_map].nil?
        type
      end
    end

    module JobExecutionSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobExecutionSummary, context: context)
        type = Types::JobExecutionSummary.new
        type.status = params[:status]
        type.queued_at = params[:queued_at]
        type.started_at = params[:started_at]
        type.last_updated_at = params[:last_updated_at]
        type.execution_number = params[:execution_number]
        type.retry_attempt = params[:retry_attempt]
        type
      end
    end

    module JobExecutionSummaryForJob
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobExecutionSummaryForJob, context: context)
        type = Types::JobExecutionSummaryForJob.new
        type.thing_arn = params[:thing_arn]
        type.job_execution_summary = JobExecutionSummary.build(params[:job_execution_summary], context: "#{context}[:job_execution_summary]") unless params[:job_execution_summary].nil?
        type
      end
    end

    module JobExecutionSummaryForJobList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << JobExecutionSummaryForJob.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module JobExecutionSummaryForThing
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobExecutionSummaryForThing, context: context)
        type = Types::JobExecutionSummaryForThing.new
        type.job_id = params[:job_id]
        type.job_execution_summary = JobExecutionSummary.build(params[:job_execution_summary], context: "#{context}[:job_execution_summary]") unless params[:job_execution_summary].nil?
        type
      end
    end

    module JobExecutionSummaryForThingList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << JobExecutionSummaryForThing.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module JobExecutionsRetryConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobExecutionsRetryConfig, context: context)
        type = Types::JobExecutionsRetryConfig.new
        type.criteria_list = RetryCriteriaList.build(params[:criteria_list], context: "#{context}[:criteria_list]") unless params[:criteria_list].nil?
        type
      end
    end

    module JobExecutionsRolloutConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobExecutionsRolloutConfig, context: context)
        type = Types::JobExecutionsRolloutConfig.new
        type.maximum_per_minute = params[:maximum_per_minute]
        type.exponential_rate = ExponentialRolloutRate.build(params[:exponential_rate], context: "#{context}[:exponential_rate]") unless params[:exponential_rate].nil?
        type
      end
    end

    module JobProcessDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobProcessDetails, context: context)
        type = Types::JobProcessDetails.new
        type.processing_targets = ProcessingTargetNameList.build(params[:processing_targets], context: "#{context}[:processing_targets]") unless params[:processing_targets].nil?
        type.number_of_canceled_things = params[:number_of_canceled_things]
        type.number_of_succeeded_things = params[:number_of_succeeded_things]
        type.number_of_failed_things = params[:number_of_failed_things]
        type.number_of_rejected_things = params[:number_of_rejected_things]
        type.number_of_queued_things = params[:number_of_queued_things]
        type.number_of_in_progress_things = params[:number_of_in_progress_things]
        type.number_of_removed_things = params[:number_of_removed_things]
        type.number_of_timed_out_things = params[:number_of_timed_out_things]
        type
      end
    end

    module JobSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobSummary, context: context)
        type = Types::JobSummary.new
        type.job_arn = params[:job_arn]
        type.job_id = params[:job_id]
        type.thing_group_id = params[:thing_group_id]
        type.target_selection = params[:target_selection]
        type.status = params[:status]
        type.created_at = params[:created_at]
        type.last_updated_at = params[:last_updated_at]
        type.completed_at = params[:completed_at]
        type.is_concurrent = params[:is_concurrent]
        type
      end
    end

    module JobSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << JobSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module JobTargets
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module JobTemplateSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobTemplateSummary, context: context)
        type = Types::JobTemplateSummary.new
        type.job_template_arn = params[:job_template_arn]
        type.job_template_id = params[:job_template_id]
        type.description = params[:description]
        type.created_at = params[:created_at]
        type
      end
    end

    module JobTemplateSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << JobTemplateSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module KafkaAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KafkaAction, context: context)
        type = Types::KafkaAction.new
        type.destination_arn = params[:destination_arn]
        type.topic = params[:topic]
        type.key = params[:key]
        type.partition = params[:partition]
        type.client_properties = ClientProperties.build(params[:client_properties], context: "#{context}[:client_properties]") unless params[:client_properties].nil?
        type
      end
    end

    module KeyPair
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KeyPair, context: context)
        type = Types::KeyPair.new
        type.public_key = params[:public_key]
        type.private_key = params[:private_key]
        type
      end
    end

    module KinesisAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KinesisAction, context: context)
        type = Types::KinesisAction.new
        type.role_arn = params[:role_arn]
        type.stream_name = params[:stream_name]
        type.partition_key = params[:partition_key]
        type
      end
    end

    module LambdaAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LambdaAction, context: context)
        type = Types::LambdaAction.new
        type.function_arn = params[:function_arn]
        type
      end
    end

    module LimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LimitExceededException, context: context)
        type = Types::LimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module ListActiveViolationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListActiveViolationsInput, context: context)
        type = Types::ListActiveViolationsInput.new
        type.thing_name = params[:thing_name]
        type.security_profile_name = params[:security_profile_name]
        type.behavior_criteria_type = params[:behavior_criteria_type]
        type.list_suppressed_alerts = params[:list_suppressed_alerts]
        type.verification_state = params[:verification_state]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListActiveViolationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListActiveViolationsOutput, context: context)
        type = Types::ListActiveViolationsOutput.new
        type.active_violations = ActiveViolations.build(params[:active_violations], context: "#{context}[:active_violations]") unless params[:active_violations].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAttachedPoliciesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAttachedPoliciesInput, context: context)
        type = Types::ListAttachedPoliciesInput.new
        type.target = params[:target]
        type.recursive = params[:recursive]
        type.marker = params[:marker]
        type.page_size = params[:page_size]
        type
      end
    end

    module ListAttachedPoliciesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAttachedPoliciesOutput, context: context)
        type = Types::ListAttachedPoliciesOutput.new
        type.policies = Policies.build(params[:policies], context: "#{context}[:policies]") unless params[:policies].nil?
        type.next_marker = params[:next_marker]
        type
      end
    end

    module ListAuditFindingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAuditFindingsInput, context: context)
        type = Types::ListAuditFindingsInput.new
        type.task_id = params[:task_id]
        type.check_name = params[:check_name]
        type.resource_identifier = ResourceIdentifier.build(params[:resource_identifier], context: "#{context}[:resource_identifier]") unless params[:resource_identifier].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.list_suppressed_findings = params[:list_suppressed_findings]
        type
      end
    end

    module ListAuditFindingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAuditFindingsOutput, context: context)
        type = Types::ListAuditFindingsOutput.new
        type.findings = AuditFindings.build(params[:findings], context: "#{context}[:findings]") unless params[:findings].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAuditMitigationActionsExecutionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAuditMitigationActionsExecutionsInput, context: context)
        type = Types::ListAuditMitigationActionsExecutionsInput.new
        type.task_id = params[:task_id]
        type.action_status = params[:action_status]
        type.finding_id = params[:finding_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAuditMitigationActionsExecutionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAuditMitigationActionsExecutionsOutput, context: context)
        type = Types::ListAuditMitigationActionsExecutionsOutput.new
        type.actions_executions = AuditMitigationActionExecutionMetadataList.build(params[:actions_executions], context: "#{context}[:actions_executions]") unless params[:actions_executions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAuditMitigationActionsTasksInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAuditMitigationActionsTasksInput, context: context)
        type = Types::ListAuditMitigationActionsTasksInput.new
        type.audit_task_id = params[:audit_task_id]
        type.finding_id = params[:finding_id]
        type.task_status = params[:task_status]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type
      end
    end

    module ListAuditMitigationActionsTasksOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAuditMitigationActionsTasksOutput, context: context)
        type = Types::ListAuditMitigationActionsTasksOutput.new
        type.tasks = AuditMitigationActionsTaskMetadataList.build(params[:tasks], context: "#{context}[:tasks]") unless params[:tasks].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAuditSuppressionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAuditSuppressionsInput, context: context)
        type = Types::ListAuditSuppressionsInput.new
        type.check_name = params[:check_name]
        type.resource_identifier = ResourceIdentifier.build(params[:resource_identifier], context: "#{context}[:resource_identifier]") unless params[:resource_identifier].nil?
        type.ascending_order = params[:ascending_order]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListAuditSuppressionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAuditSuppressionsOutput, context: context)
        type = Types::ListAuditSuppressionsOutput.new
        type.suppressions = AuditSuppressionList.build(params[:suppressions], context: "#{context}[:suppressions]") unless params[:suppressions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAuditTasksInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAuditTasksInput, context: context)
        type = Types::ListAuditTasksInput.new
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.task_type = params[:task_type]
        type.task_status = params[:task_status]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListAuditTasksOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAuditTasksOutput, context: context)
        type = Types::ListAuditTasksOutput.new
        type.tasks = AuditTaskMetadataList.build(params[:tasks], context: "#{context}[:tasks]") unless params[:tasks].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAuthorizersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAuthorizersInput, context: context)
        type = Types::ListAuthorizersInput.new
        type.page_size = params[:page_size]
        type.marker = params[:marker]
        type.ascending_order = params[:ascending_order]
        type.status = params[:status]
        type
      end
    end

    module ListAuthorizersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAuthorizersOutput, context: context)
        type = Types::ListAuthorizersOutput.new
        type.authorizers = Authorizers.build(params[:authorizers], context: "#{context}[:authorizers]") unless params[:authorizers].nil?
        type.next_marker = params[:next_marker]
        type
      end
    end

    module ListBillingGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBillingGroupsInput, context: context)
        type = Types::ListBillingGroupsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.name_prefix_filter = params[:name_prefix_filter]
        type
      end
    end

    module ListBillingGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBillingGroupsOutput, context: context)
        type = Types::ListBillingGroupsOutput.new
        type.billing_groups = BillingGroupNameAndArnList.build(params[:billing_groups], context: "#{context}[:billing_groups]") unless params[:billing_groups].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListCACertificatesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCACertificatesInput, context: context)
        type = Types::ListCACertificatesInput.new
        type.page_size = params[:page_size]
        type.marker = params[:marker]
        type.ascending_order = params[:ascending_order]
        type
      end
    end

    module ListCACertificatesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCACertificatesOutput, context: context)
        type = Types::ListCACertificatesOutput.new
        type.certificates = CACertificates.build(params[:certificates], context: "#{context}[:certificates]") unless params[:certificates].nil?
        type.next_marker = params[:next_marker]
        type
      end
    end

    module ListCertificatesByCAInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCertificatesByCAInput, context: context)
        type = Types::ListCertificatesByCAInput.new
        type.ca_certificate_id = params[:ca_certificate_id]
        type.page_size = params[:page_size]
        type.marker = params[:marker]
        type.ascending_order = params[:ascending_order]
        type
      end
    end

    module ListCertificatesByCAOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCertificatesByCAOutput, context: context)
        type = Types::ListCertificatesByCAOutput.new
        type.certificates = Certificates.build(params[:certificates], context: "#{context}[:certificates]") unless params[:certificates].nil?
        type.next_marker = params[:next_marker]
        type
      end
    end

    module ListCertificatesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCertificatesInput, context: context)
        type = Types::ListCertificatesInput.new
        type.page_size = params[:page_size]
        type.marker = params[:marker]
        type.ascending_order = params[:ascending_order]
        type
      end
    end

    module ListCertificatesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCertificatesOutput, context: context)
        type = Types::ListCertificatesOutput.new
        type.certificates = Certificates.build(params[:certificates], context: "#{context}[:certificates]") unless params[:certificates].nil?
        type.next_marker = params[:next_marker]
        type
      end
    end

    module ListCustomMetricsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCustomMetricsInput, context: context)
        type = Types::ListCustomMetricsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListCustomMetricsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCustomMetricsOutput, context: context)
        type = Types::ListCustomMetricsOutput.new
        type.metric_names = MetricNames.build(params[:metric_names], context: "#{context}[:metric_names]") unless params[:metric_names].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDetectMitigationActionsExecutionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDetectMitigationActionsExecutionsInput, context: context)
        type = Types::ListDetectMitigationActionsExecutionsInput.new
        type.task_id = params[:task_id]
        type.violation_id = params[:violation_id]
        type.thing_name = params[:thing_name]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDetectMitigationActionsExecutionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDetectMitigationActionsExecutionsOutput, context: context)
        type = Types::ListDetectMitigationActionsExecutionsOutput.new
        type.actions_executions = DetectMitigationActionExecutionList.build(params[:actions_executions], context: "#{context}[:actions_executions]") unless params[:actions_executions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDetectMitigationActionsTasksInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDetectMitigationActionsTasksInput, context: context)
        type = Types::ListDetectMitigationActionsTasksInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type
      end
    end

    module ListDetectMitigationActionsTasksOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDetectMitigationActionsTasksOutput, context: context)
        type = Types::ListDetectMitigationActionsTasksOutput.new
        type.tasks = DetectMitigationActionsTaskSummaryList.build(params[:tasks], context: "#{context}[:tasks]") unless params[:tasks].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDimensionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDimensionsInput, context: context)
        type = Types::ListDimensionsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListDimensionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDimensionsOutput, context: context)
        type = Types::ListDimensionsOutput.new
        type.dimension_names = DimensionNames.build(params[:dimension_names], context: "#{context}[:dimension_names]") unless params[:dimension_names].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDomainConfigurationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDomainConfigurationsInput, context: context)
        type = Types::ListDomainConfigurationsInput.new
        type.marker = params[:marker]
        type.page_size = params[:page_size]
        type.service_type = params[:service_type]
        type
      end
    end

    module ListDomainConfigurationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDomainConfigurationsOutput, context: context)
        type = Types::ListDomainConfigurationsOutput.new
        type.domain_configurations = DomainConfigurations.build(params[:domain_configurations], context: "#{context}[:domain_configurations]") unless params[:domain_configurations].nil?
        type.next_marker = params[:next_marker]
        type
      end
    end

    module ListFleetMetricsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFleetMetricsInput, context: context)
        type = Types::ListFleetMetricsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListFleetMetricsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFleetMetricsOutput, context: context)
        type = Types::ListFleetMetricsOutput.new
        type.fleet_metrics = FleetMetricNameAndArnList.build(params[:fleet_metrics], context: "#{context}[:fleet_metrics]") unless params[:fleet_metrics].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListIndicesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListIndicesInput, context: context)
        type = Types::ListIndicesInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListIndicesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListIndicesOutput, context: context)
        type = Types::ListIndicesOutput.new
        type.index_names = IndexNamesList.build(params[:index_names], context: "#{context}[:index_names]") unless params[:index_names].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListJobExecutionsForJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListJobExecutionsForJobInput, context: context)
        type = Types::ListJobExecutionsForJobInput.new
        type.job_id = params[:job_id]
        type.status = params[:status]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListJobExecutionsForJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListJobExecutionsForJobOutput, context: context)
        type = Types::ListJobExecutionsForJobOutput.new
        type.execution_summaries = JobExecutionSummaryForJobList.build(params[:execution_summaries], context: "#{context}[:execution_summaries]") unless params[:execution_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListJobExecutionsForThingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListJobExecutionsForThingInput, context: context)
        type = Types::ListJobExecutionsForThingInput.new
        type.thing_name = params[:thing_name]
        type.status = params[:status]
        type.namespace_id = params[:namespace_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.job_id = params[:job_id]
        type
      end
    end

    module ListJobExecutionsForThingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListJobExecutionsForThingOutput, context: context)
        type = Types::ListJobExecutionsForThingOutput.new
        type.execution_summaries = JobExecutionSummaryForThingList.build(params[:execution_summaries], context: "#{context}[:execution_summaries]") unless params[:execution_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListJobTemplatesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListJobTemplatesInput, context: context)
        type = Types::ListJobTemplatesInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListJobTemplatesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListJobTemplatesOutput, context: context)
        type = Types::ListJobTemplatesOutput.new
        type.job_templates = JobTemplateSummaryList.build(params[:job_templates], context: "#{context}[:job_templates]") unless params[:job_templates].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListJobsInput, context: context)
        type = Types::ListJobsInput.new
        type.status = params[:status]
        type.target_selection = params[:target_selection]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.thing_group_name = params[:thing_group_name]
        type.thing_group_id = params[:thing_group_id]
        type.namespace_id = params[:namespace_id]
        type
      end
    end

    module ListJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListJobsOutput, context: context)
        type = Types::ListJobsOutput.new
        type.jobs = JobSummaryList.build(params[:jobs], context: "#{context}[:jobs]") unless params[:jobs].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListManagedJobTemplatesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListManagedJobTemplatesInput, context: context)
        type = Types::ListManagedJobTemplatesInput.new
        type.template_name = params[:template_name]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListManagedJobTemplatesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListManagedJobTemplatesOutput, context: context)
        type = Types::ListManagedJobTemplatesOutput.new
        type.managed_job_templates = ManagedJobTemplatesSummaryList.build(params[:managed_job_templates], context: "#{context}[:managed_job_templates]") unless params[:managed_job_templates].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListMetricValuesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMetricValuesInput, context: context)
        type = Types::ListMetricValuesInput.new
        type.thing_name = params[:thing_name]
        type.metric_name = params[:metric_name]
        type.dimension_name = params[:dimension_name]
        type.dimension_value_operator = params[:dimension_value_operator]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListMetricValuesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMetricValuesOutput, context: context)
        type = Types::ListMetricValuesOutput.new
        type.metric_datum_list = MetricDatumList.build(params[:metric_datum_list], context: "#{context}[:metric_datum_list]") unless params[:metric_datum_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListMitigationActionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMitigationActionsInput, context: context)
        type = Types::ListMitigationActionsInput.new
        type.action_type = params[:action_type]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListMitigationActionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMitigationActionsOutput, context: context)
        type = Types::ListMitigationActionsOutput.new
        type.action_identifiers = MitigationActionIdentifierList.build(params[:action_identifiers], context: "#{context}[:action_identifiers]") unless params[:action_identifiers].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListOTAUpdatesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListOTAUpdatesInput, context: context)
        type = Types::ListOTAUpdatesInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.ota_update_status = params[:ota_update_status]
        type
      end
    end

    module ListOTAUpdatesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListOTAUpdatesOutput, context: context)
        type = Types::ListOTAUpdatesOutput.new
        type.ota_updates = OTAUpdatesSummary.build(params[:ota_updates], context: "#{context}[:ota_updates]") unless params[:ota_updates].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListOutgoingCertificatesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListOutgoingCertificatesInput, context: context)
        type = Types::ListOutgoingCertificatesInput.new
        type.page_size = params[:page_size]
        type.marker = params[:marker]
        type.ascending_order = params[:ascending_order]
        type
      end
    end

    module ListOutgoingCertificatesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListOutgoingCertificatesOutput, context: context)
        type = Types::ListOutgoingCertificatesOutput.new
        type.outgoing_certificates = OutgoingCertificates.build(params[:outgoing_certificates], context: "#{context}[:outgoing_certificates]") unless params[:outgoing_certificates].nil?
        type.next_marker = params[:next_marker]
        type
      end
    end

    module ListPoliciesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPoliciesInput, context: context)
        type = Types::ListPoliciesInput.new
        type.marker = params[:marker]
        type.page_size = params[:page_size]
        type.ascending_order = params[:ascending_order]
        type
      end
    end

    module ListPoliciesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPoliciesOutput, context: context)
        type = Types::ListPoliciesOutput.new
        type.policies = Policies.build(params[:policies], context: "#{context}[:policies]") unless params[:policies].nil?
        type.next_marker = params[:next_marker]
        type
      end
    end

    module ListPolicyPrincipalsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPolicyPrincipalsInput, context: context)
        type = Types::ListPolicyPrincipalsInput.new
        type.policy_name = params[:policy_name]
        type.marker = params[:marker]
        type.page_size = params[:page_size]
        type.ascending_order = params[:ascending_order]
        type
      end
    end

    module ListPolicyPrincipalsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPolicyPrincipalsOutput, context: context)
        type = Types::ListPolicyPrincipalsOutput.new
        type.principals = Principals.build(params[:principals], context: "#{context}[:principals]") unless params[:principals].nil?
        type.next_marker = params[:next_marker]
        type
      end
    end

    module ListPolicyVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPolicyVersionsInput, context: context)
        type = Types::ListPolicyVersionsInput.new
        type.policy_name = params[:policy_name]
        type
      end
    end

    module ListPolicyVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPolicyVersionsOutput, context: context)
        type = Types::ListPolicyVersionsOutput.new
        type.policy_versions = PolicyVersions.build(params[:policy_versions], context: "#{context}[:policy_versions]") unless params[:policy_versions].nil?
        type
      end
    end

    module ListPrincipalPoliciesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPrincipalPoliciesInput, context: context)
        type = Types::ListPrincipalPoliciesInput.new
        type.principal = params[:principal]
        type.marker = params[:marker]
        type.page_size = params[:page_size]
        type.ascending_order = params[:ascending_order]
        type
      end
    end

    module ListPrincipalPoliciesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPrincipalPoliciesOutput, context: context)
        type = Types::ListPrincipalPoliciesOutput.new
        type.policies = Policies.build(params[:policies], context: "#{context}[:policies]") unless params[:policies].nil?
        type.next_marker = params[:next_marker]
        type
      end
    end

    module ListPrincipalThingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPrincipalThingsInput, context: context)
        type = Types::ListPrincipalThingsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.principal = params[:principal]
        type
      end
    end

    module ListPrincipalThingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPrincipalThingsOutput, context: context)
        type = Types::ListPrincipalThingsOutput.new
        type.things = ThingNameList.build(params[:things], context: "#{context}[:things]") unless params[:things].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListProvisioningTemplateVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListProvisioningTemplateVersionsInput, context: context)
        type = Types::ListProvisioningTemplateVersionsInput.new
        type.template_name = params[:template_name]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListProvisioningTemplateVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListProvisioningTemplateVersionsOutput, context: context)
        type = Types::ListProvisioningTemplateVersionsOutput.new
        type.versions = ProvisioningTemplateVersionListing.build(params[:versions], context: "#{context}[:versions]") unless params[:versions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListProvisioningTemplatesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListProvisioningTemplatesInput, context: context)
        type = Types::ListProvisioningTemplatesInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListProvisioningTemplatesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListProvisioningTemplatesOutput, context: context)
        type = Types::ListProvisioningTemplatesOutput.new
        type.templates = ProvisioningTemplateListing.build(params[:templates], context: "#{context}[:templates]") unless params[:templates].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListRoleAliasesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRoleAliasesInput, context: context)
        type = Types::ListRoleAliasesInput.new
        type.page_size = params[:page_size]
        type.marker = params[:marker]
        type.ascending_order = params[:ascending_order]
        type
      end
    end

    module ListRoleAliasesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRoleAliasesOutput, context: context)
        type = Types::ListRoleAliasesOutput.new
        type.role_aliases = RoleAliases.build(params[:role_aliases], context: "#{context}[:role_aliases]") unless params[:role_aliases].nil?
        type.next_marker = params[:next_marker]
        type
      end
    end

    module ListScheduledAuditsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListScheduledAuditsInput, context: context)
        type = Types::ListScheduledAuditsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListScheduledAuditsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListScheduledAuditsOutput, context: context)
        type = Types::ListScheduledAuditsOutput.new
        type.scheduled_audits = ScheduledAuditMetadataList.build(params[:scheduled_audits], context: "#{context}[:scheduled_audits]") unless params[:scheduled_audits].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListSecurityProfilesForTargetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSecurityProfilesForTargetInput, context: context)
        type = Types::ListSecurityProfilesForTargetInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.recursive = params[:recursive]
        type.security_profile_target_arn = params[:security_profile_target_arn]
        type
      end
    end

    module ListSecurityProfilesForTargetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSecurityProfilesForTargetOutput, context: context)
        type = Types::ListSecurityProfilesForTargetOutput.new
        type.security_profile_target_mappings = SecurityProfileTargetMappings.build(params[:security_profile_target_mappings], context: "#{context}[:security_profile_target_mappings]") unless params[:security_profile_target_mappings].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListSecurityProfilesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSecurityProfilesInput, context: context)
        type = Types::ListSecurityProfilesInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.dimension_name = params[:dimension_name]
        type.metric_name = params[:metric_name]
        type
      end
    end

    module ListSecurityProfilesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSecurityProfilesOutput, context: context)
        type = Types::ListSecurityProfilesOutput.new
        type.security_profile_identifiers = SecurityProfileIdentifiers.build(params[:security_profile_identifiers], context: "#{context}[:security_profile_identifiers]") unless params[:security_profile_identifiers].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListStreamsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListStreamsInput, context: context)
        type = Types::ListStreamsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.ascending_order = params[:ascending_order]
        type
      end
    end

    module ListStreamsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListStreamsOutput, context: context)
        type = Types::ListStreamsOutput.new
        type.streams = StreamsSummary.build(params[:streams], context: "#{context}[:streams]") unless params[:streams].nil?
        type.next_token = params[:next_token]
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

    module ListTargetsForPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTargetsForPolicyInput, context: context)
        type = Types::ListTargetsForPolicyInput.new
        type.policy_name = params[:policy_name]
        type.marker = params[:marker]
        type.page_size = params[:page_size]
        type
      end
    end

    module ListTargetsForPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTargetsForPolicyOutput, context: context)
        type = Types::ListTargetsForPolicyOutput.new
        type.targets = PolicyTargets.build(params[:targets], context: "#{context}[:targets]") unless params[:targets].nil?
        type.next_marker = params[:next_marker]
        type
      end
    end

    module ListTargetsForSecurityProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTargetsForSecurityProfileInput, context: context)
        type = Types::ListTargetsForSecurityProfileInput.new
        type.security_profile_name = params[:security_profile_name]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListTargetsForSecurityProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTargetsForSecurityProfileOutput, context: context)
        type = Types::ListTargetsForSecurityProfileOutput.new
        type.security_profile_targets = SecurityProfileTargets.build(params[:security_profile_targets], context: "#{context}[:security_profile_targets]") unless params[:security_profile_targets].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListThingGroupsForThingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListThingGroupsForThingInput, context: context)
        type = Types::ListThingGroupsForThingInput.new
        type.thing_name = params[:thing_name]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListThingGroupsForThingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListThingGroupsForThingOutput, context: context)
        type = Types::ListThingGroupsForThingOutput.new
        type.thing_groups = ThingGroupNameAndArnList.build(params[:thing_groups], context: "#{context}[:thing_groups]") unless params[:thing_groups].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListThingGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListThingGroupsInput, context: context)
        type = Types::ListThingGroupsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.parent_group = params[:parent_group]
        type.name_prefix_filter = params[:name_prefix_filter]
        type.recursive = params[:recursive]
        type
      end
    end

    module ListThingGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListThingGroupsOutput, context: context)
        type = Types::ListThingGroupsOutput.new
        type.thing_groups = ThingGroupNameAndArnList.build(params[:thing_groups], context: "#{context}[:thing_groups]") unless params[:thing_groups].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListThingPrincipalsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListThingPrincipalsInput, context: context)
        type = Types::ListThingPrincipalsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.thing_name = params[:thing_name]
        type
      end
    end

    module ListThingPrincipalsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListThingPrincipalsOutput, context: context)
        type = Types::ListThingPrincipalsOutput.new
        type.principals = Principals.build(params[:principals], context: "#{context}[:principals]") unless params[:principals].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListThingRegistrationTaskReportsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListThingRegistrationTaskReportsInput, context: context)
        type = Types::ListThingRegistrationTaskReportsInput.new
        type.task_id = params[:task_id]
        type.report_type = params[:report_type]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListThingRegistrationTaskReportsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListThingRegistrationTaskReportsOutput, context: context)
        type = Types::ListThingRegistrationTaskReportsOutput.new
        type.resource_links = S3FileUrlList.build(params[:resource_links], context: "#{context}[:resource_links]") unless params[:resource_links].nil?
        type.report_type = params[:report_type]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListThingRegistrationTasksInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListThingRegistrationTasksInput, context: context)
        type = Types::ListThingRegistrationTasksInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.status = params[:status]
        type
      end
    end

    module ListThingRegistrationTasksOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListThingRegistrationTasksOutput, context: context)
        type = Types::ListThingRegistrationTasksOutput.new
        type.task_ids = TaskIdList.build(params[:task_ids], context: "#{context}[:task_ids]") unless params[:task_ids].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListThingTypesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListThingTypesInput, context: context)
        type = Types::ListThingTypesInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.thing_type_name = params[:thing_type_name]
        type
      end
    end

    module ListThingTypesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListThingTypesOutput, context: context)
        type = Types::ListThingTypesOutput.new
        type.thing_types = ThingTypeList.build(params[:thing_types], context: "#{context}[:thing_types]") unless params[:thing_types].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListThingsInBillingGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListThingsInBillingGroupInput, context: context)
        type = Types::ListThingsInBillingGroupInput.new
        type.billing_group_name = params[:billing_group_name]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListThingsInBillingGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListThingsInBillingGroupOutput, context: context)
        type = Types::ListThingsInBillingGroupOutput.new
        type.things = ThingNameList.build(params[:things], context: "#{context}[:things]") unless params[:things].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListThingsInThingGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListThingsInThingGroupInput, context: context)
        type = Types::ListThingsInThingGroupInput.new
        type.thing_group_name = params[:thing_group_name]
        type.recursive = params[:recursive]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListThingsInThingGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListThingsInThingGroupOutput, context: context)
        type = Types::ListThingsInThingGroupOutput.new
        type.things = ThingNameList.build(params[:things], context: "#{context}[:things]") unless params[:things].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListThingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListThingsInput, context: context)
        type = Types::ListThingsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.attribute_name = params[:attribute_name]
        type.attribute_value = params[:attribute_value]
        type.thing_type_name = params[:thing_type_name]
        type.use_prefix_attribute_value = params[:use_prefix_attribute_value]
        type
      end
    end

    module ListThingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListThingsOutput, context: context)
        type = Types::ListThingsOutput.new
        type.things = ThingAttributeList.build(params[:things], context: "#{context}[:things]") unless params[:things].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTopicRuleDestinationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTopicRuleDestinationsInput, context: context)
        type = Types::ListTopicRuleDestinationsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTopicRuleDestinationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTopicRuleDestinationsOutput, context: context)
        type = Types::ListTopicRuleDestinationsOutput.new
        type.destination_summaries = TopicRuleDestinationSummaries.build(params[:destination_summaries], context: "#{context}[:destination_summaries]") unless params[:destination_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTopicRulesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTopicRulesInput, context: context)
        type = Types::ListTopicRulesInput.new
        type.topic = params[:topic]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.rule_disabled = params[:rule_disabled]
        type
      end
    end

    module ListTopicRulesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTopicRulesOutput, context: context)
        type = Types::ListTopicRulesOutput.new
        type.rules = TopicRuleList.build(params[:rules], context: "#{context}[:rules]") unless params[:rules].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListV2LoggingLevelsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListV2LoggingLevelsInput, context: context)
        type = Types::ListV2LoggingLevelsInput.new
        type.target_type = params[:target_type]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListV2LoggingLevelsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListV2LoggingLevelsOutput, context: context)
        type = Types::ListV2LoggingLevelsOutput.new
        type.log_target_configurations = LogTargetConfigurations.build(params[:log_target_configurations], context: "#{context}[:log_target_configurations]") unless params[:log_target_configurations].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListViolationEventsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListViolationEventsInput, context: context)
        type = Types::ListViolationEventsInput.new
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.thing_name = params[:thing_name]
        type.security_profile_name = params[:security_profile_name]
        type.behavior_criteria_type = params[:behavior_criteria_type]
        type.list_suppressed_alerts = params[:list_suppressed_alerts]
        type.verification_state = params[:verification_state]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListViolationEventsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListViolationEventsOutput, context: context)
        type = Types::ListViolationEventsOutput.new
        type.violation_events = ViolationEvents.build(params[:violation_events], context: "#{context}[:violation_events]") unless params[:violation_events].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module LogTarget
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LogTarget, context: context)
        type = Types::LogTarget.new
        type.target_type = params[:target_type]
        type.target_name = params[:target_name]
        type
      end
    end

    module LogTargetConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LogTargetConfiguration, context: context)
        type = Types::LogTargetConfiguration.new
        type.log_target = LogTarget.build(params[:log_target], context: "#{context}[:log_target]") unless params[:log_target].nil?
        type.log_level = params[:log_level]
        type
      end
    end

    module LogTargetConfigurations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LogTargetConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LoggingOptionsPayload
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LoggingOptionsPayload, context: context)
        type = Types::LoggingOptionsPayload.new
        type.role_arn = params[:role_arn]
        type.log_level = params[:log_level]
        type
      end
    end

    module MachineLearningDetectionConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MachineLearningDetectionConfig, context: context)
        type = Types::MachineLearningDetectionConfig.new
        type.confidence_level = params[:confidence_level]
        type
      end
    end

    module MalformedPolicyException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MalformedPolicyException, context: context)
        type = Types::MalformedPolicyException.new
        type.message = params[:message]
        type
      end
    end

    module ManagedJobTemplateSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ManagedJobTemplateSummary, context: context)
        type = Types::ManagedJobTemplateSummary.new
        type.template_arn = params[:template_arn]
        type.template_name = params[:template_name]
        type.description = params[:description]
        type.environments = Environments.build(params[:environments], context: "#{context}[:environments]") unless params[:environments].nil?
        type.template_version = params[:template_version]
        type
      end
    end

    module ManagedJobTemplatesSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ManagedJobTemplateSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MetricDatum
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MetricDatum, context: context)
        type = Types::MetricDatum.new
        type.timestamp = params[:timestamp]
        type.value = MetricValue.build(params[:value], context: "#{context}[:value]") unless params[:value].nil?
        type
      end
    end

    module MetricDatumList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MetricDatum.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MetricDimension
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MetricDimension, context: context)
        type = Types::MetricDimension.new
        type.dimension_name = params[:dimension_name]
        type.operator = params[:operator]
        type
      end
    end

    module MetricNames
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module MetricToRetain
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MetricToRetain, context: context)
        type = Types::MetricToRetain.new
        type.metric = params[:metric]
        type.metric_dimension = MetricDimension.build(params[:metric_dimension], context: "#{context}[:metric_dimension]") unless params[:metric_dimension].nil?
        type
      end
    end

    module MetricValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MetricValue, context: context)
        type = Types::MetricValue.new
        type.count = params[:count]
        type.cidrs = Cidrs.build(params[:cidrs], context: "#{context}[:cidrs]") unless params[:cidrs].nil?
        type.ports = Ports.build(params[:ports], context: "#{context}[:ports]") unless params[:ports].nil?
        type.number = params[:number]
        type.numbers = NumberList.build(params[:numbers], context: "#{context}[:numbers]") unless params[:numbers].nil?
        type.strings = StringList.build(params[:strings], context: "#{context}[:strings]") unless params[:strings].nil?
        type
      end
    end

    module MissingContextValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module MitigationAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MitigationAction, context: context)
        type = Types::MitigationAction.new
        type.name = params[:name]
        type.id = params[:id]
        type.role_arn = params[:role_arn]
        type.action_params = MitigationActionParams.build(params[:action_params], context: "#{context}[:action_params]") unless params[:action_params].nil?
        type
      end
    end

    module MitigationActionIdentifier
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MitigationActionIdentifier, context: context)
        type = Types::MitigationActionIdentifier.new
        type.action_name = params[:action_name]
        type.action_arn = params[:action_arn]
        type.creation_date = params[:creation_date]
        type
      end
    end

    module MitigationActionIdentifierList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MitigationActionIdentifier.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MitigationActionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MitigationAction.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MitigationActionNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module MitigationActionParams
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MitigationActionParams, context: context)
        type = Types::MitigationActionParams.new
        type.update_device_certificate_params = UpdateDeviceCertificateParams.build(params[:update_device_certificate_params], context: "#{context}[:update_device_certificate_params]") unless params[:update_device_certificate_params].nil?
        type.update_ca_certificate_params = UpdateCACertificateParams.build(params[:update_ca_certificate_params], context: "#{context}[:update_ca_certificate_params]") unless params[:update_ca_certificate_params].nil?
        type.add_things_to_thing_group_params = AddThingsToThingGroupParams.build(params[:add_things_to_thing_group_params], context: "#{context}[:add_things_to_thing_group_params]") unless params[:add_things_to_thing_group_params].nil?
        type.replace_default_policy_version_params = ReplaceDefaultPolicyVersionParams.build(params[:replace_default_policy_version_params], context: "#{context}[:replace_default_policy_version_params]") unless params[:replace_default_policy_version_params].nil?
        type.enable_io_t_logging_params = EnableIoTLoggingParams.build(params[:enable_io_t_logging_params], context: "#{context}[:enable_io_t_logging_params]") unless params[:enable_io_t_logging_params].nil?
        type.publish_finding_to_sns_params = PublishFindingToSnsParams.build(params[:publish_finding_to_sns_params], context: "#{context}[:publish_finding_to_sns_params]") unless params[:publish_finding_to_sns_params].nil?
        type
      end
    end

    module MqttContext
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MqttContext, context: context)
        type = Types::MqttContext.new
        type.username = params[:username]
        type.password = params[:password]
        type.client_id = params[:client_id]
        type
      end
    end

    module NonCompliantResource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NonCompliantResource, context: context)
        type = Types::NonCompliantResource.new
        type.resource_type = params[:resource_type]
        type.resource_identifier = ResourceIdentifier.build(params[:resource_identifier], context: "#{context}[:resource_identifier]") unless params[:resource_identifier].nil?
        type.additional_info = StringMap.build(params[:additional_info], context: "#{context}[:additional_info]") unless params[:additional_info].nil?
        type
      end
    end

    module NotConfiguredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotConfiguredException, context: context)
        type = Types::NotConfiguredException.new
        type.message = params[:message]
        type
      end
    end

    module NumberList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module OTAUpdateFile
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OTAUpdateFile, context: context)
        type = Types::OTAUpdateFile.new
        type.file_name = params[:file_name]
        type.file_type = params[:file_type]
        type.file_version = params[:file_version]
        type.file_location = FileLocation.build(params[:file_location], context: "#{context}[:file_location]") unless params[:file_location].nil?
        type.code_signing = CodeSigning.build(params[:code_signing], context: "#{context}[:code_signing]") unless params[:code_signing].nil?
        type.attributes = AttributesMap.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type
      end
    end

    module OTAUpdateFiles
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OTAUpdateFile.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module OTAUpdateInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OTAUpdateInfo, context: context)
        type = Types::OTAUpdateInfo.new
        type.ota_update_id = params[:ota_update_id]
        type.ota_update_arn = params[:ota_update_arn]
        type.creation_date = params[:creation_date]
        type.last_modified_date = params[:last_modified_date]
        type.description = params[:description]
        type.targets = Targets.build(params[:targets], context: "#{context}[:targets]") unless params[:targets].nil?
        type.protocols = Protocols.build(params[:protocols], context: "#{context}[:protocols]") unless params[:protocols].nil?
        type.aws_job_executions_rollout_config = AwsJobExecutionsRolloutConfig.build(params[:aws_job_executions_rollout_config], context: "#{context}[:aws_job_executions_rollout_config]") unless params[:aws_job_executions_rollout_config].nil?
        type.aws_job_presigned_url_config = AwsJobPresignedUrlConfig.build(params[:aws_job_presigned_url_config], context: "#{context}[:aws_job_presigned_url_config]") unless params[:aws_job_presigned_url_config].nil?
        type.target_selection = params[:target_selection]
        type.ota_update_files = OTAUpdateFiles.build(params[:ota_update_files], context: "#{context}[:ota_update_files]") unless params[:ota_update_files].nil?
        type.ota_update_status = params[:ota_update_status]
        type.aws_iot_job_id = params[:aws_iot_job_id]
        type.aws_iot_job_arn = params[:aws_iot_job_arn]
        type.error_info = ErrorInfo.build(params[:error_info], context: "#{context}[:error_info]") unless params[:error_info].nil?
        type.additional_parameters = AdditionalParameterMap.build(params[:additional_parameters], context: "#{context}[:additional_parameters]") unless params[:additional_parameters].nil?
        type
      end
    end

    module OTAUpdateSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OTAUpdateSummary, context: context)
        type = Types::OTAUpdateSummary.new
        type.ota_update_id = params[:ota_update_id]
        type.ota_update_arn = params[:ota_update_arn]
        type.creation_date = params[:creation_date]
        type
      end
    end

    module OTAUpdatesSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OTAUpdateSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module OpenSearchAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OpenSearchAction, context: context)
        type = Types::OpenSearchAction.new
        type.role_arn = params[:role_arn]
        type.endpoint = params[:endpoint]
        type.index = params[:index]
        type.type = params[:type]
        type.id = params[:id]
        type
      end
    end

    module OutgoingCertificate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OutgoingCertificate, context: context)
        type = Types::OutgoingCertificate.new
        type.certificate_arn = params[:certificate_arn]
        type.certificate_id = params[:certificate_id]
        type.transferred_to = params[:transferred_to]
        type.transfer_date = params[:transfer_date]
        type.transfer_message = params[:transfer_message]
        type.creation_date = params[:creation_date]
        type
      end
    end

    module OutgoingCertificates
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OutgoingCertificate.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ParameterMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module Parameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module PercentList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PercentPair
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PercentPair, context: context)
        type = Types::PercentPair.new
        type.percent = params[:percent]
        type.value = params[:value]
        type
      end
    end

    module Percentiles
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PercentPair.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Policies
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Policy.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Policy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Policy, context: context)
        type = Types::Policy.new
        type.policy_name = params[:policy_name]
        type.policy_arn = params[:policy_arn]
        type
      end
    end

    module PolicyDocuments
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PolicyNames
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PolicyTargets
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PolicyVersion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PolicyVersion, context: context)
        type = Types::PolicyVersion.new
        type.version_id = params[:version_id]
        type.is_default_version = params[:is_default_version]
        type.create_date = params[:create_date]
        type
      end
    end

    module PolicyVersionIdentifier
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PolicyVersionIdentifier, context: context)
        type = Types::PolicyVersionIdentifier.new
        type.policy_name = params[:policy_name]
        type.policy_version_id = params[:policy_version_id]
        type
      end
    end

    module PolicyVersions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PolicyVersion.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Ports
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PresignedUrlConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PresignedUrlConfig, context: context)
        type = Types::PresignedUrlConfig.new
        type.role_arn = params[:role_arn]
        type.expires_in_sec = params[:expires_in_sec]
        type
      end
    end

    module Principals
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ProcessingTargetNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Protocols
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ProvisioningHook
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProvisioningHook, context: context)
        type = Types::ProvisioningHook.new
        type.payload_version = params[:payload_version]
        type.target_arn = params[:target_arn]
        type
      end
    end

    module ProvisioningTemplateListing
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ProvisioningTemplateSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ProvisioningTemplateSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProvisioningTemplateSummary, context: context)
        type = Types::ProvisioningTemplateSummary.new
        type.template_arn = params[:template_arn]
        type.template_name = params[:template_name]
        type.description = params[:description]
        type.creation_date = params[:creation_date]
        type.last_modified_date = params[:last_modified_date]
        type.enabled = params[:enabled]
        type
      end
    end

    module ProvisioningTemplateVersionListing
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ProvisioningTemplateVersionSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ProvisioningTemplateVersionSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProvisioningTemplateVersionSummary, context: context)
        type = Types::ProvisioningTemplateVersionSummary.new
        type.version_id = params[:version_id]
        type.creation_date = params[:creation_date]
        type.is_default_version = params[:is_default_version]
        type
      end
    end

    module PublicKeyMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module PublishFindingToSnsParams
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PublishFindingToSnsParams, context: context)
        type = Types::PublishFindingToSnsParams.new
        type.topic_arn = params[:topic_arn]
        type
      end
    end

    module PutAssetPropertyValueEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutAssetPropertyValueEntry, context: context)
        type = Types::PutAssetPropertyValueEntry.new
        type.entry_id = params[:entry_id]
        type.asset_id = params[:asset_id]
        type.property_id = params[:property_id]
        type.property_alias = params[:property_alias]
        type.property_values = AssetPropertyValueList.build(params[:property_values], context: "#{context}[:property_values]") unless params[:property_values].nil?
        type
      end
    end

    module PutAssetPropertyValueEntryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PutAssetPropertyValueEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PutItemInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutItemInput, context: context)
        type = Types::PutItemInput.new
        type.table_name = params[:table_name]
        type
      end
    end

    module PutVerificationStateOnViolationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutVerificationStateOnViolationInput, context: context)
        type = Types::PutVerificationStateOnViolationInput.new
        type.violation_id = params[:violation_id]
        type.verification_state = params[:verification_state]
        type.verification_state_description = params[:verification_state_description]
        type
      end
    end

    module PutVerificationStateOnViolationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutVerificationStateOnViolationOutput, context: context)
        type = Types::PutVerificationStateOnViolationOutput.new
        type
      end
    end

    module RateIncreaseCriteria
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RateIncreaseCriteria, context: context)
        type = Types::RateIncreaseCriteria.new
        type.number_of_notified_things = params[:number_of_notified_things]
        type.number_of_succeeded_things = params[:number_of_succeeded_things]
        type
      end
    end

    module ReasonForNonComplianceCodes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module RegisterCACertificateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterCACertificateInput, context: context)
        type = Types::RegisterCACertificateInput.new
        type.ca_certificate = params[:ca_certificate]
        type.verification_certificate = params[:verification_certificate]
        type.set_as_active = params[:set_as_active]
        type.allow_auto_registration = params[:allow_auto_registration]
        type.registration_config = RegistrationConfig.build(params[:registration_config], context: "#{context}[:registration_config]") unless params[:registration_config].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module RegisterCACertificateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterCACertificateOutput, context: context)
        type = Types::RegisterCACertificateOutput.new
        type.certificate_arn = params[:certificate_arn]
        type.certificate_id = params[:certificate_id]
        type
      end
    end

    module RegisterCertificateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterCertificateInput, context: context)
        type = Types::RegisterCertificateInput.new
        type.certificate_pem = params[:certificate_pem]
        type.ca_certificate_pem = params[:ca_certificate_pem]
        type.set_as_active = params[:set_as_active]
        type.status = params[:status]
        type
      end
    end

    module RegisterCertificateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterCertificateOutput, context: context)
        type = Types::RegisterCertificateOutput.new
        type.certificate_arn = params[:certificate_arn]
        type.certificate_id = params[:certificate_id]
        type
      end
    end

    module RegisterCertificateWithoutCAInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterCertificateWithoutCAInput, context: context)
        type = Types::RegisterCertificateWithoutCAInput.new
        type.certificate_pem = params[:certificate_pem]
        type.status = params[:status]
        type
      end
    end

    module RegisterCertificateWithoutCAOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterCertificateWithoutCAOutput, context: context)
        type = Types::RegisterCertificateWithoutCAOutput.new
        type.certificate_arn = params[:certificate_arn]
        type.certificate_id = params[:certificate_id]
        type
      end
    end

    module RegisterThingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterThingInput, context: context)
        type = Types::RegisterThingInput.new
        type.template_body = params[:template_body]
        type.parameters = Parameters.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type
      end
    end

    module RegisterThingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterThingOutput, context: context)
        type = Types::RegisterThingOutput.new
        type.certificate_pem = params[:certificate_pem]
        type.resource_arns = ResourceArns.build(params[:resource_arns], context: "#{context}[:resource_arns]") unless params[:resource_arns].nil?
        type
      end
    end

    module RegistrationCodeValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegistrationCodeValidationException, context: context)
        type = Types::RegistrationCodeValidationException.new
        type.message = params[:message]
        type
      end
    end

    module RegistrationConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegistrationConfig, context: context)
        type = Types::RegistrationConfig.new
        type.template_body = params[:template_body]
        type.role_arn = params[:role_arn]
        type
      end
    end

    module RejectCertificateTransferInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RejectCertificateTransferInput, context: context)
        type = Types::RejectCertificateTransferInput.new
        type.certificate_id = params[:certificate_id]
        type.reject_reason = params[:reject_reason]
        type
      end
    end

    module RejectCertificateTransferOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RejectCertificateTransferOutput, context: context)
        type = Types::RejectCertificateTransferOutput.new
        type
      end
    end

    module RelatedResource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RelatedResource, context: context)
        type = Types::RelatedResource.new
        type.resource_type = params[:resource_type]
        type.resource_identifier = ResourceIdentifier.build(params[:resource_identifier], context: "#{context}[:resource_identifier]") unless params[:resource_identifier].nil?
        type.additional_info = StringMap.build(params[:additional_info], context: "#{context}[:additional_info]") unless params[:additional_info].nil?
        type
      end
    end

    module RelatedResources
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RelatedResource.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RemoveThingFromBillingGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveThingFromBillingGroupInput, context: context)
        type = Types::RemoveThingFromBillingGroupInput.new
        type.billing_group_name = params[:billing_group_name]
        type.billing_group_arn = params[:billing_group_arn]
        type.thing_name = params[:thing_name]
        type.thing_arn = params[:thing_arn]
        type
      end
    end

    module RemoveThingFromBillingGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveThingFromBillingGroupOutput, context: context)
        type = Types::RemoveThingFromBillingGroupOutput.new
        type
      end
    end

    module RemoveThingFromThingGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveThingFromThingGroupInput, context: context)
        type = Types::RemoveThingFromThingGroupInput.new
        type.thing_group_name = params[:thing_group_name]
        type.thing_group_arn = params[:thing_group_arn]
        type.thing_name = params[:thing_name]
        type.thing_arn = params[:thing_arn]
        type
      end
    end

    module RemoveThingFromThingGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveThingFromThingGroupOutput, context: context)
        type = Types::RemoveThingFromThingGroupOutput.new
        type
      end
    end

    module ReplaceDefaultPolicyVersionParams
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReplaceDefaultPolicyVersionParams, context: context)
        type = Types::ReplaceDefaultPolicyVersionParams.new
        type.template_name = params[:template_name]
        type
      end
    end

    module ReplaceTopicRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReplaceTopicRuleInput, context: context)
        type = Types::ReplaceTopicRuleInput.new
        type.rule_name = params[:rule_name]
        type.topic_rule_payload = TopicRulePayload.build(params[:topic_rule_payload], context: "#{context}[:topic_rule_payload]") unless params[:topic_rule_payload].nil?
        type
      end
    end

    module ReplaceTopicRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReplaceTopicRuleOutput, context: context)
        type = Types::ReplaceTopicRuleOutput.new
        type
      end
    end

    module RepublishAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RepublishAction, context: context)
        type = Types::RepublishAction.new
        type.role_arn = params[:role_arn]
        type.topic = params[:topic]
        type.qos = params[:qos]
        type
      end
    end

    module ResourceAlreadyExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceAlreadyExistsException, context: context)
        type = Types::ResourceAlreadyExistsException.new
        type.message = params[:message]
        type.resource_id = params[:resource_id]
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ResourceArns
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module ResourceIdentifier
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceIdentifier, context: context)
        type = Types::ResourceIdentifier.new
        type.device_certificate_id = params[:device_certificate_id]
        type.ca_certificate_id = params[:ca_certificate_id]
        type.cognito_identity_pool_id = params[:cognito_identity_pool_id]
        type.client_id = params[:client_id]
        type.policy_version_identifier = PolicyVersionIdentifier.build(params[:policy_version_identifier], context: "#{context}[:policy_version_identifier]") unless params[:policy_version_identifier].nil?
        type.account = params[:account]
        type.iam_role_arn = params[:iam_role_arn]
        type.role_alias_arn = params[:role_alias_arn]
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceRegistrationFailureException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceRegistrationFailureException, context: context)
        type = Types::ResourceRegistrationFailureException.new
        type.message = params[:message]
        type
      end
    end

    module Resources
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module RetryCriteria
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RetryCriteria, context: context)
        type = Types::RetryCriteria.new
        type.failure_type = params[:failure_type]
        type.number_of_retries = params[:number_of_retries]
        type
      end
    end

    module RetryCriteriaList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RetryCriteria.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RoleAliasDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RoleAliasDescription, context: context)
        type = Types::RoleAliasDescription.new
        type.role_alias = params[:role_alias]
        type.role_alias_arn = params[:role_alias_arn]
        type.role_arn = params[:role_arn]
        type.owner = params[:owner]
        type.credential_duration_seconds = params[:credential_duration_seconds]
        type.creation_date = params[:creation_date]
        type.last_modified_date = params[:last_modified_date]
        type
      end
    end

    module RoleAliases
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module S3Action
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3Action, context: context)
        type = Types::S3Action.new
        type.role_arn = params[:role_arn]
        type.bucket_name = params[:bucket_name]
        type.key = params[:key]
        type.canned_acl = params[:canned_acl]
        type
      end
    end

    module S3Destination
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3Destination, context: context)
        type = Types::S3Destination.new
        type.bucket = params[:bucket]
        type.prefix = params[:prefix]
        type
      end
    end

    module S3FileUrlList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module S3Location
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3Location, context: context)
        type = Types::S3Location.new
        type.bucket = params[:bucket]
        type.key = params[:key]
        type.version = params[:version]
        type
      end
    end

    module SalesforceAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SalesforceAction, context: context)
        type = Types::SalesforceAction.new
        type.token = params[:token]
        type.url = params[:url]
        type
      end
    end

    module ScheduledAuditMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScheduledAuditMetadata, context: context)
        type = Types::ScheduledAuditMetadata.new
        type.scheduled_audit_name = params[:scheduled_audit_name]
        type.scheduled_audit_arn = params[:scheduled_audit_arn]
        type.frequency = params[:frequency]
        type.day_of_month = params[:day_of_month]
        type.day_of_week = params[:day_of_week]
        type
      end
    end

    module ScheduledAuditMetadataList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ScheduledAuditMetadata.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SearchIndexInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchIndexInput, context: context)
        type = Types::SearchIndexInput.new
        type.index_name = params[:index_name]
        type.query_string = params[:query_string]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.query_version = params[:query_version]
        type
      end
    end

    module SearchIndexOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchIndexOutput, context: context)
        type = Types::SearchIndexOutput.new
        type.next_token = params[:next_token]
        type.things = ThingDocumentList.build(params[:things], context: "#{context}[:things]") unless params[:things].nil?
        type.thing_groups = ThingGroupDocumentList.build(params[:thing_groups], context: "#{context}[:thing_groups]") unless params[:thing_groups].nil?
        type
      end
    end

    module SearchableAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SecurityGroupList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SecurityProfileIdentifier
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SecurityProfileIdentifier, context: context)
        type = Types::SecurityProfileIdentifier.new
        type.name = params[:name]
        type.arn = params[:arn]
        type
      end
    end

    module SecurityProfileIdentifiers
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SecurityProfileIdentifier.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SecurityProfileTarget
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SecurityProfileTarget, context: context)
        type = Types::SecurityProfileTarget.new
        type.arn = params[:arn]
        type
      end
    end

    module SecurityProfileTargetMapping
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SecurityProfileTargetMapping, context: context)
        type = Types::SecurityProfileTargetMapping.new
        type.security_profile_identifier = SecurityProfileIdentifier.build(params[:security_profile_identifier], context: "#{context}[:security_profile_identifier]") unless params[:security_profile_identifier].nil?
        type.target = SecurityProfileTarget.build(params[:target], context: "#{context}[:target]") unless params[:target].nil?
        type
      end
    end

    module SecurityProfileTargetMappings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SecurityProfileTargetMapping.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SecurityProfileTargets
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SecurityProfileTarget.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ServerCertificateArns
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ServerCertificateSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServerCertificateSummary, context: context)
        type = Types::ServerCertificateSummary.new
        type.server_certificate_arn = params[:server_certificate_arn]
        type.server_certificate_status = params[:server_certificate_status]
        type.server_certificate_status_detail = params[:server_certificate_status_detail]
        type
      end
    end

    module ServerCertificates
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ServerCertificateSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
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

    module SetDefaultAuthorizerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetDefaultAuthorizerInput, context: context)
        type = Types::SetDefaultAuthorizerInput.new
        type.authorizer_name = params[:authorizer_name]
        type
      end
    end

    module SetDefaultAuthorizerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetDefaultAuthorizerOutput, context: context)
        type = Types::SetDefaultAuthorizerOutput.new
        type.authorizer_name = params[:authorizer_name]
        type.authorizer_arn = params[:authorizer_arn]
        type
      end
    end

    module SetDefaultPolicyVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetDefaultPolicyVersionInput, context: context)
        type = Types::SetDefaultPolicyVersionInput.new
        type.policy_name = params[:policy_name]
        type.policy_version_id = params[:policy_version_id]
        type
      end
    end

    module SetDefaultPolicyVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetDefaultPolicyVersionOutput, context: context)
        type = Types::SetDefaultPolicyVersionOutput.new
        type
      end
    end

    module SetLoggingOptionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetLoggingOptionsInput, context: context)
        type = Types::SetLoggingOptionsInput.new
        type.logging_options_payload = LoggingOptionsPayload.build(params[:logging_options_payload], context: "#{context}[:logging_options_payload]") unless params[:logging_options_payload].nil?
        type
      end
    end

    module SetLoggingOptionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetLoggingOptionsOutput, context: context)
        type = Types::SetLoggingOptionsOutput.new
        type
      end
    end

    module SetV2LoggingLevelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetV2LoggingLevelInput, context: context)
        type = Types::SetV2LoggingLevelInput.new
        type.log_target = LogTarget.build(params[:log_target], context: "#{context}[:log_target]") unless params[:log_target].nil?
        type.log_level = params[:log_level]
        type
      end
    end

    module SetV2LoggingLevelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetV2LoggingLevelOutput, context: context)
        type = Types::SetV2LoggingLevelOutput.new
        type
      end
    end

    module SetV2LoggingOptionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetV2LoggingOptionsInput, context: context)
        type = Types::SetV2LoggingOptionsInput.new
        type.role_arn = params[:role_arn]
        type.default_log_level = params[:default_log_level]
        type.disable_all_logs = params[:disable_all_logs]
        type
      end
    end

    module SetV2LoggingOptionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetV2LoggingOptionsOutput, context: context)
        type = Types::SetV2LoggingOptionsOutput.new
        type
      end
    end

    module SigV4Authorization
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SigV4Authorization, context: context)
        type = Types::SigV4Authorization.new
        type.signing_region = params[:signing_region]
        type.service_name = params[:service_name]
        type.role_arn = params[:role_arn]
        type
      end
    end

    module SigningProfileParameter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SigningProfileParameter, context: context)
        type = Types::SigningProfileParameter.new
        type.certificate_arn = params[:certificate_arn]
        type.platform = params[:platform]
        type.certificate_path_on_device = params[:certificate_path_on_device]
        type
      end
    end

    module SnsAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SnsAction, context: context)
        type = Types::SnsAction.new
        type.target_arn = params[:target_arn]
        type.role_arn = params[:role_arn]
        type.message_format = params[:message_format]
        type
      end
    end

    module SqlParseException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SqlParseException, context: context)
        type = Types::SqlParseException.new
        type.message = params[:message]
        type
      end
    end

    module SqsAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SqsAction, context: context)
        type = Types::SqsAction.new
        type.role_arn = params[:role_arn]
        type.queue_url = params[:queue_url]
        type.use_base64 = params[:use_base64]
        type
      end
    end

    module StartAuditMitigationActionsTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartAuditMitigationActionsTaskInput, context: context)
        type = Types::StartAuditMitigationActionsTaskInput.new
        type.task_id = params[:task_id]
        type.target = AuditMitigationActionsTaskTarget.build(params[:target], context: "#{context}[:target]") unless params[:target].nil?
        type.audit_check_to_actions_mapping = AuditCheckToActionsMapping.build(params[:audit_check_to_actions_mapping], context: "#{context}[:audit_check_to_actions_mapping]") unless params[:audit_check_to_actions_mapping].nil?
        type.client_request_token = params[:client_request_token] || SecureRandom.uuid
        type
      end
    end

    module StartAuditMitigationActionsTaskOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartAuditMitigationActionsTaskOutput, context: context)
        type = Types::StartAuditMitigationActionsTaskOutput.new
        type.task_id = params[:task_id]
        type
      end
    end

    module StartDetectMitigationActionsTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartDetectMitigationActionsTaskInput, context: context)
        type = Types::StartDetectMitigationActionsTaskInput.new
        type.task_id = params[:task_id]
        type.target = DetectMitigationActionsTaskTarget.build(params[:target], context: "#{context}[:target]") unless params[:target].nil?
        type.actions = DetectMitigationActionsToExecuteList.build(params[:actions], context: "#{context}[:actions]") unless params[:actions].nil?
        type.violation_event_occurrence_range = ViolationEventOccurrenceRange.build(params[:violation_event_occurrence_range], context: "#{context}[:violation_event_occurrence_range]") unless params[:violation_event_occurrence_range].nil?
        type.include_only_active_violations = params[:include_only_active_violations]
        type.include_suppressed_alerts = params[:include_suppressed_alerts]
        type.client_request_token = params[:client_request_token] || SecureRandom.uuid
        type
      end
    end

    module StartDetectMitigationActionsTaskOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartDetectMitigationActionsTaskOutput, context: context)
        type = Types::StartDetectMitigationActionsTaskOutput.new
        type.task_id = params[:task_id]
        type
      end
    end

    module StartOnDemandAuditTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartOnDemandAuditTaskInput, context: context)
        type = Types::StartOnDemandAuditTaskInput.new
        type.target_check_names = TargetAuditCheckNames.build(params[:target_check_names], context: "#{context}[:target_check_names]") unless params[:target_check_names].nil?
        type
      end
    end

    module StartOnDemandAuditTaskOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartOnDemandAuditTaskOutput, context: context)
        type = Types::StartOnDemandAuditTaskOutput.new
        type.task_id = params[:task_id]
        type
      end
    end

    module StartSigningJobParameter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartSigningJobParameter, context: context)
        type = Types::StartSigningJobParameter.new
        type.signing_profile_parameter = SigningProfileParameter.build(params[:signing_profile_parameter], context: "#{context}[:signing_profile_parameter]") unless params[:signing_profile_parameter].nil?
        type.signing_profile_name = params[:signing_profile_name]
        type.destination = Destination.build(params[:destination], context: "#{context}[:destination]") unless params[:destination].nil?
        type
      end
    end

    module StartThingRegistrationTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartThingRegistrationTaskInput, context: context)
        type = Types::StartThingRegistrationTaskInput.new
        type.template_body = params[:template_body]
        type.input_file_bucket = params[:input_file_bucket]
        type.input_file_key = params[:input_file_key]
        type.role_arn = params[:role_arn]
        type
      end
    end

    module StartThingRegistrationTaskOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartThingRegistrationTaskOutput, context: context)
        type = Types::StartThingRegistrationTaskOutput.new
        type.task_id = params[:task_id]
        type
      end
    end

    module StatisticalThreshold
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StatisticalThreshold, context: context)
        type = Types::StatisticalThreshold.new
        type.statistic = params[:statistic]
        type
      end
    end

    module Statistics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Statistics, context: context)
        type = Types::Statistics.new
        type.count = params[:count]
        type.average = params[:average]
        type.sum = params[:sum]
        type.minimum = params[:minimum]
        type.maximum = params[:maximum]
        type.sum_of_squares = params[:sum_of_squares]
        type.variance = params[:variance]
        type.std_deviation = params[:std_deviation]
        type
      end
    end

    module StepFunctionsAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StepFunctionsAction, context: context)
        type = Types::StepFunctionsAction.new
        type.execution_name_prefix = params[:execution_name_prefix]
        type.state_machine_name = params[:state_machine_name]
        type.role_arn = params[:role_arn]
        type
      end
    end

    module StopThingRegistrationTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopThingRegistrationTaskInput, context: context)
        type = Types::StopThingRegistrationTaskInput.new
        type.task_id = params[:task_id]
        type
      end
    end

    module StopThingRegistrationTaskOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopThingRegistrationTaskOutput, context: context)
        type = Types::StopThingRegistrationTaskOutput.new
        type
      end
    end

    module Stream
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Stream, context: context)
        type = Types::Stream.new
        type.stream_id = params[:stream_id]
        type.file_id = params[:file_id]
        type
      end
    end

    module StreamFile
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StreamFile, context: context)
        type = Types::StreamFile.new
        type.file_id = params[:file_id]
        type.s3_location = S3Location.build(params[:s3_location], context: "#{context}[:s3_location]") unless params[:s3_location].nil?
        type
      end
    end

    module StreamFiles
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StreamFile.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StreamInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StreamInfo, context: context)
        type = Types::StreamInfo.new
        type.stream_id = params[:stream_id]
        type.stream_arn = params[:stream_arn]
        type.stream_version = params[:stream_version]
        type.description = params[:description]
        type.files = StreamFiles.build(params[:files], context: "#{context}[:files]") unless params[:files].nil?
        type.created_at = params[:created_at]
        type.last_updated_at = params[:last_updated_at]
        type.role_arn = params[:role_arn]
        type
      end
    end

    module StreamSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StreamSummary, context: context)
        type = Types::StreamSummary.new
        type.stream_id = params[:stream_id]
        type.stream_arn = params[:stream_arn]
        type.stream_version = params[:stream_version]
        type.description = params[:description]
        type
      end
    end

    module StreamsSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StreamSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module StringMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module SubnetIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
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

    module TargetAuditCheckNames
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TargetViolationIdsForDetectMitigationActions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Targets
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TaskAlreadyExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TaskAlreadyExistsException, context: context)
        type = Types::TaskAlreadyExistsException.new
        type.message = params[:message]
        type
      end
    end

    module TaskIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TaskStatistics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TaskStatistics, context: context)
        type = Types::TaskStatistics.new
        type.total_checks = params[:total_checks]
        type.in_progress_checks = params[:in_progress_checks]
        type.waiting_for_data_collection_checks = params[:waiting_for_data_collection_checks]
        type.compliant_checks = params[:compliant_checks]
        type.non_compliant_checks = params[:non_compliant_checks]
        type.failed_checks = params[:failed_checks]
        type.canceled_checks = params[:canceled_checks]
        type
      end
    end

    module TaskStatisticsForAuditCheck
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TaskStatisticsForAuditCheck, context: context)
        type = Types::TaskStatisticsForAuditCheck.new
        type.total_findings_count = params[:total_findings_count]
        type.failed_findings_count = params[:failed_findings_count]
        type.succeeded_findings_count = params[:succeeded_findings_count]
        type.skipped_findings_count = params[:skipped_findings_count]
        type.canceled_findings_count = params[:canceled_findings_count]
        type
      end
    end

    module TermsAggregation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TermsAggregation, context: context)
        type = Types::TermsAggregation.new
        type.max_buckets = params[:max_buckets]
        type
      end
    end

    module TestAuthorizationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TestAuthorizationInput, context: context)
        type = Types::TestAuthorizationInput.new
        type.principal = params[:principal]
        type.cognito_identity_pool_id = params[:cognito_identity_pool_id]
        type.auth_infos = AuthInfos.build(params[:auth_infos], context: "#{context}[:auth_infos]") unless params[:auth_infos].nil?
        type.client_id = params[:client_id]
        type.policy_names_to_add = PolicyNames.build(params[:policy_names_to_add], context: "#{context}[:policy_names_to_add]") unless params[:policy_names_to_add].nil?
        type.policy_names_to_skip = PolicyNames.build(params[:policy_names_to_skip], context: "#{context}[:policy_names_to_skip]") unless params[:policy_names_to_skip].nil?
        type
      end
    end

    module TestAuthorizationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TestAuthorizationOutput, context: context)
        type = Types::TestAuthorizationOutput.new
        type.auth_results = AuthResults.build(params[:auth_results], context: "#{context}[:auth_results]") unless params[:auth_results].nil?
        type
      end
    end

    module TestInvokeAuthorizerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TestInvokeAuthorizerInput, context: context)
        type = Types::TestInvokeAuthorizerInput.new
        type.authorizer_name = params[:authorizer_name]
        type.token = params[:token]
        type.token_signature = params[:token_signature]
        type.http_context = HttpContext.build(params[:http_context], context: "#{context}[:http_context]") unless params[:http_context].nil?
        type.mqtt_context = MqttContext.build(params[:mqtt_context], context: "#{context}[:mqtt_context]") unless params[:mqtt_context].nil?
        type.tls_context = TlsContext.build(params[:tls_context], context: "#{context}[:tls_context]") unless params[:tls_context].nil?
        type
      end
    end

    module TestInvokeAuthorizerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TestInvokeAuthorizerOutput, context: context)
        type = Types::TestInvokeAuthorizerOutput.new
        type.is_authenticated = params[:is_authenticated]
        type.principal_id = params[:principal_id]
        type.policy_documents = PolicyDocuments.build(params[:policy_documents], context: "#{context}[:policy_documents]") unless params[:policy_documents].nil?
        type.refresh_after_in_seconds = params[:refresh_after_in_seconds]
        type.disconnect_after_in_seconds = params[:disconnect_after_in_seconds]
        type
      end
    end

    module ThingAttribute
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThingAttribute, context: context)
        type = Types::ThingAttribute.new
        type.thing_name = params[:thing_name]
        type.thing_type_name = params[:thing_type_name]
        type.thing_arn = params[:thing_arn]
        type.attributes = Attributes.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type.version = params[:version]
        type
      end
    end

    module ThingAttributeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ThingAttribute.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ThingConnectivity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThingConnectivity, context: context)
        type = Types::ThingConnectivity.new
        type.connected = params[:connected]
        type.timestamp = params[:timestamp]
        type.disconnect_reason = params[:disconnect_reason]
        type
      end
    end

    module ThingDocument
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThingDocument, context: context)
        type = Types::ThingDocument.new
        type.thing_name = params[:thing_name]
        type.thing_id = params[:thing_id]
        type.thing_type_name = params[:thing_type_name]
        type.thing_group_names = ThingGroupNameList.build(params[:thing_group_names], context: "#{context}[:thing_group_names]") unless params[:thing_group_names].nil?
        type.attributes = Attributes.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type.shadow = params[:shadow]
        type.device_defender = params[:device_defender]
        type.connectivity = ThingConnectivity.build(params[:connectivity], context: "#{context}[:connectivity]") unless params[:connectivity].nil?
        type
      end
    end

    module ThingDocumentList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ThingDocument.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ThingGroupDocument
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThingGroupDocument, context: context)
        type = Types::ThingGroupDocument.new
        type.thing_group_name = params[:thing_group_name]
        type.thing_group_id = params[:thing_group_id]
        type.thing_group_description = params[:thing_group_description]
        type.attributes = Attributes.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type.parent_group_names = ThingGroupNameList.build(params[:parent_group_names], context: "#{context}[:parent_group_names]") unless params[:parent_group_names].nil?
        type
      end
    end

    module ThingGroupDocumentList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ThingGroupDocument.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ThingGroupIndexingConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThingGroupIndexingConfiguration, context: context)
        type = Types::ThingGroupIndexingConfiguration.new
        type.thing_group_indexing_mode = params[:thing_group_indexing_mode]
        type.managed_fields = Fields.build(params[:managed_fields], context: "#{context}[:managed_fields]") unless params[:managed_fields].nil?
        type.custom_fields = Fields.build(params[:custom_fields], context: "#{context}[:custom_fields]") unless params[:custom_fields].nil?
        type
      end
    end

    module ThingGroupList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ThingGroupMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThingGroupMetadata, context: context)
        type = Types::ThingGroupMetadata.new
        type.parent_group_name = params[:parent_group_name]
        type.root_to_parent_thing_groups = ThingGroupNameAndArnList.build(params[:root_to_parent_thing_groups], context: "#{context}[:root_to_parent_thing_groups]") unless params[:root_to_parent_thing_groups].nil?
        type.creation_date = params[:creation_date]
        type
      end
    end

    module ThingGroupNameAndArnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GroupNameAndArn.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ThingGroupNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ThingGroupNames
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ThingGroupProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThingGroupProperties, context: context)
        type = Types::ThingGroupProperties.new
        type.thing_group_description = params[:thing_group_description]
        type.attribute_payload = AttributePayload.build(params[:attribute_payload], context: "#{context}[:attribute_payload]") unless params[:attribute_payload].nil?
        type
      end
    end

    module ThingIndexingConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThingIndexingConfiguration, context: context)
        type = Types::ThingIndexingConfiguration.new
        type.thing_indexing_mode = params[:thing_indexing_mode]
        type.thing_connectivity_indexing_mode = params[:thing_connectivity_indexing_mode]
        type.device_defender_indexing_mode = params[:device_defender_indexing_mode]
        type.named_shadow_indexing_mode = params[:named_shadow_indexing_mode]
        type.managed_fields = Fields.build(params[:managed_fields], context: "#{context}[:managed_fields]") unless params[:managed_fields].nil?
        type.custom_fields = Fields.build(params[:custom_fields], context: "#{context}[:custom_fields]") unless params[:custom_fields].nil?
        type
      end
    end

    module ThingNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ThingTypeDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThingTypeDefinition, context: context)
        type = Types::ThingTypeDefinition.new
        type.thing_type_name = params[:thing_type_name]
        type.thing_type_arn = params[:thing_type_arn]
        type.thing_type_properties = ThingTypeProperties.build(params[:thing_type_properties], context: "#{context}[:thing_type_properties]") unless params[:thing_type_properties].nil?
        type.thing_type_metadata = ThingTypeMetadata.build(params[:thing_type_metadata], context: "#{context}[:thing_type_metadata]") unless params[:thing_type_metadata].nil?
        type
      end
    end

    module ThingTypeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ThingTypeDefinition.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ThingTypeMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThingTypeMetadata, context: context)
        type = Types::ThingTypeMetadata.new
        type.deprecated = params[:deprecated]
        type.deprecation_date = params[:deprecation_date]
        type.creation_date = params[:creation_date]
        type
      end
    end

    module ThingTypeProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThingTypeProperties, context: context)
        type = Types::ThingTypeProperties.new
        type.thing_type_description = params[:thing_type_description]
        type.searchable_attributes = SearchableAttributes.build(params[:searchable_attributes], context: "#{context}[:searchable_attributes]") unless params[:searchable_attributes].nil?
        type
      end
    end

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.message = params[:message]
        type
      end
    end

    module TimeoutConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TimeoutConfig, context: context)
        type = Types::TimeoutConfig.new
        type.in_progress_timeout_in_minutes = params[:in_progress_timeout_in_minutes]
        type
      end
    end

    module TimestreamAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TimestreamAction, context: context)
        type = Types::TimestreamAction.new
        type.role_arn = params[:role_arn]
        type.database_name = params[:database_name]
        type.table_name = params[:table_name]
        type.dimensions = TimestreamDimensionList.build(params[:dimensions], context: "#{context}[:dimensions]") unless params[:dimensions].nil?
        type.timestamp = TimestreamTimestamp.build(params[:timestamp], context: "#{context}[:timestamp]") unless params[:timestamp].nil?
        type
      end
    end

    module TimestreamDimension
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TimestreamDimension, context: context)
        type = Types::TimestreamDimension.new
        type.name = params[:name]
        type.value = params[:value]
        type
      end
    end

    module TimestreamDimensionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TimestreamDimension.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TimestreamTimestamp
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TimestreamTimestamp, context: context)
        type = Types::TimestreamTimestamp.new
        type.value = params[:value]
        type.unit = params[:unit]
        type
      end
    end

    module TlsContext
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TlsContext, context: context)
        type = Types::TlsContext.new
        type.server_name = params[:server_name]
        type
      end
    end

    module TopicRule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TopicRule, context: context)
        type = Types::TopicRule.new
        type.rule_name = params[:rule_name]
        type.sql = params[:sql]
        type.description = params[:description]
        type.created_at = params[:created_at]
        type.actions = ActionList.build(params[:actions], context: "#{context}[:actions]") unless params[:actions].nil?
        type.rule_disabled = params[:rule_disabled]
        type.aws_iot_sql_version = params[:aws_iot_sql_version]
        type.error_action = Action.build(params[:error_action], context: "#{context}[:error_action]") unless params[:error_action].nil?
        type
      end
    end

    module TopicRuleDestination
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TopicRuleDestination, context: context)
        type = Types::TopicRuleDestination.new
        type.arn = params[:arn]
        type.status = params[:status]
        type.created_at = params[:created_at]
        type.last_updated_at = params[:last_updated_at]
        type.status_reason = params[:status_reason]
        type.http_url_properties = HttpUrlDestinationProperties.build(params[:http_url_properties], context: "#{context}[:http_url_properties]") unless params[:http_url_properties].nil?
        type.vpc_properties = VpcDestinationProperties.build(params[:vpc_properties], context: "#{context}[:vpc_properties]") unless params[:vpc_properties].nil?
        type
      end
    end

    module TopicRuleDestinationConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TopicRuleDestinationConfiguration, context: context)
        type = Types::TopicRuleDestinationConfiguration.new
        type.http_url_configuration = HttpUrlDestinationConfiguration.build(params[:http_url_configuration], context: "#{context}[:http_url_configuration]") unless params[:http_url_configuration].nil?
        type.vpc_configuration = VpcDestinationConfiguration.build(params[:vpc_configuration], context: "#{context}[:vpc_configuration]") unless params[:vpc_configuration].nil?
        type
      end
    end

    module TopicRuleDestinationSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TopicRuleDestinationSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TopicRuleDestinationSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TopicRuleDestinationSummary, context: context)
        type = Types::TopicRuleDestinationSummary.new
        type.arn = params[:arn]
        type.status = params[:status]
        type.created_at = params[:created_at]
        type.last_updated_at = params[:last_updated_at]
        type.status_reason = params[:status_reason]
        type.http_url_summary = HttpUrlDestinationSummary.build(params[:http_url_summary], context: "#{context}[:http_url_summary]") unless params[:http_url_summary].nil?
        type.vpc_destination_summary = VpcDestinationSummary.build(params[:vpc_destination_summary], context: "#{context}[:vpc_destination_summary]") unless params[:vpc_destination_summary].nil?
        type
      end
    end

    module TopicRuleList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TopicRuleListItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TopicRuleListItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TopicRuleListItem, context: context)
        type = Types::TopicRuleListItem.new
        type.rule_arn = params[:rule_arn]
        type.rule_name = params[:rule_name]
        type.topic_pattern = params[:topic_pattern]
        type.created_at = params[:created_at]
        type.rule_disabled = params[:rule_disabled]
        type
      end
    end

    module TopicRulePayload
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TopicRulePayload, context: context)
        type = Types::TopicRulePayload.new
        type.sql = params[:sql]
        type.description = params[:description]
        type.actions = ActionList.build(params[:actions], context: "#{context}[:actions]") unless params[:actions].nil?
        type.rule_disabled = params[:rule_disabled]
        type.aws_iot_sql_version = params[:aws_iot_sql_version]
        type.error_action = Action.build(params[:error_action], context: "#{context}[:error_action]") unless params[:error_action].nil?
        type
      end
    end

    module TransferAlreadyCompletedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TransferAlreadyCompletedException, context: context)
        type = Types::TransferAlreadyCompletedException.new
        type.message = params[:message]
        type
      end
    end

    module TransferCertificateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TransferCertificateInput, context: context)
        type = Types::TransferCertificateInput.new
        type.certificate_id = params[:certificate_id]
        type.target_aws_account = params[:target_aws_account]
        type.transfer_message = params[:transfer_message]
        type
      end
    end

    module TransferCertificateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TransferCertificateOutput, context: context)
        type = Types::TransferCertificateOutput.new
        type.transferred_certificate_arn = params[:transferred_certificate_arn]
        type
      end
    end

    module TransferConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TransferConflictException, context: context)
        type = Types::TransferConflictException.new
        type.message = params[:message]
        type
      end
    end

    module TransferData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TransferData, context: context)
        type = Types::TransferData.new
        type.transfer_message = params[:transfer_message]
        type.reject_reason = params[:reject_reason]
        type.transfer_date = params[:transfer_date]
        type.accept_date = params[:accept_date]
        type.reject_date = params[:reject_date]
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

    module UpdateAccountAuditConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAccountAuditConfigurationInput, context: context)
        type = Types::UpdateAccountAuditConfigurationInput.new
        type.role_arn = params[:role_arn]
        type.audit_notification_target_configurations = AuditNotificationTargetConfigurations.build(params[:audit_notification_target_configurations], context: "#{context}[:audit_notification_target_configurations]") unless params[:audit_notification_target_configurations].nil?
        type.audit_check_configurations = AuditCheckConfigurations.build(params[:audit_check_configurations], context: "#{context}[:audit_check_configurations]") unless params[:audit_check_configurations].nil?
        type
      end
    end

    module UpdateAccountAuditConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAccountAuditConfigurationOutput, context: context)
        type = Types::UpdateAccountAuditConfigurationOutput.new
        type
      end
    end

    module UpdateAuditSuppressionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAuditSuppressionInput, context: context)
        type = Types::UpdateAuditSuppressionInput.new
        type.check_name = params[:check_name]
        type.resource_identifier = ResourceIdentifier.build(params[:resource_identifier], context: "#{context}[:resource_identifier]") unless params[:resource_identifier].nil?
        type.expiration_date = params[:expiration_date]
        type.suppress_indefinitely = params[:suppress_indefinitely]
        type.description = params[:description]
        type
      end
    end

    module UpdateAuditSuppressionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAuditSuppressionOutput, context: context)
        type = Types::UpdateAuditSuppressionOutput.new
        type
      end
    end

    module UpdateAuthorizerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAuthorizerInput, context: context)
        type = Types::UpdateAuthorizerInput.new
        type.authorizer_name = params[:authorizer_name]
        type.authorizer_function_arn = params[:authorizer_function_arn]
        type.token_key_name = params[:token_key_name]
        type.token_signing_public_keys = PublicKeyMap.build(params[:token_signing_public_keys], context: "#{context}[:token_signing_public_keys]") unless params[:token_signing_public_keys].nil?
        type.status = params[:status]
        type.enable_caching_for_http = params[:enable_caching_for_http]
        type
      end
    end

    module UpdateAuthorizerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAuthorizerOutput, context: context)
        type = Types::UpdateAuthorizerOutput.new
        type.authorizer_name = params[:authorizer_name]
        type.authorizer_arn = params[:authorizer_arn]
        type
      end
    end

    module UpdateBillingGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateBillingGroupInput, context: context)
        type = Types::UpdateBillingGroupInput.new
        type.billing_group_name = params[:billing_group_name]
        type.billing_group_properties = BillingGroupProperties.build(params[:billing_group_properties], context: "#{context}[:billing_group_properties]") unless params[:billing_group_properties].nil?
        type.expected_version = params[:expected_version]
        type
      end
    end

    module UpdateBillingGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateBillingGroupOutput, context: context)
        type = Types::UpdateBillingGroupOutput.new
        type.version = params[:version]
        type
      end
    end

    module UpdateCACertificateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateCACertificateInput, context: context)
        type = Types::UpdateCACertificateInput.new
        type.certificate_id = params[:certificate_id]
        type.new_status = params[:new_status]
        type.new_auto_registration_status = params[:new_auto_registration_status]
        type.registration_config = RegistrationConfig.build(params[:registration_config], context: "#{context}[:registration_config]") unless params[:registration_config].nil?
        type.remove_auto_registration = params[:remove_auto_registration]
        type
      end
    end

    module UpdateCACertificateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateCACertificateOutput, context: context)
        type = Types::UpdateCACertificateOutput.new
        type
      end
    end

    module UpdateCACertificateParams
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateCACertificateParams, context: context)
        type = Types::UpdateCACertificateParams.new
        type.action = params[:action]
        type
      end
    end

    module UpdateCertificateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateCertificateInput, context: context)
        type = Types::UpdateCertificateInput.new
        type.certificate_id = params[:certificate_id]
        type.new_status = params[:new_status]
        type
      end
    end

    module UpdateCertificateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateCertificateOutput, context: context)
        type = Types::UpdateCertificateOutput.new
        type
      end
    end

    module UpdateCustomMetricInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateCustomMetricInput, context: context)
        type = Types::UpdateCustomMetricInput.new
        type.metric_name = params[:metric_name]
        type.display_name = params[:display_name]
        type
      end
    end

    module UpdateCustomMetricOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateCustomMetricOutput, context: context)
        type = Types::UpdateCustomMetricOutput.new
        type.metric_name = params[:metric_name]
        type.metric_arn = params[:metric_arn]
        type.metric_type = params[:metric_type]
        type.display_name = params[:display_name]
        type.creation_date = params[:creation_date]
        type.last_modified_date = params[:last_modified_date]
        type
      end
    end

    module UpdateDeviceCertificateParams
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDeviceCertificateParams, context: context)
        type = Types::UpdateDeviceCertificateParams.new
        type.action = params[:action]
        type
      end
    end

    module UpdateDimensionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDimensionInput, context: context)
        type = Types::UpdateDimensionInput.new
        type.name = params[:name]
        type.string_values = DimensionStringValues.build(params[:string_values], context: "#{context}[:string_values]") unless params[:string_values].nil?
        type
      end
    end

    module UpdateDimensionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDimensionOutput, context: context)
        type = Types::UpdateDimensionOutput.new
        type.name = params[:name]
        type.arn = params[:arn]
        type.type = params[:type]
        type.string_values = DimensionStringValues.build(params[:string_values], context: "#{context}[:string_values]") unless params[:string_values].nil?
        type.creation_date = params[:creation_date]
        type.last_modified_date = params[:last_modified_date]
        type
      end
    end

    module UpdateDomainConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDomainConfigurationInput, context: context)
        type = Types::UpdateDomainConfigurationInput.new
        type.domain_configuration_name = params[:domain_configuration_name]
        type.authorizer_config = AuthorizerConfig.build(params[:authorizer_config], context: "#{context}[:authorizer_config]") unless params[:authorizer_config].nil?
        type.domain_configuration_status = params[:domain_configuration_status]
        type.remove_authorizer_config = params[:remove_authorizer_config]
        type
      end
    end

    module UpdateDomainConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDomainConfigurationOutput, context: context)
        type = Types::UpdateDomainConfigurationOutput.new
        type.domain_configuration_name = params[:domain_configuration_name]
        type.domain_configuration_arn = params[:domain_configuration_arn]
        type
      end
    end

    module UpdateDynamicThingGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDynamicThingGroupInput, context: context)
        type = Types::UpdateDynamicThingGroupInput.new
        type.thing_group_name = params[:thing_group_name]
        type.thing_group_properties = ThingGroupProperties.build(params[:thing_group_properties], context: "#{context}[:thing_group_properties]") unless params[:thing_group_properties].nil?
        type.expected_version = params[:expected_version]
        type.index_name = params[:index_name]
        type.query_string = params[:query_string]
        type.query_version = params[:query_version]
        type
      end
    end

    module UpdateDynamicThingGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDynamicThingGroupOutput, context: context)
        type = Types::UpdateDynamicThingGroupOutput.new
        type.version = params[:version]
        type
      end
    end

    module UpdateEventConfigurationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateEventConfigurationsInput, context: context)
        type = Types::UpdateEventConfigurationsInput.new
        type.event_configurations = EventConfigurations.build(params[:event_configurations], context: "#{context}[:event_configurations]") unless params[:event_configurations].nil?
        type
      end
    end

    module UpdateEventConfigurationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateEventConfigurationsOutput, context: context)
        type = Types::UpdateEventConfigurationsOutput.new
        type
      end
    end

    module UpdateFleetMetricInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFleetMetricInput, context: context)
        type = Types::UpdateFleetMetricInput.new
        type.metric_name = params[:metric_name]
        type.query_string = params[:query_string]
        type.aggregation_type = AggregationType.build(params[:aggregation_type], context: "#{context}[:aggregation_type]") unless params[:aggregation_type].nil?
        type.period = params[:period]
        type.aggregation_field = params[:aggregation_field]
        type.description = params[:description]
        type.query_version = params[:query_version]
        type.index_name = params[:index_name]
        type.unit = params[:unit]
        type.expected_version = params[:expected_version]
        type
      end
    end

    module UpdateFleetMetricOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFleetMetricOutput, context: context)
        type = Types::UpdateFleetMetricOutput.new
        type
      end
    end

    module UpdateIndexingConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateIndexingConfigurationInput, context: context)
        type = Types::UpdateIndexingConfigurationInput.new
        type.thing_indexing_configuration = ThingIndexingConfiguration.build(params[:thing_indexing_configuration], context: "#{context}[:thing_indexing_configuration]") unless params[:thing_indexing_configuration].nil?
        type.thing_group_indexing_configuration = ThingGroupIndexingConfiguration.build(params[:thing_group_indexing_configuration], context: "#{context}[:thing_group_indexing_configuration]") unless params[:thing_group_indexing_configuration].nil?
        type
      end
    end

    module UpdateIndexingConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateIndexingConfigurationOutput, context: context)
        type = Types::UpdateIndexingConfigurationOutput.new
        type
      end
    end

    module UpdateJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateJobInput, context: context)
        type = Types::UpdateJobInput.new
        type.job_id = params[:job_id]
        type.description = params[:description]
        type.presigned_url_config = PresignedUrlConfig.build(params[:presigned_url_config], context: "#{context}[:presigned_url_config]") unless params[:presigned_url_config].nil?
        type.job_executions_rollout_config = JobExecutionsRolloutConfig.build(params[:job_executions_rollout_config], context: "#{context}[:job_executions_rollout_config]") unless params[:job_executions_rollout_config].nil?
        type.abort_config = AbortConfig.build(params[:abort_config], context: "#{context}[:abort_config]") unless params[:abort_config].nil?
        type.timeout_config = TimeoutConfig.build(params[:timeout_config], context: "#{context}[:timeout_config]") unless params[:timeout_config].nil?
        type.namespace_id = params[:namespace_id]
        type.job_executions_retry_config = JobExecutionsRetryConfig.build(params[:job_executions_retry_config], context: "#{context}[:job_executions_retry_config]") unless params[:job_executions_retry_config].nil?
        type
      end
    end

    module UpdateJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateJobOutput, context: context)
        type = Types::UpdateJobOutput.new
        type
      end
    end

    module UpdateMitigationActionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateMitigationActionInput, context: context)
        type = Types::UpdateMitigationActionInput.new
        type.action_name = params[:action_name]
        type.role_arn = params[:role_arn]
        type.action_params = MitigationActionParams.build(params[:action_params], context: "#{context}[:action_params]") unless params[:action_params].nil?
        type
      end
    end

    module UpdateMitigationActionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateMitigationActionOutput, context: context)
        type = Types::UpdateMitigationActionOutput.new
        type.action_arn = params[:action_arn]
        type.action_id = params[:action_id]
        type
      end
    end

    module UpdateProvisioningTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateProvisioningTemplateInput, context: context)
        type = Types::UpdateProvisioningTemplateInput.new
        type.template_name = params[:template_name]
        type.description = params[:description]
        type.enabled = params[:enabled]
        type.default_version_id = params[:default_version_id]
        type.provisioning_role_arn = params[:provisioning_role_arn]
        type.pre_provisioning_hook = ProvisioningHook.build(params[:pre_provisioning_hook], context: "#{context}[:pre_provisioning_hook]") unless params[:pre_provisioning_hook].nil?
        type.remove_pre_provisioning_hook = params[:remove_pre_provisioning_hook]
        type
      end
    end

    module UpdateProvisioningTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateProvisioningTemplateOutput, context: context)
        type = Types::UpdateProvisioningTemplateOutput.new
        type
      end
    end

    module UpdateRoleAliasInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRoleAliasInput, context: context)
        type = Types::UpdateRoleAliasInput.new
        type.role_alias = params[:role_alias]
        type.role_arn = params[:role_arn]
        type.credential_duration_seconds = params[:credential_duration_seconds]
        type
      end
    end

    module UpdateRoleAliasOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRoleAliasOutput, context: context)
        type = Types::UpdateRoleAliasOutput.new
        type.role_alias = params[:role_alias]
        type.role_alias_arn = params[:role_alias_arn]
        type
      end
    end

    module UpdateScheduledAuditInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateScheduledAuditInput, context: context)
        type = Types::UpdateScheduledAuditInput.new
        type.frequency = params[:frequency]
        type.day_of_month = params[:day_of_month]
        type.day_of_week = params[:day_of_week]
        type.target_check_names = TargetAuditCheckNames.build(params[:target_check_names], context: "#{context}[:target_check_names]") unless params[:target_check_names].nil?
        type.scheduled_audit_name = params[:scheduled_audit_name]
        type
      end
    end

    module UpdateScheduledAuditOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateScheduledAuditOutput, context: context)
        type = Types::UpdateScheduledAuditOutput.new
        type.scheduled_audit_arn = params[:scheduled_audit_arn]
        type
      end
    end

    module UpdateSecurityProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSecurityProfileInput, context: context)
        type = Types::UpdateSecurityProfileInput.new
        type.security_profile_name = params[:security_profile_name]
        type.security_profile_description = params[:security_profile_description]
        type.behaviors = Behaviors.build(params[:behaviors], context: "#{context}[:behaviors]") unless params[:behaviors].nil?
        type.alert_targets = AlertTargets.build(params[:alert_targets], context: "#{context}[:alert_targets]") unless params[:alert_targets].nil?
        type.additional_metrics_to_retain = AdditionalMetricsToRetainList.build(params[:additional_metrics_to_retain], context: "#{context}[:additional_metrics_to_retain]") unless params[:additional_metrics_to_retain].nil?
        type.additional_metrics_to_retain_v2 = AdditionalMetricsToRetainV2List.build(params[:additional_metrics_to_retain_v2], context: "#{context}[:additional_metrics_to_retain_v2]") unless params[:additional_metrics_to_retain_v2].nil?
        type.delete_behaviors = params[:delete_behaviors]
        type.delete_alert_targets = params[:delete_alert_targets]
        type.delete_additional_metrics_to_retain = params[:delete_additional_metrics_to_retain]
        type.expected_version = params[:expected_version]
        type
      end
    end

    module UpdateSecurityProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSecurityProfileOutput, context: context)
        type = Types::UpdateSecurityProfileOutput.new
        type.security_profile_name = params[:security_profile_name]
        type.security_profile_arn = params[:security_profile_arn]
        type.security_profile_description = params[:security_profile_description]
        type.behaviors = Behaviors.build(params[:behaviors], context: "#{context}[:behaviors]") unless params[:behaviors].nil?
        type.alert_targets = AlertTargets.build(params[:alert_targets], context: "#{context}[:alert_targets]") unless params[:alert_targets].nil?
        type.additional_metrics_to_retain = AdditionalMetricsToRetainList.build(params[:additional_metrics_to_retain], context: "#{context}[:additional_metrics_to_retain]") unless params[:additional_metrics_to_retain].nil?
        type.additional_metrics_to_retain_v2 = AdditionalMetricsToRetainV2List.build(params[:additional_metrics_to_retain_v2], context: "#{context}[:additional_metrics_to_retain_v2]") unless params[:additional_metrics_to_retain_v2].nil?
        type.version = params[:version]
        type.creation_date = params[:creation_date]
        type.last_modified_date = params[:last_modified_date]
        type
      end
    end

    module UpdateStreamInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateStreamInput, context: context)
        type = Types::UpdateStreamInput.new
        type.stream_id = params[:stream_id]
        type.description = params[:description]
        type.files = StreamFiles.build(params[:files], context: "#{context}[:files]") unless params[:files].nil?
        type.role_arn = params[:role_arn]
        type
      end
    end

    module UpdateStreamOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateStreamOutput, context: context)
        type = Types::UpdateStreamOutput.new
        type.stream_id = params[:stream_id]
        type.stream_arn = params[:stream_arn]
        type.description = params[:description]
        type.stream_version = params[:stream_version]
        type
      end
    end

    module UpdateThingGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateThingGroupInput, context: context)
        type = Types::UpdateThingGroupInput.new
        type.thing_group_name = params[:thing_group_name]
        type.thing_group_properties = ThingGroupProperties.build(params[:thing_group_properties], context: "#{context}[:thing_group_properties]") unless params[:thing_group_properties].nil?
        type.expected_version = params[:expected_version]
        type
      end
    end

    module UpdateThingGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateThingGroupOutput, context: context)
        type = Types::UpdateThingGroupOutput.new
        type.version = params[:version]
        type
      end
    end

    module UpdateThingGroupsForThingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateThingGroupsForThingInput, context: context)
        type = Types::UpdateThingGroupsForThingInput.new
        type.thing_name = params[:thing_name]
        type.thing_groups_to_add = ThingGroupList.build(params[:thing_groups_to_add], context: "#{context}[:thing_groups_to_add]") unless params[:thing_groups_to_add].nil?
        type.thing_groups_to_remove = ThingGroupList.build(params[:thing_groups_to_remove], context: "#{context}[:thing_groups_to_remove]") unless params[:thing_groups_to_remove].nil?
        type.override_dynamic_groups = params[:override_dynamic_groups]
        type
      end
    end

    module UpdateThingGroupsForThingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateThingGroupsForThingOutput, context: context)
        type = Types::UpdateThingGroupsForThingOutput.new
        type
      end
    end

    module UpdateThingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateThingInput, context: context)
        type = Types::UpdateThingInput.new
        type.thing_name = params[:thing_name]
        type.thing_type_name = params[:thing_type_name]
        type.attribute_payload = AttributePayload.build(params[:attribute_payload], context: "#{context}[:attribute_payload]") unless params[:attribute_payload].nil?
        type.expected_version = params[:expected_version]
        type.remove_thing_type = params[:remove_thing_type]
        type
      end
    end

    module UpdateThingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateThingOutput, context: context)
        type = Types::UpdateThingOutput.new
        type
      end
    end

    module UpdateTopicRuleDestinationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTopicRuleDestinationInput, context: context)
        type = Types::UpdateTopicRuleDestinationInput.new
        type.arn = params[:arn]
        type.status = params[:status]
        type
      end
    end

    module UpdateTopicRuleDestinationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTopicRuleDestinationOutput, context: context)
        type = Types::UpdateTopicRuleDestinationOutput.new
        type
      end
    end

    module ValidateSecurityProfileBehaviorsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidateSecurityProfileBehaviorsInput, context: context)
        type = Types::ValidateSecurityProfileBehaviorsInput.new
        type.behaviors = Behaviors.build(params[:behaviors], context: "#{context}[:behaviors]") unless params[:behaviors].nil?
        type
      end
    end

    module ValidateSecurityProfileBehaviorsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidateSecurityProfileBehaviorsOutput, context: context)
        type = Types::ValidateSecurityProfileBehaviorsOutput.new
        type.valid = params[:valid]
        type.validation_errors = ValidationErrors.build(params[:validation_errors], context: "#{context}[:validation_errors]") unless params[:validation_errors].nil?
        type
      end
    end

    module ValidationError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationError, context: context)
        type = Types::ValidationError.new
        type.error_message = params[:error_message]
        type
      end
    end

    module ValidationErrors
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ValidationError.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module VersionConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VersionConflictException, context: context)
        type = Types::VersionConflictException.new
        type.message = params[:message]
        type
      end
    end

    module VersionsLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VersionsLimitExceededException, context: context)
        type = Types::VersionsLimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module ViolationEvent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ViolationEvent, context: context)
        type = Types::ViolationEvent.new
        type.violation_id = params[:violation_id]
        type.thing_name = params[:thing_name]
        type.security_profile_name = params[:security_profile_name]
        type.behavior = Behavior.build(params[:behavior], context: "#{context}[:behavior]") unless params[:behavior].nil?
        type.metric_value = MetricValue.build(params[:metric_value], context: "#{context}[:metric_value]") unless params[:metric_value].nil?
        type.violation_event_additional_info = ViolationEventAdditionalInfo.build(params[:violation_event_additional_info], context: "#{context}[:violation_event_additional_info]") unless params[:violation_event_additional_info].nil?
        type.violation_event_type = params[:violation_event_type]
        type.verification_state = params[:verification_state]
        type.verification_state_description = params[:verification_state_description]
        type.violation_event_time = params[:violation_event_time]
        type
      end
    end

    module ViolationEventAdditionalInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ViolationEventAdditionalInfo, context: context)
        type = Types::ViolationEventAdditionalInfo.new
        type.confidence_level = params[:confidence_level]
        type
      end
    end

    module ViolationEventOccurrenceRange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ViolationEventOccurrenceRange, context: context)
        type = Types::ViolationEventOccurrenceRange.new
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type
      end
    end

    module ViolationEvents
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ViolationEvent.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module VpcDestinationConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VpcDestinationConfiguration, context: context)
        type = Types::VpcDestinationConfiguration.new
        type.subnet_ids = SubnetIdList.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type.security_groups = SecurityGroupList.build(params[:security_groups], context: "#{context}[:security_groups]") unless params[:security_groups].nil?
        type.vpc_id = params[:vpc_id]
        type.role_arn = params[:role_arn]
        type
      end
    end

    module VpcDestinationProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VpcDestinationProperties, context: context)
        type = Types::VpcDestinationProperties.new
        type.subnet_ids = SubnetIdList.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type.security_groups = SecurityGroupList.build(params[:security_groups], context: "#{context}[:security_groups]") unless params[:security_groups].nil?
        type.vpc_id = params[:vpc_id]
        type.role_arn = params[:role_arn]
        type
      end
    end

    module VpcDestinationSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VpcDestinationSummary, context: context)
        type = Types::VpcDestinationSummary.new
        type.subnet_ids = SubnetIdList.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type.security_groups = SecurityGroupList.build(params[:security_groups], context: "#{context}[:security_groups]") unless params[:security_groups].nil?
        type.vpc_id = params[:vpc_id]
        type.role_arn = params[:role_arn]
        type
      end
    end

  end
end
