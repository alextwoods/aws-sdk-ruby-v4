# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Resiliencehub
  module Types

    # <p>You don't have permissions to perform the requested operation. The user or role that is
    #       making the request must have at least one IAM permissions policy attached that grants the
    #       required permissions.</p>
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

    # @!attribute app_arn
    #   <p>The Amazon Resource Name (ARN) of the application. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_mappings
    #   <p> Mappings used to map logical resources from the template to physical resources. You can
    #         use the mapping type <code>CFN_STACK</code> if the application template uses
    #         a logical stack name. Or you can map individual resources by using the mapping type
    #         <code>RESOURCE</code>. We recommend using the mapping type <code>CFN_STACK</code> if the
    #         application is backed by a CloudFormation stack.</p>
    #
    #   @return [Array<ResourceMapping>]
    #
    AddDraftAppVersionResourceMappingsInput = ::Struct.new(
      :app_arn,
      :resource_mappings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_arn
    #   <p> The Amazon Resource Name (ARN) of the application. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute app_version
    #   <p>The version of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_mappings
    #   <p>Mappings used to map logical resources from the template to physical resources. You can
    #         use the mapping type <code>CFN_STACK</code> if the application template uses
    #         a logical stack name. Or you can map individual resources by using the mapping type
    #         <code>RESOURCE</code>. We recommend using the mapping type <code>CFN_STACK</code> if the
    #         application is backed by a CloudFormation stack.</p>
    #
    #   @return [Array<ResourceMapping>]
    #
    AddDraftAppVersionResourceMappingsOutput = ::Struct.new(
      :app_arn,
      :app_version,
      :resource_mappings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Defines a recommendation for a CloudWatch alarm.</p>
    #
    # @!attribute recommendation_id
    #   <p>The identifier of the alarm recommendation.</p>
    #
    #   @return [String]
    #
    # @!attribute reference_id
    #   <p>The reference identifier of the alarm recommendation.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the alarm recommendation.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the recommendation.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of alarm recommendation.</p>
    #
    #   Enum, one of: ["Metric", "Composite", "Canary", "Logs", "Event"]
    #
    #   @return [String]
    #
    # @!attribute app_component_name
    #   <p>The application component for the CloudWatch alarm recommendation.</p>
    #
    #   @return [String]
    #
    # @!attribute items
    #   <p>The list of CloudWatch alarm recommendations.</p>
    #
    #   @return [Array<RecommendationItem>]
    #
    # @!attribute prerequisite
    #   <p>The prerequisite for the alarm recommendation.</p>
    #
    #   @return [String]
    #
    AlarmRecommendation = ::Struct.new(
      :recommendation_id,
      :reference_id,
      :name,
      :description,
      :type,
      :app_component_name,
      :items,
      :prerequisite,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AlarmType
    #
    module AlarmType
      # No documentation available.
      #
      METRIC = "Metric"

      # No documentation available.
      #
      COMPOSITE = "Composite"

      # No documentation available.
      #
      CANARY = "Canary"

      # No documentation available.
      #
      LOGS = "Logs"

      # No documentation available.
      #
      EVENT = "Event"
    end

    # <p>Defines a Resilience Hub application.</p>
    #
    # @!attribute app_arn
    #   <p>The Amazon Resource Name (ARN) of the application. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name for the application.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The optional description for an app.</p>
    #
    #   @return [String]
    #
    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the resiliency policy. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:resiliency-policy/<code>policy-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The timestamp for when the app was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute status
    #   <p>The status of the action.</p>
    #
    #   Enum, one of: ["Active", "Deleting"]
    #
    #   @return [String]
    #
    # @!attribute compliance_status
    #   <p>The current status of compliance for the resiliency policy.</p>
    #
    #   Enum, one of: ["PolicyBreached", "PolicyMet", "NotAssessed", "ChangesDetected"]
    #
    #   @return [String]
    #
    # @!attribute last_app_compliance_evaluation_time
    #   <p>The timestamp for the most recent compliance evaluation.</p>
    #
    #   @return [Time]
    #
    # @!attribute resiliency_score
    #   <p>The current resiliency score for the application.</p>
    #
    #   @return [Float]
    #
    # @!attribute last_resiliency_score_evaluation_time
    #   <p>The timestamp for the most recent resiliency score evaluation.</p>
    #
    #   @return [Time]
    #
    # @!attribute tags
    #   <p>The tags assigned to the resource. A tag is a label that you assign to an Amazon Web Services resource.
    #   Each tag consists of a key/value pair.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute assessment_schedule
    #   <p>
    #         Assessment execution schedule with 'Daily' or 'Disabled' values.
    #       </p>
    #
    #   Enum, one of: ["Disabled", "Daily"]
    #
    #   @return [String]
    #
    App = ::Struct.new(
      :app_arn,
      :name,
      :description,
      :policy_arn,
      :creation_time,
      :status,
      :compliance_status,
      :last_app_compliance_evaluation_time,
      :resiliency_score,
      :last_resiliency_score_evaluation_time,
      :tags,
      :assessment_schedule,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.resiliency_score ||= 0
      end

      def to_s
        "#<struct AWS::SDK::Resiliencehub::Types::App "\
          "app_arn=#{app_arn || 'nil'}, "\
          "name=#{name || 'nil'}, "\
          "description=#{description || 'nil'}, "\
          "policy_arn=#{policy_arn || 'nil'}, "\
          "creation_time=#{creation_time || 'nil'}, "\
          "status=#{status || 'nil'}, "\
          "compliance_status=#{compliance_status || 'nil'}, "\
          "last_app_compliance_evaluation_time=#{last_app_compliance_evaluation_time || 'nil'}, "\
          "resiliency_score=#{resiliency_score || 'nil'}, "\
          "last_resiliency_score_evaluation_time=#{last_resiliency_score_evaluation_time || 'nil'}, "\
          "tags=\"[SENSITIVE]\", "\
          "assessment_schedule=#{assessment_schedule || 'nil'}>"
      end
    end

    # <p>Defines an application assessment.</p>
    #
    # @!attribute app_arn
    #   <p>The Amazon Resource Name (ARN) of the application. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute app_version
    #   <p>The version of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute invoker
    #   <p>The entity that invoked the assessment.</p>
    #
    #   Enum, one of: ["User", "System"]
    #
    #   @return [String]
    #
    # @!attribute cost
    #   <p>The cost for the application.</p>
    #
    #   @return [Cost]
    #
    # @!attribute resiliency_score
    #   <p>The current resiliency score for the application.</p>
    #
    #   @return [ResiliencyScore]
    #
    # @!attribute compliance
    #   <p>The application compliance against the resiliency policy.</p>
    #
    #   @return [Hash<String, DisruptionCompliance>]
    #
    # @!attribute compliance_status
    #   <p>The current status of the compliance for the resiliency policy.</p>
    #
    #   Enum, one of: ["PolicyBreached", "PolicyMet"]
    #
    #   @return [String]
    #
    # @!attribute assessment_status
    #   <p>The current status of the assessment for the resiliency policy.</p>
    #
    #   Enum, one of: ["Pending", "InProgress", "Failed", "Success"]
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The starting time for the action.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The end time for the action.</p>
    #
    #   @return [Time]
    #
    # @!attribute message
    #   <p>Error or warning message from the assessment execution</p>
    #
    #   @return [String]
    #
    # @!attribute assessment_name
    #   <p>The name of the assessment.</p>
    #
    #   @return [String]
    #
    # @!attribute assessment_arn
    #   <p>The Amazon Resource Name (ARN) of the assessment. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app-assessment/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute policy
    #   <p>The resiliency policy.</p>
    #
    #   @return [ResiliencyPolicy]
    #
    # @!attribute tags
    #   <p>The tags assigned to the resource. A tag is a label that you assign to an Amazon Web Services resource.
    #   Each tag consists of a key/value pair.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute resource_errors_details
    #   <p>
    #         A resource error object containing a list of errors retrieving an application's resources.
    #       </p>
    #
    #   @return [ResourceErrorsDetails]
    #
    AppAssessment = ::Struct.new(
      :app_arn,
      :app_version,
      :invoker,
      :cost,
      :resiliency_score,
      :compliance,
      :compliance_status,
      :assessment_status,
      :start_time,
      :end_time,
      :message,
      :assessment_name,
      :assessment_arn,
      :policy,
      :tags,
      :resource_errors_details,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Resiliencehub::Types::AppAssessment "\
          "app_arn=#{app_arn || 'nil'}, "\
          "app_version=#{app_version || 'nil'}, "\
          "invoker=#{invoker || 'nil'}, "\
          "cost=#{cost || 'nil'}, "\
          "resiliency_score=#{resiliency_score || 'nil'}, "\
          "compliance=#{compliance || 'nil'}, "\
          "compliance_status=#{compliance_status || 'nil'}, "\
          "assessment_status=#{assessment_status || 'nil'}, "\
          "start_time=#{start_time || 'nil'}, "\
          "end_time=#{end_time || 'nil'}, "\
          "message=#{message || 'nil'}, "\
          "assessment_name=#{assessment_name || 'nil'}, "\
          "assessment_arn=#{assessment_arn || 'nil'}, "\
          "policy=#{policy || 'nil'}, "\
          "tags=\"[SENSITIVE]\", "\
          "resource_errors_details=#{resource_errors_details || 'nil'}>"
      end
    end

    # Includes enum constants for AppAssessmentScheduleType
    #
    module AppAssessmentScheduleType
      # No documentation available.
      #
      DISABLED = "Disabled"

      # No documentation available.
      #
      DAILY = "Daily"
    end

    # <p>Defines an application assessment summary.</p>
    #
    # @!attribute app_arn
    #   <p>The Amazon Resource Name (ARN) of the application. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute app_version
    #   <p>The version of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute assessment_status
    #   <p>The current status of the assessment for the resiliency policy.</p>
    #
    #   Enum, one of: ["Pending", "InProgress", "Failed", "Success"]
    #
    #   @return [String]
    #
    # @!attribute invoker
    #   <p>The entity that invoked the assessment.</p>
    #
    #   Enum, one of: ["User", "System"]
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The starting time for the action.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The end time for the action.</p>
    #
    #   @return [Time]
    #
    # @!attribute message
    #   <p>The message from the assessment run.</p>
    #
    #   @return [String]
    #
    # @!attribute assessment_name
    #   <p>The name of the assessment.</p>
    #
    #   @return [String]
    #
    # @!attribute assessment_arn
    #   <p>The Amazon Resource Name (ARN) of the assessment. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app-assessment/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute compliance_status
    #   <p>The current status of compliance for the resiliency policy.</p>
    #
    #   Enum, one of: ["PolicyBreached", "PolicyMet"]
    #
    #   @return [String]
    #
    # @!attribute cost
    #   <p>The cost for the application.</p>
    #
    #   @return [Cost]
    #
    # @!attribute resiliency_score
    #   <p>The current resiliency score for the application.</p>
    #
    #   @return [Float]
    #
    AppAssessmentSummary = ::Struct.new(
      :app_arn,
      :app_version,
      :assessment_status,
      :invoker,
      :start_time,
      :end_time,
      :message,
      :assessment_name,
      :assessment_arn,
      :compliance_status,
      :cost,
      :resiliency_score,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.resiliency_score ||= 0
      end
    end

    # Includes enum constants for AppComplianceStatusType
    #
    module AppComplianceStatusType
      # No documentation available.
      #
      POLICY_BREACHED = "PolicyBreached"

      # No documentation available.
      #
      POLICY_MET = "PolicyMet"

      # No documentation available.
      #
      NOT_ASSESSED = "NotAssessed"

      # No documentation available.
      #
      CHANGES_DETECTED = "ChangesDetected"
    end

    # <p>Defines an application component.</p>
    #
    # @!attribute name
    #   <p>The name of the application component.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of application component.</p>
    #
    #   @return [String]
    #
    AppComponent = ::Struct.new(
      :name,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Defines the compliance of an application component against the resiliency policy.</p>
    #
    # @!attribute cost
    #   <p>The cost for the application.</p>
    #
    #   @return [Cost]
    #
    # @!attribute app_component_name
    #   <p>The name of the application component.</p>
    #
    #   @return [String]
    #
    # @!attribute compliance
    #   <p>The compliance of the application component against the resiliency policy.</p>
    #
    #   @return [Hash<String, DisruptionCompliance>]
    #
    # @!attribute message
    #   <p>The compliance message.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the action.</p>
    #
    #   Enum, one of: ["PolicyBreached", "PolicyMet"]
    #
    #   @return [String]
    #
    # @!attribute resiliency_score
    #   <p>The current resiliency score for the application.</p>
    #
    #   @return [ResiliencyScore]
    #
    AppComponentCompliance = ::Struct.new(
      :cost,
      :app_component_name,
      :compliance,
      :message,
      :status,
      :resiliency_score,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AppStatusType
    #
    module AppStatusType
      # No documentation available.
      #
      ACTIVE = "Active"

      # No documentation available.
      #
      DELETING = "Deleting"
    end

    # <p>Defines an application summary.</p>
    #
    # @!attribute app_arn
    #   <p>The Amazon Resource Name (ARN) of the application. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The optional description for an app.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The timestamp for when the app was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute compliance_status
    #   <p>The current status of compliance for the resiliency policy.</p>
    #
    #   Enum, one of: ["PolicyBreached", "PolicyMet", "NotAssessed", "ChangesDetected"]
    #
    #   @return [String]
    #
    # @!attribute resiliency_score
    #   <p>The current resiliency score for the application.</p>
    #
    #   @return [Float]
    #
    # @!attribute assessment_schedule
    #   <p>
    #         Assessment execution schedule with 'Daily' or 'Disabled' values.
    #       </p>
    #
    #   Enum, one of: ["Disabled", "Daily"]
    #
    #   @return [String]
    #
    AppSummary = ::Struct.new(
      :app_arn,
      :name,
      :description,
      :creation_time,
      :compliance_status,
      :resiliency_score,
      :assessment_schedule,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.resiliency_score ||= 0
      end
    end

    # <p>The version of the application.</p>
    #
    # @!attribute app_version
    #   <p>The version of the application.</p>
    #
    #   @return [String]
    #
    AppVersionSummary = ::Struct.new(
      :app_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AssessmentInvoker
    #
    module AssessmentInvoker
      # No documentation available.
      #
      USER = "User"

      # No documentation available.
      #
      SYSTEM = "System"
    end

    # Includes enum constants for AssessmentStatus
    #
    module AssessmentStatus
      # No documentation available.
      #
      PENDING = "Pending"

      # No documentation available.
      #
      INPROGRESS = "InProgress"

      # No documentation available.
      #
      FAILED = "Failed"

      # No documentation available.
      #
      SUCCESS = "Success"
    end

    # Includes enum constants for ComplianceStatus
    #
    module ComplianceStatus
      # No documentation available.
      #
      POLICY_BREACHED = "PolicyBreached"

      # No documentation available.
      #
      POLICY_MET = "PolicyMet"
    end

    # <p>Defines recommendations for a Resilience Hub application component, returned as an object. This
    #       object contains component names, configuration recommendations, and recommendation
    #       statuses.</p>
    #
    # @!attribute app_component_name
    #   <p>The name of the application component.</p>
    #
    #   @return [String]
    #
    # @!attribute recommendation_status
    #   <p>The recommendation status.</p>
    #
    #   Enum, one of: ["BreachedUnattainable", "BreachedCanMeet", "MetCanImprove"]
    #
    #   @return [String]
    #
    # @!attribute config_recommendations
    #   <p>The list of recommendations.</p>
    #
    #   @return [Array<ConfigRecommendation>]
    #
    ComponentRecommendation = ::Struct.new(
      :app_component_name,
      :recommendation_status,
      :config_recommendations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Defines a configuration recommendation.</p>
    #
    # @!attribute cost
    #   <p>The cost for the application.</p>
    #
    #   @return [Cost]
    #
    # @!attribute app_component_name
    #   <p>The application component name.</p>
    #
    #   @return [String]
    #
    # @!attribute compliance
    #   <p>The current compliance against the resiliency policy before applying the configuration
    #         change.</p>
    #
    #   @return [Hash<String, DisruptionCompliance>]
    #
    # @!attribute recommendation_compliance
    #   <p>The expected compliance against the resiliency policy after applying the configuration
    #         change.</p>
    #
    #   @return [Hash<String, RecommendationDisruptionCompliance>]
    #
    # @!attribute optimization_type
    #   <p>The type of optimization.</p>
    #
    #   Enum, one of: ["LeastCost", "LeastChange", "BestAZRecovery", "LeastErrors", "BestAttainable"]
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the recommendation configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The optional description for an app.</p>
    #
    #   @return [String]
    #
    # @!attribute suggested_changes
    #   <p>List of the suggested configuration changes.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute ha_architecture
    #   <p>The architecture type.</p>
    #
    #   Enum, one of: ["MultiSite", "WarmStandby", "PilotLight", "BackupAndRestore", "NoRecoveryPlan"]
    #
    #   @return [String]
    #
    # @!attribute reference_id
    #   <p>The reference identifier for the recommendation configuration.</p>
    #
    #   @return [String]
    #
    ConfigRecommendation = ::Struct.new(
      :cost,
      :app_component_name,
      :compliance,
      :recommendation_compliance,
      :optimization_type,
      :name,
      :description,
      :suggested_changes,
      :ha_architecture,
      :reference_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ConfigRecommendationOptimizationType
    #
    module ConfigRecommendationOptimizationType
      # No documentation available.
      #
      LEAST_COST = "LeastCost"

      # No documentation available.
      #
      LEAST_CHANGE = "LeastChange"

      # No documentation available.
      #
      BEST_AZ_RECOVERY = "BestAZRecovery"

      # No documentation available.
      #
      LEAST_ERRORS = "LeastErrors"

      # No documentation available.
      #
      BEST_ATTAINABLE = "BestAttainable"
    end

    # <p>Occurs when a conflict with a previous successful write is detected. This generally occurs
    #       when the previous write did not have time to propagate to the host serving the current
    #       request. A retry (with appropriate backoff logic) is the recommended response to this
    #       exception.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The identifier of the resource that the exception applies to.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The type of the resource that the exception applies to.</p>
    #
    #   @return [String]
    #
    ConflictException = ::Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Defines a cost object.</p>
    #
    # @!attribute amount
    #   <p>The cost amount.</p>
    #
    #   @return [Float]
    #
    # @!attribute currency
    #   <p>The cost currency, for example <code>USD</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute frequency
    #   <p>The cost frequency.</p>
    #
    #   Enum, one of: ["Hourly", "Daily", "Monthly", "Yearly"]
    #
    #   @return [String]
    #
    Cost = ::Struct.new(
      :amount,
      :currency,
      :frequency,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.amount ||= 0
      end
    end

    # Includes enum constants for CostFrequency
    #
    module CostFrequency
      # No documentation available.
      #
      HOURLY = "Hourly"

      # No documentation available.
      #
      DAILY = "Daily"

      # No documentation available.
      #
      MONTHLY = "Monthly"

      # No documentation available.
      #
      YEARLY = "Yearly"
    end

    # @!attribute name
    #   <p>The name for the application.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The optional description for an app.</p>
    #
    #   @return [String]
    #
    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the resiliency policy. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:resiliency-policy/<code>policy-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags assigned to the resource. A tag is a label that you assign to an Amazon Web Services resource.
    #   Each tag consists of a key/value pair.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute client_token
    #   <p>Used for an idempotency token. A client token is a unique, case-sensitive string of up to 64 ASCII characters.
    #   You should not reuse the same client token for other API requests.</p>
    #
    #   @return [String]
    #
    # @!attribute assessment_schedule
    #   <p>
    #         Assessment execution schedule with 'Daily' or 'Disabled' values.
    #       </p>
    #
    #   Enum, one of: ["Disabled", "Daily"]
    #
    #   @return [String]
    #
    CreateAppInput = ::Struct.new(
      :name,
      :description,
      :policy_arn,
      :tags,
      :client_token,
      :assessment_schedule,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Resiliencehub::Types::CreateAppInput "\
          "name=#{name || 'nil'}, "\
          "description=#{description || 'nil'}, "\
          "policy_arn=#{policy_arn || 'nil'}, "\
          "tags=\"[SENSITIVE]\", "\
          "client_token=#{client_token || 'nil'}, "\
          "assessment_schedule=#{assessment_schedule || 'nil'}>"
      end
    end

    # @!attribute app
    #   <p>The created application returned as an object with details including compliance status,
    #         creation time, description, resiliency score, and more.</p>
    #
    #   @return [App]
    #
    CreateAppOutput = ::Struct.new(
      :app,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute recommendation_ids
    #   <p>Identifiers for the recommendations used to create a recommendation template.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute format
    #   <p>The format for the recommendation template.</p>
    #            <dl>
    #               <dt>CfnJson</dt>
    #               <dd>
    #                  <p>The template is CloudFormation JSON.</p>
    #               </dd>
    #               <dt>CfnYaml</dt>
    #               <dd>
    #                  <p>The template is CloudFormation YAML.</p>
    #               </dd>
    #            </dl>
    #
    #   Enum, one of: ["CfnYaml", "CfnJson"]
    #
    #   @return [String]
    #
    # @!attribute recommendation_types
    #   <p>An array of strings that specify the recommendation template type or types.</p>
    #            <dl>
    #               <dt>Alarm</dt>
    #               <dd>
    #                  <p>The template is an <a>AlarmRecommendation</a> template.</p>
    #               </dd>
    #               <dt>Sop</dt>
    #               <dd>
    #                  <p>The template is a <a>SopRecommendation</a> template.</p>
    #               </dd>
    #               <dt>Test</dt>
    #               <dd>
    #                  <p>The template is a <a>TestRecommendation</a> template.</p>
    #               </dd>
    #            </dl>
    #
    #   @return [Array<String>]
    #
    # @!attribute assessment_arn
    #   <p>The Amazon Resource Name (ARN) of the assessment. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app-assessment/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name for the recommendation template.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>Used for an idempotency token. A client token is a unique, case-sensitive string of up to 64 ASCII characters.
    #   You should not reuse the same client token for other API requests.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags assigned to the resource. A tag is a label that you assign to an Amazon Web Services resource.
    #   Each tag consists of a key/value pair.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute bucket_name
    #   <p>The name of the Amazon S3 bucket that will contain the recommendation template.</p>
    #
    #   @return [String]
    #
    CreateRecommendationTemplateInput = ::Struct.new(
      :recommendation_ids,
      :format,
      :recommendation_types,
      :assessment_arn,
      :name,
      :client_token,
      :tags,
      :bucket_name,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Resiliencehub::Types::CreateRecommendationTemplateInput "\
          "recommendation_ids=#{recommendation_ids || 'nil'}, "\
          "format=#{format || 'nil'}, "\
          "recommendation_types=#{recommendation_types || 'nil'}, "\
          "assessment_arn=#{assessment_arn || 'nil'}, "\
          "name=#{name || 'nil'}, "\
          "client_token=#{client_token || 'nil'}, "\
          "tags=\"[SENSITIVE]\", "\
          "bucket_name=#{bucket_name || 'nil'}>"
      end
    end

    # @!attribute recommendation_template
    #   <p>The newly created recommendation template, returned as an object. This object includes the
    #         template's name, format, status, tags, Amazon S3 bucket location, and more.</p>
    #
    #   @return [RecommendationTemplate]
    #
    CreateRecommendationTemplateOutput = ::Struct.new(
      :recommendation_template,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy_name
    #   <p>The name of the policy</p>
    #
    #   @return [String]
    #
    # @!attribute policy_description
    #   <p>The description for the policy.</p>
    #
    #   @return [String]
    #
    # @!attribute data_location_constraint
    #   <p>Specifies a high-level geographical location constraint for where your resilience policy
    #         data can be stored.</p>
    #
    #   Enum, one of: ["AnyLocation", "SameContinent", "SameCountry"]
    #
    #   @return [String]
    #
    # @!attribute tier
    #   <p>The tier for this resiliency policy, ranging from the highest severity
    #           (<code>MissionCritical</code>) to lowest (<code>NonCritical</code>).</p>
    #
    #   Enum, one of: ["MissionCritical", "Critical", "Important", "CoreServices", "NonCritical"]
    #
    #   @return [String]
    #
    # @!attribute policy
    #   <p>The type of resiliency policy to be created, including the recovery time objective (RTO)
    #         and recovery point objective (RPO) in seconds.</p>
    #
    #   @return [Hash<String, FailurePolicy>]
    #
    # @!attribute client_token
    #   <p>Used for an idempotency token. A client token is a unique, case-sensitive string of up to 64 ASCII characters.
    #   You should not reuse the same client token for other API requests.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags assigned to the resource. A tag is a label that you assign to an Amazon Web Services resource.
    #   Each tag consists of a key/value pair.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateResiliencyPolicyInput = ::Struct.new(
      :policy_name,
      :policy_description,
      :data_location_constraint,
      :tier,
      :policy,
      :client_token,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Resiliencehub::Types::CreateResiliencyPolicyInput "\
          "policy_name=#{policy_name || 'nil'}, "\
          "policy_description=#{policy_description || 'nil'}, "\
          "data_location_constraint=#{data_location_constraint || 'nil'}, "\
          "tier=#{tier || 'nil'}, "\
          "policy=#{policy || 'nil'}, "\
          "client_token=#{client_token || 'nil'}, "\
          "tags=\"[SENSITIVE]\">"
      end
    end

    # @!attribute policy
    #   <p>The type of resiliency policy that was created, including the recovery time objective
    #         (RTO) and recovery point objective (RPO) in seconds.</p>
    #
    #   @return [ResiliencyPolicy]
    #
    CreateResiliencyPolicyOutput = ::Struct.new(
      :policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DataLocationConstraint
    #
    module DataLocationConstraint
      # No documentation available.
      #
      ANY_LOCATION = "AnyLocation"

      # No documentation available.
      #
      SAME_CONTINENT = "SameContinent"

      # No documentation available.
      #
      SAME_COUNTRY = "SameCountry"
    end

    # @!attribute assessment_arn
    #   <p>The Amazon Resource Name (ARN) of the assessment. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app-assessment/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>Used for an idempotency token. A client token is a unique, case-sensitive string of up to 64 ASCII characters.
    #   You should not reuse the same client token for other API requests.</p>
    #
    #   @return [String]
    #
    DeleteAppAssessmentInput = ::Struct.new(
      :assessment_arn,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute assessment_arn
    #   <p>The Amazon Resource Name (ARN) of the assessment. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app-assessment/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute assessment_status
    #   <p>The current status of the assessment for the resiliency policy.</p>
    #
    #   Enum, one of: ["Pending", "InProgress", "Failed", "Success"]
    #
    #   @return [String]
    #
    DeleteAppAssessmentOutput = ::Struct.new(
      :assessment_arn,
      :assessment_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_arn
    #   <p>The Amazon Resource Name (ARN) of the application. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute force_delete
    #   <p>A boolean option to force the deletion of a Resilience Hub application. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute client_token
    #   <p>Used for an idempotency token. A client token is a unique, case-sensitive string of up to 64 ASCII characters.
    #   You should not reuse the same client token for other API requests.</p>
    #
    #   @return [String]
    #
    DeleteAppInput = ::Struct.new(
      :app_arn,
      :force_delete,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_arn
    #   <p>The Amazon Resource Name (ARN) of the application. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    #   @return [String]
    #
    DeleteAppOutput = ::Struct.new(
      :app_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute recommendation_template_arn
    #   <p>The Amazon Resource Name (ARN) for a recommendation template.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>Used for an idempotency token. A client token is a unique, case-sensitive string of up to 64 ASCII characters.
    #   You should not reuse the same client token for other API requests.</p>
    #
    #   @return [String]
    #
    DeleteRecommendationTemplateInput = ::Struct.new(
      :recommendation_template_arn,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute recommendation_template_arn
    #   <p>The Amazon Resource Name (ARN) for a recommendation template.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the action.</p>
    #
    #   Enum, one of: ["Pending", "InProgress", "Failed", "Success"]
    #
    #   @return [String]
    #
    DeleteRecommendationTemplateOutput = ::Struct.new(
      :recommendation_template_arn,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the resiliency policy. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:resiliency-policy/<code>policy-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>Used for an idempotency token. A client token is a unique, case-sensitive string of up to 64 ASCII characters.
    #   You should not reuse the same client token for other API requests.</p>
    #
    #   @return [String]
    #
    DeleteResiliencyPolicyInput = ::Struct.new(
      :policy_arn,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the resiliency policy. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:resiliency-policy/<code>policy-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    #   @return [String]
    #
    DeleteResiliencyPolicyOutput = ::Struct.new(
      :policy_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute assessment_arn
    #   <p>The Amazon Resource Name (ARN) of the assessment. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app-assessment/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    #   @return [String]
    #
    DescribeAppAssessmentInput = ::Struct.new(
      :assessment_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute assessment
    #   <p>The assessment for an AWS Resilience Hub application, returned as an object. This object
    #         includes Amazon Resource Names (ARNs), compliance information, compliance status, cost,
    #         messages, resiliency scores, and more.</p>
    #
    #   @return [AppAssessment]
    #
    DescribeAppAssessmentOutput = ::Struct.new(
      :assessment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_arn
    #   <p>The Amazon Resource Name (ARN) of the application. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    #   @return [String]
    #
    DescribeAppInput = ::Struct.new(
      :app_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app
    #   <p>The specified application, returned as an object with details including compliance status,
    #         creation time, description, resiliency score, and more.</p>
    #
    #   @return [App]
    #
    DescribeAppOutput = ::Struct.new(
      :app,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_arn
    #   <p>The Amazon Resource Name (ARN) of the application. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute app_version
    #   <p>The version of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute resolution_id
    #   <p>The identifier for a specific resolution.</p>
    #
    #   @return [String]
    #
    DescribeAppVersionResourcesResolutionStatusInput = ::Struct.new(
      :app_arn,
      :app_version,
      :resolution_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_arn
    #   <p>The Amazon Resource Name (ARN) of the application. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute app_version
    #   <p>The version of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute resolution_id
    #   <p>The identifier for a specific resolution.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the action.</p>
    #
    #   Enum, one of: ["Pending", "InProgress", "Failed", "Success"]
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>The returned error message for the request.</p>
    #
    #   @return [String]
    #
    DescribeAppVersionResourcesResolutionStatusOutput = ::Struct.new(
      :app_arn,
      :app_version,
      :resolution_id,
      :status,
      :error_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_arn
    #   <p>The Amazon Resource Name (ARN) of the application. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute app_version
    #   <p>The version of the application.</p>
    #
    #   @return [String]
    #
    DescribeAppVersionTemplateInput = ::Struct.new(
      :app_arn,
      :app_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_arn
    #   <p>The Amazon Resource Name (ARN) of the application. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute app_version
    #   <p>The version of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute app_template_body
    #   <p>The body of the template.</p>
    #
    #   @return [String]
    #
    DescribeAppVersionTemplateOutput = ::Struct.new(
      :app_arn,
      :app_version,
      :app_template_body,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_arn
    #   <p>The Amazon Resource Name (ARN) of the application. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    #   @return [String]
    #
    DescribeDraftAppVersionResourcesImportStatusInput = ::Struct.new(
      :app_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_arn
    #   <p>The Amazon Resource Name (ARN) of the application. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute app_version
    #   <p>The version of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the action.</p>
    #
    #   Enum, one of: ["Pending", "InProgress", "Failed", "Success"]
    #
    #   @return [String]
    #
    # @!attribute status_change_time
    #   <p>The timestamp for when the status last changed.</p>
    #
    #   @return [Time]
    #
    # @!attribute error_message
    #   <p>The returned error message for the request.</p>
    #
    #   @return [String]
    #
    DescribeDraftAppVersionResourcesImportStatusOutput = ::Struct.new(
      :app_arn,
      :app_version,
      :status,
      :status_change_time,
      :error_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the resiliency policy. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:resiliency-policy/<code>policy-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    #   @return [String]
    #
    DescribeResiliencyPolicyInput = ::Struct.new(
      :policy_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy
    #   <p>Information about the specific resiliency policy, returned as an object. This object
    #         includes creation time, data location constraints, its name, description, tags, the recovery
    #         time objective (RTO) and recovery point objective (RPO) in seconds, and more.</p>
    #
    #   @return [ResiliencyPolicy]
    #
    DescribeResiliencyPolicyOutput = ::Struct.new(
      :policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Defines the compliance against the resiliency policy for a disruption.</p>
    #
    # @!attribute achievable_rto_in_secs
    #   <p>The Recovery Time Objective (RTO) that is achievable, in seconds</p>
    #
    #   @return [Integer]
    #
    # @!attribute current_rto_in_secs
    #   <p>The current RTO, in seconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute rto_reference_id
    #   <p>The RTO reference identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute rto_description
    #   <p>The RTO description.</p>
    #
    #   @return [String]
    #
    # @!attribute current_rpo_in_secs
    #   <p>The current RPO, in seconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute rpo_reference_id
    #   <p>The RPO reference identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute rpo_description
    #   <p>The RPO description.</p>
    #
    #   @return [String]
    #
    # @!attribute compliance_status
    #   <p>The current status of compliance for the resiliency policy.</p>
    #
    #   Enum, one of: ["PolicyBreached", "PolicyMet"]
    #
    #   @return [String]
    #
    # @!attribute achievable_rpo_in_secs
    #   <p>The Recovery Point Objective (RPO) that is achievable, in seconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute message
    #   <p>The disruption compliance message.</p>
    #
    #   @return [String]
    #
    DisruptionCompliance = ::Struct.new(
      :achievable_rto_in_secs,
      :current_rto_in_secs,
      :rto_reference_id,
      :rto_description,
      :current_rpo_in_secs,
      :rpo_reference_id,
      :rpo_description,
      :compliance_status,
      :achievable_rpo_in_secs,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.achievable_rto_in_secs ||= 0
        self.current_rto_in_secs ||= 0
        self.current_rpo_in_secs ||= 0
        self.achievable_rpo_in_secs ||= 0
      end
    end

    # Includes enum constants for DisruptionType
    #
    module DisruptionType
      # No documentation available.
      #
      SOFTWARE = "Software"

      # No documentation available.
      #
      HARDWARE = "Hardware"

      # No documentation available.
      #
      AZ = "AZ"

      # No documentation available.
      #
      REGION = "Region"
    end

    # Includes enum constants for EstimatedCostTier
    #
    module EstimatedCostTier
      # No documentation available.
      #
      L1 = "L1"

      # No documentation available.
      #
      L2 = "L2"

      # No documentation available.
      #
      L3 = "L3"

      # No documentation available.
      #
      L4 = "L4"
    end

    # <p>Defines a failure policy.</p>
    #
    # @!attribute rto_in_secs
    #   <p>The Recovery Time Objective (RTO), in seconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute rpo_in_secs
    #   <p>The Recovery Point Objective (RPO), in seconds.</p>
    #
    #   @return [Integer]
    #
    FailurePolicy = ::Struct.new(
      :rto_in_secs,
      :rpo_in_secs,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.rto_in_secs ||= 0
        self.rpo_in_secs ||= 0
      end
    end

    # Includes enum constants for HaArchitecture
    #
    module HaArchitecture
      # No documentation available.
      #
      MULTI_SITE = "MultiSite"

      # No documentation available.
      #
      WARM_STANDBY = "WarmStandby"

      # No documentation available.
      #
      PILOT_LIGHT = "PilotLight"

      # No documentation available.
      #
      BACKUP_AND_RESTORE = "BackupAndRestore"

      # No documentation available.
      #
      NO_RECOVERY_PLAN = "NoRecoveryPlan"
    end

    # @!attribute app_arn
    #   <p>The Amazon Resource Name (ARN) of the application. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute source_arns
    #   <p>The Amazon Resource Names (ARNs) for the resources that you want to import.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute terraform_sources
    #   <p>
    #         A list of terraform file s3 URLs you need to import.
    #       </p>
    #
    #   @return [Array<TerraformSource>]
    #
    ImportResourcesToDraftAppVersionInput = ::Struct.new(
      :app_arn,
      :source_arns,
      :terraform_sources,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_arn
    #   <p>The Amazon Resource Name (ARN) of the application. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute app_version
    #   <p>The version of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute source_arns
    #   <p>The Amazon Resource Names (ARNs) for the resources that you imported.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute status
    #   <p>The status of the action.</p>
    #
    #   Enum, one of: ["Pending", "InProgress", "Failed", "Success"]
    #
    #   @return [String]
    #
    # @!attribute terraform_sources
    #   <p>
    #         A list of terraform file s3 URLs you need to import.
    #       </p>
    #
    #   @return [Array<TerraformSource>]
    #
    ImportResourcesToDraftAppVersionOutput = ::Struct.new(
      :app_arn,
      :app_version,
      :source_arns,
      :status,
      :terraform_sources,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception occurs when there is an internal failure in the AWS Resilience Hub
    #       service.</p>
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

    # @!attribute assessment_arn
    #   <p>The Amazon Resource Name (ARN) of the assessment. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app-assessment/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>Null, or the token from a previous call to get the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to include in the response. If more results exist than the specified
    #   <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>
    #
    #   @return [Integer]
    #
    ListAlarmRecommendationsInput = ::Struct.new(
      :assessment_arn,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute alarm_recommendations
    #   <p>The alarm recommendations for an AWS Resilience Hub application, returned as an object. This
    #         object includes application component names, descriptions, information about whether a
    #         recommendation has already been implemented or not, prerequisites, and more.</p>
    #
    #   @return [Array<AlarmRecommendation>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no more results.</p>
    #
    #   @return [String]
    #
    ListAlarmRecommendationsOutput = ::Struct.new(
      :alarm_recommendations,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_arn
    #   <p>The Amazon Resource Name (ARN) of the application. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute assessment_name
    #   <p>The name for the assessment.</p>
    #
    #   @return [String]
    #
    # @!attribute assessment_status
    #   <p>The current status of the assessment for the resiliency policy.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute compliance_status
    #   <p>The current status of compliance for the resiliency policy.</p>
    #
    #   Enum, one of: ["PolicyBreached", "PolicyMet"]
    #
    #   @return [String]
    #
    # @!attribute invoker
    #   <p>Specifies the entity that invoked a specific assessment, either a <code>User</code> or the
    #           <code>System</code>.</p>
    #
    #   Enum, one of: ["User", "System"]
    #
    #   @return [String]
    #
    # @!attribute reverse_order
    #   <p>The default is to sort by ascending <b>startTime</b>.
    #   To sort by descending <b>startTime</b>, set reverseOrder to <code>true</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute next_token
    #   <p>Null, or the token from a previous call to get the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to include in the response. If more results exist than the specified
    #   <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>
    #
    #   @return [Integer]
    #
    ListAppAssessmentsInput = ::Struct.new(
      :app_arn,
      :assessment_name,
      :assessment_status,
      :compliance_status,
      :invoker,
      :reverse_order,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no more results.</p>
    #
    #   @return [String]
    #
    # @!attribute assessment_summaries
    #   <p>The summaries for the specified assessments, returned as an object. This object includes
    #         application versions, associated Amazon Resource Numbers (ARNs), cost, messages, resiliency
    #         scores, and more.</p>
    #
    #   @return [Array<AppAssessmentSummary>]
    #
    ListAppAssessmentsOutput = ::Struct.new(
      :next_token,
      :assessment_summaries,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>Null, or the token from a previous call to get the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to include in the response. If more results exist than the specified
    #   <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>
    #
    #   @return [Integer]
    #
    # @!attribute assessment_arn
    #   <p>The Amazon Resource Name (ARN) of the assessment. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app-assessment/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    #   @return [String]
    #
    ListAppComponentCompliancesInput = ::Struct.new(
      :next_token,
      :max_results,
      :assessment_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute component_compliances
    #   <p>The compliances for an AWS Resilience Hub application component, returned as an object. This
    #         object contains component names, compliances, costs, resiliency scores, outage scores, and
    #         more.</p>
    #
    #   @return [Array<AppComponentCompliance>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no more results.</p>
    #
    #   @return [String]
    #
    ListAppComponentCompliancesOutput = ::Struct.new(
      :component_compliances,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute assessment_arn
    #   <p>The Amazon Resource Name (ARN) of the assessment. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app-assessment/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>Null, or the token from a previous call to get the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to include in the response. If more results exist than the specified
    #   <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>
    #
    #   @return [Integer]
    #
    ListAppComponentRecommendationsInput = ::Struct.new(
      :assessment_arn,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute component_recommendations
    #   <p>The recommendations for an Resilience Hub application component, returned as an object. This
    #         object contains component names, configuration recommendations, and recommendation
    #         statuses.</p>
    #
    #   @return [Array<ComponentRecommendation>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no more results.</p>
    #
    #   @return [String]
    #
    ListAppComponentRecommendationsOutput = ::Struct.new(
      :component_recommendations,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_arn
    #   <p>The Amazon Resource Name (ARN) of the application. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute app_version
    #   <p>The version of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>Null, or the token from a previous call to get the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to include in the response. If more results exist than the specified
    #   <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>
    #
    #   @return [Integer]
    #
    ListAppVersionResourceMappingsInput = ::Struct.new(
      :app_arn,
      :app_version,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_mappings
    #   <p>Mappings used to map logical resources from the template to physical resources. You can
    #         use the mapping type <code>CFN_STACK</code> if the application template uses
    #         a logical stack name. Or you can map individual resources by using the mapping type
    #         <code>RESOURCE</code>. We recommend using the mapping type <code>CFN_STACK</code> if the
    #         application is backed by a CloudFormation stack.</p>
    #
    #   @return [Array<ResourceMapping>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no more results.</p>
    #
    #   @return [String]
    #
    ListAppVersionResourceMappingsOutput = ::Struct.new(
      :resource_mappings,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_arn
    #   <p>The Amazon Resource Name (ARN) of the application. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute app_version
    #   <p>The version of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute resolution_id
    #   <p>The identifier for a specific resolution.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>Null, or the token from a previous call to get the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to include in the response. If more results exist than the specified
    #   <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>
    #
    #   @return [Integer]
    #
    ListAppVersionResourcesInput = ::Struct.new(
      :app_arn,
      :app_version,
      :resolution_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute physical_resources
    #   <p>The physical resources in the application version.</p>
    #
    #   @return [Array<PhysicalResource>]
    #
    # @!attribute resolution_id
    #   <p>The identifier for a specific resolution.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no more results.</p>
    #
    #   @return [String]
    #
    ListAppVersionResourcesOutput = ::Struct.new(
      :physical_resources,
      :resolution_id,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_arn
    #   <p>The Amazon Resource Name (ARN) of the application. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>Null, or the token from a previous call to get the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to include in the response. If more results exist than the specified
    #   <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>
    #
    #   @return [Integer]
    #
    ListAppVersionsInput = ::Struct.new(
      :app_arn,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_versions
    #   <p>The version of the application.</p>
    #
    #   @return [Array<AppVersionSummary>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no more results.</p>
    #
    #   @return [String]
    #
    ListAppVersionsOutput = ::Struct.new(
      :app_versions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>Null, or the token from a previous call to get the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to include in the response. If more results exist than the specified
    #   <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>
    #
    #   @return [Integer]
    #
    # @!attribute name
    #   <p>The name for the one of the listed applications.</p>
    #
    #   @return [String]
    #
    # @!attribute app_arn
    #   <p>The Amazon Resource Name (ARN) of the application. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    #   @return [String]
    #
    ListAppsInput = ::Struct.new(
      :next_token,
      :max_results,
      :name,
      :app_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_summaries
    #   <p>Summaries for the Resilience Hub application.</p>
    #
    #   @return [Array<AppSummary>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no more results.</p>
    #
    #   @return [String]
    #
    ListAppsOutput = ::Struct.new(
      :app_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute assessment_arn
    #   <p>The Amazon Resource Name (ARN) of the assessment. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app-assessment/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute reverse_order
    #   <p>The default is to sort by ascending <b>startTime</b>.
    #   To sort by descending <b>startTime</b>, set reverseOrder to <code>true</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute status
    #   <p>The status of the action.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute recommendation_template_arn
    #   <p>The Amazon Resource Name (ARN) for a recommendation template.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name for one of the listed recommendation templates.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>Null, or the token from a previous call to get the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to include in the response. If more results exist than the specified
    #   <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>
    #
    #   @return [Integer]
    #
    ListRecommendationTemplatesInput = ::Struct.new(
      :assessment_arn,
      :reverse_order,
      :status,
      :recommendation_template_arn,
      :name,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no more results.</p>
    #
    #   @return [String]
    #
    # @!attribute recommendation_templates
    #   <p>The recommendation templates for the Resilience Hub applications.</p>
    #
    #   @return [Array<RecommendationTemplate>]
    #
    ListRecommendationTemplatesOutput = ::Struct.new(
      :next_token,
      :recommendation_templates,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy_name
    #   <p>The name of the policy</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>Null, or the token from a previous call to get the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to include in the response. If more results exist than the specified
    #   <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>
    #
    #   @return [Integer]
    #
    ListResiliencyPoliciesInput = ::Struct.new(
      :policy_name,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resiliency_policies
    #   <p>The resiliency policies for the Resilience Hub applications.</p>
    #
    #   @return [Array<ResiliencyPolicy>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no more results.</p>
    #
    #   @return [String]
    #
    ListResiliencyPoliciesOutput = ::Struct.new(
      :resiliency_policies,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>Null, or the token from a previous call to get the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to include in the response. If more results exist than the specified
    #   <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>
    #
    #   @return [Integer]
    #
    # @!attribute assessment_arn
    #   <p>The Amazon Resource Name (ARN) of the assessment. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app-assessment/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    #   @return [String]
    #
    ListSopRecommendationsInput = ::Struct.new(
      :next_token,
      :max_results,
      :assessment_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no more results.</p>
    #
    #   @return [String]
    #
    # @!attribute sop_recommendations
    #   <p>The standard operating procedure (SOP) recommendations for the Resilience Hub
    #         applications.</p>
    #
    #   @return [Array<SopRecommendation>]
    #
    ListSopRecommendationsOutput = ::Struct.new(
      :next_token,
      :sop_recommendations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>Null, or the token from a previous call to get the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to include in the response. If more results exist than the specified
    #   <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>
    #
    #   @return [Integer]
    #
    ListSuggestedResiliencyPoliciesInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resiliency_policies
    #   <p>The suggested resiliency policies for the Resilience Hub applications.</p>
    #
    #   @return [Array<ResiliencyPolicy>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no more results.</p>
    #
    #   @return [String]
    #
    ListSuggestedResiliencyPoliciesOutput = ::Struct.new(
      :resiliency_policies,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) for a specific resource in your Resilience Hub
    #         application.</p>
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
    #   <p>The tags assigned to the resource. A tag is a label that you assign to an Amazon Web Services resource.
    #   Each tag consists of a key/value pair.</p>
    #
    #   @return [Hash<String, String>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Resiliencehub::Types::ListTagsForResourceOutput "\
          "tags=\"[SENSITIVE]\">"
      end
    end

    # @!attribute next_token
    #   <p>Null, or the token from a previous call to get the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to include in the response. If more results exist than the specified
    #   <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>
    #
    #   @return [Integer]
    #
    # @!attribute assessment_arn
    #   <p>The Amazon Resource Name (ARN) of the assessment. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app-assessment/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    #   @return [String]
    #
    ListTestRecommendationsInput = ::Struct.new(
      :next_token,
      :max_results,
      :assessment_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no more results.</p>
    #
    #   @return [String]
    #
    # @!attribute test_recommendations
    #   <p>The test recommendations for the Resilience Hub application.</p>
    #
    #   @return [Array<TestRecommendation>]
    #
    ListTestRecommendationsOutput = ::Struct.new(
      :next_token,
      :test_recommendations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_arn
    #   <p>The Amazon Resource Name (ARN) of the application. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute app_version
    #   <p>The version of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute resolution_id
    #   <p>The identifier for a specific resolution.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>Null, or the token from a previous call to get the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to include in the response. If more results exist than the specified
    #   <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>
    #
    #   @return [Integer]
    #
    ListUnsupportedAppVersionResourcesInput = ::Struct.new(
      :app_arn,
      :app_version,
      :resolution_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute unsupported_resources
    #   <p>The unsupported resources for the application.</p>
    #
    #   @return [Array<UnsupportedResource>]
    #
    # @!attribute resolution_id
    #   <p>The identifier for a specific resolution.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no more results.</p>
    #
    #   @return [String]
    #
    ListUnsupportedAppVersionResourcesOutput = ::Struct.new(
      :unsupported_resources,
      :resolution_id,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Defines a logical resource identifier.</p>
    #
    # @!attribute identifier
    #   <p>The identifier of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute logical_stack_name
    #   <p>The name of the CloudFormation stack this resource belongs to.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_group_name
    #   <p>The name of the resource group that this resource belongs to.</p>
    #
    #   @return [String]
    #
    # @!attribute terraform_source_name
    #   <p>
    #         The name of the Terraform S3 state file this resource belongs to.
    #       </p>
    #
    #   @return [String]
    #
    LogicalResourceId = ::Struct.new(
      :identifier,
      :logical_stack_name,
      :resource_group_name,
      :terraform_source_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PhysicalIdentifierType
    #
    module PhysicalIdentifierType
      # No documentation available.
      #
      ARN = "Arn"

      # No documentation available.
      #
      NATIVE = "Native"
    end

    # <p>Defines a physical resource. A physical resource is a resource that exists in your
    #       account. It can be identified using an Amazon Resource Name (ARN) or a Resilience Hub-native
    #       identifier. </p>
    #
    # @!attribute resource_name
    #   <p>The name of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute logical_resource_id
    #   <p>The logical identifier of the resource.</p>
    #
    #   @return [LogicalResourceId]
    #
    # @!attribute physical_resource_id
    #   <p>The physical identifier of the resource.</p>
    #
    #   @return [PhysicalResourceId]
    #
    # @!attribute resource_type
    #   <p>The type of resource.</p>
    #
    #   @return [String]
    #
    # @!attribute app_components
    #   <p>The application components that belong to this resource.</p>
    #
    #   @return [Array<AppComponent>]
    #
    PhysicalResource = ::Struct.new(
      :resource_name,
      :logical_resource_id,
      :physical_resource_id,
      :resource_type,
      :app_components,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Defines a physical resource identifier.</p>
    #
    # @!attribute identifier
    #   <p>The identifier of the physical resource.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>Specifies the type of physical resource identifier.</p>
    #            <dl>
    #               <dt>Arn</dt>
    #               <dd>
    #                  <p>The resource identifier is an Amazon Resource Name (ARN) .</p>
    #               </dd>
    #               <dt>Native</dt>
    #               <dd>
    #                  <p>The resource identifier is a Resilience Hub-native identifier.</p>
    #               </dd>
    #            </dl>
    #
    #   Enum, one of: ["Arn", "Native"]
    #
    #   @return [String]
    #
    # @!attribute aws_region
    #   <p>The Amazon Web Services Region that the physical resource is located in.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_account_id
    #   <p>The Amazon Web Services account that owns the physical resource.</p>
    #
    #   @return [String]
    #
    PhysicalResourceId = ::Struct.new(
      :identifier,
      :type,
      :aws_region,
      :aws_account_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_arn
    #   <p>The Amazon Resource Name (ARN) of the application. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    #   @return [String]
    #
    PublishAppVersionInput = ::Struct.new(
      :app_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_arn
    #   <p>The Amazon Resource Name (ARN) of the application. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute app_version
    #   <p>The version of the application.</p>
    #
    #   @return [String]
    #
    PublishAppVersionOutput = ::Struct.new(
      :app_arn,
      :app_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_arn
    #   <p>The Amazon Resource Name (ARN) of the application. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute app_template_body
    #   <p>A JSON string that contains the body of the app template.</p>
    #
    #   @return [String]
    #
    PutDraftAppVersionTemplateInput = ::Struct.new(
      :app_arn,
      :app_template_body,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_arn
    #   <p>The Amazon Resource Name (ARN) of the application. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute app_version
    #   <p>The version of the application.</p>
    #
    #   @return [String]
    #
    PutDraftAppVersionTemplateOutput = ::Struct.new(
      :app_arn,
      :app_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RecommendationComplianceStatus
    #
    module RecommendationComplianceStatus
      # No documentation available.
      #
      BREACHED_UNATTAINABLE = "BreachedUnattainable"

      # No documentation available.
      #
      BREACHED_CAN_MEET = "BreachedCanMeet"

      # No documentation available.
      #
      MET_CAN_IMPROVE = "MetCanImprove"
    end

    # <p>Defines a disruption compliance recommendation.</p>
    #
    # @!attribute expected_compliance_status
    #   <p>The expected compliance status after applying the recommended configuration change.</p>
    #
    #   Enum, one of: ["PolicyBreached", "PolicyMet"]
    #
    #   @return [String]
    #
    # @!attribute expected_rto_in_secs
    #   <p>The expected RTO after applying the recommended configuration change.</p>
    #
    #   @return [Integer]
    #
    # @!attribute expected_rto_description
    #   <p>The expected Recovery Time Objective (RTO) description after applying the recommended
    #         configuration change.</p>
    #
    #   @return [String]
    #
    # @!attribute expected_rpo_in_secs
    #   <p>The expected RPO after applying the recommended configuration change.</p>
    #
    #   @return [Integer]
    #
    # @!attribute expected_rpo_description
    #   <p>The expected Recovery Point Objective (RPO) description after applying the recommended
    #         configuration change.</p>
    #
    #   @return [String]
    #
    RecommendationDisruptionCompliance = ::Struct.new(
      :expected_compliance_status,
      :expected_rto_in_secs,
      :expected_rto_description,
      :expected_rpo_in_secs,
      :expected_rpo_description,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.expected_rto_in_secs ||= 0
        self.expected_rpo_in_secs ||= 0
      end
    end

    # <p>Defines a recommendation.</p>
    #
    # @!attribute resource_id
    #   <p>The resource identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute target_account_id
    #   <p>The target account identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute target_region
    #   <p>The target region.</p>
    #
    #   @return [String]
    #
    # @!attribute already_implemented
    #   <p>Specifies if the recommendation has already been implemented.</p>
    #
    #   @return [Boolean]
    #
    RecommendationItem = ::Struct.new(
      :resource_id,
      :target_account_id,
      :target_region,
      :already_implemented,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Defines a recommendation template created with the <a>CreateRecommendationTemplate</a> action.</p>
    #
    # @!attribute templates_location
    #   <p>The file location of the template.</p>
    #
    #   @return [S3Location]
    #
    # @!attribute assessment_arn
    #   <p>The Amazon Resource Name (ARN) of the assessment. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app-assessment/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute app_arn
    #   <p>The Amazon Resource Name (ARN) of the application. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute recommendation_ids
    #   <p>Identifiers for the recommendations used in the recommendation template.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute recommendation_types
    #   <p>An array of strings that specify the recommendation template type or types.</p>
    #            <dl>
    #               <dt>Alarm</dt>
    #               <dd>
    #                  <p>The template is an <a>AlarmRecommendation</a> template.</p>
    #               </dd>
    #               <dt>Sop</dt>
    #               <dd>
    #                  <p>The template is a <a>SopRecommendation</a> template.</p>
    #               </dd>
    #               <dt>Test</dt>
    #               <dd>
    #                  <p>The template is a <a>TestRecommendation</a> template.</p>
    #               </dd>
    #            </dl>
    #
    #   @return [Array<String>]
    #
    # @!attribute format
    #   <p>The format of the recommendation template.</p>
    #            <dl>
    #               <dt>CfnJson</dt>
    #               <dd>
    #                  <p>The template is CloudFormation JSON.</p>
    #               </dd>
    #               <dt>CfnYaml</dt>
    #               <dd>
    #                  <p>The template is CloudFormation YAML.</p>
    #               </dd>
    #            </dl>
    #
    #   Enum, one of: ["CfnYaml", "CfnJson"]
    #
    #   @return [String]
    #
    # @!attribute recommendation_template_arn
    #   <p>The Amazon Resource Name (ARN) for the recommendation template.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The message for the recommendation template.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the action.</p>
    #
    #   Enum, one of: ["Pending", "InProgress", "Failed", "Success"]
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name for the recommendation template.</p>
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The start time for the action.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The end time for the action.</p>
    #
    #   @return [Time]
    #
    # @!attribute tags
    #   <p>The tags assigned to the resource. A tag is a label that you assign to an Amazon Web Services resource.
    #   Each tag consists of a key/value pair.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute needs_replacements
    #   <p>Indicates if replacements are needed.</p>
    #
    #   @return [Boolean]
    #
    RecommendationTemplate = ::Struct.new(
      :templates_location,
      :assessment_arn,
      :app_arn,
      :recommendation_ids,
      :recommendation_types,
      :format,
      :recommendation_template_arn,
      :message,
      :status,
      :name,
      :start_time,
      :end_time,
      :tags,
      :needs_replacements,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Resiliencehub::Types::RecommendationTemplate "\
          "templates_location=#{templates_location || 'nil'}, "\
          "assessment_arn=#{assessment_arn || 'nil'}, "\
          "app_arn=#{app_arn || 'nil'}, "\
          "recommendation_ids=#{recommendation_ids || 'nil'}, "\
          "recommendation_types=#{recommendation_types || 'nil'}, "\
          "format=#{format || 'nil'}, "\
          "recommendation_template_arn=#{recommendation_template_arn || 'nil'}, "\
          "message=#{message || 'nil'}, "\
          "status=#{status || 'nil'}, "\
          "name=#{name || 'nil'}, "\
          "start_time=#{start_time || 'nil'}, "\
          "end_time=#{end_time || 'nil'}, "\
          "tags=\"[SENSITIVE]\", "\
          "needs_replacements=#{needs_replacements || 'nil'}>"
      end
    end

    # Includes enum constants for RecommendationTemplateStatus
    #
    module RecommendationTemplateStatus
      # No documentation available.
      #
      PENDING = "Pending"

      # No documentation available.
      #
      IN_PROGRESS = "InProgress"

      # No documentation available.
      #
      FAILED = "Failed"

      # No documentation available.
      #
      SUCCESS = "Success"
    end

    # @!attribute app_arn
    #   <p>The Amazon Resource Name (ARN) of the application. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_names
    #   <p>The names of the resources to remove from the resource mappings.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute logical_stack_names
    #   <p>The names of the CloudFormation stacks to remove from the resource mappings.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute app_registry_app_names
    #   <p>The names of the registered applications to remove from the resource mappings.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute resource_group_names
    #   <p>The names of the resource groups to remove from the resource mappings.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute terraform_source_names
    #   <p>
    #
    #       </p>
    #
    #   @return [Array<String>]
    #
    RemoveDraftAppVersionResourceMappingsInput = ::Struct.new(
      :app_arn,
      :resource_names,
      :logical_stack_names,
      :app_registry_app_names,
      :resource_group_names,
      :terraform_source_names,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_arn
    #   <p>The Amazon Resource Name (ARN) of the application. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute app_version
    #   <p>The version of the application.</p>
    #
    #   @return [String]
    #
    RemoveDraftAppVersionResourceMappingsOutput = ::Struct.new(
      :app_arn,
      :app_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RenderRecommendationType
    #
    module RenderRecommendationType
      # No documentation available.
      #
      ALARM = "Alarm"

      # No documentation available.
      #
      SOP = "Sop"

      # No documentation available.
      #
      TEST = "Test"
    end

    # <p>Defines a resiliency policy.</p>
    #
    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the resiliency policy. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:resiliency-policy/<code>policy-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute policy_name
    #   <p>The name of the policy</p>
    #
    #   @return [String]
    #
    # @!attribute policy_description
    #   <p>The description for the policy.</p>
    #
    #   @return [String]
    #
    # @!attribute data_location_constraint
    #   <p>Specifies a high-level geographical location constraint for where your resilience policy
    #         data can be stored.</p>
    #
    #   Enum, one of: ["AnyLocation", "SameContinent", "SameCountry"]
    #
    #   @return [String]
    #
    # @!attribute tier
    #   <p>The tier for this resiliency policy, ranging from the highest severity
    #           (<code>MissionCritical</code>) to lowest (<code>NonCritical</code>).</p>
    #
    #   Enum, one of: ["MissionCritical", "Critical", "Important", "CoreServices", "NonCritical"]
    #
    #   @return [String]
    #
    # @!attribute estimated_cost_tier
    #   <p>Specifies the estimated cost tier of the resiliency policy.</p>
    #
    #   Enum, one of: ["L1", "L2", "L3", "L4"]
    #
    #   @return [String]
    #
    # @!attribute policy
    #   <p>The resiliency policy.</p>
    #
    #   @return [Hash<String, FailurePolicy>]
    #
    # @!attribute creation_time
    #   <p>The timestamp for when the resiliency policy was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute tags
    #   <p>The tags assigned to the resource. A tag is a label that you assign to an Amazon Web Services resource.
    #   Each tag consists of a key/value pair.</p>
    #
    #   @return [Hash<String, String>]
    #
    ResiliencyPolicy = ::Struct.new(
      :policy_arn,
      :policy_name,
      :policy_description,
      :data_location_constraint,
      :tier,
      :estimated_cost_tier,
      :policy,
      :creation_time,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Resiliencehub::Types::ResiliencyPolicy "\
          "policy_arn=#{policy_arn || 'nil'}, "\
          "policy_name=#{policy_name || 'nil'}, "\
          "policy_description=#{policy_description || 'nil'}, "\
          "data_location_constraint=#{data_location_constraint || 'nil'}, "\
          "tier=#{tier || 'nil'}, "\
          "estimated_cost_tier=#{estimated_cost_tier || 'nil'}, "\
          "policy=#{policy || 'nil'}, "\
          "creation_time=#{creation_time || 'nil'}, "\
          "tags=\"[SENSITIVE]\">"
      end
    end

    # Includes enum constants for ResiliencyPolicyTier
    #
    module ResiliencyPolicyTier
      # No documentation available.
      #
      MISSION_CRITICAL = "MissionCritical"

      # No documentation available.
      #
      CRITICAL = "Critical"

      # No documentation available.
      #
      IMPORTANT = "Important"

      # No documentation available.
      #
      CORE_SERVICES = "CoreServices"

      # No documentation available.
      #
      NON_CRITICAL = "NonCritical"
    end

    # <p>The overall resiliency score, returned as an object that includes the disruption score and
    #       outage score.</p>
    #
    # @!attribute score
    #   <p>The outage score for a valid key.</p>
    #
    #   @return [Float]
    #
    # @!attribute disruption_score
    #   <p>The disruption score for a valid key.</p>
    #
    #   @return [Hash<String, Float>]
    #
    ResiliencyScore = ::Struct.new(
      :score,
      :disruption_score,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.score ||= 0
      end
    end

    # @!attribute app_arn
    #   <p>The Amazon Resource Name (ARN) of the application. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute app_version
    #   <p>The version of the application.</p>
    #
    #   @return [String]
    #
    ResolveAppVersionResourcesInput = ::Struct.new(
      :app_arn,
      :app_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_arn
    #   <p>The Amazon Resource Name (ARN) of the application. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute app_version
    #   <p>The version of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute resolution_id
    #   <p>The identifier for a specific resolution.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the action.</p>
    #
    #   Enum, one of: ["Pending", "InProgress", "Failed", "Success"]
    #
    #   @return [String]
    #
    ResolveAppVersionResourcesOutput = ::Struct.new(
      :app_arn,
      :app_version,
      :resolution_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #       Defines application resource errors.
    #     </p>
    #
    # @!attribute logical_resource_id
    #   <p>
    #         This is the identifier of the resource.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute physical_resource_id
    #   <p>
    #         This is the identifier of the physical resource.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>
    #         This is the error message.
    #       </p>
    #
    #   @return [String]
    #
    ResourceError = ::Struct.new(
      :logical_resource_id,
      :physical_resource_id,
      :reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #       A list of errors retrieving an application's resources.
    #     </p>
    #
    # @!attribute resource_errors
    #   <p>
    #         A list of errors retrieving an application's resources.
    #       </p>
    #
    #   @return [Array<ResourceError>]
    #
    # @!attribute has_more_errors
    #   <p>
    #         This indicates if there are more errors not listed in the resourceErrors list.
    #       </p>
    #
    #   @return [Boolean]
    #
    ResourceErrorsDetails = ::Struct.new(
      :resource_errors,
      :has_more_errors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ResourceImportStatusType
    #
    module ResourceImportStatusType
      # No documentation available.
      #
      PENDING = "Pending"

      # No documentation available.
      #
      IN_PROGRESS = "InProgress"

      # No documentation available.
      #
      FAILED = "Failed"

      # No documentation available.
      #
      SUCCESS = "Success"
    end

    # <p>Defines a resource mapping.</p>
    #
    # @!attribute resource_name
    #   <p>The name of the resource this resource is mapped to.</p>
    #
    #   @return [String]
    #
    # @!attribute logical_stack_name
    #   <p>The name of the CloudFormation stack this resource is mapped to.</p>
    #
    #   @return [String]
    #
    # @!attribute app_registry_app_name
    #   <p>The name of the application this resource is mapped to.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_group_name
    #   <p>The name of the resource group this resource is mapped to.</p>
    #
    #   @return [String]
    #
    # @!attribute mapping_type
    #   <p>Specifies the type of resource mapping.</p>
    #            <dl>
    #               <dt>AppRegistryApp</dt>
    #               <dd>
    #                  <p>The resource is mapped to another application. The name of the application is
    #               contained in the <code>appRegistryAppName</code> property.</p>
    #               </dd>
    #               <dt>CfnStack</dt>
    #               <dd>
    #                  <p>The resource is mapped to a CloudFormation stack. The name of the CloudFormation stack is contained in
    #               the <code>logicalStackName</code> property.</p>
    #               </dd>
    #               <dt>Resource</dt>
    #               <dd>
    #                  <p>The resource is mapped to another resource. The name of the resource is contained in
    #               the <code>resourceName</code> property.</p>
    #               </dd>
    #               <dt>ResourceGroup</dt>
    #               <dd>
    #                  <p>The resource is mapped to a resource group. The name of the resource group is
    #               contained in the <code>resourceGroupName</code> property.</p>
    #               </dd>
    #            </dl>
    #
    #   Enum, one of: ["CfnStack", "Resource", "AppRegistryApp", "ResourceGroup", "Terraform"]
    #
    #   @return [String]
    #
    # @!attribute physical_resource_id
    #   <p>The identifier of this resource.</p>
    #
    #   @return [PhysicalResourceId]
    #
    # @!attribute terraform_source_name
    #   <p>
    #         The short name of the Terraform source.
    #       </p>
    #
    #   @return [String]
    #
    ResourceMapping = ::Struct.new(
      :resource_name,
      :logical_stack_name,
      :app_registry_app_name,
      :resource_group_name,
      :mapping_type,
      :physical_resource_id,
      :terraform_source_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ResourceMappingType
    #
    module ResourceMappingType
      # No documentation available.
      #
      CFN_STACK = "CfnStack"

      # No documentation available.
      #
      RESOURCE = "Resource"

      # No documentation available.
      #
      APP_REGISTRY_APP = "AppRegistryApp"

      # No documentation available.
      #
      RESOURCE_GROUP = "ResourceGroup"

      # No documentation available.
      #
      TERRAFORM = "Terraform"
    end

    # <p>The specified resource could not be found.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The identifier of the resource that the exception applies to.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The type of the resource that the exception applies to.</p>
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ResourceResolutionStatusType
    #
    module ResourceResolutionStatusType
      # No documentation available.
      #
      PENDING = "Pending"

      # No documentation available.
      #
      IN_PROGRESS = "InProgress"

      # No documentation available.
      #
      FAILED = "Failed"

      # No documentation available.
      #
      SUCCESS = "Success"
    end

    # <p>The location of the Amazon S3 bucket.</p>
    #
    # @!attribute bucket
    #   <p>The name of the Amazon S3 bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute prefix
    #   <p>The prefix for the Amazon S3 bucket.</p>
    #
    #   @return [String]
    #
    S3Location = ::Struct.new(
      :bucket,
      :prefix,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You have exceeded your service quota. To perform the requested action, remove some of the
    #       relevant resources, or use Service Quotas to request a service quota increase.</p>
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

    # <p>Defines a standard operating procedure (SOP) recommendation.</p>
    #
    # @!attribute service_type
    #   <p>The service type.</p>
    #
    #   Enum, one of: ["SSM"]
    #
    #   @return [String]
    #
    # @!attribute app_component_name
    #   <p>The application component name.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the SOP recommendation.</p>
    #
    #   @return [String]
    #
    # @!attribute recommendation_id
    #   <p>Identifier for the SOP recommendation.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the SOP recommendation.</p>
    #
    #   @return [String]
    #
    # @!attribute items
    #   <p>The recommendation items.</p>
    #
    #   @return [Array<RecommendationItem>]
    #
    # @!attribute reference_id
    #   <p>The reference identifier for the SOP recommendation.</p>
    #
    #   @return [String]
    #
    # @!attribute prerequisite
    #   <p>The prerequisite for the SOP recommendation.</p>
    #
    #   @return [String]
    #
    SopRecommendation = ::Struct.new(
      :service_type,
      :app_component_name,
      :description,
      :recommendation_id,
      :name,
      :items,
      :reference_id,
      :prerequisite,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SopServiceType
    #
    module SopServiceType
      # No documentation available.
      #
      SSM = "SSM"
    end

    # @!attribute app_arn
    #   <p>The Amazon Resource Name (ARN) of the application. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute app_version
    #   <p>The version of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute assessment_name
    #   <p>The name for the assessment.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>Used for an idempotency token. A client token is a unique, case-sensitive string of up to 64 ASCII characters.
    #   You should not reuse the same client token for other API requests.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags assigned to the resource. A tag is a label that you assign to an Amazon Web Services resource.
    #   Each tag consists of a key/value pair.</p>
    #
    #   @return [Hash<String, String>]
    #
    StartAppAssessmentInput = ::Struct.new(
      :app_arn,
      :app_version,
      :assessment_name,
      :client_token,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Resiliencehub::Types::StartAppAssessmentInput "\
          "app_arn=#{app_arn || 'nil'}, "\
          "app_version=#{app_version || 'nil'}, "\
          "assessment_name=#{assessment_name || 'nil'}, "\
          "client_token=#{client_token || 'nil'}, "\
          "tags=\"[SENSITIVE]\">"
      end
    end

    # @!attribute assessment
    #   <p>The assessment created.</p>
    #
    #   @return [AppAssessment]
    #
    StartAppAssessmentOutput = ::Struct.new(
      :assessment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource. </p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to assign to the resource. Each tag consists of a key/value pair.</p>
    #
    #   @return [Hash<String, String>]
    #
    TagResourceInput = ::Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Resiliencehub::Types::TagResourceInput "\
          "resource_arn=#{resource_arn || 'nil'}, "\
          "tags=\"[SENSITIVE]\">"
      end
    end

    TagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TemplateFormat
    #
    module TemplateFormat
      # No documentation available.
      #
      CFN_YAML = "CfnYaml"

      # No documentation available.
      #
      CFN_JSON = "CfnJson"
    end

    # <p>
    #       The Terraform s3 state file you need to import.
    #     </p>
    #
    # @!attribute s3_state_file_url
    #   <p>
    #         The Terraform s3 state file you need to import.
    #       </p>
    #
    #   @return [String]
    #
    TerraformSource = ::Struct.new(
      :s3_state_file_url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Defines a test recommendation.</p>
    #
    # @!attribute recommendation_id
    #   <p>Identifier for the test recommendation.</p>
    #
    #   @return [String]
    #
    # @!attribute reference_id
    #   <p>The reference identifier for the test recommendation.</p>
    #
    #   @return [String]
    #
    # @!attribute app_component_name
    #   <p>The name of the application component.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the test recommendation.</p>
    #
    #   @return [String]
    #
    # @!attribute intent
    #   <p>The intent of the test recommendation.</p>
    #
    #   @return [String]
    #
    # @!attribute risk
    #   <p>The level of risk for this test recommendation.</p>
    #
    #   Enum, one of: ["Small", "Medium", "High"]
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of test recommendation.</p>
    #
    #   Enum, one of: ["Software", "Hardware", "AZ", "Region"]
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description for the test recommendation.</p>
    #
    #   @return [String]
    #
    # @!attribute items
    #   <p>The test recommendation items.</p>
    #
    #   @return [Array<RecommendationItem>]
    #
    # @!attribute prerequisite
    #   <p>The prerequisite of the test recommendation.</p>
    #
    #   @return [String]
    #
    # @!attribute depends_on_alarms
    #   <p>
    #         A list of recommended alarms that are used in the test and must be exported before or with the test.
    #       </p>
    #
    #   @return [Array<String>]
    #
    TestRecommendation = ::Struct.new(
      :recommendation_id,
      :reference_id,
      :app_component_name,
      :name,
      :intent,
      :risk,
      :type,
      :description,
      :items,
      :prerequisite,
      :depends_on_alarms,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TestRisk
    #
    module TestRisk
      # No documentation available.
      #
      SMALL = "Small"

      # No documentation available.
      #
      MEDIUM = "Medium"

      # No documentation available.
      #
      HIGH = "High"
    end

    # Includes enum constants for TestType
    #
    module TestType
      # No documentation available.
      #
      SOFTWARE = "Software"

      # No documentation available.
      #
      HARDWARE = "Hardware"

      # No documentation available.
      #
      AZ = "AZ"

      # No documentation available.
      #
      REGION = "Region"
    end

    # <p>The limit on the number of requests per second was exceeded.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute retry_after_seconds
    #   <p>The number of seconds to wait before retrying the operation.</p>
    #
    #   @return [Integer]
    #
    ThrottlingException = ::Struct.new(
      :message,
      :retry_after_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Defines a resource that is not supported by Resilience Hub.</p>
    #
    # @!attribute logical_resource_id
    #   <p>The logical resource identifier for the unsupported resource.</p>
    #
    #   @return [LogicalResourceId]
    #
    # @!attribute physical_resource_id
    #   <p>The physical resource identifier for the unsupported resource.</p>
    #
    #   @return [PhysicalResourceId]
    #
    # @!attribute resource_type
    #   <p>The type of resource.</p>
    #
    #   @return [String]
    #
    UnsupportedResource = ::Struct.new(
      :logical_resource_id,
      :physical_resource_id,
      :resource_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource. </p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>The keys of the tags to remove.</p>
    #
    #   @return [Array<String>]
    #
    UntagResourceInput = ::Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Resiliencehub::Types::UntagResourceInput "\
          "resource_arn=#{resource_arn || 'nil'}, "\
          "tag_keys=\"[SENSITIVE]\">"
      end
    end

    UntagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_arn
    #   <p>The Amazon Resource Name (ARN) of the application. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The optional description for an app.</p>
    #
    #   @return [String]
    #
    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the resiliency policy. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:resiliency-policy/<code>policy-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute clear_resiliency_policy_arn
    #   <p>Specifies if the resiliency policy ARN should be cleared.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute assessment_schedule
    #   <p>
    #         Assessment execution schedule with 'Daily' or 'Disabled' values.
    #       </p>
    #
    #   Enum, one of: ["Disabled", "Daily"]
    #
    #   @return [String]
    #
    UpdateAppInput = ::Struct.new(
      :app_arn,
      :description,
      :policy_arn,
      :clear_resiliency_policy_arn,
      :assessment_schedule,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app
    #   <p>The specified application, returned as an object with details including compliance status,
    #         creation time, description, resiliency score, and more.</p>
    #
    #   @return [App]
    #
    UpdateAppOutput = ::Struct.new(
      :app,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the resiliency policy. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:resiliency-policy/<code>policy-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute policy_name
    #   <p>The name of the policy</p>
    #
    #   @return [String]
    #
    # @!attribute policy_description
    #   <p>The description for the policy.</p>
    #
    #   @return [String]
    #
    # @!attribute data_location_constraint
    #   <p>Specifies a high-level geographical location constraint for where your resilience policy
    #         data can be stored.</p>
    #
    #   Enum, one of: ["AnyLocation", "SameContinent", "SameCountry"]
    #
    #   @return [String]
    #
    # @!attribute tier
    #   <p>The tier for this resiliency policy, ranging from the highest severity
    #           (<code>MissionCritical</code>) to lowest (<code>NonCritical</code>).</p>
    #
    #   Enum, one of: ["MissionCritical", "Critical", "Important", "CoreServices", "NonCritical"]
    #
    #   @return [String]
    #
    # @!attribute policy
    #   <p>The type of resiliency policy to be created, including the recovery time objective (RTO)
    #         and recovery point objective (RPO) in seconds.</p>
    #
    #   @return [Hash<String, FailurePolicy>]
    #
    UpdateResiliencyPolicyInput = ::Struct.new(
      :policy_arn,
      :policy_name,
      :policy_description,
      :data_location_constraint,
      :tier,
      :policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy
    #   <p>The type of resiliency policy that was updated, including the recovery time objective
    #         (RTO) and recovery point objective (RPO) in seconds.</p>
    #
    #   @return [ResiliencyPolicy]
    #
    UpdateResiliencyPolicyOutput = ::Struct.new(
      :policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates that a request was not valid.</p>
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
