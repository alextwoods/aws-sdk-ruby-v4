# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SSM
  module Types

    # <p>Information includes the Amazon Web Services account ID where the current document is shared and the
    #    version shared with that account.</p>
    #
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID where the current document is shared.</p>
    #
    #   @return [String]
    #
    # @!attribute shared_document_version
    #   <p>The version of the current document shared with the account.</p>
    #
    #   @return [String]
    #
    AccountSharingInfo = ::Struct.new(
      :account_id,
      :shared_document_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An activation registers one or more on-premises servers or virtual machines (VMs) with Amazon Web Services
    #    so that you can configure those servers or VMs using Run Command. A server or VM that has been
    #    registered with Amazon Web Services Systems Manager is called a managed node.</p>
    #
    # @!attribute activation_id
    #   <p>The ID created by Systems Manager when you submitted the activation.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A user defined description of the activation.</p>
    #
    #   @return [String]
    #
    # @!attribute default_instance_name
    #   <p>A name for the managed node when it is created.</p>
    #
    #   @return [String]
    #
    # @!attribute iam_role
    #   <p>The Identity and Access Management (IAM) role to assign to the managed node.</p>
    #
    #   @return [String]
    #
    # @!attribute registration_limit
    #   <p>The maximum number of managed nodes that can be registered using this activation.</p>
    #
    #   @return [Integer]
    #
    # @!attribute registrations_count
    #   <p>The number of managed nodes already registered with this activation.</p>
    #
    #   @return [Integer]
    #
    # @!attribute expiration_date
    #   <p>The date when this activation can no longer be used to register managed nodes.</p>
    #
    #   @return [Time]
    #
    # @!attribute expired
    #   <p>Whether or not the activation is expired.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute created_date
    #   <p>The date the activation was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute tags
    #   <p>Tags assigned to the activation.</p>
    #
    #   @return [Array<Tag>]
    #
    Activation = ::Struct.new(
      :activation_id,
      :description,
      :default_instance_name,
      :iam_role,
      :registration_limit,
      :registrations_count,
      :expiration_date,
      :expired,
      :created_date,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.registration_limit ||= 0
        self.registrations_count ||= 0
        self.expired ||= false
      end
    end

    # @!attribute resource_type
    #   <p>Specifies the type of resource you are tagging.</p>
    #            <note>
    #               <p>The <code>ManagedInstance</code> type for this API operation is for on-premises managed
    #       nodes. You must specify the name of the managed node in the following format:
    #         <code>mi-<i>ID_number</i>
    #                  </code>. For example,
    #       <code>mi-1a2b3c4d5e6f</code>.</p>
    #            </note>
    #
    #   Enum, one of: ["Document", "ManagedInstance", "MaintenanceWindow", "Parameter", "PatchBaseline", "OpsItem", "OpsMetadata", "Automation"]
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The resource ID you want to tag.</p>
    #            <p>Use the ID of the resource. Here are some examples:</p>
    #            <p>
    #               <code>MaintenanceWindow</code>: <code>mw-012345abcde</code>
    #            </p>
    #            <p>
    #               <code>PatchBaseline</code>: <code>pb-012345abcde</code>
    #            </p>
    #            <p>
    #               <code>Automation</code>: <code>example-c160-4567-8519-012345abcde</code>
    #            </p>
    #            <p>
    #               <code>OpsMetadata</code> object: <code>ResourceID</code> for tagging is created from the
    #      Amazon Resource Name (ARN) for the object. Specifically, <code>ResourceID</code> is created from
    #      the strings that come after the word <code>opsmetadata</code> in the ARN. For example, an
    #      OpsMetadata object with an ARN of
    #       <code>arn:aws:ssm:us-east-2:1234567890:opsmetadata/aws/ssm/MyGroup/appmanager</code> has a
    #       <code>ResourceID</code> of either <code>aws/ssm/MyGroup/appmanager</code> or
    #       <code>/aws/ssm/MyGroup/appmanager</code>.</p>
    #            <p>For the <code>Document</code> and <code>Parameter</code> values, use the name of the
    #      resource.</p>
    #            <p>
    #               <code>ManagedInstance</code>: <code>mi-012345abcde</code>
    #            </p>
    #            <note>
    #               <p>The <code>ManagedInstance</code> type for this API operation is only for on-premises
    #       managed nodes. You must specify the name of the managed node in the following format:
    #         <code>mi-<i>ID_number</i>
    #                  </code>. For example,
    #       <code>mi-1a2b3c4d5e6f</code>.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>One or more tags. The value parameter is required.</p>
    #            <important>
    #               <p>Don't enter personally identifiable information in this field.</p>
    #            </important>
    #
    #   @return [Array<Tag>]
    #
    AddTagsToResourceInput = ::Struct.new(
      :resource_type,
      :resource_id,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AddTagsToResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Error returned if an attempt is made to register a patch group with a patch baseline that is
    #    already registered with a different patch baseline.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AlreadyExistsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute ops_item_id
    #   <p>The ID of the OpsItem to which you want to associate a resource as a related item.</p>
    #
    #   @return [String]
    #
    # @!attribute association_type
    #   <p>The type of association that you want to create between an OpsItem and a resource. OpsCenter
    #      supports <code>IsParentOf</code> and <code>RelatesTo</code> association types.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The type of resource that you want to associate with an OpsItem. OpsCenter supports the
    #      following types:</p>
    #            <p>
    #               <code>AWS::SSMIncidents::IncidentRecord</code>: an Incident Manager incident. </p>
    #            <p>
    #               <code>AWS::SSM::Document</code>: a Systems Manager (SSM) document.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_uri
    #   <p>The Amazon Resource Name (ARN) of the Amazon Web Services resource that you want to associate with the
    #      OpsItem.</p>
    #
    #   @return [String]
    #
    AssociateOpsItemRelatedItemInput = ::Struct.new(
      :ops_item_id,
      :association_type,
      :resource_type,
      :resource_uri,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute association_id
    #   <p>The association ID.</p>
    #
    #   @return [String]
    #
    AssociateOpsItemRelatedItemOutput = ::Struct.new(
      :association_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You must disassociate a document from all managed nodes before you can delete it.</p>
    #
    AssociatedInstances = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes an association of a Amazon Web Services Systems Manager document (SSM document) and a managed node.</p>
    #
    # @!attribute name
    #   <p>The name of the SSM document.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_id
    #   <p>The managed node ID.</p>
    #
    #   @return [String]
    #
    # @!attribute association_id
    #   <p>The ID created by the system when you create an association. An association is a binding
    #      between a document and a set of targets with a schedule.</p>
    #
    #   @return [String]
    #
    # @!attribute association_version
    #   <p>The association version.</p>
    #
    #   @return [String]
    #
    # @!attribute document_version
    #   <p>The version of the document used in the association. If you change a document version for a
    #      State Manager association, Systems Manager immediately runs the association unless you previously specifed
    #      the <code>apply-only-at-cron-interval</code> parameter.</p>
    #
    #            <important>
    #               <p>State Manager doesn't support running associations that use a new version of a document if
    #       that document is shared from another account. State Manager always runs the <code>default</code>
    #       version of a document if shared from another account, even though the Systems Manager console shows that a
    #       new version was processed. If you want to run an association using a new version of a document
    #       shared form another account, you must set the document version to <code>default</code>.</p>
    #            </important>
    #
    #   @return [String]
    #
    # @!attribute targets
    #   <p>The managed nodes targeted by the request to create an association. You can target all
    #      managed nodes in an Amazon Web Services account by specifying the <code>InstanceIds</code> key with a value of
    #       <code>*</code>.</p>
    #
    #   @return [Array<Target>]
    #
    # @!attribute last_execution_date
    #   <p>The date on which the association was last run.</p>
    #
    #   @return [Time]
    #
    # @!attribute overview
    #   <p>Information about the association.</p>
    #
    #   @return [AssociationOverview]
    #
    # @!attribute schedule_expression
    #   <p>A cron expression that specifies a schedule when the association runs. The schedule runs in
    #      Coordinated Universal Time (UTC).</p>
    #
    #   @return [String]
    #
    # @!attribute association_name
    #   <p>The association name.</p>
    #
    #   @return [String]
    #
    # @!attribute schedule_offset
    #   <p>Number of days to wait after the scheduled day to run an association.</p>
    #
    #   @return [Integer]
    #
    # @!attribute target_maps
    #   <p>A key-value mapping of document parameters to target resources. Both Targets and TargetMaps
    #      can't be specified together.</p>
    #
    #   @return [Array<Hash<String, Array<String>>>]
    #
    Association = ::Struct.new(
      :name,
      :instance_id,
      :association_id,
      :association_version,
      :document_version,
      :targets,
      :last_execution_date,
      :overview,
      :schedule_expression,
      :association_name,
      :schedule_offset,
      :target_maps,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified association already exists.</p>
    #
    AssociationAlreadyExists = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AssociationComplianceSeverity
    #
    module AssociationComplianceSeverity
      # No documentation available.
      #
      Critical = "CRITICAL"

      # No documentation available.
      #
      High = "HIGH"

      # No documentation available.
      #
      Medium = "MEDIUM"

      # No documentation available.
      #
      Low = "LOW"

      # No documentation available.
      #
      Unspecified = "UNSPECIFIED"
    end

    # <p>Describes the parameters for a document.</p>
    #
    # @!attribute name
    #   <p>The name of the SSM document.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_id
    #   <p>The managed node ID.</p>
    #
    #   @return [String]
    #
    # @!attribute association_version
    #   <p>The association version.</p>
    #
    #   @return [String]
    #
    # @!attribute date
    #   <p>The date when the association was made.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_update_association_date
    #   <p>The date when the association was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute status
    #   <p>The association status.</p>
    #
    #   @return [AssociationStatus]
    #
    # @!attribute overview
    #   <p>Information about the association.</p>
    #
    #   @return [AssociationOverview]
    #
    # @!attribute document_version
    #   <p>The document version.</p>
    #
    #   @return [String]
    #
    # @!attribute automation_target_parameter_name
    #   <p>Choose the parameter that will define how your automation will branch out. This target is
    #      required for associations that use an Automation runbook and target resources by using rate
    #      controls. Automation is a capability of Amazon Web Services Systems Manager.</p>
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>A description of the parameters for a document. </p>
    #
    #   @return [Hash<String, Array<String>>]
    #
    # @!attribute association_id
    #   <p>The association ID.</p>
    #
    #   @return [String]
    #
    # @!attribute targets
    #   <p>The managed nodes targeted by the request. </p>
    #
    #   @return [Array<Target>]
    #
    # @!attribute schedule_expression
    #   <p>A cron expression that specifies a schedule when the association runs.</p>
    #
    #   @return [String]
    #
    # @!attribute output_location
    #   <p>An S3 bucket where you want to store the output details of the request.</p>
    #
    #   @return [InstanceAssociationOutputLocation]
    #
    # @!attribute last_execution_date
    #   <p>The date on which the association was last run.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_successful_execution_date
    #   <p>The last date on which the association was successfully run.</p>
    #
    #   @return [Time]
    #
    # @!attribute association_name
    #   <p>The association name.</p>
    #
    #   @return [String]
    #
    # @!attribute max_errors
    #   <p>The number of errors that are allowed before the system stops sending requests to run the
    #      association on additional targets. You can specify either an absolute number of errors, for
    #      example 10, or a percentage of the target set, for example 10%. If you specify 3, for example,
    #      the system stops sending requests when the fourth error is received. If you specify 0, then the
    #      system stops sending requests after the first error is returned. If you run an association on 50
    #      managed nodes and set <code>MaxError</code> to 10%, then the system stops sending the request
    #      when the sixth error is received.</p>
    #            <p>Executions that are already running an association when <code>MaxErrors</code> is reached
    #      are allowed to complete, but some of these executions may fail as well. If you need to ensure
    #      that there won't be more than max-errors failed executions, set <code>MaxConcurrency</code> to 1
    #      so that executions proceed one at a time.</p>
    #
    #   @return [String]
    #
    # @!attribute max_concurrency
    #   <p>The maximum number of targets allowed to run the association at the same time. You can
    #      specify a number, for example 10, or a percentage of the target set, for example 10%. The default
    #      value is 100%, which means all targets run the association at the same time.</p>
    #            <p>If a new managed node starts and attempts to run an association while Systems Manager is running
    #       <code>MaxConcurrency</code> associations, the association is allowed to run. During the next
    #      association interval, the new managed node will process its association within the limit
    #      specified for <code>MaxConcurrency</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute compliance_severity
    #   <p>The severity level that is assigned to the association.</p>
    #
    #   Enum, one of: ["CRITICAL", "HIGH", "MEDIUM", "LOW", "UNSPECIFIED"]
    #
    #   @return [String]
    #
    # @!attribute sync_compliance
    #   <p>The mode for generating association compliance. You can specify <code>AUTO</code> or
    #       <code>MANUAL</code>. In <code>AUTO</code> mode, the system uses the status of the association
    #      execution to determine the compliance status. If the association execution runs successfully,
    #      then the association is <code>COMPLIANT</code>. If the association execution doesn't run
    #      successfully, the association is <code>NON-COMPLIANT</code>.</p>
    #            <p>In <code>MANUAL</code> mode, you must specify the <code>AssociationId</code> as a parameter
    #      for the <a>PutComplianceItems</a> API operation. In this case, compliance data isn't
    #      managed by State Manager, a capability of Amazon Web Services Systems Manager. It is managed by your direct call to the
    #       <a>PutComplianceItems</a> API operation.</p>
    #            <p>By default, all associations use <code>AUTO</code> mode.</p>
    #
    #   Enum, one of: ["AUTO", "MANUAL"]
    #
    #   @return [String]
    #
    # @!attribute apply_only_at_cron_interval
    #   <p>By default, when you create a new associations, the system runs it immediately after it is
    #      created and then according to the schedule you specified. Specify this option if you don't want
    #      an association to run immediately after you create it. This parameter isn't supported for rate
    #      expressions.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute calendar_names
    #   <p>The names or Amazon Resource Names (ARNs) of the Change Calendar type documents your
    #      associations are gated under. The associations only run when that change calendar is open. For
    #      more information, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-change-calendar">Amazon Web Services Systems Manager Change
    #       Calendar</a>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute target_locations
    #   <p>The combination of Amazon Web Services Regions and Amazon Web Services accounts where you want to run the
    #      association.</p>
    #
    #   @return [Array<TargetLocation>]
    #
    # @!attribute schedule_offset
    #   <p>Number of days to wait after the scheduled day to run an association.</p>
    #
    #   @return [Integer]
    #
    # @!attribute target_maps
    #   <p>A key-value mapping of document parameters to target resources. Both Targets and TargetMaps
    #      can't be specified together.</p>
    #
    #   @return [Array<Hash<String, Array<String>>>]
    #
    AssociationDescription = ::Struct.new(
      :name,
      :instance_id,
      :association_version,
      :date,
      :last_update_association_date,
      :status,
      :overview,
      :document_version,
      :automation_target_parameter_name,
      :parameters,
      :association_id,
      :targets,
      :schedule_expression,
      :output_location,
      :last_execution_date,
      :last_successful_execution_date,
      :association_name,
      :max_errors,
      :max_concurrency,
      :compliance_severity,
      :sync_compliance,
      :apply_only_at_cron_interval,
      :calendar_names,
      :target_locations,
      :schedule_offset,
      :target_maps,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.apply_only_at_cron_interval ||= false
      end

      def to_s
        "#<struct AWS::SDK::SSM::Types::AssociationDescription "\
          "name=#{name || 'nil'}, "\
          "instance_id=#{instance_id || 'nil'}, "\
          "association_version=#{association_version || 'nil'}, "\
          "date=#{date || 'nil'}, "\
          "last_update_association_date=#{last_update_association_date || 'nil'}, "\
          "status=#{status || 'nil'}, "\
          "overview=#{overview || 'nil'}, "\
          "document_version=#{document_version || 'nil'}, "\
          "automation_target_parameter_name=#{automation_target_parameter_name || 'nil'}, "\
          "parameters=\"[SENSITIVE]\", "\
          "association_id=#{association_id || 'nil'}, "\
          "targets=#{targets || 'nil'}, "\
          "schedule_expression=#{schedule_expression || 'nil'}, "\
          "output_location=#{output_location || 'nil'}, "\
          "last_execution_date=#{last_execution_date || 'nil'}, "\
          "last_successful_execution_date=#{last_successful_execution_date || 'nil'}, "\
          "association_name=#{association_name || 'nil'}, "\
          "max_errors=#{max_errors || 'nil'}, "\
          "max_concurrency=#{max_concurrency || 'nil'}, "\
          "compliance_severity=#{compliance_severity || 'nil'}, "\
          "sync_compliance=#{sync_compliance || 'nil'}, "\
          "apply_only_at_cron_interval=#{apply_only_at_cron_interval || 'nil'}, "\
          "calendar_names=#{calendar_names || 'nil'}, "\
          "target_locations=#{target_locations || 'nil'}, "\
          "schedule_offset=#{schedule_offset || 'nil'}, "\
          "target_maps=#{target_maps || 'nil'}>"
      end
    end

    # <p>The specified association doesn't exist.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AssociationDoesNotExist = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Includes information about the specified association.</p>
    #
    # @!attribute association_id
    #   <p>The association ID.</p>
    #
    #   @return [String]
    #
    # @!attribute association_version
    #   <p>The association version.</p>
    #
    #   @return [String]
    #
    # @!attribute execution_id
    #   <p>The execution ID for the association.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the association execution.</p>
    #
    #   @return [String]
    #
    # @!attribute detailed_status
    #   <p>Detailed status information about the execution.</p>
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>The time the execution started.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_execution_date
    #   <p>The date of the last execution.</p>
    #
    #   @return [Time]
    #
    # @!attribute resource_count_by_status
    #   <p>An aggregate status of the resources in the execution based on the status type.</p>
    #
    #   @return [String]
    #
    AssociationExecution = ::Struct.new(
      :association_id,
      :association_version,
      :execution_id,
      :status,
      :detailed_status,
      :created_time,
      :last_execution_date,
      :resource_count_by_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified execution ID doesn't exist. Verify the ID number and try again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AssociationExecutionDoesNotExist = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Filters used in the request.</p>
    #
    # @!attribute key
    #   <p>The key value used in the request.</p>
    #
    #   Enum, one of: ["ExecutionId", "Status", "CreatedTime"]
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value specified for the key.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The filter type specified in the request.</p>
    #
    #   Enum, one of: ["EQUAL", "LESS_THAN", "GREATER_THAN"]
    #
    #   @return [String]
    #
    AssociationExecutionFilter = ::Struct.new(
      :key,
      :value,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AssociationExecutionFilterKey
    #
    module AssociationExecutionFilterKey
      # No documentation available.
      #
      ExecutionId = "ExecutionId"

      # No documentation available.
      #
      Status = "Status"

      # No documentation available.
      #
      CreatedTime = "CreatedTime"
    end

    # <p>Includes information about the specified association execution.</p>
    #
    # @!attribute association_id
    #   <p>The association ID.</p>
    #
    #   @return [String]
    #
    # @!attribute association_version
    #   <p>The association version.</p>
    #
    #   @return [String]
    #
    # @!attribute execution_id
    #   <p>The execution ID.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The resource ID, for example, the managed node ID where the association ran.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The resource type, for example, EC2.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The association execution status.</p>
    #
    #   @return [String]
    #
    # @!attribute detailed_status
    #   <p>Detailed information about the execution status.</p>
    #
    #   @return [String]
    #
    # @!attribute last_execution_date
    #   <p>The date of the last execution.</p>
    #
    #   @return [Time]
    #
    # @!attribute output_source
    #   <p>The location where the association details are saved.</p>
    #
    #   @return [OutputSource]
    #
    AssociationExecutionTarget = ::Struct.new(
      :association_id,
      :association_version,
      :execution_id,
      :resource_id,
      :resource_type,
      :status,
      :detailed_status,
      :last_execution_date,
      :output_source,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Filters for the association execution.</p>
    #
    # @!attribute key
    #   <p>The key value used in the request.</p>
    #
    #   Enum, one of: ["Status", "ResourceId", "ResourceType"]
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value specified for the key.</p>
    #
    #   @return [String]
    #
    AssociationExecutionTargetsFilter = ::Struct.new(
      :key,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AssociationExecutionTargetsFilterKey
    #
    module AssociationExecutionTargetsFilterKey
      # No documentation available.
      #
      Status = "Status"

      # No documentation available.
      #
      ResourceId = "ResourceId"

      # No documentation available.
      #
      ResourceType = "ResourceType"
    end

    # <p>Describes a filter.</p>
    #
    # @!attribute key
    #   <p>The name of the filter.</p>
    #            <note>
    #               <p>
    #                  <code>InstanceId</code> has been deprecated.</p>
    #            </note>
    #
    #   Enum, one of: ["InstanceId", "Name", "AssociationId", "AssociationStatusName", "LastExecutedBefore", "LastExecutedAfter", "AssociationName", "ResourceGroupName"]
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The filter value.</p>
    #
    #   @return [String]
    #
    AssociationFilter = ::Struct.new(
      :key,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AssociationFilterKey
    #
    module AssociationFilterKey
      # No documentation available.
      #
      InstanceId = "InstanceId"

      # No documentation available.
      #
      Name = "Name"

      # No documentation available.
      #
      AssociationId = "AssociationId"

      # No documentation available.
      #
      Status = "AssociationStatusName"

      # No documentation available.
      #
      LastExecutedBefore = "LastExecutedBefore"

      # No documentation available.
      #
      LastExecutedAfter = "LastExecutedAfter"

      # No documentation available.
      #
      AssociationName = "AssociationName"

      # No documentation available.
      #
      ResourceGroupName = "ResourceGroupName"
    end

    # Includes enum constants for AssociationFilterOperatorType
    #
    module AssociationFilterOperatorType
      # No documentation available.
      #
      Equal = "EQUAL"

      # No documentation available.
      #
      LessThan = "LESS_THAN"

      # No documentation available.
      #
      GreaterThan = "GREATER_THAN"
    end

    # <p>You can have at most 2,000 active associations.</p>
    #
    AssociationLimitExceeded = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the association.</p>
    #
    # @!attribute status
    #   <p>The status of the association. Status can be: Pending, Success, or Failed.</p>
    #
    #   @return [String]
    #
    # @!attribute detailed_status
    #   <p>A detailed status of the association.</p>
    #
    #   @return [String]
    #
    # @!attribute association_status_aggregated_count
    #   <p>Returns the number of targets for the association status. For example, if you created an
    #      association with two managed nodes, and one of them was successful, this would return the count
    #      of managed nodes by status.</p>
    #
    #   @return [Hash<String, Integer>]
    #
    AssociationOverview = ::Struct.new(
      :status,
      :detailed_status,
      :association_status_aggregated_count,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes an association status.</p>
    #
    # @!attribute date
    #   <p>The date when the status changed.</p>
    #
    #   @return [Time]
    #
    # @!attribute name
    #   <p>The status.</p>
    #
    #   Enum, one of: ["Pending", "Success", "Failed"]
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The reason for the status.</p>
    #
    #   @return [String]
    #
    # @!attribute additional_info
    #   <p>A user-defined string.</p>
    #
    #   @return [String]
    #
    AssociationStatus = ::Struct.new(
      :date,
      :name,
      :message,
      :additional_info,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AssociationStatusName
    #
    module AssociationStatusName
      # No documentation available.
      #
      Pending = "Pending"

      # No documentation available.
      #
      Success = "Success"

      # No documentation available.
      #
      Failed = "Failed"
    end

    # Includes enum constants for AssociationSyncCompliance
    #
    module AssociationSyncCompliance
      # No documentation available.
      #
      Auto = "AUTO"

      # No documentation available.
      #
      Manual = "MANUAL"
    end

    # <p>Information about the association version.</p>
    #
    # @!attribute association_id
    #   <p>The ID created by the system when the association was created.</p>
    #
    #   @return [String]
    #
    # @!attribute association_version
    #   <p>The association version.</p>
    #
    #   @return [String]
    #
    # @!attribute created_date
    #   <p>The date the association version was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute name
    #   <p>The name specified when the association was created.</p>
    #
    #   @return [String]
    #
    # @!attribute document_version
    #   <p>The version of an Amazon Web Services Systems Manager document (SSM document) used when the association version was
    #      created.</p>
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>Parameters specified when the association version was created.</p>
    #
    #   @return [Hash<String, Array<String>>]
    #
    # @!attribute targets
    #   <p>The targets specified for the association when the association version was created. </p>
    #
    #   @return [Array<Target>]
    #
    # @!attribute schedule_expression
    #   <p>The cron or rate schedule specified for the association when the association version was
    #      created.</p>
    #
    #   @return [String]
    #
    # @!attribute output_location
    #   <p>The location in Amazon S3 specified for the association when the association version
    #      was created.</p>
    #
    #   @return [InstanceAssociationOutputLocation]
    #
    # @!attribute association_name
    #   <p>The name specified for the association version when the association version was
    #      created.</p>
    #
    #   @return [String]
    #
    # @!attribute max_errors
    #   <p>The number of errors that are allowed before the system stops sending requests to run the
    #      association on additional targets. You can specify either an absolute number of errors, for
    #      example 10, or a percentage of the target set, for example 10%. If you specify 3, for example,
    #      the system stops sending requests when the fourth error is received. If you specify 0, then the
    #      system stops sending requests after the first error is returned. If you run an association on 50
    #      managed nodes and set <code>MaxError</code> to 10%, then the system stops sending the request
    #      when the sixth error is received.</p>
    #            <p>Executions that are already running an association when <code>MaxErrors</code> is reached
    #      are allowed to complete, but some of these executions may fail as well. If you need to ensure
    #      that there won't be more than max-errors failed executions, set <code>MaxConcurrency</code> to 1
    #      so that executions proceed one at a time.</p>
    #
    #   @return [String]
    #
    # @!attribute max_concurrency
    #   <p>The maximum number of targets allowed to run the association at the same time. You can
    #      specify a number, for example 10, or a percentage of the target set, for example 10%. The default
    #      value is 100%, which means all targets run the association at the same time.</p>
    #            <p>If a new managed node starts and attempts to run an association while Systems Manager is running
    #       <code>MaxConcurrency</code> associations, the association is allowed to run. During the next
    #      association interval, the new managed node will process its association within the limit
    #      specified for <code>MaxConcurrency</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute compliance_severity
    #   <p>The severity level that is assigned to the association.</p>
    #
    #   Enum, one of: ["CRITICAL", "HIGH", "MEDIUM", "LOW", "UNSPECIFIED"]
    #
    #   @return [String]
    #
    # @!attribute sync_compliance
    #   <p>The mode for generating association compliance. You can specify <code>AUTO</code> or
    #       <code>MANUAL</code>. In <code>AUTO</code> mode, the system uses the status of the association
    #      execution to determine the compliance status. If the association execution runs successfully,
    #      then the association is <code>COMPLIANT</code>. If the association execution doesn't run
    #      successfully, the association is <code>NON-COMPLIANT</code>.</p>
    #            <p>In <code>MANUAL</code> mode, you must specify the <code>AssociationId</code> as a parameter
    #      for the <a>PutComplianceItems</a> API operation. In this case, compliance data isn't
    #      managed by State Manager, a capability of Amazon Web Services Systems Manager. It is managed by your direct call to the
    #       <a>PutComplianceItems</a> API operation.</p>
    #            <p>By default, all associations use <code>AUTO</code> mode.</p>
    #
    #   Enum, one of: ["AUTO", "MANUAL"]
    #
    #   @return [String]
    #
    # @!attribute apply_only_at_cron_interval
    #   <p>By default, when you create a new associations, the system runs it immediately after it is
    #      created and then according to the schedule you specified. Specify this option if you don't want
    #      an association to run immediately after you create it. This parameter isn't supported for rate
    #      expressions.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute calendar_names
    #   <p>The names or Amazon Resource Names (ARNs) of the Change Calendar type documents your
    #      associations are gated under. The associations for this version only run when that Change
    #      Calendar is open. For more information, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-change-calendar">Amazon Web Services Systems Manager Change
    #       Calendar</a>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute target_locations
    #   <p>The combination of Amazon Web Services Regions and Amazon Web Services accounts where you wanted to run the association
    #      when this association version was created.</p>
    #
    #   @return [Array<TargetLocation>]
    #
    # @!attribute schedule_offset
    #   <p>Number of days to wait after the scheduled day to run an association.</p>
    #
    #   @return [Integer]
    #
    # @!attribute target_maps
    #   <p>A key-value mapping of document parameters to target resources. Both Targets and TargetMaps
    #      can't be specified together.</p>
    #
    #   @return [Array<Hash<String, Array<String>>>]
    #
    AssociationVersionInfo = ::Struct.new(
      :association_id,
      :association_version,
      :created_date,
      :name,
      :document_version,
      :parameters,
      :targets,
      :schedule_expression,
      :output_location,
      :association_name,
      :max_errors,
      :max_concurrency,
      :compliance_severity,
      :sync_compliance,
      :apply_only_at_cron_interval,
      :calendar_names,
      :target_locations,
      :schedule_offset,
      :target_maps,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.apply_only_at_cron_interval ||= false
      end

      def to_s
        "#<struct AWS::SDK::SSM::Types::AssociationVersionInfo "\
          "association_id=#{association_id || 'nil'}, "\
          "association_version=#{association_version || 'nil'}, "\
          "created_date=#{created_date || 'nil'}, "\
          "name=#{name || 'nil'}, "\
          "document_version=#{document_version || 'nil'}, "\
          "parameters=\"[SENSITIVE]\", "\
          "targets=#{targets || 'nil'}, "\
          "schedule_expression=#{schedule_expression || 'nil'}, "\
          "output_location=#{output_location || 'nil'}, "\
          "association_name=#{association_name || 'nil'}, "\
          "max_errors=#{max_errors || 'nil'}, "\
          "max_concurrency=#{max_concurrency || 'nil'}, "\
          "compliance_severity=#{compliance_severity || 'nil'}, "\
          "sync_compliance=#{sync_compliance || 'nil'}, "\
          "apply_only_at_cron_interval=#{apply_only_at_cron_interval || 'nil'}, "\
          "calendar_names=#{calendar_names || 'nil'}, "\
          "target_locations=#{target_locations || 'nil'}, "\
          "schedule_offset=#{schedule_offset || 'nil'}, "\
          "target_maps=#{target_maps || 'nil'}>"
      end
    end

    # <p>You have reached the maximum number versions allowed for an association. Each association
    #    has a limit of 1,000 versions. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AssociationVersionLimitExceeded = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure that includes attributes that describe a document attachment.</p>
    #
    # @!attribute name
    #   <p>The name of an attachment.</p>
    #
    #   @return [String]
    #
    # @!attribute size
    #   <p>The size of an attachment in bytes.</p>
    #
    #   @return [Integer]
    #
    # @!attribute member_hash
    #   <p>The cryptographic hash value of the document content.</p>
    #
    #   @return [String]
    #
    # @!attribute hash_type
    #   <p>The hash algorithm used to calculate the hash value.</p>
    #
    #   Enum, one of: ["Sha256"]
    #
    #   @return [String]
    #
    # @!attribute url
    #   <p>The URL location of the attachment content.</p>
    #
    #   @return [String]
    #
    AttachmentContent = ::Struct.new(
      :name,
      :size,
      :member_hash,
      :hash_type,
      :url,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.size ||= 0
      end
    end

    # Includes enum constants for AttachmentHashType
    #
    module AttachmentHashType
      # No documentation available.
      #
      SHA256 = "Sha256"
    end

    # <p>An attribute of an attachment, such as the attachment name.</p>
    #
    # @!attribute name
    #   <p>The name of the attachment.</p>
    #
    #   @return [String]
    #
    AttachmentInformation = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Identifying information about a document attachment, including the file name and a key-value
    #    pair that identifies the location of an attachment to a document.</p>
    #
    # @!attribute key
    #   <p>The key of a key-value pair that identifies the location of an attachment to a
    #      document.</p>
    #
    #   Enum, one of: ["SourceUrl", "S3FileUrl", "AttachmentReference"]
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>The value of a key-value pair that identifies the location of an attachment to a document.
    #      The format for <b>Value</b> depends on the type of key you
    #      specify.</p>
    #            <ul>
    #               <li>
    #                  <p>For the key <i>SourceUrl</i>, the value is an S3 bucket location. For
    #        example:</p>
    #                  <p>
    #                     <code>"Values": [ "s3://doc-example-bucket/my-folder" ]</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For the key <i>S3FileUrl</i>, the value is a file in an S3 bucket. For
    #        example:</p>
    #                  <p>
    #                     <code>"Values": [ "s3://doc-example-bucket/my-folder/my-file.py" ]</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For the key <i>AttachmentReference</i>, the value is constructed from the
    #        name of another SSM document in your account, a version number of that document, and a file
    #        attached to that document version that you want to reuse. For example:</p>
    #                  <p>
    #                     <code>"Values": [ "MyOtherDocument/3/my-other-file.py" ]</code>
    #                  </p>
    #                  <p>However, if the SSM document is shared with you from another account, the full SSM
    #        document ARN must be specified instead of the document name only. For example:</p>
    #                  <p>
    #                     <code>"Values": [
    #         "arn:aws:ssm:us-east-2:111122223333:document/OtherAccountDocument/3/their-file.py"
    #         ]</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<String>]
    #
    # @!attribute name
    #   <p>The name of the document attachment file.</p>
    #
    #   @return [String]
    #
    AttachmentsSource = ::Struct.new(
      :key,
      :values,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AttachmentsSourceKey
    #
    module AttachmentsSourceKey
      # No documentation available.
      #
      SourceUrl = "SourceUrl"

      # No documentation available.
      #
      S3FileUrl = "S3FileUrl"

      # No documentation available.
      #
      AttachmentReference = "AttachmentReference"
    end

    # <p>Indicates that the Change Manager change template used in the change request was rejected or is
    #    still in a pending state.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AutomationDefinitionNotApprovedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An Automation runbook with the specified name couldn't be found.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AutomationDefinitionNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An Automation runbook with the specified name and version couldn't be found.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AutomationDefinitionVersionNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Detailed information about the current state of an individual Automation execution.</p>
    #
    # @!attribute automation_execution_id
    #   <p>The execution ID.</p>
    #
    #   @return [String]
    #
    # @!attribute document_name
    #   <p>The name of the Automation runbook used during the execution.</p>
    #
    #   @return [String]
    #
    # @!attribute document_version
    #   <p>The version of the document to use during execution.</p>
    #
    #   @return [String]
    #
    # @!attribute execution_start_time
    #   <p>The time the execution started.</p>
    #
    #   @return [Time]
    #
    # @!attribute execution_end_time
    #   <p>The time the execution finished.</p>
    #
    #   @return [Time]
    #
    # @!attribute automation_execution_status
    #   <p>The execution status of the Automation.</p>
    #
    #   Enum, one of: ["Pending", "InProgress", "Waiting", "Success", "TimedOut", "Cancelling", "Cancelled", "Failed", "PendingApproval", "Approved", "Rejected", "Scheduled", "RunbookInProgress", "PendingChangeCalendarOverride", "ChangeCalendarOverrideApproved", "ChangeCalendarOverrideRejected", "CompletedWithSuccess", "CompletedWithFailure"]
    #
    #   @return [String]
    #
    # @!attribute step_executions
    #   <p>A list of details about the current state of all steps that comprise an execution. An
    #      Automation runbook contains a list of steps that are run in order.</p>
    #
    #   @return [Array<StepExecution>]
    #
    # @!attribute step_executions_truncated
    #   <p>A boolean value that indicates if the response contains the full list of the Automation step
    #      executions. If true, use the DescribeAutomationStepExecutions API operation to get the full list
    #      of step executions.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute parameters
    #   <p>The key-value map of execution parameters, which were supplied when calling <a>StartAutomationExecution</a>.</p>
    #
    #   @return [Hash<String, Array<String>>]
    #
    # @!attribute outputs
    #   <p>The list of execution outputs as defined in the Automation runbook.</p>
    #
    #   @return [Hash<String, Array<String>>]
    #
    # @!attribute failure_message
    #   <p>A message describing why an execution has failed, if the status is set to Failed.</p>
    #
    #   @return [String]
    #
    # @!attribute mode
    #   <p>The automation execution mode.</p>
    #
    #   Enum, one of: ["Auto", "Interactive"]
    #
    #   @return [String]
    #
    # @!attribute parent_automation_execution_id
    #   <p>The AutomationExecutionId of the parent automation.</p>
    #
    #   @return [String]
    #
    # @!attribute executed_by
    #   <p>The Amazon Resource Name (ARN) of the user who ran the automation.</p>
    #
    #   @return [String]
    #
    # @!attribute current_step_name
    #   <p>The name of the step that is currently running.</p>
    #
    #   @return [String]
    #
    # @!attribute current_action
    #   <p>The action of the step that is currently running.</p>
    #
    #   @return [String]
    #
    # @!attribute target_parameter_name
    #   <p>The parameter name.</p>
    #
    #   @return [String]
    #
    # @!attribute targets
    #   <p>The specified targets.</p>
    #
    #   @return [Array<Target>]
    #
    # @!attribute target_maps
    #   <p>The specified key-value mapping of document parameters to target resources.</p>
    #
    #   @return [Array<Hash<String, Array<String>>>]
    #
    # @!attribute resolved_targets
    #   <p>A list of resolved targets in the rate control execution.</p>
    #
    #   @return [ResolvedTargets]
    #
    # @!attribute max_concurrency
    #   <p>The <code>MaxConcurrency</code> value specified by the user when the execution
    #      started.</p>
    #
    #   @return [String]
    #
    # @!attribute max_errors
    #   <p>The MaxErrors value specified by the user when the execution started.</p>
    #
    #   @return [String]
    #
    # @!attribute target
    #   <p>The target of the execution.</p>
    #
    #   @return [String]
    #
    # @!attribute target_locations
    #   <p>The combination of Amazon Web Services Regions and/or Amazon Web Services accounts where you want to run the
    #      Automation.</p>
    #
    #   @return [Array<TargetLocation>]
    #
    # @!attribute progress_counters
    #   <p>An aggregate of step execution statuses displayed in the Amazon Web Services Systems Manager console for a
    #      multi-Region and multi-account Automation execution.</p>
    #
    #   @return [ProgressCounters]
    #
    # @!attribute automation_subtype
    #   <p>The subtype of the Automation operation. Currently, the only supported value is
    #       <code>ChangeRequest</code>.</p>
    #
    #   Enum, one of: ["ChangeRequest"]
    #
    #   @return [String]
    #
    # @!attribute scheduled_time
    #   <p>The date and time the Automation operation is scheduled to start.</p>
    #
    #   @return [Time]
    #
    # @!attribute runbooks
    #   <p>Information about the Automation runbooks that are run as part of a runbook workflow.</p>
    #            <note>
    #               <p>The Automation runbooks specified for the runbook workflow can't run until all required
    #       approvals for the change request have been received.</p>
    #            </note>
    #
    #   @return [Array<Runbook>]
    #
    # @!attribute ops_item_id
    #   <p>The ID of an OpsItem that is created to represent a Change Manager change request.</p>
    #
    #   @return [String]
    #
    # @!attribute association_id
    #   <p>The ID of a State Manager association used in the Automation operation.</p>
    #
    #   @return [String]
    #
    # @!attribute change_request_name
    #   <p>The name of the Change Manager change request.</p>
    #
    #   @return [String]
    #
    AutomationExecution = ::Struct.new(
      :automation_execution_id,
      :document_name,
      :document_version,
      :execution_start_time,
      :execution_end_time,
      :automation_execution_status,
      :step_executions,
      :step_executions_truncated,
      :parameters,
      :outputs,
      :failure_message,
      :mode,
      :parent_automation_execution_id,
      :executed_by,
      :current_step_name,
      :current_action,
      :target_parameter_name,
      :targets,
      :target_maps,
      :resolved_targets,
      :max_concurrency,
      :max_errors,
      :target,
      :target_locations,
      :progress_counters,
      :automation_subtype,
      :scheduled_time,
      :runbooks,
      :ops_item_id,
      :association_id,
      :change_request_name,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.step_executions_truncated ||= false
      end
    end

    # <p>A filter used to match specific automation executions. This is used to limit the scope of
    #    Automation execution information returned.</p>
    #
    # @!attribute key
    #   <p>One or more keys to limit the results.</p>
    #
    #   Enum, one of: ["DocumentNamePrefix", "ExecutionStatus", "ExecutionId", "ParentExecutionId", "CurrentAction", "StartTimeBefore", "StartTimeAfter", "AutomationType", "TagKey", "TargetResourceGroup", "AutomationSubtype", "OpsItemId"]
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>The values used to limit the execution information associated with the filter's key.</p>
    #
    #   @return [Array<String>]
    #
    AutomationExecutionFilter = ::Struct.new(
      :key,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AutomationExecutionFilterKey
    #
    module AutomationExecutionFilterKey
      # No documentation available.
      #
      DOCUMENT_NAME_PREFIX = "DocumentNamePrefix"

      # No documentation available.
      #
      EXECUTION_STATUS = "ExecutionStatus"

      # No documentation available.
      #
      EXECUTION_ID = "ExecutionId"

      # No documentation available.
      #
      PARENT_EXECUTION_ID = "ParentExecutionId"

      # No documentation available.
      #
      CURRENT_ACTION = "CurrentAction"

      # No documentation available.
      #
      START_TIME_BEFORE = "StartTimeBefore"

      # No documentation available.
      #
      START_TIME_AFTER = "StartTimeAfter"

      # No documentation available.
      #
      AUTOMATION_TYPE = "AutomationType"

      # No documentation available.
      #
      TAG_KEY = "TagKey"

      # No documentation available.
      #
      TARGET_RESOURCE_GROUP = "TargetResourceGroup"

      # No documentation available.
      #
      AUTOMATION_SUBTYPE = "AutomationSubtype"

      # No documentation available.
      #
      OPS_ITEM_ID = "OpsItemId"
    end

    # <p>The number of simultaneously running Automation executions exceeded the allowable
    #    limit.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AutomationExecutionLimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about a specific Automation execution.</p>
    #
    # @!attribute automation_execution_id
    #   <p>The execution ID.</p>
    #
    #   @return [String]
    #
    # @!attribute document_name
    #   <p>The name of the Automation runbook used during execution.</p>
    #
    #   @return [String]
    #
    # @!attribute document_version
    #   <p>The document version used during the execution.</p>
    #
    #   @return [String]
    #
    # @!attribute automation_execution_status
    #   <p>The status of the execution.</p>
    #
    #   Enum, one of: ["Pending", "InProgress", "Waiting", "Success", "TimedOut", "Cancelling", "Cancelled", "Failed", "PendingApproval", "Approved", "Rejected", "Scheduled", "RunbookInProgress", "PendingChangeCalendarOverride", "ChangeCalendarOverrideApproved", "ChangeCalendarOverrideRejected", "CompletedWithSuccess", "CompletedWithFailure"]
    #
    #   @return [String]
    #
    # @!attribute execution_start_time
    #   <p>The time the execution started.</p>
    #
    #   @return [Time]
    #
    # @!attribute execution_end_time
    #   <p>The time the execution finished. This isn't populated if the execution is still in
    #      progress.</p>
    #
    #   @return [Time]
    #
    # @!attribute executed_by
    #   <p>The IAM role ARN of the user who ran the automation.</p>
    #
    #   @return [String]
    #
    # @!attribute log_file
    #   <p>An S3 bucket where execution information is stored.</p>
    #
    #   @return [String]
    #
    # @!attribute outputs
    #   <p>The list of execution outputs as defined in the Automation runbook.</p>
    #
    #   @return [Hash<String, Array<String>>]
    #
    # @!attribute mode
    #   <p>The Automation execution mode.</p>
    #
    #   Enum, one of: ["Auto", "Interactive"]
    #
    #   @return [String]
    #
    # @!attribute parent_automation_execution_id
    #   <p>The execution ID of the parent automation.</p>
    #
    #   @return [String]
    #
    # @!attribute current_step_name
    #   <p>The name of the step that is currently running.</p>
    #
    #   @return [String]
    #
    # @!attribute current_action
    #   <p>The action of the step that is currently running.</p>
    #
    #   @return [String]
    #
    # @!attribute failure_message
    #   <p>The list of execution outputs as defined in the Automation runbook.</p>
    #
    #   @return [String]
    #
    # @!attribute target_parameter_name
    #   <p>The list of execution outputs as defined in the Automation runbook.</p>
    #
    #   @return [String]
    #
    # @!attribute targets
    #   <p>The targets defined by the user when starting the automation.</p>
    #
    #   @return [Array<Target>]
    #
    # @!attribute target_maps
    #   <p>The specified key-value mapping of document parameters to target resources.</p>
    #
    #   @return [Array<Hash<String, Array<String>>>]
    #
    # @!attribute resolved_targets
    #   <p>A list of targets that resolved during the execution.</p>
    #
    #   @return [ResolvedTargets]
    #
    # @!attribute max_concurrency
    #   <p>The <code>MaxConcurrency</code> value specified by the user when starting the
    #      automation.</p>
    #
    #   @return [String]
    #
    # @!attribute max_errors
    #   <p>The <code>MaxErrors</code> value specified by the user when starting the automation.</p>
    #
    #   @return [String]
    #
    # @!attribute target
    #   <p>The list of execution outputs as defined in the Automation runbook.</p>
    #
    #   @return [String]
    #
    # @!attribute automation_type
    #   <p>Use this filter with <a>DescribeAutomationExecutions</a>. Specify either Local or
    #      CrossAccount. CrossAccount is an Automation that runs in multiple Amazon Web Services Regions and
    #      Amazon Web Services accounts. For more information, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-automation-multiple-accounts-and-regions.html">Running Automation workflows in multiple Amazon Web Services Regions and accounts</a> in the
    #       <i>Amazon Web Services Systems Manager User Guide</i>. </p>
    #
    #   Enum, one of: ["CrossAccount", "Local"]
    #
    #   @return [String]
    #
    # @!attribute automation_subtype
    #   <p>The subtype of the Automation operation. Currently, the only supported value is
    #       <code>ChangeRequest</code>.</p>
    #
    #   Enum, one of: ["ChangeRequest"]
    #
    #   @return [String]
    #
    # @!attribute scheduled_time
    #   <p>The date and time the Automation operation is scheduled to start.</p>
    #
    #   @return [Time]
    #
    # @!attribute runbooks
    #   <p>Information about the Automation runbooks that are run during a runbook workflow in
    #      Change Manager.</p>
    #            <note>
    #               <p>The Automation runbooks specified for the runbook workflow can't run until all required
    #       approvals for the change request have been received.</p>
    #            </note>
    #
    #   @return [Array<Runbook>]
    #
    # @!attribute ops_item_id
    #   <p>The ID of an OpsItem that is created to represent a Change Manager change request.</p>
    #
    #   @return [String]
    #
    # @!attribute association_id
    #   <p>The ID of a State Manager association used in the Automation operation.</p>
    #
    #   @return [String]
    #
    # @!attribute change_request_name
    #   <p>The name of the Change Manager change request.</p>
    #
    #   @return [String]
    #
    AutomationExecutionMetadata = ::Struct.new(
      :automation_execution_id,
      :document_name,
      :document_version,
      :automation_execution_status,
      :execution_start_time,
      :execution_end_time,
      :executed_by,
      :log_file,
      :outputs,
      :mode,
      :parent_automation_execution_id,
      :current_step_name,
      :current_action,
      :failure_message,
      :target_parameter_name,
      :targets,
      :target_maps,
      :resolved_targets,
      :max_concurrency,
      :max_errors,
      :target,
      :automation_type,
      :automation_subtype,
      :scheduled_time,
      :runbooks,
      :ops_item_id,
      :association_id,
      :change_request_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>There is no automation execution information for the requested automation execution
    #    ID.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AutomationExecutionNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AutomationExecutionStatus
    #
    module AutomationExecutionStatus
      # No documentation available.
      #
      PENDING = "Pending"

      # No documentation available.
      #
      INPROGRESS = "InProgress"

      # No documentation available.
      #
      WAITING = "Waiting"

      # No documentation available.
      #
      SUCCESS = "Success"

      # No documentation available.
      #
      TIMEDOUT = "TimedOut"

      # No documentation available.
      #
      CANCELLING = "Cancelling"

      # No documentation available.
      #
      CANCELLED = "Cancelled"

      # No documentation available.
      #
      FAILED = "Failed"

      # No documentation available.
      #
      PENDING_APPROVAL = "PendingApproval"

      # No documentation available.
      #
      APPROVED = "Approved"

      # No documentation available.
      #
      REJECTED = "Rejected"

      # No documentation available.
      #
      SCHEDULED = "Scheduled"

      # No documentation available.
      #
      RUNBOOK_INPROGRESS = "RunbookInProgress"

      # No documentation available.
      #
      PENDING_CHANGE_CALENDAR_OVERRIDE = "PendingChangeCalendarOverride"

      # No documentation available.
      #
      CHANGE_CALENDAR_OVERRIDE_APPROVED = "ChangeCalendarOverrideApproved"

      # No documentation available.
      #
      CHANGE_CALENDAR_OVERRIDE_REJECTED = "ChangeCalendarOverrideRejected"

      # No documentation available.
      #
      COMPLETED_WITH_SUCCESS = "CompletedWithSuccess"

      # No documentation available.
      #
      COMPLETED_WITH_FAILURE = "CompletedWithFailure"
    end

    # <p>The specified step name and execution ID don't exist. Verify the information and try
    #    again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AutomationStepNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AutomationSubtype
    #
    module AutomationSubtype
      # No documentation available.
      #
      ChangeRequest = "ChangeRequest"
    end

    # Includes enum constants for AutomationType
    #
    module AutomationType
      # No documentation available.
      #
      CrossAccount = "CrossAccount"

      # No documentation available.
      #
      Local = "Local"
    end

    # <p>Defines the basic information about a patch baseline override.</p>
    #
    # @!attribute operating_system
    #   <p>The operating system rule used by the patch baseline override.</p>
    #
    #   Enum, one of: ["WINDOWS", "AMAZON_LINUX", "AMAZON_LINUX_2", "UBUNTU", "REDHAT_ENTERPRISE_LINUX", "SUSE", "CENTOS", "ORACLE_LINUX", "DEBIAN", "MACOS", "RASPBIAN", "ROCKY_LINUX"]
    #
    #   @return [String]
    #
    # @!attribute global_filters
    #   <p>A set of patch filters, typically used for approval rules.</p>
    #
    #   @return [PatchFilterGroup]
    #
    # @!attribute approval_rules
    #   <p>A set of rules defining the approval rules for a patch baseline.</p>
    #
    #   @return [PatchRuleGroup]
    #
    # @!attribute approved_patches
    #   <p>A list of explicitly approved patches for the baseline.</p>
    #            <p>For information about accepted formats for lists of approved patches and rejected patches,
    #                           see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-approved-rejected-package-name-formats.html">About
    #                           package name formats for approved and rejected patch lists</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute approved_patches_compliance_level
    #   <p>Defines the compliance level for approved patches. When an approved patch is reported as
    #      missing, this value describes the severity of the compliance violation.</p>
    #
    #   Enum, one of: ["CRITICAL", "HIGH", "MEDIUM", "LOW", "INFORMATIONAL", "UNSPECIFIED"]
    #
    #   @return [String]
    #
    # @!attribute rejected_patches
    #   <p>A list of explicitly rejected patches for the baseline.</p>
    #            <p>For information about accepted formats for lists of approved patches and rejected patches,
    #                           see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-approved-rejected-package-name-formats.html">About
    #                           package name formats for approved and rejected patch lists</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute rejected_patches_action
    #   <p>The action for Patch Manager to take on patches included in the
    #       <code>RejectedPackages</code> list. A patch can be allowed only if it is a dependency of another
    #      package, or blocked entirely along with packages that include it as a dependency.</p>
    #
    #   Enum, one of: ["ALLOW_AS_DEPENDENCY", "BLOCK"]
    #
    #   @return [String]
    #
    # @!attribute approved_patches_enable_non_security
    #   <p>Indicates whether the list of approved patches includes non-security updates that should be
    #      applied to the managed nodes. The default value is <code>false</code>. Applies to Linux managed
    #      nodes only.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute sources
    #   <p>Information about the patches to use to update the managed nodes, including target operating
    #      systems and source repositories. Applies to Linux managed nodes only.</p>
    #
    #   @return [Array<PatchSource>]
    #
    BaselineOverride = ::Struct.new(
      :operating_system,
      :global_filters,
      :approval_rules,
      :approved_patches,
      :approved_patches_compliance_level,
      :rejected_patches,
      :rejected_patches_action,
      :approved_patches_enable_non_security,
      :sources,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.approved_patches_enable_non_security ||= false
      end
    end

    # Includes enum constants for CalendarState
    #
    module CalendarState
      # No documentation available.
      #
      OPEN = "OPEN"

      # No documentation available.
      #
      CLOSED = "CLOSED"
    end

    # <p></p>
    #
    # @!attribute command_id
    #   <p>The ID of the command you want to cancel.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_ids
    #   <p>(Optional) A list of managed node IDs on which you want to cancel the command. If not
    #      provided, the command is canceled on every node on which it was requested.</p>
    #
    #   @return [Array<String>]
    #
    CancelCommandInput = ::Struct.new(
      :command_id,
      :instance_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Whether or not the command was successfully canceled. There is no guarantee that a request
    #    can be canceled.</p>
    #
    CancelCommandOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute window_execution_id
    #   <p>The ID of the maintenance window execution to stop.</p>
    #
    #   @return [String]
    #
    CancelMaintenanceWindowExecutionInput = ::Struct.new(
      :window_execution_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute window_execution_id
    #   <p>The ID of the maintenance window execution that has been stopped.</p>
    #
    #   @return [String]
    #
    CancelMaintenanceWindowExecutionOutput = ::Struct.new(
      :window_execution_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Configuration options for sending command output to Amazon CloudWatch Logs.</p>
    #
    # @!attribute cloud_watch_log_group_name
    #   <p>The name of the CloudWatch Logs log group where you want to send command output. If you
    #      don't specify a group name, Amazon Web Services Systems Manager automatically creates a log group for you. The log group
    #      uses the following naming format:</p>
    #            <p>
    #               <code>aws/ssm/<i>SystemsManagerDocumentName</i>
    #               </code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute cloud_watch_output_enabled
    #   <p>Enables Systems Manager to send command output to CloudWatch Logs.</p>
    #
    #   @return [Boolean]
    #
    CloudWatchOutputConfig = ::Struct.new(
      :cloud_watch_log_group_name,
      :cloud_watch_output_enabled,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.cloud_watch_output_enabled ||= false
      end
    end

    # <p>Describes a command request.</p>
    #
    # @!attribute command_id
    #   <p>A unique identifier for this command.</p>
    #
    #   @return [String]
    #
    # @!attribute document_name
    #   <p>The name of the document requested for execution.</p>
    #
    #   @return [String]
    #
    # @!attribute document_version
    #   <p>The Systems Manager document (SSM document) version.</p>
    #
    #   @return [String]
    #
    # @!attribute comment
    #   <p>User-specified information about the command, such as a brief description of what the
    #      command should do.</p>
    #
    #   @return [String]
    #
    # @!attribute expires_after
    #   <p>If this time is reached and the command hasn't already started running, it won't run.
    #      Calculated based on the <code>ExpiresAfter</code> user input provided as part of the
    #       <code>SendCommand</code> API operation.</p>
    #
    #   @return [Time]
    #
    # @!attribute parameters
    #   <p>The parameter values to be inserted in the document when running the command.</p>
    #
    #   @return [Hash<String, Array<String>>]
    #
    # @!attribute instance_ids
    #   <p>The managed node IDs against which this command was requested.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute targets
    #   <p>An array of search criteria that targets managed nodes using a Key,Value combination that
    #      you specify. Targets is required if you don't provide one or more managed node IDs in the
    #      call.</p>
    #
    #   @return [Array<Target>]
    #
    # @!attribute requested_date_time
    #   <p>The date and time the command was requested.</p>
    #
    #   @return [Time]
    #
    # @!attribute status
    #   <p>The status of the command.</p>
    #
    #   Enum, one of: ["Pending", "InProgress", "Success", "Cancelled", "Failed", "TimedOut", "Cancelling"]
    #
    #   @return [String]
    #
    # @!attribute status_details
    #   <p>A detailed status of the command execution. <code>StatusDetails</code> includes more
    #      information than <code>Status</code> because it includes states resulting from error and
    #      concurrency control parameters. <code>StatusDetails</code> can show different results than
    #      Status. For more information about these statuses, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/monitor-commands.html">Understanding command
    #       statuses</a> in the <i>Amazon Web Services Systems Manager User Guide</i>. StatusDetails can be one of the
    #      following values:</p>
    #            <ul>
    #               <li>
    #                  <p>Pending: The command hasn't been sent to any managed nodes.</p>
    #               </li>
    #               <li>
    #                  <p>In Progress: The command has been sent to at least one managed node but hasn't reached a
    #        final state on all managed nodes.</p>
    #               </li>
    #               <li>
    #                  <p>Success: The command successfully ran on all invocations. This is a terminal state.</p>
    #               </li>
    #               <li>
    #                  <p>Delivery Timed Out: The value of MaxErrors or more command invocations shows a status of
    #        Delivery Timed Out. This is a terminal state.</p>
    #               </li>
    #               <li>
    #                  <p>Execution Timed Out: The value of MaxErrors or more command invocations shows a status of
    #        Execution Timed Out. This is a terminal state.</p>
    #               </li>
    #               <li>
    #                  <p>Failed: The value of MaxErrors or more command invocations shows a status of Failed. This
    #        is a terminal state.</p>
    #               </li>
    #               <li>
    #                  <p>Incomplete: The command was attempted on all managed nodes and one or more invocations
    #        doesn't have a value of Success but not enough invocations failed for the status to be Failed.
    #        This is a terminal state.</p>
    #               </li>
    #               <li>
    #                  <p>Cancelled: The command was terminated before it was completed. This is a terminal
    #        state.</p>
    #               </li>
    #               <li>
    #                  <p>Rate Exceeded: The number of managed nodes targeted by the command exceeded the account
    #        limit for pending invocations. The system has canceled the command before running it on any
    #        managed node. This is a terminal state.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute output_s3_region
    #   <p>(Deprecated) You can no longer specify this parameter. The system ignores it. Instead, Systems Manager
    #      automatically determines the Amazon Web Services Region of the S3 bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute output_s3_bucket_name
    #   <p>The S3 bucket where the responses to the command executions should be stored. This was
    #      requested when issuing the command.</p>
    #
    #   @return [String]
    #
    # @!attribute output_s3_key_prefix
    #   <p>The S3 directory path inside the bucket where the responses to the command executions should
    #      be stored. This was requested when issuing the command.</p>
    #
    #   @return [String]
    #
    # @!attribute max_concurrency
    #   <p>The maximum number of managed nodes that are allowed to run the command at the same time.
    #      You can specify a number of managed nodes, such as 10, or a percentage of nodes, such as 10%. The
    #      default value is 50. For more information about how to use <code>MaxConcurrency</code>, see
    #       <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/run-command.html">Running
    #       commands using Systems Manager Run Command</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute max_errors
    #   <p>The maximum number of errors allowed before the system stops sending the command to
    #      additional targets. You can specify a number of errors, such as 10, or a percentage or errors,
    #      such as 10%. The default value is <code>0</code>. For more information about how to use
    #       <code>MaxErrors</code>, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/run-command.html">Running commands using Systems Manager Run
    #       Command</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute target_count
    #   <p>The number of targets for the command.</p>
    #
    #   @return [Integer]
    #
    # @!attribute completed_count
    #   <p>The number of targets for which the command invocation reached a terminal state. Terminal
    #      states include the following: Success, Failed, Execution Timed Out, Delivery Timed Out,
    #      Cancelled, Terminated, or Undeliverable.</p>
    #
    #   @return [Integer]
    #
    # @!attribute error_count
    #   <p>The number of targets for which the status is Failed or Execution Timed Out.</p>
    #
    #   @return [Integer]
    #
    # @!attribute delivery_timed_out_count
    #   <p>The number of targets for which the status is Delivery Timed Out.</p>
    #
    #   @return [Integer]
    #
    # @!attribute service_role
    #   <p>The Identity and Access Management (IAM) service role that Run Command, a capability
    #      of Amazon Web Services Systems Manager, uses to act on your behalf when sending notifications about command status changes.
    #     </p>
    #
    #   @return [String]
    #
    # @!attribute notification_config
    #   <p>Configurations for sending notifications about command status changes. </p>
    #
    #   @return [NotificationConfig]
    #
    # @!attribute cloud_watch_output_config
    #   <p>Amazon CloudWatch Logs information where you want Amazon Web Services Systems Manager to send the command
    #      output.</p>
    #
    #   @return [CloudWatchOutputConfig]
    #
    # @!attribute timeout_seconds
    #   <p>The <code>TimeoutSeconds</code> value specified for a command.</p>
    #
    #   @return [Integer]
    #
    Command = ::Struct.new(
      :command_id,
      :document_name,
      :document_version,
      :comment,
      :expires_after,
      :parameters,
      :instance_ids,
      :targets,
      :requested_date_time,
      :status,
      :status_details,
      :output_s3_region,
      :output_s3_bucket_name,
      :output_s3_key_prefix,
      :max_concurrency,
      :max_errors,
      :target_count,
      :completed_count,
      :error_count,
      :delivery_timed_out_count,
      :service_role,
      :notification_config,
      :cloud_watch_output_config,
      :timeout_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.target_count ||= 0
        self.completed_count ||= 0
        self.error_count ||= 0
        self.delivery_timed_out_count ||= 0
        self.timeout_seconds ||= 0
      end

      def to_s
        "#<struct AWS::SDK::SSM::Types::Command "\
          "command_id=#{command_id || 'nil'}, "\
          "document_name=#{document_name || 'nil'}, "\
          "document_version=#{document_version || 'nil'}, "\
          "comment=#{comment || 'nil'}, "\
          "expires_after=#{expires_after || 'nil'}, "\
          "parameters=\"[SENSITIVE]\", "\
          "instance_ids=#{instance_ids || 'nil'}, "\
          "targets=#{targets || 'nil'}, "\
          "requested_date_time=#{requested_date_time || 'nil'}, "\
          "status=#{status || 'nil'}, "\
          "status_details=#{status_details || 'nil'}, "\
          "output_s3_region=#{output_s3_region || 'nil'}, "\
          "output_s3_bucket_name=#{output_s3_bucket_name || 'nil'}, "\
          "output_s3_key_prefix=#{output_s3_key_prefix || 'nil'}, "\
          "max_concurrency=#{max_concurrency || 'nil'}, "\
          "max_errors=#{max_errors || 'nil'}, "\
          "target_count=#{target_count || 'nil'}, "\
          "completed_count=#{completed_count || 'nil'}, "\
          "error_count=#{error_count || 'nil'}, "\
          "delivery_timed_out_count=#{delivery_timed_out_count || 'nil'}, "\
          "service_role=#{service_role || 'nil'}, "\
          "notification_config=#{notification_config || 'nil'}, "\
          "cloud_watch_output_config=#{cloud_watch_output_config || 'nil'}, "\
          "timeout_seconds=#{timeout_seconds || 'nil'}>"
      end
    end

    # <p>Describes a command filter.</p>
    #          <note>
    #             <p>A managed node ID can't be specified when a command status is <code>Pending</code> because
    #     the command hasn't run on the node yet.</p>
    #          </note>
    #
    # @!attribute key
    #   <p>The name of the filter.</p>
    #            <note>
    #               <p>The <code>ExecutionStage</code> filter can't be used with the
    #        <code>ListCommandInvocations</code> operation, only with <code>ListCommands</code>.</p>
    #            </note>
    #
    #   Enum, one of: ["InvokedAfter", "InvokedBefore", "Status", "ExecutionStage", "DocumentName"]
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The filter value. Valid values for each filter key are as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>InvokedAfter</b>: Specify a timestamp to limit your results.
    #        For example, specify <code>2021-07-07T00:00:00Z</code> to see a list of command executions
    #        occurring July 7, 2021, and later.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>InvokedBefore</b>: Specify a timestamp to limit your results.
    #        For example, specify <code>2021-07-07T00:00:00Z</code> to see a list of command executions from
    #        before July 7, 2021.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Status</b>: Specify a valid command status to see a list of
    #        all command executions with that status. The status choices depend on the API you call.</p>
    #                  <p>The status values you can specify for <code>ListCommands</code> are:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>Pending</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>InProgress</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>Success</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>Cancelled</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>Failed</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>TimedOut</code> (this includes both Delivery and Execution time outs) </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>AccessDenied</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>DeliveryTimedOut</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>ExecutionTimedOut</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>Incomplete</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>NoInstancesInTag</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>LimitExceeded</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #                  <p>The status values you can specify for <code>ListCommandInvocations</code> are:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>Pending</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>InProgress</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>Delayed</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>Success</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>Cancelled</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>Failed</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>TimedOut</code> (this includes both Delivery and Execution time outs) </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>AccessDenied</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>DeliveryTimedOut</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>ExecutionTimedOut</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>Undeliverable</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>InvalidPlatform</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>Terminated</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>DocumentName</b>: Specify name of the Amazon Web Services Systems Manager document (SSM
    #        document) for which you want to see command execution results. For example, specify
    #         <code>AWS-RunPatchBaseline</code> to see command executions that used this SSM document to
    #        perform security patching operations on managed nodes. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>ExecutionStage</b>: Specify one of the following values
    #         (<code>ListCommands</code> operations only):</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>Executing</code>: Returns a list of command executions that are currently still
    #          running.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>Complete</code>: Returns a list of command executions that have already completed.
    #         </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    CommandFilter = ::Struct.new(
      :key,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CommandFilterKey
    #
    module CommandFilterKey
      # No documentation available.
      #
      INVOKED_AFTER = "InvokedAfter"

      # No documentation available.
      #
      INVOKED_BEFORE = "InvokedBefore"

      # No documentation available.
      #
      STATUS = "Status"

      # No documentation available.
      #
      EXECUTION_STAGE = "ExecutionStage"

      # No documentation available.
      #
      DOCUMENT_NAME = "DocumentName"
    end

    # <p>An invocation is a copy of a command sent to a specific managed node. A command can apply to
    #    one or more managed nodes. A command invocation applies to one managed node. For example, if a
    #    user runs <code>SendCommand</code> against three managed nodes, then a command invocation is
    #    created for each requested managed node ID. A command invocation returns status and detail
    #    information about a command you ran. </p>
    #
    # @!attribute command_id
    #   <p>The command against which this invocation was requested.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_id
    #   <p>The managed node ID in which this invocation was requested.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_name
    #   <p>The fully qualified host name of the managed node.</p>
    #
    #   @return [String]
    #
    # @!attribute comment
    #   <p>User-specified information about the command, such as a brief description of what the
    #      command should do.</p>
    #
    #   @return [String]
    #
    # @!attribute document_name
    #   <p>The document name that was requested for execution.</p>
    #
    #   @return [String]
    #
    # @!attribute document_version
    #   <p>The Systems Manager document (SSM document) version.</p>
    #
    #   @return [String]
    #
    # @!attribute requested_date_time
    #   <p>The time and date the request was sent to this managed node.</p>
    #
    #   @return [Time]
    #
    # @!attribute status
    #   <p>Whether or not the invocation succeeded, failed, or is pending.</p>
    #
    #   Enum, one of: ["Pending", "InProgress", "Delayed", "Success", "Cancelled", "TimedOut", "Failed", "Cancelling"]
    #
    #   @return [String]
    #
    # @!attribute status_details
    #   <p>A detailed status of the command execution for each invocation (each managed node targeted
    #      by the command). StatusDetails includes more information than Status because it includes states
    #      resulting from error and concurrency control parameters. StatusDetails can show different results
    #      than Status. For more information about these statuses, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/monitor-commands.html">Understanding command
    #       statuses</a> in the <i>Amazon Web Services Systems Manager User Guide</i>. StatusDetails can be one of the
    #      following values:</p>
    #            <ul>
    #               <li>
    #                  <p>Pending: The command hasn't been sent to the managed node.</p>
    #               </li>
    #               <li>
    #                  <p>In Progress: The command has been sent to the managed node but hasn't reached a terminal
    #        state.</p>
    #               </li>
    #               <li>
    #                  <p>Success: The execution of the command or plugin was successfully completed. This is a
    #        terminal state.</p>
    #               </li>
    #               <li>
    #                  <p>Delivery Timed Out: The command wasn't delivered to the managed node before the delivery
    #        timeout expired. Delivery timeouts don't count against the parent command's
    #         <code>MaxErrors</code> limit, but they do contribute to whether the parent command status is
    #        Success or Incomplete. This is a terminal state.</p>
    #               </li>
    #               <li>
    #                  <p>Execution Timed Out: Command execution started on the managed node, but the execution
    #        wasn't complete before the execution timeout expired. Execution timeouts count against the
    #         <code>MaxErrors</code> limit of the parent command. This is a terminal state.</p>
    #               </li>
    #               <li>
    #                  <p>Failed: The command wasn't successful on the managed node. For a plugin, this indicates
    #        that the result code wasn't zero. For a command invocation, this indicates that the result code
    #        for one or more plugins wasn't zero. Invocation failures count against the
    #         <code>MaxErrors</code> limit of the parent command. This is a terminal state.</p>
    #               </li>
    #               <li>
    #                  <p>Cancelled: The command was terminated before it was completed. This is a terminal
    #        state.</p>
    #               </li>
    #               <li>
    #                  <p>Undeliverable: The command can't be delivered to the managed node. The managed node might
    #        not exist or might not be responding. Undeliverable invocations don't count against the parent
    #        command's MaxErrors limit and don't contribute to whether the parent command status is Success
    #        or Incomplete. This is a terminal state.</p>
    #               </li>
    #               <li>
    #                  <p>Terminated: The parent command exceeded its MaxErrors limit and subsequent command
    #        invocations were canceled by the system. This is a terminal state.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute trace_output
    #   <p> Gets the trace output sent by the agent. </p>
    #
    #   @return [String]
    #
    # @!attribute standard_output_url
    #   <p>The URL to the plugin's StdOut file in Amazon Simple Storage Service (Amazon S3), if the S3
    #      bucket was defined for the parent command. For an invocation, <code>StandardOutputUrl</code> is
    #      populated if there is just one plugin defined for the command, and the S3 bucket was defined for
    #      the command.</p>
    #
    #   @return [String]
    #
    # @!attribute standard_error_url
    #   <p>The URL to the plugin's StdErr file in Amazon Simple Storage Service (Amazon S3), if the S3
    #      bucket was defined for the parent command. For an invocation, <code>StandardErrorUrl</code> is
    #      populated if there is just one plugin defined for the command, and the S3 bucket was defined for
    #      the command.</p>
    #
    #   @return [String]
    #
    # @!attribute command_plugins
    #   <p>Plugins processed by the command.</p>
    #
    #   @return [Array<CommandPlugin>]
    #
    # @!attribute service_role
    #   <p>The Identity and Access Management (IAM) service role that Run Command, a capability
    #      of Amazon Web Services Systems Manager, uses to act on your behalf when sending notifications about command status changes
    #      on a per managed node basis.</p>
    #
    #   @return [String]
    #
    # @!attribute notification_config
    #   <p>Configurations for sending notifications about command status changes on a per managed node
    #      basis.</p>
    #
    #   @return [NotificationConfig]
    #
    # @!attribute cloud_watch_output_config
    #   <p>Amazon CloudWatch Logs information where you want Amazon Web Services Systems Manager to send the command
    #      output.</p>
    #
    #   @return [CloudWatchOutputConfig]
    #
    CommandInvocation = ::Struct.new(
      :command_id,
      :instance_id,
      :instance_name,
      :comment,
      :document_name,
      :document_version,
      :requested_date_time,
      :status,
      :status_details,
      :trace_output,
      :standard_output_url,
      :standard_error_url,
      :command_plugins,
      :service_role,
      :notification_config,
      :cloud_watch_output_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CommandInvocationStatus
    #
    module CommandInvocationStatus
      # No documentation available.
      #
      PENDING = "Pending"

      # No documentation available.
      #
      IN_PROGRESS = "InProgress"

      # No documentation available.
      #
      DELAYED = "Delayed"

      # No documentation available.
      #
      SUCCESS = "Success"

      # No documentation available.
      #
      CANCELLED = "Cancelled"

      # No documentation available.
      #
      TIMED_OUT = "TimedOut"

      # No documentation available.
      #
      FAILED = "Failed"

      # No documentation available.
      #
      CANCELLING = "Cancelling"
    end

    # <p>Describes plugin details.</p>
    #
    # @!attribute name
    #   <p>The name of the plugin. Must be one of the following: <code>aws:updateAgent</code>,
    #       <code>aws:domainjoin</code>, <code>aws:applications</code>,
    #      <code>aws:runPowerShellScript</code>, <code>aws:psmodule</code>, <code>aws:cloudWatch</code>,
    #       <code>aws:runShellScript</code>, or <code>aws:updateSSMAgent</code>. </p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of this plugin. You can run a document with multiple plugins.</p>
    #
    #   Enum, one of: ["Pending", "InProgress", "Success", "TimedOut", "Cancelled", "Failed"]
    #
    #   @return [String]
    #
    # @!attribute status_details
    #   <p>A detailed status of the plugin execution. <code>StatusDetails</code> includes more
    #      information than Status because it includes states resulting from error and concurrency control
    #      parameters. StatusDetails can show different results than Status. For more information about
    #      these statuses, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/monitor-commands.html">Understanding command
    #       statuses</a> in the <i>Amazon Web Services Systems Manager User Guide</i>. StatusDetails can be one of the
    #      following values:</p>
    #            <ul>
    #               <li>
    #                  <p>Pending: The command hasn't been sent to the managed node.</p>
    #               </li>
    #               <li>
    #                  <p>In Progress: The command has been sent to the managed node but hasn't reached a terminal
    #        state.</p>
    #               </li>
    #               <li>
    #                  <p>Success: The execution of the command or plugin was successfully completed. This is a
    #        terminal state.</p>
    #               </li>
    #               <li>
    #                  <p>Delivery Timed Out: The command wasn't delivered to the managed node before the delivery
    #        timeout expired. Delivery timeouts don't count against the parent command's
    #         <code>MaxErrors</code> limit, but they do contribute to whether the parent command status is
    #        Success or Incomplete. This is a terminal state.</p>
    #               </li>
    #               <li>
    #                  <p>Execution Timed Out: Command execution started on the managed node, but the execution
    #        wasn't complete before the execution timeout expired. Execution timeouts count against the
    #         <code>MaxErrors</code> limit of the parent command. This is a terminal state.</p>
    #               </li>
    #               <li>
    #                  <p>Failed: The command wasn't successful on the managed node. For a plugin, this indicates
    #        that the result code wasn't zero. For a command invocation, this indicates that the result code
    #        for one or more plugins wasn't zero. Invocation failures count against the MaxErrors limit of
    #        the parent command. This is a terminal state.</p>
    #               </li>
    #               <li>
    #                  <p>Cancelled: The command was terminated before it was completed. This is a terminal
    #        state.</p>
    #               </li>
    #               <li>
    #                  <p>Undeliverable: The command can't be delivered to the managed node. The managed node might
    #        not exist, or it might not be responding. Undeliverable invocations don't count against the
    #        parent command's MaxErrors limit, and they don't contribute to whether the parent command
    #        status is Success or Incomplete. This is a terminal state.</p>
    #               </li>
    #               <li>
    #                  <p>Terminated: The parent command exceeded its MaxErrors limit and subsequent command
    #        invocations were canceled by the system. This is a terminal state.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute response_code
    #   <p>A numeric response code generated after running the plugin. </p>
    #
    #   @return [Integer]
    #
    # @!attribute response_start_date_time
    #   <p>The time the plugin started running. </p>
    #
    #   @return [Time]
    #
    # @!attribute response_finish_date_time
    #   <p>The time the plugin stopped running. Could stop prematurely if, for example, a cancel
    #      command was sent. </p>
    #
    #   @return [Time]
    #
    # @!attribute output
    #   <p>Output of the plugin execution.</p>
    #
    #   @return [String]
    #
    # @!attribute standard_output_url
    #   <p>The URL for the complete text written by the plugin to stdout in Amazon S3. If the
    #      S3 bucket for the command wasn't specified, then this string is empty.</p>
    #
    #   @return [String]
    #
    # @!attribute standard_error_url
    #   <p>The URL for the complete text written by the plugin to stderr. If execution isn't yet
    #      complete, then this string is empty.</p>
    #
    #   @return [String]
    #
    # @!attribute output_s3_region
    #   <p>(Deprecated) You can no longer specify this parameter. The system ignores it. Instead,
    #      Amazon Web Services Systems Manager automatically determines the S3 bucket region.</p>
    #
    #   @return [String]
    #
    # @!attribute output_s3_bucket_name
    #   <p>The S3 bucket where the responses to the command executions should be stored. This was
    #      requested when issuing the command. For example, in the following response:</p>
    #            <p>
    #               <code>doc-example-bucket/ab19cb99-a030-46dd-9dfc-8eSAMPLEPre-Fix/i-02573cafcfEXAMPLE/awsrunShellScript</code>
    #            </p>
    #            <p>
    #               <code>doc-example-bucket</code> is the name of the S3 bucket;</p>
    #            <p>
    #               <code>ab19cb99-a030-46dd-9dfc-8eSAMPLEPre-Fix</code> is the name of the S3 prefix;</p>
    #            <p>
    #               <code>i-02573cafcfEXAMPLE</code> is the managed node ID;</p>
    #            <p>
    #               <code>awsrunShellScript</code> is the name of the plugin.</p>
    #
    #   @return [String]
    #
    # @!attribute output_s3_key_prefix
    #   <p>The S3 directory path inside the bucket where the responses to the command executions should
    #      be stored. This was requested when issuing the command. For example, in the following
    #      response:</p>
    #            <p>
    #               <code>doc-example-bucket/ab19cb99-a030-46dd-9dfc-8eSAMPLEPre-Fix/i-02573cafcfEXAMPLE/awsrunShellScript</code>
    #            </p>
    #            <p>
    #               <code>doc-example-bucket</code> is the name of the S3 bucket;</p>
    #            <p>
    #               <code>ab19cb99-a030-46dd-9dfc-8eSAMPLEPre-Fix</code> is the name of the S3 prefix;</p>
    #            <p>
    #               <code>i-02573cafcfEXAMPLE</code> is the managed node ID;</p>
    #            <p>
    #               <code>awsrunShellScript</code> is the name of the plugin.</p>
    #
    #   @return [String]
    #
    CommandPlugin = ::Struct.new(
      :name,
      :status,
      :status_details,
      :response_code,
      :response_start_date_time,
      :response_finish_date_time,
      :output,
      :standard_output_url,
      :standard_error_url,
      :output_s3_region,
      :output_s3_bucket_name,
      :output_s3_key_prefix,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.response_code ||= 0
      end
    end

    # Includes enum constants for CommandPluginStatus
    #
    module CommandPluginStatus
      # No documentation available.
      #
      PENDING = "Pending"

      # No documentation available.
      #
      IN_PROGRESS = "InProgress"

      # No documentation available.
      #
      SUCCESS = "Success"

      # No documentation available.
      #
      TIMED_OUT = "TimedOut"

      # No documentation available.
      #
      CANCELLED = "Cancelled"

      # No documentation available.
      #
      FAILED = "Failed"
    end

    # Includes enum constants for CommandStatus
    #
    module CommandStatus
      # No documentation available.
      #
      PENDING = "Pending"

      # No documentation available.
      #
      IN_PROGRESS = "InProgress"

      # No documentation available.
      #
      SUCCESS = "Success"

      # No documentation available.
      #
      CANCELLED = "Cancelled"

      # No documentation available.
      #
      FAILED = "Failed"

      # No documentation available.
      #
      TIMED_OUT = "TimedOut"

      # No documentation available.
      #
      CANCELLING = "Cancelling"
    end

    # <p>A summary of the call execution that includes an execution ID, the type of execution (for
    #    example, <code>Command</code>), and the date/time of the execution using a datetime object that
    #    is saved in the following format: yyyy-MM-dd'T'HH:mm:ss'Z'.</p>
    #
    # @!attribute execution_time
    #   <p>The time the execution ran as a datetime object that is saved in the following format:
    #      yyyy-MM-dd'T'HH:mm:ss'Z'.</p>
    #
    #   @return [Time]
    #
    # @!attribute execution_id
    #   <p>An ID created by the system when <code>PutComplianceItems</code> was called. For example,
    #       <code>CommandID</code> is a valid execution ID. You can use this ID in subsequent calls.</p>
    #
    #   @return [String]
    #
    # @!attribute execution_type
    #   <p>The type of execution. For example, <code>Command</code> is a valid execution type.</p>
    #
    #   @return [String]
    #
    ComplianceExecutionSummary = ::Struct.new(
      :execution_time,
      :execution_id,
      :execution_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the compliance as defined by the resource type. For example, for a patch
    #    resource type, <code>Items</code> includes information about the PatchSeverity, Classification,
    #    and so on.</p>
    #
    # @!attribute compliance_type
    #   <p>The compliance type. For example, Association (for a State Manager association), Patch, or
    #       Custom:<code>string</code> are all valid compliance types.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The type of resource. <code>ManagedInstance</code> is currently the only supported resource
    #      type.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>An ID for the resource. For a managed node, this is the node ID.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>An ID for the compliance item. For example, if the compliance item is a Windows patch, the
    #      ID could be the number of the KB article; for example: KB4010320.</p>
    #
    #   @return [String]
    #
    # @!attribute title
    #   <p>A title for the compliance item. For example, if the compliance item is a Windows patch, the
    #      title could be the title of the KB article for the patch; for example: Security Update for Active
    #      Directory Federation Services.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the compliance item. An item is either COMPLIANT, NON_COMPLIANT, or an empty
    #      string (for Windows patches that aren't applicable).</p>
    #
    #   Enum, one of: ["COMPLIANT", "NON_COMPLIANT"]
    #
    #   @return [String]
    #
    # @!attribute severity
    #   <p>The severity of the compliance status. Severity can be one of the following: Critical, High,
    #      Medium, Low, Informational, Unspecified.</p>
    #
    #   Enum, one of: ["CRITICAL", "HIGH", "MEDIUM", "LOW", "INFORMATIONAL", "UNSPECIFIED"]
    #
    #   @return [String]
    #
    # @!attribute execution_summary
    #   <p>A summary for the compliance item. The summary includes an execution ID, the execution type
    #      (for example, command), and the execution time.</p>
    #
    #   @return [ComplianceExecutionSummary]
    #
    # @!attribute details
    #   <p>A "Key": "Value" tag combination for the compliance item.</p>
    #
    #   @return [Hash<String, String>]
    #
    ComplianceItem = ::Struct.new(
      :compliance_type,
      :resource_type,
      :resource_id,
      :id,
      :title,
      :status,
      :severity,
      :execution_summary,
      :details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a compliance item.</p>
    #
    # @!attribute id
    #   <p>The compliance item ID. For example, if the compliance item is a Windows patch, the ID could
    #      be the number of the KB article.</p>
    #
    #   @return [String]
    #
    # @!attribute title
    #   <p>The title of the compliance item. For example, if the compliance item is a Windows patch,
    #      the title could be the title of the KB article for the patch; for example: Security Update for
    #      Active Directory Federation Services. </p>
    #
    #   @return [String]
    #
    # @!attribute severity
    #   <p>The severity of the compliance status. Severity can be one of the following: Critical, High,
    #      Medium, Low, Informational, Unspecified.</p>
    #
    #   Enum, one of: ["CRITICAL", "HIGH", "MEDIUM", "LOW", "INFORMATIONAL", "UNSPECIFIED"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the compliance item. An item is either COMPLIANT or NON_COMPLIANT.</p>
    #
    #   Enum, one of: ["COMPLIANT", "NON_COMPLIANT"]
    #
    #   @return [String]
    #
    # @!attribute details
    #   <p>A "Key": "Value" tag combination for the compliance item.</p>
    #
    #   @return [Hash<String, String>]
    #
    ComplianceItemEntry = ::Struct.new(
      :id,
      :title,
      :severity,
      :status,
      :details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ComplianceQueryOperatorType
    #
    module ComplianceQueryOperatorType
      # No documentation available.
      #
      Equal = "EQUAL"

      # No documentation available.
      #
      NotEqual = "NOT_EQUAL"

      # No documentation available.
      #
      BeginWith = "BEGIN_WITH"

      # No documentation available.
      #
      LessThan = "LESS_THAN"

      # No documentation available.
      #
      GreaterThan = "GREATER_THAN"
    end

    # Includes enum constants for ComplianceSeverity
    #
    module ComplianceSeverity
      # No documentation available.
      #
      Critical = "CRITICAL"

      # No documentation available.
      #
      High = "HIGH"

      # No documentation available.
      #
      Medium = "MEDIUM"

      # No documentation available.
      #
      Low = "LOW"

      # No documentation available.
      #
      Informational = "INFORMATIONAL"

      # No documentation available.
      #
      Unspecified = "UNSPECIFIED"
    end

    # Includes enum constants for ComplianceStatus
    #
    module ComplianceStatus
      # No documentation available.
      #
      Compliant = "COMPLIANT"

      # No documentation available.
      #
      NonCompliant = "NON_COMPLIANT"
    end

    # <p>One or more filters. Use a filter to return a more specific list of results.</p>
    #
    # @!attribute key
    #   <p>The name of the filter.</p>
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>The value for which to search.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute type
    #   <p>The type of comparison that should be performed for the value: Equal, NotEqual, BeginWith,
    #      LessThan, or GreaterThan.</p>
    #
    #   Enum, one of: ["EQUAL", "NOT_EQUAL", "BEGIN_WITH", "LESS_THAN", "GREATER_THAN"]
    #
    #   @return [String]
    #
    ComplianceStringFilter = ::Struct.new(
      :key,
      :values,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A summary of compliance information by compliance type.</p>
    #
    # @!attribute compliance_type
    #   <p>The type of compliance item. For example, the compliance type can be Association, Patch, or
    #      Custom:string.</p>
    #
    #   @return [String]
    #
    # @!attribute compliant_summary
    #   <p>A list of COMPLIANT items for the specified compliance type.</p>
    #
    #   @return [CompliantSummary]
    #
    # @!attribute non_compliant_summary
    #   <p>A list of NON_COMPLIANT items for the specified compliance type.</p>
    #
    #   @return [NonCompliantSummary]
    #
    ComplianceSummaryItem = ::Struct.new(
      :compliance_type,
      :compliant_summary,
      :non_compliant_summary,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You specified too many custom compliance types. You can specify a maximum of 10 different
    #    types. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ComplianceTypeCountLimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ComplianceUploadType
    #
    module ComplianceUploadType
      # No documentation available.
      #
      Complete = "COMPLETE"

      # No documentation available.
      #
      Partial = "PARTIAL"
    end

    # <p>A summary of resources that are compliant. The summary is organized according to the
    #    resource count for each compliance type.</p>
    #
    # @!attribute compliant_count
    #   <p>The total number of resources that are compliant.</p>
    #
    #   @return [Integer]
    #
    # @!attribute severity_summary
    #   <p>A summary of the compliance severity by compliance type.</p>
    #
    #   @return [SeveritySummary]
    #
    CompliantSummary = ::Struct.new(
      :compliant_count,
      :severity_summary,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.compliant_count ||= 0
      end
    end

    # Includes enum constants for ConnectionStatus
    #
    module ConnectionStatus
      # No documentation available.
      #
      CONNECTED = "Connected"

      # No documentation available.
      #
      NOT_CONNECTED = "NotConnected"
    end

    # @!attribute description
    #   <p>A user-defined description of the resource that you want to register with Systems Manager. </p>
    #            <important>
    #               <p>Don't enter personally identifiable information in this field.</p>
    #            </important>
    #
    #   @return [String]
    #
    # @!attribute default_instance_name
    #   <p>The name of the registered, managed node as it will appear in the Amazon Web Services Systems Manager console or when
    #      you use the Amazon Web Services command line tools to list Systems Manager resources.</p>
    #            <important>
    #               <p>Don't enter personally identifiable information in this field.</p>
    #            </important>
    #
    #   @return [String]
    #
    # @!attribute iam_role
    #   <p>The name of the Identity and Access Management (IAM) role that you want to assign to
    #      the managed node. This IAM role must provide AssumeRole permissions for the
    #      Amazon Web Services Systems Manager service principal <code>ssm.amazonaws.com</code>. For more information, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-service-role.html">Create an
    #        IAM service role for a hybrid environment</a> in the
    #       <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute registration_limit
    #   <p>Specify the maximum number of managed nodes you want to register. The default value is
    #       <code>1</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute expiration_date
    #   <p>The date by which this activation request should expire, in timestamp format, such as
    #      "2021-07-07T00:00:00". You can specify a date up to 30 days in advance. If you don't provide an
    #      expiration date, the activation code expires in 24 hours.</p>
    #
    #   @return [Time]
    #
    # @!attribute tags
    #   <p>Optional metadata that you assign to a resource. Tags enable you to categorize a resource in
    #      different ways, such as by purpose, owner, or environment. For example, you might want to tag an
    #      activation to identify which servers or virtual machines (VMs) in your on-premises environment
    #      you intend to activate. In this case, you could specify the following key-value pairs:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Key=OS,Value=Windows</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Key=Environment,Value=Production</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <important>
    #               <p>When you install SSM Agent on your on-premises servers and VMs, you specify an activation ID
    #       and code. When you specify the activation ID and code, tags assigned to the activation are
    #       automatically applied to the on-premises servers or VMs.</p>
    #            </important>
    #            <p>You can't add tags to or delete tags from an existing activation. You can tag your
    #      on-premises servers, edge devices, and VMs after they connect to Systems Manager for the first time and are
    #      assigned a managed node ID. This means they are listed in the Amazon Web Services Systems Manager console with an ID that
    #      is prefixed with "mi-". For information about how to add tags to your managed nodes, see <a>AddTagsToResource</a>. For information about how to remove tags from your managed nodes,
    #      see <a>RemoveTagsFromResource</a>.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute registration_metadata
    #   <p>Reserved for internal use.</p>
    #
    #   @return [Array<RegistrationMetadataItem>]
    #
    CreateActivationInput = ::Struct.new(
      :description,
      :default_instance_name,
      :iam_role,
      :registration_limit,
      :expiration_date,
      :tags,
      :registration_metadata,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute activation_id
    #   <p>The ID number generated by the system when it processed the activation. The activation ID
    #      functions like a user name.</p>
    #
    #   @return [String]
    #
    # @!attribute activation_code
    #   <p>The code the system generates when it processes the activation. The activation code
    #      functions like a password to validate the activation ID. </p>
    #
    #   @return [String]
    #
    CreateActivationOutput = ::Struct.new(
      :activation_id,
      :activation_code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute entries
    #   <p>One or more associations.</p>
    #
    #   @return [Array<CreateAssociationBatchRequestEntry>]
    #
    CreateAssociationBatchInput = ::Struct.new(
      :entries,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute successful
    #   <p>Information about the associations that succeeded.</p>
    #
    #   @return [Array<AssociationDescription>]
    #
    # @!attribute failed
    #   <p>Information about the associations that failed.</p>
    #
    #   @return [Array<FailedCreateAssociation>]
    #
    CreateAssociationBatchOutput = ::Struct.new(
      :successful,
      :failed,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the association of a Amazon Web Services Systems Manager document (SSM document) and a managed node.</p>
    #
    # @!attribute name
    #   <p>The name of the SSM document that contains the configuration information for the managed
    #      node. You can specify Command or Automation runbooks.</p>
    #            <p>You can specify Amazon Web Services-predefined documents, documents you created, or a document that is
    #      shared with you from another account.</p>
    #            <p>For SSM documents that are shared with you from other Amazon Web Services accounts, you must specify the
    #      complete SSM document ARN, in the following format:</p>
    #            <p>
    #               <code>arn:aws:ssm:<i>region</i>:<i>account-id</i>:document/<i>document-name</i>
    #               </code>
    #            </p>
    #            <p>For example:</p>
    #            <p>
    #               <code>arn:aws:ssm:us-east-2:12345678912:document/My-Shared-Document</code>
    #            </p>
    #            <p>For Amazon Web Services-predefined documents and SSM documents you created in your account, you only need
    #      to specify the document name. For example, <code>AWS-ApplyPatchBaseline</code> or
    #       <code>My-Document</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_id
    #   <p>The managed node ID.</p>
    #            <note>
    #               <p>
    #                  <code>InstanceId</code> has been deprecated. To specify a managed node ID for an
    #       association, use the <code>Targets</code> parameter. Requests that
    #       include the parameter <code>InstanceID</code> with Systems Manager documents (SSM documents) that use
    #       schema version 2.0 or later will fail. In addition, if you use the
    #       parameter <code>InstanceId</code>, you can't use the parameters <code>AssociationName</code>,
    #        <code>DocumentVersion</code>, <code>MaxErrors</code>, <code>MaxConcurrency</code>,
    #        <code>OutputLocation</code>, or <code>ScheduleExpression</code>. To use these parameters, you
    #       must use the <code>Targets</code> parameter.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>A description of the parameters for a document. </p>
    #
    #   @return [Hash<String, Array<String>>]
    #
    # @!attribute automation_target_parameter_name
    #   <p>Specify the target for the association. This target is required for associations that use an
    #      Automation runbook and target resources by using rate controls. Automation is a capability of
    #      Amazon Web Services Systems Manager.</p>
    #
    #   @return [String]
    #
    # @!attribute document_version
    #   <p>The document version.</p>
    #
    #   @return [String]
    #
    # @!attribute targets
    #   <p>The managed nodes targeted by the request.</p>
    #
    #   @return [Array<Target>]
    #
    # @!attribute schedule_expression
    #   <p>A cron expression that specifies a schedule when the association runs.</p>
    #
    #   @return [String]
    #
    # @!attribute output_location
    #   <p>An S3 bucket where you want to store the results of this request.</p>
    #
    #   @return [InstanceAssociationOutputLocation]
    #
    # @!attribute association_name
    #   <p>Specify a descriptive name for the association.</p>
    #
    #   @return [String]
    #
    # @!attribute max_errors
    #   <p>The number of errors that are allowed before the system stops sending requests to run the
    #      association on additional targets. You can specify either an absolute number of errors, for
    #      example 10, or a percentage of the target set, for example 10%. If you specify 3, for example,
    #      the system stops sending requests when the fourth error is received. If you specify 0, then the
    #      system stops sending requests after the first error is returned. If you run an association on 50
    #      managed nodes and set <code>MaxError</code> to 10%, then the system stops sending the request
    #      when the sixth error is received.</p>
    #            <p>Executions that are already running an association when <code>MaxErrors</code> is reached
    #      are allowed to complete, but some of these executions may fail as well. If you need to ensure
    #      that there won't be more than max-errors failed executions, set <code>MaxConcurrency</code> to 1
    #      so that executions proceed one at a time.</p>
    #
    #   @return [String]
    #
    # @!attribute max_concurrency
    #   <p>The maximum number of targets allowed to run the association at the same time. You can
    #      specify a number, for example 10, or a percentage of the target set, for example 10%. The default
    #      value is 100%, which means all targets run the association at the same time.</p>
    #            <p>If a new managed node starts and attempts to run an association while Systems Manager is running
    #       <code>MaxConcurrency</code> associations, the association is allowed to run. During the next
    #      association interval, the new managed node will process its association within the limit
    #      specified for <code>MaxConcurrency</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute compliance_severity
    #   <p>The severity level to assign to the association.</p>
    #
    #   Enum, one of: ["CRITICAL", "HIGH", "MEDIUM", "LOW", "UNSPECIFIED"]
    #
    #   @return [String]
    #
    # @!attribute sync_compliance
    #   <p>The mode for generating association compliance. You can specify <code>AUTO</code> or
    #       <code>MANUAL</code>. In <code>AUTO</code> mode, the system uses the status of the association
    #      execution to determine the compliance status. If the association execution runs successfully,
    #      then the association is <code>COMPLIANT</code>. If the association execution doesn't run
    #      successfully, the association is <code>NON-COMPLIANT</code>. </p>
    #            <p>In <code>MANUAL</code> mode, you must specify the <code>AssociationId</code> as a parameter
    #      for the <a>PutComplianceItems</a> API operation. In this case, compliance data isn't
    #      managed by State Manager, a capability of Amazon Web Services Systems Manager. It is managed by your direct call to the
    #       <a>PutComplianceItems</a> API operation.</p>
    #            <p>By default, all associations use <code>AUTO</code> mode.</p>
    #
    #   Enum, one of: ["AUTO", "MANUAL"]
    #
    #   @return [String]
    #
    # @!attribute apply_only_at_cron_interval
    #   <p>By default, when you create a new associations, the system runs it immediately after it is
    #      created and then according to the schedule you specified. Specify this option if you don't want
    #      an association to run immediately after you create it. This parameter isn't supported for rate
    #      expressions.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute calendar_names
    #   <p>The names or Amazon Resource Names (ARNs) of the Change Calendar type documents your
    #      associations are gated under. The associations only run when that Change Calendar is open. For
    #      more information, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-change-calendar">Amazon Web Services Systems Manager Change
    #       Calendar</a>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute target_locations
    #   <p>Use this action to create an association in multiple Regions and multiple accounts.</p>
    #
    #   @return [Array<TargetLocation>]
    #
    # @!attribute schedule_offset
    #   <p>Number of days to wait after the scheduled day to run an association.</p>
    #
    #   @return [Integer]
    #
    # @!attribute target_maps
    #   <p>A key-value mapping of document parameters to target resources. Both Targets and TargetMaps
    #      can't be specified together.</p>
    #
    #   @return [Array<Hash<String, Array<String>>>]
    #
    CreateAssociationBatchRequestEntry = ::Struct.new(
      :name,
      :instance_id,
      :parameters,
      :automation_target_parameter_name,
      :document_version,
      :targets,
      :schedule_expression,
      :output_location,
      :association_name,
      :max_errors,
      :max_concurrency,
      :compliance_severity,
      :sync_compliance,
      :apply_only_at_cron_interval,
      :calendar_names,
      :target_locations,
      :schedule_offset,
      :target_maps,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.apply_only_at_cron_interval ||= false
      end

      def to_s
        "#<struct AWS::SDK::SSM::Types::CreateAssociationBatchRequestEntry "\
          "name=#{name || 'nil'}, "\
          "instance_id=#{instance_id || 'nil'}, "\
          "parameters=\"[SENSITIVE]\", "\
          "automation_target_parameter_name=#{automation_target_parameter_name || 'nil'}, "\
          "document_version=#{document_version || 'nil'}, "\
          "targets=#{targets || 'nil'}, "\
          "schedule_expression=#{schedule_expression || 'nil'}, "\
          "output_location=#{output_location || 'nil'}, "\
          "association_name=#{association_name || 'nil'}, "\
          "max_errors=#{max_errors || 'nil'}, "\
          "max_concurrency=#{max_concurrency || 'nil'}, "\
          "compliance_severity=#{compliance_severity || 'nil'}, "\
          "sync_compliance=#{sync_compliance || 'nil'}, "\
          "apply_only_at_cron_interval=#{apply_only_at_cron_interval || 'nil'}, "\
          "calendar_names=#{calendar_names || 'nil'}, "\
          "target_locations=#{target_locations || 'nil'}, "\
          "schedule_offset=#{schedule_offset || 'nil'}, "\
          "target_maps=#{target_maps || 'nil'}>"
      end
    end

    # @!attribute name
    #   <p>The name of the SSM Command document or Automation runbook that contains the configuration
    #      information for the managed node.</p>
    #            <p>You can specify Amazon Web Services-predefined documents, documents you created, or a document that is
    #      shared with you from another account.</p>
    #            <p>For Systems Manager documents (SSM documents) that are shared with you from other Amazon Web Services accounts, you
    #      must specify the complete SSM document ARN, in the following format:</p>
    #            <p>
    #               <code>arn:<i>partition</i>:ssm:<i>region</i>:<i>account-id</i>:document/<i>document-name</i>
    #               </code>
    #            </p>
    #            <p>For example:</p>
    #            <p>
    #               <code>arn:aws:ssm:us-east-2:12345678912:document/My-Shared-Document</code>
    #            </p>
    #            <p>For Amazon Web Services-predefined documents and SSM documents you created in your account, you only need
    #      to specify the document name. For example, <code>AWS-ApplyPatchBaseline</code> or
    #       <code>My-Document</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute document_version
    #   <p>The document version you want to associate with the target(s). Can be a specific version or
    #      the default version.</p>
    #            <important>
    #               <p>State Manager doesn't support running associations that use a new version of a document if
    #       that document is shared from another account. State Manager always runs the <code>default</code>
    #       version of a document if shared from another account, even though the Systems Manager console shows that a
    #       new version was processed. If you want to run an association using a new version of a document
    #       shared form another account, you must set the document version to <code>default</code>.</p>
    #            </important>
    #
    #   @return [String]
    #
    # @!attribute instance_id
    #   <p>The managed node ID.</p>
    #            <note>
    #               <p>
    #                  <code>InstanceId</code> has been deprecated. To specify a managed node ID for an
    #       association, use the <code>Targets</code> parameter. Requests that
    #       include the parameter <code>InstanceID</code> with Systems Manager documents (SSM documents) that use
    #       schema version 2.0 or later will fail. In addition, if you use the
    #       parameter <code>InstanceId</code>, you can't use the parameters <code>AssociationName</code>,
    #        <code>DocumentVersion</code>, <code>MaxErrors</code>, <code>MaxConcurrency</code>,
    #        <code>OutputLocation</code>, or <code>ScheduleExpression</code>. To use these parameters, you
    #       must use the <code>Targets</code> parameter.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>The parameters for the runtime configuration of the document.</p>
    #
    #   @return [Hash<String, Array<String>>]
    #
    # @!attribute targets
    #   <p>The targets for the association. You can target managed nodes by using tags, Amazon Web Services resource
    #      groups, all managed nodes in an Amazon Web Services account, or individual managed node IDs. You can target all
    #      managed nodes in an Amazon Web Services account by specifying the <code>InstanceIds</code> key with a value of
    #       <code>*</code>. For more information about choosing targets for an association, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-state-manager-targets-and-rate-controls.html">Using targets and rate controls with State Manager associations</a> in the
    #       <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #
    #   @return [Array<Target>]
    #
    # @!attribute schedule_expression
    #   <p>A cron expression when the association will be applied to the target(s).</p>
    #
    #   @return [String]
    #
    # @!attribute output_location
    #   <p>An Amazon Simple Storage Service (Amazon S3) bucket where you want to store the output
    #      details of the request.</p>
    #
    #   @return [InstanceAssociationOutputLocation]
    #
    # @!attribute association_name
    #   <p>Specify a descriptive name for the association.</p>
    #
    #   @return [String]
    #
    # @!attribute automation_target_parameter_name
    #   <p>Choose the parameter that will define how your automation will branch out. This target is
    #      required for associations that use an Automation runbook and target resources by using rate
    #      controls. Automation is a capability of Amazon Web Services Systems Manager.</p>
    #
    #   @return [String]
    #
    # @!attribute max_errors
    #   <p>The number of errors that are allowed before the system stops sending requests to run the
    #      association on additional targets. You can specify either an absolute number of errors, for
    #      example 10, or a percentage of the target set, for example 10%. If you specify 3, for example,
    #      the system stops sending requests when the fourth error is received. If you specify 0, then the
    #      system stops sending requests after the first error is returned. If you run an association on 50
    #      managed nodes and set <code>MaxError</code> to 10%, then the system stops sending the request
    #      when the sixth error is received.</p>
    #            <p>Executions that are already running an association when <code>MaxErrors</code> is reached
    #      are allowed to complete, but some of these executions may fail as well. If you need to ensure
    #      that there won't be more than max-errors failed executions, set <code>MaxConcurrency</code> to 1
    #      so that executions proceed one at a time.</p>
    #
    #   @return [String]
    #
    # @!attribute max_concurrency
    #   <p>The maximum number of targets allowed to run the association at the same time. You can
    #      specify a number, for example 10, or a percentage of the target set, for example 10%. The default
    #      value is 100%, which means all targets run the association at the same time.</p>
    #            <p>If a new managed node starts and attempts to run an association while Systems Manager is running
    #       <code>MaxConcurrency</code> associations, the association is allowed to run. During the next
    #      association interval, the new managed node will process its association within the limit
    #      specified for <code>MaxConcurrency</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute compliance_severity
    #   <p>The severity level to assign to the association.</p>
    #
    #   Enum, one of: ["CRITICAL", "HIGH", "MEDIUM", "LOW", "UNSPECIFIED"]
    #
    #   @return [String]
    #
    # @!attribute sync_compliance
    #   <p>The mode for generating association compliance. You can specify <code>AUTO</code> or
    #       <code>MANUAL</code>. In <code>AUTO</code> mode, the system uses the status of the association
    #      execution to determine the compliance status. If the association execution runs successfully,
    #      then the association is <code>COMPLIANT</code>. If the association execution doesn't run
    #      successfully, the association is <code>NON-COMPLIANT</code>.</p>
    #            <p>In <code>MANUAL</code> mode, you must specify the <code>AssociationId</code> as a parameter
    #      for the <a>PutComplianceItems</a> API operation. In this case, compliance data isn't
    #      managed by State Manager. It is managed by your direct call to the <a>PutComplianceItems</a> API operation.</p>
    #            <p>By default, all associations use <code>AUTO</code> mode.</p>
    #
    #   Enum, one of: ["AUTO", "MANUAL"]
    #
    #   @return [String]
    #
    # @!attribute apply_only_at_cron_interval
    #   <p>By default, when you create a new association, the system runs it immediately after it is
    #      created and then according to the schedule you specified. Specify this option if you don't want
    #      an association to run immediately after you create it. This parameter isn't supported for rate
    #      expressions.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute calendar_names
    #   <p>The names or Amazon Resource Names (ARNs) of the Change Calendar type documents you want to
    #      gate your associations under. The associations only run when that change calendar is open. For
    #      more information, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-change-calendar">Amazon Web Services Systems Manager Change
    #       Calendar</a>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute target_locations
    #   <p>A location is a combination of Amazon Web Services Regions and Amazon Web Services accounts where you want to run the
    #      association. Use this action to create an association in multiple Regions and multiple
    #      accounts.</p>
    #
    #   @return [Array<TargetLocation>]
    #
    # @!attribute schedule_offset
    #   <p>Number of days to wait after the scheduled day to run an association. For example, if you
    #      specified a cron schedule of <code>cron(0 0 ? * THU 2 *)</code>, you could specify an offset of 3
    #      to run the association each Sunday after the second Thursday of the month. For more information
    #      about cron schedules for associations, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/reference-cron-and-rate-expressions.html">Reference: Cron
    #       and rate expressions for Systems Manager</a> in the <i>Amazon Web Services Systems Manager User Guide</i>. </p>
    #            <note>
    #               <p>To use offsets, you must specify the <code>ApplyOnlyAtCronInterval</code> parameter. This
    #       option tells the system not to run an association immediately after you create it. </p>
    #            </note>
    #
    #   @return [Integer]
    #
    # @!attribute target_maps
    #   <p>A key-value mapping of document parameters to target resources. Both Targets and TargetMaps
    #      can't be specified together.</p>
    #
    #   @return [Array<Hash<String, Array<String>>>]
    #
    CreateAssociationInput = ::Struct.new(
      :name,
      :document_version,
      :instance_id,
      :parameters,
      :targets,
      :schedule_expression,
      :output_location,
      :association_name,
      :automation_target_parameter_name,
      :max_errors,
      :max_concurrency,
      :compliance_severity,
      :sync_compliance,
      :apply_only_at_cron_interval,
      :calendar_names,
      :target_locations,
      :schedule_offset,
      :target_maps,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.apply_only_at_cron_interval ||= false
      end

      def to_s
        "#<struct AWS::SDK::SSM::Types::CreateAssociationInput "\
          "name=#{name || 'nil'}, "\
          "document_version=#{document_version || 'nil'}, "\
          "instance_id=#{instance_id || 'nil'}, "\
          "parameters=\"[SENSITIVE]\", "\
          "targets=#{targets || 'nil'}, "\
          "schedule_expression=#{schedule_expression || 'nil'}, "\
          "output_location=#{output_location || 'nil'}, "\
          "association_name=#{association_name || 'nil'}, "\
          "automation_target_parameter_name=#{automation_target_parameter_name || 'nil'}, "\
          "max_errors=#{max_errors || 'nil'}, "\
          "max_concurrency=#{max_concurrency || 'nil'}, "\
          "compliance_severity=#{compliance_severity || 'nil'}, "\
          "sync_compliance=#{sync_compliance || 'nil'}, "\
          "apply_only_at_cron_interval=#{apply_only_at_cron_interval || 'nil'}, "\
          "calendar_names=#{calendar_names || 'nil'}, "\
          "target_locations=#{target_locations || 'nil'}, "\
          "schedule_offset=#{schedule_offset || 'nil'}, "\
          "target_maps=#{target_maps || 'nil'}>"
      end
    end

    # @!attribute association_description
    #   <p>Information about the association.</p>
    #
    #   @return [AssociationDescription]
    #
    CreateAssociationOutput = ::Struct.new(
      :association_description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute content
    #   <p>The content for the new SSM document in JSON or YAML format. We recommend storing the
    #      contents for your new document in an external JSON or YAML file and referencing the file in a
    #      command.</p>
    #            <p>For examples, see the following topics in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/create-ssm-document-api.html">Create an SSM document (Amazon Web Services API)</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/create-ssm-document-cli.html">Create an SSM document (Amazon Web Services CLI)</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/create-ssm-document-api.html">Create an SSM document (API)</a>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute requires
    #   <p>A list of SSM documents required by a document. This parameter is used exclusively by
    #      AppConfig. When a user creates an AppConfig configuration in an SSM document, the user must also
    #      specify a required document for validation purposes. In this case, an
    #       <code>ApplicationConfiguration</code> document requires an
    #       <code>ApplicationConfigurationSchema</code> document for validation purposes. For more
    #      information, see <a href="https://docs.aws.amazon.com/appconfig/latest/userguide/what-is-appconfig.html">What is AppConfig?</a> in the
    #       <i>AppConfig User Guide</i>.</p>
    #
    #   @return [Array<DocumentRequires>]
    #
    # @!attribute attachments
    #   <p>A list of key-value pairs that describe attachments to a version of a document.</p>
    #
    #   @return [Array<AttachmentsSource>]
    #
    # @!attribute name
    #   <p>A name for the SSM document.</p>
    #            <important>
    #               <p>You can't use the following strings as document name prefixes. These are reserved by Amazon Web Services
    #       for use as document name prefixes:</p>
    #               <ul>
    #                  <li>
    #                     <p>
    #                        <code>aws-</code>
    #                     </p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <code>amazon</code>
    #                     </p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <code>amzn</code>
    #                     </p>
    #                  </li>
    #               </ul>
    #            </important>
    #
    #   @return [String]
    #
    # @!attribute display_name
    #   <p>An optional field where you can specify a friendly name for the SSM document. This value can
    #      differ for each version of the document. You can update this value at a later time using the
    #       <a>UpdateDocument</a> operation.</p>
    #
    #   @return [String]
    #
    # @!attribute version_name
    #   <p>An optional field specifying the version of the artifact you are creating with the document.
    #      For example, "Release 12, Update 6". This value is unique across all versions of a document, and
    #      can't be changed.</p>
    #
    #   @return [String]
    #
    # @!attribute document_type
    #   <p>The type of document to create.</p>
    #            <note>
    #               <p>The <code>DeploymentStrategy</code> document type is an internal-use-only document type
    #       reserved for AppConfig.</p>
    #            </note>
    #
    #   Enum, one of: ["Command", "Policy", "Automation", "Session", "Package", "ApplicationConfiguration", "ApplicationConfigurationSchema", "DeploymentStrategy", "ChangeCalendar", "Automation.ChangeTemplate", "ProblemAnalysis", "ProblemAnalysisTemplate"]
    #
    #   @return [String]
    #
    # @!attribute document_format
    #   <p>Specify the document format for the request. The document format can be JSON, YAML, or TEXT.
    #      JSON is the default format.</p>
    #
    #   Enum, one of: ["YAML", "JSON", "TEXT"]
    #
    #   @return [String]
    #
    # @!attribute target_type
    #   <p>Specify a target type to define the kinds of resources the document can run on. For example,
    #      to run a document on EC2 instances, specify the following value:
    #      <code>/AWS::EC2::Instance</code>. If you specify a value of '/' the document can run on all types
    #      of resources. If you don't specify a value, the document can't run on any resources. For a list
    #      of valid resource types, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html">Amazon Web Services resource and
    #       property types reference</a> in the <i>CloudFormation User Guide</i>. </p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Optional metadata that you assign to a resource. Tags enable you to categorize a resource in
    #      different ways, such as by purpose, owner, or environment. For example, you might want to tag an
    #      SSM document to identify the types of targets or the environment where it will run. In this case,
    #      you could specify the following key-value pairs:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Key=OS,Value=Windows</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Key=Environment,Value=Production</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>To add tags to an existing SSM document, use the <a>AddTagsToResource</a>
    #       operation.</p>
    #            </note>
    #
    #   @return [Array<Tag>]
    #
    CreateDocumentInput = ::Struct.new(
      :content,
      :requires,
      :attachments,
      :name,
      :display_name,
      :version_name,
      :document_type,
      :document_format,
      :target_type,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute document_description
    #   <p>Information about the SSM document.</p>
    #
    #   @return [DocumentDescription]
    #
    CreateDocumentOutput = ::Struct.new(
      :document_description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the maintenance window.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>An optional description for the maintenance window. We recommend specifying a description to
    #      help you organize your maintenance windows. </p>
    #
    #   @return [String]
    #
    # @!attribute start_date
    #   <p>The date and time, in ISO-8601 Extended format, for when you want the maintenance window to
    #      become active. <code>StartDate</code> allows you to delay activation of the maintenance window
    #      until the specified future date.</p>
    #
    #   @return [String]
    #
    # @!attribute end_date
    #   <p>The date and time, in ISO-8601 Extended format, for when you want the maintenance window to
    #      become inactive. <code>EndDate</code> allows you to set a date and time in the future when the
    #      maintenance window will no longer run.</p>
    #
    #   @return [String]
    #
    # @!attribute schedule
    #   <p>The schedule of the maintenance window in the form of a cron or rate expression.</p>
    #
    #   @return [String]
    #
    # @!attribute schedule_timezone
    #   <p>The time zone that the scheduled maintenance window executions are based on, in Internet
    #      Assigned Numbers Authority (IANA) format. For example: "America/Los_Angeles", "UTC", or
    #      "Asia/Seoul". For more information, see the <a href="https://www.iana.org/time-zones">Time
    #       Zone Database</a> on the IANA website.</p>
    #
    #   @return [String]
    #
    # @!attribute schedule_offset
    #   <p>The number of days to wait after the date and time specified by a cron expression before
    #      running the maintenance window.</p>
    #            <p>For example, the following cron expression schedules a maintenance window to run on the
    #      third Tuesday of every month at 11:30 PM.</p>
    #            <p>
    #               <code>cron(30 23 ? * TUE 3 *)</code>
    #            </p>
    #            <p>If the schedule offset is <code>2</code>, the maintenance window won't run until two days
    #      later.</p>
    #
    #   @return [Integer]
    #
    # @!attribute duration
    #   <p>The duration of the maintenance window in hours.</p>
    #
    #   @return [Integer]
    #
    # @!attribute cutoff
    #   <p>The number of hours before the end of the maintenance window that Amazon Web Services Systems Manager stops scheduling
    #      new tasks for execution.</p>
    #
    #   @return [Integer]
    #
    # @!attribute allow_unassociated_targets
    #   <p>Enables a maintenance window task to run on managed nodes, even if you haven't registered
    #      those nodes as targets. If enabled, then you must specify the unregistered managed nodes (by node
    #      ID) when you register a task with the maintenance window.</p>
    #            <p>If you don't enable this option, then you must specify previously-registered targets when
    #      you register a task with the maintenance window.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute client_token
    #   <p>User-provided idempotency token.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Optional metadata that you assign to a resource. Tags enable you to categorize a resource in
    #      different ways, such as by purpose, owner, or environment. For example, you might want to tag a
    #      maintenance window to identify the type of tasks it will run, the types of targets, and the
    #      environment it will run in. In this case, you could specify the following key-value pairs:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Key=TaskType,Value=AgentUpdate</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Key=OS,Value=Windows</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Key=Environment,Value=Production</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>To add tags to an existing maintenance window, use the <a>AddTagsToResource</a>
    #       operation.</p>
    #            </note>
    #
    #   @return [Array<Tag>]
    #
    CreateMaintenanceWindowInput = ::Struct.new(
      :name,
      :description,
      :start_date,
      :end_date,
      :schedule,
      :schedule_timezone,
      :schedule_offset,
      :duration,
      :cutoff,
      :allow_unassociated_targets,
      :client_token,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.duration ||= 0
        self.cutoff ||= 0
        self.allow_unassociated_targets ||= false
      end

      def to_s
        "#<struct AWS::SDK::SSM::Types::CreateMaintenanceWindowInput "\
          "name=#{name || 'nil'}, "\
          "description=\"[SENSITIVE]\", "\
          "start_date=#{start_date || 'nil'}, "\
          "end_date=#{end_date || 'nil'}, "\
          "schedule=#{schedule || 'nil'}, "\
          "schedule_timezone=#{schedule_timezone || 'nil'}, "\
          "schedule_offset=#{schedule_offset || 'nil'}, "\
          "duration=#{duration || 'nil'}, "\
          "cutoff=#{cutoff || 'nil'}, "\
          "allow_unassociated_targets=#{allow_unassociated_targets || 'nil'}, "\
          "client_token=#{client_token || 'nil'}, "\
          "tags=#{tags || 'nil'}>"
      end
    end

    # @!attribute window_id
    #   <p>The ID of the created maintenance window.</p>
    #
    #   @return [String]
    #
    CreateMaintenanceWindowOutput = ::Struct.new(
      :window_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute description
    #   <p>Information about the OpsItem. </p>
    #
    #   @return [String]
    #
    # @!attribute ops_item_type
    #   <p>The type of OpsItem to create. Currently, the only valid values are
    #       <code>/aws/changerequest</code> and <code>/aws/issue</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute operational_data
    #   <p>Operational data is custom data that provides useful reference details about the OpsItem.
    #      For example, you can specify log files, error strings, license keys, troubleshooting tips, or
    #      other relevant data. You enter operational data as key-value pairs. The key has a maximum length
    #      of 128 characters. The value has a maximum size of 20 KB.</p>
    #            <important>
    #               <p>Operational data keys <i>can't</i> begin with the following:
    #        <code>amazon</code>, <code>aws</code>, <code>amzn</code>, <code>ssm</code>,
    #        <code>/amazon</code>, <code>/aws</code>, <code>/amzn</code>, <code>/ssm</code>.</p>
    #            </important>
    #            <p>You can choose to make the data searchable by other users in the account or you can restrict
    #      search access. Searchable data means that all users with access to the OpsItem Overview page (as
    #      provided by the <a>DescribeOpsItems</a> API operation) can view and search on the
    #      specified data. Operational data that isn't searchable is only viewable by users who have access
    #      to the OpsItem (as provided by the <a>GetOpsItem</a> API operation).</p>
    #            <p>Use the <code>/aws/resources</code> key in OperationalData to specify a related resource in
    #      the request. Use the <code>/aws/automations</code> key in OperationalData to associate an
    #      Automation runbook with the OpsItem. To view Amazon Web Services CLI example commands that use these keys, see
    #       <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-creating-OpsItems.html OpsCenter-manually-create-OpsItems">Creating OpsItems manually</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #
    #   @return [Hash<String, OpsItemDataValue>]
    #
    # @!attribute notifications
    #   <p>The Amazon Resource Name (ARN) of an SNS topic where notifications are sent when this
    #      OpsItem is edited or changed.</p>
    #
    #   @return [Array<OpsItemNotification>]
    #
    # @!attribute priority
    #   <p>The importance of this OpsItem in relation to other OpsItems in the system.</p>
    #
    #   @return [Integer]
    #
    # @!attribute related_ops_items
    #   <p>One or more OpsItems that share something in common with the current OpsItems. For example,
    #      related OpsItems can include OpsItems with similar error messages, impacted resources, or
    #      statuses for the impacted resource.</p>
    #
    #   @return [Array<RelatedOpsItem>]
    #
    # @!attribute source
    #   <p>The origin of the OpsItem, such as Amazon EC2 or Systems Manager.</p>
    #            <note>
    #               <p>The source name can't contain the following strings: <code>aws</code>, <code>amazon</code>,
    #       and <code>amzn</code>. </p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute title
    #   <p>A short heading that describes the nature of the OpsItem and the impacted resource.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Optional metadata that you assign to a resource. You can restrict access to OpsItems by
    #      using an inline IAM policy that specifies tags. For more information, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-getting-started.html OpsCenter-getting-started-user-permissions">Getting started with OpsCenter</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #            <p>Tags use a key-value pair. For example:</p>
    #            <p>
    #               <code>Key=Department,Value=Finance</code>
    #            </p>
    #            <important>
    #               <p>To add tags to a new OpsItem, a user must have IAM permissions for both the
    #        <code>ssm:CreateOpsItems</code> operation and the <code>ssm:AddTagsToResource</code> operation.
    #       To add tags to an existing OpsItem, use the <a>AddTagsToResource</a>
    #       operation.</p>
    #            </important>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute category
    #   <p>Specify a category to assign to an OpsItem. </p>
    #
    #   @return [String]
    #
    # @!attribute severity
    #   <p>Specify a severity to assign to an OpsItem.</p>
    #
    #   @return [String]
    #
    # @!attribute actual_start_time
    #   <p>The time a runbook workflow started. Currently reported only for the OpsItem type
    #       <code>/aws/changerequest</code>.</p>
    #
    #   @return [Time]
    #
    # @!attribute actual_end_time
    #   <p>The time a runbook workflow ended. Currently reported only for the OpsItem type
    #       <code>/aws/changerequest</code>.</p>
    #
    #   @return [Time]
    #
    # @!attribute planned_start_time
    #   <p>The time specified in a change request for a runbook workflow to start. Currently supported
    #      only for the OpsItem type <code>/aws/changerequest</code>.</p>
    #
    #   @return [Time]
    #
    # @!attribute planned_end_time
    #   <p>The time specified in a change request for a runbook workflow to end. Currently supported
    #      only for the OpsItem type <code>/aws/changerequest</code>.</p>
    #
    #   @return [Time]
    #
    CreateOpsItemInput = ::Struct.new(
      :description,
      :ops_item_type,
      :operational_data,
      :notifications,
      :priority,
      :related_ops_items,
      :source,
      :title,
      :tags,
      :category,
      :severity,
      :actual_start_time,
      :actual_end_time,
      :planned_start_time,
      :planned_end_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute ops_item_id
    #   <p>The ID of the OpsItem.</p>
    #
    #   @return [String]
    #
    CreateOpsItemOutput = ::Struct.new(
      :ops_item_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_id
    #   <p>A resource ID for a new Application Manager application.</p>
    #
    #   @return [String]
    #
    # @!attribute metadata
    #   <p>Metadata for a new Application Manager application. </p>
    #
    #   @return [Hash<String, MetadataValue>]
    #
    # @!attribute tags
    #   <p>Optional metadata that you assign to a resource. You can specify a maximum of five tags for
    #      an OpsMetadata object. Tags enable you to categorize a resource in different ways, such as by
    #      purpose, owner, or environment. For example, you might want to tag an OpsMetadata object to
    #      identify an environment or target Amazon Web Services Region. In this case, you could specify the following
    #      key-value pairs:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Key=Environment,Value=Production</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Key=Region,Value=us-east-2</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<Tag>]
    #
    CreateOpsMetadataInput = ::Struct.new(
      :resource_id,
      :metadata,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute ops_metadata_arn
    #   <p>The Amazon Resource Name (ARN) of the OpsMetadata Object or blob created by the call.</p>
    #
    #   @return [String]
    #
    CreateOpsMetadataOutput = ::Struct.new(
      :ops_metadata_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute operating_system
    #   <p>Defines the operating system the patch baseline applies to. The default value is
    #       <code>WINDOWS</code>.</p>
    #
    #   Enum, one of: ["WINDOWS", "AMAZON_LINUX", "AMAZON_LINUX_2", "UBUNTU", "REDHAT_ENTERPRISE_LINUX", "SUSE", "CENTOS", "ORACLE_LINUX", "DEBIAN", "MACOS", "RASPBIAN", "ROCKY_LINUX"]
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the patch baseline.</p>
    #
    #   @return [String]
    #
    # @!attribute global_filters
    #   <p>A set of global filters used to include patches in the baseline.</p>
    #
    #   @return [PatchFilterGroup]
    #
    # @!attribute approval_rules
    #   <p>A set of rules used to include patches in the baseline.</p>
    #
    #   @return [PatchRuleGroup]
    #
    # @!attribute approved_patches
    #   <p>A list of explicitly approved patches for the baseline.</p>
    #            <p>For information about accepted formats for lists of approved patches and rejected patches,
    #                           see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-approved-rejected-package-name-formats.html">About
    #                           package name formats for approved and rejected patch lists</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute approved_patches_compliance_level
    #   <p>Defines the compliance level for approved patches. When an approved patch is reported as
    #      missing, this value describes the severity of the compliance violation. The default value is
    #       <code>UNSPECIFIED</code>.</p>
    #
    #   Enum, one of: ["CRITICAL", "HIGH", "MEDIUM", "LOW", "INFORMATIONAL", "UNSPECIFIED"]
    #
    #   @return [String]
    #
    # @!attribute approved_patches_enable_non_security
    #   <p>Indicates whether the list of approved patches includes non-security updates that should be
    #      applied to the managed nodes. The default value is <code>false</code>. Applies to Linux managed
    #      nodes only.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute rejected_patches
    #   <p>A list of explicitly rejected patches for the baseline.</p>
    #            <p>For information about accepted formats for lists of approved patches and rejected patches,
    #                           see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-approved-rejected-package-name-formats.html">About
    #                           package name formats for approved and rejected patch lists</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute rejected_patches_action
    #   <p>The action for Patch Manager to take on patches included in the
    #       <code>RejectedPackages</code> list.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>ALLOW_AS_DEPENDENCY</code>
    #                     </b>: A package in the
    #         <code>Rejected</code> patches list is installed only if it is a dependency of another package.
    #        It is considered compliant with the patch baseline, and its status is reported as
    #         <code>InstalledOther</code>. This is the default action if no option is specified.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>BLOCK</code>
    #                     </b>: Packages in the
    #         <code>RejectedPatches</code> list, and packages that include them as dependencies, aren't
    #        installed under any circumstances. If a package was installed before it was added to the
    #        Rejected patches list, it is considered non-compliant with the patch baseline, and its status
    #        is reported as <code>InstalledRejected</code>.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["ALLOW_AS_DEPENDENCY", "BLOCK"]
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the patch baseline.</p>
    #
    #   @return [String]
    #
    # @!attribute sources
    #   <p>Information about the patches to use to update the managed nodes, including target operating
    #      systems and source repositories. Applies to Linux managed nodes only.</p>
    #
    #   @return [Array<PatchSource>]
    #
    # @!attribute client_token
    #   <p>User-provided idempotency token.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Optional metadata that you assign to a resource. Tags enable you to categorize a resource in
    #      different ways, such as by purpose, owner, or environment. For example, you might want to tag a
    #      patch baseline to identify the severity level of patches it specifies and the operating system
    #      family it applies to. In this case, you could specify the following key-value pairs:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Key=PatchSeverity,Value=Critical</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Key=OS,Value=Windows</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>To add tags to an existing patch baseline, use the <a>AddTagsToResource</a>
    #       operation.</p>
    #            </note>
    #
    #   @return [Array<Tag>]
    #
    CreatePatchBaselineInput = ::Struct.new(
      :operating_system,
      :name,
      :global_filters,
      :approval_rules,
      :approved_patches,
      :approved_patches_compliance_level,
      :approved_patches_enable_non_security,
      :rejected_patches,
      :rejected_patches_action,
      :description,
      :sources,
      :client_token,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute baseline_id
    #   <p>The ID of the created patch baseline.</p>
    #
    #   @return [String]
    #
    CreatePatchBaselineOutput = ::Struct.new(
      :baseline_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute sync_name
    #   <p>A name for the configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_destination
    #   <p>Amazon S3 configuration details for the sync. This parameter is required if the
    #       <code>SyncType</code> value is SyncToDestination.</p>
    #
    #   @return [ResourceDataSyncS3Destination]
    #
    # @!attribute sync_type
    #   <p>Specify <code>SyncToDestination</code> to create a resource data sync that synchronizes data
    #      to an S3 bucket for Inventory. If you specify <code>SyncToDestination</code>, you must provide a
    #      value for <code>S3Destination</code>. Specify <code>SyncFromSource</code> to synchronize data
    #      from a single account and multiple Regions, or multiple Amazon Web Services accounts and Amazon Web Services Regions, as
    #      listed in Organizations for Explorer. If you specify <code>SyncFromSource</code>, you must provide a
    #      value for <code>SyncSource</code>. The default value is <code>SyncToDestination</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute sync_source
    #   <p>Specify information about the data sources to synchronize. This parameter is required if the
    #       <code>SyncType</code> value is SyncFromSource.</p>
    #
    #   @return [ResourceDataSyncSource]
    #
    CreateResourceDataSyncInput = ::Struct.new(
      :sync_name,
      :s3_destination,
      :sync_type,
      :sync_source,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    CreateResourceDataSyncOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You have exceeded the limit for custom schemas. Delete one or more custom schemas and try
    #    again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    CustomSchemaCountLimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute activation_id
    #   <p>The ID of the activation that you want to delete.</p>
    #
    #   @return [String]
    #
    DeleteActivationInput = ::Struct.new(
      :activation_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteActivationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the SSM document.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_id
    #   <p>The managed node ID.</p>
    #            <note>
    #               <p>
    #                  <code>InstanceId</code> has been deprecated. To specify a managed node ID for an
    #       association, use the <code>Targets</code> parameter. Requests that include the parameter
    #        <code>InstanceID</code> with Systems Manager documents (SSM documents) that use schema version 2.0 or
    #       later will fail. In addition, if you use the parameter <code>InstanceId</code>, you can't use
    #       the parameters <code>AssociationName</code>, <code>DocumentVersion</code>,
    #        <code>MaxErrors</code>, <code>MaxConcurrency</code>, <code>OutputLocation</code>, or
    #        <code>ScheduleExpression</code>. To use these parameters, you must use the <code>Targets</code>
    #       parameter.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute association_id
    #   <p>The association ID that you want to delete.</p>
    #
    #   @return [String]
    #
    DeleteAssociationInput = ::Struct.new(
      :name,
      :instance_id,
      :association_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteAssociationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the document.</p>
    #
    #   @return [String]
    #
    # @!attribute document_version
    #   <p>The version of the document that you want to delete. If not provided, all versions of the
    #      document are deleted.</p>
    #
    #   @return [String]
    #
    # @!attribute version_name
    #   <p>The version name of the document that you want to delete. If not provided, all versions of
    #      the document are deleted.</p>
    #
    #   @return [String]
    #
    # @!attribute force
    #   <p>Some SSM document types require that you specify a <code>Force</code> flag before you can
    #      delete the document. For example, you must specify a <code>Force</code> flag to delete a document
    #      of type <code>ApplicationConfigurationSchema</code>. You can restrict access to the
    #       <code>Force</code> flag in an Identity and Access Management (IAM) policy.</p>
    #
    #   @return [Boolean]
    #
    DeleteDocumentInput = ::Struct.new(
      :name,
      :document_version,
      :version_name,
      :force,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.force ||= false
      end
    end

    DeleteDocumentOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute type_name
    #   <p>The name of the custom inventory type for which you want to delete either all previously
    #      collected data or the inventory type itself. </p>
    #
    #   @return [String]
    #
    # @!attribute schema_delete_option
    #   <p>Use the <code>SchemaDeleteOption</code> to delete a custom inventory type (schema). If you
    #      don't choose this option, the system only deletes existing inventory data associated with the
    #      custom inventory type. Choose one of the following options:</p>
    #            <p>DisableSchema: If you choose this option, the system ignores all inventory data for the
    #      specified version, and any earlier versions. To enable this schema again, you must call the
    #       <code>PutInventory</code> operation for a version greater than the disabled version.</p>
    #            <p>DeleteSchema: This option deletes the specified custom type from the Inventory service. You
    #      can recreate the schema later, if you want.</p>
    #
    #   Enum, one of: ["DisableSchema", "DeleteSchema"]
    #
    #   @return [String]
    #
    # @!attribute dry_run
    #   <p>Use this option to view a summary of the deletion request without deleting any data or the
    #      data type. This option is useful when you only want to understand what will be deleted. Once you
    #      validate that the data to be deleted is what you intend to delete, you can run the same command
    #      without specifying the <code>DryRun</code> option.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute client_token
    #   <p>User-provided idempotency token.</p>
    #
    #   @return [String]
    #
    DeleteInventoryInput = ::Struct.new(
      :type_name,
      :schema_delete_option,
      :dry_run,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.dry_run ||= false
      end
    end

    # @!attribute deletion_id
    #   <p>Every <code>DeleteInventory</code> operation is assigned a unique ID. This option returns a
    #      unique ID. You can use this ID to query the status of a delete operation. This option is useful
    #      for ensuring that a delete operation has completed before you begin other operations. </p>
    #
    #   @return [String]
    #
    # @!attribute type_name
    #   <p>The name of the inventory data type specified in the request.</p>
    #
    #   @return [String]
    #
    # @!attribute deletion_summary
    #   <p>A summary of the delete operation. For more information about this summary, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-inventory-custom.html sysman-inventory-delete-summary">Deleting custom inventory</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #
    #   @return [InventoryDeletionSummary]
    #
    DeleteInventoryOutput = ::Struct.new(
      :deletion_id,
      :type_name,
      :deletion_summary,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute window_id
    #   <p>The ID of the maintenance window to delete.</p>
    #
    #   @return [String]
    #
    DeleteMaintenanceWindowInput = ::Struct.new(
      :window_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute window_id
    #   <p>The ID of the deleted maintenance window.</p>
    #
    #   @return [String]
    #
    DeleteMaintenanceWindowOutput = ::Struct.new(
      :window_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute ops_metadata_arn
    #   <p>The Amazon Resource Name (ARN) of an OpsMetadata Object to delete.</p>
    #
    #   @return [String]
    #
    DeleteOpsMetadataInput = ::Struct.new(
      :ops_metadata_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteOpsMetadataOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the parameter to delete.</p>
    #
    #   @return [String]
    #
    DeleteParameterInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteParameterOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute names
    #   <p>The names of the parameters to delete. After deleting a parameter, wait for at least 30
    #      seconds to create a parameter with the same name.</p>
    #
    #   @return [Array<String>]
    #
    DeleteParametersInput = ::Struct.new(
      :names,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute deleted_parameters
    #   <p>The names of the deleted parameters.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute invalid_parameters
    #   <p>The names of parameters that weren't deleted because the parameters aren't valid.</p>
    #
    #   @return [Array<String>]
    #
    DeleteParametersOutput = ::Struct.new(
      :deleted_parameters,
      :invalid_parameters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute baseline_id
    #   <p>The ID of the patch baseline to delete.</p>
    #
    #   @return [String]
    #
    DeletePatchBaselineInput = ::Struct.new(
      :baseline_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute baseline_id
    #   <p>The ID of the deleted patch baseline.</p>
    #
    #   @return [String]
    #
    DeletePatchBaselineOutput = ::Struct.new(
      :baseline_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute sync_name
    #   <p>The name of the configuration to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute sync_type
    #   <p>Specify the type of resource data sync to delete.</p>
    #
    #   @return [String]
    #
    DeleteResourceDataSyncInput = ::Struct.new(
      :sync_name,
      :sync_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteResourceDataSyncOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The ID assigned to the managed node when you registered it using the activation process.
    #     </p>
    #
    #   @return [String]
    #
    DeregisterManagedInstanceInput = ::Struct.new(
      :instance_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeregisterManagedInstanceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute baseline_id
    #   <p>The ID of the patch baseline to deregister the patch group from.</p>
    #
    #   @return [String]
    #
    # @!attribute patch_group
    #   <p>The name of the patch group that should be deregistered from the patch baseline.</p>
    #
    #   @return [String]
    #
    DeregisterPatchBaselineForPatchGroupInput = ::Struct.new(
      :baseline_id,
      :patch_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute baseline_id
    #   <p>The ID of the patch baseline the patch group was deregistered from.</p>
    #
    #   @return [String]
    #
    # @!attribute patch_group
    #   <p>The name of the patch group deregistered from the patch baseline.</p>
    #
    #   @return [String]
    #
    DeregisterPatchBaselineForPatchGroupOutput = ::Struct.new(
      :baseline_id,
      :patch_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute window_id
    #   <p>The ID of the maintenance window the target should be removed from.</p>
    #
    #   @return [String]
    #
    # @!attribute window_target_id
    #   <p>The ID of the target definition to remove.</p>
    #
    #   @return [String]
    #
    # @!attribute safe
    #   <p>The system checks if the target is being referenced by a task. If the target is being
    #      referenced, the system returns an error and doesn't deregister the target from the maintenance
    #      window.</p>
    #
    #   @return [Boolean]
    #
    DeregisterTargetFromMaintenanceWindowInput = ::Struct.new(
      :window_id,
      :window_target_id,
      :safe,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute window_id
    #   <p>The ID of the maintenance window the target was removed from.</p>
    #
    #   @return [String]
    #
    # @!attribute window_target_id
    #   <p>The ID of the removed target definition.</p>
    #
    #   @return [String]
    #
    DeregisterTargetFromMaintenanceWindowOutput = ::Struct.new(
      :window_id,
      :window_target_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute window_id
    #   <p>The ID of the maintenance window the task should be removed from.</p>
    #
    #   @return [String]
    #
    # @!attribute window_task_id
    #   <p>The ID of the task to remove from the maintenance window.</p>
    #
    #   @return [String]
    #
    DeregisterTaskFromMaintenanceWindowInput = ::Struct.new(
      :window_id,
      :window_task_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute window_id
    #   <p>The ID of the maintenance window the task was removed from.</p>
    #
    #   @return [String]
    #
    # @!attribute window_task_id
    #   <p>The ID of the task removed from the maintenance window.</p>
    #
    #   @return [String]
    #
    DeregisterTaskFromMaintenanceWindowOutput = ::Struct.new(
      :window_id,
      :window_task_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Filter for the DescribeActivation API.</p>
    #
    # @!attribute filter_key
    #   <p>The name of the filter.</p>
    #
    #   Enum, one of: ["ActivationIds", "DefaultInstanceName", "IamRole"]
    #
    #   @return [String]
    #
    # @!attribute filter_values
    #   <p>The filter values.</p>
    #
    #   @return [Array<String>]
    #
    DescribeActivationsFilter = ::Struct.new(
      :filter_key,
      :filter_values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DescribeActivationsFilterKeys
    #
    module DescribeActivationsFilterKeys
      # No documentation available.
      #
      ACTIVATION_IDS = "ActivationIds"

      # No documentation available.
      #
      DEFAULT_INSTANCE_NAME = "DefaultInstanceName"

      # No documentation available.
      #
      IAM_ROLE = "IamRole"
    end

    # @!attribute filters
    #   <p>A filter to view information about your activations.</p>
    #
    #   @return [Array<DescribeActivationsFilter>]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A token to start the list. Use this token to get the next set of results. </p>
    #
    #   @return [String]
    #
    DescribeActivationsInput = ::Struct.new(
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute activation_list
    #   <p>A list of activations for your Amazon Web Services account.</p>
    #
    #   @return [Array<Activation>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. Use this token to get the next set of
    #      results. </p>
    #
    #   @return [String]
    #
    DescribeActivationsOutput = ::Struct.new(
      :activation_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute association_id
    #   <p>The association ID that includes the execution for which you want to view details.</p>
    #
    #   @return [String]
    #
    # @!attribute execution_id
    #   <p>The execution ID for which you want to view details.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>Filters for the request. You can specify the following filters and values.</p>
    #            <p>Status (EQUAL)</p>
    #            <p>ResourceId (EQUAL)</p>
    #            <p>ResourceType (EQUAL)</p>
    #
    #   @return [Array<AssociationExecutionTargetsFilter>]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A token to start the list. Use this token to get the next set of results. </p>
    #
    #   @return [String]
    #
    DescribeAssociationExecutionTargetsInput = ::Struct.new(
      :association_id,
      :execution_id,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute association_execution_targets
    #   <p>Information about the execution.</p>
    #
    #   @return [Array<AssociationExecutionTarget>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. Use this token to get the next set of
    #      results.</p>
    #
    #   @return [String]
    #
    DescribeAssociationExecutionTargetsOutput = ::Struct.new(
      :association_execution_targets,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute association_id
    #   <p>The association ID for which you want to view execution history details.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>Filters for the request. You can specify the following filters and values.</p>
    #            <p>ExecutionId (EQUAL)</p>
    #            <p>Status (EQUAL)</p>
    #            <p>CreatedTime (EQUAL, GREATER_THAN, LESS_THAN)</p>
    #
    #   @return [Array<AssociationExecutionFilter>]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A token to start the list. Use this token to get the next set of results. </p>
    #
    #   @return [String]
    #
    DescribeAssociationExecutionsInput = ::Struct.new(
      :association_id,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute association_executions
    #   <p>A list of the executions for the specified association ID.</p>
    #
    #   @return [Array<AssociationExecution>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. Use this token to get the next set of
    #      results.</p>
    #
    #   @return [String]
    #
    DescribeAssociationExecutionsOutput = ::Struct.new(
      :association_executions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the SSM document.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_id
    #   <p>The managed node ID.</p>
    #
    #   @return [String]
    #
    # @!attribute association_id
    #   <p>The association ID for which you want information.</p>
    #
    #   @return [String]
    #
    # @!attribute association_version
    #   <p>Specify the association version to retrieve. To view the latest version, either specify
    #       <code>$LATEST</code> for this parameter, or omit this parameter. To view a list of all
    #      associations for a managed node, use <a>ListAssociations</a>. To get a list of
    #      versions for a specific association, use <a>ListAssociationVersions</a>. </p>
    #
    #   @return [String]
    #
    DescribeAssociationInput = ::Struct.new(
      :name,
      :instance_id,
      :association_id,
      :association_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute association_description
    #   <p>Information about the association.</p>
    #
    #   @return [AssociationDescription]
    #
    DescribeAssociationOutput = ::Struct.new(
      :association_description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute filters
    #   <p>Filters used to limit the scope of executions that are requested.</p>
    #
    #   @return [Array<AutomationExecutionFilter>]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    #
    #   @return [String]
    #
    DescribeAutomationExecutionsInput = ::Struct.new(
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute automation_execution_metadata_list
    #   <p>The list of details about each automation execution which has occurred which matches the
    #      filter specification, if any.</p>
    #
    #   @return [Array<AutomationExecutionMetadata>]
    #
    # @!attribute next_token
    #   <p>The token to use when requesting the next set of items. If there are no additional items to
    #      return, the string is empty.</p>
    #
    #   @return [String]
    #
    DescribeAutomationExecutionsOutput = ::Struct.new(
      :automation_execution_metadata_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute automation_execution_id
    #   <p>The Automation execution ID for which you want step execution descriptions.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>One or more filters to limit the number of step executions returned by the request.</p>
    #
    #   @return [Array<StepExecutionFilter>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute reverse_order
    #   <p>Indicates whether to list step executions in reverse order by start time. The default value
    #      is 'false'.</p>
    #
    #   @return [Boolean]
    #
    DescribeAutomationStepExecutionsInput = ::Struct.new(
      :automation_execution_id,
      :filters,
      :next_token,
      :max_results,
      :reverse_order,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute step_executions
    #   <p>A list of details about the current state of all steps that make up an execution.</p>
    #
    #   @return [Array<StepExecution>]
    #
    # @!attribute next_token
    #   <p>The token to use when requesting the next set of items. If there are no additional items to
    #      return, the string is empty.</p>
    #
    #   @return [String]
    #
    DescribeAutomationStepExecutionsOutput = ::Struct.new(
      :step_executions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute filters
    #   <p>Each element in the array is a structure containing a key-value pair.</p>
    #            <p>
    #               <b>Windows Server</b>
    #            </p>
    #            <p>Supported keys for Windows Server managed node patches include the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>PATCH_SET</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>OS</code> | <code>APPLICATION</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>PRODUCT</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>WindowsServer2012</code> | <code>Office 2010</code> |
    #         <code>MicrosoftDefenderAntivirus</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>PRODUCT_FAMILY</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>Windows</code> | <code>Office</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>MSRC_SEVERITY</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>ServicePacks</code> | <code>Important</code> | <code>Moderate</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>CLASSIFICATION</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>ServicePacks</code> | <code>SecurityUpdates</code> |
    #         <code>DefinitionUpdates</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>PATCH_ID</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>KB123456</code> | <code>KB4516046</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #            <p>
    #               <b>Linux</b>
    #            </p>
    #            <important>
    #               <p>When specifying filters for Linux patches, you must specify a key-pair for
    #        <code>PRODUCT</code>. For example, using the Command Line Interface (CLI), the
    #       following command fails:</p>
    #               <p>
    #                  <code>aws ssm describe-available-patches --filters Key=CVE_ID,Values=CVE-2018-3615</code>
    #               </p>
    #               <p>However, the following command succeeds:</p>
    #               <p>
    #                  <code>aws ssm describe-available-patches --filters Key=PRODUCT,Values=AmazonLinux2018.03
    #        Key=CVE_ID,Values=CVE-2018-3615</code>
    #               </p>
    #            </important>
    #            <p>Supported keys for Linux managed node patches include the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>PRODUCT</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>AmazonLinux2018.03</code> | <code>AmazonLinux2.0</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>NAME</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>kernel-headers</code> | <code>samba-python</code> | <code>php</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>SEVERITY</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>Critical</code> | <code>Important</code> | <code>Medium</code> |
    #         <code>Low</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>EPOCH</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>0</code> | <code>1</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>VERSION</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>78.6.1</code> | <code>4.10.16</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>RELEASE</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>9.56.amzn1</code> | <code>1.amzn2</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>ARCH</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>i686</code> | <code>x86_64</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>REPOSITORY</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>Core</code> | <code>Updates</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>ADVISORY_ID</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>ALAS-2018-1058</code> | <code>ALAS2-2021-1594</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>CVE_ID</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>CVE-2018-3615</code> | <code>CVE-2020-1472</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>BUGZILLA_ID</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>1463241</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<PatchOrchestratorFilter>]
    #
    # @!attribute max_results
    #   <p>The maximum number of patches to return (per page).</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    #
    #   @return [String]
    #
    DescribeAvailablePatchesInput = ::Struct.new(
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute patches
    #   <p>An array of patches. Each entry in the array is a patch structure.</p>
    #
    #   @return [Array<Patch>]
    #
    # @!attribute next_token
    #   <p>The token to use when requesting the next set of items. If there are no additional items to
    #      return, the string is empty.</p>
    #
    #   @return [String]
    #
    DescribeAvailablePatchesOutput = ::Struct.new(
      :patches,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the SSM document.</p>
    #
    #   @return [String]
    #
    # @!attribute document_version
    #   <p>The document version for which you want information. Can be a specific version or the
    #      default version.</p>
    #
    #   @return [String]
    #
    # @!attribute version_name
    #   <p>An optional field specifying the version of the artifact associated with the document. For
    #      example, "Release 12, Update 6". This value is unique across all versions of a document, and
    #      can't be changed.</p>
    #
    #   @return [String]
    #
    DescribeDocumentInput = ::Struct.new(
      :name,
      :document_version,
      :version_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute document
    #   <p>Information about the SSM document.</p>
    #
    #   @return [DocumentDescription]
    #
    DescribeDocumentOutput = ::Struct.new(
      :document,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the document for which you are the owner.</p>
    #
    #   @return [String]
    #
    # @!attribute permission_type
    #   <p>The permission type for the document. The permission type can be
    #      <i>Share</i>.</p>
    #
    #   Enum, one of: ["Share"]
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    #
    #   @return [String]
    #
    DescribeDocumentPermissionInput = ::Struct.new(
      :name,
      :permission_type,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_ids
    #   <p>The account IDs that have permission to use this document. The ID can be either an
    #      Amazon Web Services account or <i>All</i>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute account_sharing_info_list
    #   <p>A list of Amazon Web Services accounts where the current document is shared and the version shared with
    #      each account.</p>
    #
    #   @return [Array<AccountSharingInfo>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. Use this token to get the next set of
    #      results.</p>
    #
    #   @return [String]
    #
    DescribeDocumentPermissionOutput = ::Struct.new(
      :account_ids,
      :account_sharing_info_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The managed node ID for which you want to view all associations.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    #
    #   @return [String]
    #
    DescribeEffectiveInstanceAssociationsInput = ::Struct.new(
      :instance_id,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute associations
    #   <p>The associations for the requested managed node.</p>
    #
    #   @return [Array<InstanceAssociation>]
    #
    # @!attribute next_token
    #   <p>The token to use when requesting the next set of items. If there are no additional items to
    #      return, the string is empty.</p>
    #
    #   @return [String]
    #
    DescribeEffectiveInstanceAssociationsOutput = ::Struct.new(
      :associations,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute baseline_id
    #   <p>The ID of the patch baseline to retrieve the effective patches for.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of patches to return (per page).</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    #
    #   @return [String]
    #
    DescribeEffectivePatchesForPatchBaselineInput = ::Struct.new(
      :baseline_id,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute effective_patches
    #   <p>An array of patches and patch status.</p>
    #
    #   @return [Array<EffectivePatch>]
    #
    # @!attribute next_token
    #   <p>The token to use when requesting the next set of items. If there are no additional items to
    #      return, the string is empty.</p>
    #
    #   @return [String]
    #
    DescribeEffectivePatchesForPatchBaselineOutput = ::Struct.new(
      :effective_patches,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The managed node IDs for which you want association status information.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    #
    #   @return [String]
    #
    DescribeInstanceAssociationsStatusInput = ::Struct.new(
      :instance_id,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_association_status_infos
    #   <p>Status information about the association.</p>
    #
    #   @return [Array<InstanceAssociationStatusInfo>]
    #
    # @!attribute next_token
    #   <p>The token to use when requesting the next set of items. If there are no additional items to
    #      return, the string is empty.</p>
    #
    #   @return [String]
    #
    DescribeInstanceAssociationsStatusOutput = ::Struct.new(
      :instance_association_status_infos,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_information_filter_list
    #   <p>This is a legacy method. We recommend that you don't use this method. Instead, use the
    #       <code>Filters</code> data type. <code>Filters</code> enables you to return node information by
    #      filtering based on tags applied to managed nodes.</p>
    #            <note>
    #               <p>Attempting to use <code>InstanceInformationFilterList</code> and <code>Filters</code> leads
    #       to an exception error. </p>
    #            </note>
    #
    #   @return [Array<InstanceInformationFilter>]
    #
    # @!attribute filters
    #   <p>One or more filters. Use a filter to return a more specific list of managed nodes. You can
    #      filter based on tags applied to EC2 instances. Use this <code>Filters</code> data type instead of
    #       <code>InstanceInformationFilterList</code>, which is deprecated.</p>
    #
    #   @return [Array<InstanceInformationStringFilter>]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results. </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    #
    #   @return [String]
    #
    DescribeInstanceInformationInput = ::Struct.new(
      :instance_information_filter_list,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_information_list
    #   <p>The managed node information list.</p>
    #
    #   @return [Array<InstanceInformation>]
    #
    # @!attribute next_token
    #   <p>The token to use when requesting the next set of items. If there are no additional items to
    #      return, the string is empty. </p>
    #
    #   @return [String]
    #
    DescribeInstanceInformationOutput = ::Struct.new(
      :instance_information_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute patch_group
    #   <p>The name of the patch group for which the patch state information should be
    #      retrieved.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>Each entry in the array is a structure containing:</p>
    #            <ul>
    #               <li>
    #                  <p>Key (string between 1 and 200 characters)</p>
    #               </li>
    #               <li>
    #                  <p>Values (array containing a single string)</p>
    #               </li>
    #               <li>
    #                  <p>Type (string "Equal", "NotEqual", "LessThan", "GreaterThan")</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<InstancePatchStateFilter>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of patches to return (per page).</p>
    #
    #   @return [Integer]
    #
    DescribeInstancePatchStatesForPatchGroupInput = ::Struct.new(
      :patch_group,
      :filters,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_patch_states
    #   <p>The high-level patch state for the requested managed nodes. </p>
    #
    #   @return [Array<InstancePatchState>]
    #
    # @!attribute next_token
    #   <p>The token to use when requesting the next set of items. If there are no additional items to
    #      return, the string is empty.</p>
    #
    #   @return [String]
    #
    DescribeInstancePatchStatesForPatchGroupOutput = ::Struct.new(
      :instance_patch_states,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_ids
    #   <p>The ID of the managed node for which patch state information should be retrieved.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of managed nodes to return (per page).</p>
    #
    #   @return [Integer]
    #
    DescribeInstancePatchStatesInput = ::Struct.new(
      :instance_ids,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_patch_states
    #   <p>The high-level patch state for the requested managed nodes.</p>
    #
    #   @return [Array<InstancePatchState>]
    #
    # @!attribute next_token
    #   <p>The token to use when requesting the next set of items. If there are no additional items to
    #      return, the string is empty.</p>
    #
    #   @return [String]
    #
    DescribeInstancePatchStatesOutput = ::Struct.new(
      :instance_patch_states,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The ID of the managed node whose patch state information should be retrieved.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>Each element in the array is a structure containing a key-value pair.</p>
    #            <p>Supported keys for <code>DescribeInstancePatches</code>include the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>Classification</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>Security</code> | <code>SecurityUpdates</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>KBId</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>KB4480056</code> | <code>java-1.7.0-openjdk.x86_64</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>Severity</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>Important</code> | <code>Medium</code> | <code>Low</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>State</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>Installed</code> | <code>InstalledOther</code> |
    #         <code>InstalledPendingReboot</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<PatchOrchestratorFilter>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of patches to return (per page).</p>
    #
    #   @return [Integer]
    #
    DescribeInstancePatchesInput = ::Struct.new(
      :instance_id,
      :filters,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute patches
    #   <p>Each entry in the array is a structure containing:</p>
    #            <ul>
    #               <li>
    #                  <p>Title (string)</p>
    #               </li>
    #               <li>
    #                  <p>KBId (string)</p>
    #               </li>
    #               <li>
    #                  <p>Classification (string)</p>
    #               </li>
    #               <li>
    #                  <p>Severity (string)</p>
    #               </li>
    #               <li>
    #                  <p>State (string, such as "INSTALLED" or "FAILED")</p>
    #               </li>
    #               <li>
    #                  <p>InstalledTime (DateTime)</p>
    #               </li>
    #               <li>
    #                  <p>InstalledBy (string)</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<PatchComplianceData>]
    #
    # @!attribute next_token
    #   <p>The token to use when requesting the next set of items. If there are no additional items to
    #      return, the string is empty.</p>
    #
    #   @return [String]
    #
    DescribeInstancePatchesOutput = ::Struct.new(
      :patches,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute deletion_id
    #   <p>Specify the delete inventory ID for which you want information. This ID was returned by the
    #       <code>DeleteInventory</code> operation.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>A token to start the list. Use this token to get the next set of results. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    #   @return [Integer]
    #
    DescribeInventoryDeletionsInput = ::Struct.new(
      :deletion_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute inventory_deletions
    #   <p>A list of status items for deleted inventory.</p>
    #
    #   @return [Array<InventoryDeletionStatusItem>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. Use this token to get the next set of
    #      results.</p>
    #
    #   @return [String]
    #
    DescribeInventoryDeletionsOutput = ::Struct.new(
      :inventory_deletions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute window_execution_id
    #   <p>The ID of the maintenance window execution the task is part of.</p>
    #
    #   @return [String]
    #
    # @!attribute task_id
    #   <p>The ID of the specific task in the maintenance window task that should be retrieved.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>Optional filters used to scope down the returned task invocations. The supported filter key
    #      is <code>STATUS</code> with the corresponding values <code>PENDING</code>,
    #       <code>IN_PROGRESS</code>, <code>SUCCESS</code>, <code>FAILED</code>, <code>TIMED_OUT</code>,
    #       <code>CANCELLING</code>, and <code>CANCELLED</code>.</p>
    #
    #   @return [Array<MaintenanceWindowFilter>]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    #
    #   @return [String]
    #
    DescribeMaintenanceWindowExecutionTaskInvocationsInput = ::Struct.new(
      :window_execution_id,
      :task_id,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute window_execution_task_invocation_identities
    #   <p>Information about the task invocation results per invocation.</p>
    #
    #   @return [Array<MaintenanceWindowExecutionTaskInvocationIdentity>]
    #
    # @!attribute next_token
    #   <p>The token to use when requesting the next set of items. If there are no additional items to
    #      return, the string is empty.</p>
    #
    #   @return [String]
    #
    DescribeMaintenanceWindowExecutionTaskInvocationsOutput = ::Struct.new(
      :window_execution_task_invocation_identities,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute window_execution_id
    #   <p>The ID of the maintenance window execution whose task executions should be retrieved.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>Optional filters used to scope down the returned tasks. The supported filter key is
    #       <code>STATUS</code> with the corresponding values <code>PENDING</code>,
    #      <code>IN_PROGRESS</code>, <code>SUCCESS</code>, <code>FAILED</code>, <code>TIMED_OUT</code>,
    #       <code>CANCELLING</code>, and <code>CANCELLED</code>.</p>
    #
    #   @return [Array<MaintenanceWindowFilter>]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    #
    #   @return [String]
    #
    DescribeMaintenanceWindowExecutionTasksInput = ::Struct.new(
      :window_execution_id,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute window_execution_task_identities
    #   <p>Information about the task executions.</p>
    #
    #   @return [Array<MaintenanceWindowExecutionTaskIdentity>]
    #
    # @!attribute next_token
    #   <p>The token to use when requesting the next set of items. If there are no additional items to
    #      return, the string is empty.</p>
    #
    #   @return [String]
    #
    DescribeMaintenanceWindowExecutionTasksOutput = ::Struct.new(
      :window_execution_task_identities,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute window_id
    #   <p>The ID of the maintenance window whose executions should be retrieved.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>Each entry in the array is a structure containing:</p>
    #            <ul>
    #               <li>
    #                  <p>Key. A string between 1 and 128 characters. Supported keys include
    #         <code>ExecutedBefore</code> and <code>ExecutedAfter</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Values. An array of strings, each between 1 and 256 characters. Supported values are
    #        date/time strings in a valid ISO 8601 date/time format, such as
    #         <code>2021-11-04T05:00:00Z</code>.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<MaintenanceWindowFilter>]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    #
    #   @return [String]
    #
    DescribeMaintenanceWindowExecutionsInput = ::Struct.new(
      :window_id,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute window_executions
    #   <p>Information about the maintenance window executions.</p>
    #
    #   @return [Array<MaintenanceWindowExecution>]
    #
    # @!attribute next_token
    #   <p>The token to use when requesting the next set of items. If there are no additional items to
    #      return, the string is empty.</p>
    #
    #   @return [String]
    #
    DescribeMaintenanceWindowExecutionsOutput = ::Struct.new(
      :window_executions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute window_id
    #   <p>The ID of the maintenance window to retrieve information about.</p>
    #
    #   @return [String]
    #
    # @!attribute targets
    #   <p>The managed node ID or key-value pair to retrieve information about.</p>
    #
    #   @return [Array<Target>]
    #
    # @!attribute resource_type
    #   <p>The type of resource you want to retrieve information about. For example,
    #       <code>INSTANCE</code>.</p>
    #
    #   Enum, one of: ["INSTANCE", "RESOURCE_GROUP"]
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>Filters used to limit the range of results. For example, you can limit maintenance window
    #      executions to only those scheduled before or after a certain date and time.</p>
    #
    #   @return [Array<PatchOrchestratorFilter>]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    #
    #   @return [String]
    #
    DescribeMaintenanceWindowScheduleInput = ::Struct.new(
      :window_id,
      :targets,
      :resource_type,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute scheduled_window_executions
    #   <p>Information about maintenance window executions scheduled for the specified time
    #      range.</p>
    #
    #   @return [Array<ScheduledWindowExecution>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. (You use this token in the next call.)</p>
    #
    #   @return [String]
    #
    DescribeMaintenanceWindowScheduleOutput = ::Struct.new(
      :scheduled_window_executions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute window_id
    #   <p>The ID of the maintenance window whose targets should be retrieved.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>Optional filters that can be used to narrow down the scope of the returned window targets.
    #      The supported filter keys are <code>Type</code>, <code>WindowTargetId</code>, and
    #       <code>OwnerInformation</code>.</p>
    #
    #   @return [Array<MaintenanceWindowFilter>]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    #
    #   @return [String]
    #
    DescribeMaintenanceWindowTargetsInput = ::Struct.new(
      :window_id,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute targets
    #   <p>Information about the targets in the maintenance window.</p>
    #
    #   @return [Array<MaintenanceWindowTarget>]
    #
    # @!attribute next_token
    #   <p>The token to use when requesting the next set of items. If there are no additional items to
    #      return, the string is empty.</p>
    #
    #   @return [String]
    #
    DescribeMaintenanceWindowTargetsOutput = ::Struct.new(
      :targets,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute window_id
    #   <p>The ID of the maintenance window whose tasks should be retrieved.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>Optional filters used to narrow down the scope of the returned tasks. The supported filter
    #      keys are <code>WindowTaskId</code>, <code>TaskArn</code>, <code>Priority</code>, and
    #       <code>TaskType</code>.</p>
    #
    #   @return [Array<MaintenanceWindowFilter>]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    #
    #   @return [String]
    #
    DescribeMaintenanceWindowTasksInput = ::Struct.new(
      :window_id,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tasks
    #   <p>Information about the tasks in the maintenance window.</p>
    #
    #   @return [Array<MaintenanceWindowTask>]
    #
    # @!attribute next_token
    #   <p>The token to use when requesting the next set of items. If there are no additional items to
    #      return, the string is empty.</p>
    #
    #   @return [String]
    #
    DescribeMaintenanceWindowTasksOutput = ::Struct.new(
      :tasks,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute targets
    #   <p>The managed node ID or key-value pair to retrieve information about.</p>
    #
    #   @return [Array<Target>]
    #
    # @!attribute resource_type
    #   <p>The type of resource you want to retrieve information about. For example,
    #       <code>INSTANCE</code>.</p>
    #
    #   Enum, one of: ["INSTANCE", "RESOURCE_GROUP"]
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    #
    #   @return [String]
    #
    DescribeMaintenanceWindowsForTargetInput = ::Struct.new(
      :targets,
      :resource_type,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute window_identities
    #   <p>Information about the maintenance window targets and tasks a managed node is associated
    #      with.</p>
    #
    #   @return [Array<MaintenanceWindowIdentityForTarget>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. (You use this token in the next call.)</p>
    #
    #   @return [String]
    #
    DescribeMaintenanceWindowsForTargetOutput = ::Struct.new(
      :window_identities,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute filters
    #   <p>Optional filters used to narrow down the scope of the returned maintenance windows.
    #      Supported filter keys are <code>Name</code> and <code>Enabled</code>. For example,
    #       <code>Name=MyMaintenanceWindow</code> and <code>Enabled=True</code>.</p>
    #
    #   @return [Array<MaintenanceWindowFilter>]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    #
    #   @return [String]
    #
    DescribeMaintenanceWindowsInput = ::Struct.new(
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute window_identities
    #   <p>Information about the maintenance windows.</p>
    #
    #   @return [Array<MaintenanceWindowIdentity>]
    #
    # @!attribute next_token
    #   <p>The token to use when requesting the next set of items. If there are no additional items to
    #      return, the string is empty.</p>
    #
    #   @return [String]
    #
    DescribeMaintenanceWindowsOutput = ::Struct.new(
      :window_identities,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute ops_item_filters
    #   <p>One or more filters to limit the response.</p>
    #            <ul>
    #               <li>
    #                  <p>Key: CreatedTime</p>
    #                  <p>Operations: GreaterThan, LessThan</p>
    #               </li>
    #               <li>
    #                  <p>Key: LastModifiedBy</p>
    #                  <p>Operations: Contains, Equals</p>
    #               </li>
    #               <li>
    #                  <p>Key: LastModifiedTime</p>
    #                  <p>Operations: GreaterThan, LessThan</p>
    #               </li>
    #               <li>
    #                  <p>Key: Priority</p>
    #                  <p>Operations: Equals</p>
    #               </li>
    #               <li>
    #                  <p>Key: Source</p>
    #                  <p>Operations: Contains, Equals</p>
    #               </li>
    #               <li>
    #                  <p>Key: Status</p>
    #                  <p>Operations: Equals</p>
    #               </li>
    #               <li>
    #                  <p>Key: Title*</p>
    #                  <p>Operations: Equals,Contains</p>
    #               </li>
    #               <li>
    #                  <p>Key: OperationalData**</p>
    #                  <p>Operations: Equals</p>
    #               </li>
    #               <li>
    #                  <p>Key: OperationalDataKey</p>
    #                  <p>Operations: Equals</p>
    #               </li>
    #               <li>
    #                  <p>Key: OperationalDataValue</p>
    #                  <p>Operations: Equals, Contains</p>
    #               </li>
    #               <li>
    #                  <p>Key: OpsItemId</p>
    #                  <p>Operations: Equals</p>
    #               </li>
    #               <li>
    #                  <p>Key: ResourceId</p>
    #                  <p>Operations: Contains</p>
    #               </li>
    #               <li>
    #                  <p>Key: AutomationId</p>
    #                  <p>Operations: Equals</p>
    #               </li>
    #            </ul>
    #            <p>*The Equals operator for Title matches the first 100 characters. If you specify more than
    #      100 characters, they system returns an error that the filter value exceeds the length
    #      limit.</p>
    #            <p>**If you filter the response by using the OperationalData operator, specify a key-value pair
    #      by using the following JSON format: {"key":"key_name","value":"a_value"}</p>
    #
    #   @return [Array<OpsItemFilter>]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A token to start the list. Use this token to get the next set of results.</p>
    #
    #   @return [String]
    #
    DescribeOpsItemsInput = ::Struct.new(
      :ops_item_filters,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of items to return. Use this token to get the next set of
    #      results.</p>
    #
    #   @return [String]
    #
    # @!attribute ops_item_summaries
    #   <p>A list of OpsItems.</p>
    #
    #   @return [Array<OpsItemSummary>]
    #
    DescribeOpsItemsOutput = ::Struct.new(
      :next_token,
      :ops_item_summaries,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute filters
    #   <p>This data type is deprecated. Instead, use <code>ParameterFilters</code>.</p>
    #
    #   @return [Array<ParametersFilter>]
    #
    # @!attribute parameter_filters
    #   <p>Filters to limit the request results.</p>
    #
    #   @return [Array<ParameterStringFilter>]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    #
    #   @return [String]
    #
    DescribeParametersInput = ::Struct.new(
      :filters,
      :parameter_filters,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute parameters
    #   <p>Parameters returned by the request.</p>
    #
    #   @return [Array<ParameterMetadata>]
    #
    # @!attribute next_token
    #   <p>The token to use when requesting the next set of items.</p>
    #
    #   @return [String]
    #
    DescribeParametersOutput = ::Struct.new(
      :parameters,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute filters
    #   <p>Each element in the array is a structure containing a key-value pair.</p>
    #            <p>Supported keys for <code>DescribePatchBaselines</code> include the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>NAME_PREFIX</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>AWS-</code> | <code>My-</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>OWNER</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>AWS</code> | <code>Self</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>OPERATING_SYSTEM</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>AMAZON_LINUX</code> | <code>SUSE</code> | <code>WINDOWS</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<PatchOrchestratorFilter>]
    #
    # @!attribute max_results
    #   <p>The maximum number of patch baselines to return (per page).</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    #
    #   @return [String]
    #
    DescribePatchBaselinesInput = ::Struct.new(
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute baseline_identities
    #   <p>An array of <code>PatchBaselineIdentity</code> elements.</p>
    #
    #   @return [Array<PatchBaselineIdentity>]
    #
    # @!attribute next_token
    #   <p>The token to use when requesting the next set of items. If there are no additional items to
    #      return, the string is empty.</p>
    #
    #   @return [String]
    #
    DescribePatchBaselinesOutput = ::Struct.new(
      :baseline_identities,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute patch_group
    #   <p>The name of the patch group whose patch snapshot should be retrieved.</p>
    #
    #   @return [String]
    #
    DescribePatchGroupStateInput = ::Struct.new(
      :patch_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instances
    #   <p>The number of managed nodes in the patch group.</p>
    #
    #   @return [Integer]
    #
    # @!attribute instances_with_installed_patches
    #   <p>The number of managed nodes with installed patches.</p>
    #
    #   @return [Integer]
    #
    # @!attribute instances_with_installed_other_patches
    #   <p>The number of managed nodes with patches installed that aren't defined in the patch
    #      baseline.</p>
    #
    #   @return [Integer]
    #
    # @!attribute instances_with_installed_pending_reboot_patches
    #   <p>The number of managed nodes with patches installed by Patch Manager that haven't been
    #      rebooted after the patch installation. The status of these managed nodes is
    #       <code>NON_COMPLIANT</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute instances_with_installed_rejected_patches
    #   <p>The number of managed nodes with patches installed that are specified in a
    #       <code>RejectedPatches</code> list. Patches with a status of <code>INSTALLED_REJECTED</code> were
    #      typically installed before they were added to a <code>RejectedPatches</code> list.</p>
    #            <note>
    #               <p>If <code>ALLOW_AS_DEPENDENCY</code> is the specified option for
    #        <code>RejectedPatchesAction</code>, the value of
    #        <code>InstancesWithInstalledRejectedPatches</code> will always be <code>0</code> (zero).</p>
    #            </note>
    #
    #   @return [Integer]
    #
    # @!attribute instances_with_missing_patches
    #   <p>The number of managed nodes with missing patches from the patch baseline.</p>
    #
    #   @return [Integer]
    #
    # @!attribute instances_with_failed_patches
    #   <p>The number of managed nodes with patches from the patch baseline that failed to
    #      install.</p>
    #
    #   @return [Integer]
    #
    # @!attribute instances_with_not_applicable_patches
    #   <p>The number of managed nodes with patches that aren't applicable.</p>
    #
    #   @return [Integer]
    #
    # @!attribute instances_with_unreported_not_applicable_patches
    #   <p>The number of managed nodes with <code>NotApplicable</code> patches beyond the supported
    #      limit, which aren't reported by name to Inventory. Inventory is a capability of Amazon Web Services Systems Manager.</p>
    #
    #   @return [Integer]
    #
    # @!attribute instances_with_critical_non_compliant_patches
    #   <p>The number of managed nodes where patches that are specified as <code>Critical</code> for
    #      compliance reporting in the patch baseline aren't installed. These patches might be missing, have
    #      failed installation, were rejected, or were installed but awaiting a required managed node
    #      reboot. The status of these managed nodes is <code>NON_COMPLIANT</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute instances_with_security_non_compliant_patches
    #   <p>The number of managed nodes where patches that are specified as <code>Security</code> in a
    #      patch advisory aren't installed. These patches might be missing, have failed installation, were
    #      rejected, or were installed but awaiting a required managed node reboot. The status of these
    #      managed nodes is <code>NON_COMPLIANT</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute instances_with_other_non_compliant_patches
    #   <p>The number of managed nodes with patches installed that are specified as other than
    #       <code>Critical</code> or <code>Security</code> but aren't compliant with the patch baseline. The
    #      status of these managed nodes is <code>NON_COMPLIANT</code>.</p>
    #
    #   @return [Integer]
    #
    DescribePatchGroupStateOutput = ::Struct.new(
      :instances,
      :instances_with_installed_patches,
      :instances_with_installed_other_patches,
      :instances_with_installed_pending_reboot_patches,
      :instances_with_installed_rejected_patches,
      :instances_with_missing_patches,
      :instances_with_failed_patches,
      :instances_with_not_applicable_patches,
      :instances_with_unreported_not_applicable_patches,
      :instances_with_critical_non_compliant_patches,
      :instances_with_security_non_compliant_patches,
      :instances_with_other_non_compliant_patches,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.instances ||= 0
        self.instances_with_installed_patches ||= 0
        self.instances_with_installed_other_patches ||= 0
        self.instances_with_missing_patches ||= 0
        self.instances_with_failed_patches ||= 0
        self.instances_with_not_applicable_patches ||= 0
      end
    end

    # @!attribute max_results
    #   <p>The maximum number of patch groups to return (per page).</p>
    #
    #   @return [Integer]
    #
    # @!attribute filters
    #   <p>Each element in the array is a structure containing a key-value pair.</p>
    #            <p>Supported keys for <code>DescribePatchGroups</code> include the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>NAME_PREFIX</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>AWS-</code> | <code>My-</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>OPERATING_SYSTEM</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>AMAZON_LINUX</code> | <code>SUSE</code> | <code>WINDOWS</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<PatchOrchestratorFilter>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    #
    #   @return [String]
    #
    DescribePatchGroupsInput = ::Struct.new(
      :max_results,
      :filters,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute mappings
    #   <p>Each entry in the array contains:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PatchGroup</code>: string (between 1 and 256 characters. Regex:
    #         <code>^([\p{L}\p{Z}\p{N}_.:/=+\-@]*)$)</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PatchBaselineIdentity</code>: A <code>PatchBaselineIdentity</code> element.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<PatchGroupPatchBaselineMapping>]
    #
    # @!attribute next_token
    #   <p>The token to use when requesting the next set of items. If there are no additional items to
    #      return, the string is empty.</p>
    #
    #   @return [String]
    #
    DescribePatchGroupsOutput = ::Struct.new(
      :mappings,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute operating_system
    #   <p>The operating system type for which to list patches.</p>
    #
    #   Enum, one of: ["WINDOWS", "AMAZON_LINUX", "AMAZON_LINUX_2", "UBUNTU", "REDHAT_ENTERPRISE_LINUX", "SUSE", "CENTOS", "ORACLE_LINUX", "DEBIAN", "MACOS", "RASPBIAN", "ROCKY_LINUX"]
    #
    #   @return [String]
    #
    # @!attribute property
    #   <p>The patch property for which you want to view patch details. </p>
    #
    #   Enum, one of: ["PRODUCT", "PRODUCT_FAMILY", "CLASSIFICATION", "MSRC_SEVERITY", "PRIORITY", "SEVERITY"]
    #
    #   @return [String]
    #
    # @!attribute patch_set
    #   <p>Indicates whether to list patches for the Windows operating system or for applications
    #      released by Microsoft. Not applicable for the Linux or macOS operating systems.</p>
    #
    #   Enum, one of: ["OS", "APPLICATION"]
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    #
    #   @return [String]
    #
    DescribePatchPropertiesInput = ::Struct.new(
      :operating_system,
      :property,
      :patch_set,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute properties
    #   <p>A list of the properties for patches matching the filter request parameters.</p>
    #
    #   @return [Array<Hash<String, String>>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. (You use this token in the next call.)</p>
    #
    #   @return [String]
    #
    DescribePatchPropertiesOutput = ::Struct.new(
      :properties,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute state
    #   <p>The session status to retrieve a list of sessions for. For example, "Active".</p>
    #
    #   Enum, one of: ["Active", "History"]
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>One or more filters to limit the type of sessions returned by the request.</p>
    #
    #   @return [Array<SessionFilter>]
    #
    DescribeSessionsInput = ::Struct.new(
      :state,
      :max_results,
      :next_token,
      :filters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute sessions
    #   <p>A list of sessions meeting the request parameters.</p>
    #
    #   @return [Array<Session>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    #
    #   @return [String]
    #
    DescribeSessionsOutput = ::Struct.new(
      :sessions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute ops_item_id
    #   <p>The ID of the OpsItem for which you want to delete an association between the OpsItem and a
    #      related item.</p>
    #
    #   @return [String]
    #
    # @!attribute association_id
    #   <p>The ID of the association for which you want to delete an association between the OpsItem
    #      and a related item.</p>
    #
    #   @return [String]
    #
    DisassociateOpsItemRelatedItemInput = ::Struct.new(
      :ops_item_id,
      :association_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateOpsItemRelatedItemOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified document already exists.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DocumentAlreadyExists = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A default version of a document.</p>
    #
    # @!attribute name
    #   <p>The name of the document.</p>
    #
    #   @return [String]
    #
    # @!attribute default_version
    #   <p>The default version of the document.</p>
    #
    #   @return [String]
    #
    # @!attribute default_version_name
    #   <p>The default version of the artifact associated with the document.</p>
    #
    #   @return [String]
    #
    DocumentDefaultVersionDescription = ::Struct.new(
      :name,
      :default_version,
      :default_version_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes an Amazon Web Services Systems Manager document (SSM document). </p>
    #
    # @!attribute sha1
    #   <p>The SHA1 hash of the document, which you can use for verification.</p>
    #
    #   @return [String]
    #
    # @!attribute member_hash
    #   <p>The Sha256 or Sha1 hash created by the system when the document was created. </p>
    #            <note>
    #               <p>Sha1 hashes have been deprecated.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute hash_type
    #   <p>The hash type of the document. Valid values include <code>Sha256</code> or
    #      <code>Sha1</code>.</p>
    #            <note>
    #               <p>Sha1 hashes have been deprecated.</p>
    #            </note>
    #
    #   Enum, one of: ["Sha256", "Sha1"]
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the SSM document.</p>
    #
    #   @return [String]
    #
    # @!attribute display_name
    #   <p>The friendly name of the SSM document. This value can differ for each version of the
    #      document. If you want to update this value, see <a>UpdateDocument</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute version_name
    #   <p>The version of the artifact associated with the document.</p>
    #
    #   @return [String]
    #
    # @!attribute owner
    #   <p>The Amazon Web Services user account that created the document.</p>
    #
    #   @return [String]
    #
    # @!attribute created_date
    #   <p>The date when the document was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute status
    #   <p>The status of the SSM document.</p>
    #
    #   Enum, one of: ["Creating", "Active", "Updating", "Deleting", "Failed"]
    #
    #   @return [String]
    #
    # @!attribute status_information
    #   <p>A message returned by Amazon Web Services Systems Manager that explains the <code>Status</code> value. For example, a
    #       <code>Failed</code> status might be explained by the <code>StatusInformation</code> message,
    #      "The specified S3 bucket doesn't exist. Verify that the URL of the S3 bucket is correct."</p>
    #
    #   @return [String]
    #
    # @!attribute document_version
    #   <p>The document version.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the document. </p>
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>A description of the parameters for a document.</p>
    #
    #   @return [Array<DocumentParameter>]
    #
    # @!attribute platform_types
    #   <p>The list of operating system (OS) platforms compatible with this SSM document. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute document_type
    #   <p>The type of document.</p>
    #
    #   Enum, one of: ["Command", "Policy", "Automation", "Session", "Package", "ApplicationConfiguration", "ApplicationConfigurationSchema", "DeploymentStrategy", "ChangeCalendar", "Automation.ChangeTemplate", "ProblemAnalysis", "ProblemAnalysisTemplate"]
    #
    #   @return [String]
    #
    # @!attribute schema_version
    #   <p>The schema version.</p>
    #
    #   @return [String]
    #
    # @!attribute latest_version
    #   <p>The latest version of the document.</p>
    #
    #   @return [String]
    #
    # @!attribute default_version
    #   <p>The default version.</p>
    #
    #   @return [String]
    #
    # @!attribute document_format
    #   <p>The document format, either JSON or YAML.</p>
    #
    #   Enum, one of: ["YAML", "JSON", "TEXT"]
    #
    #   @return [String]
    #
    # @!attribute target_type
    #   <p>The target type which defines the kinds of resources the document can run on. For example,
    #       <code>/AWS::EC2::Instance</code>. For a list of valid resource types, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html">Amazon Web Services resource and
    #       property types reference</a> in the <i>CloudFormation User Guide</i>. </p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags, or metadata, that have been applied to the document.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute attachments_information
    #   <p>Details about the document attachments, including names, locations, sizes, and so on.</p>
    #
    #   @return [Array<AttachmentInformation>]
    #
    # @!attribute requires
    #   <p>A list of SSM documents required by a document. For example, an
    #       <code>ApplicationConfiguration</code> document requires an
    #       <code>ApplicationConfigurationSchema</code> document.</p>
    #
    #   @return [Array<DocumentRequires>]
    #
    # @!attribute author
    #   <p>The user in your organization who created the document.</p>
    #
    #   @return [String]
    #
    # @!attribute review_information
    #   <p>Details about the review of a document.</p>
    #
    #   @return [Array<ReviewInformation>]
    #
    # @!attribute approved_version
    #   <p>The version of the document currently approved for use in the organization.</p>
    #
    #   @return [String]
    #
    # @!attribute pending_review_version
    #   <p>The version of the document that is currently under review.</p>
    #
    #   @return [String]
    #
    # @!attribute review_status
    #   <p>The current status of the review.</p>
    #
    #   Enum, one of: ["APPROVED", "NOT_REVIEWED", "PENDING", "REJECTED"]
    #
    #   @return [String]
    #
    # @!attribute category
    #   <p>The classification of a document to help you identify and categorize its use.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute category_enum
    #   <p>The value that identifies a document's category.</p>
    #
    #   @return [Array<String>]
    #
    DocumentDescription = ::Struct.new(
      :sha1,
      :member_hash,
      :hash_type,
      :name,
      :display_name,
      :version_name,
      :owner,
      :created_date,
      :status,
      :status_information,
      :document_version,
      :description,
      :parameters,
      :platform_types,
      :document_type,
      :schema_version,
      :latest_version,
      :default_version,
      :document_format,
      :target_type,
      :tags,
      :attachments_information,
      :requires,
      :author,
      :review_information,
      :approved_version,
      :pending_review_version,
      :review_status,
      :category,
      :category_enum,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This data type is deprecated. Instead, use <a>DocumentKeyValuesFilter</a>.</p>
    #
    # @!attribute key
    #   <p>The name of the filter.</p>
    #
    #   Enum, one of: ["Name", "Owner", "PlatformTypes", "DocumentType"]
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of the filter.</p>
    #
    #   @return [String]
    #
    DocumentFilter = ::Struct.new(
      :key,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DocumentFilterKey
    #
    module DocumentFilterKey
      # No documentation available.
      #
      Name = "Name"

      # No documentation available.
      #
      Owner = "Owner"

      # No documentation available.
      #
      PlatformTypes = "PlatformTypes"

      # No documentation available.
      #
      DocumentType = "DocumentType"
    end

    # Includes enum constants for DocumentFormat
    #
    module DocumentFormat
      # No documentation available.
      #
      YAML = "YAML"

      # No documentation available.
      #
      JSON = "JSON"

      # No documentation available.
      #
      TEXT = "TEXT"
    end

    # Includes enum constants for DocumentHashType
    #
    module DocumentHashType
      # No documentation available.
      #
      SHA256 = "Sha256"

      # No documentation available.
      #
      SHA1 = "Sha1"
    end

    # <p>Describes the name of a SSM document.</p>
    #
    # @!attribute name
    #   <p>The name of the SSM document.</p>
    #
    #   @return [String]
    #
    # @!attribute created_date
    #   <p>The date the SSM document was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute display_name
    #   <p>An optional field where you can specify a friendly name for the SSM document. This value can
    #      differ for each version of the document. If you want to update this value, see <a>UpdateDocument</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute owner
    #   <p>The Amazon Web Services user account that created the document.</p>
    #
    #   @return [String]
    #
    # @!attribute version_name
    #   <p>An optional field specifying the version of the artifact associated with the document. For
    #      example, "Release 12, Update 6". This value is unique across all versions of a document, and
    #      can't be changed.</p>
    #
    #   @return [String]
    #
    # @!attribute platform_types
    #   <p>The operating system platform. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute document_version
    #   <p>The document version.</p>
    #
    #   @return [String]
    #
    # @!attribute document_type
    #   <p>The document type.</p>
    #
    #   Enum, one of: ["Command", "Policy", "Automation", "Session", "Package", "ApplicationConfiguration", "ApplicationConfigurationSchema", "DeploymentStrategy", "ChangeCalendar", "Automation.ChangeTemplate", "ProblemAnalysis", "ProblemAnalysisTemplate"]
    #
    #   @return [String]
    #
    # @!attribute schema_version
    #   <p>The schema version.</p>
    #
    #   @return [String]
    #
    # @!attribute document_format
    #   <p>The document format, either JSON or YAML.</p>
    #
    #   Enum, one of: ["YAML", "JSON", "TEXT"]
    #
    #   @return [String]
    #
    # @!attribute target_type
    #   <p>The target type which defines the kinds of resources the document can run on. For example,
    #       <code>/AWS::EC2::Instance</code>. For a list of valid resource types, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html">Amazon Web Services resource and
    #       property types reference</a> in the <i>CloudFormation User Guide</i>. </p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags, or metadata, that have been applied to the document.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute requires
    #   <p>A list of SSM documents required by a document. For example, an
    #       <code>ApplicationConfiguration</code> document requires an
    #       <code>ApplicationConfigurationSchema</code> document.</p>
    #
    #   @return [Array<DocumentRequires>]
    #
    # @!attribute review_status
    #   <p>The current status of a document review.</p>
    #
    #   Enum, one of: ["APPROVED", "NOT_REVIEWED", "PENDING", "REJECTED"]
    #
    #   @return [String]
    #
    # @!attribute author
    #   <p>The user in your organization who created the document.</p>
    #
    #   @return [String]
    #
    DocumentIdentifier = ::Struct.new(
      :name,
      :created_date,
      :display_name,
      :owner,
      :version_name,
      :platform_types,
      :document_version,
      :document_type,
      :schema_version,
      :document_format,
      :target_type,
      :tags,
      :requires,
      :review_status,
      :author,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>One or more filters. Use a filter to return a more specific list of documents.</p>
    #          <p>For keys, you can specify one or more tags that have been applied to a document. </p>
    #          <p>You can also use Amazon Web Services-provided keys, some of which have specific allowed values. These keys
    #    and their associated values are as follows:</p>
    #          <dl>
    #             <dt>DocumentType</dt>
    #             <dd>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>ApplicationConfiguration</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>ApplicationConfigurationSchema</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>Automation</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>ChangeCalendar</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>Command</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>Package</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>Policy</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>Session</code>
    #                      </p>
    #                   </li>
    #                </ul>
    #             </dd>
    #             <dt>Owner</dt>
    #             <dd>
    #                <p>Note that only one <code>Owner</code> can be specified in a request. For example:
    #        <code>Key=Owner,Values=Self</code>.</p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>Amazon</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>Private</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>Public</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>Self</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>ThirdParty</code>
    #                      </p>
    #                   </li>
    #                </ul>
    #             </dd>
    #             <dt>PlatformTypes</dt>
    #             <dd>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>Linux</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>Windows</code>
    #                      </p>
    #                   </li>
    #                </ul>
    #             </dd>
    #          </dl>
    #          <p>
    #             <code>Name</code> is another Amazon Web Services-provided key. If you use <code>Name</code> as a key, you
    #    can use a name prefix to return a list of documents. For example, in the Amazon Web Services CLI, to return a list
    #    of all documents that begin with <code>Te</code>, run the following command:</p>
    #          <p>
    #             <code>aws ssm list-documents --filters Key=Name,Values=Te</code>
    #          </p>
    #          <p>You can also use the <code>TargetType</code> Amazon Web Services-provided key. For a list of valid
    #    resource type values that can be used with this key, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html">Amazon Web Services resource and
    #     property types reference</a> in the <i>CloudFormation User Guide</i>.</p>
    #          <p>If you specify more than two keys, only documents that are identified by all the tags are
    #    returned in the results. If you specify more than two values for a key, documents that are
    #    identified by any of the values are returned in the results.</p>
    #          <p>To specify a custom key-value pair, use the format
    #     <code>Key=tag:tagName,Values=valueName</code>.</p>
    #          <p>For example, if you created a key called region and are using the Amazon Web Services CLI to call the
    #     <code>list-documents</code> command: </p>
    #          <p>
    #             <code>aws ssm list-documents --filters Key=tag:region,Values=east,west
    #     Key=Owner,Values=Self</code>
    #          </p>
    #
    # @!attribute key
    #   <p>The name of the filter key.</p>
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>The value for the filter key.</p>
    #
    #   @return [Array<String>]
    #
    DocumentKeyValuesFilter = ::Struct.new(
      :key,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You can have at most 500 active SSM documents.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DocumentLimitExceeded = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DocumentMetadataEnum
    #
    module DocumentMetadataEnum
      # No documentation available.
      #
      DocumentReviews = "DocumentReviews"
    end

    # <p>Details about the response to a document review request.</p>
    #
    # @!attribute reviewer_response
    #   <p>Details about a reviewer's response to a document review request.</p>
    #
    #   @return [Array<DocumentReviewerResponseSource>]
    #
    DocumentMetadataResponseInfo = ::Struct.new(
      :reviewer_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Parameters specified in a System Manager document that run on the server when the command is
    #    run. </p>
    #
    # @!attribute name
    #   <p>The name of the parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of parameter. The type can be either String or StringList.</p>
    #
    #   Enum, one of: ["String", "StringList"]
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of what the parameter does, how to use it, the default value, and whether or
    #      not the parameter is optional.</p>
    #
    #   @return [String]
    #
    # @!attribute default_value
    #   <p>If specified, the default values for the parameters. Parameters without a default value are
    #      required. Parameters with a default value are optional.</p>
    #
    #   @return [String]
    #
    DocumentParameter = ::Struct.new(
      :name,
      :type,
      :description,
      :default_value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DocumentParameterType
    #
    module DocumentParameterType
      # No documentation available.
      #
      String = "String"

      # No documentation available.
      #
      StringList = "StringList"
    end

    # <p>The document can't be shared with more Amazon Web Services user accounts. You can share a document
    #    with a maximum of 20 accounts. You can publicly share up to five documents. If you need to
    #    increase this limit, contact Amazon Web Services Support.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DocumentPermissionLimit = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DocumentPermissionType
    #
    module DocumentPermissionType
      # No documentation available.
      #
      SHARE = "Share"
    end

    # <p>An SSM document required by the current document.</p>
    #
    # @!attribute name
    #   <p>The name of the required SSM document. The name can be an Amazon Resource Name (ARN).</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The document version required by the current document.</p>
    #
    #   @return [String]
    #
    DocumentRequires = ::Struct.new(
      :name,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DocumentReviewAction
    #
    module DocumentReviewAction
      # No documentation available.
      #
      SendForReview = "SendForReview"

      # No documentation available.
      #
      UpdateReview = "UpdateReview"

      # No documentation available.
      #
      Approve = "Approve"

      # No documentation available.
      #
      Reject = "Reject"
    end

    # <p>Information about comments added to a document review request.</p>
    #
    # @!attribute type
    #   <p>The type of information added to a review request. Currently, only the value
    #       <code>Comment</code> is supported.</p>
    #
    #   Enum, one of: ["Comment"]
    #
    #   @return [String]
    #
    # @!attribute content
    #   <p>The content of a comment entered by a user who requests a review of a new document version,
    #      or who reviews the new version.</p>
    #
    #   @return [String]
    #
    DocumentReviewCommentSource = ::Struct.new(
      :type,
      :content,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DocumentReviewCommentType
    #
    module DocumentReviewCommentType
      # No documentation available.
      #
      Comment = "Comment"
    end

    # <p>Information about a reviewer's response to a document review request.</p>
    #
    # @!attribute create_time
    #   <p>The date and time that a reviewer entered a response to a document review request.</p>
    #
    #   @return [Time]
    #
    # @!attribute updated_time
    #   <p>The date and time that a reviewer last updated a response to a document review
    #      request.</p>
    #
    #   @return [Time]
    #
    # @!attribute review_status
    #   <p>The current review status of a new custom SSM document created by a member of your
    #      organization, or of the latest version of an existing SSM document.</p>
    #            <p>Only one version of a document can be in the APPROVED state at a time. When a new version is
    #      approved, the status of the previous version changes to REJECTED.</p>
    #            <p>Only one version of a document can be in review, or PENDING, at a time.</p>
    #
    #   Enum, one of: ["APPROVED", "NOT_REVIEWED", "PENDING", "REJECTED"]
    #
    #   @return [String]
    #
    # @!attribute comment
    #   <p>The comment entered by a reviewer as part of their document review response.</p>
    #
    #   @return [Array<DocumentReviewCommentSource>]
    #
    # @!attribute reviewer
    #   <p>The user in your organization assigned to review a document request.</p>
    #
    #   @return [String]
    #
    DocumentReviewerResponseSource = ::Struct.new(
      :create_time,
      :updated_time,
      :review_status,
      :comment,
      :reviewer,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a document approval review.</p>
    #
    # @!attribute action
    #   <p>The action to take on a document approval review request.</p>
    #
    #   Enum, one of: ["SendForReview", "UpdateReview", "Approve", "Reject"]
    #
    #   @return [String]
    #
    # @!attribute comment
    #   <p>A comment entered by a user in your organization about the document review request.</p>
    #
    #   @return [Array<DocumentReviewCommentSource>]
    #
    DocumentReviews = ::Struct.new(
      :action,
      :comment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DocumentStatus
    #
    module DocumentStatus
      # No documentation available.
      #
      Creating = "Creating"

      # No documentation available.
      #
      Active = "Active"

      # No documentation available.
      #
      Updating = "Updating"

      # No documentation available.
      #
      Deleting = "Deleting"

      # No documentation available.
      #
      Failed = "Failed"
    end

    # Includes enum constants for DocumentType
    #
    module DocumentType
      # No documentation available.
      #
      Command = "Command"

      # No documentation available.
      #
      Policy = "Policy"

      # No documentation available.
      #
      Automation = "Automation"

      # No documentation available.
      #
      Session = "Session"

      # No documentation available.
      #
      Package = "Package"

      # No documentation available.
      #
      ApplicationConfiguration = "ApplicationConfiguration"

      # No documentation available.
      #
      ApplicationConfigurationSchema = "ApplicationConfigurationSchema"

      # No documentation available.
      #
      DeploymentStrategy = "DeploymentStrategy"

      # No documentation available.
      #
      ChangeCalendar = "ChangeCalendar"

      # No documentation available.
      #
      ChangeTemplate = "Automation.ChangeTemplate"

      # No documentation available.
      #
      ProblemAnalysis = "ProblemAnalysis"

      # No documentation available.
      #
      ProblemAnalysisTemplate = "ProblemAnalysisTemplate"
    end

    # <p>Version information about the document.</p>
    #
    # @!attribute name
    #   <p>The document name.</p>
    #
    #   @return [String]
    #
    # @!attribute display_name
    #   <p>The friendly name of the SSM document. This value can differ for each version of the
    #      document. If you want to update this value, see <a>UpdateDocument</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute document_version
    #   <p>The document version.</p>
    #
    #   @return [String]
    #
    # @!attribute version_name
    #   <p>The version of the artifact associated with the document. For example, "Release 12, Update
    #      6". This value is unique across all versions of a document, and can't be changed.</p>
    #
    #   @return [String]
    #
    # @!attribute created_date
    #   <p>The date the document was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute is_default_version
    #   <p>An identifier for the default version of the document.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute document_format
    #   <p>The document format, either JSON or YAML.</p>
    #
    #   Enum, one of: ["YAML", "JSON", "TEXT"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the SSM document, such as <code>Creating</code>, <code>Active</code>,
    #       <code>Failed</code>, and <code>Deleting</code>.</p>
    #
    #   Enum, one of: ["Creating", "Active", "Updating", "Deleting", "Failed"]
    #
    #   @return [String]
    #
    # @!attribute status_information
    #   <p>A message returned by Amazon Web Services Systems Manager that explains the <code>Status</code> value. For example, a
    #       <code>Failed</code> status might be explained by the <code>StatusInformation</code> message,
    #      "The specified S3 bucket doesn't exist. Verify that the URL of the S3 bucket is correct."</p>
    #
    #   @return [String]
    #
    # @!attribute review_status
    #   <p>The current status of the approval review for the latest version of the document.</p>
    #
    #   Enum, one of: ["APPROVED", "NOT_REVIEWED", "PENDING", "REJECTED"]
    #
    #   @return [String]
    #
    DocumentVersionInfo = ::Struct.new(
      :name,
      :display_name,
      :document_version,
      :version_name,
      :created_date,
      :is_default_version,
      :document_format,
      :status,
      :status_information,
      :review_status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.is_default_version ||= false
      end
    end

    # <p>The document has too many versions. Delete one or more document versions and try
    #    again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DocumentVersionLimitExceeded = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Error returned when the ID specified for a resource, such as a maintenance window or patch
    #    baseline, doesn't exist.</p>
    #          <p>For information about resource quotas in Amazon Web Services Systems Manager, see <a href="https://docs.aws.amazon.com/general/latest/gr/ssm.html#limits_ssm">Systems Manager service quotas</a> in the
    #     <i>Amazon Web Services General Reference</i>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DoesNotExistException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The content of the association document matches another document. Change the content of the
    #    document and try again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DuplicateDocumentContent = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The version name has already been used in this document. Specify a different version name,
    #    and then try again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DuplicateDocumentVersionName = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You can't specify a managed node ID in more than one association.</p>
    #
    DuplicateInstanceId = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The <code>EffectivePatch</code> structure defines metadata about a patch along with the
    #    approval state of the patch in a particular patch baseline. The approval state includes
    #    information about whether the patch is currently approved, due to be approved by a rule,
    #    explicitly approved, or explicitly rejected and the date the patch was or will be
    #    approved.</p>
    #
    # @!attribute patch
    #   <p>Provides metadata for a patch, including information such as the KB ID, severity,
    #      classification and a URL for where more information can be obtained about the patch.</p>
    #
    #   @return [Patch]
    #
    # @!attribute patch_status
    #   <p>The status of the patch in a patch baseline. This includes information about whether the
    #      patch is currently approved, due to be approved by a rule, explicitly approved, or explicitly
    #      rejected and the date the patch was or will be approved.</p>
    #
    #   @return [PatchStatus]
    #
    EffectivePatch = ::Struct.new(
      :patch,
      :patch_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ExecutionMode
    #
    module ExecutionMode
      # No documentation available.
      #
      Auto = "Auto"

      # No documentation available.
      #
      Interactive = "Interactive"
    end

    # <p>Describes a failed association.</p>
    #
    # @!attribute entry
    #   <p>The association.</p>
    #
    #   @return [CreateAssociationBatchRequestEntry]
    #
    # @!attribute message
    #   <p>A description of the failure.</p>
    #
    #   @return [String]
    #
    # @!attribute fault
    #   <p>The source of the failure.</p>
    #
    #   Enum, one of: ["Client", "Server", "Unknown"]
    #
    #   @return [String]
    #
    FailedCreateAssociation = ::Struct.new(
      :entry,
      :message,
      :fault,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about an Automation failure.</p>
    #
    # @!attribute failure_stage
    #   <p>The stage of the Automation execution when the failure occurred. The stages include the
    #      following: InputValidation, PreVerification, Invocation, PostVerification.</p>
    #
    #   @return [String]
    #
    # @!attribute failure_type
    #   <p>The type of Automation failure. Failure types include the following: Action, Permission,
    #      Throttling, Verification, Internal.</p>
    #
    #   @return [String]
    #
    # @!attribute details
    #   <p>Detailed information about the Automation step failure.</p>
    #
    #   @return [Hash<String, Array<String>>]
    #
    FailureDetails = ::Struct.new(
      :failure_stage,
      :failure_type,
      :details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Fault
    #
    module Fault
      # No documentation available.
      #
      Client = "Client"

      # No documentation available.
      #
      Server = "Server"

      # No documentation available.
      #
      Unknown = "Unknown"
    end

    # <p>You attempted to register a <code>LAMBDA</code> or <code>STEP_FUNCTIONS</code> task in a
    #    region where the corresponding service isn't available. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    FeatureNotAvailableException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute automation_execution_id
    #   <p>The unique identifier for an existing automation execution to examine. The execution ID is
    #      returned by StartAutomationExecution when the execution of an Automation runbook is
    #      initiated.</p>
    #
    #   @return [String]
    #
    GetAutomationExecutionInput = ::Struct.new(
      :automation_execution_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute automation_execution
    #   <p>Detailed information about the current state of an automation execution.</p>
    #
    #   @return [AutomationExecution]
    #
    GetAutomationExecutionOutput = ::Struct.new(
      :automation_execution,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute calendar_names
    #   <p>The names or Amazon Resource Names (ARNs) of the Systems Manager documents (SSM documents) that
    #      represent the calendar entries for which you want to get the state.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute at_time
    #   <p>(Optional) The specific time for which you want to get calendar state information, in <a href="https://en.wikipedia.org/wiki/ISO_8601">ISO 8601</a> format. If you don't specify a
    #      value or <code>AtTime</code>, the current time is used.</p>
    #
    #   @return [String]
    #
    GetCalendarStateInput = ::Struct.new(
      :calendar_names,
      :at_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute state
    #   <p>The state of the calendar. An <code>OPEN</code> calendar indicates that actions are allowed
    #      to proceed, and a <code>CLOSED</code> calendar indicates that actions aren't allowed to
    #      proceed.</p>
    #
    #   Enum, one of: ["OPEN", "CLOSED"]
    #
    #   @return [String]
    #
    # @!attribute at_time
    #   <p>The time, as an <a href="https://en.wikipedia.org/wiki/ISO_8601">ISO 8601</a> string,
    #      that you specified in your command. If you don't specify a time, <code>GetCalendarState</code>
    #      uses the current time.</p>
    #
    #   @return [String]
    #
    # @!attribute next_transition_time
    #   <p>The time, as an <a href="https://en.wikipedia.org/wiki/ISO_8601">ISO 8601</a> string,
    #      that the calendar state will change. If the current calendar state is <code>OPEN</code>,
    #       <code>NextTransitionTime</code> indicates when the calendar state changes to
    #      <code>CLOSED</code>, and vice-versa.</p>
    #
    #   @return [String]
    #
    GetCalendarStateOutput = ::Struct.new(
      :state,
      :at_time,
      :next_transition_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute command_id
    #   <p>(Required) The parent command ID of the invocation plugin.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_id
    #   <p>(Required) The ID of the managed node targeted by the command. A <i>managed
    #       node</i> can be an Amazon Elastic Compute Cloud (Amazon EC2) instance, edge device, and on-premises server or VM
    #      in your hybrid environment that is configured for Amazon Web Services Systems Manager.</p>
    #
    #   @return [String]
    #
    # @!attribute plugin_name
    #   <p>The name of the step for which you want detailed results. If the document contains only one
    #      step, you can omit the name and details for that step. If the document contains more than one
    #      step, you must specify the name of the step for which you want to view details. Be sure to
    #      specify the name of the step, not the name of a plugin like
    #      <code>aws:RunShellScript</code>.</p>
    #            <p>To find the <code>PluginName</code>, check the document content and find the name of the
    #      step you want details for. Alternatively, use <a>ListCommandInvocations</a> with the
    #       <code>CommandId</code> and <code>Details</code> parameters. The <code>PluginName</code> is the
    #       <code>Name</code> attribute of the <code>CommandPlugin</code> object in the
    #       <code>CommandPlugins</code> list.</p>
    #
    #   @return [String]
    #
    GetCommandInvocationInput = ::Struct.new(
      :command_id,
      :instance_id,
      :plugin_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute command_id
    #   <p>The parent command ID of the invocation plugin.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_id
    #   <p>The ID of the managed node targeted by the command. A <i>managed node</i> can
    #      be an Amazon Elastic Compute Cloud (Amazon EC2) instance, edge device, or on-premises server or VM in your hybrid
    #      environment that is configured for Amazon Web Services Systems Manager.</p>
    #
    #   @return [String]
    #
    # @!attribute comment
    #   <p>The comment text for the command.</p>
    #
    #   @return [String]
    #
    # @!attribute document_name
    #   <p>The name of the document that was run. For example, <code>AWS-RunShellScript</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute document_version
    #   <p>The Systems Manager document (SSM document) version used in the request.</p>
    #
    #   @return [String]
    #
    # @!attribute plugin_name
    #   <p>The name of the plugin, or <i>step name</i>, for which details are reported.
    #      For example, <code>aws:RunShellScript</code> is a plugin.</p>
    #
    #   @return [String]
    #
    # @!attribute response_code
    #   <p>The error level response code for the plugin script. If the response code is
    #      <code>-1</code>, then the command hasn't started running on the managed node, or it wasn't
    #      received by the node.</p>
    #
    #   @return [Integer]
    #
    # @!attribute execution_start_date_time
    #   <p>The date and time the plugin started running. Date and time are written in ISO 8601 format.
    #      For example, June 7, 2017 is represented as 2017-06-7. The following sample Amazon Web Services CLI command uses
    #      the <code>InvokedBefore</code> filter.</p>
    #            <p>
    #               <code>aws ssm list-commands --filters key=InvokedBefore,value=2017-06-07T00:00:00Z</code>
    #            </p>
    #            <p>If the plugin hasn't started to run, the string is empty.</p>
    #
    #   @return [String]
    #
    # @!attribute execution_elapsed_time
    #   <p>Duration since <code>ExecutionStartDateTime</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute execution_end_date_time
    #   <p>The date and time the plugin finished running. Date and time are written in ISO 8601 format.
    #      For example, June 7, 2017 is represented as 2017-06-7. The following sample Amazon Web Services CLI command uses
    #      the <code>InvokedAfter</code> filter.</p>
    #            <p>
    #               <code>aws ssm list-commands --filters key=InvokedAfter,value=2017-06-07T00:00:00Z</code>
    #            </p>
    #            <p>If the plugin hasn't started to run, the string is empty.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of this invocation plugin. This status can be different than
    #       <code>StatusDetails</code>.</p>
    #
    #   Enum, one of: ["Pending", "InProgress", "Delayed", "Success", "Cancelled", "TimedOut", "Failed", "Cancelling"]
    #
    #   @return [String]
    #
    # @!attribute status_details
    #   <p>A detailed status of the command execution for an invocation. <code>StatusDetails</code>
    #      includes more information than <code>Status</code> because it includes states resulting from
    #      error and concurrency control parameters. <code>StatusDetails</code> can show different results
    #      than <code>Status</code>. For more information about these statuses, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/monitor-commands.html">Understanding
    #       command statuses</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.
    #       <code>StatusDetails</code> can be one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>Pending: The command hasn't been sent to the managed node.</p>
    #               </li>
    #               <li>
    #                  <p>In Progress: The command has been sent to the managed node but hasn't reached a terminal
    #        state.</p>
    #               </li>
    #               <li>
    #                  <p>Delayed: The system attempted to send the command to the target, but the target wasn't
    #        available. The managed node might not be available because of network issues, because the node
    #        was stopped, or for similar reasons. The system will try to send the command again.</p>
    #               </li>
    #               <li>
    #                  <p>Success: The command or plugin ran successfully. This is a terminal state.</p>
    #               </li>
    #               <li>
    #                  <p>Delivery Timed Out: The command wasn't delivered to the managed node before the delivery
    #        timeout expired. Delivery timeouts don't count against the parent command's
    #         <code>MaxErrors</code> limit, but they do contribute to whether the parent command status is
    #        Success or Incomplete. This is a terminal state.</p>
    #               </li>
    #               <li>
    #                  <p>Execution Timed Out: The command started to run on the managed node, but the execution
    #        wasn't complete before the timeout expired. Execution timeouts count against the
    #         <code>MaxErrors</code> limit of the parent command. This is a terminal state.</p>
    #               </li>
    #               <li>
    #                  <p>Failed: The command wasn't run successfully on the managed node. For a plugin, this
    #        indicates that the result code wasn't zero. For a command invocation, this indicates that the
    #        result code for one or more plugins wasn't zero. Invocation failures count against the
    #         <code>MaxErrors</code> limit of the parent command. This is a terminal state.</p>
    #               </li>
    #               <li>
    #                  <p>Cancelled: The command was terminated before it was completed. This is a terminal
    #        state.</p>
    #               </li>
    #               <li>
    #                  <p>Undeliverable: The command can't be delivered to the managed node. The node might not
    #        exist or might not be responding. Undeliverable invocations don't count against the parent
    #        command's <code>MaxErrors</code> limit and don't contribute to whether the parent command
    #        status is Success or Incomplete. This is a terminal state.</p>
    #               </li>
    #               <li>
    #                  <p>Terminated: The parent command exceeded its <code>MaxErrors</code> limit and subsequent
    #        command invocations were canceled by the system. This is a terminal state.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute standard_output_content
    #   <p>The first 24,000 characters written by the plugin to <code>stdout</code>. If the command
    #      hasn't finished running, if <code>ExecutionStatus</code> is neither Succeeded nor Failed, then
    #      this string is empty.</p>
    #
    #   @return [String]
    #
    # @!attribute standard_output_url
    #   <p>The URL for the complete text written by the plugin to <code>stdout</code> in Amazon Simple Storage Service (Amazon S3). If an S3 bucket wasn't specified, then this string is
    #      empty.</p>
    #
    #   @return [String]
    #
    # @!attribute standard_error_content
    #   <p>The first 8,000 characters written by the plugin to <code>stderr</code>. If the command
    #      hasn't finished running, then this string is empty.</p>
    #
    #   @return [String]
    #
    # @!attribute standard_error_url
    #   <p>The URL for the complete text written by the plugin to <code>stderr</code>. If the command
    #      hasn't finished running, then this string is empty.</p>
    #
    #   @return [String]
    #
    # @!attribute cloud_watch_output_config
    #   <p>Amazon CloudWatch Logs information where Systems Manager sent the command output.</p>
    #
    #   @return [CloudWatchOutputConfig]
    #
    GetCommandInvocationOutput = ::Struct.new(
      :command_id,
      :instance_id,
      :comment,
      :document_name,
      :document_version,
      :plugin_name,
      :response_code,
      :execution_start_date_time,
      :execution_elapsed_time,
      :execution_end_date_time,
      :status,
      :status_details,
      :standard_output_content,
      :standard_output_url,
      :standard_error_content,
      :standard_error_url,
      :cloud_watch_output_config,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.response_code ||= 0
      end
    end

    # @!attribute target
    #   <p>The managed node ID.</p>
    #
    #   @return [String]
    #
    GetConnectionStatusInput = ::Struct.new(
      :target,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute target
    #   <p>The ID of the managed node to check connection status. </p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the connection to the managed node. For example, 'Connected' or 'Not
    #      Connected'.</p>
    #
    #   Enum, one of: ["Connected", "NotConnected"]
    #
    #   @return [String]
    #
    GetConnectionStatusOutput = ::Struct.new(
      :target,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute operating_system
    #   <p>Returns the default patch baseline for the specified operating system.</p>
    #
    #   Enum, one of: ["WINDOWS", "AMAZON_LINUX", "AMAZON_LINUX_2", "UBUNTU", "REDHAT_ENTERPRISE_LINUX", "SUSE", "CENTOS", "ORACLE_LINUX", "DEBIAN", "MACOS", "RASPBIAN", "ROCKY_LINUX"]
    #
    #   @return [String]
    #
    GetDefaultPatchBaselineInput = ::Struct.new(
      :operating_system,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute baseline_id
    #   <p>The ID of the default patch baseline.</p>
    #
    #   @return [String]
    #
    # @!attribute operating_system
    #   <p>The operating system for the returned patch baseline. </p>
    #
    #   Enum, one of: ["WINDOWS", "AMAZON_LINUX", "AMAZON_LINUX_2", "UBUNTU", "REDHAT_ENTERPRISE_LINUX", "SUSE", "CENTOS", "ORACLE_LINUX", "DEBIAN", "MACOS", "RASPBIAN", "ROCKY_LINUX"]
    #
    #   @return [String]
    #
    GetDefaultPatchBaselineOutput = ::Struct.new(
      :baseline_id,
      :operating_system,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The ID of the managed node for which the appropriate patch snapshot should be
    #      retrieved.</p>
    #
    #   @return [String]
    #
    # @!attribute snapshot_id
    #   <p>The snapshot ID provided by the user when running <code>AWS-RunPatchBaseline</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute baseline_override
    #   <p>Defines the basic information about a patch baseline override.</p>
    #
    #   @return [BaselineOverride]
    #
    GetDeployablePatchSnapshotForInstanceInput = ::Struct.new(
      :instance_id,
      :snapshot_id,
      :baseline_override,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The managed node ID.</p>
    #
    #   @return [String]
    #
    # @!attribute snapshot_id
    #   <p>The user-defined snapshot ID.</p>
    #
    #   @return [String]
    #
    # @!attribute snapshot_download_url
    #   <p>A pre-signed Amazon Simple Storage Service (Amazon S3) URL that can be used to download the
    #      patch snapshot.</p>
    #
    #   @return [String]
    #
    # @!attribute product
    #   <p>Returns the specific operating system (for example Windows Server 2012 or Amazon Linux
    #      2015.09) on the managed node for the specified patch snapshot.</p>
    #
    #   @return [String]
    #
    GetDeployablePatchSnapshotForInstanceOutput = ::Struct.new(
      :instance_id,
      :snapshot_id,
      :snapshot_download_url,
      :product,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the SSM document.</p>
    #
    #   @return [String]
    #
    # @!attribute version_name
    #   <p>An optional field specifying the version of the artifact associated with the document. For
    #      example, "Release 12, Update 6". This value is unique across all versions of a document and can't
    #      be changed.</p>
    #
    #   @return [String]
    #
    # @!attribute document_version
    #   <p>The document version for which you want information.</p>
    #
    #   @return [String]
    #
    # @!attribute document_format
    #   <p>Returns the document in the specified format. The document format can be either JSON or
    #      YAML. JSON is the default format.</p>
    #
    #   Enum, one of: ["YAML", "JSON", "TEXT"]
    #
    #   @return [String]
    #
    GetDocumentInput = ::Struct.new(
      :name,
      :version_name,
      :document_version,
      :document_format,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the SSM document.</p>
    #
    #   @return [String]
    #
    # @!attribute created_date
    #   <p>The date the SSM document was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute display_name
    #   <p>The friendly name of the SSM document. This value can differ for each version of the
    #      document. If you want to update this value, see <a>UpdateDocument</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute version_name
    #   <p>The version of the artifact associated with the document. For example, "Release 12, Update
    #      6". This value is unique across all versions of a document, and can't be changed.</p>
    #
    #   @return [String]
    #
    # @!attribute document_version
    #   <p>The document version.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the SSM document, such as <code>Creating</code>, <code>Active</code>,
    #       <code>Updating</code>, <code>Failed</code>, and <code>Deleting</code>.</p>
    #
    #   Enum, one of: ["Creating", "Active", "Updating", "Deleting", "Failed"]
    #
    #   @return [String]
    #
    # @!attribute status_information
    #   <p>A message returned by Amazon Web Services Systems Manager that explains the <code>Status</code> value. For example, a
    #       <code>Failed</code> status might be explained by the <code>StatusInformation</code> message,
    #      "The specified S3 bucket doesn't exist. Verify that the URL of the S3 bucket is correct."</p>
    #
    #   @return [String]
    #
    # @!attribute content
    #   <p>The contents of the SSM document.</p>
    #
    #   @return [String]
    #
    # @!attribute document_type
    #   <p>The document type.</p>
    #
    #   Enum, one of: ["Command", "Policy", "Automation", "Session", "Package", "ApplicationConfiguration", "ApplicationConfigurationSchema", "DeploymentStrategy", "ChangeCalendar", "Automation.ChangeTemplate", "ProblemAnalysis", "ProblemAnalysisTemplate"]
    #
    #   @return [String]
    #
    # @!attribute document_format
    #   <p>The document format, either JSON or YAML.</p>
    #
    #   Enum, one of: ["YAML", "JSON", "TEXT"]
    #
    #   @return [String]
    #
    # @!attribute requires
    #   <p>A list of SSM documents required by a document. For example, an
    #       <code>ApplicationConfiguration</code> document requires an
    #       <code>ApplicationConfigurationSchema</code> document.</p>
    #
    #   @return [Array<DocumentRequires>]
    #
    # @!attribute attachments_content
    #   <p>A description of the document attachments, including names, locations, sizes, and so
    #      on.</p>
    #
    #   @return [Array<AttachmentContent>]
    #
    # @!attribute review_status
    #   <p>The current review status of a new custom Systems Manager document (SSM document) created by a member
    #      of your organization, or of the latest version of an existing SSM document.</p>
    #            <p>Only one version of an SSM document can be in the APPROVED state at a time. When a new
    #      version is approved, the status of the previous version changes to REJECTED.</p>
    #            <p>Only one version of an SSM document can be in review, or PENDING, at a time.</p>
    #
    #   Enum, one of: ["APPROVED", "NOT_REVIEWED", "PENDING", "REJECTED"]
    #
    #   @return [String]
    #
    GetDocumentOutput = ::Struct.new(
      :name,
      :created_date,
      :display_name,
      :version_name,
      :document_version,
      :status,
      :status_information,
      :content,
      :document_type,
      :document_format,
      :requires,
      :attachments_content,
      :review_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute filters
    #   <p>One or more filters. Use a filter to return a more specific list of results.</p>
    #
    #   @return [Array<InventoryFilter>]
    #
    # @!attribute aggregators
    #   <p>Returns counts of inventory types based on one or more expressions. For example, if you
    #      aggregate by using an expression that uses the <code>AWS:InstanceInformation.PlatformType</code>
    #      type, you can see a count of how many Windows and Linux managed nodes exist in your inventoried
    #      fleet.</p>
    #
    #   @return [Array<InventoryAggregator>]
    #
    # @!attribute result_attributes
    #   <p>The list of inventory item types to return.</p>
    #
    #   @return [Array<ResultAttribute>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    #   @return [Integer]
    #
    GetInventoryInput = ::Struct.new(
      :filters,
      :aggregators,
      :result_attributes,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute entities
    #   <p>Collection of inventory entities such as a collection of managed node inventory. </p>
    #
    #   @return [Array<InventoryResultEntity>]
    #
    # @!attribute next_token
    #   <p>The token to use when requesting the next set of items. If there are no additional items to
    #      return, the string is empty.</p>
    #
    #   @return [String]
    #
    GetInventoryOutput = ::Struct.new(
      :entities,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute type_name
    #   <p>The type of inventory item to return.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute aggregator
    #   <p>Returns inventory schemas that support aggregation. For example, this call returns the
    #       <code>AWS:InstanceInformation</code> type, because it supports aggregation based on the
    #       <code>PlatformName</code>, <code>PlatformType</code>, and <code>PlatformVersion</code>
    #      attributes.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute sub_type
    #   <p>Returns the sub-type schema for a specified inventory type.</p>
    #
    #   @return [Boolean]
    #
    GetInventorySchemaInput = ::Struct.new(
      :type_name,
      :next_token,
      :max_results,
      :aggregator,
      :sub_type,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.aggregator ||= false
      end
    end

    # @!attribute schemas
    #   <p>Inventory schemas returned by the request.</p>
    #
    #   @return [Array<InventoryItemSchema>]
    #
    # @!attribute next_token
    #   <p>The token to use when requesting the next set of items. If there are no additional items to
    #      return, the string is empty.</p>
    #
    #   @return [String]
    #
    GetInventorySchemaOutput = ::Struct.new(
      :schemas,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute window_execution_id
    #   <p>The ID of the maintenance window execution that includes the task.</p>
    #
    #   @return [String]
    #
    GetMaintenanceWindowExecutionInput = ::Struct.new(
      :window_execution_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute window_execution_id
    #   <p>The ID of the maintenance window execution.</p>
    #
    #   @return [String]
    #
    # @!attribute task_ids
    #   <p>The ID of the task executions from the maintenance window execution.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute status
    #   <p>The status of the maintenance window execution.</p>
    #
    #   Enum, one of: ["PENDING", "IN_PROGRESS", "SUCCESS", "FAILED", "TIMED_OUT", "CANCELLING", "CANCELLED", "SKIPPED_OVERLAPPING"]
    #
    #   @return [String]
    #
    # @!attribute status_details
    #   <p>The details explaining the status. Not available for all status values.</p>
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The time the maintenance window started running.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The time the maintenance window finished running.</p>
    #
    #   @return [Time]
    #
    GetMaintenanceWindowExecutionOutput = ::Struct.new(
      :window_execution_id,
      :task_ids,
      :status,
      :status_details,
      :start_time,
      :end_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute window_execution_id
    #   <p>The ID of the maintenance window execution that includes the task.</p>
    #
    #   @return [String]
    #
    # @!attribute task_id
    #   <p>The ID of the specific task execution in the maintenance window task that should be
    #      retrieved.</p>
    #
    #   @return [String]
    #
    GetMaintenanceWindowExecutionTaskInput = ::Struct.new(
      :window_execution_id,
      :task_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute window_execution_id
    #   <p>The ID of the maintenance window execution for which the task is a part.</p>
    #
    #   @return [String]
    #
    # @!attribute task_id
    #   <p>The ID of the specific task in the maintenance window task that should be retrieved. </p>
    #
    #   @return [String]
    #
    # @!attribute invocation_id
    #   <p>The invocation ID to retrieve.</p>
    #
    #   @return [String]
    #
    GetMaintenanceWindowExecutionTaskInvocationInput = ::Struct.new(
      :window_execution_id,
      :task_id,
      :invocation_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute window_execution_id
    #   <p>The maintenance window execution ID.</p>
    #
    #   @return [String]
    #
    # @!attribute task_execution_id
    #   <p>The task execution ID.</p>
    #
    #   @return [String]
    #
    # @!attribute invocation_id
    #   <p>The invocation ID.</p>
    #
    #   @return [String]
    #
    # @!attribute execution_id
    #   <p>The execution ID.</p>
    #
    #   @return [String]
    #
    # @!attribute task_type
    #   <p>Retrieves the task type for a maintenance window.</p>
    #
    #   Enum, one of: ["RUN_COMMAND", "AUTOMATION", "STEP_FUNCTIONS", "LAMBDA"]
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>The parameters used at the time that the task ran.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The task status for an invocation.</p>
    #
    #   Enum, one of: ["PENDING", "IN_PROGRESS", "SUCCESS", "FAILED", "TIMED_OUT", "CANCELLING", "CANCELLED", "SKIPPED_OVERLAPPING"]
    #
    #   @return [String]
    #
    # @!attribute status_details
    #   <p>The details explaining the status. Details are only available for certain status
    #      values.</p>
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The time that the task started running on the target.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The time that the task finished running on the target.</p>
    #
    #   @return [Time]
    #
    # @!attribute owner_information
    #   <p>User-provided value to be included in any Amazon CloudWatch Events or Amazon EventBridge
    #      events raised while running tasks for these targets in this maintenance window.</p>
    #
    #   @return [String]
    #
    # @!attribute window_target_id
    #   <p>The maintenance window target ID.</p>
    #
    #   @return [String]
    #
    GetMaintenanceWindowExecutionTaskInvocationOutput = ::Struct.new(
      :window_execution_id,
      :task_execution_id,
      :invocation_id,
      :execution_id,
      :task_type,
      :parameters,
      :status,
      :status_details,
      :start_time,
      :end_time,
      :owner_information,
      :window_target_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::SSM::Types::GetMaintenanceWindowExecutionTaskInvocationOutput "\
          "window_execution_id=#{window_execution_id || 'nil'}, "\
          "task_execution_id=#{task_execution_id || 'nil'}, "\
          "invocation_id=#{invocation_id || 'nil'}, "\
          "execution_id=#{execution_id || 'nil'}, "\
          "task_type=#{task_type || 'nil'}, "\
          "parameters=\"[SENSITIVE]\", "\
          "status=#{status || 'nil'}, "\
          "status_details=#{status_details || 'nil'}, "\
          "start_time=#{start_time || 'nil'}, "\
          "end_time=#{end_time || 'nil'}, "\
          "owner_information=\"[SENSITIVE]\", "\
          "window_target_id=#{window_target_id || 'nil'}>"
      end
    end

    # @!attribute window_execution_id
    #   <p>The ID of the maintenance window execution that includes the task.</p>
    #
    #   @return [String]
    #
    # @!attribute task_execution_id
    #   <p>The ID of the specific task execution in the maintenance window task that was
    #      retrieved.</p>
    #
    #   @return [String]
    #
    # @!attribute task_arn
    #   <p>The Amazon Resource Name (ARN) of the task that ran.</p>
    #
    #   @return [String]
    #
    # @!attribute service_role
    #   <p>The role that was assumed when running the task.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of task that was run.</p>
    #
    #   Enum, one of: ["RUN_COMMAND", "AUTOMATION", "STEP_FUNCTIONS", "LAMBDA"]
    #
    #   @return [String]
    #
    # @!attribute task_parameters
    #   <p>The parameters passed to the task when it was run.</p>
    #            <note>
    #               <p>
    #                  <code>TaskParameters</code> has been deprecated. To specify parameters to pass to a task when it runs,
    #         instead use the <code>Parameters</code> option in the <code>TaskInvocationParameters</code> structure. For information
    #         about how Systems Manager handles these options for the supported maintenance window task
    #         types, see <a>MaintenanceWindowTaskInvocationParameters</a>.</p>
    #            </note>
    #            <p>The map has the following format:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Key</code>: string, between 1 and 255 characters</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Value</code>: an array of strings, each between 1 and 255 characters</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<Hash<String, MaintenanceWindowTaskParameterValueExpression>>]
    #
    # @!attribute priority
    #   <p>The priority of the task.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max_concurrency
    #   <p>The defined maximum number of task executions that could be run in parallel.</p>
    #
    #   @return [String]
    #
    # @!attribute max_errors
    #   <p>The defined maximum number of task execution errors allowed before scheduling of the task
    #      execution would have been stopped.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the task.</p>
    #
    #   Enum, one of: ["PENDING", "IN_PROGRESS", "SUCCESS", "FAILED", "TIMED_OUT", "CANCELLING", "CANCELLED", "SKIPPED_OVERLAPPING"]
    #
    #   @return [String]
    #
    # @!attribute status_details
    #   <p>The details explaining the status. Not available for all status values.</p>
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The time the task execution started.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The time the task execution completed.</p>
    #
    #   @return [Time]
    #
    GetMaintenanceWindowExecutionTaskOutput = ::Struct.new(
      :window_execution_id,
      :task_execution_id,
      :task_arn,
      :service_role,
      :type,
      :task_parameters,
      :priority,
      :max_concurrency,
      :max_errors,
      :status,
      :status_details,
      :start_time,
      :end_time,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.priority ||= 0
      end

      def to_s
        "#<struct AWS::SDK::SSM::Types::GetMaintenanceWindowExecutionTaskOutput "\
          "window_execution_id=#{window_execution_id || 'nil'}, "\
          "task_execution_id=#{task_execution_id || 'nil'}, "\
          "task_arn=#{task_arn || 'nil'}, "\
          "service_role=#{service_role || 'nil'}, "\
          "type=#{type || 'nil'}, "\
          "task_parameters=\"[SENSITIVE]\", "\
          "priority=#{priority || 'nil'}, "\
          "max_concurrency=#{max_concurrency || 'nil'}, "\
          "max_errors=#{max_errors || 'nil'}, "\
          "status=#{status || 'nil'}, "\
          "status_details=#{status_details || 'nil'}, "\
          "start_time=#{start_time || 'nil'}, "\
          "end_time=#{end_time || 'nil'}>"
      end
    end

    # @!attribute window_id
    #   <p>The ID of the maintenance window for which you want to retrieve information.</p>
    #
    #   @return [String]
    #
    GetMaintenanceWindowInput = ::Struct.new(
      :window_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute window_id
    #   <p>The ID of the created maintenance window.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the maintenance window.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the maintenance window.</p>
    #
    #   @return [String]
    #
    # @!attribute start_date
    #   <p>The date and time, in ISO-8601 Extended format, for when the maintenance window is scheduled
    #      to become active. The maintenance window won't run before this specified time.</p>
    #
    #   @return [String]
    #
    # @!attribute end_date
    #   <p>The date and time, in ISO-8601 Extended format, for when the maintenance window is scheduled
    #      to become inactive. The maintenance window won't run after this specified time.</p>
    #
    #   @return [String]
    #
    # @!attribute schedule
    #   <p>The schedule of the maintenance window in the form of a cron or rate expression.</p>
    #
    #   @return [String]
    #
    # @!attribute schedule_timezone
    #   <p>The time zone that the scheduled maintenance window executions are based on, in Internet
    #      Assigned Numbers Authority (IANA) format. For example: "America/Los_Angeles", "UTC", or
    #      "Asia/Seoul". For more information, see the <a href="https://www.iana.org/time-zones">Time
    #       Zone Database</a> on the IANA website.</p>
    #
    #   @return [String]
    #
    # @!attribute schedule_offset
    #   <p>The number of days to wait to run a maintenance window after the scheduled cron expression
    #      date and time.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_execution_time
    #   <p>The next time the maintenance window will actually run, taking into account any specified
    #      times for the maintenance window to become active or inactive.</p>
    #
    #   @return [String]
    #
    # @!attribute duration
    #   <p>The duration of the maintenance window in hours.</p>
    #
    #   @return [Integer]
    #
    # @!attribute cutoff
    #   <p>The number of hours before the end of the maintenance window that Amazon Web Services Systems Manager stops scheduling
    #      new tasks for execution.</p>
    #
    #   @return [Integer]
    #
    # @!attribute allow_unassociated_targets
    #   <p>Whether targets must be registered with the maintenance window before tasks can be defined
    #      for those targets.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute enabled
    #   <p>Indicates whether the maintenance window is enabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute created_date
    #   <p>The date the maintenance window was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute modified_date
    #   <p>The date the maintenance window was last modified.</p>
    #
    #   @return [Time]
    #
    GetMaintenanceWindowOutput = ::Struct.new(
      :window_id,
      :name,
      :description,
      :start_date,
      :end_date,
      :schedule,
      :schedule_timezone,
      :schedule_offset,
      :next_execution_time,
      :duration,
      :cutoff,
      :allow_unassociated_targets,
      :enabled,
      :created_date,
      :modified_date,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.duration ||= 0
        self.cutoff ||= 0
        self.allow_unassociated_targets ||= false
        self.enabled ||= false
      end

      def to_s
        "#<struct AWS::SDK::SSM::Types::GetMaintenanceWindowOutput "\
          "window_id=#{window_id || 'nil'}, "\
          "name=#{name || 'nil'}, "\
          "description=\"[SENSITIVE]\", "\
          "start_date=#{start_date || 'nil'}, "\
          "end_date=#{end_date || 'nil'}, "\
          "schedule=#{schedule || 'nil'}, "\
          "schedule_timezone=#{schedule_timezone || 'nil'}, "\
          "schedule_offset=#{schedule_offset || 'nil'}, "\
          "next_execution_time=#{next_execution_time || 'nil'}, "\
          "duration=#{duration || 'nil'}, "\
          "cutoff=#{cutoff || 'nil'}, "\
          "allow_unassociated_targets=#{allow_unassociated_targets || 'nil'}, "\
          "enabled=#{enabled || 'nil'}, "\
          "created_date=#{created_date || 'nil'}, "\
          "modified_date=#{modified_date || 'nil'}>"
      end
    end

    # @!attribute window_id
    #   <p>The maintenance window ID that includes the task to retrieve.</p>
    #
    #   @return [String]
    #
    # @!attribute window_task_id
    #   <p>The maintenance window task ID to retrieve.</p>
    #
    #   @return [String]
    #
    GetMaintenanceWindowTaskInput = ::Struct.new(
      :window_id,
      :window_task_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute window_id
    #   <p>The retrieved maintenance window ID.</p>
    #
    #   @return [String]
    #
    # @!attribute window_task_id
    #   <p>The retrieved maintenance window task ID.</p>
    #
    #   @return [String]
    #
    # @!attribute targets
    #   <p>The targets where the task should run.</p>
    #
    #   @return [Array<Target>]
    #
    # @!attribute task_arn
    #   <p>The resource that the task used during execution. For <code>RUN_COMMAND</code> and
    #       <code>AUTOMATION</code> task types, the value of <code>TaskArn</code> is the SSM document
    #      name/ARN. For <code>LAMBDA</code> tasks, the value is the function name/ARN. For
    #       <code>STEP_FUNCTIONS</code> tasks, the value is the state machine ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute service_role_arn
    #   <p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) service role to use to publish Amazon Simple Notification Service
    #   (Amazon SNS) notifications for maintenance window Run Command tasks.</p>
    #
    #   @return [String]
    #
    # @!attribute task_type
    #   <p>The type of task to run.</p>
    #
    #   Enum, one of: ["RUN_COMMAND", "AUTOMATION", "STEP_FUNCTIONS", "LAMBDA"]
    #
    #   @return [String]
    #
    # @!attribute task_parameters
    #   <p>The parameters to pass to the task when it runs.</p>
    #            <note>
    #               <p>
    #                  <code>TaskParameters</code> has been deprecated. To specify parameters to pass to a task when it runs,
    #         instead use the <code>Parameters</code> option in the <code>TaskInvocationParameters</code> structure. For information
    #         about how Systems Manager handles these options for the supported maintenance window task
    #         types, see <a>MaintenanceWindowTaskInvocationParameters</a>.</p>
    #            </note>
    #
    #   @return [Hash<String, MaintenanceWindowTaskParameterValueExpression>]
    #
    # @!attribute task_invocation_parameters
    #   <p>The parameters to pass to the task when it runs.</p>
    #
    #   @return [MaintenanceWindowTaskInvocationParameters]
    #
    # @!attribute priority
    #   <p>The priority of the task when it runs. The lower the number, the higher the priority. Tasks
    #      that have the same priority are scheduled in parallel.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max_concurrency
    #   <p>The maximum number of targets allowed to run this task in parallel.</p>
    #            <note>
    #               <p>For maintenance window tasks without a target specified, you can't supply a value for this
    #       option. Instead, the system inserts a placeholder value of <code>1</code>, which may be reported
    #       in the response to this command. This value doesn't affect the running of your task and can be
    #       ignored.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute max_errors
    #   <p>The maximum number of errors allowed before the task stops being scheduled.</p>
    #            <note>
    #               <p>For maintenance window tasks without a target specified, you can't supply a value for this
    #       option. Instead, the system inserts a placeholder value of <code>1</code>, which may be reported
    #       in the response to this command. This value doesn't affect the running of your task and can be
    #       ignored.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute logging_info
    #   <p>The location in Amazon Simple Storage Service (Amazon S3) where the task results are
    #      logged.</p>
    #            <note>
    #               <p>
    #                  <code>LoggingInfo</code> has been deprecated. To specify an Amazon Simple Storage Service (Amazon S3) bucket to contain logs, instead use the
    #         <code>OutputS3BucketName</code> and <code>OutputS3KeyPrefix</code> options in the <code>TaskInvocationParameters</code> structure.
    #         For information about how Amazon Web Services Systems Manager handles these options for the supported maintenance
    #         window task types, see <a>MaintenanceWindowTaskInvocationParameters</a>.</p>
    #            </note>
    #
    #   @return [LoggingInfo]
    #
    # @!attribute name
    #   <p>The retrieved task name.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The retrieved task description.</p>
    #
    #   @return [String]
    #
    # @!attribute cutoff_behavior
    #   <p>The action to take on tasks when the maintenance window cutoff time is reached.
    #       <code>CONTINUE_TASK</code> means that tasks continue to run. For Automation, Lambda, Step Functions tasks, <code>CANCEL_TASK</code> means that currently
    #      running task invocations continue, but no new task invocations are started. For Run Command
    #      tasks, <code>CANCEL_TASK</code> means the system attempts to stop the task by sending a
    #       <code>CancelCommand</code> operation.</p>
    #
    #   Enum, one of: ["CONTINUE_TASK", "CANCEL_TASK"]
    #
    #   @return [String]
    #
    GetMaintenanceWindowTaskOutput = ::Struct.new(
      :window_id,
      :window_task_id,
      :targets,
      :task_arn,
      :service_role_arn,
      :task_type,
      :task_parameters,
      :task_invocation_parameters,
      :priority,
      :max_concurrency,
      :max_errors,
      :logging_info,
      :name,
      :description,
      :cutoff_behavior,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.priority ||= 0
      end

      def to_s
        "#<struct AWS::SDK::SSM::Types::GetMaintenanceWindowTaskOutput "\
          "window_id=#{window_id || 'nil'}, "\
          "window_task_id=#{window_task_id || 'nil'}, "\
          "targets=#{targets || 'nil'}, "\
          "task_arn=#{task_arn || 'nil'}, "\
          "service_role_arn=#{service_role_arn || 'nil'}, "\
          "task_type=#{task_type || 'nil'}, "\
          "task_parameters=\"[SENSITIVE]\", "\
          "task_invocation_parameters=#{task_invocation_parameters || 'nil'}, "\
          "priority=#{priority || 'nil'}, "\
          "max_concurrency=#{max_concurrency || 'nil'}, "\
          "max_errors=#{max_errors || 'nil'}, "\
          "logging_info=#{logging_info || 'nil'}, "\
          "name=#{name || 'nil'}, "\
          "description=\"[SENSITIVE]\", "\
          "cutoff_behavior=#{cutoff_behavior || 'nil'}>"
      end
    end

    # @!attribute ops_item_id
    #   <p>The ID of the OpsItem that you want to get.</p>
    #
    #   @return [String]
    #
    GetOpsItemInput = ::Struct.new(
      :ops_item_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute ops_item
    #   <p>The OpsItem.</p>
    #
    #   @return [OpsItem]
    #
    GetOpsItemOutput = ::Struct.new(
      :ops_item,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute ops_metadata_arn
    #   <p>The Amazon Resource Name (ARN) of an OpsMetadata Object to view.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A token to start the list. Use this token to get the next set of results.</p>
    #
    #   @return [String]
    #
    GetOpsMetadataInput = ::Struct.new(
      :ops_metadata_arn,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_id
    #   <p>The resource ID of the Application Manager application.</p>
    #
    #   @return [String]
    #
    # @!attribute metadata
    #   <p>OpsMetadata for an Application Manager application.</p>
    #
    #   @return [Hash<String, MetadataValue>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. Use this token to get the next set of
    #      results.</p>
    #
    #   @return [String]
    #
    GetOpsMetadataOutput = ::Struct.new(
      :resource_id,
      :metadata,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute sync_name
    #   <p>Specify the name of a resource data sync to get.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>Optional filters used to scope down the returned OpsData. </p>
    #
    #   @return [Array<OpsFilter>]
    #
    # @!attribute aggregators
    #   <p>Optional aggregators that return counts of OpsData based on one or more expressions.</p>
    #
    #   @return [Array<OpsAggregator>]
    #
    # @!attribute result_attributes
    #   <p>The OpsData data type to return.</p>
    #
    #   @return [Array<OpsResultAttribute>]
    #
    # @!attribute next_token
    #   <p>A token to start the list. Use this token to get the next set of results. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    #   @return [Integer]
    #
    GetOpsSummaryInput = ::Struct.new(
      :sync_name,
      :filters,
      :aggregators,
      :result_attributes,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute entities
    #   <p>The list of aggregated details and filtered OpsData.</p>
    #
    #   @return [Array<OpsEntity>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. Use this token to get the next set of
    #      results.</p>
    #
    #   @return [String]
    #
    GetOpsSummaryOutput = ::Struct.new(
      :entities,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the parameter for which you want to review history.</p>
    #
    #   @return [String]
    #
    # @!attribute with_decryption
    #   <p>Return decrypted values for secure string parameters. This flag is ignored for
    #       <code>String</code> and <code>StringList</code> parameter types.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    #
    #   @return [String]
    #
    GetParameterHistoryInput = ::Struct.new(
      :name,
      :with_decryption,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute parameters
    #   <p>A list of parameters returned by the request.</p>
    #
    #   @return [Array<ParameterHistory>]
    #
    # @!attribute next_token
    #   <p>The token to use when requesting the next set of items. If there are no additional items to
    #      return, the string is empty.</p>
    #
    #   @return [String]
    #
    GetParameterHistoryOutput = ::Struct.new(
      :parameters,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the parameter you want to query.</p>
    #            <p>To query by parameter label, use <code>"Name": "name:label"</code>. To query by parameter
    #      version, use <code>"Name": "name:version"</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute with_decryption
    #   <p>Return decrypted values for secure string parameters. This flag is ignored for
    #       <code>String</code> and <code>StringList</code> parameter types.</p>
    #
    #   @return [Boolean]
    #
    GetParameterInput = ::Struct.new(
      :name,
      :with_decryption,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute parameter
    #   <p>Information about a parameter.</p>
    #
    #   @return [Parameter]
    #
    GetParameterOutput = ::Struct.new(
      :parameter,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute path
    #   <p>The hierarchy for the parameter. Hierarchies start with a forward slash (/). The hierarchy
    #      is the parameter name except the last part of the parameter. For the API call to succeed, the
    #      last part of the parameter name can't be in the path. A parameter name hierarchy can have a
    #      maximum of 15 levels. Here is an example of a hierarchy:
    #       <code>/Finance/Prod/IAD/WinServ2016/license33 </code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute recursive
    #   <p>Retrieve all parameters within a hierarchy.</p>
    #            <important>
    #               <p>If a user has access to a path, then the user can access all levels of that path. For
    #       example, if a user has permission to access path <code>/a</code>, then the user can also access
    #        <code>/a/b</code>. Even if a user has explicitly been denied access in IAM for
    #       parameter <code>/a/b</code>, they can still call the GetParametersByPath API operation
    #       recursively for <code>/a</code> and view <code>/a/b</code>.</p>
    #            </important>
    #
    #   @return [Boolean]
    #
    # @!attribute parameter_filters
    #   <p>Filters to limit the request results.</p>
    #            <note>
    #               <p>The following <code>Key</code> values are supported for <code>GetParametersByPath</code>:
    #        <code>Type</code>, <code>KeyId</code>, and <code>Label</code>.</p>
    #               <p>The following <code>Key</code> values aren't supported for
    #       <code>GetParametersByPath</code>: <code>tag</code>, <code>DataType</code>, <code>Name</code>,
    #        <code>Path</code>, and <code>Tier</code>.</p>
    #            </note>
    #
    #   @return [Array<ParameterStringFilter>]
    #
    # @!attribute with_decryption
    #   <p>Retrieve all parameters in a hierarchy with their value decrypted.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A token to start the list. Use this token to get the next set of results. </p>
    #
    #   @return [String]
    #
    GetParametersByPathInput = ::Struct.new(
      :path,
      :recursive,
      :parameter_filters,
      :with_decryption,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute parameters
    #   <p>A list of parameters found in the specified hierarchy.</p>
    #
    #   @return [Array<Parameter>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. Use this token to get the next set of
    #      results.</p>
    #
    #   @return [String]
    #
    GetParametersByPathOutput = ::Struct.new(
      :parameters,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute names
    #   <p>Names of the parameters for which you want to query information.</p>
    #            <p>To query by parameter label, use <code>"Name": "name:label"</code>. To query by parameter
    #      version, use <code>"Name": "name:version"</code>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute with_decryption
    #   <p>Return decrypted secure string value. Return decrypted values for secure string parameters.
    #      This flag is ignored for <code>String</code> and <code>StringList</code> parameter types.</p>
    #
    #   @return [Boolean]
    #
    GetParametersInput = ::Struct.new(
      :names,
      :with_decryption,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute parameters
    #   <p>A list of details for a parameter.</p>
    #
    #   @return [Array<Parameter>]
    #
    # @!attribute invalid_parameters
    #   <p>A list of parameters that aren't formatted correctly or don't run during an
    #      execution.</p>
    #
    #   @return [Array<String>]
    #
    GetParametersOutput = ::Struct.new(
      :parameters,
      :invalid_parameters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute patch_group
    #   <p>The name of the patch group whose patch baseline should be retrieved.</p>
    #
    #   @return [String]
    #
    # @!attribute operating_system
    #   <p>Returns the operating system rule specified for patch groups using the patch
    #      baseline.</p>
    #
    #   Enum, one of: ["WINDOWS", "AMAZON_LINUX", "AMAZON_LINUX_2", "UBUNTU", "REDHAT_ENTERPRISE_LINUX", "SUSE", "CENTOS", "ORACLE_LINUX", "DEBIAN", "MACOS", "RASPBIAN", "ROCKY_LINUX"]
    #
    #   @return [String]
    #
    GetPatchBaselineForPatchGroupInput = ::Struct.new(
      :patch_group,
      :operating_system,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute baseline_id
    #   <p>The ID of the patch baseline that should be used for the patch group.</p>
    #
    #   @return [String]
    #
    # @!attribute patch_group
    #   <p>The name of the patch group.</p>
    #
    #   @return [String]
    #
    # @!attribute operating_system
    #   <p>The operating system rule specified for patch groups using the patch baseline.</p>
    #
    #   Enum, one of: ["WINDOWS", "AMAZON_LINUX", "AMAZON_LINUX_2", "UBUNTU", "REDHAT_ENTERPRISE_LINUX", "SUSE", "CENTOS", "ORACLE_LINUX", "DEBIAN", "MACOS", "RASPBIAN", "ROCKY_LINUX"]
    #
    #   @return [String]
    #
    GetPatchBaselineForPatchGroupOutput = ::Struct.new(
      :baseline_id,
      :patch_group,
      :operating_system,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute baseline_id
    #   <p>The ID of the patch baseline to retrieve.</p>
    #            <note>
    #               <p>To retrieve information about an Amazon Web Services managed patch baseline, specify the full Amazon
    #       Resource Name (ARN) of the baseline. For example, for the baseline
    #        <code>AWS-AmazonLinuxDefaultPatchBaseline</code>, specify
    #        <code>arn:aws:ssm:us-east-2:733109147000:patchbaseline/pb-0e392de35e7c563b7</code> instead of
    #        <code>pb-0e392de35e7c563b7</code>.</p>
    #            </note>
    #
    #   @return [String]
    #
    GetPatchBaselineInput = ::Struct.new(
      :baseline_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute baseline_id
    #   <p>The ID of the retrieved patch baseline.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the patch baseline.</p>
    #
    #   @return [String]
    #
    # @!attribute operating_system
    #   <p>Returns the operating system specified for the patch baseline.</p>
    #
    #   Enum, one of: ["WINDOWS", "AMAZON_LINUX", "AMAZON_LINUX_2", "UBUNTU", "REDHAT_ENTERPRISE_LINUX", "SUSE", "CENTOS", "ORACLE_LINUX", "DEBIAN", "MACOS", "RASPBIAN", "ROCKY_LINUX"]
    #
    #   @return [String]
    #
    # @!attribute global_filters
    #   <p>A set of global filters used to exclude patches from the baseline.</p>
    #
    #   @return [PatchFilterGroup]
    #
    # @!attribute approval_rules
    #   <p>A set of rules used to include patches in the baseline.</p>
    #
    #   @return [PatchRuleGroup]
    #
    # @!attribute approved_patches
    #   <p>A list of explicitly approved patches for the baseline.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute approved_patches_compliance_level
    #   <p>Returns the specified compliance severity level for approved patches in the patch
    #      baseline.</p>
    #
    #   Enum, one of: ["CRITICAL", "HIGH", "MEDIUM", "LOW", "INFORMATIONAL", "UNSPECIFIED"]
    #
    #   @return [String]
    #
    # @!attribute approved_patches_enable_non_security
    #   <p>Indicates whether the list of approved patches includes non-security updates that should be
    #      applied to the managed nodes. The default value is <code>false</code>. Applies to Linux managed
    #      nodes only.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute rejected_patches
    #   <p>A list of explicitly rejected patches for the baseline.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute rejected_patches_action
    #   <p>The action specified to take on patches included in the <code>RejectedPatches</code> list. A
    #      patch can be allowed only if it is a dependency of another package, or blocked entirely along
    #      with packages that include it as a dependency.</p>
    #
    #   Enum, one of: ["ALLOW_AS_DEPENDENCY", "BLOCK"]
    #
    #   @return [String]
    #
    # @!attribute patch_groups
    #   <p>Patch groups included in the patch baseline.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute created_date
    #   <p>The date the patch baseline was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute modified_date
    #   <p>The date the patch baseline was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute description
    #   <p>A description of the patch baseline.</p>
    #
    #   @return [String]
    #
    # @!attribute sources
    #   <p>Information about the patches to use to update the managed nodes, including target operating
    #      systems and source repositories. Applies to Linux managed nodes only.</p>
    #
    #   @return [Array<PatchSource>]
    #
    GetPatchBaselineOutput = ::Struct.new(
      :baseline_id,
      :name,
      :operating_system,
      :global_filters,
      :approval_rules,
      :approved_patches,
      :approved_patches_compliance_level,
      :approved_patches_enable_non_security,
      :rejected_patches,
      :rejected_patches_action,
      :patch_groups,
      :created_date,
      :modified_date,
      :description,
      :sources,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request body of the GetServiceSetting API operation.</p>
    #
    # @!attribute setting_id
    #   <p>The ID of the service setting to get. The setting ID can be one of the following.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>/ssm/automation/customer-script-log-destination</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>/ssm/automation/customer-script-log-group-name</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>/ssm/documents/console/public-sharing-permission</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>/ssm/parameter-store/default-parameter-tier</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>/ssm/parameter-store/high-throughput-enabled</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>/ssm/managed-instance/activation-tier</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    GetServiceSettingInput = ::Struct.new(
      :setting_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The query result body of the GetServiceSetting API operation.</p>
    #
    # @!attribute service_setting
    #   <p>The query result of the current service setting.</p>
    #
    #   @return [ServiceSetting]
    #
    GetServiceSettingOutput = ::Struct.new(
      :service_setting,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A hierarchy can have a maximum of 15 levels. For more information, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-parameter-name-constraints.html">Requirements and
    #     constraints for parameter names</a> in the <i>Amazon Web Services Systems Manager User Guide</i>. </p>
    #
    # @!attribute message
    #   <p>A hierarchy can have a maximum of 15 levels. For more information, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-parameter-name-constraints.html">Requirements and
    #       constraints for parameter names</a> in the <i>Amazon Web Services Systems Manager User Guide</i>. </p>
    #
    #   @return [String]
    #
    HierarchyLevelLimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Parameter Store doesn't support changing a parameter type in a hierarchy. For example, you
    #    can't change a parameter from a <code>String</code> type to a <code>SecureString</code> type. You
    #    must create a new, unique parameter.</p>
    #
    # @!attribute message
    #   <p>Parameter Store doesn't support changing a parameter type in a hierarchy. For example, you
    #      can't change a parameter from a <code>String</code> type to a <code>SecureString</code> type. You
    #      must create a new, unique parameter.</p>
    #
    #   @return [String]
    #
    HierarchyTypeMismatchException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Error returned when an idempotent operation is retried and the parameters don't match the
    #    original call to the API with the same idempotency token. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    IdempotentParameterMismatch = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>There is a conflict in the policies specified for this parameter. You can't, for example,
    #    specify two Expiration policies for a parameter. Review your policies, and try again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    IncompatiblePolicyException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Status information about the aggregated associations.</p>
    #
    # @!attribute detailed_status
    #   <p>Detailed status information about the aggregated associations.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_association_status_aggregated_count
    #   <p>The number of associations for the managed node(s).</p>
    #
    #   @return [Hash<String, Integer>]
    #
    InstanceAggregatedAssociationOverview = ::Struct.new(
      :detailed_status,
      :instance_association_status_aggregated_count,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>One or more association documents on the managed node. </p>
    #
    # @!attribute association_id
    #   <p>The association ID.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_id
    #   <p>The managed node ID.</p>
    #
    #   @return [String]
    #
    # @!attribute content
    #   <p>The content of the association document for the managed node(s).</p>
    #
    #   @return [String]
    #
    # @!attribute association_version
    #   <p>Version information for the association on the managed node.</p>
    #
    #   @return [String]
    #
    InstanceAssociation = ::Struct.new(
      :association_id,
      :instance_id,
      :content,
      :association_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An S3 bucket where you want to store the results of this request.</p>
    #          <p>For the minimal permissions required to enable Amazon S3 output for an association,
    #    see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-state-assoc.html">Creating associations</a> in the <i>Systems Manager User Guide</i>. </p>
    #
    # @!attribute s3_location
    #   <p>An S3 bucket where you want to store the results of this request.</p>
    #
    #   @return [S3OutputLocation]
    #
    InstanceAssociationOutputLocation = ::Struct.new(
      :s3_location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The URL of S3 bucket where you want to store the results of this request.</p>
    #
    # @!attribute s3_output_url
    #   <p>The URL of S3 bucket where you want to store the results of this request.</p>
    #
    #   @return [S3OutputUrl]
    #
    InstanceAssociationOutputUrl = ::Struct.new(
      :s3_output_url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Status information about the association.</p>
    #
    # @!attribute association_id
    #   <p>The association ID.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the association.</p>
    #
    #   @return [String]
    #
    # @!attribute document_version
    #   <p>The association document versions.</p>
    #
    #   @return [String]
    #
    # @!attribute association_version
    #   <p>The version of the association applied to the managed node.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_id
    #   <p>The managed node ID where the association was created.</p>
    #
    #   @return [String]
    #
    # @!attribute execution_date
    #   <p>The date the association ran. </p>
    #
    #   @return [Time]
    #
    # @!attribute status
    #   <p>Status information about the association.</p>
    #
    #   @return [String]
    #
    # @!attribute detailed_status
    #   <p>Detailed status information about the association.</p>
    #
    #   @return [String]
    #
    # @!attribute execution_summary
    #   <p>Summary information about association execution.</p>
    #
    #   @return [String]
    #
    # @!attribute error_code
    #   <p>An error code returned by the request to create the association.</p>
    #
    #   @return [String]
    #
    # @!attribute output_url
    #   <p>A URL for an S3 bucket where you want to store the results of this request.</p>
    #
    #   @return [InstanceAssociationOutputUrl]
    #
    # @!attribute association_name
    #   <p>The name of the association applied to the managed node.</p>
    #
    #   @return [String]
    #
    InstanceAssociationStatusInfo = ::Struct.new(
      :association_id,
      :name,
      :document_version,
      :association_version,
      :instance_id,
      :execution_date,
      :status,
      :detailed_status,
      :execution_summary,
      :error_code,
      :output_url,
      :association_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a filter for a specific list of managed nodes. </p>
    #
    # @!attribute instance_id
    #   <p>The managed node ID. </p>
    #
    #   @return [String]
    #
    # @!attribute ping_status
    #   <p>Connection status of SSM Agent. </p>
    #            <note>
    #               <p>The status <code>Inactive</code> has been deprecated and is no longer in use.</p>
    #            </note>
    #
    #   Enum, one of: ["Online", "ConnectionLost", "Inactive"]
    #
    #   @return [String]
    #
    # @!attribute last_ping_date_time
    #   <p>The date and time when the agent last pinged the Systems Manager service. </p>
    #
    #   @return [Time]
    #
    # @!attribute agent_version
    #   <p>The version of SSM Agent running on your Linux managed node. </p>
    #
    #   @return [String]
    #
    # @!attribute is_latest_version
    #   <p>Indicates whether the latest version of SSM Agent is running on your Linux managed node. This
    #      field doesn't indicate whether or not the latest version is installed on Windows managed nodes,
    #      because some older versions of Windows Server use the EC2Config service to process Systems Manager
    #      requests.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute platform_type
    #   <p>The operating system platform type. </p>
    #
    #   Enum, one of: ["Windows", "Linux", "MacOS"]
    #
    #   @return [String]
    #
    # @!attribute platform_name
    #   <p>The name of the operating system platform running on your managed node. </p>
    #
    #   @return [String]
    #
    # @!attribute platform_version
    #   <p>The version of the OS platform running on your managed node. </p>
    #
    #   @return [String]
    #
    # @!attribute activation_id
    #   <p>The activation ID created by Amazon Web Services Systems Manager when the server or virtual machine (VM) was
    #      registered.</p>
    #
    #   @return [String]
    #
    # @!attribute iam_role
    #   <p>The Identity and Access Management (IAM) role assigned to the on-premises Systems Manager
    #      managed node. This call doesn't return the IAM role for Amazon Elastic Compute Cloud
    #       (Amazon EC2) instances. To retrieve the IAM role for an EC2 instance, use
    #      the Amazon EC2 <code>DescribeInstances</code> operation. For information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeInstances.html">DescribeInstances</a> in the <i>Amazon EC2 API Reference</i> or <a href="https://docs.aws.amazon.com/cli/latest/ec2/describe-instances.html">describe-instances</a> in
    #      the <i>Amazon Web Services CLI Command Reference</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute registration_date
    #   <p>The date the server or VM was registered with Amazon Web Services as a managed node.</p>
    #
    #   @return [Time]
    #
    # @!attribute resource_type
    #   <p>The type of instance. Instances are either EC2 instances or managed instances. </p>
    #
    #   Enum, one of: ["ManagedInstance", "Document", "EC2Instance"]
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name assigned to an on-premises server, edge device, or virtual machine (VM) when it is
    #      activated as a Systems Manager managed node. The name is specified as the <code>DefaultInstanceName</code>
    #      property using the <a>CreateActivation</a> command. It is applied to the managed node
    #      by specifying the Activation Code and Activation ID when you install SSM Agent on the node, as
    #      explained in <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-install-managed-linux.html">Install SSM Agent for a
    #       hybrid environment (Linux)</a> and <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-install-managed-win.html">Install SSM Agent for a
    #       hybrid environment (Windows)</a>. To retrieve the <code>Name</code> tag of an EC2 instance,
    #      use the Amazon EC2 <code>DescribeInstances</code> operation. For information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeInstances.html">DescribeInstances</a> in the <i>Amazon EC2 API Reference</i> or <a href="https://docs.aws.amazon.com/cli/latest/ec2/describe-instances.html">describe-instances</a> in
    #      the <i>Amazon Web Services CLI Command Reference</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute ip_address
    #   <p>The IP address of the managed node.</p>
    #
    #   @return [String]
    #
    # @!attribute computer_name
    #   <p>The fully qualified host name of the managed node.</p>
    #
    #   @return [String]
    #
    # @!attribute association_status
    #   <p>The status of the association.</p>
    #
    #   @return [String]
    #
    # @!attribute last_association_execution_date
    #   <p>The date the association was last run.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_successful_association_execution_date
    #   <p>The last date the association was successfully run.</p>
    #
    #   @return [Time]
    #
    # @!attribute association_overview
    #   <p>Information about the association.</p>
    #
    #   @return [InstanceAggregatedAssociationOverview]
    #
    # @!attribute source_id
    #   <p>The ID of the source resource. For IoT Greengrass devices, <code>SourceId</code> is
    #      the Thing name. </p>
    #
    #   @return [String]
    #
    # @!attribute source_type
    #   <p>The type of the source resource. For IoT Greengrass devices, <code>SourceType</code>
    #      is <code>AWS::IoT::Thing</code>. </p>
    #
    #   Enum, one of: ["AWS::EC2::Instance", "AWS::IoT::Thing", "AWS::SSM::ManagedInstance"]
    #
    #   @return [String]
    #
    InstanceInformation = ::Struct.new(
      :instance_id,
      :ping_status,
      :last_ping_date_time,
      :agent_version,
      :is_latest_version,
      :platform_type,
      :platform_name,
      :platform_version,
      :activation_id,
      :iam_role,
      :registration_date,
      :resource_type,
      :name,
      :ip_address,
      :computer_name,
      :association_status,
      :last_association_execution_date,
      :last_successful_association_execution_date,
      :association_overview,
      :source_id,
      :source_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a filter for a specific list of managed nodes. You can filter node information by
    #    using tags. You specify tags by using a key-value mapping.</p>
    #          <p>Use this operation instead of the <a>DescribeInstanceInformationRequest$InstanceInformationFilterList</a> method. The
    #     <code>InstanceInformationFilterList</code> method is a legacy method and doesn't support tags.
    #   </p>
    #
    # @!attribute key
    #   <p>The name of the filter. </p>
    #
    #   Enum, one of: ["InstanceIds", "AgentVersion", "PingStatus", "PlatformTypes", "ActivationIds", "IamRole", "ResourceType", "AssociationStatus"]
    #
    #   @return [String]
    #
    # @!attribute value_set
    #   <p>The filter values.</p>
    #
    #   @return [Array<String>]
    #
    InstanceInformationFilter = ::Struct.new(
      :key,
      :value_set,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for InstanceInformationFilterKey
    #
    module InstanceInformationFilterKey
      # No documentation available.
      #
      INSTANCE_IDS = "InstanceIds"

      # No documentation available.
      #
      AGENT_VERSION = "AgentVersion"

      # No documentation available.
      #
      PING_STATUS = "PingStatus"

      # No documentation available.
      #
      PLATFORM_TYPES = "PlatformTypes"

      # No documentation available.
      #
      ACTIVATION_IDS = "ActivationIds"

      # No documentation available.
      #
      IAM_ROLE = "IamRole"

      # No documentation available.
      #
      RESOURCE_TYPE = "ResourceType"

      # No documentation available.
      #
      ASSOCIATION_STATUS = "AssociationStatus"
    end

    # <p>The filters to describe or get information about your managed nodes.</p>
    #
    # @!attribute key
    #   <p>The filter key name to describe your managed nodes. For example:</p>
    #            <p>"InstanceIds"|"AgentVersion"|"PingStatus"|"PlatformTypes"|"ActivationIds"|"IamRole"|"ResourceType"|"AssociationStatus"|"Tag
    #      Key"</p>
    #            <important>
    #               <p>
    #                  <code>Tag key</code> isn't a valid filter. You must specify either <code>tag-key</code> or
    #        <code>tag:keyname</code> and a string. Here are some valid examples: tag-key, tag:123, tag:al!,
    #       tag:Windows. Here are some <i>invalid</i> examples: tag-keys, Tag Key, tag:,
    #       tagKey, abc:keyname.</p>
    #            </important>
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>The filter values.</p>
    #
    #   @return [Array<String>]
    #
    InstanceInformationStringFilter = ::Struct.new(
      :key,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Defines the high-level patch compliance state for a managed node, providing information
    #    about the number of installed, missing, not applicable, and failed patches along with metadata
    #    about the operation when this information was gathered for the managed node.</p>
    #
    # @!attribute instance_id
    #   <p>The ID of the managed node the high-level patch compliance information was collected
    #      for.</p>
    #
    #   @return [String]
    #
    # @!attribute patch_group
    #   <p>The name of the patch group the managed node belongs to.</p>
    #
    #   @return [String]
    #
    # @!attribute baseline_id
    #   <p>The ID of the patch baseline used to patch the managed node.</p>
    #
    #   @return [String]
    #
    # @!attribute snapshot_id
    #   <p>The ID of the patch baseline snapshot used during the patching operation when this
    #      compliance data was collected.</p>
    #
    #   @return [String]
    #
    # @!attribute install_override_list
    #   <p>An https URL or an Amazon Simple Storage Service (Amazon S3) path-style URL to a list of
    #      patches to be installed. This patch installation list, which you maintain in an S3 bucket in YAML
    #      format and specify in the SSM document <code>AWS-RunPatchBaseline</code>, overrides the patches
    #      specified by the default patch baseline.</p>
    #            <p>For more information about the <code>InstallOverrideList</code> parameter, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-about-aws-runpatchbaseline.html">About the
    #        <code>AWS-RunPatchBaseline</code>
    #               </a> SSM document in the
    #       <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute owner_information
    #   <p>Placeholder information. This field will always be empty in the current release of the
    #      service.</p>
    #
    #   @return [String]
    #
    # @!attribute installed_count
    #   <p>The number of patches from the patch baseline that are installed on the managed node.</p>
    #
    #   @return [Integer]
    #
    # @!attribute installed_other_count
    #   <p>The number of patches not specified in the patch baseline that are installed on the managed
    #      node.</p>
    #
    #   @return [Integer]
    #
    # @!attribute installed_pending_reboot_count
    #   <p>The number of patches installed by Patch Manager since the last time the managed node was
    #      rebooted.</p>
    #
    #   @return [Integer]
    #
    # @!attribute installed_rejected_count
    #   <p>The number of patches installed on a managed node that are specified in a
    #       <code>RejectedPatches</code> list. Patches with a status of <code>InstalledRejected</code> were
    #      typically installed before they were added to a <code>RejectedPatches</code> list.</p>
    #            <note>
    #               <p>If <code>ALLOW_AS_DEPENDENCY</code> is the specified option for
    #        <code>RejectedPatchesAction</code>, the value of <code>InstalledRejectedCount</code> will
    #       always be <code>0</code> (zero).</p>
    #            </note>
    #
    #   @return [Integer]
    #
    # @!attribute missing_count
    #   <p>The number of patches from the patch baseline that are applicable for the managed node but
    #      aren't currently installed.</p>
    #
    #   @return [Integer]
    #
    # @!attribute failed_count
    #   <p>The number of patches from the patch baseline that were attempted to be installed during the
    #      last patching operation, but failed to install.</p>
    #
    #   @return [Integer]
    #
    # @!attribute unreported_not_applicable_count
    #   <p>The number of patches beyond the supported limit of <code>NotApplicableCount</code> that
    #      aren't reported by name to Inventory. Inventory is a capability of Amazon Web Services Systems Manager.</p>
    #
    #   @return [Integer]
    #
    # @!attribute not_applicable_count
    #   <p>The number of patches from the patch baseline that aren't applicable for the managed node
    #      and therefore aren't installed on the node. This number may be truncated if the list of patch
    #      names is very large. The number of patches beyond this limit are reported in
    #       <code>UnreportedNotApplicableCount</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute operation_start_time
    #   <p>The time the most recent patching operation was started on the managed node.</p>
    #
    #   @return [Time]
    #
    # @!attribute operation_end_time
    #   <p>The time the most recent patching operation completed on the managed node.</p>
    #
    #   @return [Time]
    #
    # @!attribute operation
    #   <p>The type of patching operation that was performed: or </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SCAN</code> assesses the patch compliance state.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INSTALL</code> installs missing patches.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["Scan", "Install"]
    #
    #   @return [String]
    #
    # @!attribute last_no_reboot_install_operation_time
    #   <p>The time of the last attempt to patch the managed node with <code>NoReboot</code> specified
    #      as the reboot option.</p>
    #
    #   @return [Time]
    #
    # @!attribute reboot_option
    #   <p>Indicates the reboot option specified in the patch baseline.</p>
    #            <note>
    #               <p>Reboot options apply to <code>Install</code> operations only. Reboots aren't attempted for
    #       Patch Manager <code>Scan</code> operations.</p>
    #            </note>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>RebootIfNeeded</code>: Patch Manager tries to reboot the managed node if it
    #        installed any patches, or if any patches are detected with a status of
    #         <code>InstalledPendingReboot</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NoReboot</code>: Patch Manager attempts to install missing packages without trying
    #        to reboot the system. Patches installed with this option are assigned a status of
    #         <code>InstalledPendingReboot</code>. These patches might not be in effect until a reboot is
    #        performed.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["RebootIfNeeded", "NoReboot"]
    #
    #   @return [String]
    #
    # @!attribute critical_non_compliant_count
    #   <p>The number of managed nodes where patches that are specified as <code>Critical</code> for
    #      compliance reporting in the patch baseline aren't installed. These patches might be missing, have
    #      failed installation, were rejected, or were installed but awaiting a required managed node
    #      reboot. The status of these managed nodes is <code>NON_COMPLIANT</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute security_non_compliant_count
    #   <p>The number of managed nodes where patches that are specified as <code>Security</code> in a
    #      patch advisory aren't installed. These patches might be missing, have failed installation, were
    #      rejected, or were installed but awaiting a required managed node reboot. The status of these
    #      managed nodes is <code>NON_COMPLIANT</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute other_non_compliant_count
    #   <p>The number of managed nodes with patches installed that are specified as other than
    #       <code>Critical</code> or <code>Security</code> but aren't compliant with the patch baseline. The
    #      status of these managed nodes is <code>NON_COMPLIANT</code>.</p>
    #
    #   @return [Integer]
    #
    InstancePatchState = ::Struct.new(
      :instance_id,
      :patch_group,
      :baseline_id,
      :snapshot_id,
      :install_override_list,
      :owner_information,
      :installed_count,
      :installed_other_count,
      :installed_pending_reboot_count,
      :installed_rejected_count,
      :missing_count,
      :failed_count,
      :unreported_not_applicable_count,
      :not_applicable_count,
      :operation_start_time,
      :operation_end_time,
      :operation,
      :last_no_reboot_install_operation_time,
      :reboot_option,
      :critical_non_compliant_count,
      :security_non_compliant_count,
      :other_non_compliant_count,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.installed_count ||= 0
        self.installed_other_count ||= 0
        self.missing_count ||= 0
        self.failed_count ||= 0
        self.not_applicable_count ||= 0
      end

      def to_s
        "#<struct AWS::SDK::SSM::Types::InstancePatchState "\
          "instance_id=#{instance_id || 'nil'}, "\
          "patch_group=#{patch_group || 'nil'}, "\
          "baseline_id=#{baseline_id || 'nil'}, "\
          "snapshot_id=#{snapshot_id || 'nil'}, "\
          "install_override_list=#{install_override_list || 'nil'}, "\
          "owner_information=\"[SENSITIVE]\", "\
          "installed_count=#{installed_count || 'nil'}, "\
          "installed_other_count=#{installed_other_count || 'nil'}, "\
          "installed_pending_reboot_count=#{installed_pending_reboot_count || 'nil'}, "\
          "installed_rejected_count=#{installed_rejected_count || 'nil'}, "\
          "missing_count=#{missing_count || 'nil'}, "\
          "failed_count=#{failed_count || 'nil'}, "\
          "unreported_not_applicable_count=#{unreported_not_applicable_count || 'nil'}, "\
          "not_applicable_count=#{not_applicable_count || 'nil'}, "\
          "operation_start_time=#{operation_start_time || 'nil'}, "\
          "operation_end_time=#{operation_end_time || 'nil'}, "\
          "operation=#{operation || 'nil'}, "\
          "last_no_reboot_install_operation_time=#{last_no_reboot_install_operation_time || 'nil'}, "\
          "reboot_option=#{reboot_option || 'nil'}, "\
          "critical_non_compliant_count=#{critical_non_compliant_count || 'nil'}, "\
          "security_non_compliant_count=#{security_non_compliant_count || 'nil'}, "\
          "other_non_compliant_count=#{other_non_compliant_count || 'nil'}>"
      end
    end

    # <p>Defines a filter used in <a>DescribeInstancePatchStatesForPatchGroup</a> to scope
    #    down the information returned by the API.</p>
    #          <p>
    #             <b>Example</b>: To filter for all managed nodes in a patch group
    #    having more than three patches with a <code>FailedCount</code> status, use the following for the
    #    filter:</p>
    #          <ul>
    #             <li>
    #                <p>Value for <code>Key</code>: <code>FailedCount</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>Value for <code>Type</code>: <code>GreaterThan</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>Value for <code>Values</code>: <code>3</code>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @!attribute key
    #   <p>The key for the filter. Supported values include the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>InstalledCount</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>InstalledOtherCount</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>InstalledPendingRebootCount</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>InstalledRejectedCount</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MissingCount</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FailedCount</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UnreportedNotApplicableCount</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NotApplicableCount</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>The value for the filter. Must be an integer greater than or equal to 0.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute type
    #   <p>The type of comparison that should be performed for the value.</p>
    #
    #   Enum, one of: ["Equal", "NotEqual", "LessThan", "GreaterThan"]
    #
    #   @return [String]
    #
    InstancePatchStateFilter = ::Struct.new(
      :key,
      :values,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for InstancePatchStateOperatorType
    #
    module InstancePatchStateOperatorType
      # No documentation available.
      #
      EQUAL = "Equal"

      # No documentation available.
      #
      NOT_EQUAL = "NotEqual"

      # No documentation available.
      #
      LESS_THAN = "LessThan"

      # No documentation available.
      #
      GREATER_THAN = "GreaterThan"
    end

    # <p>An error occurred on the server side.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InternalServerError = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The activation isn't valid. The activation might have been deleted, or the ActivationId and
    #    the ActivationCode don't match.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidActivation = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The activation ID isn't valid. Verify the you entered the correct ActivationId or
    #    ActivationCode and try again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidActivationId = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified aggregator isn't valid for inventory groups. Verify that the aggregator uses a
    #    valid inventory type such as <code>AWS:Application</code> or
    #    <code>AWS:InstanceInformation</code>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidAggregatorException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request doesn't meet the regular expression requirement.</p>
    #
    # @!attribute message
    #   <p>The request doesn't meet the regular expression requirement.</p>
    #
    #   @return [String]
    #
    InvalidAllowedPatternException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The association isn't valid or doesn't exist. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidAssociation = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The version you specified isn't valid. Use ListAssociationVersions to view all versions of
    #    an association according to the association ID. Or, use the <code>$LATEST</code> parameter to
    #    view the latest version of the association.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidAssociationVersion = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The supplied parameters for invoking the specified Automation runbook are incorrect. For
    #    example, they may not match the set of parameters permitted for the specified Automation
    #    document.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidAutomationExecutionParametersException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The signal isn't valid for the current Automation execution.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidAutomationSignalException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified update status operation isn't valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidAutomationStatusUpdateException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified command ID isn't valid. Verify the ID and try again.</p>
    #
    InvalidCommandId = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>One or more of the parameters specified for the delete operation isn't valid. Verify all
    #    parameters and try again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidDeleteInventoryParametersException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The ID specified for the delete operation doesn't exist or isn't valid. Verify the ID and
    #    try again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidDeletionIdException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified SSM document doesn't exist.</p>
    #
    # @!attribute message
    #   <p>The SSM document doesn't exist or the document isn't available to the user. This exception
    #      can be issued by various API operations. </p>
    #
    #   @return [String]
    #
    InvalidDocument = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The content for the document isn't valid.</p>
    #
    # @!attribute message
    #   <p>A description of the validation error.</p>
    #
    #   @return [String]
    #
    InvalidDocumentContent = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You attempted to delete a document while it is still shared. You must stop sharing the
    #    document before you can delete it.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidDocumentOperation = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The version of the document schema isn't supported.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidDocumentSchemaVersion = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The SSM document type isn't valid. Valid document types are described in the
    #     <code>DocumentType</code> property.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidDocumentType = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The document version isn't valid or doesn't exist.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidDocumentVersion = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The filter name isn't valid. Verify the you entered the correct name and try again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidFilter = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified key isn't valid.</p>
    #
    InvalidFilterKey = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified filter option isn't valid. Valid options are Equals and BeginsWith. For Path
    #    filter, valid options are Recursive and OneLevel.</p>
    #
    # @!attribute message
    #   <p>The specified filter option isn't valid. Valid options are Equals and BeginsWith. For Path
    #      filter, valid options are Recursive and OneLevel.</p>
    #
    #   @return [String]
    #
    InvalidFilterOption = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The filter value isn't valid. Verify the value and try again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidFilterValue = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The following problems can cause this exception:</p>
    #          <ul>
    #             <li>
    #                <p>You don't have permission to access the managed node.</p>
    #             </li>
    #             <li>
    #                <p>Amazon Web Services Systems Manager Agent(SSM Agent) isn't running. Verify that SSM Agent is
    #      running.</p>
    #             </li>
    #             <li>
    #                <p>SSM Agent isn't registered with the SSM endpoint. Try reinstalling SSM Agent.</p>
    #             </li>
    #             <li>
    #                <p>The managed node isn't in valid state. Valid states are: <code>Running</code>,
    #       <code>Pending</code>, <code>Stopped</code>, and <code>Stopping</code>. Invalid states are:
    #       <code>Shutting-down</code> and <code>Terminated</code>.</p>
    #             </li>
    #          </ul>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidInstanceId = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified filter value isn't valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidInstanceInformationFilterValue = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified inventory group isn't valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidInventoryGroupException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You specified invalid keys or values in the <code>Context</code> attribute for
    #     <code>InventoryItem</code>. Verify the keys and values, and try again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidInventoryItemContextException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request isn't valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidInventoryRequestException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>One or more content items isn't valid.</p>
    #
    # @!attribute type_name
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidItemContentException = ::Struct.new(
      :type_name,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The query key ID isn't valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidKeyId = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified token isn't valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidNextToken = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>One or more configuration items isn't valid. Verify that a valid Amazon Resource Name (ARN)
    #    was provided for an Amazon Simple Notification Service topic.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidNotificationConfig = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The delete inventory option specified isn't valid. Verify the option and try again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidOptionException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The S3 bucket doesn't exist.</p>
    #
    InvalidOutputFolder = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The output location isn't valid or doesn't exist.</p>
    #
    InvalidOutputLocation = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You must specify values for all required parameters in the Amazon Web Services Systems Manager document (SSM
    #    document). You can only supply values to parameters defined in the SSM document.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidParameters = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The permission type isn't supported. <i>Share</i> is the only supported
    #    permission type.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidPermissionType = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The plugin name isn't valid.</p>
    #
    InvalidPluginName = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A policy attribute or its value is invalid. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidPolicyAttributeException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The policy type isn't supported. Parameter Store supports the following policy types:
    #    Expiration, ExpirationNotification, and NoChangeNotification.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidPolicyTypeException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The resource ID isn't valid. Verify that you entered the correct ID and try again.</p>
    #
    InvalidResourceId = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The resource type isn't valid. For example, if you are attempting to tag an EC2 instance,
    #    the instance must be a registered managed node.</p>
    #
    InvalidResourceType = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified inventory item result attribute isn't valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidResultAttributeException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The role name can't contain invalid characters. Also verify that you specified an IAM role for notifications that includes the required trust policy. For information about
    #    configuring the IAM role for Run Command notifications, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/rc-sns-notifications.html">Configuring Amazon SNS Notifications for Run Command</a> in the
    #     <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidRole = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The schedule is invalid. Verify your cron or rate expression and try again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidSchedule = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The target isn't valid or doesn't exist. It might not be configured for Systems Manager or you might
    #    not have permission to perform the operation.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidTarget = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>TargetMap parameter isn't valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidTargetMaps = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The parameter type name isn't valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidTypeNameException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The update isn't valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidUpdate = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the inventory type and attribute for the aggregation execution.</p>
    #
    # @!attribute expression
    #   <p>The inventory type and attribute name for aggregation.</p>
    #
    #   @return [String]
    #
    # @!attribute aggregators
    #   <p>Nested aggregators to further refine aggregation for an inventory type.</p>
    #
    #   @return [Array<InventoryAggregator>]
    #
    # @!attribute groups
    #   <p>A user-defined set of one or more filters on which to aggregate inventory data. Groups
    #      return a count of resources that match and don't match the specified criteria.</p>
    #
    #   @return [Array<InventoryGroup>]
    #
    InventoryAggregator = ::Struct.new(
      :expression,
      :aggregators,
      :groups,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for InventoryAttributeDataType
    #
    module InventoryAttributeDataType
      # No documentation available.
      #
      STRING = "string"

      # No documentation available.
      #
      NUMBER = "number"
    end

    # Includes enum constants for InventoryDeletionStatus
    #
    module InventoryDeletionStatus
      # No documentation available.
      #
      IN_PROGRESS = "InProgress"

      # No documentation available.
      #
      COMPLETE = "Complete"
    end

    # <p>Status information returned by the <code>DeleteInventory</code> operation.</p>
    #
    # @!attribute deletion_id
    #   <p>The deletion ID returned by the <code>DeleteInventory</code> operation.</p>
    #
    #   @return [String]
    #
    # @!attribute type_name
    #   <p>The name of the inventory data type.</p>
    #
    #   @return [String]
    #
    # @!attribute deletion_start_time
    #   <p>The UTC timestamp when the delete operation started.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_status
    #   <p>The status of the operation. Possible values are InProgress and Complete.</p>
    #
    #   Enum, one of: ["InProgress", "Complete"]
    #
    #   @return [String]
    #
    # @!attribute last_status_message
    #   <p>Information about the status.</p>
    #
    #   @return [String]
    #
    # @!attribute deletion_summary
    #   <p>Information about the delete operation. For more information about this summary, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-inventory-custom.html sysman-inventory-delete">Understanding the delete inventory summary</a> in the
    #      <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #
    #   @return [InventoryDeletionSummary]
    #
    # @!attribute last_status_update_time
    #   <p>The UTC timestamp of when the last status report.</p>
    #
    #   @return [Time]
    #
    InventoryDeletionStatusItem = ::Struct.new(
      :deletion_id,
      :type_name,
      :deletion_start_time,
      :last_status,
      :last_status_message,
      :deletion_summary,
      :last_status_update_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the delete operation.</p>
    #
    # @!attribute total_count
    #   <p>The total number of items to delete. This count doesn't change during the delete
    #      operation.</p>
    #
    #   @return [Integer]
    #
    # @!attribute remaining_count
    #   <p>Remaining number of items to delete.</p>
    #
    #   @return [Integer]
    #
    # @!attribute summary_items
    #   <p>A list of counts and versions for deleted items.</p>
    #
    #   @return [Array<InventoryDeletionSummaryItem>]
    #
    InventoryDeletionSummary = ::Struct.new(
      :total_count,
      :remaining_count,
      :summary_items,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.total_count ||= 0
        self.remaining_count ||= 0
      end
    end

    # <p>Either a count, remaining count, or a version number in a delete inventory summary.</p>
    #
    # @!attribute version
    #   <p>The inventory type version.</p>
    #
    #   @return [String]
    #
    # @!attribute count
    #   <p>A count of the number of deleted items.</p>
    #
    #   @return [Integer]
    #
    # @!attribute remaining_count
    #   <p>The remaining number of items to delete.</p>
    #
    #   @return [Integer]
    #
    InventoryDeletionSummaryItem = ::Struct.new(
      :version,
      :count,
      :remaining_count,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.count ||= 0
        self.remaining_count ||= 0
      end
    end

    # <p>One or more filters. Use a filter to return a more specific list of results.</p>
    #
    # @!attribute key
    #   <p>The name of the filter key.</p>
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>Inventory filter values. Example: inventory filter where managed node IDs are specified as
    #      values <code>Key=AWS:InstanceInformation.InstanceId,Values= i-a12b3c4d5e6g,
    #       i-1a2b3c4d5e6,Type=Equal</code>. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute type
    #   <p>The type of filter.</p>
    #            <note>
    #               <p>The <code>Exists</code> filter must be used with aggregators. For more information, see
    #        <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-inventory-aggregate.html">Aggregating inventory
    #        data</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #            </note>
    #
    #   Enum, one of: ["Equal", "NotEqual", "BeginWith", "LessThan", "GreaterThan", "Exists"]
    #
    #   @return [String]
    #
    InventoryFilter = ::Struct.new(
      :key,
      :values,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A user-defined set of one or more filters on which to aggregate inventory data. Groups
    #    return a count of resources that match and don't match the specified criteria.</p>
    #
    # @!attribute name
    #   <p>The name of the group.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>Filters define the criteria for the group. The <code>matchingCount</code> field displays the
    #      number of resources that match the criteria. The <code>notMatchingCount</code> field displays the
    #      number of resources that don't match the criteria. </p>
    #
    #   @return [Array<InventoryFilter>]
    #
    InventoryGroup = ::Struct.new(
      :name,
      :filters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information collected from managed nodes based on your inventory policy document</p>
    #
    # @!attribute type_name
    #   <p>The name of the inventory type. Default inventory item type names start with
    #       <code>AWS</code>. Custom inventory type names will start with Custom. Default inventory item
    #      types include the following: <code>AWS:AWSComponent</code>, <code>AWS:Application</code>,
    #       <code>AWS:InstanceInformation</code>, <code>AWS:Network</code>, and
    #       <code>AWS:WindowsUpdate</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute schema_version
    #   <p>The schema version for the inventory item.</p>
    #
    #   @return [String]
    #
    # @!attribute capture_time
    #   <p>The time the inventory information was collected.</p>
    #
    #   @return [String]
    #
    # @!attribute content_hash
    #   <p>MD5 hash of the inventory item type contents. The content hash is used to determine whether
    #      to update inventory information. The PutInventory API doesn't update the inventory item type
    #      contents if the MD5 hash hasn't changed since last update. </p>
    #
    #   @return [String]
    #
    # @!attribute content
    #   <p>The inventory data of the inventory type.</p>
    #
    #   @return [Array<Hash<String, String>>]
    #
    # @!attribute context
    #   <p>A map of associated properties for a specified inventory type. For example, with this
    #      attribute, you can specify the <code>ExecutionId</code>, <code>ExecutionType</code>,
    #       <code>ComplianceType</code> properties of the <code>AWS:ComplianceItem</code> type.</p>
    #
    #   @return [Hash<String, String>]
    #
    InventoryItem = ::Struct.new(
      :type_name,
      :schema_version,
      :capture_time,
      :content_hash,
      :content,
      :context,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Attributes are the entries within the inventory item content. It contains name and
    #    value.</p>
    #
    # @!attribute name
    #   <p>Name of the inventory item attribute.</p>
    #
    #   @return [String]
    #
    # @!attribute data_type
    #   <p>The data type of the inventory item attribute. </p>
    #
    #   Enum, one of: ["string", "number"]
    #
    #   @return [String]
    #
    InventoryItemAttribute = ::Struct.new(
      :name,
      :data_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The inventory item schema definition. Users can use this to compose inventory query
    #    filters.</p>
    #
    # @!attribute type_name
    #   <p>The name of the inventory type. Default inventory item type names start with Amazon Web Services. Custom
    #      inventory type names will start with Custom. Default inventory item types include the following:
    #       <code>AWS:AWSComponent</code>, <code>AWS:Application</code>,
    #       <code>AWS:InstanceInformation</code>, <code>AWS:Network</code>, and
    #       <code>AWS:WindowsUpdate</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The schema version for the inventory item.</p>
    #
    #   @return [String]
    #
    # @!attribute attributes
    #   <p>The schema attributes for inventory. This contains data type and attribute name.</p>
    #
    #   @return [Array<InventoryItemAttribute>]
    #
    # @!attribute display_name
    #   <p>The alias name of the inventory type. The alias name is used for display purposes.</p>
    #
    #   @return [String]
    #
    InventoryItemSchema = ::Struct.new(
      :type_name,
      :version,
      :attributes,
      :display_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for InventoryQueryOperatorType
    #
    module InventoryQueryOperatorType
      # No documentation available.
      #
      EQUAL = "Equal"

      # No documentation available.
      #
      NOT_EQUAL = "NotEqual"

      # No documentation available.
      #
      BEGIN_WITH = "BeginWith"

      # No documentation available.
      #
      LESS_THAN = "LessThan"

      # No documentation available.
      #
      GREATER_THAN = "GreaterThan"

      # No documentation available.
      #
      EXISTS = "Exists"
    end

    # <p>Inventory query results.</p>
    #
    # @!attribute id
    #   <p>ID of the inventory result entity. For example, for managed node inventory the result will
    #      be the managed node ID. For EC2 instance inventory, the result will be the instance ID. </p>
    #
    #   @return [String]
    #
    # @!attribute data
    #   <p>The data section in the inventory result entity JSON.</p>
    #
    #   @return [Hash<String, InventoryResultItem>]
    #
    InventoryResultEntity = ::Struct.new(
      :id,
      :data,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The inventory result item.</p>
    #
    # @!attribute type_name
    #   <p>The name of the inventory result item type.</p>
    #
    #   @return [String]
    #
    # @!attribute schema_version
    #   <p>The schema version for the inventory result item/</p>
    #
    #   @return [String]
    #
    # @!attribute capture_time
    #   <p>The time inventory item data was captured.</p>
    #
    #   @return [String]
    #
    # @!attribute content_hash
    #   <p>MD5 hash of the inventory item type contents. The content hash is used to determine whether
    #      to update inventory information. The PutInventory API doesn't update the inventory item type
    #      contents if the MD5 hash hasn't changed since last update. </p>
    #
    #   @return [String]
    #
    # @!attribute content
    #   <p>Contains all the inventory data of the item type. Results include attribute names and
    #      values. </p>
    #
    #   @return [Array<Hash<String, String>>]
    #
    InventoryResultItem = ::Struct.new(
      :type_name,
      :schema_version,
      :capture_time,
      :content_hash,
      :content,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for InventorySchemaDeleteOption
    #
    module InventorySchemaDeleteOption
      # No documentation available.
      #
      DISABLE_SCHEMA = "DisableSchema"

      # No documentation available.
      #
      DELETE_SCHEMA = "DeleteSchema"
    end

    # <p>The command ID and managed node ID you specified didn't match any invocations. Verify the
    #    command ID and the managed node ID and try again. </p>
    #
    InvocationDoesNotExist = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The inventory item has invalid content. </p>
    #
    # @!attribute type_name
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ItemContentMismatchException = ::Struct.new(
      :type_name,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The inventory item size has exceeded the size limit.</p>
    #
    # @!attribute type_name
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ItemSizeLimitExceededException = ::Struct.new(
      :type_name,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The parameter name on which you want to attach one or more labels.</p>
    #
    #   @return [String]
    #
    # @!attribute parameter_version
    #   <p>The specific version of the parameter on which you want to attach one or more labels. If no
    #      version is specified, the system attaches the label to the latest version.</p>
    #
    #   @return [Integer]
    #
    # @!attribute labels
    #   <p>One or more labels to attach to the specified parameter version.</p>
    #
    #   @return [Array<String>]
    #
    LabelParameterVersionInput = ::Struct.new(
      :name,
      :parameter_version,
      :labels,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute invalid_labels
    #   <p>The label doesn't meet the requirements. For information about parameter label requirements,
    #      see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-paramstore-labels.html">Labeling parameters</a>
    #      in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute parameter_version
    #   <p>The version of the parameter that has been labeled.</p>
    #
    #   @return [Integer]
    #
    LabelParameterVersionOutput = ::Struct.new(
      :invalid_labels,
      :parameter_version,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.parameter_version ||= 0
      end
    end

    # Includes enum constants for LastResourceDataSyncStatus
    #
    module LastResourceDataSyncStatus
      # No documentation available.
      #
      SUCCESSFUL = "Successful"

      # No documentation available.
      #
      FAILED = "Failed"

      # No documentation available.
      #
      INPROGRESS = "InProgress"
    end

    # @!attribute association_id
    #   <p>The association ID for which you want to view all versions.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A token to start the list. Use this token to get the next set of results. </p>
    #
    #   @return [String]
    #
    ListAssociationVersionsInput = ::Struct.new(
      :association_id,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute association_versions
    #   <p>Information about all versions of the association for the specified association ID.</p>
    #
    #   @return [Array<AssociationVersionInfo>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. Use this token to get the next set of
    #      results.</p>
    #
    #   @return [String]
    #
    ListAssociationVersionsOutput = ::Struct.new(
      :association_versions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute association_filter_list
    #   <p>One or more filters. Use a filter to return a more specific list of results.</p>
    #            <note>
    #               <p>Filtering associations using the <code>InstanceID</code> attribute only returns legacy
    #       associations created using the <code>InstanceID</code> attribute. Associations targeting the
    #       managed node that are part of the Target Attributes <code>ResourceGroup</code> or
    #        <code>Tags</code> aren't returned.</p>
    #            </note>
    #
    #   @return [Array<AssociationFilter>]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    #
    #   @return [String]
    #
    ListAssociationsInput = ::Struct.new(
      :association_filter_list,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute associations
    #   <p>The associations.</p>
    #
    #   @return [Array<Association>]
    #
    # @!attribute next_token
    #   <p>The token to use when requesting the next set of items. If there are no additional items to
    #      return, the string is empty.</p>
    #
    #   @return [String]
    #
    ListAssociationsOutput = ::Struct.new(
      :associations,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute command_id
    #   <p>(Optional) The invocations for a specific command ID.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_id
    #   <p>(Optional) The command execution details for a specific managed node ID.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>(Optional) The maximum number of items to return for this call. The call also returns a
    #      token that you can specify in a subsequent call to get the next set of results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>(Optional) The token for the next set of items to return. (You received this token from a
    #      previous call.)</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>(Optional) One or more filters. Use a filter to return a more specific list of
    #      results.</p>
    #
    #   @return [Array<CommandFilter>]
    #
    # @!attribute details
    #   <p>(Optional) If set this returns the response of the command executions and any command
    #      output. The default value is <code>false</code>. </p>
    #
    #   @return [Boolean]
    #
    ListCommandInvocationsInput = ::Struct.new(
      :command_id,
      :instance_id,
      :max_results,
      :next_token,
      :filters,
      :details,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.details ||= false
      end
    end

    # @!attribute command_invocations
    #   <p>(Optional) A list of all invocations. </p>
    #
    #   @return [Array<CommandInvocation>]
    #
    # @!attribute next_token
    #   <p>(Optional) The token for the next set of items to return. (You received this token from a
    #      previous call.)</p>
    #
    #   @return [String]
    #
    ListCommandInvocationsOutput = ::Struct.new(
      :command_invocations,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute command_id
    #   <p>(Optional) If provided, lists only the specified command.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_id
    #   <p>(Optional) Lists commands issued against this managed node ID.</p>
    #            <note>
    #               <p>You can't specify a managed node ID in the same command that you specify
    #        <code>Status</code> = <code>Pending</code>. This is because the command hasn't reached the
    #       managed node yet.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>(Optional) The maximum number of items to return for this call. The call also returns a
    #      token that you can specify in a subsequent call to get the next set of results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>(Optional) The token for the next set of items to return. (You received this token from a
    #      previous call.)</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>(Optional) One or more filters. Use a filter to return a more specific list of results.
    #     </p>
    #
    #   @return [Array<CommandFilter>]
    #
    ListCommandsInput = ::Struct.new(
      :command_id,
      :instance_id,
      :max_results,
      :next_token,
      :filters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute commands
    #   <p>(Optional) The list of commands requested by the user. </p>
    #
    #   @return [Array<Command>]
    #
    # @!attribute next_token
    #   <p>(Optional) The token for the next set of items to return. (You received this token from a
    #      previous call.)</p>
    #
    #   @return [String]
    #
    ListCommandsOutput = ::Struct.new(
      :commands,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute filters
    #   <p>One or more compliance filters. Use a filter to return a more specific list of
    #      results.</p>
    #
    #   @return [Array<ComplianceStringFilter>]
    #
    # @!attribute resource_ids
    #   <p>The ID for the resources from which to get compliance information. Currently, you can only
    #      specify one resource ID.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute resource_types
    #   <p>The type of resource from which to get compliance information. Currently, the only supported
    #      resource type is <code>ManagedInstance</code>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>A token to start the list. Use this token to get the next set of results. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    #   @return [Integer]
    #
    ListComplianceItemsInput = ::Struct.new(
      :filters,
      :resource_ids,
      :resource_types,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute compliance_items
    #   <p>A list of compliance information for the specified resource ID. </p>
    #
    #   @return [Array<ComplianceItem>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. Use this token to get the next set of
    #      results.</p>
    #
    #   @return [String]
    #
    ListComplianceItemsOutput = ::Struct.new(
      :compliance_items,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute filters
    #   <p>One or more compliance or inventory filters. Use a filter to return a more specific list of
    #      results.</p>
    #
    #   @return [Array<ComplianceStringFilter>]
    #
    # @!attribute next_token
    #   <p>A token to start the list. Use this token to get the next set of results. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to return for this call. Currently, you can specify null or 50.
    #      The call also returns a token that you can specify in a subsequent call to get the next set of
    #      results.</p>
    #
    #   @return [Integer]
    #
    ListComplianceSummariesInput = ::Struct.new(
      :filters,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute compliance_summary_items
    #   <p>A list of compliant and non-compliant summary counts based on compliance types. For example,
    #      this call returns State Manager associations, patches, or custom compliance types according to
    #      the filter criteria that you specified.</p>
    #
    #   @return [Array<ComplianceSummaryItem>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. Use this token to get the next set of
    #      results.</p>
    #
    #   @return [String]
    #
    ListComplianceSummariesOutput = ::Struct.new(
      :compliance_summary_items,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the change template.</p>
    #
    #   @return [String]
    #
    # @!attribute document_version
    #   <p>The version of the change template.</p>
    #
    #   @return [String]
    #
    # @!attribute metadata
    #   <p>The type of data for which details are being requested. Currently, the only supported value
    #      is <code>DocumentReviews</code>.</p>
    #
    #   Enum, one of: ["DocumentReviews"]
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    #   @return [Integer]
    #
    ListDocumentMetadataHistoryInput = ::Struct.new(
      :name,
      :document_version,
      :metadata,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the change template.</p>
    #
    #   @return [String]
    #
    # @!attribute document_version
    #   <p>The version of the change template.</p>
    #
    #   @return [String]
    #
    # @!attribute author
    #   <p>The user ID of the person in the organization who requested the review of the
    #      change template.</p>
    #
    #   @return [String]
    #
    # @!attribute metadata
    #   <p>Information about the response to the change template approval request.</p>
    #
    #   @return [DocumentMetadataResponseInfo]
    #
    # @!attribute next_token
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    #   @return [String]
    #
    ListDocumentMetadataHistoryOutput = ::Struct.new(
      :name,
      :document_version,
      :author,
      :metadata,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the document. You can specify an Amazon Resource Name (ARN).</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    #
    #   @return [String]
    #
    ListDocumentVersionsInput = ::Struct.new(
      :name,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute document_versions
    #   <p>The document versions.</p>
    #
    #   @return [Array<DocumentVersionInfo>]
    #
    # @!attribute next_token
    #   <p>The token to use when requesting the next set of items. If there are no additional items to
    #      return, the string is empty.</p>
    #
    #   @return [String]
    #
    ListDocumentVersionsOutput = ::Struct.new(
      :document_versions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute document_filter_list
    #   <p>This data type is deprecated. Instead, use <code>Filters</code>.</p>
    #
    #   @return [Array<DocumentFilter>]
    #
    # @!attribute filters
    #   <p>One or more <code>DocumentKeyValuesFilter</code> objects. Use a filter to return a more
    #      specific list of results. For keys, you can specify one or more key-value pair tags that have
    #      been applied to a document. Other valid keys include <code>Owner</code>, <code>Name</code>,
    #       <code>PlatformTypes</code>, <code>DocumentType</code>, and <code>TargetType</code>. For example,
    #      to return documents you own use <code>Key=Owner,Values=Self</code>. To specify a custom key-value
    #      pair, use the format <code>Key=tag:tagName,Values=valueName</code>.</p>
    #            <note>
    #               <p>This API operation only supports filtering documents by using a single tag key and one or
    #       more tag values. For example: <code>Key=tag:tagName,Values=valueName1,valueName2</code>
    #               </p>
    #            </note>
    #
    #   @return [Array<DocumentKeyValuesFilter>]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    #
    #   @return [String]
    #
    ListDocumentsInput = ::Struct.new(
      :document_filter_list,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute document_identifiers
    #   <p>The names of the SSM documents.</p>
    #
    #   @return [Array<DocumentIdentifier>]
    #
    # @!attribute next_token
    #   <p>The token to use when requesting the next set of items. If there are no additional items to
    #      return, the string is empty.</p>
    #
    #   @return [String]
    #
    ListDocumentsOutput = ::Struct.new(
      :document_identifiers,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The managed node ID for which you want inventory information.</p>
    #
    #   @return [String]
    #
    # @!attribute type_name
    #   <p>The type of inventory item for which you want information.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>One or more filters. Use a filter to return a more specific list of results.</p>
    #
    #   @return [Array<InventoryFilter>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    #   @return [Integer]
    #
    ListInventoryEntriesInput = ::Struct.new(
      :instance_id,
      :type_name,
      :filters,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute type_name
    #   <p>The type of inventory item returned by the request.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_id
    #   <p>The managed node ID targeted by the request to query inventory information.</p>
    #
    #   @return [String]
    #
    # @!attribute schema_version
    #   <p>The inventory schema version used by the managed node(s).</p>
    #
    #   @return [String]
    #
    # @!attribute capture_time
    #   <p>The time that inventory information was collected for the managed node(s).</p>
    #
    #   @return [String]
    #
    # @!attribute entries
    #   <p>A list of inventory items on the managed node(s).</p>
    #
    #   @return [Array<Hash<String, String>>]
    #
    # @!attribute next_token
    #   <p>The token to use when requesting the next set of items. If there are no additional items to
    #      return, the string is empty.</p>
    #
    #   @return [String]
    #
    ListInventoryEntriesOutput = ::Struct.new(
      :type_name,
      :instance_id,
      :schema_version,
      :capture_time,
      :entries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute filters
    #   <p>One or more OpsItem filters. Use a filter to return a more specific list of results. </p>
    #
    #   @return [Array<OpsItemEventFilter>]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results. </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A token to start the list. Use this token to get the next set of results. </p>
    #
    #   @return [String]
    #
    ListOpsItemEventsInput = ::Struct.new(
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of items to return. Use this token to get the next set of
    #      results. </p>
    #
    #   @return [String]
    #
    # @!attribute summaries
    #   <p>A list of event information for the specified OpsItems.</p>
    #
    #   @return [Array<OpsItemEventSummary>]
    #
    ListOpsItemEventsOutput = ::Struct.new(
      :next_token,
      :summaries,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute ops_item_id
    #   <p>The ID of the OpsItem for which you want to list all related-item resources.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>One or more OpsItem filters. Use a filter to return a more specific list of results. </p>
    #
    #   @return [Array<OpsItemRelatedItemsFilter>]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    #
    #   @return [String]
    #
    ListOpsItemRelatedItemsInput = ::Struct.new(
      :ops_item_id,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of items to return. Use this token to get the next set of
    #      results.</p>
    #
    #   @return [String]
    #
    # @!attribute summaries
    #   <p>A list of related-item resources for the specified OpsItem.</p>
    #
    #   @return [Array<OpsItemRelatedItemSummary>]
    #
    ListOpsItemRelatedItemsOutput = ::Struct.new(
      :next_token,
      :summaries,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute filters
    #   <p>One or more filters to limit the number of OpsMetadata objects returned by the call.</p>
    #
    #   @return [Array<OpsMetadataFilter>]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A token to start the list. Use this token to get the next set of results.</p>
    #
    #   @return [String]
    #
    ListOpsMetadataInput = ::Struct.new(
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute ops_metadata_list
    #   <p>Returns a list of OpsMetadata objects.</p>
    #
    #   @return [Array<OpsMetadata>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. Use this token to get the next set of
    #      results.</p>
    #
    #   @return [String]
    #
    ListOpsMetadataOutput = ::Struct.new(
      :ops_metadata_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute filters
    #   <p>One or more filters. Use a filter to return a more specific list of results.</p>
    #
    #   @return [Array<ComplianceStringFilter>]
    #
    # @!attribute next_token
    #   <p>A token to start the list. Use this token to get the next set of results. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    #   @return [Integer]
    #
    ListResourceComplianceSummariesInput = ::Struct.new(
      :filters,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_compliance_summary_items
    #   <p>A summary count for specified or targeted managed nodes. Summary count includes information
    #      about compliant and non-compliant State Manager associations, patch status, or custom items
    #      according to the filter criteria that you specify. </p>
    #
    #   @return [Array<ResourceComplianceSummaryItem>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. Use this token to get the next set of
    #      results.</p>
    #
    #   @return [String]
    #
    ListResourceComplianceSummariesOutput = ::Struct.new(
      :resource_compliance_summary_items,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute sync_type
    #   <p>View a list of resource data syncs according to the sync type. Specify
    #       <code>SyncToDestination</code> to view resource data syncs that synchronize data to an Amazon S3 bucket. Specify <code>SyncFromSource</code> to view resource data syncs from Organizations
    #      or from multiple Amazon Web Services Regions.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>A token to start the list. Use this token to get the next set of results. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    #   @return [Integer]
    #
    ListResourceDataSyncInput = ::Struct.new(
      :sync_type,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_data_sync_items
    #   <p>A list of your current resource data sync configurations and their statuses.</p>
    #
    #   @return [Array<ResourceDataSyncItem>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. Use this token to get the next set of
    #      results.</p>
    #
    #   @return [String]
    #
    ListResourceDataSyncOutput = ::Struct.new(
      :resource_data_sync_items,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_type
    #   <p>Returns a list of tags for a specific resource type.</p>
    #
    #   Enum, one of: ["Document", "ManagedInstance", "MaintenanceWindow", "Parameter", "PatchBaseline", "OpsItem", "OpsMetadata", "Automation"]
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The resource ID for which you want to see a list of tags.</p>
    #
    #   @return [String]
    #
    ListTagsForResourceInput = ::Struct.new(
      :resource_type,
      :resource_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tag_list
    #   <p>A list of tags.</p>
    #
    #   @return [Array<Tag>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tag_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about an Amazon Simple Storage Service (Amazon S3) bucket to write managed
    #    node-level logs to.</p>
    #          <note>
    #             <p>
    #                <code>LoggingInfo</code> has been deprecated. To specify an Amazon Simple Storage Service (Amazon S3) bucket to contain logs, instead use the
    #       <code>OutputS3BucketName</code> and <code>OutputS3KeyPrefix</code> options in the <code>TaskInvocationParameters</code> structure.
    #       For information about how Amazon Web Services Systems Manager handles these options for the supported maintenance
    #       window task types, see <a>MaintenanceWindowTaskInvocationParameters</a>.</p>
    #          </note>
    #
    # @!attribute s3_bucket_name
    #   <p>The name of an S3 bucket where execution logs are stored .</p>
    #
    #   @return [String]
    #
    # @!attribute s3_key_prefix
    #   <p>(Optional) The S3 bucket subfolder. </p>
    #
    #   @return [String]
    #
    # @!attribute s3_region
    #   <p>The Amazon Web Services Region where the S3 bucket is located.</p>
    #
    #   @return [String]
    #
    LoggingInfo = ::Struct.new(
      :s3_bucket_name,
      :s3_key_prefix,
      :s3_region,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The parameters for an <code>AUTOMATION</code> task type.</p>
    #
    # @!attribute document_version
    #   <p>The version of an Automation runbook to use during task execution.</p>
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>The parameters for the <code>AUTOMATION</code> task.</p>
    #            <p>For information about specifying and updating task parameters, see <a>RegisterTaskWithMaintenanceWindow</a> and <a>UpdateMaintenanceWindowTask</a>.</p>
    #            <note>
    #               <p>
    #                  <code>LoggingInfo</code> has been deprecated. To specify an Amazon Simple Storage Service (Amazon S3) bucket to contain logs, instead use the
    #         <code>OutputS3BucketName</code> and <code>OutputS3KeyPrefix</code> options in the <code>TaskInvocationParameters</code> structure.
    #         For information about how Amazon Web Services Systems Manager handles these options for the supported maintenance
    #         window task types, see <a>MaintenanceWindowTaskInvocationParameters</a>.</p>
    #
    #               <p>
    #                  <code>TaskParameters</code> has been deprecated. To specify parameters to pass to a task when it runs,
    #         instead use the <code>Parameters</code> option in the <code>TaskInvocationParameters</code> structure. For information
    #         about how Systems Manager handles these options for the supported maintenance window task
    #         types, see <a>MaintenanceWindowTaskInvocationParameters</a>.</p>
    #               <p>For <code>AUTOMATION</code> task types, Amazon Web Services Systems Manager ignores any values specified for these
    #       parameters.</p>
    #            </note>
    #
    #   @return [Hash<String, Array<String>>]
    #
    MaintenanceWindowAutomationParameters = ::Struct.new(
      :document_version,
      :parameters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the information about an execution of a maintenance window. </p>
    #
    # @!attribute window_id
    #   <p>The ID of the maintenance window.</p>
    #
    #   @return [String]
    #
    # @!attribute window_execution_id
    #   <p>The ID of the maintenance window execution.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the execution.</p>
    #
    #   Enum, one of: ["PENDING", "IN_PROGRESS", "SUCCESS", "FAILED", "TIMED_OUT", "CANCELLING", "CANCELLED", "SKIPPED_OVERLAPPING"]
    #
    #   @return [String]
    #
    # @!attribute status_details
    #   <p>The details explaining the status. Not available for all status values.</p>
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The time the execution started.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The time the execution finished.</p>
    #
    #   @return [Time]
    #
    MaintenanceWindowExecution = ::Struct.new(
      :window_id,
      :window_execution_id,
      :status,
      :status_details,
      :start_time,
      :end_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for MaintenanceWindowExecutionStatus
    #
    module MaintenanceWindowExecutionStatus
      # No documentation available.
      #
      Pending = "PENDING"

      # No documentation available.
      #
      InProgress = "IN_PROGRESS"

      # No documentation available.
      #
      Success = "SUCCESS"

      # No documentation available.
      #
      Failed = "FAILED"

      # No documentation available.
      #
      TimedOut = "TIMED_OUT"

      # No documentation available.
      #
      Cancelling = "CANCELLING"

      # No documentation available.
      #
      Cancelled = "CANCELLED"

      # No documentation available.
      #
      SkippedOverlapping = "SKIPPED_OVERLAPPING"
    end

    # <p>Information about a task execution performed as part of a maintenance window
    #    execution.</p>
    #
    # @!attribute window_execution_id
    #   <p>The ID of the maintenance window execution that ran the task.</p>
    #
    #   @return [String]
    #
    # @!attribute task_execution_id
    #   <p>The ID of the specific task execution in the maintenance window execution.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the task execution.</p>
    #
    #   Enum, one of: ["PENDING", "IN_PROGRESS", "SUCCESS", "FAILED", "TIMED_OUT", "CANCELLING", "CANCELLED", "SKIPPED_OVERLAPPING"]
    #
    #   @return [String]
    #
    # @!attribute status_details
    #   <p>The details explaining the status of the task execution. Not available for all status
    #      values.</p>
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The time the task execution started.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The time the task execution finished.</p>
    #
    #   @return [Time]
    #
    # @!attribute task_arn
    #   <p>The Amazon Resource Name (ARN) of the task that ran.</p>
    #
    #   @return [String]
    #
    # @!attribute task_type
    #   <p>The type of task that ran.</p>
    #
    #   Enum, one of: ["RUN_COMMAND", "AUTOMATION", "STEP_FUNCTIONS", "LAMBDA"]
    #
    #   @return [String]
    #
    MaintenanceWindowExecutionTaskIdentity = ::Struct.new(
      :window_execution_id,
      :task_execution_id,
      :status,
      :status_details,
      :start_time,
      :end_time,
      :task_arn,
      :task_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the information about a task invocation for a particular target as part of a task
    #    execution performed as part of a maintenance window execution.</p>
    #
    # @!attribute window_execution_id
    #   <p>The ID of the maintenance window execution that ran the task.</p>
    #
    #   @return [String]
    #
    # @!attribute task_execution_id
    #   <p>The ID of the specific task execution in the maintenance window execution.</p>
    #
    #   @return [String]
    #
    # @!attribute invocation_id
    #   <p>The ID of the task invocation.</p>
    #
    #   @return [String]
    #
    # @!attribute execution_id
    #   <p>The ID of the action performed in the service that actually handled the task invocation. If
    #      the task type is <code>RUN_COMMAND</code>, this value is the command ID.</p>
    #
    #   @return [String]
    #
    # @!attribute task_type
    #   <p>The task type.</p>
    #
    #   Enum, one of: ["RUN_COMMAND", "AUTOMATION", "STEP_FUNCTIONS", "LAMBDA"]
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>The parameters that were provided for the invocation when it was run.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the task invocation.</p>
    #
    #   Enum, one of: ["PENDING", "IN_PROGRESS", "SUCCESS", "FAILED", "TIMED_OUT", "CANCELLING", "CANCELLED", "SKIPPED_OVERLAPPING"]
    #
    #   @return [String]
    #
    # @!attribute status_details
    #   <p>The details explaining the status of the task invocation. Not available for all status
    #      values. </p>
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The time the invocation started.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The time the invocation finished.</p>
    #
    #   @return [Time]
    #
    # @!attribute owner_information
    #   <p>User-provided value that was specified when the target was registered with the maintenance
    #      window. This was also included in any Amazon CloudWatch Events events raised during the task
    #      invocation.</p>
    #
    #   @return [String]
    #
    # @!attribute window_target_id
    #   <p>The ID of the target definition in this maintenance window the invocation was performed
    #      for.</p>
    #
    #   @return [String]
    #
    MaintenanceWindowExecutionTaskInvocationIdentity = ::Struct.new(
      :window_execution_id,
      :task_execution_id,
      :invocation_id,
      :execution_id,
      :task_type,
      :parameters,
      :status,
      :status_details,
      :start_time,
      :end_time,
      :owner_information,
      :window_target_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::SSM::Types::MaintenanceWindowExecutionTaskInvocationIdentity "\
          "window_execution_id=#{window_execution_id || 'nil'}, "\
          "task_execution_id=#{task_execution_id || 'nil'}, "\
          "invocation_id=#{invocation_id || 'nil'}, "\
          "execution_id=#{execution_id || 'nil'}, "\
          "task_type=#{task_type || 'nil'}, "\
          "parameters=\"[SENSITIVE]\", "\
          "status=#{status || 'nil'}, "\
          "status_details=#{status_details || 'nil'}, "\
          "start_time=#{start_time || 'nil'}, "\
          "end_time=#{end_time || 'nil'}, "\
          "owner_information=\"[SENSITIVE]\", "\
          "window_target_id=#{window_target_id || 'nil'}>"
      end
    end

    # <p>Filter used in the request. Supported filter keys depend on the API operation that includes
    #    the filter. API operations that use <code>MaintenanceWindowFilter></code> include the
    #    following:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>DescribeMaintenanceWindowExecutions</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DescribeMaintenanceWindowExecutionTaskInvocations</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DescribeMaintenanceWindowExecutionTasks</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DescribeMaintenanceWindows</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DescribeMaintenanceWindowTargets</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DescribeMaintenanceWindowTasks</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @!attribute key
    #   <p>The name of the filter.</p>
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>The filter values.</p>
    #
    #   @return [Array<String>]
    #
    MaintenanceWindowFilter = ::Struct.new(
      :key,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the maintenance window.</p>
    #
    # @!attribute window_id
    #   <p>The ID of the maintenance window.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the maintenance window.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the maintenance window.</p>
    #
    #   @return [String]
    #
    # @!attribute enabled
    #   <p>Indicates whether the maintenance window is enabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute duration
    #   <p>The duration of the maintenance window in hours.</p>
    #
    #   @return [Integer]
    #
    # @!attribute cutoff
    #   <p>The number of hours before the end of the maintenance window that Amazon Web Services Systems Manager stops scheduling
    #      new tasks for execution.</p>
    #
    #   @return [Integer]
    #
    # @!attribute schedule
    #   <p>The schedule of the maintenance window in the form of a cron or rate expression.</p>
    #
    #   @return [String]
    #
    # @!attribute schedule_timezone
    #   <p>The time zone that the scheduled maintenance window executions are based on, in Internet
    #      Assigned Numbers Authority (IANA) format.</p>
    #
    #   @return [String]
    #
    # @!attribute schedule_offset
    #   <p>The number of days to wait to run a maintenance window after the scheduled cron expression
    #      date and time.</p>
    #
    #   @return [Integer]
    #
    # @!attribute end_date
    #   <p>The date and time, in ISO-8601 Extended format, for when the maintenance window is scheduled
    #      to become inactive.</p>
    #
    #   @return [String]
    #
    # @!attribute start_date
    #   <p>The date and time, in ISO-8601 Extended format, for when the maintenance window is scheduled
    #      to become active.</p>
    #
    #   @return [String]
    #
    # @!attribute next_execution_time
    #   <p>The next time the maintenance window will actually run, taking into account any specified
    #      times for the maintenance window to become active or inactive.</p>
    #
    #   @return [String]
    #
    MaintenanceWindowIdentity = ::Struct.new(
      :window_id,
      :name,
      :description,
      :enabled,
      :duration,
      :cutoff,
      :schedule,
      :schedule_timezone,
      :schedule_offset,
      :end_date,
      :start_date,
      :next_execution_time,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.enabled ||= false
        self.duration ||= 0
        self.cutoff ||= 0
      end

      def to_s
        "#<struct AWS::SDK::SSM::Types::MaintenanceWindowIdentity "\
          "window_id=#{window_id || 'nil'}, "\
          "name=#{name || 'nil'}, "\
          "description=\"[SENSITIVE]\", "\
          "enabled=#{enabled || 'nil'}, "\
          "duration=#{duration || 'nil'}, "\
          "cutoff=#{cutoff || 'nil'}, "\
          "schedule=#{schedule || 'nil'}, "\
          "schedule_timezone=#{schedule_timezone || 'nil'}, "\
          "schedule_offset=#{schedule_offset || 'nil'}, "\
          "end_date=#{end_date || 'nil'}, "\
          "start_date=#{start_date || 'nil'}, "\
          "next_execution_time=#{next_execution_time || 'nil'}>"
      end
    end

    # <p>The maintenance window to which the specified target belongs.</p>
    #
    # @!attribute window_id
    #   <p>The ID of the maintenance window.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the maintenance window.</p>
    #
    #   @return [String]
    #
    MaintenanceWindowIdentityForTarget = ::Struct.new(
      :window_id,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The parameters for a <code>LAMBDA</code> task type.</p>
    #          <p>For information about specifying and updating task parameters, see <a>RegisterTaskWithMaintenanceWindow</a> and <a>UpdateMaintenanceWindowTask</a>.</p>
    #          <note>
    #             <p>
    #                <code>LoggingInfo</code> has been deprecated. To specify an Amazon Simple Storage Service (Amazon S3) bucket to contain logs, instead use the
    #       <code>OutputS3BucketName</code> and <code>OutputS3KeyPrefix</code> options in the <code>TaskInvocationParameters</code> structure.
    #       For information about how Amazon Web Services Systems Manager handles these options for the supported maintenance
    #       window task types, see <a>MaintenanceWindowTaskInvocationParameters</a>.</p>
    #
    #             <p>
    #                <code>TaskParameters</code> has been deprecated. To specify parameters to pass to a task when it runs,
    #       instead use the <code>Parameters</code> option in the <code>TaskInvocationParameters</code> structure. For information
    #       about how Systems Manager handles these options for the supported maintenance window task
    #       types, see <a>MaintenanceWindowTaskInvocationParameters</a>.</p>
    #             <p>For Lambda tasks, Systems Manager ignores any values specified for TaskParameters and
    #     LoggingInfo.</p>
    #          </note>
    #
    # @!attribute client_context
    #   <p>Pass client-specific information to the Lambda function that you are
    #      invoking. You can then process the client information in your Lambda function as you
    #      choose through the context variable.</p>
    #
    #   @return [String]
    #
    # @!attribute qualifier
    #   <p>(Optional) Specify an Lambda function version or alias name. If you specify a
    #      function version, the operation uses the qualified function Amazon Resource Name (ARN) to invoke
    #      a specific Lambda function. If you specify an alias name, the operation uses the
    #      alias ARN to invoke the Lambda function version to which the alias points.</p>
    #
    #   @return [String]
    #
    # @!attribute payload
    #   <p>JSON to provide to your Lambda function as input.</p>
    #
    #   @return [String]
    #
    MaintenanceWindowLambdaParameters = ::Struct.new(
      :client_context,
      :qualifier,
      :payload,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::SSM::Types::MaintenanceWindowLambdaParameters "\
          "client_context=#{client_context || 'nil'}, "\
          "qualifier=#{qualifier || 'nil'}, "\
          "payload=\"[SENSITIVE]\">"
      end
    end

    # Includes enum constants for MaintenanceWindowResourceType
    #
    module MaintenanceWindowResourceType
      # No documentation available.
      #
      Instance = "INSTANCE"

      # No documentation available.
      #
      ResourceGroup = "RESOURCE_GROUP"
    end

    # <p>The parameters for a <code>RUN_COMMAND</code> task type.</p>
    #          <p>For information about specifying and updating task parameters, see <a>RegisterTaskWithMaintenanceWindow</a> and <a>UpdateMaintenanceWindowTask</a>.</p>
    #          <note>
    #             <p>
    #                <code>LoggingInfo</code> has been deprecated. To specify an Amazon Simple Storage Service (Amazon S3) bucket to contain logs, instead use the
    #       <code>OutputS3BucketName</code> and <code>OutputS3KeyPrefix</code> options in the <code>TaskInvocationParameters</code> structure.
    #       For information about how Amazon Web Services Systems Manager handles these options for the supported maintenance
    #       window task types, see <a>MaintenanceWindowTaskInvocationParameters</a>.</p>
    #
    #             <p>
    #                <code>TaskParameters</code> has been deprecated. To specify parameters to pass to a task when it runs,
    #       instead use the <code>Parameters</code> option in the <code>TaskInvocationParameters</code> structure. For information
    #       about how Systems Manager handles these options for the supported maintenance window task
    #       types, see <a>MaintenanceWindowTaskInvocationParameters</a>.</p>
    #             <p>For <code>RUN_COMMAND</code> tasks, Systems Manager uses specified values for
    #      <code>TaskParameters</code> and <code>LoggingInfo</code> only if no values are specified for
    #      <code>TaskInvocationParameters</code>. </p>
    #          </note>
    #
    # @!attribute comment
    #   <p>Information about the commands to run.</p>
    #
    #   @return [String]
    #
    # @!attribute cloud_watch_output_config
    #   <p>Configuration options for sending command output to Amazon CloudWatch Logs.</p>
    #
    #   @return [CloudWatchOutputConfig]
    #
    # @!attribute document_hash
    #   <p>The SHA-256 or SHA-1 hash created by the system when the document was created. SHA-1 hashes
    #      have been deprecated.</p>
    #
    #   @return [String]
    #
    # @!attribute document_hash_type
    #   <p>SHA-256 or SHA-1. SHA-1 hashes have been deprecated.</p>
    #
    #   Enum, one of: ["Sha256", "Sha1"]
    #
    #   @return [String]
    #
    # @!attribute document_version
    #   <p>The Amazon Web Services Systems Manager document (SSM document) version to use in the request. You can specify
    #       <code>$DEFAULT</code>, <code>$LATEST</code>, or a specific version number. If you run commands
    #      by using the Amazon Web Services CLI, then you must escape the first two options by using a backslash. If you
    #      specify a version number, then you don't need to use the backslash. For example:</p>
    #            <p>
    #               <code>--document-version "\$DEFAULT"</code>
    #            </p>
    #            <p>
    #               <code>--document-version "\$LATEST"</code>
    #            </p>
    #            <p>
    #               <code>--document-version "3"</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute notification_config
    #   <p>Configurations for sending notifications about command status changes on a per-managed node
    #      basis.</p>
    #
    #   @return [NotificationConfig]
    #
    # @!attribute output_s3_bucket_name
    #   <p>The name of the Amazon Simple Storage Service (Amazon S3) bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute output_s3_key_prefix
    #   <p>The S3 bucket subfolder.</p>
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>The parameters for the <code>RUN_COMMAND</code> task execution.</p>
    #
    #   @return [Hash<String, Array<String>>]
    #
    # @!attribute service_role_arn
    #   <p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) service role to use to publish Amazon Simple Notification Service
    #   (Amazon SNS) notifications for maintenance window Run Command tasks.</p>
    #
    #   @return [String]
    #
    # @!attribute timeout_seconds
    #   <p>If this time is reached and the command hasn't already started running, it doesn't
    #      run.</p>
    #
    #   @return [Integer]
    #
    MaintenanceWindowRunCommandParameters = ::Struct.new(
      :comment,
      :cloud_watch_output_config,
      :document_hash,
      :document_hash_type,
      :document_version,
      :notification_config,
      :output_s3_bucket_name,
      :output_s3_key_prefix,
      :parameters,
      :service_role_arn,
      :timeout_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::SSM::Types::MaintenanceWindowRunCommandParameters "\
          "comment=#{comment || 'nil'}, "\
          "cloud_watch_output_config=#{cloud_watch_output_config || 'nil'}, "\
          "document_hash=#{document_hash || 'nil'}, "\
          "document_hash_type=#{document_hash_type || 'nil'}, "\
          "document_version=#{document_version || 'nil'}, "\
          "notification_config=#{notification_config || 'nil'}, "\
          "output_s3_bucket_name=#{output_s3_bucket_name || 'nil'}, "\
          "output_s3_key_prefix=#{output_s3_key_prefix || 'nil'}, "\
          "parameters=\"[SENSITIVE]\", "\
          "service_role_arn=#{service_role_arn || 'nil'}, "\
          "timeout_seconds=#{timeout_seconds || 'nil'}>"
      end
    end

    # <p>The parameters for a <code>STEP_FUNCTIONS</code> task.</p>
    #          <p>For information about specifying and updating task parameters, see <a>RegisterTaskWithMaintenanceWindow</a> and <a>UpdateMaintenanceWindowTask</a>.</p>
    #          <note>
    #             <p>
    #                <code>LoggingInfo</code> has been deprecated. To specify an Amazon Simple Storage Service (Amazon S3) bucket to contain logs, instead use the
    #       <code>OutputS3BucketName</code> and <code>OutputS3KeyPrefix</code> options in the <code>TaskInvocationParameters</code> structure.
    #       For information about how Amazon Web Services Systems Manager handles these options for the supported maintenance
    #       window task types, see <a>MaintenanceWindowTaskInvocationParameters</a>.</p>
    #
    #             <p>
    #                <code>TaskParameters</code> has been deprecated. To specify parameters to pass to a task when it runs,
    #       instead use the <code>Parameters</code> option in the <code>TaskInvocationParameters</code> structure. For information
    #       about how Systems Manager handles these options for the supported maintenance window task
    #       types, see <a>MaintenanceWindowTaskInvocationParameters</a>.</p>
    #             <p>For Step Functions tasks, Systems Manager ignores any values specified for
    #      <code>TaskParameters</code> and <code>LoggingInfo</code>.</p>
    #          </note>
    #
    # @!attribute input
    #   <p>The inputs for the <code>STEP_FUNCTIONS</code> task.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the <code>STEP_FUNCTIONS</code> task.</p>
    #
    #   @return [String]
    #
    MaintenanceWindowStepFunctionsParameters = ::Struct.new(
      :input,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::SSM::Types::MaintenanceWindowStepFunctionsParameters "\
          "input=\"[SENSITIVE]\", "\
          "name=#{name || 'nil'}>"
      end
    end

    # <p>The target registered with the maintenance window.</p>
    #
    # @!attribute window_id
    #   <p>The ID of the maintenance window to register the target with.</p>
    #
    #   @return [String]
    #
    # @!attribute window_target_id
    #   <p>The ID of the target.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The type of target that is being registered with the maintenance window.</p>
    #
    #   Enum, one of: ["INSTANCE", "RESOURCE_GROUP"]
    #
    #   @return [String]
    #
    # @!attribute targets
    #   <p>The targets, either managed nodes or tags.</p>
    #            <p>Specify managed nodes using the following format:</p>
    #            <p>
    #               <code>Key=instanceids,Values=<instanceid1>,<instanceid2></code>
    #            </p>
    #            <p>Tags are specified using the following format:</p>
    #            <p>
    #               <code>Key=<tag name>,Values=<tag value></code>.</p>
    #
    #   @return [Array<Target>]
    #
    # @!attribute owner_information
    #   <p>A user-provided value that will be included in any Amazon CloudWatch Events events that are
    #      raised while running tasks for these targets in this maintenance window.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name for the maintenance window target.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description for the target.</p>
    #
    #   @return [String]
    #
    MaintenanceWindowTarget = ::Struct.new(
      :window_id,
      :window_target_id,
      :resource_type,
      :targets,
      :owner_information,
      :name,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::SSM::Types::MaintenanceWindowTarget "\
          "window_id=#{window_id || 'nil'}, "\
          "window_target_id=#{window_target_id || 'nil'}, "\
          "resource_type=#{resource_type || 'nil'}, "\
          "targets=#{targets || 'nil'}, "\
          "owner_information=\"[SENSITIVE]\", "\
          "name=#{name || 'nil'}, "\
          "description=\"[SENSITIVE]\">"
      end
    end

    # <p>Information about a task defined for a maintenance window.</p>
    #
    # @!attribute window_id
    #   <p>The ID of the maintenance window where the task is registered.</p>
    #
    #   @return [String]
    #
    # @!attribute window_task_id
    #   <p>The task ID.</p>
    #
    #   @return [String]
    #
    # @!attribute task_arn
    #   <p>The resource that the task uses during execution. For <code>RUN_COMMAND</code> and
    #       <code>AUTOMATION</code> task types, <code>TaskArn</code> is the Amazon Web Services Systems Manager (SSM document) name or
    #      ARN. For <code>LAMBDA</code> tasks, it's the function name or ARN. For
    #       <code>STEP_FUNCTIONS</code> tasks, it's the state machine ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of task.</p>
    #
    #   Enum, one of: ["RUN_COMMAND", "AUTOMATION", "STEP_FUNCTIONS", "LAMBDA"]
    #
    #   @return [String]
    #
    # @!attribute targets
    #   <p>The targets (either managed nodes or tags). Managed nodes are specified using
    #       <code>Key=instanceids,Values=<instanceid1>,<instanceid2></code>. Tags are specified
    #      using <code>Key=<tag name>,Values=<tag value></code>.</p>
    #
    #   @return [Array<Target>]
    #
    # @!attribute task_parameters
    #   <p>The parameters that should be passed to the task when it is run.</p>
    #            <note>
    #               <p>
    #                  <code>TaskParameters</code> has been deprecated. To specify parameters to pass to a task when it runs,
    #         instead use the <code>Parameters</code> option in the <code>TaskInvocationParameters</code> structure. For information
    #         about how Systems Manager handles these options for the supported maintenance window task
    #         types, see <a>MaintenanceWindowTaskInvocationParameters</a>.</p>
    #            </note>
    #
    #   @return [Hash<String, MaintenanceWindowTaskParameterValueExpression>]
    #
    # @!attribute priority
    #   <p>The priority of the task in the maintenance window. The lower the number, the higher the
    #      priority. Tasks that have the same priority are scheduled in parallel.</p>
    #
    #   @return [Integer]
    #
    # @!attribute logging_info
    #   <p>Information about an S3 bucket to write task-level logs to.</p>
    #            <note>
    #               <p>
    #                  <code>LoggingInfo</code> has been deprecated. To specify an Amazon Simple Storage Service (Amazon S3) bucket to contain logs, instead use the
    #         <code>OutputS3BucketName</code> and <code>OutputS3KeyPrefix</code> options in the <code>TaskInvocationParameters</code> structure.
    #         For information about how Amazon Web Services Systems Manager handles these options for the supported maintenance
    #         window task types, see <a>MaintenanceWindowTaskInvocationParameters</a>.</p>
    #            </note>
    #
    #   @return [LoggingInfo]
    #
    # @!attribute service_role_arn
    #   <p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) service role to use to publish Amazon Simple Notification Service
    #   (Amazon SNS) notifications for maintenance window Run Command tasks.</p>
    #
    #   @return [String]
    #
    # @!attribute max_concurrency
    #   <p>The maximum number of targets this task can be run for, in parallel.</p>
    #            <note>
    #               <p>Although this element is listed as "Required: No", a value can be omitted only when you are
    #       registering or updating a <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/maintenance-windows-targetless-tasks.html">targetless
    #        task</a> You must provide a value in all other cases.</p>
    #               <p>For maintenance window tasks without a target specified, you can't supply a value for this
    #       option. Instead, the system inserts a placeholder value of <code>1</code>. This value doesn't
    #       affect the running of your task.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute max_errors
    #   <p>The maximum number of errors allowed before this task stops being scheduled.</p>
    #            <note>
    #               <p>Although this element is listed as "Required: No", a value can be omitted only when you are
    #       registering or updating a <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/maintenance-windows-targetless-tasks.html">targetless
    #        task</a> You must provide a value in all other cases.</p>
    #               <p>For maintenance window tasks without a target specified, you can't supply a value for this
    #       option. Instead, the system inserts a placeholder value of <code>1</code>. This value doesn't
    #       affect the running of your task.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The task name.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the task.</p>
    #
    #   @return [String]
    #
    # @!attribute cutoff_behavior
    #   <p>The specification for whether tasks should continue to run after the cutoff time specified
    #      in the maintenance windows is reached. </p>
    #
    #   Enum, one of: ["CONTINUE_TASK", "CANCEL_TASK"]
    #
    #   @return [String]
    #
    MaintenanceWindowTask = ::Struct.new(
      :window_id,
      :window_task_id,
      :task_arn,
      :type,
      :targets,
      :task_parameters,
      :priority,
      :logging_info,
      :service_role_arn,
      :max_concurrency,
      :max_errors,
      :name,
      :description,
      :cutoff_behavior,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.priority ||= 0
      end

      def to_s
        "#<struct AWS::SDK::SSM::Types::MaintenanceWindowTask "\
          "window_id=#{window_id || 'nil'}, "\
          "window_task_id=#{window_task_id || 'nil'}, "\
          "task_arn=#{task_arn || 'nil'}, "\
          "type=#{type || 'nil'}, "\
          "targets=#{targets || 'nil'}, "\
          "task_parameters=\"[SENSITIVE]\", "\
          "priority=#{priority || 'nil'}, "\
          "logging_info=#{logging_info || 'nil'}, "\
          "service_role_arn=#{service_role_arn || 'nil'}, "\
          "max_concurrency=#{max_concurrency || 'nil'}, "\
          "max_errors=#{max_errors || 'nil'}, "\
          "name=#{name || 'nil'}, "\
          "description=\"[SENSITIVE]\", "\
          "cutoff_behavior=#{cutoff_behavior || 'nil'}>"
      end
    end

    # Includes enum constants for MaintenanceWindowTaskCutoffBehavior
    #
    module MaintenanceWindowTaskCutoffBehavior
      # No documentation available.
      #
      ContinueTask = "CONTINUE_TASK"

      # No documentation available.
      #
      CancelTask = "CANCEL_TASK"
    end

    # <p>The parameters for task execution.</p>
    #
    # @!attribute run_command
    #   <p>The parameters for a <code>RUN_COMMAND</code> task type.</p>
    #
    #   @return [MaintenanceWindowRunCommandParameters]
    #
    # @!attribute automation
    #   <p>The parameters for an <code>AUTOMATION</code> task type.</p>
    #
    #   @return [MaintenanceWindowAutomationParameters]
    #
    # @!attribute step_functions
    #   <p>The parameters for a <code>STEP_FUNCTIONS</code> task type.</p>
    #
    #   @return [MaintenanceWindowStepFunctionsParameters]
    #
    # @!attribute lambda
    #   <p>The parameters for a <code>LAMBDA</code> task type.</p>
    #
    #   @return [MaintenanceWindowLambdaParameters]
    #
    MaintenanceWindowTaskInvocationParameters = ::Struct.new(
      :run_command,
      :automation,
      :step_functions,
      :lambda,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Defines the values for a task parameter.</p>
    #
    # @note
    #   This shape is sensitive and must be handled with care.
    #
    # @!attribute values
    #   <p>This field contains an array of 0 or more strings, each 1 to 255 characters in
    #      length.</p>
    #
    #   @return [Array<String>]
    #
    MaintenanceWindowTaskParameterValueExpression = ::Struct.new(
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::SSM::Types::MaintenanceWindowTaskParameterValueExpression [SENSITIVE]>"
      end
    end

    # Includes enum constants for MaintenanceWindowTaskType
    #
    module MaintenanceWindowTaskType
      # No documentation available.
      #
      RunCommand = "RUN_COMMAND"

      # No documentation available.
      #
      Automation = "AUTOMATION"

      # No documentation available.
      #
      StepFunctions = "STEP_FUNCTIONS"

      # No documentation available.
      #
      Lambda = "LAMBDA"
    end

    # <p>The size limit of a document is 64 KB.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    MaxDocumentSizeExceeded = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Metadata to assign to an Application Manager application.</p>
    #
    # @!attribute value
    #   <p>Metadata value to assign to an Application Manager application.</p>
    #
    #   @return [String]
    #
    MetadataValue = ::Struct.new(
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the document that you want to share.</p>
    #
    #   @return [String]
    #
    # @!attribute permission_type
    #   <p>The permission type for the document. The permission type can be
    #      <i>Share</i>.</p>
    #
    #   Enum, one of: ["Share"]
    #
    #   @return [String]
    #
    # @!attribute account_ids_to_add
    #   <p>The Amazon Web Services user accounts that should have access to the document. The account IDs can
    #      either be a group of account IDs or <i>All</i>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute account_ids_to_remove
    #   <p>The Amazon Web Services user accounts that should no longer have access to the document. The Amazon Web Services
    #      user account can either be a group of account IDs or <i>All</i>. This action has a
    #      higher priority than <i>AccountIdsToAdd</i>. If you specify an account ID to add
    #      and the same ID to remove, the system removes access to the document.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute shared_document_version
    #   <p>(Optional) The version of the document to share. If it isn't specified, the system choose
    #      the <code>Default</code> version to share.</p>
    #
    #   @return [String]
    #
    ModifyDocumentPermissionInput = ::Struct.new(
      :name,
      :permission_type,
      :account_ids_to_add,
      :account_ids_to_remove,
      :shared_document_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    ModifyDocumentPermissionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A summary of resources that aren't compliant. The summary is organized according to resource
    #    type.</p>
    #
    # @!attribute non_compliant_count
    #   <p>The total number of compliance items that aren't compliant.</p>
    #
    #   @return [Integer]
    #
    # @!attribute severity_summary
    #   <p>A summary of the non-compliance severity by compliance type</p>
    #
    #   @return [SeveritySummary]
    #
    NonCompliantSummary = ::Struct.new(
      :non_compliant_count,
      :severity_summary,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.non_compliant_count ||= 0
      end
    end

    # <p>Configurations for sending notifications.</p>
    #
    # @!attribute notification_arn
    #   <p>An Amazon Resource Name (ARN) for an Amazon Simple Notification Service (Amazon SNS) topic. Run
    #      Command pushes notifications about command status changes to this topic.</p>
    #
    #   @return [String]
    #
    # @!attribute notification_events
    #   <p>The different events for which you can receive notifications. To learn more about these
    #      events, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/monitoring-sns-notifications.html">Monitoring Systems Manager status
    #       changes using Amazon SNS notifications</a> in the
    #       <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute notification_type
    #   <p>The type of notification.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Command</code>: Receive notification when the status of a command changes.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Invocation</code>: For commands sent to multiple managed nodes, receive notification
    #        on a per-node basis when the status of a command changes. </p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["Command", "Invocation"]
    #
    #   @return [String]
    #
    NotificationConfig = ::Struct.new(
      :notification_arn,
      :notification_events,
      :notification_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for NotificationEvent
    #
    module NotificationEvent
      # No documentation available.
      #
      ALL = "All"

      # No documentation available.
      #
      IN_PROGRESS = "InProgress"

      # No documentation available.
      #
      SUCCESS = "Success"

      # No documentation available.
      #
      TIMED_OUT = "TimedOut"

      # No documentation available.
      #
      CANCELLED = "Cancelled"

      # No documentation available.
      #
      FAILED = "Failed"
    end

    # Includes enum constants for NotificationType
    #
    module NotificationType
      # No documentation available.
      #
      Command = "Command"

      # No documentation available.
      #
      Invocation = "Invocation"
    end

    # Includes enum constants for OperatingSystem
    #
    module OperatingSystem
      # No documentation available.
      #
      Windows = "WINDOWS"

      # No documentation available.
      #
      AmazonLinux = "AMAZON_LINUX"

      # No documentation available.
      #
      AmazonLinux2 = "AMAZON_LINUX_2"

      # No documentation available.
      #
      Ubuntu = "UBUNTU"

      # No documentation available.
      #
      RedhatEnterpriseLinux = "REDHAT_ENTERPRISE_LINUX"

      # No documentation available.
      #
      Suse = "SUSE"

      # No documentation available.
      #
      CentOS = "CENTOS"

      # No documentation available.
      #
      OracleLinux = "ORACLE_LINUX"

      # No documentation available.
      #
      Debian = "DEBIAN"

      # No documentation available.
      #
      MacOS = "MACOS"

      # No documentation available.
      #
      Raspbian = "RASPBIAN"

      # No documentation available.
      #
      Rocky_Linux = "ROCKY_LINUX"
    end

    # <p>One or more aggregators for viewing counts of OpsData using different dimensions such as
    #     <code>Source</code>, <code>CreatedTime</code>, or <code>Source and CreatedTime</code>, to name a
    #    few.</p>
    #
    # @!attribute aggregator_type
    #   <p>Either a <code>Range</code> or <code>Count</code> aggregator for limiting an OpsData
    #      summary.</p>
    #
    #   @return [String]
    #
    # @!attribute type_name
    #   <p>The data type name to use for viewing counts of OpsData.</p>
    #
    #   @return [String]
    #
    # @!attribute attribute_name
    #   <p>The name of an OpsData attribute on which to limit the count of OpsData.</p>
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>The aggregator value.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute filters
    #   <p>The aggregator filters.</p>
    #
    #   @return [Array<OpsFilter>]
    #
    # @!attribute aggregators
    #   <p>A nested aggregator for viewing counts of OpsData.</p>
    #
    #   @return [Array<OpsAggregator>]
    #
    OpsAggregator = ::Struct.new(
      :aggregator_type,
      :type_name,
      :attribute_name,
      :values,
      :filters,
      :aggregators,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The result of the query.</p>
    #
    # @!attribute id
    #   <p>The query ID.</p>
    #
    #   @return [String]
    #
    # @!attribute data
    #   <p>The data returned by the query.</p>
    #
    #   @return [Hash<String, OpsEntityItem>]
    #
    OpsEntity = ::Struct.new(
      :id,
      :data,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The OpsData summary.</p>
    #
    # @!attribute capture_time
    #   <p>The time the OpsData was captured.</p>
    #
    #   @return [String]
    #
    # @!attribute content
    #   <p>The details of an OpsData summary.</p>
    #
    #   @return [Array<Hash<String, String>>]
    #
    OpsEntityItem = ::Struct.new(
      :capture_time,
      :content,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A filter for viewing OpsData summaries.</p>
    #
    # @!attribute key
    #   <p>The name of the filter.</p>
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>The filter value.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute type
    #   <p>The type of filter.</p>
    #
    #   Enum, one of: ["Equal", "NotEqual", "BeginWith", "LessThan", "GreaterThan", "Exists"]
    #
    #   @return [String]
    #
    OpsFilter = ::Struct.new(
      :key,
      :values,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for OpsFilterOperatorType
    #
    module OpsFilterOperatorType
      # No documentation available.
      #
      EQUAL = "Equal"

      # No documentation available.
      #
      NOT_EQUAL = "NotEqual"

      # No documentation available.
      #
      BEGIN_WITH = "BeginWith"

      # No documentation available.
      #
      LESS_THAN = "LessThan"

      # No documentation available.
      #
      GREATER_THAN = "GreaterThan"

      # No documentation available.
      #
      EXISTS = "Exists"
    end

    # <p>Operations engineers and IT professionals use Amazon Web Services Systems Manager OpsCenter to view, investigate, and
    #    remediate operational work items (OpsItems) impacting the performance and health of their Amazon Web Services
    #    resources. OpsCenter is integrated with Amazon EventBridge and Amazon CloudWatch. This
    #    means you can configure these services to automatically create an OpsItem in OpsCenter when a
    #     CloudWatch alarm enters the ALARM state or when EventBridge processes an event from
    #    any Amazon Web Services service that publishes events. Configuring Amazon CloudWatch alarms and EventBridge events to automatically create OpsItems allows you to quickly diagnose and remediate
    #    issues with Amazon Web Services resources from a single console.</p>
    #          <p>To help you diagnose issues, each OpsItem includes contextually relevant information such as
    #    the name and ID of the Amazon Web Services resource that generated the OpsItem, alarm or event details, alarm
    #    history, and an alarm timeline graph. For the Amazon Web Services resource, OpsCenter aggregates information
    #    from Config, CloudTrail logs, and EventBridge, so you don't have
    #    to navigate across multiple console pages during your investigation. For more information, see
    #     <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter.html">OpsCenter</a> in the <i>Amazon Web Services Systems Manager User Guide</i>. </p>
    #
    # @!attribute created_by
    #   <p>The ARN of the Amazon Web Services account that created the OpsItem.</p>
    #
    #   @return [String]
    #
    # @!attribute ops_item_type
    #   <p>The type of OpsItem. Currently, the only valid values are <code>/aws/changerequest</code>
    #      and <code>/aws/issue</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>The date and time the OpsItem was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute description
    #   <p>The OpsItem description.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified_by
    #   <p>The ARN of the Amazon Web Services account that last updated the OpsItem.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified_time
    #   <p>The date and time the OpsItem was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute notifications
    #   <p>The Amazon Resource Name (ARN) of an Amazon Simple Notification Service (Amazon SNS) topic where
    #      notifications are sent when this OpsItem is edited or changed.</p>
    #
    #   @return [Array<OpsItemNotification>]
    #
    # @!attribute priority
    #   <p>The importance of this OpsItem in relation to other OpsItems in the system.</p>
    #
    #   @return [Integer]
    #
    # @!attribute related_ops_items
    #   <p>One or more OpsItems that share something in common with the current OpsItem. For example,
    #      related OpsItems can include OpsItems with similar error messages, impacted resources, or
    #      statuses for the impacted resource.</p>
    #
    #   @return [Array<RelatedOpsItem>]
    #
    # @!attribute status
    #   <p>The OpsItem status. Status can be <code>Open</code>, <code>In Progress</code>, or
    #       <code>Resolved</code>. For more information, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-working-with-OpsItems-editing-details.html">Editing OpsItem details</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #
    #   Enum, one of: ["Open", "InProgress", "Resolved", "Pending", "TimedOut", "Cancelling", "Cancelled", "Failed", "CompletedWithSuccess", "CompletedWithFailure", "Scheduled", "RunbookInProgress", "PendingChangeCalendarOverride", "ChangeCalendarOverrideApproved", "ChangeCalendarOverrideRejected", "PendingApproval", "Approved", "Rejected", "Closed"]
    #
    #   @return [String]
    #
    # @!attribute ops_item_id
    #   <p>The ID of the OpsItem.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version of this OpsItem. Each time the OpsItem is edited the version number increments
    #      by one.</p>
    #
    #   @return [String]
    #
    # @!attribute title
    #   <p>A short heading that describes the nature of the OpsItem and the impacted resource.</p>
    #
    #   @return [String]
    #
    # @!attribute source
    #   <p>The origin of the OpsItem, such as Amazon EC2 or Systems Manager. The impacted resource is a subset of
    #      source.</p>
    #
    #   @return [String]
    #
    # @!attribute operational_data
    #   <p>Operational data is custom data that provides useful reference details about the OpsItem.
    #      For example, you can specify log files, error strings, license keys, troubleshooting tips, or
    #      other relevant data. You enter operational data as key-value pairs. The key has a maximum length
    #      of 128 characters. The value has a maximum size of 20 KB.</p>
    #            <important>
    #               <p>Operational data keys <i>can't</i> begin with the following:
    #        <code>amazon</code>, <code>aws</code>, <code>amzn</code>, <code>ssm</code>,
    #        <code>/amazon</code>, <code>/aws</code>, <code>/amzn</code>, <code>/ssm</code>.</p>
    #            </important>
    #            <p>You can choose to make the data searchable by other users in the account or you can restrict
    #      search access. Searchable data means that all users with access to the OpsItem Overview page (as
    #      provided by the <a>DescribeOpsItems</a> API operation) can view and search on the
    #      specified data. Operational data that isn't searchable is only viewable by users who have access
    #      to the OpsItem (as provided by the <a>GetOpsItem</a> API operation).</p>
    #            <p>Use the <code>/aws/resources</code> key in OperationalData to specify a related resource in
    #      the request. Use the <code>/aws/automations</code> key in OperationalData to associate an
    #      Automation runbook with the OpsItem. To view Amazon Web Services CLI example commands that use these keys, see
    #       <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-creating-OpsItems.html OpsCenter-manually-create-OpsItems">Creating OpsItems manually</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #
    #   @return [Hash<String, OpsItemDataValue>]
    #
    # @!attribute category
    #   <p>An OpsItem category. Category options include: Availability, Cost, Performance, Recovery,
    #      Security.</p>
    #
    #   @return [String]
    #
    # @!attribute severity
    #   <p>The severity of the OpsItem. Severity options range from 1 to 4.</p>
    #
    #   @return [String]
    #
    # @!attribute actual_start_time
    #   <p>The time a runbook workflow started. Currently reported only for the OpsItem type
    #       <code>/aws/changerequest</code>.</p>
    #
    #   @return [Time]
    #
    # @!attribute actual_end_time
    #   <p>The time a runbook workflow ended. Currently reported only for the OpsItem type
    #       <code>/aws/changerequest</code>.</p>
    #
    #   @return [Time]
    #
    # @!attribute planned_start_time
    #   <p>The time specified in a change request for a runbook workflow to start. Currently supported
    #      only for the OpsItem type <code>/aws/changerequest</code>.</p>
    #
    #   @return [Time]
    #
    # @!attribute planned_end_time
    #   <p>The time specified in a change request for a runbook workflow to end. Currently supported
    #      only for the OpsItem type <code>/aws/changerequest</code>.</p>
    #
    #   @return [Time]
    #
    OpsItem = ::Struct.new(
      :created_by,
      :ops_item_type,
      :created_time,
      :description,
      :last_modified_by,
      :last_modified_time,
      :notifications,
      :priority,
      :related_ops_items,
      :status,
      :ops_item_id,
      :version,
      :title,
      :source,
      :operational_data,
      :category,
      :severity,
      :actual_start_time,
      :actual_end_time,
      :planned_start_time,
      :planned_end_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The OpsItem already exists.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute ops_item_id
    #
    #   @return [String]
    #
    OpsItemAlreadyExistsException = ::Struct.new(
      :message,
      :ops_item_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for OpsItemDataType
    #
    module OpsItemDataType
      # No documentation available.
      #
      SEARCHABLE_STRING = "SearchableString"

      # No documentation available.
      #
      STRING = "String"
    end

    # <p>An object that defines the value of the key and its type in the OperationalData map.</p>
    #
    # @!attribute value
    #   <p>The value of the OperationalData key.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of key-value pair. Valid types include <code>SearchableString</code> and
    #       <code>String</code>.</p>
    #
    #   Enum, one of: ["SearchableString", "String"]
    #
    #   @return [String]
    #
    OpsItemDataValue = ::Struct.new(
      :value,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a filter for a specific list of OpsItem events. You can filter event information
    #    by using tags. You specify tags by using a key-value pair mapping. </p>
    #
    # @!attribute key
    #   <p>The name of the filter key. Currently, the only supported value is
    #      <code>OpsItemId</code>.</p>
    #
    #   Enum, one of: ["OpsItemId"]
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>The values for the filter, consisting of one or more OpsItem IDs.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute operator
    #   <p>The operator used by the filter call. Currently, the only supported value is
    #       <code>Equal</code>.</p>
    #
    #   Enum, one of: ["Equal"]
    #
    #   @return [String]
    #
    OpsItemEventFilter = ::Struct.new(
      :key,
      :values,
      :operator,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for OpsItemEventFilterKey
    #
    module OpsItemEventFilterKey
      # No documentation available.
      #
      OPSITEM_ID = "OpsItemId"
    end

    # Includes enum constants for OpsItemEventFilterOperator
    #
    module OpsItemEventFilterOperator
      # No documentation available.
      #
      EQUAL = "Equal"
    end

    # <p>Summary information about an OpsItem event or that associated an OpsItem with a related
    #    item.</p>
    #
    # @!attribute ops_item_id
    #   <p>The ID of the OpsItem.</p>
    #
    #   @return [String]
    #
    # @!attribute event_id
    #   <p>The ID of the OpsItem event.</p>
    #
    #   @return [String]
    #
    # @!attribute source
    #   <p>The source of the OpsItem event.</p>
    #
    #   @return [String]
    #
    # @!attribute detail_type
    #   <p>The type of information provided as a detail.</p>
    #
    #   @return [String]
    #
    # @!attribute detail
    #   <p>Specific information about the OpsItem event.</p>
    #
    #   @return [String]
    #
    # @!attribute created_by
    #   <p>Information about the user or resource that created the OpsItem event.</p>
    #
    #   @return [OpsItemIdentity]
    #
    # @!attribute created_time
    #   <p>The date and time the OpsItem event was created.</p>
    #
    #   @return [Time]
    #
    OpsItemEventSummary = ::Struct.new(
      :ops_item_id,
      :event_id,
      :source,
      :detail_type,
      :detail,
      :created_by,
      :created_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes an OpsItem filter.</p>
    #
    # @!attribute key
    #   <p>The name of the filter.</p>
    #
    #   Enum, one of: ["Status", "CreatedBy", "Source", "Priority", "Title", "OpsItemId", "CreatedTime", "LastModifiedTime", "ActualStartTime", "ActualEndTime", "PlannedStartTime", "PlannedEndTime", "OperationalData", "OperationalDataKey", "OperationalDataValue", "ResourceId", "AutomationId", "Category", "Severity", "OpsItemType", "ChangeRequestByRequesterArn", "ChangeRequestByRequesterName", "ChangeRequestByApproverArn", "ChangeRequestByApproverName", "ChangeRequestByTemplate", "ChangeRequestByTargetsResourceGroup", "InsightByType"]
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>The filter value.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute operator
    #   <p>The operator used by the filter call.</p>
    #
    #   Enum, one of: ["Equal", "Contains", "GreaterThan", "LessThan"]
    #
    #   @return [String]
    #
    OpsItemFilter = ::Struct.new(
      :key,
      :values,
      :operator,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for OpsItemFilterKey
    #
    module OpsItemFilterKey
      # No documentation available.
      #
      STATUS = "Status"

      # No documentation available.
      #
      CREATED_BY = "CreatedBy"

      # No documentation available.
      #
      SOURCE = "Source"

      # No documentation available.
      #
      PRIORITY = "Priority"

      # No documentation available.
      #
      TITLE = "Title"

      # No documentation available.
      #
      OPSITEM_ID = "OpsItemId"

      # No documentation available.
      #
      CREATED_TIME = "CreatedTime"

      # No documentation available.
      #
      LAST_MODIFIED_TIME = "LastModifiedTime"

      # No documentation available.
      #
      ACTUAL_START_TIME = "ActualStartTime"

      # No documentation available.
      #
      ACTUAL_END_TIME = "ActualEndTime"

      # No documentation available.
      #
      PLANNED_START_TIME = "PlannedStartTime"

      # No documentation available.
      #
      PLANNED_END_TIME = "PlannedEndTime"

      # No documentation available.
      #
      OPERATIONAL_DATA = "OperationalData"

      # No documentation available.
      #
      OPERATIONAL_DATA_KEY = "OperationalDataKey"

      # No documentation available.
      #
      OPERATIONAL_DATA_VALUE = "OperationalDataValue"

      # No documentation available.
      #
      RESOURCE_ID = "ResourceId"

      # No documentation available.
      #
      AUTOMATION_ID = "AutomationId"

      # No documentation available.
      #
      CATEGORY = "Category"

      # No documentation available.
      #
      SEVERITY = "Severity"

      # No documentation available.
      #
      OPSITEM_TYPE = "OpsItemType"

      # No documentation available.
      #
      CHANGE_REQUEST_REQUESTER_ARN = "ChangeRequestByRequesterArn"

      # No documentation available.
      #
      CHANGE_REQUEST_REQUESTER_NAME = "ChangeRequestByRequesterName"

      # No documentation available.
      #
      CHANGE_REQUEST_APPROVER_ARN = "ChangeRequestByApproverArn"

      # No documentation available.
      #
      CHANGE_REQUEST_APPROVER_NAME = "ChangeRequestByApproverName"

      # No documentation available.
      #
      CHANGE_REQUEST_TEMPLATE = "ChangeRequestByTemplate"

      # No documentation available.
      #
      CHANGE_REQUEST_TARGETS_RESOURCE_GROUP = "ChangeRequestByTargetsResourceGroup"

      # No documentation available.
      #
      INSIGHT_TYPE = "InsightByType"
    end

    # Includes enum constants for OpsItemFilterOperator
    #
    module OpsItemFilterOperator
      # No documentation available.
      #
      EQUAL = "Equal"

      # No documentation available.
      #
      CONTAINS = "Contains"

      # No documentation available.
      #
      GREATER_THAN = "GreaterThan"

      # No documentation available.
      #
      LESS_THAN = "LessThan"
    end

    # <p>Information about the user or resource that created an OpsItem event.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the IAM entity that created the OpsItem
    #      event.</p>
    #
    #   @return [String]
    #
    OpsItemIdentity = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A specified parameter argument isn't valid. Verify the available arguments and try
    #    again.</p>
    #
    # @!attribute parameter_names
    #
    #   @return [Array<String>]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    OpsItemInvalidParameterException = ::Struct.new(
      :parameter_names,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request caused OpsItems to exceed one or more quotas. For information about OpsItem
    #    quotas, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-learn-more.html#OpsCenter-learn-more-limits">What are the resource limits for OpsCenter?</a>.</p>
    #
    # @!attribute resource_types
    #
    #   @return [Array<String>]
    #
    # @!attribute limit
    #
    #   @return [Integer]
    #
    # @!attribute limit_type
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    OpsItemLimitExceededException = ::Struct.new(
      :resource_types,
      :limit,
      :limit_type,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.limit ||= 0
      end
    end

    # <p>The specified OpsItem ID doesn't exist. Verify the ID and try again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    OpsItemNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A notification about the OpsItem.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of an Amazon Simple Notification Service (Amazon SNS) topic where
    #      notifications are sent when this OpsItem is edited or changed.</p>
    #
    #   @return [String]
    #
    OpsItemNotification = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The Amazon Resource Name (ARN) is already associated with the OpsItem.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_uri
    #
    #   @return [String]
    #
    # @!attribute ops_item_id
    #
    #   @return [String]
    #
    OpsItemRelatedItemAlreadyExistsException = ::Struct.new(
      :message,
      :resource_uri,
      :ops_item_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The association wasn't found using the parameters you specified in the call. Verify the
    #    information and try again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    OpsItemRelatedItemAssociationNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Summary information about related-item resources for an OpsItem.</p>
    #
    # @!attribute ops_item_id
    #   <p>The OpsItem ID.</p>
    #
    #   @return [String]
    #
    # @!attribute association_id
    #   <p>The association ID.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The resource type.</p>
    #
    #   @return [String]
    #
    # @!attribute association_type
    #   <p>The association type.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_uri
    #   <p>The Amazon Resource Name (ARN) of the related-item resource.</p>
    #
    #   @return [String]
    #
    # @!attribute created_by
    #   <p>Information about the user or resource that created an OpsItem event.</p>
    #
    #   @return [OpsItemIdentity]
    #
    # @!attribute created_time
    #   <p>The time the related-item association was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modified_by
    #   <p>Information about the user or resource that created an OpsItem event.</p>
    #
    #   @return [OpsItemIdentity]
    #
    # @!attribute last_modified_time
    #   <p>The time the related-item association was last updated.</p>
    #
    #   @return [Time]
    #
    OpsItemRelatedItemSummary = ::Struct.new(
      :ops_item_id,
      :association_id,
      :resource_type,
      :association_type,
      :resource_uri,
      :created_by,
      :created_time,
      :last_modified_by,
      :last_modified_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a filter for a specific list of related-item resources. </p>
    #
    # @!attribute key
    #   <p>The name of the filter key. Supported values include <code>ResourceUri</code>,
    #       <code>ResourceType</code>, or <code>AssociationId</code>.</p>
    #
    #   Enum, one of: ["ResourceType", "AssociationId", "ResourceUri"]
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>The values for the filter.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute operator
    #   <p>The operator used by the filter call. The only supported operator is
    #      <code>EQUAL</code>.</p>
    #
    #   Enum, one of: ["Equal"]
    #
    #   @return [String]
    #
    OpsItemRelatedItemsFilter = ::Struct.new(
      :key,
      :values,
      :operator,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for OpsItemRelatedItemsFilterKey
    #
    module OpsItemRelatedItemsFilterKey
      # No documentation available.
      #
      RESOURCE_TYPE = "ResourceType"

      # No documentation available.
      #
      ASSOCIATION_ID = "AssociationId"

      # No documentation available.
      #
      RESOURCE_URI = "ResourceUri"
    end

    # Includes enum constants for OpsItemRelatedItemsFilterOperator
    #
    module OpsItemRelatedItemsFilterOperator
      # No documentation available.
      #
      EQUAL = "Equal"
    end

    # Includes enum constants for OpsItemStatus
    #
    module OpsItemStatus
      # No documentation available.
      #
      OPEN = "Open"

      # No documentation available.
      #
      IN_PROGRESS = "InProgress"

      # No documentation available.
      #
      RESOLVED = "Resolved"

      # No documentation available.
      #
      PENDING = "Pending"

      # No documentation available.
      #
      TIMED_OUT = "TimedOut"

      # No documentation available.
      #
      CANCELLING = "Cancelling"

      # No documentation available.
      #
      CANCELLED = "Cancelled"

      # No documentation available.
      #
      FAILED = "Failed"

      # No documentation available.
      #
      COMPLETED_WITH_SUCCESS = "CompletedWithSuccess"

      # No documentation available.
      #
      COMPLETED_WITH_FAILURE = "CompletedWithFailure"

      # No documentation available.
      #
      SCHEDULED = "Scheduled"

      # No documentation available.
      #
      RUNBOOK_IN_PROGRESS = "RunbookInProgress"

      # No documentation available.
      #
      PENDING_CHANGE_CALENDAR_OVERRIDE = "PendingChangeCalendarOverride"

      # No documentation available.
      #
      CHANGE_CALENDAR_OVERRIDE_APPROVED = "ChangeCalendarOverrideApproved"

      # No documentation available.
      #
      CHANGE_CALENDAR_OVERRIDE_REJECTED = "ChangeCalendarOverrideRejected"

      # No documentation available.
      #
      PENDING_APPROVAL = "PendingApproval"

      # No documentation available.
      #
      APPROVED = "Approved"

      # No documentation available.
      #
      REJECTED = "Rejected"

      # No documentation available.
      #
      CLOSED = "Closed"
    end

    # <p>A count of OpsItems.</p>
    #
    # @!attribute created_by
    #   <p>The Amazon Resource Name (ARN) of the IAM entity that created the
    #      OpsItem.</p>
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>The date and time the OpsItem was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modified_by
    #   <p>The Amazon Resource Name (ARN) of the IAM entity that created the
    #      OpsItem.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified_time
    #   <p>The date and time the OpsItem was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute priority
    #   <p>The importance of this OpsItem in relation to other OpsItems in the system.</p>
    #
    #   @return [Integer]
    #
    # @!attribute source
    #   <p>The impacted Amazon Web Services resource.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The OpsItem status. Status can be <code>Open</code>, <code>In Progress</code>, or
    #       <code>Resolved</code>.</p>
    #
    #   Enum, one of: ["Open", "InProgress", "Resolved", "Pending", "TimedOut", "Cancelling", "Cancelled", "Failed", "CompletedWithSuccess", "CompletedWithFailure", "Scheduled", "RunbookInProgress", "PendingChangeCalendarOverride", "ChangeCalendarOverrideApproved", "ChangeCalendarOverrideRejected", "PendingApproval", "Approved", "Rejected", "Closed"]
    #
    #   @return [String]
    #
    # @!attribute ops_item_id
    #   <p>The ID of the OpsItem.</p>
    #
    #   @return [String]
    #
    # @!attribute title
    #   <p>A short heading that describes the nature of the OpsItem and the impacted resource.</p>
    #
    #   @return [String]
    #
    # @!attribute operational_data
    #   <p>Operational data is custom data that provides useful reference details about the OpsItem.
    #     </p>
    #
    #   @return [Hash<String, OpsItemDataValue>]
    #
    # @!attribute category
    #   <p>A list of OpsItems by category.</p>
    #
    #   @return [String]
    #
    # @!attribute severity
    #   <p>A list of OpsItems by severity.</p>
    #
    #   @return [String]
    #
    # @!attribute ops_item_type
    #   <p>The type of OpsItem. Currently, the only valid values are <code>/aws/changerequest</code>
    #      and <code>/aws/issue</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute actual_start_time
    #   <p>The time a runbook workflow started. Currently reported only for the OpsItem type
    #       <code>/aws/changerequest</code>.</p>
    #
    #   @return [Time]
    #
    # @!attribute actual_end_time
    #   <p>The time a runbook workflow ended. Currently reported only for the OpsItem type
    #       <code>/aws/changerequest</code>.</p>
    #
    #   @return [Time]
    #
    # @!attribute planned_start_time
    #   <p>The time specified in a change request for a runbook workflow to start. Currently supported
    #      only for the OpsItem type <code>/aws/changerequest</code>.</p>
    #
    #   @return [Time]
    #
    # @!attribute planned_end_time
    #   <p>The time specified in a change request for a runbook workflow to end. Currently supported
    #      only for the OpsItem type <code>/aws/changerequest</code>.</p>
    #
    #   @return [Time]
    #
    OpsItemSummary = ::Struct.new(
      :created_by,
      :created_time,
      :last_modified_by,
      :last_modified_time,
      :priority,
      :source,
      :status,
      :ops_item_id,
      :title,
      :operational_data,
      :category,
      :severity,
      :ops_item_type,
      :actual_start_time,
      :actual_end_time,
      :planned_start_time,
      :planned_end_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Operational metadata for an application in Application Manager.</p>
    #
    # @!attribute resource_id
    #   <p>The ID of the Application Manager application.</p>
    #
    #   @return [String]
    #
    # @!attribute ops_metadata_arn
    #   <p>The Amazon Resource Name (ARN) of the OpsMetadata Object or blob.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified_date
    #   <p>The date the OpsMetadata object was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modified_user
    #   <p>The user name who last updated the OpsMetadata object.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date
    #   <p>The date the OpsMetadata objects was created.</p>
    #
    #   @return [Time]
    #
    OpsMetadata = ::Struct.new(
      :resource_id,
      :ops_metadata_arn,
      :last_modified_date,
      :last_modified_user,
      :creation_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An OpsMetadata object already exists for the selected resource.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    OpsMetadataAlreadyExistsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A filter to limit the number of OpsMetadata objects displayed.</p>
    #
    # @!attribute key
    #   <p>A filter key.</p>
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>A filter value.</p>
    #
    #   @return [Array<String>]
    #
    OpsMetadataFilter = ::Struct.new(
      :key,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>One of the arguments passed is invalid. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    OpsMetadataInvalidArgumentException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The OpsMetadata object exceeds the maximum number of OpsMetadata keys that you can assign to
    #    an application in Application Manager.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    OpsMetadataKeyLimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Your account reached the maximum number of OpsMetadata objects allowed by Application Manager. The
    #    maximum is 200 OpsMetadata objects. Delete one or more OpsMetadata object and try again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    OpsMetadataLimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The OpsMetadata object doesn't exist. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    OpsMetadataNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The system is processing too many concurrent updates. Wait a few moments and try
    #    again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    OpsMetadataTooManyUpdatesException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The OpsItem data type to return.</p>
    #
    # @!attribute type_name
    #   <p>Name of the data type. Valid value: <code>AWS:OpsItem</code>,
    #       <code>AWS:EC2InstanceInformation</code>, <code>AWS:OpsItemTrendline</code>, or
    #       <code>AWS:ComplianceSummary</code>.</p>
    #
    #   @return [String]
    #
    OpsResultAttribute = ::Struct.new(
      :type_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the source where the association execution details are stored.</p>
    #
    # @!attribute output_source_id
    #   <p>The ID of the output source, for example the URL of an S3 bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute output_source_type
    #   <p>The type of source where the association execution details are stored, for example, Amazon S3.</p>
    #
    #   @return [String]
    #
    OutputSource = ::Struct.new(
      :output_source_id,
      :output_source_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An Amazon Web Services Systems Manager parameter in Parameter Store.</p>
    #
    # @!attribute name
    #   <p>The name of the parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of parameter. Valid values include the following: <code>String</code>,
    #       <code>StringList</code>, and <code>SecureString</code>.</p>
    #            <note>
    #               <p>If type is <code>StringList</code>, the system returns a comma-separated string with no
    #       spaces between commas in the <code>Value</code> field.</p>
    #            </note>
    #
    #   Enum, one of: ["String", "StringList", "SecureString"]
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The parameter value.</p>
    #            <note>
    #               <p>If type is <code>StringList</code>, the system returns a comma-separated string with no
    #       spaces between commas in the <code>Value</code> field.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The parameter version.</p>
    #
    #   @return [Integer]
    #
    # @!attribute selector
    #   <p>Either the version number or the label used to retrieve the parameter value. Specify
    #      selectors by using one of the following formats:</p>
    #            <p>parameter_name:version</p>
    #            <p>parameter_name:label</p>
    #
    #   @return [String]
    #
    # @!attribute source_result
    #   <p>Applies to parameters that reference information in other Amazon Web Services services.
    #       <code>SourceResult</code> is the raw result or response from the source.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified_date
    #   <p>Date the parameter was last changed or updated and the parameter version was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute data_type
    #   <p>The data type of the parameter, such as <code>text</code> or <code>aws:ec2:image</code>. The
    #      default is <code>text</code>.</p>
    #
    #   @return [String]
    #
    Parameter = ::Struct.new(
      :name,
      :type,
      :value,
      :version,
      :selector,
      :source_result,
      :last_modified_date,
      :arn,
      :data_type,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.version ||= 0
      end

      def to_s
        "#<struct AWS::SDK::SSM::Types::Parameter "\
          "name=#{name || 'nil'}, "\
          "type=#{type || 'nil'}, "\
          "value=\"[SENSITIVE]\", "\
          "version=#{version || 'nil'}, "\
          "selector=#{selector || 'nil'}, "\
          "source_result=#{source_result || 'nil'}, "\
          "last_modified_date=#{last_modified_date || 'nil'}, "\
          "arn=#{arn || 'nil'}, "\
          "data_type=#{data_type || 'nil'}>"
      end
    end

    # <p>The parameter already exists. You can't create duplicate parameters.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ParameterAlreadyExists = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about parameter usage.</p>
    #
    # @!attribute name
    #   <p>The name of the parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of parameter used.</p>
    #
    #   Enum, one of: ["String", "StringList", "SecureString"]
    #
    #   @return [String]
    #
    # @!attribute key_id
    #   <p>The ID of the query key used for this parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified_date
    #   <p>Date the parameter was last changed or updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modified_user
    #   <p>Amazon Resource Name (ARN) of the Amazon Web Services user who last changed the parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>Information about the parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The parameter value.</p>
    #
    #   @return [String]
    #
    # @!attribute allowed_pattern
    #   <p>Parameter names can include the following letters and symbols.</p>
    #            <p>a-zA-Z0-9_.-</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The parameter version.</p>
    #
    #   @return [Integer]
    #
    # @!attribute labels
    #   <p>Labels assigned to the parameter version.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute tier
    #   <p>The parameter tier.</p>
    #
    #   Enum, one of: ["Standard", "Advanced", "Intelligent-Tiering"]
    #
    #   @return [String]
    #
    # @!attribute policies
    #   <p>Information about the policies assigned to a parameter.</p>
    #            <p>
    #               <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-policies.html">Assigning parameter
    #       policies</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #
    #   @return [Array<ParameterInlinePolicy>]
    #
    # @!attribute data_type
    #   <p>The data type of the parameter, such as <code>text</code> or <code>aws:ec2:image</code>. The
    #      default is <code>text</code>.</p>
    #
    #   @return [String]
    #
    ParameterHistory = ::Struct.new(
      :name,
      :type,
      :key_id,
      :last_modified_date,
      :last_modified_user,
      :description,
      :value,
      :allowed_pattern,
      :version,
      :labels,
      :tier,
      :policies,
      :data_type,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.version ||= 0
      end

      def to_s
        "#<struct AWS::SDK::SSM::Types::ParameterHistory "\
          "name=#{name || 'nil'}, "\
          "type=#{type || 'nil'}, "\
          "key_id=#{key_id || 'nil'}, "\
          "last_modified_date=#{last_modified_date || 'nil'}, "\
          "last_modified_user=#{last_modified_user || 'nil'}, "\
          "description=#{description || 'nil'}, "\
          "value=\"[SENSITIVE]\", "\
          "allowed_pattern=#{allowed_pattern || 'nil'}, "\
          "version=#{version || 'nil'}, "\
          "labels=#{labels || 'nil'}, "\
          "tier=#{tier || 'nil'}, "\
          "policies=#{policies || 'nil'}, "\
          "data_type=#{data_type || 'nil'}>"
      end
    end

    # <p>One or more policies assigned to a parameter.</p>
    #
    # @!attribute policy_text
    #   <p>The JSON text of the policy.</p>
    #
    #   @return [String]
    #
    # @!attribute policy_type
    #   <p>The type of policy. Parameter Store, a capability of Amazon Web Services Systems Manager, supports the following
    #      policy types: Expiration, ExpirationNotification, and NoChangeNotification. </p>
    #
    #   @return [String]
    #
    # @!attribute policy_status
    #   <p>The status of the policy. Policies report the following statuses: Pending (the policy hasn't
    #      been enforced or applied yet), Finished (the policy was applied), Failed (the policy wasn't
    #      applied), or InProgress (the policy is being applied now). </p>
    #
    #   @return [String]
    #
    ParameterInlinePolicy = ::Struct.new(
      :policy_text,
      :policy_type,
      :policy_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You have exceeded the number of parameters for this Amazon Web Services account. Delete one or more
    #    parameters and try again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ParameterLimitExceeded = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Parameter Store retains the 100 most recently created versions of a parameter. After this
    #    number of versions has been created, Parameter Store deletes the oldest version when a new one is
    #    created. However, if the oldest version has a <i>label</i> attached to it,
    #    Parameter Store won't delete the version and instead presents this error message:</p>
    #          <p>
    #             <code>An error occurred (ParameterMaxVersionLimitExceeded) when calling the PutParameter
    #     operation: You attempted to create a new version of <i>parameter-name</i> by
    #     calling the PutParameter API with the overwrite flag. Version
    #      <i>version-number</i>, the oldest version, can't be deleted because it has a
    #     label associated with it. Move the label to another version of the parameter, and try
    #     again.</code>
    #          </p>
    #          <p>This safeguard is to prevent parameter versions with mission critical labels assigned to
    #    them from being deleted. To continue creating new parameters, first move the label from the
    #    oldest version of the parameter to a newer one for use in your operations. For information about
    #    moving parameter labels, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-paramstore-labels.html#sysman-paramstore-labels-console-move">Move a parameter label (console)</a> or <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-paramstore-labels.html#sysman-paramstore-labels-cli-move">Move a parameter label (CLI)</a> in the <i>Amazon Web Services Systems Manager User Guide</i>. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ParameterMaxVersionLimitExceeded = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Metadata includes information like the ARN of the last user and the date/time the parameter
    #    was last used.</p>
    #
    # @!attribute name
    #   <p>The parameter name.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of parameter. Valid parameter types include the following: <code>String</code>,
    #       <code>StringList</code>, and <code>SecureString</code>.</p>
    #
    #   Enum, one of: ["String", "StringList", "SecureString"]
    #
    #   @return [String]
    #
    # @!attribute key_id
    #   <p>The ID of the query key used for this parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified_date
    #   <p>Date the parameter was last changed or updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modified_user
    #   <p>Amazon Resource Name (ARN) of the Amazon Web Services user who last changed the parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>Description of the parameter actions.</p>
    #
    #   @return [String]
    #
    # @!attribute allowed_pattern
    #   <p>A parameter name can include only the following letters and symbols.</p>
    #            <p>a-zA-Z0-9_.-</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The parameter version.</p>
    #
    #   @return [Integer]
    #
    # @!attribute tier
    #   <p>The parameter tier.</p>
    #
    #   Enum, one of: ["Standard", "Advanced", "Intelligent-Tiering"]
    #
    #   @return [String]
    #
    # @!attribute policies
    #   <p>A list of policies associated with a parameter.</p>
    #
    #   @return [Array<ParameterInlinePolicy>]
    #
    # @!attribute data_type
    #   <p>The data type of the parameter, such as <code>text</code> or <code>aws:ec2:image</code>. The
    #      default is <code>text</code>.</p>
    #
    #   @return [String]
    #
    ParameterMetadata = ::Struct.new(
      :name,
      :type,
      :key_id,
      :last_modified_date,
      :last_modified_user,
      :description,
      :allowed_pattern,
      :version,
      :tier,
      :policies,
      :data_type,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.version ||= 0
      end
    end

    # <p>The parameter couldn't be found. Verify the name and try again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ParameterNotFound = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The parameter name isn't valid.</p>
    #
    # @!attribute message
    #   <p>The parameter name isn't valid.</p>
    #
    #   @return [String]
    #
    ParameterPatternMismatchException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>One or more filters. Use a filter to return a more specific list of results.</p>
    #
    # @!attribute key
    #   <p>The name of the filter.</p>
    #            <p>The <code>ParameterStringFilter</code> object is used by the <a>DescribeParameters</a> and <a>GetParametersByPath</a> API operations.
    #      However, not all of the pattern values listed for <code>Key</code> can be used with both
    #      operations.</p>
    #            <p>For <code>DescribeParameters</code>, all of the listed patterns are valid except
    #       <code>Label</code>.</p>
    #            <p>For <code>GetParametersByPath</code>, the following patterns listed for <code>Key</code>
    #      aren't valid: <code>tag</code>, <code>DataType</code>, <code>Name</code>, <code>Path</code>, and
    #       <code>Tier</code>.</p>
    #            <p>For examples of Amazon Web Services CLI commands demonstrating valid parameter filter constructions, see
    #       <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-search.html">Searching for Systems Manager parameters</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute option
    #   <p>For all filters used with <a>DescribeParameters</a>, valid options include
    #       <code>Equals</code> and <code>BeginsWith</code>. The <code>Name</code> filter additionally
    #      supports the <code>Contains</code> option. (Exception: For filters using the key
    #       <code>Path</code>, valid options include <code>Recursive</code> and
    #      <code>OneLevel</code>.)</p>
    #            <p>For filters used with <a>GetParametersByPath</a>, valid options include
    #       <code>Equals</code> and <code>BeginsWith</code>. (Exception: For filters using
    #       <code>Label</code> as the Key name, the only valid option is <code>Equals</code>.)</p>
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>The value you want to search for.</p>
    #
    #   @return [Array<String>]
    #
    ParameterStringFilter = ::Struct.new(
      :key,
      :option,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ParameterTier
    #
    module ParameterTier
      # No documentation available.
      #
      STANDARD = "Standard"

      # No documentation available.
      #
      ADVANCED = "Advanced"

      # No documentation available.
      #
      INTELLIGENT_TIERING = "Intelligent-Tiering"
    end

    # Includes enum constants for ParameterType
    #
    module ParameterType
      # No documentation available.
      #
      STRING = "String"

      # No documentation available.
      #
      STRING_LIST = "StringList"

      # No documentation available.
      #
      SECURE_STRING = "SecureString"
    end

    # <p>A parameter version can have a maximum of ten labels.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ParameterVersionLabelLimitExceeded = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified parameter version wasn't found. Verify the parameter name and version, and try
    #    again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ParameterVersionNotFound = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This data type is deprecated. Instead, use <a>ParameterStringFilter</a>.</p>
    #
    # @!attribute key
    #   <p>The name of the filter.</p>
    #
    #   Enum, one of: ["Name", "Type", "KeyId"]
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>The filter values.</p>
    #
    #   @return [Array<String>]
    #
    ParametersFilter = ::Struct.new(
      :key,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ParametersFilterKey
    #
    module ParametersFilterKey
      # No documentation available.
      #
      NAME = "Name"

      # No documentation available.
      #
      TYPE = "Type"

      # No documentation available.
      #
      KEY_ID = "KeyId"
    end

    # <p>Represents metadata about a patch.</p>
    #
    # @!attribute id
    #   <p>The ID of the patch. Applies to Windows patches only.</p>
    #            <note>
    #               <p>This ID isn't the same as the Microsoft Knowledge Base ID.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute release_date
    #   <p>The date the patch was released.</p>
    #
    #   @return [Time]
    #
    # @!attribute title
    #   <p>The title of the patch.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the patch.</p>
    #
    #   @return [String]
    #
    # @!attribute content_url
    #   <p>The URL where more information can be obtained about the patch.</p>
    #
    #   @return [String]
    #
    # @!attribute vendor
    #   <p>The name of the vendor providing the patch.</p>
    #
    #   @return [String]
    #
    # @!attribute product_family
    #   <p>The product family the patch is applicable for. For example, <code>Windows</code> or
    #       <code>Amazon Linux 2</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute product
    #   <p>The specific product the patch is applicable for. For example,
    #       <code>WindowsServer2016</code> or <code>AmazonLinux2018.03</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute classification
    #   <p>The classification of the patch. For example, <code>SecurityUpdates</code>,
    #       <code>Updates</code>, or <code>CriticalUpdates</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute msrc_severity
    #   <p>The severity of the patch, such as <code>Critical</code>, <code>Important</code>, or
    #       <code>Moderate</code>. Applies to Windows patches only.</p>
    #
    #   @return [String]
    #
    # @!attribute kb_number
    #   <p>The Microsoft Knowledge Base ID of the patch. Applies to Windows patches only.</p>
    #
    #   @return [String]
    #
    # @!attribute msrc_number
    #   <p>The ID of the Microsoft Security Response Center (MSRC) bulletin the patch is related to.
    #      For example, <code>MS14-045</code>. Applies to Windows patches only.</p>
    #
    #   @return [String]
    #
    # @!attribute language
    #   <p>The language of the patch if it's language-specific.</p>
    #
    #   @return [String]
    #
    # @!attribute advisory_ids
    #   <p>The Advisory ID of the patch. For example, <code>RHSA-2020:3779</code>. Applies to
    #      Linux-based managed nodes only.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute bugzilla_ids
    #   <p>The Bugzilla ID of the patch. For example, <code>1600646</code>. Applies to Linux-based
    #      managed nodes only.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute cve_ids
    #   <p>The Common Vulnerabilities and Exposures (CVE) ID of the patch. For example,
    #       <code>CVE-2011-3192</code>. Applies to Linux-based managed nodes only.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute name
    #   <p>The name of the patch. Applies to Linux-based managed nodes only.</p>
    #
    #   @return [String]
    #
    # @!attribute epoch
    #   <p>The epoch of the patch. For example in
    #      <code>pkg-example-EE-20180914-2.2.amzn1.noarch</code>, the epoch value is
    #      <code>20180914-2</code>. Applies to Linux-based managed nodes only.</p>
    #
    #   @return [Integer]
    #
    # @!attribute version
    #   <p>The version number of the patch. For example, in
    #       <code>example-pkg-1.710.10-2.7.abcd.x86_64</code>, the version number is indicated by
    #       <code>-1</code>. Applies to Linux-based managed nodes only.</p>
    #
    #   @return [String]
    #
    # @!attribute release
    #   <p>The particular release of a patch. For example, in
    #       <code>pkg-example-EE-20180914-2.2.amzn1.noarch</code>, the release is <code>2.amaz1</code>.
    #      Applies to Linux-based managed nodes only.</p>
    #
    #   @return [String]
    #
    # @!attribute arch
    #   <p>The architecture of the patch. For example, in
    #       <code>example-pkg-0.710.10-2.7.abcd.x86_64</code>, the architecture is indicated by
    #       <code>x86_64</code>. Applies to Linux-based managed nodes only.</p>
    #
    #   @return [String]
    #
    # @!attribute severity
    #   <p>The severity level of the patch. For example, <code>CRITICAL</code> or
    #      <code>MODERATE</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute repository
    #   <p>The source patch repository for the operating system and version, such as
    #       <code>trusty-security</code> for Ubuntu Server 14.04 LTE and <code>focal-security</code> for
    #      Ubuntu Server 20.04 LTE. Applies to Linux-based managed nodes only.</p>
    #
    #   @return [String]
    #
    Patch = ::Struct.new(
      :id,
      :release_date,
      :title,
      :description,
      :content_url,
      :vendor,
      :product_family,
      :product,
      :classification,
      :msrc_severity,
      :kb_number,
      :msrc_number,
      :language,
      :advisory_ids,
      :bugzilla_ids,
      :cve_ids,
      :name,
      :epoch,
      :version,
      :release,
      :arch,
      :severity,
      :repository,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.epoch ||= 0
      end
    end

    # Includes enum constants for PatchAction
    #
    module PatchAction
      # No documentation available.
      #
      AllowAsDependency = "ALLOW_AS_DEPENDENCY"

      # No documentation available.
      #
      Block = "BLOCK"
    end

    # <p>Defines the basic information about a patch baseline.</p>
    #
    # @!attribute baseline_id
    #   <p>The ID of the patch baseline.</p>
    #
    #   @return [String]
    #
    # @!attribute baseline_name
    #   <p>The name of the patch baseline.</p>
    #
    #   @return [String]
    #
    # @!attribute operating_system
    #   <p>Defines the operating system the patch baseline applies to. The default value is
    #       <code>WINDOWS</code>. </p>
    #
    #   Enum, one of: ["WINDOWS", "AMAZON_LINUX", "AMAZON_LINUX_2", "UBUNTU", "REDHAT_ENTERPRISE_LINUX", "SUSE", "CENTOS", "ORACLE_LINUX", "DEBIAN", "MACOS", "RASPBIAN", "ROCKY_LINUX"]
    #
    #   @return [String]
    #
    # @!attribute baseline_description
    #   <p>The description of the patch baseline.</p>
    #
    #   @return [String]
    #
    # @!attribute default_baseline
    #   <p>Whether this is the default baseline. Amazon Web Services Systems Manager supports creating multiple default patch
    #      baselines. For example, you can create a default patch baseline for each operating system.</p>
    #
    #   @return [Boolean]
    #
    PatchBaselineIdentity = ::Struct.new(
      :baseline_id,
      :baseline_name,
      :operating_system,
      :baseline_description,
      :default_baseline,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.default_baseline ||= false
      end
    end

    # <p>Information about the state of a patch on a particular managed node as it relates to the
    #    patch baseline used to patch the node.</p>
    #
    # @!attribute title
    #   <p>The title of the patch.</p>
    #
    #   @return [String]
    #
    # @!attribute kb_id
    #   <p>The operating system-specific ID of the patch.</p>
    #
    #   @return [String]
    #
    # @!attribute classification
    #   <p>The classification of the patch, such as <code>SecurityUpdates</code>, <code>Updates</code>,
    #      and <code>CriticalUpdates</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute severity
    #   <p>The severity of the patch such as <code>Critical</code>, <code>Important</code>, and
    #       <code>Moderate</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the patch on the managed node, such as INSTALLED or FAILED.</p>
    #            <p>For descriptions of each patch state, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-compliance-about.html sysman-compliance-monitor-patch">About patch compliance</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #
    #   Enum, one of: ["INSTALLED", "INSTALLED_OTHER", "INSTALLED_PENDING_REBOOT", "INSTALLED_REJECTED", "MISSING", "NOT_APPLICABLE", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute installed_time
    #   <p>The date/time the patch was installed on the managed node. Not all operating systems provide
    #      this level of information.</p>
    #
    #   @return [Time]
    #
    # @!attribute cve_ids
    #   <p>The IDs of one or more Common Vulnerabilities and Exposure (CVE) issues that are resolved by
    #      the patch.</p>
    #
    #   @return [String]
    #
    PatchComplianceData = ::Struct.new(
      :title,
      :kb_id,
      :classification,
      :severity,
      :state,
      :installed_time,
      :cve_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PatchComplianceDataState
    #
    module PatchComplianceDataState
      # No documentation available.
      #
      Installed = "INSTALLED"

      # No documentation available.
      #
      InstalledOther = "INSTALLED_OTHER"

      # No documentation available.
      #
      InstalledPendingReboot = "INSTALLED_PENDING_REBOOT"

      # No documentation available.
      #
      InstalledRejected = "INSTALLED_REJECTED"

      # No documentation available.
      #
      Missing = "MISSING"

      # No documentation available.
      #
      NotApplicable = "NOT_APPLICABLE"

      # No documentation available.
      #
      Failed = "FAILED"
    end

    # Includes enum constants for PatchComplianceLevel
    #
    module PatchComplianceLevel
      # No documentation available.
      #
      Critical = "CRITICAL"

      # No documentation available.
      #
      High = "HIGH"

      # No documentation available.
      #
      Medium = "MEDIUM"

      # No documentation available.
      #
      Low = "LOW"

      # No documentation available.
      #
      Informational = "INFORMATIONAL"

      # No documentation available.
      #
      Unspecified = "UNSPECIFIED"
    end

    # Includes enum constants for PatchDeploymentStatus
    #
    module PatchDeploymentStatus
      # No documentation available.
      #
      Approved = "APPROVED"

      # No documentation available.
      #
      PendingApproval = "PENDING_APPROVAL"

      # No documentation available.
      #
      ExplicitApproved = "EXPLICIT_APPROVED"

      # No documentation available.
      #
      ExplicitRejected = "EXPLICIT_REJECTED"
    end

    # <p> Defines which patches should be included in a patch baseline.</p>
    #          <p>A patch filter consists of a key and a set of values. The filter key is a patch property.
    #    For example, the available filter keys for <code>WINDOWS</code> are <code>PATCH_SET</code>,
    #     <code>PRODUCT</code>, <code>PRODUCT_FAMILY</code>, <code>CLASSIFICATION</code>, and
    #     <code>MSRC_SEVERITY</code>.</p>
    #          <p>The filter values define a matching criterion for the patch property indicated by the key.
    #    For example, if the filter key is <code>PRODUCT</code> and the filter values are <code>["Office
    #     2013", "Office 2016"]</code>, then the filter accepts all patches where product name is either
    #    "Office 2013" or "Office 2016". The filter values can be exact values for the patch property
    #    given as a key, or a wildcard (*), which matches all values.</p>
    #          <p>You can view lists of valid values for the patch properties by running the
    #     <code>DescribePatchProperties</code> command. For information about which patch properties can
    #    be used with each major operating system, see <a>DescribePatchProperties</a>.</p>
    #
    # @!attribute key
    #   <p>The key for the filter.</p>
    #            <p>Run the <a>DescribePatchProperties</a> command to view lists of valid keys for
    #      each operating system type.</p>
    #
    #   Enum, one of: ["ARCH", "ADVISORY_ID", "BUGZILLA_ID", "PATCH_SET", "PRODUCT", "PRODUCT_FAMILY", "CLASSIFICATION", "CVE_ID", "EPOCH", "MSRC_SEVERITY", "NAME", "PATCH_ID", "SECTION", "PRIORITY", "REPOSITORY", "RELEASE", "SEVERITY", "SECURITY", "VERSION"]
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>The value for the filter key.</p>
    #            <p>Run the <a>DescribePatchProperties</a> command to view lists of valid values for
    #      each key based on operating system type.</p>
    #
    #   @return [Array<String>]
    #
    PatchFilter = ::Struct.new(
      :key,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A set of patch filters, typically used for approval rules.</p>
    #
    # @!attribute patch_filters
    #   <p>The set of patch filters that make up the group.</p>
    #
    #   @return [Array<PatchFilter>]
    #
    PatchFilterGroup = ::Struct.new(
      :patch_filters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PatchFilterKey
    #
    module PatchFilterKey
      # No documentation available.
      #
      Arch = "ARCH"

      # No documentation available.
      #
      AdvisoryId = "ADVISORY_ID"

      # No documentation available.
      #
      BugzillaId = "BUGZILLA_ID"

      # No documentation available.
      #
      PatchSet = "PATCH_SET"

      # No documentation available.
      #
      Product = "PRODUCT"

      # No documentation available.
      #
      ProductFamily = "PRODUCT_FAMILY"

      # No documentation available.
      #
      Classification = "CLASSIFICATION"

      # No documentation available.
      #
      CVEId = "CVE_ID"

      # No documentation available.
      #
      Epoch = "EPOCH"

      # No documentation available.
      #
      MsrcSeverity = "MSRC_SEVERITY"

      # No documentation available.
      #
      Name = "NAME"

      # No documentation available.
      #
      PatchId = "PATCH_ID"

      # No documentation available.
      #
      Section = "SECTION"

      # No documentation available.
      #
      Priority = "PRIORITY"

      # No documentation available.
      #
      Repository = "REPOSITORY"

      # No documentation available.
      #
      Release = "RELEASE"

      # No documentation available.
      #
      Severity = "SEVERITY"

      # No documentation available.
      #
      Security = "SECURITY"

      # No documentation available.
      #
      Version = "VERSION"
    end

    # <p>The mapping between a patch group and the patch baseline the patch group is registered
    #    with.</p>
    #
    # @!attribute patch_group
    #   <p>The name of the patch group registered with the patch baseline.</p>
    #
    #   @return [String]
    #
    # @!attribute baseline_identity
    #   <p>The patch baseline the patch group is registered with.</p>
    #
    #   @return [PatchBaselineIdentity]
    #
    PatchGroupPatchBaselineMapping = ::Struct.new(
      :patch_group,
      :baseline_identity,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PatchOperationType
    #
    module PatchOperationType
      # No documentation available.
      #
      SCAN = "Scan"

      # No documentation available.
      #
      INSTALL = "Install"
    end

    # <p>Defines a filter used in Patch Manager APIs. Supported filter keys depend on the API
    #    operation that includes the filter. Patch Manager API operations that use
    #     <code>PatchOrchestratorFilter</code> include the following:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>DescribeAvailablePatches</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DescribeInstancePatches</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DescribePatchBaselines</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DescribePatchGroups</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @!attribute key
    #   <p>The key for the filter.</p>
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>The value for the filter.</p>
    #
    #   @return [Array<String>]
    #
    PatchOrchestratorFilter = ::Struct.new(
      :key,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PatchProperty
    #
    module PatchProperty
      # No documentation available.
      #
      Product = "PRODUCT"

      # No documentation available.
      #
      PatchProductFamily = "PRODUCT_FAMILY"

      # No documentation available.
      #
      PatchClassification = "CLASSIFICATION"

      # No documentation available.
      #
      PatchMsrcSeverity = "MSRC_SEVERITY"

      # No documentation available.
      #
      PatchPriority = "PRIORITY"

      # No documentation available.
      #
      PatchSeverity = "SEVERITY"
    end

    # <p>Defines an approval rule for a patch baseline.</p>
    #
    # @!attribute patch_filter_group
    #   <p>The patch filter group that defines the criteria for the rule.</p>
    #
    #   @return [PatchFilterGroup]
    #
    # @!attribute compliance_level
    #   <p>A compliance severity level for all approved patches in a patch baseline.</p>
    #
    #   Enum, one of: ["CRITICAL", "HIGH", "MEDIUM", "LOW", "INFORMATIONAL", "UNSPECIFIED"]
    #
    #   @return [String]
    #
    # @!attribute approve_after_days
    #   <p>The number of days after the release date of each patch matched by the rule that the patch
    #      is marked as approved in the patch baseline. For example, a value of <code>7</code> means that
    #      patches are approved seven days after they are released. Not supported on Debian Server or Ubuntu
    #      Server.</p>
    #
    #   @return [Integer]
    #
    # @!attribute approve_until_date
    #   <p>The cutoff date for auto approval of released patches. Any patches released on or before
    #      this date are installed automatically. Not supported on Debian Server or Ubuntu Server.</p>
    #            <p>Enter dates in the format <code>YYYY-MM-DD</code>. For example,
    #      <code>2021-12-31</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute enable_non_security
    #   <p>For managed nodes identified by the approval rule filters, enables a patch baseline to apply
    #      non-security updates available in the specified repository. The default value is
    #       <code>false</code>. Applies to Linux managed nodes only.</p>
    #
    #   @return [Boolean]
    #
    PatchRule = ::Struct.new(
      :patch_filter_group,
      :compliance_level,
      :approve_after_days,
      :approve_until_date,
      :enable_non_security,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A set of rules defining the approval rules for a patch baseline.</p>
    #
    # @!attribute patch_rules
    #   <p>The rules that make up the rule group.</p>
    #
    #   @return [Array<PatchRule>]
    #
    PatchRuleGroup = ::Struct.new(
      :patch_rules,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PatchSet
    #
    module PatchSet
      # No documentation available.
      #
      Os = "OS"

      # No documentation available.
      #
      Application = "APPLICATION"
    end

    # <p>Information about the patches to use to update the managed nodes, including target operating
    #    systems and source repository. Applies to Linux managed nodes only.</p>
    #
    # @!attribute name
    #   <p>The name specified to identify the patch source.</p>
    #
    #   @return [String]
    #
    # @!attribute products
    #   <p>The specific operating system versions a patch repository applies to, such as "Ubuntu16.04",
    #      "AmazonLinux2016.09", "RedhatEnterpriseLinux7.2" or "Suse12.7". For lists of supported product
    #      values, see <a>PatchFilter</a>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute configuration
    #   <p>The value of the yum repo configuration. For example:</p>
    #            <p>
    #               <code>[main]</code>
    #            </p>
    #            <p>
    #               <code>name=MyCustomRepository</code>
    #            </p>
    #            <p>
    #               <code>baseurl=https://my-custom-repository</code>
    #            </p>
    #            <p>
    #               <code>enabled=1</code>
    #            </p>
    #            <note>
    #               <p>For information about other options available for your yum repository configuration, see
    #        <a href="https://man7.org/linux/man-pages/man5/dnf.conf.5.html">dnf.conf(5)</a>.</p>
    #            </note>
    #
    #   @return [String]
    #
    PatchSource = ::Struct.new(
      :name,
      :products,
      :configuration,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::SSM::Types::PatchSource "\
          "name=#{name || 'nil'}, "\
          "products=#{products || 'nil'}, "\
          "configuration=\"[SENSITIVE]\">"
      end
    end

    # <p>Information about the approval status of a patch.</p>
    #
    # @!attribute deployment_status
    #   <p>The approval status of a patch.</p>
    #
    #   Enum, one of: ["APPROVED", "PENDING_APPROVAL", "EXPLICIT_APPROVED", "EXPLICIT_REJECTED"]
    #
    #   @return [String]
    #
    # @!attribute compliance_level
    #   <p>The compliance severity level for a patch.</p>
    #
    #   Enum, one of: ["CRITICAL", "HIGH", "MEDIUM", "LOW", "INFORMATIONAL", "UNSPECIFIED"]
    #
    #   @return [String]
    #
    # @!attribute approval_date
    #   <p>The date the patch was approved (or will be approved if the status is
    #       <code>PENDING_APPROVAL</code>).</p>
    #
    #   @return [Time]
    #
    PatchStatus = ::Struct.new(
      :deployment_status,
      :compliance_level,
      :approval_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PingStatus
    #
    module PingStatus
      # No documentation available.
      #
      ONLINE = "Online"

      # No documentation available.
      #
      CONNECTION_LOST = "ConnectionLost"

      # No documentation available.
      #
      INACTIVE = "Inactive"
    end

    # Includes enum constants for PlatformType
    #
    module PlatformType
      # No documentation available.
      #
      WINDOWS = "Windows"

      # No documentation available.
      #
      LINUX = "Linux"

      # No documentation available.
      #
      MACOS = "MacOS"
    end

    # <p>You specified more than the maximum number of allowed policies for the parameter. The
    #    maximum is 10.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    PoliciesLimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An aggregate of step execution statuses displayed in the Amazon Web Services Systems Manager console for a
    #    multi-Region and multi-account Automation execution.</p>
    #
    # @!attribute total_steps
    #   <p>The total number of steps run in all specified Amazon Web Services Regions and Amazon Web Services accounts for the
    #      current Automation execution.</p>
    #
    #   @return [Integer]
    #
    # @!attribute success_steps
    #   <p>The total number of steps that successfully completed in all specified Amazon Web Services Regions and
    #      Amazon Web Services accounts for the current Automation execution.</p>
    #
    #   @return [Integer]
    #
    # @!attribute failed_steps
    #   <p>The total number of steps that failed to run in all specified Amazon Web Services Regions and
    #      Amazon Web Services accounts for the current Automation execution.</p>
    #
    #   @return [Integer]
    #
    # @!attribute cancelled_steps
    #   <p>The total number of steps that the system cancelled in all specified Amazon Web Services Regions and
    #      Amazon Web Services accounts for the current Automation execution.</p>
    #
    #   @return [Integer]
    #
    # @!attribute timed_out_steps
    #   <p>The total number of steps that timed out in all specified Amazon Web Services Regions and Amazon Web Services accounts
    #      for the current Automation execution.</p>
    #
    #   @return [Integer]
    #
    ProgressCounters = ::Struct.new(
      :total_steps,
      :success_steps,
      :failed_steps,
      :cancelled_steps,
      :timed_out_steps,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.total_steps ||= 0
        self.success_steps ||= 0
        self.failed_steps ||= 0
        self.cancelled_steps ||= 0
        self.timed_out_steps ||= 0
      end
    end

    # @!attribute resource_id
    #   <p>Specify an ID for this resource. For a managed node, this is the node ID.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>Specify the type of resource. <code>ManagedInstance</code> is currently the only supported
    #      resource type.</p>
    #
    #   @return [String]
    #
    # @!attribute compliance_type
    #   <p>Specify the compliance type. For example, specify Association (for a State Manager
    #      association), Patch, or Custom:<code>string</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute execution_summary
    #   <p>A summary of the call execution that includes an execution ID, the type of execution (for
    #      example, <code>Command</code>), and the date/time of the execution using a datetime object that
    #      is saved in the following format: yyyy-MM-dd'T'HH:mm:ss'Z'.</p>
    #
    #   @return [ComplianceExecutionSummary]
    #
    # @!attribute items
    #   <p>Information about the compliance as defined by the resource type. For example, for a patch
    #      compliance type, <code>Items</code> includes information about the PatchSeverity, Classification,
    #      and so on.</p>
    #
    #   @return [Array<ComplianceItemEntry>]
    #
    # @!attribute item_content_hash
    #   <p>MD5 or SHA-256 content hash. The content hash is used to determine if existing information
    #      should be overwritten or ignored. If the content hashes match, the request to put compliance
    #      information is ignored.</p>
    #
    #   @return [String]
    #
    # @!attribute upload_type
    #   <p>The mode for uploading compliance items. You can specify <code>COMPLETE</code> or
    #       <code>PARTIAL</code>. In <code>COMPLETE</code> mode, the system overwrites all existing
    #      compliance information for the resource. You must provide a full list of compliance items each
    #      time you send the request.</p>
    #            <p>In <code>PARTIAL</code> mode, the system overwrites compliance information for a specific
    #      association. The association must be configured with <code>SyncCompliance</code> set to
    #       <code>MANUAL</code>. By default, all requests use <code>COMPLETE</code> mode.</p>
    #            <note>
    #               <p>This attribute is only valid for association compliance.</p>
    #            </note>
    #
    #   Enum, one of: ["COMPLETE", "PARTIAL"]
    #
    #   @return [String]
    #
    PutComplianceItemsInput = ::Struct.new(
      :resource_id,
      :resource_type,
      :compliance_type,
      :execution_summary,
      :items,
      :item_content_hash,
      :upload_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutComplianceItemsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>An managed node ID where you want to add or update inventory items.</p>
    #
    #   @return [String]
    #
    # @!attribute items
    #   <p>The inventory items that you want to add or update on managed nodes.</p>
    #
    #   @return [Array<InventoryItem>]
    #
    PutInventoryInput = ::Struct.new(
      :instance_id,
      :items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute message
    #   <p>Information about the request.</p>
    #
    #   @return [String]
    #
    PutInventoryOutput = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The fully qualified name of the parameter that you want to add to the system. The fully
    #      qualified name includes the complete hierarchy of the parameter path and name. For parameters in
    #      a hierarchy, you must include a leading forward slash character (/) when you create or reference
    #      a parameter. For example: <code>/Dev/DBServer/MySQL/db-string13</code>
    #            </p>
    #            <p>Naming Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Parameter names are case sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>A parameter name must be unique within an Amazon Web Services Region</p>
    #               </li>
    #               <li>
    #                  <p>A parameter name can't be prefixed with "<code>aws</code>" or "<code>ssm</code>"
    #        (case-insensitive).</p>
    #               </li>
    #               <li>
    #                  <p>Parameter names can include only the following symbols and letters:
    #         <code>a-zA-Z0-9_.-</code>
    #                  </p>
    #                  <p>In addition, the slash character ( / ) is used to delineate hierarchies in parameter
    #        names. For example: <code>/Dev/Production/East/Project-ABC/MyParameter</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>A parameter name can't include spaces.</p>
    #               </li>
    #               <li>
    #                  <p>Parameter hierarchies are limited to a maximum depth of fifteen levels.</p>
    #               </li>
    #            </ul>
    #            <p>For additional information about valid values for parameter names, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-paramstore-su-create.html">Creating Systems Manager parameters</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #            <note>
    #               <p>The maximum length constraint of 2048 characters listed below includes 1037 characters
    #       reserved for internal use by Systems Manager. The maximum length for a parameter name that you create is
    #       1011 characters. This includes the characters in the ARN that precede the name you specify, such
    #       as <code>arn:aws:ssm:us-east-2:111122223333:parameter/</code>.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>Information about the parameter that you want to add to the system. Optional but
    #      recommended.</p>
    #            <important>
    #               <p>Don't enter personally identifiable information in this field.</p>
    #            </important>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The parameter value that you want to add to the system. Standard parameters have a value
    #      limit of 4 KB. Advanced parameters have a value limit of 8 KB.</p>
    #            <note>
    #               <p>Parameters can't be referenced or nested in the values of other parameters. You can't
    #       include <code>{{}}</code> or <code>{{ssm:<i>parameter-name</i>}}</code> in a
    #       parameter value.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of parameter that you want to add to the system.</p>
    #            <note>
    #               <p>
    #                  <code>SecureString</code> isn't currently supported for CloudFormation templates.</p>
    #            </note>
    #            <p>Items in a <code>StringList</code> must be separated by a comma (,). You can't
    #      use other punctuation or special character to escape items in the list. If you have a parameter
    #      value that requires a comma, then use the <code>String</code> data type.</p>
    #            <important>
    #               <p>Specifying a parameter type isn't required when updating a parameter. You must specify a
    #       parameter type when creating a parameter.</p>
    #            </important>
    #
    #   Enum, one of: ["String", "StringList", "SecureString"]
    #
    #   @return [String]
    #
    # @!attribute key_id
    #   <p>The Key Management Service (KMS) ID that you want to use to encrypt a
    #      parameter. Either the default KMS key automatically assigned to your Amazon Web Services account
    #      or a custom key. Required for parameters that use the <code>SecureString</code>
    #      data type.</p>
    #            <p>If you don't specify a key ID, the system uses the default key associated with your
    #      Amazon Web Services account.</p>
    #            <ul>
    #               <li>
    #                  <p>To use your default KMS key, choose the <code>SecureString</code> data type, and do <i>not</i> specify the <code>Key ID</code> when you create the parameter. The system automatically populates
    #         <code>Key ID</code> with your default KMS key.</p>
    #               </li>
    #               <li>
    #                  <p>To use a custom KMS key, choose the <code>SecureString</code>
    #        data type with the <code>Key ID</code> parameter.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute overwrite
    #   <p>Overwrite an existing parameter. The default value is <code>false</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute allowed_pattern
    #   <p>A regular expression used to validate the parameter value. For example, for String types
    #      with values restricted to numbers, you can specify the following: AllowedPattern=^\d+$ </p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Optional metadata that you assign to a resource. Tags enable you to categorize a resource in
    #      different ways, such as by purpose, owner, or environment. For example, you might want to tag a
    #      Systems Manager parameter to identify the type of resource to which it applies, the environment, or the
    #      type of configuration data referenced by the parameter. In this case, you could specify the
    #      following key-value pairs:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Key=Resource,Value=S3bucket</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Key=OS,Value=Windows</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Key=ParameterType,Value=LicenseKey</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>To add tags to an existing Systems Manager parameter, use the <a>AddTagsToResource</a>
    #       operation.</p>
    #            </note>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute tier
    #   <p>The parameter tier to assign to a parameter.</p>
    #            <p>Parameter Store offers a standard tier and an advanced tier for parameters. Standard
    #      parameters have a content size limit of 4 KB and can't be configured to use parameter policies.
    #      You can create a maximum of 10,000 standard parameters for each Region in an Amazon Web Services account.
    #      Standard parameters are offered at no additional cost. </p>
    #            <p>Advanced parameters have a content size limit of 8 KB and can be configured to use parameter
    #      policies. You can create a maximum of 100,000 advanced parameters for each Region in an
    #      Amazon Web Services account. Advanced parameters incur a charge. For more information, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-advanced-parameters.html">Standard and
    #       advanced parameter tiers</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #            <p>You can change a standard parameter to an advanced parameter any time. But you can't revert
    #      an advanced parameter to a standard parameter. Reverting an advanced parameter to a standard
    #      parameter would result in data loss because the system would truncate the size of the parameter
    #      from 8 KB to 4 KB. Reverting would also remove any policies attached to the parameter. Lastly,
    #      advanced parameters use a different form of encryption than standard parameters. </p>
    #            <p>If you no longer need an advanced parameter, or if you no longer want to incur charges for
    #      an advanced parameter, you must delete it and recreate it as a new standard parameter. </p>
    #            <p>
    #               <b>Using the Default Tier Configuration</b>
    #            </p>
    #            <p>In <code>PutParameter</code> requests, you can specify the tier to create the parameter in.
    #      Whenever you specify a tier in the request, Parameter Store creates or updates the parameter
    #      according to that request. However, if you don't specify a tier in a request, Parameter Store
    #      assigns the tier based on the current Parameter Store default tier configuration.</p>
    #            <p>The default tier when you begin using Parameter Store is the standard-parameter tier. If you
    #      use the advanced-parameter tier, you can specify one of the following as the default:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Advanced</b>: With this option, Parameter Store evaluates all
    #        requests as advanced parameters. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Intelligent-Tiering</b>: With this option, Parameter Store
    #        evaluates each request to determine if the parameter is standard or advanced. </p>
    #                  <p>If the request doesn't include any options that require an advanced parameter, the
    #        parameter is created in the standard-parameter tier. If one or more options requiring an
    #        advanced parameter are included in the request, Parameter Store create a parameter in the
    #        advanced-parameter tier.</p>
    #                  <p>This approach helps control your parameter-related costs by always creating standard
    #        parameters unless an advanced parameter is necessary. </p>
    #               </li>
    #            </ul>
    #            <p>Options that require an advanced parameter include the following:</p>
    #            <ul>
    #               <li>
    #                  <p>The content size of the parameter is more than 4 KB.</p>
    #               </li>
    #               <li>
    #                  <p>The parameter uses a parameter policy.</p>
    #               </li>
    #               <li>
    #                  <p>More than 10,000 parameters already exist in your Amazon Web Services account in the current
    #        Amazon Web Services Region.</p>
    #               </li>
    #            </ul>
    #            <p>For more information about configuring the default tier option, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/ps-default-tier.html">Specifying a
    #       default parameter tier</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #
    #   Enum, one of: ["Standard", "Advanced", "Intelligent-Tiering"]
    #
    #   @return [String]
    #
    # @!attribute policies
    #   <p>One or more policies to apply to a parameter. This operation takes a JSON array. Parameter
    #      Store, a capability of Amazon Web Services Systems Manager supports the following policy types:</p>
    #            <p>Expiration: This policy deletes the parameter after it expires. When you create the policy,
    #      you specify the expiration date. You can update the expiration date and time by updating the
    #      policy. Updating the <i>parameter</i> doesn't affect the expiration date and time.
    #      When the expiration time is reached, Parameter Store deletes the parameter.</p>
    #            <p>ExpirationNotification: This policy initiates an event in Amazon CloudWatch Events that
    #      notifies you about the expiration. By using this policy, you can receive notification before or
    #      after the expiration time is reached, in units of days or hours.</p>
    #            <p>NoChangeNotification: This policy initiates a CloudWatch Events event if a parameter hasn't
    #      been modified for a specified period of time. This policy type is useful when, for example, a
    #      secret needs to be changed within a period of time, but it hasn't been changed.</p>
    #            <p>All existing policies are preserved until you send new policies or an empty policy. For more
    #      information about parameter policies, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-policies.html">Assigning parameter
    #       policies</a>. </p>
    #
    #   @return [String]
    #
    # @!attribute data_type
    #   <p>The data type for a <code>String</code> parameter. Supported data types include plain text
    #      and Amazon Machine Image (AMI) IDs.</p>
    #            <p>
    #               <b>The following data type values are supported.</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>text</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>aws:ec2:image</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>aws:ssm:integration</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>When you create a <code>String</code> parameter and specify <code>aws:ec2:image</code>,
    #      Amazon Web Services Systems Manager validates the parameter value is in the required format, such as
    #       <code>ami-12345abcdeEXAMPLE</code>, and that the specified AMI is available in your
    #      Amazon Web Services account. For more information, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-ec2-aliases.html">Native parameter support
    #       for Amazon Machine Image (AMI) IDs</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #
    #   @return [String]
    #
    PutParameterInput = ::Struct.new(
      :name,
      :description,
      :value,
      :type,
      :key_id,
      :overwrite,
      :allowed_pattern,
      :tags,
      :tier,
      :policies,
      :data_type,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::SSM::Types::PutParameterInput "\
          "name=#{name || 'nil'}, "\
          "description=#{description || 'nil'}, "\
          "value=\"[SENSITIVE]\", "\
          "type=#{type || 'nil'}, "\
          "key_id=#{key_id || 'nil'}, "\
          "overwrite=#{overwrite || 'nil'}, "\
          "allowed_pattern=#{allowed_pattern || 'nil'}, "\
          "tags=#{tags || 'nil'}, "\
          "tier=#{tier || 'nil'}, "\
          "policies=#{policies || 'nil'}, "\
          "data_type=#{data_type || 'nil'}>"
      end
    end

    # @!attribute version
    #   <p>The new version number of a parameter. If you edit a parameter value, Parameter Store
    #      automatically creates a new version and assigns this new version a unique ID. You can reference a
    #      parameter version ID in API operations or in Systems Manager documents (SSM documents). By default, if you
    #      don't specify a specific version, the system returns the latest parameter value when a parameter
    #      is called.</p>
    #
    #   @return [Integer]
    #
    # @!attribute tier
    #   <p>The tier assigned to the parameter.</p>
    #
    #   Enum, one of: ["Standard", "Advanced", "Intelligent-Tiering"]
    #
    #   @return [String]
    #
    PutParameterOutput = ::Struct.new(
      :version,
      :tier,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.version ||= 0
      end
    end

    # Includes enum constants for RebootOption
    #
    module RebootOption
      # No documentation available.
      #
      REBOOT_IF_NEEDED = "RebootIfNeeded"

      # No documentation available.
      #
      NO_REBOOT = "NoReboot"
    end

    # @!attribute baseline_id
    #   <p>The ID of the patch baseline that should be the default patch baseline.</p>
    #
    #   @return [String]
    #
    RegisterDefaultPatchBaselineInput = ::Struct.new(
      :baseline_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute baseline_id
    #   <p>The ID of the default patch baseline.</p>
    #
    #   @return [String]
    #
    RegisterDefaultPatchBaselineOutput = ::Struct.new(
      :baseline_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute baseline_id
    #   <p>The ID of the patch baseline to register with the patch group.</p>
    #
    #   @return [String]
    #
    # @!attribute patch_group
    #   <p>The name of the patch group to be registered with the patch baseline.</p>
    #
    #   @return [String]
    #
    RegisterPatchBaselineForPatchGroupInput = ::Struct.new(
      :baseline_id,
      :patch_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute baseline_id
    #   <p>The ID of the patch baseline the patch group was registered with.</p>
    #
    #   @return [String]
    #
    # @!attribute patch_group
    #   <p>The name of the patch group registered with the patch baseline.</p>
    #
    #   @return [String]
    #
    RegisterPatchBaselineForPatchGroupOutput = ::Struct.new(
      :baseline_id,
      :patch_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute window_id
    #   <p>The ID of the maintenance window the target should be registered with.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The type of target being registered with the maintenance window.</p>
    #
    #   Enum, one of: ["INSTANCE", "RESOURCE_GROUP"]
    #
    #   @return [String]
    #
    # @!attribute targets
    #   <p>The targets to register with the maintenance window. In other words, the managed nodes to
    #      run commands on when the maintenance window runs.</p>
    #            <note>
    #               <p>If a single maintenance window task is registered with multiple targets, its task
    #       invocations occur sequentially and not in parallel. If your task must run on multiple targets at
    #       the same time, register a task for each target individually and assign each task the same
    #       priority level.</p>
    #            </note>
    #            <p>You can specify targets using managed node IDs, resource group names, or tags that have been
    #      applied to managed nodes.</p>
    #            <p>
    #               <b>Example 1</b>: Specify managed node IDs</p>
    #            <p>
    #               <code>Key=InstanceIds,Values=<instance-id-1>,<instance-id-2>,<instance-id-3></code>
    #            </p>
    #            <p>
    #               <b>Example 2</b>: Use tag key-pairs applied to managed
    #      nodes</p>
    #            <p>
    #               <code>Key=tag:<my-tag-key>,Values=<my-tag-value-1>,<my-tag-value-2></code>
    #            </p>
    #            <p>
    #               <b>Example 3</b>: Use tag-keys applied to managed nodes</p>
    #            <p>
    #               <code>Key=tag-key,Values=<my-tag-key-1>,<my-tag-key-2></code>
    #            </p>
    #
    #            <p>
    #               <b>Example 4</b>: Use resource group names</p>
    #            <p>
    #               <code>Key=resource-groups:Name,Values=<resource-group-name></code>
    #            </p>
    #            <p>
    #               <b>Example 5</b>: Use filters for resource group types</p>
    #            <p>
    #               <code>Key=resource-groups:ResourceTypeFilters,Values=<resource-type-1>,<resource-type-2></code>
    #            </p>
    #            <note>
    #               <p>For <code>Key=resource-groups:ResourceTypeFilters</code>, specify resource types in the
    #       following format</p>
    #               <p>
    #                  <code>Key=resource-groups:ResourceTypeFilters,Values=AWS::EC2::INSTANCE,AWS::EC2::VPC</code>
    #               </p>
    #            </note>
    #
    #            <p>For more information about these examples formats, including the best use case for each one,
    #      see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/mw-cli-tutorial-targets-examples.html">Examples: Register
    #       targets with a maintenance window</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #
    #   @return [Array<Target>]
    #
    # @!attribute owner_information
    #   <p>User-provided value that will be included in any Amazon CloudWatch Events events raised while
    #      running tasks for these targets in this maintenance window.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>An optional name for the target.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>An optional description for the target.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>User-provided idempotency token.</p>
    #
    #   @return [String]
    #
    RegisterTargetWithMaintenanceWindowInput = ::Struct.new(
      :window_id,
      :resource_type,
      :targets,
      :owner_information,
      :name,
      :description,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::SSM::Types::RegisterTargetWithMaintenanceWindowInput "\
          "window_id=#{window_id || 'nil'}, "\
          "resource_type=#{resource_type || 'nil'}, "\
          "targets=#{targets || 'nil'}, "\
          "owner_information=\"[SENSITIVE]\", "\
          "name=#{name || 'nil'}, "\
          "description=\"[SENSITIVE]\", "\
          "client_token=#{client_token || 'nil'}>"
      end
    end

    # @!attribute window_target_id
    #   <p>The ID of the target definition in this maintenance window.</p>
    #
    #   @return [String]
    #
    RegisterTargetWithMaintenanceWindowOutput = ::Struct.new(
      :window_target_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute window_id
    #   <p>The ID of the maintenance window the task should be added to.</p>
    #
    #   @return [String]
    #
    # @!attribute targets
    #   <p>The targets (either managed nodes or maintenance window targets).</p>
    #            <note>
    #               <p>One or more targets must be specified for maintenance window Run Command-type tasks.
    #       Depending on the task, targets are optional for other maintenance window task types (Automation,
    #        Lambda, and Step Functions). For more information about running tasks
    #       that don't specify targets, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/maintenance-windows-targetless-tasks.html">Registering
    #        maintenance window tasks without targets</a> in the
    #       <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #            </note>
    #            <p>Specify managed nodes using the following format: </p>
    #            <p>
    #               <code>Key=InstanceIds,Values=<instance-id-1>,<instance-id-2></code>
    #            </p>
    #            <p>Specify maintenance window targets using the following format:</p>
    #            <p>
    #               <code>Key=WindowTargetIds,Values=<window-target-id-1>,<window-target-id-2></code>
    #            </p>
    #
    #   @return [Array<Target>]
    #
    # @!attribute task_arn
    #   <p>The ARN of the task to run.</p>
    #
    #   @return [String]
    #
    # @!attribute service_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM service role for Amazon Web Services Systems Manager to assume when running a
    #     maintenance window task. If you do not specify a service role ARN, Systems Manager uses your account's
    #     service-linked role.  If no service-linked role for Systems Manager exists in your account, it is created when you run
    #     <code>RegisterTaskWithMaintenanceWindow</code>.</p>
    #            <p>For more information, see the following topics in the in the <i>Amazon Web Services Systems Manager User Guide</i>:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/using-service-linked-roles.html slr-permissions">Using
    #       service-linked roles for Systems Manager</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-maintenance-permissions.html maintenance-window-tasks-service-role">Should I use a service-linked role or a custom service role to run maintenance window tasks?
    #      </a>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute task_type
    #   <p>The type of task being registered.</p>
    #
    #   Enum, one of: ["RUN_COMMAND", "AUTOMATION", "STEP_FUNCTIONS", "LAMBDA"]
    #
    #   @return [String]
    #
    # @!attribute task_parameters
    #   <p>The parameters that should be passed to the task when it is run.</p>
    #            <note>
    #               <p>
    #                  <code>TaskParameters</code> has been deprecated. To specify parameters to pass to a task when it runs,
    #         instead use the <code>Parameters</code> option in the <code>TaskInvocationParameters</code> structure. For information
    #         about how Systems Manager handles these options for the supported maintenance window task
    #         types, see <a>MaintenanceWindowTaskInvocationParameters</a>.</p>
    #            </note>
    #
    #   @return [Hash<String, MaintenanceWindowTaskParameterValueExpression>]
    #
    # @!attribute task_invocation_parameters
    #   <p>The parameters that the task should use during execution. Populate only the fields that
    #      match the task type. All other fields should be empty. </p>
    #
    #   @return [MaintenanceWindowTaskInvocationParameters]
    #
    # @!attribute priority
    #   <p>The priority of the task in the maintenance window, the lower the number the higher the
    #      priority. Tasks in a maintenance window are scheduled in priority order with tasks that have the
    #      same priority scheduled in parallel.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max_concurrency
    #   <p>The maximum number of targets this task can be run for, in parallel.</p>
    #            <note>
    #               <p>Although this element is listed as "Required: No", a value can be omitted only when you are
    #       registering or updating a <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/maintenance-windows-targetless-tasks.html">targetless
    #        task</a> You must provide a value in all other cases.</p>
    #               <p>For maintenance window tasks without a target specified, you can't supply a value for this
    #       option. Instead, the system inserts a placeholder value of <code>1</code>. This value doesn't
    #       affect the running of your task.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute max_errors
    #   <p>The maximum number of errors allowed before this task stops being scheduled.</p>
    #            <note>
    #               <p>Although this element is listed as "Required: No", a value can be omitted only when you are
    #       registering or updating a <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/maintenance-windows-targetless-tasks.html">targetless
    #        task</a> You must provide a value in all other cases.</p>
    #               <p>For maintenance window tasks without a target specified, you can't supply a value for this
    #       option. Instead, the system inserts a placeholder value of <code>1</code>. This value doesn't
    #       affect the running of your task.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute logging_info
    #   <p>A structure containing information about an Amazon Simple Storage Service (Amazon S3) bucket
    #      to write managed node-level logs to. </p>
    #            <note>
    #               <p>
    #                  <code>LoggingInfo</code> has been deprecated. To specify an Amazon Simple Storage Service (Amazon S3) bucket to contain logs, instead use the
    #         <code>OutputS3BucketName</code> and <code>OutputS3KeyPrefix</code> options in the <code>TaskInvocationParameters</code> structure.
    #         For information about how Amazon Web Services Systems Manager handles these options for the supported maintenance
    #         window task types, see <a>MaintenanceWindowTaskInvocationParameters</a>.</p>
    #            </note>
    #
    #   @return [LoggingInfo]
    #
    # @!attribute name
    #   <p>An optional name for the task.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>An optional description for the task.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>User-provided idempotency token.</p>
    #
    #   @return [String]
    #
    # @!attribute cutoff_behavior
    #   <p>Indicates whether tasks should continue to run after the cutoff time specified in the
    #      maintenance windows is reached. </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CONTINUE_TASK</code>: When the cutoff time is reached, any tasks that are running
    #        continue. The default value.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CANCEL_TASK</code>:</p>
    #                  <ul>
    #                     <li>
    #                        <p>For Automation, Lambda, Step Functions tasks: When the cutoff
    #          time is reached, any task invocations that are already running continue, but no new task
    #          invocations are started.</p>
    #                     </li>
    #                     <li>
    #                        <p>For Run Command tasks: When the cutoff time is reached, the system sends a <a>CancelCommand</a> operation that attempts to cancel the command associated with the
    #          task. However, there is no guarantee that the command will be terminated and the underlying
    #          process stopped.</p>
    #                     </li>
    #                  </ul>
    #                  <p>The status for tasks that are not completed is <code>TIMED_OUT</code>.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["CONTINUE_TASK", "CANCEL_TASK"]
    #
    #   @return [String]
    #
    RegisterTaskWithMaintenanceWindowInput = ::Struct.new(
      :window_id,
      :targets,
      :task_arn,
      :service_role_arn,
      :task_type,
      :task_parameters,
      :task_invocation_parameters,
      :priority,
      :max_concurrency,
      :max_errors,
      :logging_info,
      :name,
      :description,
      :client_token,
      :cutoff_behavior,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::SSM::Types::RegisterTaskWithMaintenanceWindowInput "\
          "window_id=#{window_id || 'nil'}, "\
          "targets=#{targets || 'nil'}, "\
          "task_arn=#{task_arn || 'nil'}, "\
          "service_role_arn=#{service_role_arn || 'nil'}, "\
          "task_type=#{task_type || 'nil'}, "\
          "task_parameters=\"[SENSITIVE]\", "\
          "task_invocation_parameters=#{task_invocation_parameters || 'nil'}, "\
          "priority=#{priority || 'nil'}, "\
          "max_concurrency=#{max_concurrency || 'nil'}, "\
          "max_errors=#{max_errors || 'nil'}, "\
          "logging_info=#{logging_info || 'nil'}, "\
          "name=#{name || 'nil'}, "\
          "description=\"[SENSITIVE]\", "\
          "client_token=#{client_token || 'nil'}, "\
          "cutoff_behavior=#{cutoff_behavior || 'nil'}>"
      end
    end

    # @!attribute window_task_id
    #   <p>The ID of the task in the maintenance window.</p>
    #
    #   @return [String]
    #
    RegisterTaskWithMaintenanceWindowOutput = ::Struct.new(
      :window_task_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Reserved for internal use.</p>
    #
    # @!attribute key
    #   <p>Reserved for internal use.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>Reserved for internal use.</p>
    #
    #   @return [String]
    #
    RegistrationMetadataItem = ::Struct.new(
      :key,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An OpsItems that shares something in common with the current OpsItem. For example, related
    #    OpsItems can include OpsItems with similar error messages, impacted resources, or statuses for
    #    the impacted resource.</p>
    #
    # @!attribute ops_item_id
    #   <p>The ID of an OpsItem related to the current OpsItem.</p>
    #
    #   @return [String]
    #
    RelatedOpsItem = ::Struct.new(
      :ops_item_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_type
    #   <p>The type of resource from which you want to remove a tag.</p>
    #            <note>
    #               <p>The <code>ManagedInstance</code> type for this API operation is only for on-premises
    #       managed nodes. Specify the name of the managed node in the following format:
    #         <code>mi-<i>ID_number</i>
    #                  </code>. For example,
    #       <code>mi-1a2b3c4d5e6f</code>.</p>
    #            </note>
    #
    #   Enum, one of: ["Document", "ManagedInstance", "MaintenanceWindow", "Parameter", "PatchBaseline", "OpsItem", "OpsMetadata", "Automation"]
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The ID of the resource from which you want to remove tags. For example:</p>
    #            <p>ManagedInstance: mi-012345abcde</p>
    #            <p>MaintenanceWindow: mw-012345abcde</p>
    #            <p>
    #               <code>Automation</code>: <code>example-c160-4567-8519-012345abcde</code>
    #            </p>
    #            <p>PatchBaseline: pb-012345abcde</p>
    #            <p>OpsMetadata object: <code>ResourceID</code> for tagging is created from the Amazon Resource
    #      Name (ARN) for the object. Specifically, <code>ResourceID</code> is created from the strings that
    #      come after the word <code>opsmetadata</code> in the ARN. For example, an OpsMetadata object with
    #      an ARN of <code>arn:aws:ssm:us-east-2:1234567890:opsmetadata/aws/ssm/MyGroup/appmanager</code>
    #      has a <code>ResourceID</code> of either <code>aws/ssm/MyGroup/appmanager</code> or
    #       <code>/aws/ssm/MyGroup/appmanager</code>.</p>
    #            <p>For the Document and Parameter values, use the name of the resource.</p>
    #            <note>
    #               <p>The <code>ManagedInstance</code> type for this API operation is only for on-premises
    #       managed nodes. Specify the name of the managed node in the following format: mi-ID_number. For
    #       example, mi-1a2b3c4d5e6f.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>Tag keys that you want to remove from the specified resource.</p>
    #
    #   @return [Array<String>]
    #
    RemoveTagsFromResourceInput = ::Struct.new(
      :resource_type,
      :resource_id,
      :tag_keys,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    RemoveTagsFromResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request body of the ResetServiceSetting API operation.</p>
    #
    # @!attribute setting_id
    #   <p>The Amazon Resource Name (ARN) of the service setting to reset. The setting ID can be one of
    #      the following.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>/ssm/automation/customer-script-log-destination</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>/ssm/automation/customer-script-log-group-name</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>/ssm/documents/console/public-sharing-permission</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>/ssm/parameter-store/default-parameter-tier</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>/ssm/parameter-store/high-throughput-enabled</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>/ssm/managed-instance/activation-tier</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    ResetServiceSettingInput = ::Struct.new(
      :setting_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The result body of the ResetServiceSetting API operation.</p>
    #
    # @!attribute service_setting
    #   <p>The current, effective service setting after calling the ResetServiceSetting API
    #      operation.</p>
    #
    #   @return [ServiceSetting]
    #
    ResetServiceSettingOutput = ::Struct.new(
      :service_setting,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about targets that resolved during the Automation execution.</p>
    #
    # @!attribute parameter_values
    #   <p>A list of parameter values sent to targets that resolved during the Automation
    #      execution.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute truncated
    #   <p>A boolean value indicating whether the resolved target list is truncated.</p>
    #
    #   @return [Boolean]
    #
    ResolvedTargets = ::Struct.new(
      :parameter_values,
      :truncated,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.truncated ||= false
      end
    end

    # <p>Compliance summary information for a specific resource. </p>
    #
    # @!attribute compliance_type
    #   <p>The compliance type.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The resource type.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The resource ID.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The compliance status for the resource.</p>
    #
    #   Enum, one of: ["COMPLIANT", "NON_COMPLIANT"]
    #
    #   @return [String]
    #
    # @!attribute overall_severity
    #   <p>The highest severity item found for the resource. The resource is compliant for this
    #      item.</p>
    #
    #   Enum, one of: ["CRITICAL", "HIGH", "MEDIUM", "LOW", "INFORMATIONAL", "UNSPECIFIED"]
    #
    #   @return [String]
    #
    # @!attribute execution_summary
    #   <p>Information about the execution.</p>
    #
    #   @return [ComplianceExecutionSummary]
    #
    # @!attribute compliant_summary
    #   <p>A list of items that are compliant for the resource.</p>
    #
    #   @return [CompliantSummary]
    #
    # @!attribute non_compliant_summary
    #   <p>A list of items that aren't compliant for the resource.</p>
    #
    #   @return [NonCompliantSummary]
    #
    ResourceComplianceSummaryItem = ::Struct.new(
      :compliance_type,
      :resource_type,
      :resource_id,
      :status,
      :overall_severity,
      :execution_summary,
      :compliant_summary,
      :non_compliant_summary,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A sync configuration with the same name already exists.</p>
    #
    # @!attribute sync_name
    #
    #   @return [String]
    #
    ResourceDataSyncAlreadyExistsException = ::Struct.new(
      :sync_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the <code>AwsOrganizationsSource</code> resource data sync source. A sync
    #    source of this type can synchronize data from Organizations or, if an Amazon Web Services organization isn't
    #    present, from multiple Amazon Web Services Regions.</p>
    #
    # @!attribute organization_source_type
    #   <p>If an Amazon Web Services organization is present, this is either <code>OrganizationalUnits</code> or
    #       <code>EntireOrganization</code>. For <code>OrganizationalUnits</code>, the data is aggregated
    #      from a set of organization units. For <code>EntireOrganization</code>, the data is aggregated
    #      from the entire Amazon Web Services organization.</p>
    #
    #   @return [String]
    #
    # @!attribute organizational_units
    #   <p>The Organizations organization units included in the sync.</p>
    #
    #   @return [Array<ResourceDataSyncOrganizationalUnit>]
    #
    ResourceDataSyncAwsOrganizationsSource = ::Struct.new(
      :organization_source_type,
      :organizational_units,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Another <code>UpdateResourceDataSync</code> request is being processed. Wait a few minutes
    #    and try again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceDataSyncConflictException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You have exceeded the allowed maximum sync configurations.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceDataSyncCountExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Synchronize Amazon Web Services Systems Manager Inventory data from multiple Amazon Web Services accounts defined in Organizations to a
    #    centralized Amazon S3 bucket. Data is synchronized to individual key prefixes in the
    #    central bucket. Each key prefix represents a different Amazon Web Services account ID.</p>
    #
    # @!attribute destination_data_sharing_type
    #   <p>The sharing data type. Only <code>Organization</code> is supported.</p>
    #
    #   @return [String]
    #
    ResourceDataSyncDestinationDataSharing = ::Struct.new(
      :destination_data_sharing_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified sync configuration is invalid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceDataSyncInvalidConfigurationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a resource data sync configuration, including its current status and last
    #    successful sync.</p>
    #
    # @!attribute sync_name
    #   <p>The name of the resource data sync.</p>
    #
    #   @return [String]
    #
    # @!attribute sync_type
    #   <p>The type of resource data sync. If <code>SyncType</code> is <code>SyncToDestination</code>,
    #      then the resource data sync synchronizes data to an S3 bucket. If the <code>SyncType</code> is
    #       <code>SyncFromSource</code> then the resource data sync synchronizes data from Organizations or from
    #      multiple Amazon Web Services Regions.</p>
    #
    #   @return [String]
    #
    # @!attribute sync_source
    #   <p>Information about the source where the data was synchronized. </p>
    #
    #   @return [ResourceDataSyncSourceWithState]
    #
    # @!attribute s3_destination
    #   <p>Configuration information for the target S3 bucket.</p>
    #
    #   @return [ResourceDataSyncS3Destination]
    #
    # @!attribute last_sync_time
    #   <p>The last time the configuration attempted to sync (UTC).</p>
    #
    #   @return [Time]
    #
    # @!attribute last_successful_sync_time
    #   <p>The last time the sync operations returned a status of <code>SUCCESSFUL</code> (UTC).</p>
    #
    #   @return [Time]
    #
    # @!attribute sync_last_modified_time
    #   <p>The date and time the resource data sync was changed. </p>
    #
    #   @return [Time]
    #
    # @!attribute last_status
    #   <p>The status reported by the last sync.</p>
    #
    #   Enum, one of: ["Successful", "Failed", "InProgress"]
    #
    #   @return [String]
    #
    # @!attribute sync_created_time
    #   <p>The date and time the configuration was created (UTC).</p>
    #
    #   @return [Time]
    #
    # @!attribute last_sync_status_message
    #   <p>The status message details reported by the last sync.</p>
    #
    #   @return [String]
    #
    ResourceDataSyncItem = ::Struct.new(
      :sync_name,
      :sync_type,
      :sync_source,
      :s3_destination,
      :last_sync_time,
      :last_successful_sync_time,
      :sync_last_modified_time,
      :last_status,
      :sync_created_time,
      :last_sync_status_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified sync name wasn't found.</p>
    #
    # @!attribute sync_name
    #
    #   @return [String]
    #
    # @!attribute sync_type
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceDataSyncNotFoundException = ::Struct.new(
      :sync_name,
      :sync_type,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The Organizations organizational unit data source for the sync.</p>
    #
    # @!attribute organizational_unit_id
    #   <p>The Organizations unit ID data source for the sync.</p>
    #
    #   @return [String]
    #
    ResourceDataSyncOrganizationalUnit = ::Struct.new(
      :organizational_unit_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the target S3 bucket for the resource data sync.</p>
    #
    # @!attribute bucket_name
    #   <p>The name of the S3 bucket where the aggregated data is stored.</p>
    #
    #   @return [String]
    #
    # @!attribute prefix
    #   <p>An Amazon S3 prefix for the bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute sync_format
    #   <p>A supported sync format. The following format is currently supported: JsonSerDe</p>
    #
    #   Enum, one of: ["JsonSerDe"]
    #
    #   @return [String]
    #
    # @!attribute region
    #   <p>The Amazon Web Services Region with the S3 bucket targeted by the resource data sync.</p>
    #
    #   @return [String]
    #
    # @!attribute awskms_key_arn
    #   <p>The ARN of an encryption key for a destination in Amazon S3. Must belong to the same
    #      Region as the destination S3 bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_data_sharing
    #   <p>Enables destination data sharing. By default, this field is <code>null</code>.</p>
    #
    #   @return [ResourceDataSyncDestinationDataSharing]
    #
    ResourceDataSyncS3Destination = ::Struct.new(
      :bucket_name,
      :prefix,
      :sync_format,
      :region,
      :awskms_key_arn,
      :destination_data_sharing,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ResourceDataSyncS3Format
    #
    module ResourceDataSyncS3Format
      # No documentation available.
      #
      JSON_SERDE = "JsonSerDe"
    end

    # <p>Information about the source of the data included in the resource data sync.</p>
    #
    # @!attribute source_type
    #   <p>The type of data source for the resource data sync. <code>SourceType</code> is either
    #       <code>AwsOrganizations</code> (if an organization is present in Organizations) or
    #       <code>SingleAccountMultiRegions</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_organizations_source
    #   <p>Information about the <code>AwsOrganizationsSource</code> resource data sync source. A sync
    #      source of this type can synchronize data from Organizations.</p>
    #
    #   @return [ResourceDataSyncAwsOrganizationsSource]
    #
    # @!attribute source_regions
    #   <p>The <code>SyncSource</code> Amazon Web Services Regions included in the resource data sync.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute include_future_regions
    #   <p>Whether to automatically synchronize and aggregate data from new Amazon Web Services Regions when those
    #      Regions come online.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute enable_all_ops_data_sources
    #   <p>When you create a resource data sync, if you choose one of the Organizations options, then Systems Manager
    #      automatically enables all OpsData sources in the selected Amazon Web Services Regions for all Amazon Web Services accounts in
    #      your organization (or in the selected organization units). For more information, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/Explorer-resouce-data-sync-multiple-accounts-and-regions.html">About multiple account and Region resource data syncs</a> in the
    #       <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #
    #   @return [Boolean]
    #
    ResourceDataSyncSource = ::Struct.new(
      :source_type,
      :aws_organizations_source,
      :source_regions,
      :include_future_regions,
      :enable_all_ops_data_sources,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.include_future_regions ||= false
        self.enable_all_ops_data_sources ||= false
      end
    end

    # <p>The data type name for including resource data sync state. There are four sync
    #    states:</p>
    #          <p>
    #             <code>OrganizationNotExists</code> (Your organization doesn't exist)</p>
    #          <p>
    #             <code>NoPermissions</code> (The system can't locate the service-linked role. This role is
    #    automatically created when a user creates a resource data sync in Amazon Web Services Systems Manager Explorer.)</p>
    #          <p>
    #             <code>InvalidOrganizationalUnit</code> (You specified or selected an invalid unit in the
    #    resource data sync configuration.)</p>
    #          <p>
    #             <code>TrustedAccessDisabled</code> (You disabled Systems Manager access in the organization in
    #    Organizations.)</p>
    #
    # @!attribute source_type
    #   <p>The type of data source for the resource data sync. <code>SourceType</code> is either
    #       <code>AwsOrganizations</code> (if an organization is present in Organizations) or
    #       <code>singleAccountMultiRegions</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_organizations_source
    #   <p>The field name in <code>SyncSource</code> for the
    #       <code>ResourceDataSyncAwsOrganizationsSource</code> type.</p>
    #
    #   @return [ResourceDataSyncAwsOrganizationsSource]
    #
    # @!attribute source_regions
    #   <p>The <code>SyncSource</code> Amazon Web Services Regions included in the resource data sync.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute include_future_regions
    #   <p>Whether to automatically synchronize and aggregate data from new Amazon Web Services Regions when those
    #      Regions come online.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute state
    #   <p>The data type name for including resource data sync state. There are four sync
    #      states:</p>
    #            <p>
    #               <code>OrganizationNotExists</code>: Your organization doesn't exist.</p>
    #            <p>
    #               <code>NoPermissions</code>: The system can't locate the service-linked role. This role is
    #      automatically created when a user creates a resource data sync in Explorer.</p>
    #            <p>
    #               <code>InvalidOrganizationalUnit</code>: You specified or selected an invalid unit in the
    #      resource data sync configuration.</p>
    #            <p>
    #               <code>TrustedAccessDisabled</code>: You disabled Systems Manager access in the organization in
    #      Organizations.</p>
    #
    #   @return [String]
    #
    # @!attribute enable_all_ops_data_sources
    #   <p>When you create a resource data sync, if you choose one of the Organizations options, then Systems Manager
    #      automatically enables all OpsData sources in the selected Amazon Web Services Regions for all Amazon Web Services accounts in
    #      your organization (or in the selected organization units). For more information, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/Explorer-resouce-data-sync-multiple-accounts-and-regions.html">About multiple account and Region resource data syncs</a> in the
    #       <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #
    #   @return [Boolean]
    #
    ResourceDataSyncSourceWithState = ::Struct.new(
      :source_type,
      :aws_organizations_source,
      :source_regions,
      :include_future_regions,
      :state,
      :enable_all_ops_data_sources,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.include_future_regions ||= false
        self.enable_all_ops_data_sources ||= false
      end
    end

    # <p>Error returned if an attempt is made to delete a patch baseline that is registered for a
    #    patch group.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceInUseException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Error returned when the caller has exceeded the default resource quotas. For example, too
    #    many maintenance windows or patch baselines have been created.</p>
    #          <p>For information about resource quotas in Systems Manager, see <a href="https://docs.aws.amazon.com/general/latest/gr/ssm.html#limits_ssm">Systems Manager service quotas</a> in the
    #     <i>Amazon Web Services General Reference</i>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceLimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ResourceType
    #
    module ResourceType
      # No documentation available.
      #
      MANAGED_INSTANCE = "ManagedInstance"

      # No documentation available.
      #
      DOCUMENT = "Document"

      # No documentation available.
      #
      EC2_INSTANCE = "EC2Instance"
    end

    # Includes enum constants for ResourceTypeForTagging
    #
    module ResourceTypeForTagging
      # No documentation available.
      #
      DOCUMENT = "Document"

      # No documentation available.
      #
      MANAGED_INSTANCE = "ManagedInstance"

      # No documentation available.
      #
      MAINTENANCE_WINDOW = "MaintenanceWindow"

      # No documentation available.
      #
      PARAMETER = "Parameter"

      # No documentation available.
      #
      PATCH_BASELINE = "PatchBaseline"

      # No documentation available.
      #
      OPS_ITEM = "OpsItem"

      # No documentation available.
      #
      OPSMETADATA = "OpsMetadata"

      # No documentation available.
      #
      AUTOMATION = "Automation"
    end

    # <p>The inventory item result attribute.</p>
    #
    # @!attribute type_name
    #   <p>Name of the inventory item type. Valid value: <code>AWS:InstanceInformation</code>. Default
    #      Value: <code>AWS:InstanceInformation</code>.</p>
    #
    #   @return [String]
    #
    ResultAttribute = ::Struct.new(
      :type_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute session_id
    #   <p>The ID of the disconnected session to resume.</p>
    #
    #   @return [String]
    #
    ResumeSessionInput = ::Struct.new(
      :session_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute session_id
    #   <p>The ID of the session.</p>
    #
    #   @return [String]
    #
    # @!attribute token_value
    #   <p>An encrypted token value containing session and caller information. Used to authenticate the
    #      connection to the managed node.</p>
    #
    #   @return [String]
    #
    # @!attribute stream_url
    #   <p>A URL back to SSM Agent on the managed node that the Session Manager client uses to send commands and
    #      receive output from the managed node. Format: <code>wss://ssmmessages.<b>region</b>.amazonaws.com/v1/data-channel/<b>session-id</b>?stream=(input|output)</code>.</p>
    #            <p>
    #               <b>region</b> represents the Region identifier for an
    #   						Amazon Web Services Region supported by Amazon Web Services Systems Manager, such as <code>us-east-2</code> for the US East (Ohio) Region.
    #   						For a list of supported <b>region</b> values, see the <b>Region</b> column in <a href="https://docs.aws.amazon.com/general/latest/gr/ssm.html ssm_region">Systems Manager service endpoints</a> in the
    #           <i>Amazon Web Services General Reference</i>.</p>
    #            <p>
    #               <b>session-id</b> represents the ID of a Session Manager session, such as
    #       <code>1a2b3c4dEXAMPLE</code>.</p>
    #
    #   @return [String]
    #
    ResumeSessionOutput = ::Struct.new(
      :session_id,
      :token_value,
      :stream_url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the result of a document review request.</p>
    #
    # @!attribute reviewed_time
    #   <p>The time that the reviewer took action on the document review request.</p>
    #
    #   @return [Time]
    #
    # @!attribute status
    #   <p>The current status of the document review request.</p>
    #
    #   Enum, one of: ["APPROVED", "NOT_REVIEWED", "PENDING", "REJECTED"]
    #
    #   @return [String]
    #
    # @!attribute reviewer
    #   <p>The reviewer assigned to take action on the document review request.</p>
    #
    #   @return [String]
    #
    ReviewInformation = ::Struct.new(
      :reviewed_time,
      :status,
      :reviewer,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ReviewStatus
    #
    module ReviewStatus
      # No documentation available.
      #
      APPROVED = "APPROVED"

      # No documentation available.
      #
      NOT_REVIEWED = "NOT_REVIEWED"

      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      REJECTED = "REJECTED"
    end

    # <p>Information about an Automation runbook used in a runbook workflow in Change Manager.</p>
    #          <note>
    #             <p>The Automation runbooks specified for the runbook workflow can't run until all required
    #     approvals for the change request have been received.</p>
    #          </note>
    #
    # @!attribute document_name
    #   <p>The name of the Automation runbook used in a runbook workflow.</p>
    #
    #   @return [String]
    #
    # @!attribute document_version
    #   <p>The version of the Automation runbook used in a runbook workflow.</p>
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>The key-value map of execution parameters, which were supplied when calling
    #       <code>StartChangeRequestExecution</code>.</p>
    #
    #   @return [Hash<String, Array<String>>]
    #
    # @!attribute target_parameter_name
    #   <p>The name of the parameter used as the target resource for the rate-controlled
    #      runbook workflow. Required if you specify <code>Targets</code>. </p>
    #
    #   @return [String]
    #
    # @!attribute targets
    #   <p>A key-value mapping to target resources that the runbook operation performs tasks on.
    #      Required if you specify <code>TargetParameterName</code>.</p>
    #
    #   @return [Array<Target>]
    #
    # @!attribute target_maps
    #   <p>A key-value mapping of runbook parameters to target resources. Both Targets and TargetMaps
    #      can't be specified together.</p>
    #
    #   @return [Array<Hash<String, Array<String>>>]
    #
    # @!attribute max_concurrency
    #   <p>The <code>MaxConcurrency</code> value specified by the user when the operation started,
    #      indicating the maximum number of resources that the runbook operation can run on at the same
    #      time.</p>
    #
    #   @return [String]
    #
    # @!attribute max_errors
    #   <p>The <code>MaxErrors</code> value specified by the user when the execution started,
    #      indicating the maximum number of errors that can occur during the operation before the updates
    #      are stopped or rolled back.</p>
    #
    #   @return [String]
    #
    # @!attribute target_locations
    #   <p>Information about the Amazon Web Services Regions and Amazon Web Services accounts targeted by the current Runbook
    #      operation.</p>
    #
    #   @return [Array<TargetLocation>]
    #
    Runbook = ::Struct.new(
      :document_name,
      :document_version,
      :parameters,
      :target_parameter_name,
      :targets,
      :target_maps,
      :max_concurrency,
      :max_errors,
      :target_locations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An S3 bucket where you want to store the results of this request.</p>
    #
    # @!attribute output_s3_region
    #   <p>The Amazon Web Services Region of the S3 bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute output_s3_bucket_name
    #   <p>The name of the S3 bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute output_s3_key_prefix
    #   <p>The S3 bucket subfolder.</p>
    #
    #   @return [String]
    #
    S3OutputLocation = ::Struct.new(
      :output_s3_region,
      :output_s3_bucket_name,
      :output_s3_key_prefix,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A URL for the Amazon Web Services Systems Manager (Systems Manager) bucket where you want to store the
    #    results of this request.</p>
    #
    # @!attribute output_url
    #   <p>A URL for an S3 bucket where you want to store the results of this request.</p>
    #
    #   @return [String]
    #
    S3OutputUrl = ::Struct.new(
      :output_url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a scheduled execution for a maintenance window.</p>
    #
    # @!attribute window_id
    #   <p>The ID of the maintenance window to be run.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the maintenance window to be run.</p>
    #
    #   @return [String]
    #
    # @!attribute execution_time
    #   <p>The time, in ISO-8601 Extended format, that the maintenance window is scheduled to be
    #      run.</p>
    #
    #   @return [String]
    #
    ScheduledWindowExecution = ::Struct.new(
      :window_id,
      :name,
      :execution_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute automation_execution_id
    #   <p>The unique identifier for an existing Automation execution that you want to send the signal
    #      to.</p>
    #
    #   @return [String]
    #
    # @!attribute signal_type
    #   <p>The type of signal to send to an Automation execution. </p>
    #
    #   Enum, one of: ["Approve", "Reject", "StartStep", "StopStep", "Resume"]
    #
    #   @return [String]
    #
    # @!attribute payload
    #   <p>The data sent with the signal. The data schema depends on the type of signal used in the
    #      request.</p>
    #            <p>For <code>Approve</code> and <code>Reject</code> signal types, the payload is an optional
    #      comment that you can send with the signal type. For example:</p>
    #            <p>
    #               <code>Comment="Looks good"</code>
    #            </p>
    #            <p>For <code>StartStep</code> and <code>Resume</code> signal types, you must send the name of
    #      the Automation step to start or resume as the payload. For example:</p>
    #            <p>
    #               <code>StepName="step1"</code>
    #            </p>
    #            <p>For the <code>StopStep</code> signal type, you must send the step execution ID as the
    #      payload. For example:</p>
    #            <p>
    #               <code>StepExecutionId="97fff367-fc5a-4299-aed8-0123456789ab"</code>
    #            </p>
    #
    #   @return [Hash<String, Array<String>>]
    #
    SendAutomationSignalInput = ::Struct.new(
      :automation_execution_id,
      :signal_type,
      :payload,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    SendAutomationSignalOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_ids
    #   <p>The IDs of the managed nodes where the command should run. Specifying managed node IDs is
    #      most useful when you are targeting a limited number of managed nodes, though you can specify up
    #      to 50 IDs.</p>
    #            <p>To target a larger number of managed nodes, or if you prefer not to list individual node
    #      IDs, we recommend using the <code>Targets</code> option instead. Using <code>Targets</code>,
    #      which accepts tag key-value pairs to identify the managed nodes to send commands to, you can a
    #      send command to tens, hundreds, or thousands of nodes at once.</p>
    #            <p>For more information about how to use targets, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html">Using targets and rate
    #       controls to send commands to a fleet</a> in the
    #      <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute targets
    #   <p>An array of search criteria that targets managed nodes using a <code>Key,Value</code>
    #      combination that you specify. Specifying targets is most useful when you want to send a command
    #      to a large number of managed nodes at once. Using <code>Targets</code>, which accepts tag
    #      key-value pairs to identify managed nodes, you can send a command to tens, hundreds, or thousands
    #      of nodes at once.</p>
    #            <p>To send a command to a smaller number of managed nodes, you can use the
    #       <code>InstanceIds</code> option instead.</p>
    #            <p>For more information about how to use targets, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html">Sending commands to a
    #       fleet</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #
    #   @return [Array<Target>]
    #
    # @!attribute document_name
    #   <p>The name of the Amazon Web Services Systems Manager document (SSM document) to run. This can be a public document or a
    #      custom document. To run a shared document belonging to another account, specify the document
    #      Amazon Resource Name (ARN). For more information about how to use shared documents, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/ssm-using-shared.html">Using shared
    #       SSM documents</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #            <note>
    #               <p>If you specify a document name or ARN that hasn't been shared with your account, you
    #       receive an <code>InvalidDocument</code> error. </p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute document_version
    #   <p>The SSM document version to use in the request. You can specify $DEFAULT, $LATEST, or a
    #      specific version number. If you run commands by using the Command Line Interface (Amazon Web Services CLI), then
    #      you must escape the first two options by using a backslash. If you specify a version number, then
    #      you don't need to use the backslash. For example:</p>
    #            <p>--document-version "\$DEFAULT"</p>
    #            <p>--document-version "\$LATEST"</p>
    #            <p>--document-version "3"</p>
    #
    #   @return [String]
    #
    # @!attribute document_hash
    #   <p>The Sha256 or Sha1 hash created by the system when the document was created. </p>
    #            <note>
    #               <p>Sha1 hashes have been deprecated.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute document_hash_type
    #   <p>Sha256 or Sha1.</p>
    #            <note>
    #               <p>Sha1 hashes have been deprecated.</p>
    #            </note>
    #
    #   Enum, one of: ["Sha256", "Sha1"]
    #
    #   @return [String]
    #
    # @!attribute timeout_seconds
    #   <p>If this time is reached and the command hasn't already started running, it won't run.</p>
    #
    #   @return [Integer]
    #
    # @!attribute comment
    #   <p>User-specified information about the command, such as a brief description of what the
    #      command should do.</p>
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>The required and optional parameters specified in the document being run.</p>
    #
    #   @return [Hash<String, Array<String>>]
    #
    # @!attribute output_s3_region
    #   <p>(Deprecated) You can no longer specify this parameter. The system ignores it. Instead, Systems Manager
    #      automatically determines the Amazon Web Services Region of the S3 bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute output_s3_bucket_name
    #   <p>The name of the S3 bucket where command execution responses should be stored.</p>
    #
    #   @return [String]
    #
    # @!attribute output_s3_key_prefix
    #   <p>The directory structure within the S3 bucket where the responses should be stored.</p>
    #
    #   @return [String]
    #
    # @!attribute max_concurrency
    #   <p>(Optional) The maximum number of managed nodes that are allowed to run the command at the
    #      same time. You can specify a number such as 10 or a percentage such as 10%. The default value is
    #       <code>50</code>. For more information about how to use <code>MaxConcurrency</code>, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html send-commands-velocity">Using
    #       concurrency controls</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute max_errors
    #   <p>The maximum number of errors allowed without the command failing. When the command fails one
    #      more time beyond the value of <code>MaxErrors</code>, the systems stops sending the command to
    #      additional targets. You can specify a number like 10 or a percentage like 10%. The default value
    #      is <code>0</code>. For more information about how to use <code>MaxErrors</code>, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html send-commands-maxerrors">Using
    #       error controls</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute service_role_arn
    #   <p>The ARN of the Identity and Access Management (IAM) service role to use to publish
    #       Amazon Simple Notification Service (Amazon SNS) notifications for Run Command commands.</p>
    #
    #   @return [String]
    #
    # @!attribute notification_config
    #   <p>Configurations for sending notifications.</p>
    #
    #   @return [NotificationConfig]
    #
    # @!attribute cloud_watch_output_config
    #   <p>Enables Amazon Web Services Systems Manager to send Run Command output to Amazon CloudWatch Logs. Run Command is a
    #      capability of Amazon Web Services Systems Manager.</p>
    #
    #   @return [CloudWatchOutputConfig]
    #
    SendCommandInput = ::Struct.new(
      :instance_ids,
      :targets,
      :document_name,
      :document_version,
      :document_hash,
      :document_hash_type,
      :timeout_seconds,
      :comment,
      :parameters,
      :output_s3_region,
      :output_s3_bucket_name,
      :output_s3_key_prefix,
      :max_concurrency,
      :max_errors,
      :service_role_arn,
      :notification_config,
      :cloud_watch_output_config,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::SSM::Types::SendCommandInput "\
          "instance_ids=#{instance_ids || 'nil'}, "\
          "targets=#{targets || 'nil'}, "\
          "document_name=#{document_name || 'nil'}, "\
          "document_version=#{document_version || 'nil'}, "\
          "document_hash=#{document_hash || 'nil'}, "\
          "document_hash_type=#{document_hash_type || 'nil'}, "\
          "timeout_seconds=#{timeout_seconds || 'nil'}, "\
          "comment=#{comment || 'nil'}, "\
          "parameters=\"[SENSITIVE]\", "\
          "output_s3_region=#{output_s3_region || 'nil'}, "\
          "output_s3_bucket_name=#{output_s3_bucket_name || 'nil'}, "\
          "output_s3_key_prefix=#{output_s3_key_prefix || 'nil'}, "\
          "max_concurrency=#{max_concurrency || 'nil'}, "\
          "max_errors=#{max_errors || 'nil'}, "\
          "service_role_arn=#{service_role_arn || 'nil'}, "\
          "notification_config=#{notification_config || 'nil'}, "\
          "cloud_watch_output_config=#{cloud_watch_output_config || 'nil'}>"
      end
    end

    # @!attribute command
    #   <p>The request as it was received by Systems Manager. Also provides the command ID which can be used
    #      future references to this request.</p>
    #
    #   @return [Command]
    #
    SendCommandOutput = ::Struct.new(
      :command,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The service setting data structure.</p>
    #          <p>
    #             <code>ServiceSetting</code> is an account-level setting for an Amazon Web Services service. This setting
    #    defines how a user interacts with or uses a service or a feature of a service. For example, if an
    #    Amazon Web Services service charges money to the account based on feature or service usage, then the Amazon Web Services
    #    service team might create a default setting of "false". This means the user can't use this
    #    feature unless they change the setting to "true" and intentionally opt in for a paid
    #    feature.</p>
    #          <p>Services map a <code>SettingId</code> object to a setting value. Amazon Web Services services teams define
    #    the default value for a <code>SettingId</code>. You can't create a new <code>SettingId</code>,
    #    but you can overwrite the default value if you have the <code>ssm:UpdateServiceSetting</code>
    #    permission for the setting. Use the <a>UpdateServiceSetting</a> API operation to
    #    change the default setting. Or, use the <a>ResetServiceSetting</a> to change the value
    #    back to the original value defined by the Amazon Web Services service team.</p>
    #
    # @!attribute setting_id
    #   <p>The ID of the service setting.</p>
    #
    #   @return [String]
    #
    # @!attribute setting_value
    #   <p>The value of the service setting.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified_date
    #   <p>The last time the service setting was modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modified_user
    #   <p>The ARN of the last modified user. This field is populated only if the setting value was
    #      overwritten.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The ARN of the service setting.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the service setting. The value can be Default, Customized or
    #      PendingUpdate.</p>
    #            <ul>
    #               <li>
    #                  <p>Default: The current setting uses a default value provisioned by the Amazon Web Services service
    #        team.</p>
    #               </li>
    #               <li>
    #                  <p>Customized: The current setting use a custom value specified by the customer.</p>
    #               </li>
    #               <li>
    #                  <p>PendingUpdate: The current setting uses a default or custom value, but a setting change
    #        request is pending approval.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    ServiceSetting = ::Struct.new(
      :setting_id,
      :setting_value,
      :last_modified_date,
      :last_modified_user,
      :arn,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified service setting wasn't found. Either the service name or the setting hasn't
    #    been provisioned by the Amazon Web Services service team.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ServiceSettingNotFound = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a Session Manager connection to a managed node.</p>
    #
    # @!attribute session_id
    #   <p>The ID of the session.</p>
    #
    #   @return [String]
    #
    # @!attribute target
    #   <p>The managed node that the Session Manager session connected to.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the session. For example, "Connected" or "Terminated".</p>
    #
    #   Enum, one of: ["Connected", "Connecting", "Disconnected", "Terminated", "Terminating", "Failed"]
    #
    #   @return [String]
    #
    # @!attribute start_date
    #   <p>The date and time, in ISO-8601 Extended format, when the session began.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_date
    #   <p>The date and time, in ISO-8601 Extended format, when the session was terminated.</p>
    #
    #   @return [Time]
    #
    # @!attribute document_name
    #   <p>The name of the Session Manager SSM document used to define the parameters and plugin settings for the
    #      session. For example, <code>SSM-SessionManagerRunShell</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute owner
    #   <p>The ID of the Amazon Web Services user account that started the session.</p>
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>The reason for connecting to the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute details
    #   <p>Reserved for future use.</p>
    #
    #   @return [String]
    #
    # @!attribute output_url
    #   <p>Reserved for future use.</p>
    #
    #   @return [SessionManagerOutputUrl]
    #
    # @!attribute max_session_duration
    #   <p>The maximum duration of a session before it terminates.</p>
    #
    #   @return [String]
    #
    Session = ::Struct.new(
      :session_id,
      :target,
      :status,
      :start_date,
      :end_date,
      :document_name,
      :owner,
      :reason,
      :details,
      :output_url,
      :max_session_duration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a filter for Session Manager information.</p>
    #
    # @!attribute key
    #   <p>The name of the filter.</p>
    #
    #   Enum, one of: ["InvokedAfter", "InvokedBefore", "Target", "Owner", "Status", "SessionId"]
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The filter value. Valid values for each filter key are as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>InvokedAfter: Specify a timestamp to limit your results. For example, specify
    #        2018-08-29T00:00:00Z to see sessions that started August 29, 2018, and later.</p>
    #               </li>
    #               <li>
    #                  <p>InvokedBefore: Specify a timestamp to limit your results. For example, specify
    #        2018-08-29T00:00:00Z to see sessions that started before August 29, 2018.</p>
    #               </li>
    #               <li>
    #                  <p>Target: Specify a managed node to which session connections have been made.</p>
    #               </li>
    #               <li>
    #                  <p>Owner: Specify an Amazon Web Services user account to see a list of sessions started by that
    #        user.</p>
    #               </li>
    #               <li>
    #                  <p>Status: Specify a valid session status to see a list of all sessions with that status.
    #        Status values you can specify include:</p>
    #                  <ul>
    #                     <li>
    #                        <p>Connected</p>
    #                     </li>
    #                     <li>
    #                        <p>Connecting</p>
    #                     </li>
    #                     <li>
    #                        <p>Disconnected</p>
    #                     </li>
    #                     <li>
    #                        <p>Terminated</p>
    #                     </li>
    #                     <li>
    #                        <p>Terminating</p>
    #                     </li>
    #                     <li>
    #                        <p>Failed</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>SessionId: Specify a session ID to return details about the session.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    SessionFilter = ::Struct.new(
      :key,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SessionFilterKey
    #
    module SessionFilterKey
      # No documentation available.
      #
      INVOKED_AFTER = "InvokedAfter"

      # No documentation available.
      #
      INVOKED_BEFORE = "InvokedBefore"

      # No documentation available.
      #
      TARGET_ID = "Target"

      # No documentation available.
      #
      OWNER = "Owner"

      # No documentation available.
      #
      STATUS = "Status"

      # No documentation available.
      #
      SESSION_ID = "SessionId"
    end

    # <p>Reserved for future use.</p>
    #
    # @!attribute s3_output_url
    #   <p>Reserved for future use.</p>
    #
    #   @return [String]
    #
    # @!attribute cloud_watch_output_url
    #   <p>Reserved for future use.</p>
    #
    #   @return [String]
    #
    SessionManagerOutputUrl = ::Struct.new(
      :s3_output_url,
      :cloud_watch_output_url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SessionState
    #
    module SessionState
      # No documentation available.
      #
      ACTIVE = "Active"

      # No documentation available.
      #
      HISTORY = "History"
    end

    # Includes enum constants for SessionStatus
    #
    module SessionStatus
      # No documentation available.
      #
      CONNECTED = "Connected"

      # No documentation available.
      #
      CONNECTING = "Connecting"

      # No documentation available.
      #
      DISCONNECTED = "Disconnected"

      # No documentation available.
      #
      TERMINATED = "Terminated"

      # No documentation available.
      #
      TERMINATING = "Terminating"

      # No documentation available.
      #
      FAILED = "Failed"
    end

    # <p>The number of managed nodes found for each patch severity level defined in the request
    #    filter.</p>
    #
    # @!attribute critical_count
    #   <p>The total number of resources or compliance items that have a severity level of critical.
    #      Critical severity is determined by the organization that published the compliance items.</p>
    #
    #   @return [Integer]
    #
    # @!attribute high_count
    #   <p>The total number of resources or compliance items that have a severity level of high. High
    #      severity is determined by the organization that published the compliance items.</p>
    #
    #   @return [Integer]
    #
    # @!attribute medium_count
    #   <p>The total number of resources or compliance items that have a severity level of medium.
    #      Medium severity is determined by the organization that published the compliance items.</p>
    #
    #   @return [Integer]
    #
    # @!attribute low_count
    #   <p>The total number of resources or compliance items that have a severity level of low. Low
    #      severity is determined by the organization that published the compliance items.</p>
    #
    #   @return [Integer]
    #
    # @!attribute informational_count
    #   <p>The total number of resources or compliance items that have a severity level of
    #      informational. Informational severity is determined by the organization that published the
    #      compliance items.</p>
    #
    #   @return [Integer]
    #
    # @!attribute unspecified_count
    #   <p>The total number of resources or compliance items that have a severity level of unspecified.
    #      Unspecified severity is determined by the organization that published the compliance
    #      items.</p>
    #
    #   @return [Integer]
    #
    SeveritySummary = ::Struct.new(
      :critical_count,
      :high_count,
      :medium_count,
      :low_count,
      :informational_count,
      :unspecified_count,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.critical_count ||= 0
        self.high_count ||= 0
        self.medium_count ||= 0
        self.low_count ||= 0
        self.informational_count ||= 0
        self.unspecified_count ||= 0
      end
    end

    # Includes enum constants for SignalType
    #
    module SignalType
      # No documentation available.
      #
      APPROVE = "Approve"

      # No documentation available.
      #
      REJECT = "Reject"

      # No documentation available.
      #
      START_STEP = "StartStep"

      # No documentation available.
      #
      STOP_STEP = "StopStep"

      # No documentation available.
      #
      RESUME = "Resume"
    end

    # Includes enum constants for SourceType
    #
    module SourceType
      # No documentation available.
      #
      AWS_EC2_INSTANCE = "AWS::EC2::Instance"

      # No documentation available.
      #
      AWS_IOT_THING = "AWS::IoT::Thing"

      # No documentation available.
      #
      AWS_SSM_MANAGEDINSTANCE = "AWS::SSM::ManagedInstance"
    end

    # @!attribute association_ids
    #   <p>The association IDs that you want to run immediately and only one time.</p>
    #
    #   @return [Array<String>]
    #
    StartAssociationsOnceInput = ::Struct.new(
      :association_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    StartAssociationsOnceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute document_name
    #   <p>The name of the SSM document to run. This can be a public document or a custom document. To
    #      run a shared document belonging to another account, specify the document ARN. For more
    #      information about how to use shared documents, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/ssm-using-shared.html">Using shared SSM documents</a>
    #      in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute document_version
    #   <p>The version of the Automation runbook to use for this execution.</p>
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>A key-value map of execution parameters, which match the declared parameters in the
    #      Automation runbook.</p>
    #
    #   @return [Hash<String, Array<String>>]
    #
    # @!attribute client_token
    #   <p>User-provided idempotency token. The token must be unique, is case insensitive, enforces the
    #      UUID format, and can't be reused.</p>
    #
    #   @return [String]
    #
    # @!attribute mode
    #   <p>The execution mode of the automation. Valid modes include the following: Auto and
    #      Interactive. The default mode is Auto.</p>
    #
    #   Enum, one of: ["Auto", "Interactive"]
    #
    #   @return [String]
    #
    # @!attribute target_parameter_name
    #   <p>The name of the parameter used as the target resource for the rate-controlled execution.
    #      Required if you specify targets.</p>
    #
    #   @return [String]
    #
    # @!attribute targets
    #   <p>A key-value mapping to target resources. Required if you specify TargetParameterName.</p>
    #
    #   @return [Array<Target>]
    #
    # @!attribute target_maps
    #   <p>A key-value mapping of document parameters to target resources. Both Targets and TargetMaps
    #      can't be specified together.</p>
    #
    #   @return [Array<Hash<String, Array<String>>>]
    #
    # @!attribute max_concurrency
    #   <p>The maximum number of targets allowed to run this task in parallel. You can specify a
    #      number, such as 10, or a percentage, such as 10%. The default value is <code>10</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute max_errors
    #   <p>The number of errors that are allowed before the system stops running the automation on
    #      additional targets. You can specify either an absolute number of errors, for example 10, or a
    #      percentage of the target set, for example 10%. If you specify 3, for example, the system stops
    #      running the automation when the fourth error is received. If you specify 0, then the system stops
    #      running the automation on additional targets after the first error result is returned. If you run
    #      an automation on 50 resources and set max-errors to 10%, then the system stops running the
    #      automation on additional targets when the sixth error is received.</p>
    #            <p>Executions that are already running an automation when max-errors is reached are allowed to
    #      complete, but some of these executions may fail as well. If you need to ensure that there won't
    #      be more than max-errors failed executions, set max-concurrency to 1 so the executions proceed one
    #      at a time.</p>
    #
    #   @return [String]
    #
    # @!attribute target_locations
    #   <p>A location is a combination of Amazon Web Services Regions and/or Amazon Web Services accounts where you want to run the
    #      automation. Use this operation to start an automation in multiple Amazon Web Services Regions and multiple
    #      Amazon Web Services accounts. For more information, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-automation-multiple-accounts-and-regions.html">Running Automation workflows in multiple Amazon Web Services Regions and Amazon Web Services accounts</a> in the
    #       <i>Amazon Web Services Systems Manager User Guide</i>. </p>
    #
    #   @return [Array<TargetLocation>]
    #
    # @!attribute tags
    #   <p>Optional metadata that you assign to a resource. You can specify a maximum of five tags for
    #      an automation. Tags enable you to categorize a resource in different ways, such as by purpose,
    #      owner, or environment. For example, you might want to tag an automation to identify an
    #      environment or operating system. In this case, you could specify the following key-value
    #      pairs:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Key=environment,Value=test</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Key=OS,Value=Windows</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>To add tags to an existing automation, use the <a>AddTagsToResource</a>
    #       operation.</p>
    #            </note>
    #
    #   @return [Array<Tag>]
    #
    StartAutomationExecutionInput = ::Struct.new(
      :document_name,
      :document_version,
      :parameters,
      :client_token,
      :mode,
      :target_parameter_name,
      :targets,
      :target_maps,
      :max_concurrency,
      :max_errors,
      :target_locations,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute automation_execution_id
    #   <p>The unique ID of a newly scheduled automation execution.</p>
    #
    #   @return [String]
    #
    StartAutomationExecutionOutput = ::Struct.new(
      :automation_execution_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute scheduled_time
    #   <p>The date and time specified in the change request to run the Automation runbooks.</p>
    #            <note>
    #               <p>The Automation runbooks specified for the runbook workflow can't run until all required
    #       approvals for the change request have been received.</p>
    #            </note>
    #
    #   @return [Time]
    #
    # @!attribute document_name
    #   <p>The name of the change template document to run during the runbook workflow.</p>
    #
    #   @return [String]
    #
    # @!attribute document_version
    #   <p>The version of the change template document to run during the runbook workflow.</p>
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>A key-value map of parameters that match the declared parameters in the change template
    #      document.</p>
    #
    #   @return [Hash<String, Array<String>>]
    #
    # @!attribute change_request_name
    #   <p>The name of the change request associated with the runbook workflow to be run.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>The user-provided idempotency token. The token must be unique, is case insensitive, enforces
    #      the UUID format, and can't be reused.</p>
    #
    #   @return [String]
    #
    # @!attribute auto_approve
    #   <p>Indicates whether the change request can be approved automatically without the need for
    #      manual approvals.</p>
    #            <p>If <code>AutoApprovable</code> is enabled in a change template, then setting
    #       <code>AutoApprove</code> to <code>true</code> in <code>StartChangeRequestExecution</code>
    #      creates a change request that bypasses approver review.</p>
    #            <note>
    #               <p>Change Calendar restrictions are not bypassed in this scenario. If the state of an
    #       associated calendar is <code>CLOSED</code>, change freeze approvers must still grant permission
    #       for this change request to run. If they don't, the change won't be processed until the calendar
    #       state is again <code>OPEN</code>. </p>
    #            </note>
    #
    #   @return [Boolean]
    #
    # @!attribute runbooks
    #   <p>Information about the Automation runbooks that are run during the runbook workflow.</p>
    #            <note>
    #               <p>The Automation runbooks specified for the runbook workflow can't run until all required
    #       approvals for the change request have been received.</p>
    #            </note>
    #
    #   @return [Array<Runbook>]
    #
    # @!attribute tags
    #   <p>Optional metadata that you assign to a resource. You can specify a maximum of five tags for
    #      a change request. Tags enable you to categorize a resource in different ways, such as by
    #      purpose, owner, or environment. For example, you might want to tag a change request to identify
    #      an environment or target Amazon Web Services Region. In this case, you could specify the following key-value
    #      pairs:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Key=Environment,Value=Production</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Key=Region,Value=us-east-2</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute scheduled_end_time
    #   <p>The time that the requester expects the runbook workflow related to the change request to
    #      complete. The time is an estimate only that the requester provides for reviewers.</p>
    #
    #   @return [Time]
    #
    # @!attribute change_details
    #   <p>User-provided details about the change. If no details are provided, content specified in the
    #       <b>Template information</b> section of the associated change template
    #      is added.</p>
    #
    #   @return [String]
    #
    StartChangeRequestExecutionInput = ::Struct.new(
      :scheduled_time,
      :document_name,
      :document_version,
      :parameters,
      :change_request_name,
      :client_token,
      :auto_approve,
      :runbooks,
      :tags,
      :scheduled_end_time,
      :change_details,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.auto_approve ||= false
      end
    end

    # @!attribute automation_execution_id
    #   <p>The unique ID of a runbook workflow operation. (A runbook workflow is a type of Automation
    #      operation.) </p>
    #
    #   @return [String]
    #
    StartChangeRequestExecutionOutput = ::Struct.new(
      :automation_execution_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute target
    #   <p>The managed node to connect to for the session.</p>
    #
    #   @return [String]
    #
    # @!attribute document_name
    #   <p>The name of the SSM document to define the parameters and plugin settings for the session.
    #      For example, <code>SSM-SessionManagerRunShell</code>. You can call the <a>GetDocument</a> API to verify the document exists before attempting to start a session.
    #      If no document name is provided, a shell to the managed node is launched by default.</p>
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>The reason for connecting to the instance. This value is included in the details for the
    #       Amazon CloudWatch Events event created when you start the session.</p>
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>The values you want to specify for the parameters defined in the Session
    #      document.</p>
    #
    #   @return [Hash<String, Array<String>>]
    #
    StartSessionInput = ::Struct.new(
      :target,
      :document_name,
      :reason,
      :parameters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute session_id
    #   <p>The ID of the session.</p>
    #
    #   @return [String]
    #
    # @!attribute token_value
    #   <p>An encrypted token value containing session and caller information. Used to authenticate the
    #      connection to the managed node.</p>
    #
    #   @return [String]
    #
    # @!attribute stream_url
    #   <p>A URL back to SSM Agent on the managed node that the Session Manager client uses to send commands and
    #      receive output from the node. Format: <code>wss://ssmmessages.<b>region</b>.amazonaws.com/v1/data-channel/<b>session-id</b>?stream=(input|output)</code>
    #            </p>
    #            <p>
    #               <b>region</b> represents the Region identifier for an
    #   						Amazon Web Services Region supported by Amazon Web Services Systems Manager, such as <code>us-east-2</code> for the US East (Ohio) Region.
    #   						For a list of supported <b>region</b> values, see the <b>Region</b> column in <a href="https://docs.aws.amazon.com/general/latest/gr/ssm.html ssm_region">Systems Manager service endpoints</a> in the
    #           <i>Amazon Web Services General Reference</i>.</p>
    #            <p>
    #               <b>session-id</b> represents the ID of a Session Manager session, such as
    #       <code>1a2b3c4dEXAMPLE</code>.</p>
    #
    #   @return [String]
    #
    StartSessionOutput = ::Struct.new(
      :session_id,
      :token_value,
      :stream_url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The updated status is the same as the current status.</p>
    #
    StatusUnchanged = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Detailed information about an the execution state of an Automation step.</p>
    #
    # @!attribute step_name
    #   <p>The name of this execution step.</p>
    #
    #   @return [String]
    #
    # @!attribute action
    #   <p>The action this step performs. The action determines the behavior of the step.</p>
    #
    #   @return [String]
    #
    # @!attribute timeout_seconds
    #   <p>The timeout seconds of the step.</p>
    #
    #   @return [Integer]
    #
    # @!attribute on_failure
    #   <p>The action to take if the step fails. The default value is <code>Abort</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute max_attempts
    #   <p>The maximum number of tries to run the action of the step. The default value is
    #       <code>1</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute execution_start_time
    #   <p>If a step has begun execution, this contains the time the step started. If the step is in
    #      Pending status, this field isn't populated.</p>
    #
    #   @return [Time]
    #
    # @!attribute execution_end_time
    #   <p>If a step has finished execution, this contains the time the execution ended. If the step
    #      hasn't yet concluded, this field isn't populated.</p>
    #
    #   @return [Time]
    #
    # @!attribute step_status
    #   <p>The execution status for this step.</p>
    #
    #   Enum, one of: ["Pending", "InProgress", "Waiting", "Success", "TimedOut", "Cancelling", "Cancelled", "Failed", "PendingApproval", "Approved", "Rejected", "Scheduled", "RunbookInProgress", "PendingChangeCalendarOverride", "ChangeCalendarOverrideApproved", "ChangeCalendarOverrideRejected", "CompletedWithSuccess", "CompletedWithFailure"]
    #
    #   @return [String]
    #
    # @!attribute response_code
    #   <p>The response code returned by the execution of the step.</p>
    #
    #   @return [String]
    #
    # @!attribute inputs
    #   <p>Fully-resolved values passed into the step before execution.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute outputs
    #   <p>Returned values from the execution of the step.</p>
    #
    #   @return [Hash<String, Array<String>>]
    #
    # @!attribute response
    #   <p>A message associated with the response code for an execution.</p>
    #
    #   @return [String]
    #
    # @!attribute failure_message
    #   <p>If a step failed, this message explains why the execution failed.</p>
    #
    #   @return [String]
    #
    # @!attribute failure_details
    #   <p>Information about the Automation failure.</p>
    #
    #   @return [FailureDetails]
    #
    # @!attribute step_execution_id
    #   <p>The unique ID of a step execution.</p>
    #
    #   @return [String]
    #
    # @!attribute overridden_parameters
    #   <p>A user-specified list of parameters to override when running a step.</p>
    #
    #   @return [Hash<String, Array<String>>]
    #
    # @!attribute is_end
    #   <p>The flag which can be used to end automation no matter whether the step succeeds or
    #      fails.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute next_step
    #   <p>The next step after the step succeeds.</p>
    #
    #   @return [String]
    #
    # @!attribute is_critical
    #   <p>The flag which can be used to help decide whether the failure of current step leads to the
    #      Automation failure.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute valid_next_steps
    #   <p>Strategies used when step fails, we support Continue and Abort. Abort will fail the
    #      automation when the step fails. Continue will ignore the failure of current step and allow
    #      automation to run the next step. With conditional branching, we add step:stepName to support the
    #      automation to go to another specific step.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute targets
    #   <p>The targets for the step execution.</p>
    #
    #   @return [Array<Target>]
    #
    # @!attribute target_location
    #   <p>The combination of Amazon Web Services Regions and Amazon Web Services accounts targeted by the current Automation
    #      execution.</p>
    #
    #   @return [TargetLocation]
    #
    StepExecution = ::Struct.new(
      :step_name,
      :action,
      :timeout_seconds,
      :on_failure,
      :max_attempts,
      :execution_start_time,
      :execution_end_time,
      :step_status,
      :response_code,
      :inputs,
      :outputs,
      :response,
      :failure_message,
      :failure_details,
      :step_execution_id,
      :overridden_parameters,
      :is_end,
      :next_step,
      :is_critical,
      :valid_next_steps,
      :targets,
      :target_location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A filter to limit the amount of step execution information returned by the call.</p>
    #
    # @!attribute key
    #   <p>One or more keys to limit the results. Valid filter keys include the following: StepName,
    #      Action, StepExecutionId, StepExecutionStatus, StartTimeBefore, StartTimeAfter.</p>
    #
    #   Enum, one of: ["StartTimeBefore", "StartTimeAfter", "StepExecutionStatus", "StepExecutionId", "StepName", "Action"]
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>The values of the filter key.</p>
    #
    #   @return [Array<String>]
    #
    StepExecutionFilter = ::Struct.new(
      :key,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for StepExecutionFilterKey
    #
    module StepExecutionFilterKey
      # No documentation available.
      #
      START_TIME_BEFORE = "StartTimeBefore"

      # No documentation available.
      #
      START_TIME_AFTER = "StartTimeAfter"

      # No documentation available.
      #
      STEP_EXECUTION_STATUS = "StepExecutionStatus"

      # No documentation available.
      #
      STEP_EXECUTION_ID = "StepExecutionId"

      # No documentation available.
      #
      STEP_NAME = "StepName"

      # No documentation available.
      #
      ACTION = "Action"
    end

    # @!attribute automation_execution_id
    #   <p>The execution ID of the Automation to stop.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The stop request type. Valid types include the following: Cancel and Complete. The default
    #      type is Cancel.</p>
    #
    #   Enum, one of: ["Complete", "Cancel"]
    #
    #   @return [String]
    #
    StopAutomationExecutionInput = ::Struct.new(
      :automation_execution_id,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    StopAutomationExecutionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for StopType
    #
    module StopType
      # No documentation available.
      #
      COMPLETE = "Complete"

      # No documentation available.
      #
      CANCEL = "Cancel"
    end

    # <p>The sub-type count exceeded the limit for the inventory type.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    SubTypeCountLimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Metadata that you assign to your Amazon Web Services resources. Tags enable you to categorize your
    #    resources in different ways, for example, by purpose, owner, or environment. In Amazon Web Services Systems Manager, you
    #    can apply tags to Systems Manager documents (SSM documents), managed nodes, maintenance windows,
    #    parameters, patch baselines, OpsItems, and OpsMetadata.</p>
    #
    # @!attribute key
    #   <p>The name of the tag.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of the tag.</p>
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

    # <p>An array of search criteria that targets managed nodes using a key-value pair that you
    #    specify.</p>
    #          <note>
    #             <p> One or more targets must be specified for maintenance window Run Command-type tasks.
    #     Depending on the task, targets are optional for other maintenance window task types (Automation,
    #      Lambda, and Step Functions). For more information about running tasks
    #     that don't specify targets, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/maintenance-windows-targetless-tasks.html">Registering
    #      maintenance window tasks without targets</a> in the
    #     <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #          </note>
    #          <p>Supported formats include the following.</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>Key=InstanceIds,Values=<instance-id-1>,<instance-id-2>,<instance-id-3></code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Key=tag:<my-tag-key>,Values=<my-tag-value-1>,<my-tag-value-2></code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Key=tag-key,Values=<my-tag-key-1>,<my-tag-key-2></code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Run Command and Maintenance window targets only</b>:
    #       <code>Key=resource-groups:Name,Values=<resource-group-name></code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Maintenance window targets only</b>:
    #       <code>Key=resource-groups:ResourceTypeFilters,Values=<resource-type-1>,<resource-type-2></code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Automation targets only</b>:
    #       <code>Key=ResourceGroup;Values=<resource-group-name></code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>For example:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>Key=InstanceIds,Values=i-02573cafcfEXAMPLE,i-0471e04240EXAMPLE,i-07782c72faEXAMPLE</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Key=tag:CostCenter,Values=CostCenter1,CostCenter2,CostCenter3</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Key=tag-key,Values=Name,Instance-Type,CostCenter</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Run Command and Maintenance window targets only</b>:
    #       <code>Key=resource-groups:Name,Values=ProductionResourceGroup</code>
    #                </p>
    #                <p>This example demonstrates how to target all resources in the resource group <b>ProductionResourceGroup</b> in your maintenance window.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Maintenance window targets only</b>:
    #       <code>Key=resource-groups:ResourceTypeFilters,Values=AWS::EC2::INSTANCE,AWS::EC2::VPC</code>
    #                </p>
    #                <p>This example demonstrates how to target only Amazon Elastic Compute Cloud (Amazon EC2)
    #      instances and VPCs in your maintenance window.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Automation targets only</b>:
    #       <code>Key=ResourceGroup,Values=MyResourceGroup</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>State Manager association targets only</b>:
    #       <code>Key=InstanceIds,Values=*</code>
    #                </p>
    #                <p>This example demonstrates how to target all managed instances in the Amazon Web Services Region where
    #      the association was created.</p>
    #             </li>
    #          </ul>
    #          <p>For more information about how to send commands that target managed nodes using
    #     <code>Key,Value</code> parameters, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html#send-commands-targeting">Targeting multiple instances</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #
    # @!attribute key
    #   <p>User-defined criteria for sending commands that target managed nodes that meet the
    #      criteria.</p>
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>User-defined criteria that maps to <code>Key</code>. For example, if you specified
    #       <code>tag:ServerRole</code>, you could specify <code>value:WebServer</code> to run a command on
    #      instances that include EC2 tags of <code>ServerRole,WebServer</code>. </p>
    #            <p>Depending on the type of target, the maximum number of values for a key might be lower than
    #      the global maximum of 50.</p>
    #
    #   @return [Array<String>]
    #
    Target = ::Struct.new(
      :key,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You specified the <code>Safe</code> option for the DeregisterTargetFromMaintenanceWindow
    #    operation, but the target is still referenced in a task.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TargetInUseException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The combination of Amazon Web Services Regions and Amazon Web Services accounts targeted by the current Automation
    #    execution.</p>
    #
    # @!attribute accounts
    #   <p>The Amazon Web Services accounts targeted by the current Automation execution.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute regions
    #   <p>The Amazon Web Services Regions targeted by the current Automation execution.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute target_location_max_concurrency
    #   <p>The maximum number of Amazon Web Services Regions and Amazon Web Services accounts allowed to run the Automation
    #      concurrently.</p>
    #
    #   @return [String]
    #
    # @!attribute target_location_max_errors
    #   <p>The maximum number of errors allowed before the system stops queueing additional Automation
    #      executions for the currently running Automation.</p>
    #
    #   @return [String]
    #
    # @!attribute execution_role_name
    #   <p>The Automation execution role used by the currently running Automation. If not specified,
    #      the default value is <code>AWS-SystemsManager-AutomationExecutionRole</code>.</p>
    #
    #   @return [String]
    #
    TargetLocation = ::Struct.new(
      :accounts,
      :regions,
      :target_location_max_concurrency,
      :target_location_max_errors,
      :execution_role_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified target managed node for the session isn't fully configured for use with Session Manager.
    #    For more information, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/session-manager-getting-started.html">Getting started with
    #     Session Manager</a> in the <i>Amazon Web Services Systems Manager User Guide</i>. This error is also returned if you
    #    attempt to start a session on a managed node that is located in a different account or
    #    Region</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TargetNotConnected = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute session_id
    #   <p>The ID of the session to terminate.</p>
    #
    #   @return [String]
    #
    TerminateSessionInput = ::Struct.new(
      :session_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute session_id
    #   <p>The ID of the session that has been terminated.</p>
    #
    #   @return [String]
    #
    TerminateSessionOutput = ::Struct.new(
      :session_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The <code>Targets</code> parameter includes too many tags. Remove one or more tags and try
    #    the command again.</p>
    #
    TooManyTagsError = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>There are concurrent updates for a resource that supports one update at a time.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyUpdates = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The size of inventory data has exceeded the total size limit for the resource.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TotalSizeLimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the parameter from which you want to delete one or more labels.</p>
    #
    #   @return [String]
    #
    # @!attribute parameter_version
    #   <p>The specific version of the parameter which you want to delete one or more labels from. If
    #      it isn't present, the call will fail.</p>
    #
    #   @return [Integer]
    #
    # @!attribute labels
    #   <p>One or more labels to delete from the specified parameter version.</p>
    #
    #   @return [Array<String>]
    #
    UnlabelParameterVersionInput = ::Struct.new(
      :name,
      :parameter_version,
      :labels,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute removed_labels
    #   <p>A list of all labels deleted from the parameter.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute invalid_labels
    #   <p>The labels that aren't attached to the given parameter version.</p>
    #
    #   @return [Array<String>]
    #
    UnlabelParameterVersionOutput = ::Struct.new(
      :removed_labels,
      :invalid_labels,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The calendar entry contained in the specified SSM document isn't supported.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    UnsupportedCalendarException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Patching for applications released by Microsoft is only available on EC2 instances and
    #    advanced instances. To patch applications released by Microsoft on on-premises servers and VMs,
    #    you must enable advanced instances. For more information, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-managedinstances-advanced.html">Enabling
    #     the advanced-instances tier</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    UnsupportedFeatureRequiredException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The <code>Context</code> attribute that you specified for the <code>InventoryItem</code>
    #    isn't allowed for this inventory type. You can only use the <code>Context</code> attribute with
    #    inventory types like <code>AWS:ComplianceItem</code>.</p>
    #
    # @!attribute type_name
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    UnsupportedInventoryItemContextException = ::Struct.new(
      :type_name,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Inventory item type schema version has to match supported versions in the service. Check
    #    output of GetInventorySchema to see the available schema version for each type.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    UnsupportedInventorySchemaVersionException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The operating systems you specified isn't supported, or the operation isn't supported for
    #    the operating system.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    UnsupportedOperatingSystem = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The parameter type isn't supported.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    UnsupportedParameterType = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The document doesn't support the platform type of the given managed node ID(s). For example,
    #    you sent an document for a Windows managed node to a Linux node.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    UnsupportedPlatformType = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute association_id
    #   <p>The ID of the association you want to update. </p>
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>The parameters you want to update for the association. If you create a parameter using
    #      Parameter Store, a capability of Amazon Web Services Systems Manager, you can reference the parameter using
    #       <code>{{ssm:parameter-name}}</code>.</p>
    #
    #   @return [Hash<String, Array<String>>]
    #
    # @!attribute document_version
    #   <p>The document version you want update for the association. </p>
    #            <important>
    #               <p>State Manager doesn't support running associations that use a new version of a document if
    #       that document is shared from another account. State Manager always runs the <code>default</code>
    #       version of a document if shared from another account, even though the Systems Manager console shows that a
    #       new version was processed. If you want to run an association using a new version of a document
    #       shared form another account, you must set the document version to <code>default</code>.</p>
    #            </important>
    #
    #   @return [String]
    #
    # @!attribute schedule_expression
    #   <p>The cron expression used to schedule the association that you want to update.</p>
    #
    #   @return [String]
    #
    # @!attribute output_location
    #   <p>An S3 bucket where you want to store the results of this request.</p>
    #
    #   @return [InstanceAssociationOutputLocation]
    #
    # @!attribute name
    #   <p>The name of the SSM Command document or Automation runbook that contains the configuration
    #      information for the managed node.</p>
    #            <p>You can specify Amazon Web Services-predefined documents, documents you created, or a document that is
    #      shared with you from another account.</p>
    #            <p>For Systems Manager document (SSM document) that are shared with you from other Amazon Web Services accounts, you
    #      must specify the complete SSM document ARN, in the following format:</p>
    #            <p>
    #               <code>arn:aws:ssm:<i>region</i>:<i>account-id</i>:document/<i>document-name</i>
    #               </code>
    #            </p>
    #            <p>For example:</p>
    #            <p>
    #               <code>arn:aws:ssm:us-east-2:12345678912:document/My-Shared-Document</code>
    #            </p>
    #            <p>For Amazon Web Services-predefined documents and SSM documents you created in your account, you only need
    #      to specify the document name. For example, <code>AWS-ApplyPatchBaseline</code> or
    #       <code>My-Document</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute targets
    #   <p>The targets of the association.</p>
    #
    #   @return [Array<Target>]
    #
    # @!attribute association_name
    #   <p>The name of the association that you want to update.</p>
    #
    #   @return [String]
    #
    # @!attribute association_version
    #   <p>This parameter is provided for concurrency control purposes. You must specify the latest
    #      association version in the service. If you want to ensure that this request succeeds, either
    #      specify <code>$LATEST</code>, or omit this parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute automation_target_parameter_name
    #   <p>Choose the parameter that will define how your automation will branch out. This target is
    #      required for associations that use an Automation runbook and target resources by using rate
    #      controls. Automation is a capability of Amazon Web Services Systems Manager.</p>
    #
    #   @return [String]
    #
    # @!attribute max_errors
    #   <p>The number of errors that are allowed before the system stops sending requests to run the
    #      association on additional targets. You can specify either an absolute number of errors, for
    #      example 10, or a percentage of the target set, for example 10%. If you specify 3, for example,
    #      the system stops sending requests when the fourth error is received. If you specify 0, then the
    #      system stops sending requests after the first error is returned. If you run an association on 50
    #      managed nodes and set <code>MaxError</code> to 10%, then the system stops sending the request
    #      when the sixth error is received.</p>
    #            <p>Executions that are already running an association when <code>MaxErrors</code> is reached
    #      are allowed to complete, but some of these executions may fail as well. If you need to ensure
    #      that there won't be more than max-errors failed executions, set <code>MaxConcurrency</code> to 1
    #      so that executions proceed one at a time.</p>
    #
    #   @return [String]
    #
    # @!attribute max_concurrency
    #   <p>The maximum number of targets allowed to run the association at the same time. You can
    #      specify a number, for example 10, or a percentage of the target set, for example 10%. The default
    #      value is 100%, which means all targets run the association at the same time.</p>
    #            <p>If a new managed node starts and attempts to run an association while Systems Manager is running
    #       <code>MaxConcurrency</code> associations, the association is allowed to run. During the next
    #      association interval, the new managed node will process its association within the limit
    #      specified for <code>MaxConcurrency</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute compliance_severity
    #   <p>The severity level to assign to the association.</p>
    #
    #   Enum, one of: ["CRITICAL", "HIGH", "MEDIUM", "LOW", "UNSPECIFIED"]
    #
    #   @return [String]
    #
    # @!attribute sync_compliance
    #   <p>The mode for generating association compliance. You can specify <code>AUTO</code> or
    #       <code>MANUAL</code>. In <code>AUTO</code> mode, the system uses the status of the association
    #      execution to determine the compliance status. If the association execution runs successfully,
    #      then the association is <code>COMPLIANT</code>. If the association execution doesn't run
    #      successfully, the association is <code>NON-COMPLIANT</code>.</p>
    #            <p>In <code>MANUAL</code> mode, you must specify the <code>AssociationId</code> as a parameter
    #      for the <a>PutComplianceItems</a> API operation. In this case, compliance data isn't
    #      managed by State Manager, a capability of Amazon Web Services Systems Manager. It is managed by your direct call to the
    #       <a>PutComplianceItems</a> API operation.</p>
    #            <p>By default, all associations use <code>AUTO</code> mode.</p>
    #
    #   Enum, one of: ["AUTO", "MANUAL"]
    #
    #   @return [String]
    #
    # @!attribute apply_only_at_cron_interval
    #   <p>By default, when you update an association, the system runs it immediately after it is
    #      updated and then according to the schedule you specified. Specify this option if you don't want
    #      an association to run immediately after you update it. This parameter isn't supported for rate
    #      expressions.</p>
    #
    #            <p>If you chose this option when you created an association and later you edit that association
    #      or you make changes to the SSM document on which that association is based (by using the
    #      Documents page in the console), State Manager applies the association at the next specified cron
    #      interval. For example, if you chose the <code>Latest</code> version of an SSM document when you
    #      created an association and you edit the association by choosing a different document version on
    #      the Documents page, State Manager applies the association at the next specified cron interval if
    #      you previously selected this option. If this option wasn't selected, State Manager immediately
    #      runs the association.</p>
    #            <p>You can reset this option. To do so, specify the <code>no-apply-only-at-cron-interval</code>
    #      parameter when you update the association from the command line. This parameter forces the
    #      association to run immediately after updating it and according to the interval specified.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute calendar_names
    #   <p>The names or Amazon Resource Names (ARNs) of the Change Calendar type documents you want to
    #      gate your associations under. The associations only run when that change calendar is open. For
    #      more information, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-change-calendar">Amazon Web Services Systems Manager Change
    #       Calendar</a>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute target_locations
    #   <p>A location is a combination of Amazon Web Services Regions and Amazon Web Services accounts where you want to run the
    #      association. Use this action to update an association in multiple Regions and multiple
    #      accounts.</p>
    #
    #   @return [Array<TargetLocation>]
    #
    # @!attribute schedule_offset
    #   <p>Number of days to wait after the scheduled day to run an association. For example, if you
    #      specified a cron schedule of <code>cron(0 0 ? * THU 2 *)</code>, you could specify an offset of 3
    #      to run the association each Sunday after the second Thursday of the month. For more information
    #      about cron schedules for associations, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/reference-cron-and-rate-expressions.html">Reference: Cron
    #       and rate expressions for Systems Manager</a> in the <i>Amazon Web Services Systems Manager User Guide</i>. </p>
    #            <note>
    #               <p>To use offsets, you must specify the <code>ApplyOnlyAtCronInterval</code> parameter. This
    #       option tells the system not to run an association immediately after you create it. </p>
    #            </note>
    #
    #   @return [Integer]
    #
    # @!attribute target_maps
    #   <p>A key-value mapping of document parameters to target resources. Both Targets and TargetMaps
    #      can't be specified together.</p>
    #
    #   @return [Array<Hash<String, Array<String>>>]
    #
    UpdateAssociationInput = ::Struct.new(
      :association_id,
      :parameters,
      :document_version,
      :schedule_expression,
      :output_location,
      :name,
      :targets,
      :association_name,
      :association_version,
      :automation_target_parameter_name,
      :max_errors,
      :max_concurrency,
      :compliance_severity,
      :sync_compliance,
      :apply_only_at_cron_interval,
      :calendar_names,
      :target_locations,
      :schedule_offset,
      :target_maps,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.apply_only_at_cron_interval ||= false
      end

      def to_s
        "#<struct AWS::SDK::SSM::Types::UpdateAssociationInput "\
          "association_id=#{association_id || 'nil'}, "\
          "parameters=\"[SENSITIVE]\", "\
          "document_version=#{document_version || 'nil'}, "\
          "schedule_expression=#{schedule_expression || 'nil'}, "\
          "output_location=#{output_location || 'nil'}, "\
          "name=#{name || 'nil'}, "\
          "targets=#{targets || 'nil'}, "\
          "association_name=#{association_name || 'nil'}, "\
          "association_version=#{association_version || 'nil'}, "\
          "automation_target_parameter_name=#{automation_target_parameter_name || 'nil'}, "\
          "max_errors=#{max_errors || 'nil'}, "\
          "max_concurrency=#{max_concurrency || 'nil'}, "\
          "compliance_severity=#{compliance_severity || 'nil'}, "\
          "sync_compliance=#{sync_compliance || 'nil'}, "\
          "apply_only_at_cron_interval=#{apply_only_at_cron_interval || 'nil'}, "\
          "calendar_names=#{calendar_names || 'nil'}, "\
          "target_locations=#{target_locations || 'nil'}, "\
          "schedule_offset=#{schedule_offset || 'nil'}, "\
          "target_maps=#{target_maps || 'nil'}>"
      end
    end

    # @!attribute association_description
    #   <p>The description of the association that was updated.</p>
    #
    #   @return [AssociationDescription]
    #
    UpdateAssociationOutput = ::Struct.new(
      :association_description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the SSM document.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_id
    #   <p>The managed node ID.</p>
    #
    #   @return [String]
    #
    # @!attribute association_status
    #   <p>The association status.</p>
    #
    #   @return [AssociationStatus]
    #
    UpdateAssociationStatusInput = ::Struct.new(
      :name,
      :instance_id,
      :association_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute association_description
    #   <p>Information about the association.</p>
    #
    #   @return [AssociationDescription]
    #
    UpdateAssociationStatusOutput = ::Struct.new(
      :association_description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of a custom document that you want to set as the default version.</p>
    #
    #   @return [String]
    #
    # @!attribute document_version
    #   <p>The version of a custom document that you want to set as the default version.</p>
    #
    #   @return [String]
    #
    UpdateDocumentDefaultVersionInput = ::Struct.new(
      :name,
      :document_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute description
    #   <p>The description of a custom document that you want to set as the default version.</p>
    #
    #   @return [DocumentDefaultVersionDescription]
    #
    UpdateDocumentDefaultVersionOutput = ::Struct.new(
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute content
    #   <p>A valid JSON or YAML string.</p>
    #
    #   @return [String]
    #
    # @!attribute attachments
    #   <p>A list of key-value pairs that describe attachments to a version of a document.</p>
    #
    #   @return [Array<AttachmentsSource>]
    #
    # @!attribute name
    #   <p>The name of the SSM document that you want to update.</p>
    #
    #   @return [String]
    #
    # @!attribute display_name
    #   <p>The friendly name of the SSM document that you want to update. This value can differ for
    #      each version of the document. If you don't specify a value for this parameter in your request,
    #      the existing value is applied to the new document version.</p>
    #
    #   @return [String]
    #
    # @!attribute version_name
    #   <p>An optional field specifying the version of the artifact you are updating with the document.
    #      For example, "Release 12, Update 6". This value is unique across all versions of a document, and
    #      can't be changed.</p>
    #
    #   @return [String]
    #
    # @!attribute document_version
    #   <p>The version of the document that you want to update. Currently, Systems Manager supports updating only
    #      the latest version of the document. You can specify the version number of the latest version or
    #      use the <code>$LATEST</code> variable.</p>
    #            <note>
    #               <p>If you change a document version for a State Manager association, Systems Manager immediately runs
    #       the association unless you previously specifed the <code>apply-only-at-cron-interval</code>
    #       parameter.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute document_format
    #   <p>Specify the document format for the new document version. Systems Manager supports JSON and YAML
    #      documents. JSON is the default format.</p>
    #
    #   Enum, one of: ["YAML", "JSON", "TEXT"]
    #
    #   @return [String]
    #
    # @!attribute target_type
    #   <p>Specify a new target type for the document.</p>
    #
    #   @return [String]
    #
    UpdateDocumentInput = ::Struct.new(
      :content,
      :attachments,
      :name,
      :display_name,
      :version_name,
      :document_version,
      :document_format,
      :target_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the change template for which a version's metadata is to be updated.</p>
    #
    #   @return [String]
    #
    # @!attribute document_version
    #   <p>The version of a change template in which to update approval metadata.</p>
    #
    #   @return [String]
    #
    # @!attribute document_reviews
    #   <p>The change template review details to update.</p>
    #
    #   @return [DocumentReviews]
    #
    UpdateDocumentMetadataInput = ::Struct.new(
      :name,
      :document_version,
      :document_reviews,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateDocumentMetadataOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute document_description
    #   <p>A description of the document that was updated.</p>
    #
    #   @return [DocumentDescription]
    #
    UpdateDocumentOutput = ::Struct.new(
      :document_description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute window_id
    #   <p>The ID of the maintenance window to update.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the maintenance window.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>An optional description for the update request.</p>
    #
    #   @return [String]
    #
    # @!attribute start_date
    #   <p>The date and time, in ISO-8601 Extended format, for when you want the maintenance window to
    #      become active. <code>StartDate</code> allows you to delay activation of the maintenance window
    #      until the specified future date.</p>
    #
    #   @return [String]
    #
    # @!attribute end_date
    #   <p>The date and time, in ISO-8601 Extended format, for when you want the maintenance window to
    #      become inactive. <code>EndDate</code> allows you to set a date and time in the future when the
    #      maintenance window will no longer run.</p>
    #
    #   @return [String]
    #
    # @!attribute schedule
    #   <p>The schedule of the maintenance window in the form of a cron or rate expression.</p>
    #
    #   @return [String]
    #
    # @!attribute schedule_timezone
    #   <p>The time zone that the scheduled maintenance window executions are based on, in Internet
    #      Assigned Numbers Authority (IANA) format. For example: "America/Los_Angeles", "UTC", or
    #      "Asia/Seoul". For more information, see the <a href="https://www.iana.org/time-zones">Time
    #       Zone Database</a> on the IANA website.</p>
    #
    #   @return [String]
    #
    # @!attribute schedule_offset
    #   <p>The number of days to wait after the date and time specified by a cron expression before
    #      running the maintenance window.</p>
    #            <p>For example, the following cron expression schedules a maintenance window to run the third
    #      Tuesday of every month at 11:30 PM.</p>
    #            <p>
    #               <code>cron(30 23 ? * TUE 3 *)</code>
    #            </p>
    #            <p>If the schedule offset is <code>2</code>, the maintenance window won't run until two days
    #      later.</p>
    #
    #   @return [Integer]
    #
    # @!attribute duration
    #   <p>The duration of the maintenance window in hours.</p>
    #
    #   @return [Integer]
    #
    # @!attribute cutoff
    #   <p>The number of hours before the end of the maintenance window that Amazon Web Services Systems Manager stops scheduling
    #      new tasks for execution.</p>
    #
    #   @return [Integer]
    #
    # @!attribute allow_unassociated_targets
    #   <p>Whether targets must be registered with the maintenance window before tasks can be defined
    #      for those targets.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute enabled
    #   <p>Whether the maintenance window is enabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute replace
    #   <p>If <code>True</code>, then all fields that are required by the <a>CreateMaintenanceWindow</a> operation are also required for this API request. Optional
    #      fields that aren't specified are set to null. </p>
    #
    #   @return [Boolean]
    #
    UpdateMaintenanceWindowInput = ::Struct.new(
      :window_id,
      :name,
      :description,
      :start_date,
      :end_date,
      :schedule,
      :schedule_timezone,
      :schedule_offset,
      :duration,
      :cutoff,
      :allow_unassociated_targets,
      :enabled,
      :replace,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::SSM::Types::UpdateMaintenanceWindowInput "\
          "window_id=#{window_id || 'nil'}, "\
          "name=#{name || 'nil'}, "\
          "description=\"[SENSITIVE]\", "\
          "start_date=#{start_date || 'nil'}, "\
          "end_date=#{end_date || 'nil'}, "\
          "schedule=#{schedule || 'nil'}, "\
          "schedule_timezone=#{schedule_timezone || 'nil'}, "\
          "schedule_offset=#{schedule_offset || 'nil'}, "\
          "duration=#{duration || 'nil'}, "\
          "cutoff=#{cutoff || 'nil'}, "\
          "allow_unassociated_targets=#{allow_unassociated_targets || 'nil'}, "\
          "enabled=#{enabled || 'nil'}, "\
          "replace=#{replace || 'nil'}>"
      end
    end

    # @!attribute window_id
    #   <p>The ID of the created maintenance window.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the maintenance window.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>An optional description of the update.</p>
    #
    #   @return [String]
    #
    # @!attribute start_date
    #   <p>The date and time, in ISO-8601 Extended format, for when the maintenance window is scheduled
    #      to become active. The maintenance window won't run before this specified time.</p>
    #
    #   @return [String]
    #
    # @!attribute end_date
    #   <p>The date and time, in ISO-8601 Extended format, for when the maintenance window is scheduled
    #      to become inactive. The maintenance window won't run after this specified time.</p>
    #
    #   @return [String]
    #
    # @!attribute schedule
    #   <p>The schedule of the maintenance window in the form of a cron or rate expression.</p>
    #
    #   @return [String]
    #
    # @!attribute schedule_timezone
    #   <p>The time zone that the scheduled maintenance window executions are based on, in Internet
    #      Assigned Numbers Authority (IANA) format. For example: "America/Los_Angeles", "UTC", or
    #      "Asia/Seoul". For more information, see the <a href="https://www.iana.org/time-zones">Time
    #       Zone Database</a> on the IANA website.</p>
    #
    #   @return [String]
    #
    # @!attribute schedule_offset
    #   <p>The number of days to wait to run a maintenance window after the scheduled cron expression
    #      date and time.</p>
    #
    #   @return [Integer]
    #
    # @!attribute duration
    #   <p>The duration of the maintenance window in hours.</p>
    #
    #   @return [Integer]
    #
    # @!attribute cutoff
    #   <p>The number of hours before the end of the maintenance window that Amazon Web Services Systems Manager stops scheduling
    #      new tasks for execution.</p>
    #
    #   @return [Integer]
    #
    # @!attribute allow_unassociated_targets
    #   <p>Whether targets must be registered with the maintenance window before tasks can be defined
    #      for those targets.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute enabled
    #   <p>Whether the maintenance window is enabled.</p>
    #
    #   @return [Boolean]
    #
    UpdateMaintenanceWindowOutput = ::Struct.new(
      :window_id,
      :name,
      :description,
      :start_date,
      :end_date,
      :schedule,
      :schedule_timezone,
      :schedule_offset,
      :duration,
      :cutoff,
      :allow_unassociated_targets,
      :enabled,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.duration ||= 0
        self.cutoff ||= 0
        self.allow_unassociated_targets ||= false
        self.enabled ||= false
      end

      def to_s
        "#<struct AWS::SDK::SSM::Types::UpdateMaintenanceWindowOutput "\
          "window_id=#{window_id || 'nil'}, "\
          "name=#{name || 'nil'}, "\
          "description=\"[SENSITIVE]\", "\
          "start_date=#{start_date || 'nil'}, "\
          "end_date=#{end_date || 'nil'}, "\
          "schedule=#{schedule || 'nil'}, "\
          "schedule_timezone=#{schedule_timezone || 'nil'}, "\
          "schedule_offset=#{schedule_offset || 'nil'}, "\
          "duration=#{duration || 'nil'}, "\
          "cutoff=#{cutoff || 'nil'}, "\
          "allow_unassociated_targets=#{allow_unassociated_targets || 'nil'}, "\
          "enabled=#{enabled || 'nil'}>"
      end
    end

    # @!attribute window_id
    #   <p>The maintenance window ID with which to modify the target.</p>
    #
    #   @return [String]
    #
    # @!attribute window_target_id
    #   <p>The target ID to modify.</p>
    #
    #   @return [String]
    #
    # @!attribute targets
    #   <p>The targets to add or replace.</p>
    #
    #   @return [Array<Target>]
    #
    # @!attribute owner_information
    #   <p>User-provided value that will be included in any Amazon CloudWatch Events events raised while
    #      running tasks for these targets in this maintenance window.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>A name for the update.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>An optional description for the update.</p>
    #
    #   @return [String]
    #
    # @!attribute replace
    #   <p>If <code>True</code>, then all fields that are required by the <a>RegisterTargetWithMaintenanceWindow</a> operation are also required for this API
    #      request. Optional fields that aren't specified are set to null.</p>
    #
    #   @return [Boolean]
    #
    UpdateMaintenanceWindowTargetInput = ::Struct.new(
      :window_id,
      :window_target_id,
      :targets,
      :owner_information,
      :name,
      :description,
      :replace,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::SSM::Types::UpdateMaintenanceWindowTargetInput "\
          "window_id=#{window_id || 'nil'}, "\
          "window_target_id=#{window_target_id || 'nil'}, "\
          "targets=#{targets || 'nil'}, "\
          "owner_information=\"[SENSITIVE]\", "\
          "name=#{name || 'nil'}, "\
          "description=\"[SENSITIVE]\", "\
          "replace=#{replace || 'nil'}>"
      end
    end

    # @!attribute window_id
    #   <p>The maintenance window ID specified in the update request.</p>
    #
    #   @return [String]
    #
    # @!attribute window_target_id
    #   <p>The target ID specified in the update request.</p>
    #
    #   @return [String]
    #
    # @!attribute targets
    #   <p>The updated targets.</p>
    #
    #   @return [Array<Target>]
    #
    # @!attribute owner_information
    #   <p>The updated owner.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The updated name.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The updated description.</p>
    #
    #   @return [String]
    #
    UpdateMaintenanceWindowTargetOutput = ::Struct.new(
      :window_id,
      :window_target_id,
      :targets,
      :owner_information,
      :name,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::SSM::Types::UpdateMaintenanceWindowTargetOutput "\
          "window_id=#{window_id || 'nil'}, "\
          "window_target_id=#{window_target_id || 'nil'}, "\
          "targets=#{targets || 'nil'}, "\
          "owner_information=\"[SENSITIVE]\", "\
          "name=#{name || 'nil'}, "\
          "description=\"[SENSITIVE]\">"
      end
    end

    # @!attribute window_id
    #   <p>The maintenance window ID that contains the task to modify.</p>
    #
    #   @return [String]
    #
    # @!attribute window_task_id
    #   <p>The task ID to modify.</p>
    #
    #   @return [String]
    #
    # @!attribute targets
    #   <p>The targets (either managed nodes or tags) to modify. Managed nodes are specified using the
    #      format <code>Key=instanceids,Values=instanceID_1,instanceID_2</code>. Tags are specified using
    #      the format <code> Key=tag_name,Values=tag_value</code>. </p>
    #            <note>
    #               <p>One or more targets must be specified for maintenance window Run Command-type tasks.
    #       Depending on the task, targets are optional for other maintenance window task types (Automation,
    #        Lambda, and Step Functions). For more information about running tasks
    #       that don't specify targets, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/maintenance-windows-targetless-tasks.html">Registering
    #        maintenance window tasks without targets</a> in the
    #       <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #            </note>
    #
    #   @return [Array<Target>]
    #
    # @!attribute task_arn
    #   <p>The task ARN to modify.</p>
    #
    #   @return [String]
    #
    # @!attribute service_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM service role for Amazon Web Services Systems Manager to assume when running a
    #     maintenance window task. If you do not specify a service role ARN, Systems Manager uses your account's
    #     service-linked role.  If no service-linked role for Systems Manager exists in your account, it is created when you run
    #     <code>RegisterTaskWithMaintenanceWindow</code>.</p>
    #            <p>For more information, see the following topics in the in the <i>Amazon Web Services Systems Manager User Guide</i>:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/using-service-linked-roles.html slr-permissions">Using
    #       service-linked roles for Systems Manager</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-maintenance-permissions.html maintenance-window-tasks-service-role">Should I use a service-linked role or a custom service role to run maintenance window tasks?
    #      </a>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute task_parameters
    #   <p>The parameters to modify.</p>
    #            <note>
    #               <p>
    #                  <code>TaskParameters</code> has been deprecated. To specify parameters to pass to a task when it runs,
    #         instead use the <code>Parameters</code> option in the <code>TaskInvocationParameters</code> structure. For information
    #         about how Systems Manager handles these options for the supported maintenance window task
    #         types, see <a>MaintenanceWindowTaskInvocationParameters</a>.</p>
    #            </note>
    #            <p>The map has the following format:</p>
    #            <p>Key: string, between 1 and 255 characters</p>
    #            <p>Value: an array of strings, each string is between 1 and 255 characters</p>
    #
    #   @return [Hash<String, MaintenanceWindowTaskParameterValueExpression>]
    #
    # @!attribute task_invocation_parameters
    #   <p>The parameters that the task should use during execution. Populate only the fields that
    #      match the task type. All other fields should be empty.</p>
    #            <important>
    #               <p>When you update a maintenance window task that has options specified in
    #        <code>TaskInvocationParameters</code>, you must provide again all the
    #        <code>TaskInvocationParameters</code> values that you want to retain. The values you don't
    #       specify again are removed. For example, suppose that when you registered a Run Command task, you
    #       specified <code>TaskInvocationParameters</code> values for <code>Comment</code>,
    #        <code>NotificationConfig</code>, and <code>OutputS3BucketName</code>. If you update the
    #       maintenance window task and specify only a different <code>OutputS3BucketName</code> value, the
    #       values for <code>Comment</code> and <code>NotificationConfig</code> are removed.</p>
    #            </important>
    #
    #   @return [MaintenanceWindowTaskInvocationParameters]
    #
    # @!attribute priority
    #   <p>The new task priority to specify. The lower the number, the higher the priority. Tasks that
    #      have the same priority are scheduled in parallel.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max_concurrency
    #   <p>The new <code>MaxConcurrency</code> value you want to specify. <code>MaxConcurrency</code>
    #      is the number of targets that are allowed to run this task, in parallel.</p>
    #            <note>
    #               <p>Although this element is listed as "Required: No", a value can be omitted only when you are
    #       registering or updating a <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/maintenance-windows-targetless-tasks.html">targetless
    #        task</a> You must provide a value in all other cases.</p>
    #               <p>For maintenance window tasks without a target specified, you can't supply a value for this
    #       option. Instead, the system inserts a placeholder value of <code>1</code>. This value doesn't
    #       affect the running of your task.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute max_errors
    #   <p>The new <code>MaxErrors</code> value to specify. <code>MaxErrors</code> is the maximum
    #      number of errors that are allowed before the task stops being scheduled.</p>
    #            <note>
    #               <p>Although this element is listed as "Required: No", a value can be omitted only when you are
    #       registering or updating a <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/maintenance-windows-targetless-tasks.html">targetless
    #        task</a> You must provide a value in all other cases.</p>
    #               <p>For maintenance window tasks without a target specified, you can't supply a value for this
    #       option. Instead, the system inserts a placeholder value of <code>1</code>. This value doesn't
    #       affect the running of your task.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute logging_info
    #   <p>The new logging location in Amazon S3 to specify.</p>
    #            <note>
    #               <p>
    #                  <code>LoggingInfo</code> has been deprecated. To specify an Amazon Simple Storage Service (Amazon S3) bucket to contain logs, instead use the
    #         <code>OutputS3BucketName</code> and <code>OutputS3KeyPrefix</code> options in the <code>TaskInvocationParameters</code> structure.
    #         For information about how Amazon Web Services Systems Manager handles these options for the supported maintenance
    #         window task types, see <a>MaintenanceWindowTaskInvocationParameters</a>.</p>
    #            </note>
    #
    #   @return [LoggingInfo]
    #
    # @!attribute name
    #   <p>The new task name to specify.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The new task description to specify.</p>
    #
    #   @return [String]
    #
    # @!attribute replace
    #   <p>If True, then all fields that are required by the <a>RegisterTaskWithMaintenanceWindow</a> operation are also required for this API request.
    #      Optional fields that aren't specified are set to null.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute cutoff_behavior
    #   <p>Indicates whether tasks should continue to run after the cutoff time specified in the
    #      maintenance windows is reached. </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CONTINUE_TASK</code>: When the cutoff time is reached, any tasks that are running
    #        continue. The default value.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CANCEL_TASK</code>:</p>
    #                  <ul>
    #                     <li>
    #                        <p>For Automation, Lambda, Step Functions tasks: When the cutoff
    #          time is reached, any task invocations that are already running continue, but no new task
    #          invocations are started.</p>
    #                     </li>
    #                     <li>
    #                        <p>For Run Command tasks: When the cutoff time is reached, the system sends a <a>CancelCommand</a> operation that attempts to cancel the command associated with the
    #          task. However, there is no guarantee that the command will be terminated and the underlying
    #          process stopped.</p>
    #                     </li>
    #                  </ul>
    #                  <p>The status for tasks that are not completed is <code>TIMED_OUT</code>.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["CONTINUE_TASK", "CANCEL_TASK"]
    #
    #   @return [String]
    #
    UpdateMaintenanceWindowTaskInput = ::Struct.new(
      :window_id,
      :window_task_id,
      :targets,
      :task_arn,
      :service_role_arn,
      :task_parameters,
      :task_invocation_parameters,
      :priority,
      :max_concurrency,
      :max_errors,
      :logging_info,
      :name,
      :description,
      :replace,
      :cutoff_behavior,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::SSM::Types::UpdateMaintenanceWindowTaskInput "\
          "window_id=#{window_id || 'nil'}, "\
          "window_task_id=#{window_task_id || 'nil'}, "\
          "targets=#{targets || 'nil'}, "\
          "task_arn=#{task_arn || 'nil'}, "\
          "service_role_arn=#{service_role_arn || 'nil'}, "\
          "task_parameters=\"[SENSITIVE]\", "\
          "task_invocation_parameters=#{task_invocation_parameters || 'nil'}, "\
          "priority=#{priority || 'nil'}, "\
          "max_concurrency=#{max_concurrency || 'nil'}, "\
          "max_errors=#{max_errors || 'nil'}, "\
          "logging_info=#{logging_info || 'nil'}, "\
          "name=#{name || 'nil'}, "\
          "description=\"[SENSITIVE]\", "\
          "replace=#{replace || 'nil'}, "\
          "cutoff_behavior=#{cutoff_behavior || 'nil'}>"
      end
    end

    # @!attribute window_id
    #   <p>The ID of the maintenance window that was updated.</p>
    #
    #   @return [String]
    #
    # @!attribute window_task_id
    #   <p>The task ID of the maintenance window that was updated.</p>
    #
    #   @return [String]
    #
    # @!attribute targets
    #   <p>The updated target values.</p>
    #
    #   @return [Array<Target>]
    #
    # @!attribute task_arn
    #   <p>The updated task ARN value.</p>
    #
    #   @return [String]
    #
    # @!attribute service_role_arn
    #   <p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) service role to use to publish Amazon Simple Notification Service
    #   (Amazon SNS) notifications for maintenance window Run Command tasks.</p>
    #
    #   @return [String]
    #
    # @!attribute task_parameters
    #   <p>The updated parameter values.</p>
    #            <note>
    #               <p>
    #                  <code>TaskParameters</code> has been deprecated. To specify parameters to pass to a task when it runs,
    #         instead use the <code>Parameters</code> option in the <code>TaskInvocationParameters</code> structure. For information
    #         about how Systems Manager handles these options for the supported maintenance window task
    #         types, see <a>MaintenanceWindowTaskInvocationParameters</a>.</p>
    #            </note>
    #
    #   @return [Hash<String, MaintenanceWindowTaskParameterValueExpression>]
    #
    # @!attribute task_invocation_parameters
    #   <p>The updated parameter values.</p>
    #
    #   @return [MaintenanceWindowTaskInvocationParameters]
    #
    # @!attribute priority
    #   <p>The updated priority value.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max_concurrency
    #   <p>The updated <code>MaxConcurrency</code> value.</p>
    #
    #   @return [String]
    #
    # @!attribute max_errors
    #   <p>The updated <code>MaxErrors</code> value.</p>
    #
    #   @return [String]
    #
    # @!attribute logging_info
    #   <p>The updated logging information in Amazon S3.</p>
    #            <note>
    #               <p>
    #                  <code>LoggingInfo</code> has been deprecated. To specify an Amazon Simple Storage Service (Amazon S3) bucket to contain logs, instead use the
    #         <code>OutputS3BucketName</code> and <code>OutputS3KeyPrefix</code> options in the <code>TaskInvocationParameters</code> structure.
    #         For information about how Amazon Web Services Systems Manager handles these options for the supported maintenance
    #         window task types, see <a>MaintenanceWindowTaskInvocationParameters</a>.</p>
    #            </note>
    #
    #   @return [LoggingInfo]
    #
    # @!attribute name
    #   <p>The updated task name.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The updated task description.</p>
    #
    #   @return [String]
    #
    # @!attribute cutoff_behavior
    #   <p>The specification for whether tasks should continue to run after the cutoff time specified
    #      in the maintenance windows is reached. </p>
    #
    #   Enum, one of: ["CONTINUE_TASK", "CANCEL_TASK"]
    #
    #   @return [String]
    #
    UpdateMaintenanceWindowTaskOutput = ::Struct.new(
      :window_id,
      :window_task_id,
      :targets,
      :task_arn,
      :service_role_arn,
      :task_parameters,
      :task_invocation_parameters,
      :priority,
      :max_concurrency,
      :max_errors,
      :logging_info,
      :name,
      :description,
      :cutoff_behavior,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.priority ||= 0
      end

      def to_s
        "#<struct AWS::SDK::SSM::Types::UpdateMaintenanceWindowTaskOutput "\
          "window_id=#{window_id || 'nil'}, "\
          "window_task_id=#{window_task_id || 'nil'}, "\
          "targets=#{targets || 'nil'}, "\
          "task_arn=#{task_arn || 'nil'}, "\
          "service_role_arn=#{service_role_arn || 'nil'}, "\
          "task_parameters=\"[SENSITIVE]\", "\
          "task_invocation_parameters=#{task_invocation_parameters || 'nil'}, "\
          "priority=#{priority || 'nil'}, "\
          "max_concurrency=#{max_concurrency || 'nil'}, "\
          "max_errors=#{max_errors || 'nil'}, "\
          "logging_info=#{logging_info || 'nil'}, "\
          "name=#{name || 'nil'}, "\
          "description=\"[SENSITIVE]\", "\
          "cutoff_behavior=#{cutoff_behavior || 'nil'}>"
      end
    end

    # @!attribute instance_id
    #   <p>The ID of the managed node where you want to update the role.</p>
    #
    #   @return [String]
    #
    # @!attribute iam_role
    #   <p>The IAM role you want to assign or change.</p>
    #
    #   @return [String]
    #
    UpdateManagedInstanceRoleInput = ::Struct.new(
      :instance_id,
      :iam_role,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateManagedInstanceRoleOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute description
    #   <p>Update the information about the OpsItem. Provide enough information so that users reading
    #      this OpsItem for the first time understand the issue. </p>
    #
    #   @return [String]
    #
    # @!attribute operational_data
    #   <p>Add new keys or edit existing key-value pairs of the OperationalData map in the OpsItem
    #      object.</p>
    #            <p>Operational data is custom data that provides useful reference details about the OpsItem.
    #      For example, you can specify log files, error strings, license keys, troubleshooting tips, or
    #      other relevant data. You enter operational data as key-value pairs. The key has a maximum length
    #      of 128 characters. The value has a maximum size of 20 KB.</p>
    #            <important>
    #               <p>Operational data keys <i>can't</i> begin with the following:
    #        <code>amazon</code>, <code>aws</code>, <code>amzn</code>, <code>ssm</code>,
    #        <code>/amazon</code>, <code>/aws</code>, <code>/amzn</code>, <code>/ssm</code>.</p>
    #            </important>
    #            <p>You can choose to make the data searchable by other users in the account or you can restrict
    #      search access. Searchable data means that all users with access to the OpsItem Overview page (as
    #      provided by the <a>DescribeOpsItems</a> API operation) can view and search on the
    #      specified data. Operational data that isn't searchable is only viewable by users who have access
    #      to the OpsItem (as provided by the <a>GetOpsItem</a> API operation).</p>
    #            <p>Use the <code>/aws/resources</code> key in OperationalData to specify a related resource in
    #      the request. Use the <code>/aws/automations</code> key in OperationalData to associate an
    #      Automation runbook with the OpsItem. To view Amazon Web Services CLI example commands that use these keys, see
    #       <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-creating-OpsItems.html OpsCenter-manually-create-OpsItems">Creating OpsItems manually</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #
    #   @return [Hash<String, OpsItemDataValue>]
    #
    # @!attribute operational_data_to_delete
    #   <p>Keys that you want to remove from the OperationalData map.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute notifications
    #   <p>The Amazon Resource Name (ARN) of an SNS topic where notifications are sent when this
    #      OpsItem is edited or changed.</p>
    #
    #   @return [Array<OpsItemNotification>]
    #
    # @!attribute priority
    #   <p>The importance of this OpsItem in relation to other OpsItems in the system.</p>
    #
    #   @return [Integer]
    #
    # @!attribute related_ops_items
    #   <p>One or more OpsItems that share something in common with the current OpsItems. For example,
    #      related OpsItems can include OpsItems with similar error messages, impacted resources, or
    #      statuses for the impacted resource.</p>
    #
    #   @return [Array<RelatedOpsItem>]
    #
    # @!attribute status
    #   <p>The OpsItem status. Status can be <code>Open</code>, <code>In Progress</code>, or
    #       <code>Resolved</code>. For more information, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-working-with-OpsItems.html OpsCenter-working-with-OpsItems-editing-details">Editing OpsItem details</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #
    #   Enum, one of: ["Open", "InProgress", "Resolved", "Pending", "TimedOut", "Cancelling", "Cancelled", "Failed", "CompletedWithSuccess", "CompletedWithFailure", "Scheduled", "RunbookInProgress", "PendingChangeCalendarOverride", "ChangeCalendarOverrideApproved", "ChangeCalendarOverrideRejected", "PendingApproval", "Approved", "Rejected", "Closed"]
    #
    #   @return [String]
    #
    # @!attribute ops_item_id
    #   <p>The ID of the OpsItem.</p>
    #
    #   @return [String]
    #
    # @!attribute title
    #   <p>A short heading that describes the nature of the OpsItem and the impacted resource.</p>
    #
    #   @return [String]
    #
    # @!attribute category
    #   <p>Specify a new category for an OpsItem.</p>
    #
    #   @return [String]
    #
    # @!attribute severity
    #   <p>Specify a new severity for an OpsItem.</p>
    #
    #   @return [String]
    #
    # @!attribute actual_start_time
    #   <p>The time a runbook workflow started. Currently reported only for the OpsItem type
    #       <code>/aws/changerequest</code>.</p>
    #
    #   @return [Time]
    #
    # @!attribute actual_end_time
    #   <p>The time a runbook workflow ended. Currently reported only for the OpsItem type
    #       <code>/aws/changerequest</code>.</p>
    #
    #   @return [Time]
    #
    # @!attribute planned_start_time
    #   <p>The time specified in a change request for a runbook workflow to start. Currently supported
    #      only for the OpsItem type <code>/aws/changerequest</code>.</p>
    #
    #   @return [Time]
    #
    # @!attribute planned_end_time
    #   <p>The time specified in a change request for a runbook workflow to end. Currently supported
    #      only for the OpsItem type <code>/aws/changerequest</code>.</p>
    #
    #   @return [Time]
    #
    UpdateOpsItemInput = ::Struct.new(
      :description,
      :operational_data,
      :operational_data_to_delete,
      :notifications,
      :priority,
      :related_ops_items,
      :status,
      :ops_item_id,
      :title,
      :category,
      :severity,
      :actual_start_time,
      :actual_end_time,
      :planned_start_time,
      :planned_end_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateOpsItemOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute ops_metadata_arn
    #   <p>The Amazon Resource Name (ARN) of the OpsMetadata Object to update.</p>
    #
    #   @return [String]
    #
    # @!attribute metadata_to_update
    #   <p>Metadata to add to an OpsMetadata object.</p>
    #
    #   @return [Hash<String, MetadataValue>]
    #
    # @!attribute keys_to_delete
    #   <p>The metadata keys to delete from the OpsMetadata object. </p>
    #
    #   @return [Array<String>]
    #
    UpdateOpsMetadataInput = ::Struct.new(
      :ops_metadata_arn,
      :metadata_to_update,
      :keys_to_delete,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute ops_metadata_arn
    #   <p>The Amazon Resource Name (ARN) of the OpsMetadata Object that was updated.</p>
    #
    #   @return [String]
    #
    UpdateOpsMetadataOutput = ::Struct.new(
      :ops_metadata_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute baseline_id
    #   <p>The ID of the patch baseline to update.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the patch baseline.</p>
    #
    #   @return [String]
    #
    # @!attribute global_filters
    #   <p>A set of global filters used to include patches in the baseline.</p>
    #
    #   @return [PatchFilterGroup]
    #
    # @!attribute approval_rules
    #   <p>A set of rules used to include patches in the baseline.</p>
    #
    #   @return [PatchRuleGroup]
    #
    # @!attribute approved_patches
    #   <p>A list of explicitly approved patches for the baseline.</p>
    #            <p>For information about accepted formats for lists of approved patches and rejected patches,
    #                           see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-approved-rejected-package-name-formats.html">About
    #                           package name formats for approved and rejected patch lists</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute approved_patches_compliance_level
    #   <p>Assigns a new compliance severity level to an existing patch baseline.</p>
    #
    #   Enum, one of: ["CRITICAL", "HIGH", "MEDIUM", "LOW", "INFORMATIONAL", "UNSPECIFIED"]
    #
    #   @return [String]
    #
    # @!attribute approved_patches_enable_non_security
    #   <p>Indicates whether the list of approved patches includes non-security updates that should be
    #      applied to the managed nodes. The default value is <code>false</code>. Applies to Linux managed
    #      nodes only.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute rejected_patches
    #   <p>A list of explicitly rejected patches for the baseline.</p>
    #            <p>For information about accepted formats for lists of approved patches and rejected patches,
    #                           see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-approved-rejected-package-name-formats.html">About
    #                           package name formats for approved and rejected patch lists</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute rejected_patches_action
    #   <p>The action for Patch Manager to take on patches included in the
    #       <code>RejectedPackages</code> list.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>ALLOW_AS_DEPENDENCY</code>
    #                     </b>: A package in the
    #         <code>Rejected</code> patches list is installed only if it is a dependency of another package.
    #        It is considered compliant with the patch baseline, and its status is reported as
    #         <code>InstalledOther</code>. This is the default action if no option is specified.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>BLOCK</code>
    #                     </b>: Packages in the
    #         <code>RejectedPatches</code> list, and packages that include them as dependencies, aren't
    #        installed under any circumstances. If a package was installed before it was added to the
    #         <code>Rejected</code> patches list, it is considered non-compliant with the patch baseline,
    #        and its status is reported as <code>InstalledRejected</code>.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["ALLOW_AS_DEPENDENCY", "BLOCK"]
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the patch baseline.</p>
    #
    #   @return [String]
    #
    # @!attribute sources
    #   <p>Information about the patches to use to update the managed nodes, including target operating
    #      systems and source repositories. Applies to Linux managed nodes only.</p>
    #
    #   @return [Array<PatchSource>]
    #
    # @!attribute replace
    #   <p>If True, then all fields that are required by the <a>CreatePatchBaseline</a>
    #      operation are also required for this API request. Optional fields that aren't specified are set
    #      to null.</p>
    #
    #   @return [Boolean]
    #
    UpdatePatchBaselineInput = ::Struct.new(
      :baseline_id,
      :name,
      :global_filters,
      :approval_rules,
      :approved_patches,
      :approved_patches_compliance_level,
      :approved_patches_enable_non_security,
      :rejected_patches,
      :rejected_patches_action,
      :description,
      :sources,
      :replace,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute baseline_id
    #   <p>The ID of the deleted patch baseline.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the patch baseline.</p>
    #
    #   @return [String]
    #
    # @!attribute operating_system
    #   <p>The operating system rule used by the updated patch baseline.</p>
    #
    #   Enum, one of: ["WINDOWS", "AMAZON_LINUX", "AMAZON_LINUX_2", "UBUNTU", "REDHAT_ENTERPRISE_LINUX", "SUSE", "CENTOS", "ORACLE_LINUX", "DEBIAN", "MACOS", "RASPBIAN", "ROCKY_LINUX"]
    #
    #   @return [String]
    #
    # @!attribute global_filters
    #   <p>A set of global filters used to exclude patches from the baseline.</p>
    #
    #   @return [PatchFilterGroup]
    #
    # @!attribute approval_rules
    #   <p>A set of rules used to include patches in the baseline.</p>
    #
    #   @return [PatchRuleGroup]
    #
    # @!attribute approved_patches
    #   <p>A list of explicitly approved patches for the baseline.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute approved_patches_compliance_level
    #   <p>The compliance severity level assigned to the patch baseline after the update
    #      completed.</p>
    #
    #   Enum, one of: ["CRITICAL", "HIGH", "MEDIUM", "LOW", "INFORMATIONAL", "UNSPECIFIED"]
    #
    #   @return [String]
    #
    # @!attribute approved_patches_enable_non_security
    #   <p>Indicates whether the list of approved patches includes non-security updates that should be
    #      applied to the managed nodes. The default value is <code>false</code>. Applies to Linux managed
    #      nodes only.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute rejected_patches
    #   <p>A list of explicitly rejected patches for the baseline.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute rejected_patches_action
    #   <p>The action specified to take on patches included in the <code>RejectedPatches</code> list. A
    #      patch can be allowed only if it is a dependency of another package, or blocked entirely along
    #      with packages that include it as a dependency.</p>
    #
    #   Enum, one of: ["ALLOW_AS_DEPENDENCY", "BLOCK"]
    #
    #   @return [String]
    #
    # @!attribute created_date
    #   <p>The date when the patch baseline was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute modified_date
    #   <p>The date when the patch baseline was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute description
    #   <p>A description of the patch baseline.</p>
    #
    #   @return [String]
    #
    # @!attribute sources
    #   <p>Information about the patches to use to update the managed nodes, including target operating
    #      systems and source repositories. Applies to Linux managed nodes only.</p>
    #
    #   @return [Array<PatchSource>]
    #
    UpdatePatchBaselineOutput = ::Struct.new(
      :baseline_id,
      :name,
      :operating_system,
      :global_filters,
      :approval_rules,
      :approved_patches,
      :approved_patches_compliance_level,
      :approved_patches_enable_non_security,
      :rejected_patches,
      :rejected_patches_action,
      :created_date,
      :modified_date,
      :description,
      :sources,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute sync_name
    #   <p>The name of the resource data sync you want to update.</p>
    #
    #   @return [String]
    #
    # @!attribute sync_type
    #   <p>The type of resource data sync. The supported <code>SyncType</code> is
    #      SyncFromSource.</p>
    #
    #   @return [String]
    #
    # @!attribute sync_source
    #   <p>Specify information about the data sources to synchronize.</p>
    #
    #   @return [ResourceDataSyncSource]
    #
    UpdateResourceDataSyncInput = ::Struct.new(
      :sync_name,
      :sync_type,
      :sync_source,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateResourceDataSyncOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request body of the UpdateServiceSetting API operation.</p>
    #
    # @!attribute setting_id
    #   <p>The Amazon Resource Name (ARN) of the service setting to reset. For example,
    #       <code>arn:aws:ssm:us-east-1:111122223333:servicesetting/ssm/parameter-store/high-throughput-enabled</code>.
    #      The setting ID can be one of the following.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>/ssm/automation/customer-script-log-destination</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>/ssm/automation/customer-script-log-group-name</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>/ssm/documents/console/public-sharing-permission</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>/ssm/parameter-store/default-parameter-tier</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>/ssm/parameter-store/high-throughput-enabled</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>/ssm/managed-instance/activation-tier</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute setting_value
    #   <p>The new value to specify for the service setting. The following list specifies the available
    #      values for each setting.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>/ssm/parameter-store/default-parameter-tier</code>: <code>Standard</code>,
    #         <code>Advanced</code>, <code>Intelligent-Tiering</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>/ssm/parameter-store/high-throughput-enabled</code>: <code>true</code> or
    #         <code>false</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>/ssm/managed-instance/activation-tier</code>: <code>true</code> or
    #         <code>false</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>/ssm/automation/customer-script-log-destination</code>: <code>CloudWatch</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>/ssm/automation/customer-script-log-group-name</code>: the name of an Amazon CloudWatch Logs log group</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>/ssm/documents/console/public-sharing-permission</code>: <code>Enable</code> or
    #         <code>Disable</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>/ssm/managed-instance/activation-tier</code>: <code>standard</code> or
    #         <code>advanced</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    UpdateServiceSettingInput = ::Struct.new(
      :setting_id,
      :setting_value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The result body of the UpdateServiceSetting API operation.</p>
    #
    UpdateServiceSettingOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
