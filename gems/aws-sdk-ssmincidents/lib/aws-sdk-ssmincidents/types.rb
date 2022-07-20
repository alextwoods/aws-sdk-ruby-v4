# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SSMIncidents
  module Types

    # <p>You don't have sufficient access to perform this operation.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AccessDeniedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The action that starts at the beginning of an incident. The response plan defines the
    #          action.</p>
    #
    class Action < Hearth::Union
      # <p>The Systems Manager automation document to start as the runbook at the beginning of
      #          the incident.</p>
      #
      class SsmAutomation < Action
        def to_h
          { ssm_automation: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::SSMIncidents::Types::SsmAutomation #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < Action
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::SSMIncidents::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # <p>Defines the Amazon Web Services Region and KMS key to add to the
    #          replication set. </p>
    #
    # @!attribute region_name
    #   <p>The Amazon Web Services Region name to add to the replication set.</p>
    #
    #   Tags: ["logs_investigations"]
    #
    #   @return [String]
    #
    # @!attribute sse_kms_key_id
    #   <p>The KMS key ID to use to encrypt your replication set.</p>
    #
    #   @return [String]
    #
    AddRegionAction = ::Struct.new(
      :region_name,
      :sse_kms_key_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Use the AttributeValueList to filter by string or integer values.</p>
    #
    class AttributeValueList < Hearth::Union
      # <p>The list of string values that the filter matches.</p>
      #
      class StringValues < AttributeValueList
        def to_h
          { string_values: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::SSMIncidents::Types::StringValues #{__getobj__ || 'nil'}>"
        end
      end

      # <p>The list of integer values that the filter matches.</p>
      #
      class IntegerValues < AttributeValueList
        def to_h
          { integer_values: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::SSMIncidents::Types::IntegerValues #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < AttributeValueList
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::SSMIncidents::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # <p>The Systems Manager automation document process to start as the runbook at the
    #          beginning of the incident.</p>
    #
    class AutomationExecution < Hearth::Union
      # <p>The Amazon Resource Name (ARN) of the automation process.</p>
      #
      # Tags: ["logs_investigations"]
      #
      class SsmExecutionArn < AutomationExecution
        def to_h
          { ssm_execution_arn: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::SSMIncidents::Types::SsmExecutionArn #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < AutomationExecution
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::SSMIncidents::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # <p>The Chatbot chat channel used for collaboration during an
    #          incident.</p>
    #
    class ChatChannel < Hearth::Union
      # <p>Used to remove the chat channel from an incident record or response plan.</p>
      #
      class Empty < ChatChannel
        def to_h
          { empty: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::SSMIncidents::Types::Empty #{__getobj__ || 'nil'}>"
        end
      end

      # <p>The Amazon SNS targets that Chatbot uses to notify the chat channel
      #          of updates to an incident. You can also make updates to the incident through the chat
      #          channel by using the Amazon SNS topics. </p>
      #
      class ChatbotSns < ChatChannel
        def to_h
          { chatbot_sns: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::SSMIncidents::Types::ChatbotSns #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < ChatChannel
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::SSMIncidents::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # <p>A conditional statement with which to compare a value, after a timestamp, before a
    #          timestamp, or equal to a string or integer. If multiple conditions are specified, the
    #          conditionals become an <code>AND</code>ed statement. If multiple values are specified for a
    #          conditional, the values are <code>OR</code>d.</p>
    #
    class Condition < Hearth::Union
      # <p>Before the specified timestamp</p>
      #
      # Tags: ["logs_investigations"]
      #
      class Before < Condition
        def to_h
          { before: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::SSMIncidents::Types::Before #{__getobj__ || 'nil'}>"
        end
      end

      # <p>After the specified timestamp.</p>
      #
      # Tags: ["logs_investigations"]
      #
      class After < Condition
        def to_h
          { after: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::SSMIncidents::Types::After #{__getobj__ || 'nil'}>"
        end
      end

      # <p>The value is equal to the provided string or integer. </p>
      #
      class Equals < Condition
        def to_h
          { equals: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::SSMIncidents::Types::Equals #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < Condition
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::SSMIncidents::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # <p>Updating or deleting a resource causes an inconsistent state.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_identifier
    #   The identifier of the requested resource
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   The resource type
    #
    #   Enum, one of: ["RESPONSE_PLAN", "INCIDENT_RECORD", "TIMELINE_EVENT", "REPLICATION_SET", "RESOURCE_POLICY"]
    #
    #   @return [String]
    #
    # @!attribute retry_after
    #   If present in the output, the operation can be retried after this time
    #
    #   @return [Time]
    #
    ConflictException = ::Struct.new(
      :message,
      :resource_identifier,
      :resource_type,
      :retry_after,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute regions
    #   <p>The Regions that Incident Manager replicates your data to. You can have up to three Regions
    #               in your replication set.</p>
    #
    #   @return [Hash<String, RegionMapInputValue>]
    #
    # @!attribute client_token
    #   <p>A token ensuring that the operation is called only once with the specified
    #               details.</p>
    #
    #   Tags: ["logs_investigations"]
    #
    #   @return [String]
    #
    CreateReplicationSetInput = ::Struct.new(
      :regions,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the replication set. </p>
    #
    #   @return [String]
    #
    CreateReplicationSetOutput = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute client_token
    #   <p>A token ensuring that the operation is called only once with the specified
    #               details.</p>
    #
    #   Tags: ["logs_investigations"]
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The short format name of the response plan. Can't include spaces.</p>
    #
    #   Tags: ["logs_investigations"]
    #
    #   @return [String]
    #
    # @!attribute display_name
    #   <p>The long format of the response plan name. This field can contain spaces.</p>
    #
    #   @return [String]
    #
    # @!attribute incident_template
    #   <p>Details used to create an incident when using this response plan.</p>
    #
    #   @return [IncidentTemplate]
    #
    # @!attribute chat_channel
    #   <p>The Chatbot chat channel used for collaboration during an
    #               incident.</p>
    #
    #   @return [ChatChannel]
    #
    # @!attribute engagements
    #   <p>The contacts and escalation plans that the response plan engages during an
    #               incident.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute actions
    #   <p>The actions that the response plan starts at the beginning of an incident.</p>
    #
    #   @return [Array<Action>]
    #
    # @!attribute tags
    #   <p>A list of tags that you are adding to the response plan.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateResponsePlanInput = ::Struct.new(
      :client_token,
      :name,
      :display_name,
      :incident_template,
      :chat_channel,
      :engagements,
      :actions,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the response plan.</p>
    #
    #   @return [String]
    #
    CreateResponsePlanOutput = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute client_token
    #   <p>A token ensuring that the action is called only once with the specified
    #               details.</p>
    #
    #   Tags: ["logs_investigations"]
    #
    #   @return [String]
    #
    # @!attribute incident_record_arn
    #   <p>The Amazon Resource Name (ARN) of the incident record to which the event will be
    #               added.</p>
    #
    #   Tags: ["logs_required"]
    #
    #   @return [String]
    #
    # @!attribute event_time
    #   <p>The time that the event occurred.</p>
    #
    #   Tags: ["logs_investigations"]
    #
    #   @return [Time]
    #
    # @!attribute event_type
    #   <p>The type of the event. You can create timeline events of type <code>Custom
    #                   Event</code>.</p>
    #
    #   Tags: ["logs_investigations"]
    #
    #   @return [String]
    #
    # @!attribute event_data
    #   <p>A short description of the event.</p>
    #
    #   @return [String]
    #
    CreateTimelineEventInput = ::Struct.new(
      :client_token,
      :incident_record_arn,
      :event_time,
      :event_type,
      :event_data,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute incident_record_arn
    #   <p>The ARN of the incident record that you added the event to.</p>
    #
    #   @return [String]
    #
    # @!attribute event_id
    #   <p>The ID of the event for easy reference later. </p>
    #
    #   @return [String]
    #
    CreateTimelineEventOutput = ::Struct.new(
      :incident_record_arn,
      :event_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the incident record you are deleting.</p>
    #
    #   Tags: ["logs_required"]
    #
    #   @return [String]
    #
    DeleteIncidentRecordInput = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteIncidentRecordOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Defines the information about the Amazon Web Services Region you're deleting from your
    #          replication set.</p>
    #
    # @!attribute region_name
    #   <p>The name of the Amazon Web Services Region you're deleting from the replication
    #            set.</p>
    #
    #   Tags: ["logs_investigations"]
    #
    #   @return [String]
    #
    DeleteRegionAction = ::Struct.new(
      :region_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the replication set you're deleting.</p>
    #
    #   Tags: ["logs_required"]
    #
    #   @return [String]
    #
    DeleteReplicationSetInput = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteReplicationSetOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource you're deleting the policy from.</p>
    #
    #   Tags: ["logs_required"]
    #
    #   @return [String]
    #
    # @!attribute policy_id
    #   <p>The ID of the resource policy you're deleting.</p>
    #
    #   Tags: ["logs_investigation"]
    #
    #   @return [String]
    #
    DeleteResourcePolicyInput = ::Struct.new(
      :resource_arn,
      :policy_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteResourcePolicyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the response plan.</p>
    #
    #   Tags: ["logs_required"]
    #
    #   @return [String]
    #
    DeleteResponsePlanInput = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteResponsePlanOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute incident_record_arn
    #   <p>The Amazon Resource Name (ARN) of the incident that includes the timeline
    #               event.</p>
    #
    #   Tags: ["logs_required"]
    #
    #   @return [String]
    #
    # @!attribute event_id
    #   <p>The ID of the event you are updating. You can find this by using
    #                   <code>ListTimelineEvents</code>.</p>
    #
    #   Tags: ["logs_required"]
    #
    #   @return [String]
    #
    DeleteTimelineEventInput = ::Struct.new(
      :incident_record_arn,
      :event_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteTimelineEventOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The dynamic SSM parameter value.</p>
    #
    class DynamicSsmParameterValue < Hearth::Union
      # <p>Variable dynamic parameters. A parameter value is determined when an incident is created.</p>
      #
      # Enum, one of: ["INCIDENT_RECORD_ARN", "INVOLVED_RESOURCES"]
      #
      # Tags: ["logs_investigations"]
      #
      class Variable < DynamicSsmParameterValue
        def to_h
          { variable: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::SSMIncidents::Types::Variable #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < DynamicSsmParameterValue
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::SSMIncidents::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # <p>Used to remove the chat channel from an incident record or response plan.</p>
    #
    EmptyChatChannel = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about a timeline event during an incident.</p>
    #
    # @!attribute incident_record_arn
    #   <p>The Amazon Resource Name (ARN) of the incident that the event happened during.</p>
    #
    #   @return [String]
    #
    # @!attribute event_id
    #   <p>The timeline event ID.</p>
    #
    #   @return [String]
    #
    # @!attribute event_time
    #   <p>The time that the event occurred.</p>
    #
    #   @return [Time]
    #
    # @!attribute event_updated_time
    #   <p>The time that the timeline event was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute event_type
    #   <p>The type of event. The timeline event must be <code>Custom Event</code>.</p>
    #
    #   @return [String]
    #
    EventSummary = ::Struct.new(
      :incident_record_arn,
      :event_id,
      :event_time,
      :event_updated_time,
      :event_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Filter the selection by using a condition.</p>
    #
    # @!attribute key
    #   <p>The key that you're filtering on.</p>
    #
    #   Tags: ["logs_investigations"]
    #
    #   @return [String]
    #
    # @!attribute condition
    #   <p>The condition accepts before or after a specified time, equal to a string, or equal to
    #            an integer.</p>
    #
    #   @return [Condition]
    #
    Filter = ::Struct.new(
      :key,
      :condition,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the incident record.</p>
    #
    #   Tags: ["logs_required"]
    #
    #   @return [String]
    #
    GetIncidentRecordInput = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute incident_record
    #   <p>Details the structure of the incident record.</p>
    #
    #   @return [IncidentRecord]
    #
    GetIncidentRecordOutput = ::Struct.new(
      :incident_record,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the replication set you want to retrieve.</p>
    #
    #   Tags: ["logs_required"]
    #
    #   @return [String]
    #
    GetReplicationSetInput = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute replication_set
    #   <p>Details of the replication set.</p>
    #
    #   @return [ReplicationSet]
    #
    GetReplicationSetOutput = ::Struct.new(
      :replication_set,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the response plan with the attached resource policy. </p>
    #
    #   Tags: ["logs_required"]
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of resource policies to display per page of results.</p>
    #
    #   Tags: ["logs_investigations"]
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The pagination token to continue to the next page of results.</p>
    #
    #   Tags: ["logs_investigations"]
    #
    #   @return [String]
    #
    GetResourcePoliciesInput = ::Struct.new(
      :resource_arn,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_policies
    #   <p>Details about the resource policy attached to the response plan.</p>
    #
    #   @return [Array<ResourcePolicy>]
    #
    # @!attribute next_token
    #   <p>The pagination token to continue to the next page of results.</p>
    #
    #   @return [String]
    #
    GetResourcePoliciesOutput = ::Struct.new(
      :resource_policies,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the response plan.</p>
    #
    #   Tags: ["logs_required"]
    #
    #   @return [String]
    #
    GetResponsePlanInput = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the response plan.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The short format name of the response plan. The name can't contain spaces.</p>
    #
    #   @return [String]
    #
    # @!attribute display_name
    #   <p>The long format name of the response plan. Can contain spaces.</p>
    #
    #   @return [String]
    #
    # @!attribute incident_template
    #   <p>Details used to create the incident when using this response plan.</p>
    #
    #   @return [IncidentTemplate]
    #
    # @!attribute chat_channel
    #   <p>The Chatbot chat channel used for collaboration during an
    #               incident.</p>
    #
    #   @return [ChatChannel]
    #
    # @!attribute engagements
    #   <p>The contacts and escalation plans that the response plan engages during an
    #               incident.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute actions
    #   <p>The actions that this response plan takes at the beginning of the incident.</p>
    #
    #   @return [Array<Action>]
    #
    GetResponsePlanOutput = ::Struct.new(
      :arn,
      :name,
      :display_name,
      :incident_template,
      :chat_channel,
      :engagements,
      :actions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute incident_record_arn
    #   <p>The Amazon Resource Name (ARN) of the incident that includes the timeline
    #               event.</p>
    #
    #   Tags: ["logs_required"]
    #
    #   @return [String]
    #
    # @!attribute event_id
    #   <p>The ID of the event. You can get an event's ID when you create it, or by using
    #                   <code>ListTimelineEvents</code>.</p>
    #
    #   Tags: ["logs_required"]
    #
    #   @return [String]
    #
    GetTimelineEventInput = ::Struct.new(
      :incident_record_arn,
      :event_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute event
    #   <p>Details about the timeline event.</p>
    #
    #   @return [TimelineEvent]
    #
    GetTimelineEventOutput = ::Struct.new(
      :event,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The record of the incident that's created when an incident occurs.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the incident record.</p>
    #
    #   @return [String]
    #
    # @!attribute title
    #   <p>The title of the incident.</p>
    #
    #   @return [String]
    #
    # @!attribute summary
    #   <p>The summary of the incident. The summary is a brief synopsis of what occurred, what's
    #            currently happening, and context of the incident.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the incident.</p>
    #
    #   Enum, one of: ["OPEN", "RESOLVED"]
    #
    #   @return [String]
    #
    # @!attribute impact
    #   <p>The impact of the incident on customers and applications.</p>
    #
    #   @return [Integer]
    #
    # @!attribute creation_time
    #   <p>The time that Incident Manager created the incident record.</p>
    #
    #   @return [Time]
    #
    # @!attribute resolved_time
    #   <p>The time at which the incident was resolved. This appears as a timeline event.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modified_time
    #   <p>The time at which the incident was most recently modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modified_by
    #   <p>Who modified the incident most recently.</p>
    #
    #   @return [String]
    #
    # @!attribute automation_executions
    #   <p>The runbook, or automation document, that's run at the beginning of the incident.</p>
    #
    #   @return [Array<AutomationExecution>]
    #
    # @!attribute incident_record_source
    #   <p>Details about the action that started the incident.</p>
    #
    #   @return [IncidentRecordSource]
    #
    # @!attribute dedupe_string
    #   <p>The string Incident Manager uses to prevent duplicate incidents from being created by the
    #            same incident in the same account.</p>
    #
    #   @return [String]
    #
    # @!attribute chat_channel
    #   <p>The chat channel used for collaboration during an incident.</p>
    #
    #   @return [ChatChannel]
    #
    # @!attribute notification_targets
    #   <p>The Amazon SNS targets that are notified when updates are made to an
    #            incident.</p>
    #
    #   @return [Array<NotificationTargetItem>]
    #
    IncidentRecord = ::Struct.new(
      :arn,
      :title,
      :summary,
      :status,
      :impact,
      :creation_time,
      :resolved_time,
      :last_modified_time,
      :last_modified_by,
      :automation_executions,
      :incident_record_source,
      :dedupe_string,
      :chat_channel,
      :notification_targets,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about what created the incident record and when it was created.</p>
    #
    # @!attribute created_by
    #   <p>The principal that started the incident.</p>
    #
    #   Tags: ["logs_investigations"]
    #
    #   @return [String]
    #
    # @!attribute invoked_by
    #   <p>The service principal that assumed the role specified in <code>createdBy</code>. If no
    #            service principal assumed the role this will be left blank.</p>
    #
    #   Tags: ["logs_investigations"]
    #
    #   @return [String]
    #
    # @!attribute resource_arn
    #   <p>The resource that caused the incident to be created.</p>
    #
    #   Tags: ["logs_investigations"]
    #
    #   @return [String]
    #
    # @!attribute source
    #   <p>The service that started the incident. This can be manually created from Incident Manager,
    #            automatically created using an Amazon CloudWatch alarm, or Amazon EventBridge
    #            event.</p>
    #
    #   Tags: ["logs_investigations"]
    #
    #   @return [String]
    #
    IncidentRecordSource = ::Struct.new(
      :created_by,
      :invoked_by,
      :resource_arn,
      :source,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for IncidentRecordStatus
    #
    module IncidentRecordStatus
      # No documentation available.
      #
      OPEN = "OPEN"

      # No documentation available.
      #
      RESOLVED = "RESOLVED"
    end

    # <p>Details describing an incident record.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the incident.</p>
    #
    #   @return [String]
    #
    # @!attribute title
    #   <p>The title of the incident. This value is either provided by the response plan or
    #            overwritten on creation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the incident.</p>
    #
    #   Enum, one of: ["OPEN", "RESOLVED"]
    #
    #   @return [String]
    #
    # @!attribute impact
    #   <p>Defines the impact to customers and applications.</p>
    #
    #   @return [Integer]
    #
    # @!attribute creation_time
    #   <p>The time the incident was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute resolved_time
    #   <p>The time the incident was resolved.</p>
    #
    #   @return [Time]
    #
    # @!attribute incident_record_source
    #   <p>What caused Incident Manager to create the incident.</p>
    #
    #   @return [IncidentRecordSource]
    #
    IncidentRecordSummary = ::Struct.new(
      :arn,
      :title,
      :status,
      :impact,
      :creation_time,
      :resolved_time,
      :incident_record_source,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Basic details used in creating a response plan. The response plan is then used to create
    #          an incident record.</p>
    #
    # @!attribute title
    #   <p>The title of the incident. </p>
    #
    #   @return [String]
    #
    # @!attribute impact
    #   <p>The impact of the incident on your customers and applications. </p>
    #
    #   @return [Integer]
    #
    # @!attribute summary
    #   <p>The summary of the incident. The summary is a brief synopsis of what occurred, what's
    #            currently happening, and context.</p>
    #
    #   @return [String]
    #
    # @!attribute dedupe_string
    #   <p>Used to stop Incident Manager from creating multiple incident records for the same incident.
    #         </p>
    #
    #   Tags: ["logs_investigations"]
    #
    #   @return [String]
    #
    # @!attribute notification_targets
    #   <p>The Amazon SNS targets that are notified when updates are made to an
    #            incident.</p>
    #
    #   @return [Array<NotificationTargetItem>]
    #
    IncidentTemplate = ::Struct.new(
      :title,
      :impact,
      :summary,
      :dedupe_string,
      :notification_targets,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request processing has failed because of an unknown error, exception or
    #       failure.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InternalServerException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details and type of a related item.</p>
    #
    # @!attribute value
    #   <p>Details about the related item.</p>
    #
    #   @return [ItemValue]
    #
    # @!attribute type
    #   <p>The type of related item. </p>
    #
    #   Enum, one of: ["ANALYSIS", "INCIDENT", "METRIC", "PARENT", "ATTACHMENT", "OTHER", "AUTOMATION", "INVOLVED_RESOURCE"]
    #
    #   Tags: ["logs_investigations"]
    #
    #   @return [String]
    #
    ItemIdentifier = ::Struct.new(
      :value,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ItemType
    #
    module ItemType
      # No documentation available.
      #
      ANALYSIS = "ANALYSIS"

      # No documentation available.
      #
      INCIDENT = "INCIDENT"

      # No documentation available.
      #
      METRIC = "METRIC"

      # No documentation available.
      #
      PARENT = "PARENT"

      # No documentation available.
      #
      ATTACHMENT = "ATTACHMENT"

      # No documentation available.
      #
      OTHER = "OTHER"

      # No documentation available.
      #
      AUTOMATION = "AUTOMATION"

      # No documentation available.
      #
      INVOLVED_RESOURCE = "INVOLVED_RESOURCE"
    end

    # <p>Describes a related item.</p>
    #
    class ItemValue < Hearth::Union
      # <p>The Amazon Resource Name (ARN) of the related item, if the related item is an Amazon
      #          resource.</p>
      #
      # Tags: ["logs_investigations"]
      #
      class Arn < ItemValue
        def to_h
          { arn: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::SSMIncidents::Types::Arn #{__getobj__ || 'nil'}>"
        end
      end

      # <p>The URL, if the related item is a non-Amazon Web Services resource.</p>
      #
      class Url < ItemValue
        def to_h
          { url: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::SSMIncidents::Types::Url #{__getobj__ || 'nil'}>"
        end
      end

      # <p>The metric definition, if the related item is a metric in Amazon CloudWatch.</p>
      #
      class MetricDefinition < ItemValue
        def to_h
          { metric_definition: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::SSMIncidents::Types::MetricDefinition #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < ItemValue
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::SSMIncidents::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # @!attribute filters
    #   <p>Filters the list of incident records through which you are searching. You can filter
    #               on the following keys:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>creationTime</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>impact</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>status</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>createdBy</code>
    #                  </p>
    #               </li>
    #            </ul>
    #           <p>Note the following when deciding how to use Filters:</p>
    #           <ul>
    #               <li>
    #                   <p>If you don't specify a Filter, the response includes all incident
    #                       records.</p>
    #               </li>
    #               <li>
    #                   <p>If you specify more than one filter in a single request, the response returns
    #                       incident records that match all filters.</p>
    #               </li>
    #               <li>
    #                   <p>If you specify a filter with more than one value, the response returns
    #                       incident records that match any of the values provided.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute max_results
    #   <p>The maximum number of results per page.</p>
    #
    #   Tags: ["logs_investigations"]
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The pagination token to continue to the next page of results.</p>
    #
    #   Tags: ["logs_investigations"]
    #
    #   @return [String]
    #
    ListIncidentRecordsInput = ::Struct.new(
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute incident_record_summaries
    #   <p>The details of each listed incident record.</p>
    #
    #   @return [Array<IncidentRecordSummary>]
    #
    # @!attribute next_token
    #   <p>The pagination token to continue to the next page of results.</p>
    #
    #   @return [String]
    #
    ListIncidentRecordsOutput = ::Struct.new(
      :incident_record_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute incident_record_arn
    #   <p>The Amazon Resource Name (ARN) of the incident record containing the listed related
    #               items.</p>
    #
    #   Tags: ["logs_required"]
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of related items per page.</p>
    #
    #   Tags: ["logs_investigations"]
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The pagination token to continue to the next page of results.</p>
    #
    #   Tags: ["logs_investigations"]
    #
    #   @return [String]
    #
    ListRelatedItemsInput = ::Struct.new(
      :incident_record_arn,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute related_items
    #   <p>Details about each related item.</p>
    #
    #   @return [Array<RelatedItem>]
    #
    # @!attribute next_token
    #   <p>The pagination token to continue to the next page of results.</p>
    #
    #   @return [String]
    #
    ListRelatedItemsOutput = ::Struct.new(
      :related_items,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results per page. </p>
    #
    #   Tags: ["logs_investigations"]
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The pagination token to continue to the next page of results.</p>
    #
    #   Tags: ["logs_investigations"]
    #
    #   @return [String]
    #
    ListReplicationSetsInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute replication_set_arns
    #   <p>The Amazon Resource Name (ARN) of the list replication set.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The pagination token to continue to the next page of results.</p>
    #
    #   @return [String]
    #
    ListReplicationSetsOutput = ::Struct.new(
      :replication_set_arns,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of response plans per page.</p>
    #
    #   Tags: ["logs_investigations"]
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The pagination token to continue to the next page of results.</p>
    #
    #   Tags: ["logs_investigations"]
    #
    #   @return [String]
    #
    ListResponsePlansInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute response_plan_summaries
    #   <p>Details of each response plan.</p>
    #
    #   @return [Array<ResponsePlanSummary>]
    #
    # @!attribute next_token
    #   <p>The pagination token to continue to the next page of results.</p>
    #
    #   @return [String]
    #
    ListResponsePlansOutput = ::Struct.new(
      :response_plan_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the response plan.</p>
    #
    #   Tags: ["logs_required"]
    #
    #   @return [String]
    #
    ListTagsForResourceInput = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tags
    #   <p>A list of tags for the response plan.</p>
    #
    #   @return [Hash<String, String>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute incident_record_arn
    #   <p>The Amazon Resource Name (ARN) of the incident that includes the timeline
    #               event.</p>
    #
    #   Tags: ["logs_required"]
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>Filters the timeline events based on the provided conditional values. You can filter
    #               timeline events using the following keys:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>eventTime</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>eventType</code>
    #                  </p>
    #               </li>
    #            </ul>
    #           <p>Note the following when deciding how to use Filters:</p>
    #           <ul>
    #               <li>
    #                   <p>If you don't specify a Filter, the response includes all timeline
    #                       events.</p>
    #               </li>
    #               <li>
    #                   <p>If you specify more than one filter in a single request, the response returns
    #                       timeline events that match all filters.</p>
    #               </li>
    #               <li>
    #                   <p>If you specify a filter with more than one value, the response returns
    #                       timeline events that match any of the values provided.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute sort_by
    #   <p>Sort by the specified key value pair.</p>
    #
    #   Enum, one of: ["EVENT_TIME"]
    #
    #   Tags: ["logs_investigations"]
    #
    #   @return [String]
    #
    # @!attribute sort_order
    #   <p>Sorts the order of timeline events by the value specified in the <code>sortBy</code>
    #               field.</p>
    #
    #   Enum, one of: ["ASCENDING", "DESCENDING"]
    #
    #   Tags: ["logs_investigations"]
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results per page.</p>
    #
    #   Tags: ["logs_investigations"]
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The pagination token to continue to the next page of results.</p>
    #
    #   Tags: ["logs_investigations"]
    #
    #   @return [String]
    #
    ListTimelineEventsInput = ::Struct.new(
      :incident_record_arn,
      :filters,
      :sort_by,
      :sort_order,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute event_summaries
    #   <p>Details about each event that occurred during the incident.</p>
    #
    #   @return [Array<EventSummary>]
    #
    # @!attribute next_token
    #   <p>The pagination token to continue to the next page of results.</p>
    #
    #   @return [String]
    #
    ListTimelineEventsOutput = ::Struct.new(
      :event_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The SNS targets that are notified when updates are made to an incident.</p>
    #
    class NotificationTargetItem < Hearth::Union
      # <p>The Amazon Resource Name (ARN) of the SNS topic.</p>
      #
      # Tags: ["logs_investigations"]
      #
      class SnsTopicArn < NotificationTargetItem
        def to_h
          { sns_topic_arn: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::SSMIncidents::Types::SnsTopicArn #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < NotificationTargetItem
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::SSMIncidents::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the response plan you're adding the resource policy
    #               to.</p>
    #
    #   Tags: ["logs_required"]
    #
    #   @return [String]
    #
    # @!attribute policy
    #   <p>Details of the resource policy.</p>
    #
    #   Tags: ["logs_required"]
    #
    #   @return [String]
    #
    PutResourcePolicyInput = ::Struct.new(
      :resource_arn,
      :policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy_id
    #   <p>The ID of the resource policy.</p>
    #
    #   @return [String]
    #
    PutResourcePolicyOutput = ::Struct.new(
      :policy_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a Amazon Web Services Region in your replication set.</p>
    #
    # @!attribute sse_kms_key_id
    #   <p>The ID of the KMS key used to encrypt the data in this Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the Amazon Web Services Region in the replication set.</p>
    #
    #   Enum, one of: ["ACTIVE", "CREATING", "DELETING", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>Information displayed about the status of the Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute status_update_date_time
    #   <p>The most recent date and time that Incident Manager updated the Amazon Web Services Region's status.</p>
    #
    #   @return [Time]
    #
    RegionInfo = ::Struct.new(
      :sse_kms_key_id,
      :status,
      :status_message,
      :status_update_date_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The mapping between a Amazon Web Services Region and the key that's used to encrypt the
    #          data.</p>
    #
    # @!attribute sse_kms_key_id
    #   <p>The KMS key used to encrypt the data in your replication set.</p>
    #
    #   @return [String]
    #
    RegionMapInputValue = ::Struct.new(
      :sse_kms_key_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RegionStatus
    #
    module RegionStatus
      # All operations have completed successfully and the region is ready to use
      #
      ACTIVE = "ACTIVE"

      # The region is in the process of being created.
      #
      CREATING = "CREATING"

      # The region is in the process of being deleted.
      #
      DELETING = "DELETING"

      # The region is not healthy and we cannot automatically fix it.
      #
      FAILED = "FAILED"
    end

    # <p>Resources that responders use to triage and mitigate the incident.</p>
    #
    # @!attribute identifier
    #   <p>Details about the related item.</p>
    #
    #   @return [ItemIdentifier]
    #
    # @!attribute title
    #   <p>The title of the related item.</p>
    #
    #   @return [String]
    #
    RelatedItem = ::Struct.new(
      :identifier,
      :title,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about the related item you're adding.</p>
    #
    class RelatedItemsUpdate < Hearth::Union
      # <p>Details about the related item you're adding.</p>
      #
      class ItemToAdd < RelatedItemsUpdate
        def to_h
          { item_to_add: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::SSMIncidents::Types::ItemToAdd #{__getobj__ || 'nil'}>"
        end
      end

      # <p>Details about the related item you're deleting.</p>
      #
      class ItemToRemove < RelatedItemsUpdate
        def to_h
          { item_to_remove: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::SSMIncidents::Types::ItemToRemove #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < RelatedItemsUpdate
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::SSMIncidents::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # <p>The set of Amazon Web Services Region that your Incident Manager data will be replicated to
    #          and the KMS key used to encrypt the data. </p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the replication set.</p>
    #
    #   @return [String]
    #
    # @!attribute region_map
    #   <p>The map between each Amazon Web Services Region in your replication set and the KMS key that's used to encrypt the data in that Region.</p>
    #
    #   @return [Hash<String, RegionInfo>]
    #
    # @!attribute status
    #   <p>The status of the replication set. If the replication set is still pending, you can't
    #            use Incident Manager functionality.</p>
    #
    #   Enum, one of: ["ACTIVE", "CREATING", "UPDATING", "DELETING", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute deletion_protected
    #   <p>Determines if the replication set deletion protection is enabled or not. If deletion
    #            protection is enabled, you can't delete the last Amazon Web Services Region in the
    #            replication set. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute created_time
    #   <p>When the replication set was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute created_by
    #   <p>Details about who created the replication set.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified_time
    #   <p>When the replication set was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modified_by
    #   <p>Who last modified the replication set.</p>
    #
    #   @return [String]
    #
    ReplicationSet = ::Struct.new(
      :arn,
      :region_map,
      :status,
      :deletion_protected,
      :created_time,
      :created_by,
      :last_modified_time,
      :last_modified_by,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ReplicationSetStatus
    #
    module ReplicationSetStatus
      # All operations have completed successfully and the replication set is ready to use
      #
      ACTIVE = "ACTIVE"

      # Replication set is in the process of being created.
      #
      CREATING = "CREATING"

      # Replication set is in the process of being updated.
      #
      UPDATING = "UPDATING"

      # Replication set is in the process of being deleted.
      #
      DELETING = "DELETING"

      # Replication set is not healthy and we cannot fix it.
      #
      FAILED = "FAILED"
    end

    # <p>Request references a resource which doesn't exist. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_identifier
    #   The identifier for the requested resource
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   The resource type
    #
    #   Enum, one of: ["RESPONSE_PLAN", "INCIDENT_RECORD", "TIMELINE_EVENT", "REPLICATION_SET", "RESOURCE_POLICY"]
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :message,
      :resource_identifier,
      :resource_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The resource policy that allows Incident Manager to perform actions on resources on your
    #          behalf.</p>
    #
    # @!attribute policy_document
    #   <p>The JSON blob that describes the policy.</p>
    #
    #   @return [String]
    #
    # @!attribute policy_id
    #   <p>The ID of the resource policy.</p>
    #
    #   @return [String]
    #
    # @!attribute ram_resource_share_region
    #   <p>The Amazon Web Services Region that policy allows resources to be used in.</p>
    #
    #   @return [String]
    #
    ResourcePolicy = ::Struct.new(
      :policy_document,
      :policy_id,
      :ram_resource_share_region,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ResourceType
    #
    module ResourceType
      # No documentation available.
      #
      RESPONSE_PLAN = "RESPONSE_PLAN"

      # No documentation available.
      #
      INCIDENT_RECORD = "INCIDENT_RECORD"

      # No documentation available.
      #
      TIMELINE_EVENT = "TIMELINE_EVENT"

      # No documentation available.
      #
      REPLICATION_SET = "REPLICATION_SET"

      # No documentation available.
      #
      RESOURCE_POLICY = "RESOURCE_POLICY"
    end

    # <p>Details of the response plan that are used when creating an incident.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the response plan.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the response plan. This can't include spaces.</p>
    #
    #   @return [String]
    #
    # @!attribute display_name
    #   <p>The human readable name of the response plan. This can include spaces.</p>
    #
    #   @return [String]
    #
    ResponsePlanSummary = ::Struct.new(
      :arn,
      :name,
      :display_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ServiceCode
    #
    module ServiceCode
      # No documentation available.
      #
      SSM_INCIDENTS = "ssm-incidents"
    end

    # <p>Request would cause a service quota to be exceeded.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_identifier
    #   The identifier for the requested resource
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   The resource type
    #
    #   Enum, one of: ["RESPONSE_PLAN", "INCIDENT_RECORD", "TIMELINE_EVENT", "REPLICATION_SET", "RESOURCE_POLICY"]
    #
    #   @return [String]
    #
    # @!attribute service_code
    #   Originating service code
    #
    #   Enum, one of: ["ssm-incidents"]
    #
    #   @return [String]
    #
    # @!attribute quota_code
    #   Originating quota code
    #
    #   @return [String]
    #
    ServiceQuotaExceededException = ::Struct.new(
      :message,
      :resource_identifier,
      :resource_type,
      :service_code,
      :quota_code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SortOrder
    #
    module SortOrder
      # No documentation available.
      #
      ASCENDING = "ASCENDING"

      # No documentation available.
      #
      DESCENDING = "DESCENDING"
    end

    # <p>Details about the Systems Manager automation document that will be used as a runbook
    #          during an incident.</p>
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the role that the automation document will assume when
    #            running commands.</p>
    #
    #   Tags: ["logs_investigations"]
    #
    #   @return [String]
    #
    # @!attribute document_name
    #   <p>The automation document's name.</p>
    #
    #   Tags: ["logs_investigations"]
    #
    #   @return [String]
    #
    # @!attribute document_version
    #   <p>The automation document's version to use when running.</p>
    #
    #   Tags: ["logs_investigations"]
    #
    #   @return [String]
    #
    # @!attribute target_account
    #   <p>The account that the automation document will be run in. This can be in either the
    #            management account or an application account.</p>
    #
    #   Enum, one of: ["RESPONSE_PLAN_OWNER_ACCOUNT", "IMPACTED_ACCOUNT"]
    #
    #   Tags: ["logs_investigations"]
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>The key-value pair parameters to use when running the automation document.</p>
    #
    #   @return [Hash<String, Array<String>>]
    #
    # @!attribute dynamic_parameters
    #   <p>The key-value pair to resolve dynamic parameter values when processing a Systems Manager Automation runbook.</p>
    #
    #   @return [Hash<String, DynamicSsmParameterValue>]
    #
    SsmAutomation = ::Struct.new(
      :role_arn,
      :document_name,
      :document_version,
      :target_account,
      :parameters,
      :dynamic_parameters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SsmTargetAccount
    #
    module SsmTargetAccount
      # No documentation available.
      #
      RESPONSE_PLAN_OWNER_ACCOUNT = "RESPONSE_PLAN_OWNER_ACCOUNT"

      # No documentation available.
      #
      IMPACTED_ACCOUNT = "IMPACTED_ACCOUNT"
    end

    # @!attribute client_token
    #   <p>A token ensuring that the operation is called only once with the specified
    #               details.</p>
    #
    #   Tags: ["logs_investigations"]
    #
    #   @return [String]
    #
    # @!attribute response_plan_arn
    #   <p>The Amazon Resource Name (ARN) of the response plan that pre-defines summary, chat
    #               channels, Amazon SNS topics, runbooks, title, and impact of the incident. </p>
    #
    #   Tags: ["logs_investigations"]
    #
    #   @return [String]
    #
    # @!attribute title
    #   <p>Provide a title for the incident. Providing a title overwrites the title provided by
    #               the response plan. </p>
    #
    #   @return [String]
    #
    # @!attribute impact
    #   <p>Defines the impact to the customers. Providing an impact overwrites the impact
    #               provided by a response plan.</p>
    #           <p class="title">
    #               <b>Possible impacts:</b>
    #            </p>
    #            <ul>
    #               <li>
    #                   <p>
    #                     <code>1</code> - Critical impact, this typically relates to full application
    #                       failure that impacts many to all customers. </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>2</code> - High impact, partial application failure with impact to many
    #                       customers.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>3</code> -  Medium impact, the application is providing reduced service
    #                       to customers.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>4</code> -  Low impact, customer might aren't impacted by the problem
    #                       yet.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>5</code> - No impact, customers aren't currently impacted but urgent
    #                       action is needed to avoid impact.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Integer]
    #
    # @!attribute trigger_details
    #   <p>Details of what created the incident record in Incident Manager.</p>
    #
    #   @return [TriggerDetails]
    #
    # @!attribute related_items
    #   <p>Add related items to the incident for other responders to use. Related items are AWS
    #               resources, external links, or files uploaded to an Amazon S3 bucket. </p>
    #
    #   @return [Array<RelatedItem>]
    #
    StartIncidentInput = ::Struct.new(
      :client_token,
      :response_plan_arn,
      :title,
      :impact,
      :trigger_details,
      :related_items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute incident_record_arn
    #   <p>The ARN of the newly created incident record.</p>
    #
    #   @return [String]
    #
    StartIncidentOutput = ::Struct.new(
      :incident_record_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the response plan you're adding the tags to.</p>
    #
    #   Tags: ["logs_required"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of tags that you are adding to the response plan.</p>
    #
    #   @return [Hash<String, String>]
    #
    TagResourceInput = ::Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    TagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request was denied due to request throttling.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute service_code
    #   Originating service code
    #
    #   Enum, one of: ["ssm-incidents"]
    #
    #   @return [String]
    #
    # @!attribute quota_code
    #   Originating quota code
    #
    #   @return [String]
    #
    ThrottlingException = ::Struct.new(
      :message,
      :service_code,
      :quota_code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A significant event that happened during the incident. </p>
    #
    # @!attribute incident_record_arn
    #   <p>The Amazon Resource Name (ARN) of the incident that the event occurred during.</p>
    #
    #   @return [String]
    #
    # @!attribute event_id
    #   <p>The ID of the timeline event.</p>
    #
    #   @return [String]
    #
    # @!attribute event_time
    #   <p>The time that the event occurred.</p>
    #
    #   @return [Time]
    #
    # @!attribute event_updated_time
    #   <p>The time that the timeline event was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute event_type
    #   <p>The type of event that occurred. Currently Incident Manager supports only the <code>Custom
    #               Event</code> type.</p>
    #
    #   @return [String]
    #
    # @!attribute event_data
    #   <p>A short description of the event.</p>
    #
    #   @return [String]
    #
    TimelineEvent = ::Struct.new(
      :incident_record_arn,
      :event_id,
      :event_time,
      :event_updated_time,
      :event_type,
      :event_data,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TimelineEventSort
    #
    module TimelineEventSort
      # No documentation available.
      #
      EVENT_TIME = "EVENT_TIME"
    end

    # <p>Details about what caused the incident to be created in Incident Manager.</p>
    #
    # @!attribute source
    #   <p>Identifies the service that sourced the event. All events sourced from within Amazon Web Services begin with "<code>aws.</code>" Customer-generated events can have any value
    #            here, as long as it doesn't begin with "<code>aws.</code>" We recommend the use of Java
    #            package-name style reverse domain-name strings. </p>
    #
    #   Tags: ["logs_investigations"]
    #
    #   @return [String]
    #
    # @!attribute trigger_arn
    #   <p>The Amazon Resource Name (ARN) of the source that detected the incident.</p>
    #
    #   Tags: ["logs_required"]
    #
    #   @return [String]
    #
    # @!attribute timestamp
    #   <p>The time that the incident was detected.</p>
    #
    #   Tags: ["logs_investigations"]
    #
    #   @return [Time]
    #
    # @!attribute raw_data
    #   <p>Raw data passed from either Amazon EventBridge, Amazon CloudWatch, or Incident Manager when an incident is created.</p>
    #
    #   @return [String]
    #
    TriggerDetails = ::Struct.new(
      :source,
      :trigger_arn,
      :timestamp,
      :raw_data,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the response plan you're removing a tag from.</p>
    #
    #   Tags: ["logs_required"]
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>The name of the tag you're removing from the response plan.</p>
    #
    #   @return [Array<String>]
    #
    UntagResourceInput = ::Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UntagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the replication set you're updating.</p>
    #
    #   Tags: ["logs_required"]
    #
    #   @return [String]
    #
    # @!attribute deletion_protected
    #   <p>Details if deletion protection is enabled or disabled in your account.</p>
    #
    #   Tags: ["logs_investigations"]
    #
    #   @return [Boolean]
    #
    # @!attribute client_token
    #   <p>A token ensuring that the operation is called only once with the specified
    #               details.</p>
    #
    #   Tags: ["logs_investigations"]
    #
    #   @return [String]
    #
    UpdateDeletionProtectionInput = ::Struct.new(
      :arn,
      :deletion_protected,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateDeletionProtectionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute client_token
    #   <p>A token that ensures that the operation is called only once with the specified
    #               details.</p>
    #
    #   Tags: ["logs_investigations"]
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the incident record you are updating.</p>
    #
    #   Tags: ["logs_required"]
    #
    #   @return [String]
    #
    # @!attribute title
    #   <p>A brief description of the incident.</p>
    #
    #   @return [String]
    #
    # @!attribute summary
    #   <p>A longer description of what occurred during the incident.</p>
    #
    #   @return [String]
    #
    # @!attribute impact
    #   <p>Defines the impact of the incident to customers and applications. Providing an impact
    #               overwrites the impact provided by the response plan.</p>
    #           <p class="title">
    #               <b>Possible impacts:</b>
    #            </p>
    #            <ul>
    #               <li>
    #                   <p>
    #                     <code>1</code> - Critical impact, full application failure that impacts many
    #                       to all customers. </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>2</code> - High impact, partial application failure with impact to many
    #                       customers.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>3</code> - Medium impact, the application is providing reduced service
    #                       to customers.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>4</code> - Low impact, customer aren't impacted by the problem
    #                       yet.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>5</code> - No impact, customers aren't currently impacted but urgent
    #                       action is needed to avoid impact.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Integer]
    #
    # @!attribute status
    #   <p>The status of the incident. An incident can be <code>Open</code> or
    #                   <code>Resolved</code>.</p>
    #
    #   Enum, one of: ["OPEN", "RESOLVED"]
    #
    #   Tags: ["logs_investigations"]
    #
    #   @return [String]
    #
    # @!attribute chat_channel
    #   <p>The Chatbot chat channel where responders can collaborate.</p>
    #
    #   @return [ChatChannel]
    #
    # @!attribute notification_targets
    #   <p>The Amazon SNS targets that are notified when updates are made to an
    #               incident.</p>
    #           <p>Using multiple SNS topics creates redundancy in the event that a Region is down during
    #               the incident.</p>
    #
    #   @return [Array<NotificationTargetItem>]
    #
    UpdateIncidentRecordInput = ::Struct.new(
      :client_token,
      :arn,
      :title,
      :summary,
      :impact,
      :status,
      :chat_channel,
      :notification_targets,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateIncidentRecordOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute client_token
    #   <p>A token ensuring that the operation is called only once with the specified
    #               details.</p>
    #
    #   Tags: ["logs_investigations"]
    #
    #   @return [String]
    #
    # @!attribute incident_record_arn
    #   <p>The Amazon Resource Name (ARN) of the incident record containing the related items you
    #               are updating.</p>
    #
    #   Tags: ["logs_required"]
    #
    #   @return [String]
    #
    # @!attribute related_items_update
    #   <p>Details about the item you are adding or deleting.</p>
    #
    #   @return [RelatedItemsUpdate]
    #
    UpdateRelatedItemsInput = ::Struct.new(
      :client_token,
      :incident_record_arn,
      :related_items_update,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateRelatedItemsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details used when updating the replication set.</p>
    #
    class UpdateReplicationSetAction < Hearth::Union
      # <p>Details about the Amazon Web Services Region that you're adding to the replication
      #          set.</p>
      #
      class AddRegionAction < UpdateReplicationSetAction
        def to_h
          { add_region_action: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::SSMIncidents::Types::AddRegionAction #{__getobj__ || 'nil'}>"
        end
      end

      # <p>Details about the Amazon Web Services Region that you're deleting to the replication
      #          set.</p>
      #
      class DeleteRegionAction < UpdateReplicationSetAction
        def to_h
          { delete_region_action: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::SSMIncidents::Types::DeleteRegionAction #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < UpdateReplicationSetAction
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::SSMIncidents::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the replication set you're updating.</p>
    #
    #   Tags: ["logs_required"]
    #
    #   @return [String]
    #
    # @!attribute actions
    #   <p>An action to add or delete a Region.</p>
    #
    #   @return [Array<UpdateReplicationSetAction>]
    #
    # @!attribute client_token
    #   <p>A token ensuring that the operation is called only once with the specified
    #               details.</p>
    #
    #   Tags: ["logs_investigations"]
    #
    #   @return [String]
    #
    UpdateReplicationSetInput = ::Struct.new(
      :arn,
      :actions,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateReplicationSetOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute client_token
    #   <p>A token ensuring that the operation is called only once with the specified
    #               details.</p>
    #
    #   Tags: ["logs_investigations"]
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the response plan.</p>
    #
    #   Tags: ["logs_required"]
    #
    #   @return [String]
    #
    # @!attribute display_name
    #   <p>The long format name of the response plan. The display name can't contain
    #               spaces.</p>
    #
    #   @return [String]
    #
    # @!attribute incident_template_title
    #   <p>The short format name of the incident. The title can't contain spaces.</p>
    #
    #   @return [String]
    #
    # @!attribute incident_template_impact
    #   <p>Defines the impact to the customers. Providing an impact overwrites the impact
    #               provided by a response plan.</p>
    #           <p class="title">
    #               <b>Possible impacts:</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>5</code> - Severe impact</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>4</code> - High impact</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>3</code> - Medium impact</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>2</code> - Low impact</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>1</code> - No impact</p>
    #               </li>
    #            </ul>
    #
    #   @return [Integer]
    #
    # @!attribute incident_template_summary
    #   <p>A brief summary of the incident. This typically contains what has happened, what's
    #               currently happening, and next steps.</p>
    #
    #   @return [String]
    #
    # @!attribute incident_template_dedupe_string
    #   <p>The string Incident Manager uses to prevent duplicate incidents from being created by the
    #               same incident in the same account.</p>
    #
    #   Tags: ["logs_investigations"]
    #
    #   @return [String]
    #
    # @!attribute incident_template_notification_targets
    #   <p>The Amazon SNS targets that are notified when updates are made to an
    #               incident.</p>
    #
    #   @return [Array<NotificationTargetItem>]
    #
    # @!attribute chat_channel
    #   <p>The Chatbot chat channel used for collaboration during an
    #               incident.</p>
    #           <p>Use the empty structure to remove the chat channel from the response plan.</p>
    #
    #   @return [ChatChannel]
    #
    # @!attribute engagements
    #   <p>The contacts and escalation plans that Incident Manager engages at the start of the incident.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute actions
    #   <p>The actions that this response plan takes at the beginning of an incident.</p>
    #
    #   @return [Array<Action>]
    #
    UpdateResponsePlanInput = ::Struct.new(
      :client_token,
      :arn,
      :display_name,
      :incident_template_title,
      :incident_template_impact,
      :incident_template_summary,
      :incident_template_dedupe_string,
      :incident_template_notification_targets,
      :chat_channel,
      :engagements,
      :actions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateResponsePlanOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute client_token
    #   <p>A token ensuring that the operation is called only once with the specified
    #               details.</p>
    #
    #   Tags: ["logs_investigations"]
    #
    #   @return [String]
    #
    # @!attribute incident_record_arn
    #   <p>The Amazon Resource Name (ARN) of the incident that includes the timeline
    #               event.</p>
    #
    #   Tags: ["logs_required"]
    #
    #   @return [String]
    #
    # @!attribute event_id
    #   <p>The ID of the event you are updating. You can find this by using
    #                   <code>ListTimelineEvents</code>.</p>
    #
    #   Tags: ["logs_required"]
    #
    #   @return [String]
    #
    # @!attribute event_time
    #   <p>The time that the event occurred.</p>
    #
    #   Tags: ["logs_investigations"]
    #
    #   @return [Time]
    #
    # @!attribute event_type
    #   <p>The type of the event. You can update events of type <code>Custom Event</code>.</p>
    #
    #   Tags: ["logs_investigations"]
    #
    #   @return [String]
    #
    # @!attribute event_data
    #   <p>A short description of the event.</p>
    #
    #   @return [String]
    #
    UpdateTimelineEventInput = ::Struct.new(
      :client_token,
      :incident_record_arn,
      :event_id,
      :event_time,
      :event_type,
      :event_data,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateTimelineEventOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The input fails to satisfy the constraints specified by an Amazon Web Services
    #       service.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ValidationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for VariableType
    #
    module VariableType
      # No documentation available.
      #
      INCIDENT_RECORD_ARN = "INCIDENT_RECORD_ARN"

      # No documentation available.
      #
      INVOLVED_RESOURCES = "INVOLVED_RESOURCES"
    end

  end
end
