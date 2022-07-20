# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ElasticsearchService
  module Types

    # <p>Container for the parameters to the <code><a>AcceptInboundCrossClusterSearchConnection</a></code> operation.</p>
    #
    # @!attribute cross_cluster_search_connection_id
    #   <p>The id of the inbound connection that you want to accept.</p>
    #
    #   @return [String]
    #
    AcceptInboundCrossClusterSearchConnectionInput = ::Struct.new(
      :cross_cluster_search_connection_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The result of a <code><a>AcceptInboundCrossClusterSearchConnection</a></code> operation. Contains details of accepted inbound connection.</p>
    #
    # @!attribute cross_cluster_search_connection
    #   <p>Specifies the <code><a>InboundCrossClusterSearchConnection</a></code> of accepted inbound connection. </p>
    #
    #   @return [InboundCrossClusterSearchConnection]
    #
    AcceptInboundCrossClusterSearchConnectionOutput = ::Struct.new(
      :cross_cluster_search_connection,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An error occurred because user does not have permissions to access the resource. Returns HTTP status code 403.</p>
    #
    # @!attribute message
    #   <p>A description of the error.</p>
    #
    #   @return [String]
    #
    AccessDeniedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The configured access rules for the domain's document and search endpoints, and the current status of those rules.</p>
    #
    # @!attribute options
    #   <p>The access policy configured for the Elasticsearch domain.  Access policies may be resource-based, IP-based, or IAM-based.  See <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html es-createdomain-configure-access-policies" target="_blank">
    #              Configuring Access Policies</a>for more information.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the access policy for the Elasticsearch domain. See <code>OptionStatus</code> for the status information that's included. </p>
    #
    #   @return [OptionStatus]
    #
    AccessPoliciesStatus = ::Struct.new(
      :options,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Container for the parameters to the <code><a>AddTags</a></code> operation. Specify the tags that you want to attach to the Elasticsearch domain.</p>
    #
    # @!attribute arn
    #   <p> Specify the <code>ARN</code> for which you want to add the tags.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_list
    #   <p> List of <code>Tag</code> that need to be added for the Elasticsearch domain. </p>
    #
    #   @return [Array<Tag>]
    #
    AddTagsInput = ::Struct.new(
      :arn,
      :tag_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AddTagsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #       List of limits that are specific to a given InstanceType and for each of it's
    #       <code>
    #         <a>InstanceRole</a>
    #       </code>
    #       .
    #     </p>
    #
    # @!attribute limit_name
    #   <p>
    #         Name of Additional Limit is specific to a given InstanceType and for each of it's
    #         <code>
    #           <a>InstanceRole</a>
    #         </code>
    #         etc.
    #         <br></br>
    #         Attributes and their details:
    #         <br></br>
    #         <ul>
    #           <li>MaximumNumberOfDataNodesSupported</li>
    #           This attribute will be present in Master node only to specify how
    #           much data nodes upto which given
    #           <code>
    #             <a>ESPartitionInstanceType</a>
    #           </code>
    #           can support as master node.
    #           <li>MaximumNumberOfDataNodesWithoutMasterNode</li>
    #           This attribute will be present in Data node only to specify how much
    #           data nodes of given
    #           <code>
    #             <a>ESPartitionInstanceType</a>
    #           </code>
    #           upto which you don't need any master nodes to govern them.
    #         </ul>
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute limit_values
    #   <p>
    #       Value for given
    #       <code>
    #         <a>AdditionalLimit$LimitName</a>
    #       </code>
    #       .
    #     </p>
    #
    #   @return [Array<String>]
    #
    AdditionalLimit = ::Struct.new(
      :limit_name,
      :limit_values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Status of the advanced options for the specified Elasticsearch domain. Currently, the following advanced options are available:</p>
    #        <ul>
    #            <li>Option to allow references to indices in an HTTP request body.  Must be <code>false</code> when configuring access to individual sub-resources.  By default, the value is <code>true</code>.
    #                See <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-advanced-options" target="_blank">Configuration Advanced Options</a> for more information.</li>
    #            <li>Option to specify the percentage of heap space that is allocated to field data. By default, this setting is unbounded.</li>
    #        </ul>
    #        <p>For more information, see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-advanced-options">Configuring Advanced Options</a>.</p>
    #
    # @!attribute options
    #   <p> Specifies the status of advanced options for the specified Elasticsearch domain.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute status
    #   <p> Specifies the status of <code>OptionStatus</code> for advanced options for the specified Elasticsearch domain.</p>
    #
    #   @return [OptionStatus]
    #
    AdvancedOptionsStatus = ::Struct.new(
      :options,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the advanced security configuration: whether advanced security is enabled, whether the internal database option is enabled.</p>
    #
    # @!attribute enabled
    #   <p>True if advanced security is enabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute internal_user_database_enabled
    #   <p>True if the internal user database is enabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute saml_options
    #   <p>Describes the SAML application configured for a domain.</p>
    #
    #   @return [SAMLOptionsOutput]
    #
    # @!attribute anonymous_auth_disable_date
    #   <p>Specifies the Anonymous Auth Disable Date when Anonymous Auth is enabled.</p>
    #
    #   @return [Time]
    #
    # @!attribute anonymous_auth_enabled
    #   <p>True if Anonymous auth is enabled. Anonymous auth can be enabled only when AdvancedSecurity is enabled on existing domains.</p>
    #
    #   @return [Boolean]
    #
    AdvancedSecurityOptions = ::Struct.new(
      :enabled,
      :internal_user_database_enabled,
      :saml_options,
      :anonymous_auth_disable_date,
      :anonymous_auth_enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the advanced security configuration: whether advanced security is enabled, whether the internal database option is enabled, master username and password (if internal database is enabled), and master user ARN (if IAM is enabled).</p>
    #
    # @!attribute enabled
    #   <p>True if advanced security is enabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute internal_user_database_enabled
    #   <p>True if the internal user database is enabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute master_user_options
    #   <p>Credentials for the master user: username and password, ARN, or both.</p>
    #
    #   @return [MasterUserOptions]
    #
    # @!attribute saml_options
    #   <p>Specifies the SAML application configuration for the domain.</p>
    #
    #   @return [SAMLOptionsInput]
    #
    # @!attribute anonymous_auth_enabled
    #   <p>True if Anonymous auth is enabled. Anonymous auth can be enabled only when AdvancedSecurity is enabled on existing domains.</p>
    #
    #   @return [Boolean]
    #
    AdvancedSecurityOptionsInput = ::Struct.new(
      :enabled,
      :internal_user_database_enabled,
      :master_user_options,
      :saml_options,
      :anonymous_auth_enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Specifies the status of advanced security options for the specified Elasticsearch domain.</p>
    #
    # @!attribute options
    #   <p> Specifies advanced security options for the specified Elasticsearch domain.</p>
    #
    #   @return [AdvancedSecurityOptions]
    #
    # @!attribute status
    #   <p> Status of the advanced security options for the specified Elasticsearch domain.</p>
    #
    #   @return [OptionStatus]
    #
    AdvancedSecurityOptionsStatus = ::Struct.new(
      :options,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #       Container for request parameters to
    #       <code>
    #         <a>AssociatePackage</a>
    #       </code>
    #       operation.
    #     </p>
    #
    # @!attribute package_id
    #   <p>Internal ID of the package that you want to associate with a domain. Use <code>DescribePackages</code> to find this value.</p>
    #
    #   @return [String]
    #
    # @!attribute domain_name
    #   <p>Name of the domain that you want to associate the package with.</p>
    #
    #   @return [String]
    #
    AssociatePackageInput = ::Struct.new(
      :package_id,
      :domain_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #       Container for response returned by
    #       <code>
    #         <a>AssociatePackage</a>
    #       </code>
    #       operation.
    #     </p>
    #
    # @!attribute domain_package_details
    #   <p><code>DomainPackageDetails</code></p>
    #
    #   @return [DomainPackageDetails]
    #
    AssociatePackageOutput = ::Struct.new(
      :domain_package_details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies Auto-Tune type and Auto-Tune action details. </p>
    #
    # @!attribute auto_tune_type
    #   <p>Specifies Auto-Tune type. Valid value is SCHEDULED_ACTION. </p>
    #
    #   Enum, one of: ["SCHEDULED_ACTION"]
    #
    #   @return [String]
    #
    # @!attribute auto_tune_details
    #   <p>Specifies details of the Auto-Tune action. See the <a href="https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html" target="_blank">Developer Guide</a> for more information. </p>
    #
    #   @return [AutoTuneDetails]
    #
    AutoTune = ::Struct.new(
      :auto_tune_type,
      :auto_tune_details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AutoTuneDesiredState
    #
    module AutoTuneDesiredState
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # <p>Specifies details of the Auto-Tune action. See the <a href="https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html" target="_blank">Developer Guide</a> for more information. </p>
    #
    # @!attribute scheduled_auto_tune_details
    #   <p>Specifies details of the scheduled Auto-Tune action. See the <a href="https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html" target="_blank">Developer Guide</a> for more information. </p>
    #
    #   @return [ScheduledAutoTuneDetails]
    #
    AutoTuneDetails = ::Struct.new(
      :scheduled_auto_tune_details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies Auto-Tune maitenance schedule. See the <a href="https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html" target="_blank">Developer Guide</a> for more information.</p>
    #
    # @!attribute start_at
    #   <p>Specifies timestamp at which Auto-Tune maintenance schedule start. </p>
    #
    #   @return [Time]
    #
    # @!attribute duration
    #   <p>Specifies maintenance schedule duration: duration value and duration unit. See the <a href="https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html" target="_blank">Developer Guide</a> for more information.</p>
    #
    #   @return [Duration]
    #
    # @!attribute cron_expression_for_recurrence
    #   <p>Specifies cron expression for a recurring maintenance schedule. See the <a href="https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html" target="_blank">Developer Guide</a> for more information.</p>
    #
    #   @return [String]
    #
    AutoTuneMaintenanceSchedule = ::Struct.new(
      :start_at,
      :duration,
      :cron_expression_for_recurrence,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the Auto-Tune options: the Auto-Tune desired state for the domain, rollback state when disabling Auto-Tune options and list of maintenance schedules.</p>
    #
    # @!attribute desired_state
    #   <p>Specifies the Auto-Tune desired state. Valid values are ENABLED, DISABLED. </p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute rollback_on_disable
    #   <p>Specifies the rollback state while disabling Auto-Tune for the domain. Valid values are NO_ROLLBACK, DEFAULT_ROLLBACK. </p>
    #
    #   Enum, one of: ["NO_ROLLBACK", "DEFAULT_ROLLBACK"]
    #
    #   @return [String]
    #
    # @!attribute maintenance_schedules
    #   <p>Specifies list of maitenance schedules. See the <a href="https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html" target="_blank">Developer Guide</a> for more information.</p>
    #
    #   @return [Array<AutoTuneMaintenanceSchedule>]
    #
    AutoTuneOptions = ::Struct.new(
      :desired_state,
      :rollback_on_disable,
      :maintenance_schedules,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the Auto-Tune options: the Auto-Tune desired state for the domain and list of maintenance schedules.</p>
    #
    # @!attribute desired_state
    #   <p>Specifies the Auto-Tune desired state. Valid values are ENABLED, DISABLED. </p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute maintenance_schedules
    #   <p>Specifies list of maitenance schedules. See the <a href="https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html" target="_blank">Developer Guide</a> for more information.</p>
    #
    #   @return [Array<AutoTuneMaintenanceSchedule>]
    #
    AutoTuneOptionsInput = ::Struct.new(
      :desired_state,
      :maintenance_schedules,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the Auto-Tune options: the Auto-Tune desired state for the domain and list of maintenance schedules.</p>
    #
    # @!attribute state
    #   <p>Specifies the <code>AutoTuneState</code> for the Elasticsearch domain.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED", "ENABLE_IN_PROGRESS", "DISABLE_IN_PROGRESS", "DISABLED_AND_ROLLBACK_SCHEDULED", "DISABLED_AND_ROLLBACK_IN_PROGRESS", "DISABLED_AND_ROLLBACK_COMPLETE", "DISABLED_AND_ROLLBACK_ERROR", "ERROR"]
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>Specifies the error message while enabling or disabling the Auto-Tune.</p>
    #
    #   @return [String]
    #
    AutoTuneOptionsOutput = ::Struct.new(
      :state,
      :error_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Specifies the status of Auto-Tune options for the specified Elasticsearch domain.</p>
    #
    # @!attribute options
    #   <p> Specifies Auto-Tune options for the specified Elasticsearch domain.</p>
    #
    #   @return [AutoTuneOptions]
    #
    # @!attribute status
    #   <p> Specifies Status of the Auto-Tune options for the specified Elasticsearch domain.</p>
    #
    #   @return [AutoTuneStatus]
    #
    AutoTuneOptionsStatus = ::Struct.new(
      :options,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AutoTuneState
    #
    module AutoTuneState
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      ENABLE_IN_PROGRESS = "ENABLE_IN_PROGRESS"

      # No documentation available.
      #
      DISABLE_IN_PROGRESS = "DISABLE_IN_PROGRESS"

      # No documentation available.
      #
      DISABLED_AND_ROLLBACK_SCHEDULED = "DISABLED_AND_ROLLBACK_SCHEDULED"

      # No documentation available.
      #
      DISABLED_AND_ROLLBACK_IN_PROGRESS = "DISABLED_AND_ROLLBACK_IN_PROGRESS"

      # No documentation available.
      #
      DISABLED_AND_ROLLBACK_COMPLETE = "DISABLED_AND_ROLLBACK_COMPLETE"

      # No documentation available.
      #
      DISABLED_AND_ROLLBACK_ERROR = "DISABLED_AND_ROLLBACK_ERROR"

      # No documentation available.
      #
      ERROR = "ERROR"
    end

    # <p>Provides the current status of the Auto-Tune options. </p>
    #
    # @!attribute creation_date
    #   <p>Timestamp which tells Auto-Tune options creation date .</p>
    #
    #   @return [Time]
    #
    # @!attribute update_date
    #   <p>Timestamp which tells Auto-Tune options last updated time.</p>
    #
    #   @return [Time]
    #
    # @!attribute update_version
    #   <p>Specifies the Auto-Tune options latest version.</p>
    #
    #   @return [Integer]
    #
    # @!attribute state
    #   <p>Specifies the <code>AutoTuneState</code> for the Elasticsearch domain.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED", "ENABLE_IN_PROGRESS", "DISABLE_IN_PROGRESS", "DISABLED_AND_ROLLBACK_SCHEDULED", "DISABLED_AND_ROLLBACK_IN_PROGRESS", "DISABLED_AND_ROLLBACK_COMPLETE", "DISABLED_AND_ROLLBACK_ERROR", "ERROR"]
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>Specifies the error message while enabling or disabling the Auto-Tune options.</p>
    #
    #   @return [String]
    #
    # @!attribute pending_deletion
    #   <p>Indicates whether the Elasticsearch domain is being deleted.</p>
    #
    #   @return [Boolean]
    #
    AutoTuneStatus = ::Struct.new(
      :creation_date,
      :update_date,
      :update_version,
      :state,
      :error_message,
      :pending_deletion,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.update_version ||= 0
      end
    end

    # Includes enum constants for AutoTuneType
    #
    module AutoTuneType
      # No documentation available.
      #
      SCHEDULED_ACTION = "SCHEDULED_ACTION"
    end

    # <p>An error occurred while processing the request.</p>
    #
    # @!attribute message
    #   <p>A description of the error.</p>
    #
    #   @return [String]
    #
    BaseException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Container for the parameters to the <code><a>CancelElasticsearchServiceSoftwareUpdate</a></code> operation. Specifies the name of the Elasticsearch domain that you wish to cancel a service software update on.</p>
    #
    # @!attribute domain_name
    #   <p>The name of the domain that you want to stop the latest service software update on.</p>
    #
    #   @return [String]
    #
    CancelElasticsearchServiceSoftwareUpdateInput = ::Struct.new(
      :domain_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The result of a <code>CancelElasticsearchServiceSoftwareUpdate</code> operation. Contains the status of the update.</p>
    #
    # @!attribute service_software_options
    #   <p>The current status of the Elasticsearch service software update.</p>
    #
    #   @return [ServiceSoftwareOptions]
    #
    CancelElasticsearchServiceSoftwareUpdateOutput = ::Struct.new(
      :service_software_options,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies change details of the domain configuration change.</p>
    #
    # @!attribute change_id
    #   <p>The unique change identifier associated with a specific domain configuration change.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>Contains an optional message associated with the domain configuration change.</p>
    #
    #   @return [String]
    #
    ChangeProgressDetails = ::Struct.new(
      :change_id,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A progress stage details of a specific domain configuration change.</p>
    #
    # @!attribute name
    #   <p>The name of the specific progress stage.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The overall status of a specific progress stage.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the progress stage.</p>
    #
    #   @return [String]
    #
    # @!attribute last_updated
    #   <p>The last updated timestamp of the progress stage.</p>
    #
    #   @return [Time]
    #
    ChangeProgressStage = ::Struct.new(
      :name,
      :status,
      :description,
      :last_updated,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The progress details of a specific domain configuration change.</p>
    #
    # @!attribute change_id
    #   <p>The unique change identifier associated with a specific domain configuration change.</p>
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The time at which the configuration change is made on the domain.</p>
    #
    #   @return [Time]
    #
    # @!attribute status
    #   <p>The overall status of the domain configuration change. This field can take the following values: <code>PENDING</code>, <code>PROCESSING</code>, <code>COMPLETED</code> and <code>FAILED</code></p>
    #
    #   Enum, one of: ["PENDING", "PROCESSING", "COMPLETED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute pending_properties
    #   <p>The list of properties involved in the domain configuration change that are still in pending.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute completed_properties
    #   <p>The list of properties involved in the domain configuration change that are completed.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute total_number_of_stages
    #   <p>The total number of stages required for the configuration change.</p>
    #
    #   @return [Integer]
    #
    # @!attribute change_progress_stages
    #   <p>The specific stages that the domain is going through to perform the configuration change.</p>
    #
    #   @return [Array<ChangeProgressStage>]
    #
    ChangeProgressStatusDetails = ::Struct.new(
      :change_id,
      :start_time,
      :status,
      :pending_properties,
      :completed_properties,
      :total_number_of_stages,
      :change_progress_stages,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.total_number_of_stages ||= 0
      end
    end

    # <p>Options to specify the Cognito user and identity pools for Kibana authentication. For more information, see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-cognito-auth.html" target="_blank">Amazon Cognito Authentication for Kibana</a>.</p>
    #
    # @!attribute enabled
    #   <p>Specifies the option to enable Cognito for Kibana authentication.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute user_pool_id
    #   <p>Specifies the Cognito user pool ID for Kibana authentication.</p>
    #
    #   @return [String]
    #
    # @!attribute identity_pool_id
    #   <p>Specifies the Cognito identity pool ID for Kibana authentication.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>Specifies the role ARN that provides Elasticsearch permissions for accessing Cognito resources.</p>
    #
    #   @return [String]
    #
    CognitoOptions = ::Struct.new(
      :enabled,
      :user_pool_id,
      :identity_pool_id,
      :role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Status of the Cognito options for the specified Elasticsearch domain.</p>
    #
    # @!attribute options
    #   <p>Specifies the Cognito options for the specified Elasticsearch domain.</p>
    #
    #   @return [CognitoOptions]
    #
    # @!attribute status
    #   <p>Specifies the status of the Cognito options for the specified Elasticsearch domain.</p>
    #
    #   @return [OptionStatus]
    #
    CognitoOptionsStatus = ::Struct.new(
      :options,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the configuration for cold storage options such as enabled</p>
    #
    # @!attribute enabled
    #   <p>Enable cold storage option. Accepted values true or false</p>
    #
    #   @return [Boolean]
    #
    ColdStorageOptions = ::Struct.new(
      :enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #       A map from an
    #       <code>
    #         <a>ElasticsearchVersion</a>
    #       </code>
    #       to a list of compatible
    #       <code>
    #         <a>ElasticsearchVersion</a>
    #       </code>
    #       s to which the domain can be upgraded.
    #     </p>
    #
    # @!attribute source_version
    #   <p>The current version of Elasticsearch on which a domain is.</p>
    #
    #   @return [String]
    #
    # @!attribute target_versions
    #   <p>List of supported elastic search versions.
    #       </p>
    #
    #   @return [Array<String>]
    #
    CompatibleVersionsMap = ::Struct.new(
      :source_version,
      :target_versions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An error occurred because the client attempts to remove a resource that is currently in use. Returns HTTP status code 409.</p>
    #
    # @!attribute message
    #   <p>A description of the error.</p>
    #
    #   @return [String]
    #
    ConflictException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain_name
    #   <p>The name of the Elasticsearch domain that you are creating. Domain names are unique across the domains owned by an account within an AWS region. Domain names must start with a lowercase letter and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
    #
    #   @return [String]
    #
    # @!attribute elasticsearch_version
    #   <p>String of format X.Y to specify version for the Elasticsearch domain eg. "1.5" or "2.3". For more information,
    #             see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html es-createdomains" target="_blank">Creating Elasticsearch Domains</a> in the <i>Amazon Elasticsearch Service Developer Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute elasticsearch_cluster_config
    #   <p>Configuration options for an Elasticsearch domain. Specifies the instance type and number of instances in the domain cluster. </p>
    #
    #   @return [ElasticsearchClusterConfig]
    #
    # @!attribute ebs_options
    #   <p>Options to enable, disable and specify the type and size of EBS storage volumes. </p>
    #
    #   @return [EBSOptions]
    #
    # @!attribute access_policies
    #   <p> IAM access policy as a JSON-formatted string.</p>
    #
    #   @return [String]
    #
    # @!attribute snapshot_options
    #   <p>Option to set time, in UTC format, of the daily automated snapshot. Default value is 0 hours. </p>
    #
    #   @return [SnapshotOptions]
    #
    # @!attribute vpc_options
    #   <p>Options to specify the subnets and security groups for VPC endpoint. For more information, see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html es-creating-vpc" target="_blank">Creating a VPC</a> in <i>VPC Endpoints for Amazon Elasticsearch Service Domains</i></p>
    #
    #   @return [VPCOptions]
    #
    # @!attribute cognito_options
    #   <p>Options to specify the Cognito user and identity pools for Kibana authentication. For more information, see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-cognito-auth.html" target="_blank">Amazon Cognito Authentication for Kibana</a>.</p>
    #
    #   @return [CognitoOptions]
    #
    # @!attribute encryption_at_rest_options
    #   <p>Specifies the Encryption At Rest Options.</p>
    #
    #   @return [EncryptionAtRestOptions]
    #
    # @!attribute node_to_node_encryption_options
    #   <p>Specifies the NodeToNodeEncryptionOptions.</p>
    #
    #   @return [NodeToNodeEncryptionOptions]
    #
    # @!attribute advanced_options
    #   <p> Option to allow references to indices in an HTTP request body.  Must be <code>false</code> when configuring access to individual sub-resources.  By default, the value is <code>true</code>.
    #             See <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html es-createdomain-configure-advanced-options" target="_blank">Configuration Advanced Options</a> for more information.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute log_publishing_options
    #   <p>Map of <code>LogType</code> and <code>LogPublishingOption</code>, each containing options to publish a given type of Elasticsearch log.</p>
    #
    #   @return [Hash<String, LogPublishingOption>]
    #
    # @!attribute domain_endpoint_options
    #   <p>Options to specify configuration that will be applied to the domain endpoint.</p>
    #
    #   @return [DomainEndpointOptions]
    #
    # @!attribute advanced_security_options
    #   <p>Specifies advanced security options.</p>
    #
    #   @return [AdvancedSecurityOptionsInput]
    #
    # @!attribute auto_tune_options
    #   <p>Specifies Auto-Tune options.</p>
    #
    #   @return [AutoTuneOptionsInput]
    #
    # @!attribute tag_list
    #   <p>A list of <code>Tag</code> added during domain creation.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateElasticsearchDomainInput = ::Struct.new(
      :domain_name,
      :elasticsearch_version,
      :elasticsearch_cluster_config,
      :ebs_options,
      :access_policies,
      :snapshot_options,
      :vpc_options,
      :cognito_options,
      :encryption_at_rest_options,
      :node_to_node_encryption_options,
      :advanced_options,
      :log_publishing_options,
      :domain_endpoint_options,
      :advanced_security_options,
      :auto_tune_options,
      :tag_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The result of a <code>CreateElasticsearchDomain</code> operation. Contains the status of the newly created Elasticsearch domain.</p>
    #
    # @!attribute domain_status
    #   <p>The status of the newly created Elasticsearch domain. </p>
    #
    #   @return [ElasticsearchDomainStatus]
    #
    CreateElasticsearchDomainOutput = ::Struct.new(
      :domain_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Container for the parameters to the <code><a>CreateOutboundCrossClusterSearchConnection</a></code> operation.</p>
    #
    # @!attribute source_domain_info
    #   <p>Specifies the <code><a>DomainInformation</a></code> for the source Elasticsearch domain.</p>
    #
    #   @return [DomainInformation]
    #
    # @!attribute destination_domain_info
    #   <p>Specifies the <code><a>DomainInformation</a></code> for the destination Elasticsearch domain.</p>
    #
    #   @return [DomainInformation]
    #
    # @!attribute connection_alias
    #   <p>Specifies the connection alias that will be used by the customer for this connection.</p>
    #
    #   @return [String]
    #
    CreateOutboundCrossClusterSearchConnectionInput = ::Struct.new(
      :source_domain_info,
      :destination_domain_info,
      :connection_alias,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The result of a <code><a>CreateOutboundCrossClusterSearchConnection</a></code> request. Contains the details of the newly created cross-cluster search connection.</p>
    #
    # @!attribute source_domain_info
    #   <p>Specifies the <code><a>DomainInformation</a></code> for the source Elasticsearch domain.</p>
    #
    #   @return [DomainInformation]
    #
    # @!attribute destination_domain_info
    #   <p>Specifies the <code><a>DomainInformation</a></code> for the destination Elasticsearch domain.</p>
    #
    #   @return [DomainInformation]
    #
    # @!attribute connection_alias
    #   <p>Specifies the connection alias provided during the create connection request.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_status
    #   <p>Specifies the <code><a>OutboundCrossClusterSearchConnectionStatus</a></code> for the newly created connection.</p>
    #
    #   @return [OutboundCrossClusterSearchConnectionStatus]
    #
    # @!attribute cross_cluster_search_connection_id
    #   <p>Unique id for the created outbound connection, which is used for subsequent operations on connection.</p>
    #
    #   @return [String]
    #
    CreateOutboundCrossClusterSearchConnectionOutput = ::Struct.new(
      :source_domain_info,
      :destination_domain_info,
      :connection_alias,
      :connection_status,
      :cross_cluster_search_connection_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #       Container for request parameters to
    #       <code>
    #         <a>CreatePackage</a>
    #       </code>
    #       operation.
    #     </p>
    #
    # @!attribute package_name
    #   <p>Unique identifier for the package.</p>
    #
    #   @return [String]
    #
    # @!attribute package_type
    #   <p>Type of package. Currently supports only TXT-DICTIONARY.</p>
    #
    #   Enum, one of: ["TXT-DICTIONARY"]
    #
    #   @return [String]
    #
    # @!attribute package_description
    #   <p>Description of the package.</p>
    #
    #   @return [String]
    #
    # @!attribute package_source
    #   <p>The customer S3 location <code>PackageSource</code> for importing the package.</p>
    #
    #   @return [PackageSource]
    #
    CreatePackageInput = ::Struct.new(
      :package_name,
      :package_type,
      :package_description,
      :package_source,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #       Container for response returned by
    #       <code>
    #         <a>CreatePackage</a>
    #       </code>
    #       operation.
    #     </p>
    #
    # @!attribute package_details
    #   <p>Information about the package <code>PackageDetails</code>.</p>
    #
    #   @return [PackageDetails]
    #
    CreatePackageOutput = ::Struct.new(
      :package_details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Container for the parameters to the <code><a>DeleteElasticsearchDomain</a></code> operation. Specifies the name of the Elasticsearch domain that you want to delete.</p>
    #
    # @!attribute domain_name
    #   <p>The name of the Elasticsearch domain that you want to permanently delete.</p>
    #
    #   @return [String]
    #
    DeleteElasticsearchDomainInput = ::Struct.new(
      :domain_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The result of a <code>DeleteElasticsearchDomain</code> request. Contains the status of the pending deletion, or no status if the domain and all of its resources have been deleted.</p>
    #
    # @!attribute domain_status
    #   <p>The status of the Elasticsearch domain being deleted.</p>
    #
    #   @return [ElasticsearchDomainStatus]
    #
    DeleteElasticsearchDomainOutput = ::Struct.new(
      :domain_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteElasticsearchServiceRoleInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteElasticsearchServiceRoleOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Container for the parameters to the <code><a>DeleteInboundCrossClusterSearchConnection</a></code> operation.</p>
    #
    # @!attribute cross_cluster_search_connection_id
    #   <p>The id of the inbound connection that you want to permanently delete.</p>
    #
    #   @return [String]
    #
    DeleteInboundCrossClusterSearchConnectionInput = ::Struct.new(
      :cross_cluster_search_connection_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The result of a <code><a>DeleteInboundCrossClusterSearchConnection</a></code> operation. Contains details of deleted inbound connection.</p>
    #
    # @!attribute cross_cluster_search_connection
    #   <p>Specifies the <code><a>InboundCrossClusterSearchConnection</a></code> of deleted inbound connection. </p>
    #
    #   @return [InboundCrossClusterSearchConnection]
    #
    DeleteInboundCrossClusterSearchConnectionOutput = ::Struct.new(
      :cross_cluster_search_connection,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Container for the parameters to the <code><a>DeleteOutboundCrossClusterSearchConnection</a></code> operation.</p>
    #
    # @!attribute cross_cluster_search_connection_id
    #   <p>The id of the outbound connection that you want to permanently delete.</p>
    #
    #   @return [String]
    #
    DeleteOutboundCrossClusterSearchConnectionInput = ::Struct.new(
      :cross_cluster_search_connection_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The result of a <code><a>DeleteOutboundCrossClusterSearchConnection</a></code> operation. Contains details of deleted outbound connection.</p>
    #
    # @!attribute cross_cluster_search_connection
    #   <p>Specifies the <code><a>OutboundCrossClusterSearchConnection</a></code> of deleted outbound connection. </p>
    #
    #   @return [OutboundCrossClusterSearchConnection]
    #
    DeleteOutboundCrossClusterSearchConnectionOutput = ::Struct.new(
      :cross_cluster_search_connection,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #       Container for request parameters to
    #       <code>
    #         <a>DeletePackage</a>
    #       </code>
    #       operation.
    #     </p>
    #
    # @!attribute package_id
    #   <p>Internal ID of the package that you want to delete. Use <code>DescribePackages</code> to find this value.</p>
    #
    #   @return [String]
    #
    DeletePackageInput = ::Struct.new(
      :package_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #       Container for response parameters to
    #       <code>
    #         <a>DeletePackage</a>
    #       </code>
    #       operation.
    #     </p>
    #
    # @!attribute package_details
    #   <p><code>PackageDetails</code></p>
    #
    #   @return [PackageDetails]
    #
    DeletePackageOutput = ::Struct.new(
      :package_details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DeploymentStatus
    #
    module DeploymentStatus
      # No documentation available.
      #
      PENDING_UPDATE = "PENDING_UPDATE"

      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"

      # No documentation available.
      #
      COMPLETED = "COMPLETED"

      # No documentation available.
      #
      NOT_ELIGIBLE = "NOT_ELIGIBLE"

      # No documentation available.
      #
      ELIGIBLE = "ELIGIBLE"
    end

    # <p>Container for the parameters to the <code>DescribeDomainAutoTunes</code> operation.</p>
    #
    # @!attribute domain_name
    #   <p>Specifies the domain name for which you want Auto-Tune action details.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Set this value to limit the number of results returned. If not specified, defaults to 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>NextToken is sent in case the earlier API call results contain the NextToken. It is used for pagination.</p>
    #
    #   @return [String]
    #
    DescribeDomainAutoTunesInput = ::Struct.new(
      :domain_name,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # <p>The result of <code>DescribeDomainAutoTunes</code> request. See the <a href="https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html" target="_blank">Developer Guide</a> for more information. </p>
    #
    # @!attribute auto_tunes
    #   <p>Specifies the list of setting adjustments that Auto-Tune has made to the domain. See the <a href="https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html" target="_blank">Developer Guide</a> for more information.</p>
    #
    #   @return [Array<AutoTune>]
    #
    # @!attribute next_token
    #   <p>Specifies an identifier to allow retrieval of paginated results.</p>
    #
    #   @return [String]
    #
    DescribeDomainAutoTunesOutput = ::Struct.new(
      :auto_tunes,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Container for the parameters to the <code>DescribeDomainChangeProgress</code> operation. Specifies the
    #         domain name and optional change specific identity for which you want progress information.
    #       </p>
    #
    # @!attribute domain_name
    #   <p>The domain you want to get the progress information about.</p>
    #
    #   @return [String]
    #
    # @!attribute change_id
    #   <p>The specific change ID for which you want to get progress information. This is an optional parameter.
    #           If omitted, the service returns information about the most recent configuration change.
    #         </p>
    #
    #   @return [String]
    #
    DescribeDomainChangeProgressInput = ::Struct.new(
      :domain_name,
      :change_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The result of a <code>DescribeDomainChangeProgress</code> request. Contains the progress information of
    #         the requested domain change.
    #       </p>
    #
    # @!attribute change_progress_status
    #   <p>Progress information for the configuration change that is requested in the <code>DescribeDomainChangeProgress</code> request.
    #         </p>
    #
    #   @return [ChangeProgressStatusDetails]
    #
    DescribeDomainChangeProgressOutput = ::Struct.new(
      :change_progress_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Container for the parameters to the <code>DescribeElasticsearchDomainConfig</code> operation. Specifies the domain name for which you want configuration information.</p>
    #
    # @!attribute domain_name
    #   <p>The Elasticsearch domain that you want to get information about.</p>
    #
    #   @return [String]
    #
    DescribeElasticsearchDomainConfigInput = ::Struct.new(
      :domain_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The result of a <code>DescribeElasticsearchDomainConfig</code> request. Contains the configuration information of the requested domain.</p>
    #
    # @!attribute domain_config
    #   <p>The configuration information of the domain requested in the <code>DescribeElasticsearchDomainConfig</code> request.</p>
    #
    #   @return [ElasticsearchDomainConfig]
    #
    DescribeElasticsearchDomainConfigOutput = ::Struct.new(
      :domain_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Container for the parameters to the <code><a>DescribeElasticsearchDomain</a></code> operation.</p>
    #
    # @!attribute domain_name
    #   <p>The name of the Elasticsearch domain for which you want information.</p>
    #
    #   @return [String]
    #
    DescribeElasticsearchDomainInput = ::Struct.new(
      :domain_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The result of a <code>DescribeElasticsearchDomain</code> request. Contains the status of the domain specified in the request.</p>
    #
    # @!attribute domain_status
    #   <p>The current status of the Elasticsearch domain.</p>
    #
    #   @return [ElasticsearchDomainStatus]
    #
    DescribeElasticsearchDomainOutput = ::Struct.new(
      :domain_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Container for the parameters to the <code><a>DescribeElasticsearchDomains</a></code> operation. By default, the API returns the status of all Elasticsearch domains.</p>
    #
    # @!attribute domain_names
    #   <p>The Elasticsearch domains for which you want information.</p>
    #
    #   @return [Array<String>]
    #
    DescribeElasticsearchDomainsInput = ::Struct.new(
      :domain_names,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The result of a <code>DescribeElasticsearchDomains</code> request. Contains the status of the specified domains or all domains owned by the account.</p>
    #
    # @!attribute domain_status_list
    #   <p>The status of the domains requested in the <code>DescribeElasticsearchDomains</code> request.</p>
    #
    #   @return [Array<ElasticsearchDomainStatus>]
    #
    DescribeElasticsearchDomainsOutput = ::Struct.new(
      :domain_status_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #       Container for the parameters to
    #       <code>
    #         <a>DescribeElasticsearchInstanceTypeLimits</a>
    #       </code>
    #       operation.
    #     </p>
    #
    # @!attribute domain_name
    #   <p>
    #         DomainName represents the name of the Domain that we are trying to
    #         modify. This should be present only if we are
    #         querying for Elasticsearch
    #         <code>
    #           <a>Limits</a>
    #         </code>
    #         for existing domain.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute instance_type
    #   <p>
    #         The instance type for an Elasticsearch cluster for which Elasticsearch
    #         <code>
    #           <a>Limits</a>
    #         </code>
    #         are needed.
    #       </p>
    #
    #   Enum, one of: ["m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "m5.large.elasticsearch", "m5.xlarge.elasticsearch", "m5.2xlarge.elasticsearch", "m5.4xlarge.elasticsearch", "m5.12xlarge.elasticsearch", "r5.large.elasticsearch", "r5.xlarge.elasticsearch", "r5.2xlarge.elasticsearch", "r5.4xlarge.elasticsearch", "r5.12xlarge.elasticsearch", "c5.large.elasticsearch", "c5.xlarge.elasticsearch", "c5.2xlarge.elasticsearch", "c5.4xlarge.elasticsearch", "c5.9xlarge.elasticsearch", "c5.18xlarge.elasticsearch", "ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch", "d2.xlarge.elasticsearch", "d2.2xlarge.elasticsearch", "d2.4xlarge.elasticsearch", "d2.8xlarge.elasticsearch", "c4.large.elasticsearch", "c4.xlarge.elasticsearch", "c4.2xlarge.elasticsearch", "c4.4xlarge.elasticsearch", "c4.8xlarge.elasticsearch", "r4.large.elasticsearch", "r4.xlarge.elasticsearch", "r4.2xlarge.elasticsearch", "r4.4xlarge.elasticsearch", "r4.8xlarge.elasticsearch", "r4.16xlarge.elasticsearch", "i3.large.elasticsearch", "i3.xlarge.elasticsearch", "i3.2xlarge.elasticsearch", "i3.4xlarge.elasticsearch", "i3.8xlarge.elasticsearch", "i3.16xlarge.elasticsearch"]
    #
    #   @return [String]
    #
    # @!attribute elasticsearch_version
    #   <p>
    #         Version of Elasticsearch for which
    #         <code>
    #           <a>Limits</a>
    #         </code>
    #         are needed.
    #       </p>
    #
    #   @return [String]
    #
    DescribeElasticsearchInstanceTypeLimitsInput = ::Struct.new(
      :domain_name,
      :instance_type,
      :elasticsearch_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #       Container for the parameters received from
    #       <code>
    #         <a>DescribeElasticsearchInstanceTypeLimits</a>
    #       </code>
    #       operation.
    #     </p>
    #
    # @!attribute limits_by_role
    #   <p>
    #         Map of Role of the Instance and Limits that are applicable.
    #         Role performed by given Instance in Elasticsearch
    #         can be one of the following:
    #         <ul>
    #           <li>data: If the given InstanceType is used as data node</li>
    #           <li>master: If the given InstanceType is used as master node</li>
    #           <li>ultra_warm: If the given InstanceType is used as warm node</li>
    #         </ul>
    #       </p>
    #
    #   @return [Hash<String, Limits>]
    #
    DescribeElasticsearchInstanceTypeLimitsOutput = ::Struct.new(
      :limits_by_role,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Container for the parameters to the <code><a>DescribeInboundCrossClusterSearchConnections</a></code> operation.</p>
    #
    # @!attribute filters
    #   <p>
    #         A list of filters used to match properties for inbound cross-cluster search connection.
    #         Available <code><a>Filter</a></code> names for this operation are:
    #         <ul>
    #           <li>cross-cluster-search-connection-id</li>
    #           <li>source-domain-info.domain-name</li>
    #           <li>source-domain-info.owner-id</li>
    #           <li>source-domain-info.region</li>
    #           <li>destination-domain-info.domain-name</li>
    #         </ul>
    #       </p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute max_results
    #   <p>Set this value to limit the number of results returned. If not specified, defaults to 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p> NextToken is sent in case the earlier API call results contain the NextToken. It is used for pagination.</p>
    #
    #   @return [String]
    #
    DescribeInboundCrossClusterSearchConnectionsInput = ::Struct.new(
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # <p>The result of a <code><a>DescribeInboundCrossClusterSearchConnections</a></code> request. Contains the list of connections matching the filter criteria.</p>
    #
    # @!attribute cross_cluster_search_connections
    #   <p>Consists of list of <code><a>InboundCrossClusterSearchConnection</a></code> matching the specified filter criteria.</p>
    #
    #   @return [Array<InboundCrossClusterSearchConnection>]
    #
    # @!attribute next_token
    #   <p>If more results are available and NextToken is present, make the next request to the same API with the received NextToken to paginate the remaining results.
    #       </p>
    #
    #   @return [String]
    #
    DescribeInboundCrossClusterSearchConnectionsOutput = ::Struct.new(
      :cross_cluster_search_connections,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Container for the parameters to the <code><a>DescribeOutboundCrossClusterSearchConnections</a></code> operation.</p>
    #
    # @!attribute filters
    #   <p>
    #         A list of filters used to match properties for outbound cross-cluster search connection.
    #         Available <code><a>Filter</a></code> names for this operation are:
    #         <ul>
    #           <li>cross-cluster-search-connection-id</li>
    #           <li>destination-domain-info.domain-name</li>
    #           <li>destination-domain-info.owner-id</li>
    #           <li>destination-domain-info.region</li>
    #           <li>source-domain-info.domain-name</li>
    #         </ul>
    #       </p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute max_results
    #   <p>Set this value to limit the number of results returned. If not specified, defaults to 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p> NextToken is sent in case the earlier API call results contain the NextToken. It is used for pagination.</p>
    #
    #   @return [String]
    #
    DescribeOutboundCrossClusterSearchConnectionsInput = ::Struct.new(
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # <p>The result of a <code><a>DescribeOutboundCrossClusterSearchConnections</a></code> request. Contains the list of connections matching the filter criteria.</p>
    #
    # @!attribute cross_cluster_search_connections
    #   <p>Consists of list of <code><a>OutboundCrossClusterSearchConnection</a></code> matching the specified filter criteria.</p>
    #
    #   @return [Array<OutboundCrossClusterSearchConnection>]
    #
    # @!attribute next_token
    #   <p>If more results are available and NextToken is present, make the next request to the same API with the received NextToken to paginate the remaining results.
    #       </p>
    #
    #   @return [String]
    #
    DescribeOutboundCrossClusterSearchConnectionsOutput = ::Struct.new(
      :cross_cluster_search_connections,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Filter to apply in <code>DescribePackage</code> response.</p>
    #
    # @!attribute name
    #   <p>Any field from <code>PackageDetails</code>.</p>
    #
    #   Enum, one of: ["PackageID", "PackageName", "PackageStatus"]
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>A list of values for the specified field.</p>
    #
    #   @return [Array<String>]
    #
    DescribePackagesFilter = ::Struct.new(
      :name,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DescribePackagesFilterName
    #
    module DescribePackagesFilterName
      # No documentation available.
      #
      PackageID = "PackageID"

      # No documentation available.
      #
      PackageName = "PackageName"

      # No documentation available.
      #
      PackageStatus = "PackageStatus"
    end

    # <p>
    #       Container for request parameters to
    #       <code>
    #         <a>DescribePackage</a>
    #       </code>
    #       operation.
    #     </p>
    #
    # @!attribute filters
    #   <p>Only returns packages that match the <code>DescribePackagesFilterList</code> values.</p>
    #
    #   @return [Array<DescribePackagesFilter>]
    #
    # @!attribute max_results
    #   <p>Limits results to a maximum number of packages.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>Used for pagination. Only necessary if a previous API call includes a non-null NextToken value. If provided, returns results for the next page.</p>
    #
    #   @return [String]
    #
    DescribePackagesInput = ::Struct.new(
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # <p>
    #       Container for response returned by
    #       <code>
    #         <a>DescribePackages</a>
    #       </code>
    #       operation.
    #     </p>
    #
    # @!attribute package_details_list
    #   <p>List of <code>PackageDetails</code> objects.</p>
    #
    #   @return [Array<PackageDetails>]
    #
    # @!attribute next_token
    #
    #   @return [String]
    #
    DescribePackagesOutput = ::Struct.new(
      :package_details_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Container for parameters to <code>DescribeReservedElasticsearchInstanceOfferings</code></p>
    #
    # @!attribute reserved_elasticsearch_instance_offering_id
    #   <p>The offering identifier filter value. Use this parameter to show only the available offering that matches the specified reservation identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Set this value to limit the number of results returned. If not specified, defaults to 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>NextToken should be sent in case if earlier API call produced result
    #   		containing NextToken. It is used for pagination.</p>
    #
    #   @return [String]
    #
    DescribeReservedElasticsearchInstanceOfferingsInput = ::Struct.new(
      :reserved_elasticsearch_instance_offering_id,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # <p>Container for results from <code>DescribeReservedElasticsearchInstanceOfferings</code></p>
    #
    # @!attribute next_token
    #   <p>Provides an identifier to allow retrieval of paginated results.</p>
    #
    #   @return [String]
    #
    # @!attribute reserved_elasticsearch_instance_offerings
    #   <p>List of reserved Elasticsearch instance offerings</p>
    #
    #   @return [Array<ReservedElasticsearchInstanceOffering>]
    #
    DescribeReservedElasticsearchInstanceOfferingsOutput = ::Struct.new(
      :next_token,
      :reserved_elasticsearch_instance_offerings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Container for parameters to <code>DescribeReservedElasticsearchInstances</code></p>
    #
    # @!attribute reserved_elasticsearch_instance_id
    #   <p>The reserved instance identifier filter value. Use this parameter to show only the reservation that matches the specified reserved Elasticsearch instance ID.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Set this value to limit the number of results returned. If not specified, defaults to 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>NextToken should be sent in case if earlier API call produced result
    #   		containing NextToken. It is used for pagination.</p>
    #
    #   @return [String]
    #
    DescribeReservedElasticsearchInstancesInput = ::Struct.new(
      :reserved_elasticsearch_instance_id,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # <p>Container for results from <code>DescribeReservedElasticsearchInstances</code></p>
    #
    # @!attribute next_token
    #   <p>Provides an identifier to allow retrieval of paginated results.</p>
    #
    #   @return [String]
    #
    # @!attribute reserved_elasticsearch_instances
    #   <p>List of reserved Elasticsearch instances.</p>
    #
    #   @return [Array<ReservedElasticsearchInstance>]
    #
    DescribeReservedElasticsearchInstancesOutput = ::Struct.new(
      :next_token,
      :reserved_elasticsearch_instances,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An error occured because the client wanted to access a not supported operation. Gives http status code of 409.</p>
    #
    # @!attribute message
    #   <p>A description of the error.</p>
    #
    #   @return [String]
    #
    DisabledOperationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #       Container for request parameters to
    #       <code>
    #         <a>DissociatePackage</a>
    #       </code>
    #       operation.
    #     </p>
    #
    # @!attribute package_id
    #   <p>Internal ID of the package that you want to associate with a domain. Use <code>DescribePackages</code> to find this value.</p>
    #
    #   @return [String]
    #
    # @!attribute domain_name
    #   <p>Name of the domain that you want to associate the package with.</p>
    #
    #   @return [String]
    #
    DissociatePackageInput = ::Struct.new(
      :package_id,
      :domain_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #       Container for response returned by
    #       <code>
    #         <a>DissociatePackage</a>
    #       </code>
    #       operation.
    #     </p>
    #
    # @!attribute domain_package_details
    #   <p><code>DomainPackageDetails</code></p>
    #
    #   @return [DomainPackageDetails]
    #
    DissociatePackageOutput = ::Struct.new(
      :domain_package_details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Options to configure endpoint for the Elasticsearch domain.</p>
    #
    # @!attribute enforce_https
    #   <p>Specify if only HTTPS endpoint should be enabled for the Elasticsearch domain.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute tls_security_policy
    #   <p>Specify the TLS security policy that needs to be applied to the HTTPS endpoint of Elasticsearch domain.
    #           <br></br> It can be one of the following values:
    #           <ul>
    #               <li><b>Policy-Min-TLS-1-0-2019-07: </b> TLS security policy which supports TLSv1.0 and higher.</li>
    #               <li><b>Policy-Min-TLS-1-2-2019-07: </b> TLS security policy which supports only TLSv1.2</li>
    #           </ul>
    #       </p>
    #
    #   Enum, one of: ["Policy-Min-TLS-1-0-2019-07", "Policy-Min-TLS-1-2-2019-07"]
    #
    #   @return [String]
    #
    # @!attribute custom_endpoint_enabled
    #   <p>Specify if custom endpoint should be enabled for the Elasticsearch domain.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute custom_endpoint
    #   <p>Specify the fully qualified domain for your custom endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute custom_endpoint_certificate_arn
    #   <p>Specify ACM certificate ARN for your custom endpoint.</p>
    #
    #   @return [String]
    #
    DomainEndpointOptions = ::Struct.new(
      :enforce_https,
      :tls_security_policy,
      :custom_endpoint_enabled,
      :custom_endpoint,
      :custom_endpoint_certificate_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The configured endpoint options for the domain and their current status.</p>
    #
    # @!attribute options
    #   <p>Options to configure endpoint for the Elasticsearch domain.</p>
    #
    #   @return [DomainEndpointOptions]
    #
    # @!attribute status
    #   <p>The status of the endpoint options for the Elasticsearch domain. See <code>OptionStatus</code> for the status information that's included. </p>
    #
    #   @return [OptionStatus]
    #
    DomainEndpointOptionsStatus = ::Struct.new(
      :options,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain_name
    #   <p> Specifies the <code>DomainName</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute engine_type
    #   <p> Specifies the <code>EngineType</code> of the domain.</p>
    #
    #   Enum, one of: ["OpenSearch", "Elasticsearch"]
    #
    #   @return [String]
    #
    DomainInfo = ::Struct.new(
      :domain_name,
      :engine_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute owner_id
    #
    #   @return [String]
    #
    # @!attribute domain_name
    #   <p>The name of an Elasticsearch domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
    #
    #   @return [String]
    #
    # @!attribute region
    #
    #   @return [String]
    #
    DomainInformation = ::Struct.new(
      :owner_id,
      :domain_name,
      :region,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information on a package that is associated with a domain.</p>
    #
    # @!attribute package_id
    #   <p>Internal ID of the package.</p>
    #
    #   @return [String]
    #
    # @!attribute package_name
    #   <p>User specified name of the package.</p>
    #
    #   @return [String]
    #
    # @!attribute package_type
    #   <p>Currently supports only TXT-DICTIONARY.</p>
    #
    #   Enum, one of: ["TXT-DICTIONARY"]
    #
    #   @return [String]
    #
    # @!attribute last_updated
    #   <p>Timestamp of the most-recent update to the association status.</p>
    #
    #   @return [Time]
    #
    # @!attribute domain_name
    #   <p>Name of the domain you've associated a package with.</p>
    #
    #   @return [String]
    #
    # @!attribute domain_package_status
    #   <p>State of the association. Values are ASSOCIATING/ASSOCIATION_FAILED/ACTIVE/DISSOCIATING/DISSOCIATION_FAILED.</p>
    #
    #   Enum, one of: ["ASSOCIATING", "ASSOCIATION_FAILED", "ACTIVE", "DISSOCIATING", "DISSOCIATION_FAILED"]
    #
    #   @return [String]
    #
    # @!attribute package_version
    #
    #   @return [String]
    #
    # @!attribute reference_path
    #   <p>The relative path on Amazon ES nodes, which can be used as synonym_path when the package is synonym file.</p>
    #
    #   @return [String]
    #
    # @!attribute error_details
    #   <p>Additional information if the package is in an error state. Null otherwise.</p>
    #
    #   @return [ErrorDetails]
    #
    DomainPackageDetails = ::Struct.new(
      :package_id,
      :package_name,
      :package_type,
      :last_updated,
      :domain_name,
      :domain_package_status,
      :package_version,
      :reference_path,
      :error_details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DomainPackageStatus
    #
    module DomainPackageStatus
      # No documentation available.
      #
      ASSOCIATING = "ASSOCIATING"

      # No documentation available.
      #
      ASSOCIATION_FAILED = "ASSOCIATION_FAILED"

      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      DISSOCIATING = "DISSOCIATING"

      # No documentation available.
      #
      DISSOCIATION_FAILED = "DISSOCIATION_FAILED"
    end

    # @!attribute deployment_type
    #   <p>
    #               Specifies the deployment mechanism through which the update shall be applied on the domain.
    #               Possible responses are
    #               <code>Blue/Green</code> (The update will require a blue/green deployment.)
    #               <code>DynamicUpdate</code> (The update can be applied in-place without a Blue/Green deployment required.)
    #               <code>Undetermined</code> (The domain is undergoing an update which needs to complete before the deployment type can be predicted.)
    #               <code>None</code> (The configuration change matches the current configuration and will not result in any update.)
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>Contains an optional message associated with the DryRunResults.</p>
    #
    #   @return [String]
    #
    DryRunResults = ::Struct.new(
      :deployment_type,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies maintenance schedule duration: duration value and duration unit. See the <a href="https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html" target="_blank">Developer Guide</a> for more information.</p>
    #
    # @!attribute value
    #   <p> Integer to specify the value of a maintenance schedule duration. See the <a href="https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html" target="_blank">Developer Guide</a> for more information.</p>
    #
    #   @return [Integer]
    #
    # @!attribute unit
    #   <p>Specifies the unit of a maintenance schedule duration. Valid value is HOURS. See the <a href="https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html" target="_blank">Developer Guide</a> for more information.</p>
    #
    #   Enum, one of: ["HOURS"]
    #
    #   @return [String]
    #
    Duration = ::Struct.new(
      :value,
      :unit,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.value ||= 0
      end
    end

    # <p>Options to enable, disable, and specify the properties of EBS storage volumes. For more information, see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-ebs" target="_blank"> Configuring EBS-based Storage</a>.</p>
    #
    # @!attribute ebs_enabled
    #   <p>Specifies whether EBS-based storage is enabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute volume_type
    #   <p> Specifies the volume type for EBS-based storage.</p>
    #
    #   Enum, one of: ["standard", "gp2", "io1"]
    #
    #   @return [String]
    #
    # @!attribute volume_size
    #   <p> Integer to specify the size of an EBS volume.</p>
    #
    #   @return [Integer]
    #
    # @!attribute iops
    #   <p>Specifies the IOPD for a Provisioned IOPS EBS volume (SSD).</p>
    #
    #   @return [Integer]
    #
    EBSOptions = ::Struct.new(
      :ebs_enabled,
      :volume_type,
      :volume_size,
      :iops,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Status of the EBS options for the specified Elasticsearch domain.</p>
    #
    # @!attribute options
    #   <p> Specifies the EBS options for the specified Elasticsearch domain.</p>
    #
    #   @return [EBSOptions]
    #
    # @!attribute status
    #   <p> Specifies the status of the EBS options for the specified Elasticsearch domain.</p>
    #
    #   @return [OptionStatus]
    #
    EBSOptionsStatus = ::Struct.new(
      :options,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ESPartitionInstanceType
    #
    module ESPartitionInstanceType
      # No documentation available.
      #
      m3_medium_elasticsearch = "m3.medium.elasticsearch"

      # No documentation available.
      #
      m3_large_elasticsearch = "m3.large.elasticsearch"

      # No documentation available.
      #
      m3_xlarge_elasticsearch = "m3.xlarge.elasticsearch"

      # No documentation available.
      #
      m3_2xlarge_elasticsearch = "m3.2xlarge.elasticsearch"

      # No documentation available.
      #
      m4_large_elasticsearch = "m4.large.elasticsearch"

      # No documentation available.
      #
      m4_xlarge_elasticsearch = "m4.xlarge.elasticsearch"

      # No documentation available.
      #
      m4_2xlarge_elasticsearch = "m4.2xlarge.elasticsearch"

      # No documentation available.
      #
      m4_4xlarge_elasticsearch = "m4.4xlarge.elasticsearch"

      # No documentation available.
      #
      m4_10xlarge_elasticsearch = "m4.10xlarge.elasticsearch"

      # No documentation available.
      #
      m5_large_elasticsearch = "m5.large.elasticsearch"

      # No documentation available.
      #
      m5_xlarge_elasticsearch = "m5.xlarge.elasticsearch"

      # No documentation available.
      #
      m5_2xlarge_elasticsearch = "m5.2xlarge.elasticsearch"

      # No documentation available.
      #
      m5_4xlarge_elasticsearch = "m5.4xlarge.elasticsearch"

      # No documentation available.
      #
      m5_12xlarge_elasticsearch = "m5.12xlarge.elasticsearch"

      # No documentation available.
      #
      r5_large_elasticsearch = "r5.large.elasticsearch"

      # No documentation available.
      #
      r5_xlarge_elasticsearch = "r5.xlarge.elasticsearch"

      # No documentation available.
      #
      r5_2xlarge_elasticsearch = "r5.2xlarge.elasticsearch"

      # No documentation available.
      #
      r5_4xlarge_elasticsearch = "r5.4xlarge.elasticsearch"

      # No documentation available.
      #
      r5_12xlarge_elasticsearch = "r5.12xlarge.elasticsearch"

      # No documentation available.
      #
      c5_large_elasticsearch = "c5.large.elasticsearch"

      # No documentation available.
      #
      c5_xlarge_elasticsearch = "c5.xlarge.elasticsearch"

      # No documentation available.
      #
      c5_2xlarge_elasticsearch = "c5.2xlarge.elasticsearch"

      # No documentation available.
      #
      c5_4xlarge_elasticsearch = "c5.4xlarge.elasticsearch"

      # No documentation available.
      #
      c5_9xlarge_elasticsearch = "c5.9xlarge.elasticsearch"

      # No documentation available.
      #
      c5_18xlarge_elasticsearch = "c5.18xlarge.elasticsearch"

      # No documentation available.
      #
      ultrawarm1_medium_elasticsearch = "ultrawarm1.medium.elasticsearch"

      # No documentation available.
      #
      ultrawarm1_large_elasticsearch = "ultrawarm1.large.elasticsearch"

      # No documentation available.
      #
      t2_micro_elasticsearch = "t2.micro.elasticsearch"

      # No documentation available.
      #
      t2_small_elasticsearch = "t2.small.elasticsearch"

      # No documentation available.
      #
      t2_medium_elasticsearch = "t2.medium.elasticsearch"

      # No documentation available.
      #
      r3_large_elasticsearch = "r3.large.elasticsearch"

      # No documentation available.
      #
      r3_xlarge_elasticsearch = "r3.xlarge.elasticsearch"

      # No documentation available.
      #
      r3_2xlarge_elasticsearch = "r3.2xlarge.elasticsearch"

      # No documentation available.
      #
      r3_4xlarge_elasticsearch = "r3.4xlarge.elasticsearch"

      # No documentation available.
      #
      r3_8xlarge_elasticsearch = "r3.8xlarge.elasticsearch"

      # No documentation available.
      #
      i2_xlarge_elasticsearch = "i2.xlarge.elasticsearch"

      # No documentation available.
      #
      i2_2xlarge_elasticsearch = "i2.2xlarge.elasticsearch"

      # No documentation available.
      #
      d2_xlarge_elasticsearch = "d2.xlarge.elasticsearch"

      # No documentation available.
      #
      d2_2xlarge_elasticsearch = "d2.2xlarge.elasticsearch"

      # No documentation available.
      #
      d2_4xlarge_elasticsearch = "d2.4xlarge.elasticsearch"

      # No documentation available.
      #
      d2_8xlarge_elasticsearch = "d2.8xlarge.elasticsearch"

      # No documentation available.
      #
      c4_large_elasticsearch = "c4.large.elasticsearch"

      # No documentation available.
      #
      c4_xlarge_elasticsearch = "c4.xlarge.elasticsearch"

      # No documentation available.
      #
      c4_2xlarge_elasticsearch = "c4.2xlarge.elasticsearch"

      # No documentation available.
      #
      c4_4xlarge_elasticsearch = "c4.4xlarge.elasticsearch"

      # No documentation available.
      #
      c4_8xlarge_elasticsearch = "c4.8xlarge.elasticsearch"

      # No documentation available.
      #
      r4_large_elasticsearch = "r4.large.elasticsearch"

      # No documentation available.
      #
      r4_xlarge_elasticsearch = "r4.xlarge.elasticsearch"

      # No documentation available.
      #
      r4_2xlarge_elasticsearch = "r4.2xlarge.elasticsearch"

      # No documentation available.
      #
      r4_4xlarge_elasticsearch = "r4.4xlarge.elasticsearch"

      # No documentation available.
      #
      r4_8xlarge_elasticsearch = "r4.8xlarge.elasticsearch"

      # No documentation available.
      #
      r4_16xlarge_elasticsearch = "r4.16xlarge.elasticsearch"

      # No documentation available.
      #
      i3_large_elasticsearch = "i3.large.elasticsearch"

      # No documentation available.
      #
      i3_xlarge_elasticsearch = "i3.xlarge.elasticsearch"

      # No documentation available.
      #
      i3_2xlarge_elasticsearch = "i3.2xlarge.elasticsearch"

      # No documentation available.
      #
      i3_4xlarge_elasticsearch = "i3.4xlarge.elasticsearch"

      # No documentation available.
      #
      i3_8xlarge_elasticsearch = "i3.8xlarge.elasticsearch"

      # No documentation available.
      #
      i3_16xlarge_elasticsearch = "i3.16xlarge.elasticsearch"
    end

    # Includes enum constants for ESWarmPartitionInstanceType
    #
    module ESWarmPartitionInstanceType
      # No documentation available.
      #
      ultrawarm1_medium_elasticsearch = "ultrawarm1.medium.elasticsearch"

      # No documentation available.
      #
      ultrawarm1_large_elasticsearch = "ultrawarm1.large.elasticsearch"
    end

    # <p>Specifies the configuration for the domain cluster, such as the type and number of instances.</p>
    #
    # @!attribute instance_type
    #   <p>The instance type for an Elasticsearch cluster. UltraWarm instance types are not supported for data instances.</p>
    #
    #   Enum, one of: ["m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "m5.large.elasticsearch", "m5.xlarge.elasticsearch", "m5.2xlarge.elasticsearch", "m5.4xlarge.elasticsearch", "m5.12xlarge.elasticsearch", "r5.large.elasticsearch", "r5.xlarge.elasticsearch", "r5.2xlarge.elasticsearch", "r5.4xlarge.elasticsearch", "r5.12xlarge.elasticsearch", "c5.large.elasticsearch", "c5.xlarge.elasticsearch", "c5.2xlarge.elasticsearch", "c5.4xlarge.elasticsearch", "c5.9xlarge.elasticsearch", "c5.18xlarge.elasticsearch", "ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch", "d2.xlarge.elasticsearch", "d2.2xlarge.elasticsearch", "d2.4xlarge.elasticsearch", "d2.8xlarge.elasticsearch", "c4.large.elasticsearch", "c4.xlarge.elasticsearch", "c4.2xlarge.elasticsearch", "c4.4xlarge.elasticsearch", "c4.8xlarge.elasticsearch", "r4.large.elasticsearch", "r4.xlarge.elasticsearch", "r4.2xlarge.elasticsearch", "r4.4xlarge.elasticsearch", "r4.8xlarge.elasticsearch", "r4.16xlarge.elasticsearch", "i3.large.elasticsearch", "i3.xlarge.elasticsearch", "i3.2xlarge.elasticsearch", "i3.4xlarge.elasticsearch", "i3.8xlarge.elasticsearch", "i3.16xlarge.elasticsearch"]
    #
    #   @return [String]
    #
    # @!attribute instance_count
    #   <p>The number of instances in the specified domain cluster.</p>
    #
    #   @return [Integer]
    #
    # @!attribute dedicated_master_enabled
    #   <p>A boolean value to indicate whether a dedicated master node is enabled.  See <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-managedomains.html es-managedomains-dedicatedmasternodes" target="_blank">About Dedicated Master Nodes</a> for more information.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute zone_awareness_enabled
    #   <p>A boolean value to indicate whether zone awareness is enabled.  See <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-managedomains.html es-managedomains-zoneawareness" target="_blank">About Zone Awareness</a> for more information.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute zone_awareness_config
    #   <p>Specifies the zone awareness configuration for a domain when zone awareness is enabled.</p>
    #
    #   @return [ZoneAwarenessConfig]
    #
    # @!attribute dedicated_master_type
    #   <p>The instance type for a dedicated master node.</p>
    #
    #   Enum, one of: ["m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "m5.large.elasticsearch", "m5.xlarge.elasticsearch", "m5.2xlarge.elasticsearch", "m5.4xlarge.elasticsearch", "m5.12xlarge.elasticsearch", "r5.large.elasticsearch", "r5.xlarge.elasticsearch", "r5.2xlarge.elasticsearch", "r5.4xlarge.elasticsearch", "r5.12xlarge.elasticsearch", "c5.large.elasticsearch", "c5.xlarge.elasticsearch", "c5.2xlarge.elasticsearch", "c5.4xlarge.elasticsearch", "c5.9xlarge.elasticsearch", "c5.18xlarge.elasticsearch", "ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch", "d2.xlarge.elasticsearch", "d2.2xlarge.elasticsearch", "d2.4xlarge.elasticsearch", "d2.8xlarge.elasticsearch", "c4.large.elasticsearch", "c4.xlarge.elasticsearch", "c4.2xlarge.elasticsearch", "c4.4xlarge.elasticsearch", "c4.8xlarge.elasticsearch", "r4.large.elasticsearch", "r4.xlarge.elasticsearch", "r4.2xlarge.elasticsearch", "r4.4xlarge.elasticsearch", "r4.8xlarge.elasticsearch", "r4.16xlarge.elasticsearch", "i3.large.elasticsearch", "i3.xlarge.elasticsearch", "i3.2xlarge.elasticsearch", "i3.4xlarge.elasticsearch", "i3.8xlarge.elasticsearch", "i3.16xlarge.elasticsearch"]
    #
    #   @return [String]
    #
    # @!attribute dedicated_master_count
    #   <p>Total number of dedicated master nodes, active and on standby, for the cluster.</p>
    #
    #   @return [Integer]
    #
    # @!attribute warm_enabled
    #   <p>True to enable warm storage.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute warm_type
    #   <p>The instance type for the Elasticsearch cluster's warm nodes.</p>
    #
    #   Enum, one of: ["ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch"]
    #
    #   @return [String]
    #
    # @!attribute warm_count
    #   <p>The number of warm nodes in the cluster.</p>
    #
    #   @return [Integer]
    #
    # @!attribute cold_storage_options
    #   <p>Specifies the <code>ColdStorageOptions</code> config for Elasticsearch Domain</p>
    #
    #   @return [ColdStorageOptions]
    #
    ElasticsearchClusterConfig = ::Struct.new(
      :instance_type,
      :instance_count,
      :dedicated_master_enabled,
      :zone_awareness_enabled,
      :zone_awareness_config,
      :dedicated_master_type,
      :dedicated_master_count,
      :warm_enabled,
      :warm_type,
      :warm_count,
      :cold_storage_options,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Specifies the configuration status for the specified Elasticsearch domain.</p>
    #
    # @!attribute options
    #   <p> Specifies the cluster configuration for the specified Elasticsearch domain.</p>
    #
    #   @return [ElasticsearchClusterConfig]
    #
    # @!attribute status
    #   <p> Specifies the status of the configuration for the specified Elasticsearch domain.</p>
    #
    #   @return [OptionStatus]
    #
    ElasticsearchClusterConfigStatus = ::Struct.new(
      :options,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The configuration of an Elasticsearch domain.</p>
    #
    # @!attribute elasticsearch_version
    #   <p>String of format X.Y to specify version for the Elasticsearch domain.</p>
    #
    #   @return [ElasticsearchVersionStatus]
    #
    # @!attribute elasticsearch_cluster_config
    #   <p>Specifies the <code>ElasticsearchClusterConfig</code> for the Elasticsearch domain.</p>
    #
    #   @return [ElasticsearchClusterConfigStatus]
    #
    # @!attribute ebs_options
    #   <p>Specifies the <code>EBSOptions</code> for the Elasticsearch domain.</p>
    #
    #   @return [EBSOptionsStatus]
    #
    # @!attribute access_policies
    #   <p>IAM access policy as a JSON-formatted string.</p>
    #
    #   @return [AccessPoliciesStatus]
    #
    # @!attribute snapshot_options
    #   <p>Specifies the <code>SnapshotOptions</code> for the Elasticsearch domain.</p>
    #
    #   @return [SnapshotOptionsStatus]
    #
    # @!attribute vpc_options
    #   <p>The <code>VPCOptions</code> for the specified domain. For more information, see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html" target="_blank">VPC Endpoints for Amazon Elasticsearch Service Domains</a>.</p>
    #
    #   @return [VPCDerivedInfoStatus]
    #
    # @!attribute cognito_options
    #   <p>The <code>CognitoOptions</code> for the specified domain. For more information, see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-cognito-auth.html" target="_blank">Amazon Cognito Authentication for Kibana</a>.</p>
    #
    #   @return [CognitoOptionsStatus]
    #
    # @!attribute encryption_at_rest_options
    #   <p>Specifies the <code>EncryptionAtRestOptions</code> for the Elasticsearch domain.</p>
    #
    #   @return [EncryptionAtRestOptionsStatus]
    #
    # @!attribute node_to_node_encryption_options
    #   <p>Specifies the <code>NodeToNodeEncryptionOptions</code> for the Elasticsearch domain.</p>
    #
    #   @return [NodeToNodeEncryptionOptionsStatus]
    #
    # @!attribute advanced_options
    #   <p>Specifies the <code>AdvancedOptions</code> for the domain.  See <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html es-createdomain-configure-advanced-options" target="_blank">Configuring Advanced Options</a> for more information.</p>
    #
    #   @return [AdvancedOptionsStatus]
    #
    # @!attribute log_publishing_options
    #   <p>Log publishing options for the given domain.</p>
    #
    #   @return [LogPublishingOptionsStatus]
    #
    # @!attribute domain_endpoint_options
    #   <p>Specifies the <code>DomainEndpointOptions</code> for the Elasticsearch domain.</p>
    #
    #   @return [DomainEndpointOptionsStatus]
    #
    # @!attribute advanced_security_options
    #   <p>Specifies <code>AdvancedSecurityOptions</code> for the domain. </p>
    #
    #   @return [AdvancedSecurityOptionsStatus]
    #
    # @!attribute auto_tune_options
    #   <p>Specifies <code>AutoTuneOptions</code> for the domain. </p>
    #
    #   @return [AutoTuneOptionsStatus]
    #
    # @!attribute change_progress_details
    #   <p>Specifies change details of the domain configuration change.</p>
    #
    #   @return [ChangeProgressDetails]
    #
    ElasticsearchDomainConfig = ::Struct.new(
      :elasticsearch_version,
      :elasticsearch_cluster_config,
      :ebs_options,
      :access_policies,
      :snapshot_options,
      :vpc_options,
      :cognito_options,
      :encryption_at_rest_options,
      :node_to_node_encryption_options,
      :advanced_options,
      :log_publishing_options,
      :domain_endpoint_options,
      :advanced_security_options,
      :auto_tune_options,
      :change_progress_details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The current status of an Elasticsearch domain.</p>
    #
    # @!attribute domain_id
    #   <p>The unique identifier for the specified Elasticsearch domain.</p>
    #
    #   @return [String]
    #
    # @!attribute domain_name
    #   <p>The name of an Elasticsearch domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon resource name (ARN) of an Elasticsearch domain.  See <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/index.html?Using_Identifiers.html" target="_blank">Identifiers for IAM Entities</a> in <i>Using AWS Identity and Access Management</i> for more information.</p>
    #
    #   @return [String]
    #
    # @!attribute created
    #   <p>The domain creation status. <code>True</code> if the creation of an Elasticsearch domain is complete. <code>False</code> if domain creation is still in progress.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute deleted
    #   <p>The domain deletion status. <code>True</code> if a delete request has been received for the domain but resource cleanup is still in progress. <code>False</code> if the domain has not been deleted. Once domain deletion is complete, the status of the domain is no longer returned.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute endpoint
    #   <p>The Elasticsearch domain endpoint that you use to submit index and search requests.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoints
    #   <p>Map containing the Elasticsearch domain endpoints used to submit index and search requests. Example <code>key, value</code>: <code>'vpc','vpc-endpoint-h2dsd34efgyghrtguk5gt6j2foh4.us-east-1.es.amazonaws.com'</code>.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute processing
    #   <p>The status of the Elasticsearch domain configuration. <code>True</code> if Amazon Elasticsearch Service is processing configuration changes. <code>False</code> if the configuration is active.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute upgrade_processing
    #   <p>The status of an Elasticsearch domain version upgrade. <code>True</code> if Amazon Elasticsearch Service is undergoing a version upgrade. <code>False</code> if the configuration is active.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute elasticsearch_version
    #
    #   @return [String]
    #
    # @!attribute elasticsearch_cluster_config
    #   <p>The type and number of instances in the domain cluster.</p>
    #
    #   @return [ElasticsearchClusterConfig]
    #
    # @!attribute ebs_options
    #   <p>The <code>EBSOptions</code> for the specified domain.  See <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html es-createdomain-configure-ebs" target="_blank">Configuring EBS-based Storage</a> for more information.</p>
    #
    #   @return [EBSOptions]
    #
    # @!attribute access_policies
    #   <p> IAM access policy as a JSON-formatted string.</p>
    #
    #   @return [String]
    #
    # @!attribute snapshot_options
    #   <p>Specifies the status of the <code>SnapshotOptions</code></p>
    #
    #   @return [SnapshotOptions]
    #
    # @!attribute vpc_options
    #   <p>The <code>VPCOptions</code> for the specified domain. For more information, see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html" target="_blank">VPC Endpoints for Amazon Elasticsearch Service Domains</a>.</p>
    #
    #   @return [VPCDerivedInfo]
    #
    # @!attribute cognito_options
    #   <p>The <code>CognitoOptions</code> for the specified domain. For more information, see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-cognito-auth.html" target="_blank">Amazon Cognito Authentication for Kibana</a>.</p>
    #
    #   @return [CognitoOptions]
    #
    # @!attribute encryption_at_rest_options
    #   <p> Specifies the status of the <code>EncryptionAtRestOptions</code>.</p>
    #
    #   @return [EncryptionAtRestOptions]
    #
    # @!attribute node_to_node_encryption_options
    #   <p>Specifies the status of the <code>NodeToNodeEncryptionOptions</code>.</p>
    #
    #   @return [NodeToNodeEncryptionOptions]
    #
    # @!attribute advanced_options
    #   <p>Specifies the status of the <code>AdvancedOptions</code></p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute log_publishing_options
    #   <p>Log publishing options for the given domain.</p>
    #
    #   @return [Hash<String, LogPublishingOption>]
    #
    # @!attribute service_software_options
    #   <p>The current status of the Elasticsearch domain's service software.</p>
    #
    #   @return [ServiceSoftwareOptions]
    #
    # @!attribute domain_endpoint_options
    #   <p>The current status of the Elasticsearch domain's endpoint options.</p>
    #
    #   @return [DomainEndpointOptions]
    #
    # @!attribute advanced_security_options
    #   <p>The current status of the Elasticsearch domain's advanced security options.</p>
    #
    #   @return [AdvancedSecurityOptions]
    #
    # @!attribute auto_tune_options
    #   <p>The current status of the Elasticsearch domain's Auto-Tune options.</p>
    #
    #   @return [AutoTuneOptionsOutput]
    #
    # @!attribute change_progress_details
    #   <p>Specifies change details of the domain configuration change.</p>
    #
    #   @return [ChangeProgressDetails]
    #
    ElasticsearchDomainStatus = ::Struct.new(
      :domain_id,
      :domain_name,
      :arn,
      :created,
      :deleted,
      :endpoint,
      :endpoints,
      :processing,
      :upgrade_processing,
      :elasticsearch_version,
      :elasticsearch_cluster_config,
      :ebs_options,
      :access_policies,
      :snapshot_options,
      :vpc_options,
      :cognito_options,
      :encryption_at_rest_options,
      :node_to_node_encryption_options,
      :advanced_options,
      :log_publishing_options,
      :service_software_options,
      :domain_endpoint_options,
      :advanced_security_options,
      :auto_tune_options,
      :change_progress_details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Status of the Elasticsearch version options for the specified Elasticsearch domain.</p>
    #
    # @!attribute options
    #   <p> Specifies the Elasticsearch version for the specified Elasticsearch domain.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p> Specifies the status of the Elasticsearch version options for the specified Elasticsearch domain.</p>
    #
    #   @return [OptionStatus]
    #
    ElasticsearchVersionStatus = ::Struct.new(
      :options,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the Encryption At Rest Options.</p>
    #
    # @!attribute enabled
    #   <p>Specifies the option to enable Encryption At Rest.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute kms_key_id
    #   <p> Specifies the KMS Key ID for Encryption At Rest options.</p>
    #
    #   @return [String]
    #
    EncryptionAtRestOptions = ::Struct.new(
      :enabled,
      :kms_key_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Status of the Encryption At Rest options for the specified Elasticsearch domain.</p>
    #
    # @!attribute options
    #   <p> Specifies the Encryption At Rest options for the specified Elasticsearch domain.</p>
    #
    #   @return [EncryptionAtRestOptions]
    #
    # @!attribute status
    #   <p> Specifies the status of the Encryption At Rest options for the specified Elasticsearch domain.</p>
    #
    #   @return [OptionStatus]
    #
    EncryptionAtRestOptionsStatus = ::Struct.new(
      :options,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EngineType
    #
    module EngineType
      # No documentation available.
      #
      OpenSearch = "OpenSearch"

      # No documentation available.
      #
      Elasticsearch = "Elasticsearch"
    end

    # @!attribute error_type
    #
    #   @return [String]
    #
    # @!attribute error_message
    #
    #   @return [String]
    #
    ErrorDetails = ::Struct.new(
      :error_type,
      :error_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #       A filter used to limit results when describing inbound or outbound cross-cluster search connections.
    #       Multiple values can be specified per filter.
    #       A cross-cluster search connection must match at least one of the specified values for it to be
    #       returned from an operation.
    #     </p>
    #
    # @!attribute name
    #   <p>
    #         Specifies the name of the filter.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>
    #         Contains one or more values for the filter.
    #       </p>
    #
    #   @return [Array<String>]
    #
    Filter = ::Struct.new(
      :name,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #       Container for request parameters to
    #       <code>
    #         <a>GetCompatibleElasticsearchVersions</a>
    #       </code>
    #       operation.
    #     </p>
    #
    # @!attribute domain_name
    #   <p>The name of an Elasticsearch domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
    #
    #   @return [String]
    #
    GetCompatibleElasticsearchVersionsInput = ::Struct.new(
      :domain_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #       Container for response returned by
    #       <code>
    #         <a>GetCompatibleElasticsearchVersions</a>
    #       </code>
    #       operation.
    #     </p>
    #
    # @!attribute compatible_elasticsearch_versions
    #   <p>
    #         A map of compatible Elasticsearch versions returned as part of the
    #         <code>
    #           <a>GetCompatibleElasticsearchVersions</a>
    #         </code>
    #         operation.
    #       </p>
    #
    #   @return [Array<CompatibleVersionsMap>]
    #
    GetCompatibleElasticsearchVersionsOutput = ::Struct.new(
      :compatible_elasticsearch_versions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #       Container for request parameters to
    #       <code>
    #         <a>GetPackageVersionHistory</a>
    #       </code>
    #       operation.
    #     </p>
    #
    # @!attribute package_id
    #   <p>Returns an audit history of versions of the package.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Limits results to a maximum number of versions.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>Used for pagination. Only necessary if a previous API call includes a non-null NextToken value. If provided, returns results for the next page.</p>
    #
    #   @return [String]
    #
    GetPackageVersionHistoryInput = ::Struct.new(
      :package_id,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # <p>
    #       Container for response returned by
    #       <code>
    #         <a>GetPackageVersionHistory</a>
    #       </code>
    #       operation.
    #     </p>
    #
    # @!attribute package_id
    #
    #   @return [String]
    #
    # @!attribute package_version_history_list
    #   <p>List of <code>PackageVersionHistory</code> objects.</p>
    #
    #   @return [Array<PackageVersionHistory>]
    #
    # @!attribute next_token
    #
    #   @return [String]
    #
    GetPackageVersionHistoryOutput = ::Struct.new(
      :package_id,
      :package_version_history_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #       Container for request parameters to
    #       <code>
    #         <a>GetUpgradeHistory</a>
    #       </code>
    #       operation.
    #     </p>
    #
    # @!attribute domain_name
    #   <p>The name of an Elasticsearch domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>
    #         Set this value to limit the number of results returned.
    #       </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>
    #         Paginated APIs accepts NextToken input to returns next page results and provides
    #         a NextToken output in the response which can be used by the client to retrieve more results.
    #       </p>
    #
    #   @return [String]
    #
    GetUpgradeHistoryInput = ::Struct.new(
      :domain_name,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # <p>
    #       Container for response returned by
    #       <code>
    #         <a>GetUpgradeHistory</a>
    #       </code>
    #       operation.
    #     </p>
    #
    # @!attribute upgrade_histories
    #   <p>
    #         A list of
    #         <code>
    #           <a>UpgradeHistory</a>
    #         </code>
    #         objects corresponding to each Upgrade or Upgrade Eligibility Check performed on a domain returned as part of
    #         <code>
    #           <a>GetUpgradeHistoryResponse</a>
    #         </code>
    #         object.
    #       </p>
    #
    #   @return [Array<UpgradeHistory>]
    #
    # @!attribute next_token
    #   <p>Pagination token that needs to be supplied to the next call to get the next page of results</p>
    #
    #   @return [String]
    #
    GetUpgradeHistoryOutput = ::Struct.new(
      :upgrade_histories,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #       Container for request parameters to
    #       <code>
    #         <a>GetUpgradeStatus</a>
    #       </code>
    #       operation.
    #     </p>
    #
    # @!attribute domain_name
    #   <p>The name of an Elasticsearch domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
    #
    #   @return [String]
    #
    GetUpgradeStatusInput = ::Struct.new(
      :domain_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #       Container for response returned by
    #       <code>
    #         <a>GetUpgradeStatus</a>
    #       </code>
    #       operation.
    #     </p>
    #
    # @!attribute upgrade_step
    #   <p>
    #         Represents one of 3 steps that an Upgrade or Upgrade Eligibility Check does through:
    #         <ul>
    #           <li>PreUpgradeCheck</li>
    #           <li>Snapshot</li>
    #           <li>Upgrade</li>
    #         </ul>
    #       </p>
    #
    #   Enum, one of: ["PRE_UPGRADE_CHECK", "SNAPSHOT", "UPGRADE"]
    #
    #   @return [String]
    #
    # @!attribute step_status
    #   <p>
    #         One of 4 statuses that a step can go through returned as part of the
    #         <code>
    #           <a>GetUpgradeStatusResponse</a>
    #         </code>
    #         object. The status can take one of the following values:
    #         <ul>
    #           <li>In Progress</li>
    #           <li>Succeeded</li>
    #           <li>Succeeded with Issues</li>
    #           <li>Failed</li>
    #         </ul>
    #       </p>
    #
    #   Enum, one of: ["IN_PROGRESS", "SUCCEEDED", "SUCCEEDED_WITH_ISSUES", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute upgrade_name
    #   <p>A string that describes the update briefly</p>
    #
    #   @return [String]
    #
    GetUpgradeStatusOutput = ::Struct.new(
      :upgrade_step,
      :step_status,
      :upgrade_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies details of an inbound connection.</p>
    #
    # @!attribute source_domain_info
    #   <p>Specifies the <code><a>DomainInformation</a></code> for the source Elasticsearch domain.</p>
    #
    #   @return [DomainInformation]
    #
    # @!attribute destination_domain_info
    #   <p>Specifies the <code><a>DomainInformation</a></code> for the destination Elasticsearch domain.</p>
    #
    #   @return [DomainInformation]
    #
    # @!attribute cross_cluster_search_connection_id
    #   <p>Specifies the connection id for the inbound cross-cluster search connection.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_status
    #   <p>Specifies the <code><a>InboundCrossClusterSearchConnectionStatus</a></code> for the outbound connection.</p>
    #
    #   @return [InboundCrossClusterSearchConnectionStatus]
    #
    InboundCrossClusterSearchConnection = ::Struct.new(
      :source_domain_info,
      :destination_domain_info,
      :cross_cluster_search_connection_id,
      :connection_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the coonection status of an inbound cross-cluster search connection.</p>
    #
    # @!attribute status_code
    #   <p>The state code for inbound connection. This can be one of the following:</p>
    #       <ul>
    #         <li>PENDING_ACCEPTANCE: Inbound connection is not yet accepted by destination domain owner.</li>
    #         <li>APPROVED: Inbound connection is pending acceptance by destination domain owner.</li>
    #         <li>REJECTING: Inbound connection rejection is in process.</li>
    #         <li>REJECTED: Inbound connection is rejected.</li>
    #         <li>DELETING: Inbound connection deletion is in progress.</li>
    #         <li>DELETED: Inbound connection is deleted and cannot be used further.</li>
    #       </ul>
    #
    #   Enum, one of: ["PENDING_ACCEPTANCE", "APPROVED", "REJECTING", "REJECTED", "DELETING", "DELETED"]
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>Specifies verbose information for the inbound connection status.</p>
    #
    #   @return [String]
    #
    InboundCrossClusterSearchConnectionStatus = ::Struct.new(
      :status_code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for InboundCrossClusterSearchConnectionStatusCode
    #
    module InboundCrossClusterSearchConnectionStatusCode
      # No documentation available.
      #
      PENDING_ACCEPTANCE = "PENDING_ACCEPTANCE"

      # No documentation available.
      #
      APPROVED = "APPROVED"

      # No documentation available.
      #
      REJECTING = "REJECTING"

      # No documentation available.
      #
      REJECTED = "REJECTED"

      # No documentation available.
      #
      DELETING = "DELETING"

      # No documentation available.
      #
      DELETED = "DELETED"
    end

    # <p>
    #       InstanceCountLimits represents the limits on number of instances that be created in Amazon Elasticsearch for
    #       given InstanceType.
    #     </p>
    #
    # @!attribute minimum_instance_count
    #   <p>
    #         Minimum number of Instances that can be instantiated for given InstanceType.
    #       </p>
    #
    #   @return [Integer]
    #
    # @!attribute maximum_instance_count
    #   <p>
    #         Maximum number of Instances that can be instantiated for given InstanceType.
    #       </p>
    #
    #   @return [Integer]
    #
    InstanceCountLimits = ::Struct.new(
      :minimum_instance_count,
      :maximum_instance_count,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.minimum_instance_count ||= 0
        self.maximum_instance_count ||= 0
      end
    end

    # <p>InstanceLimits represents the list of instance related attributes that are available for given InstanceType.
    #     </p>
    #
    # @!attribute instance_count_limits
    #   <p>
    #         InstanceCountLimits represents the limits on number of instances that be created in Amazon Elasticsearch for
    #         given InstanceType.
    #       </p>
    #
    #   @return [InstanceCountLimits]
    #
    InstanceLimits = ::Struct.new(
      :instance_count_limits,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request processing has failed because of an unknown error, exception or failure (the failure is internal to the service) . Gives http status code of 500.</p>
    #
    # @!attribute message
    #   <p>A description of the error.</p>
    #
    #   @return [String]
    #
    InternalException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request processing has failed because of invalid pagination token provided by customer. Returns an HTTP status code of 400. </p>
    #
    # @!attribute message
    #   <p>A description of the error.</p>
    #
    #   @return [String]
    #
    InvalidPaginationTokenException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An exception for trying to create or access sub-resource that is either invalid or not supported. Gives http status code of 409.</p>
    #
    # @!attribute message
    #   <p>A description of the error.</p>
    #
    #   @return [String]
    #
    InvalidTypeException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An exception for trying to create more than allowed resources or sub-resources. Gives http status code of 409.</p>
    #
    # @!attribute message
    #   <p>A description of the error.</p>
    #
    #   @return [String]
    #
    LimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #       Limits for given InstanceType and for each of it's role.
    #       <br></br>
    #       Limits contains following
    #       <code>
    #         <a>StorageTypes,</a>
    #       </code>
    #       <code>
    #         <a>InstanceLimits</a>
    #       </code>
    #       and
    #       <code>
    #         <a>AdditionalLimits</a>
    #       </code>
    #     </p>
    #
    # @!attribute storage_types
    #   <p>StorageType represents the list of storage related types and attributes
    #         that are available for given InstanceType.
    #       </p>
    #
    #   @return [Array<StorageType>]
    #
    # @!attribute instance_limits
    #   <p>InstanceLimits represents the list of instance related attributes that are available for given InstanceType.
    #       </p>
    #
    #   @return [InstanceLimits]
    #
    # @!attribute additional_limits
    #   <p>
    #         List of additional limits that are specific to a given InstanceType and for each of it's
    #         <code>
    #           <a>InstanceRole</a>
    #         </code>
    #         .
    #       </p>
    #
    #   @return [Array<AdditionalLimit>]
    #
    Limits = ::Struct.new(
      :storage_types,
      :instance_limits,
      :additional_limits,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Container for the parameters to the <code><a>ListDomainNames</a></code> operation.</p>
    #
    # @!attribute engine_type
    #   <p> Optional parameter to filter the output by domain engine type. Acceptable values are 'Elasticsearch' and 'OpenSearch'. </p>
    #
    #   Enum, one of: ["OpenSearch", "Elasticsearch"]
    #
    #   @return [String]
    #
    ListDomainNamesInput = ::Struct.new(
      :engine_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The result of a <code>ListDomainNames</code> operation. Contains the names of all domains owned by this account and their respective engine types.</p>
    #
    # @!attribute domain_names
    #   <p>List of domain names and respective engine types.</p>
    #
    #   @return [Array<DomainInfo>]
    #
    ListDomainNamesOutput = ::Struct.new(
      :domain_names,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #       Container for request parameters to
    #       <code>
    #         <a>ListDomainsForPackage</a>
    #       </code>
    #       operation.
    #     </p>
    #
    # @!attribute package_id
    #   <p>The package for which to list domains.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Limits results to a maximum number of domains.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>Used for pagination. Only necessary if a previous API call includes a non-null NextToken value. If provided, returns results for the next page.</p>
    #
    #   @return [String]
    #
    ListDomainsForPackageInput = ::Struct.new(
      :package_id,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # <p>
    #       Container for response parameters to
    #       <code>
    #         <a>ListDomainsForPackage</a>
    #       </code>
    #       operation.
    #     </p>
    #
    # @!attribute domain_package_details_list
    #   <p>List of <code>DomainPackageDetails</code> objects.</p>
    #
    #   @return [Array<DomainPackageDetails>]
    #
    # @!attribute next_token
    #
    #   @return [String]
    #
    ListDomainsForPackageOutput = ::Struct.new(
      :domain_package_details_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #       Container for the parameters to the
    #       <code>
    #         <a>ListElasticsearchInstanceTypes</a>
    #       </code>
    #       operation.
    #     </p>
    #
    # @!attribute elasticsearch_version
    #   <p>Version of Elasticsearch for which list of supported elasticsearch
    #         instance types are needed.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute domain_name
    #   <p>DomainName represents the name of the Domain that we are trying to modify. This should be present only if we are
    #         querying for list of available Elasticsearch instance types when modifying existing domain.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>
    #       Set this value to limit the number of results returned.
    #       Value provided must be greater than 30 else it wont be honored.
    #     </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>NextToken should be sent in case if earlier API call produced result
    #         containing NextToken. It is used for pagination.
    #       </p>
    #
    #   @return [String]
    #
    ListElasticsearchInstanceTypesInput = ::Struct.new(
      :elasticsearch_version,
      :domain_name,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # <p>
    #       Container for the parameters returned by
    #       <code>
    #         <a>ListElasticsearchInstanceTypes</a>
    #       </code>
    #       operation.
    #     </p>
    #
    # @!attribute elasticsearch_instance_types
    #   <p>
    #         List of instance types supported by Amazon Elasticsearch service for
    #         given
    #         <code>
    #           <a>ElasticsearchVersion</a>
    #         </code>
    #       </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>In case if there are more results available NextToken would be
    #         present, make further request to the same API with
    #         received NextToken to paginate remaining results.
    #       </p>
    #
    #   @return [String]
    #
    ListElasticsearchInstanceTypesOutput = ::Struct.new(
      :elasticsearch_instance_types,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #       Container for the parameters to the
    #       <code>
    #         <a>ListElasticsearchVersions</a>
    #       </code>
    #       operation.
    #       <p>
    #         Use
    #         <code>
    #           <a>MaxResults</a>
    #         </code>
    #         to control the maximum number of results to retrieve in a single
    #         call.
    #       </p>
    #       <p>
    #         Use
    #         <code>
    #           <a>NextToken</a>
    #         </code>
    #         in response to retrieve more results. If the received response does
    #         not contain a NextToken, then there are no more results to retrieve.
    #       </p>
    #     </p>
    #
    # @!attribute max_results
    #   <p>
    #         Set this value to limit the number of results returned.
    #         Value provided must be greater than 10 else it wont be honored.
    #       </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>
    #         Paginated APIs accepts NextToken input to returns next page results and provides
    #         a NextToken output in the response which can be used by the client to retrieve more results.
    #       </p>
    #
    #   @return [String]
    #
    ListElasticsearchVersionsInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # <p>
    #       Container for the parameters for response received from
    #       <code>
    #         <a>ListElasticsearchVersions</a>
    #       </code>
    #       operation.
    #     </p>
    #
    # @!attribute elasticsearch_versions
    #   <p>List of supported elastic search versions.
    #       </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>
    #         Paginated APIs accepts NextToken input to returns next page results and provides
    #         a NextToken output in the response which can be used by the client to retrieve more results.
    #       </p>
    #
    #   @return [String]
    #
    ListElasticsearchVersionsOutput = ::Struct.new(
      :elasticsearch_versions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #       Container for request parameters to
    #       <code>
    #         <a>ListPackagesForDomain</a>
    #       </code>
    #       operation.
    #     </p>
    #
    # @!attribute domain_name
    #   <p>The name of the domain for which you want to list associated packages.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Limits results to a maximum number of packages.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>Used for pagination. Only necessary if a previous API call includes a non-null NextToken value. If provided, returns results for the next page.</p>
    #
    #   @return [String]
    #
    ListPackagesForDomainInput = ::Struct.new(
      :domain_name,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # <p>
    #       Container for response parameters to
    #       <code>
    #         <a>ListPackagesForDomain</a>
    #       </code>
    #       operation.
    #     </p>
    #
    # @!attribute domain_package_details_list
    #   <p>List of <code>DomainPackageDetails</code> objects.</p>
    #
    #   @return [Array<DomainPackageDetails>]
    #
    # @!attribute next_token
    #   <p>Pagination token that needs to be supplied to the next call to get the next page of results.</p>
    #
    #   @return [String]
    #
    ListPackagesForDomainOutput = ::Struct.new(
      :domain_package_details_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Container for the parameters to the <code><a>ListTags</a></code> operation. Specify the <code>ARN</code> for the Elasticsearch domain to which the tags are attached that you want to view are attached.</p>
    #
    # @!attribute arn
    #   <p> Specify the <code>ARN</code> for the Elasticsearch domain to which the tags are attached that you want to view.</p>
    #
    #   @return [String]
    #
    ListTagsInput = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The result of a <code>ListTags</code> operation. Contains tags for all requested Elasticsearch domains.</p>
    #
    # @!attribute tag_list
    #   <p> List of <code>Tag</code> for the requested Elasticsearch domain.</p>
    #
    #   @return [Array<Tag>]
    #
    ListTagsOutput = ::Struct.new(
      :tag_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Log Publishing option that is set for given domain.
    #        <br></br>Attributes and their details:
    #      <ul>
    #        <li>CloudWatchLogsLogGroupArn: ARN of the Cloudwatch log group to which log needs to be published.</li>
    #        <li>Enabled: Whether the log publishing for given log type is enabled or not</li>
    #      </ul>
    #    </p>
    #
    # @!attribute cloud_watch_logs_log_group_arn
    #   <p>ARN of the Cloudwatch log group to which log needs to be published.</p>
    #
    #   @return [String]
    #
    # @!attribute enabled
    #   <p> Specifies whether given log publishing option is enabled or not.</p>
    #
    #   @return [Boolean]
    #
    LogPublishingOption = ::Struct.new(
      :cloud_watch_logs_log_group_arn,
      :enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The configured log publishing options for the domain and their current status.</p>
    #
    # @!attribute options
    #   <p>The log publishing options configured for the Elasticsearch domain.</p>
    #
    #   @return [Hash<String, LogPublishingOption>]
    #
    # @!attribute status
    #   <p>The status of the log publishing options for the Elasticsearch domain. See <code>OptionStatus</code> for the status information that's included. </p>
    #
    #   @return [OptionStatus]
    #
    LogPublishingOptionsStatus = ::Struct.new(
      :options,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for LogType
    #
    module LogType
      # No documentation available.
      #
      INDEX_SLOW_LOGS = "INDEX_SLOW_LOGS"

      # No documentation available.
      #
      SEARCH_SLOW_LOGS = "SEARCH_SLOW_LOGS"

      # No documentation available.
      #
      ES_APPLICATION_LOGS = "ES_APPLICATION_LOGS"

      # No documentation available.
      #
      AUDIT_LOGS = "AUDIT_LOGS"
    end

    # <p>Credentials for the master user: username and password, ARN, or both.</p>
    #
    # @!attribute master_user_arn
    #   <p>ARN for the master user (if IAM is enabled).</p>
    #
    #   @return [String]
    #
    # @!attribute master_user_name
    #   <p>The master user's username, which is stored in the Amazon Elasticsearch Service domain's internal database.</p>
    #
    #   @return [String]
    #
    # @!attribute master_user_password
    #   <p>The master user's password, which is stored in the Amazon Elasticsearch Service domain's internal database.</p>
    #
    #   @return [String]
    #
    MasterUserOptions = ::Struct.new(
      :master_user_arn,
      :master_user_name,
      :master_user_password,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ElasticsearchService::Types::MasterUserOptions "\
          "master_user_arn=#{master_user_arn || 'nil'}, "\
          "master_user_name=\"[SENSITIVE]\", "\
          "master_user_password=\"[SENSITIVE]\">"
      end
    end

    # <p>Specifies the node-to-node encryption options.</p>
    #
    # @!attribute enabled
    #   <p>Specify true to enable node-to-node encryption.</p>
    #
    #   @return [Boolean]
    #
    NodeToNodeEncryptionOptions = ::Struct.new(
      :enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Status of the node-to-node encryption options for the specified Elasticsearch domain.</p>
    #
    # @!attribute options
    #   <p>Specifies the node-to-node encryption options for the specified Elasticsearch domain.</p>
    #
    #   @return [NodeToNodeEncryptionOptions]
    #
    # @!attribute status
    #   <p>Specifies the status of the node-to-node encryption options for the specified Elasticsearch domain.</p>
    #
    #   @return [OptionStatus]
    #
    NodeToNodeEncryptionOptionsStatus = ::Struct.new(
      :options,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for OptionState
    #
    module OptionState
      # No documentation available.
      #
      RequiresIndexDocuments = "RequiresIndexDocuments"

      # No documentation available.
      #
      Processing = "Processing"

      # No documentation available.
      #
      Active = "Active"
    end

    # <p>Provides the current status of the entity.</p>
    #
    # @!attribute creation_date
    #   <p>Timestamp which tells the creation date for the entity.</p>
    #
    #   @return [Time]
    #
    # @!attribute update_date
    #   <p>Timestamp which tells the last updated time for the entity.</p>
    #
    #   @return [Time]
    #
    # @!attribute update_version
    #   <p>Specifies the latest version for the entity.</p>
    #
    #   @return [Integer]
    #
    # @!attribute state
    #   <p>Provides the <code>OptionState</code> for the Elasticsearch domain.</p>
    #
    #   Enum, one of: ["RequiresIndexDocuments", "Processing", "Active"]
    #
    #   @return [String]
    #
    # @!attribute pending_deletion
    #   <p>Indicates whether the Elasticsearch domain is being deleted.</p>
    #
    #   @return [Boolean]
    #
    OptionStatus = ::Struct.new(
      :creation_date,
      :update_date,
      :update_version,
      :state,
      :pending_deletion,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.update_version ||= 0
      end
    end

    # <p>Specifies details of an outbound connection.</p>
    #
    # @!attribute source_domain_info
    #   <p>Specifies the <code><a>DomainInformation</a></code> for the source Elasticsearch domain.</p>
    #
    #   @return [DomainInformation]
    #
    # @!attribute destination_domain_info
    #   <p>Specifies the <code><a>DomainInformation</a></code> for the destination Elasticsearch domain.</p>
    #
    #   @return [DomainInformation]
    #
    # @!attribute cross_cluster_search_connection_id
    #   <p>Specifies the connection id for the outbound cross-cluster search connection.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_alias
    #   <p>Specifies the connection alias for the outbound cross-cluster search connection.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_status
    #   <p>Specifies the <code><a>OutboundCrossClusterSearchConnectionStatus</a></code> for the outbound connection.</p>
    #
    #   @return [OutboundCrossClusterSearchConnectionStatus]
    #
    OutboundCrossClusterSearchConnection = ::Struct.new(
      :source_domain_info,
      :destination_domain_info,
      :cross_cluster_search_connection_id,
      :connection_alias,
      :connection_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the connection status of an outbound cross-cluster search connection.</p>
    #
    # @!attribute status_code
    #   <p>The state code for outbound connection. This can be one of the following:</p>
    #       <ul>
    #         <li>VALIDATING: The outbound connection request is being validated.</li>
    #         <li>VALIDATION_FAILED: Validation failed for the connection request.</li>
    #         <li>PENDING_ACCEPTANCE: Outbound connection request is validated and is not yet accepted by destination domain owner.</li>
    #         <li>PROVISIONING: Outbound connection request is in process.</li>
    #         <li>ACTIVE: Outbound connection is active and ready to use.</li>
    #         <li>REJECTED: Outbound connection request is rejected by destination domain owner.</li>
    #         <li>DELETING: Outbound connection deletion is in progress.</li>
    #         <li>DELETED: Outbound connection is deleted and cannot be used further.</li>
    #       </ul>
    #
    #   Enum, one of: ["PENDING_ACCEPTANCE", "VALIDATING", "VALIDATION_FAILED", "PROVISIONING", "ACTIVE", "REJECTED", "DELETING", "DELETED"]
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>Specifies verbose information for the outbound connection status.</p>
    #
    #   @return [String]
    #
    OutboundCrossClusterSearchConnectionStatus = ::Struct.new(
      :status_code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for OutboundCrossClusterSearchConnectionStatusCode
    #
    module OutboundCrossClusterSearchConnectionStatusCode
      # No documentation available.
      #
      PENDING_ACCEPTANCE = "PENDING_ACCEPTANCE"

      # No documentation available.
      #
      VALIDATING = "VALIDATING"

      # No documentation available.
      #
      VALIDATION_FAILED = "VALIDATION_FAILED"

      # No documentation available.
      #
      PROVISIONING = "PROVISIONING"

      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      REJECTED = "REJECTED"

      # No documentation available.
      #
      DELETING = "DELETING"

      # No documentation available.
      #
      DELETED = "DELETED"
    end

    # Includes enum constants for OverallChangeStatus
    #
    module OverallChangeStatus
      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      PROCESSING = "PROCESSING"

      # No documentation available.
      #
      COMPLETED = "COMPLETED"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # <p>Basic information about a package.</p>
    #
    # @!attribute package_id
    #   <p>Internal ID of the package.</p>
    #
    #   @return [String]
    #
    # @!attribute package_name
    #   <p>User specified name of the package.</p>
    #
    #   @return [String]
    #
    # @!attribute package_type
    #   <p>Currently supports only TXT-DICTIONARY.</p>
    #
    #   Enum, one of: ["TXT-DICTIONARY"]
    #
    #   @return [String]
    #
    # @!attribute package_description
    #   <p>User-specified description of the package.</p>
    #
    #   @return [String]
    #
    # @!attribute package_status
    #   <p>Current state of the package. Values are COPYING/COPY_FAILED/AVAILABLE/DELETING/DELETE_FAILED</p>
    #
    #   Enum, one of: ["COPYING", "COPY_FAILED", "VALIDATING", "VALIDATION_FAILED", "AVAILABLE", "DELETING", "DELETED", "DELETE_FAILED"]
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>Timestamp which tells creation date of the package.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_at
    #
    #   @return [Time]
    #
    # @!attribute available_package_version
    #
    #   @return [String]
    #
    # @!attribute error_details
    #   <p>Additional information if the package is in an error state. Null otherwise.</p>
    #
    #   @return [ErrorDetails]
    #
    PackageDetails = ::Struct.new(
      :package_id,
      :package_name,
      :package_type,
      :package_description,
      :package_status,
      :created_at,
      :last_updated_at,
      :available_package_version,
      :error_details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The S3 location for importing the package specified as <code>S3BucketName</code> and <code>S3Key</code></p>
    #
    # @!attribute s3_bucket_name
    #   <p>Name of the bucket containing the package.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_key
    #   <p>Key (file name) of the package.</p>
    #
    #   @return [String]
    #
    PackageSource = ::Struct.new(
      :s3_bucket_name,
      :s3_key,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PackageStatus
    #
    module PackageStatus
      # No documentation available.
      #
      COPYING = "COPYING"

      # No documentation available.
      #
      COPY_FAILED = "COPY_FAILED"

      # No documentation available.
      #
      VALIDATING = "VALIDATING"

      # No documentation available.
      #
      VALIDATION_FAILED = "VALIDATION_FAILED"

      # No documentation available.
      #
      AVAILABLE = "AVAILABLE"

      # No documentation available.
      #
      DELETING = "DELETING"

      # No documentation available.
      #
      DELETED = "DELETED"

      # No documentation available.
      #
      DELETE_FAILED = "DELETE_FAILED"
    end

    # Includes enum constants for PackageType
    #
    module PackageType
      # No documentation available.
      #
      TXT_DICTIONARY = "TXT-DICTIONARY"
    end

    # <p>Details of a package version.</p>
    #
    # @!attribute package_version
    #   <p>Version of the package.</p>
    #
    #   @return [String]
    #
    # @!attribute commit_message
    #   <p>A message associated with the version.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>Timestamp which tells creation time of the package version.</p>
    #
    #   @return [Time]
    #
    PackageVersionHistory = ::Struct.new(
      :package_version,
      :commit_message,
      :created_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Container for parameters to <code>PurchaseReservedElasticsearchInstanceOffering</code></p>
    #
    # @!attribute reserved_elasticsearch_instance_offering_id
    #   <p>The ID of the reserved Elasticsearch instance offering to purchase.</p>
    #
    #   @return [String]
    #
    # @!attribute reservation_name
    #   <p>A customer-specified identifier to track this reservation.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_count
    #   <p>The number of Elasticsearch instances to reserve.</p>
    #
    #   @return [Integer]
    #
    PurchaseReservedElasticsearchInstanceOfferingInput = ::Struct.new(
      :reserved_elasticsearch_instance_offering_id,
      :reservation_name,
      :instance_count,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.instance_count ||= 0
      end
    end

    # <p>Represents the output of a <code>PurchaseReservedElasticsearchInstanceOffering</code> operation.</p>
    #
    # @!attribute reserved_elasticsearch_instance_id
    #   <p>Details of the reserved Elasticsearch instance which was purchased.</p>
    #
    #   @return [String]
    #
    # @!attribute reservation_name
    #   <p>The customer-specified identifier used to track this reservation.</p>
    #
    #   @return [String]
    #
    PurchaseReservedElasticsearchInstanceOfferingOutput = ::Struct.new(
      :reserved_elasticsearch_instance_id,
      :reservation_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the specific price and frequency of a recurring charges for a reserved Elasticsearch instance, or for a reserved Elasticsearch instance offering.</p>
    #
    # @!attribute recurring_charge_amount
    #   <p>The monetary amount of the recurring charge.</p>
    #
    #   @return [Float]
    #
    # @!attribute recurring_charge_frequency
    #   <p>The frequency of the recurring charge.</p>
    #
    #   @return [String]
    #
    RecurringCharge = ::Struct.new(
      :recurring_charge_amount,
      :recurring_charge_frequency,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Container for the parameters to the <code><a>RejectInboundCrossClusterSearchConnection</a></code> operation.</p>
    #
    # @!attribute cross_cluster_search_connection_id
    #   <p>The id of the inbound connection that you want to reject.</p>
    #
    #   @return [String]
    #
    RejectInboundCrossClusterSearchConnectionInput = ::Struct.new(
      :cross_cluster_search_connection_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The result of a <code><a>RejectInboundCrossClusterSearchConnection</a></code> operation. Contains details of rejected inbound connection.</p>
    #
    # @!attribute cross_cluster_search_connection
    #   <p>Specifies the <code><a>InboundCrossClusterSearchConnection</a></code> of rejected inbound connection. </p>
    #
    #   @return [InboundCrossClusterSearchConnection]
    #
    RejectInboundCrossClusterSearchConnectionOutput = ::Struct.new(
      :cross_cluster_search_connection,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Container for the parameters to the <code><a>RemoveTags</a></code> operation. Specify the <code>ARN</code> for the Elasticsearch domain from which you want to remove the specified <code>TagKey</code>.</p>
    #
    # @!attribute arn
    #   <p>Specifies the <code>ARN</code> for the Elasticsearch domain from which you want to delete the specified tags.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>Specifies the <code>TagKey</code> list which you want to remove from the Elasticsearch domain.</p>
    #
    #   @return [Array<String>]
    #
    RemoveTagsInput = ::Struct.new(
      :arn,
      :tag_keys,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    RemoveTagsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details of a reserved Elasticsearch instance.</p>
    #
    # @!attribute reservation_name
    #   <p>The customer-specified identifier to track this reservation.</p>
    #
    #   @return [String]
    #
    # @!attribute reserved_elasticsearch_instance_id
    #   <p>The unique identifier for the reservation.</p>
    #
    #   @return [String]
    #
    # @!attribute reserved_elasticsearch_instance_offering_id
    #   <p>The offering identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute elasticsearch_instance_type
    #   <p>The Elasticsearch instance type offered by the reserved instance offering.</p>
    #
    #   Enum, one of: ["m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "m5.large.elasticsearch", "m5.xlarge.elasticsearch", "m5.2xlarge.elasticsearch", "m5.4xlarge.elasticsearch", "m5.12xlarge.elasticsearch", "r5.large.elasticsearch", "r5.xlarge.elasticsearch", "r5.2xlarge.elasticsearch", "r5.4xlarge.elasticsearch", "r5.12xlarge.elasticsearch", "c5.large.elasticsearch", "c5.xlarge.elasticsearch", "c5.2xlarge.elasticsearch", "c5.4xlarge.elasticsearch", "c5.9xlarge.elasticsearch", "c5.18xlarge.elasticsearch", "ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch", "d2.xlarge.elasticsearch", "d2.2xlarge.elasticsearch", "d2.4xlarge.elasticsearch", "d2.8xlarge.elasticsearch", "c4.large.elasticsearch", "c4.xlarge.elasticsearch", "c4.2xlarge.elasticsearch", "c4.4xlarge.elasticsearch", "c4.8xlarge.elasticsearch", "r4.large.elasticsearch", "r4.xlarge.elasticsearch", "r4.2xlarge.elasticsearch", "r4.4xlarge.elasticsearch", "r4.8xlarge.elasticsearch", "r4.16xlarge.elasticsearch", "i3.large.elasticsearch", "i3.xlarge.elasticsearch", "i3.2xlarge.elasticsearch", "i3.4xlarge.elasticsearch", "i3.8xlarge.elasticsearch", "i3.16xlarge.elasticsearch"]
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The time the reservation started.</p>
    #
    #   @return [Time]
    #
    # @!attribute duration
    #   <p>The duration, in seconds, for which the Elasticsearch instance is reserved.</p>
    #
    #   @return [Integer]
    #
    # @!attribute fixed_price
    #   <p>The upfront fixed charge you will paid to purchase the specific reserved Elasticsearch instance offering. </p>
    #
    #   @return [Float]
    #
    # @!attribute usage_price
    #   <p>The rate you are charged for each hour for the domain that is using this reserved instance.</p>
    #
    #   @return [Float]
    #
    # @!attribute currency_code
    #   <p>The currency code for the reserved Elasticsearch instance offering.</p>
    #
    #   @return [String]
    #
    # @!attribute elasticsearch_instance_count
    #   <p>The number of Elasticsearch instances that have been reserved.</p>
    #
    #   @return [Integer]
    #
    # @!attribute state
    #   <p>The state of the reserved Elasticsearch instance.</p>
    #
    #   @return [String]
    #
    # @!attribute payment_option
    #   <p>The payment option as defined in the reserved Elasticsearch instance offering.</p>
    #
    #   Enum, one of: ["ALL_UPFRONT", "PARTIAL_UPFRONT", "NO_UPFRONT"]
    #
    #   @return [String]
    #
    # @!attribute recurring_charges
    #   <p>The charge to your account regardless of whether you are creating any domains using the instance offering.</p>
    #
    #   @return [Array<RecurringCharge>]
    #
    ReservedElasticsearchInstance = ::Struct.new(
      :reservation_name,
      :reserved_elasticsearch_instance_id,
      :reserved_elasticsearch_instance_offering_id,
      :elasticsearch_instance_type,
      :start_time,
      :duration,
      :fixed_price,
      :usage_price,
      :currency_code,
      :elasticsearch_instance_count,
      :state,
      :payment_option,
      :recurring_charges,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.duration ||= 0
        self.elasticsearch_instance_count ||= 0
      end
    end

    # <p>Details of a reserved Elasticsearch instance offering.</p>
    #
    # @!attribute reserved_elasticsearch_instance_offering_id
    #   <p>The Elasticsearch reserved instance offering identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute elasticsearch_instance_type
    #   <p>The Elasticsearch instance type offered by the reserved instance offering.</p>
    #
    #   Enum, one of: ["m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "m5.large.elasticsearch", "m5.xlarge.elasticsearch", "m5.2xlarge.elasticsearch", "m5.4xlarge.elasticsearch", "m5.12xlarge.elasticsearch", "r5.large.elasticsearch", "r5.xlarge.elasticsearch", "r5.2xlarge.elasticsearch", "r5.4xlarge.elasticsearch", "r5.12xlarge.elasticsearch", "c5.large.elasticsearch", "c5.xlarge.elasticsearch", "c5.2xlarge.elasticsearch", "c5.4xlarge.elasticsearch", "c5.9xlarge.elasticsearch", "c5.18xlarge.elasticsearch", "ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch", "d2.xlarge.elasticsearch", "d2.2xlarge.elasticsearch", "d2.4xlarge.elasticsearch", "d2.8xlarge.elasticsearch", "c4.large.elasticsearch", "c4.xlarge.elasticsearch", "c4.2xlarge.elasticsearch", "c4.4xlarge.elasticsearch", "c4.8xlarge.elasticsearch", "r4.large.elasticsearch", "r4.xlarge.elasticsearch", "r4.2xlarge.elasticsearch", "r4.4xlarge.elasticsearch", "r4.8xlarge.elasticsearch", "r4.16xlarge.elasticsearch", "i3.large.elasticsearch", "i3.xlarge.elasticsearch", "i3.2xlarge.elasticsearch", "i3.4xlarge.elasticsearch", "i3.8xlarge.elasticsearch", "i3.16xlarge.elasticsearch"]
    #
    #   @return [String]
    #
    # @!attribute duration
    #   <p>The duration, in seconds, for which the offering will reserve the Elasticsearch instance.</p>
    #
    #   @return [Integer]
    #
    # @!attribute fixed_price
    #   <p>The upfront fixed charge you will pay to purchase the specific reserved Elasticsearch instance offering. </p>
    #
    #   @return [Float]
    #
    # @!attribute usage_price
    #   <p>The rate you are charged for each hour the domain that is using the offering is running.</p>
    #
    #   @return [Float]
    #
    # @!attribute currency_code
    #   <p>The currency code for the reserved Elasticsearch instance offering.</p>
    #
    #   @return [String]
    #
    # @!attribute payment_option
    #   <p>Payment option for the reserved Elasticsearch instance offering</p>
    #
    #   Enum, one of: ["ALL_UPFRONT", "PARTIAL_UPFRONT", "NO_UPFRONT"]
    #
    #   @return [String]
    #
    # @!attribute recurring_charges
    #   <p>The charge to your account regardless of whether you are creating any domains using the instance offering.</p>
    #
    #   @return [Array<RecurringCharge>]
    #
    ReservedElasticsearchInstanceOffering = ::Struct.new(
      :reserved_elasticsearch_instance_offering_id,
      :elasticsearch_instance_type,
      :duration,
      :fixed_price,
      :usage_price,
      :currency_code,
      :payment_option,
      :recurring_charges,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.duration ||= 0
      end
    end

    # Includes enum constants for ReservedElasticsearchInstancePaymentOption
    #
    module ReservedElasticsearchInstancePaymentOption
      # No documentation available.
      #
      ALL_UPFRONT = "ALL_UPFRONT"

      # No documentation available.
      #
      PARTIAL_UPFRONT = "PARTIAL_UPFRONT"

      # No documentation available.
      #
      NO_UPFRONT = "NO_UPFRONT"
    end

    # <p>An exception for creating a resource that already exists. Gives http status code of 400.</p>
    #
    # @!attribute message
    #   <p>A description of the error.</p>
    #
    #   @return [String]
    #
    ResourceAlreadyExistsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An exception for accessing or deleting a resource that does not exist. Gives http status code of 400.</p>
    #
    # @!attribute message
    #   <p>A description of the error.</p>
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RollbackOnDisable
    #
    module RollbackOnDisable
      # No documentation available.
      #
      NO_ROLLBACK = "NO_ROLLBACK"

      # No documentation available.
      #
      DEFAULT_ROLLBACK = "DEFAULT_ROLLBACK"
    end

    # <p>Specifies the SAML Identity Provider's information.</p>
    #
    # @!attribute metadata_content
    #   <p>The Metadata of the SAML application in xml format.</p>
    #
    #   @return [String]
    #
    # @!attribute entity_id
    #   <p>The unique Entity ID of the application in SAML Identity Provider.</p>
    #
    #   @return [String]
    #
    SAMLIdp = ::Struct.new(
      :metadata_content,
      :entity_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the SAML application configuration for the domain.</p>
    #
    # @!attribute enabled
    #   <p>True if SAML is enabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute idp
    #   <p>Specifies the SAML Identity Provider's information.</p>
    #
    #   @return [SAMLIdp]
    #
    # @!attribute master_user_name
    #   <p>The SAML master username, which is stored in the Amazon Elasticsearch Service domain's internal database.</p>
    #
    #   @return [String]
    #
    # @!attribute master_backend_role
    #   <p>The backend role to which the SAML master user is mapped to.</p>
    #
    #   @return [String]
    #
    # @!attribute subject_key
    #   <p>The key to use for matching the SAML Subject attribute.</p>
    #
    #   @return [String]
    #
    # @!attribute roles_key
    #   <p>The key to use for matching the SAML Roles attribute.</p>
    #
    #   @return [String]
    #
    # @!attribute session_timeout_minutes
    #   <p>The duration, in minutes, after which a user session becomes inactive. Acceptable values are between 1 and 1440, and the default value is 60.</p>
    #
    #   @return [Integer]
    #
    SAMLOptionsInput = ::Struct.new(
      :enabled,
      :idp,
      :master_user_name,
      :master_backend_role,
      :subject_key,
      :roles_key,
      :session_timeout_minutes,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ElasticsearchService::Types::SAMLOptionsInput "\
          "enabled=#{enabled || 'nil'}, "\
          "idp=#{idp || 'nil'}, "\
          "master_user_name=\"[SENSITIVE]\", "\
          "master_backend_role=#{master_backend_role || 'nil'}, "\
          "subject_key=#{subject_key || 'nil'}, "\
          "roles_key=#{roles_key || 'nil'}, "\
          "session_timeout_minutes=#{session_timeout_minutes || 'nil'}>"
      end
    end

    # <p>Describes the SAML application configured for the domain.</p>
    #
    # @!attribute enabled
    #   <p>True if SAML is enabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute idp
    #   <p>Describes the SAML Identity Provider's information.</p>
    #
    #   @return [SAMLIdp]
    #
    # @!attribute subject_key
    #   <p>The key used for matching the SAML Subject attribute.</p>
    #
    #   @return [String]
    #
    # @!attribute roles_key
    #   <p>The key used for matching the SAML Roles attribute.</p>
    #
    #   @return [String]
    #
    # @!attribute session_timeout_minutes
    #   <p>The duration, in minutes, after which a user session becomes inactive.</p>
    #
    #   @return [Integer]
    #
    SAMLOptionsOutput = ::Struct.new(
      :enabled,
      :idp,
      :subject_key,
      :roles_key,
      :session_timeout_minutes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ScheduledAutoTuneActionType
    #
    module ScheduledAutoTuneActionType
      # No documentation available.
      #
      JVM_HEAP_SIZE_TUNING = "JVM_HEAP_SIZE_TUNING"

      # No documentation available.
      #
      JVM_YOUNG_GEN_TUNING = "JVM_YOUNG_GEN_TUNING"
    end

    # <p>Specifies details of the scheduled Auto-Tune action. See the <a href="https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html" target="_blank">Developer Guide</a> for more information. </p>
    #
    # @!attribute date
    #   <p>Specifies timestamp for the Auto-Tune action scheduled for the domain. </p>
    #
    #   @return [Time]
    #
    # @!attribute action_type
    #   <p>Specifies Auto-Tune action type. Valid values are JVM_HEAP_SIZE_TUNING and JVM_YOUNG_GEN_TUNING. </p>
    #
    #   Enum, one of: ["JVM_HEAP_SIZE_TUNING", "JVM_YOUNG_GEN_TUNING"]
    #
    #   @return [String]
    #
    # @!attribute action
    #   <p>Specifies Auto-Tune action description. </p>
    #
    #   @return [String]
    #
    # @!attribute severity
    #   <p>Specifies Auto-Tune action severity. Valid values are LOW, MEDIUM and HIGH. </p>
    #
    #   Enum, one of: ["LOW", "MEDIUM", "HIGH"]
    #
    #   @return [String]
    #
    ScheduledAutoTuneDetails = ::Struct.new(
      :date,
      :action_type,
      :action,
      :severity,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ScheduledAutoTuneSeverityType
    #
    module ScheduledAutoTuneSeverityType
      # No documentation available.
      #
      LOW = "LOW"

      # No documentation available.
      #
      MEDIUM = "MEDIUM"

      # No documentation available.
      #
      HIGH = "HIGH"
    end

    # <p>The current options of an Elasticsearch domain service software options.</p>
    #
    # @!attribute current_version
    #   <p>The current service software version that is present on the domain.</p>
    #
    #   @return [String]
    #
    # @!attribute new_version
    #   <p>The new service software version if one is available.</p>
    #
    #   @return [String]
    #
    # @!attribute update_available
    #   <p><code>True</code> if you are able to update you service software version. <code>False</code> if you are not able to update your service software version. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute cancellable
    #   <p><code>True</code> if you are able to cancel your service software version update. <code>False</code> if you are not able to cancel your service software version. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute update_status
    #   <p>The status of your service software update. This field can take the following values: <code>ELIGIBLE</code>, <code>PENDING_UPDATE</code>, <code>IN_PROGRESS</code>, <code>COMPLETED</code>, and <code>NOT_ELIGIBLE</code>.</p>
    #
    #   Enum, one of: ["PENDING_UPDATE", "IN_PROGRESS", "COMPLETED", "NOT_ELIGIBLE", "ELIGIBLE"]
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the <code>UpdateStatus</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute automated_update_date
    #   <p>Timestamp, in Epoch time, until which you can manually request a service software update. After this date, we automatically update your service software.</p>
    #
    #   @return [Time]
    #
    # @!attribute optional_deployment
    #   <p><code>True</code> if a service software is never automatically updated. <code>False</code> if a service software is automatically updated after <code>AutomatedUpdateDate</code>.  </p>
    #
    #   @return [Boolean]
    #
    ServiceSoftwareOptions = ::Struct.new(
      :current_version,
      :new_version,
      :update_available,
      :cancellable,
      :update_status,
      :description,
      :automated_update_date,
      :optional_deployment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the time, in UTC format, when the service takes a daily automated snapshot of the specified Elasticsearch domain. Default value is <code>0</code> hours.</p>
    #
    # @!attribute automated_snapshot_start_hour
    #   <p>Specifies the time, in UTC format, when the service takes a daily automated snapshot of the specified Elasticsearch domain. Default value is <code>0</code> hours.</p>
    #
    #   @return [Integer]
    #
    SnapshotOptions = ::Struct.new(
      :automated_snapshot_start_hour,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Status of a daily automated snapshot.</p>
    #
    # @!attribute options
    #   <p>Specifies the daily snapshot options specified for the Elasticsearch domain.</p>
    #
    #   @return [SnapshotOptions]
    #
    # @!attribute status
    #   <p>Specifies the status of a daily automated snapshot.</p>
    #
    #   @return [OptionStatus]
    #
    SnapshotOptionsStatus = ::Struct.new(
      :options,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Container for the parameters to the <code><a>StartElasticsearchServiceSoftwareUpdate</a></code> operation. Specifies the name of the Elasticsearch domain that you wish to schedule a service software update on.</p>
    #
    # @!attribute domain_name
    #   <p>The name of the domain that you want to update to the latest service software.</p>
    #
    #   @return [String]
    #
    StartElasticsearchServiceSoftwareUpdateInput = ::Struct.new(
      :domain_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The result of a <code>StartElasticsearchServiceSoftwareUpdate</code> operation. Contains the status of the update.</p>
    #
    # @!attribute service_software_options
    #   <p>The current status of the Elasticsearch service software update.</p>
    #
    #   @return [ServiceSoftwareOptions]
    #
    StartElasticsearchServiceSoftwareUpdateOutput = ::Struct.new(
      :service_software_options,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>StorageTypes represents the list of storage related types and their attributes
    #       that are available for given InstanceType.
    #     </p>
    #
    # @!attribute storage_type_name
    #   <p>
    #     Type of the storage.
    #     List of available storage options:
    #     <ol>
    #       <li>instance</li> Inbuilt storage available for the given Instance
    #       <li>ebs</li> Elastic block storage that would be attached to the given Instance
    #     </ol>
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute storage_sub_type_name
    #   <p>
    #         SubType of the given storage type.
    #         List of available sub-storage options:
    #         For "instance" storageType we wont have any storageSubType,
    #         in case of "ebs" storageType we will have following valid storageSubTypes
    #         <ol>
    #           <li>standard</li>
    #           <li>gp2</li>
    #           <li>io1</li>
    #         </ol>
    #         Refer <code><a>VolumeType</a></code> for more information regarding above EBS storage options.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute storage_type_limits
    #   <p>List of limits that are applicable for given storage type.
    #       </p>
    #
    #   @return [Array<StorageTypeLimit>]
    #
    StorageType = ::Struct.new(
      :storage_type_name,
      :storage_sub_type_name,
      :storage_type_limits,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Limits that are applicable for given storage type.
    #     </p>
    #
    # @!attribute limit_name
    #   <p>
    #       Name of storage limits that are applicable for given storage type.
    #       If
    #       <code>
    #         <a>StorageType</a>
    #       </code>
    #       is ebs, following storage options are applicable
    #       <ol>
    #         <li>MinimumVolumeSize</li>
    #         Minimum amount of volume size that is applicable for given storage type.It can be empty if it is not applicable.
    #         <li>MaximumVolumeSize</li>
    #         Maximum amount of volume size that is applicable for given storage type.It can be empty if it is not applicable.
    #         <li>MaximumIops</li>
    #         Maximum amount of Iops that is applicable for given storage type.It can be empty if it is not applicable.
    #         <li>MinimumIops</li>
    #         Minimum amount of Iops that is applicable for given storage type.It can be empty if it is not applicable.
    #       </ol>
    #     </p>
    #
    #   @return [String]
    #
    # @!attribute limit_values
    #   <p>
    #         Values for the
    #         <code>
    #           <a>StorageTypeLimit$LimitName</a>
    #         </code>
    #         .
    #       </p>
    #
    #   @return [Array<String>]
    #
    StorageTypeLimit = ::Struct.new(
      :limit_name,
      :limit_values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TLSSecurityPolicy
    #
    module TLSSecurityPolicy
      # No documentation available.
      #
      POLICY_MIN_TLS_1_0_2019_07 = "Policy-Min-TLS-1-0-2019-07"

      # No documentation available.
      #
      POLICY_MIN_TLS_1_2_2019_07 = "Policy-Min-TLS-1-2-2019-07"
    end

    # <p>Specifies a key value pair for a resource tag.</p>
    #
    # @!attribute key
    #   <p>Specifies the <code>TagKey</code>, the name of the tag.  Tag keys must be unique for the Elasticsearch domain to which they are attached.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>Specifies the <code>TagValue</code>, the value assigned to the corresponding tag key.  Tag values can be null and do not have to be unique in a tag set.  For example, you can have a key value
    #          pair in a tag set of <code>project : Trinity</code> and <code>cost-center : Trinity</code></p>
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

    # Includes enum constants for TimeUnit
    #
    module TimeUnit
      # No documentation available.
      #
      HOURS = "HOURS"
    end

    # <p>Container for the parameters to the <code><a>UpdateElasticsearchDomain</a></code> operation. Specifies the type and number of instances in the domain cluster.</p>
    #
    # @!attribute domain_name
    #   <p>The name of the Elasticsearch domain that you are updating. </p>
    #
    #   @return [String]
    #
    # @!attribute elasticsearch_cluster_config
    #   <p>The type and number of instances to instantiate for the domain cluster.</p>
    #
    #   @return [ElasticsearchClusterConfig]
    #
    # @!attribute ebs_options
    #   <p>Specify the type and size of the EBS volume that you want to use. </p>
    #
    #   @return [EBSOptions]
    #
    # @!attribute snapshot_options
    #   <p>Option to set the time, in UTC format, for the daily automated snapshot. Default value is <code>0</code> hours. </p>
    #
    #   @return [SnapshotOptions]
    #
    # @!attribute vpc_options
    #   <p>Options to specify the subnets and security groups for VPC endpoint. For more information, see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html es-creating-vpc" target="_blank">Creating a VPC</a> in <i>VPC Endpoints for Amazon Elasticsearch Service Domains</i></p>
    #
    #   @return [VPCOptions]
    #
    # @!attribute cognito_options
    #   <p>Options to specify the Cognito user and identity pools for Kibana authentication. For more information, see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-cognito-auth.html" target="_blank">Amazon Cognito Authentication for Kibana</a>.</p>
    #
    #   @return [CognitoOptions]
    #
    # @!attribute advanced_options
    #   <p>Modifies the advanced option to allow references to indices in an HTTP request body.  Must be <code>false</code> when configuring access to individual sub-resources.  By default, the value is <code>true</code>.
    #          See <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html es-createdomain-configure-advanced-options" target="_blank">Configuration Advanced Options</a> for more information.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute access_policies
    #   <p>IAM access policy as a JSON-formatted string.</p>
    #
    #   @return [String]
    #
    # @!attribute log_publishing_options
    #   <p>Map of <code>LogType</code> and <code>LogPublishingOption</code>, each containing options to publish a given type of Elasticsearch log.</p>
    #
    #   @return [Hash<String, LogPublishingOption>]
    #
    # @!attribute domain_endpoint_options
    #   <p>Options to specify configuration that will be applied to the domain endpoint.</p>
    #
    #   @return [DomainEndpointOptions]
    #
    # @!attribute advanced_security_options
    #   <p>Specifies advanced security options.</p>
    #
    #   @return [AdvancedSecurityOptionsInput]
    #
    # @!attribute node_to_node_encryption_options
    #   <p>Specifies the NodeToNodeEncryptionOptions.</p>
    #
    #   @return [NodeToNodeEncryptionOptions]
    #
    # @!attribute encryption_at_rest_options
    #   <p>Specifies the Encryption At Rest Options.</p>
    #
    #   @return [EncryptionAtRestOptions]
    #
    # @!attribute auto_tune_options
    #   <p>Specifies Auto-Tune options.</p>
    #
    #   @return [AutoTuneOptions]
    #
    # @!attribute dry_run
    #   <p>
    #              This flag, when set to True, specifies whether the <code>UpdateElasticsearchDomain</code> request should return the results of validation checks without actually applying the change.
    #              This flag, when set to True, specifies the deployment mechanism through which the update shall be applied on the domain.
    #              This will not actually perform the Update.
    #          </p>
    #
    #   @return [Boolean]
    #
    UpdateElasticsearchDomainConfigInput = ::Struct.new(
      :domain_name,
      :elasticsearch_cluster_config,
      :ebs_options,
      :snapshot_options,
      :vpc_options,
      :cognito_options,
      :advanced_options,
      :access_policies,
      :log_publishing_options,
      :domain_endpoint_options,
      :advanced_security_options,
      :node_to_node_encryption_options,
      :encryption_at_rest_options,
      :auto_tune_options,
      :dry_run,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The result of an <code>UpdateElasticsearchDomain</code> request. Contains the status of the Elasticsearch domain being updated.</p>
    #
    # @!attribute domain_config
    #   <p>The status of the updated Elasticsearch domain. </p>
    #
    #   @return [ElasticsearchDomainConfig]
    #
    # @!attribute dry_run_results
    #   <p>Contains result of DryRun. </p>
    #
    #   @return [DryRunResults]
    #
    UpdateElasticsearchDomainConfigOutput = ::Struct.new(
      :domain_config,
      :dry_run_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #       Container for request parameters to
    #       <code>
    #         <a>UpdatePackage</a>
    #       </code>
    #       operation.
    #     </p>
    #
    # @!attribute package_id
    #   <p>Unique identifier for the package.</p>
    #
    #   @return [String]
    #
    # @!attribute package_source
    #   <p>The S3 location for importing the package specified as <code>S3BucketName</code> and <code>S3Key</code></p>
    #
    #   @return [PackageSource]
    #
    # @!attribute package_description
    #   <p>New description of the package.</p>
    #
    #   @return [String]
    #
    # @!attribute commit_message
    #   <p>An info message for the new version which will be shown as part of <code>GetPackageVersionHistoryResponse</code>.</p>
    #
    #   @return [String]
    #
    UpdatePackageInput = ::Struct.new(
      :package_id,
      :package_source,
      :package_description,
      :commit_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #       Container for response returned by
    #       <code>
    #         <a>UpdatePackage</a>
    #       </code>
    #       operation.
    #     </p>
    #
    # @!attribute package_details
    #   <p>Information about the package <code>PackageDetails</code>.</p>
    #
    #   @return [PackageDetails]
    #
    UpdatePackageOutput = ::Struct.new(
      :package_details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #       Container for request parameters to
    #       <code>
    #         <a>UpgradeElasticsearchDomain</a>
    #       </code>
    #       operation.
    #     </p>
    #
    # @!attribute domain_name
    #   <p>The name of an Elasticsearch domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
    #
    #   @return [String]
    #
    # @!attribute target_version
    #   <p>The version of Elasticsearch that you intend to upgrade the domain to.</p>
    #
    #   @return [String]
    #
    # @!attribute perform_check_only
    #   <p>
    #         This flag, when set to True, indicates that an Upgrade Eligibility Check needs to be performed.
    #         This will not actually perform the Upgrade.
    #       </p>
    #
    #   @return [Boolean]
    #
    UpgradeElasticsearchDomainInput = ::Struct.new(
      :domain_name,
      :target_version,
      :perform_check_only,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #       Container for response returned by
    #       <code>
    #         <a>UpgradeElasticsearchDomain</a>
    #       </code>
    #       operation.
    #     </p>
    #
    # @!attribute domain_name
    #   <p>The name of an Elasticsearch domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
    #
    #   @return [String]
    #
    # @!attribute target_version
    #   <p>The version of Elasticsearch that you intend to upgrade the domain to.</p>
    #
    #   @return [String]
    #
    # @!attribute perform_check_only
    #   <p>
    #         This flag, when set to True, indicates that an Upgrade Eligibility Check needs to be performed.
    #         This will not actually perform the Upgrade.
    #       </p>
    #
    #   @return [Boolean]
    #
    # @!attribute change_progress_details
    #   <p>Specifies change details of the domain configuration change.</p>
    #
    #   @return [ChangeProgressDetails]
    #
    UpgradeElasticsearchDomainOutput = ::Struct.new(
      :domain_name,
      :target_version,
      :perform_check_only,
      :change_progress_details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>History of the last 10 Upgrades and Upgrade Eligibility Checks.</p>
    #
    # @!attribute upgrade_name
    #   <p>A string that describes the update briefly</p>
    #
    #   @return [String]
    #
    # @!attribute start_timestamp
    #   <p>UTC Timestamp at which the Upgrade API call was made in "yyyy-MM-ddTHH:mm:ssZ" format.</p>
    #
    #   @return [Time]
    #
    # @!attribute upgrade_status
    #   <p>
    #         The overall status of the update. The status can take one of the following values:
    #         <ul>
    #           <li>In Progress</li>
    #           <li>Succeeded</li>
    #           <li>Succeeded with Issues</li>
    #           <li>Failed</li>
    #         </ul>
    #       </p>
    #
    #   Enum, one of: ["IN_PROGRESS", "SUCCEEDED", "SUCCEEDED_WITH_ISSUES", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute steps_list
    #   <p>
    #         A list of
    #         <code>
    #           <a>UpgradeStepItem</a>
    #         </code>
    #         s representing information about each step performed as pard of a specific Upgrade or Upgrade Eligibility Check.
    #       </p>
    #
    #   @return [Array<UpgradeStepItem>]
    #
    UpgradeHistory = ::Struct.new(
      :upgrade_name,
      :start_timestamp,
      :upgrade_status,
      :steps_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for UpgradeStatus
    #
    module UpgradeStatus
      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"

      # No documentation available.
      #
      SUCCEEDED = "SUCCEEDED"

      # No documentation available.
      #
      SUCCEEDED_WITH_ISSUES = "SUCCEEDED_WITH_ISSUES"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # Includes enum constants for UpgradeStep
    #
    module UpgradeStep
      # No documentation available.
      #
      PRE_UPGRADE_CHECK = "PRE_UPGRADE_CHECK"

      # No documentation available.
      #
      SNAPSHOT = "SNAPSHOT"

      # No documentation available.
      #
      UPGRADE = "UPGRADE"
    end

    # <p>Represents a single step of the Upgrade or Upgrade Eligibility Check workflow.</p>
    #
    # @!attribute upgrade_step
    #   <p>
    #         Represents one of 3 steps that an Upgrade or Upgrade Eligibility Check does through:
    #         <ul>
    #           <li>PreUpgradeCheck</li>
    #           <li>Snapshot</li>
    #           <li>Upgrade</li>
    #         </ul>
    #       </p>
    #
    #   Enum, one of: ["PRE_UPGRADE_CHECK", "SNAPSHOT", "UPGRADE"]
    #
    #   @return [String]
    #
    # @!attribute upgrade_step_status
    #   <p>
    #         The status of a particular step during an upgrade. The status can take one of the following values:
    #         <ul>
    #           <li>In Progress</li>
    #           <li>Succeeded</li>
    #           <li>Succeeded with Issues</li>
    #           <li>Failed</li>
    #         </ul>
    #       </p>
    #
    #   Enum, one of: ["IN_PROGRESS", "SUCCEEDED", "SUCCEEDED_WITH_ISSUES", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute issues
    #   <p>A list of strings containing detailed information about the errors encountered in a particular step.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute progress_percent
    #   <p>The Floating point value representing progress percentage of a particular step.</p>
    #
    #   @return [Float]
    #
    UpgradeStepItem = ::Struct.new(
      :upgrade_step,
      :upgrade_step_status,
      :issues,
      :progress_percent,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Options to specify the subnets and security groups for VPC endpoint. For more information, see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html" target="_blank"> VPC Endpoints for Amazon Elasticsearch Service Domains</a>.</p>
    #
    # @!attribute vpc_id
    #   <p>The VPC Id for the Elasticsearch domain. Exists only if the domain was created with VPCOptions.</p>
    #
    #   @return [String]
    #
    # @!attribute subnet_ids
    #   <p>Specifies the subnets for VPC endpoint.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute availability_zones
    #   <p>The availability zones for the Elasticsearch domain. Exists only if the domain was created with VPCOptions.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute security_group_ids
    #   <p>Specifies the security groups for VPC endpoint.</p>
    #
    #   @return [Array<String>]
    #
    VPCDerivedInfo = ::Struct.new(
      :vpc_id,
      :subnet_ids,
      :availability_zones,
      :security_group_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Status of the VPC options for the specified Elasticsearch domain.</p>
    #
    # @!attribute options
    #   <p> Specifies the VPC options for the specified Elasticsearch domain.</p>
    #
    #   @return [VPCDerivedInfo]
    #
    # @!attribute status
    #   <p> Specifies the status of the VPC options for the specified Elasticsearch domain.</p>
    #
    #   @return [OptionStatus]
    #
    VPCDerivedInfoStatus = ::Struct.new(
      :options,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Options to specify the subnets and security groups for VPC endpoint. For more information, see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html" target="_blank"> VPC Endpoints for Amazon Elasticsearch Service Domains</a>.</p>
    #
    # @!attribute subnet_ids
    #   <p>Specifies the subnets for VPC endpoint.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute security_group_ids
    #   <p>Specifies the security groups for VPC endpoint.</p>
    #
    #   @return [Array<String>]
    #
    VPCOptions = ::Struct.new(
      :subnet_ids,
      :security_group_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An exception for missing / invalid input fields. Gives http status code of 400.</p>
    #
    # @!attribute message
    #   <p>A description of the error.</p>
    #
    #   @return [String]
    #
    ValidationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for VolumeType
    #
    module VolumeType
      # No documentation available.
      #
      standard = "standard"

      # No documentation available.
      #
      gp2 = "gp2"

      # No documentation available.
      #
      io1 = "io1"
    end

    # <p>Specifies the zone awareness configuration for the domain cluster, such as the number of availability zones.</p>
    #
    # @!attribute availability_zone_count
    #   <p>An integer value to indicate the number of availability zones for a domain when zone awareness is enabled. This should be equal to number of subnets if VPC endpoints is enabled</p>
    #
    #   @return [Integer]
    #
    ZoneAwarenessConfig = ::Struct.new(
      :availability_zone_count,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
