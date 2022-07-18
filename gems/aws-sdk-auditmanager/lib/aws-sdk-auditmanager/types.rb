# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::AuditManager
  module Types

    # <p> The wrapper of Amazon Web Services account details, such as account ID or email address.
    #       </p>
    #
    # @!attribute id
    #   <p> The identifier for the Amazon Web Services account. </p>
    #
    #   @return [String]
    #
    # @!attribute email_address
    #   <p> The email address that's associated with the Amazon Web Services account. </p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p> The name of the Amazon Web Services account. </p>
    #
    #   @return [String]
    #
    AWSAccount = ::Struct.new(
      :id,
      :email_address,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> An Amazon Web Service such as Amazon S3 or CloudTrail.
    #       </p>
    #
    # @!attribute service_name
    #   <p> The name of the Amazon Web Service. </p>
    #
    #   @return [String]
    #
    AWSService = ::Struct.new(
      :service_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Your account isn't registered with Audit Manager. Check the delegated
    #          administrator setup on the Audit Manager settings page, and try again. </p>
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

    # Includes enum constants for AccountStatus
    #
    module AccountStatus
      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      INACTIVE = "INACTIVE"

      # No documentation available.
      #
      PENDING_ACTIVATION = "PENDING_ACTIVATION"
    end

    # Includes enum constants for ActionEnum
    #
    module ActionEnum
      # No documentation available.
      #
      CREATE = "CREATE"

      # No documentation available.
      #
      UPDATE_METADATA = "UPDATE_METADATA"

      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      INACTIVE = "INACTIVE"

      # No documentation available.
      #
      DELETE = "DELETE"

      # No documentation available.
      #
      UNDER_REVIEW = "UNDER_REVIEW"

      # No documentation available.
      #
      REVIEWED = "REVIEWED"

      # No documentation available.
      #
      IMPORT_EVIDENCE = "IMPORT_EVIDENCE"
    end

    # <p> An entity that defines the scope of audit evidence collected by Audit Manager.
    #          An Audit Manager assessment is an implementation of an Audit Manager
    #          framework. </p>
    #
    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) of the assessment. </p>
    #
    #   @return [String]
    #
    # @!attribute aws_account
    #   <p> The Amazon Web Services account that's associated with the assessment. </p>
    #
    #   @return [AWSAccount]
    #
    # @!attribute metadata
    #   <p> The metadata for the assessment. </p>
    #
    #   @return [AssessmentMetadata]
    #
    # @!attribute framework
    #   <p> The framework that the assessment was created from. </p>
    #
    #   @return [AssessmentFramework]
    #
    # @!attribute tags
    #   <p> The tags that are associated with the assessment. </p>
    #
    #   @return [Hash<String, String>]
    #
    Assessment = ::Struct.new(
      :arn,
      :aws_account,
      :metadata,
      :framework,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The control entity that represents a standard control or a custom control in an Audit Manager assessment. </p>
    #
    # @!attribute id
    #   <p> The identifier for the control. </p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p> The name of the control. </p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p> The description of the control. </p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p> The status of the control. </p>
    #
    #   Enum, one of: ["UNDER_REVIEW", "REVIEWED", "INACTIVE"]
    #
    #   @return [String]
    #
    # @!attribute response
    #   <p> The response of the control. </p>
    #
    #   Enum, one of: ["MANUAL", "AUTOMATE", "DEFER", "IGNORE"]
    #
    #   @return [String]
    #
    # @!attribute comments
    #   <p> The list of comments that's attached to the control. </p>
    #
    #   @return [Array<ControlComment>]
    #
    # @!attribute evidence_sources
    #   <p> The list of data sources for the evidence. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute evidence_count
    #   <p> The amount of evidence that's generated for the control. </p>
    #
    #   @return [Integer]
    #
    # @!attribute assessment_report_evidence_count
    #   <p> The amount of evidence in the assessment report. </p>
    #
    #   @return [Integer]
    #
    AssessmentControl = ::Struct.new(
      :id,
      :name,
      :description,
      :status,
      :response,
      :comments,
      :evidence_sources,
      :evidence_count,
      :assessment_report_evidence_count,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.evidence_count ||= 0
        self.assessment_report_evidence_count ||= 0
      end
    end

    # <p> Represents a set of controls in an Audit Manager assessment. </p>
    #
    # @!attribute id
    #   <p> The identifier of the control set in the assessment. This is the control set name in a
    #            plain string format. </p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p> The description for the control set. </p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p> Specifies the current status of the control set. </p>
    #
    #   Enum, one of: ["ACTIVE", "UNDER_REVIEW", "REVIEWED"]
    #
    #   @return [String]
    #
    # @!attribute roles
    #   <p> The roles that are associated with the control set. </p>
    #
    #   @return [Array<Role>]
    #
    # @!attribute controls
    #   <p> The list of controls that's contained with the control set. </p>
    #
    #   @return [Array<AssessmentControl>]
    #
    # @!attribute delegations
    #   <p> The delegations that are associated with the control set. </p>
    #
    #   @return [Array<Delegation>]
    #
    # @!attribute system_evidence_count
    #   <p> The total number of evidence objects that are retrieved automatically for the control
    #            set. </p>
    #
    #   @return [Integer]
    #
    # @!attribute manual_evidence_count
    #   <p> The total number of evidence objects that are uploaded manually to the control set.
    #         </p>
    #
    #   @return [Integer]
    #
    AssessmentControlSet = ::Struct.new(
      :id,
      :description,
      :status,
      :roles,
      :controls,
      :delegations,
      :system_evidence_count,
      :manual_evidence_count,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.system_evidence_count ||= 0
        self.manual_evidence_count ||= 0
      end
    end

    # <p> The folder where Audit Manager stores evidence for an assessment. </p>
    #
    # @!attribute name
    #   <p> The name of the evidence folder. </p>
    #
    #   @return [String]
    #
    # @!attribute date
    #   <p> The date when the first evidence was added to the evidence folder. </p>
    #
    #   @return [Time]
    #
    # @!attribute assessment_id
    #   <p> The identifier for the assessment. </p>
    #
    #   @return [String]
    #
    # @!attribute control_set_id
    #   <p> The identifier for the control set. </p>
    #
    #   @return [String]
    #
    # @!attribute control_id
    #   <p> The unique identifier for the control. </p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p> The identifier for the folder that the evidence is stored in. </p>
    #
    #   @return [String]
    #
    # @!attribute data_source
    #   <p> The Amazon Web Service that the evidence was collected from. </p>
    #
    #   @return [String]
    #
    # @!attribute author
    #   <p> The name of the user who created the evidence folder. </p>
    #
    #   @return [String]
    #
    # @!attribute total_evidence
    #   <p> The total amount of evidence in the evidence folder. </p>
    #
    #   @return [Integer]
    #
    # @!attribute assessment_report_selection_count
    #   <p> The total count of evidence that's included in the assessment report. </p>
    #
    #   @return [Integer]
    #
    # @!attribute control_name
    #   <p> The name of the control. </p>
    #
    #   @return [String]
    #
    # @!attribute evidence_resources_included_count
    #   <p> The amount of evidence that's included in the evidence folder. </p>
    #
    #   @return [Integer]
    #
    # @!attribute evidence_by_type_configuration_data_count
    #   <p> The number of evidence that falls under the configuration data category. This
    #               evidence is collected from configuration snapshots of other Amazon Web Services such as Amazon EC2, Amazon S3, or IAM. </p>
    #
    #   @return [Integer]
    #
    # @!attribute evidence_by_type_manual_count
    #   <p> The number of evidence that falls under the manual category. This evidence is imported
    #            manually. </p>
    #
    #   @return [Integer]
    #
    # @!attribute evidence_by_type_compliance_check_count
    #   <p> The number of evidence that falls under the compliance check category. This evidence is
    #            collected from Config or Security Hub. </p>
    #
    #   @return [Integer]
    #
    # @!attribute evidence_by_type_compliance_check_issues_count
    #   <p> The total number of issues that were reported directly from Security Hub,
    #               Config, or both. </p>
    #
    #   @return [Integer]
    #
    # @!attribute evidence_by_type_user_activity_count
    #   <p> The number of evidence that falls under the user activity category. This evidence is
    #            collected from CloudTrail logs. </p>
    #
    #   @return [Integer]
    #
    # @!attribute evidence_aws_service_source_count
    #   <p> The total number of Amazon Web Services resources that were assessed to generate the
    #            evidence. </p>
    #
    #   @return [Integer]
    #
    AssessmentEvidenceFolder = ::Struct.new(
      :name,
      :date,
      :assessment_id,
      :control_set_id,
      :control_id,
      :id,
      :data_source,
      :author,
      :total_evidence,
      :assessment_report_selection_count,
      :control_name,
      :evidence_resources_included_count,
      :evidence_by_type_configuration_data_count,
      :evidence_by_type_manual_count,
      :evidence_by_type_compliance_check_count,
      :evidence_by_type_compliance_check_issues_count,
      :evidence_by_type_user_activity_count,
      :evidence_aws_service_source_count,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.total_evidence ||= 0
        self.assessment_report_selection_count ||= 0
        self.evidence_resources_included_count ||= 0
        self.evidence_by_type_configuration_data_count ||= 0
        self.evidence_by_type_manual_count ||= 0
        self.evidence_by_type_compliance_check_count ||= 0
        self.evidence_by_type_compliance_check_issues_count ||= 0
        self.evidence_by_type_user_activity_count ||= 0
        self.evidence_aws_service_source_count ||= 0
      end
    end

    # <p> The file used to structure and automate Audit Manager assessments for a given
    #          compliance standard. </p>
    #
    # @!attribute id
    #   <p> The unique identifier for the framework. </p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) of the framework. </p>
    #
    #   @return [String]
    #
    # @!attribute metadata
    #   <p> The metadata of a framework, such as the name, ID, or description. </p>
    #
    #   @return [FrameworkMetadata]
    #
    # @!attribute control_sets
    #   <p> The control sets that are associated with the framework. </p>
    #
    #   @return [Array<AssessmentControlSet>]
    #
    AssessmentFramework = ::Struct.new(
      :id,
      :arn,
      :metadata,
      :control_sets,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The metadata that's associated with a standard framework or a custom framework. </p>
    #
    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) of the framework. </p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p> The unique identifier for the framework. </p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p> The framework type, such as a standard framework or a custom framework. </p>
    #
    #   Enum, one of: ["Standard", "Custom"]
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p> The name of the framework. </p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p> The description of the framework. </p>
    #
    #   @return [String]
    #
    # @!attribute logo
    #   <p> The logo that's associated with the framework. </p>
    #
    #   @return [String]
    #
    # @!attribute compliance_type
    #   <p> The compliance type that the new custom framework supports, such as CIS or HIPAA.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute controls_count
    #   <p> The number of controls that are associated with the framework. </p>
    #
    #   @return [Integer]
    #
    # @!attribute control_sets_count
    #   <p> The number of control sets that are associated with the framework. </p>
    #
    #   @return [Integer]
    #
    # @!attribute created_at
    #   <p> Specifies when the framework was created. </p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_at
    #   <p> Specifies when the framework was most recently updated. </p>
    #
    #   @return [Time]
    #
    AssessmentFrameworkMetadata = ::Struct.new(
      :arn,
      :id,
      :type,
      :name,
      :description,
      :logo,
      :compliance_type,
      :controls_count,
      :control_sets_count,
      :created_at,
      :last_updated_at,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.controls_count ||= 0
        self.control_sets_count ||= 0
      end
    end

    # <p> Represents a share request for a custom framework in Audit Manager. </p>
    #
    # @!attribute id
    #   <p> The unique identifier for the share request. </p>
    #
    #   @return [String]
    #
    # @!attribute framework_id
    #   <p>The unique identifier for the shared custom framework. </p>
    #
    #   @return [String]
    #
    # @!attribute framework_name
    #   <p> The name of the custom framework that the share request is for. </p>
    #
    #   @return [String]
    #
    # @!attribute framework_description
    #   <p>The description of the shared custom framework.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p> The status of the share request. </p>
    #
    #   Enum, one of: ["ACTIVE", "REPLICATING", "SHARED", "EXPIRING", "FAILED", "EXPIRED", "DECLINED", "REVOKED"]
    #
    #   @return [String]
    #
    # @!attribute source_account
    #   <p> The Amazon Web Services account of the sender. </p>
    #
    #   @return [String]
    #
    # @!attribute destination_account
    #   <p> The Amazon Web Services account of the recipient. </p>
    #
    #   @return [String]
    #
    # @!attribute destination_region
    #   <p> The Amazon Web Services Region of the recipient. </p>
    #
    #   @return [String]
    #
    # @!attribute expiration_time
    #   <p> The time when the share request expires. </p>
    #
    #   @return [Time]
    #
    # @!attribute creation_time
    #   <p> The time when the share request was created. </p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated
    #   <p> Specifies when the share request was last updated. </p>
    #
    #   @return [Time]
    #
    # @!attribute comment
    #   <p> An optional comment from the sender about the share request. </p>
    #
    #   @return [String]
    #
    # @!attribute standard_controls_count
    #   <p>The number of standard controls that are part of the shared custom framework. </p>
    #
    #   @return [Integer]
    #
    # @!attribute custom_controls_count
    #   <p>The number of custom controls that are part of the shared custom framework.</p>
    #
    #   @return [Integer]
    #
    # @!attribute compliance_type
    #   <p>The compliance type that the shared custom framework supports, such as CIS or HIPAA.</p>
    #
    #   @return [String]
    #
    AssessmentFrameworkShareRequest = ::Struct.new(
      :id,
      :framework_id,
      :framework_name,
      :framework_description,
      :status,
      :source_account,
      :destination_account,
      :destination_region,
      :expiration_time,
      :creation_time,
      :last_updated,
      :comment,
      :standard_controls_count,
      :custom_controls_count,
      :compliance_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The metadata that's associated with the specified assessment. </p>
    #
    # @!attribute name
    #   <p> The name of the assessment. </p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p> The unique identifier for the assessment. </p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p> The description of the assessment. </p>
    #
    #   @return [String]
    #
    # @!attribute compliance_type
    #   <p> The name of the compliance standard that's related to the assessment, such as PCI-DSS.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p> The overall status of the assessment. </p>
    #
    #   Enum, one of: ["ACTIVE", "INACTIVE"]
    #
    #   @return [String]
    #
    # @!attribute assessment_reports_destination
    #   <p> The destination that evidence reports are stored in for the assessment. </p>
    #
    #   @return [AssessmentReportsDestination]
    #
    # @!attribute scope
    #   <p> The wrapper of Amazon Web Services accounts and services that are in scope for the
    #            assessment. </p>
    #
    #   @return [Scope]
    #
    # @!attribute roles
    #   <p> The roles that are associated with the assessment. </p>
    #
    #   @return [Array<Role>]
    #
    # @!attribute delegations
    #   <p> The delegations that are associated with the assessment. </p>
    #
    #   @return [Array<Delegation>]
    #
    # @!attribute creation_time
    #   <p> Specifies when the assessment was created. </p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated
    #   <p> The time of the most recent update. </p>
    #
    #   @return [Time]
    #
    AssessmentMetadata = ::Struct.new(
      :name,
      :id,
      :description,
      :compliance_type,
      :status,
      :assessment_reports_destination,
      :scope,
      :roles,
      :delegations,
      :creation_time,
      :last_updated,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> A metadata object that's associated with an assessment in Audit Manager.
    #       </p>
    #
    # @!attribute name
    #   <p> The name of the assessment. </p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p> The unique identifier for the assessment. </p>
    #
    #   @return [String]
    #
    # @!attribute compliance_type
    #   <p> The name of the compliance standard that's related to the assessment, such as PCI-DSS.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p> The current status of the assessment. </p>
    #
    #   Enum, one of: ["ACTIVE", "INACTIVE"]
    #
    #   @return [String]
    #
    # @!attribute roles
    #   <p> The roles that are associated with the assessment. </p>
    #
    #   @return [Array<Role>]
    #
    # @!attribute delegations
    #   <p> The delegations that are associated with the assessment. </p>
    #
    #   @return [Array<Delegation>]
    #
    # @!attribute creation_time
    #   <p> Specifies when the assessment was created. </p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated
    #   <p> The time of the most recent update. </p>
    #
    #   @return [Time]
    #
    AssessmentMetadataItem = ::Struct.new(
      :name,
      :id,
      :compliance_type,
      :status,
      :roles,
      :delegations,
      :creation_time,
      :last_updated,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> A finalized document that's generated from an Audit Manager assessment. These
    #          reports summarize the relevant evidence that was collected for your audit, and link to the
    #          relevant evidence folders. These evidence folders are named and organized according to the
    #          controls that are specified in your assessment. </p>
    #
    # @!attribute id
    #   <p> The unique identifier for the assessment report. </p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p> The name that's given to the assessment report. </p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p> The description of the specified assessment report. </p>
    #
    #   @return [String]
    #
    # @!attribute aws_account_id
    #   <p> The identifier for the specified Amazon Web Services account. </p>
    #
    #   @return [String]
    #
    # @!attribute assessment_id
    #   <p> The identifier for the specified assessment. </p>
    #
    #   @return [String]
    #
    # @!attribute assessment_name
    #   <p> The name of the associated assessment. </p>
    #
    #   @return [String]
    #
    # @!attribute author
    #   <p> The name of the user who created the assessment report. </p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p> The current status of the specified assessment report. </p>
    #
    #   Enum, one of: ["COMPLETE", "IN_PROGRESS", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p> Specifies when the assessment report was created. </p>
    #
    #   @return [Time]
    #
    AssessmentReport = ::Struct.new(
      :id,
      :name,
      :description,
      :aws_account_id,
      :assessment_id,
      :assessment_name,
      :author,
      :status,
      :creation_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AssessmentReportDestinationType
    #
    module AssessmentReportDestinationType
      # No documentation available.
      #
      S3 = "S3"
    end

    # <p> An error entity for the <code>AssessmentReportEvidence</code> API. This is used to
    #          provide more meaningful errors than a simple string message. </p>
    #
    # @!attribute evidence_id
    #   <p> The identifier for the evidence. </p>
    #
    #   @return [String]
    #
    # @!attribute error_code
    #   <p> The error code that the <code>AssessmentReportEvidence</code> API returned. </p>
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p> The error message that the <code>AssessmentReportEvidence</code> API returned. </p>
    #
    #   @return [String]
    #
    AssessmentReportEvidenceError = ::Struct.new(
      :evidence_id,
      :error_code,
      :error_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The metadata objects that are associated with the specified assessment report. </p>
    #
    # @!attribute id
    #   <p> The unique identifier for the assessment report. </p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p> The name of the assessment report. </p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p> The description of the assessment report. </p>
    #
    #   @return [String]
    #
    # @!attribute assessment_id
    #   <p> The unique identifier for the associated assessment. </p>
    #
    #   @return [String]
    #
    # @!attribute assessment_name
    #   <p>The name of the associated assessment. </p>
    #
    #   @return [String]
    #
    # @!attribute author
    #   <p> The name of the user who created the assessment report. </p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p> The current status of the assessment report. </p>
    #
    #   Enum, one of: ["COMPLETE", "IN_PROGRESS", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p> Specifies when the assessment report was created. </p>
    #
    #   @return [Time]
    #
    AssessmentReportMetadata = ::Struct.new(
      :id,
      :name,
      :description,
      :assessment_id,
      :assessment_name,
      :author,
      :status,
      :creation_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AssessmentReportStatus
    #
    module AssessmentReportStatus
      # No documentation available.
      #
      COMPLETE = "COMPLETE"

      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # <p> The location where Audit Manager saves assessment reports for the given
    #          assessment. </p>
    #
    # @!attribute destination_type
    #   <p> The destination type, such as Amazon S3. </p>
    #
    #   Enum, one of: ["S3"]
    #
    #   @return [String]
    #
    # @!attribute destination
    #   <p> The destination of the assessment report. </p>
    #
    #   @return [String]
    #
    AssessmentReportsDestination = ::Struct.new(
      :destination_type,
      :destination,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AssessmentStatus
    #
    module AssessmentStatus
      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      INACTIVE = "INACTIVE"
    end

    # @!attribute assessment_id
    #   <p> The identifier for the assessment. </p>
    #
    #   @return [String]
    #
    # @!attribute evidence_folder_id
    #   <p> The identifier for the folder that the evidence is stored in. </p>
    #
    #   @return [String]
    #
    AssociateAssessmentReportEvidenceFolderInput = ::Struct.new(
      :assessment_id,
      :evidence_folder_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AssociateAssessmentReportEvidenceFolderOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute assessment_id
    #   <p> The identifier for the assessment. </p>
    #
    #   @return [String]
    #
    # @!attribute evidence_folder_id
    #   <p> The identifier for the folder that the evidence is stored in. </p>
    #
    #   @return [String]
    #
    # @!attribute evidence_ids
    #   <p> The list of evidence identifiers. </p>
    #
    #   @return [Array<String>]
    #
    BatchAssociateAssessmentReportEvidenceInput = ::Struct.new(
      :assessment_id,
      :evidence_folder_id,
      :evidence_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute evidence_ids
    #   <p> The list of evidence identifiers. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute errors
    #   <p> A list of errors that the <code>BatchAssociateAssessmentReportEvidence</code> API
    #            returned. </p>
    #
    #   @return [Array<AssessmentReportEvidenceError>]
    #
    BatchAssociateAssessmentReportEvidenceOutput = ::Struct.new(
      :evidence_ids,
      :errors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> An error entity for the <code>BatchCreateDelegationByAssessment</code> API. This is
    #          used to provide more meaningful errors than a simple string message. </p>
    #
    # @!attribute create_delegation_request
    #   <p> The API request to batch create delegations in Audit Manager. </p>
    #
    #   @return [CreateDelegationRequest]
    #
    # @!attribute error_code
    #   <p> The error code that the <code>BatchCreateDelegationByAssessment</code> API returned.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p> The error message that the <code>BatchCreateDelegationByAssessment</code> API returned.
    #         </p>
    #
    #   @return [String]
    #
    BatchCreateDelegationByAssessmentError = ::Struct.new(
      :create_delegation_request,
      :error_code,
      :error_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute create_delegation_requests
    #   <p> The API request to batch create delegations in Audit Manager. </p>
    #
    #   @return [Array<CreateDelegationRequest>]
    #
    # @!attribute assessment_id
    #   <p> The identifier for the assessment. </p>
    #
    #   @return [String]
    #
    BatchCreateDelegationByAssessmentInput = ::Struct.new(
      :create_delegation_requests,
      :assessment_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute delegations
    #   <p> The delegations that are associated with the assessment. </p>
    #
    #   @return [Array<Delegation>]
    #
    # @!attribute errors
    #   <p> A list of errors that the <code>BatchCreateDelegationByAssessment</code> API returned.
    #         </p>
    #
    #   @return [Array<BatchCreateDelegationByAssessmentError>]
    #
    BatchCreateDelegationByAssessmentOutput = ::Struct.new(
      :delegations,
      :errors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> An error entity for the <code>BatchDeleteDelegationByAssessment</code> API. This is
    #          used to provide more meaningful errors than a simple string message. </p>
    #
    # @!attribute delegation_id
    #   <p> The identifier for the delegation. </p>
    #
    #   @return [String]
    #
    # @!attribute error_code
    #   <p> The error code that the <code>BatchDeleteDelegationByAssessment</code> API returned.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p> The error message that the <code>BatchDeleteDelegationByAssessment</code> API returned.
    #         </p>
    #
    #   @return [String]
    #
    BatchDeleteDelegationByAssessmentError = ::Struct.new(
      :delegation_id,
      :error_code,
      :error_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute delegation_ids
    #   <p> The identifiers for the delegations. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute assessment_id
    #   <p> The identifier for the assessment. </p>
    #
    #   @return [String]
    #
    BatchDeleteDelegationByAssessmentInput = ::Struct.new(
      :delegation_ids,
      :assessment_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute errors
    #   <p> A list of errors that the <code>BatchDeleteDelegationByAssessment</code> API returned.
    #         </p>
    #
    #   @return [Array<BatchDeleteDelegationByAssessmentError>]
    #
    BatchDeleteDelegationByAssessmentOutput = ::Struct.new(
      :errors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute assessment_id
    #   <p> The identifier for the assessment. </p>
    #
    #   @return [String]
    #
    # @!attribute evidence_folder_id
    #   <p> The identifier for the folder that the evidence is stored in. </p>
    #
    #   @return [String]
    #
    # @!attribute evidence_ids
    #   <p> The list of evidence identifiers. </p>
    #
    #   @return [Array<String>]
    #
    BatchDisassociateAssessmentReportEvidenceInput = ::Struct.new(
      :assessment_id,
      :evidence_folder_id,
      :evidence_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute evidence_ids
    #   <p> The identifier for the evidence. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute errors
    #   <p> A list of errors that the <code>BatchDisassociateAssessmentReportEvidence</code> API
    #            returned. </p>
    #
    #   @return [Array<AssessmentReportEvidenceError>]
    #
    BatchDisassociateAssessmentReportEvidenceOutput = ::Struct.new(
      :evidence_ids,
      :errors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> An error entity for the <code>BatchImportEvidenceToAssessmentControl</code> API. This
    #          is used to provide more meaningful errors than a simple string message. </p>
    #
    # @!attribute manual_evidence
    #   <p> Manual evidence that can't be collected automatically by Audit Manager. </p>
    #
    #   @return [ManualEvidence]
    #
    # @!attribute error_code
    #   <p> The error code that the <code>BatchImportEvidenceToAssessmentControl</code> API
    #            returned. </p>
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p> The error message that the <code>BatchImportEvidenceToAssessmentControl</code> API
    #            returned. </p>
    #
    #   @return [String]
    #
    BatchImportEvidenceToAssessmentControlError = ::Struct.new(
      :manual_evidence,
      :error_code,
      :error_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute assessment_id
    #   <p> The identifier for the assessment. </p>
    #
    #   @return [String]
    #
    # @!attribute control_set_id
    #   <p> The identifier for the control set. </p>
    #
    #   @return [String]
    #
    # @!attribute control_id
    #   <p> The identifier for the control. </p>
    #
    #   @return [String]
    #
    # @!attribute manual_evidence
    #   <p> The list of manual evidence objects. </p>
    #
    #   @return [Array<ManualEvidence>]
    #
    BatchImportEvidenceToAssessmentControlInput = ::Struct.new(
      :assessment_id,
      :control_set_id,
      :control_id,
      :manual_evidence,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute errors
    #   <p> A list of errors that the <code>BatchImportEvidenceToAssessmentControl</code> API
    #            returned. </p>
    #
    #   @return [Array<BatchImportEvidenceToAssessmentControlError>]
    #
    BatchImportEvidenceToAssessmentControlOutput = ::Struct.new(
      :errors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The record of a change within Audit Manager. For example, this could be the
    #          status change of an assessment or the delegation of a control set. </p>
    #
    # @!attribute object_type
    #   <p> The object that was changed, such as an assessment, control, or control set. </p>
    #
    #   Enum, one of: ["ASSESSMENT", "CONTROL_SET", "CONTROL", "DELEGATION", "ASSESSMENT_REPORT"]
    #
    #   @return [String]
    #
    # @!attribute object_name
    #   <p> The name of the object that changed. This could be the name of an assessment, control,
    #            or control set.</p>
    #
    #   @return [String]
    #
    # @!attribute action
    #   <p> The action that was performed. </p>
    #
    #   Enum, one of: ["CREATE", "UPDATE_METADATA", "ACTIVE", "INACTIVE", "DELETE", "UNDER_REVIEW", "REVIEWED", "IMPORT_EVIDENCE"]
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p> The time when the action was performed and the changelog record was created. </p>
    #
    #   @return [Time]
    #
    # @!attribute created_by
    #   <p> The IAM user or role that performed the action. </p>
    #
    #   @return [String]
    #
    ChangeLog = ::Struct.new(
      :object_type,
      :object_name,
      :action,
      :created_at,
      :created_by,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> A control in Audit Manager. </p>
    #
    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) of the control. </p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p> The unique identifier for the control. </p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p> The type of control, such as a custom control or a standard control. </p>
    #
    #   Enum, one of: ["Standard", "Custom"]
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p> The name of the control. </p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p> The description of the control. </p>
    #
    #   @return [String]
    #
    # @!attribute testing_information
    #   <p> The steps that you should follow to determine if the control has been satisfied.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute action_plan_title
    #   <p> The title of the action plan for remediating the control. </p>
    #
    #   @return [String]
    #
    # @!attribute action_plan_instructions
    #   <p> The recommended actions to carry out if the control isn't fulfilled. </p>
    #
    #   @return [String]
    #
    # @!attribute control_sources
    #   <p> The data source that determines where Audit Manager collects evidence from for
    #            the control. </p>
    #
    #   @return [String]
    #
    # @!attribute control_mapping_sources
    #   <p> The data mapping sources for the control. </p>
    #
    #   @return [Array<ControlMappingSource>]
    #
    # @!attribute created_at
    #   <p> Specifies when the control was created. </p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_at
    #   <p> Specifies when the control was most recently updated. </p>
    #
    #   @return [Time]
    #
    # @!attribute created_by
    #   <p> The IAM user or role that created the control. </p>
    #
    #   @return [String]
    #
    # @!attribute last_updated_by
    #   <p> The IAM user or role that most recently updated the control. </p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p> The tags associated with the control. </p>
    #
    #   @return [Hash<String, String>]
    #
    Control = ::Struct.new(
      :arn,
      :id,
      :type,
      :name,
      :description,
      :testing_information,
      :action_plan_title,
      :action_plan_instructions,
      :control_sources,
      :control_mapping_sources,
      :created_at,
      :last_updated_at,
      :created_by,
      :last_updated_by,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> A comment that's posted by a user on a control. This includes the author's name, the
    #          comment text, and a timestamp. </p>
    #
    # @!attribute author_name
    #   <p> The name of the user who authored the comment. </p>
    #
    #   @return [String]
    #
    # @!attribute comment_body
    #   <p> The body text of a control comment. </p>
    #
    #   @return [String]
    #
    # @!attribute posted_date
    #   <p> The time when the comment was posted. </p>
    #
    #   @return [Time]
    #
    ControlComment = ::Struct.new(
      :author_name,
      :comment_body,
      :posted_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A summary of the latest analytics data for a specific control domain.</p>
    #          <p>Control domain insights are grouped by control domain, and ranked by the highest total count of non-compliant evidence.</p>
    #
    # @!attribute name
    #   <p>The name of the control domain. </p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The unique identifier for the control domain. </p>
    #
    #   @return [String]
    #
    # @!attribute controls_count_by_noncompliant_evidence
    #   <p>The number of controls in the control domain that collected non-compliant evidence on the
    #            <code>lastUpdated</code> date. </p>
    #
    #   @return [Integer]
    #
    # @!attribute total_controls_count
    #   <p>The total number of controls in the control domain. </p>
    #
    #   @return [Integer]
    #
    # @!attribute evidence_insights
    #   <p>A breakdown of the compliance check status for the evidence that’s associated with the control
    #            domain. </p>
    #
    #   @return [EvidenceInsights]
    #
    # @!attribute last_updated
    #   <p>The time when the control domain insights were last updated. </p>
    #
    #   @return [Time]
    #
    ControlDomainInsights = ::Struct.new(
      :name,
      :id,
      :controls_count_by_noncompliant_evidence,
      :total_controls_count,
      :evidence_insights,
      :last_updated,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A summary of the latest analytics data for a specific control in a specific active
    #          assessment.</p>
    #          <p>Control insights are grouped by control domain, and ranked by the highest total count of non-compliant evidence.
    #       </p>
    #
    # @!attribute name
    #   <p>The name of the assessment control. </p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The unique identifier for the assessment control. </p>
    #
    #   @return [String]
    #
    # @!attribute evidence_insights
    #   <p>A breakdown of the compliance check status for the evidence that’s associated with the
    #            assessment control. </p>
    #
    #   @return [EvidenceInsights]
    #
    # @!attribute control_set_name
    #   <p>The name of the control set that the assessment control belongs to. </p>
    #
    #   @return [String]
    #
    # @!attribute last_updated
    #   <p>The time when the assessment control insights were last updated. </p>
    #
    #   @return [Time]
    #
    ControlInsightsMetadataByAssessmentItem = ::Struct.new(
      :name,
      :id,
      :evidence_insights,
      :control_set_name,
      :last_updated,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A summary of the latest analytics data for a specific control. </p>
    #          <p>This data reflects the total counts for the specified control across all active assessments. Control insights are grouped by control domain, and ranked by the highest total count of non-compliant evidence.</p>
    #
    # @!attribute name
    #   <p>The name of the control. </p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The unique identifier for the control. </p>
    #
    #   @return [String]
    #
    # @!attribute evidence_insights
    #   <p>A breakdown of the compliance check status for the evidence that’s associated with the
    #            control. </p>
    #
    #   @return [EvidenceInsights]
    #
    # @!attribute last_updated
    #   <p>The time when the control insights were last updated. </p>
    #
    #   @return [Time]
    #
    ControlInsightsMetadataItem = ::Struct.new(
      :name,
      :id,
      :evidence_insights,
      :last_updated,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The data source that determines where Audit Manager collects evidence from for
    #          the control. </p>
    #
    # @!attribute source_id
    #   <p> The unique identifier for the source. </p>
    #
    #   @return [String]
    #
    # @!attribute source_name
    #   <p> The name of the source. </p>
    #
    #   @return [String]
    #
    # @!attribute source_description
    #   <p> The description of the source. </p>
    #
    #   @return [String]
    #
    # @!attribute source_set_up_option
    #   <p> The setup option for the data source. This option reflects if the evidence collection
    #            is automated or manual. </p>
    #
    #   Enum, one of: ["System_Controls_Mapping", "Procedural_Controls_Mapping"]
    #
    #   @return [String]
    #
    # @!attribute source_type
    #   <p> Specifies one of the five types of data sources for evidence collection. </p>
    #
    #   Enum, one of: ["AWS_Cloudtrail", "AWS_Config", "AWS_Security_Hub", "AWS_API_Call", "MANUAL"]
    #
    #   @return [String]
    #
    # @!attribute source_keyword
    #   <p> The keyword to search for in CloudTrail logs, Config rules,
    #            Security Hub checks, and Amazon Web Services API names. </p>
    #
    #   @return [SourceKeyword]
    #
    # @!attribute source_frequency
    #   <p> The frequency of evidence collection for the control mapping source. </p>
    #
    #   Enum, one of: ["DAILY", "WEEKLY", "MONTHLY"]
    #
    #   @return [String]
    #
    # @!attribute troubleshooting_text
    #   <p> The instructions for troubleshooting the control. </p>
    #
    #   @return [String]
    #
    ControlMappingSource = ::Struct.new(
      :source_id,
      :source_name,
      :source_description,
      :source_set_up_option,
      :source_type,
      :source_keyword,
      :source_frequency,
      :troubleshooting_text,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The metadata that's associated with the standard control or custom control. </p>
    #
    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) of the control. </p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p> The unique identifier for the control. </p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p> The name of the control. </p>
    #
    #   @return [String]
    #
    # @!attribute control_sources
    #   <p> The data source that determines where Audit Manager collects evidence from for
    #            the control. </p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p> Specifies when the control was created. </p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_at
    #   <p> Specifies when the control was most recently updated. </p>
    #
    #   @return [Time]
    #
    ControlMetadata = ::Struct.new(
      :arn,
      :id,
      :name,
      :control_sources,
      :created_at,
      :last_updated_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ControlResponse
    #
    module ControlResponse
      # No documentation available.
      #
      MANUAL = "MANUAL"

      # No documentation available.
      #
      AUTOMATE = "AUTOMATE"

      # No documentation available.
      #
      DEFER = "DEFER"

      # No documentation available.
      #
      IGNORE = "IGNORE"
    end

    # <p> A set of controls in Audit Manager. </p>
    #
    # @!attribute id
    #   <p> The identifier of the control set in the assessment. This is the control set name in a
    #            plain string format. </p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p> The name of the control set. </p>
    #
    #   @return [String]
    #
    # @!attribute controls
    #   <p> The list of controls within the control set. </p>
    #
    #   @return [Array<Control>]
    #
    ControlSet = ::Struct.new(
      :id,
      :name,
      :controls,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ControlSetStatus
    #
    module ControlSetStatus
      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      UNDER_REVIEW = "UNDER_REVIEW"

      # No documentation available.
      #
      REVIEWED = "REVIEWED"
    end

    # Includes enum constants for ControlStatus
    #
    module ControlStatus
      # No documentation available.
      #
      UNDER_REVIEW = "UNDER_REVIEW"

      # No documentation available.
      #
      REVIEWED = "REVIEWED"

      # No documentation available.
      #
      INACTIVE = "INACTIVE"
    end

    # Includes enum constants for ControlType
    #
    module ControlType
      # No documentation available.
      #
      STANDARD = "Standard"

      # No documentation available.
      #
      CUSTOM = "Custom"
    end

    # <p> The control entity attributes that uniquely identify an existing control to be added to
    #          a framework in Audit Manager. </p>
    #
    # @!attribute id
    #   <p> The unique identifier of the control. </p>
    #
    #   @return [String]
    #
    CreateAssessmentFrameworkControl = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> A <code>controlSet</code> entity that represents a collection of controls in Audit Manager. This doesn't contain the control set ID. </p>
    #
    # @!attribute name
    #   <p> The name of the control set. </p>
    #
    #   @return [String]
    #
    # @!attribute controls
    #   <p> The list of controls within the control set. This doesn't contain the control set ID.
    #         </p>
    #
    #   @return [Array<CreateAssessmentFrameworkControl>]
    #
    CreateAssessmentFrameworkControlSet = ::Struct.new(
      :name,
      :controls,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p> The name of the new custom framework. </p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p> An optional description for the new custom framework. </p>
    #
    #   @return [String]
    #
    # @!attribute compliance_type
    #   <p> The compliance type that the new custom framework supports, such as CIS or HIPAA.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute control_sets
    #   <p> The control sets that are associated with the framework. </p>
    #
    #   @return [Array<CreateAssessmentFrameworkControlSet>]
    #
    # @!attribute tags
    #   <p> The tags that are associated with the framework. </p>
    #
    #   @return [Hash<String, String>]
    #
    CreateAssessmentFrameworkInput = ::Struct.new(
      :name,
      :description,
      :compliance_type,
      :control_sets,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute framework
    #   <p> The name of the new framework that the <code>CreateAssessmentFramework</code> API
    #            returned. </p>
    #
    #   @return [Framework]
    #
    CreateAssessmentFrameworkOutput = ::Struct.new(
      :framework,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p> The name of the assessment to be created. </p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p> The optional description of the assessment to be created. </p>
    #
    #   @return [String]
    #
    # @!attribute assessment_reports_destination
    #   <p> The assessment report storage destination for the assessment that's being created. </p>
    #
    #   @return [AssessmentReportsDestination]
    #
    # @!attribute scope
    #   <p> The wrapper that contains the Amazon Web Services accounts and services that are in
    #            scope for the assessment. </p>
    #
    #   @return [Scope]
    #
    # @!attribute roles
    #   <p> The list of roles for the assessment. </p>
    #
    #   @return [Array<Role>]
    #
    # @!attribute framework_id
    #   <p> The identifier for the framework that the assessment will be created from. </p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p> The tags that are associated with the assessment. </p>
    #
    #   @return [Hash<String, String>]
    #
    CreateAssessmentInput = ::Struct.new(
      :name,
      :description,
      :assessment_reports_destination,
      :scope,
      :roles,
      :framework_id,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute assessment
    #   <p> An entity that defines the scope of audit evidence collected by Audit Manager.
    #            An Audit Manager assessment is an implementation of an Audit Manager
    #            framework. </p>
    #
    #   @return [Assessment]
    #
    CreateAssessmentOutput = ::Struct.new(
      :assessment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p> The name of the new assessment report. </p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p> The description of the assessment report. </p>
    #
    #   @return [String]
    #
    # @!attribute assessment_id
    #   <p> The identifier for the assessment. </p>
    #
    #   @return [String]
    #
    CreateAssessmentReportInput = ::Struct.new(
      :name,
      :description,
      :assessment_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute assessment_report
    #   <p> The new assessment report that the <code>CreateAssessmentReport</code> API returned.
    #         </p>
    #
    #   @return [AssessmentReport]
    #
    CreateAssessmentReportOutput = ::Struct.new(
      :assessment_report,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p> The name of the control. </p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p> The description of the control. </p>
    #
    #   @return [String]
    #
    # @!attribute testing_information
    #   <p> The steps to follow to determine if the control is satisfied. </p>
    #
    #   @return [String]
    #
    # @!attribute action_plan_title
    #   <p> The title of the action plan for remediating the control. </p>
    #
    #   @return [String]
    #
    # @!attribute action_plan_instructions
    #   <p> The recommended actions to carry out if the control isn't fulfilled. </p>
    #
    #   @return [String]
    #
    # @!attribute control_mapping_sources
    #   <p> The data mapping sources for the control. </p>
    #
    #   @return [Array<CreateControlMappingSource>]
    #
    # @!attribute tags
    #   <p> The tags that are associated with the control. </p>
    #
    #   @return [Hash<String, String>]
    #
    CreateControlInput = ::Struct.new(
      :name,
      :description,
      :testing_information,
      :action_plan_title,
      :action_plan_instructions,
      :control_mapping_sources,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The control mapping fields that represent the source for evidence collection, along
    #          with related parameters and metadata. This doesn't contain <code>mappingID</code>. </p>
    #
    # @!attribute source_name
    #   <p> The name of the control mapping data source. </p>
    #
    #   @return [String]
    #
    # @!attribute source_description
    #   <p> The description of the data source that determines where Audit Manager collects
    #            evidence from for the control. </p>
    #
    #   @return [String]
    #
    # @!attribute source_set_up_option
    #   <p> The setup option for the data source, which reflects if the evidence collection is
    #            automated or manual. </p>
    #
    #   Enum, one of: ["System_Controls_Mapping", "Procedural_Controls_Mapping"]
    #
    #   @return [String]
    #
    # @!attribute source_type
    #   <p> Specifies one of the five types of data sources for evidence collection. </p>
    #
    #   Enum, one of: ["AWS_Cloudtrail", "AWS_Config", "AWS_Security_Hub", "AWS_API_Call", "MANUAL"]
    #
    #   @return [String]
    #
    # @!attribute source_keyword
    #   <p> The keyword to search for in CloudTrail logs, Config rules,
    #            Security Hub checks, and Amazon Web Services API names. </p>
    #
    #   @return [SourceKeyword]
    #
    # @!attribute source_frequency
    #   <p> The frequency of evidence collection for the control mapping source. </p>
    #
    #   Enum, one of: ["DAILY", "WEEKLY", "MONTHLY"]
    #
    #   @return [String]
    #
    # @!attribute troubleshooting_text
    #   <p> The instructions for troubleshooting the control. </p>
    #
    #   @return [String]
    #
    CreateControlMappingSource = ::Struct.new(
      :source_name,
      :source_description,
      :source_set_up_option,
      :source_type,
      :source_keyword,
      :source_frequency,
      :troubleshooting_text,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute control
    #   <p> The new control that the <code>CreateControl</code> API returned. </p>
    #
    #   @return [Control]
    #
    CreateControlOutput = ::Struct.new(
      :control,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> A collection of attributes that's used to create a delegation for an assessment in
    #          Audit Manager. </p>
    #
    # @!attribute comment
    #   <p> A comment that's related to the delegation request. </p>
    #
    #   @return [String]
    #
    # @!attribute control_set_id
    #   <p> The unique identifier for the control set. </p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p> The Amazon Resource Name (ARN) of the IAM role. </p>
    #
    #   @return [String]
    #
    # @!attribute role_type
    #   <p> The type of customer persona. </p>
    #            <note>
    #               <p>In <code>CreateAssessment</code>, <code>roleType</code> can only be
    #               <code>PROCESS_OWNER</code>. </p>
    #               <p>In <code>UpdateSettings</code>, <code>roleType</code> can only be
    #               <code>PROCESS_OWNER</code>.</p>
    #               <p>In <code>BatchCreateDelegationByAssessment</code>, <code>roleType</code> can only be
    #               <code>RESOURCE_OWNER</code>.</p>
    #            </note>
    #
    #   Enum, one of: ["PROCESS_OWNER", "RESOURCE_OWNER"]
    #
    #   @return [String]
    #
    CreateDelegationRequest = ::Struct.new(
      :comment,
      :control_set_id,
      :role_arn,
      :role_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The assignment of a control set to a delegate for review. </p>
    #
    # @!attribute id
    #   <p> The unique identifier for the delegation. </p>
    #
    #   @return [String]
    #
    # @!attribute assessment_name
    #   <p> The name of the assessment that's associated with the delegation. </p>
    #
    #   @return [String]
    #
    # @!attribute assessment_id
    #   <p> The identifier for the assessment that's associated with the delegation. </p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p> The status of the delegation. </p>
    #
    #   Enum, one of: ["IN_PROGRESS", "UNDER_REVIEW", "COMPLETE"]
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p> The Amazon Resource Name (ARN) of the IAM role. </p>
    #
    #   @return [String]
    #
    # @!attribute role_type
    #   <p> The type of customer persona. </p>
    #            <note>
    #               <p>In <code>CreateAssessment</code>, <code>roleType</code> can only be
    #                  <code>PROCESS_OWNER</code>. </p>
    #               <p>In <code>UpdateSettings</code>, <code>roleType</code> can only be
    #                  <code>PROCESS_OWNER</code>.</p>
    #               <p>In <code>BatchCreateDelegationByAssessment</code>, <code>roleType</code> can only be
    #                  <code>RESOURCE_OWNER</code>.</p>
    #            </note>
    #
    #   Enum, one of: ["PROCESS_OWNER", "RESOURCE_OWNER"]
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p> Specifies when the delegation was created. </p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated
    #   <p> Specifies when the delegation was last updated. </p>
    #
    #   @return [Time]
    #
    # @!attribute control_set_id
    #   <p> The identifier for the control set that's associated with the delegation. </p>
    #
    #   @return [String]
    #
    # @!attribute comment
    #   <p> The comment that's related to the delegation. </p>
    #
    #   @return [String]
    #
    # @!attribute created_by
    #   <p> The IAM user or role that created the delegation. </p>
    #
    #   @return [String]
    #
    Delegation = ::Struct.new(
      :id,
      :assessment_name,
      :assessment_id,
      :status,
      :role_arn,
      :role_type,
      :creation_time,
      :last_updated,
      :control_set_id,
      :comment,
      :created_by,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The metadata that's associated with the delegation. </p>
    #
    # @!attribute id
    #   <p> The unique identifier for the delegation. </p>
    #
    #   @return [String]
    #
    # @!attribute assessment_name
    #   <p> The name of the associated assessment. </p>
    #
    #   @return [String]
    #
    # @!attribute assessment_id
    #   <p> The unique identifier for the assessment. </p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p> The current status of the delegation. </p>
    #
    #   Enum, one of: ["IN_PROGRESS", "UNDER_REVIEW", "COMPLETE"]
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p> The Amazon Resource Name (ARN) of the IAM role. </p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p> Specifies when the delegation was created. </p>
    #
    #   @return [Time]
    #
    # @!attribute control_set_name
    #   <p> Specifies the name of the control set that was delegated for review. </p>
    #
    #   @return [String]
    #
    DelegationMetadata = ::Struct.new(
      :id,
      :assessment_name,
      :assessment_id,
      :status,
      :role_arn,
      :creation_time,
      :control_set_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DelegationStatus
    #
    module DelegationStatus
      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"

      # No documentation available.
      #
      UNDER_REVIEW = "UNDER_REVIEW"

      # No documentation available.
      #
      COMPLETE = "COMPLETE"
    end

    # @!attribute framework_id
    #   <p> The identifier for the custom framework. </p>
    #
    #   @return [String]
    #
    DeleteAssessmentFrameworkInput = ::Struct.new(
      :framework_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteAssessmentFrameworkOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute request_id
    #   <p>The unique identifier for the share request to be deleted.</p>
    #
    #   @return [String]
    #
    # @!attribute request_type
    #   <p>Specifies whether the share request is a sent request or a received request.</p>
    #
    #   Enum, one of: ["SENT", "RECEIVED"]
    #
    #   @return [String]
    #
    DeleteAssessmentFrameworkShareInput = ::Struct.new(
      :request_id,
      :request_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteAssessmentFrameworkShareOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute assessment_id
    #   <p> The identifier for the assessment. </p>
    #
    #   @return [String]
    #
    DeleteAssessmentInput = ::Struct.new(
      :assessment_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteAssessmentOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute assessment_id
    #   <p> The unique identifier for the assessment. </p>
    #
    #   @return [String]
    #
    # @!attribute assessment_report_id
    #   <p> The unique identifier for the assessment report. </p>
    #
    #   @return [String]
    #
    DeleteAssessmentReportInput = ::Struct.new(
      :assessment_id,
      :assessment_report_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteAssessmentReportOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute control_id
    #   <p> The unique identifier for the control. </p>
    #
    #   @return [String]
    #
    DeleteControlInput = ::Struct.new(
      :control_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteControlOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeregisterAccountInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute status
    #   <p> The registration status of the account. </p>
    #
    #   Enum, one of: ["ACTIVE", "INACTIVE", "PENDING_ACTIVATION"]
    #
    #   @return [String]
    #
    DeregisterAccountOutput = ::Struct.new(
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute admin_account_id
    #   <p> The identifier for the administrator account. </p>
    #
    #   @return [String]
    #
    DeregisterOrganizationAdminAccountInput = ::Struct.new(
      :admin_account_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeregisterOrganizationAdminAccountOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute assessment_id
    #   <p> The unique identifier for the assessment. </p>
    #
    #   @return [String]
    #
    # @!attribute evidence_folder_id
    #   <p> The unique identifier for the folder that the evidence is stored in. </p>
    #
    #   @return [String]
    #
    DisassociateAssessmentReportEvidenceFolderInput = ::Struct.new(
      :assessment_id,
      :evidence_folder_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateAssessmentReportEvidenceFolderOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> A record that contains the information needed to demonstrate compliance with the
    #          requirements specified by a control. Examples of evidence include change activity triggered
    #          by a user, or a system configuration snapshot. </p>
    #
    # @!attribute data_source
    #   <p> The data source where the evidence was collected from. </p>
    #
    #   @return [String]
    #
    # @!attribute evidence_aws_account_id
    #   <p> The identifier for the Amazon Web Services account. </p>
    #
    #   @return [String]
    #
    # @!attribute time
    #   <p> The timestamp that represents when the evidence was collected. </p>
    #
    #   @return [Time]
    #
    # @!attribute event_source
    #   <p> The Amazon Web Service that the evidence is collected from. </p>
    #
    #   @return [String]
    #
    # @!attribute event_name
    #   <p> The name of the evidence event. </p>
    #
    #   @return [String]
    #
    # @!attribute evidence_by_type
    #   <p> The type of automated evidence. </p>
    #
    #   @return [String]
    #
    # @!attribute resources_included
    #   <p> The list of resources that are assessed to generate the evidence. </p>
    #
    #   @return [Array<Resource>]
    #
    # @!attribute attributes
    #   <p> The names and values that are used by the evidence event. This includes an attribute
    #            name (such as <code>allowUsersToChangePassword</code>) and value (such as <code>true</code>
    #            or <code>false</code>). </p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute iam_id
    #   <p> The unique identifier for the IAM user or role that's associated with
    #            the evidence. </p>
    #
    #   @return [String]
    #
    # @!attribute compliance_check
    #   <p> The evaluation status for evidence that falls under the compliance check category. For
    #            evidence collected from Security Hub, a <i>Pass</i> or
    #            <i>Fail</i> result is shown. For evidence collected from Config, a <i>Compliant</i> or <i>Noncompliant</i>
    #            result is shown. </p>
    #
    #   @return [String]
    #
    # @!attribute aws_organization
    #   <p> The Amazon Web Services account that the evidence is collected from, and its
    #            organization path. </p>
    #
    #   @return [String]
    #
    # @!attribute aws_account_id
    #   <p> The identifier for the Amazon Web Services account. </p>
    #
    #   @return [String]
    #
    # @!attribute evidence_folder_id
    #   <p> The identifier for the folder that the evidence is stored in. </p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p> The identifier for the evidence. </p>
    #
    #   @return [String]
    #
    # @!attribute assessment_report_selection
    #   <p> Specifies whether the evidence is included in the assessment report. </p>
    #
    #   @return [String]
    #
    Evidence = ::Struct.new(
      :data_source,
      :evidence_aws_account_id,
      :time,
      :event_source,
      :event_name,
      :evidence_by_type,
      :resources_included,
      :attributes,
      :iam_id,
      :compliance_check,
      :aws_organization,
      :aws_account_id,
      :evidence_folder_id,
      :id,
      :assessment_report_selection,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A breakdown of the latest compliance check status for the evidence in your Audit Manager
    #          assessments. </p>
    #
    # @!attribute noncompliant_evidence_count
    #   <p>The number of compliance check evidence that Audit Manager classified as non-compliant.
    #            This includes evidence that was collected from Security Hub with a
    #            <i>Fail</i> ruling, or collected from Config with a
    #            <i>Non-compliant</i> ruling. </p>
    #
    #   @return [Integer]
    #
    # @!attribute compliant_evidence_count
    #   <p>The number of compliance check evidence that Audit Manager classified as compliant. This
    #            includes evidence that was collected from Security Hub with a
    #            <i>Pass</i> ruling, or collected from Config with a
    #            <i>Compliant</i> ruling. </p>
    #
    #   @return [Integer]
    #
    # @!attribute inconclusive_evidence_count
    #   <p>The number of evidence that a compliance check ruling isn't available for. Evidence is
    #            inconclusive when the associated control uses Security Hub or Config as a data source but you didn't enable those services. This is also the case when a
    #            control uses a data source that doesn’t support compliance checks (for example, manual
    #            evidence, API calls, or CloudTrail). </p>
    #            <note>
    #               <p>If evidence has a compliance check status of <i>not applicable</i> in the
    #            console, it's classified as <i>inconclusive</i> in
    #            <code>EvidenceInsights</code> data.</p>
    #            </note>
    #
    #   @return [Integer]
    #
    EvidenceInsights = ::Struct.new(
      :noncompliant_evidence_count,
      :compliant_evidence_count,
      :inconclusive_evidence_count,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The file that's used to structure and automate Audit Manager assessments for a
    #          given compliance standard. </p>
    #
    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) of the framework. </p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p> The unique identifier for the framework. </p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p> The name of the framework. </p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p> The framework type, such as a custom framework or a standard framework. </p>
    #
    #   Enum, one of: ["Standard", "Custom"]
    #
    #   @return [String]
    #
    # @!attribute compliance_type
    #   <p> The compliance type that the new custom framework supports, such as CIS or HIPAA.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p> The description of the framework. </p>
    #
    #   @return [String]
    #
    # @!attribute logo
    #   <p> The logo that's associated with the framework. </p>
    #
    #   @return [String]
    #
    # @!attribute control_sources
    #   <p> The sources that Audit Manager collects evidence from for the control. </p>
    #
    #   @return [String]
    #
    # @!attribute control_sets
    #   <p> The control sets that are associated with the framework. </p>
    #
    #   @return [Array<ControlSet>]
    #
    # @!attribute created_at
    #   <p> Specifies when the framework was created. </p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_at
    #   <p> Specifies when the framework was most recently updated. </p>
    #
    #   @return [Time]
    #
    # @!attribute created_by
    #   <p> The IAM user or role that created the framework. </p>
    #
    #   @return [String]
    #
    # @!attribute last_updated_by
    #   <p> The IAM user or role that most recently updated the framework. </p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p> The tags that are associated with the framework. </p>
    #
    #   @return [Hash<String, String>]
    #
    Framework = ::Struct.new(
      :arn,
      :id,
      :name,
      :type,
      :compliance_type,
      :description,
      :logo,
      :control_sources,
      :control_sets,
      :created_at,
      :last_updated_at,
      :created_by,
      :last_updated_by,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The metadata of a framework, such as the name, ID, or description. </p>
    #
    # @!attribute name
    #   <p> The name of the framework. </p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p> The description of the framework. </p>
    #
    #   @return [String]
    #
    # @!attribute logo
    #   <p> The logo that's associated with the framework. </p>
    #
    #   @return [String]
    #
    # @!attribute compliance_type
    #   <p> The compliance standard that's associated with the framework. For example, this could
    #            be PCI DSS or HIPAA. </p>
    #
    #   @return [String]
    #
    FrameworkMetadata = ::Struct.new(
      :name,
      :description,
      :logo,
      :compliance_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FrameworkType
    #
    module FrameworkType
      # No documentation available.
      #
      STANDARD = "Standard"

      # No documentation available.
      #
      CUSTOM = "Custom"
    end

    GetAccountStatusInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute status
    #   <p> The status of the Amazon Web Services account. </p>
    #
    #   Enum, one of: ["ACTIVE", "INACTIVE", "PENDING_ACTIVATION"]
    #
    #   @return [String]
    #
    GetAccountStatusOutput = ::Struct.new(
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute framework_id
    #   <p> The identifier for the framework. </p>
    #
    #   @return [String]
    #
    GetAssessmentFrameworkInput = ::Struct.new(
      :framework_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute framework
    #   <p> The framework that the <code>GetAssessmentFramework</code> API returned. </p>
    #
    #   @return [Framework]
    #
    GetAssessmentFrameworkOutput = ::Struct.new(
      :framework,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute assessment_id
    #   <p>The unique identifier for the assessment. </p>
    #
    #   @return [String]
    #
    GetAssessmentInput = ::Struct.new(
      :assessment_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute assessment
    #   <p> An entity that defines the scope of audit evidence collected by Audit Manager.
    #            An Audit Manager assessment is an implementation of an Audit Manager
    #            framework. </p>
    #
    #   @return [Assessment]
    #
    # @!attribute user_role
    #   <p> The wrapper that contains the Audit Manager role information of the current
    #            user. This includes the role type and IAM Amazon Resource Name (ARN).
    #         </p>
    #
    #   @return [Role]
    #
    GetAssessmentOutput = ::Struct.new(
      :assessment,
      :user_role,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute assessment_report_id
    #   <p> The unique identifier for the assessment report. </p>
    #
    #   @return [String]
    #
    # @!attribute assessment_id
    #   <p> The unique identifier for the assessment. </p>
    #
    #   @return [String]
    #
    GetAssessmentReportUrlInput = ::Struct.new(
      :assessment_report_id,
      :assessment_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute pre_signed_url
    #   <p> Short for uniform resource locator. A URL is used as a unique identifier to locate a
    #            resource on the internet. </p>
    #
    #   @return [URL]
    #
    GetAssessmentReportUrlOutput = ::Struct.new(
      :pre_signed_url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute assessment_id
    #   <p>The unique identifier for the assessment. </p>
    #
    #   @return [String]
    #
    # @!attribute control_set_id
    #   <p> The unique identifier for the control set. </p>
    #
    #   @return [String]
    #
    # @!attribute control_id
    #   <p> The unique identifier for the control. </p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p> The pagination token that's used to fetch the next set of results. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Represents the maximum number of results on a page or for an API request call. </p>
    #
    #   @return [Integer]
    #
    GetChangeLogsInput = ::Struct.new(
      :assessment_id,
      :control_set_id,
      :control_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute change_logs
    #   <p>The list of user activity for the control. </p>
    #
    #   @return [Array<ChangeLog>]
    #
    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results. </p>
    #
    #   @return [String]
    #
    GetChangeLogsOutput = ::Struct.new(
      :change_logs,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute control_id
    #   <p> The identifier for the control. </p>
    #
    #   @return [String]
    #
    GetControlInput = ::Struct.new(
      :control_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute control
    #   <p> The name of the control that the <code>GetControl</code> API returned. </p>
    #
    #   @return [Control]
    #
    GetControlOutput = ::Struct.new(
      :control,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p> The pagination token that's used to fetch the next set of results. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p> Represents the maximum number of results on a page or for an API request call. </p>
    #
    #   @return [Integer]
    #
    GetDelegationsInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute delegations
    #   <p> The list of delegations that the <code>GetDelegations</code> API returned. </p>
    #
    #   @return [Array<DelegationMetadata>]
    #
    # @!attribute next_token
    #   <p> The pagination token that's used to fetch the next set of results. </p>
    #
    #   @return [String]
    #
    GetDelegationsOutput = ::Struct.new(
      :delegations,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute assessment_id
    #   <p> The identifier for the assessment. </p>
    #
    #   @return [String]
    #
    # @!attribute control_set_id
    #   <p> The identifier for the control set. </p>
    #
    #   @return [String]
    #
    # @!attribute evidence_folder_id
    #   <p> The unique identifier for the folder that the evidence is stored in. </p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p> The pagination token that's used to fetch the next set of results. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p> Represents the maximum number of results on a page or for an API request call. </p>
    #
    #   @return [Integer]
    #
    GetEvidenceByEvidenceFolderInput = ::Struct.new(
      :assessment_id,
      :control_set_id,
      :evidence_folder_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute evidence
    #   <p> The list of evidence that the <code>GetEvidenceByEvidenceFolder</code> API returned.
    #         </p>
    #
    #   @return [Array<Evidence>]
    #
    # @!attribute next_token
    #   <p> The pagination token that's used to fetch the next set of results. </p>
    #
    #   @return [String]
    #
    GetEvidenceByEvidenceFolderOutput = ::Struct.new(
      :evidence,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute assessment_id
    #   <p> The unique identifier for the assessment. </p>
    #
    #   @return [String]
    #
    # @!attribute control_set_id
    #   <p> The unique identifier for the control set. </p>
    #
    #   @return [String]
    #
    # @!attribute evidence_folder_id
    #   <p> The unique identifier for the folder that the evidence is stored in. </p>
    #
    #   @return [String]
    #
    GetEvidenceFolderInput = ::Struct.new(
      :assessment_id,
      :control_set_id,
      :evidence_folder_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute evidence_folder
    #   <p> The folder that the evidence is stored in. </p>
    #
    #   @return [AssessmentEvidenceFolder]
    #
    GetEvidenceFolderOutput = ::Struct.new(
      :evidence_folder,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute assessment_id
    #   <p> The identifier for the assessment. </p>
    #
    #   @return [String]
    #
    # @!attribute control_set_id
    #   <p> The identifier for the control set. </p>
    #
    #   @return [String]
    #
    # @!attribute control_id
    #   <p> The identifier for the control. </p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p> The pagination token that's used to fetch the next set of results. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p> Represents the maximum number of results on a page or for an API request call. </p>
    #
    #   @return [Integer]
    #
    GetEvidenceFoldersByAssessmentControlInput = ::Struct.new(
      :assessment_id,
      :control_set_id,
      :control_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute evidence_folders
    #   <p> The list of evidence folders that the
    #            <code>GetEvidenceFoldersByAssessmentControl</code> API returned. </p>
    #
    #   @return [Array<AssessmentEvidenceFolder>]
    #
    # @!attribute next_token
    #   <p> The pagination token that's used to fetch the next set of results. </p>
    #
    #   @return [String]
    #
    GetEvidenceFoldersByAssessmentControlOutput = ::Struct.new(
      :evidence_folders,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute assessment_id
    #   <p> The unique identifier for the assessment. </p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p> The pagination token that's used to fetch the next set of results. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p> Represents the maximum number of results on a page or for an API request call. </p>
    #
    #   @return [Integer]
    #
    GetEvidenceFoldersByAssessmentInput = ::Struct.new(
      :assessment_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute evidence_folders
    #   <p> The list of evidence folders that the <code>GetEvidenceFoldersByAssessment</code> API
    #            returned. </p>
    #
    #   @return [Array<AssessmentEvidenceFolder>]
    #
    # @!attribute next_token
    #   <p> The pagination token that's used to fetch the next set of results. </p>
    #
    #   @return [String]
    #
    GetEvidenceFoldersByAssessmentOutput = ::Struct.new(
      :evidence_folders,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute assessment_id
    #   <p> The unique identifier for the assessment. </p>
    #
    #   @return [String]
    #
    # @!attribute control_set_id
    #   <p> The unique identifier for the control set. </p>
    #
    #   @return [String]
    #
    # @!attribute evidence_folder_id
    #   <p> The unique identifier for the folder that the evidence is stored in. </p>
    #
    #   @return [String]
    #
    # @!attribute evidence_id
    #   <p> The unique identifier for the evidence. </p>
    #
    #   @return [String]
    #
    GetEvidenceInput = ::Struct.new(
      :assessment_id,
      :control_set_id,
      :evidence_folder_id,
      :evidence_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute evidence
    #   <p> The evidence that the <code>GetEvidenceResponse</code> API returned. </p>
    #
    #   @return [Evidence]
    #
    GetEvidenceOutput = ::Struct.new(
      :evidence,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute assessment_id
    #   <p>The unique identifier for the assessment. </p>
    #
    #   @return [String]
    #
    GetInsightsByAssessmentInput = ::Struct.new(
      :assessment_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute insights
    #   <p> The assessment analytics data that the <code>GetInsightsByAssessment</code> API
    #            returned. </p>
    #
    #   @return [InsightsByAssessment]
    #
    GetInsightsByAssessmentOutput = ::Struct.new(
      :insights,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    GetInsightsInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute insights
    #   <p>The analytics data that the <code>GetInsights</code> API returned. </p>
    #
    #   @return [Insights]
    #
    GetInsightsOutput = ::Struct.new(
      :insights,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    GetOrganizationAdminAccountInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute admin_account_id
    #   <p> The identifier for the administrator account. </p>
    #
    #   @return [String]
    #
    # @!attribute organization_id
    #   <p> The identifier for the organization. </p>
    #
    #   @return [String]
    #
    GetOrganizationAdminAccountOutput = ::Struct.new(
      :admin_account_id,
      :organization_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    GetServicesInScopeInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute service_metadata
    #   <p> The metadata that's associated with the Amazon Web Service. </p>
    #
    #   @return [Array<ServiceMetadata>]
    #
    GetServicesInScopeOutput = ::Struct.new(
      :service_metadata,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute attribute
    #   <p> The list of <code>SettingAttribute</code> enum values. </p>
    #
    #   Enum, one of: ["ALL", "IS_AWS_ORG_ENABLED", "SNS_TOPIC", "DEFAULT_ASSESSMENT_REPORTS_DESTINATION", "DEFAULT_PROCESS_OWNERS"]
    #
    #   @return [String]
    #
    GetSettingsInput = ::Struct.new(
      :attribute,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute settings
    #   <p> The settings object that holds all supported Audit Manager settings. </p>
    #
    #   @return [Settings]
    #
    GetSettingsOutput = ::Struct.new(
      :settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A summary of the latest analytics data for all your active assessments. </p>
    #          <p>This summary is a snapshot of the data that your active assessments collected on the
    #          <code>lastUpdated</code> date. It’s important to understand that the following totals
    #          are daily counts based on this date — they aren’t a total sum to date. </p>
    #          <p>The <code>Insights</code> data is eventually consistent. This means that, when you read
    #          data from <code>Insights</code>, the response might not instantly reflect the results of a
    #          recently completed write or update operation. If you repeat your read request after a few
    #          hours, the response should return the latest data.</p>
    #          <note>
    #             <p>If you delete an assessment or change its status to inactive,
    #             <code>InsightsByAssessment</code> includes data for that assessment as
    #             follows.</p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <b>Inactive assessments</b> - If Audit Manager collected
    #                evidence for your assessment before you changed it inactive, that evidence is
    #                included in the <code>InsightsByAssessment</code> counts for that day.</p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <b>Deleted assessments</b> - If Audit Manager collected
    #                evidence for your assessment before you deleted it, that evidence isn't included
    #                in the <code>InsightsByAssessment</code> counts for that day.</p>
    #                </li>
    #             </ul>
    #          </note>
    #
    # @!attribute active_assessments_count
    #   <p>The number of active assessments in Audit Manager. </p>
    #
    #   @return [Integer]
    #
    # @!attribute noncompliant_evidence_count
    #   <p>The number of compliance check evidence that Audit Manager classified as non-compliant
    #            on the <code>lastUpdated</code> date. This includes evidence that was collected from
    #            Security Hub with a <i>Fail</i> ruling, or collected from
    #            Config with a <i>Non-compliant</i> ruling. </p>
    #
    #   @return [Integer]
    #
    # @!attribute compliant_evidence_count
    #   <p>The number of compliance check evidence that Audit Manager classified as compliant on
    #            the <code>lastUpdated</code> date. This includes evidence that was collected from Security Hub with a <i>Pass</i> ruling, or collected from Config with a <i>Compliant</i> ruling. </p>
    #
    #   @return [Integer]
    #
    # @!attribute inconclusive_evidence_count
    #   <p>The number of evidence without a compliance check ruling. Evidence is inconclusive when the
    #            associated control uses Security Hub or Config as a data source
    #            but you didn't enable those services. This is also the case when a control uses a data
    #            source that doesn’t support compliance checks (for example: manual evidence, API calls, or
    #            CloudTrail). </p>
    #            <note>
    #               <p>If evidence has a compliance check status of <i>not applicable</i>, it's classed
    #            as <i>inconclusive</i> in <code>Insights</code> data.</p>
    #            </note>
    #
    #   @return [Integer]
    #
    # @!attribute assessment_controls_count_by_noncompliant_evidence
    #   <p>The number of assessment controls that collected non-compliant evidence on the
    #            <code>lastUpdated</code> date. </p>
    #
    #   @return [Integer]
    #
    # @!attribute total_assessment_controls_count
    #   <p>The total number of controls across all active assessments. </p>
    #
    #   @return [Integer]
    #
    # @!attribute last_updated
    #   <p>The time when the cross-assessment insights were last updated. </p>
    #
    #   @return [Time]
    #
    Insights = ::Struct.new(
      :active_assessments_count,
      :noncompliant_evidence_count,
      :compliant_evidence_count,
      :inconclusive_evidence_count,
      :assessment_controls_count_by_noncompliant_evidence,
      :total_assessment_controls_count,
      :last_updated,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A summary of the latest analytics data for a specific active assessment.</p>
    #          <p>This summary is a snapshot of the data that was collected on the <code>lastUpdated</code>
    #          date. It’s important to understand that the totals in <code>InsightsByAssessment</code> are
    #          daily counts based on this date — they aren’t a total sum to date. </p>
    #          <p>The <code>InsightsByAssessment</code> data is eventually consistent. This means that
    #          when you read data from <code>InsightsByAssessment</code>, the response might not instantly
    #          reflect the results of a recently completed write or update operation. If you repeat your
    #          read request after a few hours, the response returns the latest data.</p>
    #          <note>
    #             <p>If you delete an assessment or change its status to inactive,
    #             <code>InsightsByAssessment</code> includes data for that assessment as
    #             follows.</p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <b>Inactive assessments</b> - If Audit Manager collected
    #                evidence for your assessment before you changed it inactive, that evidence is
    #                included in the <code>InsightsByAssessment</code> counts for that day.</p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <b>Deleted assessments</b> - If Audit Manager collected
    #                evidence for your assessment before you deleted it, that evidence isn't included
    #                in the <code>InsightsByAssessment</code> counts for that day.</p>
    #                </li>
    #             </ul>
    #          </note>
    #
    # @!attribute noncompliant_evidence_count
    #   <p>The number of compliance check evidence that Audit Manager classified as non-compliant.
    #            This includes evidence that was collected from Security Hub with a
    #            <i>Fail</i> ruling, or collected from Config with a
    #            <i>Non-compliant</i> ruling. </p>
    #
    #   @return [Integer]
    #
    # @!attribute compliant_evidence_count
    #   <p>The number of compliance check evidence that Audit Manager classified as compliant.
    #            This includes evidence that was collected from Security Hub with a
    #            <i>Pass</i> ruling, or collected from Config with a
    #            <i>Compliant</i> ruling. </p>
    #
    #   @return [Integer]
    #
    # @!attribute inconclusive_evidence_count
    #   <p>The amount of evidence without a compliance check ruling. Evidence is inconclusive if the
    #            associated control uses Security Hub or Config as a data source
    #            and you didn't enable those services. This is also the case if a control uses a data source
    #            that doesn’t support compliance checks (for example, manual evidence, API calls, or CloudTrail). </p>
    #            <note>
    #               <p>If evidence has a compliance check status of <i>not applicable</i>, it's
    #            classified as <i>inconclusive</i> in <code>InsightsByAssessment</code>
    #            data.</p>
    #            </note>
    #
    #   @return [Integer]
    #
    # @!attribute assessment_controls_count_by_noncompliant_evidence
    #   <p>The number of assessment controls that collected non-compliant evidence on the
    #            <code>lastUpdated</code> date. </p>
    #
    #   @return [Integer]
    #
    # @!attribute total_assessment_controls_count
    #   <p>The total number of controls in the assessment. </p>
    #
    #   @return [Integer]
    #
    # @!attribute last_updated
    #   <p>The time when the assessment insights were last updated.</p>
    #
    #   @return [Time]
    #
    InsightsByAssessment = ::Struct.new(
      :noncompliant_evidence_count,
      :compliant_evidence_count,
      :inconclusive_evidence_count,
      :assessment_controls_count_by_noncompliant_evidence,
      :total_assessment_controls_count,
      :last_updated,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> An internal service error occurred during the processing of your request. Try again
    #          later. </p>
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

    # Includes enum constants for KeywordInputType
    #
    module KeywordInputType
      # No documentation available.
      #
      SELECT_FROM_LIST = "SELECT_FROM_LIST"
    end

    # @!attribute control_domain_id
    #   <p>The unique identifier for the control domain. </p>
    #
    #   @return [String]
    #
    # @!attribute assessment_id
    #   <p>The unique identifier for the active assessment. </p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Represents the maximum number of results on a page or for an API request call. </p>
    #
    #   @return [Integer]
    #
    ListAssessmentControlInsightsByControlDomainInput = ::Struct.new(
      :control_domain_id,
      :assessment_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute control_insights_by_assessment
    #   <p>The assessment control analytics data that the
    #            <code>ListAssessmentControlInsightsByControlDomain</code> API returned. </p>
    #
    #   @return [Array<ControlInsightsMetadataByAssessmentItem>]
    #
    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results. </p>
    #
    #   @return [String]
    #
    ListAssessmentControlInsightsByControlDomainOutput = ::Struct.new(
      :control_insights_by_assessment,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute request_type
    #   <p> Specifies whether the share request is a sent request or a received request.</p>
    #
    #   Enum, one of: ["SENT", "RECEIVED"]
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p> The pagination token that's used to fetch the next set of results. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p> Represents the maximum number of results on a page or for an API request call. </p>
    #
    #   @return [Integer]
    #
    ListAssessmentFrameworkShareRequestsInput = ::Struct.new(
      :request_type,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute assessment_framework_share_requests
    #   <p> The list of share requests that the <code>ListAssessmentFrameworkShareRequests</code>
    #            API returned. </p>
    #
    #   @return [Array<AssessmentFrameworkShareRequest>]
    #
    # @!attribute next_token
    #   <p> The pagination token that's used to fetch the next set of results. </p>
    #
    #   @return [String]
    #
    ListAssessmentFrameworkShareRequestsOutput = ::Struct.new(
      :assessment_framework_share_requests,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute framework_type
    #   <p> The type of framework, such as a standard framework or a custom framework. </p>
    #
    #   Enum, one of: ["Standard", "Custom"]
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p> The pagination token that's used to fetch the next set of results. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p> Represents the maximum number of results on a page or for an API request call. </p>
    #
    #   @return [Integer]
    #
    ListAssessmentFrameworksInput = ::Struct.new(
      :framework_type,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute framework_metadata_list
    #   <p> The list of metadata objects for the framework. </p>
    #
    #   @return [Array<AssessmentFrameworkMetadata>]
    #
    # @!attribute next_token
    #   <p> The pagination token that's used to fetch the next set of results. </p>
    #
    #   @return [String]
    #
    ListAssessmentFrameworksOutput = ::Struct.new(
      :framework_metadata_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p> The pagination token that's used to fetch the next set of results. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p> Represents the maximum number of results on a page or for an API request call. </p>
    #
    #   @return [Integer]
    #
    ListAssessmentReportsInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute assessment_reports
    #   <p> The list of assessment reports that the <code>ListAssessmentReports</code> API
    #            returned. </p>
    #
    #   @return [Array<AssessmentReportMetadata>]
    #
    # @!attribute next_token
    #   <p> The pagination token that's used to fetch the next set of results. </p>
    #
    #   @return [String]
    #
    ListAssessmentReportsOutput = ::Struct.new(
      :assessment_reports,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute status
    #   <p> The current status of the assessment.</p>
    #
    #   Enum, one of: ["ACTIVE", "INACTIVE"]
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p> The pagination token that's used to fetch the next set of results. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p> Represents the maximum number of results on a page or for an API request call. </p>
    #
    #   @return [Integer]
    #
    ListAssessmentsInput = ::Struct.new(
      :status,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute assessment_metadata
    #   <p> The metadata that's associated with the assessment. </p>
    #
    #   @return [Array<AssessmentMetadataItem>]
    #
    # @!attribute next_token
    #   <p> The pagination token that's used to fetch the next set of results. </p>
    #
    #   @return [String]
    #
    ListAssessmentsOutput = ::Struct.new(
      :assessment_metadata,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute assessment_id
    #   <p>The unique identifier for the active assessment. </p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Represents the maximum number of results on a page or for an API request call. </p>
    #
    #   @return [Integer]
    #
    ListControlDomainInsightsByAssessmentInput = ::Struct.new(
      :assessment_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute control_domain_insights
    #   <p>The control domain analytics data that the
    #            <code>ListControlDomainInsightsByAssessment</code> API returned. </p>
    #
    #   @return [Array<ControlDomainInsights>]
    #
    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results. </p>
    #
    #   @return [String]
    #
    ListControlDomainInsightsByAssessmentOutput = ::Struct.new(
      :control_domain_insights,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Represents the maximum number of results on a page or for an API request call. </p>
    #
    #   @return [Integer]
    #
    ListControlDomainInsightsInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute control_domain_insights
    #   <p>The control domain analytics data that the <code>ListControlDomainInsights</code> API
    #            returned. </p>
    #
    #   @return [Array<ControlDomainInsights>]
    #
    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results. </p>
    #
    #   @return [String]
    #
    ListControlDomainInsightsOutput = ::Struct.new(
      :control_domain_insights,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute control_domain_id
    #   <p>The unique identifier for the control domain. </p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Represents the maximum number of results on a page or for an API request call. </p>
    #
    #   @return [Integer]
    #
    ListControlInsightsByControlDomainInput = ::Struct.new(
      :control_domain_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute control_insights_metadata
    #   <p>The control analytics data that the <code>ListControlInsightsByControlDomain</code> API
    #            returned. </p>
    #
    #   @return [Array<ControlInsightsMetadataItem>]
    #
    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results. </p>
    #
    #   @return [String]
    #
    ListControlInsightsByControlDomainOutput = ::Struct.new(
      :control_insights_metadata,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute control_type
    #   <p> The type of control, such as a standard control or a custom control. </p>
    #
    #   Enum, one of: ["Standard", "Custom"]
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p> The pagination token that's used to fetch the next set of results. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p> Represents the maximum number of results on a page or for an API request call. </p>
    #
    #   @return [Integer]
    #
    ListControlsInput = ::Struct.new(
      :control_type,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute control_metadata_list
    #   <p> The list of control metadata objects that the <code>ListControls</code> API returned.
    #         </p>
    #
    #   @return [Array<ControlMetadata>]
    #
    # @!attribute next_token
    #   <p> The pagination token that's used to fetch the next set of results. </p>
    #
    #   @return [String]
    #
    ListControlsOutput = ::Struct.new(
      :control_metadata_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute source
    #   <p> The control mapping data source that the keywords apply to. </p>
    #
    #   Enum, one of: ["AWS_Cloudtrail", "AWS_Config", "AWS_Security_Hub", "AWS_API_Call", "MANUAL"]
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p> The pagination token that's used to fetch the next set of results. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p> Represents the maximum number of results on a page or for an API request call. </p>
    #
    #   @return [Integer]
    #
    ListKeywordsForDataSourceInput = ::Struct.new(
      :source,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute keywords
    #   <p> The list of keywords for the event mapping source. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p> The pagination token that's used to fetch the next set of results. </p>
    #
    #   @return [String]
    #
    ListKeywordsForDataSourceOutput = ::Struct.new(
      :keywords,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p> The pagination token that's used to fetch the next set of results. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p> Represents the maximum number of results on a page or for an API request call. </p>
    #
    #   @return [Integer]
    #
    ListNotificationsInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute notifications
    #   <p> The returned list of notifications. </p>
    #
    #   @return [Array<Notification>]
    #
    # @!attribute next_token
    #   <p> The pagination token that's used to fetch the next set of results. </p>
    #
    #   @return [String]
    #
    ListNotificationsOutput = ::Struct.new(
      :notifications,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p> The Amazon Resource Name (ARN) of the resource. </p>
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
    #   <p> The list of tags that the <code>ListTagsForResource</code> API returned. </p>
    #
    #   @return [Hash<String, String>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Evidence that's uploaded to Audit Manager manually. </p>
    #
    # @!attribute s3_resource_path
    #   <p> The Amazon S3 URL that points to a manual evidence object. </p>
    #
    #   @return [String]
    #
    ManualEvidence = ::Struct.new(
      :s3_resource_path,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The notification that informs a user of an update in Audit Manager. For
    #          example, this includes the notification that's sent when a control set is delegated for
    #          review. </p>
    #
    # @!attribute id
    #   <p> The unique identifier for the notification. </p>
    #
    #   @return [String]
    #
    # @!attribute assessment_id
    #   <p> The identifier for the assessment. </p>
    #
    #   @return [String]
    #
    # @!attribute assessment_name
    #   <p> The name of the related assessment. </p>
    #
    #   @return [String]
    #
    # @!attribute control_set_id
    #   <p> The identifier for the control set. </p>
    #
    #   @return [String]
    #
    # @!attribute control_set_name
    #   <p> Specifies the name of the control set that the notification is about. </p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p> The description of the notification. </p>
    #
    #   @return [String]
    #
    # @!attribute event_time
    #   <p> The time when the notification was sent. </p>
    #
    #   @return [Time]
    #
    # @!attribute source
    #   <p> The sender of the notification. </p>
    #
    #   @return [String]
    #
    Notification = ::Struct.new(
      :id,
      :assessment_id,
      :assessment_name,
      :control_set_id,
      :control_set_name,
      :description,
      :event_time,
      :source,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ObjectTypeEnum
    #
    module ObjectTypeEnum
      # No documentation available.
      #
      ASSESSMENT = "ASSESSMENT"

      # No documentation available.
      #
      CONTROL_SET = "CONTROL_SET"

      # No documentation available.
      #
      CONTROL = "CONTROL"

      # No documentation available.
      #
      DELEGATION = "DELEGATION"

      # No documentation available.
      #
      ASSESSMENT_REPORT = "ASSESSMENT_REPORT"
    end

    # @!attribute kms_key
    #   <p> The KMS key details. </p>
    #
    #   @return [String]
    #
    # @!attribute delegated_admin_account
    #   <p> The delegated administrator account for Audit Manager. </p>
    #
    #   @return [String]
    #
    RegisterAccountInput = ::Struct.new(
      :kms_key,
      :delegated_admin_account,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute status
    #   <p> The status of the account registration request. </p>
    #
    #   Enum, one of: ["ACTIVE", "INACTIVE", "PENDING_ACTIVATION"]
    #
    #   @return [String]
    #
    RegisterAccountOutput = ::Struct.new(
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute admin_account_id
    #   <p> The identifier for the delegated administrator account. </p>
    #
    #   @return [String]
    #
    RegisterOrganizationAdminAccountInput = ::Struct.new(
      :admin_account_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute admin_account_id
    #   <p> The identifier for the delegated administrator account. </p>
    #
    #   @return [String]
    #
    # @!attribute organization_id
    #   <p> The identifier for the organization. </p>
    #
    #   @return [String]
    #
    RegisterOrganizationAdminAccountOutput = ::Struct.new(
      :admin_account_id,
      :organization_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> A system asset that's evaluated in an Audit Manager assessment. </p>
    #
    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) for the resource. </p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p> The value of the resource. </p>
    #
    #   @return [String]
    #
    Resource = ::Struct.new(
      :arn,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The resource that's specified in the request can't be found. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p> The unique identifier for the resource. </p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p> The type of resource that's affected by the error. </p>
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

    # <p> The wrapper that contains the Audit Manager role information of the current
    #          user. This includes the role type and IAM Amazon Resource Name (ARN).
    #       </p>
    #
    # @!attribute role_type
    #   <p> The type of customer persona. </p>
    #            <note>
    #               <p>In <code>CreateAssessment</code>, <code>roleType</code> can only be
    #                  <code>PROCESS_OWNER</code>. </p>
    #               <p>In <code>UpdateSettings</code>, <code>roleType</code> can only be
    #                  <code>PROCESS_OWNER</code>.</p>
    #               <p>In <code>BatchCreateDelegationByAssessment</code>, <code>roleType</code> can only be
    #                  <code>RESOURCE_OWNER</code>.</p>
    #            </note>
    #
    #   Enum, one of: ["PROCESS_OWNER", "RESOURCE_OWNER"]
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p> The Amazon Resource Name (ARN) of the IAM role. </p>
    #
    #   @return [String]
    #
    Role = ::Struct.new(
      :role_type,
      :role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RoleType
    #
    module RoleType
      # No documentation available.
      #
      PROCESS_OWNER = "PROCESS_OWNER"

      # No documentation available.
      #
      RESOURCE_OWNER = "RESOURCE_OWNER"
    end

    # <p> The wrapper that contains the Amazon Web Services accounts and services that are in
    #          scope for the assessment. </p>
    #
    # @!attribute aws_accounts
    #   <p> The Amazon Web Services accounts that are included in the scope of the assessment.
    #         </p>
    #
    #   @return [Array<AWSAccount>]
    #
    # @!attribute aws_services
    #   <p> The Amazon Web Services services that are included in the scope of the assessment.
    #         </p>
    #
    #   @return [Array<AWSService>]
    #
    Scope = ::Struct.new(
      :aws_accounts,
      :aws_services,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The metadata that's associated with the Amazon Web Service. </p>
    #
    # @!attribute name
    #   <p> The name of the Amazon Web Service. </p>
    #
    #   @return [String]
    #
    # @!attribute display_name
    #   <p> The display name of the Amazon Web Service. </p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p> The description of the Amazon Web Service. </p>
    #
    #   @return [String]
    #
    # @!attribute category
    #   <p> The category that the Amazon Web Service belongs to, such as compute, storage,
    #            or database. </p>
    #
    #   @return [String]
    #
    ServiceMetadata = ::Struct.new(
      :name,
      :display_name,
      :description,
      :category,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SettingAttribute
    #
    module SettingAttribute
      # No documentation available.
      #
      ALL = "ALL"

      # No documentation available.
      #
      IS_AWS_ORG_ENABLED = "IS_AWS_ORG_ENABLED"

      # No documentation available.
      #
      SNS_TOPIC = "SNS_TOPIC"

      # No documentation available.
      #
      DEFAULT_ASSESSMENT_REPORTS_DESTINATION = "DEFAULT_ASSESSMENT_REPORTS_DESTINATION"

      # No documentation available.
      #
      DEFAULT_PROCESS_OWNERS = "DEFAULT_PROCESS_OWNERS"
    end

    # <p> The settings object that holds all supported Audit Manager settings. </p>
    #
    # @!attribute is_aws_org_enabled
    #   <p> Specifies whether Organizations is enabled. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute sns_topic
    #   <p> The designated Amazon Simple Notification Service (Amazon SNS) topic. </p>
    #
    #   @return [String]
    #
    # @!attribute default_assessment_reports_destination
    #   <p> The default storage destination for assessment reports. </p>
    #
    #   @return [AssessmentReportsDestination]
    #
    # @!attribute default_process_owners
    #   <p> The designated default audit owners. </p>
    #
    #   @return [Array<Role>]
    #
    # @!attribute kms_key
    #   <p> The KMS key details. </p>
    #
    #   @return [String]
    #
    Settings = ::Struct.new(
      :is_aws_org_enabled,
      :sns_topic,
      :default_assessment_reports_destination,
      :default_process_owners,
      :kms_key,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ShareRequestAction
    #
    module ShareRequestAction
      # No documentation available.
      #
      ACCEPT = "ACCEPT"

      # No documentation available.
      #
      DECLINE = "DECLINE"

      # No documentation available.
      #
      REVOKE = "REVOKE"
    end

    # Includes enum constants for ShareRequestStatus
    #
    module ShareRequestStatus
      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      REPLICATING = "REPLICATING"

      # No documentation available.
      #
      SHARED = "SHARED"

      # No documentation available.
      #
      EXPIRING = "EXPIRING"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      EXPIRED = "EXPIRED"

      # No documentation available.
      #
      DECLINED = "DECLINED"

      # No documentation available.
      #
      REVOKED = "REVOKED"
    end

    # Includes enum constants for ShareRequestType
    #
    module ShareRequestType
      # No documentation available.
      #
      SENT = "SENT"

      # No documentation available.
      #
      RECEIVED = "RECEIVED"
    end

    # Includes enum constants for SourceFrequency
    #
    module SourceFrequency
      # No documentation available.
      #
      DAILY = "DAILY"

      # No documentation available.
      #
      WEEKLY = "WEEKLY"

      # No documentation available.
      #
      MONTHLY = "MONTHLY"
    end

    # <p> The keyword to search for in CloudTrail logs, Config rules,
    #          Security Hub checks, and Amazon Web Services API names. </p>
    #
    # @!attribute keyword_input_type
    #   <p> The input method for the keyword. </p>
    #
    #   Enum, one of: ["SELECT_FROM_LIST"]
    #
    #   @return [String]
    #
    # @!attribute keyword_value
    #   <p> The value of the keyword that's used when mapping a control data source. For example,
    #            this can be a CloudTrail event name, a rule name for Config, a
    #               Security Hub control, or the name of an Amazon Web Services API call. </p>
    #            <p>If you’re mapping a data source to a rule in Config, the
    #               <code>keywordValue</code> that you specify depends on the type of rule:</p>
    #            <ul>
    #               <li>
    #                  <p>For <a href="https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_use-managed-rules.html">managed rules</a>, you can use the rule identifier as the
    #                     <code>keywordValue</code>. You can find the rule identifier from the <a href="https://docs.aws.amazon.com/config/latest/developerguide/managed-rules-by-aws-config.html">list of Config managed rules</a>.</p>
    #                  <ul>
    #                     <li>
    #                        <p>Managed rule name: <a href="https://docs.aws.amazon.com/config/latest/developerguide/s3-bucket-acl-prohibited.html">s3-bucket-acl-prohibited</a>
    #                        </p>
    #                        <p>
    #                           <code>keywordValue</code>: <code>S3_BUCKET_ACL_PROHIBITED</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>For <a href="https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_develop-rules.html">custom rules</a>, you form the <code>keywordValue</code>
    #                  by adding the <code>Custom_</code> prefix to the rule name. This prefix distinguishes
    #                  the rule from a managed rule.</p>
    #                  <ul>
    #                     <li>
    #                        <p>Custom rule name: my-custom-config-rule</p>
    #                        <p>
    #                           <code>keywordValue</code>: <code>Custom_my-custom-config-rule</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>For <a href="https://docs.aws.amazon.com/config/latest/developerguide/service-linked-awsconfig-rules.html">service-linked rules</a>, you form the
    #                     <code>keywordValue</code> by adding the <code>Custom_</code> prefix to the rule
    #                  name. In addition, you remove the suffix ID that appears at the end of the rule
    #                  name.</p>
    #                  <ul>
    #                     <li>
    #                        <p>Service-linked rule name:
    #                        CustomRuleForAccount-conformance-pack-szsm1uv0w</p>
    #                        <p>
    #                           <code>keywordValue</code>:
    #                           <code>Custom_CustomRuleForAccount-conformance-pack</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>Service-linked rule name: securityhub-api-gw-cache-encrypted-101104e1</p>
    #                        <p>
    #                           <code>keywordValue</code>:
    #                           <code>Custom_securityhub-api-gw-cache-encrypted</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>Service-linked rule name:
    #                        OrgConfigRule-s3-bucket-versioning-enabled-dbgzf8ba</p>
    #                        <p>
    #                           <code>keywordValue</code>:
    #                           <code>Custom_OrgConfigRule-s3-bucket-versioning-enabled</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    SourceKeyword = ::Struct.new(
      :keyword_input_type,
      :keyword_value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SourceSetUpOption
    #
    module SourceSetUpOption
      # No documentation available.
      #
      SYSTEM_CONTROLS_MAPPING = "System_Controls_Mapping"

      # No documentation available.
      #
      PROCEDURAL_CONTROLS_MAPPING = "Procedural_Controls_Mapping"
    end

    # Includes enum constants for SourceType
    #
    module SourceType
      # No documentation available.
      #
      AWS_CLOUDTRAIL = "AWS_Cloudtrail"

      # No documentation available.
      #
      AWS_CONFIG = "AWS_Config"

      # No documentation available.
      #
      AWS_SECURITY_HUB = "AWS_Security_Hub"

      # No documentation available.
      #
      AWS_API_CALL = "AWS_API_Call"

      # No documentation available.
      #
      MANUAL = "MANUAL"
    end

    # @!attribute framework_id
    #   <p> The unique identifier for the custom framework to be shared. </p>
    #
    #   @return [String]
    #
    # @!attribute destination_account
    #   <p> The Amazon Web Services account of the recipient. </p>
    #
    #   @return [String]
    #
    # @!attribute destination_region
    #   <p> The Amazon Web Services Region of the recipient. </p>
    #
    #   @return [String]
    #
    # @!attribute comment
    #   <p> An optional comment from the sender about the share request. </p>
    #
    #   @return [String]
    #
    StartAssessmentFrameworkShareInput = ::Struct.new(
      :framework_id,
      :destination_account,
      :destination_region,
      :comment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute assessment_framework_share_request
    #   <p> The share request that's created by the <code>StartAssessmentFrameworkShare</code> API.
    #         </p>
    #
    #   @return [AssessmentFrameworkShareRequest]
    #
    StartAssessmentFrameworkShareOutput = ::Struct.new(
      :assessment_framework_share_request,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p> The Amazon Resource Name (ARN) of the resource. </p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p> The tags that are associated with the resource. </p>
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
    ThrottlingException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Short for uniform resource locator. A URL is used as a unique identifier to locate a
    #          resource on the internet. </p>
    #
    # @!attribute hyperlink_name
    #   <p> The name or word that's used as a hyperlink to the URL. </p>
    #
    #   @return [String]
    #
    # @!attribute link
    #   <p> The unique identifier for the internet resource. </p>
    #
    #   @return [String]
    #
    URL = ::Struct.new(
      :hyperlink_name,
      :link,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p> The Amazon Resource Name (ARN) of the specified resource. </p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p> The name or key of the tag. </p>
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

    # @!attribute assessment_id
    #   <p> The unique identifier for the assessment. </p>
    #
    #   @return [String]
    #
    # @!attribute control_set_id
    #   <p> The unique identifier for the control set. </p>
    #
    #   @return [String]
    #
    # @!attribute control_id
    #   <p> The unique identifier for the control. </p>
    #
    #   @return [String]
    #
    # @!attribute control_status
    #   <p> The status of the control. </p>
    #
    #   Enum, one of: ["UNDER_REVIEW", "REVIEWED", "INACTIVE"]
    #
    #   @return [String]
    #
    # @!attribute comment_body
    #   <p> The comment body text for the control. </p>
    #
    #   @return [String]
    #
    UpdateAssessmentControlInput = ::Struct.new(
      :assessment_id,
      :control_set_id,
      :control_id,
      :control_status,
      :comment_body,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute control
    #   <p> The name of the updated control set that the <code>UpdateAssessmentControl</code> API
    #            returned. </p>
    #
    #   @return [AssessmentControl]
    #
    UpdateAssessmentControlOutput = ::Struct.new(
      :control,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute assessment_id
    #   <p> The unique identifier for the assessment. </p>
    #
    #   @return [String]
    #
    # @!attribute control_set_id
    #   <p> The unique identifier for the control set. </p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p> The status of the control set that's being updated. </p>
    #
    #   Enum, one of: ["ACTIVE", "UNDER_REVIEW", "REVIEWED"]
    #
    #   @return [String]
    #
    # @!attribute comment
    #   <p> The comment that's related to the status update. </p>
    #
    #   @return [String]
    #
    UpdateAssessmentControlSetStatusInput = ::Struct.new(
      :assessment_id,
      :control_set_id,
      :status,
      :comment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute control_set
    #   <p> The name of the updated control set that the
    #            <code>UpdateAssessmentControlSetStatus</code> API returned. </p>
    #
    #   @return [AssessmentControlSet]
    #
    UpdateAssessmentControlSetStatusOutput = ::Struct.new(
      :control_set,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> A <code>controlSet</code> entity that represents a collection of controls in Audit Manager. This doesn't contain the control set ID. </p>
    #
    # @!attribute id
    #   <p> The unique identifier for the control set. </p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p> The name of the control set. </p>
    #
    #   @return [String]
    #
    # @!attribute controls
    #   <p> The list of controls that are contained within the control set. </p>
    #
    #   @return [Array<CreateAssessmentFrameworkControl>]
    #
    UpdateAssessmentFrameworkControlSet = ::Struct.new(
      :id,
      :name,
      :controls,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute framework_id
    #   <p> The unique identifier for the framework. </p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p> The name of the framework to be updated. </p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p> The description of the updated framework. </p>
    #
    #   @return [String]
    #
    # @!attribute compliance_type
    #   <p> The compliance type that the new custom framework supports, such as CIS or HIPAA.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute control_sets
    #   <p> The control sets that are associated with the framework. </p>
    #
    #   @return [Array<UpdateAssessmentFrameworkControlSet>]
    #
    UpdateAssessmentFrameworkInput = ::Struct.new(
      :framework_id,
      :name,
      :description,
      :compliance_type,
      :control_sets,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute framework
    #   <p> The name of the framework. </p>
    #
    #   @return [Framework]
    #
    UpdateAssessmentFrameworkOutput = ::Struct.new(
      :framework,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute request_id
    #   <p> The unique identifier for the share request. </p>
    #
    #   @return [String]
    #
    # @!attribute request_type
    #   <p>Specifies whether the share request is a sent request or a received request.</p>
    #
    #   Enum, one of: ["SENT", "RECEIVED"]
    #
    #   @return [String]
    #
    # @!attribute action
    #   <p>Specifies the update action for the share request.</p>
    #
    #   Enum, one of: ["ACCEPT", "DECLINE", "REVOKE"]
    #
    #   @return [String]
    #
    UpdateAssessmentFrameworkShareInput = ::Struct.new(
      :request_id,
      :request_type,
      :action,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute assessment_framework_share_request
    #   <p> The updated share request that's returned by the
    #            <code>UpdateAssessmentFrameworkShare</code> operation. </p>
    #
    #   @return [AssessmentFrameworkShareRequest]
    #
    UpdateAssessmentFrameworkShareOutput = ::Struct.new(
      :assessment_framework_share_request,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute assessment_id
    #   <p> The unique identifier for the assessment. </p>
    #
    #   @return [String]
    #
    # @!attribute assessment_name
    #   <p> The name of the assessment to be updated. </p>
    #
    #   @return [String]
    #
    # @!attribute assessment_description
    #   <p> The description of the assessment. </p>
    #
    #   @return [String]
    #
    # @!attribute scope
    #   <p> The scope of the assessment. </p>
    #
    #   @return [Scope]
    #
    # @!attribute assessment_reports_destination
    #   <p> The assessment report storage destination for the assessment that's being updated.
    #         </p>
    #
    #   @return [AssessmentReportsDestination]
    #
    # @!attribute roles
    #   <p> The list of roles for the assessment. </p>
    #
    #   @return [Array<Role>]
    #
    UpdateAssessmentInput = ::Struct.new(
      :assessment_id,
      :assessment_name,
      :assessment_description,
      :scope,
      :assessment_reports_destination,
      :roles,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute assessment
    #   <p> The response object for the <code>UpdateAssessmentRequest</code> API. This is the name
    #            of the updated assessment.</p>
    #
    #   @return [Assessment]
    #
    UpdateAssessmentOutput = ::Struct.new(
      :assessment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute assessment_id
    #   <p> The unique identifier for the assessment. </p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p> The current status of the assessment. </p>
    #
    #   Enum, one of: ["ACTIVE", "INACTIVE"]
    #
    #   @return [String]
    #
    UpdateAssessmentStatusInput = ::Struct.new(
      :assessment_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute assessment
    #   <p> The name of the updated assessment that the <code>UpdateAssessmentStatus</code> API
    #            returned. </p>
    #
    #   @return [Assessment]
    #
    UpdateAssessmentStatusOutput = ::Struct.new(
      :assessment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute control_id
    #   <p> The identifier for the control. </p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p> The name of the updated control. </p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p> The optional description of the control. </p>
    #
    #   @return [String]
    #
    # @!attribute testing_information
    #   <p> The steps that you should follow to determine if the control is met. </p>
    #
    #   @return [String]
    #
    # @!attribute action_plan_title
    #   <p> The title of the action plan for remediating the control. </p>
    #
    #   @return [String]
    #
    # @!attribute action_plan_instructions
    #   <p> The recommended actions to carry out if the control isn't fulfilled. </p>
    #
    #   @return [String]
    #
    # @!attribute control_mapping_sources
    #   <p> The data mapping sources for the control. </p>
    #
    #   @return [Array<ControlMappingSource>]
    #
    UpdateControlInput = ::Struct.new(
      :control_id,
      :name,
      :description,
      :testing_information,
      :action_plan_title,
      :action_plan_instructions,
      :control_mapping_sources,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute control
    #   <p> The name of the updated control set that the <code>UpdateControl</code> API returned.
    #         </p>
    #
    #   @return [Control]
    #
    UpdateControlOutput = ::Struct.new(
      :control,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute sns_topic
    #   <p> The Amazon Simple Notification Service (Amazon SNS) topic that Audit Manager sends
    #            notifications to. </p>
    #
    #   @return [String]
    #
    # @!attribute default_assessment_reports_destination
    #   <p> The default storage destination for assessment reports. </p>
    #
    #   @return [AssessmentReportsDestination]
    #
    # @!attribute default_process_owners
    #   <p> A list of the default audit owners. </p>
    #
    #   @return [Array<Role>]
    #
    # @!attribute kms_key
    #   <p> The KMS key details. </p>
    #
    #   @return [String]
    #
    UpdateSettingsInput = ::Struct.new(
      :sns_topic,
      :default_assessment_reports_destination,
      :default_process_owners,
      :kms_key,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute settings
    #   <p> The current list of settings. </p>
    #
    #   @return [Settings]
    #
    UpdateSettingsOutput = ::Struct.new(
      :settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute s3_relative_path
    #   <p> The relative path of the Amazon S3 bucket that the assessment report is stored
    #            in. </p>
    #
    #   @return [String]
    #
    ValidateAssessmentReportIntegrityInput = ::Struct.new(
      :s3_relative_path,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute signature_valid
    #   <p> Specifies whether the signature key is valid. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute signature_algorithm
    #   <p> The signature algorithm that's used to code sign the assessment report file. </p>
    #
    #   @return [String]
    #
    # @!attribute signature_date_time
    #   <p> The date and time signature that specifies when the assessment report was created.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute signature_key_id
    #   <p> The unique identifier for the validation signature key. </p>
    #
    #   @return [String]
    #
    # @!attribute validation_errors
    #   <p> Represents any errors that occurred when validating the assessment report. </p>
    #
    #   @return [Array<String>]
    #
    ValidateAssessmentReportIntegrityOutput = ::Struct.new(
      :signature_valid,
      :signature_algorithm,
      :signature_date_time,
      :signature_key_id,
      :validation_errors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The request has invalid or missing parameters. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p> The reason the request failed validation. </p>
    #
    #   Enum, one of: ["unknownOperation", "cannotParse", "fieldValidationFailed", "other"]
    #
    #   @return [String]
    #
    # @!attribute fields
    #   <p> The fields that caused the error, if applicable. </p>
    #
    #   @return [Array<ValidationExceptionField>]
    #
    ValidationException = ::Struct.new(
      :message,
      :reason,
      :fields,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Indicates that the request has invalid or missing parameters for the field. </p>
    #
    # @!attribute name
    #   <p> The name of the validation error. </p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p> The body of the error message. </p>
    #
    #   @return [String]
    #
    ValidationExceptionField = ::Struct.new(
      :name,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ValidationExceptionReason
    #
    module ValidationExceptionReason
      # No documentation available.
      #
      UNKNOWN_OPERATION = "unknownOperation"

      # No documentation available.
      #
      CANNOT_PARSE = "cannotParse"

      # No documentation available.
      #
      FIELD_VALIDATION_FAILED = "fieldValidationFailed"

      # No documentation available.
      #
      OTHER = "other"
    end

  end
end
