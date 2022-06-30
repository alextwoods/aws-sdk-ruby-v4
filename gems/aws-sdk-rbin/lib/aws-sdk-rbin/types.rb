# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Rbin
  module Types

    # @!attribute retention_period
    #   <p>Information about the retention period for which the retention rule is to retain resources.</p>
    #
    #   @return [RetentionPeriod]
    #
    # @!attribute description
    #   <p>The retention rule description.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Information about the tags to assign to the retention rule.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute resource_type
    #   <p>The resource type to be retained by the retention rule. Currently, only Amazon EBS snapshots
    #         and EBS-backed AMIs are supported. To retain snapshots, specify <code>EBS_SNAPSHOT</code>. To
    #         retain EBS-backed AMIs, specify <code>EC2_IMAGE</code>.</p>
    #
    #   Enum, one of: ["EBS_SNAPSHOT", "EC2_IMAGE"]
    #
    #   @return [String]
    #
    # @!attribute resource_tags
    #   <p>Specifies the resource tags to use to identify resources that are to be retained by a
    #     tag-level retention rule. For tag-level retention rules, only deleted resources, of the specified resource type, that
    #     have one or more of the specified tag key and value pairs are retained. If a resource is deleted, but it does not have
    #     any of the specified tag key and value pairs, it is immediately deleted without being retained by the retention rule.</p>
    #            <p>You can add the same tag key and value pair to a maximum or five retention rules.</p>
    #            <p>To create a Region-level retention rule, omit this parameter. A Region-level retention rule
    #         does not have any resource tags specified. It retains all deleted resources of the specified
    #         resource type in the Region in which the rule is created, even if the resources are not tagged.</p>
    #
    #   @return [Array<ResourceTag>]
    #
    CreateRuleInput = ::Struct.new(
      :retention_period,
      :description,
      :tags,
      :resource_type,
      :resource_tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute identifier
    #   <p>The unique ID of the retention rule.</p>
    #
    #   @return [String]
    #
    # @!attribute retention_period
    #   <p>Information about the retention period for which the retention rule is to retain resources.</p>
    #
    #   @return [RetentionPeriod]
    #
    # @!attribute description
    #   <p>The retention rule description.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Information about the tags assigned to the retention rule.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute resource_type
    #   <p>The resource type retained by the retention rule.</p>
    #
    #   Enum, one of: ["EBS_SNAPSHOT", "EC2_IMAGE"]
    #
    #   @return [String]
    #
    # @!attribute resource_tags
    #   <p>Information about the resource tags used to identify resources that are retained by the retention
    #         rule.</p>
    #
    #   @return [Array<ResourceTag>]
    #
    # @!attribute status
    #   <p>The state of the retention rule. Only retention rules that are in the <code>available</code>
    #         state retain resources.</p>
    #
    #   Enum, one of: ["pending", "available"]
    #
    #   @return [String]
    #
    CreateRuleOutput = ::Struct.new(
      :identifier,
      :retention_period,
      :description,
      :tags,
      :resource_type,
      :resource_tags,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute identifier
    #   <p>The unique ID of the retention rule.</p>
    #
    #   @return [String]
    #
    DeleteRuleInput = ::Struct.new(
      :identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteRuleOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute identifier
    #   <p>The unique ID of the retention rule.</p>
    #
    #   @return [String]
    #
    GetRuleInput = ::Struct.new(
      :identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute identifier
    #   <p>The unique ID of the retention rule.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The retention rule description.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The resource type retained by the retention rule.</p>
    #
    #   Enum, one of: ["EBS_SNAPSHOT", "EC2_IMAGE"]
    #
    #   @return [String]
    #
    # @!attribute retention_period
    #   <p>Information about the retention period for which the retention rule is to retain resources.</p>
    #
    #   @return [RetentionPeriod]
    #
    # @!attribute resource_tags
    #   <p>Information about the resource tags used to identify resources that are retained by the retention
    #         rule.</p>
    #
    #   @return [Array<ResourceTag>]
    #
    # @!attribute status
    #   <p>The state of the retention rule. Only retention rules that are in the <code>available</code>
    #         state retain resources.</p>
    #
    #   Enum, one of: ["pending", "available"]
    #
    #   @return [String]
    #
    GetRuleOutput = ::Struct.new(
      :identifier,
      :description,
      :resource_type,
      :retention_period,
      :resource_tags,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The service could not respond to the request due to an internal problem.</p>
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

    # @!attribute max_results
    #   <p>The maximum number of results to return with a single call.
    #   	To retrieve the remaining results, make another call with the returned <code>NextToken</code> value.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The resource type retained by the retention rule. Only retention rules that retain
    #         the specified resource type are listed. Currently, only Amazon EBS snapshots and EBS-backed
    #         AMIs are supported. To list retention rules that retain snapshots, specify
    #         <code>EBS_SNAPSHOT</code>. To list retention rules that retain EBS-backed AMIs, specify
    #         <code>EC2_IMAGE</code>.</p>
    #
    #   Enum, one of: ["EBS_SNAPSHOT", "EC2_IMAGE"]
    #
    #   @return [String]
    #
    # @!attribute resource_tags
    #   <p>Information about the resource tags used to identify resources that are retained by the retention
    #         rule.</p>
    #
    #   @return [Array<ResourceTag>]
    #
    ListRulesInput = ::Struct.new(
      :max_results,
      :next_token,
      :resource_type,
      :resource_tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute rules
    #   <p>Information about the retention rules.</p>
    #
    #   @return [Array<RuleSummary>]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
    #
    #   @return [String]
    #
    ListRulesOutput = ::Struct.new(
      :rules,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the retention rule.</p>
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
    #   <p>Information about the tags assigned to the retention rule.</p>
    #
    #   @return [Array<Tag>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified resource was not found.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>The reason for the exception.</p>
    #
    #   Enum, one of: ["RULE_NOT_FOUND"]
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :message,
      :reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ResourceNotFoundExceptionReason
    #
    module ResourceNotFoundExceptionReason
      # No documentation available.
      #
      RULE_NOT_FOUND = "RULE_NOT_FOUND"
    end

    # <p>Information about the resource tags used to identify resources that are retained by the retention
    #       rule.</p>
    #
    # @!attribute resource_tag_key
    #   <p>The tag key.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_tag_value
    #   <p>The tag value.</p>
    #
    #   @return [String]
    #
    ResourceTag = ::Struct.new(
      :resource_tag_key,
      :resource_tag_value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ResourceType
    #
    module ResourceType
      # No documentation available.
      #
      EBS_SNAPSHOT = "EBS_SNAPSHOT"

      # No documentation available.
      #
      EC2_IMAGE = "EC2_IMAGE"
    end

    # <p>Information about the retention period for which the retention rule is to retain resources.</p>
    #
    # @!attribute retention_period_value
    #   <p>The period value for which the retention rule is to retain resources. The period is measured using
    #         the unit specified for <b>RetentionPeriodUnit</b>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute retention_period_unit
    #   <p>The unit of time in which the retention period is measured. Currently, only <code>DAYS</code>
    #         is supported.</p>
    #
    #   Enum, one of: ["DAYS"]
    #
    #   @return [String]
    #
    RetentionPeriod = ::Struct.new(
      :retention_period_value,
      :retention_period_unit,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RetentionPeriodUnit
    #
    module RetentionPeriodUnit
      # No documentation available.
      #
      DAYS = "DAYS"
    end

    # Includes enum constants for RuleStatus
    #
    module RuleStatus
      # No documentation available.
      #
      PENDING = "pending"

      # No documentation available.
      #
      AVAILABLE = "available"
    end

    # <p>Information about a Recycle Bin retention rule.</p>
    #
    # @!attribute identifier
    #   <p>The unique ID of the retention rule.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The retention rule description.</p>
    #
    #   @return [String]
    #
    # @!attribute retention_period
    #   <p>Information about the retention period for which the retention rule is to retain resources.</p>
    #
    #   @return [RetentionPeriod]
    #
    RuleSummary = ::Struct.new(
      :identifier,
      :description,
      :retention_period,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request would cause a service quota for the number of tags per resource to be exceeded.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>The reason for the exception.</p>
    #
    #   Enum, one of: ["SERVICE_QUOTA_EXCEEDED"]
    #
    #   @return [String]
    #
    ServiceQuotaExceededException = ::Struct.new(
      :message,
      :reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ServiceQuotaExceededExceptionReason
    #
    module ServiceQuotaExceededExceptionReason
      # No documentation available.
      #
      SERVICE_QUOTA_EXCEEDED = "SERVICE_QUOTA_EXCEEDED"
    end

    # <p>Information about the tags to assign to the retention rule.</p>
    #
    # @!attribute key
    #   <p>The tag key.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The tag value.</p>
    #
    #   @return [String]
    #
    Tag = ::Struct.new(
      :key,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the retention rule.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Information about the tags to assign to the retention rule.</p>
    #
    #   @return [Array<Tag>]
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

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the retention rule.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>The tag keys of the tags to unassign. All tags that have the specified tag key are unassigned.</p>
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

    # @!attribute identifier
    #   <p>The unique ID of the retention rule.</p>
    #
    #   @return [String]
    #
    # @!attribute retention_period
    #   <p>Information about the retention period for which the retention rule is to retain resources.</p>
    #
    #   @return [RetentionPeriod]
    #
    # @!attribute description
    #   <p>The retention rule description.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The resource type to be retained by the retention rule. Currently, only Amazon EBS snapshots
    #         and EBS-backed AMIs are supported. To retain snapshots, specify <code>EBS_SNAPSHOT</code>. To
    #         retain EBS-backed AMIs, specify <code>EC2_IMAGE</code>.</p>
    #
    #   Enum, one of: ["EBS_SNAPSHOT", "EC2_IMAGE"]
    #
    #   @return [String]
    #
    # @!attribute resource_tags
    #   <p>Specifies the resource tags to use to identify resources that are to be retained by a
    #     tag-level retention rule. For tag-level retention rules, only deleted resources, of the specified resource type, that
    #     have one or more of the specified tag key and value pairs are retained. If a resource is deleted, but it does not have
    #     any of the specified tag key and value pairs, it is immediately deleted without being retained by the retention rule.</p>
    #            <p>You can add the same tag key and value pair to a maximum or five retention rules.</p>
    #            <p>To create a Region-level retention rule, omit this parameter. A Region-level retention rule
    #         does not have any resource tags specified. It retains all deleted resources of the specified
    #         resource type in the Region in which the rule is created, even if the resources are not tagged.</p>
    #
    #   @return [Array<ResourceTag>]
    #
    UpdateRuleInput = ::Struct.new(
      :identifier,
      :retention_period,
      :description,
      :resource_type,
      :resource_tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute identifier
    #   <p>The unique ID of the retention rule.</p>
    #
    #   @return [String]
    #
    # @!attribute retention_period
    #   <p>Information about the retention period for which the retention rule is to retain resources.</p>
    #
    #   @return [RetentionPeriod]
    #
    # @!attribute description
    #   <p>The retention rule description.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The resource type retained by the retention rule.</p>
    #
    #   Enum, one of: ["EBS_SNAPSHOT", "EC2_IMAGE"]
    #
    #   @return [String]
    #
    # @!attribute resource_tags
    #   <p>Information about the resource tags used to identify resources that are retained by the retention
    #         rule.</p>
    #
    #   @return [Array<ResourceTag>]
    #
    # @!attribute status
    #   <p>The state of the retention rule. Only retention rules that are in the <code>available</code>
    #         state retain resources.</p>
    #
    #   Enum, one of: ["pending", "available"]
    #
    #   @return [String]
    #
    UpdateRuleOutput = ::Struct.new(
      :identifier,
      :retention_period,
      :description,
      :resource_type,
      :resource_tags,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>One or more of the parameters in the request is not valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>The reason for the exception.</p>
    #
    #   Enum, one of: ["INVALID_PAGE_TOKEN", "INVALID_PARAMETER_VALUE"]
    #
    #   @return [String]
    #
    ValidationException = ::Struct.new(
      :message,
      :reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ValidationExceptionReason
    #
    module ValidationExceptionReason
      # No documentation available.
      #
      INVALID_PAGE_TOKEN = "INVALID_PAGE_TOKEN"

      # No documentation available.
      #
      INVALID_PARAMETER_VALUE = "INVALID_PARAMETER_VALUE"
    end

  end
end
