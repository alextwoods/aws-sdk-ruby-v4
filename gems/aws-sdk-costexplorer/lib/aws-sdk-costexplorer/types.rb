# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CostExplorer
  module Types

    # Includes enum constants for AccountScope
    #
    module AccountScope
      # No documentation available.
      #
      PAYER = "PAYER"

      # No documentation available.
      #
      LINKED = "LINKED"
    end

    # <p>An unusual cost pattern. This consists of the detailed metadata and the current status
    #             of the anomaly object. </p>
    #
    # @!attribute anomaly_id
    #   <p>The unique identifier for the anomaly. </p>
    #
    #   @return [String]
    #
    # @!attribute anomaly_start_date
    #   <p>The first day the anomaly is detected. </p>
    #
    #   @return [String]
    #
    # @!attribute anomaly_end_date
    #   <p>The last day the anomaly is detected. </p>
    #
    #   @return [String]
    #
    # @!attribute dimension_value
    #   <p>The dimension for the anomaly (for example, an Amazon Web Service in a service
    #               monitor). </p>
    #
    #   @return [String]
    #
    # @!attribute root_causes
    #   <p>The list of identified root causes for the anomaly. </p>
    #
    #   @return [Array<RootCause>]
    #
    # @!attribute anomaly_score
    #   <p>The latest and maximum score for the anomaly. </p>
    #
    #   @return [AnomalyScore]
    #
    # @!attribute impact
    #   <p>The dollar impact for the anomaly. </p>
    #
    #   @return [Impact]
    #
    # @!attribute monitor_arn
    #   <p>The Amazon Resource Name (ARN) for the cost monitor that generated this anomaly.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute feedback
    #   <p>The feedback value. </p>
    #
    #   Enum, one of: ["YES", "NO", "PLANNED_ACTIVITY"]
    #
    #   @return [String]
    #
    Anomaly = ::Struct.new(
      :anomaly_id,
      :anomaly_start_date,
      :anomaly_end_date,
      :dimension_value,
      :root_causes,
      :anomaly_score,
      :impact,
      :monitor_arn,
      :feedback,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The time period for an anomaly. </p>
    #
    # @!attribute start_date
    #   <p>The first date an anomaly was observed. </p>
    #
    #   @return [String]
    #
    # @!attribute end_date
    #   <p>The last date an anomaly was observed. </p>
    #
    #   @return [String]
    #
    AnomalyDateInterval = ::Struct.new(
      :start_date,
      :end_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AnomalyFeedbackType
    #
    module AnomalyFeedbackType
      # No documentation available.
      #
      YES = "YES"

      # No documentation available.
      #
      NO = "NO"

      # No documentation available.
      #
      PLANNED_ACTIVITY = "PLANNED_ACTIVITY"
    end

    # <p>This object continuously inspects your account's cost data for anomalies. It's based
    #             on <code>MonitorType</code> and <code>MonitorSpecification</code>. The content consists
    #             of detailed metadata and the current status of the monitor object. </p>
    #
    # @!attribute monitor_arn
    #   <p>The Amazon Resource Name (ARN) value. </p>
    #
    #   @return [String]
    #
    # @!attribute monitor_name
    #   <p>The name of the monitor. </p>
    #
    #   @return [String]
    #
    # @!attribute creation_date
    #   <p>The date when the monitor was created. </p>
    #
    #   @return [String]
    #
    # @!attribute last_updated_date
    #   <p>The date when the monitor was last updated. </p>
    #
    #   @return [String]
    #
    # @!attribute last_evaluated_date
    #   <p>The date when the monitor last evaluated for anomalies. </p>
    #
    #   @return [String]
    #
    # @!attribute monitor_type
    #   <p>The possible type values. </p>
    #
    #   Enum, one of: ["DIMENSIONAL", "CUSTOM"]
    #
    #   @return [String]
    #
    # @!attribute monitor_dimension
    #   <p>The dimensions to evaluate. </p>
    #
    #   Enum, one of: ["SERVICE"]
    #
    #   @return [String]
    #
    # @!attribute monitor_specification
    #   <p>Use <code>Expression</code> to filter by cost or by usage. There are two patterns: </p>
    #           <ul>
    #               <li>
    #                   <p>Simple dimension values - You can set the dimension name and values for the
    #                       filters that you plan to use. For example, you can filter for
    #                           <code>REGION==us-east-1 OR REGION==us-west-1</code>. For
    #                           <code>GetRightsizingRecommendation</code>, the Region is a full name (for
    #                       example, <code>REGION==US East (N. Virginia)</code>. The <code>Expression</code>
    #                       example is as follows:</p>
    #                   <p>
    #                       <code>{ "Dimensions": { "Key": "REGION", "Values": [ "us-east-1", “us-west-1” ]
    #                           } }</code>
    #                   </p>
    #                   <p>The list of dimension values are OR'd together to retrieve cost or usage data.
    #                       You can create <code>Expression</code> and <code>DimensionValues</code> objects
    #                       using either <code>with*</code> methods or <code>set*</code> methods in multiple
    #                       lines. </p>
    #               </li>
    #               <li>
    #                   <p>Compound dimension values with logical operations - You can use multiple
    #                           <code>Expression</code> types and the logical operators
    #                           <code>AND/OR/NOT</code> to create a list of one or more
    #                           <code>Expression</code> objects. By doing this, you can filter on more
    #                       advanced options. For example, you can filter on <code>((REGION == us-east-1 OR
    #                           REGION == us-west-1) OR (TAG.Type == Type1)) AND (USAGE_TYPE !=
    #                           DataTransfer)</code>. The <code>Expression</code> for that is as
    #                       follows:</p>
    #                   <p>
    #                       <code>{ "And": [ {"Or": [ {"Dimensions": { "Key": "REGION", "Values": [
    #                           "us-east-1", "us-west-1" ] }}, {"Tags": { "Key": "TagName", "Values":
    #                           ["Value1"] } } ]}, {"Not": {"Dimensions": { "Key": "USAGE_TYPE", "Values":
    #                           ["DataTransfer"] }}} ] } </code>
    #                   </p>
    #                   <note>
    #                       <p>Because each <code>Expression</code> can have only one operator, the
    #                           service returns an error if more than one is specified. The following
    #                           example shows an <code>Expression</code> object that creates an
    #                           error.</p>
    #                   </note>
    #                   <p>
    #                       <code> { "And": [ ... ], "DimensionValues": { "Dimension": "USAGE_TYPE",
    #                           "Values": [ "DataTransfer" ] } } </code>
    #                   </p>
    #               </li>
    #            </ul>
    #           <note>
    #               <p>For the <code>GetRightsizingRecommendation</code> action, a combination of OR and
    #                   NOT isn't supported. OR isn't supported between different dimensions, or dimensions
    #                   and tags. NOT operators aren't supported. Dimensions are also limited to
    #                       <code>LINKED_ACCOUNT</code>, <code>REGION</code>, or
    #                       <code>RIGHTSIZING_TYPE</code>.</p>
    #               <p>For the <code>GetReservationPurchaseRecommendation</code> action, only NOT is
    #                   supported. AND and OR aren't supported. Dimensions are limited to
    #                       <code>LINKED_ACCOUNT</code>.</p>
    #           </note>
    #
    #   @return [Expression]
    #
    # @!attribute dimensional_value_count
    #   <p>The value for evaluated dimensions. </p>
    #
    #   @return [Integer]
    #
    AnomalyMonitor = ::Struct.new(
      :monitor_arn,
      :monitor_name,
      :creation_date,
      :last_updated_date,
      :last_evaluated_date,
      :monitor_type,
      :monitor_dimension,
      :monitor_specification,
      :dimensional_value_count,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.dimensional_value_count ||= 0
      end

    end

    # <p>Quantifies the anomaly. The higher score means that it's more anomalous. </p>
    #
    # @!attribute max_score
    #   <p>The maximum score that's observed during the <code>AnomalyDateInterval</code>. </p>
    #
    #   @return [Float]
    #
    # @!attribute current_score
    #   <p>The last observed score. </p>
    #
    #   @return [Float]
    #
    AnomalyScore = ::Struct.new(
      :max_score,
      :current_score,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max_score ||= 0
        self.current_score ||= 0
      end

    end

    # <p>The association between a monitor, threshold, and list of subscribers used to deliver
    #             notifications about anomalies detected by a monitor that exceeds a threshold. The
    #             content consists of the detailed metadata and the current status of the
    #                 <code>AnomalySubscription</code> object. </p>
    #
    # @!attribute subscription_arn
    #   <p>The <code>AnomalySubscription</code> Amazon Resource Name (ARN). </p>
    #
    #   @return [String]
    #
    # @!attribute account_id
    #   <p>Your unique account identifier. </p>
    #
    #   @return [String]
    #
    # @!attribute monitor_arn_list
    #   <p>A list of cost anomaly monitors. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute subscribers
    #   <p>A list of subscribers to notify. </p>
    #
    #   @return [Array<Subscriber>]
    #
    # @!attribute threshold
    #   <p>The dollar value that triggers a notification if the threshold is exceeded. </p>
    #
    #   @return [Float]
    #
    # @!attribute frequency
    #   <p>The frequency that anomaly reports are sent over email. </p>
    #
    #   Enum, one of: ["DAILY", "IMMEDIATE", "WEEKLY"]
    #
    #   @return [String]
    #
    # @!attribute subscription_name
    #   <p>The name for the subscription. </p>
    #
    #   @return [String]
    #
    AnomalySubscription = ::Struct.new(
      :subscription_arn,
      :account_id,
      :monitor_arn_list,
      :subscribers,
      :threshold,
      :frequency,
      :subscription_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AnomalySubscriptionFrequency
    #
    module AnomalySubscriptionFrequency
      # No documentation available.
      #
      DAILY = "DAILY"

      # No documentation available.
      #
      IMMEDIATE = "IMMEDIATE"

      # No documentation available.
      #
      WEEKLY = "WEEKLY"
    end

    # <p>The requested report expired. Update the date interval and try again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    BillExpirationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Context
    #
    module Context
      # No documentation available.
      #
      COST_AND_USAGE = "COST_AND_USAGE"

      # No documentation available.
      #
      RESERVATIONS = "RESERVATIONS"

      # No documentation available.
      #
      SAVINGS_PLANS = "SAVINGS_PLANS"
    end

    # <p>The cost allocation tag structure. This includes detailed metadata for the
    #                 <code>CostAllocationTag</code> object. </p>
    #
    # @!attribute tag_key
    #   <p>The key for the cost allocation tag. </p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of cost allocation tag. You can use <code>AWSGenerated</code> or
    #                   <code>UserDefined</code> type tags. <code>AWSGenerated</code> type tags are tags
    #               that Amazon Web Services defines and applies to support Amazon Web Services resources for
    #               cost allocation purposes. <code>UserDefined</code> type tags are tags that you define,
    #               create, and apply to resources. </p>
    #
    #   Enum, one of: ["AWSGenerated", "UserDefined"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of a cost allocation tag. </p>
    #
    #   Enum, one of: ["Active", "Inactive"]
    #
    #   @return [String]
    #
    CostAllocationTag = ::Struct.new(
      :tag_key,
      :type,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CostAllocationTagStatus
    #
    module CostAllocationTagStatus
      # No documentation available.
      #
      ACTIVE = "Active"

      # No documentation available.
      #
      INACTIVE = "Inactive"
    end

    # <p>The cost allocation tag status. The status of a key can either be active or inactive. </p>
    #
    # @!attribute tag_key
    #   <p>The key for the cost allocation tag. </p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of a cost allocation tag. </p>
    #
    #   Enum, one of: ["Active", "Inactive"]
    #
    #   @return [String]
    #
    CostAllocationTagStatusEntry = ::Struct.new(
      :tag_key,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CostAllocationTagType
    #
    module CostAllocationTagType
      # No documentation available.
      #
      AWS_GENERATED = "AWSGenerated"

      # No documentation available.
      #
      USER_DEFINED = "UserDefined"
    end

    # <p>The structure of Cost Categories. This includes detailed metadata and the set of rules
    #             for the <code>CostCategory</code> object.</p>
    #
    # @!attribute cost_category_arn
    #   <p>The unique identifier for your Cost Category. </p>
    #
    #   @return [String]
    #
    # @!attribute effective_start
    #   <p>The effective state data of your Cost Category.</p>
    #
    #   @return [String]
    #
    # @!attribute effective_end
    #   <p>The effective end data of your Cost Category.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The unique name of the Cost Category.</p>
    #
    #   @return [String]
    #
    # @!attribute rule_version
    #   <p>The rule schema version in this particular Cost Category.</p>
    #
    #   Enum, one of: ["CostCategoryExpression.v1"]
    #
    #   @return [String]
    #
    # @!attribute rules
    #   <p>The rules are processed in order. If there are multiple rules that match the line
    #               item, then the first rule to match is used to determine that Cost Category value.
    #           </p>
    #
    #   @return [Array<CostCategoryRule>]
    #
    # @!attribute split_charge_rules
    #   <p> The split charge rules that are used to allocate your charges between your Cost
    #               Category values. </p>
    #
    #   @return [Array<CostCategorySplitChargeRule>]
    #
    # @!attribute processing_status
    #   <p>The list of processing statuses for Cost Management products for a specific cost
    #               category. </p>
    #
    #   @return [Array<CostCategoryProcessingStatus>]
    #
    # @!attribute default_value
    #   <p>The
    #               default value for the cost category.</p>
    #
    #   @return [String]
    #
    CostCategory = ::Struct.new(
      :cost_category_arn,
      :effective_start,
      :effective_end,
      :name,
      :rule_version,
      :rules,
      :split_charge_rules,
      :processing_status,
      :default_value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>When you create or update a cost category, you can define the
    #                 <code>CostCategoryRule</code> rule type as <code>INHERITED_VALUE</code>. This rule
    #             type adds the flexibility to define a rule that dynamically inherits the cost category
    #             value from the dimension value that's defined by
    #                 <code>CostCategoryInheritedValueDimension</code>. For example, suppose that you want
    #             to dynamically group costs that are based on the value of a specific tag key. First,
    #             choose an inherited value rule type, and then choose the tag dimension and specify the
    #             tag key to use.</p>
    #
    # @!attribute dimension_name
    #   <p>The name of the dimension that's used to group costs.</p>
    #           <p>If you specify <code>LINKED_ACCOUNT_NAME</code>, the cost category value is based on
    #               account name. If you specify <code>TAG</code>, the cost category value is based on the
    #               value of the specified tag key.</p>
    #
    #   Enum, one of: ["LINKED_ACCOUNT_NAME", "TAG"]
    #
    #   @return [String]
    #
    # @!attribute dimension_key
    #   <p>The key to extract cost category values.</p>
    #
    #   @return [String]
    #
    CostCategoryInheritedValueDimension = ::Struct.new(
      :dimension_name,
      :dimension_key,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CostCategoryInheritedValueDimensionName
    #
    module CostCategoryInheritedValueDimensionName
      # No documentation available.
      #
      LINKED_ACCOUNT_NAME = "LINKED_ACCOUNT_NAME"

      # No documentation available.
      #
      TAG = "TAG"
    end

    # <p>The list of processing statuses for Cost Management products for a specific cost
    #             category. </p>
    #
    # @!attribute component
    #   <p>The Cost Management product name of the applied status. </p>
    #
    #   Enum, one of: ["COST_EXPLORER"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The process status for a specific cost category. </p>
    #
    #   Enum, one of: ["PROCESSING", "APPLIED"]
    #
    #   @return [String]
    #
    CostCategoryProcessingStatus = ::Struct.new(
      :component,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A reference to a Cost Category containing only enough information to identify the Cost
    #             Category.</p>
    #         <p>You can use this information to retrieve the full Cost Category information using
    #                 <code>DescribeCostCategory</code>.</p>
    #
    # @!attribute cost_category_arn
    #   <p>The unique identifier for your Cost Category. </p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The unique name of the Cost Category.</p>
    #
    #   @return [String]
    #
    # @!attribute effective_start
    #   <p>The Cost Category's effective start date.</p>
    #
    #   @return [String]
    #
    # @!attribute effective_end
    #   <p>The Cost Category's effective end date.</p>
    #
    #   @return [String]
    #
    # @!attribute number_of_rules
    #   <p>The number of rules that are associated with a specific Cost Category. </p>
    #
    #   @return [Integer]
    #
    # @!attribute processing_status
    #   <p>The list of processing statuses for Cost Management products for a specific cost
    #               category. </p>
    #
    #   @return [Array<CostCategoryProcessingStatus>]
    #
    # @!attribute values
    #   <p>A list of unique cost category values in a specific cost category. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute default_value
    #   <p>The
    #               default value for the cost category.</p>
    #
    #   @return [String]
    #
    CostCategoryReference = ::Struct.new(
      :cost_category_arn,
      :name,
      :effective_start,
      :effective_end,
      :number_of_rules,
      :processing_status,
      :values,
      :default_value,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.number_of_rules ||= 0
      end

    end

    # <p>Rules are processed in order. If there are multiple rules that match the line item,
    #             then the first rule to match is used to determine that Cost Category value.</p>
    #
    # @!attribute value
    #   <p>The
    #               default value for the cost category.</p>
    #
    #   @return [String]
    #
    # @!attribute rule
    #   <p>An <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html">Expression</a>
    #               object used to categorize costs. This supports dimensions, tags, and nested expressions.
    #               Currently the only dimensions supported are <code>LINKED_ACCOUNT</code>,
    #                   <code>SERVICE_CODE</code>, <code>RECORD_TYPE</code>, and
    #                   <code>LINKED_ACCOUNT_NAME</code>.</p>
    #           <p>Root level <code>OR</code> isn't supported. We recommend that you create a separate
    #               rule instead.</p>
    #           <p>
    #               <code>RECORD_TYPE</code> is a dimension used for Cost Explorer APIs, and is also
    #               supported for Cost Category expressions. This dimension uses different terms, depending
    #               on whether you're using the console or API/JSON editor. For a detailed comparison, see
    #                   <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/manage-cost-categories.html cost-categories-terms">Term Comparisons</a> in the <i>Billing and Cost Management User
    #                   Guide</i>.</p>
    #
    #   @return [Expression]
    #
    # @!attribute inherited_value
    #   <p>The value the line item is categorized as if the line item contains the matched
    #               dimension.</p>
    #
    #   @return [CostCategoryInheritedValueDimension]
    #
    # @!attribute type
    #   <p>You can define the <code>CostCategoryRule</code> rule type as either
    #                   <code>REGULAR</code> or <code>INHERITED_VALUE</code>. The
    #                   <code>INHERITED_VALUE</code> rule type adds the flexibility to define a rule that
    #               dynamically inherits the cost category value. This value is from the dimension value
    #               that's defined by <code>CostCategoryInheritedValueDimension</code>. For example, suppose
    #               that you want to costs to be dynamically grouped based on the value of a specific tag
    #               key. First, choose an inherited value rule type, and then choose the tag dimension and
    #               specify the tag key to use.</p>
    #
    #   Enum, one of: ["REGULAR", "INHERITED_VALUE"]
    #
    #   @return [String]
    #
    CostCategoryRule = ::Struct.new(
      :value,
      :rule,
      :inherited_value,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CostCategoryRuleType
    #
    module CostCategoryRuleType
      # No documentation available.
      #
      REGULAR = "REGULAR"

      # No documentation available.
      #
      INHERITED_VALUE = "INHERITED_VALUE"
    end

    # Includes enum constants for CostCategoryRuleVersion
    #
    module CostCategoryRuleVersion
      # No documentation available.
      #
      CostCategoryExpressionV1 = "CostCategoryExpression.v1"
    end

    # Includes enum constants for CostCategorySplitChargeMethod
    #
    module CostCategorySplitChargeMethod
      # No documentation available.
      #
      FIXED = "FIXED"

      # No documentation available.
      #
      PROPORTIONAL = "PROPORTIONAL"

      # No documentation available.
      #
      EVEN = "EVEN"
    end

    # <p>Use the split charge rule to split the cost of one Cost Category value across several
    #             other target values. </p>
    #
    # @!attribute source
    #   <p>The Cost Category value that you want to split. That value can't be used as a source
    #               or a target in other split charge rules. To indicate uncategorized costs, you can use an empty string as the source.</p>
    #
    #   @return [String]
    #
    # @!attribute targets
    #   <p>The Cost Category values that you want to split costs across. These values can't be
    #               used as a source in other split charge rules. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute member_method
    #   <p>The method that's used to define how to split your source costs across your targets. </p>
    #           <p>
    #               <code>Proportional</code> - Allocates charges across your targets based on the
    #               proportional weighted cost of each target.</p>
    #           <p>
    #               <code>Fixed</code> - Allocates charges across your targets based on your defined
    #               allocation percentage.</p>
    #           <p>><code>Even</code> - Allocates costs evenly across all targets.</p>
    #
    #   Enum, one of: ["FIXED", "PROPORTIONAL", "EVEN"]
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>The parameters for a split charge method. This is only required for the
    #                   <code>FIXED</code> method. </p>
    #
    #   @return [Array<CostCategorySplitChargeRuleParameter>]
    #
    CostCategorySplitChargeRule = ::Struct.new(
      :source,
      :targets,
      :member_method,
      :parameters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The parameters for a split charge method. </p>
    #
    # @!attribute type
    #   <p>The parameter type. </p>
    #
    #   Enum, one of: ["ALLOCATION_PERCENTAGES"]
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>The parameter values. </p>
    #
    #   @return [Array<String>]
    #
    CostCategorySplitChargeRuleParameter = ::Struct.new(
      :type,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CostCategorySplitChargeRuleParameterType
    #
    module CostCategorySplitChargeRuleParameterType
      # No documentation available.
      #
      ALLOCATION_PERCENTAGES = "ALLOCATION_PERCENTAGES"
    end

    # Includes enum constants for CostCategoryStatus
    #
    module CostCategoryStatus
      # No documentation available.
      #
      PROCESSING = "PROCESSING"

      # No documentation available.
      #
      APPLIED = "APPLIED"
    end

    # Includes enum constants for CostCategoryStatusComponent
    #
    module CostCategoryStatusComponent
      # No documentation available.
      #
      COST_EXPLORER = "COST_EXPLORER"
    end

    # <p>The Cost Categories values used for filtering the costs.</p>
    #         <p>If <code>Values</code> and <code>Key</code> are not specified, the <code>ABSENT</code>
    #             <code>MatchOption</code> is applied to all Cost Categories. That is, it filters on
    #             resources that aren't mapped to any Cost Categories.</p>
    #         <p>If <code>Values</code> is provided and <code>Key</code> isn't specified, the
    #                 <code>ABSENT</code>
    #             <code>MatchOption</code> is applied to the Cost Categories <code>Key</code> only. That
    #             is, it filters on resources without the given Cost Categories key.</p>
    #
    # @!attribute key
    #   <p>The unique name of the Cost Category.</p>
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>The specific value of the Cost Category.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute match_options
    #   <p>The match options that you can use to filter your results. MatchOptions is only
    #               applicable for actions related to cost category. The default values for
    #                   <code>MatchOptions</code> is <code>EQUALS</code> and <code>CASE_SENSITIVE</code>.
    #           </p>
    #
    #   @return [Array<String>]
    #
    CostCategoryValues = ::Struct.new(
      :key,
      :values,
      :match_options,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The amount of instance usage that a reservation covered.</p>
    #
    # @!attribute coverage_hours
    #   <p>The amount of instance usage that the reservation covered, in hours.</p>
    #
    #   @return [CoverageHours]
    #
    # @!attribute coverage_normalized_units
    #   <p>The amount of instance usage that the reservation covered, in normalized units.</p>
    #
    #   @return [CoverageNormalizedUnits]
    #
    # @!attribute coverage_cost
    #   <p>The amount of cost that the reservation covered.</p>
    #
    #   @return [CoverageCost]
    #
    Coverage = ::Struct.new(
      :coverage_hours,
      :coverage_normalized_units,
      :coverage_cost,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Reservation coverage for a specified period, in hours.</p>
    #
    # @!attribute time_period
    #   <p>The period that this coverage was used over.</p>
    #
    #   @return [DateInterval]
    #
    # @!attribute groups
    #   <p>The groups of instances that the reservation covered.</p>
    #
    #   @return [Array<ReservationCoverageGroup>]
    #
    # @!attribute total
    #   <p>The total reservation coverage, in hours.</p>
    #
    #   @return [Coverage]
    #
    CoverageByTime = ::Struct.new(
      :time_period,
      :groups,
      :total,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>How much it costs to run an instance.</p>
    #
    # @!attribute on_demand_cost
    #   <p>How much an On-Demand Instance costs.</p>
    #
    #   @return [String]
    #
    CoverageCost = ::Struct.new(
      :on_demand_cost,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>How long a running instance either used a reservation or was On-Demand.</p>
    #
    # @!attribute on_demand_hours
    #   <p>The number of instance running hours that On-Demand Instances covered.</p>
    #
    #   @return [String]
    #
    # @!attribute reserved_hours
    #   <p>The number of instance running hours that reservations covered.</p>
    #
    #   @return [String]
    #
    # @!attribute total_running_hours
    #   <p>The total instance usage, in hours.</p>
    #
    #   @return [String]
    #
    # @!attribute coverage_hours_percentage
    #   <p>The percentage of instance hours that a reservation covered.</p>
    #
    #   @return [String]
    #
    CoverageHours = ::Struct.new(
      :on_demand_hours,
      :reserved_hours,
      :total_running_hours,
      :coverage_hours_percentage,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The amount of instance usage, in normalized units. You can use normalized units to see
    #             your EC2 usage for multiple sizes of instances in a uniform way. For example, suppose
    #             that you run an xlarge instance and a 2xlarge instance. If you run both instances for
    #             the same amount of time, the 2xlarge instance uses twice as much of your reservation as
    #             the xlarge instance, even though both instances show only one instance-hour. When you
    #             use normalized units instead of instance-hours, the xlarge instance used 8 normalized
    #             units, and the 2xlarge instance used 16 normalized units.</p>
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-modifying.html">Modifying Reserved Instances</a>
    #             in the <i>Amazon Elastic Compute Cloud User Guide for Linux
    #             Instances</i>.</p>
    #
    # @!attribute on_demand_normalized_units
    #   <p>The number of normalized units that are covered by On-Demand Instances instead of a
    #               reservation.</p>
    #
    #   @return [String]
    #
    # @!attribute reserved_normalized_units
    #   <p>The number of normalized units that a reservation covers.</p>
    #
    #   @return [String]
    #
    # @!attribute total_running_normalized_units
    #   <p>The total number of normalized units that you used.</p>
    #
    #   @return [String]
    #
    # @!attribute coverage_normalized_units_percentage
    #   <p>The percentage of your used instance normalized units that a reservation
    #               covers.</p>
    #
    #   @return [String]
    #
    CoverageNormalizedUnits = ::Struct.new(
      :on_demand_normalized_units,
      :reserved_normalized_units,
      :total_running_normalized_units,
      :coverage_normalized_units_percentage,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute anomaly_monitor
    #   <p>The cost anomaly detection monitor object that you want to create.</p>
    #
    #   @return [AnomalyMonitor]
    #
    # @!attribute resource_tags
    #   <p>An optional list of tags to associate with the specified <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_AnomalyMonitor.html">
    #                  <code>AnomalyMonitor</code>
    #               </a>. You can use resource tags to control access to your
    #           <code>monitor</code> using IAM policies.</p>
    #            <p>Each tag consists of a key and a value, and each key must be unique for the resource. The following restrictions apply to resource tags:</p>
    #            <ul>
    #               <li>
    #                  <p>Although the maximum number of array members is 200, you can assign a maximum of 50 user-tags to one resource. The remaining are reserved for Amazon Web Services use</p>
    #               </li>
    #               <li>
    #                  <p>The maximum length of a key is 128 characters</p>
    #               </li>
    #               <li>
    #                  <p>The maximum length of a value is 256 characters</p>
    #               </li>
    #               <li>
    #                  <p>Keys and values can only contain alphanumeric characters, spaces, and any of the following: <code>_.:/=+@-</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Keys and values are case sensitive</p>
    #               </li>
    #               <li>
    #                  <p>Keys and values are trimmed for any leading or trailing whitespaces</p>
    #               </li>
    #               <li>
    #                  <p>Don’t use <code>aws:</code> as a prefix for your keys. This prefix is reserved for Amazon Web Services use</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<ResourceTag>]
    #
    CreateAnomalyMonitorInput = ::Struct.new(
      :anomaly_monitor,
      :resource_tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute monitor_arn
    #   <p>The unique identifier of your newly created cost anomaly detection monitor.</p>
    #
    #   @return [String]
    #
    CreateAnomalyMonitorOutput = ::Struct.new(
      :monitor_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute anomaly_subscription
    #   <p>The cost anomaly subscription object that you want to create. </p>
    #
    #   @return [AnomalySubscription]
    #
    # @!attribute resource_tags
    #   <p>An optional list of tags to associate with the specified <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_AnomalySubscription.html">
    #                  <code>AnomalySubscription</code>
    #               </a>. You can use resource tags to control access to
    #         your <code>subscription</code> using IAM policies.</p>
    #            <p>Each tag consists of a key and a value, and each key must be unique for the resource. The following restrictions apply to resource tags:</p>
    #            <ul>
    #               <li>
    #                  <p>Although the maximum number of array members is 200, you can assign a maximum of 50 user-tags to one resource. The remaining are reserved for Amazon Web Services use</p>
    #               </li>
    #               <li>
    #                  <p>The maximum length of a key is 128 characters</p>
    #               </li>
    #               <li>
    #                  <p>The maximum length of a value is 256 characters</p>
    #               </li>
    #               <li>
    #                  <p>Keys and values can only contain alphanumeric characters, spaces, and any of the following: <code>_.:/=+@-</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Keys and values are case sensitive</p>
    #               </li>
    #               <li>
    #                  <p>Keys and values are trimmed for any leading or trailing whitespaces</p>
    #               </li>
    #               <li>
    #                  <p>Don’t use <code>aws:</code> as a prefix for your keys. This prefix is reserved for Amazon Web Services use</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<ResourceTag>]
    #
    CreateAnomalySubscriptionInput = ::Struct.new(
      :anomaly_subscription,
      :resource_tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute subscription_arn
    #   <p>The unique identifier of your newly created cost anomaly subscription. </p>
    #
    #   @return [String]
    #
    CreateAnomalySubscriptionOutput = ::Struct.new(
      :subscription_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The unique name of the Cost Category.</p>
    #
    #   @return [String]
    #
    # @!attribute rule_version
    #   <p>The rule schema version in this particular Cost Category.</p>
    #
    #   Enum, one of: ["CostCategoryExpression.v1"]
    #
    #   @return [String]
    #
    # @!attribute rules
    #   <p>The Cost Category rules used to categorize costs. For more information, see
    #           <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_CostCategoryRule.html">CostCategoryRule</a>.</p>
    #
    #   @return [Array<CostCategoryRule>]
    #
    # @!attribute default_value
    #   <p>The
    #               default value for the cost category.</p>
    #
    #   @return [String]
    #
    # @!attribute split_charge_rules
    #   <p>
    #         The split charge rules used to allocate your charges between your Cost Category values.
    #       </p>
    #
    #   @return [Array<CostCategorySplitChargeRule>]
    #
    # @!attribute resource_tags
    #   <p>An optional list of tags to associate with the specified <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_CostCategory.html">
    #                  <code>CostCategory</code>
    #               </a>. You can use resource tags to control access to your
    #           <code>cost category</code> using IAM policies.</p>
    #            <p>Each tag consists of a key and a value, and each key must be unique for the resource. The following restrictions apply to resource tags:</p>
    #            <ul>
    #               <li>
    #                  <p>Although the maximum number of array members is 200, you can assign a maximum of 50 user-tags to one resource. The remaining are reserved for Amazon Web Services use</p>
    #               </li>
    #               <li>
    #                  <p>The maximum length of a key is 128 characters</p>
    #               </li>
    #               <li>
    #                  <p>The maximum length of a value is 256 characters</p>
    #               </li>
    #               <li>
    #                  <p>Keys and values can only contain alphanumeric characters, spaces, and any of the following: <code>_.:/=+@-</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Keys and values are case sensitive</p>
    #               </li>
    #               <li>
    #                  <p>Keys and values are trimmed for any leading or trailing whitespaces</p>
    #               </li>
    #               <li>
    #                  <p>Don’t use <code>aws:</code> as a prefix for your keys. This prefix is reserved for Amazon Web Services use</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<ResourceTag>]
    #
    CreateCostCategoryDefinitionInput = ::Struct.new(
      :name,
      :rule_version,
      :rules,
      :default_value,
      :split_charge_rules,
      :resource_tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cost_category_arn
    #   <p>The unique identifier for your newly created Cost Category. </p>
    #
    #   @return [String]
    #
    # @!attribute effective_start
    #   <p>The Cost Category's effective start date. </p>
    #
    #   @return [String]
    #
    CreateCostCategoryDefinitionOutput = ::Struct.new(
      :cost_category_arn,
      :effective_start,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Context about the current instance.</p>
    #
    # @!attribute resource_id
    #   <p>Resource ID of the current instance.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_name
    #   <p>The name that you given an instance. This field shows as blank if you haven't given
    #               the instance a name.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Cost allocation resource tags that are applied to the instance.</p>
    #
    #   @return [Array<TagValues>]
    #
    # @!attribute resource_details
    #   <p>Details about the resource and utilization.</p>
    #
    #   @return [ResourceDetails]
    #
    # @!attribute resource_utilization
    #   <p>Utilization information of the current instance during the lookback period.</p>
    #
    #   @return [ResourceUtilization]
    #
    # @!attribute reservation_covered_hours_in_lookback_period
    #   <p>The number of hours during the lookback period that's covered by reservations.</p>
    #
    #   @return [String]
    #
    # @!attribute savings_plans_covered_hours_in_lookback_period
    #   <p>The number of hours during the lookback period that's covered by Savings Plans.</p>
    #
    #   @return [String]
    #
    # @!attribute on_demand_hours_in_lookback_period
    #   <p>The number of hours during the lookback period that's billed at On-Demand
    #               rates.</p>
    #
    #   @return [String]
    #
    # @!attribute total_running_hours_in_lookback_period
    #   <p>The total number of hours that the instance ran during the lookback period.</p>
    #
    #   @return [String]
    #
    # @!attribute monthly_cost
    #   <p>The current On-Demand cost of operating this instance on a monthly basis.</p>
    #
    #   @return [String]
    #
    # @!attribute currency_code
    #   <p>The currency code that Amazon Web Services used to calculate the costs for this
    #               instance.</p>
    #
    #   @return [String]
    #
    CurrentInstance = ::Struct.new(
      :resource_id,
      :instance_name,
      :tags,
      :resource_details,
      :resource_utilization,
      :reservation_covered_hours_in_lookback_period,
      :savings_plans_covered_hours_in_lookback_period,
      :on_demand_hours_in_lookback_period,
      :total_running_hours_in_lookback_period,
      :monthly_cost,
      :currency_code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The requested data is unavailable.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DataUnavailableException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The time period of the request. </p>
    #
    # @!attribute start
    #   <p>The beginning of the time period. The start date is inclusive. For example, if
    #                   <code>start</code> is <code>2017-01-01</code>, Amazon Web Services retrieves cost and
    #               usage data starting at <code>2017-01-01</code> up to the end date. The start date must
    #               be equal to or no later than the current date to avoid a validation error.</p>
    #
    #   @return [String]
    #
    # @!attribute end
    #   <p>The end of the time period. The end date is exclusive. For example, if
    #                   <code>end</code> is <code>2017-05-01</code>, Amazon Web Services retrieves cost and
    #               usage data from the start date up to, but not including, <code>2017-05-01</code>.</p>
    #
    #   @return [String]
    #
    DateInterval = ::Struct.new(
      :start,
      :end,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute monitor_arn
    #   <p>The unique identifier of the cost anomaly monitor that you want to delete. </p>
    #
    #   @return [String]
    #
    DeleteAnomalyMonitorInput = ::Struct.new(
      :monitor_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteAnomalyMonitorOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute subscription_arn
    #   <p>The unique identifier of the cost anomaly subscription that you want to delete. </p>
    #
    #   @return [String]
    #
    DeleteAnomalySubscriptionInput = ::Struct.new(
      :subscription_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteAnomalySubscriptionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cost_category_arn
    #   <p>The unique identifier for your Cost Category. </p>
    #
    #   @return [String]
    #
    DeleteCostCategoryDefinitionInput = ::Struct.new(
      :cost_category_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cost_category_arn
    #   <p>The unique identifier for your Cost Category. </p>
    #
    #   @return [String]
    #
    # @!attribute effective_end
    #   <p>The effective end date of the Cost Category as a result of deleting it. No costs after
    #         this date is categorized by the deleted Cost Category. </p>
    #
    #   @return [String]
    #
    DeleteCostCategoryDefinitionOutput = ::Struct.new(
      :cost_category_arn,
      :effective_end,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cost_category_arn
    #   <p>The unique identifier for your Cost Category. </p>
    #
    #   @return [String]
    #
    # @!attribute effective_on
    #   <p>The date when the Cost Category was effective. </p>
    #
    #   @return [String]
    #
    DescribeCostCategoryDefinitionInput = ::Struct.new(
      :cost_category_arn,
      :effective_on,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cost_category
    #   <p>The structure of Cost Categories. This includes detailed metadata and the set of rules
    #               for the <code>CostCategory</code> object.</p>
    #
    #   @return [CostCategory]
    #
    DescribeCostCategoryDefinitionOutput = ::Struct.new(
      :cost_category,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Dimension
    #
    module Dimension
      # No documentation available.
      #
      AZ = "AZ"

      # No documentation available.
      #
      INSTANCE_TYPE = "INSTANCE_TYPE"

      # No documentation available.
      #
      LINKED_ACCOUNT = "LINKED_ACCOUNT"

      # No documentation available.
      #
      LINKED_ACCOUNT_NAME = "LINKED_ACCOUNT_NAME"

      # No documentation available.
      #
      OPERATION = "OPERATION"

      # No documentation available.
      #
      PURCHASE_TYPE = "PURCHASE_TYPE"

      # No documentation available.
      #
      REGION = "REGION"

      # No documentation available.
      #
      SERVICE = "SERVICE"

      # No documentation available.
      #
      SERVICE_CODE = "SERVICE_CODE"

      # No documentation available.
      #
      USAGE_TYPE = "USAGE_TYPE"

      # No documentation available.
      #
      USAGE_TYPE_GROUP = "USAGE_TYPE_GROUP"

      # No documentation available.
      #
      RECORD_TYPE = "RECORD_TYPE"

      # No documentation available.
      #
      OPERATING_SYSTEM = "OPERATING_SYSTEM"

      # No documentation available.
      #
      TENANCY = "TENANCY"

      # No documentation available.
      #
      SCOPE = "SCOPE"

      # No documentation available.
      #
      PLATFORM = "PLATFORM"

      # No documentation available.
      #
      SUBSCRIPTION_ID = "SUBSCRIPTION_ID"

      # No documentation available.
      #
      LEGAL_ENTITY_NAME = "LEGAL_ENTITY_NAME"

      # No documentation available.
      #
      DEPLOYMENT_OPTION = "DEPLOYMENT_OPTION"

      # No documentation available.
      #
      DATABASE_ENGINE = "DATABASE_ENGINE"

      # No documentation available.
      #
      CACHE_ENGINE = "CACHE_ENGINE"

      # No documentation available.
      #
      INSTANCE_TYPE_FAMILY = "INSTANCE_TYPE_FAMILY"

      # No documentation available.
      #
      BILLING_ENTITY = "BILLING_ENTITY"

      # No documentation available.
      #
      RESERVATION_ID = "RESERVATION_ID"

      # No documentation available.
      #
      RESOURCE_ID = "RESOURCE_ID"

      # No documentation available.
      #
      RIGHTSIZING_TYPE = "RIGHTSIZING_TYPE"

      # No documentation available.
      #
      SAVINGS_PLANS_TYPE = "SAVINGS_PLANS_TYPE"

      # No documentation available.
      #
      SAVINGS_PLAN_ARN = "SAVINGS_PLAN_ARN"

      # No documentation available.
      #
      PAYMENT_OPTION = "PAYMENT_OPTION"

      # No documentation available.
      #
      AGREEMENT_END_DATE_TIME_AFTER = "AGREEMENT_END_DATE_TIME_AFTER"

      # No documentation available.
      #
      AGREEMENT_END_DATE_TIME_BEFORE = "AGREEMENT_END_DATE_TIME_BEFORE"

      # No documentation available.
      #
      INVOICING_ENTITY = "INVOICING_ENTITY"
    end

    # <p>The metadata that you can use to filter and group your results. You can use
    #                 <code>GetDimensionValues</code> to find specific values.</p>
    #
    # @!attribute key
    #   <p>The names of the metadata types that you can use to filter and group your results. For
    #               example, <code>AZ</code> returns a list of Availability Zones.</p>
    #
    #   Enum, one of: ["AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "LINKED_ACCOUNT_NAME", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "SERVICE_CODE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "OPERATING_SYSTEM", "TENANCY", "SCOPE", "PLATFORM", "SUBSCRIPTION_ID", "LEGAL_ENTITY_NAME", "DEPLOYMENT_OPTION", "DATABASE_ENGINE", "CACHE_ENGINE", "INSTANCE_TYPE_FAMILY", "BILLING_ENTITY", "RESERVATION_ID", "RESOURCE_ID", "RIGHTSIZING_TYPE", "SAVINGS_PLANS_TYPE", "SAVINGS_PLAN_ARN", "PAYMENT_OPTION", "AGREEMENT_END_DATE_TIME_AFTER", "AGREEMENT_END_DATE_TIME_BEFORE", "INVOICING_ENTITY"]
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>The metadata values that you can use to filter and group your results. You can use
    #                   <code>GetDimensionValues</code> to find specific values.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute match_options
    #   <p>The match options that you can use to filter your results. <code>MatchOptions</code>
    #               is only applicable for actions related to Cost Category. The default values for
    #                   <code>MatchOptions</code> are <code>EQUALS</code> and
    #               <code>CASE_SENSITIVE</code>.</p>
    #
    #   @return [Array<String>]
    #
    DimensionValues = ::Struct.new(
      :key,
      :values,
      :match_options,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The metadata of a specific type that you can use to filter and group your results. You
    #             can use <code>GetDimensionValues</code> to find specific values.</p>
    #
    # @!attribute value
    #   <p>The value of a dimension with a specific attribute.</p>
    #
    #   @return [String]
    #
    # @!attribute attributes
    #   <p>The attribute that applies to a specific <code>Dimension</code>.</p>
    #
    #   @return [Hash<String, String>]
    #
    DimensionValuesWithAttributes = ::Struct.new(
      :value,
      :attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The field that contains a list of disk (local storage) metrics that are associated
    #             with the current instance. </p>
    #
    # @!attribute disk_read_ops_per_second
    #   <p>The maximum number of read operations per second. </p>
    #
    #   @return [String]
    #
    # @!attribute disk_write_ops_per_second
    #   <p>The maximum number of write operations per second. </p>
    #
    #   @return [String]
    #
    # @!attribute disk_read_bytes_per_second
    #   <p>The maximum read throughput operations per second. </p>
    #
    #   @return [String]
    #
    # @!attribute disk_write_bytes_per_second
    #   <p>The maximum write throughput operations per second. </p>
    #
    #   @return [String]
    #
    DiskResourceUtilization = ::Struct.new(
      :disk_read_ops_per_second,
      :disk_write_ops_per_second,
      :disk_read_bytes_per_second,
      :disk_write_bytes_per_second,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The EBS field that contains a list of EBS metrics that are associated with the current
    #             instance. </p>
    #
    # @!attribute ebs_read_ops_per_second
    #   <p>The maximum number of read operations per second. </p>
    #
    #   @return [String]
    #
    # @!attribute ebs_write_ops_per_second
    #   <p>The maximum number of write operations per second. </p>
    #
    #   @return [String]
    #
    # @!attribute ebs_read_bytes_per_second
    #   <p>The maximum size of read operations per second </p>
    #
    #   @return [String]
    #
    # @!attribute ebs_write_bytes_per_second
    #   <p>The maximum size of write operations per second. </p>
    #
    #   @return [String]
    #
    EBSResourceUtilization = ::Struct.new(
      :ebs_read_ops_per_second,
      :ebs_write_ops_per_second,
      :ebs_read_bytes_per_second,
      :ebs_write_bytes_per_second,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about the Amazon EC2 instances that Amazon Web Services recommends that you
    #             purchase.</p>
    #
    # @!attribute family
    #   <p>The instance family of the recommended reservation.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_type
    #   <p>The type of instance that Amazon Web Services recommends.</p>
    #
    #   @return [String]
    #
    # @!attribute region
    #   <p>The Amazon Web Services Region of the recommended reservation.</p>
    #
    #   @return [String]
    #
    # @!attribute availability_zone
    #   <p>The Availability Zone of the recommended reservation.</p>
    #
    #   @return [String]
    #
    # @!attribute platform
    #   <p>The platform of the recommended reservation. The platform is the specific combination
    #               of operating system, license model, and software on an instance.</p>
    #
    #   @return [String]
    #
    # @!attribute tenancy
    #   <p>Determines whether the recommended reservation is dedicated or shared.</p>
    #
    #   @return [String]
    #
    # @!attribute current_generation
    #   <p>Determines whether the recommendation is for a current-generation instance. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute size_flex_eligible
    #   <p>Determines whether the recommended reservation is size flexible.</p>
    #
    #   @return [Boolean]
    #
    EC2InstanceDetails = ::Struct.new(
      :family,
      :instance_type,
      :region,
      :availability_zone,
      :platform,
      :tenancy,
      :current_generation,
      :size_flex_eligible,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.current_generation ||= false
        self.size_flex_eligible ||= false
      end

    end

    # <p>Details on the Amazon EC2 Resource.</p>
    #
    # @!attribute hourly_on_demand_rate
    #   <p>The hourly public On-Demand rate for the instance type.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_type
    #   <p>The type of Amazon Web Services instance.</p>
    #
    #   @return [String]
    #
    # @!attribute platform
    #   <p>The platform of the Amazon Web Services instance. The platform is the specific
    #               combination of operating system, license model, and software on an instance.</p>
    #
    #   @return [String]
    #
    # @!attribute region
    #   <p>The Amazon Web Services Region of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute sku
    #   <p>The SKU of the product.</p>
    #
    #   @return [String]
    #
    # @!attribute memory
    #   <p>The memory capacity of the Amazon Web Services instance.</p>
    #
    #   @return [String]
    #
    # @!attribute network_performance
    #   <p>The network performance capacity of the Amazon Web Services instance.</p>
    #
    #   @return [String]
    #
    # @!attribute storage
    #   <p>The disk storage of the Amazon Web Services instance. This doesn't include EBS
    #               storage.</p>
    #
    #   @return [String]
    #
    # @!attribute vcpu
    #   <p>The number of VCPU cores in the Amazon Web Services instance type.</p>
    #
    #   @return [String]
    #
    EC2ResourceDetails = ::Struct.new(
      :hourly_on_demand_rate,
      :instance_type,
      :platform,
      :region,
      :sku,
      :memory,
      :network_performance,
      :storage,
      :vcpu,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Utilization metrics for the instance. </p>
    #
    # @!attribute max_cpu_utilization_percentage
    #   <p>The maximum observed or expected CPU utilization of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute max_memory_utilization_percentage
    #   <p>The maximum observed or expected memory utilization of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute max_storage_utilization_percentage
    #   <p>The maximum observed or expected storage utilization of the instance. This doesn't
    #               include EBS storage.</p>
    #
    #   @return [String]
    #
    # @!attribute ebs_resource_utilization
    #   <p>The EBS field that contains a list of EBS metrics that are associated with the current
    #               instance. </p>
    #
    #   @return [EBSResourceUtilization]
    #
    # @!attribute disk_resource_utilization
    #   <p>The field that contains a list of disk (local storage) metrics that are associated
    #               with the current instance. </p>
    #
    #   @return [DiskResourceUtilization]
    #
    # @!attribute network_resource_utilization
    #   <p>The network field that contains a list of network metrics that are associated with the
    #               current instance. </p>
    #
    #   @return [NetworkResourceUtilization]
    #
    EC2ResourceUtilization = ::Struct.new(
      :max_cpu_utilization_percentage,
      :max_memory_utilization_percentage,
      :max_storage_utilization_percentage,
      :ebs_resource_utilization,
      :disk_resource_utilization,
      :network_resource_utilization,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The Amazon EC2 hardware specifications that you want Amazon Web Services to provide
    #             recommendations for.</p>
    #
    # @!attribute offering_class
    #   <p>Indicates whether you want a recommendation for standard or convertible
    #               reservations.</p>
    #
    #   Enum, one of: ["STANDARD", "CONVERTIBLE"]
    #
    #   @return [String]
    #
    EC2Specification = ::Struct.new(
      :offering_class,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about the Amazon OpenSearch Service instances that Amazon Web Services recommends that you
    #             purchase.</p>
    #
    # @!attribute instance_class
    #   <p>The class of instance that Amazon Web Services recommends.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_size
    #   <p>The size of instance that Amazon Web Services recommends.</p>
    #
    #   @return [String]
    #
    # @!attribute region
    #   <p>The Amazon Web Services Region of the recommended reservation.</p>
    #
    #   @return [String]
    #
    # @!attribute current_generation
    #   <p>Determines whether the recommendation is for a current-generation instance.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute size_flex_eligible
    #   <p>Determines whether the recommended reservation is size flexible.</p>
    #
    #   @return [Boolean]
    #
    ESInstanceDetails = ::Struct.new(
      :instance_class,
      :instance_size,
      :region,
      :current_generation,
      :size_flex_eligible,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.current_generation ||= false
        self.size_flex_eligible ||= false
      end

    end

    # <p>Details about the Amazon ElastiCache instances that Amazon Web Services recommends that
    #             you purchase.</p>
    #
    # @!attribute family
    #   <p>The instance family of the recommended reservation.</p>
    #
    #   @return [String]
    #
    # @!attribute node_type
    #   <p>The type of node that Amazon Web Services recommends.</p>
    #
    #   @return [String]
    #
    # @!attribute region
    #   <p>The Amazon Web Services Region of the recommended reservation.</p>
    #
    #   @return [String]
    #
    # @!attribute product_description
    #   <p>The description of the recommended reservation.</p>
    #
    #   @return [String]
    #
    # @!attribute current_generation
    #   <p>Determines whether the recommendation is for a current generation instance.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute size_flex_eligible
    #   <p>Determines whether the recommended reservation is size flexible.</p>
    #
    #   @return [Boolean]
    #
    ElastiCacheInstanceDetails = ::Struct.new(
      :family,
      :node_type,
      :region,
      :product_description,
      :current_generation,
      :size_flex_eligible,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.current_generation ||= false
        self.size_flex_eligible ||= false
      end

    end

    # <p>Use <code>Expression</code> to filter by cost or by usage. There are two patterns: </p>
    #         <ul>
    #             <li>
    #                 <p>Simple dimension values - You can set the dimension name and values for the
    #                     filters that you plan to use. For example, you can filter for
    #                         <code>REGION==us-east-1 OR REGION==us-west-1</code>. For
    #                         <code>GetRightsizingRecommendation</code>, the Region is a full name (for
    #                     example, <code>REGION==US East (N. Virginia)</code>. The <code>Expression</code>
    #                     example is as follows:</p>
    #                 <p>
    #                     <code>{ "Dimensions": { "Key": "REGION", "Values": [ "us-east-1", “us-west-1” ]
    #                         } }</code>
    #                 </p>
    #                 <p>The list of dimension values are OR'd together to retrieve cost or usage data.
    #                     You can create <code>Expression</code> and <code>DimensionValues</code> objects
    #                     using either <code>with*</code> methods or <code>set*</code> methods in multiple
    #                     lines. </p>
    #             </li>
    #             <li>
    #                 <p>Compound dimension values with logical operations - You can use multiple
    #                         <code>Expression</code> types and the logical operators
    #                         <code>AND/OR/NOT</code> to create a list of one or more
    #                         <code>Expression</code> objects. By doing this, you can filter on more
    #                     advanced options. For example, you can filter on <code>((REGION == us-east-1 OR
    #                         REGION == us-west-1) OR (TAG.Type == Type1)) AND (USAGE_TYPE !=
    #                         DataTransfer)</code>. The <code>Expression</code> for that is as
    #                     follows:</p>
    #                 <p>
    #                     <code>{ "And": [ {"Or": [ {"Dimensions": { "Key": "REGION", "Values": [
    #                         "us-east-1", "us-west-1" ] }}, {"Tags": { "Key": "TagName", "Values":
    #                         ["Value1"] } } ]}, {"Not": {"Dimensions": { "Key": "USAGE_TYPE", "Values":
    #                         ["DataTransfer"] }}} ] } </code>
    #                 </p>
    #                 <note>
    #                     <p>Because each <code>Expression</code> can have only one operator, the
    #                         service returns an error if more than one is specified. The following
    #                         example shows an <code>Expression</code> object that creates an
    #                         error.</p>
    #                 </note>
    #                 <p>
    #                     <code> { "And": [ ... ], "DimensionValues": { "Dimension": "USAGE_TYPE",
    #                         "Values": [ "DataTransfer" ] } } </code>
    #                 </p>
    #             </li>
    #          </ul>
    #         <note>
    #             <p>For the <code>GetRightsizingRecommendation</code> action, a combination of OR and
    #                 NOT isn't supported. OR isn't supported between different dimensions, or dimensions
    #                 and tags. NOT operators aren't supported. Dimensions are also limited to
    #                     <code>LINKED_ACCOUNT</code>, <code>REGION</code>, or
    #                     <code>RIGHTSIZING_TYPE</code>.</p>
    #             <p>For the <code>GetReservationPurchaseRecommendation</code> action, only NOT is
    #                 supported. AND and OR aren't supported. Dimensions are limited to
    #                     <code>LINKED_ACCOUNT</code>.</p>
    #         </note>
    #
    # @!attribute or
    #   <p>Return results that match either <code>Dimension</code> object.</p>
    #
    #   @return [Array<Expression>]
    #
    # @!attribute and
    #   <p>Return results that match both <code>Dimension</code> objects.</p>
    #
    #   @return [Array<Expression>]
    #
    # @!attribute not
    #   <p>Return results that don't match a <code>Dimension</code> object.</p>
    #
    #   @return [Expression]
    #
    # @!attribute dimensions
    #   <p>The specific <code>Dimension</code> to use for <code>Expression</code>.</p>
    #
    #   @return [DimensionValues]
    #
    # @!attribute tags
    #   <p>The specific <code>Tag</code> to use for <code>Expression</code>.</p>
    #
    #   @return [TagValues]
    #
    # @!attribute cost_categories
    #   <p>The filter that's based on <code>CostCategory</code> values.</p>
    #
    #   @return [CostCategoryValues]
    #
    Expression = ::Struct.new(
      :or,
      :and,
      :not,
      :dimensions,
      :tags,
      :cost_categories,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FindingReasonCode
    #
    module FindingReasonCode
      # No documentation available.
      #
      CPU_OVER_PROVISIONED = "CPU_OVER_PROVISIONED"

      # No documentation available.
      #
      CPU_UNDER_PROVISIONED = "CPU_UNDER_PROVISIONED"

      # No documentation available.
      #
      MEMORY_OVER_PROVISIONED = "MEMORY_OVER_PROVISIONED"

      # No documentation available.
      #
      MEMORY_UNDER_PROVISIONED = "MEMORY_UNDER_PROVISIONED"

      # No documentation available.
      #
      EBS_THROUGHPUT_OVER_PROVISIONED = "EBS_THROUGHPUT_OVER_PROVISIONED"

      # No documentation available.
      #
      EBS_THROUGHPUT_UNDER_PROVISIONED = "EBS_THROUGHPUT_UNDER_PROVISIONED"

      # No documentation available.
      #
      EBS_IOPS_OVER_PROVISIONED = "EBS_IOPS_OVER_PROVISIONED"

      # No documentation available.
      #
      EBS_IOPS_UNDER_PROVISIONED = "EBS_IOPS_UNDER_PROVISIONED"

      # No documentation available.
      #
      NETWORK_BANDWIDTH_OVER_PROVISIONED = "NETWORK_BANDWIDTH_OVER_PROVISIONED"

      # No documentation available.
      #
      NETWORK_BANDWIDTH_UNDER_PROVISIONED = "NETWORK_BANDWIDTH_UNDER_PROVISIONED"

      # No documentation available.
      #
      NETWORK_PPS_OVER_PROVISIONED = "NETWORK_PPS_OVER_PROVISIONED"

      # No documentation available.
      #
      NETWORK_PPS_UNDER_PROVISIONED = "NETWORK_PPS_UNDER_PROVISIONED"

      # No documentation available.
      #
      DISK_IOPS_OVER_PROVISIONED = "DISK_IOPS_OVER_PROVISIONED"

      # No documentation available.
      #
      DISK_IOPS_UNDER_PROVISIONED = "DISK_IOPS_UNDER_PROVISIONED"

      # No documentation available.
      #
      DISK_THROUGHPUT_OVER_PROVISIONED = "DISK_THROUGHPUT_OVER_PROVISIONED"

      # No documentation available.
      #
      DISK_THROUGHPUT_UNDER_PROVISIONED = "DISK_THROUGHPUT_UNDER_PROVISIONED"
    end

    # <p>The forecast that's created for your query.</p>
    #
    # @!attribute time_period
    #   <p>The period of time that the forecast covers.</p>
    #
    #   @return [DateInterval]
    #
    # @!attribute mean_value
    #   <p>The mean value of the forecast.</p>
    #
    #   @return [String]
    #
    # @!attribute prediction_interval_lower_bound
    #   <p>The lower limit for the prediction interval. </p>
    #
    #   @return [String]
    #
    # @!attribute prediction_interval_upper_bound
    #   <p>The upper limit for the prediction interval. </p>
    #
    #   @return [String]
    #
    ForecastResult = ::Struct.new(
      :time_period,
      :mean_value,
      :prediction_interval_lower_bound,
      :prediction_interval_upper_bound,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute monitor_arn
    #   <p>Retrieves all of the cost anomalies detected for a specific cost anomaly monitor Amazon
    #         Resource Name (ARN). </p>
    #
    #   @return [String]
    #
    # @!attribute date_interval
    #   <p>Assigns the start and end dates for retrieving cost anomalies. The returned anomaly object
    #         will have an <code>AnomalyEndDate</code> in the specified time range. </p>
    #
    #   @return [AnomalyDateInterval]
    #
    # @!attribute feedback
    #   <p>Filters anomaly results by the feedback field on the anomaly object. </p>
    #
    #   Enum, one of: ["YES", "NO", "PLANNED_ACTIVITY"]
    #
    #   @return [String]
    #
    # @!attribute total_impact
    #   <p>Filters anomaly results by the total impact field on the anomaly object. For example, you
    #         can filter anomalies <code>GREATER_THAN 200.00</code> to retrieve anomalies, with an estimated
    #         dollar impact greater than 200. </p>
    #
    #   @return [TotalImpactFilter]
    #
    # @!attribute next_page_token
    #   <p>The token to retrieve the next set of results. Amazon Web Services provides the token when
    #         the response from a previous call has more results than the maximum page size. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The number of entries a paginated response contains. </p>
    #
    #   @return [Integer]
    #
    GetAnomaliesInput = ::Struct.new(
      :monitor_arn,
      :date_interval,
      :feedback,
      :total_impact,
      :next_page_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute anomalies
    #   <p>A list of cost anomalies. </p>
    #
    #   @return [Array<Anomaly>]
    #
    # @!attribute next_page_token
    #   <p>The token to retrieve the next set of results. Amazon Web Services provides the token when
    #         the response from a previous call has more results than the maximum page size. </p>
    #
    #   @return [String]
    #
    GetAnomaliesOutput = ::Struct.new(
      :anomalies,
      :next_page_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute monitor_arn_list
    #   <p>A list of cost anomaly monitor ARNs. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_page_token
    #   <p>The token to retrieve the next set of results. Amazon Web Services provides the token when
    #         the response from a previous call has more results than the maximum page size. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The number of entries that a paginated response contains. </p>
    #
    #   @return [Integer]
    #
    GetAnomalyMonitorsInput = ::Struct.new(
      :monitor_arn_list,
      :next_page_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute anomaly_monitors
    #   <p>A list of cost anomaly monitors that includes the detailed metadata for each monitor. </p>
    #
    #   @return [Array<AnomalyMonitor>]
    #
    # @!attribute next_page_token
    #   <p>The token to retrieve the next set of results. Amazon Web Services provides the token when
    #         the response from a previous call has more results than the maximum page size. </p>
    #
    #   @return [String]
    #
    GetAnomalyMonitorsOutput = ::Struct.new(
      :anomaly_monitors,
      :next_page_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute subscription_arn_list
    #   <p>A list of cost anomaly subscription ARNs. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute monitor_arn
    #   <p>Cost anomaly monitor ARNs. </p>
    #
    #   @return [String]
    #
    # @!attribute next_page_token
    #   <p>The token to retrieve the next set of results. Amazon Web Services provides the token when
    #         the response from a previous call has more results than the maximum page size. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The number of entries a paginated response contains. </p>
    #
    #   @return [Integer]
    #
    GetAnomalySubscriptionsInput = ::Struct.new(
      :subscription_arn_list,
      :monitor_arn,
      :next_page_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute anomaly_subscriptions
    #   <p>A list of cost anomaly subscriptions that includes the detailed metadata for each one. </p>
    #
    #   @return [Array<AnomalySubscription>]
    #
    # @!attribute next_page_token
    #   <p>The token to retrieve the next set of results. Amazon Web Services provides the token when
    #         the response from a previous call has more results than the maximum page size. </p>
    #
    #   @return [String]
    #
    GetAnomalySubscriptionsOutput = ::Struct.new(
      :anomaly_subscriptions,
      :next_page_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute time_period
    #   <p>Sets the start date and end date for retrieving Amazon Web Services costs. The start date
    #         is inclusive, but the end date is exclusive. For example, if <code>start</code> is
    #           <code>2017-01-01</code> and <code>end</code> is <code>2017-05-01</code>, then the cost and
    #         usage data is retrieved from <code>2017-01-01</code> up to and including
    #           <code>2017-04-30</code> but not including <code>2017-05-01</code>.</p>
    #
    #   @return [DateInterval]
    #
    # @!attribute granularity
    #   <p>Sets the Amazon Web Services cost granularity to <code>MONTHLY</code> or <code>DAILY</code>, or <code>HOURLY</code>. If <code>Granularity</code> isn't set,
    #   	    the response object doesn't include the <code>Granularity</code>, either <code>MONTHLY</code> or <code>DAILY</code>, or <code>HOURLY</code>. </p>
    #
    #   Enum, one of: ["DAILY", "MONTHLY", "HOURLY"]
    #
    #   @return [String]
    #
    # @!attribute filter
    #   <p>Filters Amazon Web Services costs by different dimensions. For example, you can specify <code>SERVICE</code> and <code>LINKED_ACCOUNT</code>
    #   			and get the costs that are associated with that account's usage of that service. You can nest <code>Expression</code> objects
    #   			to define any combination of dimension filters. For more information, see
    #   			<a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html">Expression</a>. </p>
    #   	        <p>Valid values for <code>MatchOptions</code> for <code>Dimensions</code> are <code>EQUALS</code> and <code>CASE_SENSITIVE</code>.</p>
    #   	        <p>Valid values for <code>MatchOptions</code> for <code>CostCategories</code> and <code>Tags</code> are <code>EQUALS</code>, <code>ABSENT</code>, and <code>CASE_SENSITIVE</code>. Default values are <code>EQUALS</code> and <code>CASE_SENSITIVE</code>.</p>
    #
    #   @return [Expression]
    #
    # @!attribute metrics
    #   <p>Which metrics are returned in the query. For more information about blended and unblended rates, see
    #   			<a href="http://aws.amazon.com/premiumsupport/knowledge-center/blended-rates-intro/">Why does the "blended" annotation
    #   				appear on some line items in my bill?</a>. </p>
    #   		       <p>Valid values are <code>AmortizedCost</code>, <code>BlendedCost</code>, <code>NetAmortizedCost</code>,
    #   			<code>NetUnblendedCost</code>, <code>NormalizedUsageAmount</code>, <code>UnblendedCost</code>, and <code>UsageQuantity</code>. </p>
    #   		       <note>
    #   			         <p>If you return the <code>UsageQuantity</code> metric, the service aggregates all usage
    #           numbers without taking into account the units. For example, if you aggregate
    #             <code>usageQuantity</code> across all of Amazon EC2, the results aren't meaningful because
    #           Amazon EC2 compute hours and data transfer are measured in different units (for example,
    #           hours and GB). To get more meaningful <code>UsageQuantity</code> metrics, filter by
    #             <code>UsageType</code> or <code>UsageTypeGroups</code>. </p>
    #   		       </note>
    #   		       <p>
    #               <code>Metrics</code> is required for <code>GetCostAndUsage</code> requests.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute group_by
    #   <p>You can group Amazon Web Services costs using up to two different groups, either dimensions, tag keys,
    #         cost categories, or any two group by types.</p>
    #   	        <p>Valid values for the <code>DIMENSION</code> type are <code>AZ</code>, <code>INSTANCE_TYPE</code>, <code>LEGAL_ENTITY_NAME</code>, <code>INVOICING_ENTITY</code>, <code>LINKED_ACCOUNT</code>,
    #   			<code>OPERATION</code>, <code>PLATFORM</code>, <code>PURCHASE_TYPE</code>, <code>SERVICE</code>,
    #   		  <code>TENANCY</code>, <code>RECORD_TYPE</code>, and <code>USAGE_TYPE</code>.</p>
    #   	        <p>When you group by the <code>TAG</code>  type and include a valid tag key, you get all tag values, including empty strings.</p>
    #
    #   @return [Array<GroupDefinition>]
    #
    # @!attribute next_page_token
    #   <p>The token to retrieve the next set of results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.</p>
    #
    #   @return [String]
    #
    GetCostAndUsageInput = ::Struct.new(
      :time_period,
      :granularity,
      :filter,
      :metrics,
      :group_by,
      :next_page_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_page_token
    #   <p>The token for the next set of retrievable results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.</p>
    #
    #   @return [String]
    #
    # @!attribute group_definitions
    #   <p>The groups that are specified by the <code>Filter</code> or <code>GroupBy</code> parameters in the request.</p>
    #
    #   @return [Array<GroupDefinition>]
    #
    # @!attribute results_by_time
    #   <p>The time period that's covered by the results in the response.</p>
    #
    #   @return [Array<ResultByTime>]
    #
    # @!attribute dimension_value_attributes
    #   <p>The attributes that apply to a specific dimension value. For example, if the value is a linked account, the attribute is that account name.</p>
    #
    #   @return [Array<DimensionValuesWithAttributes>]
    #
    GetCostAndUsageOutput = ::Struct.new(
      :next_page_token,
      :group_definitions,
      :results_by_time,
      :dimension_value_attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute time_period
    #   <p>Sets the start and end dates for retrieving Amazon Web Services costs. The range must be within the last 14 days (the start date cannot be earlier than 14 days ago). The start date is inclusive,  but the end date is exclusive. For example, if <code>start</code> is <code>2017-01-01</code> and <code>end</code> is <code>2017-05-01</code>, then the cost and usage data is
    #               retrieved from <code>2017-01-01</code> up to and including <code>2017-04-30</code> but not including <code>2017-05-01</code>.</p>
    #
    #   @return [DateInterval]
    #
    # @!attribute granularity
    #   <p>Sets the Amazon Web Services cost granularity to <code>MONTHLY</code>, <code>DAILY</code>, or <code>HOURLY</code>. If
    #   	    <code>Granularity</code> isn't set, the response object doesn't include the
    #   	    <code>Granularity</code>, <code>MONTHLY</code>, <code>DAILY</code>, or <code>HOURLY</code>. </p>
    #
    #   Enum, one of: ["DAILY", "MONTHLY", "HOURLY"]
    #
    #   @return [String]
    #
    # @!attribute filter
    #   <p>Filters Amazon Web Services costs by different dimensions. For example, you can specify
    #         <code>SERVICE</code> and <code>LINKED_ACCOUNT</code> and get the costs that are associated
    #         with that account's usage of that service. You can nest <code>Expression</code> objects to
    #         define any combination of dimension filters. For more information, see <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html">Expression</a>. </p>
    #            <p>The <code>GetCostAndUsageWithResources</code> operation requires that you either group by or filter by a
    #         <code>ResourceId</code>. It requires the <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html">Expression</a>
    #               <code>"SERVICE = Amazon Elastic Compute Cloud - Compute"</code> in the filter.</p>
    #            <p>Valid values for <code>MatchOptions</code> for <code>Dimensions</code> are <code>EQUALS</code> and <code>CASE_SENSITIVE</code>.</p>
    #            <p>Valid values for <code>MatchOptions</code> for <code>CostCategories</code> and <code>Tags</code> are <code>EQUALS</code>, <code>ABSENT</code>, and <code>CASE_SENSITIVE</code>. Default values are <code>EQUALS</code> and <code>CASE_SENSITIVE</code>.</p>
    #
    #   @return [Expression]
    #
    # @!attribute metrics
    #   <p>Which metrics are returned in the query. For more information about blended and
    #         unblended rates, see <a href="http://aws.amazon.com/premiumsupport/knowledge-center/blended-rates-intro/">Why does
    #           the "blended" annotation appear on some line items in my bill?</a>. </p>
    #            <p>Valid values are <code>AmortizedCost</code>, <code>BlendedCost</code>,
    #         <code>NetAmortizedCost</code>, <code>NetUnblendedCost</code>,
    #         <code>NormalizedUsageAmount</code>, <code>UnblendedCost</code>, and
    #         <code>UsageQuantity</code>. </p>
    #            <note>
    #               <p>If you return the <code>UsageQuantity</code> metric, the service aggregates all usage
    #           numbers without taking the units into account. For example, if you aggregate
    #             <code>usageQuantity</code> across all of Amazon EC2, the results aren't meaningful because
    #           Amazon EC2 compute hours and data transfer are measured in different units (for example,
    #           hour or GB). To get more meaningful <code>UsageQuantity</code> metrics, filter by
    #             <code>UsageType</code> or <code>UsageTypeGroups</code>. </p>
    #            </note>
    #            <p>
    #               <code>Metrics</code> is required for <code>GetCostAndUsageWithResources</code> requests.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute group_by
    #   <p>You can group Amazon Web Services costs using up to two different groups: <code>DIMENSION</code>, <code>TAG</code>, <code>COST_CATEGORY</code>.</p>
    #
    #   @return [Array<GroupDefinition>]
    #
    # @!attribute next_page_token
    #   <p>The token to retrieve the next set of results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.</p>
    #
    #   @return [String]
    #
    GetCostAndUsageWithResourcesInput = ::Struct.new(
      :time_period,
      :granularity,
      :filter,
      :metrics,
      :group_by,
      :next_page_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_page_token
    #   <p>The token for the next set of retrievable results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.</p>
    #
    #   @return [String]
    #
    # @!attribute group_definitions
    #   <p>The groups that are specified by the <code>Filter</code> or <code>GroupBy</code>
    #         parameters in the request.</p>
    #
    #   @return [Array<GroupDefinition>]
    #
    # @!attribute results_by_time
    #   <p>The time period that's covered by the results in the response.</p>
    #
    #   @return [Array<ResultByTime>]
    #
    # @!attribute dimension_value_attributes
    #   <p>The attributes that apply to a specific dimension value. For example, if the value is a linked account, the attribute is that account name.</p>
    #
    #   @return [Array<DimensionValuesWithAttributes>]
    #
    GetCostAndUsageWithResourcesOutput = ::Struct.new(
      :next_page_token,
      :group_definitions,
      :results_by_time,
      :dimension_value_attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute search_string
    #   <p>The value that you want to search the filter values for.</p>
    #            <p>If you don't specify a <code>CostCategoryName</code>, <code>SearchString</code> is used to
    #         filter Cost Category names that match the <code>SearchString</code> pattern. If you specify a
    #           <code>CostCategoryName</code>, <code>SearchString</code> is used to filter Cost Category
    #         values that match the <code>SearchString</code> pattern.</p>
    #
    #   @return [String]
    #
    # @!attribute time_period
    #   <p>The time period of the request. </p>
    #
    #   @return [DateInterval]
    #
    # @!attribute cost_category_name
    #   <p>The unique name of the Cost Category.</p>
    #
    #   @return [String]
    #
    # @!attribute filter
    #   <p>Use <code>Expression</code> to filter by cost or by usage. There are two patterns: </p>
    #           <ul>
    #               <li>
    #                   <p>Simple dimension values - You can set the dimension name and values for the
    #                       filters that you plan to use. For example, you can filter for
    #                           <code>REGION==us-east-1 OR REGION==us-west-1</code>. For
    #                           <code>GetRightsizingRecommendation</code>, the Region is a full name (for
    #                       example, <code>REGION==US East (N. Virginia)</code>. The <code>Expression</code>
    #                       example is as follows:</p>
    #                   <p>
    #                       <code>{ "Dimensions": { "Key": "REGION", "Values": [ "us-east-1", “us-west-1” ]
    #                           } }</code>
    #                   </p>
    #                   <p>The list of dimension values are OR'd together to retrieve cost or usage data.
    #                       You can create <code>Expression</code> and <code>DimensionValues</code> objects
    #                       using either <code>with*</code> methods or <code>set*</code> methods in multiple
    #                       lines. </p>
    #               </li>
    #               <li>
    #                   <p>Compound dimension values with logical operations - You can use multiple
    #                           <code>Expression</code> types and the logical operators
    #                           <code>AND/OR/NOT</code> to create a list of one or more
    #                           <code>Expression</code> objects. By doing this, you can filter on more
    #                       advanced options. For example, you can filter on <code>((REGION == us-east-1 OR
    #                           REGION == us-west-1) OR (TAG.Type == Type1)) AND (USAGE_TYPE !=
    #                           DataTransfer)</code>. The <code>Expression</code> for that is as
    #                       follows:</p>
    #                   <p>
    #                       <code>{ "And": [ {"Or": [ {"Dimensions": { "Key": "REGION", "Values": [
    #                           "us-east-1", "us-west-1" ] }}, {"Tags": { "Key": "TagName", "Values":
    #                           ["Value1"] } } ]}, {"Not": {"Dimensions": { "Key": "USAGE_TYPE", "Values":
    #                           ["DataTransfer"] }}} ] } </code>
    #                   </p>
    #                   <note>
    #                       <p>Because each <code>Expression</code> can have only one operator, the
    #                           service returns an error if more than one is specified. The following
    #                           example shows an <code>Expression</code> object that creates an
    #                           error.</p>
    #                   </note>
    #                   <p>
    #                       <code> { "And": [ ... ], "DimensionValues": { "Dimension": "USAGE_TYPE",
    #                           "Values": [ "DataTransfer" ] } } </code>
    #                   </p>
    #               </li>
    #            </ul>
    #           <note>
    #               <p>For the <code>GetRightsizingRecommendation</code> action, a combination of OR and
    #                   NOT isn't supported. OR isn't supported between different dimensions, or dimensions
    #                   and tags. NOT operators aren't supported. Dimensions are also limited to
    #                       <code>LINKED_ACCOUNT</code>, <code>REGION</code>, or
    #                       <code>RIGHTSIZING_TYPE</code>.</p>
    #               <p>For the <code>GetReservationPurchaseRecommendation</code> action, only NOT is
    #                   supported. AND and OR aren't supported. Dimensions are limited to
    #                       <code>LINKED_ACCOUNT</code>.</p>
    #           </note>
    #
    #   @return [Expression]
    #
    # @!attribute sort_by
    #   <p>The value that you sort the data by.</p>
    #            <p>The key represents the cost and usage metrics. The following values are supported:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>BlendedCost</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UnblendedCost</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AmortizedCost</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NetAmortizedCost</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NetUnblendedCost</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UsageQuantity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NormalizedUsageAmount</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>The supported key values for the <code>SortOrder</code> value are <code>ASCENDING</code>
    #         and <code>DESCENDING</code>.</p>
    #            <p>When you use the <code>SortBy</code> value, the <code>NextPageToken</code> and
    #           <code>SearchString</code> key values aren't supported.</p>
    #
    #   @return [Array<SortDefinition>]
    #
    # @!attribute max_results
    #   <p>This field is only used when the <code>SortBy</code> value is provided in the
    #         request.</p>
    #            <p>The maximum number of objects that are returned for this request. If
    #           <code>MaxResults</code> isn't specified with the <code>SortBy</code> value, the request
    #         returns 1000 results as the default value for this parameter.</p>
    #            <p>For <code>GetCostCategories</code>, MaxResults has an upper quota of 1000.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_page_token
    #   <p>If the number of objects that are still available for retrieval exceeds the quota, Amazon Web Services returns a NextPageToken value in the response. To retrieve the next batch of
    #         objects, provide the NextPageToken from the previous call in your next request.</p>
    #
    #   @return [String]
    #
    GetCostCategoriesInput = ::Struct.new(
      :search_string,
      :time_period,
      :cost_category_name,
      :filter,
      :sort_by,
      :max_results,
      :next_page_token,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max_results ||= 0
      end

    end

    # @!attribute next_page_token
    #   <p>If the number of objects that are still available for retrieval exceeds the quota, Amazon Web Services returns a NextPageToken value in the response. To retrieve the next batch of
    #         objects, provide the marker from the prior call in your next request.</p>
    #
    #   @return [String]
    #
    # @!attribute cost_category_names
    #   <p>The names of the Cost Categories.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute cost_category_values
    #   <p>The Cost Category values.</p>
    #            <p>If the <code>CostCategoryName</code> key isn't specified in the request, the
    #           <code>CostCategoryValues</code> fields aren't returned. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute return_size
    #   <p>The number of objects that are returned.</p>
    #
    #   @return [Integer]
    #
    # @!attribute total_size
    #   <p>The total number of objects.</p>
    #
    #   @return [Integer]
    #
    GetCostCategoriesOutput = ::Struct.new(
      :next_page_token,
      :cost_category_names,
      :cost_category_values,
      :return_size,
      :total_size,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute time_period
    #   <p>The period of time that you want the forecast to cover. The start date must be equal to or no later than the current date to avoid a validation error.</p>
    #
    #   @return [DateInterval]
    #
    # @!attribute metric
    #   <p>Which metric Cost Explorer uses to create your forecast. For more information about blended and unblended rates, see
    #   			<a href="http://aws.amazon.com/premiumsupport/knowledge-center/blended-rates-intro/">Why does the "blended" annotation
    #   				appear on some line items in my bill?</a>. </p>
    #   		       <p>Valid values for a <code>GetCostForecast</code> call are the following:</p>
    #   		       <ul>
    #               <li>
    #   				           <p>AMORTIZED_COST</p>
    #   			         </li>
    #               <li>
    #   				           <p>BLENDED_COST</p>
    #   			         </li>
    #               <li>
    #   				           <p>NET_AMORTIZED_COST</p>
    #   			         </li>
    #               <li>
    #   				           <p>NET_UNBLENDED_COST</p>
    #   			         </li>
    #               <li>
    #   				           <p>UNBLENDED_COST</p>
    #   			         </li>
    #            </ul>
    #
    #   Enum, one of: ["BLENDED_COST", "UNBLENDED_COST", "AMORTIZED_COST", "NET_UNBLENDED_COST", "NET_AMORTIZED_COST", "USAGE_QUANTITY", "NORMALIZED_USAGE_AMOUNT"]
    #
    #   @return [String]
    #
    # @!attribute granularity
    #   <p>How granular you want the forecast to be. You can get 3 months of <code>DAILY</code> forecasts or 12 months of <code>MONTHLY</code> forecasts.</p>
    #   		       <p>The <code>GetCostForecast</code> operation supports only <code>DAILY</code> and <code>MONTHLY</code> granularities.</p>
    #
    #   Enum, one of: ["DAILY", "MONTHLY", "HOURLY"]
    #
    #   @return [String]
    #
    # @!attribute filter
    #   <p>The filters that you want to use to filter your forecast. The <code>GetCostForecast</code> API supports filtering by the following dimensions:</p>
    #   		
    #   	        <ul>
    #               <li>
    #                  <p>
    #                     <code>AZ</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INSTANCE_TYPE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LINKED_ACCOUNT</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LINKED_ACCOUNT_NAME</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OPERATION</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PURCHASE_TYPE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REGION</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SERVICE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>USAGE_TYPE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>USAGE_TYPE_GROUP</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RECORD_TYPE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OPERATING_SYSTEM</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TENANCY</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SCOPE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PLATFORM</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SUBSCRIPTION_ID</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LEGAL_ENTITY_NAME</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DEPLOYMENT_OPTION</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DATABASE_ENGINE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INSTANCE_TYPE_FAMILY</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BILLING_ENTITY</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RESERVATION_ID</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SAVINGS_PLAN_ARN</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [Expression]
    #
    # @!attribute prediction_interval_level
    #   <p>Cost Explorer always returns the mean forecast as a single point. You can request a prediction interval around the mean
    #   			by specifying a confidence level. The higher the confidence level, the more confident Cost Explorer is about the actual value
    #   			falling in the prediction interval. Higher confidence levels result in wider prediction intervals.</p>
    #
    #   @return [Integer]
    #
    GetCostForecastInput = ::Struct.new(
      :time_period,
      :metric,
      :granularity,
      :filter,
      :prediction_interval_level,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute total
    #   <p>How much you are forecasted to spend over the forecast period, in <code>USD</code>.</p>
    #
    #   @return [MetricValue]
    #
    # @!attribute forecast_results_by_time
    #   <p>The forecasts for your query, in order. For <code>DAILY</code> forecasts, this is a list of days. For <code>MONTHLY</code> forecasts,
    #   			this is a list of months.</p>
    #
    #   @return [Array<ForecastResult>]
    #
    GetCostForecastOutput = ::Struct.new(
      :total,
      :forecast_results_by_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute search_string
    #   <p>The value that you want to search the filter values for.</p>
    #
    #   @return [String]
    #
    # @!attribute time_period
    #   <p>The start date and end date for retrieving the dimension values. The start date is
    #         inclusive, but the end date is exclusive. For example, if <code>start</code> is
    #           <code>2017-01-01</code> and <code>end</code> is <code>2017-05-01</code>, then the cost and
    #         usage data is retrieved from <code>2017-01-01</code> up to and including
    #           <code>2017-04-30</code> but not including <code>2017-05-01</code>.</p>
    #
    #   @return [DateInterval]
    #
    # @!attribute dimension
    #   <p>The name of the dimension. Each <code>Dimension</code> is available for a different <code>Context</code>.
    #   			For more information, see <code>Context</code>.
    #   			
    #   		</p>
    #
    #   Enum, one of: ["AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "LINKED_ACCOUNT_NAME", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "SERVICE_CODE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "OPERATING_SYSTEM", "TENANCY", "SCOPE", "PLATFORM", "SUBSCRIPTION_ID", "LEGAL_ENTITY_NAME", "DEPLOYMENT_OPTION", "DATABASE_ENGINE", "CACHE_ENGINE", "INSTANCE_TYPE_FAMILY", "BILLING_ENTITY", "RESERVATION_ID", "RESOURCE_ID", "RIGHTSIZING_TYPE", "SAVINGS_PLANS_TYPE", "SAVINGS_PLAN_ARN", "PAYMENT_OPTION", "AGREEMENT_END_DATE_TIME_AFTER", "AGREEMENT_END_DATE_TIME_BEFORE", "INVOICING_ENTITY"]
    #
    #   @return [String]
    #
    # @!attribute context
    #   <p>The context for the call to <code>GetDimensionValues</code>. This can be <code>RESERVATIONS</code> or <code>COST_AND_USAGE</code>.
    #   			The default value is <code>COST_AND_USAGE</code>. If the context is set to <code>RESERVATIONS</code>, the resulting dimension values
    #   			can be used in the <code>GetReservationUtilization</code> operation. If the context is set to <code>COST_AND_USAGE</code>,
    #   			the resulting dimension values can be used in the <code>GetCostAndUsage</code> operation.</p>
    #   		       <p>If you set the context to <code>COST_AND_USAGE</code>, you can use the following
    #              dimensions for searching:</p>
    #              <ul>
    #               <li>
    #                  <p>AZ - The Availability Zone. An example is <code>us-east-1a</code>.</p>
    #               </li>
    #               <li>
    #                  <p>BILLING_ENTITY - The Amazon Web Services seller that your account is with. Possible values are the following:</p>
    #                  <p>- Amazon Web Services(Amazon Web Services): The entity that sells Amazon Web Services.</p>
    #                  <p>- AISPL (Amazon Internet Services Pvt. Ltd.): The local Indian entity that's an
    #             acting reseller for Amazon Web Services in India.</p>
    #                  <p>- Amazon Web Services Marketplace: The entity that supports the sale of solutions that are
    #             built on Amazon Web Services by third-party software providers.</p>
    #                </li>
    #               <li>
    #                  <p>CACHE_ENGINE - The Amazon ElastiCache operating system. Examples are Windows or Linux.</p>
    #               </li>
    #               <li>
    #                  <p>DEPLOYMENT_OPTION - The scope of Amazon Relational Database Service deployments. Valid values are <code>SingleAZ</code> and <code>MultiAZ</code>.</p>
    #               </li>
    #               <li>
    #                  <p>DATABASE_ENGINE - The Amazon Relational Database Service database. Examples are Aurora or MySQL.</p>
    #               </li>
    #               <li>
    #                  <p>INSTANCE_TYPE - The type of Amazon EC2 instance. An example is <code>m4.xlarge</code>.</p>
    #               </li>
    #               <li>
    #                  <p>INSTANCE_TYPE_FAMILY - A family of instance types optimized to fit different use cases.
    #             Examples are <code>Compute Optimized</code> (for example, <code>C4</code>,
    #             <code>C5</code>, <code>C6g</code>, and <code>C7g</code>), <code>Memory Optimization</code>
    #             (for example, <code>R4</code>, <code>R5n</code>, <code>R5b</code>, and
    #             <code>R6g</code>).</p>
    #               </li>
    #               <li>
    #                  <p>INVOICING_ENTITY - The name of the entity that issues the Amazon Web Services
    #             invoice.</p>
    #               </li>
    #               <li>
    #                  <p>LEGAL_ENTITY_NAME - The name of the organization that sells you Amazon Web Services services, such as Amazon Web Services.</p>
    #               </li>
    #               <li>
    #                  <p>LINKED_ACCOUNT - The description in the attribute map that includes the full name of the member account. The value
    #                  field contains the Amazon Web Services ID of the member account.</p>
    #               </li>
    #               <li>
    #                  <p>OPERATING_SYSTEM - The operating system. Examples are Windows or Linux.</p>
    #               </li>
    #               <li>
    #                  <p>OPERATION - The action performed. Examples include <code>RunInstance</code> and <code>CreateBucket</code>.</p>
    #               </li>
    #               <li>
    #                  <p>PLATFORM - The Amazon EC2 operating system. Examples are Windows or Linux.</p>
    #               </li>
    #               <li>
    #                  <p>PURCHASE_TYPE - The reservation type of the purchase that this usage is related to.
    #             Examples include On-Demand Instances and Standard Reserved Instances.</p>
    #               </li>
    #               <li>
    #                  <p>RESERVATION_ID - The unique identifier for an Amazon Web Services Reservation Instance.</p>
    #               </li>
    #               <li>
    #                  <p>SAVINGS_PLAN_ARN - The unique identifier for your Savings Plans.</p>
    #               </li>
    #               <li>
    #                  <p>SAVINGS_PLANS_TYPE - Type of Savings Plans (EC2 Instance or Compute).</p>
    #               </li>
    #               <li>
    #                  <p>SERVICE - The Amazon Web Services service such as Amazon DynamoDB.</p>
    #               </li>
    #               <li>
    #                  <p>TENANCY - The tenancy of a resource. Examples are shared or dedicated.</p>
    #               </li>
    #               <li>
    #                  <p>USAGE_TYPE - The type of usage. An example is DataTransfer-In-Bytes. The response for the <code>GetDimensionValues</code> operation
    #              includes a unit attribute. Examples include GB and Hrs.</p>
    #               </li>
    #               <li>
    #                  <p>USAGE_TYPE_GROUP - The grouping of common usage types. An example is Amazon EC2: CloudWatch – Alarms. The response for this
    #                  operation includes a unit attribute.</p>
    #               </li>
    #               <li>
    #                  <p>REGION - The Amazon Web Services Region.</p>
    #               </li>
    #               <li>
    #                  <p>RECORD_TYPE - The different types of charges such as
    #             Reserved
    #             Instance (RI) fees, usage costs, tax refunds, and credits.</p>
    #               </li>
    #               <li>
    #                  <p>RESOURCE_ID - The unique identifier of the resource. ResourceId is an opt-in feature only available for last 14 days for EC2-Compute Service.</p>
    #               </li>
    #            </ul>
    #            <p>If you set the context to <code>RESERVATIONS</code>, you can use the following
    #              dimensions for searching:</p>
    #            <ul>
    #               <li>
    #                  <p>AZ - The Availability Zone. An example is <code>us-east-1a</code>.</p>
    #               </li>
    #               <li>
    #                  <p>CACHE_ENGINE - The Amazon ElastiCache operating system. Examples are Windows or Linux.</p>
    #               </li>
    #               <li>
    #                  <p>DEPLOYMENT_OPTION - The scope of Amazon Relational Database Service deployments. Valid values are <code>SingleAZ</code> and <code>MultiAZ</code>.</p>
    #               </li>
    #               <li>
    #                  <p>INSTANCE_TYPE - The type of Amazon EC2 instance. An example is <code>m4.xlarge</code>.</p>
    #               </li>
    #               <li>
    #                  <p>LINKED_ACCOUNT - The description in the attribute map that includes the full name of the member account. The value
    #                  field contains the Amazon Web Services ID of the member account.</p>
    #               </li>
    #               <li>
    #                  <p>PLATFORM - The Amazon EC2 operating system. Examples are Windows or Linux.</p>
    #               </li>
    #               <li>
    #                  <p>REGION - The Amazon Web Services Region.</p>
    #               </li>
    #               <li>
    #                  <p>SCOPE (Utilization only) - The scope of a Reserved Instance (RI). Values are regional or a single Availability Zone.</p>
    #               </li>
    #               <li>
    #                  <p>TAG (Coverage only) - The tags that are associated with a Reserved Instance (RI).</p>
    #               </li>
    #               <li>
    #                  <p>TENANCY - The tenancy of a resource. Examples are shared or dedicated.</p>
    #               </li>
    #            </ul>
    #            <p>If you set the context to <code>SAVINGS_PLANS</code>, you can use the following dimensions for searching:</p>
    #            <ul>
    #               <li>
    #                  <p>SAVINGS_PLANS_TYPE - Type of Savings Plans (EC2 Instance or Compute)</p>
    #               </li>
    #               <li>
    #                  <p>PAYMENT_OPTION - The payment option for the given Savings Plans (for example, All
    #             Upfront)</p>
    #               </li>
    #               <li>
    #                  <p>REGION - The Amazon Web Services Region.</p>
    #               </li>
    #               <li>
    #                  <p>INSTANCE_TYPE_FAMILY - The family of instances (For example, <code>m5</code>)</p>
    #               </li>
    #               <li>
    #                  <p>LINKED_ACCOUNT - The description in the attribute map that includes the full name of the member account. The value
    #                  field contains the Amazon Web Services ID of the member account.</p>
    #               </li>
    #               <li>
    #                  <p>SAVINGS_PLAN_ARN - The unique identifier for your Savings Plans.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["COST_AND_USAGE", "RESERVATIONS", "SAVINGS_PLANS"]
    #
    #   @return [String]
    #
    # @!attribute filter
    #   <p>Use <code>Expression</code> to filter by cost or by usage. There are two patterns: </p>
    #           <ul>
    #               <li>
    #                   <p>Simple dimension values - You can set the dimension name and values for the
    #                       filters that you plan to use. For example, you can filter for
    #                           <code>REGION==us-east-1 OR REGION==us-west-1</code>. For
    #                           <code>GetRightsizingRecommendation</code>, the Region is a full name (for
    #                       example, <code>REGION==US East (N. Virginia)</code>. The <code>Expression</code>
    #                       example is as follows:</p>
    #                   <p>
    #                       <code>{ "Dimensions": { "Key": "REGION", "Values": [ "us-east-1", “us-west-1” ]
    #                           } }</code>
    #                   </p>
    #                   <p>The list of dimension values are OR'd together to retrieve cost or usage data.
    #                       You can create <code>Expression</code> and <code>DimensionValues</code> objects
    #                       using either <code>with*</code> methods or <code>set*</code> methods in multiple
    #                       lines. </p>
    #               </li>
    #               <li>
    #                   <p>Compound dimension values with logical operations - You can use multiple
    #                           <code>Expression</code> types and the logical operators
    #                           <code>AND/OR/NOT</code> to create a list of one or more
    #                           <code>Expression</code> objects. By doing this, you can filter on more
    #                       advanced options. For example, you can filter on <code>((REGION == us-east-1 OR
    #                           REGION == us-west-1) OR (TAG.Type == Type1)) AND (USAGE_TYPE !=
    #                           DataTransfer)</code>. The <code>Expression</code> for that is as
    #                       follows:</p>
    #                   <p>
    #                       <code>{ "And": [ {"Or": [ {"Dimensions": { "Key": "REGION", "Values": [
    #                           "us-east-1", "us-west-1" ] }}, {"Tags": { "Key": "TagName", "Values":
    #                           ["Value1"] } } ]}, {"Not": {"Dimensions": { "Key": "USAGE_TYPE", "Values":
    #                           ["DataTransfer"] }}} ] } </code>
    #                   </p>
    #                   <note>
    #                       <p>Because each <code>Expression</code> can have only one operator, the
    #                           service returns an error if more than one is specified. The following
    #                           example shows an <code>Expression</code> object that creates an
    #                           error.</p>
    #                   </note>
    #                   <p>
    #                       <code> { "And": [ ... ], "DimensionValues": { "Dimension": "USAGE_TYPE",
    #                           "Values": [ "DataTransfer" ] } } </code>
    #                   </p>
    #               </li>
    #            </ul>
    #           <note>
    #               <p>For the <code>GetRightsizingRecommendation</code> action, a combination of OR and
    #                   NOT isn't supported. OR isn't supported between different dimensions, or dimensions
    #                   and tags. NOT operators aren't supported. Dimensions are also limited to
    #                       <code>LINKED_ACCOUNT</code>, <code>REGION</code>, or
    #                       <code>RIGHTSIZING_TYPE</code>.</p>
    #               <p>For the <code>GetReservationPurchaseRecommendation</code> action, only NOT is
    #                   supported. AND and OR aren't supported. Dimensions are limited to
    #                       <code>LINKED_ACCOUNT</code>.</p>
    #           </note>
    #
    #   @return [Expression]
    #
    # @!attribute sort_by
    #   <p>The value that you want to sort the data by.</p>
    #            <p>The key represents cost and usage metrics. The following values are supported:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>BlendedCost</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UnblendedCost</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AmortizedCost</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NetAmortizedCost</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NetUnblendedCost</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UsageQuantity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NormalizedUsageAmount</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>The supported values for the <code>SortOrder</code> key are <code>ASCENDING</code> or
    #           <code>DESCENDING</code>.</p>
    #            <p>When you specify a <code>SortBy</code> paramater, the context must be
    #           <code>COST_AND_USAGE</code>. Further, when using <code>SortBy</code>,
    #           <code>NextPageToken</code> and <code>SearchString</code> aren't supported.</p>
    #
    #   @return [Array<SortDefinition>]
    #
    # @!attribute max_results
    #   <p>This field is only used when SortBy is provided in the request. The maximum number of
    #         objects that are returned for this request. If MaxResults isn't specified with SortBy, the
    #         request returns 1000 results as the default value for this parameter.</p>
    #            <p>For <code>GetDimensionValues</code>, MaxResults has an upper limit of 1000.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_page_token
    #   <p>The token to retrieve the next set of results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.</p>
    #
    #   @return [String]
    #
    GetDimensionValuesInput = ::Struct.new(
      :search_string,
      :time_period,
      :dimension,
      :context,
      :filter,
      :sort_by,
      :max_results,
      :next_page_token,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max_results ||= 0
      end

    end

    # @!attribute dimension_values
    #   <p>The filters that you used to filter your request. Some dimensions are available only for a specific context.</p>
    #   		       <p>If you set the context to <code>COST_AND_USAGE</code>, you can use the following
    #              dimensions for searching:</p>
    #              <ul>
    #               <li>
    #                  <p>AZ - The Availability Zone. An example is <code>us-east-1a</code>.</p>
    #               </li>
    #               <li>
    #                  <p>DATABASE_ENGINE - The Amazon Relational Database Service database. Examples are Aurora or MySQL.</p>
    #               </li>
    #               <li>
    #                  <p>INSTANCE_TYPE - The type of Amazon EC2 instance. An example is <code>m4.xlarge</code>.</p>
    #               </li>
    #               <li>
    #                  <p>LEGAL_ENTITY_NAME - The name of the organization that sells you Amazon Web Services services, such as Amazon Web Services.</p>
    #               </li>
    #               <li>
    #                  <p>LINKED_ACCOUNT - The description in the attribute map that includes the full name of the member account. The value
    #                  field contains the Amazon Web Services ID of the member account.</p>
    #               </li>
    #               <li>
    #                  <p>OPERATING_SYSTEM - The operating system. Examples are Windows or Linux.</p>
    #               </li>
    #               <li>
    #                  <p>OPERATION - The action performed. Examples include <code>RunInstance</code> and <code>CreateBucket</code>.</p>
    #               </li>
    #               <li>
    #                  <p>PLATFORM - The Amazon EC2 operating system. Examples are Windows or Linux.</p>
    #               </li>
    #               <li>
    #                  <p>PURCHASE_TYPE - The reservation type of the purchase to which this usage is related. Examples include On-Demand
    #                  Instances and Standard Reserved Instances.</p>
    #               </li>
    #               <li>
    #                  <p>SERVICE - The Amazon Web Services service such as Amazon DynamoDB.</p>
    #               </li>
    #               <li>
    #                  <p>USAGE_TYPE - The type of usage. An example is DataTransfer-In-Bytes. The response for the <code>GetDimensionValues</code> operation
    #              includes a unit attribute. Examples include GB and Hrs.</p>
    #               </li>
    #               <li>
    #                  <p>USAGE_TYPE_GROUP - The grouping of common usage types. An example is Amazon EC2: CloudWatch – Alarms. The response for this
    #                  operation includes a unit attribute.</p>
    #               </li>
    #               <li>
    #                  <p>RECORD_TYPE - The different types of charges such as RI fees, usage costs, tax refunds, and credits.</p>
    #               </li>
    #               <li>
    #                  <p>RESOURCE_ID - The unique identifier of the resource. ResourceId is an opt-in feature only available for last 14 days for EC2-Compute Service.</p>
    #               </li>
    #            </ul>
    #            <p>If you set the context to <code>RESERVATIONS</code>, you can use the following
    #              dimensions for searching:</p>
    #            <ul>
    #               <li>
    #                  <p>AZ - The Availability Zone. An example is <code>us-east-1a</code>.</p>
    #               </li>
    #               <li>
    #                  <p>CACHE_ENGINE - The Amazon ElastiCache operating system. Examples are Windows or Linux.</p>
    #               </li>
    #               <li>
    #                  <p>DEPLOYMENT_OPTION - The scope of Amazon Relational Database Service deployments. Valid
    #             values are <code>SingleAZ</code> and <code>MultiAZ</code>.</p>
    #               </li>
    #               <li>
    #                  <p>INSTANCE_TYPE - The type of Amazon EC2 instance. An example is <code>m4.xlarge</code>.</p>
    #               </li>
    #               <li>
    #                  <p>LINKED_ACCOUNT - The description in the attribute map that includes the full name of the member account. The value
    #                  field contains the Amazon Web Services ID of the member account.</p>
    #               </li>
    #               <li>
    #                  <p>PLATFORM - The Amazon EC2 operating system. Examples are Windows or Linux.</p>
    #               </li>
    #               <li>
    #                  <p>REGION - The Amazon Web Services Region.</p>
    #               </li>
    #               <li>
    #                  <p>SCOPE (Utilization only) - The scope of a Reserved Instance (RI). Values are regional or a single Availability Zone.</p>
    #               </li>
    #               <li>
    #                  <p>TAG (Coverage only) - The tags that are associated with a Reserved Instance (RI).</p>
    #               </li>
    #               <li>
    #                  <p>TENANCY - The tenancy of a resource. Examples are shared or dedicated.</p>
    #               </li>
    #            </ul>
    #            <p>If you set the context to <code>SAVINGS_PLANS</code>, you can use the following dimensions for searching:</p>
    #            <ul>
    #               <li>
    #                  <p>SAVINGS_PLANS_TYPE - Type of Savings Plans (EC2 Instance or Compute)</p>
    #               </li>
    #               <li>
    #                  <p>PAYMENT_OPTION - Payment option for the given Savings Plans (for example, All Upfront)</p>
    #               </li>
    #               <li>
    #                  <p>REGION - The Amazon Web Services Region.</p>
    #               </li>
    #               <li>
    #                  <p>INSTANCE_TYPE_FAMILY - The family of instances (For example, <code>m5</code>)</p>
    #               </li>
    #               <li>
    #                  <p>LINKED_ACCOUNT - The description in the attribute map that includes the full name of the member account. The value
    #                  field contains the Amazon Web Services ID of the member account.</p>
    #               </li>
    #               <li>
    #                  <p>SAVINGS_PLAN_ARN - The unique identifier for your Savings Plan</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<DimensionValuesWithAttributes>]
    #
    # @!attribute return_size
    #   <p>The number of results that Amazon Web Services returned at one time.</p>
    #
    #   @return [Integer]
    #
    # @!attribute total_size
    #   <p>The total number of search results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_page_token
    #   <p>The token for the next set of retrievable results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.</p>
    #
    #   @return [String]
    #
    GetDimensionValuesOutput = ::Struct.new(
      :dimension_values,
      :return_size,
      :total_size,
      :next_page_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You can use the following request parameters to query for how much of your instance usage a reservation covered.</p>
    #
    # @!attribute time_period
    #   <p>The start and end dates of the period that you want to retrieve data about reservation coverage for. You can retrieve data
    #   			for a maximum of 13 months: the last 12 months and the current month. The start date is inclusive,  but the end date is exclusive. For example, if <code>start</code> is <code>2017-01-01</code> and <code>end</code> is <code>2017-05-01</code>, then the cost and usage data is
    #               retrieved from <code>2017-01-01</code> up to and including <code>2017-04-30</code> but not including <code>2017-05-01</code>. </p>
    #
    #   @return [DateInterval]
    #
    # @!attribute group_by
    #   <p>You can group the data by the following attributes:</p>
    #   		       <ul>
    #               <li>
    #                  <p>AZ</p>
    #               </li>
    #               <li>
    #                  <p>CACHE_ENGINE</p>
    #               </li>
    #               <li>
    #                  <p>DATABASE_ENGINE</p>
    #               </li>
    #               <li>
    #                  <p>DEPLOYMENT_OPTION</p>
    #               </li>
    #               <li>
    #                  <p>INSTANCE_TYPE</p>
    #               </li>
    #               <li>
    #                  <p>INVOICING_ENTITY</p>
    #               </li>
    #               <li>
    #                  <p>LINKED_ACCOUNT</p>
    #               </li>
    #               <li>
    #                  <p>OPERATING_SYSTEM</p>
    #               </li>
    #               <li>
    #                  <p>PLATFORM</p>
    #               </li>
    #               <li>
    #                  <p>REGION</p>
    #               </li>
    #               <li>
    #                  <p>TENANCY</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<GroupDefinition>]
    #
    # @!attribute granularity
    #   <p>The granularity of the Amazon Web Services cost data for the reservation. Valid values are <code>MONTHLY</code> and <code>DAILY</code>.</p>
    #   		       <p>If <code>GroupBy</code> is set, <code>Granularity</code> can't be set. If <code>Granularity</code> isn't set,
    #   			the response object doesn't include <code>Granularity</code>, either <code>MONTHLY</code> or <code>DAILY</code>.</p>
    #   		       <p>The <code>GetReservationCoverage</code> operation supports only <code>DAILY</code> and <code>MONTHLY</code> granularities.</p>
    #
    #   Enum, one of: ["DAILY", "MONTHLY", "HOURLY"]
    #
    #   @return [String]
    #
    # @!attribute filter
    #   <p>Filters utilization data by dimensions. You can filter by the following dimensions:</p>
    #   		       <ul>
    #               <li>
    #                  <p>AZ</p>
    #               </li>
    #               <li>
    #                  <p>CACHE_ENGINE</p>
    #               </li>
    #               <li>
    #                  <p>DATABASE_ENGINE</p>
    #               </li>
    #               <li>
    #                  <p>DEPLOYMENT_OPTION</p>
    #               </li>
    #               <li>
    #                  <p>INSTANCE_TYPE</p>
    #               </li>
    #               <li>
    #                  <p>LINKED_ACCOUNT</p>
    #               </li>
    #               <li>
    #                  <p>OPERATING_SYSTEM</p>
    #               </li>
    #               <li>
    #                  <p>PLATFORM</p>
    #               </li>
    #               <li>
    #                  <p>REGION</p>
    #               </li>
    #               <li>
    #                  <p>SERVICE</p>
    #               </li>
    #               <li>
    #                  <p>TAG</p>
    #               </li>
    #               <li>
    #                  <p>TENANCY</p>
    #               </li>
    #            </ul>
    #   		       <p>
    #               <code>GetReservationCoverage</code> uses the same
    #   			<a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html">Expression</a> object
    #   			as the other operations, but only <code>AND</code> is supported among each dimension. You can nest only one level deep.
    #   			If there are multiple values for a dimension, they are OR'd together.</p>
    #   		       <p>If you don't provide a <code>SERVICE</code> filter, Cost Explorer defaults to EC2.</p>
    #   	        <p>Cost category is also supported.</p>
    #
    #   @return [Expression]
    #
    # @!attribute metrics
    #   <p>The measurement that you want your reservation coverage reported in.</p>
    #   		       <p>Valid values are <code>Hour</code>, <code>Unit</code>, and <code>Cost</code>. You can use multiple values in a request.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_page_token
    #   <p>The token to retrieve the next set of results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.</p>
    #
    #   @return [String]
    #
    # @!attribute sort_by
    #   <p>The value by which you want to sort the data.</p>
    #            <p>The following values are supported for <code>Key</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>OnDemandCost</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CoverageHoursPercentage</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OnDemandHours</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ReservedHours</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TotalRunningHours</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CoverageNormalizedUnitsPercentage</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OnDemandNormalizedUnits</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ReservedNormalizedUnits</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TotalRunningNormalizedUnits</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Time</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #            <p>Supported values for <code>SortOrder</code> are <code>ASCENDING</code> or <code>DESCENDING</code>.</p>
    #
    #   @return [SortDefinition]
    #
    # @!attribute max_results
    #   <p>The maximum number of objects that you returned for this request. If more objects are
    #         available, in the response, Amazon Web Services provides a NextPageToken value that you can use
    #         in a subsequent call to get the next batch of objects.</p>
    #
    #   @return [Integer]
    #
    GetReservationCoverageInput = ::Struct.new(
      :time_period,
      :group_by,
      :granularity,
      :filter,
      :metrics,
      :next_page_token,
      :sort_by,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute coverages_by_time
    #   <p>The amount of time that your reservations covered.</p>
    #
    #   @return [Array<CoverageByTime>]
    #
    # @!attribute total
    #   <p>The total amount of instance usage that a reservation covered.</p>
    #
    #   @return [Coverage]
    #
    # @!attribute next_page_token
    #   <p>The token for the next set of retrievable results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.</p>
    #
    #   @return [String]
    #
    GetReservationCoverageOutput = ::Struct.new(
      :coverages_by_time,
      :total,
      :next_page_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The account ID that's associated with the recommendation. </p>
    #
    #   @return [String]
    #
    # @!attribute service
    #   <p>The specific service that you want recommendations for.</p>
    #
    #   @return [String]
    #
    # @!attribute filter
    #   <p>Use <code>Expression</code> to filter by cost or by usage. There are two patterns: </p>
    #           <ul>
    #               <li>
    #                   <p>Simple dimension values - You can set the dimension name and values for the
    #                       filters that you plan to use. For example, you can filter for
    #                           <code>REGION==us-east-1 OR REGION==us-west-1</code>. For
    #                           <code>GetRightsizingRecommendation</code>, the Region is a full name (for
    #                       example, <code>REGION==US East (N. Virginia)</code>. The <code>Expression</code>
    #                       example is as follows:</p>
    #                   <p>
    #                       <code>{ "Dimensions": { "Key": "REGION", "Values": [ "us-east-1", “us-west-1” ]
    #                           } }</code>
    #                   </p>
    #                   <p>The list of dimension values are OR'd together to retrieve cost or usage data.
    #                       You can create <code>Expression</code> and <code>DimensionValues</code> objects
    #                       using either <code>with*</code> methods or <code>set*</code> methods in multiple
    #                       lines. </p>
    #               </li>
    #               <li>
    #                   <p>Compound dimension values with logical operations - You can use multiple
    #                           <code>Expression</code> types and the logical operators
    #                           <code>AND/OR/NOT</code> to create a list of one or more
    #                           <code>Expression</code> objects. By doing this, you can filter on more
    #                       advanced options. For example, you can filter on <code>((REGION == us-east-1 OR
    #                           REGION == us-west-1) OR (TAG.Type == Type1)) AND (USAGE_TYPE !=
    #                           DataTransfer)</code>. The <code>Expression</code> for that is as
    #                       follows:</p>
    #                   <p>
    #                       <code>{ "And": [ {"Or": [ {"Dimensions": { "Key": "REGION", "Values": [
    #                           "us-east-1", "us-west-1" ] }}, {"Tags": { "Key": "TagName", "Values":
    #                           ["Value1"] } } ]}, {"Not": {"Dimensions": { "Key": "USAGE_TYPE", "Values":
    #                           ["DataTransfer"] }}} ] } </code>
    #                   </p>
    #                   <note>
    #                       <p>Because each <code>Expression</code> can have only one operator, the
    #                           service returns an error if more than one is specified. The following
    #                           example shows an <code>Expression</code> object that creates an
    #                           error.</p>
    #                   </note>
    #                   <p>
    #                       <code> { "And": [ ... ], "DimensionValues": { "Dimension": "USAGE_TYPE",
    #                           "Values": [ "DataTransfer" ] } } </code>
    #                   </p>
    #               </li>
    #            </ul>
    #           <note>
    #               <p>For the <code>GetRightsizingRecommendation</code> action, a combination of OR and
    #                   NOT isn't supported. OR isn't supported between different dimensions, or dimensions
    #                   and tags. NOT operators aren't supported. Dimensions are also limited to
    #                       <code>LINKED_ACCOUNT</code>, <code>REGION</code>, or
    #                       <code>RIGHTSIZING_TYPE</code>.</p>
    #               <p>For the <code>GetReservationPurchaseRecommendation</code> action, only NOT is
    #                   supported. AND and OR aren't supported. Dimensions are limited to
    #                       <code>LINKED_ACCOUNT</code>.</p>
    #           </note>
    #
    #   @return [Expression]
    #
    # @!attribute account_scope
    #   <p>The account scope that you want your recommendations for. Amazon Web Services calculates recommendations including the management account and member accounts if the value is set to <code>PAYER</code>. If the value is <code>LINKED</code>, recommendations are calculated for individual member accounts only.</p>
    #
    #   Enum, one of: ["PAYER", "LINKED"]
    #
    #   @return [String]
    #
    # @!attribute lookback_period_in_days
    #   <p>The number of previous days that you want Amazon Web Services to consider when it calculates your recommendations.</p>
    #
    #   Enum, one of: ["SEVEN_DAYS", "THIRTY_DAYS", "SIXTY_DAYS"]
    #
    #   @return [String]
    #
    # @!attribute term_in_years
    #   <p>The reservation term that you want recommendations for.</p>
    #
    #   Enum, one of: ["ONE_YEAR", "THREE_YEARS"]
    #
    #   @return [String]
    #
    # @!attribute payment_option
    #   <p>The reservation purchase option that you want recommendations for.</p>
    #
    #   Enum, one of: ["NO_UPFRONT", "PARTIAL_UPFRONT", "ALL_UPFRONT", "LIGHT_UTILIZATION", "MEDIUM_UTILIZATION", "HEAVY_UTILIZATION"]
    #
    #   @return [String]
    #
    # @!attribute service_specification
    #   <p>The hardware specifications for the service instances that you want recommendations for, such as standard or convertible Amazon EC2 instances.</p>
    #
    #   @return [ServiceSpecification]
    #
    # @!attribute page_size
    #   <p>The number of recommendations that you want returned in a single response object.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_page_token
    #   <p>The pagination token that indicates the next set of results that you want to retrieve.</p>
    #
    #   @return [String]
    #
    GetReservationPurchaseRecommendationInput = ::Struct.new(
      :account_id,
      :service,
      :filter,
      :account_scope,
      :lookback_period_in_days,
      :term_in_years,
      :payment_option,
      :service_specification,
      :page_size,
      :next_page_token,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.page_size ||= 0
      end

    end

    # @!attribute metadata
    #   <p>Information about this specific recommendation call, such as the time stamp for when Cost Explorer generated this recommendation.</p>
    #
    #   @return [ReservationPurchaseRecommendationMetadata]
    #
    # @!attribute recommendations
    #   <p>Recommendations for reservations to purchase.</p>
    #
    #   @return [Array<ReservationPurchaseRecommendation>]
    #
    # @!attribute next_page_token
    #   <p>The pagination token for the next set of retrievable results.</p>
    #
    #   @return [String]
    #
    GetReservationPurchaseRecommendationOutput = ::Struct.new(
      :metadata,
      :recommendations,
      :next_page_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute time_period
    #   <p>Sets the start and end dates for retrieving Reserved Instance (RI) utilization. The start
    #         date is inclusive, but the end date is exclusive. For example, if <code>start</code> is
    #           <code>2017-01-01</code> and <code>end</code> is <code>2017-05-01</code>, then the cost and
    #         usage data is retrieved from <code>2017-01-01</code> up to and including
    #           <code>2017-04-30</code> but not including <code>2017-05-01</code>. </p>
    #
    #   @return [DateInterval]
    #
    # @!attribute group_by
    #   <p>Groups only by <code>SUBSCRIPTION_ID</code>. Metadata is included.</p>
    #
    #   @return [Array<GroupDefinition>]
    #
    # @!attribute granularity
    #   <p>If <code>GroupBy</code> is set, <code>Granularity</code> can't be set. If <code>Granularity</code> isn't set,
    #   			the response object doesn't include <code>Granularity</code>, either <code>MONTHLY</code> or <code>DAILY</code>.
    #   			If both <code>GroupBy</code> and <code>Granularity</code> aren't set, <code>GetReservationUtilization</code> defaults to <code>DAILY</code>.</p>
    #   		       <p>The <code>GetReservationUtilization</code> operation supports only <code>DAILY</code> and <code>MONTHLY</code> granularities.</p>
    #
    #   Enum, one of: ["DAILY", "MONTHLY", "HOURLY"]
    #
    #   @return [String]
    #
    # @!attribute filter
    #   <p>Filters utilization data by dimensions. You can filter by the following dimensions:</p>
    #   		       <ul>
    #               <li>
    #                  <p>AZ</p>
    #               </li>
    #               <li>
    #                  <p>CACHE_ENGINE</p>
    #               </li>
    #               <li>
    #                  <p>DEPLOYMENT_OPTION</p>
    #               </li>
    #               <li>
    #                  <p>INSTANCE_TYPE</p>
    #               </li>
    #               <li>
    #                  <p>LINKED_ACCOUNT</p>
    #               </li>
    #               <li>
    #                  <p>OPERATING_SYSTEM</p>
    #               </li>
    #               <li>
    #                  <p>PLATFORM</p>
    #               </li>
    #               <li>
    #                  <p>REGION</p>
    #               </li>
    #               <li>
    #                  <p>SERVICE</p>
    #               </li>
    #               <li>
    #                  <p>SCOPE</p>
    #               </li>
    #               <li>
    #                  <p>TENANCY</p>
    #               </li>
    #            </ul>
    #   		       <p>
    #               <code>GetReservationUtilization</code> uses the same
    #   			<a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html">Expression</a> object
    #   			as the other operations, but only <code>AND</code> is supported among each dimension, and nesting is supported up to
    #   			only one level deep. If there are multiple values for a dimension, they are OR'd together.</p>
    #
    #   @return [Expression]
    #
    # @!attribute sort_by
    #   <p>The value that you want to sort the data by.</p>
    #
    #            <p>The following values are supported for <code>Key</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>UtilizationPercentage</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UtilizationPercentageInUnits</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PurchasedHours</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PurchasedUnits</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TotalActualHours</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TotalActualUnits</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UnusedHours</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UnusedUnits</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OnDemandCostOfRIHoursUsed</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NetRISavings</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TotalPotentialRISavings</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AmortizedUpfrontFee</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AmortizedRecurringFee</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TotalAmortizedFee</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RICostForUnusedHours</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RealizedSavings</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UnrealizedSavings</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #            <p>The supported values for <code>SortOrder</code> are <code>ASCENDING</code> and
    #           <code>DESCENDING</code>.</p>
    #
    #   @return [SortDefinition]
    #
    # @!attribute next_page_token
    #   <p>The token to retrieve the next set of results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of objects that you returned for this request. If more objects are
    #         available, in the response, Amazon Web Services provides a NextPageToken value that you can use
    #         in a subsequent call to get the next batch of objects.</p>
    #
    #   @return [Integer]
    #
    GetReservationUtilizationInput = ::Struct.new(
      :time_period,
      :group_by,
      :granularity,
      :filter,
      :sort_by,
      :next_page_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute utilizations_by_time
    #   <p>The amount of time that you used your Reserved Instances (RIs).</p>
    #
    #   @return [Array<UtilizationByTime>]
    #
    # @!attribute total
    #   <p>The total amount of time that you used your Reserved Instances (RIs).</p>
    #
    #   @return [ReservationAggregates]
    #
    # @!attribute next_page_token
    #   <p>The token for the next set of retrievable results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.</p>
    #
    #   @return [String]
    #
    GetReservationUtilizationOutput = ::Struct.new(
      :utilizations_by_time,
      :total,
      :next_page_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute filter
    #   <p>Use <code>Expression</code> to filter by cost or by usage. There are two patterns: </p>
    #           <ul>
    #               <li>
    #                   <p>Simple dimension values - You can set the dimension name and values for the
    #                       filters that you plan to use. For example, you can filter for
    #                           <code>REGION==us-east-1 OR REGION==us-west-1</code>. For
    #                           <code>GetRightsizingRecommendation</code>, the Region is a full name (for
    #                       example, <code>REGION==US East (N. Virginia)</code>. The <code>Expression</code>
    #                       example is as follows:</p>
    #                   <p>
    #                       <code>{ "Dimensions": { "Key": "REGION", "Values": [ "us-east-1", “us-west-1” ]
    #                           } }</code>
    #                   </p>
    #                   <p>The list of dimension values are OR'd together to retrieve cost or usage data.
    #                       You can create <code>Expression</code> and <code>DimensionValues</code> objects
    #                       using either <code>with*</code> methods or <code>set*</code> methods in multiple
    #                       lines. </p>
    #               </li>
    #               <li>
    #                   <p>Compound dimension values with logical operations - You can use multiple
    #                           <code>Expression</code> types and the logical operators
    #                           <code>AND/OR/NOT</code> to create a list of one or more
    #                           <code>Expression</code> objects. By doing this, you can filter on more
    #                       advanced options. For example, you can filter on <code>((REGION == us-east-1 OR
    #                           REGION == us-west-1) OR (TAG.Type == Type1)) AND (USAGE_TYPE !=
    #                           DataTransfer)</code>. The <code>Expression</code> for that is as
    #                       follows:</p>
    #                   <p>
    #                       <code>{ "And": [ {"Or": [ {"Dimensions": { "Key": "REGION", "Values": [
    #                           "us-east-1", "us-west-1" ] }}, {"Tags": { "Key": "TagName", "Values":
    #                           ["Value1"] } } ]}, {"Not": {"Dimensions": { "Key": "USAGE_TYPE", "Values":
    #                           ["DataTransfer"] }}} ] } </code>
    #                   </p>
    #                   <note>
    #                       <p>Because each <code>Expression</code> can have only one operator, the
    #                           service returns an error if more than one is specified. The following
    #                           example shows an <code>Expression</code> object that creates an
    #                           error.</p>
    #                   </note>
    #                   <p>
    #                       <code> { "And": [ ... ], "DimensionValues": { "Dimension": "USAGE_TYPE",
    #                           "Values": [ "DataTransfer" ] } } </code>
    #                   </p>
    #               </li>
    #            </ul>
    #           <note>
    #               <p>For the <code>GetRightsizingRecommendation</code> action, a combination of OR and
    #                   NOT isn't supported. OR isn't supported between different dimensions, or dimensions
    #                   and tags. NOT operators aren't supported. Dimensions are also limited to
    #                       <code>LINKED_ACCOUNT</code>, <code>REGION</code>, or
    #                       <code>RIGHTSIZING_TYPE</code>.</p>
    #               <p>For the <code>GetReservationPurchaseRecommendation</code> action, only NOT is
    #                   supported. AND and OR aren't supported. Dimensions are limited to
    #                       <code>LINKED_ACCOUNT</code>.</p>
    #           </note>
    #
    #   @return [Expression]
    #
    # @!attribute configuration
    #   <p>You can use Configuration to customize recommendations across two attributes. You can
    #         choose to view recommendations for instances within the same instance families or across
    #         different instance families. You can also choose to view your estimated savings that are
    #         associated with recommendations with consideration of existing Savings Plans or RI benefits,
    #         or neither. </p>
    #
    #   @return [RightsizingRecommendationConfiguration]
    #
    # @!attribute service
    #   <p>The specific service that you want recommendations for. The only valid value for <code>GetRightsizingRecommendation</code> is
    #       	"<code>AmazonEC2</code>".</p>
    #
    #   @return [String]
    #
    # @!attribute page_size
    #   <p>The number of recommendations that you want returned in a single response object.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_page_token
    #   <p>The pagination token that indicates the next set of results that you want to retrieve.</p>
    #
    #   @return [String]
    #
    GetRightsizingRecommendationInput = ::Struct.new(
      :filter,
      :configuration,
      :service,
      :page_size,
      :next_page_token,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.page_size ||= 0
      end

    end

    # @!attribute metadata
    #   <p>Information regarding this specific recommendation set.</p>
    #
    #   @return [RightsizingRecommendationMetadata]
    #
    # @!attribute summary
    #   <p>Summary of this recommendation set.</p>
    #
    #   @return [RightsizingRecommendationSummary]
    #
    # @!attribute rightsizing_recommendations
    #   <p>Recommendations to rightsize resources.</p>
    #
    #   @return [Array<RightsizingRecommendation>]
    #
    # @!attribute next_page_token
    #   <p>The token to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration
    #   <p>You can use Configuration to customize recommendations across two attributes. You can
    #         choose to view recommendations for instances within the same instance families or across
    #         different instance families. You can also choose to view your estimated savings that are
    #         associated with recommendations with consideration of existing Savings Plans or RI benefits,
    #         or neither. </p>
    #
    #   @return [RightsizingRecommendationConfiguration]
    #
    GetRightsizingRecommendationOutput = ::Struct.new(
      :metadata,
      :summary,
      :rightsizing_recommendations,
      :next_page_token,
      :configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute time_period
    #   <p>The time period that you want the usage and costs for. The <code>Start</code> date must be within 13 months. The <code>End</code> date must be after the <code>Start</code> date, and before the current date. Future dates can't be used as an <code>End</code> date.</p>
    #
    #   @return [DateInterval]
    #
    # @!attribute group_by
    #   <p>You can group the data using the attributes <code>INSTANCE_FAMILY</code>, <code>REGION</code>, or <code>SERVICE</code>.</p>
    #
    #   @return [Array<GroupDefinition>]
    #
    # @!attribute granularity
    #   <p>The granularity of the Amazon Web Services cost data for your Savings Plans. <code>Granularity</code> can't be set if <code>GroupBy</code> is set.</p>
    #   	        <p>The <code>GetSavingsPlansCoverage</code> operation supports only <code>DAILY</code> and <code>MONTHLY</code> granularities.</p>
    #
    #   Enum, one of: ["DAILY", "MONTHLY", "HOURLY"]
    #
    #   @return [String]
    #
    # @!attribute filter
    #   <p>Filters Savings Plans coverage data by dimensions. You can filter data for Savings Plans usage with the following dimensions:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>LINKED_ACCOUNT</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REGION</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SERVICE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INSTANCE_FAMILY</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>
    #               <code>GetSavingsPlansCoverage</code> uses the same
    #         <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html">Expression</a> object
    #         as the other operations, but only <code>AND</code> is supported among each dimension. If there are multiple values for a dimension, they are OR'd together.</p>
    #            <p>Cost category is also supported.</p>
    #
    #   @return [Expression]
    #
    # @!attribute metrics
    #   <p>The measurement that you want your Savings Plans coverage reported in. The only valid value is <code>SpendCoveredBySavingsPlans</code>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The token to retrieve the next set of results. Amazon Web Services provides the token when the response from a previous call has
    #         more results than the maximum page size.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The number of items to be returned in a response. The default is <code>20</code>, with a minimum value of <code>1</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute sort_by
    #   <p>The value that you want to sort the data by.</p>
    #            <p>The following values are supported for <code>Key</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SpendCoveredBySavingsPlan</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OnDemandCost</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CoveragePercentage</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TotalCost</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>InstanceFamily</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Region</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Service</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #            <p>The supported values for <code>SortOrder</code> are <code>ASCENDING</code> and
    #           <code>DESCENDING</code>.</p>
    #
    #   @return [SortDefinition]
    #
    GetSavingsPlansCoverageInput = ::Struct.new(
      :time_period,
      :group_by,
      :granularity,
      :filter,
      :metrics,
      :next_token,
      :max_results,
      :sort_by,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute savings_plans_coverages
    #   <p>The amount of spend that your Savings Plans covered.</p>
    #
    #   @return [Array<SavingsPlansCoverage>]
    #
    # @!attribute next_token
    #   <p>The token to retrieve the next set of results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.</p>
    #
    #   @return [String]
    #
    GetSavingsPlansCoverageOutput = ::Struct.new(
      :savings_plans_coverages,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute savings_plans_type
    #   <p>The Savings Plans recommendation type that's requested.</p>
    #
    #   Enum, one of: ["COMPUTE_SP", "EC2_INSTANCE_SP", "SAGEMAKER_SP"]
    #
    #   @return [String]
    #
    # @!attribute term_in_years
    #   <p>The savings plan recommendation term that's used to generate these recommendations.</p>
    #
    #   Enum, one of: ["ONE_YEAR", "THREE_YEARS"]
    #
    #   @return [String]
    #
    # @!attribute payment_option
    #   <p>The payment option that's used to generate these recommendations.</p>
    #
    #   Enum, one of: ["NO_UPFRONT", "PARTIAL_UPFRONT", "ALL_UPFRONT", "LIGHT_UTILIZATION", "MEDIUM_UTILIZATION", "HEAVY_UTILIZATION"]
    #
    #   @return [String]
    #
    # @!attribute account_scope
    #   <p>The account scope that you want your recommendations for. Amazon Web Services calculates recommendations including the management account and member accounts if the value is set to <code>PAYER</code>. If the value is <code>LINKED</code>, recommendations are calculated for individual member accounts only.</p>
    #
    #   Enum, one of: ["PAYER", "LINKED"]
    #
    #   @return [String]
    #
    # @!attribute next_page_token
    #   <p>The token to retrieve the next set of results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.</p>
    #
    #   @return [String]
    #
    # @!attribute page_size
    #   <p>The number of recommendations that you want returned in a single response object.</p>
    #
    #   @return [Integer]
    #
    # @!attribute lookback_period_in_days
    #   <p>The lookback period that's used to generate the recommendation.</p>
    #
    #   Enum, one of: ["SEVEN_DAYS", "THIRTY_DAYS", "SIXTY_DAYS"]
    #
    #   @return [String]
    #
    # @!attribute filter
    #   <p>You can filter your recommendations by Account ID with the <code>LINKED_ACCOUNT</code>
    #         dimension. To filter your recommendations by Account ID, specify <code>Key</code> as
    #           <code>LINKED_ACCOUNT</code> and <code>Value</code> as the comma-separated Acount ID(s) that
    #         you want to see Savings Plans purchase recommendations for.</p>
    #            <p>For GetSavingsPlansPurchaseRecommendation, the <code>Filter</code> doesn't include
    #           <code>CostCategories</code> or <code>Tags</code>. It only includes <code>Dimensions</code>.
    #         With <code>Dimensions</code>, <code>Key</code> must be <code>LINKED_ACCOUNT</code> and
    #           <code>Value</code> can be a single Account ID or multiple comma-separated Account IDs that
    #         you want to see Savings Plans Purchase Recommendations for. <code>AND</code> and
    #           <code>OR</code> operators are not supported.</p>
    #
    #   @return [Expression]
    #
    GetSavingsPlansPurchaseRecommendationInput = ::Struct.new(
      :savings_plans_type,
      :term_in_years,
      :payment_option,
      :account_scope,
      :next_page_token,
      :page_size,
      :lookback_period_in_days,
      :filter,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.page_size ||= 0
      end

    end

    # @!attribute metadata
    #   <p>Information that regards this specific recommendation set.</p>
    #
    #   @return [SavingsPlansPurchaseRecommendationMetadata]
    #
    # @!attribute savings_plans_purchase_recommendation
    #   <p>Contains your request parameters, Savings Plan Recommendations Summary, and Details.</p>
    #
    #   @return [SavingsPlansPurchaseRecommendation]
    #
    # @!attribute next_page_token
    #   <p>The token for the next set of retrievable results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.</p>
    #
    #   @return [String]
    #
    GetSavingsPlansPurchaseRecommendationOutput = ::Struct.new(
      :metadata,
      :savings_plans_purchase_recommendation,
      :next_page_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute time_period
    #   <p>The time period that you want the usage and costs for. The <code>Start</code> date must be within 13 months. The <code>End</code> date must be after the <code>Start</code> date, and before the current date. Future dates can't be used as an <code>End</code> date.</p>
    #
    #   @return [DateInterval]
    #
    # @!attribute filter
    #   <p>Filters Savings Plans utilization coverage data for active Savings Plans dimensions.  You can filter data with the following dimensions:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>LINKED_ACCOUNT</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SAVINGS_PLAN_ARN</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REGION</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PAYMENT_OPTION</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INSTANCE_TYPE_FAMILY</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>
    #               <code>GetSavingsPlansUtilizationDetails</code> uses the same
    #         <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html">Expression</a> object
    #         as the other operations, but only <code>AND</code> is supported among each dimension.</p>
    #
    #   @return [Expression]
    #
    # @!attribute data_type
    #   <p>The data type.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The token to retrieve the next set of results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The number of items to be returned in a response. The default is <code>20</code>, with a minimum value of <code>1</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute sort_by
    #   <p>The value that you want to sort the data by.</p>
    #
    #            <p>The following values are supported for <code>Key</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>UtilizationPercentage</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TotalCommitment</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UsedCommitment</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UnusedCommitment</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NetSavings</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AmortizedRecurringCommitment</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AmortizedUpfrontCommitment</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #            <p>The supported values for <code>SortOrder</code> are <code>ASCENDING</code> and
    #           <code>DESCENDING</code>.</p>
    #
    #   @return [SortDefinition]
    #
    GetSavingsPlansUtilizationDetailsInput = ::Struct.new(
      :time_period,
      :filter,
      :data_type,
      :next_token,
      :max_results,
      :sort_by,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute savings_plans_utilization_details
    #   <p>Retrieves a single daily or monthly Savings Plans utilization rate and details for your account.</p>
    #
    #   @return [Array<SavingsPlansUtilizationDetail>]
    #
    # @!attribute total
    #   <p>The total Savings Plans utilization, regardless of time period.</p>
    #
    #   @return [SavingsPlansUtilizationAggregates]
    #
    # @!attribute time_period
    #   <p>The time period of the request. </p>
    #
    #   @return [DateInterval]
    #
    # @!attribute next_token
    #   <p>The token to retrieve the next set of results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.</p>
    #
    #   @return [String]
    #
    GetSavingsPlansUtilizationDetailsOutput = ::Struct.new(
      :savings_plans_utilization_details,
      :total,
      :time_period,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute time_period
    #   <p>The time period that you want the usage and costs for. The <code>Start</code> date must be within 13 months. The <code>End</code> date must be after the <code>Start</code> date, and before the current date. Future dates can't be used as an <code>End</code> date.</p>
    #
    #   @return [DateInterval]
    #
    # @!attribute granularity
    #   <p>The granularity of the Amazon Web Services utillization data for your Savings Plans.</p>
    #   	        <p>The <code>GetSavingsPlansUtilization</code> operation supports only <code>DAILY</code> and <code>MONTHLY</code> granularities.</p>
    #
    #   Enum, one of: ["DAILY", "MONTHLY", "HOURLY"]
    #
    #   @return [String]
    #
    # @!attribute filter
    #   <p>Filters Savings Plans utilization coverage data for active Savings Plans dimensions.  You can filter data with the following dimensions:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>LINKED_ACCOUNT</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SAVINGS_PLAN_ARN</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SAVINGS_PLANS_TYPE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REGION</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PAYMENT_OPTION</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INSTANCE_TYPE_FAMILY</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>
    #               <code>GetSavingsPlansUtilization</code> uses the same
    #         <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html">Expression</a> object
    #         as the other operations, but only <code>AND</code> is supported among each dimension.</p>
    #
    #   @return [Expression]
    #
    # @!attribute sort_by
    #   <p>The value that you want to sort the data by.</p>
    #            <p>The following values are supported for <code>Key</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>UtilizationPercentage</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TotalCommitment</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UsedCommitment</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UnusedCommitment</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NetSavings</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #            <p>The supported values for <code>SortOrder</code> are <code>ASCENDING</code> and
    #           <code>DESCENDING</code>.</p>
    #
    #   @return [SortDefinition]
    #
    GetSavingsPlansUtilizationInput = ::Struct.new(
      :time_period,
      :granularity,
      :filter,
      :sort_by,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute savings_plans_utilizations_by_time
    #   <p>The amount of cost/commitment that you used your Savings Plans. You can use it to specify
    #         date ranges.</p>
    #
    #   @return [Array<SavingsPlansUtilizationByTime>]
    #
    # @!attribute total
    #   <p>The total amount of cost/commitment that you used your Savings Plans, regardless of date
    #         ranges.</p>
    #
    #   @return [SavingsPlansUtilizationAggregates]
    #
    GetSavingsPlansUtilizationOutput = ::Struct.new(
      :savings_plans_utilizations_by_time,
      :total,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute search_string
    #   <p>The value that you want to search for.</p>
    #
    #   @return [String]
    #
    # @!attribute time_period
    #   <p>The start and end dates for retrieving the dimension values. The start date is inclusive,  but the end date is exclusive. For example, if <code>start</code> is <code>2017-01-01</code> and <code>end</code> is <code>2017-05-01</code>, then the cost and usage data is
    #               retrieved from <code>2017-01-01</code> up to and including <code>2017-04-30</code> but not including <code>2017-05-01</code>.</p>
    #
    #   @return [DateInterval]
    #
    # @!attribute tag_key
    #   <p>The key of the tag that you want to return values for.</p>
    #
    #   @return [String]
    #
    # @!attribute filter
    #   <p>Use <code>Expression</code> to filter by cost or by usage. There are two patterns: </p>
    #           <ul>
    #               <li>
    #                   <p>Simple dimension values - You can set the dimension name and values for the
    #                       filters that you plan to use. For example, you can filter for
    #                           <code>REGION==us-east-1 OR REGION==us-west-1</code>. For
    #                           <code>GetRightsizingRecommendation</code>, the Region is a full name (for
    #                       example, <code>REGION==US East (N. Virginia)</code>. The <code>Expression</code>
    #                       example is as follows:</p>
    #                   <p>
    #                       <code>{ "Dimensions": { "Key": "REGION", "Values": [ "us-east-1", “us-west-1” ]
    #                           } }</code>
    #                   </p>
    #                   <p>The list of dimension values are OR'd together to retrieve cost or usage data.
    #                       You can create <code>Expression</code> and <code>DimensionValues</code> objects
    #                       using either <code>with*</code> methods or <code>set*</code> methods in multiple
    #                       lines. </p>
    #               </li>
    #               <li>
    #                   <p>Compound dimension values with logical operations - You can use multiple
    #                           <code>Expression</code> types and the logical operators
    #                           <code>AND/OR/NOT</code> to create a list of one or more
    #                           <code>Expression</code> objects. By doing this, you can filter on more
    #                       advanced options. For example, you can filter on <code>((REGION == us-east-1 OR
    #                           REGION == us-west-1) OR (TAG.Type == Type1)) AND (USAGE_TYPE !=
    #                           DataTransfer)</code>. The <code>Expression</code> for that is as
    #                       follows:</p>
    #                   <p>
    #                       <code>{ "And": [ {"Or": [ {"Dimensions": { "Key": "REGION", "Values": [
    #                           "us-east-1", "us-west-1" ] }}, {"Tags": { "Key": "TagName", "Values":
    #                           ["Value1"] } } ]}, {"Not": {"Dimensions": { "Key": "USAGE_TYPE", "Values":
    #                           ["DataTransfer"] }}} ] } </code>
    #                   </p>
    #                   <note>
    #                       <p>Because each <code>Expression</code> can have only one operator, the
    #                           service returns an error if more than one is specified. The following
    #                           example shows an <code>Expression</code> object that creates an
    #                           error.</p>
    #                   </note>
    #                   <p>
    #                       <code> { "And": [ ... ], "DimensionValues": { "Dimension": "USAGE_TYPE",
    #                           "Values": [ "DataTransfer" ] } } </code>
    #                   </p>
    #               </li>
    #            </ul>
    #           <note>
    #               <p>For the <code>GetRightsizingRecommendation</code> action, a combination of OR and
    #                   NOT isn't supported. OR isn't supported between different dimensions, or dimensions
    #                   and tags. NOT operators aren't supported. Dimensions are also limited to
    #                       <code>LINKED_ACCOUNT</code>, <code>REGION</code>, or
    #                       <code>RIGHTSIZING_TYPE</code>.</p>
    #               <p>For the <code>GetReservationPurchaseRecommendation</code> action, only NOT is
    #                   supported. AND and OR aren't supported. Dimensions are limited to
    #                       <code>LINKED_ACCOUNT</code>.</p>
    #           </note>
    #
    #   @return [Expression]
    #
    # @!attribute sort_by
    #   <p>The value that you want to sort the data by.</p>
    #            <p>The key represents cost and usage metrics. The following values are supported:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>BlendedCost</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UnblendedCost</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AmortizedCost</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NetAmortizedCost</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NetUnblendedCost</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UsageQuantity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NormalizedUsageAmount</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>The supported values for <code>SortOrder</code> are <code>ASCENDING</code> and
    #           <code>DESCENDING</code>.</p>
    #            <p>When you use <code>SortBy</code>, <code>NextPageToken</code> and <code>SearchString</code>
    #         aren't supported.</p>
    #
    #   @return [Array<SortDefinition>]
    #
    # @!attribute max_results
    #   <p>This field is only used when SortBy is provided in the request. The maximum number of
    #         objects that are returned for this request. If MaxResults isn't specified with SortBy, the
    #         request returns 1000 results as the default value for this parameter.</p>
    #            <p>For <code>GetTags</code>, MaxResults has an upper quota of 1000.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_page_token
    #   <p>The token to retrieve the next set of results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.</p>
    #
    #   @return [String]
    #
    GetTagsInput = ::Struct.new(
      :search_string,
      :time_period,
      :tag_key,
      :filter,
      :sort_by,
      :max_results,
      :next_page_token,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max_results ||= 0
      end

    end

    # @!attribute next_page_token
    #   <p>The token for the next set of retrievable results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags that match your request.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute return_size
    #   <p>The number of query results that Amazon Web Services returns at a time.</p>
    #
    #   @return [Integer]
    #
    # @!attribute total_size
    #   <p>The total number of query results.</p>
    #
    #   @return [Integer]
    #
    GetTagsOutput = ::Struct.new(
      :next_page_token,
      :tags,
      :return_size,
      :total_size,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute time_period
    #   <p>The start and end dates of the period that you want to retrieve usage forecast for. The
    #         start date is included in the period, but the end date isn't included in the period. For
    #         example, if <code>start</code> is <code>2017-01-01</code> and <code>end</code> is
    #           <code>2017-05-01</code>, then the cost and usage data is retrieved from
    #           <code>2017-01-01</code> up to and including <code>2017-04-30</code> but not including
    #           <code>2017-05-01</code>. The start date must be equal to or later than the current date to
    #         avoid a validation error.</p>
    #
    #   @return [DateInterval]
    #
    # @!attribute metric
    #   <p>Which metric Cost Explorer uses to create your forecast.</p>
    #   		       <p>Valid values for a <code>GetUsageForecast</code> call are the following:</p>
    #   		       <ul>
    #               <li>
    #   				           <p>USAGE_QUANTITY</p>
    #   			         </li>
    #               <li>
    #   				           <p>NORMALIZED_USAGE_AMOUNT</p>
    #   			         </li>
    #            </ul>
    #
    #   Enum, one of: ["BLENDED_COST", "UNBLENDED_COST", "AMORTIZED_COST", "NET_UNBLENDED_COST", "NET_AMORTIZED_COST", "USAGE_QUANTITY", "NORMALIZED_USAGE_AMOUNT"]
    #
    #   @return [String]
    #
    # @!attribute granularity
    #   <p>How granular you want the forecast to be. You can get 3 months of <code>DAILY</code> forecasts or 12 months of <code>MONTHLY</code> forecasts.</p>
    #   		       <p>The <code>GetUsageForecast</code> operation supports only <code>DAILY</code> and <code>MONTHLY</code> granularities.</p>
    #
    #   Enum, one of: ["DAILY", "MONTHLY", "HOURLY"]
    #
    #   @return [String]
    #
    # @!attribute filter
    #   <p>The filters that you want to use to filter your forecast. The <code>GetUsageForecast</code> API supports filtering by the following dimensions:</p>
    #   		
    #   	        <ul>
    #               <li>
    #                  <p>
    #                     <code>AZ</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INSTANCE_TYPE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LINKED_ACCOUNT</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LINKED_ACCOUNT_NAME</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OPERATION</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PURCHASE_TYPE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REGION</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SERVICE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>USAGE_TYPE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>USAGE_TYPE_GROUP</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RECORD_TYPE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OPERATING_SYSTEM</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TENANCY</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SCOPE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PLATFORM</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SUBSCRIPTION_ID</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LEGAL_ENTITY_NAME</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DEPLOYMENT_OPTION</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DATABASE_ENGINE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INSTANCE_TYPE_FAMILY</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BILLING_ENTITY</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RESERVATION_ID</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SAVINGS_PLAN_ARN</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [Expression]
    #
    # @!attribute prediction_interval_level
    #   <p>Amazon Web Services Cost Explorer always returns the mean forecast as a single point. You can request a prediction interval around the mean
    #   			by specifying a confidence level. The higher the confidence level, the more confident Cost Explorer is about the actual value
    #   			falling in the prediction interval. Higher confidence levels result in wider prediction intervals.</p>
    #
    #   @return [Integer]
    #
    GetUsageForecastInput = ::Struct.new(
      :time_period,
      :metric,
      :granularity,
      :filter,
      :prediction_interval_level,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute total
    #   <p>How much you're forecasted to use over the forecast period.</p>
    #
    #   @return [MetricValue]
    #
    # @!attribute forecast_results_by_time
    #   <p>The forecasts for your query, in order. For <code>DAILY</code> forecasts, this is a list of days. For <code>MONTHLY</code> forecasts,
    #   			this is a list of months.</p>
    #
    #   @return [Array<ForecastResult>]
    #
    GetUsageForecastOutput = ::Struct.new(
      :total,
      :forecast_results_by_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Granularity
    #
    module Granularity
      # No documentation available.
      #
      DAILY = "DAILY"

      # No documentation available.
      #
      MONTHLY = "MONTHLY"

      # No documentation available.
      #
      HOURLY = "HOURLY"
    end

    # <p>One level of grouped data in the results.</p>
    #
    # @!attribute keys
    #   <p>The keys that are included in this group.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute metrics
    #   <p>The metrics that are included in this group.</p>
    #
    #   @return [Hash<String, MetricValue>]
    #
    Group = ::Struct.new(
      :keys,
      :metrics,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a group when you specify a group by criteria or in the response to a query
    #             with a specific grouping.</p>
    #
    # @!attribute type
    #   <p>The string that represents the type of group.</p>
    #
    #   Enum, one of: ["DIMENSION", "TAG", "COST_CATEGORY"]
    #
    #   @return [String]
    #
    # @!attribute key
    #   <p>The string that represents a key for a specified group.</p>
    #
    #   @return [String]
    #
    GroupDefinition = ::Struct.new(
      :type,
      :key,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for GroupDefinitionType
    #
    module GroupDefinitionType
      # No documentation available.
      #
      DIMENSION = "DIMENSION"

      # No documentation available.
      #
      TAG = "TAG"

      # No documentation available.
      #
      COST_CATEGORY = "COST_CATEGORY"
    end

    # <p>The dollar value of the anomaly. </p>
    #
    # @!attribute max_impact
    #   <p>The maximum dollar value that's observed for an anomaly. </p>
    #
    #   @return [Float]
    #
    # @!attribute total_impact
    #   <p>The cumulative dollar value that's observed for an anomaly. </p>
    #
    #   @return [Float]
    #
    Impact = ::Struct.new(
      :max_impact,
      :total_impact,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max_impact ||= 0
        self.total_impact ||= 0
      end

    end

    # <p>Details about the instances that Amazon Web Services recommends that you
    #             purchase.</p>
    #
    # @!attribute ec2_instance_details
    #   <p>The Amazon EC2 instances that Amazon Web Services recommends that you purchase.</p>
    #
    #   @return [EC2InstanceDetails]
    #
    # @!attribute rds_instance_details
    #   <p>The Amazon RDS instances that Amazon Web Services recommends that you purchase.</p>
    #
    #   @return [RDSInstanceDetails]
    #
    # @!attribute redshift_instance_details
    #   <p>The Amazon Redshift instances that Amazon Web Services recommends that you
    #               purchase.</p>
    #
    #   @return [RedshiftInstanceDetails]
    #
    # @!attribute elasti_cache_instance_details
    #   <p>The ElastiCache instances that Amazon Web Services recommends that you purchase.</p>
    #
    #   @return [ElastiCacheInstanceDetails]
    #
    # @!attribute es_instance_details
    #   <p>The Amazon OpenSearch Service instances that Amazon Web Services recommends that you purchase.</p>
    #
    #   @return [ESInstanceDetails]
    #
    InstanceDetails = ::Struct.new(
      :ec2_instance_details,
      :rds_instance_details,
      :redshift_instance_details,
      :elasti_cache_instance_details,
      :es_instance_details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The pagination token is invalid. Try again without a pagination token.</p>
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

    # <p>You made too many calls in a short period of time. Try again later.</p>
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

    # @!attribute status
    #   <p>The status of cost allocation tag keys that are returned for this request. </p>
    #
    #   Enum, one of: ["Active", "Inactive"]
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>The list of cost allocation tag keys that are returned for this request. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute type
    #   <p>The type of <code>CostAllocationTag</code> object that are returned for this request. The
    #           <code>AWSGenerated</code> type tags are tags that Amazon Web Services defines and applies to
    #         support Amazon Web Services resources for cost allocation purposes. The
    #           <code>UserDefined</code> type tags are tags that you define, create, and apply to resources. </p>
    #
    #   Enum, one of: ["AWSGenerated", "UserDefined"]
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token to retrieve the next set of results. Amazon Web Services provides the token when
    #         the response from a previous call has more results than the maximum page size. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of objects that are returned for this request. By default, the request
    #         returns 100 results. </p>
    #
    #   @return [Integer]
    #
    ListCostAllocationTagsInput = ::Struct.new(
      :status,
      :tag_keys,
      :type,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cost_allocation_tags
    #   <p>A list of cost allocation tags that includes the detailed metadata for each one. </p>
    #
    #   @return [Array<CostAllocationTag>]
    #
    # @!attribute next_token
    #   <p>The token to retrieve the next set of results. Amazon Web Services provides the token when
    #         the response from a previous call has more results than the maximum page size. </p>
    #
    #   @return [String]
    #
    ListCostAllocationTagsOutput = ::Struct.new(
      :cost_allocation_tags,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute effective_on
    #   <p>The date when the Cost Category was effective. </p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token to retrieve the next set of results. Amazon Web Services provides the token
    #         when the response from a previous call has more results than the maximum page size. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The number of entries a paginated response contains. </p>
    #
    #   @return [Integer]
    #
    ListCostCategoryDefinitionsInput = ::Struct.new(
      :effective_on,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cost_category_references
    #   <p>A reference to a Cost Category that contains enough information to identify the Cost
    #         Category. </p>
    #
    #   @return [Array<CostCategoryReference>]
    #
    # @!attribute next_token
    #   <p>The token to retrieve the next set of results. Amazon Web Services provides the token when
    #         the response from a previous call has more results than the maximum page size. </p>
    #
    #   @return [String]
    #
    ListCostCategoryDefinitionsOutput = ::Struct.new(
      :cost_category_references,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource. For a list of supported resources, see <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_ResourceTag.html">ResourceTag</a>.</p>
    #
    #   @return [String]
    #
    ListTagsForResourceInput = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_tags
    #   <p>A list of tag key value pairs that are associated with the resource.
    #       </p>
    #
    #   @return [Array<ResourceTag>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :resource_tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for LookbackPeriodInDays
    #
    module LookbackPeriodInDays
      # No documentation available.
      #
      SEVEN_DAYS = "SEVEN_DAYS"

      # No documentation available.
      #
      THIRTY_DAYS = "THIRTY_DAYS"

      # No documentation available.
      #
      SIXTY_DAYS = "SIXTY_DAYS"
    end

    # Includes enum constants for MatchOption
    #
    module MatchOption
      # No documentation available.
      #
      EQUALS = "EQUALS"

      # No documentation available.
      #
      ABSENT = "ABSENT"

      # No documentation available.
      #
      STARTS_WITH = "STARTS_WITH"

      # No documentation available.
      #
      ENDS_WITH = "ENDS_WITH"

      # No documentation available.
      #
      CONTAINS = "CONTAINS"

      # No documentation available.
      #
      CASE_SENSITIVE = "CASE_SENSITIVE"

      # No documentation available.
      #
      CASE_INSENSITIVE = "CASE_INSENSITIVE"
    end

    # Includes enum constants for Metric
    #
    module Metric
      # No documentation available.
      #
      BLENDED_COST = "BLENDED_COST"

      # No documentation available.
      #
      UNBLENDED_COST = "UNBLENDED_COST"

      # No documentation available.
      #
      AMORTIZED_COST = "AMORTIZED_COST"

      # No documentation available.
      #
      NET_UNBLENDED_COST = "NET_UNBLENDED_COST"

      # No documentation available.
      #
      NET_AMORTIZED_COST = "NET_AMORTIZED_COST"

      # No documentation available.
      #
      USAGE_QUANTITY = "USAGE_QUANTITY"

      # No documentation available.
      #
      NORMALIZED_USAGE_AMOUNT = "NORMALIZED_USAGE_AMOUNT"
    end

    # <p>The aggregated value for a metric.</p>
    #
    # @!attribute amount
    #   <p>The actual number that represents the metric.</p>
    #
    #   @return [String]
    #
    # @!attribute unit
    #   <p>The unit that the metric is given in.</p>
    #
    #   @return [String]
    #
    MetricValue = ::Struct.new(
      :amount,
      :unit,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details for the modification recommendation.</p>
    #
    # @!attribute target_instances
    #   <p>Determines whether this instance type is the Amazon Web Services default
    #               recommendation.</p>
    #
    #   @return [Array<TargetInstance>]
    #
    ModifyRecommendationDetail = ::Struct.new(
      :target_instances,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for MonitorDimension
    #
    module MonitorDimension
      # No documentation available.
      #
      SERVICE = "SERVICE"
    end

    # Includes enum constants for MonitorType
    #
    module MonitorType
      # No documentation available.
      #
      DIMENSIONAL = "DIMENSIONAL"

      # No documentation available.
      #
      CUSTOM = "CUSTOM"
    end

    # <p>The network field that contains a list of network metrics that are associated with the
    #             current instance. </p>
    #
    # @!attribute network_in_bytes_per_second
    #   <p>The network inbound throughput utilization measured in Bytes per second (Bps). </p>
    #
    #   @return [String]
    #
    # @!attribute network_out_bytes_per_second
    #   <p>The network outbound throughput utilization measured in Bytes per second (Bps). </p>
    #
    #   @return [String]
    #
    # @!attribute network_packets_in_per_second
    #   <p>The network inbound packets that are measured in packets per second. </p>
    #
    #   @return [String]
    #
    # @!attribute network_packets_out_per_second
    #   <p>The network outbound packets that are measured in packets per second. </p>
    #
    #   @return [String]
    #
    NetworkResourceUtilization = ::Struct.new(
      :network_in_bytes_per_second,
      :network_out_bytes_per_second,
      :network_packets_in_per_second,
      :network_packets_out_per_second,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for NumericOperator
    #
    module NumericOperator
      # No documentation available.
      #
      EQUAL = "EQUAL"

      # No documentation available.
      #
      GREATER_THAN_OR_EQUAL = "GREATER_THAN_OR_EQUAL"

      # No documentation available.
      #
      LESS_THAN_OR_EQUAL = "LESS_THAN_OR_EQUAL"

      # No documentation available.
      #
      GREATER_THAN = "GREATER_THAN"

      # No documentation available.
      #
      LESS_THAN = "LESS_THAN"

      # No documentation available.
      #
      BETWEEN = "BETWEEN"
    end

    # Includes enum constants for OfferingClass
    #
    module OfferingClass
      # No documentation available.
      #
      STANDARD = "STANDARD"

      # No documentation available.
      #
      CONVERTIBLE = "CONVERTIBLE"
    end

    # Includes enum constants for PaymentOption
    #
    module PaymentOption
      # No documentation available.
      #
      NO_UPFRONT = "NO_UPFRONT"

      # No documentation available.
      #
      PARTIAL_UPFRONT = "PARTIAL_UPFRONT"

      # No documentation available.
      #
      ALL_UPFRONT = "ALL_UPFRONT"

      # No documentation available.
      #
      LIGHT_UTILIZATION = "LIGHT_UTILIZATION"

      # No documentation available.
      #
      MEDIUM_UTILIZATION = "MEDIUM_UTILIZATION"

      # No documentation available.
      #
      HEAVY_UTILIZATION = "HEAVY_UTILIZATION"
    end

    # Includes enum constants for PlatformDifference
    #
    module PlatformDifference
      # No documentation available.
      #
      HYPERVISOR = "HYPERVISOR"

      # No documentation available.
      #
      NETWORK_INTERFACE = "NETWORK_INTERFACE"

      # No documentation available.
      #
      STORAGE_INTERFACE = "STORAGE_INTERFACE"

      # No documentation available.
      #
      INSTANCE_STORE_AVAILABILITY = "INSTANCE_STORE_AVAILABILITY"

      # No documentation available.
      #
      VIRTUALIZATION_TYPE = "VIRTUALIZATION_TYPE"
    end

    # @!attribute anomaly_id
    #   <p>A cost anomaly ID. </p>
    #
    #   @return [String]
    #
    # @!attribute feedback
    #   <p>Describes whether the cost anomaly was a planned activity or you considered it an anomaly. </p>
    #
    #   Enum, one of: ["YES", "NO", "PLANNED_ACTIVITY"]
    #
    #   @return [String]
    #
    ProvideAnomalyFeedbackInput = ::Struct.new(
      :anomaly_id,
      :feedback,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute anomaly_id
    #   <p>The ID of the modified cost anomaly. </p>
    #
    #   @return [String]
    #
    ProvideAnomalyFeedbackOutput = ::Struct.new(
      :anomaly_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about the Amazon RDS instances that Amazon Web Services recommends that you
    #             purchase.</p>
    #
    # @!attribute family
    #   <p>The instance family of the recommended reservation.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_type
    #   <p>The type of instance that Amazon Web Services recommends.</p>
    #
    #   @return [String]
    #
    # @!attribute region
    #   <p>The Amazon Web Services Region of the recommended reservation.</p>
    #
    #   @return [String]
    #
    # @!attribute database_engine
    #   <p>The database engine that the recommended reservation supports.</p>
    #
    #   @return [String]
    #
    # @!attribute database_edition
    #   <p>The database edition that the recommended reservation supports.</p>
    #
    #   @return [String]
    #
    # @!attribute deployment_option
    #   <p>Determines whether the recommendation is for a reservation in a single Availability
    #               Zone or a reservation with a backup in a second Availability Zone.</p>
    #
    #   @return [String]
    #
    # @!attribute license_model
    #   <p>The license model that the recommended reservation supports.</p>
    #
    #   @return [String]
    #
    # @!attribute current_generation
    #   <p>Determines whether the recommendation is for a current-generation instance. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute size_flex_eligible
    #   <p>Determines whether the recommended reservation is size flexible.</p>
    #
    #   @return [Boolean]
    #
    RDSInstanceDetails = ::Struct.new(
      :family,
      :instance_type,
      :region,
      :database_engine,
      :database_edition,
      :deployment_option,
      :license_model,
      :current_generation,
      :size_flex_eligible,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.current_generation ||= false
        self.size_flex_eligible ||= false
      end

    end

    # Includes enum constants for RecommendationTarget
    #
    module RecommendationTarget
      # No documentation available.
      #
      SAME_INSTANCE_FAMILY = "SAME_INSTANCE_FAMILY"

      # No documentation available.
      #
      CROSS_INSTANCE_FAMILY = "CROSS_INSTANCE_FAMILY"
    end

    # <p>Details about the Amazon Redshift instances that Amazon Web Services recommends that
    #             you purchase.</p>
    #
    # @!attribute family
    #   <p>The instance family of the recommended reservation.</p>
    #
    #   @return [String]
    #
    # @!attribute node_type
    #   <p>The type of node that Amazon Web Services recommends.</p>
    #
    #   @return [String]
    #
    # @!attribute region
    #   <p>The Amazon Web Services Region of the recommended reservation.</p>
    #
    #   @return [String]
    #
    # @!attribute current_generation
    #   <p>Determines whether the recommendation is for a current-generation instance.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute size_flex_eligible
    #   <p>Determines whether the recommended reservation is size flexible.</p>
    #
    #   @return [Boolean]
    #
    RedshiftInstanceDetails = ::Struct.new(
      :family,
      :node_type,
      :region,
      :current_generation,
      :size_flex_eligible,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.current_generation ||= false
        self.size_flex_eligible ||= false
      end

    end

    # <p>Your request parameters changed between pages. Try again with the old parameters or
    #             without a pagination token.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    RequestChangedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The aggregated numbers for your reservation usage.</p>
    #
    # @!attribute utilization_percentage
    #   <p>The percentage of reservation time that you used.</p>
    #
    #   @return [String]
    #
    # @!attribute utilization_percentage_in_units
    #   <p>The percentage of Amazon EC2 reservation time that you used. It's converted to
    #               normalized units. Normalized units are available only for Amazon EC2 usage after
    #               November 11, 2017.</p>
    #
    #   @return [String]
    #
    # @!attribute purchased_hours
    #   <p>How many reservation hours that you purchased.</p>
    #
    #   @return [String]
    #
    # @!attribute purchased_units
    #   <p>The number of Amazon EC2 reservation hours that you purchased. It's converted to
    #               normalized units. Normalized units are available only for Amazon EC2 usage after
    #               November 11, 2017.</p>
    #
    #   @return [String]
    #
    # @!attribute total_actual_hours
    #   <p>The total number of reservation hours that you used.</p>
    #
    #   @return [String]
    #
    # @!attribute total_actual_units
    #   <p>The total number of Amazon EC2 reservation hours that you used. It's converted to
    #               normalized units. Normalized units are available only for Amazon EC2 usage after
    #               November 11, 2017.</p>
    #
    #   @return [String]
    #
    # @!attribute unused_hours
    #   <p>The number of reservation hours that you didn't use.</p>
    #
    #   @return [String]
    #
    # @!attribute unused_units
    #   <p>The number of Amazon EC2 reservation hours that you didn't use. It's converted to
    #               normalized units. Normalized units are available only for Amazon EC2 usage after
    #               November 11, 2017.</p>
    #
    #   @return [String]
    #
    # @!attribute on_demand_cost_of_ri_hours_used
    #   <p>How much your reservation costs if charged On-Demand rates.</p>
    #
    #   @return [String]
    #
    # @!attribute net_ri_savings
    #   <p>How much you saved due to purchasing and utilizing reservation. Amazon Web Services
    #               calculates this by subtracting <code>TotalAmortizedFee</code> from
    #                   <code>OnDemandCostOfRIHoursUsed</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute total_potential_ri_savings
    #   <p>How much you might save if you use your entire reservation.</p>
    #
    #   @return [String]
    #
    # @!attribute amortized_upfront_fee
    #   <p>The upfront cost of your reservation. It's amortized over the reservation
    #               period.</p>
    #
    #   @return [String]
    #
    # @!attribute amortized_recurring_fee
    #   <p>The monthly cost of your reservation. It's amortized over the reservation
    #               period.</p>
    #
    #   @return [String]
    #
    # @!attribute total_amortized_fee
    #   <p>The total cost of your reservation. It's amortized over the reservation period.</p>
    #
    #   @return [String]
    #
    # @!attribute ri_cost_for_unused_hours
    #   <p>The cost of unused hours for your reservation.</p>
    #
    #   @return [String]
    #
    # @!attribute realized_savings
    #   <p>The realized savings because of purchasing and using a reservation.</p>
    #
    #   @return [String]
    #
    # @!attribute unrealized_savings
    #   <p>The unrealized savings because of purchasing and using a reservation.</p>
    #
    #   @return [String]
    #
    ReservationAggregates = ::Struct.new(
      :utilization_percentage,
      :utilization_percentage_in_units,
      :purchased_hours,
      :purchased_units,
      :total_actual_hours,
      :total_actual_units,
      :unused_hours,
      :unused_units,
      :on_demand_cost_of_ri_hours_used,
      :net_ri_savings,
      :total_potential_ri_savings,
      :amortized_upfront_fee,
      :amortized_recurring_fee,
      :total_amortized_fee,
      :ri_cost_for_unused_hours,
      :realized_savings,
      :unrealized_savings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A group of reservations that share a set of attributes.</p>
    #
    # @!attribute attributes
    #   <p>The attributes for this group of reservations.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute coverage
    #   <p>How much instance usage this group of reservations covered.</p>
    #
    #   @return [Coverage]
    #
    ReservationCoverageGroup = ::Struct.new(
      :attributes,
      :coverage,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A specific reservation that Amazon Web Services recommends for purchase.</p>
    #
    # @!attribute account_scope
    #   <p>The account scope that Amazon Web Services recommends that you purchase this instance
    #               for. For example, you can purchase this reservation for an entire organization in
    #                   Amazon Web Services Organizations.</p>
    #
    #   Enum, one of: ["PAYER", "LINKED"]
    #
    #   @return [String]
    #
    # @!attribute lookback_period_in_days
    #   <p>How many days of previous usage that Amazon Web Services considers when making this
    #               recommendation.</p>
    #
    #   Enum, one of: ["SEVEN_DAYS", "THIRTY_DAYS", "SIXTY_DAYS"]
    #
    #   @return [String]
    #
    # @!attribute term_in_years
    #   <p>The term of the reservation that you want recommendations for, in years.</p>
    #
    #   Enum, one of: ["ONE_YEAR", "THREE_YEARS"]
    #
    #   @return [String]
    #
    # @!attribute payment_option
    #   <p>The payment option for the reservation (for example, <code>AllUpfront</code> or
    #                   <code>NoUpfront</code>).</p>
    #
    #   Enum, one of: ["NO_UPFRONT", "PARTIAL_UPFRONT", "ALL_UPFRONT", "LIGHT_UTILIZATION", "MEDIUM_UTILIZATION", "HEAVY_UTILIZATION"]
    #
    #   @return [String]
    #
    # @!attribute service_specification
    #   <p>Hardware specifications for the service that you want recommendations for.</p>
    #
    #   @return [ServiceSpecification]
    #
    # @!attribute recommendation_details
    #   <p>Details about the recommended purchases.</p>
    #
    #   @return [Array<ReservationPurchaseRecommendationDetail>]
    #
    # @!attribute recommendation_summary
    #   <p>A summary about the recommended purchase.</p>
    #
    #   @return [ReservationPurchaseRecommendationSummary]
    #
    ReservationPurchaseRecommendation = ::Struct.new(
      :account_scope,
      :lookback_period_in_days,
      :term_in_years,
      :payment_option,
      :service_specification,
      :recommendation_details,
      :recommendation_summary,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about your recommended reservation purchase.</p>
    #
    # @!attribute account_id
    #   <p>The account that this Reserved Instance (RI) recommendation is for.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_details
    #   <p>Details about the instances that Amazon Web Services recommends that you
    #               purchase.</p>
    #
    #   @return [InstanceDetails]
    #
    # @!attribute recommended_number_of_instances_to_purchase
    #   <p>The number of instances that Amazon Web Services recommends that you purchase.</p>
    #
    #   @return [String]
    #
    # @!attribute recommended_normalized_units_to_purchase
    #   <p>The number of normalized units that Amazon Web Services recommends that you
    #               purchase.</p>
    #
    #   @return [String]
    #
    # @!attribute minimum_number_of_instances_used_per_hour
    #   <p>The minimum number of instances that you used in an hour during the historical period.
    #                   Amazon Web Services uses this to calculate your recommended reservation
    #               purchases.</p>
    #
    #   @return [String]
    #
    # @!attribute minimum_normalized_units_used_per_hour
    #   <p>The minimum number of normalized units that you used in an hour during the historical
    #               period. Amazon Web Services uses this to calculate your recommended reservation
    #               purchases.</p>
    #
    #   @return [String]
    #
    # @!attribute maximum_number_of_instances_used_per_hour
    #   <p>The maximum number of instances that you used in an hour during the historical period.
    #                   Amazon Web Services uses this to calculate your recommended reservation
    #               purchases.</p>
    #
    #   @return [String]
    #
    # @!attribute maximum_normalized_units_used_per_hour
    #   <p>The maximum number of normalized units that you used in an hour during the historical
    #               period. Amazon Web Services uses this to calculate your recommended reservation
    #               purchases.</p>
    #
    #   @return [String]
    #
    # @!attribute average_number_of_instances_used_per_hour
    #   <p>The average number of instances that you used in an hour during the historical period.
    #                   Amazon Web Services uses this to calculate your recommended reservation
    #               purchases.</p>
    #
    #   @return [String]
    #
    # @!attribute average_normalized_units_used_per_hour
    #   <p>The average number of normalized units that you used in an hour during the historical
    #               period. Amazon Web Services uses this to calculate your recommended reservation
    #               purchases.</p>
    #
    #   @return [String]
    #
    # @!attribute average_utilization
    #   <p>The average utilization of your instances. Amazon Web Services uses this to calculate
    #               your recommended reservation purchases.</p>
    #
    #   @return [String]
    #
    # @!attribute estimated_break_even_in_months
    #   <p>How long Amazon Web Services estimates that it takes for this instance to start saving
    #               you money, in months.</p>
    #
    #   @return [String]
    #
    # @!attribute currency_code
    #   <p>The currency code that Amazon Web Services used to calculate the costs for this
    #               instance.</p>
    #
    #   @return [String]
    #
    # @!attribute estimated_monthly_savings_amount
    #   <p>How much Amazon Web Services estimates that this specific recommendation might save you
    #               in a month.</p>
    #
    #   @return [String]
    #
    # @!attribute estimated_monthly_savings_percentage
    #   <p>How much Amazon Web Services estimates that this specific recommendation might save you
    #               in a month, as a percentage of your overall costs.</p>
    #
    #   @return [String]
    #
    # @!attribute estimated_monthly_on_demand_cost
    #   <p>How much Amazon Web Services estimates that you spend on On-Demand Instances in a
    #               month.</p>
    #
    #   @return [String]
    #
    # @!attribute estimated_reservation_cost_for_lookback_period
    #   <p>How much Amazon Web Services estimates that you might spend for all usage during the
    #               specified historical period if you had a reservation.</p>
    #
    #   @return [String]
    #
    # @!attribute upfront_cost
    #   <p>How much purchasing this instance costs you upfront.</p>
    #
    #   @return [String]
    #
    # @!attribute recurring_standard_monthly_cost
    #   <p>How much purchasing this instance costs you on a monthly basis.</p>
    #
    #   @return [String]
    #
    ReservationPurchaseRecommendationDetail = ::Struct.new(
      :account_id,
      :instance_details,
      :recommended_number_of_instances_to_purchase,
      :recommended_normalized_units_to_purchase,
      :minimum_number_of_instances_used_per_hour,
      :minimum_normalized_units_used_per_hour,
      :maximum_number_of_instances_used_per_hour,
      :maximum_normalized_units_used_per_hour,
      :average_number_of_instances_used_per_hour,
      :average_normalized_units_used_per_hour,
      :average_utilization,
      :estimated_break_even_in_months,
      :currency_code,
      :estimated_monthly_savings_amount,
      :estimated_monthly_savings_percentage,
      :estimated_monthly_on_demand_cost,
      :estimated_reservation_cost_for_lookback_period,
      :upfront_cost,
      :recurring_standard_monthly_cost,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about this specific recommendation, such as the timestamp for when Amazon Web Services made a specific recommendation.</p>
    #
    # @!attribute recommendation_id
    #   <p>The ID for this specific recommendation.</p>
    #
    #   @return [String]
    #
    # @!attribute generation_timestamp
    #   <p>The timestamp for when Amazon Web Services made this recommendation.</p>
    #
    #   @return [String]
    #
    ReservationPurchaseRecommendationMetadata = ::Struct.new(
      :recommendation_id,
      :generation_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A summary about this recommendation, such as the currency code, the amount that
    #                 Amazon Web Services estimates that you could save, and the total amount of
    #             reservation to purchase.</p>
    #
    # @!attribute total_estimated_monthly_savings_amount
    #   <p>The total amount that Amazon Web Services estimates that this recommendation could save
    #               you in a month.</p>
    #
    #   @return [String]
    #
    # @!attribute total_estimated_monthly_savings_percentage
    #   <p>The total amount that Amazon Web Services estimates that this recommendation could save
    #               you in a month, as a percentage of your costs.</p>
    #
    #   @return [String]
    #
    # @!attribute currency_code
    #   <p>The currency code used for this recommendation.</p>
    #
    #   @return [String]
    #
    ReservationPurchaseRecommendationSummary = ::Struct.new(
      :total_estimated_monthly_savings_amount,
      :total_estimated_monthly_savings_percentage,
      :currency_code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A group of reservations that share a set of attributes.</p>
    #
    # @!attribute key
    #   <p>The key for a specific reservation attribute.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of a specific reservation attribute.</p>
    #
    #   @return [String]
    #
    # @!attribute attributes
    #   <p>The attributes for this group of reservations.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute utilization
    #   <p>How much you used this group of reservations.</p>
    #
    #   @return [ReservationAggregates]
    #
    ReservationUtilizationGroup = ::Struct.new(
      :key,
      :value,
      :attributes,
      :utilization,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details for the resource.</p>
    #
    # @!attribute ec2_resource_details
    #   <p>Details for the Amazon EC2 resource.</p>
    #
    #   @return [EC2ResourceDetails]
    #
    ResourceDetails = ::Struct.new(
      :ec2_resource_details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             The specified ARN in the request doesn't exist.
    #         </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_name
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :message,
      :resource_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The tag structure that contains a tag key and value. </p>
    #         <note>
    #             <p>Tagging is supported only for the following Cost Explorer resource types: <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_AnomalyMonitor.html">
    #                   <code>AnomalyMonitor</code>
    #                </a>, <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_AnomalySubscription.html">
    #                   <code>AnomalySubscription</code>
    #                </a>, <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_CostCategory.html">
    #                   <code>CostCategory</code>
    #                </a>.</p>
    #          </note>
    #
    # @!attribute key
    #   <p>The key that's associated with the tag. </p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value that's associated with the tag. </p>
    #
    #   @return [String]
    #
    ResourceTag = ::Struct.new(
      :key,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Resource utilization of current resource. </p>
    #
    # @!attribute ec2_resource_utilization
    #   <p>The utilization of current Amazon EC2 instance. </p>
    #
    #   @return [EC2ResourceUtilization]
    #
    ResourceUtilization = ::Struct.new(
      :ec2_resource_utilization,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The result that's associated with a time period.</p>
    #
    # @!attribute time_period
    #   <p>The time period that the result covers.</p>
    #
    #   @return [DateInterval]
    #
    # @!attribute total
    #   <p>The total amount of cost or usage accrued during the time period.</p>
    #
    #   @return [Hash<String, MetricValue>]
    #
    # @!attribute groups
    #   <p>The groups that this time period includes.</p>
    #
    #   @return [Array<Group>]
    #
    # @!attribute estimated
    #   <p>Determines whether the result is estimated.</p>
    #
    #   @return [Boolean]
    #
    ResultByTime = ::Struct.new(
      :time_period,
      :total,
      :groups,
      :estimated,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.estimated ||= false
      end

    end

    # <p>Recommendations to rightsize resources.</p>
    #
    # @!attribute account_id
    #   <p>The account that this recommendation is for.</p>
    #
    #   @return [String]
    #
    # @!attribute current_instance
    #   <p>Context
    #               regarding the current instance.</p>
    #
    #   @return [CurrentInstance]
    #
    # @!attribute rightsizing_type
    #   <p>A recommendation to either terminate or modify the resource.</p>
    #
    #   Enum, one of: ["TERMINATE", "MODIFY"]
    #
    #   @return [String]
    #
    # @!attribute modify_recommendation_detail
    #   <p>The details for the modification recommendations. </p>
    #
    #   @return [ModifyRecommendationDetail]
    #
    # @!attribute terminate_recommendation_detail
    #   <p>The details for termination recommendations.</p>
    #
    #   @return [TerminateRecommendationDetail]
    #
    # @!attribute finding_reason_codes
    #   <p>The list of possible reasons why the recommendation is generated, such as under- or
    #               over-utilization of specific metrics (for example, CPU, Memory, Network). </p>
    #
    #   @return [Array<String>]
    #
    RightsizingRecommendation = ::Struct.new(
      :account_id,
      :current_instance,
      :rightsizing_type,
      :modify_recommendation_detail,
      :terminate_recommendation_detail,
      :finding_reason_codes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You can use <code>RightsizingRecommendationConfiguration</code> to customize
    #             recommendations across two attributes. You can choose to view recommendations for
    #             instances within the same instance families or across different instance families. You
    #             can also choose to view your estimated savings that are associated with recommendations
    #             with consideration of existing Savings Plans or Reserved Instance (RI) benefits, or
    #             neither. </p>
    #
    # @!attribute recommendation_target
    #   <p>The option to see recommendations within the same instance family or recommendations
    #               for instances across other families. The default value is
    #                   <code>SAME_INSTANCE_FAMILY</code>. </p>
    #
    #   Enum, one of: ["SAME_INSTANCE_FAMILY", "CROSS_INSTANCE_FAMILY"]
    #
    #   @return [String]
    #
    # @!attribute benefits_considered
    #   <p>The option to consider RI or Savings Plans discount benefits in your savings
    #               calculation. The default value is <code>TRUE</code>. </p>
    #
    #   @return [Boolean]
    #
    RightsizingRecommendationConfiguration = ::Struct.new(
      :recommendation_target,
      :benefits_considered,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.benefits_considered ||= false
      end

    end

    # <p>Metadata for this recommendation set.</p>
    #
    # @!attribute recommendation_id
    #   <p>The ID for this specific recommendation.</p>
    #
    #   @return [String]
    #
    # @!attribute generation_timestamp
    #   <p>The timestamp for when Amazon Web Services made this recommendation.</p>
    #
    #   @return [String]
    #
    # @!attribute lookback_period_in_days
    #   <p>The number of days of previous usage that Amazon Web Services considers when making
    #               this recommendation.</p>
    #
    #   Enum, one of: ["SEVEN_DAYS", "THIRTY_DAYS", "SIXTY_DAYS"]
    #
    #   @return [String]
    #
    # @!attribute additional_metadata
    #   <p>Additional metadata that might be applicable to the recommendation.</p>
    #
    #   @return [String]
    #
    RightsizingRecommendationMetadata = ::Struct.new(
      :recommendation_id,
      :generation_timestamp,
      :lookback_period_in_days,
      :additional_metadata,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The summary of rightsizing recommendations </p>
    #
    # @!attribute total_recommendation_count
    #   <p>The total number of instance recommendations.</p>
    #
    #   @return [String]
    #
    # @!attribute estimated_total_monthly_savings_amount
    #   <p>The estimated total savings resulting from modifications, on a monthly basis.</p>
    #
    #   @return [String]
    #
    # @!attribute savings_currency_code
    #   <p>The currency code that Amazon Web Services used to calculate the savings.</p>
    #
    #   @return [String]
    #
    # @!attribute savings_percentage
    #   <p> The savings percentage based on the recommended modifications. It's relative to the
    #               total On-Demand costs that are associated with these instances.</p>
    #
    #   @return [String]
    #
    RightsizingRecommendationSummary = ::Struct.new(
      :total_recommendation_count,
      :estimated_total_monthly_savings_amount,
      :savings_currency_code,
      :savings_percentage,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RightsizingType
    #
    module RightsizingType
      # No documentation available.
      #
      TERMINATE = "TERMINATE"

      # No documentation available.
      #
      MODIFY = "MODIFY"
    end

    # <p>The combination of Amazon Web Service, linked account, Region, and usage type
    #             where a cost anomaly is observed. </p>
    #
    # @!attribute service
    #   <p>The Amazon Web Service name that's associated with the cost anomaly. </p>
    #
    #   @return [String]
    #
    # @!attribute region
    #   <p>The Amazon Web Services Region that's associated with the cost anomaly. </p>
    #
    #   @return [String]
    #
    # @!attribute linked_account
    #   <p>The member account value that's associated with the cost anomaly. </p>
    #
    #   @return [String]
    #
    # @!attribute usage_type
    #   <p>The <code>UsageType</code> value that's associated with the cost anomaly. </p>
    #
    #   @return [String]
    #
    RootCause = ::Struct.new(
      :service,
      :region,
      :linked_account,
      :usage_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The amortized amount of Savings Plans purchased in a specific account during a
    #             specific time interval.</p>
    #
    # @!attribute amortized_recurring_commitment
    #   <p>The amortized amount of your Savings Plans commitment that was purchased with either a
    #                   <code>Partial</code> or a <code>NoUpfront</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute amortized_upfront_commitment
    #   <p>The amortized amount of your Savings Plans commitment that was purchased with an
    #                   <code>Upfront</code> or <code>PartialUpfront</code> Savings Plans.</p>
    #
    #   @return [String]
    #
    # @!attribute total_amortized_commitment
    #   <p>The total amortized amount of your Savings Plans commitment, regardless of your
    #               Savings Plans purchase method. </p>
    #
    #   @return [String]
    #
    SavingsPlansAmortizedCommitment = ::Struct.new(
      :amortized_recurring_commitment,
      :amortized_upfront_commitment,
      :total_amortized_commitment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The amount of Savings Plans eligible usage that's covered by Savings Plans. All
    #             calculations consider the On-Demand equivalent of your Savings Plans usage.</p>
    #
    # @!attribute attributes
    #   <p>The attribute that applies to a specific <code>Dimension</code>.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute coverage
    #   <p>The amount of Savings Plans eligible usage that the Savings Plans covered.</p>
    #
    #   @return [SavingsPlansCoverageData]
    #
    # @!attribute time_period
    #   <p>The time period of the request. </p>
    #
    #   @return [DateInterval]
    #
    SavingsPlansCoverage = ::Struct.new(
      :attributes,
      :coverage,
      :time_period,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specific coverage percentage, On-Demand costs, and spend covered by Savings Plans, and
    #             total Savings Plans costs for an account.</p>
    #
    # @!attribute spend_covered_by_savings_plans
    #   <p>The amount of your Amazon Web Services usage that's covered by a Savings Plans.</p>
    #
    #   @return [String]
    #
    # @!attribute on_demand_cost
    #   <p>The cost of your Amazon Web Services usage at the public On-Demand rate.</p>
    #
    #   @return [String]
    #
    # @!attribute total_cost
    #   <p>The total cost of your Amazon Web Services usage, regardless of your purchase
    #               option.</p>
    #
    #   @return [String]
    #
    # @!attribute coverage_percentage
    #   <p>The percentage of your existing Savings Plans covered usage, divided by all of your
    #               eligible Savings Plans usage in an account (or set of accounts).</p>
    #
    #   @return [String]
    #
    SavingsPlansCoverageData = ::Struct.new(
      :spend_covered_by_savings_plans,
      :on_demand_cost,
      :total_cost,
      :coverage_percentage,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SavingsPlansDataType
    #
    module SavingsPlansDataType
      # No documentation available.
      #
      ATTRIBUTES = "ATTRIBUTES"

      # No documentation available.
      #
      UTILIZATION = "UTILIZATION"

      # No documentation available.
      #
      AMORTIZED_COMMITMENT = "AMORTIZED_COMMITMENT"

      # No documentation available.
      #
      SAVINGS = "SAVINGS"
    end

    # <p>The attribute details on a specific Savings Plan.</p>
    #
    # @!attribute region
    #   <p>A collection of Amazon Web Services resources in a geographic area. Each Amazon Web Services Region is isolated and independent of the other Regions.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_family
    #   <p>A group of instance types that Savings Plans applies to.</p>
    #
    #   @return [String]
    #
    # @!attribute offering_id
    #   <p>The unique ID that's used to distinguish Savings Plans from one another.</p>
    #
    #   @return [String]
    #
    SavingsPlansDetails = ::Struct.new(
      :region,
      :instance_family,
      :offering_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains your request parameters, Savings Plan Recommendations Summary, and
    #             Details.</p>
    #
    # @!attribute account_scope
    #   <p>The account scope that you want your recommendations for. Amazon Web Services
    #               calculates recommendations that include the management account and member accounts if
    #               the value is set to <code>PAYER</code>. If the value is <code>LINKED</code>,
    #               recommendations are calculated for individual member accounts only.</p>
    #
    #   Enum, one of: ["PAYER", "LINKED"]
    #
    #   @return [String]
    #
    # @!attribute savings_plans_type
    #   <p>The requested Savings Plans recommendation type.</p>
    #
    #   Enum, one of: ["COMPUTE_SP", "EC2_INSTANCE_SP", "SAGEMAKER_SP"]
    #
    #   @return [String]
    #
    # @!attribute term_in_years
    #   <p>The Savings Plans recommendation term in years. It's used to generate the
    #               recommendation.</p>
    #
    #   Enum, one of: ["ONE_YEAR", "THREE_YEARS"]
    #
    #   @return [String]
    #
    # @!attribute payment_option
    #   <p>The payment option that's used to generate the recommendation.</p>
    #
    #   Enum, one of: ["NO_UPFRONT", "PARTIAL_UPFRONT", "ALL_UPFRONT", "LIGHT_UTILIZATION", "MEDIUM_UTILIZATION", "HEAVY_UTILIZATION"]
    #
    #   @return [String]
    #
    # @!attribute lookback_period_in_days
    #   <p>The lookback period in days that's used to generate the recommendation.</p>
    #
    #   Enum, one of: ["SEVEN_DAYS", "THIRTY_DAYS", "SIXTY_DAYS"]
    #
    #   @return [String]
    #
    # @!attribute savings_plans_purchase_recommendation_details
    #   <p>Details for the Savings Plans that we recommend that you purchase to cover existing
    #               Savings Plans eligible workloads.</p>
    #
    #   @return [Array<SavingsPlansPurchaseRecommendationDetail>]
    #
    # @!attribute savings_plans_purchase_recommendation_summary
    #   <p>Summary metrics for your Savings Plans Recommendations. </p>
    #
    #   @return [SavingsPlansPurchaseRecommendationSummary]
    #
    SavingsPlansPurchaseRecommendation = ::Struct.new(
      :account_scope,
      :savings_plans_type,
      :term_in_years,
      :payment_option,
      :lookback_period_in_days,
      :savings_plans_purchase_recommendation_details,
      :savings_plans_purchase_recommendation_summary,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details for your recommended Savings Plans.</p>
    #
    # @!attribute savings_plans_details
    #   <p>Details for your recommended Savings Plans.</p>
    #
    #   @return [SavingsPlansDetails]
    #
    # @!attribute account_id
    #   <p>The <code>AccountID</code> the recommendation is generated for.</p>
    #
    #   @return [String]
    #
    # @!attribute upfront_cost
    #   <p>The upfront cost of the recommended Savings Plans, based on the selected payment
    #               option.</p>
    #
    #   @return [String]
    #
    # @!attribute estimated_roi
    #   <p>The estimated return on investment that's based on the recommended Savings Plans that
    #               you purchased. This is calculated as <code>estimatedSavingsAmount</code>/
    #                   <code>estimatedSPCost</code>*100.</p>
    #
    #   @return [String]
    #
    # @!attribute currency_code
    #   <p>The currency code that Amazon Web Services used to generate the recommendations and
    #               present potential savings.</p>
    #
    #   @return [String]
    #
    # @!attribute estimated_sp_cost
    #   <p>The cost of the recommended Savings Plans over the length of the lookback
    #               period.</p>
    #
    #   @return [String]
    #
    # @!attribute estimated_on_demand_cost
    #   <p>The remaining On-Demand cost estimated to not be covered by the recommended Savings
    #               Plans, over the length of the lookback period.</p>
    #
    #   @return [String]
    #
    # @!attribute estimated_on_demand_cost_with_current_commitment
    #   <p> The estimated On-Demand costs you expect with no additional commitment, based on your
    #               usage of the selected time period and the Savings Plans you own. </p>
    #
    #   @return [String]
    #
    # @!attribute estimated_savings_amount
    #   <p>The estimated savings amount that's based on the recommended Savings Plans over the
    #               length of the lookback period.</p>
    #
    #   @return [String]
    #
    # @!attribute estimated_savings_percentage
    #   <p>The estimated savings percentage relative to the total cost of applicable On-Demand
    #               usage over the lookback period.</p>
    #
    #   @return [String]
    #
    # @!attribute hourly_commitment_to_purchase
    #   <p>The recommended hourly commitment level for the Savings Plans type and the
    #               configuration that's based on the usage during the lookback period.</p>
    #
    #   @return [String]
    #
    # @!attribute estimated_average_utilization
    #   <p>The estimated utilization of the recommended Savings Plans.</p>
    #
    #   @return [String]
    #
    # @!attribute estimated_monthly_savings_amount
    #   <p>The estimated monthly savings amount based on the recommended Savings Plans.</p>
    #
    #   @return [String]
    #
    # @!attribute current_minimum_hourly_on_demand_spend
    #   <p>The lowest value of hourly On-Demand spend over the lookback period of the applicable
    #               usage type.</p>
    #
    #   @return [String]
    #
    # @!attribute current_maximum_hourly_on_demand_spend
    #   <p>The highest value of hourly On-Demand spend over the lookback period of the applicable
    #               usage type.</p>
    #
    #   @return [String]
    #
    # @!attribute current_average_hourly_on_demand_spend
    #   <p>The average value of hourly On-Demand spend over the lookback period of the applicable
    #               usage type.</p>
    #
    #   @return [String]
    #
    SavingsPlansPurchaseRecommendationDetail = ::Struct.new(
      :savings_plans_details,
      :account_id,
      :upfront_cost,
      :estimated_roi,
      :currency_code,
      :estimated_sp_cost,
      :estimated_on_demand_cost,
      :estimated_on_demand_cost_with_current_commitment,
      :estimated_savings_amount,
      :estimated_savings_percentage,
      :hourly_commitment_to_purchase,
      :estimated_average_utilization,
      :estimated_monthly_savings_amount,
      :current_minimum_hourly_on_demand_spend,
      :current_maximum_hourly_on_demand_spend,
      :current_average_hourly_on_demand_spend,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Metadata about your Savings Plans Purchase Recommendations.</p>
    #
    # @!attribute recommendation_id
    #   <p>The unique identifier for the recommendation set.</p>
    #
    #   @return [String]
    #
    # @!attribute generation_timestamp
    #   <p>The timestamp that shows when the recommendations were generated.</p>
    #
    #   @return [String]
    #
    # @!attribute additional_metadata
    #   <p>Additional metadata that might be applicable to the recommendation.</p>
    #
    #   @return [String]
    #
    SavingsPlansPurchaseRecommendationMetadata = ::Struct.new(
      :recommendation_id,
      :generation_timestamp,
      :additional_metadata,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Summary metrics for your Savings Plans Purchase Recommendations.</p>
    #
    # @!attribute estimated_roi
    #   <p>The estimated return on investment that's based on the recommended Savings Plans and
    #               estimated savings.</p>
    #
    #   @return [String]
    #
    # @!attribute currency_code
    #   <p>The currency code that Amazon Web Services used to generate the recommendations and
    #               present potential savings.</p>
    #
    #   @return [String]
    #
    # @!attribute estimated_total_cost
    #   <p>The estimated total cost of the usage after purchasing the recommended Savings Plans.
    #               This is a sum of the cost of Savings Plans during this term, and the remaining On-Demand
    #               usage.</p>
    #
    #   @return [String]
    #
    # @!attribute current_on_demand_spend
    #   <p>The current total on demand spend of the applicable usage types over the lookback
    #               period.</p>
    #
    #   @return [String]
    #
    # @!attribute estimated_savings_amount
    #   <p>The estimated total savings over the lookback period, based on the purchase of the
    #               recommended Savings Plans.</p>
    #
    #   @return [String]
    #
    # @!attribute total_recommendation_count
    #   <p>The aggregate number of Savings Plans recommendations that exist for your
    #               account.</p>
    #
    #   @return [String]
    #
    # @!attribute daily_commitment_to_purchase
    #   <p>The recommended Savings Plans cost on a daily (24 hourly) basis.</p>
    #
    #   @return [String]
    #
    # @!attribute hourly_commitment_to_purchase
    #   <p>The recommended hourly commitment that's based on the recommendation
    #               parameters.</p>
    #
    #   @return [String]
    #
    # @!attribute estimated_savings_percentage
    #   <p>The estimated savings relative to the total cost of On-Demand usage, over the lookback
    #               period. This is calculated as <code>estimatedSavingsAmount</code>/
    #                   <code>CurrentOnDemandSpend</code>*100.</p>
    #
    #   @return [String]
    #
    # @!attribute estimated_monthly_savings_amount
    #   <p>The estimated monthly savings amount that's based on the recommended Savings Plans
    #               purchase.</p>
    #
    #   @return [String]
    #
    # @!attribute estimated_on_demand_cost_with_current_commitment
    #   <p>The estimated On-Demand costs you expect with no additional commitment. It's based on
    #               your usage of the selected time period and the Savings Plans you own. </p>
    #
    #   @return [String]
    #
    SavingsPlansPurchaseRecommendationSummary = ::Struct.new(
      :estimated_roi,
      :currency_code,
      :estimated_total_cost,
      :current_on_demand_spend,
      :estimated_savings_amount,
      :total_recommendation_count,
      :daily_commitment_to_purchase,
      :hourly_commitment_to_purchase,
      :estimated_savings_percentage,
      :estimated_monthly_savings_amount,
      :estimated_on_demand_cost_with_current_commitment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The amount of savings that you're accumulating, against the public On-Demand rate of
    #             the usage accrued in an account.</p>
    #
    # @!attribute net_savings
    #   <p>The savings amount that you're accumulating for the usage that's covered by a Savings
    #               Plans, when compared to the On-Demand equivalent of the same usage.</p>
    #
    #   @return [String]
    #
    # @!attribute on_demand_cost_equivalent
    #   <p>How much the amount that the usage would have cost if it was accrued at the On-Demand
    #               rate.</p>
    #
    #   @return [String]
    #
    SavingsPlansSavings = ::Struct.new(
      :net_savings,
      :on_demand_cost_equivalent,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The measurement of how well you're using your existing Savings Plans.</p>
    #
    # @!attribute total_commitment
    #   <p>The total amount of Savings Plans commitment that's been purchased in an account (or
    #               set of accounts).</p>
    #
    #   @return [String]
    #
    # @!attribute used_commitment
    #   <p>The amount of your Savings Plans commitment that was consumed from Savings Plans
    #               eligible usage in a specific period.</p>
    #
    #   @return [String]
    #
    # @!attribute unused_commitment
    #   <p>The amount of your Savings Plans commitment that wasn't consumed from Savings Plans
    #               eligible usage in a specific period.</p>
    #
    #   @return [String]
    #
    # @!attribute utilization_percentage
    #   <p>The amount of <code>UsedCommitment</code> divided by the <code>TotalCommitment</code>
    #               for your Savings Plans.</p>
    #
    #   @return [String]
    #
    SavingsPlansUtilization = ::Struct.new(
      :total_commitment,
      :used_commitment,
      :unused_commitment,
      :utilization_percentage,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The aggregated utilization metrics for your Savings Plans usage.</p>
    #
    # @!attribute utilization
    #   <p>A ratio of your effectiveness of using existing Savings Plans to apply to workloads
    #               that are Savings Plans eligible.</p>
    #
    #   @return [SavingsPlansUtilization]
    #
    # @!attribute savings
    #   <p>The amount that's saved by using existing Savings Plans. Savings returns both net
    #               savings from Savings Plans and also the <code>onDemandCostEquivalent</code> of the
    #               Savings Plans when considering the utilization rate.</p>
    #
    #   @return [SavingsPlansSavings]
    #
    # @!attribute amortized_commitment
    #   <p>The total amortized commitment for a Savings Plans. This includes the sum of the
    #               upfront and recurring Savings Plans fees.</p>
    #
    #   @return [SavingsPlansAmortizedCommitment]
    #
    SavingsPlansUtilizationAggregates = ::Struct.new(
      :utilization,
      :savings,
      :amortized_commitment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The amount of Savings Plans utilization (in hours).</p>
    #
    # @!attribute time_period
    #   <p>The time period of the request. </p>
    #
    #   @return [DateInterval]
    #
    # @!attribute utilization
    #   <p>A ratio of your effectiveness of using existing Savings Plans to apply to workloads
    #               that are Savings Plans eligible.</p>
    #
    #   @return [SavingsPlansUtilization]
    #
    # @!attribute savings
    #   <p>The amount that's saved by using existing Savings Plans. Savings returns both net
    #               savings from Savings Plans and also the <code>onDemandCostEquivalent</code> of the
    #               Savings Plans when considering the utilization rate.</p>
    #
    #   @return [SavingsPlansSavings]
    #
    # @!attribute amortized_commitment
    #   <p>The total amortized commitment for a Savings Plans. This includes the sum of the
    #               upfront and recurring Savings Plans fees.</p>
    #
    #   @return [SavingsPlansAmortizedCommitment]
    #
    SavingsPlansUtilizationByTime = ::Struct.new(
      :time_period,
      :utilization,
      :savings,
      :amortized_commitment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A single daily or monthly Savings Plans utilization rate and details for your account.
    #             A management account in an organization have access to member accounts. You can use
    #                 <code>GetDimensionValues</code> to determine the possible dimension values. </p>
    #
    # @!attribute savings_plan_arn
    #   <p>The unique Amazon Resource Name (ARN) for a particular Savings Plan.</p>
    #
    #   @return [String]
    #
    # @!attribute attributes
    #   <p>The attribute that applies to a specific <code>Dimension</code>.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute utilization
    #   <p>A ratio of your effectiveness of using existing Savings Plans to apply to workloads
    #               that are Savings Plans eligible.</p>
    #
    #   @return [SavingsPlansUtilization]
    #
    # @!attribute savings
    #   <p>The amount saved by using existing Savings Plans. Savings returns both net savings
    #               from savings plans and also the <code>onDemandCostEquivalent</code> of the Savings Plans
    #               when considering the utilization rate.</p>
    #
    #   @return [SavingsPlansSavings]
    #
    # @!attribute amortized_commitment
    #   <p>The total amortized commitment for a Savings Plans. Includes the sum of the upfront
    #               and recurring Savings Plans fees.</p>
    #
    #   @return [SavingsPlansAmortizedCommitment]
    #
    SavingsPlansUtilizationDetail = ::Struct.new(
      :savings_plan_arn,
      :attributes,
      :utilization,
      :savings,
      :amortized_commitment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> You've reached the limit on the number of resources you can create, or exceeded the
    #             size of an individual resource. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ServiceQuotaExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Hardware specifications for the service that you want recommendations for.</p>
    #
    # @!attribute ec2_specification
    #   <p>The Amazon EC2 hardware specifications that you want Amazon Web Services to provide
    #               recommendations for.</p>
    #
    #   @return [EC2Specification]
    #
    ServiceSpecification = ::Struct.new(
      :ec2_specification,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The details for how to sort the data.</p>
    #
    # @!attribute key
    #   <p>The key that's used to sort the data.</p>
    #
    #   @return [String]
    #
    # @!attribute sort_order
    #   <p>The order that's used to sort the data.</p>
    #
    #   Enum, one of: ["ASCENDING", "DESCENDING"]
    #
    #   @return [String]
    #
    SortDefinition = ::Struct.new(
      :key,
      :sort_order,
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

    # <p>The recipient of <code>AnomalySubscription</code> notifications. </p>
    #
    # @!attribute address
    #   <p>The email address or SNS Amazon Resource Name (ARN). This depends on the
    #                   <code>Type</code>. </p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The notification delivery channel. </p>
    #
    #   Enum, one of: ["EMAIL", "SNS"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Indicates if the subscriber accepts the notifications. </p>
    #
    #   Enum, one of: ["CONFIRMED", "DECLINED"]
    #
    #   @return [String]
    #
    Subscriber = ::Struct.new(
      :address,
      :type,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SubscriberStatus
    #
    module SubscriberStatus
      # No documentation available.
      #
      CONFIRMED = "CONFIRMED"

      # No documentation available.
      #
      DECLINED = "DECLINED"
    end

    # Includes enum constants for SubscriberType
    #
    module SubscriberType
      # No documentation available.
      #
      EMAIL = "EMAIL"

      # No documentation available.
      #
      SNS = "SNS"
    end

    # Includes enum constants for SupportedSavingsPlansType
    #
    module SupportedSavingsPlansType
      # No documentation available.
      #
      COMPUTE_SP = "COMPUTE_SP"

      # No documentation available.
      #
      EC2_INSTANCE_SP = "EC2_INSTANCE_SP"

      # No documentation available.
      #
      SAGEMAKER_SP = "SAGEMAKER_SP"
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource. For a list of supported resources, see <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_ResourceTag.html">ResourceTag</a>.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute resource_tags
    #   <p>
    #         A list of tag key-value pairs to be added to the resource.</p>
    #            <p>Each tag consists of a key and a value, and each key must be unique for the resource. The following restrictions apply to resource tags:</p>
    #            <ul>
    #               <li>
    #                  <p>Although the maximum number of array members is 200, you can assign a maximum of 50 user-tags to one resource. The remaining are reserved for Amazon Web Services use</p>
    #               </li>
    #               <li>
    #                  <p>The maximum length of a key is 128 characters</p>
    #               </li>
    #               <li>
    #                  <p>The maximum length of a value is 256 characters</p>
    #               </li>
    #               <li>
    #                  <p>Keys and values can only contain alphanumeric characters, spaces, and any of the following: <code>_.:/=+@-</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Keys and values are case sensitive</p>
    #               </li>
    #               <li>
    #                  <p>Keys and values are trimmed for any leading or trailing whitespaces</p>
    #               </li>
    #               <li>
    #                  <p>Don’t use <code>aws:</code> as a prefix for your keys. This prefix is reserved for Amazon Web Services use</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<ResourceTag>]
    #
    TagResourceInput = ::Struct.new(
      :resource_arn,
      :resource_tags,
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

    # <p>The values that are available for a tag.</p>
    #         <p>If <code>Values</code> and <code>Key</code> aren't specified, the <code>ABSENT</code>
    #             <code>MatchOption</code> is applied to all tags. That is, it's filtered on resources
    #             with no tags.</p>
    #         <p>If <code>Values</code> is provided and <code>Key</code> isn't specified, the
    #                 <code>ABSENT</code>
    #             <code>MatchOption</code> is applied to the tag <code>Key</code> only. That is, it's
    #             filtered on resources without the given tag key.</p>
    #
    # @!attribute key
    #   <p>The key for the tag.</p>
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>The specific value of the tag.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute match_options
    #   <p>The match options that you can use to filter your results. <code>MatchOptions</code>
    #               is only applicable for actions related to Cost Category. The default values for
    #                   <code>MatchOptions</code> are <code>EQUALS</code> and
    #               <code>CASE_SENSITIVE</code>.</p>
    #
    #   @return [Array<String>]
    #
    TagValues = ::Struct.new(
      :key,
      :values,
      :match_options,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details on recommended instance.</p>
    #
    # @!attribute estimated_monthly_cost
    #   <p>The expected cost to operate this instance type on a monthly basis.</p>
    #
    #   @return [String]
    #
    # @!attribute estimated_monthly_savings
    #   <p>The estimated savings that result from modification, on a monthly basis.</p>
    #
    #   @return [String]
    #
    # @!attribute currency_code
    #   <p>The currency code that Amazon Web Services used to calculate the costs for this
    #               instance.</p>
    #
    #   @return [String]
    #
    # @!attribute default_target_instance
    #   <p>Determines whether this recommendation is the defaulted Amazon Web Services
    #               recommendation.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute resource_details
    #   <p>Details on the target instance type. </p>
    #
    #   @return [ResourceDetails]
    #
    # @!attribute expected_resource_utilization
    #   <p>The expected utilization metrics for target instance type.</p>
    #
    #   @return [ResourceUtilization]
    #
    # @!attribute platform_differences
    #   <p>Explains the actions that you might need to take to successfully migrate your
    #               workloads from the current instance type to the recommended instance type. </p>
    #
    #   @return [Array<String>]
    #
    TargetInstance = ::Struct.new(
      :estimated_monthly_cost,
      :estimated_monthly_savings,
      :currency_code,
      :default_target_instance,
      :resource_details,
      :expected_resource_utilization,
      :platform_differences,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.default_target_instance ||= false
      end

    end

    # Includes enum constants for TermInYears
    #
    module TermInYears
      # No documentation available.
      #
      ONE_YEAR = "ONE_YEAR"

      # No documentation available.
      #
      THREE_YEARS = "THREE_YEARS"
    end

    # <p>Details on termination recommendation. </p>
    #
    # @!attribute estimated_monthly_savings
    #   <p>The estimated savings that result from modification, on a monthly basis.</p>
    #
    #   @return [String]
    #
    # @!attribute currency_code
    #   <p>The currency code that Amazon Web Services used to calculate the costs for this
    #               instance.</p>
    #
    #   @return [String]
    #
    TerminateRecommendationDetail = ::Struct.new(
      :estimated_monthly_savings,
      :currency_code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Can occur if you specify a number of tags for a resource greater than the maximum 50 user tags per resource.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_name
    #
    #   @return [String]
    #
    TooManyTagsException = ::Struct.new(
      :message,
      :resource_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Filters cost anomalies based on the total impact. </p>
    #
    # @!attribute numeric_operator
    #   <p>The comparing value that's used in the filter. </p>
    #
    #   Enum, one of: ["EQUAL", "GREATER_THAN_OR_EQUAL", "LESS_THAN_OR_EQUAL", "GREATER_THAN", "LESS_THAN", "BETWEEN"]
    #
    #   @return [String]
    #
    # @!attribute start_value
    #   <p>The lower bound dollar value that's used in the filter. </p>
    #
    #   @return [Float]
    #
    # @!attribute end_value
    #   <p>The upper bound dollar value that's used in the filter. </p>
    #
    #   @return [Float]
    #
    TotalImpactFilter = ::Struct.new(
      :numeric_operator,
      :start_value,
      :end_value,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.start_value ||= 0
        self.end_value ||= 0
      end

    end

    # <p>The cost anomaly monitor does not exist for the account.
    #         </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    UnknownMonitorException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The cost anomaly subscription does not exist for the account.
    #         </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    UnknownSubscriptionException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Cost Explorer was unable to identify the usage unit. Provide <code>UsageType/UsageTypeGroup</code> filter selections that contain matching units, for example: <code>hours</code>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    UnresolvableUsageUnitException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource. For a list of supported resources, see
    #           <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_ResourceTag.html">ResourceTag</a>. </p>
    #
    #   @return [String]
    #
    # @!attribute resource_tag_keys
    #   <p>A list of tag keys associated with tags that need to be removed from the resource. If you
    #         specify a tag key that doesn't exist, it's ignored. Although the maximum number of array
    #         members is 200, user-tag maximum is 50. The remaining are reserved for Amazon Web Services use. </p>
    #
    #   @return [Array<String>]
    #
    UntagResourceInput = ::Struct.new(
      :resource_arn,
      :resource_tag_keys,
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

    # @!attribute monitor_arn
    #   <p>Cost anomaly monitor Amazon Resource Names (ARNs). </p>
    #
    #   @return [String]
    #
    # @!attribute monitor_name
    #   <p>The new name for the cost anomaly monitor. </p>
    #
    #   @return [String]
    #
    UpdateAnomalyMonitorInput = ::Struct.new(
      :monitor_arn,
      :monitor_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute monitor_arn
    #   <p>A cost anomaly monitor ARN. </p>
    #
    #   @return [String]
    #
    UpdateAnomalyMonitorOutput = ::Struct.new(
      :monitor_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute subscription_arn
    #   <p>A cost anomaly subscription Amazon Resource Name (ARN). </p>
    #
    #   @return [String]
    #
    # @!attribute threshold
    #   <p>The update to the threshold value for receiving notifications. </p>
    #
    #   @return [Float]
    #
    # @!attribute frequency
    #   <p>The update to the frequency value that subscribers receive notifications. </p>
    #
    #   Enum, one of: ["DAILY", "IMMEDIATE", "WEEKLY"]
    #
    #   @return [String]
    #
    # @!attribute monitor_arn_list
    #   <p>A list of cost anomaly monitor ARNs. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute subscribers
    #   <p>The update to the subscriber list. </p>
    #
    #   @return [Array<Subscriber>]
    #
    # @!attribute subscription_name
    #   <p>The new name of the subscription. </p>
    #
    #   @return [String]
    #
    UpdateAnomalySubscriptionInput = ::Struct.new(
      :subscription_arn,
      :threshold,
      :frequency,
      :monitor_arn_list,
      :subscribers,
      :subscription_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute subscription_arn
    #   <p>A cost anomaly subscription ARN. </p>
    #
    #   @return [String]
    #
    UpdateAnomalySubscriptionOutput = ::Struct.new(
      :subscription_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Gives a detailed description of the result of an action. It's on each cost allocation
    #             tag entry in the request. </p>
    #
    # @!attribute tag_key
    #   <p>The key for the cost allocation tag. </p>
    #
    #   @return [String]
    #
    # @!attribute code
    #   <p>An error code representing why the action failed on this entry. </p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>A message explaining why the action failed on this entry. </p>
    #
    #   @return [String]
    #
    UpdateCostAllocationTagsStatusError = ::Struct.new(
      :tag_key,
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cost_allocation_tags_status
    #   <p>The list of <code>CostAllocationTagStatusEntry</code> objects that are used to update cost
    #         allocation tags status for this request. </p>
    #
    #   @return [Array<CostAllocationTagStatusEntry>]
    #
    UpdateCostAllocationTagsStatusInput = ::Struct.new(
      :cost_allocation_tags_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute errors
    #   <p>A list of <code>UpdateCostAllocationTagsStatusError</code> objects with error details
    #         about each cost allocation tag that can't be updated. If there's no failure, an empty array
    #         returns. </p>
    #
    #   @return [Array<UpdateCostAllocationTagsStatusError>]
    #
    UpdateCostAllocationTagsStatusOutput = ::Struct.new(
      :errors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cost_category_arn
    #   <p>The unique identifier for your Cost Category.</p>
    #
    #   @return [String]
    #
    # @!attribute rule_version
    #   <p>The rule schema version in this particular Cost Category.</p>
    #
    #   Enum, one of: ["CostCategoryExpression.v1"]
    #
    #   @return [String]
    #
    # @!attribute rules
    #   <p>The <code>Expression</code> object used to categorize costs. For more information, see
    #           <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_CostCategoryRule.html">CostCategoryRule </a>. </p>
    #
    #   @return [Array<CostCategoryRule>]
    #
    # @!attribute default_value
    #   <p>The
    #               default value for the cost category.</p>
    #
    #   @return [String]
    #
    # @!attribute split_charge_rules
    #   <p>
    #         The split charge rules used to allocate your charges between your Cost Category values.
    #       </p>
    #
    #   @return [Array<CostCategorySplitChargeRule>]
    #
    UpdateCostCategoryDefinitionInput = ::Struct.new(
      :cost_category_arn,
      :rule_version,
      :rules,
      :default_value,
      :split_charge_rules,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cost_category_arn
    #   <p>The unique identifier for your Cost Category. </p>
    #
    #   @return [String]
    #
    # @!attribute effective_start
    #   <p>The Cost Category's effective start date. </p>
    #
    #   @return [String]
    #
    UpdateCostCategoryDefinitionOutput = ::Struct.new(
      :cost_category_arn,
      :effective_start,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The amount of utilization, in hours.</p>
    #
    # @!attribute time_period
    #   <p>The period of time that this utilization was used for.</p>
    #
    #   @return [DateInterval]
    #
    # @!attribute groups
    #   <p>The groups that this utilization result uses.</p>
    #
    #   @return [Array<ReservationUtilizationGroup>]
    #
    # @!attribute total
    #   <p>The total number of reservation hours that were used.</p>
    #
    #   @return [ReservationAggregates]
    #
    UtilizationByTime = ::Struct.new(
      :time_period,
      :groups,
      :total,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
