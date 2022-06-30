# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CustomerProfiles
  module Types

    # <p>You do not have sufficient access to perform this action.</p>
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

    # @!attribute profile_id
    #   <p>The unique identifier of a customer profile.</p>
    #
    #   @return [String]
    #
    # @!attribute key_name
    #   <p>A searchable identifier of a customer profile.</p>
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>A list of key values.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #
    #   @return [String]
    #
    AddProfileKeyInput = ::Struct.new(
      :profile_id,
      :key_name,
      :values,
      :domain_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute key_name
    #   <p>A searchable identifier of a customer profile.</p>
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>A list of key values.</p>
    #
    #   @return [Array<String>]
    #
    AddProfileKeyOutput = ::Struct.new(
      :key_name,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A generic address associated with the customer that is not mailing, shipping, or
    #          billing.</p>
    #
    # @!attribute address1
    #   <p>The first line of a customer address.</p>
    #
    #   @return [String]
    #
    # @!attribute address2
    #   <p>The second line of a customer address.</p>
    #
    #   @return [String]
    #
    # @!attribute address3
    #   <p>The third line of a customer address.</p>
    #
    #   @return [String]
    #
    # @!attribute address4
    #   <p>The fourth line of a customer address.</p>
    #
    #   @return [String]
    #
    # @!attribute city
    #   <p>The city in which a customer lives.</p>
    #
    #   @return [String]
    #
    # @!attribute county
    #   <p>The county in which a customer lives.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state in which a customer lives.</p>
    #
    #   @return [String]
    #
    # @!attribute province
    #   <p>The province in which a customer lives.</p>
    #
    #   @return [String]
    #
    # @!attribute country
    #   <p>The country in which a customer lives.</p>
    #
    #   @return [String]
    #
    # @!attribute postal_code
    #   <p>The postal code of a customer address.</p>
    #
    #   @return [String]
    #
    Address = ::Struct.new(
      :address1,
      :address2,
      :address3,
      :address4,
      :city,
      :county,
      :state,
      :province,
      :country,
      :postal_code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details for workflow of type <code>APPFLOW_INTEGRATION</code>.</p>
    #
    # @!attribute flow_definition
    #   <p>The configurations that control how Customer Profiles retrieves data from the source,
    #            Amazon AppFlow. Customer Profiles uses this information to create an AppFlow flow on behalf of
    #            customers.</p>
    #
    #   @return [FlowDefinition]
    #
    # @!attribute batches
    #   <p>Batches in workflow of type <code>APPFLOW_INTEGRATION</code>.</p>
    #
    #   @return [Array<Batch>]
    #
    AppflowIntegration = ::Struct.new(
      :flow_definition,
      :batches,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Structure holding all <code>APPFLOW_INTEGRATION</code> specific workflow attributes.</p>
    #
    # @!attribute source_connector_type
    #   <p>Specifies the source connector type, such as Salesforce, ServiceNow, and Marketo. Indicates source of ingestion.</p>
    #
    #   Enum, one of: ["Salesforce", "Marketo", "Zendesk", "Servicenow", "S3"]
    #
    #   @return [String]
    #
    # @!attribute connector_profile_name
    #   <p>The name of the AppFlow connector profile used for ingestion.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role. Customer Profiles assumes this role to create resources on your behalf as part of workflow execution.</p>
    #
    #   @return [String]
    #
    AppflowIntegrationWorkflowAttributes = ::Struct.new(
      :source_connector_type,
      :connector_profile_name,
      :role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Workflow specific execution metrics for <code>APPFLOW_INTEGRATION</code> workflow.</p>
    #
    # @!attribute records_processed
    #   <p>Number of records processed in <code>APPFLOW_INTEGRATION</code> workflow.</p>
    #
    #   @return [Integer]
    #
    # @!attribute steps_completed
    #   <p>Total steps completed in <code>APPFLOW_INTEGRATION</code> workflow.</p>
    #
    #   @return [Integer]
    #
    # @!attribute total_steps
    #   <p>Total steps in <code>APPFLOW_INTEGRATION</code> workflow.</p>
    #
    #   @return [Integer]
    #
    AppflowIntegrationWorkflowMetrics = ::Struct.new(
      :records_processed,
      :steps_completed,
      :total_steps,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.records_processed ||= 0
        self.steps_completed ||= 0
        self.total_steps ||= 0
      end

    end

    # <p>Workflow step details for <code>APPFLOW_INTEGRATION</code> workflow.</p>
    #
    # @!attribute flow_name
    #   <p>Name of the flow created during execution of workflow step. <code>APPFLOW_INTEGRATION</code> workflow type creates an appflow flow during workflow step execution on the customers behalf.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Workflow step status for <code>APPFLOW_INTEGRATION</code> workflow.</p>
    #
    #   Enum, one of: ["NOT_STARTED", "IN_PROGRESS", "COMPLETE", "FAILED", "SPLIT", "RETRY", "CANCELLED"]
    #
    #   @return [String]
    #
    # @!attribute execution_message
    #   <p>Message indicating execution of workflow step for <code>APPFLOW_INTEGRATION</code> workflow.</p>
    #
    #   @return [String]
    #
    # @!attribute records_processed
    #   <p>Total number of records processed during execution of workflow step for <code>APPFLOW_INTEGRATION</code> workflow.</p>
    #
    #   @return [Integer]
    #
    # @!attribute batch_records_start_time
    #   <p>Start datetime of records pulled in batch during execution of workflow step for <code>APPFLOW_INTEGRATION</code> workflow.</p>
    #
    #   @return [String]
    #
    # @!attribute batch_records_end_time
    #   <p>End datetime of records pulled in batch during execution of workflow step for <code>APPFLOW_INTEGRATION</code> workflow.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>Creation timestamp of workflow step for <code>APPFLOW_INTEGRATION</code> workflow.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_at
    #   <p>Last updated timestamp for workflow step for <code>APPFLOW_INTEGRATION</code> workflow.</p>
    #
    #   @return [Time]
    #
    AppflowIntegrationWorkflowStep = ::Struct.new(
      :flow_name,
      :status,
      :execution_message,
      :records_processed,
      :batch_records_start_time,
      :batch_records_end_time,
      :created_at,
      :last_updated_at,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.records_processed ||= 0
      end

    end

    # <p>Configuration settings for how to perform the auto-merging of profiles.</p>
    #
    # @!attribute enabled
    #   <p>The flag that enables the auto-merging of duplicate profiles.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute consolidation
    #   <p>A list of matching attributes that represent matching criteria. If two profiles meet at
    #            least one of the requirements in the matching attributes list, they will be merged.</p>
    #
    #   @return [Consolidation]
    #
    # @!attribute conflict_resolution
    #   <p>How the auto-merging process should resolve conflicts between different profiles. For
    #            example, if Profile A and Profile B have the same <code>FirstName</code> and
    #               <code>LastName</code> (and that is the matching criteria), which
    #               <code>EmailAddress</code> should be used? </p>
    #
    #   @return [ConflictResolution]
    #
    AutoMerging = ::Struct.new(
      :enabled,
      :consolidation,
      :conflict_resolution,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The input you provided is invalid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    BadRequestException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Batch defines the boundaries for ingestion for each step in <code>APPFLOW_INTEGRATION</code> workflow. <code>APPFLOW_INTEGRATION</code> workflow splits ingestion based on these boundaries.</p>
    #
    # @!attribute start_time
    #   <p>Start time of batch to split ingestion.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>End time of batch to split ingestion.</p>
    #
    #   @return [Time]
    #
    Batch = ::Struct.new(
      :start_time,
      :end_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>How the auto-merging process should resolve conflicts between different profiles.</p>
    #
    # @!attribute conflict_resolving_model
    #   <p>How the auto-merging process should resolve conflicts between different profiles.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>RECENCY</code>: Uses the data that was most recently updated.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SOURCE</code>: Uses the data from a specific source. For example, if a
    #                  company has been aquired or two departments have merged, data from the specified
    #                  source is used. If two duplicate profiles are from the same source, then
    #                     <code>RECENCY</code> is used again.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["RECENCY", "SOURCE"]
    #
    #   @return [String]
    #
    # @!attribute source_name
    #   <p>The <code>ObjectType</code> name that is used to resolve profile merging conflicts when
    #            choosing <code>SOURCE</code> as the <code>ConflictResolvingModel</code>.</p>
    #
    #   @return [String]
    #
    ConflictResolution = ::Struct.new(
      :conflict_resolving_model,
      :source_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ConflictResolvingModel
    #
    module ConflictResolvingModel
      # No documentation available.
      #
      RECENCY = "RECENCY"

      # No documentation available.
      #
      SOURCE = "SOURCE"
    end

    # <p>The operation to be performed on the provided source fields.</p>
    #
    # @!attribute marketo
    #   <p>The operation to be performed on the provided Marketo source fields.</p>
    #
    #   Enum, one of: ["PROJECTION", "LESS_THAN", "GREATER_THAN", "BETWEEN", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #
    #   @return [String]
    #
    # @!attribute s3
    #   <p>The operation to be performed on the provided Amazon S3 source fields.</p>
    #
    #   Enum, one of: ["PROJECTION", "LESS_THAN", "GREATER_THAN", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "NOT_EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #
    #   @return [String]
    #
    # @!attribute salesforce
    #   <p>The operation to be performed on the provided Salesforce source fields.</p>
    #
    #   Enum, one of: ["PROJECTION", "LESS_THAN", "CONTAINS", "GREATER_THAN", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "NOT_EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #
    #   @return [String]
    #
    # @!attribute service_now
    #   <p>The operation to be performed on the provided ServiceNow source fields.</p>
    #
    #   Enum, one of: ["PROJECTION", "CONTAINS", "LESS_THAN", "GREATER_THAN", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "NOT_EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #
    #   @return [String]
    #
    # @!attribute zendesk
    #   <p>The operation to be performed on the provided Zendesk source fields.</p>
    #
    #   Enum, one of: ["PROJECTION", "GREATER_THAN", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #
    #   @return [String]
    #
    ConnectorOperator = ::Struct.new(
      :marketo,
      :s3,
      :salesforce,
      :service_now,
      :zendesk,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The matching criteria to be used during the auto-merging process. </p>
    #
    # @!attribute matching_attributes_list
    #   <p>A list of matching criteria.</p>
    #
    #   @return [Array<Array<String>>]
    #
    Consolidation = ::Struct.new(
      :matching_attributes_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #
    #   @return [String]
    #
    # @!attribute default_expiration_days
    #   <p>The default number of days until the data within the domain expires.</p>
    #
    #   @return [Integer]
    #
    # @!attribute default_encryption_key
    #   <p>The default encryption key, which is an AWS managed key, is used when no specific type
    #            of encryption key is specified. It is used to encrypt all data before it is placed in
    #            permanent or semi-permanent storage.</p>
    #
    #   @return [String]
    #
    # @!attribute dead_letter_queue_url
    #   <p>The URL of the SQS dead letter queue, which is used for reporting errors associated with
    #            ingesting data from third party applications. You must set up a policy on the
    #            DeadLetterQueue for the SendMessage operation to enable Amazon Connect Customer Profiles to send
    #            messages to the DeadLetterQueue.</p>
    #
    #   @return [String]
    #
    # @!attribute matching
    #   <p>The process of matching duplicate profiles. If <code>Matching</code> = <code>true</code>, Amazon Connect Customer Profiles starts a weekly
    #   batch process called Identity Resolution Job. If you do not specify a date and time for Identity Resolution Job to run, by default it runs every
    #   Saturday at 12AM UTC to detect duplicate profiles in your domains. </p>
    #            <p>After the Identity Resolution Job completes, use the
    #   <a href="https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html">GetMatches</a>
    #   API to return and review the results. Or, if you have configured <code>ExportingConfig</code> in the <code>MatchingRequest</code>, you can download the results from
    #   S3.</p>
    #
    #   @return [MatchingRequest]
    #
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateDomainInput = ::Struct.new(
      :domain_name,
      :default_expiration_days,
      :default_encryption_key,
      :dead_letter_queue_url,
      :matching,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #
    #   @return [String]
    #
    # @!attribute default_expiration_days
    #   <p>The default number of days until the data within the domain expires.</p>
    #
    #   @return [Integer]
    #
    # @!attribute default_encryption_key
    #   <p>The default encryption key, which is an AWS managed key, is used when no specific type
    #            of encryption key is specified. It is used to encrypt all data before it is placed in
    #            permanent or semi-permanent storage.</p>
    #
    #   @return [String]
    #
    # @!attribute dead_letter_queue_url
    #   <p>The URL of the SQS dead letter queue, which is used for reporting errors associated with
    #            ingesting data from third party applications.</p>
    #
    #   @return [String]
    #
    # @!attribute matching
    #   <p>The process of matching duplicate profiles. If <code>Matching</code> = <code>true</code>, Amazon Connect Customer Profiles starts a weekly
    #   batch process called Identity Resolution Job. If you do not specify a date and time for Identity Resolution Job to run, by default it runs every
    #   Saturday at 12AM UTC to detect duplicate profiles in your domains. </p>
    #            <p>After the Identity Resolution Job completes, use the
    #   <a href="https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html">GetMatches</a>
    #   API to return and review the results. Or, if you have configured <code>ExportingConfig</code> in the <code>MatchingRequest</code>, you can download the results from
    #   S3.</p>
    #
    #   @return [MatchingResponse]
    #
    # @!attribute created_at
    #   <p>The timestamp of when the domain was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_at
    #   <p>The timestamp of when the domain was most recently edited.</p>
    #
    #   @return [Time]
    #
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateDomainOutput = ::Struct.new(
      :domain_name,
      :default_expiration_days,
      :default_encryption_key,
      :dead_letter_queue_url,
      :matching,
      :created_at,
      :last_updated_at,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #
    #   @return [String]
    #
    # @!attribute workflow_type
    #   <p>The type of workflow. The only supported value is APPFLOW_INTEGRATION.</p>
    #
    #   Enum, one of: ["APPFLOW_INTEGRATION"]
    #
    #   @return [String]
    #
    # @!attribute integration_config
    #   <p>Configuration data for integration workflow.</p>
    #
    #   @return [IntegrationConfig]
    #
    # @!attribute object_type_name
    #   <p>The name of the profile object type.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role. Customer Profiles assumes this role to create resources on your behalf as part of workflow execution.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateIntegrationWorkflowInput = ::Struct.new(
      :domain_name,
      :workflow_type,
      :integration_config,
      :object_type_name,
      :role_arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute workflow_id
    #   <p>Unique identifier for the workflow.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>A message indicating create request was received.</p>
    #
    #   @return [String]
    #
    CreateIntegrationWorkflowOutput = ::Struct.new(
      :workflow_id,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #
    #   @return [String]
    #
    # @!attribute account_number
    #   <p>A unique account number that you have given to the customer.</p>
    #
    #   @return [String]
    #
    # @!attribute additional_information
    #   <p>Any additional information relevant to the customer’s profile.</p>
    #
    #   @return [String]
    #
    # @!attribute party_type
    #   <p>The type of profile used to describe the customer.</p>
    #
    #   Enum, one of: ["INDIVIDUAL", "BUSINESS", "OTHER"]
    #
    #   @return [String]
    #
    # @!attribute business_name
    #   <p>The name of the customer’s business.</p>
    #
    #   @return [String]
    #
    # @!attribute first_name
    #   <p>The customer’s first name.</p>
    #
    #   @return [String]
    #
    # @!attribute middle_name
    #   <p>The customer’s middle name.</p>
    #
    #   @return [String]
    #
    # @!attribute last_name
    #   <p>The customer’s last name.</p>
    #
    #   @return [String]
    #
    # @!attribute birth_date
    #   <p>The customer’s birth date. </p>
    #
    #   @return [String]
    #
    # @!attribute gender
    #   <p>The gender with which the customer identifies. </p>
    #
    #   Enum, one of: ["MALE", "FEMALE", "UNSPECIFIED"]
    #
    #   @return [String]
    #
    # @!attribute phone_number
    #   <p>The customer’s phone number, which has not been specified as a mobile, home, or business
    #            number. </p>
    #
    #   @return [String]
    #
    # @!attribute mobile_phone_number
    #   <p>The customer’s mobile phone number.</p>
    #
    #   @return [String]
    #
    # @!attribute home_phone_number
    #   <p>The customer’s home phone number.</p>
    #
    #   @return [String]
    #
    # @!attribute business_phone_number
    #   <p>The customer’s business phone number.</p>
    #
    #   @return [String]
    #
    # @!attribute email_address
    #   <p>The customer’s email address, which has not been specified as a personal or business
    #            address. </p>
    #
    #   @return [String]
    #
    # @!attribute personal_email_address
    #   <p>The customer’s personal email address.</p>
    #
    #   @return [String]
    #
    # @!attribute business_email_address
    #   <p>The customer’s business email address.</p>
    #
    #   @return [String]
    #
    # @!attribute address
    #   <p>A generic address associated with the customer that is not mailing, shipping, or
    #            billing.</p>
    #
    #   @return [Address]
    #
    # @!attribute shipping_address
    #   <p>The customer’s shipping address.</p>
    #
    #   @return [Address]
    #
    # @!attribute mailing_address
    #   <p>The customer’s mailing address.</p>
    #
    #   @return [Address]
    #
    # @!attribute billing_address
    #   <p>The customer’s billing address.</p>
    #
    #   @return [Address]
    #
    # @!attribute attributes
    #   <p>A key value pair of attributes of a customer profile.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateProfileInput = ::Struct.new(
      :domain_name,
      :account_number,
      :additional_information,
      :party_type,
      :business_name,
      :first_name,
      :middle_name,
      :last_name,
      :birth_date,
      :gender,
      :phone_number,
      :mobile_phone_number,
      :home_phone_number,
      :business_phone_number,
      :email_address,
      :personal_email_address,
      :business_email_address,
      :address,
      :shipping_address,
      :mailing_address,
      :billing_address,
      :attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute profile_id
    #   <p>The unique identifier of a customer profile.</p>
    #
    #   @return [String]
    #
    CreateProfileOutput = ::Struct.new(
      :profile_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DataPullMode
    #
    module DataPullMode
      # No documentation available.
      #
      INCREMENTAL = "Incremental"

      # No documentation available.
      #
      COMPLETE = "Complete"
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #
    #   @return [String]
    #
    DeleteDomainInput = ::Struct.new(
      :domain_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute message
    #   <p>A message that indicates the delete request is done.</p>
    #
    #   @return [String]
    #
    DeleteDomainOutput = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #
    #   @return [String]
    #
    # @!attribute uri
    #   <p>The URI of the S3 bucket or any other type of data source.</p>
    #
    #   @return [String]
    #
    DeleteIntegrationInput = ::Struct.new(
      :domain_name,
      :uri,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute message
    #   <p>A message that indicates the delete request is done.</p>
    #
    #   @return [String]
    #
    DeleteIntegrationOutput = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute profile_id
    #   <p>The unique identifier of a customer profile.</p>
    #
    #   @return [String]
    #
    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #
    #   @return [String]
    #
    DeleteProfileInput = ::Struct.new(
      :profile_id,
      :domain_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute profile_id
    #   <p>The unique identifier of a customer profile.</p>
    #
    #   @return [String]
    #
    # @!attribute key_name
    #   <p>A searchable identifier of a customer profile.</p>
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>A list of key values.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #
    #   @return [String]
    #
    DeleteProfileKeyInput = ::Struct.new(
      :profile_id,
      :key_name,
      :values,
      :domain_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute message
    #   <p>A message that indicates the delete request is done.</p>
    #
    #   @return [String]
    #
    DeleteProfileKeyOutput = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute profile_id
    #   <p>The unique identifier of a customer profile.</p>
    #
    #   @return [String]
    #
    # @!attribute profile_object_unique_key
    #   <p>The unique identifier of the profile object generated by the service.</p>
    #
    #   @return [String]
    #
    # @!attribute object_type_name
    #   <p>The name of the profile object type.</p>
    #
    #   @return [String]
    #
    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #
    #   @return [String]
    #
    DeleteProfileObjectInput = ::Struct.new(
      :profile_id,
      :profile_object_unique_key,
      :object_type_name,
      :domain_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute message
    #   <p>A message that indicates the delete request is done.</p>
    #
    #   @return [String]
    #
    DeleteProfileObjectOutput = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #
    #   @return [String]
    #
    # @!attribute object_type_name
    #   <p>The name of the profile object type.</p>
    #
    #   @return [String]
    #
    DeleteProfileObjectTypeInput = ::Struct.new(
      :domain_name,
      :object_type_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute message
    #   <p>A message that indicates the delete request is done.</p>
    #
    #   @return [String]
    #
    DeleteProfileObjectTypeOutput = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute message
    #   <p>A message that indicates the delete request is done.</p>
    #
    #   @return [String]
    #
    DeleteProfileOutput = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #
    #   @return [String]
    #
    # @!attribute workflow_id
    #   <p>Unique identifier for the workflow.</p>
    #
    #   @return [String]
    #
    DeleteWorkflowInput = ::Struct.new(
      :domain_name,
      :workflow_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteWorkflowOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Usage-specific statistics about the domain.</p>
    #
    # @!attribute profile_count
    #   <p>The total number of profiles currently in the domain.</p>
    #
    #   @return [Integer]
    #
    # @!attribute metering_profile_count
    #   <p>The number of profiles that you are currently paying for in the domain. If you have more
    #            than 100 objects associated with a single profile, that profile counts as two profiles. If
    #            you have more than 200 objects, that profile counts as three, and so on.</p>
    #
    #   @return [Integer]
    #
    # @!attribute object_count
    #   <p>The total number of objects in domain.</p>
    #
    #   @return [Integer]
    #
    # @!attribute total_size
    #   <p>The total size, in bytes, of all objects in the domain.</p>
    #
    #   @return [Integer]
    #
    DomainStats = ::Struct.new(
      :profile_count,
      :metering_profile_count,
      :object_count,
      :total_size,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.profile_count ||= 0
        self.metering_profile_count ||= 0
        self.object_count ||= 0
        self.total_size ||= 0
      end

    end

    # <p>Configuration information about the S3 bucket where Identity Resolution Jobs writes result files. </p>
    #          <note>
    #             <p>You need to give Customer Profiles service principal write permission to your S3 bucket.
    #             Otherwise, you'll get an exception in the API response. For an example policy, see
    #                <a href="https://docs.aws.amazon.com/connect/latest/adminguide/cross-service-confused-deputy-prevention.html#customer-profiles-cross-service">Amazon Connect Customer Profiles cross-service confused deputy prevention</a>. </p>
    #          </note>
    #
    # @!attribute s3_exporting
    #   <p>The S3 location where Identity Resolution Jobs write result files.</p>
    #
    #   @return [S3ExportingConfig]
    #
    ExportingConfig = ::Struct.new(
      :s3_exporting,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The S3 location where Identity Resolution Jobs write result files.</p>
    #
    # @!attribute s3_exporting
    #   <p>Information about the S3 location where Identity Resolution Jobs write result files.</p>
    #
    #   @return [S3ExportingLocation]
    #
    ExportingLocation = ::Struct.new(
      :s3_exporting,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FieldContentType
    #
    module FieldContentType
      # No documentation available.
      #
      STRING = "STRING"

      # No documentation available.
      #
      NUMBER = "NUMBER"

      # No documentation available.
      #
      PHONE_NUMBER = "PHONE_NUMBER"

      # No documentation available.
      #
      EMAIL_ADDRESS = "EMAIL_ADDRESS"

      # No documentation available.
      #
      NAME = "NAME"
    end

    # <p>A duplicate customer profile that is to be merged into a main profile. </p>
    #
    # @!attribute account_number
    #   <p>A unique identifier for the account number field to be merged. </p>
    #
    #   @return [String]
    #
    # @!attribute additional_information
    #   <p>A unique identifier for the additional information field to be merged.</p>
    #
    #   @return [String]
    #
    # @!attribute party_type
    #   <p>A unique identifier for the party type field to be merged.</p>
    #
    #   @return [String]
    #
    # @!attribute business_name
    #   <p>A unique identifier for the business name field to be merged.</p>
    #
    #   @return [String]
    #
    # @!attribute first_name
    #   <p>A unique identifier for the first name field to be merged.</p>
    #
    #   @return [String]
    #
    # @!attribute middle_name
    #   <p>A unique identifier for the middle name field to be merged.</p>
    #
    #   @return [String]
    #
    # @!attribute last_name
    #   <p>A unique identifier for the last name field to be merged.</p>
    #
    #   @return [String]
    #
    # @!attribute birth_date
    #   <p>A unique identifier for the birthdate field to be merged.</p>
    #
    #   @return [String]
    #
    # @!attribute gender
    #   <p>A unique identifier for the gender field to be merged.</p>
    #
    #   @return [String]
    #
    # @!attribute phone_number
    #   <p>A unique identifier for the phone number field to be merged.</p>
    #
    #   @return [String]
    #
    # @!attribute mobile_phone_number
    #   <p>A unique identifier for the mobile phone number field to be merged.</p>
    #
    #   @return [String]
    #
    # @!attribute home_phone_number
    #   <p>A unique identifier for the home phone number field to be merged.</p>
    #
    #   @return [String]
    #
    # @!attribute business_phone_number
    #   <p>A unique identifier for the business phone number field to be merged.</p>
    #
    #   @return [String]
    #
    # @!attribute email_address
    #   <p>A unique identifier for the email address field to be merged.</p>
    #
    #   @return [String]
    #
    # @!attribute personal_email_address
    #   <p>A unique identifier for the personal email address field to be merged.</p>
    #
    #   @return [String]
    #
    # @!attribute business_email_address
    #   <p>A unique identifier for the party type field to be merged.</p>
    #
    #   @return [String]
    #
    # @!attribute address
    #   <p>A unique identifier for the party type field to be merged.</p>
    #
    #   @return [String]
    #
    # @!attribute shipping_address
    #   <p>A unique identifier for the shipping address field to be merged.</p>
    #
    #   @return [String]
    #
    # @!attribute mailing_address
    #   <p>A unique identifier for the mailing address field to be merged.</p>
    #
    #   @return [String]
    #
    # @!attribute billing_address
    #   <p>A unique identifier for the billing type field to be merged.</p>
    #
    #   @return [String]
    #
    # @!attribute attributes
    #   <p>A unique identifier for the attributes field to be merged.</p>
    #
    #   @return [Hash<String, String>]
    #
    FieldSourceProfileIds = ::Struct.new(
      :account_number,
      :additional_information,
      :party_type,
      :business_name,
      :first_name,
      :middle_name,
      :last_name,
      :birth_date,
      :gender,
      :phone_number,
      :mobile_phone_number,
      :home_phone_number,
      :business_phone_number,
      :email_address,
      :personal_email_address,
      :business_email_address,
      :address,
      :shipping_address,
      :mailing_address,
      :billing_address,
      :attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The configurations that control how Customer Profiles retrieves data from the source,
    #          Amazon AppFlow. Customer Profiles uses this information to create an AppFlow flow on behalf of
    #          customers.</p>
    #
    # @!attribute description
    #   <p>A description of the flow you want to create.</p>
    #
    #   @return [String]
    #
    # @!attribute flow_name
    #   <p>The specified name of the flow. Use underscores (_) or hyphens (-) only. Spaces are not
    #            allowed.</p>
    #
    #   @return [String]
    #
    # @!attribute kms_arn
    #   <p>The Amazon Resource Name of the AWS Key Management Service (KMS) key you provide for encryption.</p>
    #
    #   @return [String]
    #
    # @!attribute source_flow_config
    #   <p>The configuration that controls how Customer Profiles retrieves data from the
    #            source.</p>
    #
    #   @return [SourceFlowConfig]
    #
    # @!attribute tasks
    #   <p>A list of tasks that Customer Profiles performs while transferring the data in the flow
    #            run.</p>
    #
    #   @return [Array<Task>]
    #
    # @!attribute trigger_config
    #   <p>The trigger settings that determine how and when the flow runs.</p>
    #
    #   @return [TriggerConfig]
    #
    FlowDefinition = ::Struct.new(
      :description,
      :flow_name,
      :kms_arn,
      :source_flow_config,
      :tasks,
      :trigger_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Gender
    #
    module Gender
      # No documentation available.
      #
      MALE = "MALE"

      # No documentation available.
      #
      FEMALE = "FEMALE"

      # No documentation available.
      #
      UNSPECIFIED = "UNSPECIFIED"
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #
    #   @return [String]
    #
    # @!attribute consolidation
    #   <p>A list of matching attributes that represent matching criteria.</p>
    #
    #   @return [Consolidation]
    #
    # @!attribute conflict_resolution
    #   <p>How the auto-merging process should resolve conflicts between different profiles.</p>
    #
    #   @return [ConflictResolution]
    #
    GetAutoMergingPreviewInput = ::Struct.new(
      :domain_name,
      :consolidation,
      :conflict_resolution,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #
    #   @return [String]
    #
    # @!attribute number_of_matches_in_sample
    #   <p>The number of match groups in the domain that have been reviewed in this preview dry
    #            run.</p>
    #
    #   @return [Integer]
    #
    # @!attribute number_of_profiles_in_sample
    #   <p>The number of profiles found in this preview dry run.</p>
    #
    #   @return [Integer]
    #
    # @!attribute number_of_profiles_will_be_merged
    #   <p>The number of profiles that would be merged if this wasn't a preview dry run.</p>
    #
    #   @return [Integer]
    #
    GetAutoMergingPreviewOutput = ::Struct.new(
      :domain_name,
      :number_of_matches_in_sample,
      :number_of_profiles_in_sample,
      :number_of_profiles_will_be_merged,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.number_of_matches_in_sample ||= 0
        self.number_of_profiles_in_sample ||= 0
        self.number_of_profiles_will_be_merged ||= 0
      end

    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #
    #   @return [String]
    #
    GetDomainInput = ::Struct.new(
      :domain_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #
    #   @return [String]
    #
    # @!attribute default_expiration_days
    #   <p>The default number of days until the data within the domain expires.</p>
    #
    #   @return [Integer]
    #
    # @!attribute default_encryption_key
    #   <p>The default encryption key, which is an AWS managed key, is used when no specific type
    #            of encryption key is specified. It is used to encrypt all data before it is placed in
    #            permanent or semi-permanent storage.</p>
    #
    #   @return [String]
    #
    # @!attribute dead_letter_queue_url
    #   <p>The URL of the SQS dead letter queue, which is used for reporting errors associated with
    #            ingesting data from third party applications.</p>
    #
    #   @return [String]
    #
    # @!attribute stats
    #   <p>Usage-specific statistics about the domain.</p>
    #
    #   @return [DomainStats]
    #
    # @!attribute matching
    #   <p>The process of matching duplicate profiles. If <code>Matching</code> = <code>true</code>, Amazon Connect Customer Profiles starts a weekly
    #   batch process called Identity Resolution Job. If you do not specify a date and time for Identity Resolution Job to run, by default it runs every
    #   Saturday at 12AM UTC to detect duplicate profiles in your domains. </p>
    #            <p>After the Identity Resolution Job completes, use the
    #   <a href="https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html">GetMatches</a>
    #   API to return and review the results. Or, if you have configured <code>ExportingConfig</code> in the <code>MatchingRequest</code>, you can download the results from
    #   S3.</p>
    #
    #   @return [MatchingResponse]
    #
    # @!attribute created_at
    #   <p>The timestamp of when the domain was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_at
    #   <p>The timestamp of when the domain was most recently edited.</p>
    #
    #   @return [Time]
    #
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    GetDomainOutput = ::Struct.new(
      :domain_name,
      :default_expiration_days,
      :default_encryption_key,
      :dead_letter_queue_url,
      :stats,
      :matching,
      :created_at,
      :last_updated_at,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #
    #   @return [String]
    #
    # @!attribute job_id
    #   <p>The unique identifier of the Identity Resolution Job.</p>
    #
    #   @return [String]
    #
    GetIdentityResolutionJobInput = ::Struct.new(
      :domain_name,
      :job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #
    #   @return [String]
    #
    # @!attribute job_id
    #   <p>The unique identifier of the Identity Resolution Job.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the Identity Resolution Job.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PENDING</code>: The Identity Resolution Job is scheduled but has not started yet. If you turn
    #                  off the Identity Resolution feature in your domain, jobs in the <code>PENDING</code> state are
    #                  deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PREPROCESSING</code>: The Identity Resolution Job is loading your data.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FIND_MATCHING</code>: The Identity Resolution Job is using the machine learning model to
    #                  identify profiles that belong to the same matching group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MERGING</code>: The Identity Resolution Job is merging duplicate profiles.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>COMPLETED</code>: The Identity Resolution Job completed successfully.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PARTIAL_SUCCESS</code>: There's a system error and not all of the data is
    #                  merged. The Identity Resolution Job writes a message indicating the source of the problem.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code>: The Identity Resolution Job did not merge any data. It writes a message
    #                  indicating the source of the problem.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["PENDING", "PREPROCESSING", "FIND_MATCHING", "MERGING", "COMPLETED", "PARTIAL_SUCCESS", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The error messages that are generated when the Identity Resolution Job runs.</p>
    #
    #   @return [String]
    #
    # @!attribute job_start_time
    #   <p>The timestamp of when the Identity Resolution Job was started or will be started.</p>
    #
    #   @return [Time]
    #
    # @!attribute job_end_time
    #   <p>The timestamp of when the Identity Resolution Job was completed.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_at
    #   <p>The timestamp of when the Identity Resolution Job was most recently edited.</p>
    #
    #   @return [Time]
    #
    # @!attribute job_expiration_time
    #   <p>The timestamp of when the Identity Resolution Job will expire.</p>
    #
    #   @return [Time]
    #
    # @!attribute auto_merging
    #   <p>Configuration settings for how to perform the auto-merging of profiles.</p>
    #
    #   @return [AutoMerging]
    #
    # @!attribute exporting_location
    #   <p>The S3 location where the Identity Resolution Job writes result files.</p>
    #
    #   @return [ExportingLocation]
    #
    # @!attribute job_stats
    #   <p>Statistics about the Identity Resolution Job.</p>
    #
    #   @return [JobStats]
    #
    GetIdentityResolutionJobOutput = ::Struct.new(
      :domain_name,
      :job_id,
      :status,
      :message,
      :job_start_time,
      :job_end_time,
      :last_updated_at,
      :job_expiration_time,
      :auto_merging,
      :exporting_location,
      :job_stats,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #
    #   @return [String]
    #
    # @!attribute uri
    #   <p>The URI of the S3 bucket or any other type of data source.</p>
    #
    #   @return [String]
    #
    GetIntegrationInput = ::Struct.new(
      :domain_name,
      :uri,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #
    #   @return [String]
    #
    # @!attribute uri
    #   <p>The URI of the S3 bucket or any other type of data source.</p>
    #
    #   @return [String]
    #
    # @!attribute object_type_name
    #   <p>The name of the profile object type.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The timestamp of when the domain was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_at
    #   <p>The timestamp of when the domain was most recently edited.</p>
    #
    #   @return [Time]
    #
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute object_type_names
    #   <p>A map in which each key is an event type from an external application such as Segment or Shopify, and each value is an <code>ObjectTypeName</code> (template) used to ingest the event.
    #   It supports the following event types: <code>SegmentIdentify</code>, <code>ShopifyCreateCustomers</code>, <code>ShopifyUpdateCustomers</code>, <code>ShopifyCreateDraftOrders</code>,
    #   <code>ShopifyUpdateDraftOrders</code>, <code>ShopifyCreateOrders</code>, and <code>ShopifyUpdatedOrders</code>.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute workflow_id
    #   <p>Unique identifier for the workflow.</p>
    #
    #   @return [String]
    #
    GetIntegrationOutput = ::Struct.new(
      :domain_name,
      :uri,
      :object_type_name,
      :created_at,
      :last_updated_at,
      :tags,
      :object_type_names,
      :workflow_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    #   @return [Integer]
    #
    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #
    #   @return [String]
    #
    GetMatchesInput = ::Struct.new(
      :next_token,
      :max_results,
      :domain_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute match_generation_date
    #   <p>The timestamp this version of Match Result generated.</p>
    #
    #   @return [Time]
    #
    # @!attribute potential_matches
    #   <p>The number of potential matches found.</p>
    #
    #   @return [Integer]
    #
    # @!attribute matches
    #   <p>The list of matched profiles for this instance.</p>
    #
    #   @return [Array<MatchItem>]
    #
    GetMatchesOutput = ::Struct.new(
      :next_token,
      :match_generation_date,
      :potential_matches,
      :matches,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #
    #   @return [String]
    #
    # @!attribute object_type_name
    #   <p>The name of the profile object type.</p>
    #
    #   @return [String]
    #
    GetProfileObjectTypeInput = ::Struct.new(
      :domain_name,
      :object_type_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute object_type_name
    #   <p>The name of the profile object type.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the profile object type.</p>
    #
    #   @return [String]
    #
    # @!attribute template_id
    #   <p>A unique identifier for the object template.</p>
    #
    #   @return [String]
    #
    # @!attribute expiration_days
    #   <p>The number of days until the data in the object expires.</p>
    #
    #   @return [Integer]
    #
    # @!attribute encryption_key
    #   <p>The customer-provided key to encrypt the profile object that will be created in this
    #            profile object type.</p>
    #
    #   @return [String]
    #
    # @!attribute allow_profile_creation
    #   <p>Indicates whether a profile should be created when data is received if one doesn’t exist
    #            for an object of this type. The default is <code>FALSE</code>. If the AllowProfileCreation
    #            flag is set to <code>FALSE</code>, then the service tries to fetch a standard profile and
    #            associate this object with the profile. If it is set to <code>TRUE</code>, and if no match
    #            is found, then the service creates a new standard profile.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute source_last_updated_timestamp_format
    #   <p>The format of your <code>sourceLastUpdatedTimestamp</code> that was previously set
    #            up.</p>
    #
    #   @return [String]
    #
    # @!attribute fields
    #   <p>A map of the name and ObjectType field.</p>
    #
    #   @return [Hash<String, ObjectTypeField>]
    #
    # @!attribute keys
    #   <p>A list of unique keys that can be used to map data to the profile.</p>
    #
    #   @return [Hash<String, Array<ObjectTypeKey>>]
    #
    # @!attribute created_at
    #   <p>The timestamp of when the domain was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_at
    #   <p>The timestamp of when the domain was most recently edited.</p>
    #
    #   @return [Time]
    #
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    GetProfileObjectTypeOutput = ::Struct.new(
      :object_type_name,
      :description,
      :template_id,
      :expiration_days,
      :encryption_key,
      :allow_profile_creation,
      :source_last_updated_timestamp_format,
      :fields,
      :keys,
      :created_at,
      :last_updated_at,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.allow_profile_creation ||= false
      end

    end

    # @!attribute template_id
    #   <p>A unique identifier for the object template.</p>
    #
    #   @return [String]
    #
    GetProfileObjectTypeTemplateInput = ::Struct.new(
      :template_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute template_id
    #   <p>A unique identifier for the object template.</p>
    #
    #   @return [String]
    #
    # @!attribute source_name
    #   <p>The name of the source of the object template.</p>
    #
    #   @return [String]
    #
    # @!attribute source_object
    #   <p>The source of the object template.</p>
    #
    #   @return [String]
    #
    # @!attribute allow_profile_creation
    #   <p>Indicates whether a profile should be created when data is received if one doesn’t exist
    #            for an object of this type. The default is <code>FALSE</code>. If the AllowProfileCreation
    #            flag is set to <code>FALSE</code>, then the service tries to fetch a standard profile and
    #            associate this object with the profile. If it is set to <code>TRUE</code>, and if no match
    #            is found, then the service creates a new standard profile.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute source_last_updated_timestamp_format
    #   <p>The format of your <code>sourceLastUpdatedTimestamp</code> that was previously set
    #            up.</p>
    #
    #   @return [String]
    #
    # @!attribute fields
    #   <p>A map of the name and ObjectType field.</p>
    #
    #   @return [Hash<String, ObjectTypeField>]
    #
    # @!attribute keys
    #   <p>A list of unique keys that can be used to map data to the profile.</p>
    #
    #   @return [Hash<String, Array<ObjectTypeKey>>]
    #
    GetProfileObjectTypeTemplateOutput = ::Struct.new(
      :template_id,
      :source_name,
      :source_object,
      :allow_profile_creation,
      :source_last_updated_timestamp_format,
      :fields,
      :keys,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.allow_profile_creation ||= false
      end

    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #
    #   @return [String]
    #
    # @!attribute workflow_id
    #   <p>Unique identifier for the workflow.</p>
    #
    #   @return [String]
    #
    GetWorkflowInput = ::Struct.new(
      :domain_name,
      :workflow_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute workflow_id
    #   <p>Unique identifier for the workflow.</p>
    #
    #   @return [String]
    #
    # @!attribute workflow_type
    #   <p>The type of workflow. The only supported value is APPFLOW_INTEGRATION.</p>
    #
    #   Enum, one of: ["APPFLOW_INTEGRATION"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Status of workflow execution.</p>
    #
    #   Enum, one of: ["NOT_STARTED", "IN_PROGRESS", "COMPLETE", "FAILED", "SPLIT", "RETRY", "CANCELLED"]
    #
    #   @return [String]
    #
    # @!attribute error_description
    #   <p>Workflow error messages during execution (if any).</p>
    #
    #   @return [String]
    #
    # @!attribute start_date
    #   <p>The timestamp that represents when workflow execution started.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_at
    #   <p>The timestamp that represents when workflow execution last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute attributes
    #   <p>Attributes provided for workflow execution.</p>
    #
    #   @return [WorkflowAttributes]
    #
    # @!attribute metrics
    #   <p>Workflow specific execution metrics.</p>
    #
    #   @return [WorkflowMetrics]
    #
    GetWorkflowOutput = ::Struct.new(
      :workflow_id,
      :workflow_type,
      :status,
      :error_description,
      :start_date,
      :last_updated_at,
      :attributes,
      :metrics,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #
    #   @return [String]
    #
    # @!attribute workflow_id
    #   <p>Unique identifier for the workflow.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    #   @return [Integer]
    #
    GetWorkflowStepsInput = ::Struct.new(
      :domain_name,
      :workflow_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute workflow_id
    #   <p>Unique identifier for the workflow.</p>
    #
    #   @return [String]
    #
    # @!attribute workflow_type
    #   <p>The type of workflow. The only supported value is APPFLOW_INTEGRATION.</p>
    #
    #   Enum, one of: ["APPFLOW_INTEGRATION"]
    #
    #   @return [String]
    #
    # @!attribute items
    #   <p>List containing workflow step details.</p>
    #
    #   @return [Array<WorkflowStepItem>]
    #
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #
    #   @return [String]
    #
    GetWorkflowStepsOutput = ::Struct.new(
      :workflow_id,
      :workflow_type,
      :items,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the Identity Resolution Job.</p>
    #
    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #
    #   @return [String]
    #
    # @!attribute job_id
    #   <p>The unique identifier of the Identity Resolution Job.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the Identity Resolution Job.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PENDING</code>: The Identity Resolution Job is scheduled but has not started yet. If you turn
    #                  off the Identity Resolution feature in your domain, jobs in the <code>PENDING</code> state are
    #                  deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PREPROCESSING</code>: The Identity Resolution Job is loading your data.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FIND_MATCHING</code>: The Identity Resolution Job is using the machine learning model to
    #                  identify profiles that belong to the same matching group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MERGING</code>: The Identity Resolution Job is merging duplicate profiles.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>COMPLETED</code>: The Identity Resolution Job completed successfully.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PARTIAL_SUCCESS</code>: There's a system error and not all of the data is
    #                  merged. The Identity Resolution Job writes a message indicating the source of the problem.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code>: The Identity Resolution Job did not merge any data. It writes a message
    #                  indicating the source of the problem.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["PENDING", "PREPROCESSING", "FIND_MATCHING", "MERGING", "COMPLETED", "PARTIAL_SUCCESS", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute job_start_time
    #   <p>The timestamp of when the job was started or will be started.</p>
    #
    #   @return [Time]
    #
    # @!attribute job_end_time
    #   <p>The timestamp of when the job was completed.</p>
    #
    #   @return [Time]
    #
    # @!attribute job_stats
    #   <p>Statistics about an Identity Resolution Job.</p>
    #
    #   @return [JobStats]
    #
    # @!attribute exporting_location
    #   <p>The S3 location where the Identity Resolution Job writes result files.</p>
    #
    #   @return [ExportingLocation]
    #
    # @!attribute message
    #   <p>The error messages that are generated when the Identity Resolution Job runs.</p>
    #
    #   @return [String]
    #
    IdentityResolutionJob = ::Struct.new(
      :domain_name,
      :job_id,
      :status,
      :job_start_time,
      :job_end_time,
      :job_stats,
      :exporting_location,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for IdentityResolutionJobStatus
    #
    module IdentityResolutionJobStatus
      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      PREPROCESSING = "PREPROCESSING"

      # No documentation available.
      #
      FIND_MATCHING = "FIND_MATCHING"

      # No documentation available.
      #
      MERGING = "MERGING"

      # No documentation available.
      #
      COMPLETED = "COMPLETED"

      # No documentation available.
      #
      PARTIAL_SUCCESS = "PARTIAL_SUCCESS"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # <p>Specifies the configuration used when importing incremental records from the
    #          source.</p>
    #
    # @!attribute datetime_type_field_name
    #   <p>A field that specifies the date time or timestamp field as the criteria to use when
    #            importing incremental records from the source.</p>
    #
    #   @return [String]
    #
    IncrementalPullConfig = ::Struct.new(
      :datetime_type_field_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Configuration data for integration workflow.</p>
    #
    # @!attribute appflow_integration
    #   <p>Configuration data for <code>APPFLOW_INTEGRATION</code> workflow type.</p>
    #
    #   @return [AppflowIntegration]
    #
    IntegrationConfig = ::Struct.new(
      :appflow_integration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An internal service error occurred.</p>
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

    # <p>The day and time when do you want to start the Identity Resolution Job every week.</p>
    #
    # @!attribute day_of_the_week
    #   <p>The day when the Identity Resolution Job should run every week.</p>
    #
    #   Enum, one of: ["SUNDAY", "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY"]
    #
    #   @return [String]
    #
    # @!attribute time
    #   <p>The time when the Identity Resolution Job should run every week.</p>
    #
    #   @return [String]
    #
    JobSchedule = ::Struct.new(
      :day_of_the_week,
      :time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for JobScheduleDayOfTheWeek
    #
    module JobScheduleDayOfTheWeek
      # No documentation available.
      #
      SUNDAY = "SUNDAY"

      # No documentation available.
      #
      MONDAY = "MONDAY"

      # No documentation available.
      #
      TUESDAY = "TUESDAY"

      # No documentation available.
      #
      WEDNESDAY = "WEDNESDAY"

      # No documentation available.
      #
      THURSDAY = "THURSDAY"

      # No documentation available.
      #
      FRIDAY = "FRIDAY"

      # No documentation available.
      #
      SATURDAY = "SATURDAY"
    end

    # <p>Statistics about the Identity Resolution Job.</p>
    #
    # @!attribute number_of_profiles_reviewed
    #   <p>The number of profiles reviewed.</p>
    #
    #   @return [Integer]
    #
    # @!attribute number_of_matches_found
    #   <p>The number of matches found.</p>
    #
    #   @return [Integer]
    #
    # @!attribute number_of_merges_done
    #   <p>The number of merges completed.</p>
    #
    #   @return [Integer]
    #
    JobStats = ::Struct.new(
      :number_of_profiles_reviewed,
      :number_of_matches_found,
      :number_of_merges_done,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.number_of_profiles_reviewed ||= 0
        self.number_of_matches_found ||= 0
        self.number_of_merges_done ||= 0
      end

    end

    # @!attribute uri
    #   <p>The URI of the S3 bucket or any other type of data source.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The pagination token from the previous ListAccountIntegrations API call.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of objects returned per page.</p>
    #
    #   @return [Integer]
    #
    # @!attribute include_hidden
    #   <p>Boolean to indicate if hidden integration should be returned. Defaults to <code>False</code>.</p>
    #
    #   @return [Boolean]
    #
    ListAccountIntegrationsInput = ::Struct.new(
      :uri,
      :next_token,
      :max_results,
      :include_hidden,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute items
    #   <p>The list of ListAccountIntegration instances.</p>
    #
    #   @return [Array<ListIntegrationItem>]
    #
    # @!attribute next_token
    #   <p>The pagination token from the previous ListAccountIntegrations API call.</p>
    #
    #   @return [String]
    #
    ListAccountIntegrationsOutput = ::Struct.new(
      :items,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object in a list that represents a domain.</p>
    #
    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The timestamp of when the domain was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_at
    #   <p>The timestamp of when the domain was most recently edited.</p>
    #
    #   @return [Time]
    #
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    ListDomainItem = ::Struct.new(
      :domain_name,
      :created_at,
      :last_updated_at,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token from the previous ListDomain API call.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of objects returned per page.</p>
    #
    #   @return [Integer]
    #
    ListDomainsInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute items
    #   <p>The list of ListDomains instances.</p>
    #
    #   @return [Array<ListDomainItem>]
    #
    # @!attribute next_token
    #   <p>The pagination token from the previous ListDomains API call.</p>
    #
    #   @return [String]
    #
    ListDomainsOutput = ::Struct.new(
      :items,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    #   @return [Integer]
    #
    ListIdentityResolutionJobsInput = ::Struct.new(
      :domain_name,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute identity_resolution_jobs_list
    #   <p>A list of Identity Resolution Jobs.</p>
    #
    #   @return [Array<IdentityResolutionJob>]
    #
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #
    #   @return [String]
    #
    ListIdentityResolutionJobsOutput = ::Struct.new(
      :identity_resolution_jobs_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An integration in list of integrations.</p>
    #
    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #
    #   @return [String]
    #
    # @!attribute uri
    #   <p>The URI of the S3 bucket or any other type of data source.</p>
    #
    #   @return [String]
    #
    # @!attribute object_type_name
    #   <p>The name of the profile object type.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The timestamp of when the domain was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_at
    #   <p>The timestamp of when the domain was most recently edited.</p>
    #
    #   @return [Time]
    #
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute object_type_names
    #   <p>A map in which each key is an event type from an external application such as Segment or Shopify, and each value is an <code>ObjectTypeName</code> (template) used to ingest the event.
    #   It supports the following event types: <code>SegmentIdentify</code>, <code>ShopifyCreateCustomers</code>, <code>ShopifyUpdateCustomers</code>, <code>ShopifyCreateDraftOrders</code>,
    #   <code>ShopifyUpdateDraftOrders</code>, <code>ShopifyCreateOrders</code>, and <code>ShopifyUpdatedOrders</code>.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute workflow_id
    #   <p>Unique identifier for the workflow.</p>
    #
    #   @return [String]
    #
    ListIntegrationItem = ::Struct.new(
      :domain_name,
      :uri,
      :object_type_name,
      :created_at,
      :last_updated_at,
      :tags,
      :object_type_names,
      :workflow_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The pagination token from the previous ListIntegrations API call.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of objects returned per page.</p>
    #
    #   @return [Integer]
    #
    # @!attribute include_hidden
    #   <p>Boolean to indicate if hidden integration should be returned. Defaults to <code>False</code>.</p>
    #
    #   @return [Boolean]
    #
    ListIntegrationsInput = ::Struct.new(
      :domain_name,
      :next_token,
      :max_results,
      :include_hidden,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute items
    #   <p>The list of ListIntegrations instances.</p>
    #
    #   @return [Array<ListIntegrationItem>]
    #
    # @!attribute next_token
    #   <p>The pagination token from the previous ListIntegrations API call.</p>
    #
    #   @return [String]
    #
    ListIntegrationsOutput = ::Struct.new(
      :items,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A ProfileObjectType instance.</p>
    #
    # @!attribute object_type_name
    #   <p>The name of the profile object type.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>Description of the profile object type.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The timestamp of when the domain was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_at
    #   <p>The timestamp of when the domain was most recently edited.</p>
    #
    #   @return [Time]
    #
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    ListProfileObjectTypeItem = ::Struct.new(
      :object_type_name,
      :description,
      :created_at,
      :last_updated_at,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A ProfileObjectTypeTemplate in a list of ProfileObjectTypeTemplates.</p>
    #
    # @!attribute template_id
    #   <p>A unique identifier for the object template.</p>
    #
    #   @return [String]
    #
    # @!attribute source_name
    #   <p>The name of the source of the object template.</p>
    #
    #   @return [String]
    #
    # @!attribute source_object
    #   <p>The source of the object template.</p>
    #
    #   @return [String]
    #
    ListProfileObjectTypeTemplateItem = ::Struct.new(
      :template_id,
      :source_name,
      :source_object,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token from the previous ListObjectTypeTemplates API call.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of objects returned per page.</p>
    #
    #   @return [Integer]
    #
    ListProfileObjectTypeTemplatesInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute items
    #   <p>The list of ListProfileObjectType template instances.</p>
    #
    #   @return [Array<ListProfileObjectTypeTemplateItem>]
    #
    # @!attribute next_token
    #   <p>The pagination token from the previous ListObjectTypeTemplates API call. </p>
    #
    #   @return [String]
    #
    ListProfileObjectTypeTemplatesOutput = ::Struct.new(
      :items,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of objects returned per page.</p>
    #
    #   @return [Integer]
    #
    ListProfileObjectTypesInput = ::Struct.new(
      :domain_name,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute items
    #   <p>The list of ListProfileObjectTypes instances.</p>
    #
    #   @return [Array<ListProfileObjectTypeItem>]
    #
    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #
    #   @return [String]
    #
    ListProfileObjectTypesOutput = ::Struct.new(
      :items,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token from the previous call to ListProfileObjects.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of objects returned per page.</p>
    #
    #   @return [Integer]
    #
    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #
    #   @return [String]
    #
    # @!attribute object_type_name
    #   <p>The name of the profile object type.</p>
    #
    #   @return [String]
    #
    # @!attribute profile_id
    #   <p>The unique identifier of a customer profile.</p>
    #
    #   @return [String]
    #
    # @!attribute object_filter
    #   <p>Applies a filter to the response to include profile objects with the specified index
    #            values. This filter is only supported for ObjectTypeName _asset, _case and _order.</p>
    #
    #   @return [ObjectFilter]
    #
    ListProfileObjectsInput = ::Struct.new(
      :next_token,
      :max_results,
      :domain_name,
      :object_type_name,
      :profile_id,
      :object_filter,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A ProfileObject in a list of ProfileObjects.</p>
    #
    # @!attribute object_type_name
    #   <p>Specifies the kind of object being added to a profile, such as
    #            "Salesforce-Account."</p>
    #
    #   @return [String]
    #
    # @!attribute profile_object_unique_key
    #   <p>The unique identifier of the ProfileObject generated by the service.</p>
    #
    #   @return [String]
    #
    # @!attribute object
    #   <p>A JSON representation of a ProfileObject that belongs to a profile.</p>
    #
    #   @return [String]
    #
    ListProfileObjectsItem = ::Struct.new(
      :object_type_name,
      :profile_object_unique_key,
      :object,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute items
    #   <p>The list of ListProfileObject instances.</p>
    #
    #   @return [Array<ListProfileObjectsItem>]
    #
    # @!attribute next_token
    #   <p>The pagination token from the previous call to ListProfileObjects.</p>
    #
    #   @return [String]
    #
    ListProfileObjectsOutput = ::Struct.new(
      :items,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource for which you want to view tags.</p>
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
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #
    #   @return [String]
    #
    # @!attribute workflow_type
    #   <p>The type of workflow. The only supported value is APPFLOW_INTEGRATION.</p>
    #
    #   Enum, one of: ["APPFLOW_INTEGRATION"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Status of workflow execution.</p>
    #
    #   Enum, one of: ["NOT_STARTED", "IN_PROGRESS", "COMPLETE", "FAILED", "SPLIT", "RETRY", "CANCELLED"]
    #
    #   @return [String]
    #
    # @!attribute query_start_date
    #   <p>Retrieve workflows started after timestamp.</p>
    #
    #   @return [Time]
    #
    # @!attribute query_end_date
    #   <p>Retrieve workflows ended after timestamp.</p>
    #
    #   @return [Time]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    #   @return [Integer]
    #
    ListWorkflowsInput = ::Struct.new(
      :domain_name,
      :workflow_type,
      :status,
      :query_start_date,
      :query_end_date,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A workflow in list of workflows.</p>
    #
    # @!attribute workflow_type
    #   <p>The type of workflow. The only supported value is APPFLOW_INTEGRATION.</p>
    #
    #   Enum, one of: ["APPFLOW_INTEGRATION"]
    #
    #   @return [String]
    #
    # @!attribute workflow_id
    #   <p>Unique identifier for the workflow.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Status of workflow execution.</p>
    #
    #   Enum, one of: ["NOT_STARTED", "IN_PROGRESS", "COMPLETE", "FAILED", "SPLIT", "RETRY", "CANCELLED"]
    #
    #   @return [String]
    #
    # @!attribute status_description
    #   <p>Description for workflow execution status.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>Creation timestamp for workflow.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_at
    #   <p>Last updated timestamp for workflow.</p>
    #
    #   @return [Time]
    #
    ListWorkflowsItem = ::Struct.new(
      :workflow_type,
      :workflow_id,
      :status,
      :status_description,
      :created_at,
      :last_updated_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute items
    #   <p>List containing workflow details.</p>
    #
    #   @return [Array<ListWorkflowsItem>]
    #
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #
    #   @return [String]
    #
    ListWorkflowsOutput = ::Struct.new(
      :items,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for MarketoConnectorOperator
    #
    module MarketoConnectorOperator
      # No documentation available.
      #
      PROJECTION = "PROJECTION"

      # No documentation available.
      #
      LESS_THAN = "LESS_THAN"

      # No documentation available.
      #
      GREATER_THAN = "GREATER_THAN"

      # No documentation available.
      #
      BETWEEN = "BETWEEN"

      # No documentation available.
      #
      ADDITION = "ADDITION"

      # No documentation available.
      #
      MULTIPLICATION = "MULTIPLICATION"

      # No documentation available.
      #
      DIVISION = "DIVISION"

      # No documentation available.
      #
      SUBTRACTION = "SUBTRACTION"

      # No documentation available.
      #
      MASK_ALL = "MASK_ALL"

      # No documentation available.
      #
      MASK_FIRST_N = "MASK_FIRST_N"

      # No documentation available.
      #
      MASK_LAST_N = "MASK_LAST_N"

      # No documentation available.
      #
      VALIDATE_NON_NULL = "VALIDATE_NON_NULL"

      # No documentation available.
      #
      VALIDATE_NON_ZERO = "VALIDATE_NON_ZERO"

      # No documentation available.
      #
      VALIDATE_NON_NEGATIVE = "VALIDATE_NON_NEGATIVE"

      # No documentation available.
      #
      VALIDATE_NUMERIC = "VALIDATE_NUMERIC"

      # No documentation available.
      #
      NO_OP = "NO_OP"
    end

    # <p>The properties that are applied when Marketo is being used as a source.</p>
    #
    # @!attribute object
    #   <p>The object specified in the Marketo flow source.</p>
    #
    #   @return [String]
    #
    MarketoSourceProperties = ::Struct.new(
      :object,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The Match group object.</p>
    #
    # @!attribute match_id
    #   <p>The unique identifiers for this group of profiles that match.</p>
    #
    #   @return [String]
    #
    # @!attribute profile_ids
    #   <p>A list of identifiers for profiles that match.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute confidence_score
    #   <p>A number between 0 and 1 that represents the confidence level of assigning profiles to a
    #            matching group. A score of 1 likely indicates an exact match.</p>
    #
    #   @return [Float]
    #
    MatchItem = ::Struct.new(
      :match_id,
      :profile_ids,
      :confidence_score,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The flag that enables the matching process of duplicate profiles.</p>
    #
    # @!attribute enabled
    #   <p>The flag that enables the matching process of duplicate profiles.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute job_schedule
    #   <p>The day and time when do you want to start the Identity Resolution Job every week.</p>
    #
    #   @return [JobSchedule]
    #
    # @!attribute auto_merging
    #   <p>Configuration information about the auto-merging process.</p>
    #
    #   @return [AutoMerging]
    #
    # @!attribute exporting_config
    #   <p>Configuration information for exporting Identity Resolution results, for example, to an S3
    #            bucket.</p>
    #
    #   @return [ExportingConfig]
    #
    MatchingRequest = ::Struct.new(
      :enabled,
      :job_schedule,
      :auto_merging,
      :exporting_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The flag that enables the matching process of duplicate profiles.</p>
    #
    # @!attribute enabled
    #   <p>The flag that enables the matching process of duplicate profiles.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute job_schedule
    #   <p>The day and time when do you want to start the Identity Resolution Job every week.</p>
    #
    #   @return [JobSchedule]
    #
    # @!attribute auto_merging
    #   <p>Configuration information about the auto-merging process.</p>
    #
    #   @return [AutoMerging]
    #
    # @!attribute exporting_config
    #   <p>Configuration information for exporting Identity Resolution results, for example, to an S3
    #            bucket.</p>
    #
    #   @return [ExportingConfig]
    #
    MatchingResponse = ::Struct.new(
      :enabled,
      :job_schedule,
      :auto_merging,
      :exporting_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #
    #   @return [String]
    #
    # @!attribute main_profile_id
    #   <p>The identifier of the profile to be taken.</p>
    #
    #   @return [String]
    #
    # @!attribute profile_ids_to_be_merged
    #   <p>The identifier of the profile to be merged into MainProfileId.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute field_source_profile_ids
    #   <p>The identifiers of the fields in the profile that has the information you want to apply
    #            to the merge. For example, say you want to merge EmailAddress from Profile1 into
    #            MainProfile. This would be the identifier of the EmailAddress field in Profile1. </p>
    #
    #   @return [FieldSourceProfileIds]
    #
    MergeProfilesInput = ::Struct.new(
      :domain_name,
      :main_profile_id,
      :profile_ids_to_be_merged,
      :field_source_profile_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute message
    #   <p>A message that indicates the merge request is complete.</p>
    #
    #   @return [String]
    #
    MergeProfilesOutput = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The filter applied to ListProfileObjects response to include profile objects with the
    #          specified index values. This filter is only supported for ObjectTypeName _asset, _case and
    #          _order.</p>
    #
    # @!attribute key_name
    #   <p>A searchable identifier of a standard profile object. The predefined keys you can use to
    #            search for _asset include: _assetId, _assetName, _serialNumber. The predefined keys you can
    #            use to search for _case include: _caseId. The predefined keys you can use to search for
    #            _order include: _orderId.</p>
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>A list of key values.</p>
    #
    #   @return [Array<String>]
    #
    ObjectFilter = ::Struct.new(
      :key_name,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a field in a ProfileObjectType.</p>
    #
    # @!attribute source
    #   <p>A field of a ProfileObject. For example: _source.FirstName, where “_source” is a
    #            ProfileObjectType of a Zendesk user and “FirstName” is a field in that ObjectType.</p>
    #
    #   @return [String]
    #
    # @!attribute target
    #   <p>The location of the data in the standard ProfileObject model. For example:
    #            _profile.Address.PostalCode.</p>
    #
    #   @return [String]
    #
    # @!attribute content_type
    #   <p>The content type of the field. Used for determining equality when searching.</p>
    #
    #   Enum, one of: ["STRING", "NUMBER", "PHONE_NUMBER", "EMAIL_ADDRESS", "NAME"]
    #
    #   @return [String]
    #
    ObjectTypeField = ::Struct.new(
      :source,
      :target,
      :content_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that defines the Key element of a ProfileObject. A Key is a special element
    #          that can be used to search for a customer profile.</p>
    #
    # @!attribute standard_identifiers
    #   <p>The types of keys that a ProfileObject can have. Each ProfileObject can have only 1
    #            UNIQUE key but multiple PROFILE keys. PROFILE, ASSET, CASE, or ORDER  means that this key can be
    #            used to tie an object to a PROFILE, ASSET, CASE, or ORDER respectively. UNIQUE means that it can be
    #            used to uniquely identify an object. If a key a is marked as SECONDARY, it will be used to
    #            search for profiles after all other PROFILE keys have been searched. A LOOKUP_ONLY key is
    #            only used to match a profile but is not persisted to be used for searching of the profile.
    #            A NEW_ONLY key is only used if the profile does not already exist before the object is
    #            ingested, otherwise it is only used for matching objects to profiles.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute field_names
    #   <p>The reference for the key name of the fields map.</p>
    #
    #   @return [Array<String>]
    #
    ObjectTypeKey = ::Struct.new(
      :standard_identifiers,
      :field_names,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for OperatorPropertiesKeys
    #
    module OperatorPropertiesKeys
      # No documentation available.
      #
      VALUE = "VALUE"

      # No documentation available.
      #
      VALUES = "VALUES"

      # No documentation available.
      #
      DATA_TYPE = "DATA_TYPE"

      # No documentation available.
      #
      UPPER_BOUND = "UPPER_BOUND"

      # No documentation available.
      #
      LOWER_BOUND = "LOWER_BOUND"

      # No documentation available.
      #
      SOURCE_DATA_TYPE = "SOURCE_DATA_TYPE"

      # No documentation available.
      #
      DESTINATION_DATA_TYPE = "DESTINATION_DATA_TYPE"

      # No documentation available.
      #
      VALIDATION_ACTION = "VALIDATION_ACTION"

      # No documentation available.
      #
      MASK_VALUE = "MASK_VALUE"

      # No documentation available.
      #
      MASK_LENGTH = "MASK_LENGTH"

      # No documentation available.
      #
      TRUNCATE_LENGTH = "TRUNCATE_LENGTH"

      # No documentation available.
      #
      MATH_OPERATION_FIELDS_ORDER = "MATH_OPERATION_FIELDS_ORDER"

      # No documentation available.
      #
      CONCAT_FORMAT = "CONCAT_FORMAT"

      # No documentation available.
      #
      SUBFIELD_CATEGORY_MAP = "SUBFIELD_CATEGORY_MAP"
    end

    # Includes enum constants for PartyType
    #
    module PartyType
      # No documentation available.
      #
      INDIVIDUAL = "INDIVIDUAL"

      # No documentation available.
      #
      BUSINESS = "BUSINESS"

      # No documentation available.
      #
      OTHER = "OTHER"
    end

    # <p>The standard profile of a customer.</p>
    #
    # @!attribute profile_id
    #   <p>The unique identifier of a customer profile.</p>
    #
    #   @return [String]
    #
    # @!attribute account_number
    #   <p>A unique account number that you have given to the customer.</p>
    #
    #   @return [String]
    #
    # @!attribute additional_information
    #   <p>Any additional information relevant to the customer’s profile.</p>
    #
    #   @return [String]
    #
    # @!attribute party_type
    #   <p>The type of profile used to describe the customer.</p>
    #
    #   Enum, one of: ["INDIVIDUAL", "BUSINESS", "OTHER"]
    #
    #   @return [String]
    #
    # @!attribute business_name
    #   <p>The name of the customer’s business.</p>
    #
    #   @return [String]
    #
    # @!attribute first_name
    #   <p>The customer’s first name.</p>
    #
    #   @return [String]
    #
    # @!attribute middle_name
    #   <p>The customer’s middle name.</p>
    #
    #   @return [String]
    #
    # @!attribute last_name
    #   <p>The customer’s last name.</p>
    #
    #   @return [String]
    #
    # @!attribute birth_date
    #   <p>The customer’s birth date. </p>
    #
    #   @return [String]
    #
    # @!attribute gender
    #   <p>The gender with which the customer identifies. </p>
    #
    #   Enum, one of: ["MALE", "FEMALE", "UNSPECIFIED"]
    #
    #   @return [String]
    #
    # @!attribute phone_number
    #   <p>The customer's phone number, which has not been specified as a mobile, home, or business
    #            number.</p>
    #
    #   @return [String]
    #
    # @!attribute mobile_phone_number
    #   <p>The customer’s mobile phone number.</p>
    #
    #   @return [String]
    #
    # @!attribute home_phone_number
    #   <p>The customer’s home phone number.</p>
    #
    #   @return [String]
    #
    # @!attribute business_phone_number
    #   <p>The customer’s home phone number.</p>
    #
    #   @return [String]
    #
    # @!attribute email_address
    #   <p>The customer’s email address, which has not been specified as a personal or business
    #            address. </p>
    #
    #   @return [String]
    #
    # @!attribute personal_email_address
    #   <p>The customer’s personal email address.</p>
    #
    #   @return [String]
    #
    # @!attribute business_email_address
    #   <p>The customer’s business email address.</p>
    #
    #   @return [String]
    #
    # @!attribute address
    #   <p>A generic address associated with the customer that is not mailing, shipping, or
    #            billing.</p>
    #
    #   @return [Address]
    #
    # @!attribute shipping_address
    #   <p>The customer’s shipping address.</p>
    #
    #   @return [Address]
    #
    # @!attribute mailing_address
    #   <p>The customer’s mailing address.</p>
    #
    #   @return [Address]
    #
    # @!attribute billing_address
    #   <p>The customer’s billing address.</p>
    #
    #   @return [Address]
    #
    # @!attribute attributes
    #   <p>A key value pair of attributes of a customer profile.</p>
    #
    #   @return [Hash<String, String>]
    #
    Profile = ::Struct.new(
      :profile_id,
      :account_number,
      :additional_information,
      :party_type,
      :business_name,
      :first_name,
      :middle_name,
      :last_name,
      :birth_date,
      :gender,
      :phone_number,
      :mobile_phone_number,
      :home_phone_number,
      :business_phone_number,
      :email_address,
      :personal_email_address,
      :business_email_address,
      :address,
      :shipping_address,
      :mailing_address,
      :billing_address,
      :attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #
    #   @return [String]
    #
    # @!attribute uri
    #   <p>The URI of the S3 bucket or any other type of data source.</p>
    #
    #   @return [String]
    #
    # @!attribute object_type_name
    #   <p>The name of the profile object type.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute flow_definition
    #   <p>The configuration that controls how Customer Profiles retrieves data from the
    #            source.</p>
    #
    #   @return [FlowDefinition]
    #
    # @!attribute object_type_names
    #   <p>A map in which each key is an event type from an external application such as Segment or Shopify, and each value is an <code>ObjectTypeName</code> (template) used to ingest the event.
    #   It supports the following event types: <code>SegmentIdentify</code>, <code>ShopifyCreateCustomers</code>, <code>ShopifyUpdateCustomers</code>, <code>ShopifyCreateDraftOrders</code>,
    #   <code>ShopifyUpdateDraftOrders</code>, <code>ShopifyCreateOrders</code>, and <code>ShopifyUpdatedOrders</code>.</p>
    #
    #   @return [Hash<String, String>]
    #
    PutIntegrationInput = ::Struct.new(
      :domain_name,
      :uri,
      :object_type_name,
      :tags,
      :flow_definition,
      :object_type_names,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #
    #   @return [String]
    #
    # @!attribute uri
    #   <p>The URI of the S3 bucket or any other type of data source.</p>
    #
    #   @return [String]
    #
    # @!attribute object_type_name
    #   <p>The name of the profile object type.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The timestamp of when the domain was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_at
    #   <p>The timestamp of when the domain was most recently edited.</p>
    #
    #   @return [Time]
    #
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute object_type_names
    #   <p>A map in which each key is an event type from an external application such as Segment or Shopify, and each value is an <code>ObjectTypeName</code> (template) used to ingest the event.
    #   It supports the following event types: <code>SegmentIdentify</code>, <code>ShopifyCreateCustomers</code>, <code>ShopifyUpdateCustomers</code>, <code>ShopifyCreateDraftOrders</code>,
    #   <code>ShopifyUpdateDraftOrders</code>, <code>ShopifyCreateOrders</code>, and <code>ShopifyUpdatedOrders</code>.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute workflow_id
    #   <p>Unique identifier for the workflow.</p>
    #
    #   @return [String]
    #
    PutIntegrationOutput = ::Struct.new(
      :domain_name,
      :uri,
      :object_type_name,
      :created_at,
      :last_updated_at,
      :tags,
      :object_type_names,
      :workflow_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute object_type_name
    #   <p>The name of the profile object type.</p>
    #
    #   @return [String]
    #
    # @!attribute object
    #   <p>A string that is serialized from a JSON object.</p>
    #
    #   @return [String]
    #
    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #
    #   @return [String]
    #
    PutProfileObjectInput = ::Struct.new(
      :object_type_name,
      :object,
      :domain_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute profile_object_unique_key
    #   <p>The unique identifier of the profile object generated by the service.</p>
    #
    #   @return [String]
    #
    PutProfileObjectOutput = ::Struct.new(
      :profile_object_unique_key,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #
    #   @return [String]
    #
    # @!attribute object_type_name
    #   <p>The name of the profile object type.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>Description of the profile object type.</p>
    #
    #   @return [String]
    #
    # @!attribute template_id
    #   <p>A unique identifier for the object template.</p>
    #
    #   @return [String]
    #
    # @!attribute expiration_days
    #   <p>The number of days until the data in the object expires.</p>
    #
    #   @return [Integer]
    #
    # @!attribute encryption_key
    #   <p>The customer-provided key to encrypt the profile object that will be created in this
    #            profile object type.</p>
    #
    #   @return [String]
    #
    # @!attribute allow_profile_creation
    #   <p>Indicates whether a profile should be created when data is received if one doesn’t exist
    #            for an object of this type. The default is <code>FALSE</code>. If the AllowProfileCreation
    #            flag is set to <code>FALSE</code>, then the service tries to fetch a standard profile and
    #            associate this object with the profile. If it is set to <code>TRUE</code>, and if no match
    #            is found, then the service creates a new standard profile.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute source_last_updated_timestamp_format
    #   <p>The format of your <code>sourceLastUpdatedTimestamp</code> that was previously set up.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute fields
    #   <p>A map of the name and ObjectType field.</p>
    #
    #   @return [Hash<String, ObjectTypeField>]
    #
    # @!attribute keys
    #   <p>A list of unique keys that can be used to map data to the profile.</p>
    #
    #   @return [Hash<String, Array<ObjectTypeKey>>]
    #
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    PutProfileObjectTypeInput = ::Struct.new(
      :domain_name,
      :object_type_name,
      :description,
      :template_id,
      :expiration_days,
      :encryption_key,
      :allow_profile_creation,
      :source_last_updated_timestamp_format,
      :fields,
      :keys,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.allow_profile_creation ||= false
      end

    end

    # @!attribute object_type_name
    #   <p>The name of the profile object type.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>Description of the profile object type.</p>
    #
    #   @return [String]
    #
    # @!attribute template_id
    #   <p>A unique identifier for the object template.</p>
    #
    #   @return [String]
    #
    # @!attribute expiration_days
    #   <p>The number of days until the data in the object expires.</p>
    #
    #   @return [Integer]
    #
    # @!attribute encryption_key
    #   <p>The customer-provided key to encrypt the profile object that will be created in this
    #            profile object type.</p>
    #
    #   @return [String]
    #
    # @!attribute allow_profile_creation
    #   <p>Indicates whether a profile should be created when data is received if one doesn’t exist
    #            for an object of this type. The default is <code>FALSE</code>. If the AllowProfileCreation
    #            flag is set to <code>FALSE</code>, then the service tries to fetch a standard profile and
    #            associate this object with the profile. If it is set to <code>TRUE</code>, and if no match
    #            is found, then the service creates a new standard profile.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute source_last_updated_timestamp_format
    #   <p>The format of your <code>sourceLastUpdatedTimestamp</code> that was previously set up in
    #            fields that were parsed using <a href="https://docs.oracle.com/javase/10/docs/api/java/text/SimpleDateFormat.html">SimpleDateFormat</a>. If you have <code>sourceLastUpdatedTimestamp</code> in your
    #            field, you must set up <code>sourceLastUpdatedTimestampFormat</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute fields
    #   <p>A map of the name and ObjectType field.</p>
    #
    #   @return [Hash<String, ObjectTypeField>]
    #
    # @!attribute keys
    #   <p>A list of unique keys that can be used to map data to the profile.</p>
    #
    #   @return [Hash<String, Array<ObjectTypeKey>>]
    #
    # @!attribute created_at
    #   <p>The timestamp of when the domain was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_at
    #   <p>The timestamp of when the domain was most recently edited.</p>
    #
    #   @return [Time]
    #
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    PutProfileObjectTypeOutput = ::Struct.new(
      :object_type_name,
      :description,
      :template_id,
      :expiration_days,
      :encryption_key,
      :allow_profile_creation,
      :source_last_updated_timestamp_format,
      :fields,
      :keys,
      :created_at,
      :last_updated_at,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.allow_profile_creation ||= false
      end

    end

    # <p>The requested resource does not exist, or access was denied.</p>
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

    # Includes enum constants for S3ConnectorOperator
    #
    module S3ConnectorOperator
      # No documentation available.
      #
      PROJECTION = "PROJECTION"

      # No documentation available.
      #
      LESS_THAN = "LESS_THAN"

      # No documentation available.
      #
      GREATER_THAN = "GREATER_THAN"

      # No documentation available.
      #
      BETWEEN = "BETWEEN"

      # No documentation available.
      #
      LESS_THAN_OR_EQUAL_TO = "LESS_THAN_OR_EQUAL_TO"

      # No documentation available.
      #
      GREATER_THAN_OR_EQUAL_TO = "GREATER_THAN_OR_EQUAL_TO"

      # No documentation available.
      #
      EQUAL_TO = "EQUAL_TO"

      # No documentation available.
      #
      NOT_EQUAL_TO = "NOT_EQUAL_TO"

      # No documentation available.
      #
      ADDITION = "ADDITION"

      # No documentation available.
      #
      MULTIPLICATION = "MULTIPLICATION"

      # No documentation available.
      #
      DIVISION = "DIVISION"

      # No documentation available.
      #
      SUBTRACTION = "SUBTRACTION"

      # No documentation available.
      #
      MASK_ALL = "MASK_ALL"

      # No documentation available.
      #
      MASK_FIRST_N = "MASK_FIRST_N"

      # No documentation available.
      #
      MASK_LAST_N = "MASK_LAST_N"

      # No documentation available.
      #
      VALIDATE_NON_NULL = "VALIDATE_NON_NULL"

      # No documentation available.
      #
      VALIDATE_NON_ZERO = "VALIDATE_NON_ZERO"

      # No documentation available.
      #
      VALIDATE_NON_NEGATIVE = "VALIDATE_NON_NEGATIVE"

      # No documentation available.
      #
      VALIDATE_NUMERIC = "VALIDATE_NUMERIC"

      # No documentation available.
      #
      NO_OP = "NO_OP"
    end

    # <p>Configuration information about the S3 bucket where Identity Resolution Jobs write result files.</p>
    #
    # @!attribute s3_bucket_name
    #   <p>The name of the S3 bucket where Identity Resolution Jobs write result files.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_key_name
    #   <p>The S3 key name of the location where Identity Resolution Jobs write result files.</p>
    #
    #   @return [String]
    #
    S3ExportingConfig = ::Struct.new(
      :s3_bucket_name,
      :s3_key_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The S3 location where Identity Resolution Jobs write result files.</p>
    #
    # @!attribute s3_bucket_name
    #   <p>The name of the S3 bucket name where Identity Resolution Jobs write result files.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_key_name
    #   <p>The S3 key name of the location where Identity Resolution Jobs write result files.</p>
    #
    #   @return [String]
    #
    S3ExportingLocation = ::Struct.new(
      :s3_bucket_name,
      :s3_key_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The properties that are applied when Amazon S3 is being used as the flow source.</p>
    #
    # @!attribute bucket_name
    #   <p>The Amazon S3 bucket name where the source files are stored.</p>
    #
    #   @return [String]
    #
    # @!attribute bucket_prefix
    #   <p>The object key for the Amazon S3 bucket in which the source files are stored.</p>
    #
    #   @return [String]
    #
    S3SourceProperties = ::Struct.new(
      :bucket_name,
      :bucket_prefix,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SalesforceConnectorOperator
    #
    module SalesforceConnectorOperator
      # No documentation available.
      #
      PROJECTION = "PROJECTION"

      # No documentation available.
      #
      LESS_THAN = "LESS_THAN"

      # No documentation available.
      #
      CONTAINS = "CONTAINS"

      # No documentation available.
      #
      GREATER_THAN = "GREATER_THAN"

      # No documentation available.
      #
      BETWEEN = "BETWEEN"

      # No documentation available.
      #
      LESS_THAN_OR_EQUAL_TO = "LESS_THAN_OR_EQUAL_TO"

      # No documentation available.
      #
      GREATER_THAN_OR_EQUAL_TO = "GREATER_THAN_OR_EQUAL_TO"

      # No documentation available.
      #
      EQUAL_TO = "EQUAL_TO"

      # No documentation available.
      #
      NOT_EQUAL_TO = "NOT_EQUAL_TO"

      # No documentation available.
      #
      ADDITION = "ADDITION"

      # No documentation available.
      #
      MULTIPLICATION = "MULTIPLICATION"

      # No documentation available.
      #
      DIVISION = "DIVISION"

      # No documentation available.
      #
      SUBTRACTION = "SUBTRACTION"

      # No documentation available.
      #
      MASK_ALL = "MASK_ALL"

      # No documentation available.
      #
      MASK_FIRST_N = "MASK_FIRST_N"

      # No documentation available.
      #
      MASK_LAST_N = "MASK_LAST_N"

      # No documentation available.
      #
      VALIDATE_NON_NULL = "VALIDATE_NON_NULL"

      # No documentation available.
      #
      VALIDATE_NON_ZERO = "VALIDATE_NON_ZERO"

      # No documentation available.
      #
      VALIDATE_NON_NEGATIVE = "VALIDATE_NON_NEGATIVE"

      # No documentation available.
      #
      VALIDATE_NUMERIC = "VALIDATE_NUMERIC"

      # No documentation available.
      #
      NO_OP = "NO_OP"
    end

    # <p>The properties that are applied when Salesforce is being used as a source.</p>
    #
    # @!attribute object
    #   <p>The object specified in the Salesforce flow source.</p>
    #
    #   @return [String]
    #
    # @!attribute enable_dynamic_field_update
    #   <p>The flag that enables dynamic fetching of new (recently added) fields in the Salesforce
    #            objects while running a flow.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute include_deleted_records
    #   <p>Indicates whether Amazon AppFlow includes deleted files in the flow run.</p>
    #
    #   @return [Boolean]
    #
    SalesforceSourceProperties = ::Struct.new(
      :object,
      :enable_dynamic_field_update,
      :include_deleted_records,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.enable_dynamic_field_update ||= false
        self.include_deleted_records ||= false
      end

    end

    # <p>Specifies the configuration details of a scheduled-trigger flow that you define.
    #          Currently, these settings only apply to the scheduled-trigger type.</p>
    #
    # @!attribute schedule_expression
    #   <p>The scheduling expression that determines the rate at which the schedule will run, for
    #            example rate (5 minutes).</p>
    #
    #   @return [String]
    #
    # @!attribute data_pull_mode
    #   <p>Specifies whether a scheduled flow has an incremental data transfer or a complete data
    #            transfer for each flow run.</p>
    #
    #   Enum, one of: ["Incremental", "Complete"]
    #
    #   @return [String]
    #
    # @!attribute schedule_start_time
    #   <p>Specifies the scheduled start time for a scheduled-trigger flow.</p>
    #
    #   @return [Time]
    #
    # @!attribute schedule_end_time
    #   <p>Specifies the scheduled end time for a scheduled-trigger flow.</p>
    #
    #   @return [Time]
    #
    # @!attribute timezone
    #   <p>Specifies the time zone used when referring to the date and time of a
    #            scheduled-triggered flow, such as America/New_York.</p>
    #
    #   @return [String]
    #
    # @!attribute schedule_offset
    #   <p>Specifies the optional offset that is added to the time interval for a
    #            schedule-triggered flow.</p>
    #
    #   @return [Integer]
    #
    # @!attribute first_execution_from
    #   <p>Specifies the date range for the records to import from the connector in the first flow
    #            run.</p>
    #
    #   @return [Time]
    #
    ScheduledTriggerProperties = ::Struct.new(
      :schedule_expression,
      :data_pull_mode,
      :schedule_start_time,
      :schedule_end_time,
      :timezone,
      :schedule_offset,
      :first_execution_from,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token from the previous SearchProfiles API call.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of objects returned per page.</p>
    #
    #   @return [Integer]
    #
    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #
    #   @return [String]
    #
    # @!attribute key_name
    #   <p>A searchable identifier of a customer profile. The predefined keys you can use
    #            to search include: _account, _profileId, _assetId, _caseId, _orderId, _fullName, _phone,
    #            _email, _ctrContactId, _marketoLeadId, _salesforceAccountId, _salesforceContactId,
    #            _salesforceAssetId, _zendeskUserId, _zendeskExternalId, _zendeskTicketId,
    #            _serviceNowSystemId, _serviceNowIncidentId, _segmentUserId, _shopifyCustomerId,
    #            _shopifyOrderId.</p>
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>A list of key values.</p>
    #
    #   @return [Array<String>]
    #
    SearchProfilesInput = ::Struct.new(
      :next_token,
      :max_results,
      :domain_name,
      :key_name,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute items
    #   <p>The list of SearchProfiles instances.</p>
    #
    #   @return [Array<Profile>]
    #
    # @!attribute next_token
    #   <p>The pagination token from the previous SearchProfiles API call.</p>
    #
    #   @return [String]
    #
    SearchProfilesOutput = ::Struct.new(
      :items,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ServiceNowConnectorOperator
    #
    module ServiceNowConnectorOperator
      # No documentation available.
      #
      PROJECTION = "PROJECTION"

      # No documentation available.
      #
      CONTAINS = "CONTAINS"

      # No documentation available.
      #
      LESS_THAN = "LESS_THAN"

      # No documentation available.
      #
      GREATER_THAN = "GREATER_THAN"

      # No documentation available.
      #
      BETWEEN = "BETWEEN"

      # No documentation available.
      #
      LESS_THAN_OR_EQUAL_TO = "LESS_THAN_OR_EQUAL_TO"

      # No documentation available.
      #
      GREATER_THAN_OR_EQUAL_TO = "GREATER_THAN_OR_EQUAL_TO"

      # No documentation available.
      #
      EQUAL_TO = "EQUAL_TO"

      # No documentation available.
      #
      NOT_EQUAL_TO = "NOT_EQUAL_TO"

      # No documentation available.
      #
      ADDITION = "ADDITION"

      # No documentation available.
      #
      MULTIPLICATION = "MULTIPLICATION"

      # No documentation available.
      #
      DIVISION = "DIVISION"

      # No documentation available.
      #
      SUBTRACTION = "SUBTRACTION"

      # No documentation available.
      #
      MASK_ALL = "MASK_ALL"

      # No documentation available.
      #
      MASK_FIRST_N = "MASK_FIRST_N"

      # No documentation available.
      #
      MASK_LAST_N = "MASK_LAST_N"

      # No documentation available.
      #
      VALIDATE_NON_NULL = "VALIDATE_NON_NULL"

      # No documentation available.
      #
      VALIDATE_NON_ZERO = "VALIDATE_NON_ZERO"

      # No documentation available.
      #
      VALIDATE_NON_NEGATIVE = "VALIDATE_NON_NEGATIVE"

      # No documentation available.
      #
      VALIDATE_NUMERIC = "VALIDATE_NUMERIC"

      # No documentation available.
      #
      NO_OP = "NO_OP"
    end

    # <p>The properties that are applied when ServiceNow is being used as a source.</p>
    #
    # @!attribute object
    #   <p>The object specified in the ServiceNow flow source.</p>
    #
    #   @return [String]
    #
    ServiceNowSourceProperties = ::Struct.new(
      :object,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the information that is required to query a particular Amazon AppFlow connector.
    #          Customer Profiles supports Salesforce, Zendesk, Marketo, ServiceNow and Amazon S3.</p>
    #
    # @!attribute marketo
    #   <p>The properties that are applied when Marketo is being used as a source.</p>
    #
    #   @return [MarketoSourceProperties]
    #
    # @!attribute s3
    #   <p>The properties that are applied when Amazon S3 is being used as the flow source.</p>
    #
    #   @return [S3SourceProperties]
    #
    # @!attribute salesforce
    #   <p>The properties that are applied when Salesforce is being used as a source.</p>
    #
    #   @return [SalesforceSourceProperties]
    #
    # @!attribute service_now
    #   <p>The properties that are applied when ServiceNow is being used as a source.</p>
    #
    #   @return [ServiceNowSourceProperties]
    #
    # @!attribute zendesk
    #   <p>The properties that are applied when using Zendesk as a flow source.</p>
    #
    #   @return [ZendeskSourceProperties]
    #
    SourceConnectorProperties = ::Struct.new(
      :marketo,
      :s3,
      :salesforce,
      :service_now,
      :zendesk,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SourceConnectorType
    #
    module SourceConnectorType
      # No documentation available.
      #
      SALESFORCE = "Salesforce"

      # No documentation available.
      #
      MARKETO = "Marketo"

      # No documentation available.
      #
      ZENDESK = "Zendesk"

      # No documentation available.
      #
      SERVICENOW = "Servicenow"

      # No documentation available.
      #
      S3 = "S3"
    end

    # <p>Contains information about the configuration of the source connector used in the
    #          flow.</p>
    #
    # @!attribute connector_profile_name
    #   <p>The name of the AppFlow connector profile. This name must be unique for each connector
    #            profile in the AWS account.</p>
    #
    #   @return [String]
    #
    # @!attribute connector_type
    #   <p>The type of connector, such as Salesforce, Marketo, and so on.</p>
    #
    #   Enum, one of: ["Salesforce", "Marketo", "Zendesk", "Servicenow", "S3"]
    #
    #   @return [String]
    #
    # @!attribute incremental_pull_config
    #   <p>Defines the configuration for a scheduled incremental data pull. If a valid
    #            configuration is provided, the fields specified in the configuration are used when querying
    #            for the incremental data pull.</p>
    #
    #   @return [IncrementalPullConfig]
    #
    # @!attribute source_connector_properties
    #   <p>Specifies the information that is required to query a particular source
    #            connector.</p>
    #
    #   @return [SourceConnectorProperties]
    #
    SourceFlowConfig = ::Struct.new(
      :connector_profile_name,
      :connector_type,
      :incremental_pull_config,
      :source_connector_properties,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for StandardIdentifier
    #
    module StandardIdentifier
      # No documentation available.
      #
      PROFILE = "PROFILE"

      # No documentation available.
      #
      ASSET = "ASSET"

      # No documentation available.
      #
      CASE = "CASE"

      # No documentation available.
      #
      UNIQUE = "UNIQUE"

      # No documentation available.
      #
      SECONDARY = "SECONDARY"

      # No documentation available.
      #
      LOOKUP_ONLY = "LOOKUP_ONLY"

      # No documentation available.
      #
      NEW_ONLY = "NEW_ONLY"

      # No documentation available.
      #
      ORDER = "ORDER"
    end

    # Includes enum constants for Status
    #
    module Status
      # No documentation available.
      #
      NOT_STARTED = "NOT_STARTED"

      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"

      # No documentation available.
      #
      COMPLETE = "COMPLETE"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      SPLIT = "SPLIT"

      # No documentation available.
      #
      RETRY = "RETRY"

      # No documentation available.
      #
      CANCELLED = "CANCELLED"
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource that you're adding tags to.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
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

    # <p>A class for modeling different type of tasks. Task implementation varies based on the
    #          TaskType.</p>
    #
    # @!attribute connector_operator
    #   <p>The operation to be performed on the provided source fields.</p>
    #
    #   @return [ConnectorOperator]
    #
    # @!attribute destination_field
    #   <p>A field in a destination connector, or a field value against which Amazon AppFlow validates a
    #            source field.</p>
    #
    #   @return [String]
    #
    # @!attribute source_fields
    #   <p>The source fields to which a particular task is applied.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute task_properties
    #   <p>A map used to store task-related information. The service looks for particular
    #            information based on the TaskType.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute task_type
    #   <p>Specifies the particular task implementation that Amazon AppFlow performs.</p>
    #
    #   Enum, one of: ["Arithmetic", "Filter", "Map", "Mask", "Merge", "Truncate", "Validate"]
    #
    #   @return [String]
    #
    Task = ::Struct.new(
      :connector_operator,
      :destination_field,
      :source_fields,
      :task_properties,
      :task_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TaskType
    #
    module TaskType
      # No documentation available.
      #
      ARITHMETIC = "Arithmetic"

      # No documentation available.
      #
      FILTER = "Filter"

      # No documentation available.
      #
      MAP = "Map"

      # No documentation available.
      #
      MASK = "Mask"

      # No documentation available.
      #
      MERGE = "Merge"

      # No documentation available.
      #
      TRUNCATE = "Truncate"

      # No documentation available.
      #
      VALIDATE = "Validate"
    end

    # <p>You exceeded the maximum number of requests.</p>
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

    # <p>The trigger settings that determine how and when Amazon AppFlow runs the specified
    #          flow.</p>
    #
    # @!attribute trigger_type
    #   <p>Specifies the type of flow trigger. It can be OnDemand, Scheduled, or Event.</p>
    #
    #   Enum, one of: ["Scheduled", "Event", "OnDemand"]
    #
    #   @return [String]
    #
    # @!attribute trigger_properties
    #   <p>Specifies the configuration details of a schedule-triggered flow that you define.
    #            Currently, these settings only apply to the Scheduled trigger type.</p>
    #
    #   @return [TriggerProperties]
    #
    TriggerConfig = ::Struct.new(
      :trigger_type,
      :trigger_properties,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the configuration details that control the trigger for a flow. Currently,
    #          these settings only apply to the Scheduled trigger type.</p>
    #
    # @!attribute scheduled
    #   <p>Specifies the configuration details of a schedule-triggered flow that you define.</p>
    #
    #   @return [ScheduledTriggerProperties]
    #
    TriggerProperties = ::Struct.new(
      :scheduled,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TriggerType
    #
    module TriggerType
      # No documentation available.
      #
      SCHEDULED = "Scheduled"

      # No documentation available.
      #
      EVENT = "Event"

      # No documentation available.
      #
      ONDEMAND = "OnDemand"
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource from which you are removing tags.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>The list of tag keys to remove from the resource.</p>
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

    # <p>Updates associated with the address properties of a customer profile.</p>
    #
    # @!attribute address1
    #   <p>The first line of a customer address.</p>
    #
    #   @return [String]
    #
    # @!attribute address2
    #   <p>The second line of a customer address.</p>
    #
    #   @return [String]
    #
    # @!attribute address3
    #   <p>The third line of a customer address.</p>
    #
    #   @return [String]
    #
    # @!attribute address4
    #   <p>The fourth line of a customer address.</p>
    #
    #   @return [String]
    #
    # @!attribute city
    #   <p>The city in which a customer lives.</p>
    #
    #   @return [String]
    #
    # @!attribute county
    #   <p>The county in which a customer lives.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state in which a customer lives.</p>
    #
    #   @return [String]
    #
    # @!attribute province
    #   <p>The province in which a customer lives.</p>
    #
    #   @return [String]
    #
    # @!attribute country
    #   <p>The country in which a customer lives.</p>
    #
    #   @return [String]
    #
    # @!attribute postal_code
    #   <p>The postal code of a customer address.</p>
    #
    #   @return [String]
    #
    UpdateAddress = ::Struct.new(
      :address1,
      :address2,
      :address3,
      :address4,
      :city,
      :county,
      :state,
      :province,
      :country,
      :postal_code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #
    #   @return [String]
    #
    # @!attribute default_expiration_days
    #   <p>The default number of days until the data within the domain expires.</p>
    #
    #   @return [Integer]
    #
    # @!attribute default_encryption_key
    #   <p>The default encryption key, which is an AWS managed key, is used when no specific type
    #            of encryption key is specified. It is used to encrypt all data before it is placed in
    #            permanent or semi-permanent storage. If specified as an empty string, it will clear any
    #            existing value.</p>
    #
    #   @return [String]
    #
    # @!attribute dead_letter_queue_url
    #   <p>The URL of the SQS dead letter queue, which is used for reporting errors associated with
    #            ingesting data from third party applications. If specified as an empty string, it will
    #            clear any existing value. You must set up a policy on the DeadLetterQueue for the
    #            SendMessage operation to enable Amazon Connect Customer Profiles to send messages to the
    #            DeadLetterQueue.</p>
    #
    #   @return [String]
    #
    # @!attribute matching
    #   <p>The process of matching duplicate profiles. If <code>Matching</code> = <code>true</code>, Amazon Connect Customer Profiles starts a weekly
    #   batch process called Identity Resolution Job. If you do not specify a date and time for Identity Resolution Job to run, by default it runs every
    #   Saturday at 12AM UTC to detect duplicate profiles in your domains. </p>
    #            <p>After the Identity Resolution Job completes, use the
    #   <a href="https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html">GetMatches</a>
    #   API to return and review the results. Or, if you have configured <code>ExportingConfig</code> in the <code>MatchingRequest</code>, you can download the results from
    #   S3.</p>
    #
    #   @return [MatchingRequest]
    #
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    UpdateDomainInput = ::Struct.new(
      :domain_name,
      :default_expiration_days,
      :default_encryption_key,
      :dead_letter_queue_url,
      :matching,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #
    #   @return [String]
    #
    # @!attribute default_expiration_days
    #   <p>The default number of days until the data within the domain expires.</p>
    #
    #   @return [Integer]
    #
    # @!attribute default_encryption_key
    #   <p>The default encryption key, which is an AWS managed key, is used when no specific type
    #            of encryption key is specified. It is used to encrypt all data before it is placed in
    #            permanent or semi-permanent storage.</p>
    #
    #   @return [String]
    #
    # @!attribute dead_letter_queue_url
    #   <p>The URL of the SQS dead letter queue, which is used for reporting errors associated with
    #            ingesting data from third party applications.</p>
    #
    #   @return [String]
    #
    # @!attribute matching
    #   <p>The process of matching duplicate profiles. If <code>Matching</code> = <code>true</code>, Amazon Connect Customer Profiles starts a weekly
    #   batch process called Identity Resolution Job. If you do not specify a date and time for Identity Resolution Job to run, by default it runs every
    #   Saturday at 12AM UTC to detect duplicate profiles in your domains. </p>
    #            <p>After the Identity Resolution Job completes, use the
    #   <a href="https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html">GetMatches</a>
    #   API to return and review the results. Or, if you have configured <code>ExportingConfig</code> in the <code>MatchingRequest</code>, you can download the results from
    #   S3.</p>
    #
    #   @return [MatchingResponse]
    #
    # @!attribute created_at
    #   <p>The timestamp of when the domain was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_at
    #   <p>The timestamp of when the domain was most recently edited.</p>
    #
    #   @return [Time]
    #
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    UpdateDomainOutput = ::Struct.new(
      :domain_name,
      :default_expiration_days,
      :default_encryption_key,
      :dead_letter_queue_url,
      :matching,
      :created_at,
      :last_updated_at,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #
    #   @return [String]
    #
    # @!attribute profile_id
    #   <p>The unique identifier of a customer profile.</p>
    #
    #   @return [String]
    #
    # @!attribute additional_information
    #   <p>Any additional information relevant to the customer’s profile.</p>
    #
    #   @return [String]
    #
    # @!attribute account_number
    #   <p>A unique account number that you have given to the customer.</p>
    #
    #   @return [String]
    #
    # @!attribute party_type
    #   <p>The type of profile used to describe the customer.</p>
    #
    #   Enum, one of: ["INDIVIDUAL", "BUSINESS", "OTHER"]
    #
    #   @return [String]
    #
    # @!attribute business_name
    #   <p>The name of the customer’s business.</p>
    #
    #   @return [String]
    #
    # @!attribute first_name
    #   <p>The customer’s first name.</p>
    #
    #   @return [String]
    #
    # @!attribute middle_name
    #   <p>The customer’s middle name.</p>
    #
    #   @return [String]
    #
    # @!attribute last_name
    #   <p>The customer’s last name.</p>
    #
    #   @return [String]
    #
    # @!attribute birth_date
    #   <p>The customer’s birth date. </p>
    #
    #   @return [String]
    #
    # @!attribute gender
    #   <p>The gender with which the customer identifies. </p>
    #
    #   Enum, one of: ["MALE", "FEMALE", "UNSPECIFIED"]
    #
    #   @return [String]
    #
    # @!attribute phone_number
    #   <p>The customer’s phone number, which has not been specified as a mobile, home, or business
    #            number. </p>
    #
    #   @return [String]
    #
    # @!attribute mobile_phone_number
    #   <p>The customer’s mobile phone number.</p>
    #
    #   @return [String]
    #
    # @!attribute home_phone_number
    #   <p>The customer’s home phone number.</p>
    #
    #   @return [String]
    #
    # @!attribute business_phone_number
    #   <p>The customer’s business phone number.</p>
    #
    #   @return [String]
    #
    # @!attribute email_address
    #   <p>The customer’s email address, which has not been specified as a personal or business
    #            address. </p>
    #
    #   @return [String]
    #
    # @!attribute personal_email_address
    #   <p>The customer’s personal email address.</p>
    #
    #   @return [String]
    #
    # @!attribute business_email_address
    #   <p>The customer’s business email address.</p>
    #
    #   @return [String]
    #
    # @!attribute address
    #   <p>A generic address associated with the customer that is not mailing, shipping, or
    #            billing.</p>
    #
    #   @return [UpdateAddress]
    #
    # @!attribute shipping_address
    #   <p>The customer’s shipping address.</p>
    #
    #   @return [UpdateAddress]
    #
    # @!attribute mailing_address
    #   <p>The customer’s mailing address.</p>
    #
    #   @return [UpdateAddress]
    #
    # @!attribute billing_address
    #   <p>The customer’s billing address.</p>
    #
    #   @return [UpdateAddress]
    #
    # @!attribute attributes
    #   <p>A key value pair of attributes of a customer profile.</p>
    #
    #   @return [Hash<String, String>]
    #
    UpdateProfileInput = ::Struct.new(
      :domain_name,
      :profile_id,
      :additional_information,
      :account_number,
      :party_type,
      :business_name,
      :first_name,
      :middle_name,
      :last_name,
      :birth_date,
      :gender,
      :phone_number,
      :mobile_phone_number,
      :home_phone_number,
      :business_phone_number,
      :email_address,
      :personal_email_address,
      :business_email_address,
      :address,
      :shipping_address,
      :mailing_address,
      :billing_address,
      :attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute profile_id
    #   <p>The unique identifier of a customer profile.</p>
    #
    #   @return [String]
    #
    UpdateProfileOutput = ::Struct.new(
      :profile_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Structure to hold workflow attributes.</p>
    #
    # @!attribute appflow_integration
    #   <p>Workflow attributes specific to <code>APPFLOW_INTEGRATION</code> workflow.</p>
    #
    #   @return [AppflowIntegrationWorkflowAttributes]
    #
    WorkflowAttributes = ::Struct.new(
      :appflow_integration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Generic object containing workflow execution metrics.</p>
    #
    # @!attribute appflow_integration
    #   <p>Workflow execution metrics for <code>APPFLOW_INTEGRATION</code> workflow.</p>
    #
    #   @return [AppflowIntegrationWorkflowMetrics]
    #
    WorkflowMetrics = ::Struct.new(
      :appflow_integration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>List containing steps in workflow.</p>
    #
    # @!attribute appflow_integration
    #   <p>Workflow step information specific to <code>APPFLOW_INTEGRATION</code> workflow.</p>
    #
    #   @return [AppflowIntegrationWorkflowStep]
    #
    WorkflowStepItem = ::Struct.new(
      :appflow_integration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for WorkflowType
    #
    module WorkflowType
      # No documentation available.
      #
      APPFLOW_INTEGRATION = "APPFLOW_INTEGRATION"
    end

    # Includes enum constants for ZendeskConnectorOperator
    #
    module ZendeskConnectorOperator
      # No documentation available.
      #
      PROJECTION = "PROJECTION"

      # No documentation available.
      #
      GREATER_THAN = "GREATER_THAN"

      # No documentation available.
      #
      ADDITION = "ADDITION"

      # No documentation available.
      #
      MULTIPLICATION = "MULTIPLICATION"

      # No documentation available.
      #
      DIVISION = "DIVISION"

      # No documentation available.
      #
      SUBTRACTION = "SUBTRACTION"

      # No documentation available.
      #
      MASK_ALL = "MASK_ALL"

      # No documentation available.
      #
      MASK_FIRST_N = "MASK_FIRST_N"

      # No documentation available.
      #
      MASK_LAST_N = "MASK_LAST_N"

      # No documentation available.
      #
      VALIDATE_NON_NULL = "VALIDATE_NON_NULL"

      # No documentation available.
      #
      VALIDATE_NON_ZERO = "VALIDATE_NON_ZERO"

      # No documentation available.
      #
      VALIDATE_NON_NEGATIVE = "VALIDATE_NON_NEGATIVE"

      # No documentation available.
      #
      VALIDATE_NUMERIC = "VALIDATE_NUMERIC"

      # No documentation available.
      #
      NO_OP = "NO_OP"
    end

    # <p>The properties that are applied when using Zendesk as a flow source.</p>
    #
    # @!attribute object
    #   <p>The object specified in the Zendesk flow source.</p>
    #
    #   @return [String]
    #
    ZendeskSourceProperties = ::Struct.new(
      :object,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
