# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Appflow
  module Types

    # <p>AppFlow/Requester has invalid or missing permissions.</p>
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

    # <p> The aggregation settings that you can use to customize the output format of your flow
    #       data. </p>
    #
    # @!attribute aggregation_type
    #   <p> Specifies whether Amazon AppFlow aggregates the flow records into a single file, or
    #         leave them unaggregated. </p>
    #
    #   Enum, one of: ["None", "SingleFile"]
    #
    #   @return [String]
    #
    AggregationConfig = ::Struct.new(
      :aggregation_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AggregationType
    #
    module AggregationType
      # No documentation available.
      #
      NONE = "None"

      # No documentation available.
      #
      SINGLE_FILE = "SingleFile"
    end

    # Includes enum constants for AmplitudeConnectorOperator
    #
    module AmplitudeConnectorOperator
      # No documentation available.
      #
      BETWEEN = "BETWEEN"
    end

    # <p> The connector-specific credentials required when using Amplitude. </p>
    #
    # @!attribute api_key
    #   <p> A unique alphanumeric identifier used to authenticate a user, developer, or calling
    #         program to your API. </p>
    #
    #   @return [String]
    #
    # @!attribute secret_key
    #   <p> The Secret Access Key portion of the credentials. </p>
    #
    #   @return [String]
    #
    AmplitudeConnectorProfileCredentials = ::Struct.new(
      :api_key,
      :secret_key,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Appflow::Types::AmplitudeConnectorProfileCredentials "\
          "api_key=\"[SENSITIVE]\", "\
          "secret_key=\"[SENSITIVE]\">"
      end
    end

    # <p> The connector-specific profile properties required when using Amplitude. </p>
    #
    AmplitudeConnectorProfileProperties = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The connector metadata specific to Amplitude. </p>
    #
    AmplitudeMetadata = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The properties that are applied when Amplitude is being used as a source. </p>
    #
    # @!attribute object
    #   <p> The object specified in the Amplitude flow source. </p>
    #
    #   @return [String]
    #
    AmplitudeSourceProperties = ::Struct.new(
      :object,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The API key credentials required for API key authentication.</p>
    #
    # @!attribute api_key
    #   <p>The API key required for API key authentication.</p>
    #
    #   @return [String]
    #
    # @!attribute api_secret_key
    #   <p>The API secret key required for API key authentication.</p>
    #
    #   @return [String]
    #
    ApiKeyCredentials = ::Struct.new(
      :api_key,
      :api_secret_key,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Appflow::Types::ApiKeyCredentials "\
          "api_key=\"[SENSITIVE]\", "\
          "api_secret_key=\"[SENSITIVE]\">"
      end
    end

    # <p>Information about required authentication parameters.</p>
    #
    # @!attribute key
    #   <p>The authentication key required to authenticate with the connector.</p>
    #
    #   @return [String]
    #
    # @!attribute is_required
    #   <p>Indicates whether this authentication parameter is required.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute label
    #   <p>Label used for authentication parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description about the authentication parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute is_sensitive_field
    #   <p>Indicates whether this authentication parameter is a sensitive field.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute connector_supplied_values
    #   <p>Contains default values for this authentication parameter that are supplied by the
    #         connector.</p>
    #
    #   @return [Array<String>]
    #
    AuthParameter = ::Struct.new(
      :key,
      :is_required,
      :label,
      :description,
      :is_sensitive_field,
      :connector_supplied_values,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.is_required ||= false
        self.is_sensitive_field ||= false
      end

    end

    # <p>Contains information about the authentication config that the connector supports.</p>
    #
    # @!attribute is_basic_auth_supported
    #   <p>Indicates whether basic authentication is supported by the connector.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute is_api_key_auth_supported
    #   <p>Indicates whether API key authentication is supported by the connector</p>
    #
    #   @return [Boolean]
    #
    # @!attribute is_o_auth2_supported
    #   <p>Indicates whether OAuth 2.0 authentication is supported by the connector.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute is_custom_auth_supported
    #   <p>Indicates whether custom authentication is supported by the connector</p>
    #
    #   @return [Boolean]
    #
    # @!attribute o_auth2_defaults
    #   <p>Contains the default values required for OAuth 2.0 authentication.</p>
    #
    #   @return [OAuth2Defaults]
    #
    # @!attribute custom_auth_configs
    #   <p>Contains information required for custom authentication.</p>
    #
    #   @return [Array<CustomAuthConfig>]
    #
    AuthenticationConfig = ::Struct.new(
      :is_basic_auth_supported,
      :is_api_key_auth_supported,
      :is_o_auth2_supported,
      :is_custom_auth_supported,
      :o_auth2_defaults,
      :custom_auth_configs,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.is_basic_auth_supported ||= false
        self.is_api_key_auth_supported ||= false
        self.is_o_auth2_supported ||= false
        self.is_custom_auth_supported ||= false
      end

    end

    # Includes enum constants for AuthenticationType
    #
    module AuthenticationType
      # No documentation available.
      #
      OAUTH2 = "OAUTH2"

      # No documentation available.
      #
      APIKEY = "APIKEY"

      # No documentation available.
      #
      BASIC = "BASIC"

      # No documentation available.
      #
      CUSTOM = "CUSTOM"
    end

    # <p> The basic auth credentials required for basic authentication. </p>
    #
    # @!attribute username
    #   <p> The username to use to connect to a resource. </p>
    #
    #   @return [String]
    #
    # @!attribute password
    #   <p> The password to use to connect to a resource.</p>
    #
    #   @return [String]
    #
    BasicAuthCredentials = ::Struct.new(
      :username,
      :password,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Appflow::Types::BasicAuthCredentials "\
          "username=#{username || 'nil'}, "\
          "password=\"[SENSITIVE]\">"
      end
    end

    # <p> There was a conflict when processing the request (for example, a flow with the given name
    #       already exists within the account. Check for conflicting resource names and try again. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ConflictException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ConnectionMode
    #
    module ConnectionMode
      # No documentation available.
      #
      PUBLIC = "Public"

      # No documentation available.
      #
      PRIVATE = "Private"
    end

    # <p> An error occurred when authenticating with the connector endpoint. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ConnectorAuthenticationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The configuration settings related to a given connector. </p>
    #
    # @!attribute can_use_as_source
    #   <p> Specifies whether the connector can be used as a source. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute can_use_as_destination
    #   <p> Specifies whether the connector can be used as a destination. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute supported_destination_connectors
    #   <p> Lists the connectors that are available for use as destinations. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute supported_scheduling_frequencies
    #   <p> Specifies the supported flow frequency for that connector. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute is_private_link_enabled
    #   <p> Specifies if PrivateLink is enabled for that connector. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute is_private_link_endpoint_url_required
    #   <p> Specifies if a PrivateLink endpoint URL is required. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute supported_trigger_types
    #   <p> Specifies the supported trigger types for the flow. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute connector_metadata
    #   <p> Specifies connector-specific metadata such as <code>oAuthScopes</code>,
    #           <code>supportedRegions</code>, <code>privateLinkServiceUrl</code>, and so on. </p>
    #
    #   @return [ConnectorMetadata]
    #
    # @!attribute connector_type
    #   <p>The connector type.</p>
    #
    #   Enum, one of: ["Salesforce", "Singular", "Slack", "Redshift", "S3", "Marketo", "Googleanalytics", "Zendesk", "Servicenow", "Datadog", "Trendmicro", "Snowflake", "Dynatrace", "Infornexus", "Amplitude", "Veeva", "EventBridge", "LookoutMetrics", "Upsolver", "Honeycode", "CustomerProfiles", "SAPOData", "CustomConnector"]
    #
    #   @return [String]
    #
    # @!attribute connector_label
    #   <p>The label used for registering the connector.</p>
    #
    #   @return [String]
    #
    # @!attribute connector_description
    #   <p>A description about the connector.</p>
    #
    #   @return [String]
    #
    # @!attribute connector_owner
    #   <p>The owner who developed the connector.</p>
    #
    #   @return [String]
    #
    # @!attribute connector_name
    #   <p>The connector name.</p>
    #
    #   @return [String]
    #
    # @!attribute connector_version
    #   <p>The connector version.</p>
    #
    #   @return [String]
    #
    # @!attribute connector_arn
    #   <p>The Amazon Resource Name (ARN) for the registered connector.</p>
    #
    #   @return [String]
    #
    # @!attribute connector_modes
    #   <p>The connection modes that the connector supports.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute authentication_config
    #   <p>The authentication config required for the connector.</p>
    #
    #   @return [AuthenticationConfig]
    #
    # @!attribute connector_runtime_settings
    #   <p>The required connector runtime settings.</p>
    #
    #   @return [Array<ConnectorRuntimeSetting>]
    #
    # @!attribute supported_api_versions
    #   <p>A list of API versions that are supported by the connector.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute supported_operators
    #   <p>A list of operators supported by the connector.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute supported_write_operations
    #   <p>A list of write operations supported by the connector.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute connector_provisioning_type
    #   <p>The provisioning type used to register the connector.</p>
    #
    #   Enum, one of: ["LAMBDA"]
    #
    #   @return [String]
    #
    # @!attribute connector_provisioning_config
    #   <p>The configuration required for registering the connector.</p>
    #
    #   @return [ConnectorProvisioningConfig]
    #
    # @!attribute logo_url
    #   <p>Logo URL of the connector.</p>
    #
    #   @return [String]
    #
    # @!attribute registered_at
    #   <p>The date on which the connector was registered.</p>
    #
    #   @return [Time]
    #
    # @!attribute registered_by
    #   <p>Information about who registered the connector.</p>
    #
    #   @return [String]
    #
    ConnectorConfiguration = ::Struct.new(
      :can_use_as_source,
      :can_use_as_destination,
      :supported_destination_connectors,
      :supported_scheduling_frequencies,
      :is_private_link_enabled,
      :is_private_link_endpoint_url_required,
      :supported_trigger_types,
      :connector_metadata,
      :connector_type,
      :connector_label,
      :connector_description,
      :connector_owner,
      :connector_name,
      :connector_version,
      :connector_arn,
      :connector_modes,
      :authentication_config,
      :connector_runtime_settings,
      :supported_api_versions,
      :supported_operators,
      :supported_write_operations,
      :connector_provisioning_type,
      :connector_provisioning_config,
      :logo_url,
      :registered_at,
      :registered_by,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.can_use_as_source ||= false
        self.can_use_as_destination ||= false
        self.is_private_link_enabled ||= false
        self.is_private_link_endpoint_url_required ||= false
      end

    end

    # <p>Information about the registered connector.</p>
    #
    # @!attribute connector_description
    #   <p>A description about the registered connector.</p>
    #
    #   @return [String]
    #
    # @!attribute connector_name
    #   <p>The name of the connector.</p>
    #
    #   @return [String]
    #
    # @!attribute connector_owner
    #   <p>The owner of the connector.</p>
    #
    #   @return [String]
    #
    # @!attribute connector_version
    #   <p>The connector version.</p>
    #
    #   @return [String]
    #
    # @!attribute application_type
    #   <p>The application type of the connector.</p>
    #
    #   @return [String]
    #
    # @!attribute connector_type
    #   <p>The connector type.</p>
    #
    #   Enum, one of: ["Salesforce", "Singular", "Slack", "Redshift", "S3", "Marketo", "Googleanalytics", "Zendesk", "Servicenow", "Datadog", "Trendmicro", "Snowflake", "Dynatrace", "Infornexus", "Amplitude", "Veeva", "EventBridge", "LookoutMetrics", "Upsolver", "Honeycode", "CustomerProfiles", "SAPOData", "CustomConnector"]
    #
    #   @return [String]
    #
    # @!attribute connector_label
    #   <p>A label used for the connector.</p>
    #
    #   @return [String]
    #
    # @!attribute registered_at
    #   <p>The time at which the connector was registered.</p>
    #
    #   @return [Time]
    #
    # @!attribute registered_by
    #   <p>The user who registered the connector.</p>
    #
    #   @return [String]
    #
    # @!attribute connector_provisioning_type
    #   <p>The provisioning type that the connector uses.</p>
    #
    #   Enum, one of: ["LAMBDA"]
    #
    #   @return [String]
    #
    # @!attribute connector_modes
    #   <p>The connection mode that the connector supports.</p>
    #
    #   @return [Array<String>]
    #
    ConnectorDetail = ::Struct.new(
      :connector_description,
      :connector_name,
      :connector_owner,
      :connector_version,
      :application_type,
      :connector_type,
      :connector_label,
      :registered_at,
      :registered_by,
      :connector_provisioning_type,
      :connector_modes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The high-level entity that can be queried in Amazon AppFlow. For example, a
    #       Salesforce entity might be an <i>Account</i> or
    #       <i>Opportunity</i>, whereas a ServiceNow entity might be an
    #         <i>Incident</i>. </p>
    #
    # @!attribute name
    #   <p> The name of the connector entity. </p>
    #
    #   @return [String]
    #
    # @!attribute label
    #   <p> The label applied to the connector entity. </p>
    #
    #   @return [String]
    #
    # @!attribute has_nested_entities
    #   <p> Specifies whether the connector entity is a parent or a category and has more entities
    #         nested underneath it. If another call is made with <code>entitiesPath =
    #           "the_current_entity_name_with_hasNestedEntities_true"</code>, then it returns the nested
    #         entities underneath it. This provides a way to retrieve all supported entities in a recursive
    #         fashion. </p>
    #
    #   @return [Boolean]
    #
    ConnectorEntity = ::Struct.new(
      :name,
      :label,
      :has_nested_entities,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.has_nested_entities ||= false
      end

    end

    # <p> Describes the data model of a connector field. For example, for an
    #         <i>account</i> entity, the fields would be <i>account name</i>,
    #         <i>account ID</i>, and so on. </p>
    #
    # @!attribute identifier
    #   <p> The unique identifier of the connector field. </p>
    #
    #   @return [String]
    #
    # @!attribute parent_identifier
    #   <p>The parent identifier of the connector field.</p>
    #
    #   @return [String]
    #
    # @!attribute label
    #   <p> The label applied to a connector entity field. </p>
    #
    #   @return [String]
    #
    # @!attribute is_primary_key
    #   <p>Booelan value that indicates whether this field can be used as a primary key.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute default_value
    #   <p>Default value that can be assigned to this field.</p>
    #
    #   @return [String]
    #
    # @!attribute is_deprecated
    #   <p>Booelan value that indicates whether this field is deprecated or not.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute supported_field_type_details
    #   <p> Contains details regarding the supported <code>FieldType</code>, including the
    #         corresponding <code>filterOperators</code> and <code>supportedValues</code>. </p>
    #
    #   @return [SupportedFieldTypeDetails]
    #
    # @!attribute description
    #   <p> A description of the connector entity field. </p>
    #
    #   @return [String]
    #
    # @!attribute source_properties
    #   <p> The properties that can be applied to a field when the connector is being used as a
    #         source. </p>
    #
    #   @return [SourceFieldProperties]
    #
    # @!attribute destination_properties
    #   <p> The properties applied to a field when the connector is being used as a destination.
    #       </p>
    #
    #   @return [DestinationFieldProperties]
    #
    # @!attribute custom_properties
    #   <p>A map that has specific properties related to the ConnectorEntityField.</p>
    #
    #   @return [Hash<String, String>]
    #
    ConnectorEntityField = ::Struct.new(
      :identifier,
      :parent_identifier,
      :label,
      :is_primary_key,
      :default_value,
      :is_deprecated,
      :supported_field_type_details,
      :description,
      :source_properties,
      :destination_properties,
      :custom_properties,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.is_primary_key ||= false
        self.is_deprecated ||= false
      end

    end

    # <p> A structure to specify connector-specific metadata such as <code>oAuthScopes</code>,
    #         <code>supportedRegions</code>, <code>privateLinkServiceUrl</code>, and so on. </p>
    #
    # @!attribute amplitude
    #   <p> The connector metadata specific to Amplitude. </p>
    #
    #   @return [AmplitudeMetadata]
    #
    # @!attribute datadog
    #   <p> The connector metadata specific to Datadog. </p>
    #
    #   @return [DatadogMetadata]
    #
    # @!attribute dynatrace
    #   <p> The connector metadata specific to Dynatrace. </p>
    #
    #   @return [DynatraceMetadata]
    #
    # @!attribute google_analytics
    #   <p> The connector metadata specific to Google Analytics. </p>
    #
    #   @return [GoogleAnalyticsMetadata]
    #
    # @!attribute infor_nexus
    #   <p> The connector metadata specific to Infor Nexus. </p>
    #
    #   @return [InforNexusMetadata]
    #
    # @!attribute marketo
    #   <p> The connector metadata specific to Marketo. </p>
    #
    #   @return [MarketoMetadata]
    #
    # @!attribute redshift
    #   <p> The connector metadata specific to Amazon Redshift. </p>
    #
    #   @return [RedshiftMetadata]
    #
    # @!attribute s3
    #   <p> The connector metadata specific to Amazon S3. </p>
    #
    #   @return [S3Metadata]
    #
    # @!attribute salesforce
    #   <p> The connector metadata specific to Salesforce. </p>
    #
    #   @return [SalesforceMetadata]
    #
    # @!attribute service_now
    #   <p> The connector metadata specific to ServiceNow. </p>
    #
    #   @return [ServiceNowMetadata]
    #
    # @!attribute singular
    #   <p> The connector metadata specific to Singular. </p>
    #
    #   @return [SingularMetadata]
    #
    # @!attribute slack
    #   <p> The connector metadata specific to Slack. </p>
    #
    #   @return [SlackMetadata]
    #
    # @!attribute snowflake
    #   <p> The connector metadata specific to Snowflake. </p>
    #
    #   @return [SnowflakeMetadata]
    #
    # @!attribute trendmicro
    #   <p> The connector metadata specific to Trend Micro. </p>
    #
    #   @return [TrendmicroMetadata]
    #
    # @!attribute veeva
    #   <p> The connector metadata specific to Veeva. </p>
    #
    #   @return [VeevaMetadata]
    #
    # @!attribute zendesk
    #   <p> The connector metadata specific to Zendesk. </p>
    #
    #   @return [ZendeskMetadata]
    #
    # @!attribute event_bridge
    #   <p> The connector metadata specific to Amazon EventBridge. </p>
    #
    #   @return [EventBridgeMetadata]
    #
    # @!attribute upsolver
    #   <p> The connector metadata specific to Upsolver. </p>
    #
    #   @return [UpsolverMetadata]
    #
    # @!attribute customer_profiles
    #   <p> The connector metadata specific to Amazon Connect Customer Profiles. </p>
    #
    #   @return [CustomerProfilesMetadata]
    #
    # @!attribute honeycode
    #   <p> The connector metadata specific to Amazon Honeycode. </p>
    #
    #   @return [HoneycodeMetadata]
    #
    # @!attribute sapo_data
    #   <p> The connector metadata specific to SAPOData. </p>
    #
    #   @return [SAPODataMetadata]
    #
    ConnectorMetadata = ::Struct.new(
      :amplitude,
      :datadog,
      :dynatrace,
      :google_analytics,
      :infor_nexus,
      :marketo,
      :redshift,
      :s3,
      :salesforce,
      :service_now,
      :singular,
      :slack,
      :snowflake,
      :trendmicro,
      :veeva,
      :zendesk,
      :event_bridge,
      :upsolver,
      :customer_profiles,
      :honeycode,
      :sapo_data,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Used by select connectors for which the OAuth workflow is supported, such as Salesforce,
    #       Google Analytics, Marketo, Zendesk, and Slack. </p>
    #
    # @!attribute auth_code
    #   <p> The code provided by the connector when it has been authenticated via the connected app.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute redirect_uri
    #   <p> The URL to which the authentication server redirects the browser after authorization has
    #         been granted. </p>
    #
    #   @return [String]
    #
    ConnectorOAuthRequest = ::Struct.new(
      :auth_code,
      :redirect_uri,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The operation to be performed on the provided source fields. </p>
    #
    # @!attribute amplitude
    #   <p> The operation to be performed on the provided Amplitude source fields. </p>
    #
    #   Enum, one of: ["BETWEEN"]
    #
    #   @return [String]
    #
    # @!attribute datadog
    #   <p> The operation to be performed on the provided Datadog source fields. </p>
    #
    #   Enum, one of: ["PROJECTION", "BETWEEN", "EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #
    #   @return [String]
    #
    # @!attribute dynatrace
    #   <p> The operation to be performed on the provided Dynatrace source fields. </p>
    #
    #   Enum, one of: ["PROJECTION", "BETWEEN", "EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #
    #   @return [String]
    #
    # @!attribute google_analytics
    #   <p> The operation to be performed on the provided Google Analytics source fields. </p>
    #
    #   Enum, one of: ["PROJECTION", "BETWEEN"]
    #
    #   @return [String]
    #
    # @!attribute infor_nexus
    #   <p> The operation to be performed on the provided Infor Nexus source fields. </p>
    #
    #   Enum, one of: ["PROJECTION", "BETWEEN", "EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #
    #   @return [String]
    #
    # @!attribute marketo
    #   <p> The operation to be performed on the provided Marketo source fields. </p>
    #
    #   Enum, one of: ["PROJECTION", "LESS_THAN", "GREATER_THAN", "BETWEEN", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #
    #   @return [String]
    #
    # @!attribute s3
    #   <p> The operation to be performed on the provided Amazon S3 source fields. </p>
    #
    #   Enum, one of: ["PROJECTION", "LESS_THAN", "GREATER_THAN", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "NOT_EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #
    #   @return [String]
    #
    # @!attribute salesforce
    #   <p> The operation to be performed on the provided Salesforce source fields. </p>
    #
    #   Enum, one of: ["PROJECTION", "LESS_THAN", "CONTAINS", "GREATER_THAN", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "NOT_EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #
    #   @return [String]
    #
    # @!attribute service_now
    #   <p> The operation to be performed on the provided ServiceNow source fields. </p>
    #
    #   Enum, one of: ["PROJECTION", "CONTAINS", "LESS_THAN", "GREATER_THAN", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "NOT_EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #
    #   @return [String]
    #
    # @!attribute singular
    #   <p> The operation to be performed on the provided Singular source fields. </p>
    #
    #   Enum, one of: ["PROJECTION", "EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #
    #   @return [String]
    #
    # @!attribute slack
    #   <p> The operation to be performed on the provided Slack source fields. </p>
    #
    #   Enum, one of: ["PROJECTION", "LESS_THAN", "GREATER_THAN", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #
    #   @return [String]
    #
    # @!attribute trendmicro
    #   <p> The operation to be performed on the provided Trend Micro source fields. </p>
    #
    #   Enum, one of: ["PROJECTION", "EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #
    #   @return [String]
    #
    # @!attribute veeva
    #   <p> The operation to be performed on the provided Veeva source fields. </p>
    #
    #   Enum, one of: ["PROJECTION", "LESS_THAN", "GREATER_THAN", "CONTAINS", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "NOT_EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #
    #   @return [String]
    #
    # @!attribute zendesk
    #   <p> The operation to be performed on the provided Zendesk source fields. </p>
    #
    #   Enum, one of: ["PROJECTION", "GREATER_THAN", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #
    #   @return [String]
    #
    # @!attribute sapo_data
    #   <p> The operation to be performed on the provided SAPOData source fields. </p>
    #
    #   Enum, one of: ["PROJECTION", "LESS_THAN", "CONTAINS", "GREATER_THAN", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "NOT_EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #
    #   @return [String]
    #
    # @!attribute custom_connector
    #   <p>Operators supported by the custom connector.</p>
    #
    #   Enum, one of: ["PROJECTION", "LESS_THAN", "GREATER_THAN", "CONTAINS", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "NOT_EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #
    #   @return [String]
    #
    ConnectorOperator = ::Struct.new(
      :amplitude,
      :datadog,
      :dynatrace,
      :google_analytics,
      :infor_nexus,
      :marketo,
      :s3,
      :salesforce,
      :service_now,
      :singular,
      :slack,
      :trendmicro,
      :veeva,
      :zendesk,
      :sapo_data,
      :custom_connector,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Describes an instance of a connector. This includes the provided name, credentials ARN,
    #       connection-mode, and so on. To keep the API intuitive and extensible, the fields that are
    #       common to all types of connector profiles are explicitly specified at the top level. The rest
    #       of the connector-specific properties are available via the
    #         <code>connectorProfileProperties</code> field. </p>
    #
    # @!attribute connector_profile_arn
    #   <p> The Amazon Resource Name (ARN) of the connector profile. </p>
    #
    #   @return [String]
    #
    # @!attribute connector_profile_name
    #   <p> The name of the connector profile. The name is unique for each
    #           <code>ConnectorProfile</code> in the Amazon Web Services account. </p>
    #
    #   @return [String]
    #
    # @!attribute connector_type
    #   <p> The type of connector, such as Salesforce, Amplitude, and so on. </p>
    #
    #   Enum, one of: ["Salesforce", "Singular", "Slack", "Redshift", "S3", "Marketo", "Googleanalytics", "Zendesk", "Servicenow", "Datadog", "Trendmicro", "Snowflake", "Dynatrace", "Infornexus", "Amplitude", "Veeva", "EventBridge", "LookoutMetrics", "Upsolver", "Honeycode", "CustomerProfiles", "SAPOData", "CustomConnector"]
    #
    #   @return [String]
    #
    # @!attribute connector_label
    #   <p>The label for the connector profile being created.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_mode
    #   <p> Indicates the connection mode and if it is public or private. </p>
    #
    #   Enum, one of: ["Public", "Private"]
    #
    #   @return [String]
    #
    # @!attribute credentials_arn
    #   <p> The Amazon Resource Name (ARN) of the connector profile credentials. </p>
    #
    #   @return [String]
    #
    # @!attribute connector_profile_properties
    #   <p> The connector-specific properties of the profile configuration. </p>
    #
    #   @return [ConnectorProfileProperties]
    #
    # @!attribute created_at
    #   <p> Specifies when the connector profile was created. </p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_at
    #   <p> Specifies when the connector profile was last updated. </p>
    #
    #   @return [Time]
    #
    # @!attribute private_connection_provisioning_state
    #   <p> Specifies the private connection provisioning state. </p>
    #
    #   @return [PrivateConnectionProvisioningState]
    #
    ConnectorProfile = ::Struct.new(
      :connector_profile_arn,
      :connector_profile_name,
      :connector_type,
      :connector_label,
      :connection_mode,
      :credentials_arn,
      :connector_profile_properties,
      :created_at,
      :last_updated_at,
      :private_connection_provisioning_state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Defines the connector-specific configuration and credentials for the connector profile.
    #     </p>
    #
    # @!attribute connector_profile_properties
    #   <p> The connector-specific properties of the profile configuration. </p>
    #
    #   @return [ConnectorProfileProperties]
    #
    # @!attribute connector_profile_credentials
    #   <p> The connector-specific credentials required by each connector. </p>
    #
    #   @return [ConnectorProfileCredentials]
    #
    ConnectorProfileConfig = ::Struct.new(
      :connector_profile_properties,
      :connector_profile_credentials,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The connector-specific credentials required by a connector. </p>
    #
    # @!attribute amplitude
    #   <p> The connector-specific credentials required when using Amplitude. </p>
    #
    #   @return [AmplitudeConnectorProfileCredentials]
    #
    # @!attribute datadog
    #   <p> The connector-specific credentials required when using Datadog. </p>
    #
    #   @return [DatadogConnectorProfileCredentials]
    #
    # @!attribute dynatrace
    #   <p> The connector-specific credentials required when using Dynatrace. </p>
    #
    #   @return [DynatraceConnectorProfileCredentials]
    #
    # @!attribute google_analytics
    #   <p> The connector-specific credentials required when using Google Analytics. </p>
    #
    #   @return [GoogleAnalyticsConnectorProfileCredentials]
    #
    # @!attribute honeycode
    #   <p> The connector-specific credentials required when using Amazon Honeycode. </p>
    #
    #   @return [HoneycodeConnectorProfileCredentials]
    #
    # @!attribute infor_nexus
    #   <p> The connector-specific credentials required when using Infor Nexus. </p>
    #
    #   @return [InforNexusConnectorProfileCredentials]
    #
    # @!attribute marketo
    #   <p> The connector-specific credentials required when using Marketo. </p>
    #
    #   @return [MarketoConnectorProfileCredentials]
    #
    # @!attribute redshift
    #   <p> The connector-specific credentials required when using Amazon Redshift. </p>
    #
    #   @return [RedshiftConnectorProfileCredentials]
    #
    # @!attribute salesforce
    #   <p> The connector-specific credentials required when using Salesforce. </p>
    #
    #   @return [SalesforceConnectorProfileCredentials]
    #
    # @!attribute service_now
    #   <p> The connector-specific credentials required when using ServiceNow. </p>
    #
    #   @return [ServiceNowConnectorProfileCredentials]
    #
    # @!attribute singular
    #   <p> The connector-specific credentials required when using Singular. </p>
    #
    #   @return [SingularConnectorProfileCredentials]
    #
    # @!attribute slack
    #   <p> The connector-specific credentials required when using Slack. </p>
    #
    #   @return [SlackConnectorProfileCredentials]
    #
    # @!attribute snowflake
    #   <p> The connector-specific credentials required when using Snowflake. </p>
    #
    #   @return [SnowflakeConnectorProfileCredentials]
    #
    # @!attribute trendmicro
    #   <p> The connector-specific credentials required when using Trend Micro. </p>
    #
    #   @return [TrendmicroConnectorProfileCredentials]
    #
    # @!attribute veeva
    #   <p> The connector-specific credentials required when using Veeva. </p>
    #
    #   @return [VeevaConnectorProfileCredentials]
    #
    # @!attribute zendesk
    #   <p> The connector-specific credentials required when using Zendesk. </p>
    #
    #   @return [ZendeskConnectorProfileCredentials]
    #
    # @!attribute sapo_data
    #   <p> The connector-specific profile credentials required when using SAPOData. </p>
    #
    #   @return [SAPODataConnectorProfileCredentials]
    #
    # @!attribute custom_connector
    #   <p>The connector-specific profile credentials that are required when using the custom
    #         connector.</p>
    #
    #   @return [CustomConnectorProfileCredentials]
    #
    ConnectorProfileCredentials = ::Struct.new(
      :amplitude,
      :datadog,
      :dynatrace,
      :google_analytics,
      :honeycode,
      :infor_nexus,
      :marketo,
      :redshift,
      :salesforce,
      :service_now,
      :singular,
      :slack,
      :snowflake,
      :trendmicro,
      :veeva,
      :zendesk,
      :sapo_data,
      :custom_connector,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The connector-specific profile properties required by each connector. </p>
    #
    # @!attribute amplitude
    #   <p> The connector-specific properties required by Amplitude. </p>
    #
    #   @return [AmplitudeConnectorProfileProperties]
    #
    # @!attribute datadog
    #   <p> The connector-specific properties required by Datadog. </p>
    #
    #   @return [DatadogConnectorProfileProperties]
    #
    # @!attribute dynatrace
    #   <p> The connector-specific properties required by Dynatrace. </p>
    #
    #   @return [DynatraceConnectorProfileProperties]
    #
    # @!attribute google_analytics
    #   <p> The connector-specific properties required Google Analytics. </p>
    #
    #   @return [GoogleAnalyticsConnectorProfileProperties]
    #
    # @!attribute honeycode
    #   <p> The connector-specific properties required by Amazon Honeycode. </p>
    #
    #   @return [HoneycodeConnectorProfileProperties]
    #
    # @!attribute infor_nexus
    #   <p> The connector-specific properties required by Infor Nexus. </p>
    #
    #   @return [InforNexusConnectorProfileProperties]
    #
    # @!attribute marketo
    #   <p> The connector-specific properties required by Marketo. </p>
    #
    #   @return [MarketoConnectorProfileProperties]
    #
    # @!attribute redshift
    #   <p> The connector-specific properties required by Amazon Redshift. </p>
    #
    #   @return [RedshiftConnectorProfileProperties]
    #
    # @!attribute salesforce
    #   <p> The connector-specific properties required by Salesforce. </p>
    #
    #   @return [SalesforceConnectorProfileProperties]
    #
    # @!attribute service_now
    #   <p> The connector-specific properties required by serviceNow. </p>
    #
    #   @return [ServiceNowConnectorProfileProperties]
    #
    # @!attribute singular
    #   <p> The connector-specific properties required by Singular. </p>
    #
    #   @return [SingularConnectorProfileProperties]
    #
    # @!attribute slack
    #   <p> The connector-specific properties required by Slack. </p>
    #
    #   @return [SlackConnectorProfileProperties]
    #
    # @!attribute snowflake
    #   <p> The connector-specific properties required by Snowflake. </p>
    #
    #   @return [SnowflakeConnectorProfileProperties]
    #
    # @!attribute trendmicro
    #   <p> The connector-specific properties required by Trend Micro. </p>
    #
    #   @return [TrendmicroConnectorProfileProperties]
    #
    # @!attribute veeva
    #   <p> The connector-specific properties required by Veeva. </p>
    #
    #   @return [VeevaConnectorProfileProperties]
    #
    # @!attribute zendesk
    #   <p> The connector-specific properties required by Zendesk. </p>
    #
    #   @return [ZendeskConnectorProfileProperties]
    #
    # @!attribute sapo_data
    #   <p> The connector-specific profile properties required when using SAPOData. </p>
    #
    #   @return [SAPODataConnectorProfileProperties]
    #
    # @!attribute custom_connector
    #   <p>The properties required by the custom connector.</p>
    #
    #   @return [CustomConnectorProfileProperties]
    #
    ConnectorProfileProperties = ::Struct.new(
      :amplitude,
      :datadog,
      :dynatrace,
      :google_analytics,
      :honeycode,
      :infor_nexus,
      :marketo,
      :redshift,
      :salesforce,
      :service_now,
      :singular,
      :slack,
      :snowflake,
      :trendmicro,
      :veeva,
      :zendesk,
      :sapo_data,
      :custom_connector,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about the configuration of the connector being registered.</p>
    #
    # @!attribute lambda
    #   <p>Contains information about the configuration of the lambda which is being registered as
    #         the connector.</p>
    #
    #   @return [LambdaConnectorProvisioningConfig]
    #
    ConnectorProvisioningConfig = ::Struct.new(
      :lambda,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ConnectorProvisioningType
    #
    module ConnectorProvisioningType
      # No documentation available.
      #
      LAMBDA = "LAMBDA"
    end

    # <p>Contains information about the connector runtime settings that are required for flow
    #       execution.</p>
    #
    # @!attribute key
    #   <p>Contains value information about the connector runtime setting.</p>
    #
    #   @return [String]
    #
    # @!attribute data_type
    #   <p>Data type of the connector runtime setting.</p>
    #
    #   @return [String]
    #
    # @!attribute is_required
    #   <p>Indicates whether this connector runtime setting is required.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute label
    #   <p>A label used for connector runtime setting.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description about the connector runtime setting.</p>
    #
    #   @return [String]
    #
    # @!attribute scope
    #   <p>Indicates the scope of the connector runtime setting.</p>
    #
    #   @return [String]
    #
    # @!attribute connector_supplied_value_options
    #   <p>Contains default values for the connector runtime setting that are supplied by the
    #         connector.</p>
    #
    #   @return [Array<String>]
    #
    ConnectorRuntimeSetting = ::Struct.new(
      :key,
      :data_type,
      :is_required,
      :label,
      :description,
      :scope,
      :connector_supplied_value_options,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.is_required ||= false
      end

    end

    # <p> An error occurred when retrieving data from the connector endpoint. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ConnectorServerException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ConnectorType
    #
    module ConnectorType
      # No documentation available.
      #
      SALESFORCE = "Salesforce"

      # No documentation available.
      #
      SINGULAR = "Singular"

      # No documentation available.
      #
      SLACK = "Slack"

      # No documentation available.
      #
      REDSHIFT = "Redshift"

      # No documentation available.
      #
      S3 = "S3"

      # No documentation available.
      #
      MARKETO = "Marketo"

      # No documentation available.
      #
      GOOGLEANALYTICS = "Googleanalytics"

      # No documentation available.
      #
      ZENDESK = "Zendesk"

      # No documentation available.
      #
      SERVICENOW = "Servicenow"

      # No documentation available.
      #
      DATADOG = "Datadog"

      # No documentation available.
      #
      TRENDMICRO = "Trendmicro"

      # No documentation available.
      #
      SNOWFLAKE = "Snowflake"

      # No documentation available.
      #
      DYNATRACE = "Dynatrace"

      # No documentation available.
      #
      INFORNEXUS = "Infornexus"

      # No documentation available.
      #
      AMPLITUDE = "Amplitude"

      # No documentation available.
      #
      VEEVA = "Veeva"

      # No documentation available.
      #
      EVENTBRIDGE = "EventBridge"

      # No documentation available.
      #
      LOOKOUTMETRICS = "LookoutMetrics"

      # No documentation available.
      #
      UPSOLVER = "Upsolver"

      # No documentation available.
      #
      HONEYCODE = "Honeycode"

      # No documentation available.
      #
      CUSTOMERPROFILES = "CustomerProfiles"

      # No documentation available.
      #
      SAPODATA = "SAPOData"

      # No documentation available.
      #
      CUSTOMCONNECTOR = "CustomConnector"
    end

    # @!attribute connector_profile_name
    #   <p> The name of the connector profile. The name is unique for each
    #           <code>ConnectorProfile</code> in your Amazon Web Services account. </p>
    #
    #   @return [String]
    #
    # @!attribute kms_arn
    #   <p> The ARN (Amazon Resource Name) of the Key Management Service (KMS) key you provide for
    #         encryption. This is required if you do not want to use the Amazon AppFlow-managed KMS
    #         key. If you don't provide anything here, Amazon AppFlow uses the Amazon AppFlow-managed KMS key. </p>
    #
    #   @return [String]
    #
    # @!attribute connector_type
    #   <p> The type of connector, such as Salesforce, Amplitude, and so on. </p>
    #
    #   Enum, one of: ["Salesforce", "Singular", "Slack", "Redshift", "S3", "Marketo", "Googleanalytics", "Zendesk", "Servicenow", "Datadog", "Trendmicro", "Snowflake", "Dynatrace", "Infornexus", "Amplitude", "Veeva", "EventBridge", "LookoutMetrics", "Upsolver", "Honeycode", "CustomerProfiles", "SAPOData", "CustomConnector"]
    #
    #   @return [String]
    #
    # @!attribute connector_label
    #   <p>The label of the connector. The label is unique for each
    #           <code>ConnectorRegistration</code> in your Amazon Web Services account. Only needed if
    #         calling for CUSTOMCONNECTOR connector type/.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_mode
    #   <p> Indicates the connection mode and specifies whether it is public or private. Private
    #         flows use Amazon Web Services PrivateLink to route data over Amazon Web Services infrastructure
    #         without exposing it to the public internet. </p>
    #
    #   Enum, one of: ["Public", "Private"]
    #
    #   @return [String]
    #
    # @!attribute connector_profile_config
    #   <p> Defines the connector-specific configuration and credentials. </p>
    #
    #   @return [ConnectorProfileConfig]
    #
    CreateConnectorProfileInput = ::Struct.new(
      :connector_profile_name,
      :kms_arn,
      :connector_type,
      :connector_label,
      :connection_mode,
      :connector_profile_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connector_profile_arn
    #   <p> The Amazon Resource Name (ARN) of the connector profile. </p>
    #
    #   @return [String]
    #
    CreateConnectorProfileOutput = ::Struct.new(
      :connector_profile_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute flow_name
    #   <p> The specified name of the flow. Spaces are not allowed. Use underscores (_) or hyphens
    #         (-) only. </p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p> A description of the flow you want to create. </p>
    #
    #   @return [String]
    #
    # @!attribute kms_arn
    #   <p> The ARN (Amazon Resource Name) of the Key Management Service (KMS) key you provide for
    #         encryption. This is required if you do not want to use the Amazon AppFlow-managed KMS
    #         key. If you don't provide anything here, Amazon AppFlow uses the Amazon AppFlow-managed KMS key. </p>
    #
    #   @return [String]
    #
    # @!attribute trigger_config
    #   <p> The trigger settings that determine how and when the flow runs. </p>
    #
    #   @return [TriggerConfig]
    #
    # @!attribute source_flow_config
    #   <p> The configuration that controls how Amazon AppFlow retrieves data from the source
    #         connector. </p>
    #
    #   @return [SourceFlowConfig]
    #
    # @!attribute destination_flow_config_list
    #   <p> The configuration that controls how Amazon AppFlow places data in the destination
    #         connector. </p>
    #
    #   @return [Array<DestinationFlowConfig>]
    #
    # @!attribute tasks
    #   <p> A list of tasks that Amazon AppFlow performs while transferring the data in the
    #         flow run. </p>
    #
    #   @return [Array<Task>]
    #
    # @!attribute tags
    #   <p> The tags used to organize, track, or control access for your flow. </p>
    #
    #   @return [Hash<String, String>]
    #
    CreateFlowInput = ::Struct.new(
      :flow_name,
      :description,
      :kms_arn,
      :trigger_config,
      :source_flow_config,
      :destination_flow_config_list,
      :tasks,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute flow_arn
    #   <p> The flow's Amazon Resource Name (ARN). </p>
    #
    #   @return [String]
    #
    # @!attribute flow_status
    #   <p> Indicates the current status of the flow. </p>
    #
    #   Enum, one of: ["Active", "Deprecated", "Deleted", "Draft", "Errored", "Suspended"]
    #
    #   @return [String]
    #
    CreateFlowOutput = ::Struct.new(
      :flow_arn,
      :flow_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Configuration information required for custom authentication.</p>
    #
    # @!attribute custom_authentication_type
    #   <p>The authentication type that the custom connector uses.</p>
    #
    #   @return [String]
    #
    # @!attribute auth_parameters
    #   <p>Information about authentication parameters required for authentication.</p>
    #
    #   @return [Array<AuthParameter>]
    #
    CustomAuthConfig = ::Struct.new(
      :custom_authentication_type,
      :auth_parameters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The custom credentials required for custom authentication.</p>
    #
    # @!attribute custom_authentication_type
    #   <p>The custom authentication type that the connector uses.</p>
    #
    #   @return [String]
    #
    # @!attribute credentials_map
    #   <p>A map that holds custom authentication credentials.</p>
    #
    #   @return [Hash<String, String>]
    #
    CustomAuthCredentials = ::Struct.new(
      :custom_authentication_type,
      :credentials_map,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The properties that are applied when the custom connector is being used as a
    #       destination.</p>
    #
    # @!attribute entity_name
    #   <p>The entity specified in the custom connector as a destination in the flow.</p>
    #
    #   @return [String]
    #
    # @!attribute error_handling_config
    #   <p>The settings that determine how Amazon AppFlow handles an error when placing data in
    #         the custom connector as destination.</p>
    #
    #   @return [ErrorHandlingConfig]
    #
    # @!attribute write_operation_type
    #   <p>Specifies the type of write operation to be performed in the custom connector when it's
    #         used as destination.</p>
    #
    #   Enum, one of: ["INSERT", "UPSERT", "UPDATE", "DELETE"]
    #
    #   @return [String]
    #
    # @!attribute id_field_names
    #   <p>The name of the field that Amazon AppFlow uses as an ID when performing a write
    #         operation such as update, delete, or upsert.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute custom_properties
    #   <p>The custom properties that are specific to the connector when it's used as a destination
    #         in the flow.</p>
    #
    #   @return [Hash<String, String>]
    #
    CustomConnectorDestinationProperties = ::Struct.new(
      :entity_name,
      :error_handling_config,
      :write_operation_type,
      :id_field_names,
      :custom_properties,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The connector-specific profile credentials that are required when using the custom
    #       connector.</p>
    #
    # @!attribute authentication_type
    #   <p>The authentication type that the custom connector uses for authenticating while creating a
    #         connector profile.</p>
    #
    #   Enum, one of: ["OAUTH2", "APIKEY", "BASIC", "CUSTOM"]
    #
    #   @return [String]
    #
    # @!attribute basic
    #   <p>The basic credentials that are required for the authentication of the user.</p>
    #
    #   @return [BasicAuthCredentials]
    #
    # @!attribute oauth2
    #   <p>The OAuth 2.0 credentials required for the authentication of the user.</p>
    #
    #   @return [OAuth2Credentials]
    #
    # @!attribute api_key
    #   <p>The API keys required for the authentication of the user.</p>
    #
    #   @return [ApiKeyCredentials]
    #
    # @!attribute custom
    #   <p>If the connector uses the custom authentication mechanism, this holds the required
    #         credentials.</p>
    #
    #   @return [CustomAuthCredentials]
    #
    CustomConnectorProfileCredentials = ::Struct.new(
      :authentication_type,
      :basic,
      :oauth2,
      :api_key,
      :custom,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The profile properties required by the custom connector.</p>
    #
    # @!attribute profile_properties
    #   <p>A map of properties that are required to create a profile for the custom connector.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute o_auth2_properties
    #   <p>The OAuth 2.0 properties required for OAuth 2.0 authentication.</p>
    #
    #   @return [OAuth2Properties]
    #
    CustomConnectorProfileProperties = ::Struct.new(
      :profile_properties,
      :o_auth2_properties,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The properties that are applied when the custom connector is being used as a
    #       source.</p>
    #
    # @!attribute entity_name
    #   <p>The entity specified in the custom connector as a source in the flow.</p>
    #
    #   @return [String]
    #
    # @!attribute custom_properties
    #   <p>Custom properties that are required to use the custom connector as a source.</p>
    #
    #   @return [Hash<String, String>]
    #
    CustomConnectorSourceProperties = ::Struct.new(
      :entity_name,
      :custom_properties,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The properties that are applied when Amazon Connect Customer Profiles is used as a
    #       destination. </p>
    #
    # @!attribute domain_name
    #   <p> The unique name of the Amazon Connect Customer Profiles domain. </p>
    #
    #   @return [String]
    #
    # @!attribute object_type_name
    #   <p> The object specified in the Amazon Connect Customer Profiles flow destination.
    #       </p>
    #
    #   @return [String]
    #
    CustomerProfilesDestinationProperties = ::Struct.new(
      :domain_name,
      :object_type_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The connector metadata specific to Amazon Connect Customer Profiles. </p>
    #
    CustomerProfilesMetadata = ::Struct.new(
      nil,
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

    # Includes enum constants for DatadogConnectorOperator
    #
    module DatadogConnectorOperator
      # No documentation available.
      #
      PROJECTION = "PROJECTION"

      # No documentation available.
      #
      BETWEEN = "BETWEEN"

      # No documentation available.
      #
      EQUAL_TO = "EQUAL_TO"

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

    # <p> The connector-specific credentials required by Datadog. </p>
    #
    # @!attribute api_key
    #   <p> A unique alphanumeric identifier used to authenticate a user, developer, or calling
    #         program to your API. </p>
    #
    #   @return [String]
    #
    # @!attribute application_key
    #   <p> Application keys, in conjunction with your API key, give you full access to Datadog’s
    #         programmatic API. Application keys are associated with the user account that created them. The
    #         application key is used to log all requests made to the API. </p>
    #
    #   @return [String]
    #
    DatadogConnectorProfileCredentials = ::Struct.new(
      :api_key,
      :application_key,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Appflow::Types::DatadogConnectorProfileCredentials "\
          "api_key=\"[SENSITIVE]\", "\
          "application_key=#{application_key || 'nil'}>"
      end
    end

    # <p> The connector-specific profile properties required by Datadog. </p>
    #
    # @!attribute instance_url
    #   <p> The location of the Datadog resource. </p>
    #
    #   @return [String]
    #
    DatadogConnectorProfileProperties = ::Struct.new(
      :instance_url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The connector metadata specific to Datadog. </p>
    #
    DatadogMetadata = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The properties that are applied when Datadog is being used as a source. </p>
    #
    # @!attribute object
    #   <p> The object specified in the Datadog flow source. </p>
    #
    #   @return [String]
    #
    DatadogSourceProperties = ::Struct.new(
      :object,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connector_profile_name
    #   <p> The name of the connector profile. The name is unique for each
    #           <code>ConnectorProfile</code> in your account. </p>
    #
    #   @return [String]
    #
    # @!attribute force_delete
    #   <p> Indicates whether Amazon AppFlow should delete the profile, even if it is currently
    #         in use in one or more flows. </p>
    #
    #   @return [Boolean]
    #
    DeleteConnectorProfileInput = ::Struct.new(
      :connector_profile_name,
      :force_delete,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.force_delete ||= false
      end

    end

    DeleteConnectorProfileOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute flow_name
    #   <p> The specified name of the flow. Spaces are not allowed. Use underscores (_) or hyphens
    #         (-) only. </p>
    #
    #   @return [String]
    #
    # @!attribute force_delete
    #   <p> Indicates whether Amazon AppFlow should delete the flow, even if it is currently in
    #         use. </p>
    #
    #   @return [Boolean]
    #
    DeleteFlowInput = ::Struct.new(
      :flow_name,
      :force_delete,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.force_delete ||= false
      end

    end

    DeleteFlowOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connector_entity_name
    #   <p> The entity name for that connector. </p>
    #
    #   @return [String]
    #
    # @!attribute connector_type
    #   <p> The type of connector application, such as Salesforce, Amplitude, and so on. </p>
    #
    #   Enum, one of: ["Salesforce", "Singular", "Slack", "Redshift", "S3", "Marketo", "Googleanalytics", "Zendesk", "Servicenow", "Datadog", "Trendmicro", "Snowflake", "Dynatrace", "Infornexus", "Amplitude", "Veeva", "EventBridge", "LookoutMetrics", "Upsolver", "Honeycode", "CustomerProfiles", "SAPOData", "CustomConnector"]
    #
    #   @return [String]
    #
    # @!attribute connector_profile_name
    #   <p> The name of the connector profile. The name is unique for each
    #           <code>ConnectorProfile</code> in the Amazon Web Services account. </p>
    #
    #   @return [String]
    #
    # @!attribute api_version
    #   <p>The version of the API that's used by the connector.</p>
    #
    #   @return [String]
    #
    DescribeConnectorEntityInput = ::Struct.new(
      :connector_entity_name,
      :connector_type,
      :connector_profile_name,
      :api_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connector_entity_fields
    #   <p> Describes the fields for that connector entity. For example, for an
    #           <i>account</i> entity, the fields would be <i>account name</i>,
    #           <i>account ID</i>, and so on. </p>
    #
    #   @return [Array<ConnectorEntityField>]
    #
    DescribeConnectorEntityOutput = ::Struct.new(
      :connector_entity_fields,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connector_type
    #   <p>The connector type, such as CUSTOMCONNECTOR, Saleforce, Marketo. Please choose
    #         CUSTOMCONNECTOR for Lambda based custom connectors.</p>
    #
    #   Enum, one of: ["Salesforce", "Singular", "Slack", "Redshift", "S3", "Marketo", "Googleanalytics", "Zendesk", "Servicenow", "Datadog", "Trendmicro", "Snowflake", "Dynatrace", "Infornexus", "Amplitude", "Veeva", "EventBridge", "LookoutMetrics", "Upsolver", "Honeycode", "CustomerProfiles", "SAPOData", "CustomConnector"]
    #
    #   @return [String]
    #
    # @!attribute connector_label
    #   <p>The label of the connector. The label is unique for each
    #           <code>ConnectorRegistration</code> in your Amazon Web Services account. Only needed if
    #         calling for CUSTOMCONNECTOR connector type/.</p>
    #
    #   @return [String]
    #
    DescribeConnectorInput = ::Struct.new(
      :connector_type,
      :connector_label,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connector_configuration
    #   <p>Configuration info of all the connectors that the user requested.</p>
    #
    #   @return [ConnectorConfiguration]
    #
    DescribeConnectorOutput = ::Struct.new(
      :connector_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connector_profile_names
    #   <p> The name of the connector profile. The name is unique for each
    #           <code>ConnectorProfile</code> in the Amazon Web Services account. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute connector_type
    #   <p> The type of connector, such as Salesforce, Amplitude, and so on. </p>
    #
    #   Enum, one of: ["Salesforce", "Singular", "Slack", "Redshift", "S3", "Marketo", "Googleanalytics", "Zendesk", "Servicenow", "Datadog", "Trendmicro", "Snowflake", "Dynatrace", "Infornexus", "Amplitude", "Veeva", "EventBridge", "LookoutMetrics", "Upsolver", "Honeycode", "CustomerProfiles", "SAPOData", "CustomConnector"]
    #
    #   @return [String]
    #
    # @!attribute connector_label
    #   <p>The name of the connector. The name is unique for each <code>ConnectorRegistration</code>
    #         in your Amazon Web Services account. Only needed if calling for CUSTOMCONNECTOR connector
    #         type/.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p> Specifies the maximum number of items that should be returned in the result set. The
    #         default for <code>maxResults</code> is 20 (for all paginated API operations). </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p> The pagination token for the next page of data. </p>
    #
    #   @return [String]
    #
    DescribeConnectorProfilesInput = ::Struct.new(
      :connector_profile_names,
      :connector_type,
      :connector_label,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connector_profile_details
    #   <p> Returns information about the connector profiles associated with the flow. </p>
    #
    #   @return [Array<ConnectorProfile>]
    #
    # @!attribute next_token
    #   <p> The pagination token for the next page of data. If <code>nextToken=null</code>, this
    #         means that all records have been fetched. </p>
    #
    #   @return [String]
    #
    DescribeConnectorProfilesOutput = ::Struct.new(
      :connector_profile_details,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connector_types
    #   <p> The type of connector, such as Salesforce, Amplitude, and so on. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute max_results
    #   <p>The maximum number of items that should be returned in the result set. The default is
    #         20.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p> The pagination token for the next page of data. </p>
    #
    #   @return [String]
    #
    DescribeConnectorsInput = ::Struct.new(
      :connector_types,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connector_configurations
    #   <p> The configuration that is applied to the connectors used in the flow. </p>
    #
    #   @return [Hash<String, ConnectorConfiguration>]
    #
    # @!attribute connectors
    #   <p>Information about the connectors supported in Amazon AppFlow.</p>
    #
    #   @return [Array<ConnectorDetail>]
    #
    # @!attribute next_token
    #   <p> The pagination token for the next page of data. </p>
    #
    #   @return [String]
    #
    DescribeConnectorsOutput = ::Struct.new(
      :connector_configurations,
      :connectors,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute flow_name
    #   <p> The specified name of the flow. Spaces are not allowed. Use underscores (_) or hyphens
    #         (-) only. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p> Specifies the maximum number of items that should be returned in the result set. The
    #         default for <code>maxResults</code> is 20 (for all paginated API operations). </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p> The pagination token for the next page of data. </p>
    #
    #   @return [String]
    #
    DescribeFlowExecutionRecordsInput = ::Struct.new(
      :flow_name,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute flow_executions
    #   <p> Returns a list of all instances when this flow was run. </p>
    #
    #   @return [Array<ExecutionRecord>]
    #
    # @!attribute next_token
    #   <p> The pagination token for the next page of data. </p>
    #
    #   @return [String]
    #
    DescribeFlowExecutionRecordsOutput = ::Struct.new(
      :flow_executions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute flow_name
    #   <p> The specified name of the flow. Spaces are not allowed. Use underscores (_) or hyphens
    #         (-) only. </p>
    #
    #   @return [String]
    #
    DescribeFlowInput = ::Struct.new(
      :flow_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute flow_arn
    #   <p> The flow's Amazon Resource Name (ARN). </p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p> A description of the flow. </p>
    #
    #   @return [String]
    #
    # @!attribute flow_name
    #   <p> The specified name of the flow. Spaces are not allowed. Use underscores (_) or hyphens
    #         (-) only. </p>
    #
    #   @return [String]
    #
    # @!attribute kms_arn
    #   <p> The ARN (Amazon Resource Name) of the Key Management Service (KMS) key you provide for
    #         encryption. This is required if you do not want to use the Amazon AppFlow-managed KMS
    #         key. If you don't provide anything here, Amazon AppFlow uses the Amazon AppFlow-managed KMS key. </p>
    #
    #   @return [String]
    #
    # @!attribute flow_status
    #   <p> Indicates the current status of the flow. </p>
    #
    #   Enum, one of: ["Active", "Deprecated", "Deleted", "Draft", "Errored", "Suspended"]
    #
    #   @return [String]
    #
    # @!attribute flow_status_message
    #   <p> Contains an error message if the flow status is in a suspended or error state. This
    #         applies only to scheduled or event-triggered flows. </p>
    #
    #   @return [String]
    #
    # @!attribute source_flow_config
    #   <p> The configuration that controls how Amazon AppFlow retrieves data from the source
    #         connector. </p>
    #
    #   @return [SourceFlowConfig]
    #
    # @!attribute destination_flow_config_list
    #   <p> The configuration that controls how Amazon AppFlow transfers data to the
    #         destination connector. </p>
    #
    #   @return [Array<DestinationFlowConfig>]
    #
    # @!attribute last_run_execution_details
    #   <p> Describes the details of the most recent flow run. </p>
    #
    #   @return [ExecutionDetails]
    #
    # @!attribute trigger_config
    #   <p> The trigger settings that determine how and when the flow runs. </p>
    #
    #   @return [TriggerConfig]
    #
    # @!attribute tasks
    #   <p> A list of tasks that Amazon AppFlow performs while transferring the data in the
    #         flow run. </p>
    #
    #   @return [Array<Task>]
    #
    # @!attribute created_at
    #   <p> Specifies when the flow was created. </p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_at
    #   <p> Specifies when the flow was last updated. </p>
    #
    #   @return [Time]
    #
    # @!attribute created_by
    #   <p> The ARN of the user who created the flow. </p>
    #
    #   @return [String]
    #
    # @!attribute last_updated_by
    #   <p> Specifies the user name of the account that performed the most recent update. </p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p> The tags used to organize, track, or control access for your flow. </p>
    #
    #   @return [Hash<String, String>]
    #
    DescribeFlowOutput = ::Struct.new(
      :flow_arn,
      :description,
      :flow_name,
      :kms_arn,
      :flow_status,
      :flow_status_message,
      :source_flow_config,
      :destination_flow_config_list,
      :last_run_execution_details,
      :trigger_config,
      :tasks,
      :created_at,
      :last_updated_at,
      :created_by,
      :last_updated_by,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> This stores the information that is required to query a particular connector. </p>
    #
    # @!attribute redshift
    #   <p> The properties required to query Amazon Redshift. </p>
    #
    #   @return [RedshiftDestinationProperties]
    #
    # @!attribute s3
    #   <p> The properties required to query Amazon S3. </p>
    #
    #   @return [S3DestinationProperties]
    #
    # @!attribute salesforce
    #   <p> The properties required to query Salesforce. </p>
    #
    #   @return [SalesforceDestinationProperties]
    #
    # @!attribute snowflake
    #   <p> The properties required to query Snowflake. </p>
    #
    #   @return [SnowflakeDestinationProperties]
    #
    # @!attribute event_bridge
    #   <p> The properties required to query Amazon EventBridge. </p>
    #
    #   @return [EventBridgeDestinationProperties]
    #
    # @!attribute lookout_metrics
    #   <p> The properties required to query Amazon Lookout for Metrics. </p>
    #
    #   @return [LookoutMetricsDestinationProperties]
    #
    # @!attribute upsolver
    #   <p> The properties required to query Upsolver. </p>
    #
    #   @return [UpsolverDestinationProperties]
    #
    # @!attribute honeycode
    #   <p> The properties required to query Amazon Honeycode. </p>
    #
    #   @return [HoneycodeDestinationProperties]
    #
    # @!attribute customer_profiles
    #   <p> The properties required to query Amazon Connect Customer Profiles. </p>
    #
    #   @return [CustomerProfilesDestinationProperties]
    #
    # @!attribute zendesk
    #   <p>The properties required to query Zendesk.</p>
    #
    #   @return [ZendeskDestinationProperties]
    #
    # @!attribute marketo
    #   <p>The properties required to query Marketo.</p>
    #
    #   @return [MarketoDestinationProperties]
    #
    # @!attribute custom_connector
    #   <p>The properties that are required to query the custom Connector.</p>
    #
    #   @return [CustomConnectorDestinationProperties]
    #
    # @!attribute sapo_data
    #   <p>The properties required to query SAPOData.</p>
    #
    #   @return [SAPODataDestinationProperties]
    #
    DestinationConnectorProperties = ::Struct.new(
      :redshift,
      :s3,
      :salesforce,
      :snowflake,
      :event_bridge,
      :lookout_metrics,
      :upsolver,
      :honeycode,
      :customer_profiles,
      :zendesk,
      :marketo,
      :custom_connector,
      :sapo_data,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The properties that can be applied to a field when connector is being used as a
    #       destination. </p>
    #
    # @!attribute is_creatable
    #   <p> Specifies if the destination field can be created by the current user. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute is_nullable
    #   <p> Specifies if the destination field can have a null value. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute is_upsertable
    #   <p> Specifies if the flow run can either insert new rows in the destination field if they do
    #         not already exist, or update them if they do. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute is_updatable
    #   <p> Specifies whether the field can be updated during an <code>UPDATE</code> or
    #           <code>UPSERT</code> write operation. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute is_defaulted_on_create
    #   <p>Specifies whether the field can use the default value during a Create operation.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute supported_write_operations
    #   <p> A list of supported write operations. For each write operation listed, this field can be
    #         used in <code>idFieldNames</code> when that write operation is present as a destination
    #         option. </p>
    #
    #   @return [Array<String>]
    #
    DestinationFieldProperties = ::Struct.new(
      :is_creatable,
      :is_nullable,
      :is_upsertable,
      :is_updatable,
      :is_defaulted_on_create,
      :supported_write_operations,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.is_creatable ||= false
        self.is_nullable ||= false
        self.is_upsertable ||= false
        self.is_updatable ||= false
        self.is_defaulted_on_create ||= false
      end

    end

    # <p> Contains information about the configuration of destination connectors present in the
    #       flow. </p>
    #
    # @!attribute connector_type
    #   <p> The type of connector, such as Salesforce, Amplitude, and so on. </p>
    #
    #   Enum, one of: ["Salesforce", "Singular", "Slack", "Redshift", "S3", "Marketo", "Googleanalytics", "Zendesk", "Servicenow", "Datadog", "Trendmicro", "Snowflake", "Dynatrace", "Infornexus", "Amplitude", "Veeva", "EventBridge", "LookoutMetrics", "Upsolver", "Honeycode", "CustomerProfiles", "SAPOData", "CustomConnector"]
    #
    #   @return [String]
    #
    # @!attribute api_version
    #   <p>The API version that the destination connector uses.</p>
    #
    #   @return [String]
    #
    # @!attribute connector_profile_name
    #   <p> The name of the connector profile. This name must be unique for each connector profile in
    #         the Amazon Web Services account. </p>
    #
    #   @return [String]
    #
    # @!attribute destination_connector_properties
    #   <p> This stores the information that is required to query a particular connector. </p>
    #
    #   @return [DestinationConnectorProperties]
    #
    DestinationFlowConfig = ::Struct.new(
      :connector_type,
      :api_version,
      :connector_profile_name,
      :destination_connector_properties,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DynatraceConnectorOperator
    #
    module DynatraceConnectorOperator
      # No documentation available.
      #
      PROJECTION = "PROJECTION"

      # No documentation available.
      #
      BETWEEN = "BETWEEN"

      # No documentation available.
      #
      EQUAL_TO = "EQUAL_TO"

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

    # <p> The connector-specific profile credentials required by Dynatrace. </p>
    #
    # @!attribute api_token
    #   <p> The API tokens used by Dynatrace API to authenticate various API calls. </p>
    #
    #   @return [String]
    #
    DynatraceConnectorProfileCredentials = ::Struct.new(
      :api_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The connector-specific profile properties required by Dynatrace. </p>
    #
    # @!attribute instance_url
    #   <p> The location of the Dynatrace resource. </p>
    #
    #   @return [String]
    #
    DynatraceConnectorProfileProperties = ::Struct.new(
      :instance_url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The connector metadata specific to Dynatrace. </p>
    #
    DynatraceMetadata = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The properties that are applied when Dynatrace is being used as a source. </p>
    #
    # @!attribute object
    #   <p> The object specified in the Dynatrace flow source. </p>
    #
    #   @return [String]
    #
    DynatraceSourceProperties = ::Struct.new(
      :object,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The settings that determine how Amazon AppFlow handles an error when placing data
    #       in the destination. For example, this setting would determine if the flow should fail after
    #       one insertion error, or continue and attempt to insert every record regardless of the initial
    #       failure. <code>ErrorHandlingConfig</code> is a part of the destination connector details.
    #     </p>
    #
    # @!attribute fail_on_first_destination_error
    #   <p> Specifies if the flow should fail after the first instance of a failure when attempting
    #         to place data in the destination. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute bucket_prefix
    #   <p> Specifies the Amazon S3 bucket prefix. </p>
    #
    #   @return [String]
    #
    # @!attribute bucket_name
    #   <p> Specifies the name of the Amazon S3 bucket. </p>
    #
    #   @return [String]
    #
    ErrorHandlingConfig = ::Struct.new(
      :fail_on_first_destination_error,
      :bucket_prefix,
      :bucket_name,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.fail_on_first_destination_error ||= false
      end

    end

    # <p> Provides details in the event of a failed flow, including the failure count and the
    #       related error messages. </p>
    #
    # @!attribute put_failures_count
    #   <p> Specifies the failure count for the attempted flow. </p>
    #
    #   @return [Integer]
    #
    # @!attribute execution_message
    #   <p> Specifies the error message that appears if a flow fails. </p>
    #
    #   @return [String]
    #
    ErrorInfo = ::Struct.new(
      :put_failures_count,
      :execution_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The properties that are applied when Amazon EventBridge is being used as a
    #       destination. </p>
    #
    # @!attribute object
    #   <p> The object specified in the Amazon EventBridge flow destination. </p>
    #
    #   @return [String]
    #
    # @!attribute error_handling_config
    #   <p> The settings that determine how Amazon AppFlow handles an error when placing data
    #         in the destination. For example, this setting would determine if the flow should fail after
    #         one insertion error, or continue and attempt to insert every record regardless of the initial
    #         failure. <code>ErrorHandlingConfig</code> is a part of the destination connector details.
    #       </p>
    #
    #   @return [ErrorHandlingConfig]
    #
    EventBridgeDestinationProperties = ::Struct.new(
      :object,
      :error_handling_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The connector metadata specific to Amazon EventBridge. </p>
    #
    EventBridgeMetadata = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Describes the details of the flow run, including the timestamp, status, and message.
    #     </p>
    #
    # @!attribute most_recent_execution_message
    #   <p> Describes the details of the most recent flow run. </p>
    #
    #   @return [String]
    #
    # @!attribute most_recent_execution_time
    #   <p> Specifies the time of the most recent flow run. </p>
    #
    #   @return [Time]
    #
    # @!attribute most_recent_execution_status
    #   <p> Specifies the status of the most recent flow run. </p>
    #
    #   Enum, one of: ["InProgress", "Successful", "Error"]
    #
    #   @return [String]
    #
    ExecutionDetails = ::Struct.new(
      :most_recent_execution_message,
      :most_recent_execution_time,
      :most_recent_execution_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Specifies information about the past flow run instances for a given flow. </p>
    #
    # @!attribute execution_id
    #   <p> Specifies the identifier of the given flow run. </p>
    #
    #   @return [String]
    #
    # @!attribute execution_status
    #   <p> Specifies the flow run status and whether it is in progress, has completed successfully,
    #         or has failed. </p>
    #
    #   Enum, one of: ["InProgress", "Successful", "Error"]
    #
    #   @return [String]
    #
    # @!attribute execution_result
    #   <p> Describes the result of the given flow run. </p>
    #
    #   @return [ExecutionResult]
    #
    # @!attribute started_at
    #   <p> Specifies the start time of the flow run. </p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_at
    #   <p> Specifies the time of the most recent update. </p>
    #
    #   @return [Time]
    #
    # @!attribute data_pull_start_time
    #   <p> The timestamp that determines the first new or updated record to be transferred in the
    #         flow run. </p>
    #
    #   @return [Time]
    #
    # @!attribute data_pull_end_time
    #   <p> The timestamp that indicates the last new or updated record to be transferred in the flow
    #         run. </p>
    #
    #   @return [Time]
    #
    ExecutionRecord = ::Struct.new(
      :execution_id,
      :execution_status,
      :execution_result,
      :started_at,
      :last_updated_at,
      :data_pull_start_time,
      :data_pull_end_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Specifies the end result of the flow run. </p>
    #
    # @!attribute error_info
    #   <p> Provides any error message information related to the flow run. </p>
    #
    #   @return [ErrorInfo]
    #
    # @!attribute bytes_processed
    #   <p> The total number of bytes processed by the flow run. </p>
    #
    #   @return [Integer]
    #
    # @!attribute bytes_written
    #   <p> The total number of bytes written as a result of the flow run. </p>
    #
    #   @return [Integer]
    #
    # @!attribute records_processed
    #   <p> The number of records processed in the flow run. </p>
    #
    #   @return [Integer]
    #
    ExecutionResult = ::Struct.new(
      :error_info,
      :bytes_processed,
      :bytes_written,
      :records_processed,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ExecutionStatus
    #
    module ExecutionStatus
      # No documentation available.
      #
      INPROGRESS = "InProgress"

      # No documentation available.
      #
      SUCCESSFUL = "Successful"

      # No documentation available.
      #
      ERROR = "Error"
    end

    # <p> Contains details regarding the supported field type and the operators that can be applied
    #       for filtering. </p>
    #
    # @!attribute field_type
    #   <p> The type of field, such as string, integer, date, and so on. </p>
    #
    #   @return [String]
    #
    # @!attribute filter_operators
    #   <p> The list of operators supported by a field. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute supported_values
    #   <p> The list of values that a field can contain. For example, a Boolean
    #           <code>fieldType</code> can have two values: "true" and "false". </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute value_regex_pattern
    #   <p>The regular expression pattern for the field name.</p>
    #
    #   @return [String]
    #
    # @!attribute supported_date_format
    #   <p>The date format that the field supports.</p>
    #
    #   @return [String]
    #
    # @!attribute field_value_range
    #   <p>The range of values this field can hold.</p>
    #
    #   @return [Range]
    #
    # @!attribute field_length_range
    #   <p>This is the allowable length range for this field's value.</p>
    #
    #   @return [Range]
    #
    FieldTypeDetails = ::Struct.new(
      :field_type,
      :filter_operators,
      :supported_values,
      :value_regex_pattern,
      :supported_date_format,
      :field_value_range,
      :field_length_range,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FileType
    #
    module FileType
      # No documentation available.
      #
      CSV = "CSV"

      # No documentation available.
      #
      JSON = "JSON"

      # No documentation available.
      #
      PARQUET = "PARQUET"
    end

    # <p> The properties of the flow, such as its source, destination, trigger type, and so on.
    #     </p>
    #
    # @!attribute flow_arn
    #   <p> The flow's Amazon Resource Name (ARN). </p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p> A user-entered description of the flow. </p>
    #
    #   @return [String]
    #
    # @!attribute flow_name
    #   <p> The specified name of the flow. Spaces are not allowed. Use underscores (_) or hyphens
    #         (-) only. </p>
    #
    #   @return [String]
    #
    # @!attribute flow_status
    #   <p> Indicates the current status of the flow. </p>
    #
    #   Enum, one of: ["Active", "Deprecated", "Deleted", "Draft", "Errored", "Suspended"]
    #
    #   @return [String]
    #
    # @!attribute source_connector_type
    #   <p> Specifies the source connector type, such as Salesforce, Amazon S3, Amplitude,
    #         and so on. </p>
    #
    #   Enum, one of: ["Salesforce", "Singular", "Slack", "Redshift", "S3", "Marketo", "Googleanalytics", "Zendesk", "Servicenow", "Datadog", "Trendmicro", "Snowflake", "Dynatrace", "Infornexus", "Amplitude", "Veeva", "EventBridge", "LookoutMetrics", "Upsolver", "Honeycode", "CustomerProfiles", "SAPOData", "CustomConnector"]
    #
    #   @return [String]
    #
    # @!attribute source_connector_label
    #   <p>The label of the source connector in the flow.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_connector_type
    #   <p> Specifies the destination connector type, such as Salesforce, Amazon S3,
    #         Amplitude, and so on. </p>
    #
    #   Enum, one of: ["Salesforce", "Singular", "Slack", "Redshift", "S3", "Marketo", "Googleanalytics", "Zendesk", "Servicenow", "Datadog", "Trendmicro", "Snowflake", "Dynatrace", "Infornexus", "Amplitude", "Veeva", "EventBridge", "LookoutMetrics", "Upsolver", "Honeycode", "CustomerProfiles", "SAPOData", "CustomConnector"]
    #
    #   @return [String]
    #
    # @!attribute destination_connector_label
    #   <p>The label of the destination connector in the flow.</p>
    #
    #   @return [String]
    #
    # @!attribute trigger_type
    #   <p> Specifies the type of flow trigger. This can be <code>OnDemand</code>,
    #           <code>Scheduled</code>, or <code>Event</code>. </p>
    #
    #   Enum, one of: ["Scheduled", "Event", "OnDemand"]
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p> Specifies when the flow was created. </p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_at
    #   <p> Specifies when the flow was last updated. </p>
    #
    #   @return [Time]
    #
    # @!attribute created_by
    #   <p> The ARN of the user who created the flow. </p>
    #
    #   @return [String]
    #
    # @!attribute last_updated_by
    #   <p> Specifies the account user name that most recently updated the flow. </p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p> The tags used to organize, track, or control access for your flow. </p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute last_run_execution_details
    #   <p> Describes the details of the most recent flow run. </p>
    #
    #   @return [ExecutionDetails]
    #
    FlowDefinition = ::Struct.new(
      :flow_arn,
      :description,
      :flow_name,
      :flow_status,
      :source_connector_type,
      :source_connector_label,
      :destination_connector_type,
      :destination_connector_label,
      :trigger_type,
      :created_at,
      :last_updated_at,
      :created_by,
      :last_updated_by,
      :tags,
      :last_run_execution_details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FlowStatus
    #
    module FlowStatus
      # No documentation available.
      #
      ACTIVE = "Active"

      # No documentation available.
      #
      DEPRECATED = "Deprecated"

      # No documentation available.
      #
      DELETED = "Deleted"

      # No documentation available.
      #
      DRAFT = "Draft"

      # No documentation available.
      #
      ERRORED = "Errored"

      # No documentation available.
      #
      SUSPENDED = "Suspended"
    end

    # Includes enum constants for GoogleAnalyticsConnectorOperator
    #
    module GoogleAnalyticsConnectorOperator
      # No documentation available.
      #
      PROJECTION = "PROJECTION"

      # No documentation available.
      #
      BETWEEN = "BETWEEN"
    end

    # <p> The connector-specific profile credentials required by Google Analytics. </p>
    #
    # @!attribute client_id
    #   <p> The identifier for the desired client. </p>
    #
    #   @return [String]
    #
    # @!attribute client_secret
    #   <p> The client secret used by the OAuth client to authenticate to the authorization server.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute access_token
    #   <p> The credentials used to access protected Google Analytics resources. </p>
    #
    #   @return [String]
    #
    # @!attribute refresh_token
    #   <p> The credentials used to acquire new access tokens. This is required only for OAuth2
    #         access tokens, and is not required for OAuth1 access tokens. </p>
    #
    #   @return [String]
    #
    # @!attribute o_auth_request
    #   <p> The OAuth requirement needed to request security tokens from the connector endpoint.
    #       </p>
    #
    #   @return [ConnectorOAuthRequest]
    #
    GoogleAnalyticsConnectorProfileCredentials = ::Struct.new(
      :client_id,
      :client_secret,
      :access_token,
      :refresh_token,
      :o_auth_request,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Appflow::Types::GoogleAnalyticsConnectorProfileCredentials "\
          "client_id=#{client_id || 'nil'}, "\
          "client_secret=\"[SENSITIVE]\", "\
          "access_token=\"[SENSITIVE]\", "\
          "refresh_token=#{refresh_token || 'nil'}, "\
          "o_auth_request=#{o_auth_request || 'nil'}>"
      end
    end

    # <p> The connector-specific profile properties required by Google Analytics. </p>
    #
    GoogleAnalyticsConnectorProfileProperties = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The connector metadata specific to Google Analytics. </p>
    #
    # @!attribute o_auth_scopes
    #   <p> The desired authorization scope for the Google Analytics account. </p>
    #
    #   @return [Array<String>]
    #
    GoogleAnalyticsMetadata = ::Struct.new(
      :o_auth_scopes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The properties that are applied when Google Analytics is being used as a source. </p>
    #
    # @!attribute object
    #   <p> The object specified in the Google Analytics flow source. </p>
    #
    #   @return [String]
    #
    GoogleAnalyticsSourceProperties = ::Struct.new(
      :object,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The connector-specific credentials required when using Amazon Honeycode. </p>
    #
    # @!attribute access_token
    #   <p> The credentials used to access protected Amazon Honeycode resources. </p>
    #
    #   @return [String]
    #
    # @!attribute refresh_token
    #   <p> The credentials used to acquire new access tokens. </p>
    #
    #   @return [String]
    #
    # @!attribute o_auth_request
    #   <p> Used by select connectors for which the OAuth workflow is supported, such as Salesforce,
    #         Google Analytics, Marketo, Zendesk, and Slack. </p>
    #
    #   @return [ConnectorOAuthRequest]
    #
    HoneycodeConnectorProfileCredentials = ::Struct.new(
      :access_token,
      :refresh_token,
      :o_auth_request,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Appflow::Types::HoneycodeConnectorProfileCredentials "\
          "access_token=\"[SENSITIVE]\", "\
          "refresh_token=#{refresh_token || 'nil'}, "\
          "o_auth_request=#{o_auth_request || 'nil'}>"
      end
    end

    # <p> The connector-specific properties required when using Amazon Honeycode. </p>
    #
    HoneycodeConnectorProfileProperties = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The properties that are applied when Amazon Honeycode is used as a destination. </p>
    #
    # @!attribute object
    #   <p> The object specified in the Amazon Honeycode flow destination. </p>
    #
    #   @return [String]
    #
    # @!attribute error_handling_config
    #   <p> The settings that determine how Amazon AppFlow handles an error when placing data
    #         in the destination. For example, this setting would determine if the flow should fail after
    #         one insertion error, or continue and attempt to insert every record regardless of the initial
    #         failure. <code>ErrorHandlingConfig</code> is a part of the destination connector details.
    #       </p>
    #
    #   @return [ErrorHandlingConfig]
    #
    HoneycodeDestinationProperties = ::Struct.new(
      :object,
      :error_handling_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The connector metadata specific to Amazon Honeycode. </p>
    #
    # @!attribute o_auth_scopes
    #   <p> The desired authorization scope for the Amazon Honeycode account. </p>
    #
    #   @return [Array<String>]
    #
    HoneycodeMetadata = ::Struct.new(
      :o_auth_scopes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Specifies the configuration used when importing incremental records from the source.
    #     </p>
    #
    # @!attribute datetime_type_field_name
    #   <p> A field that specifies the date time or timestamp field as the criteria to use when
    #         importing incremental records from the source. </p>
    #
    #   @return [String]
    #
    IncrementalPullConfig = ::Struct.new(
      :datetime_type_field_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for InforNexusConnectorOperator
    #
    module InforNexusConnectorOperator
      # No documentation available.
      #
      PROJECTION = "PROJECTION"

      # No documentation available.
      #
      BETWEEN = "BETWEEN"

      # No documentation available.
      #
      EQUAL_TO = "EQUAL_TO"

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

    # <p> The connector-specific profile credentials required by Infor Nexus. </p>
    #
    # @!attribute access_key_id
    #   <p> The Access Key portion of the credentials. </p>
    #
    #   @return [String]
    #
    # @!attribute user_id
    #   <p> The identifier for the user. </p>
    #
    #   @return [String]
    #
    # @!attribute secret_access_key
    #   <p> The secret key used to sign requests. </p>
    #
    #   @return [String]
    #
    # @!attribute datakey
    #   <p> The encryption keys used to encrypt data. </p>
    #
    #   @return [String]
    #
    InforNexusConnectorProfileCredentials = ::Struct.new(
      :access_key_id,
      :user_id,
      :secret_access_key,
      :datakey,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Appflow::Types::InforNexusConnectorProfileCredentials "\
          "access_key_id=\"[SENSITIVE]\", "\
          "user_id=#{user_id || 'nil'}, "\
          "secret_access_key=#{secret_access_key || 'nil'}, "\
          "datakey=#{datakey || 'nil'}>"
      end
    end

    # <p> The connector-specific profile properties required by Infor Nexus. </p>
    #
    # @!attribute instance_url
    #   <p> The location of the Infor Nexus resource. </p>
    #
    #   @return [String]
    #
    InforNexusConnectorProfileProperties = ::Struct.new(
      :instance_url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The connector metadata specific to Infor Nexus. </p>
    #
    InforNexusMetadata = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The properties that are applied when Infor Nexus is being used as a source. </p>
    #
    # @!attribute object
    #   <p> The object specified in the Infor Nexus flow source. </p>
    #
    #   @return [String]
    #
    InforNexusSourceProperties = ::Struct.new(
      :object,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> An internal service error occurred during the processing of your request. Try again
    #       later. </p>
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

    # <p>Contains information about the configuration of the lambda which is being registered as
    #       the connector.</p>
    #
    # @!attribute lambda_arn
    #   <p>Lambda ARN of the connector being registered.</p>
    #
    #   @return [String]
    #
    LambdaConnectorProvisioningConfig = ::Struct.new(
      :lambda_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connector_profile_name
    #   <p> The name of the connector profile. The name is unique for each
    #           <code>ConnectorProfile</code> in the Amazon Web Services account, and is used to query the
    #         downstream connector. </p>
    #
    #   @return [String]
    #
    # @!attribute connector_type
    #   <p> The type of connector, such as Salesforce, Amplitude, and so on. </p>
    #
    #   Enum, one of: ["Salesforce", "Singular", "Slack", "Redshift", "S3", "Marketo", "Googleanalytics", "Zendesk", "Servicenow", "Datadog", "Trendmicro", "Snowflake", "Dynatrace", "Infornexus", "Amplitude", "Veeva", "EventBridge", "LookoutMetrics", "Upsolver", "Honeycode", "CustomerProfiles", "SAPOData", "CustomConnector"]
    #
    #   @return [String]
    #
    # @!attribute entities_path
    #   <p> This optional parameter is specific to connector implementation. Some connectors support
    #         multiple levels or categories of entities. You can find out the list of roots for such
    #         providers by sending a request without the <code>entitiesPath</code> parameter. If the
    #         connector supports entities at different roots, this initial request returns the list of
    #         roots. Otherwise, this request returns all entities supported by the provider. </p>
    #
    #   @return [String]
    #
    # @!attribute api_version
    #   <p>The version of the API that's used by the connector.</p>
    #
    #   @return [String]
    #
    ListConnectorEntitiesInput = ::Struct.new(
      :connector_profile_name,
      :connector_type,
      :entities_path,
      :api_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connector_entity_map
    #   <p> The response of <code>ListConnectorEntities</code> lists entities grouped by category.
    #         This map's key represents the group name, and its value contains the list of entities
    #         belonging to that group. </p>
    #
    #   @return [Hash<String, Array<ConnectorEntity>>]
    #
    ListConnectorEntitiesOutput = ::Struct.new(
      :connector_entity_map,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>Specifies the maximum number of items that should be returned in the result set. The
    #         default for <code>maxResults</code> is 20 (for all paginated API operations).</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The pagination token for the next page of data.</p>
    #
    #   @return [String]
    #
    ListConnectorsInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connectors
    #   <p>Contains information about the connectors supported by Amazon AppFlow.</p>
    #
    #   @return [Array<ConnectorDetail>]
    #
    # @!attribute next_token
    #   <p>The pagination token for the next page of data. If nextToken=null, this means that all
    #         records have been fetched.</p>
    #
    #   @return [String]
    #
    ListConnectorsOutput = ::Struct.new(
      :connectors,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p> Specifies the maximum number of items that should be returned in the result set. </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p> The pagination token for next page of data. </p>
    #
    #   @return [String]
    #
    ListFlowsInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute flows
    #   <p> The list of flows associated with your account. </p>
    #
    #   @return [Array<FlowDefinition>]
    #
    # @!attribute next_token
    #   <p> The pagination token for next page of data. </p>
    #
    #   @return [String]
    #
    ListFlowsOutput = ::Struct.new(
      :flows,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p> The Amazon Resource Name (ARN) of the specified flow. </p>
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
    #   <p> The tags used to organize, track, or control access for your flow. </p>
    #
    #   @return [Hash<String, String>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The properties that are applied when Amazon Lookout for Metrics is used as a destination.
    #     </p>
    #
    LookoutMetricsDestinationProperties = ::Struct.new(
      nil,
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

    # <p> The connector-specific profile credentials required by Marketo. </p>
    #
    # @!attribute client_id
    #   <p> The identifier for the desired client. </p>
    #
    #   @return [String]
    #
    # @!attribute client_secret
    #   <p> The client secret used by the OAuth client to authenticate to the authorization server.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute access_token
    #   <p> The credentials used to access protected Marketo resources. </p>
    #
    #   @return [String]
    #
    # @!attribute o_auth_request
    #   <p> The OAuth requirement needed to request security tokens from the connector endpoint.
    #       </p>
    #
    #   @return [ConnectorOAuthRequest]
    #
    MarketoConnectorProfileCredentials = ::Struct.new(
      :client_id,
      :client_secret,
      :access_token,
      :o_auth_request,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Appflow::Types::MarketoConnectorProfileCredentials "\
          "client_id=#{client_id || 'nil'}, "\
          "client_secret=\"[SENSITIVE]\", "\
          "access_token=\"[SENSITIVE]\", "\
          "o_auth_request=#{o_auth_request || 'nil'}>"
      end
    end

    # <p> The connector-specific profile properties required when using Marketo. </p>
    #
    # @!attribute instance_url
    #   <p> The location of the Marketo resource. </p>
    #
    #   @return [String]
    #
    MarketoConnectorProfileProperties = ::Struct.new(
      :instance_url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The properties that Amazon AppFlow applies when you use Marketo as a flow
    #       destination.</p>
    #
    # @!attribute object
    #   <p>The object specified in the Marketo flow destination.</p>
    #
    #   @return [String]
    #
    # @!attribute error_handling_config
    #   <p> The settings that determine how Amazon AppFlow handles an error when placing data
    #         in the destination. For example, this setting would determine if the flow should fail after
    #         one insertion error, or continue and attempt to insert every record regardless of the initial
    #         failure. <code>ErrorHandlingConfig</code> is a part of the destination connector details.
    #       </p>
    #
    #   @return [ErrorHandlingConfig]
    #
    MarketoDestinationProperties = ::Struct.new(
      :object,
      :error_handling_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The connector metadata specific to Marketo. </p>
    #
    MarketoMetadata = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The properties that are applied when Marketo is being used as a source. </p>
    #
    # @!attribute object
    #   <p> The object specified in the Marketo flow source. </p>
    #
    #   @return [String]
    #
    MarketoSourceProperties = ::Struct.new(
      :object,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The OAuth 2.0 credentials required for OAuth 2.0 authentication.</p>
    #
    # @!attribute client_id
    #   <p>The identifier for the desired client.</p>
    #
    #   @return [String]
    #
    # @!attribute client_secret
    #   <p>The client secret used by the OAuth client to authenticate to the authorization
    #         server.</p>
    #
    #   @return [String]
    #
    # @!attribute access_token
    #   <p>The access token used to access the connector on your behalf.</p>
    #
    #   @return [String]
    #
    # @!attribute refresh_token
    #   <p>The refresh token used to refresh an expired access token.</p>
    #
    #   @return [String]
    #
    # @!attribute o_auth_request
    #   <p> Used by select connectors for which the OAuth workflow is supported, such as Salesforce,
    #         Google Analytics, Marketo, Zendesk, and Slack. </p>
    #
    #   @return [ConnectorOAuthRequest]
    #
    OAuth2Credentials = ::Struct.new(
      :client_id,
      :client_secret,
      :access_token,
      :refresh_token,
      :o_auth_request,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Appflow::Types::OAuth2Credentials "\
          "client_id=#{client_id || 'nil'}, "\
          "client_secret=\"[SENSITIVE]\", "\
          "access_token=\"[SENSITIVE]\", "\
          "refresh_token=#{refresh_token || 'nil'}, "\
          "o_auth_request=#{o_auth_request || 'nil'}>"
      end
    end

    # <p>Custom parameter required for OAuth 2.0 authentication.</p>
    #
    # @!attribute key
    #   <p>The key of the custom parameter required for OAuth 2.0 authentication.</p>
    #
    #   @return [String]
    #
    # @!attribute is_required
    #   <p>Indicates whether the custom parameter for OAuth 2.0 authentication is required.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute label
    #   <p>The label of the custom parameter used for OAuth 2.0 authentication.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description about the custom parameter used for OAuth 2.0 authentication.</p>
    #
    #   @return [String]
    #
    # @!attribute is_sensitive_field
    #   <p>Indicates whether this authentication custom parameter is a sensitive field.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute connector_supplied_values
    #   <p>Contains default values for this authentication parameter that are supplied by the
    #         connector.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute type
    #   <p>Indicates whether custom parameter is used with TokenUrl or AuthUrl.</p>
    #
    #   Enum, one of: ["TOKEN_URL", "AUTH_URL"]
    #
    #   @return [String]
    #
    OAuth2CustomParameter = ::Struct.new(
      :key,
      :is_required,
      :label,
      :description,
      :is_sensitive_field,
      :connector_supplied_values,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.is_required ||= false
        self.is_sensitive_field ||= false
      end

    end

    # Includes enum constants for OAuth2CustomPropType
    #
    module OAuth2CustomPropType
      # No documentation available.
      #
      TOKEN_URL = "TOKEN_URL"

      # No documentation available.
      #
      AUTH_URL = "AUTH_URL"
    end

    # <p>Contains the default values required for OAuth 2.0 authentication.</p>
    #
    # @!attribute oauth_scopes
    #   <p>OAuth 2.0 scopes that the connector supports.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute token_urls
    #   <p>Token URLs that can be used for OAuth 2.0 authentication.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute auth_code_urls
    #   <p>Auth code URLs that can be used for OAuth 2.0 authentication.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute oauth2_grant_types_supported
    #   <p>OAuth 2.0 grant types supported by the connector.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute oauth2_custom_properties
    #   <p>List of custom parameters required for OAuth 2.0 authentication.</p>
    #
    #   @return [Array<OAuth2CustomParameter>]
    #
    OAuth2Defaults = ::Struct.new(
      :oauth_scopes,
      :token_urls,
      :auth_code_urls,
      :oauth2_grant_types_supported,
      :oauth2_custom_properties,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for OAuth2GrantType
    #
    module OAuth2GrantType
      # No documentation available.
      #
      CLIENT_CREDENTIALS = "CLIENT_CREDENTIALS"

      # No documentation available.
      #
      AUTHORIZATION_CODE = "AUTHORIZATION_CODE"
    end

    # <p>The OAuth 2.0 properties required for OAuth 2.0 authentication.</p>
    #
    # @!attribute token_url
    #   <p>The token URL required for OAuth 2.0 authentication.</p>
    #
    #   @return [String]
    #
    # @!attribute o_auth2_grant_type
    #   <p>The OAuth 2.0 grant type used by connector for OAuth 2.0 authentication.</p>
    #
    #   Enum, one of: ["CLIENT_CREDENTIALS", "AUTHORIZATION_CODE"]
    #
    #   @return [String]
    #
    # @!attribute token_url_custom_properties
    #   <p>Associates your token URL with a map of properties that you define. Use this parameter to
    #         provide any additional details that the connector requires to authenticate your
    #         request.</p>
    #
    #   @return [Hash<String, String>]
    #
    OAuth2Properties = ::Struct.new(
      :token_url,
      :o_auth2_grant_type,
      :token_url_custom_properties,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The OAuth credentials required for OAuth type authentication. </p>
    #
    # @!attribute client_id
    #   <p> The identifier for the desired client. </p>
    #
    #   @return [String]
    #
    # @!attribute client_secret
    #   <p> The client secret used by the OAuth client to authenticate to the authorization server.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute access_token
    #   <p> The access token used to access protected SAPOData resources. </p>
    #
    #   @return [String]
    #
    # @!attribute refresh_token
    #   <p> The refresh token used to refresh expired access token. </p>
    #
    #   @return [String]
    #
    # @!attribute o_auth_request
    #   <p> The OAuth requirement needed to request security tokens from the connector endpoint.
    #       </p>
    #
    #   @return [ConnectorOAuthRequest]
    #
    OAuthCredentials = ::Struct.new(
      :client_id,
      :client_secret,
      :access_token,
      :refresh_token,
      :o_auth_request,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Appflow::Types::OAuthCredentials "\
          "client_id=#{client_id || 'nil'}, "\
          "client_secret=\"[SENSITIVE]\", "\
          "access_token=\"[SENSITIVE]\", "\
          "refresh_token=#{refresh_token || 'nil'}, "\
          "o_auth_request=#{o_auth_request || 'nil'}>"
      end
    end

    # <p> The OAuth properties required for OAuth type authentication. </p>
    #
    # @!attribute token_url
    #   <p> The token url required to fetch access/refresh tokens using authorization code and also
    #         to refresh expired access token using refresh token.</p>
    #
    #   @return [String]
    #
    # @!attribute auth_code_url
    #   <p> The authorization code url required to redirect to SAP Login Page to fetch authorization
    #         code for OAuth type authentication. </p>
    #
    #   @return [String]
    #
    # @!attribute o_auth_scopes
    #   <p> The OAuth scopes required for OAuth type authentication. </p>
    #
    #   @return [Array<String>]
    #
    OAuthProperties = ::Struct.new(
      :token_url,
      :auth_code_url,
      :o_auth_scopes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Operator
    #
    module Operator
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
      CONTAINS = "CONTAINS"

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

      # No documentation available.
      #
      EXCLUDE_SOURCE_FIELDS_LIST = "EXCLUDE_SOURCE_FIELDS_LIST"
    end

    # Includes enum constants for Operators
    #
    module Operators
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
      CONTAINS = "CONTAINS"

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

    # <p> Determines the prefix that Amazon AppFlow applies to the destination folder name.
    #       You can name your destination folders according to the flow frequency and date. </p>
    #
    # @!attribute prefix_type
    #   <p> Determines the format of the prefix, and whether it applies to the file name, file path,
    #         or both. </p>
    #
    #   Enum, one of: ["FILENAME", "PATH", "PATH_AND_FILENAME"]
    #
    #   @return [String]
    #
    # @!attribute prefix_format
    #   <p> Determines the level of granularity that's included in the prefix. </p>
    #
    #   Enum, one of: ["YEAR", "MONTH", "DAY", "HOUR", "MINUTE"]
    #
    #   @return [String]
    #
    PrefixConfig = ::Struct.new(
      :prefix_type,
      :prefix_format,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PrefixFormat
    #
    module PrefixFormat
      # No documentation available.
      #
      YEAR = "YEAR"

      # No documentation available.
      #
      MONTH = "MONTH"

      # No documentation available.
      #
      DAY = "DAY"

      # No documentation available.
      #
      HOUR = "HOUR"

      # No documentation available.
      #
      MINUTE = "MINUTE"
    end

    # Includes enum constants for PrefixType
    #
    module PrefixType
      # No documentation available.
      #
      FILENAME = "FILENAME"

      # No documentation available.
      #
      PATH = "PATH"

      # No documentation available.
      #
      PATH_AND_FILENAME = "PATH_AND_FILENAME"
    end

    # Includes enum constants for PrivateConnectionProvisioningFailureCause
    #
    module PrivateConnectionProvisioningFailureCause
      # No documentation available.
      #
      CONNECTOR_AUTHENTICATION = "CONNECTOR_AUTHENTICATION"

      # No documentation available.
      #
      CONNECTOR_SERVER = "CONNECTOR_SERVER"

      # No documentation available.
      #
      INTERNAL_SERVER = "INTERNAL_SERVER"

      # No documentation available.
      #
      ACCESS_DENIED = "ACCESS_DENIED"

      # No documentation available.
      #
      VALIDATION = "VALIDATION"
    end

    # <p> Specifies the private connection provisioning state. </p>
    #
    # @!attribute status
    #   <p> Specifies the private connection provisioning status. </p>
    #
    #   Enum, one of: ["FAILED", "PENDING", "CREATED"]
    #
    #   @return [String]
    #
    # @!attribute failure_message
    #   <p> Specifies the private connection provisioning failure reason. </p>
    #
    #   @return [String]
    #
    # @!attribute failure_cause
    #   <p> Specifies the private connection provisioning failure cause. </p>
    #
    #   Enum, one of: ["CONNECTOR_AUTHENTICATION", "CONNECTOR_SERVER", "INTERNAL_SERVER", "ACCESS_DENIED", "VALIDATION"]
    #
    #   @return [String]
    #
    PrivateConnectionProvisioningState = ::Struct.new(
      :status,
      :failure_message,
      :failure_cause,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PrivateConnectionProvisioningStatus
    #
    module PrivateConnectionProvisioningStatus
      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      CREATED = "CREATED"
    end

    # <p>The range of values that the property supports.</p>
    #
    # @!attribute maximum
    #   <p>Maximum value supported by the field.</p>
    #
    #   @return [Float]
    #
    # @!attribute minimum
    #   <p>Minimum value supported by the field.</p>
    #
    #   @return [Float]
    #
    Range = ::Struct.new(
      :maximum,
      :minimum,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.maximum ||= 0
        self.minimum ||= 0
      end

    end

    # <p> The connector-specific profile credentials required when using Amazon Redshift.
    #     </p>
    #
    # @!attribute username
    #   <p> The name of the user. </p>
    #
    #   @return [String]
    #
    # @!attribute password
    #   <p> The password that corresponds to the user name. </p>
    #
    #   @return [String]
    #
    RedshiftConnectorProfileCredentials = ::Struct.new(
      :username,
      :password,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Appflow::Types::RedshiftConnectorProfileCredentials "\
          "username=#{username || 'nil'}, "\
          "password=\"[SENSITIVE]\">"
      end
    end

    # <p> The connector-specific profile properties when using Amazon Redshift. </p>
    #
    # @!attribute database_url
    #   <p> The JDBC URL of the Amazon Redshift cluster. </p>
    #
    #   @return [String]
    #
    # @!attribute bucket_name
    #   <p> A name for the associated Amazon S3 bucket. </p>
    #
    #   @return [String]
    #
    # @!attribute bucket_prefix
    #   <p> The object key for the destination bucket in which Amazon AppFlow places the files.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p> The Amazon Resource Name (ARN) of the IAM role. </p>
    #
    #   @return [String]
    #
    RedshiftConnectorProfileProperties = ::Struct.new(
      :database_url,
      :bucket_name,
      :bucket_prefix,
      :role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The properties that are applied when Amazon Redshift is being used as a destination.
    #     </p>
    #
    # @!attribute object
    #   <p> The object specified in the Amazon Redshift flow destination. </p>
    #
    #   @return [String]
    #
    # @!attribute intermediate_bucket_name
    #   <p> The intermediate bucket that Amazon AppFlow uses when moving data into Amazon Redshift. </p>
    #
    #   @return [String]
    #
    # @!attribute bucket_prefix
    #   <p> The object key for the bucket in which Amazon AppFlow places the destination files.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute error_handling_config
    #   <p> The settings that determine how Amazon AppFlow handles an error when placing data
    #         in the Amazon Redshift destination. For example, this setting would determine if the flow
    #         should fail after one insertion error, or continue and attempt to insert every record
    #         regardless of the initial failure. <code>ErrorHandlingConfig</code> is a part of the
    #         destination connector details. </p>
    #
    #   @return [ErrorHandlingConfig]
    #
    RedshiftDestinationProperties = ::Struct.new(
      :object,
      :intermediate_bucket_name,
      :bucket_prefix,
      :error_handling_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The connector metadata specific to Amazon Redshift. </p>
    #
    RedshiftMetadata = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connector_label
    #   <p> The name of the connector. The name is unique for each <code>ConnectorRegistration</code>
    #         in your Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description about the connector that's being registered.</p>
    #
    #   @return [String]
    #
    # @!attribute connector_provisioning_type
    #   <p>The provisioning type of the connector. Currently the only supported value is LAMBDA.
    #       </p>
    #
    #   Enum, one of: ["LAMBDA"]
    #
    #   @return [String]
    #
    # @!attribute connector_provisioning_config
    #   <p>The provisioning type of the connector. Currently the only supported value is
    #         LAMBDA.</p>
    #
    #   @return [ConnectorProvisioningConfig]
    #
    RegisterConnectorInput = ::Struct.new(
      :connector_label,
      :description,
      :connector_provisioning_type,
      :connector_provisioning_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connector_arn
    #   <p>The ARN of the connector being registered.</p>
    #
    #   @return [String]
    #
    RegisterConnectorOutput = ::Struct.new(
      :connector_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The resource specified in the request (such as the source or destination connector
    #       profile) is not found. </p>
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

    # <p> The properties that are applied when Amazon S3 is used as a destination. </p>
    #
    # @!attribute bucket_name
    #   <p> The Amazon S3 bucket name in which Amazon AppFlow places the transferred
    #         data. </p>
    #
    #   @return [String]
    #
    # @!attribute bucket_prefix
    #   <p> The object key for the destination bucket in which Amazon AppFlow places the files.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute s3_output_format_config
    #   <p> The configuration that determines how Amazon AppFlow should format the flow output
    #         data when Amazon S3 is used as the destination. </p>
    #
    #   @return [S3OutputFormatConfig]
    #
    S3DestinationProperties = ::Struct.new(
      :bucket_name,
      :bucket_prefix,
      :s3_output_format_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for S3InputFileType
    #
    module S3InputFileType
      # No documentation available.
      #
      CSV = "CSV"

      # No documentation available.
      #
      JSON = "JSON"
    end

    # <p> When you use Amazon S3 as the source, the configuration format that you provide
    #       the flow input data. </p>
    #
    # @!attribute s3_input_file_type
    #   <p> The file type that Amazon AppFlow gets from your Amazon S3 bucket. </p>
    #
    #   Enum, one of: ["CSV", "JSON"]
    #
    #   @return [String]
    #
    S3InputFormatConfig = ::Struct.new(
      :s3_input_file_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The connector metadata specific to Amazon S3. </p>
    #
    S3Metadata = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The configuration that determines how Amazon AppFlow should format the flow output
    #       data when Amazon S3 is used as the destination. </p>
    #
    # @!attribute file_type
    #   <p> Indicates the file type that Amazon AppFlow places in the Amazon S3
    #         bucket. </p>
    #
    #   Enum, one of: ["CSV", "JSON", "PARQUET"]
    #
    #   @return [String]
    #
    # @!attribute prefix_config
    #   <p> Determines the prefix that Amazon AppFlow applies to the folder name in the Amazon S3 bucket. You can name folders according to the flow frequency and date. </p>
    #
    #   @return [PrefixConfig]
    #
    # @!attribute aggregation_config
    #   <p> The aggregation settings that you can use to customize the output format of your flow
    #         data. </p>
    #
    #   @return [AggregationConfig]
    #
    # @!attribute preserve_source_data_typing
    #   <p>If your file output format is Parquet, use this parameter to set whether Amazon AppFlow preserves the data types in your source data when it writes the output to Amazon S3. </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>true</code>: Amazon AppFlow preserves the data types when it writes to
    #               Amazon S3. For example, an integer or <code>1</code> in your source data is
    #             still an integer in your output.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>false</code>: Amazon AppFlow converts all of the source data into strings
    #             when it writes to Amazon S3. For example, an integer of <code>1</code> in your
    #             source data becomes the string <code>"1"</code> in the output.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Boolean]
    #
    S3OutputFormatConfig = ::Struct.new(
      :file_type,
      :prefix_config,
      :aggregation_config,
      :preserve_source_data_typing,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The properties that are applied when Amazon S3 is being used as the flow source.
    #     </p>
    #
    # @!attribute bucket_name
    #   <p> The Amazon S3 bucket name where the source files are stored. </p>
    #
    #   @return [String]
    #
    # @!attribute bucket_prefix
    #   <p> The object key for the Amazon S3 bucket in which the source files are stored.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute s3_input_format_config
    #   <p> When you use Amazon S3 as the source, the configuration format that you provide
    #         the flow input data. </p>
    #
    #   @return [S3InputFormatConfig]
    #
    S3SourceProperties = ::Struct.new(
      :bucket_name,
      :bucket_prefix,
      :s3_input_format_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SAPODataConnectorOperator
    #
    module SAPODataConnectorOperator
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

    # <p> The connector-specific profile credentials required when using SAPOData. </p>
    #
    # @!attribute basic_auth_credentials
    #   <p> The SAPOData basic authentication credentials. </p>
    #
    #   @return [BasicAuthCredentials]
    #
    # @!attribute o_auth_credentials
    #   <p> The SAPOData OAuth type authentication credentials. </p>
    #
    #   @return [OAuthCredentials]
    #
    SAPODataConnectorProfileCredentials = ::Struct.new(
      :basic_auth_credentials,
      :o_auth_credentials,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The connector-specific profile properties required when using SAPOData. </p>
    #
    # @!attribute application_host_url
    #   <p> The location of the SAPOData resource. </p>
    #
    #   @return [String]
    #
    # @!attribute application_service_path
    #   <p> The application path to catalog service. </p>
    #
    #   @return [String]
    #
    # @!attribute port_number
    #   <p> The port number of the SAPOData instance. </p>
    #
    #   @return [Integer]
    #
    # @!attribute client_number
    #   <p> The client number for the client creating the connection. </p>
    #
    #   @return [String]
    #
    # @!attribute logon_language
    #   <p> The logon language of SAPOData instance. </p>
    #
    #   @return [String]
    #
    # @!attribute private_link_service_name
    #   <p> The SAPOData Private Link service name to be used for private data transfers. </p>
    #
    #   @return [String]
    #
    # @!attribute o_auth_properties
    #   <p> The SAPOData OAuth properties required for OAuth type authentication. </p>
    #
    #   @return [OAuthProperties]
    #
    SAPODataConnectorProfileProperties = ::Struct.new(
      :application_host_url,
      :application_service_path,
      :port_number,
      :client_number,
      :logon_language,
      :private_link_service_name,
      :o_auth_properties,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The properties that are applied when using SAPOData as a flow destination</p>
    #
    # @!attribute object_path
    #   <p>The object path specified in the SAPOData flow destination.</p>
    #
    #   @return [String]
    #
    # @!attribute success_response_handling_config
    #   <p>Determines how Amazon AppFlow handles the success response that it gets from the
    #         connector after placing data.</p>
    #            <p>For example, this setting would determine where to write the response from a destination
    #         connector upon a successful insert operation.</p>
    #
    #   @return [SuccessResponseHandlingConfig]
    #
    # @!attribute id_field_names
    #   <p> A list of field names that can be used as an ID field when performing a write operation.
    #       </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute error_handling_config
    #   <p> The settings that determine how Amazon AppFlow handles an error when placing data
    #         in the destination. For example, this setting would determine if the flow should fail after
    #         one insertion error, or continue and attempt to insert every record regardless of the initial
    #         failure. <code>ErrorHandlingConfig</code> is a part of the destination connector details.
    #       </p>
    #
    #   @return [ErrorHandlingConfig]
    #
    # @!attribute write_operation_type
    #   <p> The possible write operations in the destination connector. When this value is not
    #         provided, this defaults to the <code>INSERT</code> operation. </p>
    #
    #   Enum, one of: ["INSERT", "UPSERT", "UPDATE", "DELETE"]
    #
    #   @return [String]
    #
    SAPODataDestinationProperties = ::Struct.new(
      :object_path,
      :success_response_handling_config,
      :id_field_names,
      :error_handling_config,
      :write_operation_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The connector metadata specific to SAPOData. </p>
    #
    SAPODataMetadata = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The properties that are applied when using SAPOData as a flow source. </p>
    #
    # @!attribute object_path
    #   <p> The object path specified in the SAPOData flow source. </p>
    #
    #   @return [String]
    #
    SAPODataSourceProperties = ::Struct.new(
      :object_path,
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

    # <p> The connector-specific profile credentials required when using Salesforce. </p>
    #
    # @!attribute access_token
    #   <p> The credentials used to access protected Salesforce resources. </p>
    #
    #   @return [String]
    #
    # @!attribute refresh_token
    #   <p> The credentials used to acquire new access tokens. </p>
    #
    #   @return [String]
    #
    # @!attribute o_auth_request
    #   <p> The OAuth requirement needed to request security tokens from the connector endpoint.
    #       </p>
    #
    #   @return [ConnectorOAuthRequest]
    #
    # @!attribute client_credentials_arn
    #   <p> The secret manager ARN, which contains the client ID and client secret of the connected
    #         app. </p>
    #
    #   @return [String]
    #
    SalesforceConnectorProfileCredentials = ::Struct.new(
      :access_token,
      :refresh_token,
      :o_auth_request,
      :client_credentials_arn,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Appflow::Types::SalesforceConnectorProfileCredentials "\
          "access_token=\"[SENSITIVE]\", "\
          "refresh_token=#{refresh_token || 'nil'}, "\
          "o_auth_request=#{o_auth_request || 'nil'}, "\
          "client_credentials_arn=\"[SENSITIVE]\">"
      end
    end

    # <p> The connector-specific profile properties required when using Salesforce. </p>
    #
    # @!attribute instance_url
    #   <p> The location of the Salesforce resource. </p>
    #
    #   @return [String]
    #
    # @!attribute is_sandbox_environment
    #   <p> Indicates whether the connector profile applies to a sandbox or production environment.
    #       </p>
    #
    #   @return [Boolean]
    #
    SalesforceConnectorProfileProperties = ::Struct.new(
      :instance_url,
      :is_sandbox_environment,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.is_sandbox_environment ||= false
      end

    end

    # <p> The properties that are applied when Salesforce is being used as a destination. </p>
    #
    # @!attribute object
    #   <p> The object specified in the Salesforce flow destination. </p>
    #
    #   @return [String]
    #
    # @!attribute id_field_names
    #   <p> The name of the field that Amazon AppFlow uses as an ID when performing a write
    #         operation such as update or delete. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute error_handling_config
    #   <p> The settings that determine how Amazon AppFlow handles an error when placing data
    #         in the Salesforce destination. For example, this setting would determine if the flow should
    #         fail after one insertion error, or continue and attempt to insert every record regardless of
    #         the initial failure. <code>ErrorHandlingConfig</code> is a part of the destination connector
    #         details. </p>
    #
    #   @return [ErrorHandlingConfig]
    #
    # @!attribute write_operation_type
    #   <p> This specifies the type of write operation to be performed in Salesforce. When the value
    #         is <code>UPSERT</code>, then <code>idFieldNames</code> is required. </p>
    #
    #   Enum, one of: ["INSERT", "UPSERT", "UPDATE", "DELETE"]
    #
    #   @return [String]
    #
    SalesforceDestinationProperties = ::Struct.new(
      :object,
      :id_field_names,
      :error_handling_config,
      :write_operation_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The connector metadata specific to Salesforce. </p>
    #
    # @!attribute o_auth_scopes
    #   <p> The desired authorization scope for the Salesforce account. </p>
    #
    #   @return [Array<String>]
    #
    SalesforceMetadata = ::Struct.new(
      :o_auth_scopes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The properties that are applied when Salesforce is being used as a source. </p>
    #
    # @!attribute object
    #   <p> The object specified in the Salesforce flow source. </p>
    #
    #   @return [String]
    #
    # @!attribute enable_dynamic_field_update
    #   <p> The flag that enables dynamic fetching of new (recently added) fields in the Salesforce
    #         objects while running a flow. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute include_deleted_records
    #   <p> Indicates whether Amazon AppFlow includes deleted files in the flow run. </p>
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

    # Includes enum constants for ScheduleFrequencyType
    #
    module ScheduleFrequencyType
      # No documentation available.
      #
      BYMINUTE = "BYMINUTE"

      # No documentation available.
      #
      HOURLY = "HOURLY"

      # No documentation available.
      #
      DAILY = "DAILY"

      # No documentation available.
      #
      WEEKLY = "WEEKLY"

      # No documentation available.
      #
      MONTHLY = "MONTHLY"

      # No documentation available.
      #
      ONCE = "ONCE"
    end

    # <p> Specifies the configuration details of a schedule-triggered flow as defined by the user.
    #       Currently, these settings only apply to the <code>Scheduled</code> trigger type. </p>
    #
    # @!attribute schedule_expression
    #   <p> The scheduling expression that determines the rate at which the schedule will run, for
    #         example <code>rate(5minutes)</code>. </p>
    #
    #   @return [String]
    #
    # @!attribute data_pull_mode
    #   <p> Specifies whether a scheduled flow has an incremental data transfer or a complete data
    #         transfer for each flow run. </p>
    #
    #   Enum, one of: ["Incremental", "Complete"]
    #
    #   @return [String]
    #
    # @!attribute schedule_start_time
    #   <p>The time at which the scheduled flow starts. The time is formatted as a timestamp that
    #         follows the ISO 8601 standard, such as <code>2022-04-26T13:00:00-07:00</code>.</p>
    #
    #   @return [Time]
    #
    # @!attribute schedule_end_time
    #   <p>The time at which the scheduled flow ends. The time is formatted as a timestamp that
    #         follows the ISO 8601 standard, such as <code>2022-04-27T13:00:00-07:00</code>.</p>
    #
    #   @return [Time]
    #
    # @!attribute timezone
    #   <p>Specifies the time zone used when referring to the dates and times of a scheduled flow,
    #         such as <code>America/New_York</code>. This time zone is only a descriptive label. It doesn't affect how
    #         Amazon AppFlow interprets the timestamps that you specify to schedule the flow.</p>
    #            <p>If you want to schedule a flow by using times in a particular time zone, indicate the time zone as a UTC
    #         offset in your timestamps. For example, the UTC offsets for the <code>America/New_York</code> timezone are
    #         <code>-04:00</code> EDT and <code>-05:00 EST</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute schedule_offset
    #   <p> Specifies the optional offset that is added to the time interval for a schedule-triggered
    #         flow. </p>
    #
    #   @return [Integer]
    #
    # @!attribute first_execution_from
    #   <p> Specifies the date range for the records to import from the connector in the first flow
    #         run. </p>
    #
    #   @return [Time]
    #
    # @!attribute flow_error_deactivation_threshold
    #   <p>Defines how many times a scheduled flow fails consecutively before Amazon AppFlow
    #         deactivates it.</p>
    #
    #   @return [Integer]
    #
    ScheduledTriggerProperties = ::Struct.new(
      :schedule_expression,
      :data_pull_mode,
      :schedule_start_time,
      :schedule_end_time,
      :timezone,
      :schedule_offset,
      :first_execution_from,
      :flow_error_deactivation_threshold,
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

    # <p> The connector-specific profile credentials required when using ServiceNow. </p>
    #
    # @!attribute username
    #   <p> The name of the user. </p>
    #
    #   @return [String]
    #
    # @!attribute password
    #   <p> The password that corresponds to the user name. </p>
    #
    #   @return [String]
    #
    ServiceNowConnectorProfileCredentials = ::Struct.new(
      :username,
      :password,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Appflow::Types::ServiceNowConnectorProfileCredentials "\
          "username=#{username || 'nil'}, "\
          "password=\"[SENSITIVE]\">"
      end
    end

    # <p> The connector-specific profile properties required when using ServiceNow. </p>
    #
    # @!attribute instance_url
    #   <p> The location of the ServiceNow resource. </p>
    #
    #   @return [String]
    #
    ServiceNowConnectorProfileProperties = ::Struct.new(
      :instance_url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The connector metadata specific to ServiceNow. </p>
    #
    ServiceNowMetadata = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The properties that are applied when ServiceNow is being used as a source. </p>
    #
    # @!attribute object
    #   <p> The object specified in the ServiceNow flow source. </p>
    #
    #   @return [String]
    #
    ServiceNowSourceProperties = ::Struct.new(
      :object,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The request would cause a service quota (such as the number of flows) to be exceeded.
    #     </p>
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

    # Includes enum constants for SingularConnectorOperator
    #
    module SingularConnectorOperator
      # No documentation available.
      #
      PROJECTION = "PROJECTION"

      # No documentation available.
      #
      EQUAL_TO = "EQUAL_TO"

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

    # <p> The connector-specific profile credentials required when using Singular. </p>
    #
    # @!attribute api_key
    #   <p> A unique alphanumeric identifier used to authenticate a user, developer, or calling
    #         program to your API. </p>
    #
    #   @return [String]
    #
    SingularConnectorProfileCredentials = ::Struct.new(
      :api_key,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Appflow::Types::SingularConnectorProfileCredentials "\
          "api_key=\"[SENSITIVE]\">"
      end
    end

    # <p> The connector-specific profile properties required when using Singular. </p>
    #
    SingularConnectorProfileProperties = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The connector metadata specific to Singular. </p>
    #
    SingularMetadata = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The properties that are applied when Singular is being used as a source. </p>
    #
    # @!attribute object
    #   <p> The object specified in the Singular flow source. </p>
    #
    #   @return [String]
    #
    SingularSourceProperties = ::Struct.new(
      :object,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SlackConnectorOperator
    #
    module SlackConnectorOperator
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

    # <p> The connector-specific profile credentials required when using Slack. </p>
    #
    # @!attribute client_id
    #   <p> The identifier for the client. </p>
    #
    #   @return [String]
    #
    # @!attribute client_secret
    #   <p> The client secret used by the OAuth client to authenticate to the authorization server.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute access_token
    #   <p> The credentials used to access protected Slack resources. </p>
    #
    #   @return [String]
    #
    # @!attribute o_auth_request
    #   <p> The OAuth requirement needed to request security tokens from the connector endpoint.
    #       </p>
    #
    #   @return [ConnectorOAuthRequest]
    #
    SlackConnectorProfileCredentials = ::Struct.new(
      :client_id,
      :client_secret,
      :access_token,
      :o_auth_request,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Appflow::Types::SlackConnectorProfileCredentials "\
          "client_id=#{client_id || 'nil'}, "\
          "client_secret=\"[SENSITIVE]\", "\
          "access_token=\"[SENSITIVE]\", "\
          "o_auth_request=#{o_auth_request || 'nil'}>"
      end
    end

    # <p> The connector-specific profile properties required when using Slack. </p>
    #
    # @!attribute instance_url
    #   <p> The location of the Slack resource. </p>
    #
    #   @return [String]
    #
    SlackConnectorProfileProperties = ::Struct.new(
      :instance_url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The connector metadata specific to Slack. </p>
    #
    # @!attribute o_auth_scopes
    #   <p> The desired authorization scope for the Slack account. </p>
    #
    #   @return [Array<String>]
    #
    SlackMetadata = ::Struct.new(
      :o_auth_scopes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The properties that are applied when Slack is being used as a source. </p>
    #
    # @!attribute object
    #   <p> The object specified in the Slack flow source. </p>
    #
    #   @return [String]
    #
    SlackSourceProperties = ::Struct.new(
      :object,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The connector-specific profile credentials required when using Snowflake. </p>
    #
    # @!attribute username
    #   <p> The name of the user. </p>
    #
    #   @return [String]
    #
    # @!attribute password
    #   <p> The password that corresponds to the user name. </p>
    #
    #   @return [String]
    #
    SnowflakeConnectorProfileCredentials = ::Struct.new(
      :username,
      :password,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Appflow::Types::SnowflakeConnectorProfileCredentials "\
          "username=#{username || 'nil'}, "\
          "password=\"[SENSITIVE]\">"
      end
    end

    # <p> The connector-specific profile properties required when using Snowflake. </p>
    #
    # @!attribute warehouse
    #   <p> The name of the Snowflake warehouse. </p>
    #
    #   @return [String]
    #
    # @!attribute stage
    #   <p> The name of the Amazon S3 stage that was created while setting up an Amazon S3 stage in the Snowflake account. This is written in the following format: <
    #         Database>< Schema><Stage Name>. </p>
    #
    #   @return [String]
    #
    # @!attribute bucket_name
    #   <p> The name of the Amazon S3 bucket associated with Snowflake. </p>
    #
    #   @return [String]
    #
    # @!attribute bucket_prefix
    #   <p> The bucket path that refers to the Amazon S3 bucket associated with Snowflake.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute private_link_service_name
    #   <p> The Snowflake Private Link service name to be used for private data transfers. </p>
    #
    #   @return [String]
    #
    # @!attribute account_name
    #   <p> The name of the account. </p>
    #
    #   @return [String]
    #
    # @!attribute region
    #   <p> The Amazon Web Services Region of the Snowflake account. </p>
    #
    #   @return [String]
    #
    SnowflakeConnectorProfileProperties = ::Struct.new(
      :warehouse,
      :stage,
      :bucket_name,
      :bucket_prefix,
      :private_link_service_name,
      :account_name,
      :region,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The properties that are applied when Snowflake is being used as a destination. </p>
    #
    # @!attribute object
    #   <p> The object specified in the Snowflake flow destination. </p>
    #
    #   @return [String]
    #
    # @!attribute intermediate_bucket_name
    #   <p> The intermediate bucket that Amazon AppFlow uses when moving data into Snowflake.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute bucket_prefix
    #   <p> The object key for the destination bucket in which Amazon AppFlow places the files.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute error_handling_config
    #   <p> The settings that determine how Amazon AppFlow handles an error when placing data
    #         in the Snowflake destination. For example, this setting would determine if the flow should
    #         fail after one insertion error, or continue and attempt to insert every record regardless of
    #         the initial failure. <code>ErrorHandlingConfig</code> is a part of the destination connector
    #         details. </p>
    #
    #   @return [ErrorHandlingConfig]
    #
    SnowflakeDestinationProperties = ::Struct.new(
      :object,
      :intermediate_bucket_name,
      :bucket_prefix,
      :error_handling_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The connector metadata specific to Snowflake. </p>
    #
    # @!attribute supported_regions
    #   <p> Specifies the supported Amazon Web Services Regions when using Snowflake. </p>
    #
    #   @return [Array<String>]
    #
    SnowflakeMetadata = ::Struct.new(
      :supported_regions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Specifies the information that is required to query a particular connector. </p>
    #
    # @!attribute amplitude
    #   <p> Specifies the information that is required for querying Amplitude. </p>
    #
    #   @return [AmplitudeSourceProperties]
    #
    # @!attribute datadog
    #   <p> Specifies the information that is required for querying Datadog. </p>
    #
    #   @return [DatadogSourceProperties]
    #
    # @!attribute dynatrace
    #   <p> Specifies the information that is required for querying Dynatrace. </p>
    #
    #   @return [DynatraceSourceProperties]
    #
    # @!attribute google_analytics
    #   <p> Specifies the information that is required for querying Google Analytics. </p>
    #
    #   @return [GoogleAnalyticsSourceProperties]
    #
    # @!attribute infor_nexus
    #   <p> Specifies the information that is required for querying Infor Nexus. </p>
    #
    #   @return [InforNexusSourceProperties]
    #
    # @!attribute marketo
    #   <p> Specifies the information that is required for querying Marketo. </p>
    #
    #   @return [MarketoSourceProperties]
    #
    # @!attribute s3
    #   <p> Specifies the information that is required for querying Amazon S3. </p>
    #
    #   @return [S3SourceProperties]
    #
    # @!attribute salesforce
    #   <p> Specifies the information that is required for querying Salesforce. </p>
    #
    #   @return [SalesforceSourceProperties]
    #
    # @!attribute service_now
    #   <p> Specifies the information that is required for querying ServiceNow. </p>
    #
    #   @return [ServiceNowSourceProperties]
    #
    # @!attribute singular
    #   <p> Specifies the information that is required for querying Singular. </p>
    #
    #   @return [SingularSourceProperties]
    #
    # @!attribute slack
    #   <p> Specifies the information that is required for querying Slack. </p>
    #
    #   @return [SlackSourceProperties]
    #
    # @!attribute trendmicro
    #   <p> Specifies the information that is required for querying Trend Micro. </p>
    #
    #   @return [TrendmicroSourceProperties]
    #
    # @!attribute veeva
    #   <p> Specifies the information that is required for querying Veeva. </p>
    #
    #   @return [VeevaSourceProperties]
    #
    # @!attribute zendesk
    #   <p> Specifies the information that is required for querying Zendesk. </p>
    #
    #   @return [ZendeskSourceProperties]
    #
    # @!attribute sapo_data
    #   <p> The properties that are applied when using SAPOData as a flow source. </p>
    #
    #   @return [SAPODataSourceProperties]
    #
    # @!attribute custom_connector
    #   <p>The properties that are applied when the custom connector is being used as a
    #         source.</p>
    #
    #   @return [CustomConnectorSourceProperties]
    #
    SourceConnectorProperties = ::Struct.new(
      :amplitude,
      :datadog,
      :dynatrace,
      :google_analytics,
      :infor_nexus,
      :marketo,
      :s3,
      :salesforce,
      :service_now,
      :singular,
      :slack,
      :trendmicro,
      :veeva,
      :zendesk,
      :sapo_data,
      :custom_connector,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The properties that can be applied to a field when the connector is being used as a
    #       source. </p>
    #
    # @!attribute is_retrievable
    #   <p> Indicates whether the field can be returned in a search result. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute is_queryable
    #   <p> Indicates if the field can be queried. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute is_timestamp_field_for_incremental_queries
    #   <p>Indicates if this timestamp field can be used for incremental queries.</p>
    #
    #   @return [Boolean]
    #
    SourceFieldProperties = ::Struct.new(
      :is_retrievable,
      :is_queryable,
      :is_timestamp_field_for_incremental_queries,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.is_retrievable ||= false
        self.is_queryable ||= false
        self.is_timestamp_field_for_incremental_queries ||= false
      end

    end

    # <p> Contains information about the configuration of the source connector used in the flow.
    #     </p>
    #
    # @!attribute connector_type
    #   <p> The type of connector, such as Salesforce, Amplitude, and so on. </p>
    #
    #   Enum, one of: ["Salesforce", "Singular", "Slack", "Redshift", "S3", "Marketo", "Googleanalytics", "Zendesk", "Servicenow", "Datadog", "Trendmicro", "Snowflake", "Dynatrace", "Infornexus", "Amplitude", "Veeva", "EventBridge", "LookoutMetrics", "Upsolver", "Honeycode", "CustomerProfiles", "SAPOData", "CustomConnector"]
    #
    #   @return [String]
    #
    # @!attribute api_version
    #   <p>The API version of the connector when it's used as a source in the flow.</p>
    #
    #   @return [String]
    #
    # @!attribute connector_profile_name
    #   <p> The name of the connector profile. This name must be unique for each connector profile in
    #         the Amazon Web Services account. </p>
    #
    #   @return [String]
    #
    # @!attribute source_connector_properties
    #   <p> Specifies the information that is required to query a particular source connector.
    #       </p>
    #
    #   @return [SourceConnectorProperties]
    #
    # @!attribute incremental_pull_config
    #   <p> Defines the configuration for a scheduled incremental data pull. If a valid configuration
    #         is provided, the fields specified in the configuration are used when querying for the
    #         incremental data pull. </p>
    #
    #   @return [IncrementalPullConfig]
    #
    SourceFlowConfig = ::Struct.new(
      :connector_type,
      :api_version,
      :connector_profile_name,
      :source_connector_properties,
      :incremental_pull_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute flow_name
    #   <p> The specified name of the flow. Spaces are not allowed. Use underscores (_) or hyphens
    #         (-) only. </p>
    #
    #   @return [String]
    #
    StartFlowInput = ::Struct.new(
      :flow_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute flow_arn
    #   <p> The flow's Amazon Resource Name (ARN). </p>
    #
    #   @return [String]
    #
    # @!attribute flow_status
    #   <p> Indicates the current status of the flow. </p>
    #
    #   Enum, one of: ["Active", "Deprecated", "Deleted", "Draft", "Errored", "Suspended"]
    #
    #   @return [String]
    #
    # @!attribute execution_id
    #   <p> Returns the internal execution ID of an on-demand flow when the flow is started. For
    #         scheduled or event-triggered flows, this value is null. </p>
    #
    #   @return [String]
    #
    StartFlowOutput = ::Struct.new(
      :flow_arn,
      :flow_status,
      :execution_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute flow_name
    #   <p> The specified name of the flow. Spaces are not allowed. Use underscores (_) or hyphens
    #         (-) only. </p>
    #
    #   @return [String]
    #
    StopFlowInput = ::Struct.new(
      :flow_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute flow_arn
    #   <p> The flow's Amazon Resource Name (ARN). </p>
    #
    #   @return [String]
    #
    # @!attribute flow_status
    #   <p> Indicates the current status of the flow. </p>
    #
    #   Enum, one of: ["Active", "Deprecated", "Deleted", "Draft", "Errored", "Suspended"]
    #
    #   @return [String]
    #
    StopFlowOutput = ::Struct.new(
      :flow_arn,
      :flow_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Determines how Amazon AppFlow handles the success response that it gets from the
    #       connector after placing data.</p>
    #          <p>For example, this setting would determine where to write the response from the destination
    #       connector upon a successful insert operation.</p>
    #
    # @!attribute bucket_prefix
    #   <p>The Amazon S3 bucket prefix.</p>
    #
    #   @return [String]
    #
    # @!attribute bucket_name
    #   <p>The name of the Amazon S3 bucket.</p>
    #
    #   @return [String]
    #
    SuccessResponseHandlingConfig = ::Struct.new(
      :bucket_prefix,
      :bucket_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Contains details regarding all the supported <code>FieldTypes</code> and their
    #       corresponding <code>filterOperators</code> and <code>supportedValues</code>. </p>
    #
    # @!attribute v1
    #   <p> The initial supported version for <code>fieldType</code>. If this is later changed to a
    #         different version, v2 will be introduced. </p>
    #
    #   @return [FieldTypeDetails]
    #
    SupportedFieldTypeDetails = ::Struct.new(
      :v1,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p> The Amazon Resource Name (ARN) of the flow that you want to tag. </p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p> The tags used to organize, track, or control access for your flow. </p>
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

    # <p> A class for modeling different type of tasks. Task implementation varies based on the
    #         <code>TaskType</code>. </p>
    #
    # @!attribute source_fields
    #   <p> The source fields to which a particular task is applied. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute connector_operator
    #   <p> The operation to be performed on the provided source fields. </p>
    #
    #   @return [ConnectorOperator]
    #
    # @!attribute destination_field
    #   <p> A field in a destination connector, or a field value against which Amazon AppFlow
    #         validates a source field. </p>
    #
    #   @return [String]
    #
    # @!attribute task_type
    #   <p> Specifies the particular task implementation that Amazon AppFlow performs. </p>
    #
    #   Enum, one of: ["Arithmetic", "Filter", "Map", "Map_all", "Mask", "Merge", "Passthrough", "Truncate", "Validate"]
    #
    #   @return [String]
    #
    # @!attribute task_properties
    #   <p> A map used to store task-related information. The execution service looks for particular
    #         information based on the <code>TaskType</code>. </p>
    #
    #   @return [Hash<String, String>]
    #
    Task = ::Struct.new(
      :source_fields,
      :connector_operator,
      :destination_field,
      :task_type,
      :task_properties,
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
      MAP_ALL = "Map_all"

      # No documentation available.
      #
      MASK = "Mask"

      # No documentation available.
      #
      MERGE = "Merge"

      # No documentation available.
      #
      PASSTHROUGH = "Passthrough"

      # No documentation available.
      #
      TRUNCATE = "Truncate"

      # No documentation available.
      #
      VALIDATE = "Validate"
    end

    # <p>API calls have exceeded the maximum allowed API request rate per account and per Region.
    #     </p>
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

    # Includes enum constants for TrendmicroConnectorOperator
    #
    module TrendmicroConnectorOperator
      # No documentation available.
      #
      PROJECTION = "PROJECTION"

      # No documentation available.
      #
      EQUAL_TO = "EQUAL_TO"

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

    # <p> The connector-specific profile credentials required when using Trend Micro. </p>
    #
    # @!attribute api_secret_key
    #   <p> The Secret Access Key portion of the credentials. </p>
    #
    #   @return [String]
    #
    TrendmicroConnectorProfileCredentials = ::Struct.new(
      :api_secret_key,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Appflow::Types::TrendmicroConnectorProfileCredentials "\
          "api_secret_key=\"[SENSITIVE]\">"
      end
    end

    # <p> The connector-specific profile properties required when using Trend Micro. </p>
    #
    TrendmicroConnectorProfileProperties = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The connector metadata specific to Trend Micro. </p>
    #
    TrendmicroMetadata = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The properties that are applied when using Trend Micro as a flow source. </p>
    #
    # @!attribute object
    #   <p> The object specified in the Trend Micro flow source. </p>
    #
    #   @return [String]
    #
    TrendmicroSourceProperties = ::Struct.new(
      :object,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The trigger settings that determine how and when Amazon AppFlow runs the specified
    #       flow. </p>
    #
    # @!attribute trigger_type
    #   <p> Specifies the type of flow trigger. This can be <code>OnDemand</code>,
    #           <code>Scheduled</code>, or <code>Event</code>. </p>
    #
    #   Enum, one of: ["Scheduled", "Event", "OnDemand"]
    #
    #   @return [String]
    #
    # @!attribute trigger_properties
    #   <p> Specifies the configuration details of a schedule-triggered flow as defined by the user.
    #         Currently, these settings only apply to the <code>Scheduled</code> trigger type. </p>
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

    # <p> Specifies the configuration details that control the trigger for a flow. Currently, these
    #       settings only apply to the <code>Scheduled</code> trigger type. </p>
    #
    # @!attribute scheduled
    #   <p> Specifies the configuration details of a schedule-triggered flow as defined by the user.
    #       </p>
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

    # @!attribute connector_label
    #   <p>The label of the connector. The label is unique for each
    #           <code>ConnectorRegistration</code> in your Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    # @!attribute force_delete
    #   <p>Indicates whether Amazon AppFlow should unregister the connector, even if it is
    #         currently in use in one or more connector profiles. The default value is false.</p>
    #
    #   @return [Boolean]
    #
    UnregisterConnectorInput = ::Struct.new(
      :connector_label,
      :force_delete,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.force_delete ||= false
      end

    end

    UnregisterConnectorOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The requested operation is not supported for the current flow. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    UnsupportedOperationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p> The Amazon Resource Name (ARN) of the flow that you want to untag. </p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p> The tag keys associated with the tag that you want to remove from your flow. </p>
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

    # @!attribute connector_profile_name
    #   <p> The name of the connector profile and is unique for each <code>ConnectorProfile</code> in
    #         the Amazon Web Services account. </p>
    #
    #   @return [String]
    #
    # @!attribute connection_mode
    #   <p> Indicates the connection mode and if it is public or private. </p>
    #
    #   Enum, one of: ["Public", "Private"]
    #
    #   @return [String]
    #
    # @!attribute connector_profile_config
    #   <p> Defines the connector-specific profile configuration and credentials. </p>
    #
    #   @return [ConnectorProfileConfig]
    #
    UpdateConnectorProfileInput = ::Struct.new(
      :connector_profile_name,
      :connection_mode,
      :connector_profile_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connector_profile_arn
    #   <p> The Amazon Resource Name (ARN) of the connector profile. </p>
    #
    #   @return [String]
    #
    UpdateConnectorProfileOutput = ::Struct.new(
      :connector_profile_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute flow_name
    #   <p> The specified name of the flow. Spaces are not allowed. Use underscores (_) or hyphens
    #         (-) only. </p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p> A description of the flow. </p>
    #
    #   @return [String]
    #
    # @!attribute trigger_config
    #   <p> The trigger settings that determine how and when the flow runs. </p>
    #
    #   @return [TriggerConfig]
    #
    # @!attribute source_flow_config
    #   <p> Contains information about the configuration of the source connector used in the flow.
    #       </p>
    #
    #   @return [SourceFlowConfig]
    #
    # @!attribute destination_flow_config_list
    #   <p> The configuration that controls how Amazon AppFlow transfers data to the
    #         destination connector. </p>
    #
    #   @return [Array<DestinationFlowConfig>]
    #
    # @!attribute tasks
    #   <p> A list of tasks that Amazon AppFlow performs while transferring the data in the
    #         flow run. </p>
    #
    #   @return [Array<Task>]
    #
    UpdateFlowInput = ::Struct.new(
      :flow_name,
      :description,
      :trigger_config,
      :source_flow_config,
      :destination_flow_config_list,
      :tasks,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute flow_status
    #   <p>Indicates the current status of the flow. </p>
    #
    #   Enum, one of: ["Active", "Deprecated", "Deleted", "Draft", "Errored", "Suspended"]
    #
    #   @return [String]
    #
    UpdateFlowOutput = ::Struct.new(
      :flow_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The properties that are applied when Upsolver is used as a destination. </p>
    #
    # @!attribute bucket_name
    #   <p> The Upsolver Amazon S3 bucket name in which Amazon AppFlow places the
    #         transferred data. </p>
    #
    #   @return [String]
    #
    # @!attribute bucket_prefix
    #   <p> The object key for the destination Upsolver Amazon S3 bucket in which Amazon AppFlow places the files. </p>
    #
    #   @return [String]
    #
    # @!attribute s3_output_format_config
    #   <p> The configuration that determines how data is formatted when Upsolver is used as the flow
    #         destination. </p>
    #
    #   @return [UpsolverS3OutputFormatConfig]
    #
    UpsolverDestinationProperties = ::Struct.new(
      :bucket_name,
      :bucket_prefix,
      :s3_output_format_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The connector metadata specific to Upsolver. </p>
    #
    UpsolverMetadata = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The configuration that determines how Amazon AppFlow formats the flow output data
    #       when Upsolver is used as the destination. </p>
    #
    # @!attribute file_type
    #   <p> Indicates the file type that Amazon AppFlow places in the Upsolver Amazon S3 bucket. </p>
    #
    #   Enum, one of: ["CSV", "JSON", "PARQUET"]
    #
    #   @return [String]
    #
    # @!attribute prefix_config
    #   <p> Determines the prefix that Amazon AppFlow applies to the destination folder name.
    #         You can name your destination folders according to the flow frequency and date. </p>
    #
    #   @return [PrefixConfig]
    #
    # @!attribute aggregation_config
    #   <p> The aggregation settings that you can use to customize the output format of your flow
    #         data. </p>
    #
    #   @return [AggregationConfig]
    #
    UpsolverS3OutputFormatConfig = ::Struct.new(
      :file_type,
      :prefix_config,
      :aggregation_config,
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
    ValidationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for VeevaConnectorOperator
    #
    module VeevaConnectorOperator
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
      CONTAINS = "CONTAINS"

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

    # <p> The connector-specific profile credentials required when using Veeva. </p>
    #
    # @!attribute username
    #   <p> The name of the user. </p>
    #
    #   @return [String]
    #
    # @!attribute password
    #   <p> The password that corresponds to the user name. </p>
    #
    #   @return [String]
    #
    VeevaConnectorProfileCredentials = ::Struct.new(
      :username,
      :password,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Appflow::Types::VeevaConnectorProfileCredentials "\
          "username=#{username || 'nil'}, "\
          "password=\"[SENSITIVE]\">"
      end
    end

    # <p> The connector-specific profile properties required when using Veeva. </p>
    #
    # @!attribute instance_url
    #   <p> The location of the Veeva resource. </p>
    #
    #   @return [String]
    #
    VeevaConnectorProfileProperties = ::Struct.new(
      :instance_url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The connector metadata specific to Veeva. </p>
    #
    VeevaMetadata = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The properties that are applied when using Veeva as a flow source. </p>
    #
    # @!attribute object
    #   <p> The object specified in the Veeva flow source. </p>
    #
    #   @return [String]
    #
    # @!attribute document_type
    #   <p>The document type specified in the Veeva document extract flow.</p>
    #
    #   @return [String]
    #
    # @!attribute include_source_files
    #   <p>Boolean value to include source files in Veeva document extract flow.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute include_renditions
    #   <p>Boolean value to include file renditions in Veeva document extract flow.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute include_all_versions
    #   <p>Boolean value to include All Versions of files in Veeva document extract flow.</p>
    #
    #   @return [Boolean]
    #
    VeevaSourceProperties = ::Struct.new(
      :object,
      :document_type,
      :include_source_files,
      :include_renditions,
      :include_all_versions,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.include_source_files ||= false
        self.include_renditions ||= false
        self.include_all_versions ||= false
      end

    end

    # Includes enum constants for WriteOperationType
    #
    module WriteOperationType
      # No documentation available.
      #
      INSERT = "INSERT"

      # No documentation available.
      #
      UPSERT = "UPSERT"

      # No documentation available.
      #
      UPDATE = "UPDATE"

      # No documentation available.
      #
      DELETE = "DELETE"
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

    # <p> The connector-specific profile credentials required when using Zendesk. </p>
    #
    # @!attribute client_id
    #   <p> The identifier for the desired client. </p>
    #
    #   @return [String]
    #
    # @!attribute client_secret
    #   <p> The client secret used by the OAuth client to authenticate to the authorization server.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute access_token
    #   <p> The credentials used to access protected Zendesk resources. </p>
    #
    #   @return [String]
    #
    # @!attribute o_auth_request
    #   <p> The OAuth requirement needed to request security tokens from the connector endpoint.
    #       </p>
    #
    #   @return [ConnectorOAuthRequest]
    #
    ZendeskConnectorProfileCredentials = ::Struct.new(
      :client_id,
      :client_secret,
      :access_token,
      :o_auth_request,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Appflow::Types::ZendeskConnectorProfileCredentials "\
          "client_id=#{client_id || 'nil'}, "\
          "client_secret=\"[SENSITIVE]\", "\
          "access_token=\"[SENSITIVE]\", "\
          "o_auth_request=#{o_auth_request || 'nil'}>"
      end
    end

    # <p> The connector-specific profile properties required when using Zendesk. </p>
    #
    # @!attribute instance_url
    #   <p> The location of the Zendesk resource. </p>
    #
    #   @return [String]
    #
    ZendeskConnectorProfileProperties = ::Struct.new(
      :instance_url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The properties that are applied when Zendesk is used as a destination.</p>
    #
    # @!attribute object
    #   <p>The object specified in the Zendesk flow destination.</p>
    #
    #   @return [String]
    #
    # @!attribute id_field_names
    #   <p> A list of field names that can be used as an ID field when performing a write operation.
    #       </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute error_handling_config
    #   <p> The settings that determine how Amazon AppFlow handles an error when placing data
    #         in the destination. For example, this setting would determine if the flow should fail after
    #         one insertion error, or continue and attempt to insert every record regardless of the initial
    #         failure. <code>ErrorHandlingConfig</code> is a part of the destination connector details.
    #       </p>
    #
    #   @return [ErrorHandlingConfig]
    #
    # @!attribute write_operation_type
    #   <p> The possible write operations in the destination connector. When this value is not
    #         provided, this defaults to the <code>INSERT</code> operation. </p>
    #
    #   Enum, one of: ["INSERT", "UPSERT", "UPDATE", "DELETE"]
    #
    #   @return [String]
    #
    ZendeskDestinationProperties = ::Struct.new(
      :object,
      :id_field_names,
      :error_handling_config,
      :write_operation_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The connector metadata specific to Zendesk. </p>
    #
    # @!attribute o_auth_scopes
    #   <p> The desired authorization scope for the Zendesk account. </p>
    #
    #   @return [Array<String>]
    #
    ZendeskMetadata = ::Struct.new(
      :o_auth_scopes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The properties that are applied when using Zendesk as a flow source. </p>
    #
    # @!attribute object
    #   <p> The object specified in the Zendesk flow source. </p>
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
