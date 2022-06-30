# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CodestarNotifications
  module Types

    # <p>AWS CodeStar Notifications can't create the notification rule because you do not have sufficient
    #       permissions.</p>
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

    # <p>AWS CodeStar Notifications can't complete the request because the resource is being modified by
    #       another process. Wait a few minutes and try again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ConcurrentModificationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Some or all of the configuration is incomplete, missing, or not valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ConfigurationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name for the notification rule. Notifictaion rule names must be unique in your AWS
    #               account.</p>
    #
    #   @return [String]
    #
    # @!attribute event_type_ids
    #   <p>A list of event types associated with this notification rule. For a list of allowed
    #               events, see <a>EventTypeSummary</a>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute resource
    #   <p>The Amazon Resource Name (ARN) of the resource to associate with the notification rule. Supported resources include pipelines in AWS CodePipeline,
    #         repositories in AWS CodeCommit, and build projects in AWS CodeBuild.</p>
    #
    #   @return [String]
    #
    # @!attribute targets
    #   <p>A list of Amazon Resource Names (ARNs) of SNS topics to associate with the
    #         notification rule.</p>
    #
    #   @return [Array<Target>]
    #
    # @!attribute detail_type
    #   <p>The level of detail to include in the notifications for this resource. BASIC will include only the
    #           contents of the event as it would appear in AWS CloudWatch. FULL will include any supplemental information
    #           provided by AWS CodeStar Notifications and/or the service for the resource for which the notification is created.</p>
    #
    #   Enum, one of: ["BASIC", "FULL"]
    #
    #   @return [String]
    #
    # @!attribute client_request_token
    #   <p>A unique, client-generated idempotency token that, when provided in a request, ensures
    #               the request cannot be repeated with a changed parameter. If a request with the same
    #               parameters is received and a token is included, the request returns information about
    #               the initial request that used that token.</p>
    #           <note>
    #               <p>The AWS SDKs prepopulate client request tokens. If you are using an AWS SDK, an
    #                   idempotency token is created for you.</p>
    #           </note>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of tags to apply to this notification rule. Key names cannot start with "aws". </p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute status
    #   <p>The status of the notification rule. The default value is ENABLED. If the status is
    #               set to DISABLED, notifications aren't sent for the notification rule.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    CreateNotificationRuleInput = ::Struct.new(
      :name,
      :event_type_ids,
      :resource,
      :targets,
      :detail_type,
      :client_request_token,
      :tags,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CodestarNotifications::Types::CreateNotificationRuleInput "\
          "name=\"[SENSITIVE]\", "\
          "event_type_ids=#{event_type_ids || 'nil'}, "\
          "resource=#{resource || 'nil'}, "\
          "targets=#{targets || 'nil'}, "\
          "detail_type=#{detail_type || 'nil'}, "\
          "client_request_token=#{client_request_token || 'nil'}, "\
          "tags=#{tags || 'nil'}, "\
          "status=#{status || 'nil'}>"
      end
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the notification rule.</p>
    #
    #   @return [String]
    #
    CreateNotificationRuleOutput = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the notification rule you want to delete.</p>
    #
    #   @return [String]
    #
    DeleteNotificationRuleInput = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the deleted notification rule.</p>
    #
    #   @return [String]
    #
    DeleteNotificationRuleOutput = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute target_address
    #   <p>The Amazon Resource Name (ARN) of the SNS topic to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute force_unsubscribe_all
    #   <p>A Boolean value that can be used to delete all associations with this SNS topic. The
    #               default value is FALSE. If set to TRUE, all associations between that target and every
    #               notification rule in your AWS account are deleted.</p>
    #
    #   @return [Boolean]
    #
    DeleteTargetInput = ::Struct.new(
      :target_address,
      :force_unsubscribe_all,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.force_unsubscribe_all ||= false
      end

      def to_s
        "#<struct AWS::SDK::CodestarNotifications::Types::DeleteTargetInput "\
          "target_address=\"[SENSITIVE]\", "\
          "force_unsubscribe_all=#{force_unsubscribe_all || 'nil'}>"
      end
    end

    DeleteTargetOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the notification rule.</p>
    #
    #   @return [String]
    #
    DescribeNotificationRuleInput = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the notification rule.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the notification rule.</p>
    #
    #   @return [String]
    #
    # @!attribute event_types
    #   <p>A list of the event types associated with the notification rule.</p>
    #
    #   @return [Array<EventTypeSummary>]
    #
    # @!attribute resource
    #   <p>The Amazon Resource Name (ARN) of the resource associated with the notification
    #         rule.</p>
    #
    #   @return [String]
    #
    # @!attribute targets
    #   <p>A list of the SNS topics associated with the notification rule.</p>
    #
    #   @return [Array<TargetSummary>]
    #
    # @!attribute detail_type
    #   <p>The level of detail included in the notifications for this resource. BASIC will include only the
    #               contents of the event as it would appear in AWS CloudWatch. FULL will include any supplemental information
    #               provided by AWS CodeStar Notifications and/or the service for the resource for which the notification is created.</p>
    #
    #   Enum, one of: ["BASIC", "FULL"]
    #
    #   @return [String]
    #
    # @!attribute created_by
    #   <p>The name or email alias of the person who created the notification rule.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the notification rule. Valid statuses are on (sending notifications) or off
    #         (not sending notifications).</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute created_timestamp
    #   <p>The date and time the notification rule was created, in timestamp format.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modified_timestamp
    #   <p>The date and time the notification rule was most recently updated, in timestamp
    #               format.</p>
    #
    #   @return [Time]
    #
    # @!attribute tags
    #   <p>The tags associated with the notification rule.</p>
    #
    #   @return [Hash<String, String>]
    #
    DescribeNotificationRuleOutput = ::Struct.new(
      :arn,
      :name,
      :event_types,
      :resource,
      :targets,
      :detail_type,
      :created_by,
      :status,
      :created_timestamp,
      :last_modified_timestamp,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CodestarNotifications::Types::DescribeNotificationRuleOutput "\
          "arn=#{arn || 'nil'}, "\
          "name=\"[SENSITIVE]\", "\
          "event_types=#{event_types || 'nil'}, "\
          "resource=#{resource || 'nil'}, "\
          "targets=#{targets || 'nil'}, "\
          "detail_type=#{detail_type || 'nil'}, "\
          "created_by=#{created_by || 'nil'}, "\
          "status=#{status || 'nil'}, "\
          "created_timestamp=#{created_timestamp || 'nil'}, "\
          "last_modified_timestamp=#{last_modified_timestamp || 'nil'}, "\
          "tags=#{tags || 'nil'}>"
      end
    end

    # Includes enum constants for DetailType
    #
    module DetailType
      # No documentation available.
      #
      BASIC = "BASIC"

      # No documentation available.
      #
      FULL = "FULL"
    end

    # <p>Returns information about an event that has triggered a notification rule.</p>
    #
    # @!attribute event_type_id
    #   <p>The system-generated ID of the event.</p>
    #
    #   @return [String]
    #
    # @!attribute service_name
    #   <p>The name of the service for which the event applies.</p>
    #
    #   @return [String]
    #
    # @!attribute event_type_name
    #   <p>The name of the event.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The resource type of the event.</p>
    #
    #   @return [String]
    #
    EventTypeSummary = ::Struct.new(
      :event_type_id,
      :service_name,
      :event_type_name,
      :resource_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The value for the enumeration token used in the request to return the next batch of the results is not valid. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidNextTokenException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>One of the AWS CodeStar Notifications limits has been exceeded. Limits apply to
    #             accounts, notification rules, notifications, resources, and targets. For more
    #             information, see Limits.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    LimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a filter to apply to the list of returned event types. You can filter
    #       by resource type or service name.</p>
    #
    # @!attribute name
    #   <p>The system-generated name of the filter type you want to filter by.</p>
    #
    #   Enum, one of: ["RESOURCE_TYPE", "SERVICE_NAME"]
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The name of the resource type (for example, pipeline) or service name (for example,
    #         CodePipeline) that you want to filter by.</p>
    #
    #   @return [String]
    #
    ListEventTypesFilter = ::Struct.new(
      :name,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ListEventTypesFilterName
    #
    module ListEventTypesFilterName
      # No documentation available.
      #
      RESOURCE_TYPE = "RESOURCE_TYPE"

      # No documentation available.
      #
      SERVICE_NAME = "SERVICE_NAME"
    end

    # @!attribute filters
    #   <p>The filters to use to return information by service or resource type.</p>
    #
    #   @return [Array<ListEventTypesFilter>]
    #
    # @!attribute next_token
    #   <p>An enumeration token that, when provided in a request, returns the next batch of the
    #               results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>A non-negative integer used to limit the number of returned results. The default number is 50. The maximum number of
    #         results that can be returned is 100.</p>
    #
    #   @return [Integer]
    #
    ListEventTypesInput = ::Struct.new(
      :filters,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute event_types
    #   <p>Information about each event, including service name, resource type, event ID, and event
    #         name.</p>
    #
    #   @return [Array<EventTypeSummary>]
    #
    # @!attribute next_token
    #   <p>An enumeration token that can be used in a request to return the next batch of the results.</p>
    #
    #   @return [String]
    #
    ListEventTypesOutput = ::Struct.new(
      :event_types,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a filter to apply to the list of returned notification rules. You can
    #       filter by event type, owner, resource, or target.</p>
    #
    # @!attribute name
    #   <p>The name of the attribute you want to use to filter the returned notification rules.</p>
    #
    #   Enum, one of: ["EVENT_TYPE_ID", "CREATED_BY", "RESOURCE", "TARGET_ADDRESS"]
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of the attribute you want to use to filter the returned notification rules. For example, if you specify filtering by <i>RESOURCE</i>
    #             in Name, you might specify the ARN of a pipeline in AWS CodePipeline for the value.</p>
    #
    #   @return [String]
    #
    ListNotificationRulesFilter = ::Struct.new(
      :name,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ListNotificationRulesFilterName
    #
    module ListNotificationRulesFilterName
      # No documentation available.
      #
      EVENT_TYPE_ID = "EVENT_TYPE_ID"

      # No documentation available.
      #
      CREATED_BY = "CREATED_BY"

      # No documentation available.
      #
      RESOURCE = "RESOURCE"

      # No documentation available.
      #
      TARGET_ADDRESS = "TARGET_ADDRESS"
    end

    # @!attribute filters
    #   <p>The filters to use to return information by service or resource type. For valid values,
    #               see <a>ListNotificationRulesFilter</a>.</p>
    #            <note>
    #               <p>A filter with the same name can appear more than once when used with OR statements. Filters with different names should be applied with AND statements.</p>
    #            </note>
    #
    #   @return [Array<ListNotificationRulesFilter>]
    #
    # @!attribute next_token
    #   <p>An enumeration token that, when provided in a request, returns the next batch of the
    #               results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>A non-negative integer used to limit the number of returned results. The maximum number of
    #         results that can be returned is 100.</p>
    #
    #   @return [Integer]
    #
    ListNotificationRulesInput = ::Struct.new(
      :filters,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>An enumeration token that can be used in a request to return the next batch of the results.</p>
    #
    #   @return [String]
    #
    # @!attribute notification_rules
    #   <p>The list of notification rules for the AWS account, by Amazon Resource Name (ARN) and ID. </p>
    #
    #   @return [Array<NotificationRuleSummary>]
    #
    ListNotificationRulesOutput = ::Struct.new(
      :next_token,
      :notification_rules,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) for the notification rule.</p>
    #
    #   @return [String]
    #
    ListTagsForResourceInput = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tags
    #   <p>The tags associated with the notification rule.</p>
    #
    #   @return [Hash<String, String>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a filter to apply to the list of returned targets. You can filter by
    #             target type, address, or status. For example, to filter results to notification rules
    #             that have active Amazon SNS topics as targets, you could specify a ListTargetsFilter
    #             Name as TargetType and a Value of SNS, and a Name of TARGET_STATUS and a Value of
    #             ACTIVE.</p>
    #
    # @!attribute name
    #   <p>The name of the attribute you want to use to filter the returned targets.</p>
    #
    #   Enum, one of: ["TARGET_TYPE", "TARGET_ADDRESS", "TARGET_STATUS"]
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of the attribute you want to use to filter the returned targets. For example,
    #               if you specify <i>SNS</i> for the Target type, you could specify an Amazon
    #               Resource Name (ARN) for a topic as the value.</p>
    #
    #   @return [String]
    #
    ListTargetsFilter = ::Struct.new(
      :name,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ListTargetsFilterName
    #
    module ListTargetsFilterName
      # No documentation available.
      #
      TARGET_TYPE = "TARGET_TYPE"

      # No documentation available.
      #
      TARGET_ADDRESS = "TARGET_ADDRESS"

      # No documentation available.
      #
      TARGET_STATUS = "TARGET_STATUS"
    end

    # @!attribute filters
    #   <p>The filters to use to return information by service or resource type. Valid filters
    #               include target type, target address, and target status.</p>
    #            <note>
    #               <p>A filter with the same name can appear more than once when used with OR statements. Filters with different names should be applied with AND statements.</p>
    #            </note>
    #
    #   @return [Array<ListTargetsFilter>]
    #
    # @!attribute next_token
    #   <p>An enumeration token that, when provided in a request, returns the next batch of the
    #               results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>A non-negative integer used to limit the number of returned results. The maximum number of
    #         results that can be returned is 100.</p>
    #
    #   @return [Integer]
    #
    ListTargetsInput = ::Struct.new(
      :filters,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute targets
    #   <p>The list of notification rule targets. </p>
    #
    #   @return [Array<TargetSummary>]
    #
    # @!attribute next_token
    #   <p>An enumeration token that can be used in a request to return the next batch of
    #               results.</p>
    #
    #   @return [String]
    #
    ListTargetsOutput = ::Struct.new(
      :targets,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for NotificationRuleStatus
    #
    module NotificationRuleStatus
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # <p>Information about a specified notification rule.</p>
    #
    # @!attribute id
    #   <p>The unique ID of the notification rule.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the notification rule.</p>
    #
    #   @return [String]
    #
    NotificationRuleSummary = ::Struct.new(
      :id,
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A resource with the same name or ID already exists. Notification rule names must be
    #             unique in your AWS account.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceAlreadyExistsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>AWS CodeStar Notifications can't find a resource that matches the provided ARN. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the notification rule for which you want to create the association.</p>
    #
    #   @return [String]
    #
    # @!attribute target
    #   <p>Information about the SNS topics associated with a  notification rule.</p>
    #
    #   @return [Target]
    #
    # @!attribute client_request_token
    #   <p>An enumeration token that, when provided in a request, returns the next batch of the
    #               results.</p>
    #
    #   @return [String]
    #
    SubscribeInput = ::Struct.new(
      :arn,
      :target,
      :client_request_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the notification rule for which you have created assocations.</p>
    #
    #   @return [String]
    #
    SubscribeOutput = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the notification rule to tag.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The list of tags to associate with the resource. Tag key names cannot start with "aws".</p>
    #
    #   @return [Hash<String, String>]
    #
    TagResourceInput = ::Struct.new(
      :arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tags
    #   <p>The list of tags associated with the resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    TagResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the SNS topics associated with a  notification rule.</p>
    #
    # @!attribute target_type
    #   <p>The target type. Can be an Amazon SNS topic.</p>
    #
    #   @return [String]
    #
    # @!attribute target_address
    #   <p>The Amazon Resource Name (ARN) of the SNS topic.</p>
    #
    #   @return [String]
    #
    Target = ::Struct.new(
      :target_type,
      :target_address,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CodestarNotifications::Types::Target "\
          "target_type=#{target_type || 'nil'}, "\
          "target_address=\"[SENSITIVE]\">"
      end
    end

    # Includes enum constants for TargetStatus
    #
    module TargetStatus
      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      UNREACHABLE = "UNREACHABLE"

      # No documentation available.
      #
      INACTIVE = "INACTIVE"

      # No documentation available.
      #
      DEACTIVATED = "DEACTIVATED"
    end

    # <p>Information about the targets specified for a notification rule.</p>
    #
    # @!attribute target_address
    #   <p>The Amazon Resource Name (ARN) of the SNS topic.</p>
    #
    #   @return [String]
    #
    # @!attribute target_type
    #   <p>The type of the target (for example, SNS).</p>
    #
    #   @return [String]
    #
    # @!attribute target_status
    #   <p>The status of the target.</p>
    #
    #   Enum, one of: ["PENDING", "ACTIVE", "UNREACHABLE", "INACTIVE", "DEACTIVATED"]
    #
    #   @return [String]
    #
    TargetSummary = ::Struct.new(
      :target_address,
      :target_type,
      :target_status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CodestarNotifications::Types::TargetSummary "\
          "target_address=\"[SENSITIVE]\", "\
          "target_type=#{target_type || 'nil'}, "\
          "target_status=#{target_status || 'nil'}>"
      end
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the notification rule.</p>
    #
    #   @return [String]
    #
    # @!attribute target_address
    #   <p>The ARN of the SNS topic to unsubscribe from the notification rule.</p>
    #
    #   @return [String]
    #
    UnsubscribeInput = ::Struct.new(
      :arn,
      :target_address,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CodestarNotifications::Types::UnsubscribeInput "\
          "arn=#{arn || 'nil'}, "\
          "target_address=\"[SENSITIVE]\">"
      end
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the the notification rule from which you have removed a subscription.</p>
    #
    #   @return [String]
    #
    UnsubscribeOutput = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the notification rule from which to remove the
    #         tags.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>The key names of the tags to remove.</p>
    #
    #   @return [Array<String>]
    #
    UntagResourceInput = ::Struct.new(
      :arn,
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
    #   <p>The Amazon Resource Name (ARN) of the notification rule.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the notification rule.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the notification rule. Valid statuses include enabled (sending notifications) or
    #         disabled (not sending notifications).</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute event_type_ids
    #   <p>A list of event types associated with this notification rule.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute targets
    #   <p>The address and type of the targets to receive notifications from this notification
    #         rule.</p>
    #
    #   @return [Array<Target>]
    #
    # @!attribute detail_type
    #   <p>The level of detail to include in the notifications for this resource. BASIC will include only the
    #               contents of the event as it would appear in AWS CloudWatch. FULL will include any supplemental information
    #               provided by AWS CodeStar Notifications and/or the service for the resource for which the notification is created.</p>
    #
    #   Enum, one of: ["BASIC", "FULL"]
    #
    #   @return [String]
    #
    UpdateNotificationRuleInput = ::Struct.new(
      :arn,
      :name,
      :status,
      :event_type_ids,
      :targets,
      :detail_type,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CodestarNotifications::Types::UpdateNotificationRuleInput "\
          "arn=#{arn || 'nil'}, "\
          "name=\"[SENSITIVE]\", "\
          "status=#{status || 'nil'}, "\
          "event_type_ids=#{event_type_ids || 'nil'}, "\
          "targets=#{targets || 'nil'}, "\
          "detail_type=#{detail_type || 'nil'}>"
      end
    end

    UpdateNotificationRuleOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>One or more parameter values are not valid.</p>
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

  end
end
