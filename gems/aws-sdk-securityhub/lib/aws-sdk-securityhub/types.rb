# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SecurityHub
  module Types

    # @!attribute administrator_id
    #   <p>The account ID of the Security Hub administrator account that sent the invitation.</p>
    #
    #   @return [String]
    #
    # @!attribute invitation_id
    #   <p>The identifier of the invitation sent from the Security Hub administrator account.</p>
    #
    #   @return [String]
    #
    AcceptAdministratorInvitationInput = ::Struct.new(
      :administrator_id,
      :invitation_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AcceptAdministratorInvitationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute master_id
    #   <p>The account ID of the Security Hub administrator account that sent the invitation.</p>
    #
    #   @return [String]
    #
    # @!attribute invitation_id
    #   <p>The identifier of the invitation sent from the Security Hub administrator account.</p>
    #
    #   @return [String]
    #
    AcceptInvitationInput = ::Struct.new(
      :master_id,
      :invitation_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AcceptInvitationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You don't have permission to perform the action specified in the request.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute code
    #
    #   @return [String]
    #
    AccessDeniedException = ::Struct.new(
      :message,
      :code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The details of an Amazon Web Services account.</p>
    #
    # @!attribute account_id
    #   <p>The ID of an Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    # @!attribute email
    #   <p>The email of an Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    AccountDetails = ::Struct.new(
      :account_id,
      :email,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides details about one of the following actions that affects or that was taken on a resource:</p>
    #          <ul>
    #             <li>
    #                <p>A remote IP address issued an Amazon Web Services API call</p>
    #             </li>
    #             <li>
    #                <p>A DNS request was received</p>
    #             </li>
    #             <li>
    #                <p>A remote IP address attempted to connect to an EC2 instance</p>
    #             </li>
    #             <li>
    #                <p>A remote IP address attempted a port probe on an EC2 instance</p>
    #             </li>
    #          </ul>
    #
    # @!attribute action_type
    #   <p>The type of action that was detected. The possible action types are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NETWORK_CONNECTION</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AWS_API_CALL</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DNS_REQUEST</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PORT_PROBE</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute network_connection_action
    #   <p>Included if <code>ActionType</code> is <code>NETWORK_CONNECTION</code>. Provides details
    #            about the network connection that was detected.</p>
    #
    #   @return [NetworkConnectionAction]
    #
    # @!attribute aws_api_call_action
    #   <p>Included if <code>ActionType</code> is <code>AWS_API_CALL</code>. Provides details about
    #            the API call that was detected. </p>
    #
    #   @return [AwsApiCallAction]
    #
    # @!attribute dns_request_action
    #   <p>Included if <code>ActionType</code> is <code>DNS_REQUEST</code>. Provides details about
    #            the DNS request that was detected. </p>
    #
    #   @return [DnsRequestAction]
    #
    # @!attribute port_probe_action
    #   <p>Included if <code>ActionType</code> is <code>PORT_PROBE</code>. Provides details about
    #            the port probe that was detected. </p>
    #
    #   @return [PortProbeAction]
    #
    Action = ::Struct.new(
      :action_type,
      :network_connection_action,
      :aws_api_call_action,
      :dns_request_action,
      :port_probe_action,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about the IP address where the scanned port is located.</p>
    #
    # @!attribute ip_address_v4
    #   <p>The IP address.</p>
    #
    #   @return [String]
    #
    ActionLocalIpDetails = ::Struct.new(
      :ip_address_v4,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>For <code>NetworkConnectionAction</code> and <code>PortProbeDetails</code>,
    #             <code>LocalPortDetails</code> provides information about the local port that was
    #          involved in the action.</p>
    #
    # @!attribute port
    #   <p>The number of the port.</p>
    #
    #   @return [Integer]
    #
    # @!attribute port_name
    #   <p>The port name of the local connection.</p>
    #
    #   @return [String]
    #
    ActionLocalPortDetails = ::Struct.new(
      :port,
      :port_name,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.port ||= 0
      end
    end

    # <p>For <code>AwsApiAction</code>, <code>NetworkConnectionAction</code>, and
    #             <code>PortProbeAction</code>, <code>RemoteIpDetails</code> provides information about
    #          the remote IP address that was involved in the action.</p>
    #
    # @!attribute ip_address_v4
    #   <p>The IP address.</p>
    #
    #   @return [String]
    #
    # @!attribute organization
    #   <p>The internet service provider (ISP) organization associated with the remote IP
    #            address.</p>
    #
    #   @return [IpOrganizationDetails]
    #
    # @!attribute country
    #   <p>The country where the remote IP address is located.</p>
    #
    #   @return [Country]
    #
    # @!attribute city
    #   <p>The city where the remote IP address is located.</p>
    #
    #   @return [City]
    #
    # @!attribute geo_location
    #   <p>The coordinates of the location of the remote IP address.</p>
    #
    #   @return [GeoLocation]
    #
    ActionRemoteIpDetails = ::Struct.new(
      :ip_address_v4,
      :organization,
      :country,
      :city,
      :geo_location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about the remote port that was involved in an attempted network
    #          connection.</p>
    #
    # @!attribute port
    #   <p>The number of the port.</p>
    #
    #   @return [Integer]
    #
    # @!attribute port_name
    #   <p>The port name of the remote connection.</p>
    #
    #   @return [String]
    #
    ActionRemotePortDetails = ::Struct.new(
      :port,
      :port_name,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.port ||= 0
      end
    end

    # <p>An <code>ActionTarget</code> object.</p>
    #
    # @!attribute action_target_arn
    #   <p>The ARN for the target action.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the action target.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the target action.</p>
    #
    #   @return [String]
    #
    ActionTarget = ::Struct.new(
      :action_target_arn,
      :name,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An adjustment to the CVSS metric.</p>
    #
    # @!attribute metric
    #   <p>The metric to adjust.</p>
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>The reason for the adjustment.</p>
    #
    #   @return [String]
    #
    Adjustment = ::Struct.new(
      :metric,
      :reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a Security Hub administrator account designated by an organization management
    #          account.</p>
    #
    # @!attribute account_id
    #   <p>The Amazon Web Services account identifier of the Security Hub administrator account.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the Security Hub administrator account. Indicates whether the account is
    #            currently enabled as a Security Hub administrator.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLE_IN_PROGRESS"]
    #
    #   @return [String]
    #
    AdminAccount = ::Struct.new(
      :account_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AdminStatus
    #
    module AdminStatus
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLE_IN_PROGRESS = "DISABLE_IN_PROGRESS"
    end

    # Includes enum constants for AutoEnableStandards
    #
    module AutoEnableStandards
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      DEFAULT = "DEFAULT"
    end

    # <p>Information about an Availability Zone.</p>
    #
    # @!attribute zone_name
    #   <p>The name of the Availability Zone.</p>
    #
    #   @return [String]
    #
    # @!attribute subnet_id
    #   <p>The ID of the subnet. You can specify one subnet per Availability Zone.</p>
    #
    #   @return [String]
    #
    AvailabilityZone = ::Struct.new(
      :zone_name,
      :subnet_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provided if <code>ActionType</code> is <code>AWS_API_CALL</code>. It provides details
    #          about the API call that was detected.</p>
    #
    # @!attribute api
    #   <p>The name of the API method that was issued.</p>
    #
    #   @return [String]
    #
    # @!attribute service_name
    #   <p>The name of the Amazon Web Services service that the API method belongs to.</p>
    #
    #   @return [String]
    #
    # @!attribute caller_type
    #   <p>Indicates whether the API call originated from a remote IP address
    #               (<code>remoteip</code>) or from a DNS domain (<code>domain</code>).</p>
    #
    #   @return [String]
    #
    # @!attribute remote_ip_details
    #   <p>Provided if <code>CallerType</code> is <code>remoteIp</code>. Provides information about
    #            the remote IP address that the API call originated from.</p>
    #
    #   @return [ActionRemoteIpDetails]
    #
    # @!attribute domain_details
    #   <p>Provided if <code>CallerType</code> is <code>domain</code>. Provides information about
    #            the DNS domain that the API call originated from.</p>
    #
    #   @return [AwsApiCallActionDomainDetails]
    #
    # @!attribute affected_resources
    #   <p>Identifies the resources that were affected by the API call.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute first_seen
    #   <p>An ISO8601-formatted timestamp that indicates when the API call was first
    #            observed.</p>
    #
    #   @return [String]
    #
    # @!attribute last_seen
    #   <p>An ISO8601-formatted timestamp that indicates when the API call was most recently
    #            observed.</p>
    #
    #   @return [String]
    #
    AwsApiCallAction = ::Struct.new(
      :api,
      :service_name,
      :caller_type,
      :remote_ip_details,
      :domain_details,
      :affected_resources,
      :first_seen,
      :last_seen,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provided if <code>CallerType</code> is <code>domain</code>. It provides information
    #          about the DNS domain that issued the API call.</p>
    #
    # @!attribute domain
    #   <p>The name of the DNS domain that issued the API call.</p>
    #
    #   @return [String]
    #
    AwsApiCallActionDomainDetails = ::Struct.new(
      :domain,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about settings for logging access for the stage.</p>
    #
    # @!attribute format
    #   <p>A single-line format of the access logs of data, as specified by selected
    #               <code>$context</code> variables. The format must include at least
    #               <code>$context.requestId</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_arn
    #   <p>The ARN of the CloudWatch Logs log group that receives the access logs.</p>
    #
    #   @return [String]
    #
    AwsApiGatewayAccessLogSettings = ::Struct.new(
      :format,
      :destination_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about settings for canary deployment in the stage.</p>
    #
    # @!attribute percent_traffic
    #   <p>The percentage of traffic that is diverted to a canary deployment.</p>
    #
    #   @return [Float]
    #
    # @!attribute deployment_id
    #   <p>The deployment identifier for the canary deployment.</p>
    #
    #   @return [String]
    #
    # @!attribute stage_variable_overrides
    #   <p>Stage variables that are overridden in the canary release deployment. The variables
    #            include new stage variables that are introduced in the canary.</p>
    #            <p>Each variable is represented as a string-to-string map between the stage variable name
    #            and the variable value.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute use_stage_cache
    #   <p>Indicates whether the canary deployment uses the stage cache.</p>
    #
    #   @return [Boolean]
    #
    AwsApiGatewayCanarySettings = ::Struct.new(
      :percent_traffic,
      :deployment_id,
      :stage_variable_overrides,
      :use_stage_cache,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.percent_traffic ||= 0
        self.use_stage_cache ||= false
      end
    end

    # <p>Contains information about the endpoints for the API.</p>
    #
    # @!attribute types
    #   <p>A list of endpoint types for the REST API.</p>
    #            <p>For an edge-optimized API, the endpoint type is <code>EDGE</code>. For a Regional API,
    #            the endpoint type is <code>REGIONAL</code>. For a private API, the endpoint type is
    #               <code>PRIVATE</code>.</p>
    #
    #   @return [Array<String>]
    #
    AwsApiGatewayEndpointConfiguration = ::Struct.new(
      :types,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Defines settings for a method for the stage.</p>
    #
    # @!attribute metrics_enabled
    #   <p>Indicates whether CloudWatch metrics are enabled for the method. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute logging_level
    #   <p>The logging level for this method. The logging level affects the log entries that are
    #            pushed to CloudWatch Logs.</p>
    #            <p>If the logging level is <code>ERROR</code>, then the logs only include error-level
    #            entries.</p>
    #            <p>If the logging level is <code>INFO</code>, then the logs include both <code>ERROR</code>
    #            events and extra informational events.</p>
    #            <p>Valid values: <code>OFF</code> | <code>ERROR</code> | <code>INFO</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute data_trace_enabled
    #   <p>Indicates whether data trace logging is enabled for the method. Data trace logging
    #            affects the log entries that are pushed to CloudWatch Logs.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute throttling_burst_limit
    #   <p>The throttling burst limit for the method.</p>
    #
    #   @return [Integer]
    #
    # @!attribute throttling_rate_limit
    #   <p>The throttling rate limit for the method.</p>
    #
    #   @return [Float]
    #
    # @!attribute caching_enabled
    #   <p>Indicates whether responses are cached and returned for requests. For responses to be
    #            cached, a cache cluster must be enabled on the stage.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute cache_ttl_in_seconds
    #   <p>Specifies the time to live (TTL), in seconds, for cached responses. The higher the TTL,
    #            the longer the response is cached.</p>
    #
    #   @return [Integer]
    #
    # @!attribute cache_data_encrypted
    #   <p>Indicates whether the cached responses are encrypted. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute require_authorization_for_cache_control
    #   <p>Indicates whether authorization is required for a cache invalidation request.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute unauthorized_cache_control_header_strategy
    #   <p>Indicates how to handle unauthorized requests for cache invalidation.</p>
    #            <p>Valid values: <code>FAIL_WITH_403</code> | <code>SUCCEED_WITH_RESPONSE_HEADER</code> |
    #               <code>SUCCEED_WITHOUT_RESPONSE_HEADER</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute http_method
    #   <p>The HTTP method. You can use an asterisk (*) as a wildcard to apply method settings to
    #            multiple methods.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_path
    #   <p>The resource path for this method. Forward slashes (/) are encoded as ~1 . The initial
    #            slash must include a forward slash.</p>
    #            <p>For example, the path value <code>/resource/subresource</code> must be encoded as
    #               <code>/~1resource~1subresource</code>.</p>
    #            <p>To specify the root path, use only a slash (/). You can use an asterisk (*) as a
    #            wildcard to apply method settings to multiple methods.</p>
    #
    #   @return [String]
    #
    AwsApiGatewayMethodSettings = ::Struct.new(
      :metrics_enabled,
      :logging_level,
      :data_trace_enabled,
      :throttling_burst_limit,
      :throttling_rate_limit,
      :caching_enabled,
      :cache_ttl_in_seconds,
      :cache_data_encrypted,
      :require_authorization_for_cache_control,
      :unauthorized_cache_control_header_strategy,
      :http_method,
      :resource_path,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.metrics_enabled ||= false
        self.data_trace_enabled ||= false
        self.throttling_burst_limit ||= 0
        self.throttling_rate_limit ||= 0
        self.caching_enabled ||= false
        self.cache_ttl_in_seconds ||= 0
        self.cache_data_encrypted ||= false
        self.require_authorization_for_cache_control ||= false
      end
    end

    # <p>Contains information about a REST API in version 1 of Amazon API Gateway.</p>
    #
    # @!attribute id
    #   <p>The identifier of the REST API.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the REST API.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the REST API.</p>
    #
    #   @return [String]
    #
    # @!attribute created_date
    #   <p>Indicates when the API was created.</p>
    #            <p>Uses the <code>date-time</code> format specified in <a href="https://tools.ietf.org/html/rfc3339 section-5.6">RFC 3339 section 5.6, Internet
    #               Date/Time Format</a>. The value cannot contain spaces. For example,
    #               <code>2020-03-22T13:22:13.933Z</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version identifier for the REST API.</p>
    #
    #   @return [String]
    #
    # @!attribute binary_media_types
    #   <p>The list of binary media types supported by the REST API.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute minimum_compression_size
    #   <p>The minimum size in bytes of a payload before compression is enabled.</p>
    #            <p>If <code>null</code>, then compression is disabled.</p>
    #            <p>If 0, then all payloads are compressed.</p>
    #
    #   @return [Integer]
    #
    # @!attribute api_key_source
    #   <p>The source of the API key for metering requests according to a usage plan.</p>
    #            <p>
    #               <code>HEADER</code> indicates whether to read the API key from the X-API-Key header of a
    #            request.</p>
    #            <p>
    #               <code>AUTHORIZER</code> indicates whether to read the API key from the
    #               <code>UsageIdentifierKey</code> from a custom authorizer.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_configuration
    #   <p>The endpoint configuration of the REST API.</p>
    #
    #   @return [AwsApiGatewayEndpointConfiguration]
    #
    AwsApiGatewayRestApiDetails = ::Struct.new(
      :id,
      :name,
      :description,
      :created_date,
      :version,
      :binary_media_types,
      :minimum_compression_size,
      :api_key_source,
      :endpoint_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.minimum_compression_size ||= 0
      end
    end

    # <p>Provides information about a version 1 Amazon API Gateway stage.</p>
    #
    # @!attribute deployment_id
    #   <p>The identifier of the deployment that the stage points to.</p>
    #
    #   @return [String]
    #
    # @!attribute client_certificate_id
    #   <p>The identifier of the client certificate for the stage.</p>
    #
    #   @return [String]
    #
    # @!attribute stage_name
    #   <p>The name of the stage.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the stage.</p>
    #
    #   @return [String]
    #
    # @!attribute cache_cluster_enabled
    #   <p>Indicates whether a cache cluster is enabled for the stage.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute cache_cluster_size
    #   <p>If a cache cluster is enabled, the size of the cache cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute cache_cluster_status
    #   <p>If a cache cluster is enabled, the status of the cache cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute method_settings
    #   <p>Defines the method settings for the stage.</p>
    #
    #   @return [Array<AwsApiGatewayMethodSettings>]
    #
    # @!attribute variables
    #   <p>A map that defines the stage variables for the stage.</p>
    #            <p>Variable names can have alphanumeric and underscore characters.</p>
    #            <p>Variable values can contain the following characters:</p>
    #            <ul>
    #               <li>
    #                  <p>Uppercase and lowercase letters</p>
    #               </li>
    #               <li>
    #                  <p>Numbers</p>
    #               </li>
    #               <li>
    #                  <p>Special characters -._~:/? &=,</p>
    #               </li>
    #            </ul>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute documentation_version
    #   <p>The version of the API documentation that is associated with the stage.</p>
    #
    #   @return [String]
    #
    # @!attribute access_log_settings
    #   <p>Settings for logging access for the stage.</p>
    #
    #   @return [AwsApiGatewayAccessLogSettings]
    #
    # @!attribute canary_settings
    #   <p>Information about settings for canary deployment in the stage.</p>
    #
    #   @return [AwsApiGatewayCanarySettings]
    #
    # @!attribute tracing_enabled
    #   <p>Indicates whether active tracing with X-Ray is enabled for the stage.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute created_date
    #   <p>Indicates when the stage was created.</p>
    #            <p>Uses the <code>date-time</code> format specified in <a href="https://tools.ietf.org/html/rfc3339 section-5.6">RFC 3339 section 5.6, Internet
    #               Date/Time Format</a>. The value cannot contain spaces. For example,
    #               <code>2020-03-22T13:22:13.933Z</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute last_updated_date
    #   <p>Indicates when the stage was most recently updated.</p>
    #            <p>Uses the <code>date-time</code> format specified in <a href="https://tools.ietf.org/html/rfc3339 section-5.6">RFC 3339 section 5.6, Internet
    #               Date/Time Format</a>. The value cannot contain spaces. For example,
    #               <code>2020-03-22T13:22:13.933Z</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute web_acl_arn
    #   <p>The ARN of the web ACL associated with the stage.</p>
    #
    #   @return [String]
    #
    AwsApiGatewayStageDetails = ::Struct.new(
      :deployment_id,
      :client_certificate_id,
      :stage_name,
      :description,
      :cache_cluster_enabled,
      :cache_cluster_size,
      :cache_cluster_status,
      :method_settings,
      :variables,
      :documentation_version,
      :access_log_settings,
      :canary_settings,
      :tracing_enabled,
      :created_date,
      :last_updated_date,
      :web_acl_arn,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.cache_cluster_enabled ||= false
        self.tracing_enabled ||= false
      end
    end

    # <p>Contains information about a version 2 API in Amazon API Gateway.</p>
    #
    # @!attribute api_endpoint
    #   <p>The URI of the API. </p>
    #            <p>Uses the format
    #                  <code>
    #                  <i><api-id></i>.execute-api.<i><region></i>.amazonaws.com</code>
    #            </p>
    #            <p>The stage name is typically appended to the URI to form a complete path to a deployed
    #            API stage.</p>
    #
    #   @return [String]
    #
    # @!attribute api_id
    #   <p>The identifier of the API.</p>
    #
    #   @return [String]
    #
    # @!attribute api_key_selection_expression
    #   <p>An API key selection expression. Supported only for WebSocket APIs. </p>
    #
    #   @return [String]
    #
    # @!attribute created_date
    #   <p>Indicates when the API was created.</p>
    #            <p>Uses the <code>date-time</code> format specified in <a href="https://tools.ietf.org/html/rfc3339 section-5.6">RFC 3339 section 5.6, Internet
    #               Date/Time Format</a>. The value cannot contain spaces. For example,
    #               <code>2020-03-22T13:22:13.933Z</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the API.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version identifier for the API.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the API.</p>
    #
    #   @return [String]
    #
    # @!attribute protocol_type
    #   <p>The API protocol for the API.</p>
    #            <p>Valid values: <code>WEBSOCKET</code> | <code>HTTP</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute route_selection_expression
    #   <p>The route selection expression for the API.</p>
    #            <p>For HTTP APIs, must be <code>${request.method} ${request.path}</code>. This is the
    #            default value for HTTP APIs.</p>
    #            <p>For WebSocket APIs, there is no default value.</p>
    #
    #   @return [String]
    #
    # @!attribute cors_configuration
    #   <p>A cross-origin resource sharing (CORS) configuration. Supported only for HTTP
    #            APIs.</p>
    #
    #   @return [AwsCorsConfiguration]
    #
    AwsApiGatewayV2ApiDetails = ::Struct.new(
      :api_endpoint,
      :api_id,
      :api_key_selection_expression,
      :created_date,
      :description,
      :version,
      :name,
      :protocol_type,
      :route_selection_expression,
      :cors_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains route settings for a stage.</p>
    #
    # @!attribute detailed_metrics_enabled
    #   <p>Indicates whether detailed metrics are enabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute logging_level
    #   <p>The logging level. The logging level affects the log entries that are pushed to
    #            CloudWatch Logs. Supported only for WebSocket APIs.</p>
    #            <p>If the logging level is <code>ERROR</code>, then the logs only include error-level
    #            entries.</p>
    #            <p>If the logging level is <code>INFO</code>, then the logs include both <code>ERROR</code>
    #            events and extra informational events.</p>
    #            <p>Valid values: <code>OFF</code> | <code>ERROR</code> | <code>INFO</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute data_trace_enabled
    #   <p>Indicates whether data trace logging is enabled. Data trace logging affects the log
    #            entries that are pushed to CloudWatch Logs. Supported only for WebSocket APIs.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute throttling_burst_limit
    #   <p>The throttling burst limit.</p>
    #
    #   @return [Integer]
    #
    # @!attribute throttling_rate_limit
    #   <p>The throttling rate limit.</p>
    #
    #   @return [Float]
    #
    AwsApiGatewayV2RouteSettings = ::Struct.new(
      :detailed_metrics_enabled,
      :logging_level,
      :data_trace_enabled,
      :throttling_burst_limit,
      :throttling_rate_limit,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.detailed_metrics_enabled ||= false
        self.data_trace_enabled ||= false
        self.throttling_burst_limit ||= 0
        self.throttling_rate_limit ||= 0
      end
    end

    # <p>Contains information about a version 2 stage for Amazon API Gateway.</p>
    #
    # @!attribute client_certificate_id
    #   <p>The identifier of a client certificate for a stage. Supported only for WebSocket API calls.</p>
    #
    #   @return [String]
    #
    # @!attribute created_date
    #   <p>Indicates when the stage was created.</p>
    #            <p>Uses the <code>date-time</code> format specified in <a href="https://tools.ietf.org/html/rfc3339 section-5.6">RFC 3339 section 5.6, Internet
    #               Date/Time Format</a>. The value cannot contain spaces. For example,
    #               <code>2020-03-22T13:22:13.933Z</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the stage.</p>
    #
    #   @return [String]
    #
    # @!attribute default_route_settings
    #   <p>Default route settings for the stage.</p>
    #
    #   @return [AwsApiGatewayV2RouteSettings]
    #
    # @!attribute deployment_id
    #   <p>The identifier of the deployment that the stage is associated with. </p>
    #
    #   @return [String]
    #
    # @!attribute last_updated_date
    #   <p>Indicates when the stage was most recently updated.</p>
    #            <p>Uses the <code>date-time</code> format specified in <a href="https://tools.ietf.org/html/rfc3339 section-5.6">RFC 3339 section 5.6, Internet
    #               Date/Time Format</a>. The value cannot contain spaces. For example,
    #               <code>2020-03-22T13:22:13.933Z</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute route_settings
    #   <p>The route settings for the stage.</p>
    #
    #   @return [AwsApiGatewayV2RouteSettings]
    #
    # @!attribute stage_name
    #   <p>The name of the stage.</p>
    #
    #   @return [String]
    #
    # @!attribute stage_variables
    #   <p>A map that defines the stage variables for the stage.</p>
    #            <p>Variable names can have alphanumeric and underscore characters.</p>
    #            <p>Variable values can contain the following characters:</p>
    #            <ul>
    #               <li>
    #                  <p>Uppercase and lowercase letters</p>
    #               </li>
    #               <li>
    #                  <p>Numbers</p>
    #               </li>
    #               <li>
    #                  <p>Special characters -._~:/? &=,</p>
    #               </li>
    #            </ul>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute access_log_settings
    #   <p>Information about settings for logging access for the stage.</p>
    #
    #   @return [AwsApiGatewayAccessLogSettings]
    #
    # @!attribute auto_deploy
    #   <p>Indicates whether updates to an API automatically trigger a new deployment.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute last_deployment_status_message
    #   <p>The status of the last deployment of a stage. Supported only if the stage has automatic
    #            deployment enabled.</p>
    #
    #   @return [String]
    #
    # @!attribute api_gateway_managed
    #   <p>Indicates whether the stage is managed by API Gateway.</p>
    #
    #   @return [Boolean]
    #
    AwsApiGatewayV2StageDetails = ::Struct.new(
      :client_certificate_id,
      :created_date,
      :description,
      :default_route_settings,
      :deployment_id,
      :last_updated_date,
      :route_settings,
      :stage_name,
      :stage_variables,
      :access_log_settings,
      :auto_deploy,
      :last_deployment_status_message,
      :api_gateway_managed,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.auto_deploy ||= false
        self.api_gateway_managed ||= false
      end
    end

    # <p>An Availability Zone for the automatic scaling group.</p>
    #
    # @!attribute value
    #   <p>The name of the Availability Zone.</p>
    #
    #   @return [String]
    #
    AwsAutoScalingAutoScalingGroupAvailabilityZonesListDetails = ::Struct.new(
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides details about an auto scaling group.</p>
    #
    # @!attribute launch_configuration_name
    #   <p>The name of the launch configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute load_balancer_names
    #   <p>The list of load balancers associated with the group.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute health_check_type
    #   <p>The service to use for the health checks.</p>
    #
    #   @return [String]
    #
    # @!attribute health_check_grace_period
    #   <p>The amount of time, in seconds, that Amazon EC2 Auto Scaling waits before it checks the
    #            health status of an EC2 instance that has come into service.</p>
    #
    #   @return [Integer]
    #
    # @!attribute created_time
    #   <p>Indicates when the auto scaling group was created.</p>
    #            <p>Uses the <code>date-time</code> format specified in <a href="https://tools.ietf.org/html/rfc3339 section-5.6">RFC 3339 section 5.6, Internet
    #               Date/Time Format</a>. The value cannot contain spaces. For example,
    #               <code>2020-03-22T13:22:13.933Z</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute mixed_instances_policy
    #   <p>The mixed instances policy for the automatic scaling group.</p>
    #
    #   @return [AwsAutoScalingAutoScalingGroupMixedInstancesPolicyDetails]
    #
    # @!attribute availability_zones
    #   <p>The list of Availability Zones for the automatic scaling group.</p>
    #
    #   @return [Array<AwsAutoScalingAutoScalingGroupAvailabilityZonesListDetails>]
    #
    # @!attribute launch_template
    #   <p>The launch template to use.</p>
    #
    #   @return [AwsAutoScalingAutoScalingGroupLaunchTemplateLaunchTemplateSpecification]
    #
    # @!attribute capacity_rebalance
    #   <p>Indicates whether capacity rebalancing is enabled.
    #         </p>
    #
    #   @return [Boolean]
    #
    AwsAutoScalingAutoScalingGroupDetails = ::Struct.new(
      :launch_configuration_name,
      :load_balancer_names,
      :health_check_type,
      :health_check_grace_period,
      :created_time,
      :mixed_instances_policy,
      :availability_zones,
      :launch_template,
      :capacity_rebalance,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.health_check_grace_period ||= 0
        self.capacity_rebalance ||= false
      end
    end

    # <p>Details about the launch template to use.</p>
    #
    # @!attribute launch_template_id
    #   <p>The identifier of the launch template. You must specify either <code>LaunchTemplateId</code> or <code>LaunchTemplateName</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute launch_template_name
    #   <p>The name of the launch template. You must specify either <code>LaunchTemplateId</code> or <code>LaunchTemplateName</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>Identifies the version of the launch template. You can specify a version identifier, or use the values <code>$Latest</code> or <code>$Default</code>.</p>
    #
    #   @return [String]
    #
    AwsAutoScalingAutoScalingGroupLaunchTemplateLaunchTemplateSpecification = ::Struct.new(
      :launch_template_id,
      :launch_template_name,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The mixed instances policy for the automatic scaling group.</p>
    #
    # @!attribute instances_distribution
    #   <p>The instances distribution. The instances distribution specifies the distribution of On-Demand Instances and Spot Instances, the maximum price to pay for Spot Instances, and how the Auto Scaling group allocates instance types to fulfill On-Demand and Spot capacity.</p>
    #
    #   @return [AwsAutoScalingAutoScalingGroupMixedInstancesPolicyInstancesDistributionDetails]
    #
    # @!attribute launch_template
    #   <p>The launch template to use and the instance types (overrides) to use to provision EC2 instances to fulfill On-Demand and Spot capacities.</p>
    #
    #   @return [AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateDetails]
    #
    AwsAutoScalingAutoScalingGroupMixedInstancesPolicyDetails = ::Struct.new(
      :instances_distribution,
      :launch_template,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the instances distribution.</p>
    #
    # @!attribute on_demand_allocation_strategy
    #   <p>How to allocate instance types to fulfill On-Demand capacity.</p>
    #
    #   @return [String]
    #
    # @!attribute on_demand_base_capacity
    #   <p>The minimum amount of the Auto Scaling group's capacity that must be fulfilled by On-Demand Instances.</p>
    #
    #   @return [Integer]
    #
    # @!attribute on_demand_percentage_above_base_capacity
    #   <p>The percentage of On-Demand Instances and Spot Instances for additional capacity beyond <code>OnDemandBaseCapacity</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute spot_allocation_strategy
    #   <p>How to allocate instances across Spot Instance pools.</p>
    #
    #   @return [String]
    #
    # @!attribute spot_instance_pools
    #   <p>The number of Spot Instance pools across which to allocate your Spot Instances.</p>
    #
    #   @return [Integer]
    #
    # @!attribute spot_max_price
    #   <p>The maximum price per unit hour that you are willing to pay for a Spot Instance.</p>
    #
    #   @return [String]
    #
    AwsAutoScalingAutoScalingGroupMixedInstancesPolicyInstancesDistributionDetails = ::Struct.new(
      :on_demand_allocation_strategy,
      :on_demand_base_capacity,
      :on_demand_percentage_above_base_capacity,
      :spot_allocation_strategy,
      :spot_instance_pools,
      :spot_max_price,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.on_demand_base_capacity ||= 0
        self.on_demand_percentage_above_base_capacity ||= 0
        self.spot_instance_pools ||= 0
      end
    end

    # <p>Describes a launch template and overrides for a mixed instances policy.</p>
    #
    # @!attribute launch_template_specification
    #   <p>The launch template to use for a mixed instances policy.</p>
    #
    #   @return [AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecification]
    #
    # @!attribute overrides
    #   <p>Property values to use to override the values in the launch template.</p>
    #
    #   @return [Array<AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateOverridesListDetails>]
    #
    AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateDetails = ::Struct.new(
      :launch_template_specification,
      :overrides,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about the launch template to use for a mixed instances policy.</p>
    #
    # @!attribute launch_template_id
    #   <p>The identifier of the launch template. You must specify either <code>LaunchTemplateId</code> or <code>LaunchTemplateName</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute launch_template_name
    #   <p>The name of the launch template. You must specify either <code>LaunchTemplateId</code> or <code>LaunchTemplateName</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>Identifies the version of the launch template. You can specify a version identifier, or use the values <code>$Latest</code> or <code>$Default</code>.</p>
    #
    #   @return [String]
    #
    AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecification = ::Struct.new(
      :launch_template_id,
      :launch_template_name,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Property values to use to override the values in the launch template.</p>
    #
    # @!attribute instance_type
    #   <p>The instance type. For example, <code>m3.xlarge</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute weighted_capacity
    #   <p>The number of capacity units provided by the specified instance type in terms of virtual CPUs, memory, storage, throughput, or other relative performance characteristic.</p>
    #
    #   @return [String]
    #
    AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateOverridesListDetails = ::Struct.new(
      :instance_type,
      :weighted_capacity,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A block device for the instance.</p>
    #
    # @!attribute device_name
    #   <p>The device name that is exposed to the EC2 instance. For example, <code>/dev/sdh</code> or <code>xvdh</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute ebs
    #   <p>Parameters that are used to automatically set up Amazon EBS volumes when an instance is launched.</p>
    #
    #   @return [AwsAutoScalingLaunchConfigurationBlockDeviceMappingsEbsDetails]
    #
    # @!attribute no_device
    #   <p>Whether to suppress the device that is included in the block device mapping of the Amazon Machine Image (AMI).</p>
    #            <p>If <code>NoDevice</code> is <code>true</code>, then you cannot specify <code>Ebs</code>.></p>
    #
    #   @return [Boolean]
    #
    # @!attribute virtual_name
    #   <p>The name of the virtual device (for example, <code>ephemeral0</code>).</p>
    #            <p>You can provide either <code>VirtualName</code> or <code>Ebs</code>, but not both.</p>
    #
    #   @return [String]
    #
    AwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails = ::Struct.new(
      :device_name,
      :ebs,
      :no_device,
      :virtual_name,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.no_device ||= false
      end
    end

    # <p>Parameters that are used to automatically set up EBS volumes when an instance is launched.</p>
    #
    # @!attribute delete_on_termination
    #   <p>Whether to delete the volume when the instance is terminated.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute encrypted
    #   <p>Whether to encrypt the volume.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute iops
    #   <p>The number of input/output (I/O) operations per second (IOPS) to provision for the volume.</p>
    #            <p>Only supported for <code>gp3</code> or <code>io1</code> volumes. Required for <code>io1</code> volumes. Not used with <code>standard</code>, <code>gp2</code>, <code>st1</code>, or <code>sc1</code> volumes.</p>
    #
    #   @return [Integer]
    #
    # @!attribute snapshot_id
    #   <p>The snapshot ID of the volume to use.</p>
    #            <p>You must specify either <code>VolumeSize</code> or <code>SnapshotId</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute volume_size
    #   <p>The volume size, in GiBs. The following are the supported volumes sizes for each volume type:</p>
    #            <ul>
    #               <li>
    #                  <p>gp2 and gp3: 1-16,384</p>
    #               </li>
    #               <li>
    #                  <p>io1: 4-16,384</p>
    #               </li>
    #               <li>
    #                  <p>st1 and sc1: 125-16,384</p>
    #               </li>
    #               <li>
    #                  <p>standard: 1-1,024</p>
    #               </li>
    #            </ul>
    #            <p>You must specify either <code>SnapshotId</code> or <code>VolumeSize</code>. If you specify both <code>SnapshotId</code> and <code>VolumeSize</code>, the volume size must be equal or greater than the size of the snapshot.</p>
    #
    #   @return [Integer]
    #
    # @!attribute volume_type
    #   <p>The volume type.</p>
    #
    #   @return [String]
    #
    AwsAutoScalingLaunchConfigurationBlockDeviceMappingsEbsDetails = ::Struct.new(
      :delete_on_termination,
      :encrypted,
      :iops,
      :snapshot_id,
      :volume_size,
      :volume_type,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.delete_on_termination ||= false
        self.encrypted ||= false
        self.iops ||= 0
        self.volume_size ||= 0
      end
    end

    # <p>Details about a launch configuration.</p>
    #
    # @!attribute associate_public_ip_address
    #   <p>For Auto Scaling groups that run in a VPC, specifies whether to assign a public IP address to the group's instances.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute block_device_mappings
    #   <p>Specifies the block devices for the instance.</p>
    #
    #   @return [Array<AwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails>]
    #
    # @!attribute classic_link_vpc_id
    #   <p>The identifier of a ClassicLink-enabled VPC that EC2-Classic instances are linked to.</p>
    #
    #   @return [String]
    #
    # @!attribute classic_link_vpc_security_groups
    #   <p>The identifiers of one or more security groups for the VPC that is specified in <code>ClassicLinkVPCId</code>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute created_time
    #   <p>The creation date and time for the launch configuration.</p>
    #            <p>Uses the <code>date-time</code> format specified in <a href="https://tools.ietf.org/html/rfc3339 section-5.6">RFC 3339 section 5.6, Internet
    #            Date/Time Format</a>. The value cannot contain spaces. For example,
    #            <code>2020-03-22T13:22:13.933Z</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute ebs_optimized
    #   <p>Whether the launch configuration is optimized for Amazon EBS I/O.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute iam_instance_profile
    #   <p>The name or the ARN of the instance profile associated with the IAM role for the
    #            instance. The instance profile contains the IAM role.</p>
    #
    #   @return [String]
    #
    # @!attribute image_id
    #   <p>The identifier of the Amazon Machine Image (AMI) that is used to launch EC2
    #            instances.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_monitoring
    #   <p>Indicates the type of monitoring for instances in the group.</p>
    #
    #   @return [AwsAutoScalingLaunchConfigurationInstanceMonitoringDetails]
    #
    # @!attribute instance_type
    #   <p>The instance type for the instances.</p>
    #
    #   @return [String]
    #
    # @!attribute kernel_id
    #   <p>The identifier of the kernel associated with the AMI.</p>
    #
    #   @return [String]
    #
    # @!attribute key_name
    #   <p>The name of the key pair.</p>
    #
    #   @return [String]
    #
    # @!attribute launch_configuration_name
    #   <p>The name of the launch configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute placement_tenancy
    #   <p>The tenancy of the instance. An instance with <code>dedicated</code> tenancy runs on
    #            isolated, single-tenant hardware and can only be launched into a VPC.</p>
    #
    #   @return [String]
    #
    # @!attribute ramdisk_id
    #   <p>The identifier of the RAM disk associated with the AMI.</p>
    #
    #   @return [String]
    #
    # @!attribute security_groups
    #   <p>The security groups to assign to the instances in the Auto Scaling group.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute spot_price
    #   <p>The maximum hourly price to be paid for any Spot Instance that is launched to fulfill the
    #            request.</p>
    #
    #   @return [String]
    #
    # @!attribute user_data
    #   <p>The user data to make available to the launched EC2 instances. Must be base64-encoded
    #            text.</p>
    #
    #   @return [String]
    #
    # @!attribute metadata_options
    #   <p>The metadata options for the instances.</p>
    #
    #   @return [AwsAutoScalingLaunchConfigurationMetadataOptions]
    #
    AwsAutoScalingLaunchConfigurationDetails = ::Struct.new(
      :associate_public_ip_address,
      :block_device_mappings,
      :classic_link_vpc_id,
      :classic_link_vpc_security_groups,
      :created_time,
      :ebs_optimized,
      :iam_instance_profile,
      :image_id,
      :instance_monitoring,
      :instance_type,
      :kernel_id,
      :key_name,
      :launch_configuration_name,
      :placement_tenancy,
      :ramdisk_id,
      :security_groups,
      :spot_price,
      :user_data,
      :metadata_options,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.associate_public_ip_address ||= false
        self.ebs_optimized ||= false
      end
    end

    # <p>Information about the type of monitoring for instances in the group.</p>
    #
    # @!attribute enabled
    #   <p>If set to <code>true</code>, then instances in the group launch with detailed
    #            monitoring.</p>
    #            <p>If set to <code>false</code>, then instances in the group launch with basic
    #            monitoring.</p>
    #
    #   @return [Boolean]
    #
    AwsAutoScalingLaunchConfigurationInstanceMonitoringDetails = ::Struct.new(
      :enabled,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.enabled ||= false
      end
    end

    # <p>The metadata options for the instances.</p>
    #
    # @!attribute http_endpoint
    #   <p>Enables or disables the HTTP metadata endpoint on your instances. By default, the metadata endpoint is enabled.</p>
    #
    #   @return [String]
    #
    # @!attribute http_put_response_hop_limit
    #   <p>The HTTP <code>PUT</code> response hop limit for instance metadata requests. The larger the number, the further instance metadata requests can travel.</p>
    #
    #   @return [Integer]
    #
    # @!attribute http_tokens
    #   <p>Indicates whether token usage is <code>required</code> or <code>optional</code> for metadata requests. By default, token usage is <code>optional</code>.</p>
    #
    #   @return [String]
    #
    AwsAutoScalingLaunchConfigurationMetadataOptions = ::Struct.new(
      :http_endpoint,
      :http_put_response_hop_limit,
      :http_tokens,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.http_put_response_hop_limit ||= 0
      end
    end

    # <p>Provides details about an Certificate Manager certificate.</p>
    #
    # @!attribute certificate_authority_arn
    #   <p>The ARN of the private certificate authority (CA) that will be used to issue the
    #            certificate.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>Indicates when the certificate was requested.</p>
    #            <p>Uses the <code>date-time</code> format specified in <a href="https://tools.ietf.org/html/rfc3339 section-5.6">RFC 3339 section 5.6, Internet
    #               Date/Time Format</a>. The value cannot contain spaces. For example,
    #               <code>2020-03-22T13:22:13.933Z</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute domain_name
    #   <p>The fully qualified domain name (FQDN), such as www.example.com, that is secured by the
    #            certificate.</p>
    #
    #   @return [String]
    #
    # @!attribute domain_validation_options
    #   <p>Contains information about the initial validation of each domain name that occurs as a
    #            result of the <code>RequestCertificate</code> request.</p>
    #            <p>Only provided if the certificate type is <code>AMAZON_ISSUED</code>.</p>
    #
    #   @return [Array<AwsCertificateManagerCertificateDomainValidationOption>]
    #
    # @!attribute extended_key_usages
    #   <p>Contains a list of Extended Key Usage X.509 v3 extension objects. Each object specifies
    #            a purpose for which the certificate public key can be used and consists of a name and an
    #            object identifier (OID).</p>
    #
    #   @return [Array<AwsCertificateManagerCertificateExtendedKeyUsage>]
    #
    # @!attribute failure_reason
    #   <p>For a failed certificate request, the reason for the failure.</p>
    #            <p>Valid values: <code>NO_AVAILABLE_CONTACTS</code> |
    #               <code>ADDITIONAL_VERIFICATION_REQUIRED</code> | <code>DOMAIN_NOT_ALLOWED</code> |
    #               <code>INVALID_PUBLIC_DOMAIN</code> | <code>DOMAIN_VALIDATION_DENIED</code> |
    #               <code>CAA_ERROR</code> | <code>PCA_LIMIT_EXCEEDED</code> | <code>PCA_INVALID_ARN</code>
    #            | <code>PCA_INVALID_STATE</code> | <code>PCA_REQUEST_FAILED</code> |
    #               <code>PCA_NAME_CONSTRAINTS_VALIDATION</code> | <code>PCA_RESOURCE_NOT_FOUND</code> |
    #               <code>PCA_INVALID_ARGS</code> | <code>PCA_INVALID_DURATION</code> |
    #               <code>PCA_ACCESS_DENIED</code> | <code>SLR_NOT_FOUND</code> | <code>OTHER</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute imported_at
    #   <p>Indicates when the certificate was imported. Provided if the certificate type is
    #               <code>IMPORTED</code>.</p>
    #            <p>Uses the <code>date-time</code> format specified in <a href="https://tools.ietf.org/html/rfc3339 section-5.6">RFC 3339 section 5.6, Internet
    #               Date/Time Format</a>. The value cannot contain spaces. For example,
    #               <code>2020-03-22T13:22:13.933Z</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute in_use_by
    #   <p>The list of ARNs for the Amazon Web Services resources that use the certificate.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute issued_at
    #   <p>Indicates when the certificate was issued. Provided if the certificate type is
    #               <code>AMAZON_ISSUED</code>.</p>
    #            <p>Uses the <code>date-time</code> format specified in <a href="https://tools.ietf.org/html/rfc3339 section-5.6">RFC 3339 section 5.6, Internet
    #               Date/Time Format</a>. The value cannot contain spaces. For example,
    #               <code>2020-03-22T13:22:13.933Z</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute issuer
    #   <p>The name of the certificate authority that issued and signed the certificate.</p>
    #
    #   @return [String]
    #
    # @!attribute key_algorithm
    #   <p>The algorithm that was used to generate the public-private key pair.</p>
    #            <p>Valid values: <code>RSA_2048</code> | <code>RSA_1024</code> |<code> RSA_4096</code> |
    #               <code>EC_prime256v1</code> | <code>EC_secp384r1</code> |
    #            <code>EC_secp521r1</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute key_usages
    #   <p>A list of key usage X.509 v3 extension objects.</p>
    #
    #   @return [Array<AwsCertificateManagerCertificateKeyUsage>]
    #
    # @!attribute not_after
    #   <p>The time after which the certificate becomes invalid.</p>
    #            <p>Uses the <code>date-time</code> format specified in <a href="https://tools.ietf.org/html/rfc3339 section-5.6">RFC 3339 section 5.6, Internet
    #               Date/Time Format</a>. The value cannot contain spaces. For example,
    #               <code>2020-03-22T13:22:13.933Z</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute not_before
    #   <p>The time before which the certificate is not valid.</p>
    #            <p>Uses the <code>date-time</code> format specified in <a href="https://tools.ietf.org/html/rfc3339 section-5.6">RFC 3339 section 5.6, Internet
    #               Date/Time Format</a>. The value cannot contain spaces. For example,
    #               <code>2020-03-22T13:22:13.933Z</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute options
    #   <p>Provides a value that specifies whether to add the certificate to a transparency
    #            log.</p>
    #
    #   @return [AwsCertificateManagerCertificateOptions]
    #
    # @!attribute renewal_eligibility
    #   <p>Whether the certificate is eligible for renewal.</p>
    #            <p>Valid values: <code>ELIGIBLE</code> | <code>INELIGIBLE</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute renewal_summary
    #   <p>Information about the status of the Certificate Manager managed renewal for the
    #            certificate. Provided only when the certificate type is <code>AMAZON_ISSUED</code>.</p>
    #
    #   @return [AwsCertificateManagerCertificateRenewalSummary]
    #
    # @!attribute serial
    #   <p>The serial number of the certificate.</p>
    #
    #   @return [String]
    #
    # @!attribute signature_algorithm
    #   <p>The algorithm that was used to sign the certificate.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the certificate.</p>
    #            <p>Valid values: <code>PENDING_VALIDATION</code> | <code>ISSUED</code> |
    #               <code>INACTIVE</code> | <code>EXPIRED</code> | <code>VALIDATION_TIMED_OUT</code> |
    #               <code>REVOKED</code> | <code>FAILED</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute subject
    #   <p>The name of the entity that is associated with the public key contained in the
    #            certificate.</p>
    #
    #   @return [String]
    #
    # @!attribute subject_alternative_names
    #   <p>One or more domain names (subject alternative names) included in the certificate. This
    #            list contains the domain names that are bound to the public key that is contained in the
    #            certificate.</p>
    #            <p>The subject alternative names include the canonical domain name (CN) of the certificate
    #            and additional domain names that can be used to connect to the website.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute type
    #   <p>The source of the certificate. For certificates that Certificate Manager provides,
    #               <code>Type</code> is <code>AMAZON_ISSUED</code>. For certificates that are imported with
    #               <code>ImportCertificate</code>, <code>Type</code> is <code>IMPORTED</code>.</p>
    #            <p>Valid values: <code>IMPORTED</code> | <code>AMAZON_ISSUED</code> |
    #            <code>PRIVATE</code>
    #            </p>
    #
    #   @return [String]
    #
    AwsCertificateManagerCertificateDetails = ::Struct.new(
      :certificate_authority_arn,
      :created_at,
      :domain_name,
      :domain_validation_options,
      :extended_key_usages,
      :failure_reason,
      :imported_at,
      :in_use_by,
      :issued_at,
      :issuer,
      :key_algorithm,
      :key_usages,
      :not_after,
      :not_before,
      :options,
      :renewal_eligibility,
      :renewal_summary,
      :serial,
      :signature_algorithm,
      :status,
      :subject,
      :subject_alternative_names,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about one of the following:</p>
    #          <ul>
    #             <li>
    #                <p>The initial validation of each domain name that occurs as a result of the
    #                   <code>RequestCertificate</code> request</p>
    #             </li>
    #             <li>
    #                <p>The validation of each domain name in the certificate, as it pertains to Certificate Manager managed renewal</p>
    #             </li>
    #          </ul>
    #
    # @!attribute domain_name
    #   <p>A fully qualified domain name (FQDN) in the certificate.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_record
    #   <p>The CNAME record that is added to the DNS database for domain validation.</p>
    #
    #   @return [AwsCertificateManagerCertificateResourceRecord]
    #
    # @!attribute validation_domain
    #   <p>The domain name that Certificate Manager uses to send domain validation
    #            emails.</p>
    #
    #   @return [String]
    #
    # @!attribute validation_emails
    #   <p>A list of email addresses that Certificate Manager uses to send domain validation
    #            emails.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute validation_method
    #   <p>The method used to validate the domain name.</p>
    #
    #   @return [String]
    #
    # @!attribute validation_status
    #   <p>The validation status of the domain name.</p>
    #
    #   @return [String]
    #
    AwsCertificateManagerCertificateDomainValidationOption = ::Struct.new(
      :domain_name,
      :resource_record,
      :validation_domain,
      :validation_emails,
      :validation_method,
      :validation_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about an extended key usage X.509 v3 extension object.</p>
    #
    # @!attribute name
    #   <p>The name of an extension value. Indicates the purpose for which the certificate public
    #            key can be used.</p>
    #
    #   @return [String]
    #
    # @!attribute o_id
    #   <p>An object identifier (OID) for the extension value.</p>
    #            <p>The format is numbers separated by periods.</p>
    #
    #   @return [String]
    #
    AwsCertificateManagerCertificateExtendedKeyUsage = ::Struct.new(
      :name,
      :o_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about a key usage X.509 v3 extension object.</p>
    #
    # @!attribute name
    #   <p>The key usage extension name.</p>
    #
    #   @return [String]
    #
    AwsCertificateManagerCertificateKeyUsage = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains other options for the certificate.</p>
    #
    # @!attribute certificate_transparency_logging_preference
    #   <p>Whether to add the certificate to a transparency log.</p>
    #            <p>Valid values: <code>DISABLED</code> | <code>ENABLED</code>
    #            </p>
    #
    #   @return [String]
    #
    AwsCertificateManagerCertificateOptions = ::Struct.new(
      :certificate_transparency_logging_preference,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about the Certificate Manager managed renewal for an
    #             <code>AMAZON_ISSUED</code> certificate.</p>
    #
    # @!attribute domain_validation_options
    #   <p>Information about the validation of each domain name in the certificate, as it pertains
    #            to Certificate Manager managed renewal. Provided only when the certificate type is
    #               <code>AMAZON_ISSUED</code>.</p>
    #
    #   @return [Array<AwsCertificateManagerCertificateDomainValidationOption>]
    #
    # @!attribute renewal_status
    #   <p>The status of the Certificate Manager managed renewal of the certificate.</p>
    #            <p>Valid values: <code>PENDING_AUTO_RENEWAL</code> | <code>PENDING_VALIDATION</code> |
    #               <code>SUCCESS</code> | <code>FAILED</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute renewal_status_reason
    #   <p>The reason that a renewal request was unsuccessful.</p>
    #            <p>Valid values: <code>NO_AVAILABLE_CONTACTS</code> |
    #               <code>ADDITIONAL_VERIFICATION_REQUIRED</code> | <code>DOMAIN_NOT_ALLOWED</code> |
    #               <code>INVALID_PUBLIC_DOMAIN</code> | <code>DOMAIN_VALIDATION_DENIED</code> |
    #               <code>CAA_ERROR</code> | <code>PCA_LIMIT_EXCEEDED</code> | <code>PCA_INVALID_ARN</code>
    #            | <code>PCA_INVALID_STATE</code> | <code>PCA_REQUEST_FAILED</code> |
    #               <code>PCA_NAME_CONSTRAINTS_VALIDATION</code> | <code>PCA_RESOURCE_NOT_FOUND</code> |
    #               <code>PCA_INVALID_ARGS</code> | <code>PCA_INVALID_DURATION</code> |
    #               <code>PCA_ACCESS_DENIED</code> | <code>SLR_NOT_FOUND</code> | <code>OTHER</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute updated_at
    #   <p>Indicates when the renewal summary was last updated.</p>
    #            <p>Uses the <code>date-time</code> format specified in <a href="https://tools.ietf.org/html/rfc3339 section-5.6">RFC 3339 section 5.6, Internet
    #               Date/Time Format</a>. The value cannot contain spaces. For example,
    #               <code>2020-03-22T13:22:13.933Z</code>.</p>
    #
    #   @return [String]
    #
    AwsCertificateManagerCertificateRenewalSummary = ::Struct.new(
      :domain_validation_options,
      :renewal_status,
      :renewal_status_reason,
      :updated_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides details about the CNAME record that is added to the DNS database for domain
    #          validation.</p>
    #
    # @!attribute name
    #   <p>The name of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of resource.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of the resource.</p>
    #
    #   @return [String]
    #
    AwsCertificateManagerCertificateResourceRecord = ::Struct.new(
      :name,
      :type,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a cache behavior for the distribution.</p>
    #
    # @!attribute viewer_protocol_policy
    #   <p>The protocol that viewers can use to access the files in an origin. You can specify the
    #            following options:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>allow-all</code> - Viewers can use HTTP or HTTPS.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>redirect-to-https</code> - CloudFront responds to HTTP requests with an HTTP
    #                  status code of 301 (Moved Permanently) and the HTTPS URL. The viewer then uses the
    #                  new URL to resubmit.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>https-only</code> - CloudFront responds to HTTP request with an HTTP status
    #                  code of 403 (Forbidden).</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    AwsCloudFrontDistributionCacheBehavior = ::Struct.new(
      :viewer_protocol_policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about caching for the distribution.</p>
    #
    # @!attribute items
    #   <p>The cache behaviors for the distribution.</p>
    #
    #   @return [Array<AwsCloudFrontDistributionCacheBehavior>]
    #
    AwsCloudFrontDistributionCacheBehaviors = ::Struct.new(
      :items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about the default cache configuration for the distribution.</p>
    #
    # @!attribute viewer_protocol_policy
    #   <p>The protocol that viewers can use to access the files in an origin. You can specify the
    #            following options:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>allow-all</code> - Viewers can use HTTP or HTTPS.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>redirect-to-https</code> - CloudFront responds to HTTP requests with an HTTP
    #                  status code of 301 (Moved Permanently) and the HTTPS URL. The viewer then uses the
    #                  new URL to resubmit.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>https-only</code> - CloudFront responds to HTTP request with an HTTP status
    #                  code of 403 (Forbidden).</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    AwsCloudFrontDistributionDefaultCacheBehavior = ::Struct.new(
      :viewer_protocol_policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A distribution configuration.</p>
    #
    # @!attribute cache_behaviors
    #   <p>Provides information about the cache configuration for the distribution.</p>
    #
    #   @return [AwsCloudFrontDistributionCacheBehaviors]
    #
    # @!attribute default_cache_behavior
    #   <p>The default cache behavior for the configuration.</p>
    #
    #   @return [AwsCloudFrontDistributionDefaultCacheBehavior]
    #
    # @!attribute default_root_object
    #   <p>The object that CloudFront sends in response to requests from the origin (for example,
    #            index.html) when a viewer requests the root URL for the distribution
    #            (http://www.example.com) instead of an object in your distribution
    #            (http://www.example.com/product-description.html). </p>
    #
    #   @return [String]
    #
    # @!attribute domain_name
    #   <p>The domain name corresponding to the distribution.</p>
    #
    #   @return [String]
    #
    # @!attribute e_tag
    #   <p>The entity tag is a hash of the object.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified_time
    #   <p>Indicates when that the distribution was last modified.</p>
    #            <p>Uses the <code>date-time</code> format specified in <a href="https://tools.ietf.org/html/rfc3339 section-5.6">RFC 3339 section 5.6, Internet
    #               Date/Time Format</a>. The value cannot contain spaces. For example,
    #               <code>2020-03-22T13:22:13.933Z</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute logging
    #   <p>A complex type that controls whether access logs are written for the distribution.</p>
    #
    #   @return [AwsCloudFrontDistributionLogging]
    #
    # @!attribute origins
    #   <p>A complex type that contains information about origins for this distribution.</p>
    #
    #   @return [AwsCloudFrontDistributionOrigins]
    #
    # @!attribute origin_groups
    #   <p>Provides information about the origin groups in the distribution.</p>
    #
    #   @return [AwsCloudFrontDistributionOriginGroups]
    #
    # @!attribute viewer_certificate
    #   <p>Provides information about the TLS/SSL configuration that the distribution uses to communicate with viewers.</p>
    #
    #   @return [AwsCloudFrontDistributionViewerCertificate]
    #
    # @!attribute status
    #   <p>Indicates the current status of the distribution.</p>
    #
    #   @return [String]
    #
    # @!attribute web_acl_id
    #   <p>A unique identifier that specifies the WAF web ACL, if any, to associate with this distribution.</p>
    #
    #   @return [String]
    #
    AwsCloudFrontDistributionDetails = ::Struct.new(
      :cache_behaviors,
      :default_cache_behavior,
      :default_root_object,
      :domain_name,
      :e_tag,
      :last_modified_time,
      :logging,
      :origins,
      :origin_groups,
      :viewer_certificate,
      :status,
      :web_acl_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A complex type that controls whether access logs are written for the distribution.</p>
    #
    # @!attribute bucket
    #   <p>The S3 bucket to store the access logs in.</p>
    #
    #   @return [String]
    #
    # @!attribute enabled
    #   <p>With this field, you can enable or disable the selected distribution.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute include_cookies
    #   <p>Specifies whether you want CloudFront to include cookies in access logs.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute prefix
    #   <p>An optional string that you want CloudFront to use as a prefix to the access log
    #            filenames for this distribution.</p>
    #
    #   @return [String]
    #
    AwsCloudFrontDistributionLogging = ::Struct.new(
      :bucket,
      :enabled,
      :include_cookies,
      :prefix,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.enabled ||= false
        self.include_cookies ||= false
      end
    end

    # <p>Information about an origin group for the distribution.</p>
    #
    # @!attribute failover_criteria
    #   <p>Provides the criteria for an origin group to fail over.</p>
    #
    #   @return [AwsCloudFrontDistributionOriginGroupFailover]
    #
    AwsCloudFrontDistributionOriginGroup = ::Struct.new(
      :failover_criteria,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about when an origin group fails over.</p>
    #
    # @!attribute status_codes
    #   <p>Information about the status codes that cause an origin group to fail over.</p>
    #
    #   @return [AwsCloudFrontDistributionOriginGroupFailoverStatusCodes]
    #
    AwsCloudFrontDistributionOriginGroupFailover = ::Struct.new(
      :status_codes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The status codes that cause an origin group to fail over.</p>
    #
    # @!attribute items
    #   <p>The list of status code values that can cause a failover to the next origin.</p>
    #
    #   @return [Array<Integer>]
    #
    # @!attribute quantity
    #   <p>The number of status codes that can cause a failover.</p>
    #
    #   @return [Integer]
    #
    AwsCloudFrontDistributionOriginGroupFailoverStatusCodes = ::Struct.new(
      :items,
      :quantity,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.quantity ||= 0
      end
    end

    # <p>Provides information about origin groups that are associated with the
    #          distribution.</p>
    #
    # @!attribute items
    #   <p>The list of origin groups.</p>
    #
    #   @return [Array<AwsCloudFrontDistributionOriginGroup>]
    #
    AwsCloudFrontDistributionOriginGroups = ::Struct.new(
      :items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A complex type that describes the S3 bucket, HTTP server (for example, a web
    #          server), AWS Elemental MediaStore, or other server from which CloudFront gets your
    #          files.</p>
    #
    # @!attribute domain_name
    #   <p>Amazon S3 origins: The DNS name of the S3 bucket from which you want CloudFront to get objects for this origin.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>A unique identifier for the origin or origin group.</p>
    #
    #   @return [String]
    #
    # @!attribute origin_path
    #   <p>An optional element that causes CloudFront to request your content from a directory in your Amazon S3 bucket or your custom origin.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_origin_config
    #   <p>An origin that is an S3 bucket that is not configured with static website
    #            hosting.</p>
    #
    #   @return [AwsCloudFrontDistributionOriginS3OriginConfig]
    #
    AwsCloudFrontDistributionOriginItem = ::Struct.new(
      :domain_name,
      :id,
      :origin_path,
      :s3_origin_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about an origin that is an S3 bucket that is not configured with static
    #          website hosting.</p>
    #
    # @!attribute origin_access_identity
    #   <p>The CloudFront origin access identity to associate with the origin.</p>
    #
    #   @return [String]
    #
    AwsCloudFrontDistributionOriginS3OriginConfig = ::Struct.new(
      :origin_access_identity,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A complex type that contains information about origins and origin groups for this distribution.</p>
    #
    # @!attribute items
    #   <p>A complex type that contains origins or origin groups for this distribution.</p>
    #
    #   @return [Array<AwsCloudFrontDistributionOriginItem>]
    #
    AwsCloudFrontDistributionOrigins = ::Struct.new(
      :items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about the TLS/SSL configuration that the distribution uses to communicate with viewers.</p>
    #
    # @!attribute acm_certificate_arn
    #   <p>The ARN of the ACM certificate. Used if the certificate is stored in ACM. If you provide an ACM certificate ARN, you must also provide <code>MinimumCertificateVersion</code> and <code>SslSupportMethod</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute certificate
    #   <p>The identifier of the certificate. Note that in CloudFront, this attribute is deprecated.</p>
    #
    #   @return [String]
    #
    # @!attribute certificate_source
    #   <p>The source of the certificate identified by <code>Certificate</code>. Note that in CloudFront, this attribute is deprecated.</p>
    #
    #   @return [String]
    #
    # @!attribute cloud_front_default_certificate
    #   <p>Whether the distribution uses the CloudFront domain name. If set to <code>false</code>, then you provide either <code>AcmCertificateArn</code> or <code>IamCertificateId</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute iam_certificate_id
    #   <p>The identifier of the IAM certificate. Used if the certificate is stored in IAM. If you provide <code>IamCertificateId</code>, then you also must provide <code>MinimumProtocolVersion</code> and <code>SslSupportMethod</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute minimum_protocol_version
    #   <p>The security policy that CloudFront uses for HTTPS connections with viewers. If <code>SslSupportMethod</code> is <code>sni-only</code>, then <code>MinimumProtocolVersion</code> must be <code>TLSv1</code> or higher.</p>
    #
    #   @return [String]
    #
    # @!attribute ssl_support_method
    #   <p>The viewers that the distribution accepts HTTPS connections from.</p>
    #
    #   @return [String]
    #
    AwsCloudFrontDistributionViewerCertificate = ::Struct.new(
      :acm_certificate_arn,
      :certificate,
      :certificate_source,
      :cloud_front_default_certificate,
      :iam_certificate_id,
      :minimum_protocol_version,
      :ssl_support_method,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.cloud_front_default_certificate ||= false
      end
    end

    # <p>Provides details about a CloudTrail trail.</p>
    #
    # @!attribute cloud_watch_logs_log_group_arn
    #   <p>The ARN of the log group that CloudTrail logs are delivered to.</p>
    #
    #   @return [String]
    #
    # @!attribute cloud_watch_logs_role_arn
    #   <p>The ARN of the role that the CloudWatch Events endpoint assumes when it writes to the log
    #            group.</p>
    #
    #   @return [String]
    #
    # @!attribute has_custom_event_selectors
    #   <p>Indicates whether the trail has custom event selectors.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute home_region
    #   <p>The Region where the trail was created.</p>
    #
    #   @return [String]
    #
    # @!attribute include_global_service_events
    #   <p>Indicates whether the trail publishes events from global services such as IAM to the log
    #            files.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute is_multi_region_trail
    #   <p>Indicates whether the trail applies only to the current Region or to all Regions.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute is_organization_trail
    #   <p>Whether the trail is created for all accounts in an organization in Organizations,
    #            or only for the current Amazon Web Services account.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute kms_key_id
    #   <p>The KMS key ID to use to encrypt the logs.</p>
    #
    #   @return [String]
    #
    # @!attribute log_file_validation_enabled
    #   <p>Indicates whether CloudTrail log file validation is enabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute name
    #   <p>The name of the trail.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_bucket_name
    #   <p>The name of the S3 bucket where the log files are published.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_key_prefix
    #   <p>The S3 key prefix. The key prefix is added after the name of the S3 bucket where the log
    #            files are published.</p>
    #
    #   @return [String]
    #
    # @!attribute sns_topic_arn
    #   <p>The ARN of the SNS topic that is used for notifications of log file delivery.</p>
    #
    #   @return [String]
    #
    # @!attribute sns_topic_name
    #   <p>The name of the SNS topic that is used for notifications of log file delivery.</p>
    #
    #   @return [String]
    #
    # @!attribute trail_arn
    #   <p>The ARN of the trail.</p>
    #
    #   @return [String]
    #
    AwsCloudTrailTrailDetails = ::Struct.new(
      :cloud_watch_logs_log_group_arn,
      :cloud_watch_logs_role_arn,
      :has_custom_event_selectors,
      :home_region,
      :include_global_service_events,
      :is_multi_region_trail,
      :is_organization_trail,
      :kms_key_id,
      :log_file_validation_enabled,
      :name,
      :s3_bucket_name,
      :s3_key_prefix,
      :sns_topic_arn,
      :sns_topic_name,
      :trail_arn,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.has_custom_event_selectors ||= false
        self.include_global_service_events ||= false
        self.is_multi_region_trail ||= false
        self.is_organization_trail ||= false
        self.log_file_validation_enabled ||= false
      end
    end

    # <p>Information about the build artifacts for the CodeBuild project.</p>
    #
    # @!attribute artifact_identifier
    #   <p>An identifier for the artifact definition.</p>
    #
    #   @return [String]
    #
    # @!attribute encryption_disabled
    #   <p>Indicates whether to disable encryption on the artifact. Only valid when <code>Type</code> is <code>S3</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute location
    #   <p>Only used when <code>Type</code> is <code>S3</code>. The name of the S3 bucket where the artifact is located.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>Only used when Type is S3. The name of the artifact. Used with <code>NamepaceType</code> and <code>Path</code> to determine the pattern for storing the artifact.</p>
    #
    #   @return [String]
    #
    # @!attribute namespace_type
    #   <p>Only used when <code>Type</code> is <code>S3</code>. The value to use for the namespace. Used with <code>Name</code> and <code>Path</code> to determine the pattern for storing the artifact.</p>
    #
    #   @return [String]
    #
    # @!attribute override_artifact_name
    #   <p>Whether the name specified in the buildspec file overrides the artifact name.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute packaging
    #   <p>Only used when <code>Type</code> is <code>S3</code>. The type of output artifact to create.</p>
    #
    #   @return [String]
    #
    # @!attribute path
    #   <p>Only used when <code>Type</code> is <code>S3</code>. The path to the artifact. Used with <code>Name</code> and <code>NamespaceType</code> to determine the pattern for storing the artifact.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of build artifact.</p>
    #
    #   @return [String]
    #
    AwsCodeBuildProjectArtifactsDetails = ::Struct.new(
      :artifact_identifier,
      :encryption_disabled,
      :location,
      :name,
      :namespace_type,
      :override_artifact_name,
      :packaging,
      :path,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.encryption_disabled ||= false
        self.override_artifact_name ||= false
      end
    end

    # <p>Information about an CodeBuild project.</p>
    #
    # @!attribute encryption_key
    #   <p>The KMS key used to encrypt the
    #            build output artifacts.</p>
    #            <p>You can specify either the ARN of the KMS key or, if available, the
    #            KMS key alias (using the format alias/alias-name). </p>
    #
    #   @return [String]
    #
    # @!attribute artifacts
    #   <p>Information about the build artifacts for the CodeBuild project.</p>
    #
    #   @return [Array<AwsCodeBuildProjectArtifactsDetails>]
    #
    # @!attribute environment
    #   <p>Information about the build environment for this build project.</p>
    #
    #   @return [AwsCodeBuildProjectEnvironment]
    #
    # @!attribute name
    #   <p>The name of the build project.</p>
    #
    #   @return [String]
    #
    # @!attribute source
    #   <p>Information about the build input source code for this build project.</p>
    #
    #   @return [AwsCodeBuildProjectSource]
    #
    # @!attribute service_role
    #   <p>The ARN of the IAM role that enables CodeBuild to interact with dependent Amazon Web Services
    #            services on behalf of the Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    # @!attribute logs_config
    #   <p>Information about logs for the build project.</p>
    #
    #   @return [AwsCodeBuildProjectLogsConfigDetails]
    #
    # @!attribute vpc_config
    #   <p>Information about the VPC configuration that CodeBuild accesses.</p>
    #
    #   @return [AwsCodeBuildProjectVpcConfig]
    #
    # @!attribute secondary_artifacts
    #   <p>Information about the secondary artifacts for the CodeBuild project.</p>
    #
    #   @return [Array<AwsCodeBuildProjectArtifactsDetails>]
    #
    AwsCodeBuildProjectDetails = ::Struct.new(
      :encryption_key,
      :artifacts,
      :environment,
      :name,
      :source,
      :service_role,
      :logs_config,
      :vpc_config,
      :secondary_artifacts,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the build environment for this build project.</p>
    #
    # @!attribute certificate
    #   <p>The certificate to use with this build project.</p>
    #
    #   @return [String]
    #
    # @!attribute environment_variables
    #   <p>A set of environment variables to make available to builds for the build project.</p>
    #
    #   @return [Array<AwsCodeBuildProjectEnvironmentEnvironmentVariablesDetails>]
    #
    # @!attribute privileged_mode
    #   <p>Whether to allow the Docker daemon to run inside a Docker container. Set to <code>true</code> if the build project is used to build Docker images.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute image_pull_credentials_type
    #   <p>The type of credentials CodeBuild uses to pull images in your build.</p>
    #            <p>Valid values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CODEBUILD</code> specifies that CodeBuild uses its own credentials. This
    #                  requires that you modify your ECR repository policy to trust the CodeBuild
    #                  service principal.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SERVICE_ROLE</code> specifies that CodeBuild uses your build project's
    #                  service role.</p>
    #               </li>
    #            </ul>
    #            <p>When you use a cross-account or private registry image, you must use
    #               <code>SERVICE_ROLE</code> credentials. When you use an CodeBuild curated image, you
    #            must use <code>CODEBUILD</code> credentials.</p>
    #
    #   @return [String]
    #
    # @!attribute registry_credential
    #   <p>The credentials for access to a private registry.</p>
    #
    #   @return [AwsCodeBuildProjectEnvironmentRegistryCredential]
    #
    # @!attribute type
    #   <p>The type of build environment to use for related builds.</p>
    #            <p>The environment type <code>ARM_CONTAINER</code> is available only in Regions US East (N.
    #            Virginia), US East (Ohio), US West (Oregon), Europe (Ireland), Asia Pacific (Mumbai), Asia
    #            Pacific (Tokyo), Asia Pacific (Sydney), and Europe (Frankfurt).</p>
    #            <p>The environment type <code>LINUX_CONTAINER</code> with compute type
    #            build.general1.2xlarge is available only in Regions US East (N. Virginia), US East (N.
    #            Virginia), US West (Oregon), Canada (Central), Europe (Ireland), Europe (London), Europe
    #            (Frankfurt), Asia Pacific (Tokyo), Asia Pacific (Seoul), Asia Pacific (Singapore), Asia
    #            Pacific (Sydney), China (Beijing), and China (Ningxia).</p>
    #            <p>The environment type <code>LINUX_GPU_CONTAINER</code> is available only in Regions US
    #            East (N. Virginia), US East (N. Virginia), US West (Oregon), Canada (Central), Europe
    #            (Ireland), Europe (London), Europe (Frankfurt), Asia Pacific (Tokyo), Asia Pacific (Seoul),
    #            Asia Pacific (Singapore), Asia Pacific (Sydney), China (Beijing), and China
    #            (Ningxia).</p>
    #            <p>Valid values: <code>WINDOWS_CONTAINER</code> | <code>LINUX_CONTAINER</code> |
    #               <code>LINUX_GPU_CONTAINER</code> | <code>ARM_CONTAINER</code>
    #            </p>
    #
    #   @return [String]
    #
    AwsCodeBuildProjectEnvironment = ::Struct.new(
      :certificate,
      :environment_variables,
      :privileged_mode,
      :image_pull_credentials_type,
      :registry_credential,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.privileged_mode ||= false
      end
    end

    # <p>Information about an environment variable that is available to builds for the build project.</p>
    #
    # @!attribute name
    #   <p>The name of the environment variable.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of environment variable.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of the environment variable.</p>
    #
    #   @return [String]
    #
    AwsCodeBuildProjectEnvironmentEnvironmentVariablesDetails = ::Struct.new(
      :name,
      :type,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The credentials for access to a private registry.</p>
    #
    # @!attribute credential
    #   <p>The ARN or name of credentials created using Secrets Manager.</p>
    #            <note>
    #               <p>The credential can use the name of the credentials only if they exist in your current
    #               Amazon Web Services Region. </p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute credential_provider
    #   <p>The service that created the credentials to access a private Docker registry.</p>
    #            <p>The valid value,<code> SECRETS_MANAGER</code>, is for Secrets Manager.</p>
    #
    #   @return [String]
    #
    AwsCodeBuildProjectEnvironmentRegistryCredential = ::Struct.new(
      :credential,
      :credential_provider,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about CloudWatch Logs for the build project.</p>
    #
    # @!attribute group_name
    #   <p>The group name of the logs in CloudWatch Logs.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the logs in CloudWatch Logs for a build project.</p>
    #
    #   @return [String]
    #
    # @!attribute stream_name
    #   <p>The prefix of the stream name of the CloudWatch Logs.</p>
    #
    #   @return [String]
    #
    AwsCodeBuildProjectLogsConfigCloudWatchLogsDetails = ::Struct.new(
      :group_name,
      :status,
      :stream_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about logs for the build project.</p>
    #
    # @!attribute cloud_watch_logs
    #   <p>Information about CloudWatch Logs for the build project.</p>
    #
    #   @return [AwsCodeBuildProjectLogsConfigCloudWatchLogsDetails]
    #
    # @!attribute s3_logs
    #   <p>Information about logs built to an S3 bucket for a build project.</p>
    #
    #   @return [AwsCodeBuildProjectLogsConfigS3LogsDetails]
    #
    AwsCodeBuildProjectLogsConfigDetails = ::Struct.new(
      :cloud_watch_logs,
      :s3_logs,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about logs built to an S3 bucket for a build project.</p>
    #
    # @!attribute encryption_disabled
    #   <p>Whether to disable encryption of the S3 build log output.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute location
    #   <p>The ARN of the S3 bucket and the path prefix for S3 logs.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the S3 build logs.</p>
    #
    #   @return [String]
    #
    AwsCodeBuildProjectLogsConfigS3LogsDetails = ::Struct.new(
      :encryption_disabled,
      :location,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.encryption_disabled ||= false
      end
    end

    # <p>Information about the build input source code for this build project.</p>
    #
    # @!attribute type
    #   <p>The type of repository that contains the source code to be built. Valid values
    #            are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>BITBUCKET</code> - The source code is in a Bitbucket repository.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CODECOMMIT</code> - The source code is in an CodeCommit
    #                  repository.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CODEPIPELINE</code> - The source code settings are specified in the source
    #                  action of a pipeline in CodePipeline.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GITHUB</code> - The source code is in a GitHub repository.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GITHUB_ENTERPRISE</code> - The source code is in a GitHub Enterprise
    #                  repository.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NO_SOURCE</code> - The project does not have input source code.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>S3</code> - The source code is in an S3 input bucket. </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>Information about the location of the source code to be built.</p>
    #            <p>Valid values include:</p>
    #            <ul>
    #               <li>
    #                  <p>For source code settings that are specified in the source action of a pipeline in
    #                  CodePipeline, location should not be specified. If it is specified, CodePipeline ignores it. This is because CodePipeline uses the settings in a
    #                  pipeline's source action instead of this value.</p>
    #               </li>
    #               <li>
    #                  <p>For source code in an CodeCommit repository, the HTTPS clone URL to the
    #                  repository that contains the source code and the build spec file (for example,
    #                     <code>https://git-codecommit.region-ID.amazonaws.com/v1/repos/repo-name</code>
    #                  ).</p>
    #               </li>
    #               <li>
    #                  <p>For source code in an S3 input bucket, one of the following.</p>
    #                  <ul>
    #                     <li>
    #                        <p>The path to the ZIP file that contains the source code (for example,
    #                           <code>bucket-name/path/to/object-name.zip</code>).</p>
    #                     </li>
    #                     <li>
    #                        <p> The path to the folder that contains the source code (for example,
    #                           <code>bucket-name/path/to/source-code/folder/</code>).</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>For source code in a GitHub repository, the HTTPS clone URL to the repository that
    #                  contains the source and the build spec file.</p>
    #               </li>
    #               <li>
    #                  <p>For source code in a Bitbucket repository, the HTTPS clone URL to the repository
    #                  that contains the source and the build spec file. </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute git_clone_depth
    #   <p>Information about the Git clone depth for the build project.</p>
    #
    #   @return [Integer]
    #
    # @!attribute insecure_ssl
    #   <p>Whether to ignore SSL warnings while connecting to the project source code.</p>
    #
    #   @return [Boolean]
    #
    AwsCodeBuildProjectSource = ::Struct.new(
      :type,
      :location,
      :git_clone_depth,
      :insecure_ssl,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.git_clone_depth ||= 0
        self.insecure_ssl ||= false
      end
    end

    # <p>Information about the VPC configuration that CodeBuild accesses.</p>
    #
    # @!attribute vpc_id
    #   <p>The ID of the VPC.</p>
    #
    #   @return [String]
    #
    # @!attribute subnets
    #   <p>A list of one or more subnet IDs in your VPC.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute security_group_ids
    #   <p>A list of one or more security group IDs in your VPC.</p>
    #
    #   @return [Array<String>]
    #
    AwsCodeBuildProjectVpcConfig = ::Struct.new(
      :vpc_id,
      :subnets,
      :security_group_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the cross-origin resource sharing (CORS) configuration for the API. CORS is
    #          only supported for HTTP APIs.</p>
    #
    # @!attribute allow_origins
    #   <p>The allowed origins for CORS requests.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute allow_credentials
    #   <p>Indicates whether the CORS request includes credentials.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute expose_headers
    #   <p>The exposed headers for CORS requests.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute max_age
    #   <p>The number of seconds for which the browser caches preflight request results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute allow_methods
    #   <p>The allowed methods for CORS requests.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute allow_headers
    #   <p>The allowed headers for CORS requests.</p>
    #
    #   @return [Array<String>]
    #
    AwsCorsConfiguration = ::Struct.new(
      :allow_origins,
      :allow_credentials,
      :expose_headers,
      :max_age,
      :allow_methods,
      :allow_headers,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.allow_credentials ||= false
        self.max_age ||= 0
      end
    end

    # <p>Contains a definition of an attribute for the table.</p>
    #
    # @!attribute attribute_name
    #   <p>The name of the attribute.</p>
    #
    #   @return [String]
    #
    # @!attribute attribute_type
    #   <p>The type of the attribute.</p>
    #
    #   @return [String]
    #
    AwsDynamoDbTableAttributeDefinition = ::Struct.new(
      :attribute_name,
      :attribute_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about the billing for read/write capacity on the table.</p>
    #
    # @!attribute billing_mode
    #   <p>The method used to charge for read and write throughput and to manage capacity.</p>
    #
    #   @return [String]
    #
    # @!attribute last_update_to_pay_per_request_date_time
    #   <p>If the billing mode is <code>PAY_PER_REQUEST</code>, indicates when the billing mode was
    #            set to that value.</p>
    #            <p>Uses the <code>date-time</code> format specified in <a href="https://tools.ietf.org/html/rfc3339 section-5.6">RFC 3339 section 5.6, Internet
    #               Date/Time Format</a>. The value cannot contain spaces. For example,
    #               <code>2020-03-22T13:22:13.933Z</code>.</p>
    #
    #   @return [String]
    #
    AwsDynamoDbTableBillingModeSummary = ::Struct.new(
      :billing_mode,
      :last_update_to_pay_per_request_date_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides details about a DynamoDB table.</p>
    #
    # @!attribute attribute_definitions
    #   <p>A list of attribute definitions for the table.</p>
    #
    #   @return [Array<AwsDynamoDbTableAttributeDefinition>]
    #
    # @!attribute billing_mode_summary
    #   <p>Information about the billing for read/write capacity on the table.</p>
    #
    #   @return [AwsDynamoDbTableBillingModeSummary]
    #
    # @!attribute creation_date_time
    #   <p>Indicates when the table was created.</p>
    #            <p>Uses the <code>date-time</code> format specified in <a href="https://tools.ietf.org/html/rfc3339 section-5.6">RFC 3339 section 5.6, Internet
    #               Date/Time Format</a>. The value cannot contain spaces. For example,
    #               <code>2020-03-22T13:22:13.933Z</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute global_secondary_indexes
    #   <p>List of global secondary indexes for the table.</p>
    #
    #   @return [Array<AwsDynamoDbTableGlobalSecondaryIndex>]
    #
    # @!attribute global_table_version
    #   <p>The version of global tables being used.</p>
    #
    #   @return [String]
    #
    # @!attribute item_count
    #   <p>The number of items in the table.</p>
    #
    #   @return [Integer]
    #
    # @!attribute key_schema
    #   <p>The primary key structure for the table.</p>
    #
    #   @return [Array<AwsDynamoDbTableKeySchema>]
    #
    # @!attribute latest_stream_arn
    #   <p>The ARN of the latest stream for the table.</p>
    #
    #   @return [String]
    #
    # @!attribute latest_stream_label
    #   <p>The label of the latest stream. The label is not a unique identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute local_secondary_indexes
    #   <p>The list of local secondary indexes for the table.</p>
    #
    #   @return [Array<AwsDynamoDbTableLocalSecondaryIndex>]
    #
    # @!attribute provisioned_throughput
    #   <p>Information about the provisioned throughput for the table.</p>
    #
    #   @return [AwsDynamoDbTableProvisionedThroughput]
    #
    # @!attribute replicas
    #   <p>The list of replicas of this table.</p>
    #
    #   @return [Array<AwsDynamoDbTableReplica>]
    #
    # @!attribute restore_summary
    #   <p>Information about the restore for the table.</p>
    #
    #   @return [AwsDynamoDbTableRestoreSummary]
    #
    # @!attribute sse_description
    #   <p>Information about the server-side encryption for the table.</p>
    #
    #   @return [AwsDynamoDbTableSseDescription]
    #
    # @!attribute stream_specification
    #   <p>The current DynamoDB Streams configuration for the table.</p>
    #
    #   @return [AwsDynamoDbTableStreamSpecification]
    #
    # @!attribute table_id
    #   <p>The identifier of the table.</p>
    #
    #   @return [String]
    #
    # @!attribute table_name
    #   <p>The name of the table.</p>
    #
    #   @return [String]
    #
    # @!attribute table_size_bytes
    #   <p>The total size of the table in bytes.</p>
    #
    #   @return [Integer]
    #
    # @!attribute table_status
    #   <p>The current status of the table.</p>
    #
    #   @return [String]
    #
    AwsDynamoDbTableDetails = ::Struct.new(
      :attribute_definitions,
      :billing_mode_summary,
      :creation_date_time,
      :global_secondary_indexes,
      :global_table_version,
      :item_count,
      :key_schema,
      :latest_stream_arn,
      :latest_stream_label,
      :local_secondary_indexes,
      :provisioned_throughput,
      :replicas,
      :restore_summary,
      :sse_description,
      :stream_specification,
      :table_id,
      :table_name,
      :table_size_bytes,
      :table_status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.item_count ||= 0
        self.table_size_bytes ||= 0
      end
    end

    # <p>Information abut a global secondary index for the table.</p>
    #
    # @!attribute backfilling
    #   <p>Whether the index is currently backfilling.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute index_arn
    #   <p>The ARN of the index.</p>
    #
    #   @return [String]
    #
    # @!attribute index_name
    #   <p>The name of the index.</p>
    #
    #   @return [String]
    #
    # @!attribute index_size_bytes
    #   <p>The total size in bytes of the index.</p>
    #
    #   @return [Integer]
    #
    # @!attribute index_status
    #   <p>The current status of the index.</p>
    #
    #   @return [String]
    #
    # @!attribute item_count
    #   <p>The number of items in the index.</p>
    #
    #   @return [Integer]
    #
    # @!attribute key_schema
    #   <p>The key schema for the index.</p>
    #
    #   @return [Array<AwsDynamoDbTableKeySchema>]
    #
    # @!attribute projection
    #   <p>Attributes that are copied from the table into an index.</p>
    #
    #   @return [AwsDynamoDbTableProjection]
    #
    # @!attribute provisioned_throughput
    #   <p>Information about the provisioned throughput settings for the indexes.</p>
    #
    #   @return [AwsDynamoDbTableProvisionedThroughput]
    #
    AwsDynamoDbTableGlobalSecondaryIndex = ::Struct.new(
      :backfilling,
      :index_arn,
      :index_name,
      :index_size_bytes,
      :index_status,
      :item_count,
      :key_schema,
      :projection,
      :provisioned_throughput,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.backfilling ||= false
        self.index_size_bytes ||= 0
        self.item_count ||= 0
      end
    end

    # <p>A component of the key schema for the DynamoDB table, a global secondary index, or a
    #          local secondary index.</p>
    #
    # @!attribute attribute_name
    #   <p>The name of the key schema attribute.</p>
    #
    #   @return [String]
    #
    # @!attribute key_type
    #   <p>The type of key used for the key schema attribute.</p>
    #
    #   @return [String]
    #
    AwsDynamoDbTableKeySchema = ::Struct.new(
      :attribute_name,
      :key_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a local secondary index for a DynamoDB table.</p>
    #
    # @!attribute index_arn
    #   <p>The ARN of the index.</p>
    #
    #   @return [String]
    #
    # @!attribute index_name
    #   <p>The name of the index.</p>
    #
    #   @return [String]
    #
    # @!attribute key_schema
    #   <p>The complete key schema for the index.</p>
    #
    #   @return [Array<AwsDynamoDbTableKeySchema>]
    #
    # @!attribute projection
    #   <p>Attributes that are copied from the table into the index. These are in addition to the
    #            primary key attributes and index key attributes, which are automatically projected.</p>
    #
    #   @return [AwsDynamoDbTableProjection]
    #
    AwsDynamoDbTableLocalSecondaryIndex = ::Struct.new(
      :index_arn,
      :index_name,
      :key_schema,
      :projection,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>For global and local secondary indexes, identifies the attributes that are copied from
    #          the table into the index.</p>
    #
    # @!attribute non_key_attributes
    #   <p>The nonkey attributes that are projected into the index. For each attribute, provide the
    #            attribute name.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute projection_type
    #   <p>The types of attributes that are projected into the index.</p>
    #
    #   @return [String]
    #
    AwsDynamoDbTableProjection = ::Struct.new(
      :non_key_attributes,
      :projection_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the provisioned throughput for the table or for a global secondary
    #          index.</p>
    #
    # @!attribute last_decrease_date_time
    #   <p>Indicates when the provisioned throughput was last decreased.</p>
    #            <p>Uses the <code>date-time</code> format specified in <a href="https://tools.ietf.org/html/rfc3339 section-5.6">RFC 3339 section 5.6, Internet
    #               Date/Time Format</a>. The value cannot contain spaces. For example,
    #               <code>2020-03-22T13:22:13.933Z</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute last_increase_date_time
    #   <p>Indicates when the provisioned throughput was last increased.</p>
    #            <p>Uses the <code>date-time</code> format specified in <a href="https://tools.ietf.org/html/rfc3339 section-5.6">RFC 3339 section 5.6, Internet
    #               Date/Time Format</a>. The value cannot contain spaces. For example,
    #               <code>2020-03-22T13:22:13.933Z</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute number_of_decreases_today
    #   <p>The number of times during the current UTC calendar day that the provisioned throughput
    #            was decreased.</p>
    #
    #   @return [Integer]
    #
    # @!attribute read_capacity_units
    #   <p>The maximum number of strongly consistent reads consumed per second before DynamoDB
    #            returns a <code>ThrottlingException</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute write_capacity_units
    #   <p>The maximum number of writes consumed per second before DynamoDB returns a
    #               <code>ThrottlingException</code>.</p>
    #
    #   @return [Integer]
    #
    AwsDynamoDbTableProvisionedThroughput = ::Struct.new(
      :last_decrease_date_time,
      :last_increase_date_time,
      :number_of_decreases_today,
      :read_capacity_units,
      :write_capacity_units,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.number_of_decreases_today ||= 0
        self.read_capacity_units ||= 0
        self.write_capacity_units ||= 0
      end
    end

    # <p>Replica-specific configuration for the provisioned throughput.</p>
    #
    # @!attribute read_capacity_units
    #   <p>The read capacity units for the replica.</p>
    #
    #   @return [Integer]
    #
    AwsDynamoDbTableProvisionedThroughputOverride = ::Struct.new(
      :read_capacity_units,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.read_capacity_units ||= 0
      end
    end

    # <p>Information about a replica of a DynamoDB table.</p>
    #
    # @!attribute global_secondary_indexes
    #   <p>List of global secondary indexes for the replica.</p>
    #
    #   @return [Array<AwsDynamoDbTableReplicaGlobalSecondaryIndex>]
    #
    # @!attribute kms_master_key_id
    #   <p>The identifier of the KMS key that will be used for KMS
    #            encryption for the replica.</p>
    #
    #   @return [String]
    #
    # @!attribute provisioned_throughput_override
    #   <p>Replica-specific configuration for the provisioned throughput.</p>
    #
    #   @return [AwsDynamoDbTableProvisionedThroughputOverride]
    #
    # @!attribute region_name
    #   <p>The name of the Region where the replica is located.</p>
    #
    #   @return [String]
    #
    # @!attribute replica_status
    #   <p>The current status of the replica.</p>
    #
    #   @return [String]
    #
    # @!attribute replica_status_description
    #   <p>Detailed information about the replica status.</p>
    #
    #   @return [String]
    #
    AwsDynamoDbTableReplica = ::Struct.new(
      :global_secondary_indexes,
      :kms_master_key_id,
      :provisioned_throughput_override,
      :region_name,
      :replica_status,
      :replica_status_description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a global secondary index for a DynamoDB table replica.</p>
    #
    # @!attribute index_name
    #   <p>The name of the index.</p>
    #
    #   @return [String]
    #
    # @!attribute provisioned_throughput_override
    #   <p>Replica-specific configuration for the provisioned throughput for the index.</p>
    #
    #   @return [AwsDynamoDbTableProvisionedThroughputOverride]
    #
    AwsDynamoDbTableReplicaGlobalSecondaryIndex = ::Struct.new(
      :index_name,
      :provisioned_throughput_override,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the restore for the table.</p>
    #
    # @!attribute source_backup_arn
    #   <p>The ARN of the source backup from which the table was restored.</p>
    #
    #   @return [String]
    #
    # @!attribute source_table_arn
    #   <p>The ARN of the source table for the backup.</p>
    #
    #   @return [String]
    #
    # @!attribute restore_date_time
    #   <p>Indicates the point in time that the table was restored to.</p>
    #            <p>Uses the <code>date-time</code> format specified in <a href="https://tools.ietf.org/html/rfc3339 section-5.6">RFC 3339 section 5.6, Internet
    #               Date/Time Format</a>. The value cannot contain spaces. For example,
    #               <code>2020-03-22T13:22:13.933Z</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute restore_in_progress
    #   <p>Whether a restore is currently in progress.</p>
    #
    #   @return [Boolean]
    #
    AwsDynamoDbTableRestoreSummary = ::Struct.new(
      :source_backup_arn,
      :source_table_arn,
      :restore_date_time,
      :restore_in_progress,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.restore_in_progress ||= false
      end
    end

    # <p>Information about the server-side encryption for the table.</p>
    #
    # @!attribute inaccessible_encryption_date_time
    #   <p>If the key is inaccessible, the date and time when DynamoDB detected that the key was
    #            inaccessible.</p>
    #            <p>Uses the <code>date-time</code> format specified in <a href="https://tools.ietf.org/html/rfc3339 section-5.6">RFC 3339 section 5.6, Internet
    #               Date/Time Format</a>. The value cannot contain spaces. For example,
    #               <code>2020-03-22T13:22:13.933Z</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the server-side encryption.</p>
    #
    #   @return [String]
    #
    # @!attribute sse_type
    #   <p>The type of server-side encryption.</p>
    #
    #   @return [String]
    #
    # @!attribute kms_master_key_arn
    #   <p>The ARN of the KMS key that is used for the KMS
    #            encryption.</p>
    #
    #   @return [String]
    #
    AwsDynamoDbTableSseDescription = ::Struct.new(
      :inaccessible_encryption_date_time,
      :status,
      :sse_type,
      :kms_master_key_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The current DynamoDB Streams configuration for the table.</p>
    #
    # @!attribute stream_enabled
    #   <p>Indicates whether DynamoDB Streams is enabled on the table.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute stream_view_type
    #   <p>Determines the information that is written to the table.</p>
    #
    #   @return [String]
    #
    AwsDynamoDbTableStreamSpecification = ::Struct.new(
      :stream_enabled,
      :stream_view_type,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.stream_enabled ||= false
      end
    end

    # <p>Information about an Elastic IP address.</p>
    #
    # @!attribute instance_id
    #   <p>The identifier of the EC2 instance.</p>
    #
    #   @return [String]
    #
    # @!attribute public_ip
    #   <p>A public IP address that is associated with the EC2 instance.</p>
    #
    #   @return [String]
    #
    # @!attribute allocation_id
    #   <p>The identifier that Amazon Web Services assigns to represent the allocation of the Elastic IP address
    #            for use with Amazon VPC.</p>
    #
    #   @return [String]
    #
    # @!attribute association_id
    #   <p>The identifier that represents the association of the Elastic IP address with an EC2
    #            instance.</p>
    #
    #   @return [String]
    #
    # @!attribute domain
    #   <p>The domain in which to allocate the address.</p>
    #            <p>If the address is for use with EC2 instances in a VPC, then <code>Domain</code> is
    #               <code>vpc</code>. Otherwise, <code>Domain</code> is <code>standard</code>. </p>
    #
    #   @return [String]
    #
    # @!attribute public_ipv4_pool
    #   <p>The identifier of an IP address pool. This parameter allows Amazon EC2 to select an IP
    #            address from the address pool.</p>
    #
    #   @return [String]
    #
    # @!attribute network_border_group
    #   <p>The name of the location from which the Elastic IP address is advertised.</p>
    #
    #   @return [String]
    #
    # @!attribute network_interface_id
    #   <p>The identifier of the network interface.</p>
    #
    #   @return [String]
    #
    # @!attribute network_interface_owner_id
    #   <p>The Amazon Web Services account ID of the owner of the network interface.</p>
    #
    #   @return [String]
    #
    # @!attribute private_ip_address
    #   <p>The private IP address that is associated with the Elastic IP address.</p>
    #
    #   @return [String]
    #
    AwsEc2EipDetails = ::Struct.new(
      :instance_id,
      :public_ip,
      :allocation_id,
      :association_id,
      :domain,
      :public_ipv4_pool,
      :network_border_group,
      :network_interface_id,
      :network_interface_owner_id,
      :private_ip_address,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The details of an EC2 instance.</p>
    #
    # @!attribute type
    #   <p>The instance type of the instance. </p>
    #
    #   @return [String]
    #
    # @!attribute image_id
    #   <p>The Amazon Machine Image (AMI) ID of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute ip_v4_addresses
    #   <p>The IPv4 addresses associated with the instance.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute ip_v6_addresses
    #   <p>The IPv6 addresses associated with the instance.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute key_name
    #   <p>The key name associated with the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute iam_instance_profile_arn
    #   <p>The IAM profile ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_id
    #   <p>The identifier of the VPC that the instance was launched in.</p>
    #
    #   @return [String]
    #
    # @!attribute subnet_id
    #   <p>The identifier of the subnet that the instance was launched in.</p>
    #
    #   @return [String]
    #
    # @!attribute launched_at
    #   <p>Indicates when the instance was launched.</p>
    #            <p>Uses the <code>date-time</code> format specified in <a href="https://tools.ietf.org/html/rfc3339 section-5.6">RFC 3339 section 5.6, Internet
    #               Date/Time Format</a>. The value cannot contain spaces. For example,
    #               <code>2020-03-22T13:22:13.933Z</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute network_interfaces
    #   <p>The identifiers of the network interfaces for the EC2 instance. The details for each network interface are in a corresponding <code>AwsEc2NetworkInterfacesDetails</code> object.</p>
    #
    #   @return [Array<AwsEc2InstanceNetworkInterfacesDetails>]
    #
    AwsEc2InstanceDetails = ::Struct.new(
      :type,
      :image_id,
      :ip_v4_addresses,
      :ip_v6_addresses,
      :key_name,
      :iam_instance_profile_arn,
      :vpc_id,
      :subnet_id,
      :launched_at,
      :network_interfaces,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Identifies a network interface for the EC2 instance.</p>
    #
    # @!attribute network_interface_id
    #   <p>The identifier of the network interface. The details are in a corresponding <code>AwsEc2NetworkInterfacesDetails</code> object.</p>
    #
    #   @return [String]
    #
    AwsEc2InstanceNetworkInterfacesDetails = ::Struct.new(
      :network_interface_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An association between the network ACL and a subnet.</p>
    #
    # @!attribute network_acl_association_id
    #   <p>The identifier of the association between the network ACL and the subnet.</p>
    #
    #   @return [String]
    #
    # @!attribute network_acl_id
    #   <p>The identifier of the network ACL.</p>
    #
    #   @return [String]
    #
    # @!attribute subnet_id
    #   <p>The identifier of the subnet that is associated with the network ACL.</p>
    #
    #   @return [String]
    #
    AwsEc2NetworkAclAssociation = ::Struct.new(
      :network_acl_association_id,
      :network_acl_id,
      :subnet_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains details about an EC2 network access control list (ACL).</p>
    #
    # @!attribute is_default
    #   <p>Whether this is the default network ACL for the VPC.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute network_acl_id
    #   <p>The identifier of the network ACL.</p>
    #
    #   @return [String]
    #
    # @!attribute owner_id
    #   <p>The identifier of the Amazon Web Services account that owns the network ACL.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_id
    #   <p>The identifier of the VPC for the network ACL.</p>
    #
    #   @return [String]
    #
    # @!attribute associations
    #   <p>Associations between the network ACL and subnets.</p>
    #
    #   @return [Array<AwsEc2NetworkAclAssociation>]
    #
    # @!attribute entries
    #   <p>The set of rules in the network ACL.</p>
    #
    #   @return [Array<AwsEc2NetworkAclEntry>]
    #
    AwsEc2NetworkAclDetails = ::Struct.new(
      :is_default,
      :network_acl_id,
      :owner_id,
      :vpc_id,
      :associations,
      :entries,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.is_default ||= false
      end
    end

    # <p>A rule for the network ACL. Each rule allows or denies access based on the IP address, traffic direction, port, and protocol.</p>
    #
    # @!attribute cidr_block
    #   <p>The IPV4 network range for which to deny or allow access.</p>
    #
    #   @return [String]
    #
    # @!attribute egress
    #   <p>Whether the rule is an egress rule. An egress rule is a rule that applies to traffic that leaves the subnet.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute icmp_type_code
    #   <p>The Internet Control Message Protocol (ICMP) type and code for which to deny or allow access.</p>
    #
    #   @return [IcmpTypeCode]
    #
    # @!attribute ipv6_cidr_block
    #   <p>The IPV6 network range for which to deny or allow access.</p>
    #
    #   @return [String]
    #
    # @!attribute port_range
    #   <p>For TCP or UDP protocols, the range of ports that the rule applies to.</p>
    #
    #   @return [PortRangeFromTo]
    #
    # @!attribute protocol
    #   <p>The protocol that the rule applies to. To deny or allow access to all protocols, use the value -1.</p>
    #
    #   @return [String]
    #
    # @!attribute rule_action
    #   <p>Whether the rule is used to allow access or deny access.</p>
    #
    #   @return [String]
    #
    # @!attribute rule_number
    #   <p>The rule number. The rules are processed in order by their number.</p>
    #
    #   @return [Integer]
    #
    AwsEc2NetworkAclEntry = ::Struct.new(
      :cidr_block,
      :egress,
      :icmp_type_code,
      :ipv6_cidr_block,
      :port_range,
      :protocol,
      :rule_action,
      :rule_number,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.egress ||= false
        self.rule_number ||= 0
      end
    end

    # <p>Information about the network interface attachment.</p>
    #
    # @!attribute attach_time
    #   <p>Indicates when the attachment initiated.</p>
    #            <p>Uses the <code>date-time</code> format specified in <a href="https://tools.ietf.org/html/rfc3339 section-5.6">RFC 3339 section 5.6, Internet
    #               Date/Time Format</a>. The value cannot contain spaces. For example,
    #               <code>2020-03-22T13:22:13.933Z</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute attachment_id
    #   <p>The identifier of the network interface attachment</p>
    #
    #   @return [String]
    #
    # @!attribute delete_on_termination
    #   <p>Indicates whether the network interface is deleted when the instance is
    #            terminated.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute device_index
    #   <p>The device index of the network interface attachment on the instance.</p>
    #
    #   @return [Integer]
    #
    # @!attribute instance_id
    #   <p>The ID of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_owner_id
    #   <p>The Amazon Web Services account ID of the owner of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The attachment state.</p>
    #            <p>Valid values: <code>attaching</code> | <code>attached</code> | <code>detaching</code> |
    #               <code>detached</code>
    #            </p>
    #
    #   @return [String]
    #
    AwsEc2NetworkInterfaceAttachment = ::Struct.new(
      :attach_time,
      :attachment_id,
      :delete_on_termination,
      :device_index,
      :instance_id,
      :instance_owner_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.delete_on_termination ||= false
        self.device_index ||= 0
      end
    end

    # <p>Details about the network interface</p>
    #
    # @!attribute attachment
    #   <p>The network interface attachment.</p>
    #
    #   @return [AwsEc2NetworkInterfaceAttachment]
    #
    # @!attribute network_interface_id
    #   <p>The ID of the network interface.</p>
    #
    #   @return [String]
    #
    # @!attribute security_groups
    #   <p>Security groups for the network interface.</p>
    #
    #   @return [Array<AwsEc2NetworkInterfaceSecurityGroup>]
    #
    # @!attribute source_dest_check
    #   <p>Indicates whether traffic to or from the instance is validated.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute ip_v6_addresses
    #   <p>The IPv6 addresses associated with the network interface.</p>
    #
    #   @return [Array<AwsEc2NetworkInterfaceIpV6AddressDetail>]
    #
    # @!attribute private_ip_addresses
    #   <p>The private IPv4 addresses associated with the network interface.</p>
    #
    #   @return [Array<AwsEc2NetworkInterfacePrivateIpAddressDetail>]
    #
    # @!attribute public_dns_name
    #   <p>The public DNS name of the network interface.</p>
    #
    #   @return [String]
    #
    # @!attribute public_ip
    #   <p>The address of the Elastic IP address bound to the network interface.</p>
    #
    #   @return [String]
    #
    AwsEc2NetworkInterfaceDetails = ::Struct.new(
      :attachment,
      :network_interface_id,
      :security_groups,
      :source_dest_check,
      :ip_v6_addresses,
      :private_ip_addresses,
      :public_dns_name,
      :public_ip,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.source_dest_check ||= false
      end
    end

    # <p>Provides information about an IPV6 address that is associated with the network
    #          interface.</p>
    #
    # @!attribute ip_v6_address
    #   <p>The IPV6 address.</p>
    #
    #   @return [String]
    #
    AwsEc2NetworkInterfaceIpV6AddressDetail = ::Struct.new(
      :ip_v6_address,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about a private IPv4 address that is with the network
    #          interface.</p>
    #
    # @!attribute private_ip_address
    #   <p>The IP address.</p>
    #
    #   @return [String]
    #
    # @!attribute private_dns_name
    #   <p>The private DNS name for the IP address.</p>
    #
    #   @return [String]
    #
    AwsEc2NetworkInterfacePrivateIpAddressDetail = ::Struct.new(
      :private_ip_address,
      :private_dns_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A security group associated with the network interface.</p>
    #
    # @!attribute group_name
    #   <p>The name of the security group.</p>
    #
    #   @return [String]
    #
    # @!attribute group_id
    #   <p>The ID of the security group.</p>
    #
    #   @return [String]
    #
    AwsEc2NetworkInterfaceSecurityGroup = ::Struct.new(
      :group_name,
      :group_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about an EC2 security group.</p>
    #
    # @!attribute group_name
    #   <p>The name of the security group.</p>
    #
    #   @return [String]
    #
    # @!attribute group_id
    #   <p>The ID of the security group.</p>
    #
    #   @return [String]
    #
    # @!attribute owner_id
    #   <p>The Amazon Web Services account ID of the owner of the security group.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_id
    #   <p>[VPC only] The ID of the VPC for the security group.</p>
    #
    #   @return [String]
    #
    # @!attribute ip_permissions
    #   <p>The inbound rules associated with the security group.</p>
    #
    #   @return [Array<AwsEc2SecurityGroupIpPermission>]
    #
    # @!attribute ip_permissions_egress
    #   <p>[VPC only] The outbound rules associated with the security group.</p>
    #
    #   @return [Array<AwsEc2SecurityGroupIpPermission>]
    #
    AwsEc2SecurityGroupDetails = ::Struct.new(
      :group_name,
      :group_id,
      :owner_id,
      :vpc_id,
      :ip_permissions,
      :ip_permissions_egress,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An IP permission for an EC2 security group.</p>
    #
    # @!attribute ip_protocol
    #   <p>The IP protocol name (<code>tcp</code>, <code>udp</code>, <code>icmp</code>,
    #               <code>icmpv6</code>) or number.</p>
    #            <p>[VPC only] Use <code>-1</code> to specify all protocols.</p>
    #            <p>When authorizing security group rules, specifying -1 or a protocol number other than
    #               <code>tcp</code>, <code>udp</code>, <code>icmp</code>, or <code>icmpv6</code> allows
    #            traffic on all ports, regardless of any port range you specify.</p>
    #            <p>For <code>tcp</code>, <code>udp</code>, and <code>icmp</code>, you must specify a port
    #            range.</p>
    #            <p>For <code>icmpv6</code>, the port range is optional. If you omit the port range, traffic
    #            for all types and codes is allowed. </p>
    #
    #   @return [String]
    #
    # @!attribute from_port
    #   <p>The start of the port range for the TCP and UDP protocols, or an ICMP/ICMPv6 type
    #            number.</p>
    #            <p>A value of -1 indicates all ICMP/ICMPv6 types. If you specify all ICMP/ICMPv6 types, you
    #            must specify all codes. </p>
    #
    #   @return [Integer]
    #
    # @!attribute to_port
    #   <p>The end of the port range for the TCP and UDP protocols, or an ICMP/ICMPv6 code.</p>
    #            <p>A value of -1 indicates all ICMP/ICMPv6 codes. If you specify all ICMP/ICMPv6 types, you
    #            must specify all codes.</p>
    #
    #   @return [Integer]
    #
    # @!attribute user_id_group_pairs
    #   <p>The security group and Amazon Web Services account ID pairs.</p>
    #
    #   @return [Array<AwsEc2SecurityGroupUserIdGroupPair>]
    #
    # @!attribute ip_ranges
    #   <p>The IPv4 ranges.</p>
    #
    #   @return [Array<AwsEc2SecurityGroupIpRange>]
    #
    # @!attribute ipv6_ranges
    #   <p>The IPv6 ranges.</p>
    #
    #   @return [Array<AwsEc2SecurityGroupIpv6Range>]
    #
    # @!attribute prefix_list_ids
    #   <p>[VPC only] The prefix list IDs for an Amazon Web Services service. With outbound rules, this is the Amazon Web Services
    #            service to access through a VPC endpoint from instances associated with the security
    #            group.</p>
    #
    #   @return [Array<AwsEc2SecurityGroupPrefixListId>]
    #
    AwsEc2SecurityGroupIpPermission = ::Struct.new(
      :ip_protocol,
      :from_port,
      :to_port,
      :user_id_group_pairs,
      :ip_ranges,
      :ipv6_ranges,
      :prefix_list_ids,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.from_port ||= 0
        self.to_port ||= 0
      end
    end

    # <p>A range of IPv4 addresses.</p>
    #
    # @!attribute cidr_ip
    #   <p>The IPv4 CIDR range. You can specify either a CIDR range or a source security group, but
    #            not both. To specify a single IPv4 address, use the /32 prefix length.</p>
    #
    #   @return [String]
    #
    AwsEc2SecurityGroupIpRange = ::Struct.new(
      :cidr_ip,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A range of IPv6 addresses.</p>
    #
    # @!attribute cidr_ipv6
    #   <p>The IPv6 CIDR range. You can specify either a CIDR range or a source security group, but
    #            not both. To specify a single IPv6 address, use the /128 prefix length.</p>
    #
    #   @return [String]
    #
    AwsEc2SecurityGroupIpv6Range = ::Struct.new(
      :cidr_ipv6,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A prefix list ID.</p>
    #
    # @!attribute prefix_list_id
    #   <p>The ID of the prefix.</p>
    #
    #   @return [String]
    #
    AwsEc2SecurityGroupPrefixListId = ::Struct.new(
      :prefix_list_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A relationship between a security group and a user.</p>
    #
    # @!attribute group_id
    #   <p>The ID of the security group.</p>
    #
    #   @return [String]
    #
    # @!attribute group_name
    #   <p>The name of the security group.</p>
    #
    #   @return [String]
    #
    # @!attribute peering_status
    #   <p>The status of a VPC peering connection, if applicable.</p>
    #
    #   @return [String]
    #
    # @!attribute user_id
    #   <p>The ID of an Amazon Web Services account.</p>
    #            <p>For a referenced security group in another VPC, the account ID of the referenced
    #            security group is returned in the response. If the referenced security group is deleted,
    #            this value is not returned.</p>
    #            <p>[EC2-Classic] Required when adding or removing rules that reference a security group in
    #            another VPC. </p>
    #
    #   @return [String]
    #
    # @!attribute vpc_id
    #   <p>The ID of the VPC for the referenced security group, if applicable.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_peering_connection_id
    #   <p>The ID of the VPC peering connection, if applicable.</p>
    #
    #   @return [String]
    #
    AwsEc2SecurityGroupUserIdGroupPair = ::Struct.new(
      :group_id,
      :group_name,
      :peering_status,
      :user_id,
      :vpc_id,
      :vpc_peering_connection_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about a subnet in Amazon EC2.</p>
    #
    # @!attribute assign_ipv6_address_on_creation
    #   <p>Whether to assign an IPV6 address to a network interface that is created in this subnet.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute availability_zone
    #   <p>The Availability Zone for the subnet.</p>
    #
    #   @return [String]
    #
    # @!attribute availability_zone_id
    #   <p>The identifier of the Availability Zone for the subnet.</p>
    #
    #   @return [String]
    #
    # @!attribute available_ip_address_count
    #   <p>The number of available IPV4 addresses in the subnet. Does not include addresses for stopped instances.</p>
    #
    #   @return [Integer]
    #
    # @!attribute cidr_block
    #   <p>The IPV4 CIDR block that is assigned to the subnet.</p>
    #
    #   @return [String]
    #
    # @!attribute default_for_az
    #   <p>Whether this subnet is the default subnet for the Availability Zone.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute map_public_ip_on_launch
    #   <p>Whether instances in this subnet receive a public IP address.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute owner_id
    #   <p>The identifier of the Amazon Web Services account that owns the subnet.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The current state of the subnet.</p>
    #
    #   @return [String]
    #
    # @!attribute subnet_arn
    #   <p>The ARN of the subnet.</p>
    #
    #   @return [String]
    #
    # @!attribute subnet_id
    #   <p>The identifier of the subnet.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_id
    #   <p>The identifier of the VPC that contains the subnet.</p>
    #
    #   @return [String]
    #
    # @!attribute ipv6_cidr_block_association_set
    #   <p>The IPV6 CIDR blocks that are associated with the subnet.</p>
    #
    #   @return [Array<Ipv6CidrBlockAssociation>]
    #
    AwsEc2SubnetDetails = ::Struct.new(
      :assign_ipv6_address_on_creation,
      :availability_zone,
      :availability_zone_id,
      :available_ip_address_count,
      :cidr_block,
      :default_for_az,
      :map_public_ip_on_launch,
      :owner_id,
      :state,
      :subnet_arn,
      :subnet_id,
      :vpc_id,
      :ipv6_cidr_block_association_set,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.assign_ipv6_address_on_creation ||= false
        self.available_ip_address_count ||= 0
        self.default_for_az ||= false
        self.map_public_ip_on_launch ||= false
      end
    end

    # <p>An attachment to an Amazon EC2 volume.</p>
    #
    # @!attribute attach_time
    #   <p>The datetime when the attachment initiated.</p>
    #
    #   @return [String]
    #
    # @!attribute delete_on_termination
    #   <p>Whether the EBS volume is deleted when the EC2 instance is terminated.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute instance_id
    #   <p>The identifier of the EC2 instance.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The attachment state of the volume.</p>
    #
    #   @return [String]
    #
    AwsEc2VolumeAttachment = ::Struct.new(
      :attach_time,
      :delete_on_termination,
      :instance_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.delete_on_termination ||= false
      end
    end

    # <p>Details about an EC2 volume.</p>
    #
    # @!attribute create_time
    #   <p>Indicates when the volume was created.</p>
    #            <p>Uses the <code>date-time</code> format specified in <a href="https://tools.ietf.org/html/rfc3339 section-5.6">RFC 3339 section 5.6, Internet
    #               Date/Time Format</a>. The value cannot contain spaces. For example,
    #               <code>2020-03-22T13:22:13.933Z</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute encrypted
    #   <p>Whether the volume is encrypted.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute size
    #   <p>The size of the volume, in GiBs.</p>
    #
    #   @return [Integer]
    #
    # @!attribute snapshot_id
    #   <p>The snapshot from which the volume was created.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The volume state.</p>
    #
    #   @return [String]
    #
    # @!attribute kms_key_id
    #   <p>The ARN of the KMS key that was
    #            used to protect the volume encryption key for the volume.</p>
    #
    #   @return [String]
    #
    # @!attribute attachments
    #   <p>The volume attachments.</p>
    #
    #   @return [Array<AwsEc2VolumeAttachment>]
    #
    AwsEc2VolumeDetails = ::Struct.new(
      :create_time,
      :encrypted,
      :size,
      :snapshot_id,
      :status,
      :kms_key_id,
      :attachments,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.encrypted ||= false
        self.size ||= 0
      end
    end

    # <p>Details about an EC2 VPC.</p>
    #
    # @!attribute cidr_block_association_set
    #   <p>Information about the IPv4 CIDR blocks associated with the VPC.</p>
    #
    #   @return [Array<CidrBlockAssociation>]
    #
    # @!attribute ipv6_cidr_block_association_set
    #   <p>Information about the IPv6 CIDR blocks associated with the VPC.</p>
    #
    #   @return [Array<Ipv6CidrBlockAssociation>]
    #
    # @!attribute dhcp_options_id
    #   <p>The identifier of the set of Dynamic Host Configuration Protocol (DHCP) options that are
    #            associated with the VPC. If the default options are associated with the VPC, then this is
    #            default.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The current state of the VPC.</p>
    #
    #   @return [String]
    #
    AwsEc2VpcDetails = ::Struct.new(
      :cidr_block_association_set,
      :ipv6_cidr_block_association_set,
      :dhcp_options_id,
      :state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains details about the service configuration for a VPC endpoint service.</p>
    #
    # @!attribute acceptance_required
    #   <p>Whether requests from other Amazon Web Services accounts to create an endpoint to the service must first be accepted.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute availability_zones
    #   <p>The Availability Zones where the service is available.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute base_endpoint_dns_names
    #   <p>The DNS names for the service.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute manages_vpc_endpoints
    #   <p>Whether the service manages its VPC endpoints.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute gateway_load_balancer_arns
    #   <p>The ARNs of the Gateway Load Balancers for the service.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute network_load_balancer_arns
    #   <p>The ARNs of the Network Load Balancers for the service.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute private_dns_name
    #   <p>The private DNS name for the service.</p>
    #
    #   @return [String]
    #
    # @!attribute service_id
    #   <p>The identifier of the service.</p>
    #
    #   @return [String]
    #
    # @!attribute service_name
    #   <p>The name of the service.</p>
    #
    #   @return [String]
    #
    # @!attribute service_state
    #   <p>The current state of the service.</p>
    #
    #   @return [String]
    #
    # @!attribute service_type
    #   <p>The types for the service.</p>
    #
    #   @return [Array<AwsEc2VpcEndpointServiceServiceTypeDetails>]
    #
    AwsEc2VpcEndpointServiceDetails = ::Struct.new(
      :acceptance_required,
      :availability_zones,
      :base_endpoint_dns_names,
      :manages_vpc_endpoints,
      :gateway_load_balancer_arns,
      :network_load_balancer_arns,
      :private_dns_name,
      :service_id,
      :service_name,
      :service_state,
      :service_type,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.acceptance_required ||= false
        self.manages_vpc_endpoints ||= false
      end
    end

    # <p>The service type information for a VPC endpoint service.</p>
    #
    # @!attribute service_type
    #   <p>The type of service.</p>
    #
    #   @return [String]
    #
    AwsEc2VpcEndpointServiceServiceTypeDetails = ::Struct.new(
      :service_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about an Amazon EC2 VPN
    #          connection.</p>
    #
    # @!attribute vpn_connection_id
    #   <p>The identifier of the VPN connection.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The current state of the VPN connection.</p>
    #
    #   @return [String]
    #
    # @!attribute customer_gateway_id
    #   <p>The identifier of the customer gateway that is at your end of the VPN connection.</p>
    #
    #   @return [String]
    #
    # @!attribute customer_gateway_configuration
    #   <p>The configuration information for the VPN connection's customer gateway, in the native XML
    #            format.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of VPN connection.</p>
    #
    #   @return [String]
    #
    # @!attribute vpn_gateway_id
    #   <p>The identifier of the virtual private gateway that is at the Amazon Web Services side of the VPN
    #            connection.</p>
    #
    #   @return [String]
    #
    # @!attribute category
    #   <p>The category of the VPN connection. <code>VPN</code> indicates an Amazon Web Services VPN connection. <code>VPN-Classic</code>
    #            indicates an Amazon Web Services Classic VPN connection.</p>
    #
    #   @return [String]
    #
    # @!attribute vgw_telemetry
    #   <p>Information about the VPN tunnel.</p>
    #
    #   @return [Array<AwsEc2VpnConnectionVgwTelemetryDetails>]
    #
    # @!attribute options
    #   <p>The VPN connection options.</p>
    #
    #   @return [AwsEc2VpnConnectionOptionsDetails]
    #
    # @!attribute routes
    #   <p>The static routes that are associated with the VPN connection.</p>
    #
    #   @return [Array<AwsEc2VpnConnectionRoutesDetails>]
    #
    # @!attribute transit_gateway_id
    #   <p>The identifier of the transit gateway that is associated with the VPN connection.</p>
    #
    #   @return [String]
    #
    AwsEc2VpnConnectionDetails = ::Struct.new(
      :vpn_connection_id,
      :state,
      :customer_gateway_id,
      :customer_gateway_configuration,
      :type,
      :vpn_gateway_id,
      :category,
      :vgw_telemetry,
      :options,
      :routes,
      :transit_gateway_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>VPN connection options.</p>
    #
    # @!attribute static_routes_only
    #   <p>Whether the VPN connection uses static routes only.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute tunnel_options
    #   <p>The VPN tunnel options.</p>
    #
    #   @return [Array<AwsEc2VpnConnectionOptionsTunnelOptionsDetails>]
    #
    AwsEc2VpnConnectionOptionsDetails = ::Struct.new(
      :static_routes_only,
      :tunnel_options,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.static_routes_only ||= false
      end
    end

    # <p>The VPN tunnel options.</p>
    #
    # @!attribute dpd_timeout_seconds
    #   <p>The number of seconds after which a Dead Peer Detection (DPD) timeout occurs.</p>
    #
    #   @return [Integer]
    #
    # @!attribute ike_versions
    #   <p>The Internet Key Exchange (IKE) versions that are permitted for the VPN tunnel.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute outside_ip_address
    #   <p>The external IP address of the VPN tunnel.</p>
    #
    #   @return [String]
    #
    # @!attribute phase1_dh_group_numbers
    #   <p>The permitted Diffie-Hellman group numbers for the VPN tunnel for phase 1 IKE
    #            negotiations.</p>
    #
    #   @return [Array<Integer>]
    #
    # @!attribute phase1_encryption_algorithms
    #   <p>The permitted encryption algorithms for the VPN tunnel for phase 1 IKE
    #            negotiations.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute phase1_integrity_algorithms
    #   <p>The permitted integrity algorithms for the VPN tunnel for phase 1 IKE
    #            negotiations.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute phase1_lifetime_seconds
    #   <p>The lifetime for phase 1 of the IKE negotiation, in seconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute phase2_dh_group_numbers
    #   <p>The permitted Diffie-Hellman group numbers for the VPN tunnel for phase 2 IKE
    #            negotiations.</p>
    #
    #   @return [Array<Integer>]
    #
    # @!attribute phase2_encryption_algorithms
    #   <p>The permitted encryption algorithms for the VPN tunnel for phase 2 IKE
    #            negotiations.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute phase2_integrity_algorithms
    #   <p>The permitted integrity algorithms for the VPN tunnel for phase 2 IKE
    #            negotiations.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute phase2_lifetime_seconds
    #   <p>The lifetime for phase 2 of the IKE negotiation, in seconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute pre_shared_key
    #   <p>The preshared key to establish initial authentication between the virtual private gateway
    #            and the customer gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute rekey_fuzz_percentage
    #   <p>The percentage of the rekey window, which is determined by
    #            <code>RekeyMarginTimeSeconds</code> during which the rekey time is randomly selected.</p>
    #
    #   @return [Integer]
    #
    # @!attribute rekey_margin_time_seconds
    #   <p>The margin time, in seconds, before the phase 2 lifetime expires, during which the Amazon Web Services
    #            side of the VPN connection performs an IKE rekey.</p>
    #
    #   @return [Integer]
    #
    # @!attribute replay_window_size
    #   <p>The number of packets in an IKE replay window.</p>
    #
    #   @return [Integer]
    #
    # @!attribute tunnel_inside_cidr
    #   <p>The range of inside IPv4 addresses for the tunnel.</p>
    #
    #   @return [String]
    #
    AwsEc2VpnConnectionOptionsTunnelOptionsDetails = ::Struct.new(
      :dpd_timeout_seconds,
      :ike_versions,
      :outside_ip_address,
      :phase1_dh_group_numbers,
      :phase1_encryption_algorithms,
      :phase1_integrity_algorithms,
      :phase1_lifetime_seconds,
      :phase2_dh_group_numbers,
      :phase2_encryption_algorithms,
      :phase2_integrity_algorithms,
      :phase2_lifetime_seconds,
      :pre_shared_key,
      :rekey_fuzz_percentage,
      :rekey_margin_time_seconds,
      :replay_window_size,
      :tunnel_inside_cidr,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.dpd_timeout_seconds ||= 0
        self.phase1_lifetime_seconds ||= 0
        self.phase2_lifetime_seconds ||= 0
        self.rekey_fuzz_percentage ||= 0
        self.rekey_margin_time_seconds ||= 0
        self.replay_window_size ||= 0
      end
    end

    # <p>A static routes associated with
    #          the VPN connection.</p>
    #
    # @!attribute destination_cidr_block
    #   <p>The CIDR block associated with the local subnet of the customer data center.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The current state of the static route.</p>
    #
    #   @return [String]
    #
    AwsEc2VpnConnectionRoutesDetails = ::Struct.new(
      :destination_cidr_block,
      :state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the VPN tunnel.</p>
    #
    # @!attribute accepted_route_count
    #   <p>The number of accepted routes.</p>
    #
    #   @return [Integer]
    #
    # @!attribute certificate_arn
    #   <p>The ARN of the VPN tunnel endpoint certificate.</p>
    #
    #   @return [String]
    #
    # @!attribute last_status_change
    #   <p>The date and time of the last change in status.</p>
    #            <p>Uses the <code>date-time</code> format specified in <a href="https://tools.ietf.org/html/rfc3339 section-5.6">RFC 3339 section 5.6, Internet
    #            Date/Time Format</a>. The value cannot contain spaces. For example,
    #            <code>2020-03-22T13:22:13.933Z</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute outside_ip_address
    #   <p>The Internet-routable IP address of the virtual private gateway's outside
    #            interface.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the VPN tunnel.</p>
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>If an error occurs, a description of the error.</p>
    #
    #   @return [String]
    #
    AwsEc2VpnConnectionVgwTelemetryDetails = ::Struct.new(
      :accepted_route_count,
      :certificate_arn,
      :last_status_change,
      :outside_ip_address,
      :status,
      :status_message,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.accepted_route_count ||= 0
      end
    end

    # <p>Information about an Amazon ECR image.</p>
    #
    # @!attribute registry_id
    #   <p>The Amazon Web Services account identifier that is associated with the registry that the image belongs
    #            to.</p>
    #
    #   @return [String]
    #
    # @!attribute repository_name
    #   <p>The name of the repository that the image belongs to.</p>
    #
    #   @return [String]
    #
    # @!attribute architecture
    #   <p>The architecture of the image.</p>
    #
    #   @return [String]
    #
    # @!attribute image_digest
    #   <p>The sha256 digest of the image manifest.</p>
    #
    #   @return [String]
    #
    # @!attribute image_tags
    #   <p>The list of tags that are associated with the image.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute image_published_at
    #   <p>The date and time when the image was pushed to the repository.</p>
    #            <p>Uses the <code>date-time</code> format specified in <a href="https://tools.ietf.org/html/rfc3339 section-5.6">RFC 3339 section 5.6, Internet
    #            Date/Time Format</a>. The value cannot contain spaces. For example,
    #            <code>2020-03-22T13:22:13.933Z</code>.</p>
    #
    #   @return [String]
    #
    AwsEcrContainerImageDetails = ::Struct.new(
      :registry_id,
      :repository_name,
      :architecture,
      :image_digest,
      :image_tags,
      :image_published_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about an Amazon Elastic Container Registry repository.</p>
    #
    # @!attribute arn
    #   <p>The ARN of the repository.</p>
    #
    #   @return [String]
    #
    # @!attribute image_scanning_configuration
    #   <p>The image scanning configuration for a repository.</p>
    #
    #   @return [AwsEcrRepositoryImageScanningConfigurationDetails]
    #
    # @!attribute image_tag_mutability
    #   <p>The tag mutability setting for the repository.</p>
    #
    #   @return [String]
    #
    # @!attribute lifecycle_policy
    #   <p>Information about the lifecycle policy for the repository.</p>
    #
    #   @return [AwsEcrRepositoryLifecyclePolicyDetails]
    #
    # @!attribute repository_name
    #   <p>The name of the repository.</p>
    #
    #   @return [String]
    #
    # @!attribute repository_policy_text
    #   <p>The text of the repository policy.</p>
    #
    #   @return [String]
    #
    AwsEcrRepositoryDetails = ::Struct.new(
      :arn,
      :image_scanning_configuration,
      :image_tag_mutability,
      :lifecycle_policy,
      :repository_name,
      :repository_policy_text,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The image scanning configuration for a repository.</p>
    #
    # @!attribute scan_on_push
    #   <p>Whether to scan images after they are pushed to a repository.</p>
    #
    #   @return [Boolean]
    #
    AwsEcrRepositoryImageScanningConfigurationDetails = ::Struct.new(
      :scan_on_push,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.scan_on_push ||= false
      end
    end

    # <p>Information about the lifecycle policy for the repository.</p>
    #
    # @!attribute lifecycle_policy_text
    #   <p>The text of the lifecycle policy.</p>
    #
    #   @return [String]
    #
    # @!attribute registry_id
    #   <p>The Amazon Web Services account identifier that is associated with the registry that contains the repository.</p>
    #
    #   @return [String]
    #
    AwsEcrRepositoryLifecyclePolicyDetails = ::Struct.new(
      :lifecycle_policy_text,
      :registry_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates whether to enable CloudWatch Container Insights for the ECS cluster.</p>
    #
    # @!attribute name
    #   <p>The name of the setting.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of the setting.</p>
    #
    #   @return [String]
    #
    AwsEcsClusterClusterSettingsDetails = ::Struct.new(
      :name,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The run command configuration for the cluster.</p>
    #
    # @!attribute execute_command_configuration
    #   <p>Contains the run command configuration for the cluster.</p>
    #
    #   @return [AwsEcsClusterConfigurationExecuteCommandConfigurationDetails]
    #
    AwsEcsClusterConfigurationDetails = ::Struct.new(
      :execute_command_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the run command configuration for the cluster.</p>
    #
    # @!attribute kms_key_id
    #   <p>The identifier of the KMS key that is used to encrypt the data between the local client and the container.</p>
    #
    #   @return [String]
    #
    # @!attribute log_configuration
    #   <p>The log configuration for the results of the run command actions. Required if <code>Logging</code> is <code>NONE</code>.</p>
    #
    #   @return [AwsEcsClusterConfigurationExecuteCommandConfigurationLogConfigurationDetails]
    #
    # @!attribute logging
    #   <p>The log setting to use for redirecting logs for run command results.</p>
    #
    #   @return [String]
    #
    AwsEcsClusterConfigurationExecuteCommandConfigurationDetails = ::Struct.new(
      :kms_key_id,
      :log_configuration,
      :logging,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The log configuration for the results of the run command actions.</p>
    #
    # @!attribute cloud_watch_encryption_enabled
    #   <p>Whether to enable encryption on the CloudWatch logs.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute cloud_watch_log_group_name
    #   <p>The name of the CloudWatch log group to send the logs to.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_bucket_name
    #   <p>The name of the S3 bucket to send logs to.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_encryption_enabled
    #   <p>Whether to encrypt the logs that are sent to the S3 bucket.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute s3_key_prefix
    #   <p>Identifies the folder in the S3 bucket to send the logs to.</p>
    #
    #   @return [String]
    #
    AwsEcsClusterConfigurationExecuteCommandConfigurationLogConfigurationDetails = ::Struct.new(
      :cloud_watch_encryption_enabled,
      :cloud_watch_log_group_name,
      :s3_bucket_name,
      :s3_encryption_enabled,
      :s3_key_prefix,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.cloud_watch_encryption_enabled ||= false
        self.s3_encryption_enabled ||= false
      end
    end

    # <p>The default capacity provider strategy for the cluster. The default capacity provider strategy is used when services or tasks are run without a specified launch type or capacity provider strategy.</p>
    #
    # @!attribute base
    #   <p>The minimum number of tasks to run on the specified capacity provider.</p>
    #
    #   @return [Integer]
    #
    # @!attribute capacity_provider
    #   <p>The name of the capacity provider.</p>
    #
    #   @return [String]
    #
    # @!attribute weight
    #   <p>The relative percentage of the total number of tasks launched that should use the capacity provider.</p>
    #
    #   @return [Integer]
    #
    AwsEcsClusterDefaultCapacityProviderStrategyDetails = ::Struct.new(
      :base,
      :capacity_provider,
      :weight,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.base ||= 0
        self.weight ||= 0
      end
    end

    # <p>provides details about an ECS cluster.</p>
    #
    # @!attribute capacity_providers
    #   <p>The short name of one or more capacity providers to associate with the cluster.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute cluster_settings
    #   <p>The setting to use to create the cluster. Specifically used to configure whether to enable CloudWatch Container Insights for the cluster.</p>
    #
    #   @return [Array<AwsEcsClusterClusterSettingsDetails>]
    #
    # @!attribute configuration
    #   <p>The run command configuration for the cluster.</p>
    #
    #   @return [AwsEcsClusterConfigurationDetails]
    #
    # @!attribute default_capacity_provider_strategy
    #   <p>The default capacity provider strategy for the cluster. The default capacity provider strategy is used when services or tasks are run without a specified launch type or capacity provider strategy.</p>
    #
    #   @return [Array<AwsEcsClusterDefaultCapacityProviderStrategyDetails>]
    #
    AwsEcsClusterDetails = ::Struct.new(
      :capacity_providers,
      :cluster_settings,
      :configuration,
      :default_capacity_provider_strategy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Strategy item for the capacity provider strategy that the service uses.</p>
    #
    # @!attribute base
    #   <p>The minimum number of tasks to run on the capacity provider. Only one strategy item can specify a value for <code>Base</code>.</p>
    #            <p>The value must be between 0 and 100000.</p>
    #
    #   @return [Integer]
    #
    # @!attribute capacity_provider
    #   <p>The short name of the capacity provider.</p>
    #
    #   @return [String]
    #
    # @!attribute weight
    #   <p>The relative percentage of the total number of tasks that should use the capacity provider.</p>
    #            <p>If no weight is specified, the default value is 0. At least one capacity provider must have a weight greater than 0.</p>
    #            <p>The value can be between 0 and 1000.</p>
    #
    #   @return [Integer]
    #
    AwsEcsServiceCapacityProviderStrategyDetails = ::Struct.new(
      :base,
      :capacity_provider,
      :weight,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.base ||= 0
        self.weight ||= 0
      end
    end

    # <p>Determines whether a service deployment fails if a service cannot reach a steady state.</p>
    #
    # @!attribute enable
    #   <p>Whether to enable the deployment circuit breaker logic for the service.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute rollback
    #   <p>Whether to roll back the service if a service deployment fails. If rollback is enabled, when a service deployment fails, the service is rolled back to the last deployment that completed successfully.</p>
    #
    #   @return [Boolean]
    #
    AwsEcsServiceDeploymentConfigurationDeploymentCircuitBreakerDetails = ::Struct.new(
      :enable,
      :rollback,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.enable ||= false
        self.rollback ||= false
      end
    end

    # <p>Optional deployment parameters for the service.</p>
    #
    # @!attribute deployment_circuit_breaker
    #   <p>Determines whether a service deployment fails if a service cannot reach a steady state.</p>
    #
    #   @return [AwsEcsServiceDeploymentConfigurationDeploymentCircuitBreakerDetails]
    #
    # @!attribute maximum_percent
    #   <p>For a service that uses the rolling update (<code>ECS</code>) deployment type, the maximum number of tasks in a service that are allowed in the <code>RUNNING</code> or <code>PENDING</code> state during a deployment, and for tasks that use the EC2 launch type, when any container instances are in the <code>DRAINING</code> state. Provided as a percentage of the desired number of tasks. The default value is 200%.</p>
    #            <p>For a service that uses the blue/green (<code>CODE_DEPLOY</code>) or <code>EXTERNAL</code> deployment types, and tasks that use the EC2 launch type, the maximum number of tasks in the service that remain in the <code>RUNNING</code> state while the container instances are in the <code>DRAINING</code> state.</p>
    #            <p>For the Fargate launch type, the maximum percent value is not used.</p>
    #
    #   @return [Integer]
    #
    # @!attribute minimum_healthy_percent
    #   <p>For a service that uses the rolling update (<code>ECS</code>) deployment type, the minimum number of tasks in a service that must remain in the <code>RUNNING</code> state during a deployment, and while any container instances are in the <code>DRAINING</code> state if the service contains tasks using the EC2 launch type. Expressed as a percentage of the desired number of tasks. The default value is 100%.</p>
    #            <p>For a service that uses the blue/green (<code>CODE_DEPLOY</code>) or <code>EXTERNAL</code> deployment types and tasks that use the EC2 launch type, the minimum number of the tasks in the service that remain in the <code>RUNNING</code> state while the container instances are in the <code>DRAINING</code> state.</p>
    #            <p>For the Fargate launch type, the minimum healthy percent value is not used.</p>
    #
    #   @return [Integer]
    #
    AwsEcsServiceDeploymentConfigurationDetails = ::Struct.new(
      :deployment_circuit_breaker,
      :maximum_percent,
      :minimum_healthy_percent,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.maximum_percent ||= 0
        self.minimum_healthy_percent ||= 0
      end
    end

    # <p>Information about the deployment controller type that the service uses.</p>
    #
    # @!attribute type
    #   <p>The rolling update (<code>ECS</code>) deployment type replaces the current running version of the container with the latest version.</p>
    #            <p>The blue/green (<code>CODE_DEPLOY</code>) deployment type uses the blue/green deployment model that is powered by CodeDeploy. This deployment model a new deployment of a service can be verified before production traffic is sent to it.</p>
    #            <p>The external (<code>EXTERNAL</code>) deployment type allows the use of any third-party deployment controller for full control over the deployment process for an Amazon ECS service.</p>
    #            <p>Valid values: <code>ECS</code> | <code>CODE_DEPLOY</code> | <code>EXTERNAL</code>
    #            </p>
    #
    #   @return [String]
    #
    AwsEcsServiceDeploymentControllerDetails = ::Struct.new(
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides details about a service within an ECS cluster.</p>
    #
    # @!attribute capacity_provider_strategy
    #   <p>The capacity provider strategy that the service uses.</p>
    #
    #   @return [Array<AwsEcsServiceCapacityProviderStrategyDetails>]
    #
    # @!attribute cluster
    #   <p>The ARN of the cluster that hosts the service.</p>
    #
    #   @return [String]
    #
    # @!attribute deployment_configuration
    #   <p>Deployment parameters for the service. Includes the number of tasks that run and the order in which to start and stop tasks.</p>
    #
    #   @return [AwsEcsServiceDeploymentConfigurationDetails]
    #
    # @!attribute deployment_controller
    #   <p>Contains the deployment controller type that the service uses.</p>
    #
    #   @return [AwsEcsServiceDeploymentControllerDetails]
    #
    # @!attribute desired_count
    #   <p>The number of instantiations of the task definition to run on the service.</p>
    #
    #   @return [Integer]
    #
    # @!attribute enable_ecs_managed_tags
    #   <p>Whether to enable Amazon ECS managed tags for the tasks in the service.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute enable_execute_command
    #   <p>Whether the execute command functionality is enabled for the service.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute health_check_grace_period_seconds
    #   <p>After a task starts, the amount of time in seconds that the Amazon ECS service scheduler ignores unhealthy Elastic Load Balancing target health checks.</p>
    #
    #   @return [Integer]
    #
    # @!attribute launch_type
    #   <p>The launch type that the service uses.</p>
    #            <p>Valid values: <code>EC2</code> | <code>FARGATE</code> | <code>EXTERNAL</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute load_balancers
    #   <p>Information about the load balancers that the service uses.</p>
    #
    #   @return [Array<AwsEcsServiceLoadBalancersDetails>]
    #
    # @!attribute name
    #   <p>The name of the service.</p>
    #
    #   @return [String]
    #
    # @!attribute network_configuration
    #   <p>For tasks that use the <code>awsvpc</code> networking mode, the VPC subnet and security group configuration.</p>
    #
    #   @return [AwsEcsServiceNetworkConfigurationDetails]
    #
    # @!attribute placement_constraints
    #   <p>The placement constraints for the tasks in the service.</p>
    #
    #   @return [Array<AwsEcsServicePlacementConstraintsDetails>]
    #
    # @!attribute placement_strategies
    #   <p>Information about how tasks for the service are placed.</p>
    #
    #   @return [Array<AwsEcsServicePlacementStrategiesDetails>]
    #
    # @!attribute platform_version
    #   <p>The platform version on which to run the service. Only specified for tasks that are hosted on Fargate. If a platform version is not specified, the <code>LATEST</code> platform version is used by default.</p>
    #
    #   @return [String]
    #
    # @!attribute propagate_tags
    #   <p>Indicates whether to propagate the tags from the task definition to the task or from the service to the task. If no value is provided, then tags are not propagated.</p>
    #            <p>Valid values: <code>TASK_DEFINITION</code> | <code>SERVICE</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute role
    #   <p>The ARN of the IAM role that is associated with the service. The role allows the Amazon ECS container agent to register container instances with an Elastic Load Balancing load balancer.</p>
    #
    #   @return [String]
    #
    # @!attribute scheduling_strategy
    #   <p>The scheduling strategy to use for the service.</p>
    #            <p>The <code>REPLICA</code> scheduling strategy places and maintains the desired number of tasks across the cluster. By default, the service scheduler spreads tasks across Availability Zones. Task placement strategies and constraints are used to customize task placement decisions.</p>
    #            <p>The <code>DAEMON</code> scheduling strategy deploys exactly one task on each active container instance that meets all of the task placement constraints that are specified in the cluster. The service scheduler also evaluates the task placement constraints for running tasks and stops tasks that do not meet the placement constraints.</p>
    #            <p>Valid values: <code>REPLICA</code> | <code>DAEMON</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute service_arn
    #   <p>The ARN of the service.</p>
    #
    #   @return [String]
    #
    # @!attribute service_name
    #   <p>The name of the service.</p>
    #            <p>The name can contain up to 255 characters. It can use letters, numbers, underscores, and hyphens.</p>
    #
    #   @return [String]
    #
    # @!attribute service_registries
    #   <p>Information about the service discovery registries to assign to the service.</p>
    #
    #   @return [Array<AwsEcsServiceServiceRegistriesDetails>]
    #
    # @!attribute task_definition
    #   <p>The task definition to use for tasks in the service.</p>
    #
    #   @return [String]
    #
    AwsEcsServiceDetails = ::Struct.new(
      :capacity_provider_strategy,
      :cluster,
      :deployment_configuration,
      :deployment_controller,
      :desired_count,
      :enable_ecs_managed_tags,
      :enable_execute_command,
      :health_check_grace_period_seconds,
      :launch_type,
      :load_balancers,
      :name,
      :network_configuration,
      :placement_constraints,
      :placement_strategies,
      :platform_version,
      :propagate_tags,
      :role,
      :scheduling_strategy,
      :service_arn,
      :service_name,
      :service_registries,
      :task_definition,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.desired_count ||= 0
        self.enable_ecs_managed_tags ||= false
        self.enable_execute_command ||= false
        self.health_check_grace_period_seconds ||= 0
      end
    end

    # <p>Information about a load balancer that the service uses.</p>
    #
    # @!attribute container_name
    #   <p>The name of the container to associate with the load balancer.</p>
    #
    #   @return [String]
    #
    # @!attribute container_port
    #   <p>The port on the container to associate with the load balancer. This port must correspond to a <code>containerPort</code> in the task definition the tasks in the service are using. For tasks that use the EC2 launch type, the container instance they are launched on must allow ingress traffic on the <code>hostPort</code> of the port mapping.</p>
    #
    #   @return [Integer]
    #
    # @!attribute load_balancer_name
    #   <p>The name of the load balancer to associate with the Amazon ECS service or task set.</p>
    #            <p>Only specified when using a Classic Load Balancer. For an Application Load Balancer or a Network Load Balancer, the load balancer name is omitted.</p>
    #
    #   @return [String]
    #
    # @!attribute target_group_arn
    #   <p>The ARN of the Elastic Load Balancing target group or groups associated with a service or task set.</p>
    #            <p>Only specified when using an Application Load Balancer or a Network Load Balancer. For a Classic Load Balancer, the target group ARN is omitted.</p>
    #
    #   @return [String]
    #
    AwsEcsServiceLoadBalancersDetails = ::Struct.new(
      :container_name,
      :container_port,
      :load_balancer_name,
      :target_group_arn,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.container_port ||= 0
      end
    end

    # <p>For tasks that use the <code>awsvpc</code> networking mode, the VPC subnet and security group configuration.</p>
    #
    # @!attribute assign_public_ip
    #   <p>Whether the task's elastic network interface receives a public IP address. The default value is <code>DISABLED</code>.</p>
    #            <p>Valid values: <code>ENABLED</code> | <code>DISABLED</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute security_groups
    #   <p>The IDs of the security groups associated with the task or service.</p>
    #            <p>You can provide up to five security groups.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute subnets
    #   <p>The IDs of the subnets associated with the task or service.</p>
    #            <p>You can provide up to 16 subnets.</p>
    #
    #   @return [Array<String>]
    #
    AwsEcsServiceNetworkConfigurationAwsVpcConfigurationDetails = ::Struct.new(
      :assign_public_ip,
      :security_groups,
      :subnets,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>For tasks that use the <code>awsvpc</code> networking mode, the VPC subnet and security group configuration.</p>
    #
    # @!attribute aws_vpc_configuration
    #   <p>The VPC subnet and security group configuration.</p>
    #
    #   @return [AwsEcsServiceNetworkConfigurationAwsVpcConfigurationDetails]
    #
    AwsEcsServiceNetworkConfigurationDetails = ::Struct.new(
      :aws_vpc_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A placement constraint for the tasks in the service.</p>
    #
    # @!attribute expression
    #   <p>A cluster query language expression to apply to the constraint. You cannot specify an expression if the constraint type is <code>distinctInstance</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of constraint. Use <code>distinctInstance</code> to run each task in a particular group on a different container instance. Use <code>memberOf</code> to restrict the selection to a group of valid candidates.</p>
    #            <p>Valid values: <code>distinctInstance</code> | <code>memberOf</code>
    #            </p>
    #
    #   @return [String]
    #
    AwsEcsServicePlacementConstraintsDetails = ::Struct.new(
      :expression,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A placement strategy that determines how to place the tasks for the service.</p>
    #
    # @!attribute field
    #   <p>The field to apply the placement strategy against.</p>
    #            <p>For the <code>spread</code> placement strategy, valid values are <code>instanceId</code> (or <code>host</code>, which has the same effect), or any platform or custom attribute that is applied to a container instance, such as <code>attribute:ecs.availability-zone</code>.</p>
    #            <p>For the <code>binpack</code> placement strategy, valid values are <code>cpu</code> and <code>memory</code>.</p>
    #            <p>For the <code>random</code> placement strategy, this attribute is not used.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of placement strategy.</p>
    #            <p>The <code>random</code> placement strategy randomly places tasks on available candidates.</p>
    #            <p>The <code>spread</code> placement strategy spreads placement across available candidates evenly based on the value of <code>Field</code>.</p>
    #            <p>The <code>binpack</code> strategy places tasks on available candidates that have the least available amount of the resource that is specified in <code>Field</code>.</p>
    #            <p>Valid values: <code>random</code> | <code>spread</code> | <code>binpack</code>
    #            </p>
    #
    #   @return [String]
    #
    AwsEcsServicePlacementStrategiesDetails = ::Struct.new(
      :field,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a service discovery registry to assign to the service.</p>
    #
    # @!attribute container_name
    #   <p>The container name value to use for the service discovery service.</p>
    #            <p>If the task definition uses the <code>bridge</code> or <code>host</code> network mode, you must specify <code>ContainerName</code> and <code>ContainerPort</code>.</p>
    #            <p>If the task definition uses the <code>awsvpc</code> network mode and a type SRV DNS record, you must specify either <code>ContainerName</code> and <code>ContainerPort</code>, or <code>Port</code> , but not both.</p>
    #
    #   @return [String]
    #
    # @!attribute container_port
    #   <p>The port value to use for the service discovery service.</p>
    #            <p>If the task definition uses the <code>bridge</code> or <code>host</code> network mode, you must specify <code>ContainerName</code> and <code>ContainerPort</code>.</p>
    #            <p>If the task definition uses the <code>awsvpc</code> network mode and a type SRV DNS record, you must specify either <code>ContainerName</code> and <code>ContainerPort</code>, or <code>Port</code> , but not both.</p>
    #
    #   @return [Integer]
    #
    # @!attribute port
    #   <p>The port value to use for a service discovery service that specifies an SRV record. This field can be used if both the <code>awsvpc</code>awsvpc network mode and SRV records are used.</p>
    #
    #   @return [Integer]
    #
    # @!attribute registry_arn
    #   <p>The ARN of the service registry.</p>
    #
    #   @return [String]
    #
    AwsEcsServiceServiceRegistriesDetails = ::Struct.new(
      :container_name,
      :container_port,
      :port,
      :registry_arn,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.container_port ||= 0
        self.port ||= 0
      end
    end

    # <p>A dependency that is defined for container startup and shutdown.</p>
    #
    # @!attribute condition
    #   <p>The dependency condition of the dependent container. Indicates the required status of the dependent container before the current container can start.</p>
    #
    #   @return [String]
    #
    # @!attribute container_name
    #   <p>The name of the dependent container.</p>
    #
    #   @return [String]
    #
    AwsEcsTaskDefinitionContainerDefinitionsDependsOnDetails = ::Struct.new(
      :condition,
      :container_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A container definition that describes a container in the task.</p>
    #
    # @!attribute command
    #   <p>The command that is passed to the container.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute cpu
    #   <p>The number of CPU units reserved for the container.</p>
    #
    #   @return [Integer]
    #
    # @!attribute depends_on
    #   <p>The dependencies that are defined for container startup and shutdown.</p>
    #
    #   @return [Array<AwsEcsTaskDefinitionContainerDefinitionsDependsOnDetails>]
    #
    # @!attribute disable_networking
    #   <p>Whether to disable networking within the container.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute dns_search_domains
    #   <p>A list of DNS search domains that are presented to the container.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute dns_servers
    #   <p>A list of DNS servers that are presented to the container.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute docker_labels
    #   <p>A key-value map of labels to add to the container.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute docker_security_options
    #   <p>A list of strings to provide custom labels for SELinux and AppArmor multi-level security systems.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute entry_point
    #   <p>The entry point that is passed to the container.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute environment
    #   <p>The environment variables to pass to a container.</p>
    #
    #   @return [Array<AwsEcsTaskDefinitionContainerDefinitionsEnvironmentDetails>]
    #
    # @!attribute environment_files
    #   <p>A list of files containing the environment variables to pass to a container.</p>
    #
    #   @return [Array<AwsEcsTaskDefinitionContainerDefinitionsEnvironmentFilesDetails>]
    #
    # @!attribute essential
    #   <p>Whether the container is essential. All tasks must have at least one essential container.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute extra_hosts
    #   <p>A list of hostnames and IP address mappings to append to the <b>/etc/hosts</b> file on the container.</p>
    #
    #   @return [Array<AwsEcsTaskDefinitionContainerDefinitionsExtraHostsDetails>]
    #
    # @!attribute firelens_configuration
    #   <p>The FireLens configuration for the container. Specifies and configures a log router for container logs.</p>
    #
    #   @return [AwsEcsTaskDefinitionContainerDefinitionsFirelensConfigurationDetails]
    #
    # @!attribute health_check
    #   <p>The container health check command and associated configuration parameters for the container.</p>
    #
    #   @return [AwsEcsTaskDefinitionContainerDefinitionsHealthCheckDetails]
    #
    # @!attribute hostname
    #   <p>The hostname to use for the container.</p>
    #
    #   @return [String]
    #
    # @!attribute image
    #   <p>The image used to start the container.</p>
    #
    #   @return [String]
    #
    # @!attribute interactive
    #   <p>If set to true, then containerized applications can be deployed that require <code>stdin</code> or a <code>tty</code> to be allocated.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute links
    #   <p>A list of links for the container in the form <code>
    #                  <i>container_name</i>:<i>alias</i>
    #               </code>. Allows containers to communicate with each other without the need for port mappings.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute linux_parameters
    #   <p>Linux-specific modifications that are applied to the container, such as Linux kernel capabilities.</p>
    #
    #   @return [AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDetails]
    #
    # @!attribute log_configuration
    #   <p>The log configuration specification for the container.</p>
    #
    #   @return [AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationDetails]
    #
    # @!attribute memory
    #   <p>The amount (in MiB) of memory to present to the container. If the container attempts to exceed the memory specified here, the container is shut down. The total amount of memory reserved for all containers within a task must be lower than the task memory value, if one is specified.</p>
    #
    #   @return [Integer]
    #
    # @!attribute memory_reservation
    #   <p>The soft limit (in MiB) of memory to reserve for the container.</p>
    #
    #   @return [Integer]
    #
    # @!attribute mount_points
    #   <p>The mount points for the data volumes in the container.</p>
    #
    #   @return [Array<AwsEcsTaskDefinitionContainerDefinitionsMountPointsDetails>]
    #
    # @!attribute name
    #   <p>The name of the container.</p>
    #
    #   @return [String]
    #
    # @!attribute port_mappings
    #   <p>The list of port mappings for the container.</p>
    #
    #   @return [Array<AwsEcsTaskDefinitionContainerDefinitionsPortMappingsDetails>]
    #
    # @!attribute privileged
    #   <p>Whether the container is given elevated privileges on the host container instance. The elevated privileges are similar to the root user.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute pseudo_terminal
    #   <p>Whether to allocate a TTY to the container.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute readonly_root_filesystem
    #   <p>Whether the container is given read-only access to its root file system.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute repository_credentials
    #   <p>The private repository authentication credentials to use.</p>
    #
    #   @return [AwsEcsTaskDefinitionContainerDefinitionsRepositoryCredentialsDetails]
    #
    # @!attribute resource_requirements
    #   <p>The type and amount of a resource to assign to a container. The only supported resource is a GPU.</p>
    #
    #   @return [Array<AwsEcsTaskDefinitionContainerDefinitionsResourceRequirementsDetails>]
    #
    # @!attribute secrets
    #   <p>The secrets to pass to the container.</p>
    #
    #   @return [Array<AwsEcsTaskDefinitionContainerDefinitionsSecretsDetails>]
    #
    # @!attribute start_timeout
    #   <p>The number of seconds to wait before giving up on resolving dependencies for a container. </p>
    #
    #   @return [Integer]
    #
    # @!attribute stop_timeout
    #   <p>The number of seconds to wait before the container is stopped if it doesn't shut down normally on its own.</p>
    #
    #   @return [Integer]
    #
    # @!attribute system_controls
    #   <p>A list of namespaced kernel parameters to set in the container.</p>
    #
    #   @return [Array<AwsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails>]
    #
    # @!attribute ulimits
    #   <p>A list of ulimits to set in the container. </p>
    #
    #   @return [Array<AwsEcsTaskDefinitionContainerDefinitionsUlimitsDetails>]
    #
    # @!attribute user
    #   <p>The user to use inside the container.</p>
    #            <p>The value can use one of the following formats.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>
    #                        <i>user</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>
    #                        <i>user</i>
    #                     </code>:<code>
    #                        <i>group</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>
    #                        <i>uid</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>
    #                        <i>uid</i>
    #                     </code>:<code>
    #                        <i>gid</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>
    #                        <i>user</i>
    #                     </code>:<code>
    #                        <i>gid</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>
    #                        <i>uid</i>
    #                     </code>:<code>
    #                        <i>group</i>
    #                     </code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute volumes_from
    #   <p>Data volumes to mount from another container.</p>
    #
    #   @return [Array<AwsEcsTaskDefinitionContainerDefinitionsVolumesFromDetails>]
    #
    # @!attribute working_directory
    #   <p>The working directory in which to run commands inside the container.</p>
    #
    #   @return [String]
    #
    AwsEcsTaskDefinitionContainerDefinitionsDetails = ::Struct.new(
      :command,
      :cpu,
      :depends_on,
      :disable_networking,
      :dns_search_domains,
      :dns_servers,
      :docker_labels,
      :docker_security_options,
      :entry_point,
      :environment,
      :environment_files,
      :essential,
      :extra_hosts,
      :firelens_configuration,
      :health_check,
      :hostname,
      :image,
      :interactive,
      :links,
      :linux_parameters,
      :log_configuration,
      :memory,
      :memory_reservation,
      :mount_points,
      :name,
      :port_mappings,
      :privileged,
      :pseudo_terminal,
      :readonly_root_filesystem,
      :repository_credentials,
      :resource_requirements,
      :secrets,
      :start_timeout,
      :stop_timeout,
      :system_controls,
      :ulimits,
      :user,
      :volumes_from,
      :working_directory,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.cpu ||= 0
        self.disable_networking ||= false
        self.essential ||= false
        self.interactive ||= false
        self.memory ||= 0
        self.memory_reservation ||= 0
        self.privileged ||= false
        self.pseudo_terminal ||= false
        self.readonly_root_filesystem ||= false
        self.start_timeout ||= 0
        self.stop_timeout ||= 0
      end
    end

    # <p>An environment variable to pass to the container.</p>
    #
    # @!attribute name
    #   <p>The name of the environment variable.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of the environment variable.</p>
    #
    #   @return [String]
    #
    AwsEcsTaskDefinitionContainerDefinitionsEnvironmentDetails = ::Struct.new(
      :name,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A file that contain environment variables to pass to a container.</p>
    #
    # @!attribute type
    #   <p>The type of environment file.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The ARN of the S3 object that contains the environment variable file.</p>
    #
    #   @return [String]
    #
    AwsEcsTaskDefinitionContainerDefinitionsEnvironmentFilesDetails = ::Struct.new(
      :type,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A hostname and IP address mapping to append to the <b>/etc/hosts</b> file on the container.</p>
    #
    # @!attribute hostname
    #   <p>The hostname to use in the <b>/etc/hosts</b> entry.</p>
    #
    #   @return [String]
    #
    # @!attribute ip_address
    #   <p>The IP address to use in the <b>/etc/hosts</b> entry.</p>
    #
    #   @return [String]
    #
    AwsEcsTaskDefinitionContainerDefinitionsExtraHostsDetails = ::Struct.new(
      :hostname,
      :ip_address,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The FireLens configuration for the container. The configuration specifies and configures a log router for container logs.</p>
    #
    # @!attribute options
    #   <p>The options to use to configure the log router.</p>
    #            <p>The valid option keys are as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>enable-ecs-log-metadata</code>. The value can be <code>true</code> or
    #                  <code>false</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>config-file-type</code>. The value can be <code>s3</code> or
    #                  <code>file</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>config-file-value</code>. The value is either an S3 ARN or a file path.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute type
    #   <p>The log router to use. </p>
    #
    #   @return [String]
    #
    AwsEcsTaskDefinitionContainerDefinitionsFirelensConfigurationDetails = ::Struct.new(
      :options,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The container health check command and associated configuration parameters for the container.</p>
    #
    # @!attribute command
    #   <p>The command that the container runs to determine whether it is healthy.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute interval
    #   <p>The time period in seconds between each health check execution. The default value is 30 seconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute retries
    #   <p>The number of times to retry a failed health check before the container is considered unhealthy. The default value is 3.</p>
    #
    #   @return [Integer]
    #
    # @!attribute start_period
    #   <p>The optional grace period in seconds that allows containers time to bootstrap before failed health checks count towards the maximum number of retries.</p>
    #
    #   @return [Integer]
    #
    # @!attribute timeout
    #   <p>The time period in seconds to wait for a health check to succeed before it is considered a failure. The default value is 5.</p>
    #
    #   @return [Integer]
    #
    AwsEcsTaskDefinitionContainerDefinitionsHealthCheckDetails = ::Struct.new(
      :command,
      :interval,
      :retries,
      :start_period,
      :timeout,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.interval ||= 0
        self.retries ||= 0
        self.start_period ||= 0
        self.timeout ||= 0
      end
    end

    # <p>The Linux capabilities for the container that are added to or dropped from the default configuration provided by Docker.</p>
    #
    # @!attribute add
    #   <p>The Linux capabilities for the container that are added to the default configuration provided by Docker.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute drop
    #   <p>The Linux capabilities for the container that are dropped from the default configuration provided by Docker.</p>
    #
    #   @return [Array<String>]
    #
    AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersCapabilitiesDetails = ::Struct.new(
      :add,
      :drop,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>>Linux-specific modifications that are applied to the container, such as Linux kernel capabilities.</p>
    #
    # @!attribute capabilities
    #   <p>The Linux capabilities for the container that are added to or dropped from the default configuration provided by Docker.</p>
    #
    #   @return [AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersCapabilitiesDetails]
    #
    # @!attribute devices
    #   <p>The host devices to expose to the container.</p>
    #
    #   @return [Array<AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDevicesDetails>]
    #
    # @!attribute init_process_enabled
    #   <p>Whether to run an <code>init</code> process inside the container that forwards signals and reaps processes. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute max_swap
    #   <p>The total amount of swap memory (in MiB) that a container can use.</p>
    #
    #   @return [Integer]
    #
    # @!attribute shared_memory_size
    #   <p>The value for the size (in MiB) of the <b>/dev/shm</b> volume.</p>
    #
    #   @return [Integer]
    #
    # @!attribute swappiness
    #   <p>Configures the container's memory swappiness behavior. Determines how aggressively pages are swapped. The higher the value, the more aggressive the swappiness. The default is 60.</p>
    #
    #   @return [Integer]
    #
    # @!attribute tmpfs
    #   <p>The container path, mount options, and size (in MiB) of the tmpfs mount.</p>
    #
    #   @return [Array<AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersTmpfsDetails>]
    #
    AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDetails = ::Struct.new(
      :capabilities,
      :devices,
      :init_process_enabled,
      :max_swap,
      :shared_memory_size,
      :swappiness,
      :tmpfs,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.init_process_enabled ||= false
        self.max_swap ||= 0
        self.shared_memory_size ||= 0
        self.swappiness ||= 0
      end
    end

    # <p>A host device to expose to the container.</p>
    #
    # @!attribute container_path
    #   <p>The path inside the container at which to expose the host device.</p>
    #
    #   @return [String]
    #
    # @!attribute host_path
    #   <p>The path for the device on the host container instance.</p>
    #
    #   @return [String]
    #
    # @!attribute permissions
    #   <p>The explicit permissions to provide to the container for the device. By default, the container has permissions for read, write, and <code>mknod</code> for the device.</p>
    #
    #   @return [Array<String>]
    #
    AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDevicesDetails = ::Struct.new(
      :container_path,
      :host_path,
      :permissions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The container path, mount options, and size (in MiB) of a tmpfs mount.</p>
    #
    # @!attribute container_path
    #   <p>The absolute file path where the tmpfs volume is to be mounted.</p>
    #
    #   @return [String]
    #
    # @!attribute mount_options
    #   <p>The list of tmpfs volume mount options.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute size
    #   <p>The maximum size (in MiB) of the tmpfs volume.</p>
    #
    #   @return [Integer]
    #
    AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersTmpfsDetails = ::Struct.new(
      :container_path,
      :mount_options,
      :size,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.size ||= 0
      end
    end

    # <p>The log configuration specification for the container.</p>
    #
    # @!attribute log_driver
    #   <p>The log driver to use for the container.</p>
    #
    #   @return [String]
    #
    # @!attribute options
    #   <p>The configuration options to send to the log driver. Requires version 1.19 of the Docker Remote API or greater on your container instance.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute secret_options
    #   <p>The secrets to pass to the log configuration.</p>
    #
    #   @return [Array<AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationSecretOptionsDetails>]
    #
    AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationDetails = ::Struct.new(
      :log_driver,
      :options,
      :secret_options,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A secret to pass to the log configuration.</p>
    #
    # @!attribute name
    #   <p>The name of the secret.</p>
    #
    #   @return [String]
    #
    # @!attribute value_from
    #   <p>The secret to expose to the container.</p>
    #            <p>The value is either the full ARN of the Secrets Manager secret or the full ARN of the
    #            parameter in the Systems Manager Parameter Store.</p>
    #
    #   @return [String]
    #
    AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationSecretOptionsDetails = ::Struct.new(
      :name,
      :value_from,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A mount point for the data volumes in the container.</p>
    #
    # @!attribute container_path
    #   <p>The path on the container to mount the host volume at.</p>
    #
    #   @return [String]
    #
    # @!attribute read_only
    #   <p>Whether the container has read-only access to the volume.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute source_volume
    #   <p>The name of the volume to mount. Must match the name of a volume listed in <code>VolumeDetails</code> for the task definition.</p>
    #
    #   @return [String]
    #
    AwsEcsTaskDefinitionContainerDefinitionsMountPointsDetails = ::Struct.new(
      :container_path,
      :read_only,
      :source_volume,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.read_only ||= false
      end
    end

    # <p>A port mapping for the container.</p>
    #
    # @!attribute container_port
    #   <p>The port number on the container that is bound to the user-specified or automatically assigned host port.</p>
    #
    #   @return [Integer]
    #
    # @!attribute host_port
    #   <p>The port number on the container instance to reserve for the container.</p>
    #
    #   @return [Integer]
    #
    # @!attribute protocol
    #   <p>The protocol used for the port mapping. The default is <code>tcp</code>.</p>
    #
    #   @return [String]
    #
    AwsEcsTaskDefinitionContainerDefinitionsPortMappingsDetails = ::Struct.new(
      :container_port,
      :host_port,
      :protocol,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.container_port ||= 0
        self.host_port ||= 0
      end
    end

    # <p>The private repository authentication credentials to use.</p>
    #
    # @!attribute credentials_parameter
    #   <p>The ARN of the secret that contains the private repository credentials.</p>
    #
    #   @return [String]
    #
    AwsEcsTaskDefinitionContainerDefinitionsRepositoryCredentialsDetails = ::Struct.new(
      :credentials_parameter,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A resource to assign to a container.</p>
    #
    # @!attribute type
    #   <p>The type of resource to assign to a container.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value for the specified resource type.</p>
    #            <p>For <code>GPU</code>, the value is the number of physical GPUs the Amazon ECS container agent
    #            reserves for the container.</p>
    #            <p>For <code>InferenceAccelerator</code>, the value should match the <code>DeviceName</code>
    #            attribute of an entry in <code>InferenceAccelerators</code>.</p>
    #
    #   @return [String]
    #
    AwsEcsTaskDefinitionContainerDefinitionsResourceRequirementsDetails = ::Struct.new(
      :type,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A secret to pass to the container.</p>
    #
    # @!attribute name
    #   <p>The name of the secret.</p>
    #
    #   @return [String]
    #
    # @!attribute value_from
    #   <p>The secret to expose to the container. The value is either the full ARN of the Secrets Manager
    #            secret or the full ARN of the parameter in the Systems Manager Parameter Store.</p>
    #
    #   @return [String]
    #
    AwsEcsTaskDefinitionContainerDefinitionsSecretsDetails = ::Struct.new(
      :name,
      :value_from,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A namespaced kernel parameter to set in the container.</p>
    #
    # @!attribute namespace
    #   <p>The namespaced kernel parameter for which to set a value.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of the parameter.</p>
    #
    #   @return [String]
    #
    AwsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails = ::Struct.new(
      :namespace,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A ulimit to set in the container.</p>
    #
    # @!attribute hard_limit
    #   <p>The hard limit for the ulimit type.</p>
    #
    #   @return [Integer]
    #
    # @!attribute name
    #   <p>The type of the ulimit.</p>
    #
    #   @return [String]
    #
    # @!attribute soft_limit
    #   <p>The soft limit for the ulimit type.</p>
    #
    #   @return [Integer]
    #
    AwsEcsTaskDefinitionContainerDefinitionsUlimitsDetails = ::Struct.new(
      :hard_limit,
      :name,
      :soft_limit,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.hard_limit ||= 0
        self.soft_limit ||= 0
      end
    end

    # <p>A data volume to mount from another container.</p>
    #
    # @!attribute read_only
    #   <p>Whether the container has read-only access to the volume.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute source_container
    #   <p>The name of another container within the same task definition from which to mount volumes.</p>
    #
    #   @return [String]
    #
    AwsEcsTaskDefinitionContainerDefinitionsVolumesFromDetails = ::Struct.new(
      :read_only,
      :source_container,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.read_only ||= false
      end
    end

    # <p>details about a task definition. A task definition describes the container and volume definitions of an Amazon Elastic Container Service task.</p>
    #
    # @!attribute container_definitions
    #   <p>The container definitions that describe the containers that make up the task.</p>
    #
    #   @return [Array<AwsEcsTaskDefinitionContainerDefinitionsDetails>]
    #
    # @!attribute cpu
    #   <p>The number of CPU units used by the task.</p>
    #
    #   @return [String]
    #
    # @!attribute execution_role_arn
    #   <p>The ARN of the task execution role that grants the container agent permission to make API calls on behalf of the container user.</p>
    #
    #   @return [String]
    #
    # @!attribute family
    #   <p>The name of a family that this task definition is registered to.</p>
    #
    #   @return [String]
    #
    # @!attribute inference_accelerators
    #   <p>The Elastic Inference accelerators to use for the containers in the task.</p>
    #
    #   @return [Array<AwsEcsTaskDefinitionInferenceAcceleratorsDetails>]
    #
    # @!attribute ipc_mode
    #   <p>The IPC resource namespace to use for the containers in the task.</p>
    #
    #   @return [String]
    #
    # @!attribute memory
    #   <p>The amount (in MiB) of memory used by the task.</p>
    #
    #   @return [String]
    #
    # @!attribute network_mode
    #   <p>The Docker networking mode to use for the containers in the task.</p>
    #
    #   @return [String]
    #
    # @!attribute pid_mode
    #   <p>The process namespace to use for the containers in the task.</p>
    #
    #   @return [String]
    #
    # @!attribute placement_constraints
    #   <p>The placement constraint objects to use for tasks.</p>
    #
    #   @return [Array<AwsEcsTaskDefinitionPlacementConstraintsDetails>]
    #
    # @!attribute proxy_configuration
    #   <p>The configuration details for the App Mesh proxy.</p>
    #
    #   @return [AwsEcsTaskDefinitionProxyConfigurationDetails]
    #
    # @!attribute requires_compatibilities
    #   <p>The task launch types that the task definition was validated against.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute task_role_arn
    #   <p>The short name or ARN of the IAM role that grants containers in the task permission to call Amazon Web Services API operations on your behalf.</p>
    #
    #   @return [String]
    #
    # @!attribute volumes
    #   <p>The data volume definitions for the task.</p>
    #
    #   @return [Array<AwsEcsTaskDefinitionVolumesDetails>]
    #
    AwsEcsTaskDefinitionDetails = ::Struct.new(
      :container_definitions,
      :cpu,
      :execution_role_arn,
      :family,
      :inference_accelerators,
      :ipc_mode,
      :memory,
      :network_mode,
      :pid_mode,
      :placement_constraints,
      :proxy_configuration,
      :requires_compatibilities,
      :task_role_arn,
      :volumes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An Elastic Inference accelerator to use
    #          for the containers in the task.</p>
    #
    # @!attribute device_name
    #   <p>The Elastic Inference accelerator device name.</p>
    #
    #   @return [String]
    #
    # @!attribute device_type
    #   <p>The Elastic Inference accelerator type to use.</p>
    #
    #   @return [String]
    #
    AwsEcsTaskDefinitionInferenceAcceleratorsDetails = ::Struct.new(
      :device_name,
      :device_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A placement constraint object to use for tasks.</p>
    #
    # @!attribute expression
    #   <p>A cluster query language expression to apply to the constraint.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of constraint.</p>
    #
    #   @return [String]
    #
    AwsEcsTaskDefinitionPlacementConstraintsDetails = ::Struct.new(
      :expression,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The configuration details for the App Mesh
    #          proxy.</p>
    #
    # @!attribute container_name
    #   <p>The name of the container that will serve as the App Mesh proxy.</p>
    #
    #   @return [String]
    #
    # @!attribute proxy_configuration_properties
    #   <p>The set of network configuration parameters to provide to the Container Network Interface (CNI) plugin, specified as key-value pairs.</p>
    #
    #   @return [Array<AwsEcsTaskDefinitionProxyConfigurationProxyConfigurationPropertiesDetails>]
    #
    # @!attribute type
    #   <p>The proxy type.</p>
    #
    #   @return [String]
    #
    AwsEcsTaskDefinitionProxyConfigurationDetails = ::Struct.new(
      :container_name,
      :proxy_configuration_properties,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A network configuration parameter to provide to the Container Network Interface (CNI) plugin.</p>
    #
    # @!attribute name
    #   <p>The name of the property.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of the property.</p>
    #
    #   @return [String]
    #
    AwsEcsTaskDefinitionProxyConfigurationProxyConfigurationPropertiesDetails = ::Struct.new(
      :name,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A data volume to mount from another container.</p>
    #
    # @!attribute docker_volume_configuration
    #   <p>Information about a Docker volume.</p>
    #
    #   @return [AwsEcsTaskDefinitionVolumesDockerVolumeConfigurationDetails]
    #
    # @!attribute efs_volume_configuration
    #   <p>Information about the Amazon Elastic File System file system that is used for task storage.</p>
    #
    #   @return [AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationDetails]
    #
    # @!attribute host
    #   <p>Information about a bind mount host volume.</p>
    #
    #   @return [AwsEcsTaskDefinitionVolumesHostDetails]
    #
    # @!attribute name
    #   <p>The name of the data volume.</p>
    #
    #   @return [String]
    #
    AwsEcsTaskDefinitionVolumesDetails = ::Struct.new(
      :docker_volume_configuration,
      :efs_volume_configuration,
      :host,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a Docker volume.</p>
    #
    # @!attribute autoprovision
    #   <p>Whether to create the Docker volume automatically if it does not already exist.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute driver
    #   <p>The Docker volume driver to use.</p>
    #
    #   @return [String]
    #
    # @!attribute driver_opts
    #   <p>A map of Docker driver-specific options that are passed through.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute labels
    #   <p>Custom metadata to add to the Docker volume.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute scope
    #   <p>The scope for the Docker volume that determines its lifecycle. Docker volumes that are scoped to a task are provisioned automatically when the task starts and destroyed when the task stops. Docker volumes that are shared persist after the task stops.</p>
    #
    #   @return [String]
    #
    AwsEcsTaskDefinitionVolumesDockerVolumeConfigurationDetails = ::Struct.new(
      :autoprovision,
      :driver,
      :driver_opts,
      :labels,
      :scope,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.autoprovision ||= false
      end
    end

    # <p></p>
    #
    # @!attribute access_point_id
    #   <p>The Amazon EFS access point identifier to use.</p>
    #
    #   @return [String]
    #
    # @!attribute iam
    #   <p>Whether to use the Amazon ECS task IAM role defined in a task definition when mounting the Amazon EFS file system.</p>
    #
    #   @return [String]
    #
    AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationAuthorizationConfigDetails = ::Struct.new(
      :access_point_id,
      :iam,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the Amazon Elastic File System file system that is used for task storage.</p>
    #
    # @!attribute authorization_config
    #   <p>The authorization configuration details for the Amazon EFS file system.</p>
    #
    #   @return [AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationAuthorizationConfigDetails]
    #
    # @!attribute filesystem_id
    #   <p>The Amazon EFS file system identifier to use.</p>
    #
    #   @return [String]
    #
    # @!attribute root_directory
    #   <p>The directory within the Amazon EFS file system to mount as the root directory inside the host.</p>
    #
    #   @return [String]
    #
    # @!attribute transit_encryption
    #   <p>Whether to enable encryption for Amazon EFS data in transit between the Amazon ECS host and the Amazon EFS server. </p>
    #
    #   @return [String]
    #
    # @!attribute transit_encryption_port
    #   <p>The port to use when sending encrypted data between the Amazon ECS host and the Amazon EFS server.</p>
    #
    #   @return [Integer]
    #
    AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationDetails = ::Struct.new(
      :authorization_config,
      :filesystem_id,
      :root_directory,
      :transit_encryption,
      :transit_encryption_port,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.transit_encryption_port ||= 0
      end
    end

    # <p>Information about a bind mount host volume.</p>
    #
    # @!attribute source_path
    #   <p>The path on the host container instance that is presented to the container.</p>
    #
    #   @return [String]
    #
    AwsEcsTaskDefinitionVolumesHostDetails = ::Struct.new(
      :source_path,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides details about an Amazon EKS cluster.</p>
    #
    # @!attribute arn
    #   <p>The ARN of the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute certificate_authority_data
    #   <p>The certificate authority data for the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_status
    #   <p>The status of the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint
    #   <p>The endpoint for the Amazon EKS API server.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute resources_vpc_config
    #   <p>The VPC configuration used by the cluster control plane.</p>
    #
    #   @return [AwsEksClusterResourcesVpcConfigDetails]
    #
    # @!attribute role_arn
    #   <p>The ARN of the IAM role that provides permissions for the Amazon EKS control plane to make calls to Amazon Web Services API operations on your behalf.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The Amazon EKS server version for the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute logging
    #   <p>The logging configuration for the cluster.</p>
    #
    #   @return [AwsEksClusterLoggingDetails]
    #
    AwsEksClusterDetails = ::Struct.new(
      :arn,
      :certificate_authority_data,
      :cluster_status,
      :endpoint,
      :name,
      :resources_vpc_config,
      :role_arn,
      :version,
      :logging,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details for a cluster logging configuration.</p>
    #
    # @!attribute enabled
    #   <p>Whether the logging types that are listed in <code>Types</code> are enabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute types
    #   <p>A list of logging types.</p>
    #
    #   @return [Array<String>]
    #
    AwsEksClusterLoggingClusterLoggingDetails = ::Struct.new(
      :enabled,
      :types,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.enabled ||= false
      end
    end

    # <p>The logging configuration for an Amazon EKS cluster.</p>
    #
    # @!attribute cluster_logging
    #   <p>Cluster logging configurations.</p>
    #
    #   @return [Array<AwsEksClusterLoggingClusterLoggingDetails>]
    #
    AwsEksClusterLoggingDetails = ::Struct.new(
      :cluster_logging,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the VPC configuration used by the cluster control plane.</p>
    #
    # @!attribute security_group_ids
    #   <p>The security groups that are associated with the cross-account elastic network interfaces that are used to allow communication between your nodes and the Amazon EKS control plane.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute subnet_ids
    #   <p>The subnets that are associated with the cluster.</p>
    #
    #   @return [Array<String>]
    #
    AwsEksClusterResourcesVpcConfigDetails = ::Struct.new(
      :security_group_ids,
      :subnet_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains details about an Elastic Beanstalk environment.</p>
    #
    # @!attribute application_name
    #   <p>The name of the application that is associated with the environment.</p>
    #
    #   @return [String]
    #
    # @!attribute cname
    #   <p>The URL to the CNAME for this environment.</p>
    #
    #   @return [String]
    #
    # @!attribute date_created
    #   <p>The creation date for this environment.</p>
    #
    #   @return [String]
    #
    # @!attribute date_updated
    #   <p>The date when this environment was last modified.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the environment.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_url
    #   <p>For load-balanced, autoscaling environments, the URL to the load balancer. For single-instance environments, the IP address of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute environment_arn
    #   <p>The ARN of the environment.</p>
    #
    #   @return [String]
    #
    # @!attribute environment_id
    #   <p>The identifier of the environment.</p>
    #
    #   @return [String]
    #
    # @!attribute environment_links
    #   <p>Links to other environments in the same group.</p>
    #
    #   @return [Array<AwsElasticBeanstalkEnvironmentEnvironmentLink>]
    #
    # @!attribute environment_name
    #   <p>The name of the environment.</p>
    #
    #   @return [String]
    #
    # @!attribute option_settings
    #   <p>The configuration setting for the environment.</p>
    #
    #   @return [Array<AwsElasticBeanstalkEnvironmentOptionSetting>]
    #
    # @!attribute platform_arn
    #   <p>The ARN of the platform version for the environment.</p>
    #
    #   @return [String]
    #
    # @!attribute solution_stack_name
    #   <p>The name of the solution stack that is deployed with the environment.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current operational status of the environment.</p>
    #
    #   @return [String]
    #
    # @!attribute tier
    #   <p>The tier of the environment.</p>
    #
    #   @return [AwsElasticBeanstalkEnvironmentTier]
    #
    # @!attribute version_label
    #   <p>The application version of the environment.</p>
    #
    #   @return [String]
    #
    AwsElasticBeanstalkEnvironmentDetails = ::Struct.new(
      :application_name,
      :cname,
      :date_created,
      :date_updated,
      :description,
      :endpoint_url,
      :environment_arn,
      :environment_id,
      :environment_links,
      :environment_name,
      :option_settings,
      :platform_arn,
      :solution_stack_name,
      :status,
      :tier,
      :version_label,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about a link to another environment that is in the same group.</p>
    #
    # @!attribute environment_name
    #   <p>The name of the linked environment.</p>
    #
    #   @return [String]
    #
    # @!attribute link_name
    #   <p>The name of the environment link.</p>
    #
    #   @return [String]
    #
    AwsElasticBeanstalkEnvironmentEnvironmentLink = ::Struct.new(
      :environment_name,
      :link_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A configuration option setting for the environment.</p>
    #
    # @!attribute namespace
    #   <p>The type of resource that the configuration option is associated with.</p>
    #
    #   @return [String]
    #
    # @!attribute option_name
    #   <p>The name of the option.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_name
    #   <p>The name of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of the configuration setting.</p>
    #
    #   @return [String]
    #
    AwsElasticBeanstalkEnvironmentOptionSetting = ::Struct.new(
      :namespace,
      :option_name,
      :resource_name,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about the tier of the environment.</p>
    #
    # @!attribute name
    #   <p>The name of the environment tier.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of environment tier.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version of the environment tier.</p>
    #
    #   @return [String]
    #
    AwsElasticBeanstalkEnvironmentTier = ::Struct.new(
      :name,
      :type,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about an Elasticsearch domain.</p>
    #
    # @!attribute access_policies
    #   <p>IAM policy document specifying the access policies for the new Elasticsearch domain.</p>
    #
    #   @return [String]
    #
    # @!attribute domain_endpoint_options
    #   <p>Additional options for the domain endpoint.</p>
    #
    #   @return [AwsElasticsearchDomainDomainEndpointOptions]
    #
    # @!attribute domain_id
    #   <p>Unique identifier for an Elasticsearch domain.</p>
    #
    #   @return [String]
    #
    # @!attribute domain_name
    #   <p>Name of an Elasticsearch domain.</p>
    #            <p>Domain names are unique across all domains owned by the same account within an Amazon Web Services
    #            Region.</p>
    #            <p>Domain names must start with a lowercase letter and must be between 3 and 28
    #            characters.</p>
    #            <p>Valid characters are a-z (lowercase only), 0-9, and – (hyphen). </p>
    #
    #   @return [String]
    #
    # @!attribute endpoint
    #   <p>Domain-specific endpoint used to submit index, search, and data upload requests to an
    #            Elasticsearch domain.</p>
    #            <p>The endpoint is a service URL. </p>
    #
    #   @return [String]
    #
    # @!attribute endpoints
    #   <p>The key-value pair that exists if the Elasticsearch domain uses VPC endpoints.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute elasticsearch_version
    #   <p>OpenSearch version.</p>
    #
    #   @return [String]
    #
    # @!attribute elasticsearch_cluster_config
    #   <p>Information about an OpenSearch cluster configuration.</p>
    #
    #   @return [AwsElasticsearchDomainElasticsearchClusterConfigDetails]
    #
    # @!attribute encryption_at_rest_options
    #   <p>Details about the configuration for encryption at rest.</p>
    #
    #   @return [AwsElasticsearchDomainEncryptionAtRestOptions]
    #
    # @!attribute log_publishing_options
    #   <p>Configures the CloudWatch Logs to publish for the Elasticsearch domain.</p>
    #
    #   @return [AwsElasticsearchDomainLogPublishingOptions]
    #
    # @!attribute node_to_node_encryption_options
    #   <p>Details about the configuration for node-to-node encryption.</p>
    #
    #   @return [AwsElasticsearchDomainNodeToNodeEncryptionOptions]
    #
    # @!attribute service_software_options
    #   <p>Information about the status of a domain relative to the latest service software.</p>
    #
    #   @return [AwsElasticsearchDomainServiceSoftwareOptions]
    #
    # @!attribute vpc_options
    #   <p>Information that OpenSearch derives based on <code>VPCOptions</code> for the
    #            domain.</p>
    #
    #   @return [AwsElasticsearchDomainVPCOptions]
    #
    AwsElasticsearchDomainDetails = ::Struct.new(
      :access_policies,
      :domain_endpoint_options,
      :domain_id,
      :domain_name,
      :endpoint,
      :endpoints,
      :elasticsearch_version,
      :elasticsearch_cluster_config,
      :encryption_at_rest_options,
      :log_publishing_options,
      :node_to_node_encryption_options,
      :service_software_options,
      :vpc_options,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Additional options for the domain endpoint, such as whether to require HTTPS for all
    #          traffic.</p>
    #
    # @!attribute enforce_https
    #   <p>Whether to require that all traffic to the domain arrive over HTTPS.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute tls_security_policy
    #   <p>The TLS security policy to apply to the HTTPS endpoint of the OpenSearch
    #            domain.</p>
    #            <p>Valid values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Policy-Min-TLS-1-0-2019-07</code>, which supports TLSv1.0 and higher</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Policy-Min-TLS-1-2-2019-07</code>, which only supports TLSv1.2</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    AwsElasticsearchDomainDomainEndpointOptions = ::Struct.new(
      :enforce_https,
      :tls_security_policy,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.enforce_https ||= false
      end
    end

    # <p>details about the configuration of an OpenSearch cluster.</p>
    #
    # @!attribute dedicated_master_count
    #   <p>The number of instances to use for the master node. If this attribute is specified, then <code>DedicatedMasterEnabled</code> must be <code>true</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute dedicated_master_enabled
    #   <p>Whether to use a dedicated master node for the Elasticsearch domain. A dedicated master node performs cluster management tasks, but doesn't hold data or respond to data upload requests.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute dedicated_master_type
    #   <p>The hardware configuration of the computer that hosts the dedicated master node. For example, <code>m3.medium.elasticsearch</code>. If this attribute is specified, then <code>DedicatedMasterEnabled</code> must be <code>true</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_count
    #   <p>The number of data nodes to use in the Elasticsearch domain.</p>
    #
    #   @return [Integer]
    #
    # @!attribute instance_type
    #   <p>The instance type for your data nodes. For example, <code>m3.medium.elasticsearch</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute zone_awareness_config
    #   <p>Configuration options for zone awareness. Provided if <code>ZoneAwarenessEnabled</code> is <code>true</code>.</p>
    #
    #   @return [AwsElasticsearchDomainElasticsearchClusterConfigZoneAwarenessConfigDetails]
    #
    # @!attribute zone_awareness_enabled
    #   <p>Whether to enable zone awareness for the Elasticsearch domain. When zone awareness is enabled, OpenSearch allocates the cluster's nodes and replica index shards across Availability Zones in the same Region. This prevents data loss and minimizes downtime if a node or data center fails.</p>
    #
    #   @return [Boolean]
    #
    AwsElasticsearchDomainElasticsearchClusterConfigDetails = ::Struct.new(
      :dedicated_master_count,
      :dedicated_master_enabled,
      :dedicated_master_type,
      :instance_count,
      :instance_type,
      :zone_awareness_config,
      :zone_awareness_enabled,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.dedicated_master_count ||= 0
        self.dedicated_master_enabled ||= false
        self.instance_count ||= 0
        self.zone_awareness_enabled ||= false
      end
    end

    # <p>Configuration options for zone awareness.</p>
    #
    # @!attribute availability_zone_count
    #   <p>he number of Availability Zones that the domain uses. Valid values are 2 and 3. The default is 2.</p>
    #
    #   @return [Integer]
    #
    AwsElasticsearchDomainElasticsearchClusterConfigZoneAwarenessConfigDetails = ::Struct.new(
      :availability_zone_count,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.availability_zone_count ||= 0
      end
    end

    # <p>Details about the configuration for encryption at rest.</p>
    #
    # @!attribute enabled
    #   <p>Whether encryption at rest is enabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute kms_key_id
    #   <p>The KMS key ID. Takes the form 1a2a3a4-1a2a-3a4a-5a6a-1a2a3a4a5a6a.</p>
    #
    #   @return [String]
    #
    AwsElasticsearchDomainEncryptionAtRestOptions = ::Struct.new(
      :enabled,
      :kms_key_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.enabled ||= false
      end
    end

    # <p>configures the CloudWatch Logs to publish for the
    #          Elasticsearch domain.</p>
    #
    # @!attribute index_slow_logs
    #   <p>Configures the OpenSearch index logs
    #            publishing.</p>
    #
    #   @return [AwsElasticsearchDomainLogPublishingOptionsLogConfig]
    #
    # @!attribute search_slow_logs
    #   <p>Configures the OpenSearch search slow log
    #            publishing.</p>
    #
    #   @return [AwsElasticsearchDomainLogPublishingOptionsLogConfig]
    #
    # @!attribute audit_logs
    #   <p>The log configuration.</p>
    #
    #   @return [AwsElasticsearchDomainLogPublishingOptionsLogConfig]
    #
    AwsElasticsearchDomainLogPublishingOptions = ::Struct.new(
      :index_slow_logs,
      :search_slow_logs,
      :audit_logs,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The log configuration.</p>
    #
    # @!attribute cloud_watch_logs_log_group_arn
    #   <p>The ARN of the CloudWatch Logs group to publish the logs to.</p>
    #
    #   @return [String]
    #
    # @!attribute enabled
    #   <p>Whether the log publishing is enabled.</p>
    #
    #   @return [Boolean]
    #
    AwsElasticsearchDomainLogPublishingOptionsLogConfig = ::Struct.new(
      :cloud_watch_logs_log_group_arn,
      :enabled,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.enabled ||= false
      end
    end

    # <p>Details about the configuration for node-to-node encryption.</p>
    #
    # @!attribute enabled
    #   <p>Whether node-to-node encryption is enabled.</p>
    #
    #   @return [Boolean]
    #
    AwsElasticsearchDomainNodeToNodeEncryptionOptions = ::Struct.new(
      :enabled,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.enabled ||= false
      end
    end

    # <p>Information about the state of the domain relative to the latest service software.</p>
    #
    # @!attribute automated_update_date
    #   <p>The epoch time when the deployment window closes for required updates. After this time,
    #            Amazon OpenSearch Service schedules the software upgrade automatically.</p>
    #
    #   @return [String]
    #
    # @!attribute cancellable
    #   <p>Whether a request to update the domain can be canceled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute current_version
    #   <p>The version of the service software that is currently installed on the domain.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A more detailed description of the service software status.</p>
    #
    #   @return [String]
    #
    # @!attribute new_version
    #   <p>The most recent version of the service software.</p>
    #
    #   @return [String]
    #
    # @!attribute update_available
    #   <p>Whether a service software update is available for the domain.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute update_status
    #   <p>The status of the service software update.</p>
    #
    #   @return [String]
    #
    AwsElasticsearchDomainServiceSoftwareOptions = ::Struct.new(
      :automated_update_date,
      :cancellable,
      :current_version,
      :description,
      :new_version,
      :update_available,
      :update_status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.cancellable ||= false
        self.update_available ||= false
      end
    end

    # <p>Information that OpenSearch derives based on <code>VPCOptions</code> for the
    #          domain.</p>
    #
    # @!attribute availability_zones
    #   <p>The list of Availability Zones associated with the VPC subnets.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute security_group_ids
    #   <p>The list of security group IDs associated with the VPC endpoints for the domain.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute subnet_ids
    #   <p>A list of subnet IDs associated with the VPC endpoints for the domain.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute vpc_id
    #   <p>ID for the VPC.</p>
    #
    #   @return [String]
    #
    AwsElasticsearchDomainVPCOptions = ::Struct.new(
      :availability_zones,
      :security_group_ids,
      :subnet_ids,
      :vpc_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about a stickiness policy that was created using
    #             <code>CreateAppCookieStickinessPolicy</code>.</p>
    #
    # @!attribute cookie_name
    #   <p>The name of the application cookie used for stickiness.</p>
    #
    #   @return [String]
    #
    # @!attribute policy_name
    #   <p>The mnemonic name for the policy being created. The name must be unique within the set
    #            of policies for the load balancer.</p>
    #
    #   @return [String]
    #
    AwsElbAppCookieStickinessPolicy = ::Struct.new(
      :cookie_name,
      :policy_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about a stickiness policy that was created using
    #             <code>CreateLBCookieStickinessPolicy</code>.</p>
    #
    # @!attribute cookie_expiration_period
    #   <p>The amount of time, in seconds, after which the cookie is considered stale. If an
    #            expiration period is not specified, the stickiness session lasts for the duration of the
    #            browser session.</p>
    #
    #   @return [Integer]
    #
    # @!attribute policy_name
    #   <p>The name of the policy. The name must be unique within the set of policies for the load
    #            balancer.</p>
    #
    #   @return [String]
    #
    AwsElbLbCookieStickinessPolicy = ::Struct.new(
      :cookie_expiration_period,
      :policy_name,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.cookie_expiration_period ||= 0
      end
    end

    # <p>Contains information about the access log configuration for the load balancer.</p>
    #
    # @!attribute emit_interval
    #   <p>The interval in minutes for publishing the access logs.</p>
    #            <p>You can publish access logs either every 5 minutes or every 60 minutes.</p>
    #
    #   @return [Integer]
    #
    # @!attribute enabled
    #   <p>Indicates whether access logs are enabled for the load balancer.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute s3_bucket_name
    #   <p>The name of the S3 bucket where the access logs are stored.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_bucket_prefix
    #   <p>The logical hierarchy that was created for the S3 bucket.</p>
    #            <p>If a prefix is not provided, the log is placed at the root level of the bucket.</p>
    #
    #   @return [String]
    #
    AwsElbLoadBalancerAccessLog = ::Struct.new(
      :emit_interval,
      :enabled,
      :s3_bucket_name,
      :s3_bucket_prefix,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.emit_interval ||= 0
        self.enabled ||= false
      end
    end

    # <p>Provides information about additional attributes for the load balancer.</p>
    #
    # @!attribute key
    #   <p>The name of the attribute.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of the attribute.</p>
    #
    #   @return [String]
    #
    AwsElbLoadBalancerAdditionalAttribute = ::Struct.new(
      :key,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains attributes for the load balancer.</p>
    #
    # @!attribute access_log
    #   <p>Information about the access log configuration for the load balancer.</p>
    #            <p>If the access log is enabled, the load balancer captures detailed information about all
    #            requests. It delivers the information to a specified S3 bucket.</p>
    #
    #   @return [AwsElbLoadBalancerAccessLog]
    #
    # @!attribute connection_draining
    #   <p>Information about the connection draining configuration for the load balancer.</p>
    #            <p>If connection draining is enabled, the load balancer allows existing requests to
    #            complete before it shifts traffic away from a deregistered or unhealthy instance.</p>
    #
    #   @return [AwsElbLoadBalancerConnectionDraining]
    #
    # @!attribute connection_settings
    #   <p>Connection settings for the load balancer.</p>
    #            <p>If an idle timeout is configured, the load balancer allows connections to remain idle
    #            for the specified duration. When a connection is idle, no data is sent over the
    #            connection.</p>
    #
    #   @return [AwsElbLoadBalancerConnectionSettings]
    #
    # @!attribute cross_zone_load_balancing
    #   <p>Cross-zone load balancing settings for the load balancer.</p>
    #            <p>If cross-zone load balancing is enabled, the load balancer routes the request traffic
    #            evenly across all instances regardless of the Availability Zones.</p>
    #
    #   @return [AwsElbLoadBalancerCrossZoneLoadBalancing]
    #
    # @!attribute additional_attributes
    #   <p>Any additional attributes for a load balancer.</p>
    #
    #   @return [Array<AwsElbLoadBalancerAdditionalAttribute>]
    #
    AwsElbLoadBalancerAttributes = ::Struct.new(
      :access_log,
      :connection_draining,
      :connection_settings,
      :cross_zone_load_balancing,
      :additional_attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about the configuration of an EC2 instance for the load
    #          balancer.</p>
    #
    # @!attribute instance_port
    #   <p>The port on which the EC2 instance is listening.</p>
    #
    #   @return [Integer]
    #
    # @!attribute policy_names
    #   <p>The names of the policies that are enabled for the EC2 instance.</p>
    #
    #   @return [Array<String>]
    #
    AwsElbLoadBalancerBackendServerDescription = ::Struct.new(
      :instance_port,
      :policy_names,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.instance_port ||= 0
      end
    end

    # <p>Contains information about the connection draining configuration for the load
    #          balancer.</p>
    #
    # @!attribute enabled
    #   <p>Indicates whether connection draining is enabled for the load balancer.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute timeout
    #   <p>The maximum time, in seconds, to keep the existing connections open before deregistering
    #            the instances.</p>
    #
    #   @return [Integer]
    #
    AwsElbLoadBalancerConnectionDraining = ::Struct.new(
      :enabled,
      :timeout,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.enabled ||= false
        self.timeout ||= 0
      end
    end

    # <p>Contains connection settings for the load balancer.</p>
    #
    # @!attribute idle_timeout
    #   <p>The time, in seconds, that the connection can be idle (no data is sent over the
    #            connection) before it is closed by the load balancer.</p>
    #
    #   @return [Integer]
    #
    AwsElbLoadBalancerConnectionSettings = ::Struct.new(
      :idle_timeout,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.idle_timeout ||= 0
      end
    end

    # <p>Contains cross-zone load balancing settings for the load balancer.</p>
    #
    # @!attribute enabled
    #   <p>Indicates whether cross-zone load balancing is enabled for the load balancer.</p>
    #
    #   @return [Boolean]
    #
    AwsElbLoadBalancerCrossZoneLoadBalancing = ::Struct.new(
      :enabled,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.enabled ||= false
      end
    end

    # <p>Contains details about a Classic Load Balancer.</p>
    #
    # @!attribute availability_zones
    #   <p>The list of Availability Zones for the load balancer.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute backend_server_descriptions
    #   <p>Information about the configuration of the EC2 instances.</p>
    #
    #   @return [Array<AwsElbLoadBalancerBackendServerDescription>]
    #
    # @!attribute canonical_hosted_zone_name
    #   <p>The name of the Amazon Route 53 hosted zone for the load balancer.</p>
    #
    #   @return [String]
    #
    # @!attribute canonical_hosted_zone_name_id
    #   <p>The ID of the Amazon Route 53 hosted zone for the load balancer.</p>
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>Indicates when the load balancer was created.</p>
    #            <p>Uses the <code>date-time</code> format specified in <a href="https://tools.ietf.org/html/rfc3339 section-5.6">RFC 3339 section 5.6, Internet
    #               Date/Time Format</a>. The value cannot contain spaces. For example,
    #               <code>2020-03-22T13:22:13.933Z</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute dns_name
    #   <p>The DNS name of the load balancer.</p>
    #
    #   @return [String]
    #
    # @!attribute health_check
    #   <p>Information about the health checks that are conducted on the load balancer.</p>
    #
    #   @return [AwsElbLoadBalancerHealthCheck]
    #
    # @!attribute instances
    #   <p>List of EC2 instances for the load balancer.</p>
    #
    #   @return [Array<AwsElbLoadBalancerInstance>]
    #
    # @!attribute listener_descriptions
    #   <p>The policies that are enabled for the load balancer listeners.</p>
    #
    #   @return [Array<AwsElbLoadBalancerListenerDescription>]
    #
    # @!attribute load_balancer_attributes
    #   <p>The attributes for a load balancer.</p>
    #
    #   @return [AwsElbLoadBalancerAttributes]
    #
    # @!attribute load_balancer_name
    #   <p>The name of the load balancer.</p>
    #
    #   @return [String]
    #
    # @!attribute policies
    #   <p>The policies for a load balancer.</p>
    #
    #   @return [AwsElbLoadBalancerPolicies]
    #
    # @!attribute scheme
    #   <p>The type of load balancer. Only provided if the load balancer is in a VPC.</p>
    #            <p>If <code>Scheme</code> is <code>internet-facing</code>, the load balancer has a public
    #            DNS name that resolves to a public IP address.</p>
    #            <p>If <code>Scheme</code> is <code>internal</code>, the load balancer has a public DNS name
    #            that resolves to a private IP address.</p>
    #
    #   @return [String]
    #
    # @!attribute security_groups
    #   <p>The security groups for the load balancer. Only provided if the load balancer is in a
    #            VPC.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute source_security_group
    #   <p>Information about the security group for the load balancer. This is the security group
    #            that is used for inbound rules.</p>
    #
    #   @return [AwsElbLoadBalancerSourceSecurityGroup]
    #
    # @!attribute subnets
    #   <p>The list of subnet identifiers for the load balancer.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute vpc_id
    #   <p>The identifier of the VPC for the load balancer.</p>
    #
    #   @return [String]
    #
    AwsElbLoadBalancerDetails = ::Struct.new(
      :availability_zones,
      :backend_server_descriptions,
      :canonical_hosted_zone_name,
      :canonical_hosted_zone_name_id,
      :created_time,
      :dns_name,
      :health_check,
      :instances,
      :listener_descriptions,
      :load_balancer_attributes,
      :load_balancer_name,
      :policies,
      :scheme,
      :security_groups,
      :source_security_group,
      :subnets,
      :vpc_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about the health checks that are conducted on the load
    #          balancer.</p>
    #
    # @!attribute healthy_threshold
    #   <p>The number of consecutive health check successes required before the instance is moved
    #            to the Healthy state.</p>
    #
    #   @return [Integer]
    #
    # @!attribute interval
    #   <p>The approximate interval, in seconds, between health checks of an individual
    #            instance.</p>
    #
    #   @return [Integer]
    #
    # @!attribute target
    #   <p>The instance that is being checked. The target specifies the protocol and port. The
    #            available protocols are TCP, SSL, HTTP, and HTTPS. The range of valid ports is 1 through
    #            65535.</p>
    #            <p>For the HTTP and HTTPS protocols, the target also specifies the ping path.</p>
    #            <p>For the TCP protocol, the target is specified as <code>TCP:
    #                  <i><port></i>
    #               </code>.</p>
    #            <p>For the SSL protocol, the target is specified as
    #                  <code>SSL.<i><port></i>
    #               </code>.</p>
    #            <p>For the HTTP and HTTPS protocols, the target is specified as
    #                  <code>
    #                  <i><protocol></i>:<i><port></i>/<i><path
    #                  to ping></i>
    #               </code>.</p>
    #
    #   @return [String]
    #
    # @!attribute timeout
    #   <p>The amount of time, in seconds, during which no response means a failed health
    #            check.</p>
    #
    #   @return [Integer]
    #
    # @!attribute unhealthy_threshold
    #   <p>The number of consecutive health check failures that must occur before the instance is
    #            moved to the Unhealthy state.</p>
    #
    #   @return [Integer]
    #
    AwsElbLoadBalancerHealthCheck = ::Struct.new(
      :healthy_threshold,
      :interval,
      :target,
      :timeout,
      :unhealthy_threshold,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.healthy_threshold ||= 0
        self.interval ||= 0
        self.timeout ||= 0
        self.unhealthy_threshold ||= 0
      end
    end

    # <p>Provides information about an EC2 instance for a load balancer.</p>
    #
    # @!attribute instance_id
    #   <p>The instance identifier.</p>
    #
    #   @return [String]
    #
    AwsElbLoadBalancerInstance = ::Struct.new(
      :instance_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a load balancer listener.</p>
    #
    # @!attribute instance_port
    #   <p>The port on which the instance is listening.</p>
    #
    #   @return [Integer]
    #
    # @!attribute instance_protocol
    #   <p>The protocol to use to route traffic to instances.</p>
    #            <p>Valid values: <code>HTTP</code> | <code>HTTPS</code> | <code>TCP</code> |
    #               <code>SSL</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute load_balancer_port
    #   <p>The port on which the load balancer is listening.</p>
    #            <p>On EC2-VPC, you can specify any port from the range 1-65535.</p>
    #            <p>On EC2-Classic, you can specify any port from the following list: 25, 80, 443, 465, 587,
    #            1024-65535.</p>
    #
    #   @return [Integer]
    #
    # @!attribute protocol
    #   <p>The load balancer transport protocol to use for routing.</p>
    #            <p>Valid values: <code>HTTP</code> | <code>HTTPS</code> | <code>TCP</code> |
    #               <code>SSL</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute ssl_certificate_id
    #   <p>The ARN of the server certificate.</p>
    #
    #   @return [String]
    #
    AwsElbLoadBalancerListener = ::Struct.new(
      :instance_port,
      :instance_protocol,
      :load_balancer_port,
      :protocol,
      :ssl_certificate_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.instance_port ||= 0
        self.load_balancer_port ||= 0
      end
    end

    # <p>Lists the policies that are enabled for a load balancer listener.</p>
    #
    # @!attribute listener
    #   <p>Information about the listener.</p>
    #
    #   @return [AwsElbLoadBalancerListener]
    #
    # @!attribute policy_names
    #   <p>The policies enabled for the listener.</p>
    #
    #   @return [Array<String>]
    #
    AwsElbLoadBalancerListenerDescription = ::Struct.new(
      :listener,
      :policy_names,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about the policies for a load balancer.</p>
    #
    # @!attribute app_cookie_stickiness_policies
    #   <p>The stickiness policies that are created using
    #               <code>CreateAppCookieStickinessPolicy</code>.</p>
    #
    #   @return [Array<AwsElbAppCookieStickinessPolicy>]
    #
    # @!attribute lb_cookie_stickiness_policies
    #   <p>The stickiness policies that are created using
    #               <code>CreateLBCookieStickinessPolicy</code>.</p>
    #
    #   @return [Array<AwsElbLbCookieStickinessPolicy>]
    #
    # @!attribute other_policies
    #   <p>The policies other than the stickiness policies.</p>
    #
    #   @return [Array<String>]
    #
    AwsElbLoadBalancerPolicies = ::Struct.new(
      :app_cookie_stickiness_policies,
      :lb_cookie_stickiness_policies,
      :other_policies,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about the security group for the load balancer.</p>
    #
    # @!attribute group_name
    #   <p>The name of the security group.</p>
    #
    #   @return [String]
    #
    # @!attribute owner_alias
    #   <p>The owner of the security group.</p>
    #
    #   @return [String]
    #
    AwsElbLoadBalancerSourceSecurityGroup = ::Struct.new(
      :group_name,
      :owner_alias,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A load balancer attribute.</p>
    #
    # @!attribute key
    #   <p>The name of the load balancer attribute.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of the load balancer attribute.</p>
    #
    #   @return [String]
    #
    AwsElbv2LoadBalancerAttribute = ::Struct.new(
      :key,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a load balancer.</p>
    #
    # @!attribute availability_zones
    #   <p>The Availability Zones for the load balancer.</p>
    #
    #   @return [Array<AvailabilityZone>]
    #
    # @!attribute canonical_hosted_zone_id
    #   <p>The ID of the Amazon Route 53 hosted zone associated with the load balancer.</p>
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>Indicates when the load balancer was created.</p>
    #            <p>Uses the <code>date-time</code> format specified in <a href="https://tools.ietf.org/html/rfc3339 section-5.6">RFC 3339 section 5.6, Internet
    #               Date/Time Format</a>. The value cannot contain spaces. For example,
    #               <code>2020-03-22T13:22:13.933Z</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute dns_name
    #   <p>The public DNS name of the load balancer.</p>
    #
    #   @return [String]
    #
    # @!attribute ip_address_type
    #   <p>The type of IP addresses used by the subnets for your load balancer. The possible values
    #            are <code>ipv4</code> (for IPv4 addresses) and <code>dualstack</code> (for IPv4 and IPv6
    #            addresses).</p>
    #
    #   @return [String]
    #
    # @!attribute scheme
    #   <p>The nodes of an Internet-facing load balancer have public IP addresses.</p>
    #
    #   @return [String]
    #
    # @!attribute security_groups
    #   <p>The IDs of the security groups for the load balancer.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute state
    #   <p>The state of the load balancer.</p>
    #
    #   @return [LoadBalancerState]
    #
    # @!attribute type
    #   <p>The type of load balancer.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_id
    #   <p>The ID of the VPC for the load balancer.</p>
    #
    #   @return [String]
    #
    # @!attribute load_balancer_attributes
    #   <p>Attributes of the load balancer.</p>
    #
    #   @return [Array<AwsElbv2LoadBalancerAttribute>]
    #
    AwsElbv2LoadBalancerDetails = ::Struct.new(
      :availability_zones,
      :canonical_hosted_zone_id,
      :created_time,
      :dns_name,
      :ip_address_type,
      :scheme,
      :security_groups,
      :state,
      :type,
      :vpc_id,
      :load_balancer_attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>IAM access key details related to a finding.</p>
    #
    # @!attribute user_name
    #   <p>The user associated with the IAM access key related to a finding.</p>
    #            <p>The <code>UserName</code> parameter has been replaced with the
    #               <code>PrincipalName</code> parameter because access keys can also be assigned to
    #            principals that are not IAM users.</p>
    #
    #   @deprecated
    #     This filter is deprecated. Instead, use PrincipalName.
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the IAM access key related to a finding.</p>
    #
    #   Enum, one of: ["Active", "Inactive"]
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>Indicates when the IAM access key was created.</p>
    #            <p>Uses the <code>date-time</code> format specified in <a href="https://tools.ietf.org/html/rfc3339 section-5.6">RFC 3339 section 5.6, Internet
    #               Date/Time Format</a>. The value cannot contain spaces. For example,
    #               <code>2020-03-22T13:22:13.933Z</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute principal_id
    #   <p>The ID of the principal associated with an access key.</p>
    #
    #   @return [String]
    #
    # @!attribute principal_type
    #   <p>The type of principal associated with an access key.</p>
    #
    #   @return [String]
    #
    # @!attribute principal_name
    #   <p>The name of the principal.</p>
    #
    #   @return [String]
    #
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the account for the key.</p>
    #
    #   @return [String]
    #
    # @!attribute access_key_id
    #   <p>The identifier of the access key.</p>
    #
    #   @return [String]
    #
    # @!attribute session_context
    #   <p>Information about the session that the key was used for.</p>
    #
    #   @return [AwsIamAccessKeySessionContext]
    #
    AwsIamAccessKeyDetails = ::Struct.new(
      :user_name,
      :status,
      :created_at,
      :principal_id,
      :principal_type,
      :principal_name,
      :account_id,
      :access_key_id,
      :session_context,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about the session that the key was used for.</p>
    #
    # @!attribute attributes
    #   <p>Attributes of the session that the key was used for.</p>
    #
    #   @return [AwsIamAccessKeySessionContextAttributes]
    #
    # @!attribute session_issuer
    #   <p>Information about the entity that created the session.</p>
    #
    #   @return [AwsIamAccessKeySessionContextSessionIssuer]
    #
    AwsIamAccessKeySessionContext = ::Struct.new(
      :attributes,
      :session_issuer,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Attributes of the session that the key was used for.</p>
    #
    # @!attribute mfa_authenticated
    #   <p>Indicates whether the session used multi-factor authentication (MFA).</p>
    #
    #   @return [Boolean]
    #
    # @!attribute creation_date
    #   <p>Indicates when the session was created.</p>
    #            <p>Uses the <code>date-time</code> format specified in <a href="https://tools.ietf.org/html/rfc3339 section-5.6">RFC 3339 section 5.6, Internet
    #               Date/Time Format</a>. The value cannot contain spaces. For example,
    #               <code>2020-03-22T13:22:13.933Z</code>.</p>
    #
    #   @return [String]
    #
    AwsIamAccessKeySessionContextAttributes = ::Struct.new(
      :mfa_authenticated,
      :creation_date,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.mfa_authenticated ||= false
      end
    end

    # <p>Information about the entity that created the session.</p>
    #
    # @!attribute type
    #   <p>The type of principal (user, role, or group) that created the session.</p>
    #
    #   @return [String]
    #
    # @!attribute principal_id
    #   <p>The principal ID of the principal (user, role, or group) that created the
    #            session.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The ARN of the session.</p>
    #
    #   @return [String]
    #
    # @!attribute account_id
    #   <p>The identifier of the Amazon Web Services account that created the session.</p>
    #
    #   @return [String]
    #
    # @!attribute user_name
    #   <p>The name of the principal that created the session.</p>
    #
    #   @return [String]
    #
    AwsIamAccessKeySessionContextSessionIssuer = ::Struct.new(
      :type,
      :principal_id,
      :arn,
      :account_id,
      :user_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AwsIamAccessKeyStatus
    #
    module AwsIamAccessKeyStatus
      # No documentation available.
      #
      ACTIVE = "Active"

      # No documentation available.
      #
      INACTIVE = "Inactive"
    end

    # <p>A managed policy that is attached to an IAM principal.</p>
    #
    # @!attribute policy_name
    #   <p>The name of the policy.</p>
    #
    #   @return [String]
    #
    # @!attribute policy_arn
    #   <p>The ARN of the policy.</p>
    #
    #   @return [String]
    #
    AwsIamAttachedManagedPolicy = ::Struct.new(
      :policy_name,
      :policy_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains details about an IAM group.</p>
    #
    # @!attribute attached_managed_policies
    #   <p>A list of the managed policies that are attached to the IAM group.</p>
    #
    #   @return [Array<AwsIamAttachedManagedPolicy>]
    #
    # @!attribute create_date
    #   <p>Indicates when the IAM group was created.</p>
    #            <p>Uses the <code>date-time</code> format specified in <a href="https://tools.ietf.org/html/rfc3339 section-5.6">RFC 3339 section 5.6, Internet
    #               Date/Time Format</a>. The value cannot contain spaces. For example,
    #               <code>2020-03-22T13:22:13.933Z</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute group_id
    #   <p>The identifier of the IAM group.</p>
    #
    #   @return [String]
    #
    # @!attribute group_name
    #   <p>The name of the IAM group.</p>
    #
    #   @return [String]
    #
    # @!attribute group_policy_list
    #   <p>The list of inline policies that are embedded in the group.</p>
    #
    #   @return [Array<AwsIamGroupPolicy>]
    #
    # @!attribute path
    #   <p>The path to the group.</p>
    #
    #   @return [String]
    #
    AwsIamGroupDetails = ::Struct.new(
      :attached_managed_policies,
      :create_date,
      :group_id,
      :group_name,
      :group_policy_list,
      :path,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A managed policy that is attached to the IAM group.</p>
    #
    # @!attribute policy_name
    #   <p>The name of the policy.</p>
    #
    #   @return [String]
    #
    AwsIamGroupPolicy = ::Struct.new(
      :policy_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about an instance profile.</p>
    #
    # @!attribute arn
    #   <p>The ARN of the instance profile.</p>
    #
    #   @return [String]
    #
    # @!attribute create_date
    #   <p>Indicates when the instance profile was created.</p>
    #            <p>Uses the <code>date-time</code> format specified in <a href="https://tools.ietf.org/html/rfc3339 section-5.6">RFC 3339 section 5.6, Internet
    #               Date/Time Format</a>. The value cannot contain spaces. For example,
    #               <code>2020-03-22T13:22:13.933Z</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_profile_id
    #   <p>The identifier of the instance profile.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_profile_name
    #   <p>The name of the instance profile.</p>
    #
    #   @return [String]
    #
    # @!attribute path
    #   <p>The path to the instance profile.</p>
    #
    #   @return [String]
    #
    # @!attribute roles
    #   <p>The roles associated with the instance profile.</p>
    #
    #   @return [Array<AwsIamInstanceProfileRole>]
    #
    AwsIamInstanceProfile = ::Struct.new(
      :arn,
      :create_date,
      :instance_profile_id,
      :instance_profile_name,
      :path,
      :roles,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a role associated with an instance profile.</p>
    #
    # @!attribute arn
    #   <p>The ARN of the role.</p>
    #
    #   @return [String]
    #
    # @!attribute assume_role_policy_document
    #   <p>The policy that grants an entity permission to assume the role.</p>
    #
    #   @return [String]
    #
    # @!attribute create_date
    #   <p>Indicates when the role was created.</p>
    #            <p>Uses the <code>date-time</code> format specified in <a href="https://tools.ietf.org/html/rfc3339 section-5.6">RFC 3339 section 5.6, Internet
    #               Date/Time Format</a>. The value cannot contain spaces. For example,
    #               <code>2020-03-22T13:22:13.933Z</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute path
    #   <p>The path to the role.</p>
    #
    #   @return [String]
    #
    # @!attribute role_id
    #   <p>The identifier of the role.</p>
    #
    #   @return [String]
    #
    # @!attribute role_name
    #   <p>The name of the role.</p>
    #
    #   @return [String]
    #
    AwsIamInstanceProfileRole = ::Struct.new(
      :arn,
      :assume_role_policy_document,
      :create_date,
      :path,
      :role_id,
      :role_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the policy used to set the permissions boundary for an IAM
    #          principal.</p>
    #
    # @!attribute permissions_boundary_arn
    #   <p>The ARN of the policy used to set the permissions boundary.</p>
    #
    #   @return [String]
    #
    # @!attribute permissions_boundary_type
    #   <p>The usage type for the permissions boundary.</p>
    #
    #   @return [String]
    #
    AwsIamPermissionsBoundary = ::Struct.new(
      :permissions_boundary_arn,
      :permissions_boundary_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents an IAM permissions policy.</p>
    #
    # @!attribute attachment_count
    #   <p>The number of users, groups, and roles that the policy is attached to.</p>
    #
    #   @return [Integer]
    #
    # @!attribute create_date
    #   <p>When the policy was created.</p>
    #            <p>Uses the <code>date-time</code> format specified in <a href="https://tools.ietf.org/html/rfc3339 section-5.6">RFC 3339 section 5.6, Internet
    #               Date/Time Format</a>. The value cannot contain spaces. For example,
    #               <code>2020-03-22T13:22:13.933Z</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute default_version_id
    #   <p>The identifier of the default version of the policy.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the policy.</p>
    #
    #   @return [String]
    #
    # @!attribute is_attachable
    #   <p>Whether the policy can be attached to a user, group, or role.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute path
    #   <p>The path to the policy.</p>
    #
    #   @return [String]
    #
    # @!attribute permissions_boundary_usage_count
    #   <p>The number of users and roles that use the policy to set the permissions
    #            boundary.</p>
    #
    #   @return [Integer]
    #
    # @!attribute policy_id
    #   <p>The unique identifier of the policy.</p>
    #
    #   @return [String]
    #
    # @!attribute policy_name
    #   <p>The name of the policy.</p>
    #
    #   @return [String]
    #
    # @!attribute policy_version_list
    #   <p>List of versions of the policy.</p>
    #
    #   @return [Array<AwsIamPolicyVersion>]
    #
    # @!attribute update_date
    #   <p>When the policy was most recently updated.</p>
    #            <p>Uses the <code>date-time</code> format specified in <a href="https://tools.ietf.org/html/rfc3339 section-5.6">RFC 3339 section 5.6, Internet
    #               Date/Time Format</a>. The value cannot contain spaces. For example,
    #               <code>2020-03-22T13:22:13.933Z</code>.</p>
    #
    #   @return [String]
    #
    AwsIamPolicyDetails = ::Struct.new(
      :attachment_count,
      :create_date,
      :default_version_id,
      :description,
      :is_attachable,
      :path,
      :permissions_boundary_usage_count,
      :policy_id,
      :policy_name,
      :policy_version_list,
      :update_date,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.attachment_count ||= 0
        self.is_attachable ||= false
        self.permissions_boundary_usage_count ||= 0
      end
    end

    # <p>A version of an IAM policy.</p>
    #
    # @!attribute version_id
    #   <p>The identifier of the policy version.</p>
    #
    #   @return [String]
    #
    # @!attribute is_default_version
    #   <p>Whether the version is the default version.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute create_date
    #   <p>Indicates when the version was created.</p>
    #            <p>Uses the <code>date-time</code> format specified in <a href="https://tools.ietf.org/html/rfc3339 section-5.6">RFC 3339 section 5.6, Internet
    #               Date/Time Format</a>. The value cannot contain spaces. For example,
    #               <code>2020-03-22T13:22:13.933Z</code>.</p>
    #
    #   @return [String]
    #
    AwsIamPolicyVersion = ::Struct.new(
      :version_id,
      :is_default_version,
      :create_date,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.is_default_version ||= false
      end
    end

    # <p>Contains information about an IAM role, including all of the role's policies.</p>
    #
    # @!attribute assume_role_policy_document
    #   <p>The trust policy that grants permission to assume the role.</p>
    #
    #   @return [String]
    #
    # @!attribute attached_managed_policies
    #   <p>The list of the managed policies that are attached to the role.</p>
    #
    #   @return [Array<AwsIamAttachedManagedPolicy>]
    #
    # @!attribute create_date
    #   <p>Indicates when the role was created.</p>
    #            <p>Uses the <code>date-time</code> format specified in <a href="https://tools.ietf.org/html/rfc3339 section-5.6">RFC 3339 section 5.6, Internet
    #               Date/Time Format</a>. The value cannot contain spaces. For example,
    #               <code>2020-03-22T13:22:13.933Z</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_profile_list
    #   <p>The list of instance profiles that contain this role.</p>
    #
    #   @return [Array<AwsIamInstanceProfile>]
    #
    # @!attribute permissions_boundary
    #   <p>Information about the policy used to set the permissions boundary for an IAM
    #            principal.</p>
    #
    #   @return [AwsIamPermissionsBoundary]
    #
    # @!attribute role_id
    #   <p>The stable and unique string identifying the role.</p>
    #
    #   @return [String]
    #
    # @!attribute role_name
    #   <p>The friendly name that identifies the role.</p>
    #
    #   @return [String]
    #
    # @!attribute role_policy_list
    #   <p>The list of inline policies that are embedded in the role.</p>
    #
    #   @return [Array<AwsIamRolePolicy>]
    #
    # @!attribute max_session_duration
    #   <p>The maximum session duration (in seconds) that you want to set for the specified role.</p>
    #
    #   @return [Integer]
    #
    # @!attribute path
    #   <p>The path to the role.</p>
    #
    #   @return [String]
    #
    AwsIamRoleDetails = ::Struct.new(
      :assume_role_policy_document,
      :attached_managed_policies,
      :create_date,
      :instance_profile_list,
      :permissions_boundary,
      :role_id,
      :role_name,
      :role_policy_list,
      :max_session_duration,
      :path,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_session_duration ||= 0
      end
    end

    # <p>An inline policy that is embedded in the role.</p>
    #
    # @!attribute policy_name
    #   <p>The name of the policy.</p>
    #
    #   @return [String]
    #
    AwsIamRolePolicy = ::Struct.new(
      :policy_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about an IAM user.</p>
    #
    # @!attribute attached_managed_policies
    #   <p>A list of the managed policies that are attached to the user.</p>
    #
    #   @return [Array<AwsIamAttachedManagedPolicy>]
    #
    # @!attribute create_date
    #   <p>Indicates when the user was created.</p>
    #            <p>Uses the <code>date-time</code> format specified in <a href="https://tools.ietf.org/html/rfc3339 section-5.6">RFC 3339 section 5.6, Internet
    #               Date/Time Format</a>. The value cannot contain spaces. For example,
    #               <code>2020-03-22T13:22:13.933Z</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute group_list
    #   <p>A list of IAM groups that the user belongs to.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute path
    #   <p>The path to the user.</p>
    #
    #   @return [String]
    #
    # @!attribute permissions_boundary
    #   <p>The permissions boundary for the user.</p>
    #
    #   @return [AwsIamPermissionsBoundary]
    #
    # @!attribute user_id
    #   <p>The unique identifier for the user.</p>
    #
    #   @return [String]
    #
    # @!attribute user_name
    #   <p>The name of the user.</p>
    #
    #   @return [String]
    #
    # @!attribute user_policy_list
    #   <p>The list of inline policies that are embedded in the user.</p>
    #
    #   @return [Array<AwsIamUserPolicy>]
    #
    AwsIamUserDetails = ::Struct.new(
      :attached_managed_policies,
      :create_date,
      :group_list,
      :path,
      :permissions_boundary,
      :user_id,
      :user_name,
      :user_policy_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about an inline policy that is embedded in the user.</p>
    #
    # @!attribute policy_name
    #   <p>The name of the policy.</p>
    #
    #   @return [String]
    #
    AwsIamUserPolicy = ::Struct.new(
      :policy_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains metadata about an KMS key.</p>
    #
    # @!attribute aws_account_id
    #   <p>The twelve-digit account ID of the Amazon Web Services account that owns the KMS key.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date
    #   <p>Indicates when the KMS key was created.</p>
    #            <p>Uses the <code>date-time</code> format specified in <a href="https://tools.ietf.org/html/rfc3339 section-5.6">RFC 3339 section 5.6, Internet
    #               Date/Time Format</a>. The value cannot contain spaces. For example,
    #               <code>2020-03-22T13:22:13.933Z</code>.</p>
    #
    #   @return [Float]
    #
    # @!attribute key_id
    #   <p>The globally unique identifier for the KMS key.</p>
    #
    #   @return [String]
    #
    # @!attribute key_manager
    #   <p>The manager of the KMS key. KMS keys in your Amazon Web Services account are either customer managed or Amazon Web Services managed.</p>
    #
    #   @return [String]
    #
    # @!attribute key_state
    #   <p>The state of the KMS key.</p>
    #
    #   @return [String]
    #
    # @!attribute origin
    #   <p>The source of the KMS key material.</p>
    #            <p>When this value is <code>AWS_KMS</code>, KMS created the key material.</p>
    #            <p>When this value is <code>EXTERNAL</code>, the key material was imported from your
    #            existing key management infrastructure or the KMS key lacks key material.</p>
    #            <p>When this value is <code>AWS_CLOUDHSM</code>, the key material was created in the CloudHSM cluster associated with a custom key store.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the key.</p>
    #
    #   @return [String]
    #
    # @!attribute key_rotation_status
    #   <p>Whether the key has key rotation enabled.</p>
    #
    #   @return [Boolean]
    #
    AwsKmsKeyDetails = ::Struct.new(
      :aws_account_id,
      :creation_date,
      :key_id,
      :key_manager,
      :key_state,
      :origin,
      :description,
      :key_rotation_status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.creation_date ||= 0
        self.key_rotation_status ||= false
      end
    end

    # <p>The code for the Lambda function. You can specify either an object in Amazon S3, or upload a deployment package directly.</p>
    #
    # @!attribute s3_bucket
    #   <p>An Amazon S3 bucket in the same Amazon Web Services Region as your function. The bucket can be in a different Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_key
    #   <p>The Amazon S3 key of the deployment package.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_object_version
    #   <p>For versioned objects, the version of the deployment package object to use.</p>
    #
    #   @return [String]
    #
    # @!attribute zip_file
    #   <p>The base64-encoded contents of the deployment package. Amazon Web Services SDK and Amazon Web Services CLI clients handle the encoding for you.</p>
    #
    #   @return [String]
    #
    AwsLambdaFunctionCode = ::Struct.new(
      :s3_bucket,
      :s3_key,
      :s3_object_version,
      :zip_file,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The dead-letter queue for failed asynchronous invocations.</p>
    #
    # @!attribute target_arn
    #   <p>The ARN of an SQS queue or SNS topic.</p>
    #
    #   @return [String]
    #
    AwsLambdaFunctionDeadLetterConfig = ::Struct.new(
      :target_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about a function's configuration.</p>
    #
    # @!attribute code
    #   <p>An <code>AwsLambdaFunctionCode</code> object.</p>
    #
    #   @return [AwsLambdaFunctionCode]
    #
    # @!attribute code_sha256
    #   <p>The SHA256 hash of the function's deployment package.</p>
    #
    #   @return [String]
    #
    # @!attribute dead_letter_config
    #   <p>The function's dead letter queue.</p>
    #
    #   @return [AwsLambdaFunctionDeadLetterConfig]
    #
    # @!attribute environment
    #   <p>The function's environment variables.</p>
    #
    #   @return [AwsLambdaFunctionEnvironment]
    #
    # @!attribute function_name
    #   <p>The name of the function.</p>
    #
    #   @return [String]
    #
    # @!attribute handler
    #   <p>The function that Lambda calls to begin executing your function.</p>
    #
    #   @return [String]
    #
    # @!attribute kms_key_arn
    #   <p>The KMS key that is used to encrypt the function's environment variables. This key is only returned if you've configured a customer managed customer managed key.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified
    #   <p>Indicates when the function was last updated.</p>
    #            <p>Uses the <code>date-time</code> format specified in <a href="https://tools.ietf.org/html/rfc3339 section-5.6">RFC 3339 section 5.6, Internet
    #               Date/Time Format</a>. The value cannot contain spaces. For example,
    #               <code>2020-03-22T13:22:13.933Z</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute layers
    #   <p>The function's layers.</p>
    #
    #   @return [Array<AwsLambdaFunctionLayer>]
    #
    # @!attribute master_arn
    #   <p>For Lambda@Edge functions, the ARN of the master function.</p>
    #
    #   @return [String]
    #
    # @!attribute memory_size
    #   <p>The memory that is allocated to the function.</p>
    #
    #   @return [Integer]
    #
    # @!attribute revision_id
    #   <p>The latest updated revision of the function or alias.</p>
    #
    #   @return [String]
    #
    # @!attribute role
    #   <p>The function's execution role.</p>
    #
    #   @return [String]
    #
    # @!attribute runtime
    #   <p>The runtime environment for the Lambda function.</p>
    #
    #   @return [String]
    #
    # @!attribute timeout
    #   <p>The amount of time that Lambda allows a function to run before stopping it.</p>
    #
    #   @return [Integer]
    #
    # @!attribute tracing_config
    #   <p>The function's X-Ray tracing configuration.</p>
    #
    #   @return [AwsLambdaFunctionTracingConfig]
    #
    # @!attribute vpc_config
    #   <p>The function's networking configuration.</p>
    #
    #   @return [AwsLambdaFunctionVpcConfig]
    #
    # @!attribute version
    #   <p>The version of the Lambda function.</p>
    #
    #   @return [String]
    #
    AwsLambdaFunctionDetails = ::Struct.new(
      :code,
      :code_sha256,
      :dead_letter_config,
      :environment,
      :function_name,
      :handler,
      :kms_key_arn,
      :last_modified,
      :layers,
      :master_arn,
      :memory_size,
      :revision_id,
      :role,
      :runtime,
      :timeout,
      :tracing_config,
      :vpc_config,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.memory_size ||= 0
        self.timeout ||= 0
      end
    end

    # <p>A function's environment variable settings.</p>
    #
    # @!attribute variables
    #   <p>Environment variable key-value pairs.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute error
    #   <p>An <code>AwsLambdaFunctionEnvironmentError</code> object.</p>
    #
    #   @return [AwsLambdaFunctionEnvironmentError]
    #
    AwsLambdaFunctionEnvironment = ::Struct.new(
      :variables,
      :error,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Error messages for environment variables that could not be applied.</p>
    #
    # @!attribute error_code
    #   <p>The error code.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The error message.</p>
    #
    #   @return [String]
    #
    AwsLambdaFunctionEnvironmentError = ::Struct.new(
      :error_code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An Lambda layer.</p>
    #
    # @!attribute arn
    #   <p>The ARN of the function layer.</p>
    #
    #   @return [String]
    #
    # @!attribute code_size
    #   <p>The size of the layer archive in bytes.</p>
    #
    #   @return [Integer]
    #
    AwsLambdaFunctionLayer = ::Struct.new(
      :arn,
      :code_size,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.code_size ||= 0
      end
    end

    # <p>The function's X-Ray tracing configuration.</p>
    #
    # @!attribute mode
    #   <p>The tracing mode.</p>
    #
    #   @return [String]
    #
    AwsLambdaFunctionTracingConfig = ::Struct.new(
      :mode,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The VPC security groups and subnets that are attached to a Lambda function.</p>
    #
    # @!attribute security_group_ids
    #   <p>A list of VPC security groups IDs.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute subnet_ids
    #   <p>A list of VPC subnet IDs.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute vpc_id
    #   <p>The ID of the VPC.</p>
    #
    #   @return [String]
    #
    AwsLambdaFunctionVpcConfig = ::Struct.new(
      :security_group_ids,
      :subnet_ids,
      :vpc_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about a Lambda layer version.</p>
    #
    # @!attribute version
    #   <p>The version number.</p>
    #
    #   @return [Integer]
    #
    # @!attribute compatible_runtimes
    #   <p>The layer's compatible runtimes. Maximum number of five items.</p>
    #            <p>Valid values: <code>nodejs10.x</code> | <code>nodejs12.x</code> | <code>java8</code> |
    #               <code>java11</code> | <code>python2.7</code> | <code>python3.6</code> |
    #               <code>python3.7</code> | <code>python3.8</code> | <code>dotnetcore1.0</code> |
    #               <code>dotnetcore2.1</code> | <code>go1.x</code> | <code>ruby2.5</code> |
    #               <code>provided</code>
    #            </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute created_date
    #   <p>Indicates when the version was created.</p>
    #            <p>Uses the <code>date-time</code> format specified in <a href="https://tools.ietf.org/html/rfc3339 section-5.6">RFC 3339 section 5.6, Internet
    #               Date/Time Format</a>. The value cannot contain spaces. For example,
    #               <code>2020-03-22T13:22:13.933Z</code>.</p>
    #
    #   @return [String]
    #
    AwsLambdaLayerVersionDetails = ::Struct.new(
      :version,
      :compatible_runtimes,
      :created_date,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.version ||= 0
      end
    end

    # <p>Details about an Network Firewall firewall.</p>
    #
    # @!attribute delete_protection
    #   <p>Whether the firewall is protected from deletion. If set to <code>true</code>, then the firewall cannot be deleted.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute description
    #   <p>A description of the firewall.</p>
    #
    #   @return [String]
    #
    # @!attribute firewall_arn
    #   <p>The ARN of the firewall.</p>
    #
    #   @return [String]
    #
    # @!attribute firewall_id
    #   <p>The identifier of the firewall.</p>
    #
    #   @return [String]
    #
    # @!attribute firewall_name
    #   <p>A descriptive name of the firewall.</p>
    #
    #   @return [String]
    #
    # @!attribute firewall_policy_arn
    #   <p>The ARN of the firewall policy.</p>
    #
    #   @return [String]
    #
    # @!attribute firewall_policy_change_protection
    #   <p>Whether the firewall is protected from a change to the firewall policy. If set to <code>true</code>, you cannot associate a different policy with the firewall.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute subnet_change_protection
    #   <p>Whether the firewall is protected from a change to the subnet associations. If set to <code>true</code>, you cannot map different subnets to the firewall.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute subnet_mappings
    #   <p>The public subnets that Network Firewall uses for the firewall. Each subnet must belong to a different Availability Zone.</p>
    #
    #   @return [Array<AwsNetworkFirewallFirewallSubnetMappingsDetails>]
    #
    # @!attribute vpc_id
    #   <p>The identifier of the VPC where the firewall is used.</p>
    #
    #   @return [String]
    #
    AwsNetworkFirewallFirewallDetails = ::Struct.new(
      :delete_protection,
      :description,
      :firewall_arn,
      :firewall_id,
      :firewall_name,
      :firewall_policy_arn,
      :firewall_policy_change_protection,
      :subnet_change_protection,
      :subnet_mappings,
      :vpc_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.delete_protection ||= false
        self.firewall_policy_change_protection ||= false
        self.subnet_change_protection ||= false
      end
    end

    # <p>Details about a firewall policy. A firewall policy defines the behavior of a network firewall.</p>
    #
    # @!attribute firewall_policy
    #   <p>The firewall policy configuration.</p>
    #
    #   @return [FirewallPolicyDetails]
    #
    # @!attribute firewall_policy_arn
    #   <p>The ARN of the firewall policy.</p>
    #
    #   @return [String]
    #
    # @!attribute firewall_policy_id
    #   <p>The identifier of the firewall policy.</p>
    #
    #   @return [String]
    #
    # @!attribute firewall_policy_name
    #   <p>The name of the firewall policy.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the firewall policy.</p>
    #
    #   @return [String]
    #
    AwsNetworkFirewallFirewallPolicyDetails = ::Struct.new(
      :firewall_policy,
      :firewall_policy_arn,
      :firewall_policy_id,
      :firewall_policy_name,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A public subnet that Network Firewall uses for the firewall.</p>
    #
    # @!attribute subnet_id
    #   <p>The identifier of the subnet</p>
    #
    #   @return [String]
    #
    AwsNetworkFirewallFirewallSubnetMappingsDetails = ::Struct.new(
      :subnet_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about an Network Firewall rule group. Rule groups are used to inspect and control network traffic. Stateless rule groups apply to individual packets. Stateful rule groups apply to packets in the context of their traffic flow.</p>
    #          <p>Rule groups are referenced in firewall policies.
    #       </p>
    #
    # @!attribute capacity
    #   <p>The maximum number of operating resources that this rule group can use.</p>
    #
    #   @return [Integer]
    #
    # @!attribute description
    #   <p>A description of the rule group.</p>
    #
    #   @return [String]
    #
    # @!attribute rule_group
    #   <p>Details about the rule group.</p>
    #
    #   @return [RuleGroupDetails]
    #
    # @!attribute rule_group_arn
    #   <p>The ARN of the rule group.</p>
    #
    #   @return [String]
    #
    # @!attribute rule_group_id
    #   <p>The identifier of the rule group.</p>
    #
    #   @return [String]
    #
    # @!attribute rule_group_name
    #   <p>The descriptive name of the rule group.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of rule group. A rule group can be stateful or stateless.</p>
    #
    #   @return [String]
    #
    AwsNetworkFirewallRuleGroupDetails = ::Struct.new(
      :capacity,
      :description,
      :rule_group,
      :rule_group_arn,
      :rule_group_id,
      :rule_group_name,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.capacity ||= 0
      end
    end

    # <p>Details about the configuration of an OpenSearch cluster.</p>
    #
    # @!attribute instance_count
    #   <p>The number of data nodes to use in the OpenSearch domain.</p>
    #
    #   @return [Integer]
    #
    # @!attribute warm_enabled
    #   <p>Whether UltraWarm is enabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute warm_count
    #   <p>The number of UltraWarm instances.</p>
    #
    #   @return [Integer]
    #
    # @!attribute dedicated_master_enabled
    #   <p>Whether to use a dedicated master node for the OpenSearch domain. A dedicated master node performs cluster management tasks, but does not hold data or respond to data upload requests.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute zone_awareness_config
    #   <p>Configuration options for zone awareness. Provided if <code>ZoneAwarenessEnabled</code> is <code>true</code>.</p>
    #
    #   @return [AwsOpenSearchServiceDomainClusterConfigZoneAwarenessConfigDetails]
    #
    # @!attribute dedicated_master_count
    #   <p>The number of instances to use for the master node. If this attribute is specified, then <code>DedicatedMasterEnabled</code> must be <code>true</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute instance_type
    #   <p>The instance type for your data nodes. </p>
    #
    #   @return [String]
    #
    # @!attribute warm_type
    #   <p>The type of UltraWarm instance.</p>
    #
    #   @return [String]
    #
    # @!attribute zone_awareness_enabled
    #   <p>Whether to enable zone awareness for the OpenSearch domain. When zone awareness is enabled, OpenSearch Service allocates the cluster's nodes and replica index shards across Availability Zones (AZs) in the same Region. This prevents data loss and minimizes downtime if a node or data center fails.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute dedicated_master_type
    #   <p>The hardware configuration of the computer that hosts the dedicated master node.</p>
    #            <p>If this attribute is specified, then <code>DedicatedMasterEnabled</code> must be <code>true</code>.
    #         </p>
    #
    #   @return [String]
    #
    AwsOpenSearchServiceDomainClusterConfigDetails = ::Struct.new(
      :instance_count,
      :warm_enabled,
      :warm_count,
      :dedicated_master_enabled,
      :zone_awareness_config,
      :dedicated_master_count,
      :instance_type,
      :warm_type,
      :zone_awareness_enabled,
      :dedicated_master_type,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.instance_count ||= 0
        self.warm_enabled ||= false
        self.warm_count ||= 0
        self.dedicated_master_enabled ||= false
        self.dedicated_master_count ||= 0
        self.zone_awareness_enabled ||= false
      end
    end

    # <p>Configuration options for zone awareness.</p>
    #
    # @!attribute availability_zone_count
    #   <p>The number of Availability Zones that the domain uses. Valid values are 2 and 3. The default is 2.</p>
    #
    #   @return [Integer]
    #
    AwsOpenSearchServiceDomainClusterConfigZoneAwarenessConfigDetails = ::Struct.new(
      :availability_zone_count,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.availability_zone_count ||= 0
      end
    end

    # <p>Information about an Amazon OpenSearch Service domain.</p>
    #
    # @!attribute arn
    #   <p>The ARN of the OpenSearch Service domain.</p>
    #
    #   @return [String]
    #
    # @!attribute access_policies
    #   <p>IAM policy document that specifies the access policies for the OpenSearch Service domain.</p>
    #
    #   @return [String]
    #
    # @!attribute domain_name
    #   <p>The name of the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The identifier of the domain.</p>
    #
    #   @return [String]
    #
    # @!attribute domain_endpoint
    #   <p>The domain endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute engine_version
    #   <p>The version of the domain engine.</p>
    #
    #   @return [String]
    #
    # @!attribute encryption_at_rest_options
    #   <p>Details about the configuration for encryption at rest.</p>
    #
    #   @return [AwsOpenSearchServiceDomainEncryptionAtRestOptionsDetails]
    #
    # @!attribute node_to_node_encryption_options
    #   <p>Details about the configuration for node-to-node encryption.</p>
    #
    #   @return [AwsOpenSearchServiceDomainNodeToNodeEncryptionOptionsDetails]
    #
    # @!attribute service_software_options
    #   <p>Information about the status of a domain relative to the latest service software.</p>
    #
    #   @return [AwsOpenSearchServiceDomainServiceSoftwareOptionsDetails]
    #
    # @!attribute cluster_config
    #   <p>Details about the configuration of an OpenSearch cluster.</p>
    #
    #   @return [AwsOpenSearchServiceDomainClusterConfigDetails]
    #
    # @!attribute domain_endpoint_options
    #   <p>Additional options for the domain endpoint.</p>
    #
    #   @return [AwsOpenSearchServiceDomainDomainEndpointOptionsDetails]
    #
    # @!attribute vpc_options
    #   <p>Information that OpenSearch Service derives based on <code>VPCOptions</code> for the domain.</p>
    #
    #   @return [AwsOpenSearchServiceDomainVpcOptionsDetails]
    #
    # @!attribute log_publishing_options
    #   <p>Configures the CloudWatch Logs to publish for the OpenSearch domain.</p>
    #
    #   @return [AwsOpenSearchServiceDomainLogPublishingOptionsDetails]
    #
    # @!attribute domain_endpoints
    #   <p>The domain endpoints. Used if the OpenSearch domain resides in a VPC.</p>
    #            <p>This is a map of key-value pairs. The key is always <code>vpc</code>. The value is the endpoint.</p>
    #
    #   @return [Hash<String, String>]
    #
    AwsOpenSearchServiceDomainDetails = ::Struct.new(
      :arn,
      :access_policies,
      :domain_name,
      :id,
      :domain_endpoint,
      :engine_version,
      :encryption_at_rest_options,
      :node_to_node_encryption_options,
      :service_software_options,
      :cluster_config,
      :domain_endpoint_options,
      :vpc_options,
      :log_publishing_options,
      :domain_endpoints,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about additional options for the domain endpoint.</p>
    #
    # @!attribute custom_endpoint_certificate_arn
    #   <p>The ARN for the security certificate. The certificate is managed in ACM.</p>
    #
    #   @return [String]
    #
    # @!attribute custom_endpoint_enabled
    #   <p>Whether to enable a custom endpoint for the domain.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute enforce_https
    #   <p>Whether to require that all traffic to the domain arrive over HTTPS.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute custom_endpoint
    #   <p>The fully qualified URL for the custom endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute tls_security_policy
    #   <p>The TLS security policy to apply to the HTTPS endpoint of the OpenSearch domain.</p>
    #
    #   @return [String]
    #
    AwsOpenSearchServiceDomainDomainEndpointOptionsDetails = ::Struct.new(
      :custom_endpoint_certificate_arn,
      :custom_endpoint_enabled,
      :enforce_https,
      :custom_endpoint,
      :tls_security_policy,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.custom_endpoint_enabled ||= false
        self.enforce_https ||= false
      end
    end

    # <p>Details about the configuration for encryption at rest for the OpenSearch domain.</p>
    #
    # @!attribute enabled
    #   <p>Whether encryption at rest is enabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute kms_key_id
    #   <p>The KMS key ID.</p>
    #
    #   @return [String]
    #
    AwsOpenSearchServiceDomainEncryptionAtRestOptionsDetails = ::Struct.new(
      :enabled,
      :kms_key_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.enabled ||= false
      end
    end

    # <p>Configuration details for a log publishing option.</p>
    #
    # @!attribute cloud_watch_logs_log_group_arn
    #   <p>The ARN of the CloudWatch Logs group to publish the logs to.</p>
    #
    #   @return [String]
    #
    # @!attribute enabled
    #   <p>Whether the log publishing is enabled.</p>
    #
    #   @return [Boolean]
    #
    AwsOpenSearchServiceDomainLogPublishingOption = ::Struct.new(
      :cloud_watch_logs_log_group_arn,
      :enabled,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.enabled ||= false
      end
    end

    # <p>Configures the CloudWatch Logs to publish for the OpenSearch domain.</p>
    #
    # @!attribute index_slow_logs
    #   <p>Configures the OpenSearch index logs publishing.</p>
    #
    #   @return [AwsOpenSearchServiceDomainLogPublishingOption]
    #
    # @!attribute search_slow_logs
    #   <p>Configures the OpenSearch search slow log publishing.</p>
    #
    #   @return [AwsOpenSearchServiceDomainLogPublishingOption]
    #
    # @!attribute audit_logs
    #   <p>Configures the OpenSearch audit logs publishing.</p>
    #
    #   @return [AwsOpenSearchServiceDomainLogPublishingOption]
    #
    AwsOpenSearchServiceDomainLogPublishingOptionsDetails = ::Struct.new(
      :index_slow_logs,
      :search_slow_logs,
      :audit_logs,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides details about the configuration for node-to-node encryption.</p>
    #
    # @!attribute enabled
    #   <p>Whether node-to-node encryption is enabled.</p>
    #
    #   @return [Boolean]
    #
    AwsOpenSearchServiceDomainNodeToNodeEncryptionOptionsDetails = ::Struct.new(
      :enabled,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.enabled ||= false
      end
    end

    # <p>Provides information about the state of the domain relative to the latest service software.</p>
    #
    # @!attribute automated_update_date
    #   <p>The epoch time when the deployment window closes for required updates. After this time, OpenSearch Service schedules the software upgrade automatically.</p>
    #
    #   @return [String]
    #
    # @!attribute cancellable
    #   <p>Whether a request to update the domain can be canceled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute current_version
    #   <p>The version of the service software that is currently installed on the domain.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A more detailed description of the service software status.</p>
    #
    #   @return [String]
    #
    # @!attribute new_version
    #   <p>The most recent version of the service software.</p>
    #
    #   @return [String]
    #
    # @!attribute update_available
    #   <p>Whether a service software update is available for the domain.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute update_status
    #   <p>The status of the service software update.</p>
    #
    #   @return [String]
    #
    # @!attribute optional_deployment
    #   <p>Whether the service software update is optional.</p>
    #
    #   @return [Boolean]
    #
    AwsOpenSearchServiceDomainServiceSoftwareOptionsDetails = ::Struct.new(
      :automated_update_date,
      :cancellable,
      :current_version,
      :description,
      :new_version,
      :update_available,
      :update_status,
      :optional_deployment,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.cancellable ||= false
        self.update_available ||= false
        self.optional_deployment ||= false
      end
    end

    # <p>Contains information that OpenSearch Service derives based on the <code>VPCOptions</code> for the domain.</p>
    #
    # @!attribute security_group_ids
    #   <p>The list of security group IDs that are associated with the VPC endpoints for the domain.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute subnet_ids
    #   <p>A list of subnet IDs that are associated with the VPC endpoints for the domain.</p>
    #
    #   @return [Array<String>]
    #
    AwsOpenSearchServiceDomainVpcOptionsDetails = ::Struct.new(
      :security_group_ids,
      :subnet_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An IAM role that is associated with the Amazon RDS DB cluster.</p>
    #
    # @!attribute role_arn
    #   <p>The ARN of the IAM role.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the association between the IAM role and the DB cluster.</p>
    #
    #   @return [String]
    #
    AwsRdsDbClusterAssociatedRole = ::Struct.new(
      :role_arn,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about an Amazon RDS DB cluster.</p>
    #
    # @!attribute allocated_storage
    #   <p>For all database engines except Aurora, specifies the allocated storage size in
    #            gibibytes (GiB).</p>
    #
    #   @return [Integer]
    #
    # @!attribute availability_zones
    #   <p>A list of Availability Zones (AZs) where instances in the DB cluster can be
    #            created.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute backup_retention_period
    #   <p>The number of days for which automated backups are retained.</p>
    #
    #   @return [Integer]
    #
    # @!attribute database_name
    #   <p>The name of the database.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of this DB cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint
    #   <p>The connection endpoint for the primary instance of the DB cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute reader_endpoint
    #   <p>The reader endpoint for the DB cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute custom_endpoints
    #   <p>A list of custom endpoints for the DB cluster.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute multi_az
    #   <p>Whether the DB cluster has instances in multiple Availability Zones.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute engine
    #   <p>The name of the database engine to use for this DB cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute engine_version
    #   <p>The version number of the database engine to use.</p>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>The port number on which the DB instances in the DB cluster accept connections.</p>
    #
    #   @return [Integer]
    #
    # @!attribute master_username
    #   <p>The name of the master user for the DB cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute preferred_backup_window
    #   <p>The range of time each day when automated backups are created, if automated backups are
    #            enabled.</p>
    #            <p>Uses the format <code>HH:MM-HH:MM</code>. For example, <code>04:52-05:22</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute preferred_maintenance_window
    #   <p>The weekly time range during which system maintenance can occur, in Universal
    #            Coordinated Time (UTC).</p>
    #            <p>Uses the format <code><day>:HH:MM-<day>:HH:MM</code>.</p>
    #            <p>For the day values, use
    #               <code>mon</code>|<code>tue</code>|<code>wed</code>|<code>thu</code>|<code>fri</code>|<code>sat</code>|<code>sun</code>.</p>
    #            <p>For example, <code>sun:09:32-sun:10:02</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute read_replica_identifiers
    #   <p>The identifiers of the read replicas that are associated with this DB cluster.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute vpc_security_groups
    #   <p>A list of VPC security groups that the DB cluster belongs to.</p>
    #
    #   @return [Array<AwsRdsDbInstanceVpcSecurityGroup>]
    #
    # @!attribute hosted_zone_id
    #   <p>Specifies the identifier that Amazon Route 53 assigns when you create a hosted
    #            zone.</p>
    #
    #   @return [String]
    #
    # @!attribute storage_encrypted
    #   <p>Whether the DB cluster is encrypted.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute kms_key_id
    #   <p>The ARN of the KMS master key that is used to encrypt the database instances in the
    #            DB cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute db_cluster_resource_id
    #   <p>The identifier of the DB cluster. The identifier must be unique within each Amazon Web Services Region
    #            and is immutable.</p>
    #
    #   @return [String]
    #
    # @!attribute associated_roles
    #   <p>A list of the IAM roles that are associated with the DB cluster.</p>
    #
    #   @return [Array<AwsRdsDbClusterAssociatedRole>]
    #
    # @!attribute cluster_create_time
    #   <p>Indicates when the DB cluster was created, in Universal Coordinated Time (UTC).</p>
    #            <p>Uses the <code>date-time</code> format specified in <a href="https://tools.ietf.org/html/rfc3339 section-5.6">RFC 3339 section 5.6, Internet
    #               Date/Time Format</a>. The value cannot contain spaces. For example,
    #               <code>2020-03-22T13:22:13.933Z</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute enabled_cloud_watch_logs_exports
    #   <p>A list of log types that this DB cluster is configured to export to CloudWatch
    #            Logs.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute engine_mode
    #   <p>The database engine mode of the DB cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute deletion_protection
    #   <p>Whether the DB cluster has deletion protection enabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute http_endpoint_enabled
    #   <p>Whether the HTTP endpoint for an Aurora Serverless DB cluster is enabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute activity_stream_status
    #   <p>The status of the database activity stream.</p>
    #
    #   @return [String]
    #
    # @!attribute copy_tags_to_snapshot
    #   <p>Whether tags are copied from the DB cluster to snapshots of the DB cluster.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute cross_account_clone
    #   <p>Whether the DB cluster is a clone of a DB cluster owned by a different Amazon Web Services
    #            account.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute domain_memberships
    #   <p>The Active Directory domain membership records that are associated with the DB
    #            cluster.</p>
    #
    #   @return [Array<AwsRdsDbDomainMembership>]
    #
    # @!attribute db_cluster_parameter_group
    #   <p>The name of the DB cluster parameter group for the DB cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute db_subnet_group
    #   <p>The subnet group that is associated with the DB cluster, including the name,
    #            description, and subnets in the subnet group.</p>
    #
    #   @return [String]
    #
    # @!attribute db_cluster_option_group_memberships
    #   <p>The list of option group memberships for this DB cluster.</p>
    #
    #   @return [Array<AwsRdsDbClusterOptionGroupMembership>]
    #
    # @!attribute db_cluster_identifier
    #   <p>The DB cluster identifier that the user assigned to the cluster. This identifier is the
    #            unique key that identifies a DB cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute db_cluster_members
    #   <p>The list of instances that make up the DB cluster.</p>
    #
    #   @return [Array<AwsRdsDbClusterMember>]
    #
    # @!attribute iam_database_authentication_enabled
    #   <p>Whether the mapping of IAM accounts to database accounts is enabled.</p>
    #
    #   @return [Boolean]
    #
    AwsRdsDbClusterDetails = ::Struct.new(
      :allocated_storage,
      :availability_zones,
      :backup_retention_period,
      :database_name,
      :status,
      :endpoint,
      :reader_endpoint,
      :custom_endpoints,
      :multi_az,
      :engine,
      :engine_version,
      :port,
      :master_username,
      :preferred_backup_window,
      :preferred_maintenance_window,
      :read_replica_identifiers,
      :vpc_security_groups,
      :hosted_zone_id,
      :storage_encrypted,
      :kms_key_id,
      :db_cluster_resource_id,
      :associated_roles,
      :cluster_create_time,
      :enabled_cloud_watch_logs_exports,
      :engine_mode,
      :deletion_protection,
      :http_endpoint_enabled,
      :activity_stream_status,
      :copy_tags_to_snapshot,
      :cross_account_clone,
      :domain_memberships,
      :db_cluster_parameter_group,
      :db_subnet_group,
      :db_cluster_option_group_memberships,
      :db_cluster_identifier,
      :db_cluster_members,
      :iam_database_authentication_enabled,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.allocated_storage ||= 0
        self.backup_retention_period ||= 0
        self.multi_az ||= false
        self.port ||= 0
        self.storage_encrypted ||= false
        self.deletion_protection ||= false
        self.http_endpoint_enabled ||= false
        self.copy_tags_to_snapshot ||= false
        self.cross_account_clone ||= false
        self.iam_database_authentication_enabled ||= false
      end
    end

    # <p>Information about an instance in the DB cluster.</p>
    #
    # @!attribute is_cluster_writer
    #   <p>Whether the cluster member is the primary instance for the DB cluster.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute promotion_tier
    #   <p>Specifies the order in which an Aurora replica is promoted to the primary instance when
    #            the existing primary instance fails.</p>
    #
    #   @return [Integer]
    #
    # @!attribute db_instance_identifier
    #   <p>The instance identifier for this member of the DB cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute db_cluster_parameter_group_status
    #   <p>The status of the DB cluster parameter group for this member of the DB cluster.</p>
    #
    #   @return [String]
    #
    AwsRdsDbClusterMember = ::Struct.new(
      :is_cluster_writer,
      :promotion_tier,
      :db_instance_identifier,
      :db_cluster_parameter_group_status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.is_cluster_writer ||= false
        self.promotion_tier ||= 0
      end
    end

    # <p>Information about an option group membership for a DB cluster.</p>
    #
    # @!attribute db_cluster_option_group_name
    #   <p>The name of the DB cluster option group.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the DB cluster option group.</p>
    #
    #   @return [String]
    #
    AwsRdsDbClusterOptionGroupMembership = ::Struct.new(
      :db_cluster_option_group_name,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about an Amazon RDS DB cluster snapshot.</p>
    #
    # @!attribute availability_zones
    #   <p>A list of Availability Zones where instances in the DB cluster can be created.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute snapshot_create_time
    #   <p>Indicates when the snapshot was taken.</p>
    #            <p>Uses the <code>date-time</code> format specified in <a href="https://tools.ietf.org/html/rfc3339 section-5.6">RFC 3339 section 5.6, Internet
    #               Date/Time Format</a>. The value cannot contain spaces. For example,
    #               <code>2020-03-22T13:22:13.933Z</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute engine
    #   <p>The name of the database engine that you want to use for this DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute allocated_storage
    #   <p>Specifies the allocated storage size in gibibytes (GiB).</p>
    #
    #   @return [Integer]
    #
    # @!attribute status
    #   <p>The status of this DB cluster snapshot.</p>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>The port number on which the DB instances in the DB cluster accept connections.</p>
    #
    #   @return [Integer]
    #
    # @!attribute vpc_id
    #   <p>The VPC ID that is associated with the DB cluster snapshot.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_create_time
    #   <p>Indicates when the DB cluster was created, in Universal Coordinated Time (UTC).</p>
    #            <p>Uses the <code>date-time</code> format specified in <a href="https://tools.ietf.org/html/rfc3339 section-5.6">RFC 3339 section 5.6, Internet
    #               Date/Time Format</a>. The value cannot contain spaces. For example,
    #               <code>2020-03-22T13:22:13.933Z</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute master_username
    #   <p>The name of the master user for the DB cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute engine_version
    #   <p>The version of the database engine to use.</p>
    #
    #   @return [String]
    #
    # @!attribute license_model
    #   <p>The license model information for this DB cluster snapshot.</p>
    #
    #   @return [String]
    #
    # @!attribute snapshot_type
    #   <p>The type of DB cluster snapshot.</p>
    #
    #   @return [String]
    #
    # @!attribute percent_progress
    #   <p>Specifies the percentage of the estimated data that has been transferred.</p>
    #
    #   @return [Integer]
    #
    # @!attribute storage_encrypted
    #   <p>Whether the DB cluster is encrypted.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute kms_key_id
    #   <p>The ARN of the KMS master key that is used to encrypt the database instances in the
    #            DB cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute db_cluster_identifier
    #   <p>The DB cluster identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute db_cluster_snapshot_identifier
    #   <p>The identifier of the DB cluster snapshot.</p>
    #
    #   @return [String]
    #
    # @!attribute iam_database_authentication_enabled
    #   <p>Whether mapping of IAM accounts to database accounts is enabled.</p>
    #
    #   @return [Boolean]
    #
    AwsRdsDbClusterSnapshotDetails = ::Struct.new(
      :availability_zones,
      :snapshot_create_time,
      :engine,
      :allocated_storage,
      :status,
      :port,
      :vpc_id,
      :cluster_create_time,
      :master_username,
      :engine_version,
      :license_model,
      :snapshot_type,
      :percent_progress,
      :storage_encrypted,
      :kms_key_id,
      :db_cluster_identifier,
      :db_cluster_snapshot_identifier,
      :iam_database_authentication_enabled,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.allocated_storage ||= 0
        self.port ||= 0
        self.percent_progress ||= 0
        self.storage_encrypted ||= false
        self.iam_database_authentication_enabled ||= false
      end
    end

    # <p>Information about an Active Directory domain membership record associated with the DB
    #          instance.</p>
    #
    # @!attribute domain
    #   <p>The identifier of the Active Directory domain.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the Active Directory Domain membership for the DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute fqdn
    #   <p>The fully qualified domain name of the Active Directory domain.</p>
    #
    #   @return [String]
    #
    # @!attribute iam_role_name
    #   <p>The name of the IAM role to use when making API calls to the Directory Service.</p>
    #
    #   @return [String]
    #
    AwsRdsDbDomainMembership = ::Struct.new(
      :domain,
      :status,
      :fqdn,
      :iam_role_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An IAM role associated with the DB instance.</p>
    #
    # @!attribute role_arn
    #   <p>The ARN of the IAM role that is associated with the DB
    #            instance.</p>
    #
    #   @return [String]
    #
    # @!attribute feature_name
    #   <p>The name of the feature associated with the IAM role.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Describes the state of the association between the IAM role and the DB instance. The
    #               <code>Status</code> property returns one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> - The IAM role ARN is associated with the DB instance and can
    #                  be used to access other Amazon Web Services services on your behalf.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PENDING</code> - The IAM role ARN is being associated with the DB
    #                  instance.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INVALID</code> - The IAM role ARN is associated with the DB instance. But
    #                  the DB instance is unable to assume the IAM role in order to access other Amazon Web Services
    #                  services on your behalf. </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    AwsRdsDbInstanceAssociatedRole = ::Struct.new(
      :role_arn,
      :feature_name,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the details of an Amazon RDS DB instance.</p>
    #
    # @!attribute associated_roles
    #   <p>The IAM roles associated with the DB
    #            instance.</p>
    #
    #   @return [Array<AwsRdsDbInstanceAssociatedRole>]
    #
    # @!attribute ca_certificate_identifier
    #   <p>The identifier of the CA certificate for this DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute db_cluster_identifier
    #   <p>If the DB instance is a member of a DB cluster, contains the name of the DB cluster that
    #            the DB instance is a member of.</p>
    #
    #   @return [String]
    #
    # @!attribute db_instance_identifier
    #   <p>Contains a user-supplied database identifier. This identifier is the unique key that
    #            identifies a DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute db_instance_class
    #   <p>Contains the name of the compute and memory capacity class of the DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute db_instance_port
    #   <p>Specifies the port that the DB instance listens on. If the DB instance is part of a DB
    #            cluster, this can be a different port than the DB cluster port.</p>
    #
    #   @return [Integer]
    #
    # @!attribute dbi_resource_id
    #   <p>The Amazon Web Services Region-unique, immutable identifier for the DB instance. This identifier is
    #            found in CloudTrail log entries whenever the KMS key for the DB instance is
    #            accessed. </p>
    #
    #   @return [String]
    #
    # @!attribute db_name
    #   <p>The meaning of this parameter differs according to the database engine you use.</p>
    #            <p>
    #               <b>MySQL, MariaDB, SQL Server, PostgreSQL</b>
    #            </p>
    #            <p>Contains the name of the initial database of this instance that was provided at create
    #            time, if one was specified when the DB instance was created. This same name is returned for
    #            the life of the DB instance.</p>
    #            <p>
    #               <b>Oracle</b>
    #            </p>
    #            <p>Contains the Oracle System ID (SID) of the created DB instance. Not shown when the
    #            returned parameters do not apply to an Oracle DB instance. </p>
    #
    #   @return [String]
    #
    # @!attribute deletion_protection
    #   <p>Indicates whether the DB instance has deletion protection enabled.</p>
    #            <p>When deletion protection is enabled, the database cannot be deleted.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute endpoint
    #   <p>Specifies the connection endpoint.</p>
    #
    #   @return [AwsRdsDbInstanceEndpoint]
    #
    # @!attribute engine
    #   <p>Provides the name of the database engine to use for this DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute engine_version
    #   <p>Indicates the database engine version.</p>
    #
    #   @return [String]
    #
    # @!attribute iam_database_authentication_enabled
    #   <p>True if mapping of IAM accounts to database
    #            accounts is enabled, and otherwise false.</p>
    #            <p>IAM database authentication can be enabled for the following database engines.</p>
    #            <ul>
    #               <li>
    #                  <p>For MySQL 5.6, minor version 5.6.34 or higher</p>
    #               </li>
    #               <li>
    #                  <p>For MySQL 5.7, minor version 5.7.16 or higher</p>
    #               </li>
    #               <li>
    #                  <p>Aurora 5.6 or higher</p>
    #               </li>
    #            </ul>
    #
    #   @return [Boolean]
    #
    # @!attribute instance_create_time
    #   <p>Indicates when the DB instance was created.</p>
    #            <p>Uses the <code>date-time</code> format specified in <a href="https://tools.ietf.org/html/rfc3339 section-5.6">RFC 3339 section 5.6, Internet
    #               Date/Time Format</a>. The value cannot contain spaces. For example,
    #               <code>2020-03-22T13:22:13.933Z</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute kms_key_id
    #   <p>If <code>StorageEncrypted</code> is true, the KMS key identifier for the encrypted
    #            DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute publicly_accessible
    #   <p>Specifies the accessibility options for the DB instance.</p>
    #            <p>A value of true specifies an Internet-facing instance with a publicly resolvable DNS
    #            name, which resolves to a public IP address.</p>
    #            <p>A value of false specifies an internal instance with a DNS name that resolves to a
    #            private IP address. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute storage_encrypted
    #   <p>Specifies whether the DB instance is encrypted.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute tde_credential_arn
    #   <p>The ARN from the key store with which the instance is associated for TDE
    #            encryption.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_security_groups
    #   <p>A list of VPC security groups that the DB instance belongs to.</p>
    #
    #   @return [Array<AwsRdsDbInstanceVpcSecurityGroup>]
    #
    # @!attribute multi_az
    #   <p>Whether the DB instance is a multiple Availability Zone deployment.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute enhanced_monitoring_resource_arn
    #   <p>The ARN of the CloudWatch Logs log stream that receives the enhanced monitoring metrics
    #            data for the DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute db_instance_status
    #   <p>The current status of the DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute master_username
    #   <p>The master user name of the DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute allocated_storage
    #   <p>The amount of storage (in gigabytes) to initially allocate for the DB instance.</p>
    #
    #   @return [Integer]
    #
    # @!attribute preferred_backup_window
    #   <p>The range of time each day when automated backups are created, if automated backups are
    #            enabled.</p>
    #            <p>Uses the format <code>HH:MM-HH:MM</code>. For example, <code>04:52-05:22</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute backup_retention_period
    #   <p>The number of days for which to retain automated backups.</p>
    #
    #   @return [Integer]
    #
    # @!attribute db_security_groups
    #   <p>A list of the DB security groups to assign to the DB instance.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute db_parameter_groups
    #   <p>A list of the DB parameter groups to assign to the DB instance.</p>
    #
    #   @return [Array<AwsRdsDbParameterGroup>]
    #
    # @!attribute availability_zone
    #   <p>The Availability Zone where the DB instance will be created.</p>
    #
    #   @return [String]
    #
    # @!attribute db_subnet_group
    #   <p>Information about the subnet group that is associated with the DB instance.</p>
    #
    #   @return [AwsRdsDbSubnetGroup]
    #
    # @!attribute preferred_maintenance_window
    #   <p>The weekly time range during which system maintenance can occur, in Universal
    #            Coordinated Time (UTC).</p>
    #            <p>Uses the format <code><day>:HH:MM-<day>:HH:MM</code>.</p>
    #            <p>For the day values, use
    #               <code>mon</code>|<code>tue</code>|<code>wed</code>|<code>thu</code>|<code>fri</code>|<code>sat</code>|<code>sun</code>.</p>
    #            <p>For example, <code>sun:09:32-sun:10:02</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute pending_modified_values
    #   <p>Changes to the DB instance that are currently pending.</p>
    #
    #   @return [AwsRdsDbPendingModifiedValues]
    #
    # @!attribute latest_restorable_time
    #   <p>Specifies the latest time to which a database can be restored with point-in-time
    #            restore.</p>
    #            <p>Uses the <code>date-time</code> format specified in <a href="https://tools.ietf.org/html/rfc3339 section-5.6">RFC 3339 section 5.6, Internet
    #               Date/Time Format</a>. The value cannot contain spaces. For example,
    #               <code>2020-03-22T13:22:13.933Z</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute auto_minor_version_upgrade
    #   <p>Indicates whether minor version patches are applied automatically.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute read_replica_source_db_instance_identifier
    #   <p>If this DB instance is a read replica, contains the identifier of the source DB
    #            instance.</p>
    #
    #   @return [String]
    #
    # @!attribute read_replica_db_instance_identifiers
    #   <p>List of identifiers of the read replicas associated with this DB instance.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute read_replica_db_cluster_identifiers
    #   <p>List of identifiers of Aurora DB clusters to which the RDS DB instance is replicated as
    #            a read replica.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute license_model
    #   <p>License model information for this DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute iops
    #   <p>Specifies the provisioned IOPS (I/O operations per second) for this DB instance.</p>
    #
    #   @return [Integer]
    #
    # @!attribute option_group_memberships
    #   <p>The list of option group memberships for this DB instance.</p>
    #
    #   @return [Array<AwsRdsDbOptionGroupMembership>]
    #
    # @!attribute character_set_name
    #   <p>The name of the character set that this DB instance is associated with.</p>
    #
    #   @return [String]
    #
    # @!attribute secondary_availability_zone
    #   <p>For a DB instance with multi-Availability Zone support, the name of the secondary
    #            Availability Zone.</p>
    #
    #   @return [String]
    #
    # @!attribute status_infos
    #   <p>The status of a read replica. If the instance isn't a read replica, this is
    #            empty.</p>
    #
    #   @return [Array<AwsRdsDbStatusInfo>]
    #
    # @!attribute storage_type
    #   <p>The storage type for the DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute domain_memberships
    #   <p>The Active Directory domain membership records associated with the DB instance.</p>
    #
    #   @return [Array<AwsRdsDbDomainMembership>]
    #
    # @!attribute copy_tags_to_snapshot
    #   <p>Whether to copy resource tags to snapshots of the DB instance.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute monitoring_interval
    #   <p>The interval, in seconds, between points when enhanced monitoring metrics are collected
    #            for the DB instance.</p>
    #
    #   @return [Integer]
    #
    # @!attribute monitoring_role_arn
    #   <p>The ARN for the IAM role that permits Amazon RDS to send enhanced monitoring metrics to
    #            CloudWatch Logs.</p>
    #
    #   @return [String]
    #
    # @!attribute promotion_tier
    #   <p>The order in which to promote an Aurora replica to the primary instance after a failure
    #            of the existing primary instance.</p>
    #
    #   @return [Integer]
    #
    # @!attribute timezone
    #   <p>The time zone of the DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute performance_insights_enabled
    #   <p>Indicates whether Performance Insights is enabled for the DB instance.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute performance_insights_kms_key_id
    #   <p>The identifier of the KMS key used to encrypt the Performance Insights data.</p>
    #
    #   @return [String]
    #
    # @!attribute performance_insights_retention_period
    #   <p>The number of days to retain Performance Insights data.</p>
    #
    #   @return [Integer]
    #
    # @!attribute enabled_cloud_watch_logs_exports
    #   <p>A list of log types that this DB instance is configured to export to CloudWatch Logs.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute processor_features
    #   <p>The number of CPU cores and the number of threads per core for the DB instance class of
    #            the DB instance.</p>
    #
    #   @return [Array<AwsRdsDbProcessorFeature>]
    #
    # @!attribute listener_endpoint
    #   <p>Specifies the connection endpoint.</p>
    #
    #   @return [AwsRdsDbInstanceEndpoint]
    #
    # @!attribute max_allocated_storage
    #   <p>The upper limit to which Amazon RDS can automatically scale the storage of the DB
    #            instance.</p>
    #
    #   @return [Integer]
    #
    AwsRdsDbInstanceDetails = ::Struct.new(
      :associated_roles,
      :ca_certificate_identifier,
      :db_cluster_identifier,
      :db_instance_identifier,
      :db_instance_class,
      :db_instance_port,
      :dbi_resource_id,
      :db_name,
      :deletion_protection,
      :endpoint,
      :engine,
      :engine_version,
      :iam_database_authentication_enabled,
      :instance_create_time,
      :kms_key_id,
      :publicly_accessible,
      :storage_encrypted,
      :tde_credential_arn,
      :vpc_security_groups,
      :multi_az,
      :enhanced_monitoring_resource_arn,
      :db_instance_status,
      :master_username,
      :allocated_storage,
      :preferred_backup_window,
      :backup_retention_period,
      :db_security_groups,
      :db_parameter_groups,
      :availability_zone,
      :db_subnet_group,
      :preferred_maintenance_window,
      :pending_modified_values,
      :latest_restorable_time,
      :auto_minor_version_upgrade,
      :read_replica_source_db_instance_identifier,
      :read_replica_db_instance_identifiers,
      :read_replica_db_cluster_identifiers,
      :license_model,
      :iops,
      :option_group_memberships,
      :character_set_name,
      :secondary_availability_zone,
      :status_infos,
      :storage_type,
      :domain_memberships,
      :copy_tags_to_snapshot,
      :monitoring_interval,
      :monitoring_role_arn,
      :promotion_tier,
      :timezone,
      :performance_insights_enabled,
      :performance_insights_kms_key_id,
      :performance_insights_retention_period,
      :enabled_cloud_watch_logs_exports,
      :processor_features,
      :listener_endpoint,
      :max_allocated_storage,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.db_instance_port ||= 0
        self.deletion_protection ||= false
        self.iam_database_authentication_enabled ||= false
        self.publicly_accessible ||= false
        self.storage_encrypted ||= false
        self.multi_az ||= false
        self.allocated_storage ||= 0
        self.backup_retention_period ||= 0
        self.auto_minor_version_upgrade ||= false
        self.iops ||= 0
        self.copy_tags_to_snapshot ||= false
        self.monitoring_interval ||= 0
        self.promotion_tier ||= 0
        self.performance_insights_enabled ||= false
        self.performance_insights_retention_period ||= 0
        self.max_allocated_storage ||= 0
      end
    end

    # <p>Specifies the connection endpoint.</p>
    #
    # @!attribute address
    #   <p>Specifies the DNS address of the DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>Specifies the port that the database engine is listening on.</p>
    #
    #   @return [Integer]
    #
    # @!attribute hosted_zone_id
    #   <p>Specifies the ID that Amazon Route 53 assigns when you create a hosted zone.</p>
    #
    #   @return [String]
    #
    AwsRdsDbInstanceEndpoint = ::Struct.new(
      :address,
      :port,
      :hosted_zone_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.port ||= 0
      end
    end

    # <p>A VPC security groups that the DB instance belongs to.</p>
    #
    # @!attribute vpc_security_group_id
    #   <p>The name of the VPC security group.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the VPC security group.</p>
    #
    #   @return [String]
    #
    AwsRdsDbInstanceVpcSecurityGroup = ::Struct.new(
      :vpc_security_group_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An option group membership.</p>
    #
    # @!attribute option_group_name
    #   <p>The name of the option group.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the option group membership.</p>
    #
    #   @return [String]
    #
    AwsRdsDbOptionGroupMembership = ::Struct.new(
      :option_group_name,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about a parameter group for a DB instance.</p>
    #
    # @!attribute db_parameter_group_name
    #   <p>The name of the parameter group.</p>
    #
    #   @return [String]
    #
    # @!attribute parameter_apply_status
    #   <p>The status of parameter updates.</p>
    #
    #   @return [String]
    #
    AwsRdsDbParameterGroup = ::Struct.new(
      :db_parameter_group_name,
      :parameter_apply_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Changes to a DB instance that are currently pending.</p>
    #
    # @!attribute db_instance_class
    #   <p>The new DB instance class for the DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute allocated_storage
    #   <p>The new value of the allocated storage for the DB instance.</p>
    #
    #   @return [Integer]
    #
    # @!attribute master_user_password
    #   <p>The new master user password for the DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>The new port for the DB instance.</p>
    #
    #   @return [Integer]
    #
    # @!attribute backup_retention_period
    #   <p>The new backup retention period for the DB instance.</p>
    #
    #   @return [Integer]
    #
    # @!attribute multi_az
    #   <p>Indicates that a single Availability Zone DB instance is changing to a multiple Availability Zone deployment.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute engine_version
    #   <p>The new engine version for the DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute license_model
    #   <p>The new license model value for the DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute iops
    #   <p>The new provisioned IOPS value for the DB instance.</p>
    #
    #   @return [Integer]
    #
    # @!attribute db_instance_identifier
    #   <p>The new DB instance identifier for the DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute storage_type
    #   <p>The new storage type for the DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute ca_certificate_identifier
    #   <p>The new CA certificate identifier for the DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute db_subnet_group_name
    #   <p>The name of the new subnet group for the DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute pending_cloud_watch_logs_exports
    #   <p>A list of log types that are being enabled or disabled.</p>
    #
    #   @return [AwsRdsPendingCloudWatchLogsExports]
    #
    # @!attribute processor_features
    #   <p>Processor features that are being updated.</p>
    #
    #   @return [Array<AwsRdsDbProcessorFeature>]
    #
    AwsRdsDbPendingModifiedValues = ::Struct.new(
      :db_instance_class,
      :allocated_storage,
      :master_user_password,
      :port,
      :backup_retention_period,
      :multi_az,
      :engine_version,
      :license_model,
      :iops,
      :db_instance_identifier,
      :storage_type,
      :ca_certificate_identifier,
      :db_subnet_group_name,
      :pending_cloud_watch_logs_exports,
      :processor_features,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.allocated_storage ||= 0
        self.port ||= 0
        self.backup_retention_period ||= 0
        self.multi_az ||= false
        self.iops ||= 0
      end
    end

    # <p>A processor feature.</p>
    #
    # @!attribute name
    #   <p>The name of the processor feature.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of the processor feature.</p>
    #
    #   @return [String]
    #
    AwsRdsDbProcessorFeature = ::Struct.new(
      :name,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about an Amazon RDS DB security group.</p>
    #
    # @!attribute db_security_group_arn
    #   <p>The ARN for the DB security group.</p>
    #
    #   @return [String]
    #
    # @!attribute db_security_group_description
    #   <p>Provides the description of the DB security group.</p>
    #
    #   @return [String]
    #
    # @!attribute db_security_group_name
    #   <p>Specifies the name of the DB security group.</p>
    #
    #   @return [String]
    #
    # @!attribute ec2_security_groups
    #   <p>Contains a list of EC2 security groups.</p>
    #
    #   @return [Array<AwsRdsDbSecurityGroupEc2SecurityGroup>]
    #
    # @!attribute ip_ranges
    #   <p>Contains a list of IP ranges.</p>
    #
    #   @return [Array<AwsRdsDbSecurityGroupIpRange>]
    #
    # @!attribute owner_id
    #   <p>Provides the Amazon Web Services ID of the owner of a specific DB security group.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_id
    #   <p>Provides VPC ID associated with the DB security group.
    #         </p>
    #
    #   @return [String]
    #
    AwsRdsDbSecurityGroupDetails = ::Struct.new(
      :db_security_group_arn,
      :db_security_group_description,
      :db_security_group_name,
      :ec2_security_groups,
      :ip_ranges,
      :owner_id,
      :vpc_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>EC2 security group information for an RDS DB security group.</p>
    #
    # @!attribute ec2_security_group_id
    #   <p>Specifies the ID for the EC2 security group.</p>
    #
    #   @return [String]
    #
    # @!attribute ec2_security_group_name
    #   <p>Specifies the name of the EC2 security group.</p>
    #
    #   @return [String]
    #
    # @!attribute ec2_security_group_owner_id
    #   <p>Provides the Amazon Web Services ID of the owner of the EC2 security group.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Provides the status of the EC2 security group.</p>
    #
    #   @return [String]
    #
    AwsRdsDbSecurityGroupEc2SecurityGroup = ::Struct.new(
      :ec2_security_group_id,
      :ec2_security_group_name,
      :ec2_security_group_owner_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>IP range information for an RDS DB security group.</p>
    #
    # @!attribute cidr_ip
    #   <p>Specifies the IP range.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Specifies the status of the IP range.</p>
    #
    #   @return [String]
    #
    AwsRdsDbSecurityGroupIpRange = ::Struct.new(
      :cidr_ip,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides details about an Amazon RDS DB cluster snapshot.</p>
    #
    # @!attribute db_snapshot_identifier
    #   <p>The name or ARN of the DB snapshot that is used to restore the DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute db_instance_identifier
    #   <p>A name for the DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute snapshot_create_time
    #   <p>When the snapshot was taken in Coordinated Universal Time (UTC).</p>
    #
    #   @return [String]
    #
    # @!attribute engine
    #   <p>The name of the database engine to use for this DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute allocated_storage
    #   <p>The amount of storage (in gigabytes) to be initially allocated for the database instance.</p>
    #
    #   @return [Integer]
    #
    # @!attribute status
    #   <p>The status of this DB snapshot.</p>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>The port that the database engine was listening on at the time of the snapshot.</p>
    #
    #   @return [Integer]
    #
    # @!attribute availability_zone
    #   <p>Specifies the name of the Availability Zone in which the DB instance was located at the time of the DB snapshot.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_id
    #   <p>The VPC ID associated with the DB snapshot.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_create_time
    #   <p>Specifies the time in Coordinated Universal Time (UTC) when the DB instance, from which the snapshot was taken, was created.</p>
    #
    #   @return [String]
    #
    # @!attribute master_username
    #   <p>The master user name for the DB snapshot.</p>
    #
    #   @return [String]
    #
    # @!attribute engine_version
    #   <p>The version of the database engine.</p>
    #
    #   @return [String]
    #
    # @!attribute license_model
    #   <p>License model information for the restored DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute snapshot_type
    #   <p>The type of the DB snapshot.</p>
    #
    #   @return [String]
    #
    # @!attribute iops
    #   <p>The provisioned IOPS (I/O operations per second) value of the DB instance at the time of the snapshot.</p>
    #
    #   @return [Integer]
    #
    # @!attribute option_group_name
    #   <p>The option group name for the DB snapshot.</p>
    #
    #   @return [String]
    #
    # @!attribute percent_progress
    #   <p>The percentage of the estimated data that has been transferred.</p>
    #
    #   @return [Integer]
    #
    # @!attribute source_region
    #   <p>The Amazon Web Services Region that the DB snapshot was created in or copied from.</p>
    #
    #   @return [String]
    #
    # @!attribute source_db_snapshot_identifier
    #   <p>The DB snapshot ARN that the DB snapshot was copied from.</p>
    #
    #   @return [String]
    #
    # @!attribute storage_type
    #   <p>The storage type associated with the DB snapshot.</p>
    #
    #   @return [String]
    #
    # @!attribute tde_credential_arn
    #   <p>The ARN from the key store with which to associate the instance for TDE encryption.</p>
    #
    #   @return [String]
    #
    # @!attribute encrypted
    #   <p>Whether the DB snapshot is encrypted.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute kms_key_id
    #   <p>If <code>Encrypted</code> is <code>true</code>, the KMS key identifier for the encrypted DB snapshot.</p>
    #
    #   @return [String]
    #
    # @!attribute timezone
    #   <p>The time zone of the DB snapshot.</p>
    #
    #   @return [String]
    #
    # @!attribute iam_database_authentication_enabled
    #   <p>Whether mapping of IAM accounts to database accounts is enabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute processor_features
    #   <p>The number of CPU cores and the number of threads per core for the DB instance class of the DB instance.</p>
    #
    #   @return [Array<AwsRdsDbProcessorFeature>]
    #
    # @!attribute dbi_resource_id
    #   <p>The identifier for the source DB instance.</p>
    #
    #   @return [String]
    #
    AwsRdsDbSnapshotDetails = ::Struct.new(
      :db_snapshot_identifier,
      :db_instance_identifier,
      :snapshot_create_time,
      :engine,
      :allocated_storage,
      :status,
      :port,
      :availability_zone,
      :vpc_id,
      :instance_create_time,
      :master_username,
      :engine_version,
      :license_model,
      :snapshot_type,
      :iops,
      :option_group_name,
      :percent_progress,
      :source_region,
      :source_db_snapshot_identifier,
      :storage_type,
      :tde_credential_arn,
      :encrypted,
      :kms_key_id,
      :timezone,
      :iam_database_authentication_enabled,
      :processor_features,
      :dbi_resource_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.allocated_storage ||= 0
        self.port ||= 0
        self.iops ||= 0
        self.percent_progress ||= 0
        self.encrypted ||= false
        self.iam_database_authentication_enabled ||= false
      end
    end

    # <p>Information about the status of a read replica.</p>
    #
    # @!attribute status_type
    #   <p>The type of status. For a read replica, the status type is read replication.</p>
    #
    #   @return [String]
    #
    # @!attribute normal
    #   <p>Whether the read replica instance is operating normally.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute status
    #   <p>The status of the read replica instance.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>If the read replica is currently in an error state, provides the error details.</p>
    #
    #   @return [String]
    #
    AwsRdsDbStatusInfo = ::Struct.new(
      :status_type,
      :normal,
      :status,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.normal ||= false
      end
    end

    # <p>Information about the subnet group for the database instance.</p>
    #
    # @!attribute db_subnet_group_name
    #   <p>The name of the subnet group.</p>
    #
    #   @return [String]
    #
    # @!attribute db_subnet_group_description
    #   <p>The description of the subnet group.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_id
    #   <p>The VPC ID of the subnet group.</p>
    #
    #   @return [String]
    #
    # @!attribute subnet_group_status
    #   <p>The status of the subnet group.</p>
    #
    #   @return [String]
    #
    # @!attribute subnets
    #   <p>A list of subnets in the subnet group.</p>
    #
    #   @return [Array<AwsRdsDbSubnetGroupSubnet>]
    #
    # @!attribute db_subnet_group_arn
    #   <p>The ARN of the subnet group.</p>
    #
    #   @return [String]
    #
    AwsRdsDbSubnetGroup = ::Struct.new(
      :db_subnet_group_name,
      :db_subnet_group_description,
      :vpc_id,
      :subnet_group_status,
      :subnets,
      :db_subnet_group_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a subnet in a subnet group.</p>
    #
    # @!attribute subnet_identifier
    #   <p>The identifier of a subnet in the subnet group.</p>
    #
    #   @return [String]
    #
    # @!attribute subnet_availability_zone
    #   <p>Information about the Availability Zone for a subnet in the subnet group.</p>
    #
    #   @return [AwsRdsDbSubnetGroupSubnetAvailabilityZone]
    #
    # @!attribute subnet_status
    #   <p>The status of a subnet in the subnet group.</p>
    #
    #   @return [String]
    #
    AwsRdsDbSubnetGroupSubnet = ::Struct.new(
      :subnet_identifier,
      :subnet_availability_zone,
      :subnet_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An Availability Zone for a subnet in a subnet group.</p>
    #
    # @!attribute name
    #   <p>The name of the Availability Zone for a subnet in the subnet group.</p>
    #
    #   @return [String]
    #
    AwsRdsDbSubnetGroupSubnetAvailabilityZone = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about an Amazon RDS event notification subscription. The subscription allows Amazon RDS to post events to an SNS topic.</p>
    #
    # @!attribute cust_subscription_id
    #   <p>The identifier of the account that is associated with the event notification subscription.</p>
    #
    #   @return [String]
    #
    # @!attribute customer_aws_id
    #   <p>The identifier of the event notification subscription.</p>
    #
    #   @return [String]
    #
    # @!attribute enabled
    #   <p>Whether the event notification subscription is enabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute event_categories_list
    #   <p>The list of event categories for the event notification subscription.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute event_subscription_arn
    #   <p>The ARN of the event notification subscription.</p>
    #
    #   @return [String]
    #
    # @!attribute sns_topic_arn
    #   <p>The ARN of the SNS topic to post the event notifications to.</p>
    #
    #   @return [String]
    #
    # @!attribute source_ids_list
    #   <p>A list of source identifiers for the event notification subscription.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute source_type
    #   <p>The source type for the event notification subscription.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the event notification subscription.</p>
    #            <p>Valid values: <code>creating</code> | <code>modifying</code> | <code>deleting</code> | <code>active</code> | <code>no-permission</code> | <code>topic-not-exist</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute subscription_creation_time
    #   <p>The datetime when the event notification subscription was created.</p>
    #            <p>Uses the <code>date-time</code> format specified in <a href="https://tools.ietf.org/html/rfc3339 section-5.6">RFC 3339 section 5.6, Internet
    #            Date/Time Format</a>. The value cannot contain spaces. For example,
    #            <code>2020-03-22T13:22:13.933Z</code>.</p>
    #
    #   @return [String]
    #
    AwsRdsEventSubscriptionDetails = ::Struct.new(
      :cust_subscription_id,
      :customer_aws_id,
      :enabled,
      :event_categories_list,
      :event_subscription_arn,
      :sns_topic_arn,
      :source_ids_list,
      :source_type,
      :status,
      :subscription_creation_time,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.enabled ||= false
      end
    end

    # <p>Identifies the log types to enable and disable.</p>
    #
    # @!attribute log_types_to_enable
    #   <p>A list of log types that are being enabled.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute log_types_to_disable
    #   <p>A list of log types that are being disabled.</p>
    #
    #   @return [Array<String>]
    #
    AwsRdsPendingCloudWatchLogsExports = ::Struct.new(
      :log_types_to_enable,
      :log_types_to_disable,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A node in an Amazon Redshift cluster.</p>
    #
    # @!attribute node_role
    #   <p>The role of the node. A node might be a leader node or a compute node.</p>
    #
    #   @return [String]
    #
    # @!attribute private_ip_address
    #   <p>The private IP address of the node.</p>
    #
    #   @return [String]
    #
    # @!attribute public_ip_address
    #   <p>The public IP address of the node.</p>
    #
    #   @return [String]
    #
    AwsRedshiftClusterClusterNode = ::Struct.new(
      :node_role,
      :private_ip_address,
      :public_ip_address,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A cluster parameter group that is associated with an Amazon Redshift cluster.</p>
    #
    # @!attribute cluster_parameter_status_list
    #   <p>The list of parameter statuses.</p>
    #
    #   @return [Array<AwsRedshiftClusterClusterParameterStatus>]
    #
    # @!attribute parameter_apply_status
    #   <p>The status of updates to the parameters.</p>
    #
    #   @return [String]
    #
    # @!attribute parameter_group_name
    #   <p>The name of the parameter group.</p>
    #
    #   @return [String]
    #
    AwsRedshiftClusterClusterParameterGroup = ::Struct.new(
      :cluster_parameter_status_list,
      :parameter_apply_status,
      :parameter_group_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The status of a parameter in a cluster parameter group for an Amazon Redshift
    #          cluster.</p>
    #
    # @!attribute parameter_name
    #   <p>The name of the parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute parameter_apply_status
    #   <p>The status of the parameter. Indicates whether the parameter is in sync with the
    #            database, waiting for a cluster reboot, or encountered an error when it was applied.</p>
    #            <p>Valid values: <code>in-sync</code> | <code>pending-reboot</code> | <code>applying</code>
    #            | <code>invalid-parameter</code> | <code>apply-deferred</code> | <code>apply-error</code> |
    #               <code>unknown-error</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute parameter_apply_error_description
    #   <p>The error that prevented the parameter from being applied to the database.</p>
    #
    #   @return [String]
    #
    AwsRedshiftClusterClusterParameterStatus = ::Struct.new(
      :parameter_name,
      :parameter_apply_status,
      :parameter_apply_error_description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A security group that is associated with the cluster.</p>
    #
    # @!attribute cluster_security_group_name
    #   <p>The name of the cluster security group.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the cluster security group.</p>
    #
    #   @return [String]
    #
    AwsRedshiftClusterClusterSecurityGroup = ::Struct.new(
      :cluster_security_group_name,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a cross-Region snapshot copy.</p>
    #
    # @!attribute destination_region
    #   <p>The destination Region that snapshots are automatically copied to when cross-Region
    #            snapshot copy is enabled.</p>
    #
    #   @return [String]
    #
    # @!attribute manual_snapshot_retention_period
    #   <p>The number of days that manual snapshots are retained in the destination region after
    #            they are copied from a source region.</p>
    #            <p>If the value is -1, then the manual snapshot is retained indefinitely.</p>
    #            <p>Valid values: Either -1 or an integer between 1 and 3,653</p>
    #
    #   @return [Integer]
    #
    # @!attribute retention_period
    #   <p>The number of days to retain automated snapshots in the destination Region after they
    #            are copied from a source Region.</p>
    #
    #   @return [Integer]
    #
    # @!attribute snapshot_copy_grant_name
    #   <p>The name of the snapshot copy grant.</p>
    #
    #   @return [String]
    #
    AwsRedshiftClusterClusterSnapshotCopyStatus = ::Struct.new(
      :destination_region,
      :manual_snapshot_retention_period,
      :retention_period,
      :snapshot_copy_grant_name,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.manual_snapshot_retention_period ||= 0
        self.retention_period ||= 0
      end
    end

    # <p>A time windows during which maintenance was deferred for an Amazon Redshift
    #          cluster.</p>
    #
    # @!attribute defer_maintenance_end_time
    #   <p>The end of the time window for which maintenance was deferred.</p>
    #            <p>Uses the <code>date-time</code> format specified in <a href="https://tools.ietf.org/html/rfc3339 section-5.6">RFC 3339 section 5.6, Internet
    #               Date/Time Format</a>. The value cannot contain spaces. For example,
    #               <code>2020-03-22T13:22:13.933Z</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute defer_maintenance_identifier
    #   <p>The identifier of the maintenance window.</p>
    #
    #   @return [String]
    #
    # @!attribute defer_maintenance_start_time
    #   <p>The start of the time window for which maintenance was deferred.</p>
    #            <p>Uses the <code>date-time</code> format specified in <a href="https://tools.ietf.org/html/rfc3339 section-5.6">RFC 3339 section 5.6, Internet
    #               Date/Time Format</a>. The value cannot contain spaces. For example,
    #               <code>2020-03-22T13:22:13.933Z</code>.</p>
    #
    #   @return [String]
    #
    AwsRedshiftClusterDeferredMaintenanceWindow = ::Struct.new(
      :defer_maintenance_end_time,
      :defer_maintenance_identifier,
      :defer_maintenance_start_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about an Amazon Redshift cluster.</p>
    #
    # @!attribute allow_version_upgrade
    #   <p>Indicates whether major version upgrades are applied automatically to the cluster during
    #            the maintenance window.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute automated_snapshot_retention_period
    #   <p>The number of days that automatic cluster snapshots are retained.</p>
    #
    #   @return [Integer]
    #
    # @!attribute availability_zone
    #   <p>The name of the Availability Zone in which the cluster is located.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_availability_status
    #   <p>The availability status of the cluster for queries. Possible values are the
    #            following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Available</code> - The cluster is available for queries.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Unavailable</code> - The cluster is not available for queries.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Maintenance</code> - The cluster is intermittently available for queries due
    #                  to maintenance activities.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Modifying</code> -The cluster is intermittently available for queries due to
    #                  changes that modify the cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Failed</code> - The cluster failed and is not available for queries.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute cluster_create_time
    #   <p>Indicates when the cluster was created.</p>
    #            <p>Uses the <code>date-time</code> format specified in <a href="https://tools.ietf.org/html/rfc3339 section-5.6">RFC 3339 section 5.6, Internet
    #               Date/Time Format</a>. The value cannot contain spaces. For example,
    #               <code>2020-03-22T13:22:13.933Z</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_identifier
    #   <p>The unique identifier of the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_nodes
    #   <p>The nodes in the cluster.</p>
    #
    #   @return [Array<AwsRedshiftClusterClusterNode>]
    #
    # @!attribute cluster_parameter_groups
    #   <p>The list of cluster parameter groups that are associated with this cluster.</p>
    #
    #   @return [Array<AwsRedshiftClusterClusterParameterGroup>]
    #
    # @!attribute cluster_public_key
    #   <p>The public key for the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_revision_number
    #   <p>The specific revision number of the database in the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_security_groups
    #   <p>A list of cluster security groups that are associated with the cluster.</p>
    #
    #   @return [Array<AwsRedshiftClusterClusterSecurityGroup>]
    #
    # @!attribute cluster_snapshot_copy_status
    #   <p>Information about the destination Region and retention period for the cross-Region
    #            snapshot copy.</p>
    #
    #   @return [AwsRedshiftClusterClusterSnapshotCopyStatus]
    #
    # @!attribute cluster_status
    #   <p>The current status of the cluster.</p>
    #            <p>Valid values: <code>available</code> | <code>available, prep-for-resize</code> |
    #               <code>available, resize-cleanup</code> |<code> cancelling-resize</code> |
    #               <code>creating</code> | <code>deleting</code> | <code>final-snapshot</code> |
    #               <code>hardware-failure</code> | <code>incompatible-hsm</code> |<code>
    #               incompatible-network</code> | <code>incompatible-parameters</code> |
    #               <code>incompatible-restore</code> | <code>modifying</code> | <code>paused</code> |
    #               <code>rebooting</code> | <code>renaming</code> | <code>resizing</code> |
    #               <code>rotating-keys</code> | <code>storage-full</code> |
    #            <code>updating-hsm</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute cluster_subnet_group_name
    #   <p>The name of the subnet group that is associated with the cluster. This parameter is
    #            valid only when the cluster is in a VPC.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_version
    #   <p>The version ID of the Amazon Redshift engine that runs on the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute db_name
    #   <p>The name of the initial database that was created when the cluster was created.</p>
    #            <p>The same name is returned for the life of the cluster.</p>
    #            <p>If an initial database is not specified, a database named <code>devdev</code> is created
    #            by default.</p>
    #
    #   @return [String]
    #
    # @!attribute deferred_maintenance_windows
    #   <p>List of time windows during which maintenance was deferred.</p>
    #
    #   @return [Array<AwsRedshiftClusterDeferredMaintenanceWindow>]
    #
    # @!attribute elastic_ip_status
    #   <p>Information about the status of the Elastic IP (EIP) address.</p>
    #
    #   @return [AwsRedshiftClusterElasticIpStatus]
    #
    # @!attribute elastic_resize_number_of_node_options
    #   <p>The number of nodes that you can use the elastic resize method to resize the cluster
    #            to.</p>
    #
    #   @return [String]
    #
    # @!attribute encrypted
    #   <p>Indicates whether the data in the cluster is encrypted at rest.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute endpoint
    #   <p>The connection endpoint.</p>
    #
    #   @return [AwsRedshiftClusterEndpoint]
    #
    # @!attribute enhanced_vpc_routing
    #   <p>Indicates whether to create the cluster with enhanced VPC routing enabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute expected_next_snapshot_schedule_time
    #   <p>Indicates when the next snapshot is expected to be taken. The cluster must have a valid
    #            snapshot schedule and have backups enabled.</p>
    #            <p>Uses the <code>date-time</code> format specified in <a href="https://tools.ietf.org/html/rfc3339 section-5.6">RFC 3339 section 5.6, Internet
    #               Date/Time Format</a>. The value cannot contain spaces. For example,
    #               <code>2020-03-22T13:22:13.933Z</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute expected_next_snapshot_schedule_time_status
    #   <p>The status of the next expected snapshot.</p>
    #            <p>Valid values: <code>OnTrack</code> | <code>Pending</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute hsm_status
    #   <p>Information about whether the Amazon Redshift cluster finished applying any changes to
    #            hardware security module (HSM) settings that were specified in a modify cluster
    #            command.</p>
    #
    #   @return [AwsRedshiftClusterHsmStatus]
    #
    # @!attribute iam_roles
    #   <p>A list of IAM roles that the cluster can use to access other Amazon Web Services services.</p>
    #
    #   @return [Array<AwsRedshiftClusterIamRole>]
    #
    # @!attribute kms_key_id
    #   <p>The identifier of the KMS encryption key that is used to encrypt data in the
    #            cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute maintenance_track_name
    #   <p>The name of the maintenance track for the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute manual_snapshot_retention_period
    #   <p>The default number of days to retain a manual snapshot.</p>
    #            <p>If the value is -1, the snapshot is retained indefinitely.</p>
    #            <p>This setting doesn't change the retention period of existing snapshots.</p>
    #            <p>Valid values: Either -1 or an integer between 1 and 3,653</p>
    #
    #   @return [Integer]
    #
    # @!attribute master_username
    #   <p>The master user name for the cluster. This name is used to connect to the database that
    #            is specified in as the value of <code>DBName</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute next_maintenance_window_start_time
    #   <p>Indicates the start of the next maintenance window.</p>
    #            <p>Uses the <code>date-time</code> format specified in <a href="https://tools.ietf.org/html/rfc3339 section-5.6">RFC 3339 section 5.6, Internet
    #               Date/Time Format</a>. The value cannot contain spaces. For example,
    #               <code>2020-03-22T13:22:13.933Z</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute node_type
    #   <p>The node type for the nodes in the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute number_of_nodes
    #   <p>The number of compute nodes in the cluster.</p>
    #
    #   @return [Integer]
    #
    # @!attribute pending_actions
    #   <p>A list of cluster operations that are waiting to start.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute pending_modified_values
    #   <p>A list of changes to the cluster that are currently pending.</p>
    #
    #   @return [AwsRedshiftClusterPendingModifiedValues]
    #
    # @!attribute preferred_maintenance_window
    #   <p>The weekly time range, in Universal Coordinated Time (UTC), during which system
    #            maintenance can occur.</p>
    #            <p>Format:
    #               <code>
    #                  <i><day></i>:HH:MM-<i><day></i>:HH:MM</code>
    #            </p>
    #            <p>For the day values, use <code>mon</code> | <code>tue</code> | <code>wed</code> |
    #               <code>thu</code> | <code>fri</code> | <code>sat</code> | <code>sun</code>
    #            </p>
    #            <p>For example, <code>sun:09:32-sun:10:02</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute publicly_accessible
    #   <p>Whether the cluster can be accessed from a public network.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute resize_info
    #   <p>Information about the resize operation for the cluster.</p>
    #
    #   @return [AwsRedshiftClusterResizeInfo]
    #
    # @!attribute restore_status
    #   <p>Information about the status of a cluster restore action. Only applies to a cluster that
    #            was created by restoring a snapshot.</p>
    #
    #   @return [AwsRedshiftClusterRestoreStatus]
    #
    # @!attribute snapshot_schedule_identifier
    #   <p>A unique identifier for the cluster snapshot schedule.</p>
    #
    #   @return [String]
    #
    # @!attribute snapshot_schedule_state
    #   <p>The current state of the cluster snapshot schedule.</p>
    #            <p>Valid values: <code>MODIFYING</code> | <code>ACTIVE</code> | <code>FAILED</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute vpc_id
    #   <p>The identifier of the VPC that the cluster is in, if the cluster is in a VPC.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_security_groups
    #   <p>The list of VPC security groups that the cluster belongs to, if the cluster is in a
    #            VPC.</p>
    #
    #   @return [Array<AwsRedshiftClusterVpcSecurityGroup>]
    #
    # @!attribute logging_status
    #   <p>Information about the logging status of the cluster.</p>
    #
    #   @return [AwsRedshiftClusterLoggingStatus]
    #
    AwsRedshiftClusterDetails = ::Struct.new(
      :allow_version_upgrade,
      :automated_snapshot_retention_period,
      :availability_zone,
      :cluster_availability_status,
      :cluster_create_time,
      :cluster_identifier,
      :cluster_nodes,
      :cluster_parameter_groups,
      :cluster_public_key,
      :cluster_revision_number,
      :cluster_security_groups,
      :cluster_snapshot_copy_status,
      :cluster_status,
      :cluster_subnet_group_name,
      :cluster_version,
      :db_name,
      :deferred_maintenance_windows,
      :elastic_ip_status,
      :elastic_resize_number_of_node_options,
      :encrypted,
      :endpoint,
      :enhanced_vpc_routing,
      :expected_next_snapshot_schedule_time,
      :expected_next_snapshot_schedule_time_status,
      :hsm_status,
      :iam_roles,
      :kms_key_id,
      :maintenance_track_name,
      :manual_snapshot_retention_period,
      :master_username,
      :next_maintenance_window_start_time,
      :node_type,
      :number_of_nodes,
      :pending_actions,
      :pending_modified_values,
      :preferred_maintenance_window,
      :publicly_accessible,
      :resize_info,
      :restore_status,
      :snapshot_schedule_identifier,
      :snapshot_schedule_state,
      :vpc_id,
      :vpc_security_groups,
      :logging_status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.allow_version_upgrade ||= false
        self.automated_snapshot_retention_period ||= 0
        self.encrypted ||= false
        self.enhanced_vpc_routing ||= false
        self.manual_snapshot_retention_period ||= 0
        self.number_of_nodes ||= 0
        self.publicly_accessible ||= false
      end
    end

    # <p>The status of the elastic IP (EIP) address for an Amazon Redshift cluster.</p>
    #
    # @!attribute elastic_ip
    #   <p>The elastic IP address for the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the elastic IP address.</p>
    #
    #   @return [String]
    #
    AwsRedshiftClusterElasticIpStatus = ::Struct.new(
      :elastic_ip,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The connection endpoint for an Amazon Redshift cluster.</p>
    #
    # @!attribute address
    #   <p>The DNS address of the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>The port that the database engine listens on.</p>
    #
    #   @return [Integer]
    #
    AwsRedshiftClusterEndpoint = ::Struct.new(
      :address,
      :port,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.port ||= 0
      end
    end

    # <p>Information about whether an Amazon Redshift cluster finished applying any hardware
    #          changes to security module (HSM) settings that were specified in a modify cluster
    #          command.</p>
    #
    # @!attribute hsm_client_certificate_identifier
    #   <p>The name of the HSM client certificate that the Amazon Redshift cluster uses to retrieve
    #            the data encryption keys that are stored in an HSM.</p>
    #
    #   @return [String]
    #
    # @!attribute hsm_configuration_identifier
    #   <p>The name of the HSM configuration that contains the information that the Amazon Redshift
    #            cluster can use to retrieve and store keys in an HSM.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Indicates whether the Amazon Redshift cluster has finished applying any HSM settings
    #            changes specified in a modify cluster command.</p>
    #            <p>Type: String</p>
    #            <p>Valid values: <code>active</code> | <code>applying</code>
    #            </p>
    #
    #   @return [String]
    #
    AwsRedshiftClusterHsmStatus = ::Struct.new(
      :hsm_client_certificate_identifier,
      :hsm_configuration_identifier,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An IAM role that the cluster can use to access other Amazon Web Services services.</p>
    #
    # @!attribute apply_status
    #   <p>The status of the IAM role's association with the cluster.</p>
    #            <p>Valid values: <code>in-sync</code> | <code>adding</code> | <code>removing</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute iam_role_arn
    #   <p>The ARN of the IAM role.</p>
    #
    #   @return [String]
    #
    AwsRedshiftClusterIamRole = ::Struct.new(
      :apply_status,
      :iam_role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about the logging status of the cluster.</p>
    #
    # @!attribute bucket_name
    #   <p>The name of the S3 bucket where the log files are stored.</p>
    #
    #   @return [String]
    #
    # @!attribute last_failure_message
    #   <p>The message indicating that the logs failed to be delivered.</p>
    #
    #   @return [String]
    #
    # @!attribute last_failure_time
    #   <p>The last time when logs failed to be delivered.</p>
    #            <p>Uses the <code>date-time</code> format specified in <a href="https://tools.ietf.org/html/rfc3339 section-5.6">RFC 3339 section 5.6, Internet
    #            Date/Time Format</a>. The value cannot contain spaces. For example,
    #            <code>2020-03-22T13:22:13.933Z</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute last_successful_delivery_time
    #   <p>The last time that logs were delivered successfully.</p>
    #            <p>Uses the <code>date-time</code> format specified in <a href="https://tools.ietf.org/html/rfc3339 section-5.6">RFC 3339 section 5.6, Internet
    #            Date/Time Format</a>. The value cannot contain spaces. For example,
    #            <code>2020-03-22T13:22:13.933Z</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute logging_enabled
    #   <p>Indicates whether logging is enabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute s3_key_prefix
    #   <p>Provides the prefix applied to the log file names.</p>
    #
    #   @return [String]
    #
    AwsRedshiftClusterLoggingStatus = ::Struct.new(
      :bucket_name,
      :last_failure_message,
      :last_failure_time,
      :last_successful_delivery_time,
      :logging_enabled,
      :s3_key_prefix,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.logging_enabled ||= false
      end
    end

    # <p>Changes to the Amazon Redshift cluster that are currently pending.</p>
    #
    # @!attribute automated_snapshot_retention_period
    #   <p>The pending or in-progress change to the automated snapshot retention period.</p>
    #
    #   @return [Integer]
    #
    # @!attribute cluster_identifier
    #   <p>The pending or in-progress change to the identifier for the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_type
    #   <p>The pending or in-progress change to the cluster type.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_version
    #   <p>The pending or in-progress change to the service version.</p>
    #
    #   @return [String]
    #
    # @!attribute encryption_type
    #   <p>The encryption type for a cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute enhanced_vpc_routing
    #   <p>Indicates whether to create the cluster with enhanced VPC routing enabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute maintenance_track_name
    #   <p>The name of the maintenance track that the cluster changes to during the next
    #            maintenance window.</p>
    #
    #   @return [String]
    #
    # @!attribute master_user_password
    #   <p>The pending or in-progress change to the master user password for the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute node_type
    #   <p>The pending or in-progress change to the cluster's node type.</p>
    #
    #   @return [String]
    #
    # @!attribute number_of_nodes
    #   <p>The pending or in-progress change to the number of nodes in the cluster.</p>
    #
    #   @return [Integer]
    #
    # @!attribute publicly_accessible
    #   <p>The pending or in-progress change to whether the cluster can be connected to from the
    #            public network.</p>
    #
    #   @return [Boolean]
    #
    AwsRedshiftClusterPendingModifiedValues = ::Struct.new(
      :automated_snapshot_retention_period,
      :cluster_identifier,
      :cluster_type,
      :cluster_version,
      :encryption_type,
      :enhanced_vpc_routing,
      :maintenance_track_name,
      :master_user_password,
      :node_type,
      :number_of_nodes,
      :publicly_accessible,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.automated_snapshot_retention_period ||= 0
        self.enhanced_vpc_routing ||= false
        self.number_of_nodes ||= 0
        self.publicly_accessible ||= false
      end
    end

    # <p>Information about the resize operation for the cluster.</p>
    #
    # @!attribute allow_cancel_resize
    #   <p>Indicates whether the resize operation can be canceled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute resize_type
    #   <p>The type of resize operation.</p>
    #            <p>Valid values: <code>ClassicResize</code>
    #            </p>
    #
    #   @return [String]
    #
    AwsRedshiftClusterResizeInfo = ::Struct.new(
      :allow_cancel_resize,
      :resize_type,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.allow_cancel_resize ||= false
      end
    end

    # <p>Information about the status of a cluster restore action. It only applies if the cluster
    #          was created by restoring a snapshot.</p>
    #
    # @!attribute current_restore_rate_in_mega_bytes_per_second
    #   <p>The number of megabytes per second being transferred from the backup storage. Returns
    #            the average rate for a completed backup.</p>
    #            <p>This field is only updated when you restore to DC2 and DS2 node types.</p>
    #
    #   @return [Float]
    #
    # @!attribute elapsed_time_in_seconds
    #   <p>The amount of time an in-progress restore has been running, or the amount of time it
    #            took a completed restore to finish.</p>
    #            <p>This field is only updated when you restore to DC2 and DS2 node types.</p>
    #
    #   @return [Integer]
    #
    # @!attribute estimated_time_to_completion_in_seconds
    #   <p>The estimate of the time remaining before the restore is complete. Returns 0 for a
    #            completed restore.</p>
    #            <p>This field is only updated when you restore to DC2 and DS2 node types.</p>
    #
    #   @return [Integer]
    #
    # @!attribute progress_in_mega_bytes
    #   <p>The number of megabytes that were transferred from snapshot storage.</p>
    #            <p>This field is only updated when you restore to DC2 and DS2 node types.</p>
    #
    #   @return [Integer]
    #
    # @!attribute snapshot_size_in_mega_bytes
    #   <p>The size of the set of snapshot data that was used to restore the cluster.</p>
    #            <p>This field is only updated when you restore to DC2 and DS2 node types.</p>
    #
    #   @return [Integer]
    #
    # @!attribute status
    #   <p>The status of the restore action.</p>
    #            <p>Valid values: <code>starting</code> | <code>restoring</code> | <code>completed</code> |
    #               <code>failed</code>
    #            </p>
    #
    #   @return [String]
    #
    AwsRedshiftClusterRestoreStatus = ::Struct.new(
      :current_restore_rate_in_mega_bytes_per_second,
      :elapsed_time_in_seconds,
      :estimated_time_to_completion_in_seconds,
      :progress_in_mega_bytes,
      :snapshot_size_in_mega_bytes,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.current_restore_rate_in_mega_bytes_per_second ||= 0
        self.elapsed_time_in_seconds ||= 0
        self.estimated_time_to_completion_in_seconds ||= 0
        self.progress_in_mega_bytes ||= 0
        self.snapshot_size_in_mega_bytes ||= 0
      end
    end

    # <p>A VPC security group that the cluster belongs to, if the cluster is in a VPC.</p>
    #
    # @!attribute status
    #   <p>The status of the VPC security group.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_security_group_id
    #   <p>The identifier of the VPC security group.</p>
    #
    #   @return [String]
    #
    AwsRedshiftClusterVpcSecurityGroup = ::Struct.new(
      :status,
      :vpc_security_group_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>provides information about the Amazon S3 Public Access Block configuration for accounts.</p>
    #
    # @!attribute block_public_acls
    #   <p>Indicates whether to reject calls to update an S3 bucket if the calls include a public access control list (ACL).</p>
    #
    #   @return [Boolean]
    #
    # @!attribute block_public_policy
    #   <p>Indicates whether to reject calls to update the access policy for an S3 bucket or access point if the policy allows public access.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute ignore_public_acls
    #   <p>Indicates whether Amazon S3 ignores public ACLs that are associated with an S3 bucket.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute restrict_public_buckets
    #   <p>Indicates whether to restrict access to an access point or S3 bucket that has a public policy to only Amazon Web Services service principals and authorized users within the S3 bucket owner's account.</p>
    #
    #   @return [Boolean]
    #
    AwsS3AccountPublicAccessBlockDetails = ::Struct.new(
      :block_public_acls,
      :block_public_policy,
      :ignore_public_acls,
      :restrict_public_buckets,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.block_public_acls ||= false
        self.block_public_policy ||= false
        self.ignore_public_acls ||= false
        self.restrict_public_buckets ||= false
      end
    end

    # <p>The lifecycle configuration for the objects in the S3 bucket.</p>
    #
    # @!attribute rules
    #   <p>The lifecycle rules.</p>
    #
    #   @return [Array<AwsS3BucketBucketLifecycleConfigurationRulesDetails>]
    #
    AwsS3BucketBucketLifecycleConfigurationDetails = ::Struct.new(
      :rules,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about what Amazon S3
    #          does when a multipart upload is incomplete.</p>
    #
    # @!attribute days_after_initiation
    #   <p>The number of days after which Amazon S3 cancels an incomplete multipart upload.</p>
    #
    #   @return [Integer]
    #
    AwsS3BucketBucketLifecycleConfigurationRulesAbortIncompleteMultipartUploadDetails = ::Struct.new(
      :days_after_initiation,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.days_after_initiation ||= 0
      end
    end

    # <p>Configuration for a lifecycle rule.</p>
    #
    # @!attribute abort_incomplete_multipart_upload
    #   <p>How Amazon S3 responds when a multipart upload is incomplete. Specifically, provides a number
    #            of days before Amazon S3 cancels the entire upload.</p>
    #
    #   @return [AwsS3BucketBucketLifecycleConfigurationRulesAbortIncompleteMultipartUploadDetails]
    #
    # @!attribute expiration_date
    #   <p>The date when objects are moved or deleted.</p>
    #            <p>Uses the <code>date-time</code> format specified in <a href="https://tools.ietf.org/html/rfc3339 section-5.6">RFC 3339 section 5.6, Internet
    #            Date/Time Format</a>. The value cannot contain spaces. For example,
    #            <code>2020-03-22T13:22:13.933Z</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute expiration_in_days
    #   <p>The length in days of the lifetime for objects that are subject to the rule.</p>
    #
    #   @return [Integer]
    #
    # @!attribute expired_object_delete_marker
    #   <p>Whether Amazon S3 removes a delete marker that has no noncurrent versions. If set to
    #            <code>true</code>, the delete marker is expired. If set to <code>false</code>, the policy
    #            takes no action.</p>
    #            <p>If you provide <code>ExpiredObjectDeleteMarker</code>, you cannot provide
    #            <code>ExpirationInDays</code> or <code>ExpirationDate</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute filter
    #   <p>Identifies the objects that a rule applies to.</p>
    #
    #   @return [AwsS3BucketBucketLifecycleConfigurationRulesFilterDetails]
    #
    # @!attribute id
    #   <p>The unique identifier of the rule.</p>
    #
    #   @return [String]
    #
    # @!attribute noncurrent_version_expiration_in_days
    #   <p>The number of days that an object is noncurrent before Amazon S3 can perform the associated action.</p>
    #
    #   @return [Integer]
    #
    # @!attribute noncurrent_version_transitions
    #   <p>Transition rules that describe when noncurrent objects transition to a specified storage class.</p>
    #
    #   @return [Array<AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails>]
    #
    # @!attribute prefix
    #   <p>A prefix that identifies one or more objects that the rule applies to.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the rule. Indicates whether the rule is currently being applied.</p>
    #
    #   @return [String]
    #
    # @!attribute transitions
    #   <p>Transition rules that indicate when objects transition to a specified storage class.</p>
    #
    #   @return [Array<AwsS3BucketBucketLifecycleConfigurationRulesTransitionsDetails>]
    #
    AwsS3BucketBucketLifecycleConfigurationRulesDetails = ::Struct.new(
      :abort_incomplete_multipart_upload,
      :expiration_date,
      :expiration_in_days,
      :expired_object_delete_marker,
      :filter,
      :id,
      :noncurrent_version_expiration_in_days,
      :noncurrent_version_transitions,
      :prefix,
      :status,
      :transitions,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.expiration_in_days ||= 0
        self.expired_object_delete_marker ||= false
        self.noncurrent_version_expiration_in_days ||= 0
      end
    end

    # <p>Identifies the objects that a rule applies to.</p>
    #
    # @!attribute predicate
    #   <p>The configuration for the filter.</p>
    #
    #   @return [AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateDetails]
    #
    AwsS3BucketBucketLifecycleConfigurationRulesFilterDetails = ::Struct.new(
      :predicate,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The configuration for the filter.</p>
    #
    # @!attribute operands
    #   <p>The values to use for the filter.</p>
    #
    #   @return [Array<AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsDetails>]
    #
    # @!attribute prefix
    #   <p>A prefix filter.</p>
    #
    #   @return [String]
    #
    # @!attribute tag
    #   <p>A tag filter.</p>
    #
    #   @return [AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateTagDetails]
    #
    # @!attribute type
    #   <p>Whether to use <code>AND</code> or <code>OR</code> to join the operands.</p>
    #
    #   @return [String]
    #
    AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateDetails = ::Struct.new(
      :operands,
      :prefix,
      :tag,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A value to use for the filter.</p>
    #
    # @!attribute prefix
    #   <p>Prefix text for matching objects.</p>
    #
    #   @return [String]
    #
    # @!attribute tag
    #   <p>A tag that is assigned to matching objects.</p>
    #
    #   @return [AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsTagDetails]
    #
    # @!attribute type
    #   <p>The type of filter value.</p>
    #
    #   @return [String]
    #
    AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsDetails = ::Struct.new(
      :prefix,
      :tag,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A tag that is assigned to matching objects.</p>
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
    AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsTagDetails = ::Struct.new(
      :key,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A tag filter.</p>
    #
    # @!attribute key
    #   <p>The tag key.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The tag value</p>
    #
    #   @return [String]
    #
    AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateTagDetails = ::Struct.new(
      :key,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A transition rule that describes when noncurrent objects transition to a specified storage class.</p>
    #
    # @!attribute days
    #   <p>The number of days that an object is noncurrent before Amazon S3 can perform the associated action.</p>
    #
    #   @return [Integer]
    #
    # @!attribute storage_class
    #   <p>The class of storage to change the object to after the object is noncurrent for the specified number of days.</p>
    #
    #   @return [String]
    #
    AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails = ::Struct.new(
      :days,
      :storage_class,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.days ||= 0
      end
    end

    # <p>A rule for when objects transition to specific storage classes.</p>
    #
    # @!attribute date
    #   <p>A date on which to transition objects to the specified storage class. If you provide <code>Date</code>, you cannot provide <code>Days</code>.</p>
    #            <p>Uses the <code>date-time</code> format specified in <a href="https://tools.ietf.org/html/rfc3339 section-5.6">RFC 3339 section 5.6, Internet
    #            Date/Time Format</a>. The value cannot contain spaces. For example,
    #            <code>2020-03-22T13:22:13.933Z</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute days
    #   <p>The number of days after which to transition the object to the specified storage class. If you provide <code>Days</code>, you cannot provide <code>Date</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute storage_class
    #   <p>The storage class to transition the object to.</p>
    #
    #   @return [String]
    #
    AwsS3BucketBucketLifecycleConfigurationRulesTransitionsDetails = ::Struct.new(
      :date,
      :days,
      :storage_class,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.days ||= 0
      end
    end

    # <p>Describes the versioning state of an S3 bucket.</p>
    #
    # @!attribute is_mfa_delete_enabled
    #   <p>Specifies whether MFA delete is currently enabled in the S3 bucket versioning configuration. If the S3 bucket was never configured with MFA delete, then this attribute is not included.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute status
    #   <p>The versioning status of the S3 bucket.</p>
    #
    #   @return [String]
    #
    AwsS3BucketBucketVersioningConfiguration = ::Struct.new(
      :is_mfa_delete_enabled,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.is_mfa_delete_enabled ||= false
      end
    end

    # <p>The details of an Amazon S3 bucket.</p>
    #
    # @!attribute owner_id
    #   <p>The canonical user ID of the owner of the S3 bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute owner_name
    #   <p>The display name of the owner of the S3 bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute owner_account_id
    #   <p>The Amazon Web Services account identifier of the account that owns the S3 bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>Indicates when the S3 bucket was created.</p>
    #            <p>Uses the <code>date-time</code> format specified in <a href="https://tools.ietf.org/html/rfc3339 section-5.6">RFC 3339 section 5.6, Internet
    #               Date/Time Format</a>. The value cannot contain spaces. For example,
    #               <code>2020-03-22T13:22:13.933Z</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute server_side_encryption_configuration
    #   <p>The encryption rules that are applied to the S3 bucket.</p>
    #
    #   @return [AwsS3BucketServerSideEncryptionConfiguration]
    #
    # @!attribute bucket_lifecycle_configuration
    #   <p>The lifecycle configuration for objects in the S3 bucket.</p>
    #
    #   @return [AwsS3BucketBucketLifecycleConfigurationDetails]
    #
    # @!attribute public_access_block_configuration
    #   <p>Provides information about the Amazon S3 Public Access Block configuration for the S3 bucket.</p>
    #
    #   @return [AwsS3AccountPublicAccessBlockDetails]
    #
    # @!attribute access_control_list
    #   <p>The access control list for the S3 bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute bucket_logging_configuration
    #   <p>The logging configuration for the S3 bucket.</p>
    #
    #   @return [AwsS3BucketLoggingConfiguration]
    #
    # @!attribute bucket_website_configuration
    #   <p>The website configuration parameters for the S3 bucket.</p>
    #
    #   @return [AwsS3BucketWebsiteConfiguration]
    #
    # @!attribute bucket_notification_configuration
    #   <p>The notification configuration for the S3 bucket.</p>
    #
    #   @return [AwsS3BucketNotificationConfiguration]
    #
    # @!attribute bucket_versioning_configuration
    #   <p>The versioning state of an S3 bucket.</p>
    #
    #   @return [AwsS3BucketBucketVersioningConfiguration]
    #
    AwsS3BucketDetails = ::Struct.new(
      :owner_id,
      :owner_name,
      :owner_account_id,
      :created_at,
      :server_side_encryption_configuration,
      :bucket_lifecycle_configuration,
      :public_access_block_configuration,
      :access_control_list,
      :bucket_logging_configuration,
      :bucket_website_configuration,
      :bucket_notification_configuration,
      :bucket_versioning_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about logging for
    #          the S3 bucket</p>
    #
    # @!attribute destination_bucket_name
    #   <p>The name of the S3 bucket where log files for the S3 bucket are stored.</p>
    #
    #   @return [String]
    #
    # @!attribute log_file_prefix
    #   <p>The prefix added to log files for the S3 bucket.</p>
    #
    #   @return [String]
    #
    AwsS3BucketLoggingConfiguration = ::Struct.new(
      :destination_bucket_name,
      :log_file_prefix,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The notification
    #          configuration for the S3 bucket.</p>
    #
    # @!attribute configurations
    #   <p>Configurations for S3 bucket notifications.</p>
    #
    #   @return [Array<AwsS3BucketNotificationConfigurationDetail>]
    #
    AwsS3BucketNotificationConfiguration = ::Struct.new(
      :configurations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details for an S3 bucket notification configuration.</p>
    #
    # @!attribute events
    #   <p>The list of events that trigger a notification.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute filter
    #   <p>The filters that determine which S3 buckets generate notifications.</p>
    #
    #   @return [AwsS3BucketNotificationConfigurationFilter]
    #
    # @!attribute destination
    #   <p>The ARN of the Lambda function, Amazon SQS queue, or Amazon SNS topic that generates the
    #            notification.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>Indicates the type of notification. Notifications can be generated using Lambda functions,
    #            Amazon SQS queues or Amazon SNS topics.</p>
    #
    #   @return [String]
    #
    AwsS3BucketNotificationConfigurationDetail = ::Struct.new(
      :events,
      :filter,
      :destination,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Filtering information for the notifications. The
    #          filtering is based on Amazon S3 key names.</p>
    #
    # @!attribute s3_key_filter
    #   <p>Details for an Amazon S3 filter.</p>
    #
    #   @return [AwsS3BucketNotificationConfigurationS3KeyFilter]
    #
    AwsS3BucketNotificationConfigurationFilter = ::Struct.new(
      :s3_key_filter,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details for an Amazon S3 filter.</p>
    #
    # @!attribute filter_rules
    #   <p>The filter rules for the filter.</p>
    #
    #   @return [Array<AwsS3BucketNotificationConfigurationS3KeyFilterRule>]
    #
    AwsS3BucketNotificationConfigurationS3KeyFilter = ::Struct.new(
      :filter_rules,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details for a filter rule.</p>
    #
    # @!attribute name
    #   <p>Indicates whether the filter is based on the prefix or suffix of the Amazon S3 key.</p>
    #
    #   Enum, one of: ["Prefix", "Suffix"]
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The filter value.</p>
    #
    #   @return [String]
    #
    AwsS3BucketNotificationConfigurationS3KeyFilterRule = ::Struct.new(
      :name,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AwsS3BucketNotificationConfigurationS3KeyFilterRuleName
    #
    module AwsS3BucketNotificationConfigurationS3KeyFilterRuleName
      # No documentation available.
      #
      PREFIX = "Prefix"

      # No documentation available.
      #
      SUFFIX = "Suffix"
    end

    # <p>Specifies the default server-side encryption to apply to new objects in the
    #          bucket.</p>
    #
    # @!attribute sse_algorithm
    #   <p>Server-side encryption algorithm to use for the default encryption.</p>
    #
    #   @return [String]
    #
    # @!attribute kms_master_key_id
    #   <p>KMS key ID to use for the default encryption.</p>
    #
    #   @return [String]
    #
    AwsS3BucketServerSideEncryptionByDefault = ::Struct.new(
      :sse_algorithm,
      :kms_master_key_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The encryption configuration for the S3 bucket.</p>
    #
    # @!attribute rules
    #   <p>The encryption rules that are applied to the S3 bucket.</p>
    #
    #   @return [Array<AwsS3BucketServerSideEncryptionRule>]
    #
    AwsS3BucketServerSideEncryptionConfiguration = ::Struct.new(
      :rules,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An encryption rule to apply to the S3 bucket.</p>
    #
    # @!attribute apply_server_side_encryption_by_default
    #   <p>Specifies the default server-side encryption to apply to new objects in the bucket. If a
    #               <code>PUT</code> object request doesn't specify any server-side encryption, this default
    #            encryption is applied.</p>
    #
    #   @return [AwsS3BucketServerSideEncryptionByDefault]
    #
    AwsS3BucketServerSideEncryptionRule = ::Struct.new(
      :apply_server_side_encryption_by_default,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Website parameters for the S3
    #          bucket.</p>
    #
    # @!attribute error_document
    #   <p>The name of the error document for the website.</p>
    #
    #   @return [String]
    #
    # @!attribute index_document_suffix
    #   <p>The name of the index document for the website.</p>
    #
    #   @return [String]
    #
    # @!attribute redirect_all_requests_to
    #   <p>The redirect behavior for requests to the website.</p>
    #
    #   @return [AwsS3BucketWebsiteConfigurationRedirectTo]
    #
    # @!attribute routing_rules
    #   <p>The rules for applying redirects for requests to the website.</p>
    #
    #   @return [Array<AwsS3BucketWebsiteConfigurationRoutingRule>]
    #
    AwsS3BucketWebsiteConfiguration = ::Struct.new(
      :error_document,
      :index_document_suffix,
      :redirect_all_requests_to,
      :routing_rules,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The redirect behavior for requests
    #          to the website.</p>
    #
    # @!attribute hostname
    #   <p>The name of the host to redirect requests to.</p>
    #
    #   @return [String]
    #
    # @!attribute protocol
    #   <p>The protocol to use when redirecting requests. By default, uses the same protocol as the
    #            original request.</p>
    #
    #   @return [String]
    #
    AwsS3BucketWebsiteConfigurationRedirectTo = ::Struct.new(
      :hostname,
      :protocol,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A rule for redirecting requests
    #          to the website.</p>
    #
    # @!attribute condition
    #   <p>Provides the condition that must be met in order to apply the routing rule.</p>
    #
    #   @return [AwsS3BucketWebsiteConfigurationRoutingRuleCondition]
    #
    # @!attribute redirect
    #   <p>Provides the rules to redirect the request if the condition in <code>Condition</code> is
    #            met.</p>
    #
    #   @return [AwsS3BucketWebsiteConfigurationRoutingRuleRedirect]
    #
    AwsS3BucketWebsiteConfigurationRoutingRule = ::Struct.new(
      :condition,
      :redirect,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The condition that must be met in order to apply the routing rule.</p>
    #
    # @!attribute http_error_code_returned_equals
    #   <p>Indicates to redirect the request if the HTTP error code matches this value.</p>
    #
    #   @return [String]
    #
    # @!attribute key_prefix_equals
    #   <p>Indicates to redirect the request if the key prefix matches this value.</p>
    #
    #   @return [String]
    #
    AwsS3BucketWebsiteConfigurationRoutingRuleCondition = ::Struct.new(
      :http_error_code_returned_equals,
      :key_prefix_equals,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The rules to redirect the request if the condition in <code>Condition</code> is
    #          met.</p>
    #
    # @!attribute hostname
    #   <p>The host name to use in the redirect request.</p>
    #
    #   @return [String]
    #
    # @!attribute http_redirect_code
    #   <p>The HTTP redirect code to use in the response.</p>
    #
    #   @return [String]
    #
    # @!attribute protocol
    #   <p>The protocol to use to redirect the request. By default, uses the protocol from the
    #            original request.</p>
    #
    #   @return [String]
    #
    # @!attribute replace_key_prefix_with
    #   <p>The object key prefix to use in the redirect request.</p>
    #            <p>Cannot be provided if <code>ReplaceKeyWith</code> is present.</p>
    #
    #   @return [String]
    #
    # @!attribute replace_key_with
    #   <p>The specific object key to use in the redirect request.</p>
    #            <p>Cannot be provided if <code>ReplaceKeyPrefixWith</code> is present.</p>
    #
    #   @return [String]
    #
    AwsS3BucketWebsiteConfigurationRoutingRuleRedirect = ::Struct.new(
      :hostname,
      :http_redirect_code,
      :protocol,
      :replace_key_prefix_with,
      :replace_key_with,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about an Amazon S3 object.</p>
    #
    # @!attribute last_modified
    #   <p>Indicates when the object was last modified.</p>
    #            <p>Uses the <code>date-time</code> format specified in <a href="https://tools.ietf.org/html/rfc3339 section-5.6">RFC 3339 section 5.6, Internet
    #               Date/Time Format</a>. The value cannot contain spaces. For example,
    #               <code>2020-03-22T13:22:13.933Z</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute e_tag
    #   <p>The opaque identifier assigned by a web server to a specific version of a resource found
    #            at a URL.</p>
    #
    #   @return [String]
    #
    # @!attribute version_id
    #   <p>The version of the object.</p>
    #
    #   @return [String]
    #
    # @!attribute content_type
    #   <p>A standard MIME type describing the format of the object data.</p>
    #
    #   @return [String]
    #
    # @!attribute server_side_encryption
    #   <p>If the object is stored using server-side encryption, the value of the server-side
    #            encryption algorithm used when storing this object in Amazon S3.</p>
    #
    #   @return [String]
    #
    # @!attribute ssekms_key_id
    #   <p>The identifier of the KMS symmetric customer managed key that was used for the object.</p>
    #
    #   @return [String]
    #
    AwsS3ObjectDetails = ::Struct.new(
      :last_modified,
      :e_tag,
      :version_id,
      :content_type,
      :server_side_encryption,
      :ssekms_key_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about an Secrets Manager secret.</p>
    #
    # @!attribute rotation_rules
    #   <p>Defines the rotation schedule for the secret.</p>
    #
    #   @return [AwsSecretsManagerSecretRotationRules]
    #
    # @!attribute rotation_occurred_within_frequency
    #   <p>Whether the rotation occurred within the specified rotation frequency.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute kms_key_id
    #   <p>The ARN, Key ID, or alias of the KMS key used to encrypt the
    #               <code>SecretString</code> or <code>SecretBinary</code> values for versions of this
    #            secret.</p>
    #
    #   @return [String]
    #
    # @!attribute rotation_enabled
    #   <p>Whether rotation is enabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute rotation_lambda_arn
    #   <p>The ARN of the Lambda function that rotates the secret.</p>
    #
    #   @return [String]
    #
    # @!attribute deleted
    #   <p>Whether the secret is deleted.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute name
    #   <p>The name of the secret.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The user-provided description of the secret.</p>
    #
    #   @return [String]
    #
    AwsSecretsManagerSecretDetails = ::Struct.new(
      :rotation_rules,
      :rotation_occurred_within_frequency,
      :kms_key_id,
      :rotation_enabled,
      :rotation_lambda_arn,
      :deleted,
      :name,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.rotation_occurred_within_frequency ||= false
        self.rotation_enabled ||= false
        self.deleted ||= false
      end
    end

    # <p>Defines the rotation schedule for the secret.</p>
    #
    # @!attribute automatically_after_days
    #   <p>The number of days after the previous rotation to rotate the secret.</p>
    #
    #   @return [Integer]
    #
    AwsSecretsManagerSecretRotationRules = ::Struct.new(
      :automatically_after_days,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.automatically_after_days ||= 0
      end
    end

    # <p>Provides consistent format for the contents of the Security Hub-aggregated findings.
    #          <code>AwsSecurityFinding</code> format enables you to share findings between Amazon Web Services
    #          security services and third-party solutions, and security standards checks.</p>
    #          <note>
    #             <p>A finding is a potential security issue generated either by Amazon Web Services services or by the integrated third-party
    #             solutions and standards checks.</p>
    #          </note>
    #
    # @!attribute schema_version
    #   <p>The schema version that a finding is formatted for.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The security findings provider-specific identifier for a finding.</p>
    #
    #   @return [String]
    #
    # @!attribute product_arn
    #   <p>The ARN generated by Security Hub that uniquely identifies a product that generates findings.
    #            This can be the ARN for a third-party product that is integrated with Security Hub, or the ARN for
    #            a custom integration.</p>
    #
    #   @return [String]
    #
    # @!attribute product_name
    #   <p>The name of the product that generated the finding.</p>
    #            <p>Security Hub populates this attribute automatically for each finding. You cannot update this attribute with <code>BatchImportFindings</code> or <code>BatchUpdateFindings</code>. The exception to this is a custom integration.</p>
    #            <p>When you use the Security Hub console or API to filter findings by product name, you use this attribute.</p>
    #
    #   @return [String]
    #
    # @!attribute company_name
    #   <p>The name of the company for the product that generated the finding.</p>
    #            <p>Security Hub populates this attribute automatically for each finding. You cannot update this attribute with <code>BatchImportFindings</code> or <code>BatchUpdateFindings</code>. The exception to this is a custom integration.</p>
    #            <p>When you use the Security Hub console or API to filter findings by company name, you use this attribute.</p>
    #
    #   @return [String]
    #
    # @!attribute region
    #   <p>The Region from which the finding was generated.</p>
    #            <p>Security Hub populates this attribute automatically for each finding. You cannot update it using <code>BatchImportFindings</code> or <code>BatchUpdateFindings</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute generator_id
    #   <p>The identifier for the solution-specific component (a discrete unit of logic) that
    #            generated a finding. In various security-findings providers' solutions, this generator can
    #            be called a rule, a check, a detector, a plugin, etc. </p>
    #
    #   @return [String]
    #
    # @!attribute aws_account_id
    #   <p>The Amazon Web Services account ID that a finding is generated in.</p>
    #
    #   @return [String]
    #
    # @!attribute types
    #   <p>One or more finding types in the format of <code>namespace/category/classifier</code>
    #            that classify a finding.</p>
    #            <p>Valid namespace values are: Software and Configuration Checks | TTPs | Effects | Unusual
    #            Behaviors | Sensitive Data Identifications</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute first_observed_at
    #   <p>Indicates when the security-findings provider first observed the potential security
    #            issue that a finding captured.</p>
    #            <p>Uses the <code>date-time</code> format specified in <a href="https://tools.ietf.org/html/rfc3339 section-5.6">RFC 3339 section 5.6, Internet
    #               Date/Time Format</a>. The value cannot contain spaces. For example,
    #               <code>2020-03-22T13:22:13.933Z</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute last_observed_at
    #   <p>Indicates when the security-findings provider most recently observed the potential
    #            security issue that a finding captured.</p>
    #            <p>Uses the <code>date-time</code> format specified in <a href="https://tools.ietf.org/html/rfc3339 section-5.6">RFC 3339 section 5.6, Internet
    #               Date/Time Format</a>. The value cannot contain spaces. For example,
    #               <code>2020-03-22T13:22:13.933Z</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>Indicates when the security-findings provider created the potential security issue that
    #            a finding captured.</p>
    #            <p>Uses the <code>date-time</code> format specified in <a href="https://tools.ietf.org/html/rfc3339 section-5.6">RFC 3339 section 5.6, Internet
    #               Date/Time Format</a>. The value cannot contain spaces. For example,
    #               <code>2020-03-22T13:22:13.933Z</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute updated_at
    #   <p>Indicates when the security-findings provider last updated the finding record.</p>
    #            <p>Uses the <code>date-time</code> format specified in <a href="https://tools.ietf.org/html/rfc3339 section-5.6">RFC 3339 section 5.6, Internet
    #               Date/Time Format</a>. The value cannot contain spaces. For example,
    #               <code>2020-03-22T13:22:13.933Z</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute severity
    #   <p>A finding's severity.</p>
    #
    #   @return [Severity]
    #
    # @!attribute confidence
    #   <p>A finding's confidence. Confidence is defined as the likelihood that a finding
    #            accurately identifies the behavior or issue that it was intended to identify.</p>
    #            <p>Confidence is scored on a 0-100 basis using a ratio scale, where 0 means zero percent
    #            confidence and 100 means 100 percent confidence.</p>
    #
    #   @return [Integer]
    #
    # @!attribute criticality
    #   <p>The level of importance assigned to the resources associated with the finding.</p>
    #            <p>A score of 0 means that the underlying resources have no criticality, and a score of 100
    #            is reserved for the most critical resources.</p>
    #
    #   @return [Integer]
    #
    # @!attribute title
    #   <p>A finding's title.</p>
    #            <note>
    #               <p>In this release, <code>Title</code> is a required property.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A finding's description.</p>
    #            <note>
    #               <p>In this release, <code>Description</code> is a required property.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute remediation
    #   <p>A data type that describes the remediation options for a finding.</p>
    #
    #   @return [Remediation]
    #
    # @!attribute source_url
    #   <p>A URL that links to a page about the current finding in the security-findings provider's
    #            solution.</p>
    #
    #   @return [String]
    #
    # @!attribute product_fields
    #   <p>A data type where security-findings providers can include additional solution-specific
    #            details that aren't part of the defined <code>AwsSecurityFinding</code> format.</p>
    #            <p>Can contain up to 50 key-value pairs. For each key-value pair, the key can contain up to 128 characters, and the value can contain up to 2048 characters.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute user_defined_fields
    #   <p>A list of name/value string pairs associated with the finding. These are custom,
    #            user-defined fields added to a finding. </p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute malware
    #   <p>A list of malware related to a finding.</p>
    #
    #   @return [Array<Malware>]
    #
    # @!attribute network
    #   <p>The details of network-related information about a finding.</p>
    #
    #   @return [Network]
    #
    # @!attribute network_path
    #   <p>Provides information about a network path that is relevant to a finding. Each entry
    #            under <code>NetworkPath</code> represents a component of that path.</p>
    #
    #   @return [Array<NetworkPathComponent>]
    #
    # @!attribute process
    #   <p>The details of process-related information about a finding.</p>
    #
    #   @return [ProcessDetails]
    #
    # @!attribute threat_intel_indicators
    #   <p>Threat intelligence details related to a finding.</p>
    #
    #   @return [Array<ThreatIntelIndicator>]
    #
    # @!attribute resources
    #   <p>A set of resource data types that describe the resources that the finding refers
    #            to.</p>
    #
    #   @return [Array<Resource>]
    #
    # @!attribute compliance
    #   <p>This data type is exclusive to findings that are generated as the result of a check run
    #            against a specific rule in a supported security standard, such as CIS Amazon Web Services Foundations.
    #            Contains security standard-related finding details.</p>
    #
    #   @return [Compliance]
    #
    # @!attribute verification_state
    #   <p>Indicates the veracity of a finding. </p>
    #
    #   Enum, one of: ["UNKNOWN", "TRUE_POSITIVE", "FALSE_POSITIVE", "BENIGN_POSITIVE"]
    #
    #   @return [String]
    #
    # @!attribute workflow_state
    #   <p>The workflow state of a finding. </p>
    #
    #   Enum, one of: ["NEW", "ASSIGNED", "IN_PROGRESS", "DEFERRED", "RESOLVED"]
    #
    #   @deprecated
    #     This filter is deprecated. Instead, use SeverityLabel or FindingProviderFieldsSeverityLabel.
    #
    #   @return [String]
    #
    # @!attribute workflow
    #   <p>Provides information about the status of the investigation into a finding.</p>
    #
    #   @return [Workflow]
    #
    # @!attribute record_state
    #   <p>The record state of a finding.</p>
    #
    #   Enum, one of: ["ACTIVE", "ARCHIVED"]
    #
    #   @return [String]
    #
    # @!attribute related_findings
    #   <p>A list of related findings.</p>
    #
    #   @return [Array<RelatedFinding>]
    #
    # @!attribute note
    #   <p>A user-defined note added to a finding.</p>
    #
    #   @return [Note]
    #
    # @!attribute vulnerabilities
    #   <p>Provides a list of vulnerabilities associated with the findings.</p>
    #
    #   @return [Array<Vulnerability>]
    #
    # @!attribute patch_summary
    #   <p>Provides an overview of the patch compliance status for an instance against a selected
    #            compliance standard.</p>
    #
    #   @return [PatchSummary]
    #
    # @!attribute action
    #   <p>Provides details about an action that affects or that was taken on a resource.</p>
    #
    #   @return [Action]
    #
    # @!attribute finding_provider_fields
    #   <p>In a <code>BatchImportFindings</code> request, finding providers use <code>FindingProviderFields</code> to provide and update their own values for confidence, criticality, related findings, severity, and types.</p>
    #
    #   @return [FindingProviderFields]
    #
    # @!attribute sample
    #   <p>Indicates whether the finding is a sample finding.</p>
    #
    #   @return [Boolean]
    #
    AwsSecurityFinding = ::Struct.new(
      :schema_version,
      :id,
      :product_arn,
      :product_name,
      :company_name,
      :region,
      :generator_id,
      :aws_account_id,
      :types,
      :first_observed_at,
      :last_observed_at,
      :created_at,
      :updated_at,
      :severity,
      :confidence,
      :criticality,
      :title,
      :description,
      :remediation,
      :source_url,
      :product_fields,
      :user_defined_fields,
      :malware,
      :network,
      :network_path,
      :process,
      :threat_intel_indicators,
      :resources,
      :compliance,
      :verification_state,
      :workflow_state,
      :workflow,
      :record_state,
      :related_findings,
      :note,
      :vulnerabilities,
      :patch_summary,
      :action,
      :finding_provider_fields,
      :sample,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.confidence ||= 0
        self.criticality ||= 0
        self.sample ||= false
      end
    end

    # <p>A collection of attributes that are applied to all active Security Hub-aggregated findings and
    #          that result in a subset of findings that are included in this insight.</p>
    #          <p>You can filter by up to 10 finding attributes. For each attribute, you can provide up to
    #          20 filter values.</p>
    #
    # @!attribute product_arn
    #   <p>The ARN generated by Security Hub that uniquely identifies a third-party company
    #            (security findings provider) after this provider's product (solution that generates
    #            findings) is registered with Security Hub.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute aws_account_id
    #   <p>The Amazon Web Services account ID that a finding is generated in.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute id
    #   <p>The security findings provider-specific identifier for a finding.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute generator_id
    #   <p>The identifier for the solution-specific component (a discrete unit of logic) that
    #            generated a finding. In various security-findings providers' solutions, this generator can
    #            be called a rule, a check, a detector, a plugin, etc.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute region
    #   <p>The Region from which the finding was generated.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute type
    #   <p>A finding type in the format of <code>namespace/category/classifier</code> that
    #            classifies a finding.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute first_observed_at
    #   <p>An ISO8601-formatted timestamp that indicates when the security-findings provider first
    #            observed the potential security issue that a finding captured.</p>
    #
    #   @return [Array<DateFilter>]
    #
    # @!attribute last_observed_at
    #   <p>An ISO8601-formatted timestamp that indicates when the security-findings provider most
    #            recently observed the potential security issue that a finding captured.</p>
    #
    #   @return [Array<DateFilter>]
    #
    # @!attribute created_at
    #   <p>An ISO8601-formatted timestamp that indicates when the security-findings provider
    #            captured the potential security issue that a finding captured.</p>
    #
    #   @return [Array<DateFilter>]
    #
    # @!attribute updated_at
    #   <p>An ISO8601-formatted timestamp that indicates when the security-findings provider last
    #            updated the finding record. </p>
    #
    #   @return [Array<DateFilter>]
    #
    # @!attribute severity_product
    #   <p>The native severity as defined by the security-findings provider's solution that
    #            generated the finding.</p>
    #
    #   @deprecated
    #     This filter is deprecated. Instead, use FindingProviderSeverityOriginal.
    #
    #   @return [Array<NumberFilter>]
    #
    # @!attribute severity_normalized
    #   <p>The normalized severity of a finding.</p>
    #
    #   @deprecated
    #     This filter is deprecated. Instead, use SeverityLabel or FindingProviderFieldsSeverityLabel.
    #
    #   @return [Array<NumberFilter>]
    #
    # @!attribute severity_label
    #   <p>The label of a finding's severity.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute confidence
    #   <p>A finding's confidence. Confidence is defined as the likelihood that a finding
    #            accurately identifies the behavior or issue that it was intended to identify.</p>
    #            <p>Confidence is scored on a 0-100 basis using a ratio scale, where 0 means zero percent
    #            confidence and 100 means 100 percent confidence.</p>
    #
    #   @return [Array<NumberFilter>]
    #
    # @!attribute criticality
    #   <p>The level of importance assigned to the resources associated with the finding.</p>
    #            <p>A score of 0 means that the underlying resources have no criticality, and a score of 100
    #            is reserved for the most critical resources.</p>
    #
    #   @return [Array<NumberFilter>]
    #
    # @!attribute title
    #   <p>A finding's title.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute description
    #   <p>A finding's description.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute recommendation_text
    #   <p>The recommendation of what to do about the issue described in a finding.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute source_url
    #   <p>A URL that links to a page about the current finding in the security-findings provider's
    #            solution.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute product_fields
    #   <p>A data type where security-findings providers can include additional solution-specific
    #            details that aren't part of the defined <code>AwsSecurityFinding</code> format.</p>
    #
    #   @return [Array<MapFilter>]
    #
    # @!attribute product_name
    #   <p>The name of the solution (product) that generates findings.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute company_name
    #   <p>The name of the findings provider (company) that owns the solution (product) that
    #            generates findings.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute user_defined_fields
    #   <p>A list of name/value string pairs associated with the finding. These are custom,
    #            user-defined fields added to a finding. </p>
    #
    #   @return [Array<MapFilter>]
    #
    # @!attribute malware_name
    #   <p>The name of the malware that was observed.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute malware_type
    #   <p>The type of the malware that was observed.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute malware_path
    #   <p>The filesystem path of the malware that was observed.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute malware_state
    #   <p>The state of the malware that was observed.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute network_direction
    #   <p>Indicates the direction of network traffic associated with a finding.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute network_protocol
    #   <p>The protocol of network-related information about a finding.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute network_source_ip_v4
    #   <p>The source IPv4 address of network-related information about a finding.</p>
    #
    #   @return [Array<IpFilter>]
    #
    # @!attribute network_source_ip_v6
    #   <p>The source IPv6 address of network-related information about a finding.</p>
    #
    #   @return [Array<IpFilter>]
    #
    # @!attribute network_source_port
    #   <p>The source port of network-related information about a finding.</p>
    #
    #   @return [Array<NumberFilter>]
    #
    # @!attribute network_source_domain
    #   <p>The source domain of network-related information about a finding.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute network_source_mac
    #   <p>The source media access control (MAC) address of network-related information about a
    #            finding.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute network_destination_ip_v4
    #   <p>The destination IPv4 address of network-related information about a finding.</p>
    #
    #   @return [Array<IpFilter>]
    #
    # @!attribute network_destination_ip_v6
    #   <p>The destination IPv6 address of network-related information about a finding.</p>
    #
    #   @return [Array<IpFilter>]
    #
    # @!attribute network_destination_port
    #   <p>The destination port of network-related information about a finding.</p>
    #
    #   @return [Array<NumberFilter>]
    #
    # @!attribute network_destination_domain
    #   <p>The destination domain of network-related information about a finding.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute process_name
    #   <p>The name of the process.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute process_path
    #   <p>The path to the process executable.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute process_pid
    #   <p>The process ID.</p>
    #
    #   @return [Array<NumberFilter>]
    #
    # @!attribute process_parent_pid
    #   <p>The parent process ID.</p>
    #
    #   @return [Array<NumberFilter>]
    #
    # @!attribute process_launched_at
    #   <p>The date/time that the process was launched.</p>
    #
    #   @return [Array<DateFilter>]
    #
    # @!attribute process_terminated_at
    #   <p>The date/time that the process was terminated.</p>
    #
    #   @return [Array<DateFilter>]
    #
    # @!attribute threat_intel_indicator_type
    #   <p>The type of a threat intelligence indicator.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute threat_intel_indicator_value
    #   <p>The value of a threat intelligence indicator.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute threat_intel_indicator_category
    #   <p>The category of a threat intelligence indicator.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute threat_intel_indicator_last_observed_at
    #   <p>The date/time of the last observation of a threat intelligence indicator.</p>
    #
    #   @return [Array<DateFilter>]
    #
    # @!attribute threat_intel_indicator_source
    #   <p>The source of the threat intelligence.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute threat_intel_indicator_source_url
    #   <p>The URL for more details from the source of the threat intelligence.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute resource_type
    #   <p>Specifies the type of the resource that details are provided for.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute resource_id
    #   <p>The canonical identifier for the given resource type.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute resource_partition
    #   <p>The canonical Amazon Web Services partition name that the Region is assigned to.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute resource_region
    #   <p>The canonical Amazon Web Services external Region name where this resource is located.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute resource_tags
    #   <p>A list of Amazon Web Services tags associated with a resource at the time the finding was
    #            processed.</p>
    #
    #   @return [Array<MapFilter>]
    #
    # @!attribute resource_aws_ec2_instance_type
    #   <p>The instance type of the instance.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute resource_aws_ec2_instance_image_id
    #   <p>The Amazon Machine Image (AMI) ID of the instance.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute resource_aws_ec2_instance_ip_v4_addresses
    #   <p>The IPv4 addresses associated with the instance.</p>
    #
    #   @return [Array<IpFilter>]
    #
    # @!attribute resource_aws_ec2_instance_ip_v6_addresses
    #   <p>The IPv6 addresses associated with the instance.</p>
    #
    #   @return [Array<IpFilter>]
    #
    # @!attribute resource_aws_ec2_instance_key_name
    #   <p>The key name associated with the instance.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute resource_aws_ec2_instance_iam_instance_profile_arn
    #   <p>The IAM profile ARN of the instance.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute resource_aws_ec2_instance_vpc_id
    #   <p>The identifier of the VPC that the instance was launched in.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute resource_aws_ec2_instance_subnet_id
    #   <p>The identifier of the subnet that the instance was launched in.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute resource_aws_ec2_instance_launched_at
    #   <p>The date and time the instance was launched.</p>
    #
    #   @return [Array<DateFilter>]
    #
    # @!attribute resource_aws_s3_bucket_owner_id
    #   <p>The canonical user ID of the owner of the S3 bucket.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute resource_aws_s3_bucket_owner_name
    #   <p>The display name of the owner of the S3 bucket.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute resource_aws_iam_access_key_user_name
    #   <p>The user associated with the IAM access key related to a finding.</p>
    #
    #   @deprecated
    #     This filter is deprecated. Instead, use ResourceAwsIamAccessKeyPrincipalName.
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute resource_aws_iam_access_key_principal_name
    #   <p>The name of the principal that is associated with an IAM access key.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute resource_aws_iam_access_key_status
    #   <p>The status of the IAM access key related to a finding.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute resource_aws_iam_access_key_created_at
    #   <p>The creation date/time of the IAM access key related to a finding.</p>
    #
    #   @return [Array<DateFilter>]
    #
    # @!attribute resource_aws_iam_user_user_name
    #   <p>The name of an IAM user.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute resource_container_name
    #   <p>The name of the container related to a finding.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute resource_container_image_id
    #   <p>The identifier of the image related to a finding.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute resource_container_image_name
    #   <p>The name of the image related to a finding.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute resource_container_launched_at
    #   <p>The date/time that the container was started.</p>
    #
    #   @return [Array<DateFilter>]
    #
    # @!attribute resource_details_other
    #   <p>The details of a resource that doesn't have a specific subfield for the resource type
    #            defined.</p>
    #
    #   @return [Array<MapFilter>]
    #
    # @!attribute compliance_status
    #   <p>Exclusive to findings that are generated as the result of a check run against a specific
    #            rule in a supported standard, such as CIS Amazon Web Services Foundations. Contains security
    #            standard-related finding details.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute verification_state
    #   <p>The veracity of a finding.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute workflow_state
    #   <p>The workflow state of a finding.</p>
    #            <p>Note that this field is deprecated. To search for a finding based on its workflow
    #            status, use <code>WorkflowStatus</code>.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute workflow_status
    #   <p>The status of the investigation into a finding. Allowed values are the following.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NEW</code> - The initial state of a finding, before it is reviewed.</p>
    #                  <p>Security Hub also resets the workflow status from <code>NOTIFIED</code> or
    #                     <code>RESOLVED</code> to <code>NEW</code> in the following cases:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>RecordState</code> changes from <code>ARCHIVED</code> to <code>ACTIVE</code>.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>Compliance.Status</code> changes from <code>PASSED</code> to either <code>WARNING</code>,
    #                           <code>FAILED</code>, or <code>NOT_AVAILABLE</code>.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOTIFIED</code> - Indicates that the resource owner has been notified about
    #                  the security issue. Used when the initial reviewer is not the resource owner, and
    #                  needs intervention from the resource owner.</p>
    #                  <p>If one of the following occurs, the workflow status is changed automatically from
    #                  <code>NOTIFIED</code> to <code>NEW</code>:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>RecordState</code> changes from <code>ARCHIVED</code> to
    #                        <code>ACTIVE</code>.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>Compliance.Status</code> changes from <code>PASSED</code> to <code>FAILED</code>,
    #                        <code>WARNING</code>, or <code>NOT_AVAILABLE</code>.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SUPPRESSED</code> - Indicates that you reviewed the finding and do not believe that any action is
    #                  needed.</p>
    #                  <p>The workflow status of a <code>SUPPRESSED</code> finding does not change if
    #                  <code>RecordState</code> changes from <code>ARCHIVED</code> to
    #                  <code>ACTIVE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RESOLVED</code> - The finding was reviewed and remediated and is now
    #                  considered resolved. </p>
    #                  <p>The finding remains <code>RESOLVED</code> unless one of the following occurs:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>RecordState</code> changes from <code>ARCHIVED</code> to
    #                        <code>ACTIVE</code>.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>Compliance.Status</code> changes from <code>PASSED</code> to <code>FAILED</code>,
    #                        <code>WARNING</code>, or <code>NOT_AVAILABLE</code>.</p>
    #                     </li>
    #                  </ul>
    #                  <p>In those cases, the workflow status is automatically reset to <code>NEW</code>.</p>
    #                  <p>For findings from controls, if <code>Compliance.Status</code> is <code>PASSED</code>,
    #                  then Security Hub automatically sets the workflow status to <code>RESOLVED</code>.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute record_state
    #   <p>The updated record state for the finding.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute related_findings_product_arn
    #   <p>The ARN of the solution that generated a related finding.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute related_findings_id
    #   <p>The solution-generated identifier for a related finding.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute note_text
    #   <p>The text of a note.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute note_updated_at
    #   <p>The timestamp of when the note was updated.</p>
    #
    #   @return [Array<DateFilter>]
    #
    # @!attribute note_updated_by
    #   <p>The principal that created a note.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute keyword
    #   <p>A keyword for a finding.</p>
    #
    #   @deprecated
    #     The Keyword property is deprecated.
    #
    #   @return [Array<KeywordFilter>]
    #
    # @!attribute finding_provider_fields_confidence
    #   <p>The finding provider value for the finding confidence. Confidence is defined as the likelihood
    #            that a finding accurately identifies the behavior or issue that it was intended to
    #            identify.</p>
    #            <p>Confidence is scored on a 0-100 basis using a ratio scale, where 0 means zero percent
    #            confidence and 100 means 100 percent confidence.</p>
    #
    #   @return [Array<NumberFilter>]
    #
    # @!attribute finding_provider_fields_criticality
    #   <p>The finding provider value for the level of importance assigned to the resources associated with
    #            the findings.</p>
    #            <p>A score of 0 means that the underlying resources have no criticality, and a score of 100
    #            is reserved for the most critical resources. </p>
    #
    #   @return [Array<NumberFilter>]
    #
    # @!attribute finding_provider_fields_related_findings_id
    #   <p>The finding identifier of a related finding that is identified by the finding provider.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute finding_provider_fields_related_findings_product_arn
    #   <p>The ARN of the solution that generated a related finding that is identified by the finding provider.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute finding_provider_fields_severity_label
    #   <p>The finding provider value for the severity label.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute finding_provider_fields_severity_original
    #   <p>The finding provider's original value for the severity.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute finding_provider_fields_types
    #   <p>One or more finding types that the finding provider assigned to the finding. Uses the format of <code>namespace/category/classifier</code>
    #            that classify a finding.</p>
    #            <p>Valid namespace values are: Software and Configuration Checks | TTPs | Effects | Unusual
    #            Behaviors | Sensitive Data Identifications</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute sample
    #   <p>Indicates whether or not sample findings are included in the filter results.</p>
    #
    #   @return [Array<BooleanFilter>]
    #
    AwsSecurityFindingFilters = ::Struct.new(
      :product_arn,
      :aws_account_id,
      :id,
      :generator_id,
      :region,
      :type,
      :first_observed_at,
      :last_observed_at,
      :created_at,
      :updated_at,
      :severity_product,
      :severity_normalized,
      :severity_label,
      :confidence,
      :criticality,
      :title,
      :description,
      :recommendation_text,
      :source_url,
      :product_fields,
      :product_name,
      :company_name,
      :user_defined_fields,
      :malware_name,
      :malware_type,
      :malware_path,
      :malware_state,
      :network_direction,
      :network_protocol,
      :network_source_ip_v4,
      :network_source_ip_v6,
      :network_source_port,
      :network_source_domain,
      :network_source_mac,
      :network_destination_ip_v4,
      :network_destination_ip_v6,
      :network_destination_port,
      :network_destination_domain,
      :process_name,
      :process_path,
      :process_pid,
      :process_parent_pid,
      :process_launched_at,
      :process_terminated_at,
      :threat_intel_indicator_type,
      :threat_intel_indicator_value,
      :threat_intel_indicator_category,
      :threat_intel_indicator_last_observed_at,
      :threat_intel_indicator_source,
      :threat_intel_indicator_source_url,
      :resource_type,
      :resource_id,
      :resource_partition,
      :resource_region,
      :resource_tags,
      :resource_aws_ec2_instance_type,
      :resource_aws_ec2_instance_image_id,
      :resource_aws_ec2_instance_ip_v4_addresses,
      :resource_aws_ec2_instance_ip_v6_addresses,
      :resource_aws_ec2_instance_key_name,
      :resource_aws_ec2_instance_iam_instance_profile_arn,
      :resource_aws_ec2_instance_vpc_id,
      :resource_aws_ec2_instance_subnet_id,
      :resource_aws_ec2_instance_launched_at,
      :resource_aws_s3_bucket_owner_id,
      :resource_aws_s3_bucket_owner_name,
      :resource_aws_iam_access_key_user_name,
      :resource_aws_iam_access_key_principal_name,
      :resource_aws_iam_access_key_status,
      :resource_aws_iam_access_key_created_at,
      :resource_aws_iam_user_user_name,
      :resource_container_name,
      :resource_container_image_id,
      :resource_container_image_name,
      :resource_container_launched_at,
      :resource_details_other,
      :compliance_status,
      :verification_state,
      :workflow_state,
      :workflow_status,
      :record_state,
      :related_findings_product_arn,
      :related_findings_id,
      :note_text,
      :note_updated_at,
      :note_updated_by,
      :keyword,
      :finding_provider_fields_confidence,
      :finding_provider_fields_criticality,
      :finding_provider_fields_related_findings_id,
      :finding_provider_fields_related_findings_product_arn,
      :finding_provider_fields_severity_label,
      :finding_provider_fields_severity_original,
      :finding_provider_fields_types,
      :sample,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Identifies a finding to update using <code>BatchUpdateFindings</code>.</p>
    #
    # @!attribute id
    #   <p>The identifier of the finding that was specified by the finding provider.</p>
    #
    #   @return [String]
    #
    # @!attribute product_arn
    #   <p>The ARN generated by Security Hub that uniquely identifies a product that generates findings.
    #            This can be the ARN for a third-party product that is integrated with Security Hub, or the ARN for
    #            a custom integration.</p>
    #
    #   @return [String]
    #
    AwsSecurityFindingIdentifier = ::Struct.new(
      :id,
      :product_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A wrapper type for the topic's ARN.</p>
    #
    # @!attribute kms_master_key_id
    #   <p>The ID of an Amazon Web Services managed key for Amazon SNS or a customer managed key.</p>
    #
    #   @return [String]
    #
    # @!attribute subscription
    #   <p>Subscription is an embedded property that describes the subscription endpoints of an SNS topic.</p>
    #
    #   @return [Array<AwsSnsTopicSubscription>]
    #
    # @!attribute topic_name
    #   <p>The name of the topic.</p>
    #
    #   @return [String]
    #
    # @!attribute owner
    #   <p>The subscription's owner.</p>
    #
    #   @return [String]
    #
    AwsSnsTopicDetails = ::Struct.new(
      :kms_master_key_id,
      :subscription,
      :topic_name,
      :owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A wrapper type for the attributes of an Amazon SNS subscription.</p>
    #
    # @!attribute endpoint
    #   <p>The subscription's endpoint (format depends on the protocol).</p>
    #
    #   @return [String]
    #
    # @!attribute protocol
    #   <p>The subscription's protocol.</p>
    #
    #   @return [String]
    #
    AwsSnsTopicSubscription = ::Struct.new(
      :endpoint,
      :protocol,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Data about a queue.</p>
    #
    # @!attribute kms_data_key_reuse_period_seconds
    #   <p>The length of time, in seconds, for which Amazon SQS can reuse a data key to encrypt or decrypt messages before calling KMS again.</p>
    #
    #   @return [Integer]
    #
    # @!attribute kms_master_key_id
    #   <p>The ID of an Amazon Web Services managed key for Amazon SQS or a custom
    #            KMS key.</p>
    #
    #   @return [String]
    #
    # @!attribute queue_name
    #   <p>The name of the new queue.</p>
    #
    #   @return [String]
    #
    # @!attribute dead_letter_target_arn
    #   <p>The ARN of the dead-letter queue to which Amazon SQS moves
    #            messages after the value of <code>maxReceiveCount</code> is exceeded. </p>
    #
    #   @return [String]
    #
    AwsSqsQueueDetails = ::Struct.new(
      :kms_data_key_reuse_period_seconds,
      :kms_master_key_id,
      :queue_name,
      :dead_letter_target_arn,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.kms_data_key_reuse_period_seconds ||= 0
      end
    end

    # <p>Provides the details about the compliance status for a patch.</p>
    #
    # @!attribute status
    #   <p>The current patch compliance status.</p>
    #            <p>The possible status values are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>COMPLIANT</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NON_COMPLIANT</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UNSPECIFIED_DATA</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute compliant_critical_count
    #   <p>For the patches that are compliant, the number that have a severity of
    #               <code>CRITICAL</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute compliant_high_count
    #   <p>For the patches that are compliant, the number that have a severity of
    #            <code>HIGH</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute compliant_medium_count
    #   <p>For the patches that are compliant, the number that have a severity of
    #               <code>MEDIUM</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute execution_type
    #   <p>The type of execution that was used determine compliance.</p>
    #
    #   @return [String]
    #
    # @!attribute non_compliant_critical_count
    #   <p>For the patch items that are noncompliant, the number of items that have a severity of
    #               <code>CRITICAL</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute compliant_informational_count
    #   <p>For the patches that are compliant, the number that have a severity of
    #               <code>INFORMATIONAL</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute non_compliant_informational_count
    #   <p>For the patches that are noncompliant, the number that have a severity of
    #               <code>INFORMATIONAL</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute compliant_unspecified_count
    #   <p>For the patches that are compliant, the number that have a severity of
    #               <code>UNSPECIFIED</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute non_compliant_low_count
    #   <p>For the patches that are noncompliant, the number that have a severity of
    #               <code>LOW</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute non_compliant_high_count
    #   <p>For the patches that are noncompliant, the number that have a severity of
    #               <code>HIGH</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute compliant_low_count
    #   <p>For the patches that are compliant, the number that have a severity of
    #            <code>LOW</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute compliance_type
    #   <p>The type of resource for which the compliance was determined. For
    #               <code>AwsSsmPatchCompliance</code>, <code>ComplianceType</code> is <code>Patch</code>. </p>
    #
    #   @return [String]
    #
    # @!attribute patch_baseline_id
    #   <p>The identifier of the patch baseline. The patch baseline lists the patches that are
    #            approved for installation.</p>
    #
    #   @return [String]
    #
    # @!attribute overall_severity
    #   <p>The highest severity for the patches.</p>
    #
    #   @return [String]
    #
    # @!attribute non_compliant_medium_count
    #   <p>For the patches that are noncompliant, the number that have a severity of
    #               <code>MEDIUM</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute non_compliant_unspecified_count
    #   <p>For the patches that are noncompliant, the number that have a severity of
    #               <code>UNSPECIFIED</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute patch_group
    #   <p>The identifier of the patch group for which compliance was determined. A patch group
    #            uses tags to group EC2 instances that should have the same patch compliance.</p>
    #
    #   @return [String]
    #
    AwsSsmComplianceSummary = ::Struct.new(
      :status,
      :compliant_critical_count,
      :compliant_high_count,
      :compliant_medium_count,
      :execution_type,
      :non_compliant_critical_count,
      :compliant_informational_count,
      :non_compliant_informational_count,
      :compliant_unspecified_count,
      :non_compliant_low_count,
      :non_compliant_high_count,
      :compliant_low_count,
      :compliance_type,
      :patch_baseline_id,
      :overall_severity,
      :non_compliant_medium_count,
      :non_compliant_unspecified_count,
      :patch_group,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.compliant_critical_count ||= 0
        self.compliant_high_count ||= 0
        self.compliant_medium_count ||= 0
        self.non_compliant_critical_count ||= 0
        self.compliant_informational_count ||= 0
        self.non_compliant_informational_count ||= 0
        self.compliant_unspecified_count ||= 0
        self.non_compliant_low_count ||= 0
        self.non_compliant_high_count ||= 0
        self.compliant_low_count ||= 0
        self.non_compliant_medium_count ||= 0
        self.non_compliant_unspecified_count ||= 0
      end
    end

    # <p>Provides details about the compliance for a patch.</p>
    #
    # @!attribute compliance_summary
    #   <p>The compliance status details for the patch.</p>
    #
    #   @return [AwsSsmComplianceSummary]
    #
    AwsSsmPatch = ::Struct.new(
      :compliance_summary,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about the state of a patch on an instance based on the patch
    #          baseline that was used to patch the instance.</p>
    #
    # @!attribute patch
    #   <p>Information about the status of a patch.</p>
    #
    #   @return [AwsSsmPatch]
    #
    AwsSsmPatchComplianceDetails = ::Struct.new(
      :patch,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about a rate-based rule for global resources. A rate-based rule provides settings to indicate when to allow, block, or count a request. Rate-based rules include the number of requests that arrive over a specified period of time.</p>
    #
    # @!attribute metric_name
    #   <p>The name of the metrics for the rate-based rule.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the rate-based rule.</p>
    #
    #   @return [String]
    #
    # @!attribute rate_key
    #   <p>The field that WAF uses to determine whether requests are likely arriving from single source and are subject to rate monitoring.</p>
    #
    #   @return [String]
    #
    # @!attribute rate_limit
    #   <p>The maximum number of requests that have an identical value for the field specified in <code>RateKey</code> that are allowed within a five-minute period. If the number of requests exceeds <code>RateLimit</code> and the other predicates specified in the rule are met, WAF triggers the action for the rule.</p>
    #
    #   @return [Integer]
    #
    # @!attribute rule_id
    #   <p>The unique identifier for the rate-based rule.</p>
    #
    #   @return [String]
    #
    # @!attribute match_predicates
    #   <p>The predicates to include in the rate-based rule.</p>
    #
    #   @return [Array<AwsWafRateBasedRuleMatchPredicate>]
    #
    AwsWafRateBasedRuleDetails = ::Struct.new(
      :metric_name,
      :name,
      :rate_key,
      :rate_limit,
      :rule_id,
      :match_predicates,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.rate_limit ||= 0
      end
    end

    # <p>A match predicate. A predicate might look for characteristics such as specific IP addresses, geographic locations, or sizes.</p>
    #
    # @!attribute data_id
    #   <p>The unique identifier for the predicate.</p>
    #
    #   @return [String]
    #
    # @!attribute negated
    #   <p>If set to <code>true</code>, then the rule actions are performed on requests that match the predicate settings.</p>
    #            <p>If set to <code>false</code>, then the rule actions are performed on all requests except those that match the predicate settings.
    #         </p>
    #
    #   @return [Boolean]
    #
    # @!attribute type
    #   <p>The type of predicate.</p>
    #
    #   @return [String]
    #
    AwsWafRateBasedRuleMatchPredicate = ::Struct.new(
      :data_id,
      :negated,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.negated ||= false
      end
    end

    # <p>contains details about a rate-based rule for Regional resources. A rate-based rule provides settings to indicate when to allow, block, or count a request. Rate-based rules include the number of requests that arrive over a specified period of time.</p>
    #
    # @!attribute metric_name
    #   <p>The name of the metrics for the rate-based rule.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the rate-based rule.</p>
    #
    #   @return [String]
    #
    # @!attribute rate_key
    #   <p>The field that WAF uses to determine whether requests are likely arriving from single source and are subject to rate monitoring.</p>
    #
    #   @return [String]
    #
    # @!attribute rate_limit
    #   <p>The maximum number of requests that have an identical value for the field specified in <code>RateKey</code> that are allowed within a five-minute period. If the number of requests exceeds <code>RateLimit</code> and the other predicates specified in the rule are met, WAF triggers the action for the rule.</p>
    #
    #   @return [Integer]
    #
    # @!attribute rule_id
    #   <p>The unique identifier for the rate-based rule.</p>
    #
    #   @return [String]
    #
    # @!attribute match_predicates
    #   <p>The predicates to include in the rate-based rule.</p>
    #
    #   @return [Array<AwsWafRegionalRateBasedRuleMatchPredicate>]
    #
    AwsWafRegionalRateBasedRuleDetails = ::Struct.new(
      :metric_name,
      :name,
      :rate_key,
      :rate_limit,
      :rule_id,
      :match_predicates,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.rate_limit ||= 0
      end
    end

    # <p>Details for a match predicate. A predicate might look for characteristics such as specific IP addresses, geographic locations, or sizes.</p>
    #
    # @!attribute data_id
    #   <p>The unique identifier for the predicate.</p>
    #
    #   @return [String]
    #
    # @!attribute negated
    #   <p>If set to <code>true</code>, then the rule actions are performed on requests that match the predicate settings.</p>
    #            <p>If set to <code>false</code>, then the rule actions are performed on all requests except those that match the predicate settings.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute type
    #   <p>The type of predicate.</p>
    #
    #   @return [String]
    #
    AwsWafRegionalRateBasedRuleMatchPredicate = ::Struct.new(
      :data_id,
      :negated,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.negated ||= false
      end
    end

    # <p>Details about an WAF WebACL.</p>
    #
    # @!attribute name
    #   <p>A friendly name or description of the WebACL. You can't change the name of a WebACL
    #            after you create it.</p>
    #
    #   @return [String]
    #
    # @!attribute default_action
    #   <p>The action to perform if none of the rules contained in the WebACL match.</p>
    #
    #   @return [String]
    #
    # @!attribute rules
    #   <p>An array that contains the action for each rule in a WebACL, the priority of the rule,
    #            and the ID of the rule.</p>
    #
    #   @return [Array<AwsWafWebAclRule>]
    #
    # @!attribute web_acl_id
    #   <p>A unique identifier for a WebACL.</p>
    #
    #   @return [String]
    #
    AwsWafWebAclDetails = ::Struct.new(
      :name,
      :default_action,
      :rules,
      :web_acl_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details for a rule in an WAF WebACL.</p>
    #
    # @!attribute action
    #   <p>Specifies the action that CloudFront or WAF takes when a web request matches the
    #            conditions in the rule. </p>
    #
    #   @return [WafAction]
    #
    # @!attribute excluded_rules
    #   <p>Rules to exclude from a rule group.</p>
    #
    #   @return [Array<WafExcludedRule>]
    #
    # @!attribute override_action
    #   <p>Use the <code>OverrideAction</code> to test your RuleGroup.</p>
    #            <p>Any rule in a RuleGroup can potentially block a request. If you set the
    #               <code>OverrideAction</code> to <code>None</code>, the RuleGroup blocks a request if any
    #            individual rule in the RuleGroup matches the request and is configured to block that
    #            request.</p>
    #            <p>However, if you first want to test the RuleGroup, set the <code>OverrideAction</code> to
    #               <code>Count</code>. The RuleGroup then overrides any block action specified by
    #            individual rules contained within the group. Instead of blocking matching requests, those
    #            requests are counted.</p>
    #            <p>
    #               <code>ActivatedRule</code>|<code>OverrideAction</code> applies only when updating or
    #            adding a RuleGroup to a WebACL. In this case you do not use
    #               <code>ActivatedRule</code>|<code>Action</code>. For all other update requests,
    #               <code>ActivatedRule</code>|<code>Action</code> is used instead of
    #               <code>ActivatedRule</code>|<code>OverrideAction</code>. </p>
    #
    #   @return [WafOverrideAction]
    #
    # @!attribute priority
    #   <p>Specifies the order in which the rules in a WebACL are evaluated. Rules with a lower
    #            value for <code>Priority</code> are evaluated before rules with a higher value. The value
    #            must be a unique integer. If you add multiple rules to a WebACL, the values do not need to
    #            be consecutive.</p>
    #
    #   @return [Integer]
    #
    # @!attribute rule_id
    #   <p>The identifier for a rule.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The rule type.</p>
    #            <p>Valid values: <code>REGULAR</code> | <code>RATE_BASED</code> | <code>GROUP</code>
    #            </p>
    #            <p>The default is <code>REGULAR</code>.</p>
    #
    #   @return [String]
    #
    AwsWafWebAclRule = ::Struct.new(
      :action,
      :excluded_rules,
      :override_action,
      :priority,
      :rule_id,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.priority ||= 0
      end
    end

    # <p>Information about the encryption configuration for X-Ray.</p>
    #
    # @!attribute key_id
    #   <p>The identifier of the KMS key that is used for encryption. Provided if <code>Type</code> is <code>KMS</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the encryption configuration. When <code>Status</code> is <code>UPDATING</code>, X-Ray might use both the old and new encryption.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of encryption. <code>KMS</code> indicates that the encryption uses KMS keys. <code>NONE</code> indicates to use the default encryption.</p>
    #
    #   @return [String]
    #
    AwsXrayEncryptionConfigDetails = ::Struct.new(
      :key_id,
      :status,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute standards_subscription_arns
    #   <p>The ARNs of the standards subscriptions to disable.</p>
    #
    #   @return [Array<String>]
    #
    BatchDisableStandardsInput = ::Struct.new(
      :standards_subscription_arns,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute standards_subscriptions
    #   <p>The details of the standards subscriptions that were disabled.</p>
    #
    #   @return [Array<StandardsSubscription>]
    #
    BatchDisableStandardsOutput = ::Struct.new(
      :standards_subscriptions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute standards_subscription_requests
    #   <p>The list of standards checks to enable.</p>
    #
    #   @return [Array<StandardsSubscriptionRequest>]
    #
    BatchEnableStandardsInput = ::Struct.new(
      :standards_subscription_requests,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute standards_subscriptions
    #   <p>The details of the standards subscriptions that were enabled.</p>
    #
    #   @return [Array<StandardsSubscription>]
    #
    BatchEnableStandardsOutput = ::Struct.new(
      :standards_subscriptions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute findings
    #   <p>A list of findings to import. To successfully import a finding, it must follow the
    #               <a href="https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-findings-format.html">Amazon Web Services Security Finding Format</a>. Maximum of 100 findings per request.</p>
    #
    #   @return [Array<AwsSecurityFinding>]
    #
    BatchImportFindingsInput = ::Struct.new(
      :findings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute failed_count
    #   <p>The number of findings that failed to import.</p>
    #
    #   @return [Integer]
    #
    # @!attribute success_count
    #   <p>The number of findings that were successfully imported.</p>
    #
    #   @return [Integer]
    #
    # @!attribute failed_findings
    #   <p>The list of findings that failed to import.</p>
    #
    #   @return [Array<ImportFindingsError>]
    #
    BatchImportFindingsOutput = ::Struct.new(
      :failed_count,
      :success_count,
      :failed_findings,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.failed_count ||= 0
        self.success_count ||= 0
      end
    end

    # @!attribute finding_identifiers
    #   <p>The list of findings to update. <code>BatchUpdateFindings</code> can be used to update
    #            up to 100 findings at a time.</p>
    #            <p>For each finding, the list provides the finding identifier and the ARN of the finding
    #            provider.</p>
    #
    #   @return [Array<AwsSecurityFindingIdentifier>]
    #
    # @!attribute note
    #   <p>The updated note.</p>
    #
    #   @return [NoteUpdate]
    #
    # @!attribute severity
    #   <p>Used to update the finding severity.</p>
    #
    #   @return [SeverityUpdate]
    #
    # @!attribute verification_state
    #   <p>Indicates the veracity of a finding.</p>
    #            <p>The available values for <code>VerificationState</code> are  as follows.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>UNKNOWN</code> – The default disposition of a security finding</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TRUE_POSITIVE</code> – The security finding is confirmed</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FALSE_POSITIVE</code> – The security finding was determined to be a false
    #                  alarm</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BENIGN_POSITIVE</code> – A special case of <code>TRUE_POSITIVE</code> where
    #                  the finding doesn't pose any threat, is expected, or both</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["UNKNOWN", "TRUE_POSITIVE", "FALSE_POSITIVE", "BENIGN_POSITIVE"]
    #
    #   @return [String]
    #
    # @!attribute confidence
    #   <p>The updated value for the finding confidence. Confidence is defined as the likelihood
    #            that a finding accurately identifies the behavior or issue that it was intended to
    #            identify.</p>
    #            <p>Confidence is scored on a 0-100 basis using a ratio scale, where 0 means zero percent
    #            confidence and 100 means 100 percent confidence.</p>
    #
    #   @return [Integer]
    #
    # @!attribute criticality
    #   <p>The updated value for the level of importance assigned to the resources associated with
    #            the findings.</p>
    #            <p>A score of 0 means that the underlying resources have no criticality, and a score of 100
    #            is reserved for the most critical resources. </p>
    #
    #   @return [Integer]
    #
    # @!attribute types
    #   <p>One or more finding types in the format of namespace/category/classifier that classify a
    #            finding.</p>
    #            <p>Valid namespace values are as follows.</p>
    #            <ul>
    #               <li>
    #                  <p>Software and Configuration Checks</p>
    #               </li>
    #               <li>
    #                  <p>TTPs</p>
    #               </li>
    #               <li>
    #                  <p>Effects</p>
    #               </li>
    #               <li>
    #                  <p>Unusual Behaviors</p>
    #               </li>
    #               <li>
    #                  <p>Sensitive Data Identifications </p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<String>]
    #
    # @!attribute user_defined_fields
    #   <p>A list of name/value string pairs associated with the finding. These are custom,
    #            user-defined fields added to a finding.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute workflow
    #   <p>Used to update the workflow status of a finding.</p>
    #            <p>The workflow status indicates the progress of the investigation into the finding. </p>
    #
    #   @return [WorkflowUpdate]
    #
    # @!attribute related_findings
    #   <p>A list of findings that are related to the updated findings.</p>
    #
    #   @return [Array<RelatedFinding>]
    #
    BatchUpdateFindingsInput = ::Struct.new(
      :finding_identifiers,
      :note,
      :severity,
      :verification_state,
      :confidence,
      :criticality,
      :types,
      :user_defined_fields,
      :workflow,
      :related_findings,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.confidence ||= 0
        self.criticality ||= 0
      end
    end

    # @!attribute processed_findings
    #   <p>The list of findings that were updated successfully.</p>
    #
    #   @return [Array<AwsSecurityFindingIdentifier>]
    #
    # @!attribute unprocessed_findings
    #   <p>The list of findings that were not updated.</p>
    #
    #   @return [Array<BatchUpdateFindingsUnprocessedFinding>]
    #
    BatchUpdateFindingsOutput = ::Struct.new(
      :processed_findings,
      :unprocessed_findings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A finding from a <code>BatchUpdateFindings</code> request that Security Hub was unable to
    #          update.</p>
    #
    # @!attribute finding_identifier
    #   <p>The identifier of the finding that was not updated.</p>
    #
    #   @return [AwsSecurityFindingIdentifier]
    #
    # @!attribute error_code
    #   <p>The code associated with the error.</p>
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>The message associated with the error.</p>
    #
    #   @return [String]
    #
    BatchUpdateFindingsUnprocessedFinding = ::Struct.new(
      :finding_identifier,
      :error_code,
      :error_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Boolean filter for querying findings.</p>
    #
    # @!attribute value
    #   <p>The value of the boolean.</p>
    #
    #   @return [Boolean]
    #
    BooleanFilter = ::Struct.new(
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.value ||= false
      end
    end

    # <p>An occurrence of sensitive data detected in a Microsoft Excel workbook, comma-separated value (CSV) file, or tab-separated value (TSV) file.</p>
    #
    # @!attribute column
    #   <p>The column number of the column that contains the data. For a Microsoft Excel workbook, the column number corresponds to the alphabetical column identifiers. For example, a value of 1 for Column corresponds to the A column in the workbook.</p>
    #
    #   @return [Integer]
    #
    # @!attribute row
    #   <p>The row number of the row that contains the data.</p>
    #
    #   @return [Integer]
    #
    # @!attribute column_name
    #   <p>The name of the column that contains the data.</p>
    #
    #   @return [String]
    #
    # @!attribute cell_reference
    #   <p>For a Microsoft Excel workbook, provides the location of the cell, as an absolute cell reference, that contains the data. For example, Sheet2!C5 for cell C5 on Sheet2.</p>
    #
    #   @return [String]
    #
    Cell = ::Struct.new(
      :column,
      :row,
      :column_name,
      :cell_reference,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.column ||= 0
        self.row ||= 0
      end
    end

    # <p>An IPv4 CIDR block association.</p>
    #
    # @!attribute association_id
    #   <p>The association ID for the IPv4 CIDR block.</p>
    #
    #   @return [String]
    #
    # @!attribute cidr_block
    #   <p>The IPv4 CIDR block.</p>
    #
    #   @return [String]
    #
    # @!attribute cidr_block_state
    #   <p>Information about the state of the IPv4 CIDR block.</p>
    #
    #   @return [String]
    #
    CidrBlockAssociation = ::Struct.new(
      :association_id,
      :cidr_block,
      :cidr_block_state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a city.</p>
    #
    # @!attribute city_name
    #   <p>The name of the city.</p>
    #
    #   @return [String]
    #
    City = ::Struct.new(
      :city_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about the sensitive data that was detected on the resource.</p>
    #
    # @!attribute mime_type
    #   <p>The type of content that the finding applies to.</p>
    #
    #   @return [String]
    #
    # @!attribute size_classified
    #   <p>The total size in bytes of the affected data.</p>
    #
    #   @return [Integer]
    #
    # @!attribute additional_occurrences
    #   <p>Indicates whether there are additional occurrences of sensitive data that are not included in the finding. This occurs when the number of occurrences exceeds the maximum that can be included.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute status
    #   <p>The current status of the sensitive data detection.</p>
    #
    #   @return [ClassificationStatus]
    #
    # @!attribute sensitive_data
    #   <p>Provides details about sensitive data that was identified based on built-in configuration.</p>
    #
    #   @return [Array<SensitiveDataResult>]
    #
    # @!attribute custom_data_identifiers
    #   <p>Provides details about sensitive data that was identified based on customer-defined configuration.</p>
    #
    #   @return [CustomDataIdentifiersResult]
    #
    ClassificationResult = ::Struct.new(
      :mime_type,
      :size_classified,
      :additional_occurrences,
      :status,
      :sensitive_data,
      :custom_data_identifiers,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.size_classified ||= 0
        self.additional_occurrences ||= false
      end
    end

    # <p>Provides details about the current status of the sensitive data detection.</p>
    #
    # @!attribute code
    #   <p>The code that represents the status of the sensitive data detection.</p>
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>A longer description of the current status of the sensitive data detection.</p>
    #
    #   @return [String]
    #
    ClassificationStatus = ::Struct.new(
      :code,
      :reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains finding details that are specific to control-based findings. Only returned for
    #          findings generated from controls.</p>
    #
    # @!attribute status
    #   <p>The result of a standards check.</p>
    #            <p>The valid values for <code>Status</code> are as follows.</p>
    #            <ul>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>PASSED</code> - Standards check passed for all evaluated
    #                        resources.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>WARNING</code> - Some information is missing or this check is not
    #                        supported for your configuration.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>FAILED</code> - Standards check failed for at least one evaluated
    #                        resource.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>NOT_AVAILABLE</code> - Check could not be performed due to a service
    #                        outage, API error, or because the result of the Config evaluation was
    #                           <code>NOT_APPLICABLE</code>. If the Config evaluation result was
    #                        <code>NOT_APPLICABLE</code>, then after 3 days, Security Hub automatically archives
    #                        the finding.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["PASSED", "WARNING", "FAILED", "NOT_AVAILABLE"]
    #
    #   @return [String]
    #
    # @!attribute related_requirements
    #   <p>For a control, the industry or regulatory framework requirements that are related to the
    #            control. The check for that control is aligned with these requirements.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute status_reasons
    #   <p>For findings generated from controls, a list of reasons behind the value of
    #               <code>Status</code>. For the list of status reason codes and their meanings, see <a href="https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-standards-results.html securityhub-standards-results-asff">Standards-related information in the ASFF</a> in the
    #               <i>Security Hub User Guide</i>. </p>
    #
    #   @return [Array<StatusReason>]
    #
    Compliance = ::Struct.new(
      :status,
      :related_requirements,
      :status_reasons,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ComplianceStatus
    #
    module ComplianceStatus
      # No documentation available.
      #
      PASSED = "PASSED"

      # No documentation available.
      #
      WARNING = "WARNING"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      NOT_AVAILABLE = "NOT_AVAILABLE"
    end

    # <p>Container details related to a finding.</p>
    #
    # @!attribute name
    #   <p>The name of the container related to a finding.</p>
    #
    #   @return [String]
    #
    # @!attribute image_id
    #   <p>The identifier of the image related to a finding.</p>
    #
    #   @return [String]
    #
    # @!attribute image_name
    #   <p>The name of the image related to a finding.</p>
    #
    #   @return [String]
    #
    # @!attribute launched_at
    #   <p>Indicates when the container started.</p>
    #            <p>Uses the <code>date-time</code> format specified in <a href="https://tools.ietf.org/html/rfc3339 section-5.6">RFC 3339 section 5.6, Internet
    #               Date/Time Format</a>. The value cannot contain spaces. For example,
    #               <code>2020-03-22T13:22:13.933Z</code>.</p>
    #
    #   @return [String]
    #
    ContainerDetails = ::Struct.new(
      :name,
      :image_id,
      :image_name,
      :launched_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ControlStatus
    #
    module ControlStatus
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # <p>Information about a country.</p>
    #
    # @!attribute country_code
    #   <p>The 2-letter ISO 3166 country code for the country.</p>
    #
    #   @return [String]
    #
    # @!attribute country_name
    #   <p>The name of the country.</p>
    #
    #   @return [String]
    #
    Country = ::Struct.new(
      :country_code,
      :country_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the custom action target. Can contain up to 20 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description for the custom action target.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The ID for the custom action target. Can contain up to 20 alphanumeric characters.</p>
    #
    #   @return [String]
    #
    CreateActionTargetInput = ::Struct.new(
      :name,
      :description,
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute action_target_arn
    #   <p>The ARN for the custom action target.</p>
    #
    #   @return [String]
    #
    CreateActionTargetOutput = ::Struct.new(
      :action_target_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute region_linking_mode
    #   <p>Indicates whether to aggregate findings from all of the available Regions in the current partition. Also determines whether to automatically aggregate findings from new Regions as Security Hub supports them and you opt into them.</p>
    #            <p>The selected option also determines how to use the Regions provided in the Regions list.</p>
    #            <p>The options are as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ALL_REGIONS</code> - Indicates to aggregate findings from all of the Regions where Security Hub is enabled. When you choose this option, Security Hub also automatically aggregates findings from new Regions as Security Hub supports them and you opt into them.
    #            </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALL_REGIONS_EXCEPT_SPECIFIED</code> - Indicates to aggregate findings from all of the Regions where Security Hub is enabled, except for the Regions listed in the <code>Regions</code> parameter. When you choose this option, Security Hub also automatically aggregates findings from new Regions as Security Hub supports them and you opt into them.
    #            </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SPECIFIED_REGIONS</code> - Indicates to aggregate findings only from the Regions listed in the <code>Regions</code> parameter. Security Hub does not automatically aggregate findings from new Regions.
    #            </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute regions
    #   <p>If <code>RegionLinkingMode</code> is <code>ALL_REGIONS_EXCEPT_SPECIFIED</code>, then this is a comma-separated list of Regions that do not aggregate findings to the aggregation Region.</p>
    #            <p>If <code>RegionLinkingMode</code> is <code>SPECIFIED_REGIONS</code>, then this is a comma-separated list of Regions that do aggregate findings to the aggregation Region.
    #         </p>
    #
    #   @return [Array<String>]
    #
    CreateFindingAggregatorInput = ::Struct.new(
      :region_linking_mode,
      :regions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute finding_aggregator_arn
    #   <p>The ARN of the finding aggregator. You use the finding aggregator ARN to retrieve details for, update, and stop finding aggregation.</p>
    #
    #   @return [String]
    #
    # @!attribute finding_aggregation_region
    #   <p>The aggregation Region.</p>
    #
    #   @return [String]
    #
    # @!attribute region_linking_mode
    #   <p>Indicates whether to link all Regions, all Regions except for a list of excluded Regions, or a list of included Regions.</p>
    #
    #   @return [String]
    #
    # @!attribute regions
    #   <p>The list of excluded Regions or included Regions.</p>
    #
    #   @return [Array<String>]
    #
    CreateFindingAggregatorOutput = ::Struct.new(
      :finding_aggregator_arn,
      :finding_aggregation_region,
      :region_linking_mode,
      :regions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the custom insight to create.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>One or more attributes used to filter the findings included in the insight. The insight
    #            only includes findings that match the criteria defined in the filters.</p>
    #
    #   @return [AwsSecurityFindingFilters]
    #
    # @!attribute group_by_attribute
    #   <p>The attribute used to group the findings for the insight. The grouping attribute
    #            identifies the type of item that the insight applies to. For example, if an insight is
    #            grouped by resource identifier, then the insight produces a list of resource
    #            identifiers.</p>
    #
    #   @return [String]
    #
    CreateInsightInput = ::Struct.new(
      :name,
      :filters,
      :group_by_attribute,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute insight_arn
    #   <p>The ARN of the insight created.</p>
    #
    #   @return [String]
    #
    CreateInsightOutput = ::Struct.new(
      :insight_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_details
    #   <p>The list of accounts to associate with the Security Hub administrator account. For each account, the
    #            list includes the account ID and optionally the email address.</p>
    #
    #   @return [Array<AccountDetails>]
    #
    CreateMembersInput = ::Struct.new(
      :account_details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute unprocessed_accounts
    #   <p>The list of Amazon Web Services accounts that were not processed. For each account, the list includes
    #            the account ID and the email address.</p>
    #
    #   @return [Array<Result>]
    #
    CreateMembersOutput = ::Struct.new(
      :unprocessed_accounts,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The list of detected instances of sensitive data.</p>
    #
    # @!attribute count
    #   <p>The total number of occurrences of sensitive data that were detected.</p>
    #
    #   @return [Integer]
    #
    # @!attribute arn
    #   <p>The ARN of the custom identifier that was used to detect the sensitive data.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>he name of the custom identifier that detected the sensitive data.</p>
    #
    #   @return [String]
    #
    # @!attribute occurrences
    #   <p>Details about the sensitive data that was detected.</p>
    #
    #   @return [Occurrences]
    #
    CustomDataIdentifiersDetections = ::Struct.new(
      :count,
      :arn,
      :name,
      :occurrences,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.count ||= 0
      end
    end

    # <p>Contains an instance of sensitive data that was detected by a customer-defined identifier.</p>
    #
    # @!attribute detections
    #   <p>The list of detected instances of sensitive data.</p>
    #
    #   @return [Array<CustomDataIdentifiersDetections>]
    #
    # @!attribute total_count
    #   <p>The total number of occurrences of sensitive data.</p>
    #
    #   @return [Integer]
    #
    CustomDataIdentifiersResult = ::Struct.new(
      :detections,
      :total_count,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.total_count ||= 0
      end
    end

    # <p>CVSS scores from the advisory related to the vulnerability.</p>
    #
    # @!attribute version
    #   <p>The version of CVSS for the CVSS score.</p>
    #
    #   @return [String]
    #
    # @!attribute base_score
    #   <p>The base CVSS score.</p>
    #
    #   @return [Float]
    #
    # @!attribute base_vector
    #   <p>The base scoring vector for the CVSS score.</p>
    #
    #   @return [String]
    #
    # @!attribute source
    #   <p>The origin of the original CVSS score and vector.</p>
    #
    #   @return [String]
    #
    # @!attribute adjustments
    #   <p>Adjustments to the CVSS metrics.</p>
    #
    #   @return [Array<Adjustment>]
    #
    Cvss = ::Struct.new(
      :version,
      :base_score,
      :base_vector,
      :source,
      :adjustments,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.base_score ||= 0
      end
    end

    # <p>Provides details about sensitive data that was detected on a resource.</p>
    #
    # @!attribute detailed_results_location
    #   <p>The path to the folder or file that contains the sensitive data.</p>
    #
    #   @return [String]
    #
    # @!attribute result
    #   <p>The details about the sensitive data that was detected on the resource.</p>
    #
    #   @return [ClassificationResult]
    #
    DataClassificationDetails = ::Struct.new(
      :detailed_results_location,
      :result,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A date filter for querying findings.</p>
    #
    # @!attribute start
    #   <p>A start date for the date filter.</p>
    #
    #   @return [String]
    #
    # @!attribute end
    #   <p>An end date for the date filter.</p>
    #
    #   @return [String]
    #
    # @!attribute date_range
    #   <p>A date range for the date filter.</p>
    #
    #   @return [DateRange]
    #
    DateFilter = ::Struct.new(
      :start,
      :end,
      :date_range,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A date range for the date filter.</p>
    #
    # @!attribute value
    #   <p>A date range value for the date filter.</p>
    #
    #   @return [Integer]
    #
    # @!attribute unit
    #   <p>A date range unit for the date filter.</p>
    #
    #   Enum, one of: ["DAYS"]
    #
    #   @return [String]
    #
    DateRange = ::Struct.new(
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

    # Includes enum constants for DateRangeUnit
    #
    module DateRangeUnit
      # No documentation available.
      #
      DAYS = "DAYS"
    end

    # @!attribute account_ids
    #   <p>The list of account IDs for the accounts from which to decline the invitations to
    #            Security Hub.</p>
    #
    #   @return [Array<String>]
    #
    DeclineInvitationsInput = ::Struct.new(
      :account_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute unprocessed_accounts
    #   <p>The list of Amazon Web Services accounts that were not processed. For each account, the list includes
    #            the account ID and the email address.</p>
    #
    #   @return [Array<Result>]
    #
    DeclineInvitationsOutput = ::Struct.new(
      :unprocessed_accounts,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute action_target_arn
    #   <p>The ARN of the custom action target to delete.</p>
    #
    #   @return [String]
    #
    DeleteActionTargetInput = ::Struct.new(
      :action_target_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute action_target_arn
    #   <p>The ARN of the custom action target that was deleted.</p>
    #
    #   @return [String]
    #
    DeleteActionTargetOutput = ::Struct.new(
      :action_target_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute finding_aggregator_arn
    #   <p>The ARN of the finding aggregator to delete. To obtain the ARN, use <code>ListFindingAggregators</code>.</p>
    #
    #   @return [String]
    #
    DeleteFindingAggregatorInput = ::Struct.new(
      :finding_aggregator_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteFindingAggregatorOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute insight_arn
    #   <p>The ARN of the insight to delete.</p>
    #
    #   @return [String]
    #
    DeleteInsightInput = ::Struct.new(
      :insight_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute insight_arn
    #   <p>The ARN of the insight that was deleted.</p>
    #
    #   @return [String]
    #
    DeleteInsightOutput = ::Struct.new(
      :insight_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_ids
    #   <p>The list of the account IDs that sent the invitations to delete.</p>
    #
    #   @return [Array<String>]
    #
    DeleteInvitationsInput = ::Struct.new(
      :account_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute unprocessed_accounts
    #   <p>The list of Amazon Web Services accounts for which the invitations were not deleted. For each account,
    #            the list includes the account ID and the email address.</p>
    #
    #   @return [Array<Result>]
    #
    DeleteInvitationsOutput = ::Struct.new(
      :unprocessed_accounts,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_ids
    #   <p>The list of account IDs for the member accounts to delete.</p>
    #
    #   @return [Array<String>]
    #
    DeleteMembersInput = ::Struct.new(
      :account_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute unprocessed_accounts
    #   <p>The list of Amazon Web Services accounts that were not deleted. For each account, the list includes the
    #            account ID and the email address.</p>
    #
    #   @return [Array<Result>]
    #
    DeleteMembersOutput = ::Struct.new(
      :unprocessed_accounts,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute action_target_arns
    #   <p>A list of custom action target ARNs for the custom action targets to retrieve.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The token that is required for pagination. On your first call to the
    #               <code>DescribeActionTargets</code> operation, set the value of this parameter to
    #               <code>NULL</code>.</p>
    #            <p>For subsequent calls to the operation, to continue listing data, set the value of this
    #            parameter to the value returned from the previous response.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #
    #   @return [Integer]
    #
    DescribeActionTargetsInput = ::Struct.new(
      :action_target_arns,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # @!attribute action_targets
    #   <p>A list of <code>ActionTarget</code> objects. Each object includes the <code>ActionTargetArn</code>,
    #               <code>Description</code>, and <code>Name</code> of a custom action target available in
    #            Security Hub.</p>
    #
    #   @return [Array<ActionTarget>]
    #
    # @!attribute next_token
    #   <p>The pagination token to use to request the next page of results.</p>
    #
    #   @return [String]
    #
    DescribeActionTargetsOutput = ::Struct.new(
      :action_targets,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute hub_arn
    #   <p>The ARN of the Hub resource to retrieve.</p>
    #
    #   @return [String]
    #
    DescribeHubInput = ::Struct.new(
      :hub_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute hub_arn
    #   <p>The ARN of the Hub resource that was retrieved.</p>
    #
    #   @return [String]
    #
    # @!attribute subscribed_at
    #   <p>The date and time when Security Hub was enabled in the account.</p>
    #
    #   @return [String]
    #
    # @!attribute auto_enable_controls
    #   <p>Whether to automatically enable new controls when they are added to standards that are
    #            enabled.</p>
    #            <p>If set to <code>true</code>, then new controls for enabled standards are enabled
    #            automatically. If set to <code>false</code>, then new controls are not enabled.</p>
    #
    #   @return [Boolean]
    #
    DescribeHubOutput = ::Struct.new(
      :hub_arn,
      :subscribed_at,
      :auto_enable_controls,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.auto_enable_controls ||= false
      end
    end

    DescribeOrganizationConfigurationInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute auto_enable
    #   <p>Whether to automatically enable Security Hub for new accounts in the organization.</p>
    #            <p>If set to <code>true</code>, then Security Hub is enabled for new accounts. If set to false,
    #            then new accounts are not added automatically.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute member_account_limit_reached
    #   <p>Whether the maximum number of allowed member accounts are already associated with the
    #            Security Hub administrator account.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute auto_enable_standards
    #   <p>Whether to automatically enable Security Hub <a href="https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-standards-enable-disable.html">default standards</a>
    #            for new member accounts in the organization.</p>
    #            <p>The default value of this parameter is equal to <code>DEFAULT</code>.</p>
    #            <p>If equal to <code>DEFAULT</code>, then Security Hub default standards are automatically enabled for new member
    #            accounts. If equal to <code>NONE</code>, then default standards are not automatically enabled for new member
    #            accounts.</p>
    #
    #   Enum, one of: ["NONE", "DEFAULT"]
    #
    #   @return [String]
    #
    DescribeOrganizationConfigurationOutput = ::Struct.new(
      :auto_enable,
      :member_account_limit_reached,
      :auto_enable_standards,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.auto_enable ||= false
        self.member_account_limit_reached ||= false
      end
    end

    # @!attribute next_token
    #   <p>The token that is required for pagination. On your first call to the
    #               <code>DescribeProducts</code> operation, set the value of this parameter to
    #               <code>NULL</code>.</p>
    #            <p>For subsequent calls to the operation, to continue listing data, set the value of this
    #            parameter to the value returned from the previous response.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute product_arn
    #   <p>The ARN of the integration to return.</p>
    #
    #   @return [String]
    #
    DescribeProductsInput = ::Struct.new(
      :next_token,
      :max_results,
      :product_arn,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # @!attribute products
    #   <p>A list of products, including details for each product.</p>
    #
    #   @return [Array<Product>]
    #
    # @!attribute next_token
    #   <p>The pagination token to use to request the next page of results.</p>
    #
    #   @return [String]
    #
    DescribeProductsOutput = ::Struct.new(
      :products,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute standards_subscription_arn
    #   <p>The ARN of a resource that represents your subscription to a supported standard. To get
    #            the subscription ARNs of the standards you have enabled, use the <code>GetEnabledStandards</code> operation.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token that is required for pagination. On your first call to the
    #               <code>DescribeStandardsControls</code> operation, set the value of this parameter to
    #               <code>NULL</code>.</p>
    #            <p>For subsequent calls to the operation, to continue listing data, set the value of this
    #            parameter to the value returned from the previous response.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of security standard controls to return.</p>
    #
    #   @return [Integer]
    #
    DescribeStandardsControlsInput = ::Struct.new(
      :standards_subscription_arn,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # @!attribute controls
    #   <p>A list of security standards controls.</p>
    #
    #   @return [Array<StandardsControl>]
    #
    # @!attribute next_token
    #   <p>The pagination token to use to request the next page of results.</p>
    #
    #   @return [String]
    #
    DescribeStandardsControlsOutput = ::Struct.new(
      :controls,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The token that is required for pagination. On your first call to the
    #               <code>DescribeStandards</code> operation, set the value of this parameter to
    #               <code>NULL</code>.</p>
    #            <p>For subsequent calls to the operation, to continue listing data, set the value of this
    #            parameter to the value returned from the previous response.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of standards to return.</p>
    #
    #   @return [Integer]
    #
    DescribeStandardsInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # @!attribute standards
    #   <p>A list of available standards.</p>
    #
    #   @return [Array<Standard>]
    #
    # @!attribute next_token
    #   <p>The pagination token to use to request the next page of results.</p>
    #
    #   @return [String]
    #
    DescribeStandardsOutput = ::Struct.new(
      :standards,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute product_subscription_arn
    #   <p>The ARN of the integrated product to disable the integration for.</p>
    #
    #   @return [String]
    #
    DisableImportFindingsForProductInput = ::Struct.new(
      :product_subscription_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisableImportFindingsForProductOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute admin_account_id
    #   <p>The Amazon Web Services account identifier of the Security Hub administrator account.</p>
    #
    #   @return [String]
    #
    DisableOrganizationAdminAccountInput = ::Struct.new(
      :admin_account_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisableOrganizationAdminAccountOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisableSecurityHubInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisableSecurityHubOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateFromAdministratorAccountInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateFromAdministratorAccountOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateFromMasterAccountInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateFromMasterAccountOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_ids
    #   <p>The account IDs of the member accounts to disassociate from the administrator account.</p>
    #
    #   @return [Array<String>]
    #
    DisassociateMembersInput = ::Struct.new(
      :account_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateMembersOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provided if <code>ActionType</code> is <code>DNS_REQUEST</code>. It provides details
    #          about the DNS request that was detected.</p>
    #
    # @!attribute domain
    #   <p>The DNS domain that is associated with the DNS request.</p>
    #
    #   @return [String]
    #
    # @!attribute protocol
    #   <p>The protocol that was used for the DNS request.</p>
    #
    #   @return [String]
    #
    # @!attribute blocked
    #   <p>Indicates whether the DNS request was blocked.</p>
    #
    #   @return [Boolean]
    #
    DnsRequestAction = ::Struct.new(
      :domain,
      :protocol,
      :blocked,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.blocked ||= false
      end
    end

    # @!attribute product_arn
    #   <p>The ARN of the product to enable the integration for.</p>
    #
    #   @return [String]
    #
    EnableImportFindingsForProductInput = ::Struct.new(
      :product_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute product_subscription_arn
    #   <p>The ARN of your subscription to the product to enable integrations for.</p>
    #
    #   @return [String]
    #
    EnableImportFindingsForProductOutput = ::Struct.new(
      :product_subscription_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute admin_account_id
    #   <p>The Amazon Web Services account identifier of the account to designate as the Security Hub administrator
    #            account.</p>
    #
    #   @return [String]
    #
    EnableOrganizationAdminAccountInput = ::Struct.new(
      :admin_account_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    EnableOrganizationAdminAccountOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tags
    #   <p>The tags to add to the hub resource when you enable Security Hub.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute enable_default_standards
    #   <p>Whether to enable the security standards that Security Hub has designated as automatically
    #            enabled. If you do not provide a value for <code>EnableDefaultStandards</code>, it is set
    #            to <code>true</code>. To not enable the automatically enabled standards, set
    #               <code>EnableDefaultStandards</code> to <code>false</code>.</p>
    #
    #   @return [Boolean]
    #
    EnableSecurityHubInput = ::Struct.new(
      :tags,
      :enable_default_standards,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.enable_default_standards ||= false
      end
    end

    EnableSecurityHubOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A finding aggregator. A finding aggregator contains the configuration for finding aggregation.</p>
    #
    # @!attribute finding_aggregator_arn
    #   <p>The ARN of the finding aggregator. You use the finding aggregator ARN to retrieve details for, update, and delete the finding aggregator.</p>
    #
    #   @return [String]
    #
    FindingAggregator = ::Struct.new(
      :finding_aggregator_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>In a <code>BatchImportFindings</code> request, finding providers use <code>FindingProviderFields</code> to provide and update values for confidence, criticality, related findings, severity, and types.</p>
    #
    # @!attribute confidence
    #   <p>A finding's confidence. Confidence is defined as the likelihood that a finding
    #            accurately identifies the behavior or issue that it was intended to identify.</p>
    #            <p>Confidence is scored on a 0-100 basis using a ratio scale, where 0 means zero percent
    #            confidence and 100 means 100 percent confidence.</p>
    #
    #   @return [Integer]
    #
    # @!attribute criticality
    #   <p>The level of importance assigned to the resources associated with the finding.</p>
    #            <p>A score of 0 means that the underlying resources have no criticality, and a score of 100
    #            is reserved for the most critical resources.</p>
    #
    #   @return [Integer]
    #
    # @!attribute related_findings
    #   <p>A list of findings that are related to the current finding.</p>
    #
    #   @return [Array<RelatedFinding>]
    #
    # @!attribute severity
    #   <p>The severity of a finding.</p>
    #
    #   @return [FindingProviderSeverity]
    #
    # @!attribute types
    #   <p>One or more finding types in the format of <code>namespace/category/classifier</code>
    #            that classify a finding.</p>
    #            <p>Valid namespace values are: Software and Configuration Checks | TTPs | Effects | Unusual
    #            Behaviors | Sensitive Data Identifications</p>
    #
    #   @return [Array<String>]
    #
    FindingProviderFields = ::Struct.new(
      :confidence,
      :criticality,
      :related_findings,
      :severity,
      :types,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.confidence ||= 0
        self.criticality ||= 0
      end
    end

    # <p>The severity assigned to the finding by the finding provider.</p>
    #
    # @!attribute label
    #   <p>The severity label assigned to the finding by the finding provider.</p>
    #
    #   Enum, one of: ["INFORMATIONAL", "LOW", "MEDIUM", "HIGH", "CRITICAL"]
    #
    #   @return [String]
    #
    # @!attribute original
    #   <p>The finding provider's original value for the severity.</p>
    #
    #   @return [String]
    #
    FindingProviderSeverity = ::Struct.new(
      :label,
      :original,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Defines the behavior of the firewall.</p>
    #
    # @!attribute stateful_rule_group_references
    #   <p>The stateful rule groups that are used in the firewall policy.</p>
    #
    #   @return [Array<FirewallPolicyStatefulRuleGroupReferencesDetails>]
    #
    # @!attribute stateless_custom_actions
    #   <p>The custom action definitions that are available to use in the firewall policy's <code>StatelessDefaultActions</code> setting.</p>
    #
    #   @return [Array<FirewallPolicyStatelessCustomActionsDetails>]
    #
    # @!attribute stateless_default_actions
    #   <p>The actions to take on a packet if it doesn't match any of the stateless rules in the policy.</p>
    #            <p>You must specify a standard action (<code>aws:pass</code>, <code>aws:drop</code>, <code>aws:forward_to_sfe</code>), and can optionally include a custom action from <code>StatelessCustomActions</code>.
    #         </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute stateless_fragment_default_actions
    #   <p>The actions to take on a fragmented UDP packet if it doesn't match any of the stateless rules in the policy.</p>
    #            <p>You must specify a standard action (<code>aws:pass</code>, <code>aws:drop</code>, <code>aws:forward_to_sfe</code>), and can optionally include a custom action from <code>StatelessCustomActions</code>.
    #         </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute stateless_rule_group_references
    #   <p>The stateless rule groups that are used in the firewall policy.</p>
    #
    #   @return [Array<FirewallPolicyStatelessRuleGroupReferencesDetails>]
    #
    FirewallPolicyDetails = ::Struct.new(
      :stateful_rule_group_references,
      :stateless_custom_actions,
      :stateless_default_actions,
      :stateless_fragment_default_actions,
      :stateless_rule_group_references,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A stateful rule group that is used by the firewall policy.</p>
    #
    # @!attribute resource_arn
    #   <p>The ARN of the stateful rule group.</p>
    #
    #   @return [String]
    #
    FirewallPolicyStatefulRuleGroupReferencesDetails = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A custom action that can be used for stateless packet handling.</p>
    #
    # @!attribute action_definition
    #   <p>The definition of the custom action.</p>
    #
    #   @return [StatelessCustomActionDefinition]
    #
    # @!attribute action_name
    #   <p>The name of the custom action.</p>
    #
    #   @return [String]
    #
    FirewallPolicyStatelessCustomActionsDetails = ::Struct.new(
      :action_definition,
      :action_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A stateless rule group that is used by the firewall policy.</p>
    #
    # @!attribute priority
    #   <p>The order in which to run the stateless rule group.</p>
    #
    #   @return [Integer]
    #
    # @!attribute resource_arn
    #   <p>The ARN of the stateless rule group.</p>
    #
    #   @return [String]
    #
    FirewallPolicyStatelessRuleGroupReferencesDetails = ::Struct.new(
      :priority,
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.priority ||= 0
      end
    end

    # <p>Provides the latitude and longitude coordinates of a location.</p>
    #
    # @!attribute lon
    #   <p>The longitude of the location.</p>
    #
    #   @return [Float]
    #
    # @!attribute lat
    #   <p>The latitude of the location.</p>
    #
    #   @return [Float]
    #
    GeoLocation = ::Struct.new(
      :lon,
      :lat,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.lon ||= 0
        self.lat ||= 0
      end
    end

    GetAdministratorAccountInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute administrator
    #   <p>Details about an invitation.</p>
    #
    #   @return [Invitation]
    #
    GetAdministratorAccountOutput = ::Struct.new(
      :administrator,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute standards_subscription_arns
    #   <p>The list of the standards subscription ARNs for the standards to retrieve.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The token that is required for pagination. On your first call to the
    #               <code>GetEnabledStandards</code> operation, set the value of this parameter to
    #               <code>NULL</code>.</p>
    #            <p>For subsequent calls to the operation, to continue listing data, set the value of this
    #            parameter to the value returned from the previous response.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response.</p>
    #
    #   @return [Integer]
    #
    GetEnabledStandardsInput = ::Struct.new(
      :standards_subscription_arns,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # @!attribute standards_subscriptions
    #   <p>The list of <code>StandardsSubscriptions</code> objects that include information about
    #            the enabled standards.</p>
    #
    #   @return [Array<StandardsSubscription>]
    #
    # @!attribute next_token
    #   <p>The pagination token to use to request the next page of results.</p>
    #
    #   @return [String]
    #
    GetEnabledStandardsOutput = ::Struct.new(
      :standards_subscriptions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute finding_aggregator_arn
    #   <p>The ARN of the finding aggregator to return details for. To obtain the ARN, use <code>ListFindingAggregators</code>.</p>
    #
    #   @return [String]
    #
    GetFindingAggregatorInput = ::Struct.new(
      :finding_aggregator_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute finding_aggregator_arn
    #   <p>The ARN of the finding aggregator.</p>
    #
    #   @return [String]
    #
    # @!attribute finding_aggregation_region
    #   <p>The aggregation Region.</p>
    #
    #   @return [String]
    #
    # @!attribute region_linking_mode
    #   <p>Indicates whether to link all Regions, all Regions except for a list of excluded Regions, or a list of included Regions.</p>
    #
    #   @return [String]
    #
    # @!attribute regions
    #   <p>The list of excluded Regions or included Regions.</p>
    #
    #   @return [Array<String>]
    #
    GetFindingAggregatorOutput = ::Struct.new(
      :finding_aggregator_arn,
      :finding_aggregation_region,
      :region_linking_mode,
      :regions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute filters
    #   <p>The finding attributes used to define a condition to filter the returned
    #            findings.</p>
    #            <p>You can filter by up to 10 finding attributes. For each attribute, you can provide up to
    #            20 filter values.</p>
    #            <p>Note that in the available filter fields, <code>WorkflowState</code> is deprecated. To
    #            search for a finding based on its workflow status, use <code>WorkflowStatus</code>.</p>
    #
    #   @return [AwsSecurityFindingFilters]
    #
    # @!attribute sort_criteria
    #   <p>The finding attributes used to sort the list of returned findings.</p>
    #
    #   @return [Array<SortCriterion>]
    #
    # @!attribute next_token
    #   <p>The token that is required for pagination. On your first call to the
    #               <code>GetFindings</code> operation, set the value of this parameter to
    #            <code>NULL</code>.</p>
    #            <p>For subsequent calls to the operation, to continue listing data, set the value of this
    #            parameter to the value returned from the previous response.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of findings to return.</p>
    #
    #   @return [Integer]
    #
    GetFindingsInput = ::Struct.new(
      :filters,
      :sort_criteria,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # @!attribute findings
    #   <p>The findings that matched the filters specified in the request.</p>
    #
    #   @return [Array<AwsSecurityFinding>]
    #
    # @!attribute next_token
    #   <p>The pagination token to use to request the next page of results.</p>
    #
    #   @return [String]
    #
    GetFindingsOutput = ::Struct.new(
      :findings,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute insight_arn
    #   <p>The ARN of the insight for which to return results.</p>
    #
    #   @return [String]
    #
    GetInsightResultsInput = ::Struct.new(
      :insight_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute insight_results
    #   <p>The insight results returned by the operation.</p>
    #
    #   @return [InsightResults]
    #
    GetInsightResultsOutput = ::Struct.new(
      :insight_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute insight_arns
    #   <p>The ARNs of the insights to describe. If you do not provide any insight ARNs, then
    #               <code>GetInsights</code> returns all of your custom insights. It does not return any
    #            managed insights.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The token that is required for pagination. On your first call to the
    #               <code>GetInsights</code> operation, set the value of this parameter to
    #            <code>NULL</code>.</p>
    #            <p>For subsequent calls to the operation, to continue listing data, set the value of this
    #            parameter to the value returned from the previous response.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to return in the response.</p>
    #
    #   @return [Integer]
    #
    GetInsightsInput = ::Struct.new(
      :insight_arns,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # @!attribute insights
    #   <p>The insights returned by the operation.</p>
    #
    #   @return [Array<Insight>]
    #
    # @!attribute next_token
    #   <p>The pagination token to use to request the next page of results.</p>
    #
    #   @return [String]
    #
    GetInsightsOutput = ::Struct.new(
      :insights,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    GetInvitationsCountInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute invitations_count
    #   <p>The number of all membership invitations sent to this Security Hub member account, not
    #            including the currently accepted invitation.</p>
    #
    #   @return [Integer]
    #
    GetInvitationsCountOutput = ::Struct.new(
      :invitations_count,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.invitations_count ||= 0
      end
    end

    GetMasterAccountInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute master
    #   <p>A list of details about the Security Hub administrator account for the current member account.
    #         </p>
    #
    #   @return [Invitation]
    #
    GetMasterAccountOutput = ::Struct.new(
      :master,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_ids
    #   <p>The list of account IDs for the Security Hub member accounts to return the details for. </p>
    #
    #   @return [Array<String>]
    #
    GetMembersInput = ::Struct.new(
      :account_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute members
    #   <p>The list of details about the Security Hub member accounts.</p>
    #
    #   @return [Array<Member>]
    #
    # @!attribute unprocessed_accounts
    #   <p>The list of Amazon Web Services accounts that could not be processed. For each account, the list
    #            includes the account ID and the email address.</p>
    #
    #   @return [Array<Result>]
    #
    GetMembersOutput = ::Struct.new(
      :members,
      :unprocessed_accounts,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An Internet Control Message Protocol (ICMP) type and code.</p>
    #
    # @!attribute code
    #   <p>The ICMP code for which to deny or allow access. To deny or allow all codes, use the value -1.</p>
    #
    #   @return [Integer]
    #
    # @!attribute type
    #   <p>The ICMP type for which to deny or allow access. To deny or allow all types, use the value -1.</p>
    #
    #   @return [Integer]
    #
    IcmpTypeCode = ::Struct.new(
      :code,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.code ||= 0
        self.type ||= 0
      end
    end

    # <p>The list of the findings that cannot be imported. For each finding, the list provides
    #          the error.</p>
    #
    # @!attribute id
    #   <p>The identifier of the finding that could not be updated.</p>
    #
    #   @return [String]
    #
    # @!attribute error_code
    #   <p>The code of the error returned by the <code>BatchImportFindings</code> operation.</p>
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>The message of the error returned by the <code>BatchImportFindings</code>
    #            operation.</p>
    #
    #   @return [String]
    #
    ImportFindingsError = ::Struct.new(
      :id,
      :error_code,
      :error_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about a Security Hub insight.</p>
    #
    # @!attribute insight_arn
    #   <p>The ARN of a Security Hub insight.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of a Security Hub insight.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>One or more attributes used to filter the findings included in the insight. The insight
    #            only includes findings that match the criteria defined in the filters.</p>
    #
    #   @return [AwsSecurityFindingFilters]
    #
    # @!attribute group_by_attribute
    #   <p>The grouping attribute for the insight's findings. Indicates how to group the matching
    #            findings, and identifies the type of item that the insight applies to. For example, if an
    #            insight is grouped by resource identifier, then the insight produces a list of resource
    #            identifiers.</p>
    #
    #   @return [String]
    #
    Insight = ::Struct.new(
      :insight_arn,
      :name,
      :filters,
      :group_by_attribute,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The insight result values returned by the <code>GetInsightResults</code>
    #          operation.</p>
    #
    # @!attribute group_by_attribute_value
    #   <p>The value of the attribute that the findings are grouped by for the insight whose
    #            results are returned by the <code>GetInsightResults</code> operation.</p>
    #
    #   @return [String]
    #
    # @!attribute count
    #   <p>The number of findings returned for each <code>GroupByAttributeValue</code>.</p>
    #
    #   @return [Integer]
    #
    InsightResultValue = ::Struct.new(
      :group_by_attribute_value,
      :count,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.count ||= 0
      end
    end

    # <p>The insight results returned by the <code>GetInsightResults</code> operation.</p>
    #
    # @!attribute insight_arn
    #   <p>The ARN of the insight whose results are returned by the <code>GetInsightResults</code>
    #            operation.</p>
    #
    #   @return [String]
    #
    # @!attribute group_by_attribute
    #   <p>The attribute that the findings are grouped by for the insight whose results are
    #            returned by the <code>GetInsightResults</code> operation.</p>
    #
    #   @return [String]
    #
    # @!attribute result_values
    #   <p>The list of insight result values returned by the <code>GetInsightResults</code>
    #            operation.</p>
    #
    #   @return [Array<InsightResultValue>]
    #
    InsightResults = ::Struct.new(
      :insight_arn,
      :group_by_attribute,
      :result_values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for IntegrationType
    #
    module IntegrationType
      # No documentation available.
      #
      SEND_FINDINGS_TO_SECURITY_HUB = "SEND_FINDINGS_TO_SECURITY_HUB"

      # No documentation available.
      #
      RECEIVE_FINDINGS_FROM_SECURITY_HUB = "RECEIVE_FINDINGS_FROM_SECURITY_HUB"

      # No documentation available.
      #
      UPDATE_FINDINGS_IN_SECURITY_HUB = "UPDATE_FINDINGS_IN_SECURITY_HUB"
    end

    # <p>Internal server error.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute code
    #
    #   @return [String]
    #
    InternalException = ::Struct.new(
      :message,
      :code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>There is an issue with the account used to make the request. Either Security Hub is not enabled
    #          for the account, or the account does not have permission to perform this action.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute code
    #
    #   @return [String]
    #
    InvalidAccessException = ::Struct.new(
      :message,
      :code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request was rejected because you supplied an invalid or out-of-range value for an
    #          input parameter.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute code
    #
    #   @return [String]
    #
    InvalidInputException = ::Struct.new(
      :message,
      :code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about an invitation.</p>
    #
    # @!attribute account_id
    #   <p>The account ID of the Security Hub administrator account that the invitation was sent from.</p>
    #
    #   @return [String]
    #
    # @!attribute invitation_id
    #   <p>The ID of the invitation sent to the member account.</p>
    #
    #   @return [String]
    #
    # @!attribute invited_at
    #   <p>The timestamp of when the invitation was sent.</p>
    #
    #   @return [Time]
    #
    # @!attribute member_status
    #   <p>The current status of the association between the member and administrator accounts.</p>
    #
    #   @return [String]
    #
    Invitation = ::Struct.new(
      :account_id,
      :invitation_id,
      :invited_at,
      :member_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_ids
    #   <p>The list of account IDs of the Amazon Web Services accounts to invite to Security Hub as members. </p>
    #
    #   @return [Array<String>]
    #
    InviteMembersInput = ::Struct.new(
      :account_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute unprocessed_accounts
    #   <p>The list of Amazon Web Services accounts that could not be processed. For each account, the list
    #            includes the account ID and the email address.</p>
    #
    #   @return [Array<Result>]
    #
    InviteMembersOutput = ::Struct.new(
      :unprocessed_accounts,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The IP filter for querying findings.</p>
    #
    # @!attribute cidr
    #   <p>A finding's CIDR value.</p>
    #
    #   @return [String]
    #
    IpFilter = ::Struct.new(
      :cidr,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about an internet provider.</p>
    #
    # @!attribute asn
    #   <p>The Autonomous System Number (ASN) of the internet provider</p>
    #
    #   @return [Integer]
    #
    # @!attribute asn_org
    #   <p>The name of the organization that registered the ASN.</p>
    #
    #   @return [String]
    #
    # @!attribute isp
    #   <p>The ISP information for the internet provider.</p>
    #
    #   @return [String]
    #
    # @!attribute org
    #   <p>The name of the internet provider.</p>
    #
    #   @return [String]
    #
    IpOrganizationDetails = ::Struct.new(
      :asn,
      :asn_org,
      :isp,
      :org,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.asn ||= 0
      end
    end

    # <p>An IPV6 CIDR block association.</p>
    #
    # @!attribute association_id
    #   <p>The association ID for the IPv6 CIDR block.</p>
    #
    #   @return [String]
    #
    # @!attribute ipv6_cidr_block
    #   <p>The IPv6 CIDR block.</p>
    #
    #   @return [String]
    #
    # @!attribute cidr_block_state
    #   <p>Information about the state of the CIDR block.</p>
    #
    #   @return [String]
    #
    Ipv6CidrBlockAssociation = ::Struct.new(
      :association_id,
      :ipv6_cidr_block,
      :cidr_block_state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A keyword filter for querying findings.</p>
    #
    # @!attribute value
    #   <p>A value for the keyword.</p>
    #
    #   @return [String]
    #
    KeywordFilter = ::Struct.new(
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request was rejected because it attempted to create resources beyond the current Amazon Web Services
    #          account or throttling limits. The error code describes the limit exceeded.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute code
    #
    #   @return [String]
    #
    LimitExceededException = ::Struct.new(
      :message,
      :code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The token that is required for pagination. On your first call to the
    #               <code>ListEnabledProductsForImport</code> operation, set the value of this parameter to
    #               <code>NULL</code>.</p>
    #            <p>For subsequent calls to the operation, to continue listing data, set the value of this
    #            parameter to the value returned from the previous response.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to return in the response.</p>
    #
    #   @return [Integer]
    #
    ListEnabledProductsForImportInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # @!attribute product_subscriptions
    #   <p>The list of ARNs for the resources that represent your subscriptions to products. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The pagination token to use to request the next page of results.</p>
    #
    #   @return [String]
    #
    ListEnabledProductsForImportOutput = ::Struct.new(
      :product_subscriptions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The token returned with the previous set of results. Identifies the next set of results to return.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return. This operation currently only returns a single result.</p>
    #
    #   @return [Integer]
    #
    ListFindingAggregatorsInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # @!attribute finding_aggregators
    #   <p>The list of finding aggregators. This operation currently only returns a single result.</p>
    #
    #   @return [Array<FindingAggregator>]
    #
    # @!attribute next_token
    #   <p>If there are more results, this is the token to provide in the next call to <code>ListFindingAggregators</code>.</p>
    #            <p>This operation currently only returns a single result.
    #         </p>
    #
    #   @return [String]
    #
    ListFindingAggregatorsOutput = ::Struct.new(
      :finding_aggregators,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of items to return in the response. </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token that is required for pagination. On your first call to the
    #               <code>ListInvitations</code> operation, set the value of this parameter to
    #               <code>NULL</code>.</p>
    #            <p>For subsequent calls to the operation, to continue listing data, set the value of this
    #            parameter to the value returned from the previous response.</p>
    #
    #   @return [String]
    #
    ListInvitationsInput = ::Struct.new(
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

    # @!attribute invitations
    #   <p>The details of the invitations returned by the operation.</p>
    #
    #   @return [Array<Invitation>]
    #
    # @!attribute next_token
    #   <p>The pagination token to use to request the next page of results.</p>
    #
    #   @return [String]
    #
    ListInvitationsOutput = ::Struct.new(
      :invitations,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute only_associated
    #   <p>Specifies which member accounts to include in the response based on their relationship
    #            status with the administrator account. The default value is <code>TRUE</code>.</p>
    #            <p>If <code>OnlyAssociated</code> is set to <code>TRUE</code>, the response includes member
    #            accounts whose relationship status with the administrator account is set to <code>ENABLED</code>.</p>
    #            <p>If <code>OnlyAssociated</code> is set to <code>FALSE</code>, the response includes all
    #            existing member accounts. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to return in the response. </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token that is required for pagination. On your first call to the
    #               <code>ListMembers</code> operation, set the value of this parameter to
    #            <code>NULL</code>.</p>
    #            <p>For subsequent calls to the operation, to continue listing data, set the value of this
    #            parameter to the value returned from the previous response.</p>
    #
    #   @return [String]
    #
    ListMembersInput = ::Struct.new(
      :only_associated,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.only_associated ||= false
        self.max_results ||= 0
      end
    end

    # @!attribute members
    #   <p>Member details returned by the operation.</p>
    #
    #   @return [Array<Member>]
    #
    # @!attribute next_token
    #   <p>The pagination token to use to request the next page of results.</p>
    #
    #   @return [String]
    #
    ListMembersOutput = ::Struct.new(
      :members,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of items to return in the response.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token that is required for pagination. On your first call to the
    #               <code>ListOrganizationAdminAccounts</code> operation, set the value of this parameter to
    #               <code>NULL</code>. For subsequent calls to the operation, to continue listing data, set
    #            the value of this parameter to the value returned from the previous response. </p>
    #
    #   @return [String]
    #
    ListOrganizationAdminAccountsInput = ::Struct.new(
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

    # @!attribute admin_accounts
    #   <p>The list of Security Hub administrator accounts.</p>
    #
    #   @return [Array<AdminAccount>]
    #
    # @!attribute next_token
    #   <p>The pagination token to use to request the next page of results.</p>
    #
    #   @return [String]
    #
    ListOrganizationAdminAccountsOutput = ::Struct.new(
      :admin_accounts,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource to retrieve tags for.</p>
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
    #   <p>The tags associated with a resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the state of the load balancer.</p>
    #
    # @!attribute code
    #   <p>The state code. The initial state of the load balancer is provisioning.</p>
    #            <p>After the load balancer is fully set up and ready to route traffic, its state is
    #            active.</p>
    #            <p>If the load balancer could not be set up, its state is failed. </p>
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>A description of the state.</p>
    #
    #   @return [String]
    #
    LoadBalancerState = ::Struct.new(
      :code,
      :reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A list of malware related to a finding.</p>
    #
    # @!attribute name
    #   <p>The name of the malware that was observed.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of the malware that was observed.</p>
    #
    #   Enum, one of: ["ADWARE", "BLENDED_THREAT", "BOTNET_AGENT", "COIN_MINER", "EXPLOIT_KIT", "KEYLOGGER", "MACRO", "POTENTIALLY_UNWANTED", "SPYWARE", "RANSOMWARE", "REMOTE_ACCESS", "ROOTKIT", "TROJAN", "VIRUS", "WORM"]
    #
    #   @return [String]
    #
    # @!attribute path
    #   <p>The file system path of the malware that was observed.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the malware that was observed.</p>
    #
    #   Enum, one of: ["OBSERVED", "REMOVAL_FAILED", "REMOVED"]
    #
    #   @return [String]
    #
    Malware = ::Struct.new(
      :name,
      :type,
      :path,
      :state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for MalwareState
    #
    module MalwareState
      # No documentation available.
      #
      OBSERVED = "OBSERVED"

      # No documentation available.
      #
      REMOVAL_FAILED = "REMOVAL_FAILED"

      # No documentation available.
      #
      REMOVED = "REMOVED"
    end

    # Includes enum constants for MalwareType
    #
    module MalwareType
      # No documentation available.
      #
      ADWARE = "ADWARE"

      # No documentation available.
      #
      BLENDED_THREAT = "BLENDED_THREAT"

      # No documentation available.
      #
      BOTNET_AGENT = "BOTNET_AGENT"

      # No documentation available.
      #
      COIN_MINER = "COIN_MINER"

      # No documentation available.
      #
      EXPLOIT_KIT = "EXPLOIT_KIT"

      # No documentation available.
      #
      KEYLOGGER = "KEYLOGGER"

      # No documentation available.
      #
      MACRO = "MACRO"

      # No documentation available.
      #
      POTENTIALLY_UNWANTED = "POTENTIALLY_UNWANTED"

      # No documentation available.
      #
      SPYWARE = "SPYWARE"

      # No documentation available.
      #
      RANSOMWARE = "RANSOMWARE"

      # No documentation available.
      #
      REMOTE_ACCESS = "REMOTE_ACCESS"

      # No documentation available.
      #
      ROOTKIT = "ROOTKIT"

      # No documentation available.
      #
      TROJAN = "TROJAN"

      # No documentation available.
      #
      VIRUS = "VIRUS"

      # No documentation available.
      #
      WORM = "WORM"
    end

    # <p>A map filter for querying findings. Each map filter provides the field to check, the
    #          value to look for, and the comparison operator.</p>
    #
    # @!attribute key
    #   <p>The key of the map filter. For example, for <code>ResourceTags</code>, <code>Key</code>
    #            identifies the name of the tag. For <code>UserDefinedFields</code>, <code>Key</code> is the
    #            name of the field.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value for the key in the map filter. Filter values are case sensitive. For example,
    #            one of the values for a tag called <code>Department</code> might be <code>Security</code>.
    #            If you provide <code>security</code> as the filter value, then there is no match.</p>
    #
    #   @return [String]
    #
    # @!attribute comparison
    #   <p>The condition to apply to the key value when querying for findings with a map
    #            filter.</p>
    #            <p>To search for values that exactly match the filter value, use <code>EQUALS</code>. For
    #            example, for the <code>ResourceTags</code> field, the filter <code>Department EQUALS
    #               Security</code> matches findings that have the value <code>Security</code> for the tag
    #               <code>Department</code>.</p>
    #            <p>To search for values other than the filter value, use <code>NOT_EQUALS</code>. For
    #            example, for the <code>ResourceTags</code> field, the filter <code>Department NOT_EQUALS
    #               Finance</code> matches findings that do not have the value <code>Finance</code> for the
    #            tag <code>Department</code>.</p>
    #            <p>
    #               <code>EQUALS</code> filters on the same field are joined by <code>OR</code>. A finding
    #            matches if it matches any one of those filters.</p>
    #            <p>
    #               <code>NOT_EQUALS</code> filters on the same field are joined by <code>AND</code>. A
    #            finding matches only if it matches all of those filters.</p>
    #            <p>You cannot have both an <code>EQUALS</code> filter and a <code>NOT_EQUALS</code> filter
    #            on the same field.</p>
    #
    #   Enum, one of: ["EQUALS", "NOT_EQUALS"]
    #
    #   @return [String]
    #
    MapFilter = ::Struct.new(
      :key,
      :value,
      :comparison,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for MapFilterComparison
    #
    module MapFilterComparison
      # No documentation available.
      #
      EQUALS = "EQUALS"

      # No documentation available.
      #
      NOT_EQUALS = "NOT_EQUALS"
    end

    # <p>The details about a member account.</p>
    #
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the member account.</p>
    #
    #   @return [String]
    #
    # @!attribute email
    #   <p>The email address of the member account.</p>
    #
    #   @return [String]
    #
    # @!attribute master_id
    #   <p>This is replaced by <code>AdministratorID</code>.</p>
    #            <p>The Amazon Web Services account ID of the Security Hub administrator account associated with this member account.</p>
    #
    #   @deprecated
    #     This field is deprecated, use AdministratorId instead.
    #
    #   @return [String]
    #
    # @!attribute administrator_id
    #   <p>The Amazon Web Services account ID of the Security Hub administrator account associated with this member account.</p>
    #
    #   @return [String]
    #
    # @!attribute member_status
    #   <p>The status of the relationship between the member account and its administrator account.
    #         </p>
    #            <p>The status can have one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATED</code> - Indicates that the administrator account added the member account,
    #                  but has not yet invited the member account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INVITED</code> - Indicates that the administrator account invited the member
    #                  account. The member account has not yet responded to the invitation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ENABLED</code> - Indicates that the member account is currently active. For
    #                  manually invited member accounts, indicates that the member account accepted the
    #                  invitation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REMOVED</code> - Indicates that the administrator account disassociated the member
    #                  account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RESIGNED</code> - Indicates that the member account disassociated themselves
    #                  from the administrator account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETED</code> - Indicates that the administrator account deleted the member
    #                  account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACCOUNT_SUSPENDED</code> - Indicates that an organization account was suspended from Amazon Web Services at the same time that the administrator account tried to enable the organization account as a member account.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute invited_at
    #   <p>A timestamp for the date and time when the invitation was sent to the member
    #            account.</p>
    #
    #   @return [Time]
    #
    # @!attribute updated_at
    #   <p>The timestamp for the date and time when the member account was updated.</p>
    #
    #   @return [Time]
    #
    Member = ::Struct.new(
      :account_id,
      :email,
      :master_id,
      :administrator_id,
      :member_status,
      :invited_at,
      :updated_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The details of network-related information about a finding.</p>
    #
    # @!attribute direction
    #   <p>The direction of network traffic associated with a finding.</p>
    #
    #   Enum, one of: ["IN", "OUT"]
    #
    #   @return [String]
    #
    # @!attribute protocol
    #   <p>The protocol of network-related information about a finding.</p>
    #
    #   @return [String]
    #
    # @!attribute open_port_range
    #   <p>The range of open ports that is present on the network.</p>
    #
    #   @return [PortRange]
    #
    # @!attribute source_ip_v4
    #   <p>The source IPv4 address of network-related information about a finding.</p>
    #
    #   @return [String]
    #
    # @!attribute source_ip_v6
    #   <p>The source IPv6 address of network-related information about a finding.</p>
    #
    #   @return [String]
    #
    # @!attribute source_port
    #   <p>The source port of network-related information about a finding.</p>
    #
    #   @return [Integer]
    #
    # @!attribute source_domain
    #   <p>The source domain of network-related information about a finding.</p>
    #
    #   @return [String]
    #
    # @!attribute source_mac
    #   <p>The source media access control (MAC) address of network-related information about a
    #            finding.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_ip_v4
    #   <p>The destination IPv4 address of network-related information about a finding.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_ip_v6
    #   <p>The destination IPv6 address of network-related information about a finding.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_port
    #   <p>The destination port of network-related information about a finding.</p>
    #
    #   @return [Integer]
    #
    # @!attribute destination_domain
    #   <p>The destination domain of network-related information about a finding.</p>
    #
    #   @return [String]
    #
    Network = ::Struct.new(
      :direction,
      :protocol,
      :open_port_range,
      :source_ip_v4,
      :source_ip_v6,
      :source_port,
      :source_domain,
      :source_mac,
      :destination_ip_v4,
      :destination_ip_v6,
      :destination_port,
      :destination_domain,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.source_port ||= 0
        self.destination_port ||= 0
      end
    end

    # <p>Provided if <code>ActionType</code> is <code>NETWORK_CONNECTION</code>. It provides
    #          details about the attempted network connection that was detected.</p>
    #
    # @!attribute connection_direction
    #   <p>The direction of the network connection request (<code>IN</code> or
    #            <code>OUT</code>).</p>
    #
    #   @return [String]
    #
    # @!attribute remote_ip_details
    #   <p>Information about the remote IP address that issued the network connection
    #            request.</p>
    #
    #   @return [ActionRemoteIpDetails]
    #
    # @!attribute remote_port_details
    #   <p>Information about the port on the remote IP address.</p>
    #
    #   @return [ActionRemotePortDetails]
    #
    # @!attribute local_port_details
    #   <p>Information about the port on the EC2 instance.</p>
    #
    #   @return [ActionLocalPortDetails]
    #
    # @!attribute protocol
    #   <p>The protocol used to make the network connection request.</p>
    #
    #   @return [String]
    #
    # @!attribute blocked
    #   <p>Indicates whether the network connection attempt was blocked.</p>
    #
    #   @return [Boolean]
    #
    NetworkConnectionAction = ::Struct.new(
      :connection_direction,
      :remote_ip_details,
      :remote_port_details,
      :local_port_details,
      :protocol,
      :blocked,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.blocked ||= false
      end
    end

    # Includes enum constants for NetworkDirection
    #
    module NetworkDirection
      # No documentation available.
      #
      IN = "IN"

      # No documentation available.
      #
      OUT = "OUT"
    end

    # <p>Details about a network path component that occurs before or after the current
    #          component.</p>
    #
    # @!attribute protocol
    #   <p>The protocol used for the component.</p>
    #
    #   @return [String]
    #
    # @!attribute destination
    #   <p>Information about the destination of the component.</p>
    #
    #   @return [NetworkPathComponentDetails]
    #
    # @!attribute source
    #   <p>Information about the origin of the component.</p>
    #
    #   @return [NetworkPathComponentDetails]
    #
    NetworkHeader = ::Struct.new(
      :protocol,
      :destination,
      :source,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a network path component.</p>
    #
    # @!attribute component_id
    #   <p>The identifier of a component in the network path.</p>
    #
    #   @return [String]
    #
    # @!attribute component_type
    #   <p>The type of component.</p>
    #
    #   @return [String]
    #
    # @!attribute egress
    #   <p>Information about the component that comes after the current component in the network
    #            path.</p>
    #
    #   @return [NetworkHeader]
    #
    # @!attribute ingress
    #   <p>Information about the component that comes before the current node in the network
    #            path.</p>
    #
    #   @return [NetworkHeader]
    #
    NetworkPathComponent = ::Struct.new(
      :component_id,
      :component_type,
      :egress,
      :ingress,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the destination of the next component in the network path.</p>
    #
    # @!attribute address
    #   <p>The IP addresses of the destination.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute port_ranges
    #   <p>A list of port ranges for the destination.</p>
    #
    #   @return [Array<PortRange>]
    #
    NetworkPathComponentDetails = ::Struct.new(
      :address,
      :port_ranges,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A user-defined note added to a finding.</p>
    #
    # @!attribute text
    #   <p>The text of a note.</p>
    #
    #   @return [String]
    #
    # @!attribute updated_by
    #   <p>The principal that created a note.</p>
    #
    #   @return [String]
    #
    # @!attribute updated_at
    #   <p>The timestamp of when the note was updated.</p>
    #            <p>Uses the <code>date-time</code> format specified in <a href="https://tools.ietf.org/html/rfc3339 section-5.6">RFC 3339 section 5.6, Internet
    #               Date/Time Format</a>. The value cannot contain spaces. For example,
    #               <code>2020-03-22T13:22:13.933Z</code>.</p>
    #
    #   @return [String]
    #
    Note = ::Struct.new(
      :text,
      :updated_by,
      :updated_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The updated note.</p>
    #
    # @!attribute text
    #   <p>The updated note text.</p>
    #
    #   @return [String]
    #
    # @!attribute updated_by
    #   <p>The principal that updated the note.</p>
    #
    #   @return [String]
    #
    NoteUpdate = ::Struct.new(
      :text,
      :updated_by,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A number filter for querying findings.</p>
    #
    # @!attribute gte
    #   <p>The greater-than-equal condition to be applied to a single field when querying for
    #            findings. </p>
    #
    #   @return [Float]
    #
    # @!attribute lte
    #   <p>The less-than-equal condition to be applied to a single field when querying for
    #            findings. </p>
    #
    #   @return [Float]
    #
    # @!attribute eq
    #   <p>The equal-to condition to be applied to a single field when querying for
    #            findings.</p>
    #
    #   @return [Float]
    #
    NumberFilter = ::Struct.new(
      :gte,
      :lte,
      :eq,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.gte ||= 0
        self.lte ||= 0
        self.eq ||= 0
      end
    end

    # <p>The detected occurrences of sensitive data.</p>
    #
    # @!attribute line_ranges
    #   <p>Occurrences of sensitive data detected in a non-binary text file or a Microsoft Word file. Non-binary text files include files such as HTML, XML, JSON, and TXT files.</p>
    #
    #   @return [Array<Range>]
    #
    # @!attribute offset_ranges
    #   <p>Occurrences of sensitive data detected in a binary text file.</p>
    #
    #   @return [Array<Range>]
    #
    # @!attribute pages
    #   <p>Occurrences of sensitive data in an Adobe Portable Document Format (PDF) file.</p>
    #
    #   @return [Array<Page>]
    #
    # @!attribute records
    #   <p>Occurrences of sensitive data in an Apache Avro object container or an Apache Parquet file.</p>
    #
    #   @return [Array<Record>]
    #
    # @!attribute cells
    #   <p>Occurrences of sensitive data detected in Microsoft Excel workbooks, comma-separated value (CSV) files, or tab-separated value (TSV) files.</p>
    #
    #   @return [Array<Cell>]
    #
    Occurrences = ::Struct.new(
      :line_ranges,
      :offset_ranges,
      :pages,
      :records,
      :cells,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An occurrence of sensitive data in an Adobe Portable Document Format (PDF) file.</p>
    #
    # @!attribute page_number
    #   <p>The page number of the page that contains the sensitive data.</p>
    #
    #   @return [Integer]
    #
    # @!attribute line_range
    #   <p>An occurrence of sensitive data detected in a non-binary text file or a Microsoft Word file. Non-binary text files include files such as HTML, XML, JSON, and TXT files.</p>
    #
    #   @return [Range]
    #
    # @!attribute offset_range
    #   <p>An occurrence of sensitive data detected in a binary text file.</p>
    #
    #   @return [Range]
    #
    Page = ::Struct.new(
      :page_number,
      :line_range,
      :offset_range,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.page_number ||= 0
      end
    end

    # Includes enum constants for Partition
    #
    module Partition
      # No documentation available.
      #
      AWS = "aws"

      # No documentation available.
      #
      AWS_CN = "aws-cn"

      # No documentation available.
      #
      AWS_US_GOV = "aws-us-gov"
    end

    # <p>Provides an overview of the patch compliance status for an instance against a selected
    #          compliance standard.</p>
    #
    # @!attribute id
    #   <p>The identifier of the compliance standard that was used to determine the patch
    #            compliance status.</p>
    #
    #   @return [String]
    #
    # @!attribute installed_count
    #   <p>The number of patches from the compliance standard that were installed
    #            successfully.</p>
    #
    #   @return [Integer]
    #
    # @!attribute missing_count
    #   <p>The number of patches that are part of the compliance standard but are not installed.
    #            The count includes patches that failed to install.</p>
    #
    #   @return [Integer]
    #
    # @!attribute failed_count
    #   <p>The number of patches from the compliance standard that failed to install.</p>
    #
    #   @return [Integer]
    #
    # @!attribute installed_other_count
    #   <p>The number of installed patches that are not part of the compliance standard.</p>
    #
    #   @return [Integer]
    #
    # @!attribute installed_rejected_count
    #   <p>The number of patches that are installed but are also on a list of patches that the
    #            customer rejected.</p>
    #
    #   @return [Integer]
    #
    # @!attribute installed_pending_reboot
    #   <p>The number of patches that were applied, but that require the instance to be rebooted in
    #            order to be marked as installed.</p>
    #
    #   @return [Integer]
    #
    # @!attribute operation_start_time
    #   <p>Indicates when the operation started.</p>
    #            <p>Uses the <code>date-time</code> format specified in <a href="https://tools.ietf.org/html/rfc3339 section-5.6">RFC 3339 section 5.6, Internet
    #               Date/Time Format</a>. The value cannot contain spaces. For example,
    #               <code>2020-03-22T13:22:13.933Z</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute operation_end_time
    #   <p>Indicates when the operation completed.</p>
    #            <p>Uses the <code>date-time</code> format specified in <a href="https://tools.ietf.org/html/rfc3339 section-5.6">RFC 3339 section 5.6, Internet
    #               Date/Time Format</a>. The value cannot contain spaces. For example,
    #               <code>2020-03-22T13:22:13.933Z</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute reboot_option
    #   <p>The reboot option specified for the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute operation
    #   <p>The type of patch operation performed. For Patch Manager, the values are
    #               <code>SCAN</code> and <code>INSTALL</code>. </p>
    #
    #   @return [String]
    #
    PatchSummary = ::Struct.new(
      :id,
      :installed_count,
      :missing_count,
      :failed_count,
      :installed_other_count,
      :installed_rejected_count,
      :installed_pending_reboot,
      :operation_start_time,
      :operation_end_time,
      :reboot_option,
      :operation,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.installed_count ||= 0
        self.missing_count ||= 0
        self.failed_count ||= 0
        self.installed_other_count ||= 0
        self.installed_rejected_count ||= 0
        self.installed_pending_reboot ||= 0
      end
    end

    # <p>Provided if <code>ActionType</code> is <code>PORT_PROBE</code>. It provides details
    #          about the attempted port probe that was detected.</p>
    #
    # @!attribute port_probe_details
    #   <p>Information about the ports affected by the port probe.</p>
    #
    #   @return [Array<PortProbeDetail>]
    #
    # @!attribute blocked
    #   <p>Indicates whether the port probe was blocked.</p>
    #
    #   @return [Boolean]
    #
    PortProbeAction = ::Struct.new(
      :port_probe_details,
      :blocked,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.blocked ||= false
      end
    end

    # <p>A port scan that was part of the port probe. For each scan, PortProbeDetails provides
    #          information about the local IP address and port that were scanned, and the remote IP
    #          address that the scan originated from.</p>
    #
    # @!attribute local_port_details
    #   <p>Provides information about the port that was scanned.</p>
    #
    #   @return [ActionLocalPortDetails]
    #
    # @!attribute local_ip_details
    #   <p>Provides information about the IP address where the scanned port is located.</p>
    #
    #   @return [ActionLocalIpDetails]
    #
    # @!attribute remote_ip_details
    #   <p>Provides information about the remote IP address that performed the scan.</p>
    #
    #   @return [ActionRemoteIpDetails]
    #
    PortProbeDetail = ::Struct.new(
      :local_port_details,
      :local_ip_details,
      :remote_ip_details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A range of ports.</p>
    #
    # @!attribute begin
    #   <p>The first port in the port range.</p>
    #
    #   @return [Integer]
    #
    # @!attribute end
    #   <p>The last port in the port range.</p>
    #
    #   @return [Integer]
    #
    PortRange = ::Struct.new(
      :begin,
      :end,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.begin ||= 0
        self.end ||= 0
      end
    end

    # <p>A range of ports.</p>
    #
    # @!attribute from
    #   <p>The first port in the port range.</p>
    #
    #   @return [Integer]
    #
    # @!attribute to
    #   <p>The last port in the port range.</p>
    #
    #   @return [Integer]
    #
    PortRangeFromTo = ::Struct.new(
      :from,
      :to,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.from ||= 0
        self.to ||= 0
      end
    end

    # <p>The details of process-related information about a finding.</p>
    #
    # @!attribute name
    #   <p>The name of the process.</p>
    #
    #   @return [String]
    #
    # @!attribute path
    #   <p>The path to the process executable.</p>
    #
    #   @return [String]
    #
    # @!attribute pid
    #   <p>The process ID.</p>
    #
    #   @return [Integer]
    #
    # @!attribute parent_pid
    #   <p>The parent process ID.</p>
    #
    #   @return [Integer]
    #
    # @!attribute launched_at
    #   <p>Indicates when the process was launched.</p>
    #            <p>Uses the <code>date-time</code> format specified in <a href="https://tools.ietf.org/html/rfc3339 section-5.6">RFC 3339 section 5.6, Internet
    #               Date/Time Format</a>. The value cannot contain spaces. For example,
    #               <code>2020-03-22T13:22:13.933Z</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute terminated_at
    #   <p>Indicates when the process was terminated.</p>
    #            <p>Uses the <code>date-time</code> format specified in <a href="https://tools.ietf.org/html/rfc3339 section-5.6">RFC 3339 section 5.6, Internet
    #               Date/Time Format</a>. The value cannot contain spaces. For example,
    #               <code>2020-03-22T13:22:13.933Z</code>.</p>
    #
    #   @return [String]
    #
    ProcessDetails = ::Struct.new(
      :name,
      :path,
      :pid,
      :parent_pid,
      :launched_at,
      :terminated_at,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.pid ||= 0
        self.parent_pid ||= 0
      end
    end

    # <p>Contains details about a product.</p>
    #
    # @!attribute product_arn
    #   <p>The ARN assigned to the product.</p>
    #
    #   @return [String]
    #
    # @!attribute product_name
    #   <p>The name of the product.</p>
    #
    #   @return [String]
    #
    # @!attribute company_name
    #   <p>The name of the company that provides the product.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the product.</p>
    #
    #   @return [String]
    #
    # @!attribute categories
    #   <p>The categories assigned to the product.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute integration_types
    #   <p>The types of integration that the product supports. Available values are the
    #            following.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SEND_FINDINGS_TO_SECURITY_HUB</code> - The integration sends
    #                  findings to Security Hub.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RECEIVE_FINDINGS_FROM_SECURITY_HUB</code> - The integration
    #                  receives findings from Security Hub.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATE_FINDINGS_IN_SECURITY_HUB</code> - The integration does not send new findings to Security Hub, but does make updates to the findings that it receives from Security Hub.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<String>]
    #
    # @!attribute marketplace_url
    #   <p>For integrations with Amazon Web Services services, the Amazon Web Services Console URL from which to activate the service.</p>
    #            <p>For integrations with third-party products, the Amazon Web Services Marketplace URL from which to subscribe to or purchase the product.</p>
    #
    #   @return [String]
    #
    # @!attribute activation_url
    #   <p>The URL to the service or product documentation about the integration with Security Hub, including how to activate the integration.</p>
    #
    #   @return [String]
    #
    # @!attribute product_subscription_resource_policy
    #   <p>The resource policy associated with the product.</p>
    #
    #   @return [String]
    #
    Product = ::Struct.new(
      :product_arn,
      :product_name,
      :company_name,
      :description,
      :categories,
      :integration_types,
      :marketplace_url,
      :activation_url,
      :product_subscription_resource_policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Identifies where the sensitive data begins and ends.</p>
    #
    # @!attribute start
    #   <p>The number of lines (for a line range) or characters (for an offset range) from the beginning of the file to the end of the sensitive data.</p>
    #
    #   @return [Integer]
    #
    # @!attribute end
    #   <p>The number of lines (for a line range) or characters (for an offset range) from the beginning of the file to the end of the sensitive data.</p>
    #
    #   @return [Integer]
    #
    # @!attribute start_column
    #   <p>In the line where the sensitive data starts, the column within the line where the sensitive data starts.</p>
    #
    #   @return [Integer]
    #
    Range = ::Struct.new(
      :start,
      :end,
      :start_column,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.start ||= 0
        self.end ||= 0
        self.start_column ||= 0
      end
    end

    # <p>A recommendation on how to remediate the issue identified in a finding.</p>
    #
    # @!attribute text
    #   <p>Describes the recommended steps to take to remediate an issue identified in a finding.</p>
    #
    #   @return [String]
    #
    # @!attribute url
    #   <p>A URL to a page or site that contains information about how to remediate a finding.</p>
    #
    #   @return [String]
    #
    Recommendation = ::Struct.new(
      :text,
      :url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An occurrence of sensitive data in an Apache Avro object container or an Apache Parquet file.</p>
    #
    # @!attribute json_path
    #   <p>The path, as a JSONPath expression, to the field in the record that contains the data. If the field name is longer than 20 characters, it is truncated. If the path is longer than 250 characters, it is truncated.</p>
    #
    #   @return [String]
    #
    # @!attribute record_index
    #   <p>The record index, starting from 0, for the record that contains the data.</p>
    #
    #   @return [Integer]
    #
    Record = ::Struct.new(
      :json_path,
      :record_index,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.record_index ||= 0
      end
    end

    # Includes enum constants for RecordState
    #
    module RecordState
      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      ARCHIVED = "ARCHIVED"
    end

    # <p>Details about a related finding.</p>
    #
    # @!attribute product_arn
    #   <p>The ARN of the product that generated a related finding.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The product-generated identifier for a related finding.</p>
    #
    #   @return [String]
    #
    RelatedFinding = ::Struct.new(
      :product_arn,
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about the remediation steps for a finding.</p>
    #
    # @!attribute recommendation
    #   <p>A recommendation on the steps to take to remediate the issue identified by a finding.</p>
    #
    #   @return [Recommendation]
    #
    Remediation = ::Struct.new(
      :recommendation,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A resource related to a finding.</p>
    #
    # @!attribute type
    #   <p>The type of the resource that details are provided for. If possible, set
    #               <code>Type</code> to one of the supported resource types. For example, if the resource
    #            is an EC2 instance, then set <code>Type</code> to <code>AwsEc2Instance</code>.</p>
    #            <p>If the resource does not match any of the provided types, then set <code>Type</code> to
    #               <code>Other</code>. </p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The canonical identifier for the given resource type.</p>
    #
    #   @return [String]
    #
    # @!attribute partition
    #   <p>The canonical Amazon Web Services partition name that the Region is assigned to.</p>
    #
    #   Enum, one of: ["aws", "aws-cn", "aws-us-gov"]
    #
    #   @return [String]
    #
    # @!attribute region
    #   <p>The canonical Amazon Web Services external Region name where this resource is located.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_role
    #   <p>Identifies the role of the resource in the finding. A resource is either the actor or target of the finding activity,</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of Amazon Web Services tags associated with a resource at the time the finding was
    #            processed.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute data_classification
    #   <p>Contains information about sensitive data that was detected on the resource.</p>
    #
    #   @return [DataClassificationDetails]
    #
    # @!attribute details
    #   <p>Additional details about the resource related to a finding.</p>
    #
    #   @return [ResourceDetails]
    #
    Resource = ::Struct.new(
      :type,
      :id,
      :partition,
      :region,
      :resource_role,
      :tags,
      :data_classification,
      :details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The resource specified in the request conflicts with an existing resource.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute code
    #
    #   @return [String]
    #
    ResourceConflictException = ::Struct.new(
      :message,
      :code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Additional details about a resource related to a finding.</p>
    #          <p>To provide the details, use the object that corresponds to the resource type. For
    #          example, if the resource type is <code>AwsEc2Instance</code>, then you use the
    #             <code>AwsEc2Instance</code> object to provide the details.</p>
    #          <p>If the type-specific object does not contain all of the fields you want to populate,
    #          then you use the <code>Other</code> object to populate those additional fields.</p>
    #          <p>You also use the <code>Other</code> object to populate the details when the selected
    #          type does not have a corresponding object.</p>
    #
    # @!attribute aws_auto_scaling_auto_scaling_group
    #   <p>Details for an autoscaling group.</p>
    #
    #   @return [AwsAutoScalingAutoScalingGroupDetails]
    #
    # @!attribute aws_code_build_project
    #   <p>Details for an CodeBuild project.</p>
    #
    #   @return [AwsCodeBuildProjectDetails]
    #
    # @!attribute aws_cloud_front_distribution
    #   <p>Details about a CloudFront distribution.</p>
    #
    #   @return [AwsCloudFrontDistributionDetails]
    #
    # @!attribute aws_ec2_instance
    #   <p>Details about an EC2 instance related to a finding.</p>
    #
    #   @return [AwsEc2InstanceDetails]
    #
    # @!attribute aws_ec2_network_interface
    #   <p>Details for an EC2 network interface.</p>
    #
    #   @return [AwsEc2NetworkInterfaceDetails]
    #
    # @!attribute aws_ec2_security_group
    #   <p>Details for an EC2 security group.</p>
    #
    #   @return [AwsEc2SecurityGroupDetails]
    #
    # @!attribute aws_ec2_volume
    #   <p>Details for an EC2 volume.</p>
    #
    #   @return [AwsEc2VolumeDetails]
    #
    # @!attribute aws_ec2_vpc
    #   <p>Details for an EC2 VPC.</p>
    #
    #   @return [AwsEc2VpcDetails]
    #
    # @!attribute aws_ec2_eip
    #   <p>Details about an Elastic IP address.</p>
    #
    #   @return [AwsEc2EipDetails]
    #
    # @!attribute aws_ec2_subnet
    #   <p>Details about a subnet in Amazon EC2.</p>
    #
    #   @return [AwsEc2SubnetDetails]
    #
    # @!attribute aws_ec2_network_acl
    #   <p>Details about an EC2 network access control list (ACL).</p>
    #
    #   @return [AwsEc2NetworkAclDetails]
    #
    # @!attribute aws_elbv2_load_balancer
    #   <p>Details about a load balancer.</p>
    #
    #   @return [AwsElbv2LoadBalancerDetails]
    #
    # @!attribute aws_elastic_beanstalk_environment
    #   <p>Details about an Elastic Beanstalk environment.</p>
    #
    #   @return [AwsElasticBeanstalkEnvironmentDetails]
    #
    # @!attribute aws_elasticsearch_domain
    #   <p>Details for an Elasticsearch domain.</p>
    #
    #   @return [AwsElasticsearchDomainDetails]
    #
    # @!attribute aws_s3_bucket
    #   <p>Details about an S3 bucket related to a finding.</p>
    #
    #   @return [AwsS3BucketDetails]
    #
    # @!attribute aws_s3_account_public_access_block
    #   <p>Details about the Amazon S3 Public Access Block configuration for an account.</p>
    #
    #   @return [AwsS3AccountPublicAccessBlockDetails]
    #
    # @!attribute aws_s3_object
    #   <p>Details about an S3 object related to a finding.</p>
    #
    #   @return [AwsS3ObjectDetails]
    #
    # @!attribute aws_secrets_manager_secret
    #   <p>Details about a Secrets Manager secret.</p>
    #
    #   @return [AwsSecretsManagerSecretDetails]
    #
    # @!attribute aws_iam_access_key
    #   <p>Details about an IAM access key related to a finding.</p>
    #
    #   @return [AwsIamAccessKeyDetails]
    #
    # @!attribute aws_iam_user
    #   <p>Details about an IAM user.</p>
    #
    #   @return [AwsIamUserDetails]
    #
    # @!attribute aws_iam_policy
    #   <p>Details about an IAM permissions policy.</p>
    #
    #   @return [AwsIamPolicyDetails]
    #
    # @!attribute aws_api_gateway_v2_stage
    #   <p>Provides information about a version 2 stage for Amazon API Gateway.</p>
    #
    #   @return [AwsApiGatewayV2StageDetails]
    #
    # @!attribute aws_api_gateway_v2_api
    #   <p>Provides information about a version 2 API in Amazon API Gateway.</p>
    #
    #   @return [AwsApiGatewayV2ApiDetails]
    #
    # @!attribute aws_dynamo_db_table
    #   <p>Details about a DynamoDB table.</p>
    #
    #   @return [AwsDynamoDbTableDetails]
    #
    # @!attribute aws_api_gateway_stage
    #   <p>Provides information about a version 1 Amazon API Gateway stage.</p>
    #
    #   @return [AwsApiGatewayStageDetails]
    #
    # @!attribute aws_api_gateway_rest_api
    #   <p>Provides information about a REST API in version 1 of Amazon API Gateway.</p>
    #
    #   @return [AwsApiGatewayRestApiDetails]
    #
    # @!attribute aws_cloud_trail_trail
    #   <p>Provides details about a CloudTrail trail.</p>
    #
    #   @return [AwsCloudTrailTrailDetails]
    #
    # @!attribute aws_ssm_patch_compliance
    #   <p>Provides information about the state of a patch on an instance based on the patch baseline that was used to patch the instance.</p>
    #
    #   @return [AwsSsmPatchComplianceDetails]
    #
    # @!attribute aws_certificate_manager_certificate
    #   <p>Provides details about an Certificate Manager certificate.</p>
    #
    #   @return [AwsCertificateManagerCertificateDetails]
    #
    # @!attribute aws_redshift_cluster
    #   <p>Contains details about an Amazon Redshift cluster.</p>
    #
    #   @return [AwsRedshiftClusterDetails]
    #
    # @!attribute aws_elb_load_balancer
    #   <p>Contains details about a Classic Load Balancer.</p>
    #
    #   @return [AwsElbLoadBalancerDetails]
    #
    # @!attribute aws_iam_group
    #   <p>Contains details about an IAM group.</p>
    #
    #   @return [AwsIamGroupDetails]
    #
    # @!attribute aws_iam_role
    #   <p>Details about an IAM role.</p>
    #
    #   @return [AwsIamRoleDetails]
    #
    # @!attribute aws_kms_key
    #   <p>Details about an KMS key.</p>
    #
    #   @return [AwsKmsKeyDetails]
    #
    # @!attribute aws_lambda_function
    #   <p>Details about a Lambda function.</p>
    #
    #   @return [AwsLambdaFunctionDetails]
    #
    # @!attribute aws_lambda_layer_version
    #   <p>Details for a Lambda layer version.</p>
    #
    #   @return [AwsLambdaLayerVersionDetails]
    #
    # @!attribute aws_rds_db_instance
    #   <p>Details about an Amazon RDS database instance.</p>
    #
    #   @return [AwsRdsDbInstanceDetails]
    #
    # @!attribute aws_sns_topic
    #   <p>Details about an SNS topic.</p>
    #
    #   @return [AwsSnsTopicDetails]
    #
    # @!attribute aws_sqs_queue
    #   <p>Details about an SQS queue.</p>
    #
    #   @return [AwsSqsQueueDetails]
    #
    # @!attribute aws_waf_web_acl
    #   <p>Details for an WAF WebACL.</p>
    #
    #   @return [AwsWafWebAclDetails]
    #
    # @!attribute aws_rds_db_snapshot
    #   <p>Details about an Amazon RDS database snapshot.</p>
    #
    #   @return [AwsRdsDbSnapshotDetails]
    #
    # @!attribute aws_rds_db_cluster_snapshot
    #   <p>Details about an Amazon RDS database cluster snapshot.</p>
    #
    #   @return [AwsRdsDbClusterSnapshotDetails]
    #
    # @!attribute aws_rds_db_cluster
    #   <p>Details about an Amazon RDS database cluster.</p>
    #
    #   @return [AwsRdsDbClusterDetails]
    #
    # @!attribute aws_ecs_cluster
    #   <p>Details about an ECS cluster.</p>
    #
    #   @return [AwsEcsClusterDetails]
    #
    # @!attribute aws_ecs_task_definition
    #   <p>Details about a task definition. A task definition describes the container and volume definitions of an Amazon Elastic Container Service task.</p>
    #
    #   @return [AwsEcsTaskDefinitionDetails]
    #
    # @!attribute container
    #   <p>Details about a container resource related to a finding.</p>
    #
    #   @return [ContainerDetails]
    #
    # @!attribute other
    #   <p>Details about a resource that are not available in a type-specific details object. Use
    #            the <code>Other</code> object in the following cases.</p>
    #            <ul>
    #               <li>
    #                  <p>The type-specific object does not contain all of the fields that you want to
    #                  populate. In this case, first use the type-specific object to populate those fields.
    #                  Use the <code>Other</code> object to populate the fields that are missing from the
    #                  type-specific object.</p>
    #               </li>
    #               <li>
    #                  <p>The resource type does not have a corresponding object. This includes resources
    #                  for which the type is <code>Other</code>. </p>
    #               </li>
    #            </ul>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute aws_rds_event_subscription
    #   <p>Details about an RDS event notification subscription.</p>
    #
    #   @return [AwsRdsEventSubscriptionDetails]
    #
    # @!attribute aws_ecs_service
    #   <p>Details about a service within an ECS cluster.</p>
    #
    #   @return [AwsEcsServiceDetails]
    #
    # @!attribute aws_auto_scaling_launch_configuration
    #   <p>Provides details about a launch configuration.</p>
    #
    #   @return [AwsAutoScalingLaunchConfigurationDetails]
    #
    # @!attribute aws_ec2_vpn_connection
    #   <p>Details about an EC2 VPN connection.</p>
    #
    #   @return [AwsEc2VpnConnectionDetails]
    #
    # @!attribute aws_ecr_container_image
    #   <p>Information about an Amazon ECR image.</p>
    #
    #   @return [AwsEcrContainerImageDetails]
    #
    # @!attribute aws_open_search_service_domain
    #   <p>Details about an Amazon OpenSearch Service domain.</p>
    #
    #   @return [AwsOpenSearchServiceDomainDetails]
    #
    # @!attribute aws_ec2_vpc_endpoint_service
    #   <p>Details about the service configuration for a VPC endpoint service.</p>
    #
    #   @return [AwsEc2VpcEndpointServiceDetails]
    #
    # @!attribute aws_xray_encryption_config
    #   <p>Information about the encryption configuration for X-Ray.</p>
    #
    #   @return [AwsXrayEncryptionConfigDetails]
    #
    # @!attribute aws_waf_rate_based_rule
    #   <p>Details about a rate-based rule for global resources.</p>
    #
    #   @return [AwsWafRateBasedRuleDetails]
    #
    # @!attribute aws_waf_regional_rate_based_rule
    #   <p>Details about a rate-based rule for Regional resources.</p>
    #
    #   @return [AwsWafRegionalRateBasedRuleDetails]
    #
    # @!attribute aws_ecr_repository
    #   <p>Information about an Amazon Elastic Container Registry repository.</p>
    #
    #   @return [AwsEcrRepositoryDetails]
    #
    # @!attribute aws_eks_cluster
    #   <p>Details about an Amazon EKS cluster.</p>
    #
    #   @return [AwsEksClusterDetails]
    #
    # @!attribute aws_network_firewall_firewall_policy
    #   <p>Details about an Network Firewall firewall policy.</p>
    #
    #   @return [AwsNetworkFirewallFirewallPolicyDetails]
    #
    # @!attribute aws_network_firewall_firewall
    #   <p>Details about an Network Firewall firewall.</p>
    #
    #   @return [AwsNetworkFirewallFirewallDetails]
    #
    # @!attribute aws_network_firewall_rule_group
    #   <p>Details about an Network Firewall rule group.</p>
    #
    #   @return [AwsNetworkFirewallRuleGroupDetails]
    #
    # @!attribute aws_rds_db_security_group
    #   <p>Details about an Amazon RDS DB security group.</p>
    #
    #   @return [AwsRdsDbSecurityGroupDetails]
    #
    ResourceDetails = ::Struct.new(
      :aws_auto_scaling_auto_scaling_group,
      :aws_code_build_project,
      :aws_cloud_front_distribution,
      :aws_ec2_instance,
      :aws_ec2_network_interface,
      :aws_ec2_security_group,
      :aws_ec2_volume,
      :aws_ec2_vpc,
      :aws_ec2_eip,
      :aws_ec2_subnet,
      :aws_ec2_network_acl,
      :aws_elbv2_load_balancer,
      :aws_elastic_beanstalk_environment,
      :aws_elasticsearch_domain,
      :aws_s3_bucket,
      :aws_s3_account_public_access_block,
      :aws_s3_object,
      :aws_secrets_manager_secret,
      :aws_iam_access_key,
      :aws_iam_user,
      :aws_iam_policy,
      :aws_api_gateway_v2_stage,
      :aws_api_gateway_v2_api,
      :aws_dynamo_db_table,
      :aws_api_gateway_stage,
      :aws_api_gateway_rest_api,
      :aws_cloud_trail_trail,
      :aws_ssm_patch_compliance,
      :aws_certificate_manager_certificate,
      :aws_redshift_cluster,
      :aws_elb_load_balancer,
      :aws_iam_group,
      :aws_iam_role,
      :aws_kms_key,
      :aws_lambda_function,
      :aws_lambda_layer_version,
      :aws_rds_db_instance,
      :aws_sns_topic,
      :aws_sqs_queue,
      :aws_waf_web_acl,
      :aws_rds_db_snapshot,
      :aws_rds_db_cluster_snapshot,
      :aws_rds_db_cluster,
      :aws_ecs_cluster,
      :aws_ecs_task_definition,
      :container,
      :other,
      :aws_rds_event_subscription,
      :aws_ecs_service,
      :aws_auto_scaling_launch_configuration,
      :aws_ec2_vpn_connection,
      :aws_ecr_container_image,
      :aws_open_search_service_domain,
      :aws_ec2_vpc_endpoint_service,
      :aws_xray_encryption_config,
      :aws_waf_rate_based_rule,
      :aws_waf_regional_rate_based_rule,
      :aws_ecr_repository,
      :aws_eks_cluster,
      :aws_network_firewall_firewall_policy,
      :aws_network_firewall_firewall,
      :aws_network_firewall_rule_group,
      :aws_rds_db_security_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request was rejected because we can't find the specified resource.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute code
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :message,
      :code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about the account that was not processed.</p>
    #
    # @!attribute account_id
    #   <p>An Amazon Web Services account ID of the account that was not processed.</p>
    #
    #   @return [String]
    #
    # @!attribute processing_result
    #   <p>The reason that the account was not processed.</p>
    #
    #   @return [String]
    #
    Result = ::Struct.new(
      :account_id,
      :processing_result,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about the rule group.</p>
    #
    # @!attribute rule_variables
    #   <p>Additional settings to use in the specified rules.</p>
    #
    #   @return [RuleGroupVariables]
    #
    # @!attribute rules_source
    #   <p>The rules and actions for the rule group.</p>
    #            <p>For stateful rule groups, can contain <code>RulesString</code>, <code>RulesSourceList</code>, or <code>StatefulRules</code>.</p>
    #            <p>For stateless rule groups, contains <code>StatelessRulesAndCustomActions</code>.</p>
    #
    #   @return [RuleGroupSource]
    #
    RuleGroupDetails = ::Struct.new(
      :rule_variables,
      :rules_source,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The rules and actions for the rule group.</p>
    #
    # @!attribute rules_source_list
    #   <p>Stateful inspection criteria for a domain list rule group. A domain list rule group determines access by specific protocols to specific domains.</p>
    #
    #   @return [RuleGroupSourceListDetails]
    #
    # @!attribute rules_string
    #   <p>Stateful inspection criteria, provided in Suricata compatible intrusion prevention system (IPS) rules.</p>
    #
    #   @return [String]
    #
    # @!attribute stateful_rules
    #   <p>Suricata rule specifications.</p>
    #
    #   @return [Array<RuleGroupSourceStatefulRulesDetails>]
    #
    # @!attribute stateless_rules_and_custom_actions
    #   <p>The stateless rules and custom actions used by a stateless rule group.</p>
    #
    #   @return [RuleGroupSourceStatelessRulesAndCustomActionsDetails]
    #
    RuleGroupSource = ::Struct.new(
      :rules_source_list,
      :rules_string,
      :stateful_rules,
      :stateless_rules_and_custom_actions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A custom action definition. A custom action is an optional, non-standard action to use for stateless packet handling.</p>
    #
    # @!attribute action_definition
    #   <p>The definition of a custom action.</p>
    #
    #   @return [StatelessCustomActionDefinition]
    #
    # @!attribute action_name
    #   <p>A descriptive name of the custom action.</p>
    #
    #   @return [String]
    #
    RuleGroupSourceCustomActionsDetails = ::Struct.new(
      :action_definition,
      :action_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Stateful inspection criteria for a domain list rule group.</p>
    #
    # @!attribute generated_rules_type
    #   <p>Indicates whether to allow or deny access to the domains listed in <code>Targets</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute target_types
    #   <p>The protocols that you want to inspect. Specify <code>LS_SNI</code> for HTTPS. Specify <code>HTTP_HOST</code> for HTTP. You can specify either or both.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute targets
    #   <p>The domains that you want to inspect for in your traffic flows. You can provide full domain names, or use the '.' prefix as a wildcard. For example, <code>.example.com</code> matches all domains that end with <code>example.com</code>.</p>
    #
    #   @return [Array<String>]
    #
    RuleGroupSourceListDetails = ::Struct.new(
      :generated_rules_type,
      :target_types,
      :targets,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A Suricata rule specification.</p>
    #
    # @!attribute action
    #   <p>Defines what Network Firewall should do with the packets in a traffic flow when the flow matches the stateful rule criteria.</p>
    #
    #   @return [String]
    #
    # @!attribute header
    #   <p>The stateful inspection criteria for the rule.</p>
    #
    #   @return [RuleGroupSourceStatefulRulesHeaderDetails]
    #
    # @!attribute rule_options
    #   <p>Additional options for the rule.</p>
    #
    #   @return [Array<RuleGroupSourceStatefulRulesOptionsDetails>]
    #
    RuleGroupSourceStatefulRulesDetails = ::Struct.new(
      :action,
      :header,
      :rule_options,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The inspection criteria for a stateful rule.</p>
    #
    # @!attribute destination
    #   <p>The destination IP address or address range to inspect for, in CIDR notation. To match with any address, specify <code>ANY</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_port
    #   <p>The destination port to inspect for. You can specify an individual port, such as <code>1994</code>. You also can specify a port range, such as <code>1990:1994</code>. To match with any port, specify <code>ANY</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute direction
    #   <p>The direction of traffic flow to inspect. If set to <code>ANY</code>, the inspection matches bidirectional traffic, both from the source to the destination and from the destination to the source. If set to <code>FORWARD</code>, the inspection only matches traffic going from the source to the destination.</p>
    #
    #   @return [String]
    #
    # @!attribute protocol
    #   <p>The protocol to inspect for. To inspector for all protocols, use <code>IP</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute source
    #   <p>The source IP address or address range to inspect for, in CIDR notation. To match with any address, specify <code>ANY</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute source_port
    #   <p>The source port to inspect for. You can specify an individual port, such as <code>1994</code>. You also can specify a port range, such as <code>1990:1994</code>. To match with any port, specify <code>ANY</code>.</p>
    #
    #   @return [String]
    #
    RuleGroupSourceStatefulRulesHeaderDetails = ::Struct.new(
      :destination,
      :destination_port,
      :direction,
      :protocol,
      :source,
      :source_port,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A rule option for a stateful rule.</p>
    #
    # @!attribute keyword
    #   <p>A keyword to look for.</p>
    #
    #   @return [String]
    #
    # @!attribute settings
    #   <p>A list of settings.</p>
    #
    #   @return [Array<String>]
    #
    RuleGroupSourceStatefulRulesOptionsDetails = ::Struct.new(
      :keyword,
      :settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The definition of the stateless rule.</p>
    #
    # @!attribute actions
    #   <p>The actions to take on a packet that matches one of the stateless rule definition's match attributes. You must specify a standard action (<code>aws:pass</code>, <code>aws:drop</code>, or <code>aws:forward_to_sfe</code>). You can then add custom actions.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute match_attributes
    #   <p>The criteria for Network Firewall to use to inspect an individual packet in a stateless rule inspection.</p>
    #
    #   @return [RuleGroupSourceStatelessRuleMatchAttributes]
    #
    RuleGroupSourceStatelessRuleDefinition = ::Struct.new(
      :actions,
      :match_attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Criteria for the stateless rule.</p>
    #
    # @!attribute destination_ports
    #   <p>A list of port ranges to specify the destination ports to inspect for.</p>
    #
    #   @return [Array<RuleGroupSourceStatelessRuleMatchAttributesDestinationPorts>]
    #
    # @!attribute destinations
    #   <p>The destination IP addresses and address ranges to inspect for, in CIDR notation.</p>
    #
    #   @return [Array<RuleGroupSourceStatelessRuleMatchAttributesDestinations>]
    #
    # @!attribute protocols
    #   <p>The protocols to inspect for.</p>
    #
    #   @return [Array<Integer>]
    #
    # @!attribute source_ports
    #   <p>A list of port ranges to specify the source ports to inspect for.</p>
    #
    #   @return [Array<RuleGroupSourceStatelessRuleMatchAttributesSourcePorts>]
    #
    # @!attribute sources
    #   <p>The source IP addresses and address ranges to inspect for, in CIDR notation.</p>
    #
    #   @return [Array<RuleGroupSourceStatelessRuleMatchAttributesSources>]
    #
    # @!attribute tcp_flags
    #   <p>The TCP flags and masks to inspect for.</p>
    #
    #   @return [Array<RuleGroupSourceStatelessRuleMatchAttributesTcpFlags>]
    #
    RuleGroupSourceStatelessRuleMatchAttributes = ::Struct.new(
      :destination_ports,
      :destinations,
      :protocols,
      :source_ports,
      :sources,
      :tcp_flags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A port range to specify the destination ports to inspect for.</p>
    #
    # @!attribute from_port
    #   <p>The starting port value for the port range.</p>
    #
    #   @return [Integer]
    #
    # @!attribute to_port
    #   <p>The ending port value for the port range.</p>
    #
    #   @return [Integer]
    #
    RuleGroupSourceStatelessRuleMatchAttributesDestinationPorts = ::Struct.new(
      :from_port,
      :to_port,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.from_port ||= 0
        self.to_port ||= 0
      end
    end

    # <p>A destination IP address or range.</p>
    #
    # @!attribute address_definition
    #   <p>An IP address or a block of IP addresses.</p>
    #
    #   @return [String]
    #
    RuleGroupSourceStatelessRuleMatchAttributesDestinations = ::Struct.new(
      :address_definition,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A port range to specify the source ports to inspect for.</p>
    #
    # @!attribute from_port
    #   <p>The starting port value for the port range.</p>
    #
    #   @return [Integer]
    #
    # @!attribute to_port
    #   <p>The ending port value for the port range.</p>
    #
    #   @return [Integer]
    #
    RuleGroupSourceStatelessRuleMatchAttributesSourcePorts = ::Struct.new(
      :from_port,
      :to_port,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.from_port ||= 0
        self.to_port ||= 0
      end
    end

    # <p>A source IP addresses and address range to inspect for.</p>
    #
    # @!attribute address_definition
    #   <p>An IP address or a block of IP addresses.</p>
    #
    #   @return [String]
    #
    RuleGroupSourceStatelessRuleMatchAttributesSources = ::Struct.new(
      :address_definition,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A set of TCP flags and masks to inspect for.</p>
    #
    # @!attribute flags
    #   <p>Defines the flags from the <code>Masks</code> setting that must be set in order for the packet to match. Flags that are listed must be set. Flags that are not listed must not be set.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute masks
    #   <p>The set of flags to consider in the inspection. If not specified, then all flags are inspected.</p>
    #
    #   @return [Array<String>]
    #
    RuleGroupSourceStatelessRuleMatchAttributesTcpFlags = ::Struct.new(
      :flags,
      :masks,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Stateless rules and custom actions for a stateless rule group.</p>
    #
    # @!attribute custom_actions
    #   <p>Custom actions for the rule group.</p>
    #
    #   @return [Array<RuleGroupSourceCustomActionsDetails>]
    #
    # @!attribute stateless_rules
    #   <p>Stateless rules for the rule group.</p>
    #
    #   @return [Array<RuleGroupSourceStatelessRulesDetails>]
    #
    RuleGroupSourceStatelessRulesAndCustomActionsDetails = ::Struct.new(
      :custom_actions,
      :stateless_rules,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A stateless rule in the rule group.</p>
    #
    # @!attribute priority
    #   <p>Indicates the order in which to run this rule relative to all of the rules in the stateless rule group.</p>
    #
    #   @return [Integer]
    #
    # @!attribute rule_definition
    #   <p>Provides the definition of the stateless rule.</p>
    #
    #   @return [RuleGroupSourceStatelessRuleDefinition]
    #
    RuleGroupSourceStatelessRulesDetails = ::Struct.new(
      :priority,
      :rule_definition,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.priority ||= 0
      end
    end

    # <p>Additional settings to use in the specified rules.</p>
    #
    # @!attribute ip_sets
    #   <p>A list of IP addresses and address ranges, in CIDR notation.</p>
    #
    #   @return [RuleGroupVariablesIpSetsDetails]
    #
    # @!attribute port_sets
    #   <p>A list of port ranges.</p>
    #
    #   @return [RuleGroupVariablesPortSetsDetails]
    #
    RuleGroupVariables = ::Struct.new(
      :ip_sets,
      :port_sets,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A list of IP addresses and address ranges, in CIDR notation.</p>
    #
    # @!attribute definition
    #   <p>The list of IP addresses and ranges.</p>
    #
    #   @return [Array<String>]
    #
    RuleGroupVariablesIpSetsDetails = ::Struct.new(
      :definition,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A list of port ranges.</p>
    #
    # @!attribute definition
    #   <p>The list of port ranges.</p>
    #
    #   @return [Array<String>]
    #
    RuleGroupVariablesPortSetsDetails = ::Struct.new(
      :definition,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The list of detected instances of sensitive data.</p>
    #
    # @!attribute count
    #   <p>The total number of occurrences of sensitive data that were detected.</p>
    #
    #   @return [Integer]
    #
    # @!attribute type
    #   <p>The type of sensitive data that was detected. For example, the type might indicate that the data is an email address.</p>
    #
    #   @return [String]
    #
    # @!attribute occurrences
    #   <p>Details about the sensitive data that was detected.</p>
    #
    #   @return [Occurrences]
    #
    SensitiveDataDetections = ::Struct.new(
      :count,
      :type,
      :occurrences,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.count ||= 0
      end
    end

    # <p>Contains a detected instance of sensitive data that are based on built-in identifiers.</p>
    #
    # @!attribute category
    #   <p>The category of sensitive data that was detected. For example, the category can indicate that the sensitive data involved credentials, financial information, or personal information.</p>
    #
    #   @return [String]
    #
    # @!attribute detections
    #   <p>The list of detected instances of sensitive data.</p>
    #
    #   @return [Array<SensitiveDataDetections>]
    #
    # @!attribute total_count
    #   <p>The total number of occurrences of sensitive data.</p>
    #
    #   @return [Integer]
    #
    SensitiveDataResult = ::Struct.new(
      :category,
      :detections,
      :total_count,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.total_count ||= 0
      end
    end

    # <p>The severity of the finding.</p>
    #          <p>The finding provider can provide the initial severity. The finding provider can only
    #          update the severity if it has not been updated using
    #          <code>BatchUpdateFindings</code>.</p>
    #          <p>The finding must have either <code>Label</code> or <code>Normalized</code> populated. If
    #          only one of these attributes is populated, then Security Hub automatically populates the other
    #          one. If neither attribute is populated, then the finding is invalid. <code>Label</code> is
    #          the preferred attribute.</p>
    #
    # @!attribute product
    #   <p>Deprecated. This attribute is being deprecated. Instead of providing
    #               <code>Product</code>, provide <code>Original</code>.</p>
    #            <p>The native severity as defined by the Amazon Web Services service or integrated partner product that
    #            generated the finding.</p>
    #
    #   @return [Float]
    #
    # @!attribute label
    #   <p>The severity value of the finding. The allowed values are the following.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>INFORMATIONAL</code> - No issue was found.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LOW</code> - The issue does not require action on its own.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MEDIUM</code> - The issue must be addressed but not urgently.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>HIGH</code> - The issue must be addressed as a priority.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CRITICAL</code> - The issue must be remediated immediately to avoid it
    #                  escalating.</p>
    #               </li>
    #            </ul>
    #            <p>If you provide <code>Normalized</code> and do not provide <code>Label</code>, then
    #               <code>Label</code> is set automatically as follows. </p>
    #            <ul>
    #               <li>
    #                  <p>0 - <code>INFORMATIONAL</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>1–39 - <code>LOW</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>40–69 - <code>MEDIUM</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>70–89 - <code>HIGH</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>90–100 - <code>CRITICAL</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["INFORMATIONAL", "LOW", "MEDIUM", "HIGH", "CRITICAL"]
    #
    #   @return [String]
    #
    # @!attribute normalized
    #   <p>Deprecated. The normalized severity of a finding. This attribute is being deprecated.
    #            Instead of providing <code>Normalized</code>, provide <code>Label</code>.</p>
    #            <p>If you provide <code>Label</code> and do not provide <code>Normalized</code>, then
    #               <code>Normalized</code> is set automatically as follows.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>INFORMATIONAL</code> - 0</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LOW</code> - 1</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MEDIUM</code> - 40</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>HIGH</code> - 70</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CRITICAL</code> - 90</p>
    #               </li>
    #            </ul>
    #
    #   @return [Integer]
    #
    # @!attribute original
    #   <p>The native severity from the finding product that generated the finding.</p>
    #
    #   @return [String]
    #
    Severity = ::Struct.new(
      :product,
      :label,
      :normalized,
      :original,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.product ||= 0
        self.normalized ||= 0
      end
    end

    # Includes enum constants for SeverityLabel
    #
    module SeverityLabel
      # No documentation available.
      #
      INFORMATIONAL = "INFORMATIONAL"

      # No documentation available.
      #
      LOW = "LOW"

      # No documentation available.
      #
      MEDIUM = "MEDIUM"

      # No documentation available.
      #
      HIGH = "HIGH"

      # No documentation available.
      #
      CRITICAL = "CRITICAL"
    end

    # Includes enum constants for SeverityRating
    #
    module SeverityRating
      # No documentation available.
      #
      LOW = "LOW"

      # No documentation available.
      #
      MEDIUM = "MEDIUM"

      # No documentation available.
      #
      HIGH = "HIGH"

      # No documentation available.
      #
      CRITICAL = "CRITICAL"
    end

    # <p>Updates to the severity information for a finding.</p>
    #
    # @!attribute normalized
    #   <p>The normalized severity for the finding. This attribute is to be deprecated in favor of
    #               <code>Label</code>.</p>
    #            <p>If you provide <code>Normalized</code> and do not provide <code>Label</code>,
    #               <code>Label</code> is set automatically as follows.</p>
    #            <ul>
    #               <li>
    #                  <p>0 - <code>INFORMATIONAL</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>1–39 - <code>LOW</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>40–69 - <code>MEDIUM</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>70–89 - <code>HIGH</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>90–100 - <code>CRITICAL</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [Integer]
    #
    # @!attribute product
    #   <p>The native severity as defined by the Amazon Web Services service or integrated partner product that
    #            generated the finding.</p>
    #
    #   @return [Float]
    #
    # @!attribute label
    #   <p>The severity value of the finding. The allowed values are the following.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>INFORMATIONAL</code> - No issue was found.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LOW</code> - The issue does not require action on its own.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MEDIUM</code> - The issue must be addressed but not urgently.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>HIGH</code> - The issue must be addressed as a priority.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CRITICAL</code> - The issue must be remediated immediately to avoid it
    #                  escalating.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["INFORMATIONAL", "LOW", "MEDIUM", "HIGH", "CRITICAL"]
    #
    #   @return [String]
    #
    SeverityUpdate = ::Struct.new(
      :normalized,
      :product,
      :label,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.normalized ||= 0
        self.product ||= 0
      end
    end

    # <p>Information about a software package.</p>
    #
    # @!attribute name
    #   <p>The name of the software package.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version of the software package.</p>
    #
    #   @return [String]
    #
    # @!attribute epoch
    #   <p>The epoch of the software package.</p>
    #
    #   @return [String]
    #
    # @!attribute release
    #   <p>The release of the software package.</p>
    #
    #   @return [String]
    #
    # @!attribute architecture
    #   <p>The architecture used for the software package.</p>
    #
    #   @return [String]
    #
    # @!attribute package_manager
    #   <p>The source of the package.</p>
    #
    #   @return [String]
    #
    # @!attribute file_path
    #   <p>The file system path to the package manager inventory file.</p>
    #
    #   @return [String]
    #
    SoftwarePackage = ::Struct.new(
      :name,
      :version,
      :epoch,
      :release,
      :architecture,
      :package_manager,
      :file_path,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A collection of finding attributes used to sort findings.</p>
    #
    # @!attribute field
    #   <p>The finding attribute used to sort findings.</p>
    #
    #   @return [String]
    #
    # @!attribute sort_order
    #   <p>The order used to sort findings.</p>
    #
    #   Enum, one of: ["asc", "desc"]
    #
    #   @return [String]
    #
    SortCriterion = ::Struct.new(
      :field,
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
      ASCENDING = "asc"

      # No documentation available.
      #
      DESCENDING = "desc"
    end

    # <p>Provides information about a specific standard.</p>
    #
    # @!attribute standards_arn
    #   <p>The ARN of a standard.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the standard.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the standard.</p>
    #
    #   @return [String]
    #
    # @!attribute enabled_by_default
    #   <p>Whether the standard is enabled by default. When Security Hub is enabled from the console, if a
    #            standard is enabled by default, the check box for that standard is selected by
    #            default.</p>
    #            <p>When Security Hub is enabled using the <code>EnableSecurityHub</code> API operation, the
    #            standard is enabled by default unless <code>EnableDefaultStandards</code> is set to
    #               <code>false</code>.</p>
    #
    #   @return [Boolean]
    #
    Standard = ::Struct.new(
      :standards_arn,
      :name,
      :description,
      :enabled_by_default,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.enabled_by_default ||= false
      end
    end

    # <p>Details for an individual security standard control.</p>
    #
    # @!attribute standards_control_arn
    #   <p>The ARN of the security standard control.</p>
    #
    #   @return [String]
    #
    # @!attribute control_status
    #   <p>The current status of the security standard control. Indicates whether the control is
    #            enabled or disabled. Security Hub does not check against disabled controls.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute disabled_reason
    #   <p>The reason provided for the most recent change in status for the control.</p>
    #
    #   @return [String]
    #
    # @!attribute control_status_updated_at
    #   <p>The date and time that the status of the security standard control was most recently
    #            updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute control_id
    #   <p>The identifier of the security standard control.</p>
    #
    #   @return [String]
    #
    # @!attribute title
    #   <p>The title of the security standard control.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The longer description of the security standard control. Provides information about what
    #            the control is checking for.</p>
    #
    #   @return [String]
    #
    # @!attribute remediation_url
    #   <p>A link to remediation information for the control in the Security Hub user
    #            documentation.</p>
    #
    #   @return [String]
    #
    # @!attribute severity_rating
    #   <p>The severity of findings generated from this security standard control.</p>
    #            <p>The finding severity is based on an assessment of how easy it would be to compromise Amazon Web Services
    #            resources if the issue is detected.</p>
    #
    #   Enum, one of: ["LOW", "MEDIUM", "HIGH", "CRITICAL"]
    #
    #   @return [String]
    #
    # @!attribute related_requirements
    #   <p>The list of requirements that are related to this control.</p>
    #
    #   @return [Array<String>]
    #
    StandardsControl = ::Struct.new(
      :standards_control_arn,
      :control_status,
      :disabled_reason,
      :control_status_updated_at,
      :control_id,
      :title,
      :description,
      :remediation_url,
      :severity_rating,
      :related_requirements,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for StandardsStatus
    #
    module StandardsStatus
      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      READY = "READY"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      DELETING = "DELETING"

      # No documentation available.
      #
      INCOMPLETE = "INCOMPLETE"
    end

    # <p>The reason for the current status of a standard subscription.</p>
    #
    # @!attribute status_reason_code
    #   <p>The reason code that represents the reason for the current status of a standard subscription.</p>
    #
    #   Enum, one of: ["NO_AVAILABLE_CONFIGURATION_RECORDER", "INTERNAL_ERROR"]
    #
    #   @return [String]
    #
    StandardsStatusReason = ::Struct.new(
      :status_reason_code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A resource that represents your subscription to a supported standard.</p>
    #
    # @!attribute standards_subscription_arn
    #   <p>The ARN of a resource that represents your subscription to a supported standard.</p>
    #
    #   @return [String]
    #
    # @!attribute standards_arn
    #   <p>The ARN of a standard.</p>
    #
    #   @return [String]
    #
    # @!attribute standards_input
    #   <p>A key-value pair of input for the standard.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute standards_status
    #   <p>The status of the standard subscription.</p>
    #            <p>The status values are as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PENDING</code> - Standard is in the process of being enabled.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>READY</code> - Standard is enabled.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INCOMPLETE</code> - Standard could not be enabled completely. Some controls may not be available.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETING</code> - Standard is in the process of being disabled.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code> - Standard could not be disabled.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["PENDING", "READY", "FAILED", "DELETING", "INCOMPLETE"]
    #
    #   @return [String]
    #
    # @!attribute standards_status_reason
    #   <p>The reason for the current status.</p>
    #
    #   @return [StandardsStatusReason]
    #
    StandardsSubscription = ::Struct.new(
      :standards_subscription_arn,
      :standards_arn,
      :standards_input,
      :standards_status,
      :standards_status_reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The standard that you want to enable.</p>
    #
    # @!attribute standards_arn
    #   <p>The ARN of the standard that you want to enable. To view the list of available standards
    #            and their ARNs, use the <code>DescribeStandards</code> operation.</p>
    #
    #   @return [String]
    #
    # @!attribute standards_input
    #   <p>A key-value pair of input for the standard.</p>
    #
    #   @return [Hash<String, String>]
    #
    StandardsSubscriptionRequest = ::Struct.new(
      :standards_arn,
      :standards_input,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The definition of a custom action that can be used for stateless packet handling.</p>
    #
    # @!attribute publish_metric_action
    #   <p>Information about metrics to publish to CloudWatch.</p>
    #
    #   @return [StatelessCustomPublishMetricAction]
    #
    StatelessCustomActionDefinition = ::Struct.new(
      :publish_metric_action,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about metrics to publish to CloudWatch.</p>
    #
    # @!attribute dimensions
    #   <p>Defines CloudWatch dimension values to publish.</p>
    #
    #   @return [Array<StatelessCustomPublishMetricActionDimension>]
    #
    StatelessCustomPublishMetricAction = ::Struct.new(
      :dimensions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Defines a CloudWatch dimension value to publish.</p>
    #
    # @!attribute value
    #   <p>The value to use for the custom metric dimension.</p>
    #
    #   @return [String]
    #
    StatelessCustomPublishMetricActionDimension = ::Struct.new(
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides additional context for the value of <code>Compliance.Status</code>.</p>
    #
    # @!attribute reason_code
    #   <p>A code that represents a reason for the control status. For the list of status reason
    #            codes and their meanings, see <a href="https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-standards-results.html securityhub-standards-results-asff">Standards-related information in the ASFF</a> in the
    #               <i>Security Hub User Guide</i>. </p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The corresponding description for the status reason code.</p>
    #
    #   @return [String]
    #
    StatusReason = ::Struct.new(
      :reason_code,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for StatusReasonCode
    #
    module StatusReasonCode
      # No documentation available.
      #
      NO_AVAILABLE_CONFIGURATION_RECORDER = "NO_AVAILABLE_CONFIGURATION_RECORDER"

      # No documentation available.
      #
      INTERNAL_ERROR = "INTERNAL_ERROR"
    end

    # <p>A string filter for querying findings.</p>
    #
    # @!attribute value
    #   <p>The string filter value. Filter values are case sensitive. For example, the product name
    #            for control-based findings is <code>Security Hub</code>. If you provide <code>security hub</code>
    #            as the filter text, then there is no match.</p>
    #
    #   @return [String]
    #
    # @!attribute comparison
    #   <p>The condition to apply to a string value when querying for findings. To search for
    #            values that contain the filter criteria value, use one of the following comparison
    #            operators:</p>
    #            <ul>
    #               <li>
    #                  <p>To search for values that exactly match the filter value, use
    #                  <code>EQUALS</code>.</p>
    #                  <p>For example, the filter <code>ResourceType EQUALS AwsEc2SecurityGroup</code> only
    #                  matches findings that have a resource type of
    #                  <code>AwsEc2SecurityGroup</code>.</p>
    #               </li>
    #               <li>
    #                  <p>To search for values that start with the filter value, use
    #                  <code>PREFIX</code>.</p>
    #                  <p>For example, the filter <code>ResourceType PREFIX AwsIam</code> matches findings
    #                  that have a resource type that starts with <code>AwsIam</code>. Findings with a
    #                  resource type of <code>AwsIamPolicy</code>, <code>AwsIamRole</code>, or
    #                     <code>AwsIamUser</code> would all match.</p>
    #               </li>
    #            </ul>
    #            <p>
    #               <code>EQUALS</code> and <code>PREFIX</code> filters on the same field are joined by
    #               <code>OR</code>. A finding matches if it matches any one of those filters.</p>
    #            <p>To search for values that do not contain the filter criteria value, use one of the
    #            following comparison operators:</p>
    #            <ul>
    #               <li>
    #                  <p>To search for values that do not exactly match the filter value, use
    #                     <code>NOT_EQUALS</code>.</p>
    #                  <p>For example, the filter <code>ResourceType NOT_EQUALS AwsIamPolicy</code> matches
    #                  findings that have a resource type other than <code>AwsIamPolicy</code>.</p>
    #               </li>
    #               <li>
    #                  <p>To search for values that do not start with the filter value, use
    #                     <code>PREFIX_NOT_EQUALS</code>.</p>
    #                  <p>For example, the filter <code>ResourceType PREFIX_NOT_EQUALS AwsIam</code> matches
    #                  findings that have a resource type that does not start with <code>AwsIam</code>.
    #                  Findings with a resource type of <code>AwsIamPolicy</code>, <code>AwsIamRole</code>,
    #                  or <code>AwsIamUser</code> would all be excluded from the results.</p>
    #               </li>
    #            </ul>
    #            <p>
    #               <code>NOT_EQUALS</code> and <code>PREFIX_NOT_EQUALS</code> filters on the same field are
    #            joined by <code>AND</code>. A finding matches only if it matches all of those
    #            filters.</p>
    #            <p>For filters on the same field, you cannot provide both an <code>EQUALS</code> filter and
    #            a <code>NOT_EQUALS</code> or <code>PREFIX_NOT_EQUALS</code> filter. Combining filters in
    #            this way always returns an error, even if the provided filter values would return valid
    #            results.</p>
    #            <p>You can combine <code>PREFIX</code> filters with <code>NOT_EQUALS</code> or
    #            <code>PREFIX_NOT_EQUALS</code> filters for the same field. Security Hub first processes the
    #               <code>PREFIX</code> filters, then the <code>NOT_EQUALS</code> or
    #               <code>PREFIX_NOT_EQUALS</code> filters.</p>
    #            <p> For example, for the following filter, Security Hub first identifies findings that have
    #            resource types that start with either <code>AwsIAM</code> or <code>AwsEc2</code>. It then
    #            excludes findings that have a resource type of <code>AwsIamPolicy</code> and findings that
    #            have a resource type of <code>AwsEc2NetworkInterface</code>.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ResourceType PREFIX AwsIam</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ResourceType PREFIX AwsEc2</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ResourceType NOT_EQUALS AwsIamPolicy</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ResourceType NOT_EQUALS AwsEc2NetworkInterface</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS"]
    #
    #   @return [String]
    #
    StringFilter = ::Struct.new(
      :value,
      :comparison,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for StringFilterComparison
    #
    module StringFilterComparison
      # No documentation available.
      #
      EQUALS = "EQUALS"

      # No documentation available.
      #
      PREFIX = "PREFIX"

      # No documentation available.
      #
      NOT_EQUALS = "NOT_EQUALS"

      # No documentation available.
      #
      PREFIX_NOT_EQUALS = "PREFIX_NOT_EQUALS"
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource to apply the tags to.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to add to the resource. You can add up to 50 tags at a time. The tag keys can be no longer than 128 characters. The tag values can be no longer than 256 characters.</p>
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

    # <p>Details about the threat intelligence related to a finding.</p>
    #
    # @!attribute type
    #   <p>The type of threat intelligence indicator.</p>
    #
    #   Enum, one of: ["DOMAIN", "EMAIL_ADDRESS", "HASH_MD5", "HASH_SHA1", "HASH_SHA256", "HASH_SHA512", "IPV4_ADDRESS", "IPV6_ADDRESS", "MUTEX", "PROCESS", "URL"]
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of a threat intelligence indicator.</p>
    #
    #   @return [String]
    #
    # @!attribute category
    #   <p>The category of a threat intelligence indicator.</p>
    #
    #   Enum, one of: ["BACKDOOR", "CARD_STEALER", "COMMAND_AND_CONTROL", "DROP_SITE", "EXPLOIT_SITE", "KEYLOGGER"]
    #
    #   @return [String]
    #
    # @!attribute last_observed_at
    #   <p>Indicates when the most recent instance of a threat intelligence indicator was
    #            observed.</p>
    #            <p>Uses the <code>date-time</code> format specified in <a href="https://tools.ietf.org/html/rfc3339 section-5.6">RFC 3339 section 5.6, Internet
    #               Date/Time Format</a>. The value cannot contain spaces. For example,
    #               <code>2020-03-22T13:22:13.933Z</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute source
    #   <p>The source of the threat intelligence indicator.</p>
    #
    #   @return [String]
    #
    # @!attribute source_url
    #   <p>The URL to the page or site where you can get more information about the threat
    #            intelligence indicator.</p>
    #
    #   @return [String]
    #
    ThreatIntelIndicator = ::Struct.new(
      :type,
      :value,
      :category,
      :last_observed_at,
      :source,
      :source_url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ThreatIntelIndicatorCategory
    #
    module ThreatIntelIndicatorCategory
      # No documentation available.
      #
      BACKDOOR = "BACKDOOR"

      # No documentation available.
      #
      CARD_STEALER = "CARD_STEALER"

      # No documentation available.
      #
      COMMAND_AND_CONTROL = "COMMAND_AND_CONTROL"

      # No documentation available.
      #
      DROP_SITE = "DROP_SITE"

      # No documentation available.
      #
      EXPLOIT_SITE = "EXPLOIT_SITE"

      # No documentation available.
      #
      KEYLOGGER = "KEYLOGGER"
    end

    # Includes enum constants for ThreatIntelIndicatorType
    #
    module ThreatIntelIndicatorType
      # No documentation available.
      #
      DOMAIN = "DOMAIN"

      # No documentation available.
      #
      EMAIL_ADDRESS = "EMAIL_ADDRESS"

      # No documentation available.
      #
      HASH_MD5 = "HASH_MD5"

      # No documentation available.
      #
      HASH_SHA1 = "HASH_SHA1"

      # No documentation available.
      #
      HASH_SHA256 = "HASH_SHA256"

      # No documentation available.
      #
      HASH_SHA512 = "HASH_SHA512"

      # No documentation available.
      #
      IPV4_ADDRESS = "IPV4_ADDRESS"

      # No documentation available.
      #
      IPV6_ADDRESS = "IPV6_ADDRESS"

      # No documentation available.
      #
      MUTEX = "MUTEX"

      # No documentation available.
      #
      PROCESS = "PROCESS"

      # No documentation available.
      #
      URL = "URL"
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource to remove the tags from.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>The tag keys associated with the tags to remove from the resource. You can remove up to 50 tags at a time.</p>
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

    # @!attribute action_target_arn
    #   <p>The ARN of the custom action target to update.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The updated name of the custom action target.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The updated description for the custom action target.</p>
    #
    #   @return [String]
    #
    UpdateActionTargetInput = ::Struct.new(
      :action_target_arn,
      :name,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateActionTargetOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute finding_aggregator_arn
    #   <p>The ARN of the finding aggregator. To obtain the ARN, use <code>ListFindingAggregators</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute region_linking_mode
    #   <p>Indicates whether to aggregate findings from all of the available Regions in the current partition. Also determines whether to automatically aggregate findings from new Regions as Security Hub supports them and you opt into them.</p>
    #            <p>The selected option also determines how to use the Regions provided in the Regions list.</p>
    #            <p>The options are as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ALL_REGIONS</code> - Indicates to aggregate findings from all of the Regions where Security Hub is enabled. When you choose this option, Security Hub also automatically aggregates findings from new Regions as Security Hub supports them and you opt into them.
    #            </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALL_REGIONS_EXCEPT_SPECIFIED</code> - Indicates to aggregate findings from all of the Regions where Security Hub is enabled, except for the Regions listed in the <code>Regions</code> parameter. When you choose this option, Security Hub also automatically aggregates findings from new Regions as Security Hub supports them and you opt into them.
    #            </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SPECIFIED_REGIONS</code> - Indicates to aggregate findings only from the Regions listed in the <code>Regions</code> parameter. Security Hub does not automatically aggregate findings from new Regions.
    #            </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute regions
    #   <p>If <code>RegionLinkingMode</code> is <code>ALL_REGIONS_EXCEPT_SPECIFIED</code>, then this is a comma-separated list of Regions that do not aggregate findings to the aggregation Region.</p>
    #            <p>If <code>RegionLinkingMode</code> is <code>SPECIFIED_REGIONS</code>, then this is a comma-separated list of Regions that do aggregate findings to the aggregation Region.</p>
    #
    #   @return [Array<String>]
    #
    UpdateFindingAggregatorInput = ::Struct.new(
      :finding_aggregator_arn,
      :region_linking_mode,
      :regions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute finding_aggregator_arn
    #   <p>The ARN of the finding aggregator.</p>
    #
    #   @return [String]
    #
    # @!attribute finding_aggregation_region
    #   <p>The aggregation Region.</p>
    #
    #   @return [String]
    #
    # @!attribute region_linking_mode
    #   <p>Indicates whether to link all Regions, all Regions except for a list of excluded Regions, or a list of included Regions.</p>
    #
    #   @return [String]
    #
    # @!attribute regions
    #   <p>The list of excluded Regions or included Regions.</p>
    #
    #   @return [Array<String>]
    #
    UpdateFindingAggregatorOutput = ::Struct.new(
      :finding_aggregator_arn,
      :finding_aggregation_region,
      :region_linking_mode,
      :regions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute filters
    #   <p>A collection of attributes that specify which findings you want to update.</p>
    #
    #   @return [AwsSecurityFindingFilters]
    #
    # @!attribute note
    #   <p>The updated note for the finding.</p>
    #
    #   @return [NoteUpdate]
    #
    # @!attribute record_state
    #   <p>The updated record state for the finding.</p>
    #
    #   Enum, one of: ["ACTIVE", "ARCHIVED"]
    #
    #   @return [String]
    #
    UpdateFindingsInput = ::Struct.new(
      :filters,
      :note,
      :record_state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateFindingsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute insight_arn
    #   <p>The ARN of the insight that you want to update.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The updated name for the insight.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>The updated filters that define this insight.</p>
    #
    #   @return [AwsSecurityFindingFilters]
    #
    # @!attribute group_by_attribute
    #   <p>The updated <code>GroupBy</code> attribute that defines this insight.</p>
    #
    #   @return [String]
    #
    UpdateInsightInput = ::Struct.new(
      :insight_arn,
      :name,
      :filters,
      :group_by_attribute,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateInsightOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute auto_enable
    #   <p>Whether to automatically enable Security Hub for new accounts in the organization.</p>
    #            <p>By default, this is <code>false</code>, and new accounts are not added
    #            automatically.</p>
    #            <p>To automatically enable Security Hub for new accounts, set this to <code>true</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute auto_enable_standards
    #   <p>Whether to automatically enable Security Hub <a href="https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-standards-enable-disable.html">default standards</a>
    #            for new member accounts in the organization.</p>
    #            <p>By default, this parameter is equal to <code>DEFAULT</code>, and new member accounts are automatically enabled with default Security Hub standards.</p>
    #            <p>To opt out of enabling default standards for new member accounts, set this parameter equal to <code>NONE</code>.</p>
    #
    #   Enum, one of: ["NONE", "DEFAULT"]
    #
    #   @return [String]
    #
    UpdateOrganizationConfigurationInput = ::Struct.new(
      :auto_enable,
      :auto_enable_standards,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.auto_enable ||= false
      end
    end

    UpdateOrganizationConfigurationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute auto_enable_controls
    #   <p>Whether to automatically enable new controls when they are added to standards that are
    #            enabled.</p>
    #            <p>By default, this is set to <code>true</code>, and new controls are enabled
    #            automatically. To not automatically enable new controls, set this to <code>false</code>.
    #         </p>
    #
    #   @return [Boolean]
    #
    UpdateSecurityHubConfigurationInput = ::Struct.new(
      :auto_enable_controls,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.auto_enable_controls ||= false
      end
    end

    UpdateSecurityHubConfigurationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute standards_control_arn
    #   <p>The ARN of the security standard control to enable or disable.</p>
    #
    #   @return [String]
    #
    # @!attribute control_status
    #   <p>The updated status of the security standard control.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute disabled_reason
    #   <p>A description of the reason why you are disabling a security standard control. If you
    #            are disabling a control, then this is required.</p>
    #
    #   @return [String]
    #
    UpdateStandardsControlInput = ::Struct.new(
      :standards_control_arn,
      :control_status,
      :disabled_reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateStandardsControlOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for VerificationState
    #
    module VerificationState
      # No documentation available.
      #
      UNKNOWN = "UNKNOWN"

      # No documentation available.
      #
      TRUE_POSITIVE = "TRUE_POSITIVE"

      # No documentation available.
      #
      FALSE_POSITIVE = "FALSE_POSITIVE"

      # No documentation available.
      #
      BENIGN_POSITIVE = "BENIGN_POSITIVE"
    end

    # <p>A vulnerability associated with a finding.</p>
    #
    # @!attribute id
    #   <p>The identifier of the vulnerability.</p>
    #
    #   @return [String]
    #
    # @!attribute vulnerable_packages
    #   <p>List of software packages that have the vulnerability.</p>
    #
    #   @return [Array<SoftwarePackage>]
    #
    # @!attribute cvss
    #   <p>CVSS scores from the advisory related to the vulnerability.</p>
    #
    #   @return [Array<Cvss>]
    #
    # @!attribute related_vulnerabilities
    #   <p>List of vulnerabilities that are related to this vulnerability.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute vendor
    #   <p>Information about the vendor that generates the vulnerability report.</p>
    #
    #   @return [VulnerabilityVendor]
    #
    # @!attribute reference_urls
    #   <p>A list of URLs that provide additional information about the vulnerability.</p>
    #
    #   @return [Array<String>]
    #
    Vulnerability = ::Struct.new(
      :id,
      :vulnerable_packages,
      :cvss,
      :related_vulnerabilities,
      :vendor,
      :reference_urls,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A vendor that generates a vulnerability report.</p>
    #
    # @!attribute name
    #   <p>The name of the vendor.</p>
    #
    #   @return [String]
    #
    # @!attribute url
    #   <p>The URL of the vulnerability advisory.</p>
    #
    #   @return [String]
    #
    # @!attribute vendor_severity
    #   <p>The severity that the vendor assigned to the vulnerability.</p>
    #
    #   @return [String]
    #
    # @!attribute vendor_created_at
    #   <p>Indicates when the vulnerability advisory was created.</p>
    #            <p>Uses the <code>date-time</code> format specified in <a href="https://tools.ietf.org/html/rfc3339 section-5.6">RFC 3339 section 5.6, Internet
    #               Date/Time Format</a>. The value cannot contain spaces. For example,
    #               <code>2020-03-22T13:22:13.933Z</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute vendor_updated_at
    #   <p>Indicates when the vulnerability advisory was last updated.</p>
    #            <p>Uses the <code>date-time</code> format specified in <a href="https://tools.ietf.org/html/rfc3339 section-5.6">RFC 3339 section 5.6, Internet
    #               Date/Time Format</a>. The value cannot contain spaces. For example,
    #               <code>2020-03-22T13:22:13.933Z</code>.</p>
    #
    #   @return [String]
    #
    VulnerabilityVendor = ::Struct.new(
      :name,
      :url,
      :vendor_severity,
      :vendor_created_at,
      :vendor_updated_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about the action that CloudFront or WAF takes when a web request matches the
    #          conditions in the rule. </p>
    #
    # @!attribute type
    #   <p>Specifies how you want WAF to respond to requests that match the settings in a
    #            rule.</p>
    #            <p>Valid settings include the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ALLOW</code> - WAF allows requests</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BLOCK</code> - WAF blocks requests</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>COUNT</code> - WAF increments a counter of the requests that match all
    #                  of the conditions in the rule. WAF then continues to inspect the web request
    #                  based on the remaining rules in the web ACL. You can't specify <code>COUNT</code> for
    #                  the default action for a WebACL.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    WafAction = ::Struct.new(
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about a rule to exclude from a rule group.</p>
    #
    # @!attribute rule_id
    #   <p>The unique identifier for the rule to exclude from the rule group.</p>
    #
    #   @return [String]
    #
    WafExcludedRule = ::Struct.new(
      :rule_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about an override action for a rule.</p>
    #
    # @!attribute type
    #   <p>
    #               <code>COUNT</code> overrides the action specified by the individual rule within a
    #               <code>RuleGroup</code> .</p>
    #            <p>If set to <code>NONE</code>, the rule's action takes place.</p>
    #
    #   @return [String]
    #
    WafOverrideAction = ::Struct.new(
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about the status of the investigation into a finding.</p>
    #
    # @!attribute status
    #   <p>The status of the investigation into the finding. The workflow status is specific to an individual finding. It does not affect the generation of new findings. For example, setting the workflow status to <code>SUPPRESSED</code> or <code>RESOLVED</code> does not prevent a new finding for the same issue.</p>
    #            <p>The allowed values are the following.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NEW</code> - The initial state of a finding, before it is reviewed.</p>
    #                  <p>Security Hub also resets the workflow status from <code>NOTIFIED</code> or
    #                     <code>RESOLVED</code> to <code>NEW</code> in the following cases:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>RecordState</code> changes from <code>ARCHIVED</code> to
    #                           <code>ACTIVE</code>.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>ComplianceStatus</code> changes from <code>PASSED</code> to either
    #                           <code>WARNING</code>, <code>FAILED</code>, or
    #                        <code>NOT_AVAILABLE</code>.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOTIFIED</code> - Indicates that you notified the resource owner about the
    #                  security issue. Used when the initial reviewer is not the resource owner, and needs
    #                  intervention from the resource owner.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SUPPRESSED</code> - Indicates that you reviewed the finding and do not believe that any action is needed. The finding is no longer updated.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RESOLVED</code> - The finding was reviewed and remediated and is now
    #                  considered resolved. </p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["NEW", "NOTIFIED", "RESOLVED", "SUPPRESSED"]
    #
    #   @return [String]
    #
    Workflow = ::Struct.new(
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for WorkflowState
    #
    module WorkflowState
      # No documentation available.
      #
      NEW = "NEW"

      # No documentation available.
      #
      ASSIGNED = "ASSIGNED"

      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"

      # No documentation available.
      #
      DEFERRED = "DEFERRED"

      # No documentation available.
      #
      RESOLVED = "RESOLVED"
    end

    # Includes enum constants for WorkflowStatus
    #
    module WorkflowStatus
      # No documentation available.
      #
      NEW = "NEW"

      # No documentation available.
      #
      NOTIFIED = "NOTIFIED"

      # No documentation available.
      #
      RESOLVED = "RESOLVED"

      # No documentation available.
      #
      SUPPRESSED = "SUPPRESSED"
    end

    # <p>Used to update information about the investigation into the finding.</p>
    #
    # @!attribute status
    #   <p>The status of the investigation into the finding. The workflow status is specific to an individual finding. It does not affect the generation of new findings. For example, setting the workflow status to <code>SUPPRESSED</code> or <code>RESOLVED</code> does not prevent a new finding for the same issue.</p>
    #            <p>The allowed values are the following.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NEW</code> - The initial state of a finding, before it is reviewed.</p>
    #                  <p>Security Hub also resets <code>WorkFlowStatus</code> from <code>NOTIFIED</code> or
    #                     <code>RESOLVED</code> to <code>NEW</code> in the following cases:</p>
    #                  <ul>
    #                     <li>
    #                        <p>The record state changes from <code>ARCHIVED</code> to
    #                        <code>ACTIVE</code>.</p>
    #                     </li>
    #                     <li>
    #                        <p>The compliance status changes from <code>PASSED</code> to either
    #                           <code>WARNING</code>, <code>FAILED</code>, or
    #                        <code>NOT_AVAILABLE</code>.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOTIFIED</code> - Indicates that you notified the resource owner about the
    #                  security issue. Used when the initial reviewer is not the resource owner, and needs
    #                  intervention from the resource owner.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RESOLVED</code> - The finding was reviewed and remediated and is now
    #                  considered resolved.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SUPPRESSED</code> - Indicates that you reviewed the finding and do not believe that any action is needed. The finding is no longer updated.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["NEW", "NOTIFIED", "RESOLVED", "SUPPRESSED"]
    #
    #   @return [String]
    #
    WorkflowUpdate = ::Struct.new(
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
