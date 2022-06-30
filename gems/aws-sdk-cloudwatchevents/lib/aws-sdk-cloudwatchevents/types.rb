# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CloudWatchEvents
  module Types

    # @!attribute name
    #   <p>The name of the partner event source to activate.</p>
    #
    #   @return [String]
    #
    ActivateEventSourceInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    ActivateEventSourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains details about an API destination.</p>
    #
    # @!attribute api_destination_arn
    #   <p>The ARN of the API destination.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the API destination.</p>
    #
    #   @return [String]
    #
    # @!attribute api_destination_state
    #   <p>The state of the API destination.</p>
    #
    #   Enum, one of: ["ACTIVE", "INACTIVE"]
    #
    #   @return [String]
    #
    # @!attribute connection_arn
    #   <p>The ARN of the connection specified for the API destination.</p>
    #
    #   @return [String]
    #
    # @!attribute invocation_endpoint
    #   <p>The URL to the endpoint for the API destination.</p>
    #
    #   @return [String]
    #
    # @!attribute http_method
    #   <p>The method to use to connect to the HTTP endpoint.</p>
    #
    #   Enum, one of: ["POST", "GET", "HEAD", "OPTIONS", "PUT", "PATCH", "DELETE"]
    #
    #   @return [String]
    #
    # @!attribute invocation_rate_limit_per_second
    #   <p>The maximum number of invocations per second to send to the HTTP endpoint.</p>
    #
    #   @return [Integer]
    #
    # @!attribute creation_time
    #   <p>A time stamp for the time that the API destination was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modified_time
    #   <p>A time stamp for the time that the API destination was last modified.</p>
    #
    #   @return [Time]
    #
    ApiDestination = ::Struct.new(
      :api_destination_arn,
      :name,
      :api_destination_state,
      :connection_arn,
      :invocation_endpoint,
      :http_method,
      :invocation_rate_limit_per_second,
      :creation_time,
      :last_modified_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ApiDestinationHttpMethod
    #
    module ApiDestinationHttpMethod
      # No documentation available.
      #
      POST = "POST"

      # No documentation available.
      #
      GET = "GET"

      # No documentation available.
      #
      HEAD = "HEAD"

      # No documentation available.
      #
      OPTIONS = "OPTIONS"

      # No documentation available.
      #
      PUT = "PUT"

      # No documentation available.
      #
      PATCH = "PATCH"

      # No documentation available.
      #
      DELETE = "DELETE"
    end

    # Includes enum constants for ApiDestinationState
    #
    module ApiDestinationState
      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      INACTIVE = "INACTIVE"
    end

    # <p>An <code>Archive</code> object that contains details about an archive.</p>
    #
    # @!attribute archive_name
    #   <p>The name of the archive.</p>
    #
    #   @return [String]
    #
    # @!attribute event_source_arn
    #   <p>The ARN of the event bus associated with the archive. Only events from this event bus are
    #         sent to the archive.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The current state of the archive.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED", "CREATING", "UPDATING", "CREATE_FAILED", "UPDATE_FAILED"]
    #
    #   @return [String]
    #
    # @!attribute state_reason
    #   <p>A description for the reason that the archive is in the current state.</p>
    #
    #   @return [String]
    #
    # @!attribute retention_days
    #   <p>The number of days to retain events in the archive before they are deleted.</p>
    #
    #   @return [Integer]
    #
    # @!attribute size_bytes
    #   <p>The size of the archive, in bytes.</p>
    #
    #   @return [Integer]
    #
    # @!attribute event_count
    #   <p>The number of events in the archive.</p>
    #
    #   @return [Integer]
    #
    # @!attribute creation_time
    #   <p>The time stamp for the time that the archive was created.</p>
    #
    #   @return [Time]
    #
    Archive = ::Struct.new(
      :archive_name,
      :event_source_arn,
      :state,
      :state_reason,
      :retention_days,
      :size_bytes,
      :event_count,
      :creation_time,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.size_bytes ||= 0
        self.event_count ||= 0
      end

    end

    # Includes enum constants for ArchiveState
    #
    module ArchiveState
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      CREATING = "CREATING"

      # No documentation available.
      #
      UPDATING = "UPDATING"

      # No documentation available.
      #
      CREATE_FAILED = "CREATE_FAILED"

      # No documentation available.
      #
      UPDATE_FAILED = "UPDATE_FAILED"
    end

    # Includes enum constants for AssignPublicIp
    #
    module AssignPublicIp
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # <p>This structure specifies the VPC subnets and security groups for the task, and whether a
    #       public IP address is to be used. This structure is relevant only for ECS tasks that use the
    #         <code>awsvpc</code> network mode.</p>
    #
    # @!attribute subnets
    #   <p>Specifies the subnets associated with the task. These subnets must all be in the same VPC.
    #         You can specify as many as 16 subnets.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute security_groups
    #   <p>Specifies the security groups associated with the task. These security groups must all be
    #         in the same VPC. You can specify as many as five security groups. If you do not specify a
    #         security group, the default security group for the VPC is used.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute assign_public_ip
    #   <p>Specifies whether the task's elastic network interface receives a public IP address. You
    #         can specify <code>ENABLED</code> only when <code>LaunchType</code> in
    #           <code>EcsParameters</code> is set to <code>FARGATE</code>.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    AwsVpcConfiguration = ::Struct.new(
      :subnets,
      :security_groups,
      :assign_public_ip,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The array properties for the submitted job, such as the size of the array. The array size
    #       can be between 2 and 10,000. If you specify array properties for a job, it becomes an array
    #       job. This parameter is used only if the target is an Batch job.</p>
    #
    # @!attribute size
    #   <p>The size of the array, if this is an array batch job. Valid values are integers between 2
    #         and 10,000.</p>
    #
    #   @return [Integer]
    #
    BatchArrayProperties = ::Struct.new(
      :size,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.size ||= 0
      end

    end

    # <p>The custom parameters to be used when the target is an Batch job.</p>
    #
    # @!attribute job_definition
    #   <p>The ARN or name of the job definition to use if the event target is an Batch job. This
    #         job definition must already exist.</p>
    #
    #   @return [String]
    #
    # @!attribute job_name
    #   <p>The name to use for this execution of the job, if the target is an Batch job.</p>
    #
    #   @return [String]
    #
    # @!attribute array_properties
    #   <p>The array properties for the submitted job, such as the size of the array. The array size
    #         can be between 2 and 10,000. If you specify array properties for a job, it becomes an array
    #         job. This parameter is used only if the target is an Batch job.</p>
    #
    #   @return [BatchArrayProperties]
    #
    # @!attribute retry_strategy
    #   <p>The retry strategy to use for failed jobs, if the target is an Batch job. The retry
    #         strategy is the number of times to retry the failed job execution. Valid values are 1–10. When
    #         you specify a retry strategy here, it overrides the retry strategy defined in the job
    #         definition.</p>
    #
    #   @return [BatchRetryStrategy]
    #
    BatchParameters = ::Struct.new(
      :job_definition,
      :job_name,
      :array_properties,
      :retry_strategy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The retry strategy to use for failed jobs, if the target is an Batch job. If you
    #       specify a retry strategy here, it overrides the retry strategy defined in the job
    #       definition.</p>
    #
    # @!attribute attempts
    #   <p>The number of times to attempt to retry, if the job fails. Valid values are 1–10.</p>
    #
    #   @return [Integer]
    #
    BatchRetryStrategy = ::Struct.new(
      :attempts,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.attempts ||= 0
      end

    end

    # @!attribute replay_name
    #   <p>The name of the replay to cancel.</p>
    #
    #   @return [String]
    #
    CancelReplayInput = ::Struct.new(
      :replay_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute replay_arn
    #   <p>The ARN of the replay to cancel.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The current state of the replay.</p>
    #
    #   Enum, one of: ["STARTING", "RUNNING", "CANCELLING", "COMPLETED", "CANCELLED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute state_reason
    #   <p>The reason that the replay is in the current state.</p>
    #
    #   @return [String]
    #
    CancelReplayOutput = ::Struct.new(
      :replay_arn,
      :state,
      :state_reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The details of a capacity provider strategy. To learn more, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_CapacityProviderStrategyItem.html">CapacityProviderStrategyItem</a> in the Amazon ECS API Reference.</p>
    #
    # @!attribute capacity_provider
    #   <p>The short name of the capacity provider.</p>
    #
    #   @return [String]
    #
    # @!attribute weight
    #   <p>The weight value designates the relative percentage of the total number of tasks launched
    #         that should use the specified capacity provider. The weight value is taken into consideration
    #         after the base value, if defined, is satisfied.</p>
    #
    #   @return [Integer]
    #
    # @!attribute base
    #   <p>The base value designates how many tasks, at a minimum, to run on the specified capacity
    #         provider. Only one capacity provider in a capacity provider strategy can have a base defined.
    #         If no value is specified, the default value of 0 is used. </p>
    #
    #   @return [Integer]
    #
    CapacityProviderStrategyItem = ::Struct.new(
      :capacity_provider,
      :weight,
      :base,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.weight ||= 0
        self.base ||= 0
      end

    end

    # <p>There is concurrent modification on a rule, target, archive, or replay.</p>
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

    # <p>A JSON string which you can use to limit the event bus permissions you are granting to
    #       only accounts that fulfill the condition. Currently, the only supported condition is
    #       membership in a certain Amazon Web Services organization. The string must contain <code>Type</code>,
    #         <code>Key</code>, and <code>Value</code> fields. The <code>Value</code> field specifies the
    #       ID of the Amazon Web Services organization. Following is an example value for <code>Condition</code>:</p>
    #          <p>
    #             <code>'{"Type" : "StringEquals", "Key": "aws:PrincipalOrgID", "Value":
    #         "o-1234567890"}'</code>
    #          </p>
    #
    # @!attribute type
    #   <p>Specifies the type of condition. Currently the only supported value is
    #           <code>StringEquals</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute key
    #   <p>Specifies the key for the condition. Currently the only supported key is
    #           <code>aws:PrincipalOrgID</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>Specifies the value for the key. Currently, this must be the ID of the
    #         organization.</p>
    #
    #   @return [String]
    #
    Condition = ::Struct.new(
      :type,
      :key,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about a connection.</p>
    #
    # @!attribute connection_arn
    #   <p>The ARN of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_state
    #   <p>The state of the connection.</p>
    #
    #   Enum, one of: ["CREATING", "UPDATING", "DELETING", "AUTHORIZED", "DEAUTHORIZED", "AUTHORIZING", "DEAUTHORIZING"]
    #
    #   @return [String]
    #
    # @!attribute state_reason
    #   <p>The reason that the connection is in the connection state.</p>
    #
    #   @return [String]
    #
    # @!attribute authorization_type
    #   <p>The authorization type specified for the connection.</p>
    #
    #   Enum, one of: ["BASIC", "OAUTH_CLIENT_CREDENTIALS", "API_KEY"]
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>A time stamp for the time that the connection was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modified_time
    #   <p>A time stamp for the time that the connection was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_authorized_time
    #   <p>A time stamp for the time that the connection was last authorized.</p>
    #
    #   @return [Time]
    #
    Connection = ::Struct.new(
      :connection_arn,
      :name,
      :connection_state,
      :state_reason,
      :authorization_type,
      :creation_time,
      :last_modified_time,
      :last_authorized_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the authorization parameters for the connection if API Key is specified as the
    #       authorization type.</p>
    #
    # @!attribute api_key_name
    #   <p>The name of the header to use for the <code>APIKeyValue</code> used for
    #         authorization.</p>
    #
    #   @return [String]
    #
    ConnectionApiKeyAuthResponseParameters = ::Struct.new(
      :api_key_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the authorization parameters to use for the connection.</p>
    #
    # @!attribute basic_auth_parameters
    #   <p>The authorization parameters for Basic authorization.</p>
    #
    #   @return [ConnectionBasicAuthResponseParameters]
    #
    # @!attribute o_auth_parameters
    #   <p>The OAuth parameters to use for authorization.</p>
    #
    #   @return [ConnectionOAuthResponseParameters]
    #
    # @!attribute api_key_auth_parameters
    #   <p>The API Key parameters to use for authorization.</p>
    #
    #   @return [ConnectionApiKeyAuthResponseParameters]
    #
    # @!attribute invocation_http_parameters
    #   <p>Additional parameters for the connection that are passed through with every invocation to
    #         the HTTP endpoint.</p>
    #
    #   @return [ConnectionHttpParameters]
    #
    ConnectionAuthResponseParameters = ::Struct.new(
      :basic_auth_parameters,
      :o_auth_parameters,
      :api_key_auth_parameters,
      :invocation_http_parameters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ConnectionAuthorizationType
    #
    module ConnectionAuthorizationType
      # No documentation available.
      #
      BASIC = "BASIC"

      # No documentation available.
      #
      OAUTH_CLIENT_CREDENTIALS = "OAUTH_CLIENT_CREDENTIALS"

      # No documentation available.
      #
      API_KEY = "API_KEY"
    end

    # <p>Contains the authorization parameters for the connection if Basic is specified as the
    #       authorization type.</p>
    #
    # @!attribute username
    #   <p>The user name to use for Basic authorization.</p>
    #
    #   @return [String]
    #
    ConnectionBasicAuthResponseParameters = ::Struct.new(
      :username,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Additional parameter included in the body. You can include up to 100 additional body
    #       parameters per request. An event payload cannot exceed 64 KB.</p>
    #
    # @!attribute key
    #   <p>The key for the parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value associated with the key.</p>
    #
    #   @return [String]
    #
    # @!attribute is_value_secret
    #   <p>Specified whether the value is secret.</p>
    #
    #   @return [Boolean]
    #
    ConnectionBodyParameter = ::Struct.new(
      :key,
      :value,
      :is_value_secret,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.is_value_secret ||= false
      end

    end

    # <p>Additional parameter included in the header. You can include up to 100 additional header
    #       parameters per request. An event payload cannot exceed 64 KB.</p>
    #
    # @!attribute key
    #   <p>The key for the parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value associated with the key.</p>
    #
    #   @return [String]
    #
    # @!attribute is_value_secret
    #   <p>Specified whether the value is a secret.</p>
    #
    #   @return [Boolean]
    #
    ConnectionHeaderParameter = ::Struct.new(
      :key,
      :value,
      :is_value_secret,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.is_value_secret ||= false
      end

    end

    # <p>Contains additional parameters for the connection.</p>
    #
    # @!attribute header_parameters
    #   <p>Contains additional header parameters for the connection.</p>
    #
    #   @return [Array<ConnectionHeaderParameter>]
    #
    # @!attribute query_string_parameters
    #   <p>Contains additional query string parameters for the connection.</p>
    #
    #   @return [Array<ConnectionQueryStringParameter>]
    #
    # @!attribute body_parameters
    #   <p>Contains additional body string parameters for the connection.</p>
    #
    #   @return [Array<ConnectionBodyParameter>]
    #
    ConnectionHttpParameters = ::Struct.new(
      :header_parameters,
      :query_string_parameters,
      :body_parameters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the client response parameters for the connection when OAuth is specified as the
    #       authorization type.</p>
    #
    # @!attribute client_id
    #   <p>The client ID associated with the response to the connection request.</p>
    #
    #   @return [String]
    #
    ConnectionOAuthClientResponseParameters = ::Struct.new(
      :client_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ConnectionOAuthHttpMethod
    #
    module ConnectionOAuthHttpMethod
      # No documentation available.
      #
      GET = "GET"

      # No documentation available.
      #
      POST = "POST"

      # No documentation available.
      #
      PUT = "PUT"
    end

    # <p>Contains the response parameters when OAuth is specified as the authorization type.</p>
    #
    # @!attribute client_parameters
    #   <p>A <code>ConnectionOAuthClientResponseParameters</code> object that contains details about
    #         the client parameters returned when OAuth is specified as the authorization type.</p>
    #
    #   @return [ConnectionOAuthClientResponseParameters]
    #
    # @!attribute authorization_endpoint
    #   <p>The URL to the HTTP endpoint that authorized the request.</p>
    #
    #   @return [String]
    #
    # @!attribute http_method
    #   <p>The method used to connect to the HTTP endpoint.</p>
    #
    #   Enum, one of: ["GET", "POST", "PUT"]
    #
    #   @return [String]
    #
    # @!attribute o_auth_http_parameters
    #   <p>The additional HTTP parameters used for the OAuth authorization request.</p>
    #
    #   @return [ConnectionHttpParameters]
    #
    ConnectionOAuthResponseParameters = ::Struct.new(
      :client_parameters,
      :authorization_endpoint,
      :http_method,
      :o_auth_http_parameters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Additional query string parameter for the connection. You can include up to 100 additional
    #       query string parameters per request. Each additional parameter counts towards the event
    #       payload size, which cannot exceed 64 KB.</p>
    #
    # @!attribute key
    #   <p>The key for a query string parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value associated with the key for the query string parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute is_value_secret
    #   <p>Specifies whether the value is secret.</p>
    #
    #   @return [Boolean]
    #
    ConnectionQueryStringParameter = ::Struct.new(
      :key,
      :value,
      :is_value_secret,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.is_value_secret ||= false
      end

    end

    # Includes enum constants for ConnectionState
    #
    module ConnectionState
      # No documentation available.
      #
      CREATING = "CREATING"

      # No documentation available.
      #
      UPDATING = "UPDATING"

      # No documentation available.
      #
      DELETING = "DELETING"

      # No documentation available.
      #
      AUTHORIZED = "AUTHORIZED"

      # No documentation available.
      #
      DEAUTHORIZED = "DEAUTHORIZED"

      # No documentation available.
      #
      AUTHORIZING = "AUTHORIZING"

      # No documentation available.
      #
      DEAUTHORIZING = "DEAUTHORIZING"
    end

    # @!attribute name
    #   <p>The name for the API destination to create.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description for the API destination to create.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_arn
    #   <p>The ARN of the connection to use for the API destination. The destination endpoint must
    #         support the authorization type specified for the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute invocation_endpoint
    #   <p>The URL to the HTTP invocation endpoint for the API destination.</p>
    #
    #   @return [String]
    #
    # @!attribute http_method
    #   <p>The method to use for the request to the HTTP invocation endpoint.</p>
    #
    #   Enum, one of: ["POST", "GET", "HEAD", "OPTIONS", "PUT", "PATCH", "DELETE"]
    #
    #   @return [String]
    #
    # @!attribute invocation_rate_limit_per_second
    #   <p>The maximum number of requests per second to send to the HTTP invocation endpoint.</p>
    #
    #   @return [Integer]
    #
    CreateApiDestinationInput = ::Struct.new(
      :name,
      :description,
      :connection_arn,
      :invocation_endpoint,
      :http_method,
      :invocation_rate_limit_per_second,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute api_destination_arn
    #   <p>The ARN of the API destination that was created by the request.</p>
    #
    #   @return [String]
    #
    # @!attribute api_destination_state
    #   <p>The state of the API destination that was created by the request.</p>
    #
    #   Enum, one of: ["ACTIVE", "INACTIVE"]
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>A time stamp indicating the time that the API destination was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modified_time
    #   <p>A time stamp indicating the time that the API destination was last modified.</p>
    #
    #   @return [Time]
    #
    CreateApiDestinationOutput = ::Struct.new(
      :api_destination_arn,
      :api_destination_state,
      :creation_time,
      :last_modified_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute archive_name
    #   <p>The name for the archive to create.</p>
    #
    #   @return [String]
    #
    # @!attribute event_source_arn
    #   <p>The ARN of the event bus that sends events to the archive.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description for the archive.</p>
    #
    #   @return [String]
    #
    # @!attribute event_pattern
    #   <p>An event pattern to use to filter events sent to the archive.</p>
    #
    #   @return [String]
    #
    # @!attribute retention_days
    #   <p>The number of days to retain events for. Default value is 0. If set to 0, events are
    #         retained indefinitely</p>
    #
    #   @return [Integer]
    #
    CreateArchiveInput = ::Struct.new(
      :archive_name,
      :event_source_arn,
      :description,
      :event_pattern,
      :retention_days,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute archive_arn
    #   <p>The ARN of the archive that was created.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the archive that was created.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED", "CREATING", "UPDATING", "CREATE_FAILED", "UPDATE_FAILED"]
    #
    #   @return [String]
    #
    # @!attribute state_reason
    #   <p>The reason that the archive is in the state.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The time at which the archive was created.</p>
    #
    #   @return [Time]
    #
    CreateArchiveOutput = ::Struct.new(
      :archive_arn,
      :state,
      :state_reason,
      :creation_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the API key authorization parameters for the connection.</p>
    #
    # @!attribute api_key_name
    #   <p>The name of the API key to use for authorization.</p>
    #
    #   @return [String]
    #
    # @!attribute api_key_value
    #   <p>The value for the API key to use for authorization.</p>
    #
    #   @return [String]
    #
    CreateConnectionApiKeyAuthRequestParameters = ::Struct.new(
      :api_key_name,
      :api_key_value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the authorization parameters for the connection.</p>
    #
    # @!attribute basic_auth_parameters
    #   <p>A <code>CreateConnectionBasicAuthRequestParameters</code> object that contains the Basic
    #         authorization parameters to use for the connection.</p>
    #
    #   @return [CreateConnectionBasicAuthRequestParameters]
    #
    # @!attribute o_auth_parameters
    #   <p>A <code>CreateConnectionOAuthRequestParameters</code> object that contains the OAuth
    #         authorization parameters to use for the connection.</p>
    #
    #   @return [CreateConnectionOAuthRequestParameters]
    #
    # @!attribute api_key_auth_parameters
    #   <p>A <code>CreateConnectionApiKeyAuthRequestParameters</code> object that contains the API
    #         key authorization parameters to use for the connection.</p>
    #
    #   @return [CreateConnectionApiKeyAuthRequestParameters]
    #
    # @!attribute invocation_http_parameters
    #   <p>A <code>ConnectionHttpParameters</code> object that contains the API key authorization
    #         parameters to use for the connection. Note that if you include additional parameters for the
    #         target of a rule via <code>HttpParameters</code>, including query strings, the parameters
    #         added for the connection take precedence.</p>
    #
    #   @return [ConnectionHttpParameters]
    #
    CreateConnectionAuthRequestParameters = ::Struct.new(
      :basic_auth_parameters,
      :o_auth_parameters,
      :api_key_auth_parameters,
      :invocation_http_parameters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the Basic authorization parameters to use for the connection.</p>
    #
    # @!attribute username
    #   <p>The user name to use for Basic authorization.</p>
    #
    #   @return [String]
    #
    # @!attribute password
    #   <p>The password associated with the user name to use for Basic authorization.</p>
    #
    #   @return [String]
    #
    CreateConnectionBasicAuthRequestParameters = ::Struct.new(
      :username,
      :password,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name for the connection to create.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description for the connection to create.</p>
    #
    #   @return [String]
    #
    # @!attribute authorization_type
    #   <p>The type of authorization to use for the connection.</p>
    #
    #   Enum, one of: ["BASIC", "OAUTH_CLIENT_CREDENTIALS", "API_KEY"]
    #
    #   @return [String]
    #
    # @!attribute auth_parameters
    #   <p>A <code>CreateConnectionAuthRequestParameters</code> object that contains the
    #         authorization parameters to use to authorize with the endpoint. </p>
    #
    #   @return [CreateConnectionAuthRequestParameters]
    #
    CreateConnectionInput = ::Struct.new(
      :name,
      :description,
      :authorization_type,
      :auth_parameters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the Basic authorization parameters to use for the connection.</p>
    #
    # @!attribute client_id
    #   <p>The client ID to use for OAuth authorization for the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute client_secret
    #   <p>The client secret associated with the client ID to use for OAuth authorization for the
    #         connection.</p>
    #
    #   @return [String]
    #
    CreateConnectionOAuthClientRequestParameters = ::Struct.new(
      :client_id,
      :client_secret,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the OAuth authorization parameters to use for the connection.</p>
    #
    # @!attribute client_parameters
    #   <p>A <code>CreateConnectionOAuthClientRequestParameters</code> object that contains the
    #         client parameters for OAuth authorization.</p>
    #
    #   @return [CreateConnectionOAuthClientRequestParameters]
    #
    # @!attribute authorization_endpoint
    #   <p>The URL to the authorization endpoint when OAuth is specified as the authorization
    #         type.</p>
    #
    #   @return [String]
    #
    # @!attribute http_method
    #   <p>The method to use for the authorization request.</p>
    #
    #   Enum, one of: ["GET", "POST", "PUT"]
    #
    #   @return [String]
    #
    # @!attribute o_auth_http_parameters
    #   <p>A <code>ConnectionHttpParameters</code> object that contains details about the additional
    #         parameters to use for the connection.</p>
    #
    #   @return [ConnectionHttpParameters]
    #
    CreateConnectionOAuthRequestParameters = ::Struct.new(
      :client_parameters,
      :authorization_endpoint,
      :http_method,
      :o_auth_http_parameters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connection_arn
    #   <p>The ARN of the connection that was created by the request.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_state
    #   <p>The state of the connection that was created by the request.</p>
    #
    #   Enum, one of: ["CREATING", "UPDATING", "DELETING", "AUTHORIZED", "DEAUTHORIZED", "AUTHORIZING", "DEAUTHORIZING"]
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>A time stamp for the time that the connection was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modified_time
    #   <p>A time stamp for the time that the connection was last updated.</p>
    #
    #   @return [Time]
    #
    CreateConnectionOutput = ::Struct.new(
      :connection_arn,
      :connection_state,
      :creation_time,
      :last_modified_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the new event bus. </p>
    #            <p>Event bus names cannot contain the / character. You can't use the name
    #           <code>default</code> for a custom event bus, as this name is already used for your account's
    #         default event bus.</p>
    #            <p>If this is a partner event bus, the name must exactly match the name of the partner event
    #         source that this event bus is matched to.</p>
    #
    #   @return [String]
    #
    # @!attribute event_source_name
    #   <p>If you are creating a partner event bus, this specifies the partner event source that the
    #         new event bus will be matched with.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Tags to associate with the event bus.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateEventBusInput = ::Struct.new(
      :name,
      :event_source_name,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute event_bus_arn
    #   <p>The ARN of the new event bus.</p>
    #
    #   @return [String]
    #
    CreateEventBusOutput = ::Struct.new(
      :event_bus_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the partner event source. This name must be unique and must be in the format
    #             <code>
    #                  <i>partner_name</i>/<i>event_namespace</i>/<i>event_name</i>
    #               </code>.
    #         The Amazon Web Services account that wants to use this partner event source must create a partner event bus
    #         with a name that matches the name of the partner event source.</p>
    #
    #   @return [String]
    #
    # @!attribute account
    #   <p>The Amazon Web Services account ID that is permitted to create a matching partner event bus for this
    #         partner event source.</p>
    #
    #   @return [String]
    #
    CreatePartnerEventSourceInput = ::Struct.new(
      :name,
      :account,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute event_source_arn
    #   <p>The ARN of the partner event source.</p>
    #
    #   @return [String]
    #
    CreatePartnerEventSourceOutput = ::Struct.new(
      :event_source_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the partner event source to deactivate.</p>
    #
    #   @return [String]
    #
    DeactivateEventSourceInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeactivateEventSourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A <code>DeadLetterConfig</code> object that contains information about a dead-letter queue
    #       configuration.</p>
    #
    # @!attribute arn
    #   <p>The ARN of the SQS queue specified as the target for the dead-letter queue.</p>
    #
    #   @return [String]
    #
    DeadLetterConfig = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the connection to remove authorization from.</p>
    #
    #   @return [String]
    #
    DeauthorizeConnectionInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connection_arn
    #   <p>The ARN of the connection that authorization was removed from.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_state
    #   <p>The state of the connection.</p>
    #
    #   Enum, one of: ["CREATING", "UPDATING", "DELETING", "AUTHORIZED", "DEAUTHORIZED", "AUTHORIZING", "DEAUTHORIZING"]
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>A time stamp for the time that the connection was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modified_time
    #   <p>A time stamp for the time that the connection was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_authorized_time
    #   <p>A time stamp for the time that the connection was last authorized.</p>
    #
    #   @return [Time]
    #
    DeauthorizeConnectionOutput = ::Struct.new(
      :connection_arn,
      :connection_state,
      :creation_time,
      :last_modified_time,
      :last_authorized_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the destination to delete.</p>
    #
    #   @return [String]
    #
    DeleteApiDestinationInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteApiDestinationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute archive_name
    #   <p>The name of the archive to delete.</p>
    #
    #   @return [String]
    #
    DeleteArchiveInput = ::Struct.new(
      :archive_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteArchiveOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the connection to delete.</p>
    #
    #   @return [String]
    #
    DeleteConnectionInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connection_arn
    #   <p>The ARN of the connection that was deleted.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_state
    #   <p>The state of the connection before it was deleted.</p>
    #
    #   Enum, one of: ["CREATING", "UPDATING", "DELETING", "AUTHORIZED", "DEAUTHORIZED", "AUTHORIZING", "DEAUTHORIZING"]
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>A time stamp for the time that the connection was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modified_time
    #   <p>A time stamp for the time that the connection was last modified before it was
    #         deleted.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_authorized_time
    #   <p>A time stamp for the time that the connection was last authorized before it wa
    #         deleted.</p>
    #
    #   @return [Time]
    #
    DeleteConnectionOutput = ::Struct.new(
      :connection_arn,
      :connection_state,
      :creation_time,
      :last_modified_time,
      :last_authorized_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the event bus to delete.</p>
    #
    #   @return [String]
    #
    DeleteEventBusInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteEventBusOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the event source to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute account
    #   <p>The Amazon Web Services account ID of the Amazon Web Services customer that the event source was created for.</p>
    #
    #   @return [String]
    #
    DeletePartnerEventSourceInput = ::Struct.new(
      :name,
      :account,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeletePartnerEventSourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the rule.</p>
    #
    #   @return [String]
    #
    # @!attribute event_bus_name
    #   <p>The name or ARN of the event bus associated with the rule. If you omit this, the default
    #         event bus is used.</p>
    #
    #   @return [String]
    #
    # @!attribute force
    #   <p>If this is a managed rule, created by an Amazon Web Services service on your behalf, you must specify
    #           <code>Force</code> as <code>True</code> to delete the rule. This parameter is ignored for
    #         rules that are not managed rules. You can check whether a rule is a managed rule by using
    #           <code>DescribeRule</code> or <code>ListRules</code> and checking the <code>ManagedBy</code>
    #         field of the response.</p>
    #
    #   @return [Boolean]
    #
    DeleteRuleInput = ::Struct.new(
      :name,
      :event_bus_name,
      :force,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.force ||= false
      end

    end

    DeleteRuleOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the API destination to retrieve.</p>
    #
    #   @return [String]
    #
    DescribeApiDestinationInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute api_destination_arn
    #   <p>The ARN of the API destination retrieved.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the API destination retrieved.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description for the API destination retrieved.</p>
    #
    #   @return [String]
    #
    # @!attribute api_destination_state
    #   <p>The state of the API destination retrieved.</p>
    #
    #   Enum, one of: ["ACTIVE", "INACTIVE"]
    #
    #   @return [String]
    #
    # @!attribute connection_arn
    #   <p>The ARN of the connection specified for the API destination retrieved.</p>
    #
    #   @return [String]
    #
    # @!attribute invocation_endpoint
    #   <p>The URL to use to connect to the HTTP endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute http_method
    #   <p>The method to use to connect to the HTTP endpoint.</p>
    #
    #   Enum, one of: ["POST", "GET", "HEAD", "OPTIONS", "PUT", "PATCH", "DELETE"]
    #
    #   @return [String]
    #
    # @!attribute invocation_rate_limit_per_second
    #   <p>The maximum number of invocations per second to specified for the API destination. Note
    #         that if you set the invocation rate maximum to a value lower the rate necessary to send all
    #         events received on to the destination HTTP endpoint, some events may not be delivered within
    #         the 24-hour retry window. If you plan to set the rate lower than the rate necessary to deliver
    #         all events, consider using a dead-letter queue to catch events that are not delivered within
    #         24 hours.</p>
    #
    #   @return [Integer]
    #
    # @!attribute creation_time
    #   <p>A time stamp for the time that the API destination was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modified_time
    #   <p>A time stamp for the time that the API destination was last modified.</p>
    #
    #   @return [Time]
    #
    DescribeApiDestinationOutput = ::Struct.new(
      :api_destination_arn,
      :name,
      :description,
      :api_destination_state,
      :connection_arn,
      :invocation_endpoint,
      :http_method,
      :invocation_rate_limit_per_second,
      :creation_time,
      :last_modified_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute archive_name
    #   <p>The name of the archive to retrieve.</p>
    #
    #   @return [String]
    #
    DescribeArchiveInput = ::Struct.new(
      :archive_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute archive_arn
    #   <p>The ARN of the archive.</p>
    #
    #   @return [String]
    #
    # @!attribute archive_name
    #   <p>The name of the archive.</p>
    #
    #   @return [String]
    #
    # @!attribute event_source_arn
    #   <p>The ARN of the event source associated with the archive.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the archive.</p>
    #
    #   @return [String]
    #
    # @!attribute event_pattern
    #   <p>The event pattern used to filter events sent to the archive.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the archive.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED", "CREATING", "UPDATING", "CREATE_FAILED", "UPDATE_FAILED"]
    #
    #   @return [String]
    #
    # @!attribute state_reason
    #   <p>The reason that the archive is in the state.</p>
    #
    #   @return [String]
    #
    # @!attribute retention_days
    #   <p>The number of days to retain events for in the archive.</p>
    #
    #   @return [Integer]
    #
    # @!attribute size_bytes
    #   <p>The size of the archive in bytes.</p>
    #
    #   @return [Integer]
    #
    # @!attribute event_count
    #   <p>The number of events in the archive.</p>
    #
    #   @return [Integer]
    #
    # @!attribute creation_time
    #   <p>The time at which the archive was created.</p>
    #
    #   @return [Time]
    #
    DescribeArchiveOutput = ::Struct.new(
      :archive_arn,
      :archive_name,
      :event_source_arn,
      :description,
      :event_pattern,
      :state,
      :state_reason,
      :retention_days,
      :size_bytes,
      :event_count,
      :creation_time,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.size_bytes ||= 0
        self.event_count ||= 0
      end

    end

    # @!attribute name
    #   <p>The name of the connection to retrieve.</p>
    #
    #   @return [String]
    #
    DescribeConnectionInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connection_arn
    #   <p>The ARN of the connection retrieved.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the connection retrieved.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description for the connection retrieved.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_state
    #   <p>The state of the connection retrieved.</p>
    #
    #   Enum, one of: ["CREATING", "UPDATING", "DELETING", "AUTHORIZED", "DEAUTHORIZED", "AUTHORIZING", "DEAUTHORIZING"]
    #
    #   @return [String]
    #
    # @!attribute state_reason
    #   <p>The reason that the connection is in the current connection state.</p>
    #
    #   @return [String]
    #
    # @!attribute authorization_type
    #   <p>The type of authorization specified for the connection.</p>
    #
    #   Enum, one of: ["BASIC", "OAUTH_CLIENT_CREDENTIALS", "API_KEY"]
    #
    #   @return [String]
    #
    # @!attribute secret_arn
    #   <p>The ARN of the secret created from the authorization parameters specified for the
    #         connection.</p>
    #
    #   @return [String]
    #
    # @!attribute auth_parameters
    #   <p>The parameters to use for authorization for the connection.</p>
    #
    #   @return [ConnectionAuthResponseParameters]
    #
    # @!attribute creation_time
    #   <p>A time stamp for the time that the connection was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modified_time
    #   <p>A time stamp for the time that the connection was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_authorized_time
    #   <p>A time stamp for the time that the connection was last authorized.</p>
    #
    #   @return [Time]
    #
    DescribeConnectionOutput = ::Struct.new(
      :connection_arn,
      :name,
      :description,
      :connection_state,
      :state_reason,
      :authorization_type,
      :secret_arn,
      :auth_parameters,
      :creation_time,
      :last_modified_time,
      :last_authorized_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name or ARN of the event bus to show details for. If you omit this, the default event
    #         bus is displayed.</p>
    #
    #   @return [String]
    #
    DescribeEventBusInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the event bus. Currently, this is always <code>default</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the account permitted to write events to the current
    #         account.</p>
    #
    #   @return [String]
    #
    # @!attribute policy
    #   <p>The policy that enables the external account to send events to your account.</p>
    #
    #   @return [String]
    #
    DescribeEventBusOutput = ::Struct.new(
      :name,
      :arn,
      :policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the partner event source to display the details of.</p>
    #
    #   @return [String]
    #
    DescribeEventSourceInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the partner event source.</p>
    #
    #   @return [String]
    #
    # @!attribute created_by
    #   <p>The name of the SaaS partner that created the event source.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The date and time that the event source was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute expiration_time
    #   <p>The date and time that the event source will expire if you do not create a matching event
    #         bus.</p>
    #
    #   @return [Time]
    #
    # @!attribute name
    #   <p>The name of the partner event source.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the event source. If it is ACTIVE, you have already created a matching event
    #         bus for this event source, and that event bus is active. If it is PENDING, either you haven't
    #         yet created a matching event bus, or that event bus is deactivated. If it is DELETED, you have
    #         created a matching event bus, but the event source has since been deleted.</p>
    #
    #   Enum, one of: ["PENDING", "ACTIVE", "DELETED"]
    #
    #   @return [String]
    #
    DescribeEventSourceOutput = ::Struct.new(
      :arn,
      :created_by,
      :creation_time,
      :expiration_time,
      :name,
      :state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the event source to display.</p>
    #
    #   @return [String]
    #
    DescribePartnerEventSourceInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the event source.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the event source.</p>
    #
    #   @return [String]
    #
    DescribePartnerEventSourceOutput = ::Struct.new(
      :arn,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute replay_name
    #   <p>The name of the replay to retrieve.</p>
    #
    #   @return [String]
    #
    DescribeReplayInput = ::Struct.new(
      :replay_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute replay_name
    #   <p>The name of the replay.</p>
    #
    #   @return [String]
    #
    # @!attribute replay_arn
    #   <p>The ARN of the replay.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the replay.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The current state of the replay.</p>
    #
    #   Enum, one of: ["STARTING", "RUNNING", "CANCELLING", "COMPLETED", "CANCELLED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute state_reason
    #   <p>The reason that the replay is in the current state.</p>
    #
    #   @return [String]
    #
    # @!attribute event_source_arn
    #   <p>The ARN of the archive events were replayed from.</p>
    #
    #   @return [String]
    #
    # @!attribute destination
    #   <p>A <code>ReplayDestination</code> object that contains details about the replay.</p>
    #
    #   @return [ReplayDestination]
    #
    # @!attribute event_start_time
    #   <p>The time stamp of the first event that was last replayed from the archive.</p>
    #
    #   @return [Time]
    #
    # @!attribute event_end_time
    #   <p>The time stamp for the last event that was replayed from the archive.</p>
    #
    #   @return [Time]
    #
    # @!attribute event_last_replayed_time
    #   <p>The time that the event was last replayed.</p>
    #
    #   @return [Time]
    #
    # @!attribute replay_start_time
    #   <p>A time stamp for the time that the replay started.</p>
    #
    #   @return [Time]
    #
    # @!attribute replay_end_time
    #   <p>A time stamp for the time that the replay stopped.</p>
    #
    #   @return [Time]
    #
    DescribeReplayOutput = ::Struct.new(
      :replay_name,
      :replay_arn,
      :description,
      :state,
      :state_reason,
      :event_source_arn,
      :destination,
      :event_start_time,
      :event_end_time,
      :event_last_replayed_time,
      :replay_start_time,
      :replay_end_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the rule.</p>
    #
    #   @return [String]
    #
    # @!attribute event_bus_name
    #   <p>The name or ARN of the event bus associated with the rule. If you omit this, the default
    #         event bus is used.</p>
    #
    #   @return [String]
    #
    DescribeRuleInput = ::Struct.new(
      :name,
      :event_bus_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the rule.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the rule.</p>
    #
    #   @return [String]
    #
    # @!attribute event_pattern
    #   <p>The event pattern. For more information, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-and-event-patterns.html">Events and Event
    #           Patterns</a> in the <i>Amazon EventBridge User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute schedule_expression
    #   <p>The scheduling expression. For example, "cron(0 20 * * ? *)", "rate(5 minutes)".</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>Specifies whether the rule is enabled or disabled.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the rule.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role associated with the rule.</p>
    #
    #   @return [String]
    #
    # @!attribute managed_by
    #   <p>If this is a managed rule, created by an Amazon Web Services service on your behalf, this field displays
    #         the principal name of the Amazon Web Services service that created the rule.</p>
    #
    #   @return [String]
    #
    # @!attribute event_bus_name
    #   <p>The name of the event bus associated with the rule.</p>
    #
    #   @return [String]
    #
    # @!attribute created_by
    #   <p>The account ID of the user that created the rule. If you use <code>PutRule</code> to put a
    #         rule on an event bus in another account, the other account is the owner of the rule, and the
    #         rule ARN includes the account ID for that account. However, the value for
    #           <code>CreatedBy</code> is the account ID as the account that created the rule in the other
    #         account.</p>
    #
    #   @return [String]
    #
    DescribeRuleOutput = ::Struct.new(
      :name,
      :arn,
      :event_pattern,
      :schedule_expression,
      :state,
      :description,
      :role_arn,
      :managed_by,
      :event_bus_name,
      :created_by,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the rule.</p>
    #
    #   @return [String]
    #
    # @!attribute event_bus_name
    #   <p>The name or ARN of the event bus associated with the rule. If you omit this, the default
    #         event bus is used.</p>
    #
    #   @return [String]
    #
    DisableRuleInput = ::Struct.new(
      :name,
      :event_bus_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisableRuleOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The custom parameters to be used when the target is an Amazon ECS task.</p>
    #
    # @!attribute task_definition_arn
    #   <p>The ARN of the task definition to use if the event target is an Amazon ECS task. </p>
    #
    #   @return [String]
    #
    # @!attribute task_count
    #   <p>The number of tasks to create based on <code>TaskDefinition</code>. The default is
    #         1.</p>
    #
    #   @return [Integer]
    #
    # @!attribute launch_type
    #   <p>Specifies the launch type on which your task is running. The launch type that you specify
    #         here must match one of the launch type (compatibilities) of the target task. The
    #         <code>FARGATE</code> value is supported only in the Regions where Fargate witt Amazon ECS
    #        is supported. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/AWS-Fargate.html">Fargate on Amazon ECS</a> in
    #         the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    #   Enum, one of: ["EC2", "FARGATE", "EXTERNAL"]
    #
    #   @return [String]
    #
    # @!attribute network_configuration
    #   <p>Use this structure if the Amazon ECS task uses the <code>awsvpc</code> network mode. This
    #         structure specifies the VPC subnets and security groups associated with the task, and whether
    #         a public IP address is to be used. This structure is required if <code>LaunchType</code> is
    #           <code>FARGATE</code> because the <code>awsvpc</code> mode is required for Fargate
    #         tasks.</p>
    #            <p>If you specify <code>NetworkConfiguration</code> when the target ECS task does not use the
    #           <code>awsvpc</code> network mode, the task fails.</p>
    #
    #   @return [NetworkConfiguration]
    #
    # @!attribute platform_version
    #   <p>Specifies the platform version for the task. Specify only the numeric portion of the
    #         platform version, such as <code>1.1.0</code>.</p>
    #            <p>This structure is used only if <code>LaunchType</code> is <code>FARGATE</code>. For more
    #         information about valid platform versions, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html">Fargate Platform
    #           Versions</a> in the <i>Amazon Elastic Container Service Developer
    #           Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute group
    #   <p>Specifies an ECS task group for the task. The maximum length is 255 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute capacity_provider_strategy
    #   <p>The capacity provider strategy to use for the task.</p>
    #            <p>If a <code>capacityProviderStrategy</code> is specified, the <code>launchType</code>
    #         parameter must be omitted. If no <code>capacityProviderStrategy</code> or launchType is
    #         specified, the <code>defaultCapacityProviderStrategy</code> for the cluster is used. </p>
    #
    #   @return [Array<CapacityProviderStrategyItem>]
    #
    # @!attribute enable_ecs_managed_tags
    #   <p>Specifies whether to enable Amazon ECS managed tags for the task. For more information,
    #         see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-using-tags.html">Tagging Your Amazon ECS Resources</a> in the Amazon Elastic Container Service Developer
    #         Guide. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute enable_execute_command
    #   <p>Whether or not to enable the execute command functionality for the containers in this
    #         task. If true, this enables execute command functionality on all containers in the
    #         task.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute placement_constraints
    #   <p>An array of placement constraint objects to use for the task. You can specify up to 10
    #         constraints per task (including constraints in the task definition and those specified at
    #         runtime).</p>
    #
    #   @return [Array<PlacementConstraint>]
    #
    # @!attribute placement_strategy
    #   <p>The placement strategy objects to use for the task. You can specify a maximum of five
    #         strategy rules per task. </p>
    #
    #   @return [Array<PlacementStrategy>]
    #
    # @!attribute propagate_tags
    #   <p>Specifies whether to propagate the tags from the task definition to the task. If no value
    #         is specified, the tags are not propagated. Tags can only be propagated to the task during task
    #         creation. To add tags to a task after task creation, use the TagResource API action. </p>
    #
    #   Enum, one of: ["TASK_DEFINITION"]
    #
    #   @return [String]
    #
    # @!attribute reference_id
    #   <p>The reference ID to use for the task.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The metadata that you apply to the task to help you categorize and organize them. Each tag
    #         consists of a key and an optional value, both of which you define. To learn more, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_RunTask.html ECS-RunTask-request-tags">RunTask</a> in the Amazon ECS API Reference.</p>
    #
    #   @return [Array<Tag>]
    #
    EcsParameters = ::Struct.new(
      :task_definition_arn,
      :task_count,
      :launch_type,
      :network_configuration,
      :platform_version,
      :group,
      :capacity_provider_strategy,
      :enable_ecs_managed_tags,
      :enable_execute_command,
      :placement_constraints,
      :placement_strategy,
      :propagate_tags,
      :reference_id,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.enable_ecs_managed_tags ||= false
        self.enable_execute_command ||= false
      end

    end

    # @!attribute name
    #   <p>The name of the rule.</p>
    #
    #   @return [String]
    #
    # @!attribute event_bus_name
    #   <p>The name or ARN of the event bus associated with the rule. If you omit this, the default
    #         event bus is used.</p>
    #
    #   @return [String]
    #
    EnableRuleInput = ::Struct.new(
      :name,
      :event_bus_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    EnableRuleOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An event bus receives events from a source and routes them to rules associated with that
    #       event bus. Your account's default event bus receives events from Amazon Web Services services. A custom event
    #       bus can receive events from your custom applications and services. A partner event bus
    #       receives events from an event source created by an SaaS partner. These events come from the
    #       partners services or applications.</p>
    #
    # @!attribute name
    #   <p>The name of the event bus.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The ARN of the event bus.</p>
    #
    #   @return [String]
    #
    # @!attribute policy
    #   <p>The permissions policy of the event bus, describing which other Amazon Web Services accounts can write
    #         events to this event bus.</p>
    #
    #   @return [String]
    #
    EventBus = ::Struct.new(
      :name,
      :arn,
      :policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A partner event source is created by an SaaS partner. If a customer creates a partner
    #       event bus that matches this event source, that Amazon Web Services account can receive events from the
    #       partner's applications or services.</p>
    #
    # @!attribute arn
    #   <p>The ARN of the event source.</p>
    #
    #   @return [String]
    #
    # @!attribute created_by
    #   <p>The name of the partner that created the event source.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The date and time the event source was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute expiration_time
    #   <p>The date and time that the event source will expire, if the Amazon Web Services account doesn't create a
    #         matching event bus for it.</p>
    #
    #   @return [Time]
    #
    # @!attribute name
    #   <p>The name of the event source.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the event source. If it is ACTIVE, you have already created a matching event
    #         bus for this event source, and that event bus is active. If it is PENDING, either you haven't
    #         yet created a matching event bus, or that event bus is deactivated. If it is DELETED, you have
    #         created a matching event bus, but the event source has since been deleted.</p>
    #
    #   Enum, one of: ["PENDING", "ACTIVE", "DELETED"]
    #
    #   @return [String]
    #
    EventSource = ::Struct.new(
      :arn,
      :created_by,
      :creation_time,
      :expiration_time,
      :name,
      :state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EventSourceState
    #
    module EventSourceState
      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      DELETED = "DELETED"
    end

    # <p>These are custom parameter to be used when the target is an API Gateway REST APIs or
    #       EventBridge ApiDestinations. In the latter case, these are merged with any
    #       InvocationParameters specified on the Connection, with any values from the Connection taking
    #       precedence.</p>
    #
    # @!attribute path_parameter_values
    #   <p>The path parameter values to be used to populate API Gateway REST API or EventBridge
    #         ApiDestination path wildcards ("*").</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute header_parameters
    #   <p>The headers that need to be sent as part of request invoking the API Gateway REST API or
    #         EventBridge ApiDestination.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute query_string_parameters
    #   <p>The query string keys/values that need to be sent as part of request invoking the API Gateway
    #         REST API or EventBridge ApiDestination.</p>
    #
    #   @return [Hash<String, String>]
    #
    HttpParameters = ::Struct.new(
      :path_parameter_values,
      :header_parameters,
      :query_string_parameters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An error occurred because a replay can be canceled only when the state is Running or
    #       Starting.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    IllegalStatusException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the parameters needed for you to provide custom input to a target based on one or
    #       more pieces of data extracted from the event.</p>
    #
    # @!attribute input_paths_map
    #   <p>Map of JSON paths to be extracted from the event. You can then insert these in the
    #         template in <code>InputTemplate</code> to produce the output you want to be sent to the
    #         target.</p>
    #            <p>
    #               <code>InputPathsMap</code> is an array key-value pairs, where each value is a valid JSON
    #         path. You can have as many as 100 key-value pairs. You must use JSON dot notation, not bracket
    #         notation.</p>
    #            <p>The keys cannot start with "Amazon Web Services." </p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute input_template
    #   <p>Input template where you specify placeholders that will be filled with the values of the
    #         keys from <code>InputPathsMap</code> to customize the data sent to the target. Enclose each
    #           <code>InputPathsMaps</code> value in brackets: <<i>value</i>> The
    #         InputTemplate must be valid JSON.</p>
    #
    #            <p>If <code>InputTemplate</code> is a JSON object (surrounded by curly braces), the following
    #         restrictions apply:</p>
    #            <ul>
    #               <li>
    #                  <p>The placeholder cannot be used as an object key.</p>
    #               </li>
    #            </ul>
    #            <p>The following example shows the syntax for using <code>InputPathsMap</code> and
    #           <code>InputTemplate</code>.</p>
    #            <p>
    #               <code> "InputTransformer":</code>
    #            </p>
    #            <p>
    #               <code>{</code>
    #            </p>
    #            <p>
    #               <code>"InputPathsMap": {"instance": "$.detail.instance","status":
    #           "$.detail.status"},</code>
    #            </p>
    #            <p>
    #               <code>"InputTemplate": "<instance> is in state <status>"</code>
    #            </p>
    #            <p>
    #               <code>}</code>
    #            </p>
    #            <p>To have the <code>InputTemplate</code> include quote marks within a JSON string, escape
    #         each quote marks with a slash, as in the following example:</p>
    #            <p>
    #               <code> "InputTransformer":</code>
    #            </p>
    #            <p>
    #               <code>{</code>
    #            </p>
    #            <p>
    #               <code>"InputPathsMap": {"instance": "$.detail.instance","status":
    #           "$.detail.status"},</code>
    #            </p>
    #            <p>
    #               <code>"InputTemplate": "<instance> is in state \"<status>\""</code>
    #            </p>
    #            <p>
    #               <code>}</code>
    #            </p>
    #            <p>The <code>InputTemplate</code> can also be valid JSON with varibles in quotes or out, as
    #         in the following example:</p>
    #            <p>
    #               <code> "InputTransformer":</code>
    #            </p>
    #            <p>
    #               <code>{</code>
    #            </p>
    #            <p>
    #               <code>"InputPathsMap": {"instance": "$.detail.instance","status":
    #           "$.detail.status"},</code>
    #            </p>
    #            <p>
    #               <code>"InputTemplate": '{"myInstance": <instance>,"myStatus": "<instance> is
    #           in state \"<status>\""}'</code>
    #            </p>
    #            <p>
    #               <code>}</code>
    #            </p>
    #
    #   @return [String]
    #
    InputTransformer = ::Struct.new(
      :input_paths_map,
      :input_template,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception occurs due to unexpected causes.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InternalException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The event pattern is not valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidEventPatternException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified state is not a valid state for an event source.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidStateException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This object enables you to specify a JSON path to extract from the event and use as the
    #       partition key for the Amazon Kinesis data stream, so that you can control the shard to which
    #       the event goes. If you do not include this parameter, the default is to use the
    #         <code>eventId</code> as the partition key.</p>
    #
    # @!attribute partition_key_path
    #   <p>The JSON path to be extracted from the event and used as the partition key. For more
    #         information, see <a href="https://docs.aws.amazon.com/streams/latest/dev/key-concepts.html partition-key">Amazon Kinesis Streams Key
    #           Concepts</a> in the <i>Amazon Kinesis Streams Developer Guide</i>.</p>
    #
    #   @return [String]
    #
    KinesisParameters = ::Struct.new(
      :partition_key_path,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for LaunchType
    #
    module LaunchType
      # No documentation available.
      #
      EC2 = "EC2"

      # No documentation available.
      #
      FARGATE = "FARGATE"

      # No documentation available.
      #
      EXTERNAL = "EXTERNAL"
    end

    # <p>The request failed because it attempted to create resource beyond the allowed service
    #       quota.</p>
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

    # @!attribute name_prefix
    #   <p>A name prefix to filter results returned. Only API destinations with a name that starts
    #         with the prefix are returned.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_arn
    #   <p>The ARN of the connection specified for the API destination.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token returned by a previous call to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The maximum number of API destinations to include in the response.</p>
    #
    #   @return [Integer]
    #
    ListApiDestinationsInput = ::Struct.new(
      :name_prefix,
      :connection_arn,
      :next_token,
      :limit,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute api_destinations
    #   <p>An array of <code>ApiDestination</code> objects that include information about an API
    #         destination.</p>
    #
    #   @return [Array<ApiDestination>]
    #
    # @!attribute next_token
    #   <p>A token you can use in a subsequent request to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    ListApiDestinationsOutput = ::Struct.new(
      :api_destinations,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name_prefix
    #   <p>A name prefix to filter the archives returned. Only archives with name that match the
    #         prefix are returned.</p>
    #
    #   @return [String]
    #
    # @!attribute event_source_arn
    #   <p>The ARN of the event source associated with the archive.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the archive.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED", "CREATING", "UPDATING", "CREATE_FAILED", "UPDATE_FAILED"]
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token returned by a previous call to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The maximum number of results to return.</p>
    #
    #   @return [Integer]
    #
    ListArchivesInput = ::Struct.new(
      :name_prefix,
      :event_source_arn,
      :state,
      :next_token,
      :limit,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute archives
    #   <p>An array of <code>Archive</code> objects that include details about an archive.</p>
    #
    #   @return [Array<Archive>]
    #
    # @!attribute next_token
    #   <p>The token returned by a previous call to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    ListArchivesOutput = ::Struct.new(
      :archives,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name_prefix
    #   <p>A name prefix to filter results returned. Only connections with a name that starts with
    #         the prefix are returned.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_state
    #   <p>The state of the connection.</p>
    #
    #   Enum, one of: ["CREATING", "UPDATING", "DELETING", "AUTHORIZED", "DEAUTHORIZED", "AUTHORIZING", "DEAUTHORIZING"]
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token returned by a previous call to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The maximum number of connections to return.</p>
    #
    #   @return [Integer]
    #
    ListConnectionsInput = ::Struct.new(
      :name_prefix,
      :connection_state,
      :next_token,
      :limit,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connections
    #   <p>An array of connections objects that include details about the connections.</p>
    #
    #   @return [Array<Connection>]
    #
    # @!attribute next_token
    #   <p>A token you can use in a subsequent request to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    ListConnectionsOutput = ::Struct.new(
      :connections,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name_prefix
    #   <p>Specifying this limits the results to only those event buses with names that start with
    #         the specified prefix.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token returned by a previous call to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>Specifying this limits the number of results returned by this operation. The operation
    #         also returns a NextToken which you can use in a subsequent operation to retrieve the next set
    #         of results.</p>
    #
    #   @return [Integer]
    #
    ListEventBusesInput = ::Struct.new(
      :name_prefix,
      :next_token,
      :limit,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute event_buses
    #   <p>This list of event buses.</p>
    #
    #   @return [Array<EventBus>]
    #
    # @!attribute next_token
    #   <p>A token you can use in a subsequent operation to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    ListEventBusesOutput = ::Struct.new(
      :event_buses,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name_prefix
    #   <p>Specifying this limits the results to only those partner event sources with names that
    #         start with the specified prefix.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token returned by a previous call to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>Specifying this limits the number of results returned by this operation. The operation
    #         also returns a NextToken which you can use in a subsequent operation to retrieve the next set
    #         of results.</p>
    #
    #   @return [Integer]
    #
    ListEventSourcesInput = ::Struct.new(
      :name_prefix,
      :next_token,
      :limit,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute event_sources
    #   <p>The list of event sources.</p>
    #
    #   @return [Array<EventSource>]
    #
    # @!attribute next_token
    #   <p>A token you can use in a subsequent operation to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    ListEventSourcesOutput = ::Struct.new(
      :event_sources,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute event_source_name
    #   <p>The name of the partner event source to display account information about.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token returned by a previous call to this operation. Specifying this retrieves the
    #         next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>Specifying this limits the number of results returned by this operation. The operation
    #         also returns a NextToken which you can use in a subsequent operation to retrieve the next set
    #         of results.</p>
    #
    #   @return [Integer]
    #
    ListPartnerEventSourceAccountsInput = ::Struct.new(
      :event_source_name,
      :next_token,
      :limit,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute partner_event_source_accounts
    #   <p>The list of partner event sources returned by the operation.</p>
    #
    #   @return [Array<PartnerEventSourceAccount>]
    #
    # @!attribute next_token
    #   <p>A token you can use in a subsequent operation to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    ListPartnerEventSourceAccountsOutput = ::Struct.new(
      :partner_event_source_accounts,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name_prefix
    #   <p>If you specify this, the results are limited to only those partner event sources that
    #         start with the string you specify.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token returned by a previous call to this operation. Specifying this retrieves the
    #         next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>pecifying this limits the number of results returned by this operation. The operation also
    #         returns a NextToken which you can use in a subsequent operation to retrieve the next set of
    #         results.</p>
    #
    #   @return [Integer]
    #
    ListPartnerEventSourcesInput = ::Struct.new(
      :name_prefix,
      :next_token,
      :limit,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute partner_event_sources
    #   <p>The list of partner event sources returned by the operation.</p>
    #
    #   @return [Array<PartnerEventSource>]
    #
    # @!attribute next_token
    #   <p>A token you can use in a subsequent operation to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    ListPartnerEventSourcesOutput = ::Struct.new(
      :partner_event_sources,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name_prefix
    #   <p>A name prefix to filter the replays returned. Only replays with name that match the prefix
    #         are returned.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the replay.</p>
    #
    #   Enum, one of: ["STARTING", "RUNNING", "CANCELLING", "COMPLETED", "CANCELLED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute event_source_arn
    #   <p>The ARN of the archive from which the events are replayed.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token returned by a previous call to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The maximum number of replays to retrieve.</p>
    #
    #   @return [Integer]
    #
    ListReplaysInput = ::Struct.new(
      :name_prefix,
      :state,
      :event_source_arn,
      :next_token,
      :limit,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute replays
    #   <p>An array of <code>Replay</code> objects that contain information about the replay.</p>
    #
    #   @return [Array<Replay>]
    #
    # @!attribute next_token
    #   <p>The token returned by a previous call to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    ListReplaysOutput = ::Struct.new(
      :replays,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute target_arn
    #   <p>The Amazon Resource Name (ARN) of the target resource.</p>
    #
    #   @return [String]
    #
    # @!attribute event_bus_name
    #   <p>The name or ARN of the event bus to list rules for. If you omit this, the default event
    #         bus is used.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token returned by a previous call to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The maximum number of results to return.</p>
    #
    #   @return [Integer]
    #
    ListRuleNamesByTargetInput = ::Struct.new(
      :target_arn,
      :event_bus_name,
      :next_token,
      :limit,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute rule_names
    #   <p>The names of the rules that can invoke the given target.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>Indicates whether there are additional results to retrieve. If there are no more results,
    #         the value is null.</p>
    #
    #   @return [String]
    #
    ListRuleNamesByTargetOutput = ::Struct.new(
      :rule_names,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name_prefix
    #   <p>The prefix matching the rule name.</p>
    #
    #   @return [String]
    #
    # @!attribute event_bus_name
    #   <p>The name or ARN of the event bus to list the rules for. If you omit this, the default
    #         event bus is used.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token returned by a previous call to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The maximum number of results to return.</p>
    #
    #   @return [Integer]
    #
    ListRulesInput = ::Struct.new(
      :name_prefix,
      :event_bus_name,
      :next_token,
      :limit,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute rules
    #   <p>The rules that match the specified criteria.</p>
    #
    #   @return [Array<Rule>]
    #
    # @!attribute next_token
    #   <p>Indicates whether there are additional results to retrieve. If there are no more results,
    #         the value is null.</p>
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
    #   <p>The ARN of the EventBridge resource for which you want to view tags.</p>
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
    #   <p>The list of tag keys and values associated with the resource you specified</p>
    #
    #   @return [Array<Tag>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute rule
    #   <p>The name of the rule.</p>
    #
    #   @return [String]
    #
    # @!attribute event_bus_name
    #   <p>The name or ARN of the event bus associated with the rule. If you omit this, the default
    #         event bus is used.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token returned by a previous call to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The maximum number of results to return.</p>
    #
    #   @return [Integer]
    #
    ListTargetsByRuleInput = ::Struct.new(
      :rule,
      :event_bus_name,
      :next_token,
      :limit,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute targets
    #   <p>The targets assigned to the rule.</p>
    #
    #   @return [Array<Target>]
    #
    # @!attribute next_token
    #   <p>Indicates whether there are additional results to retrieve. If there are no more results,
    #         the value is null.</p>
    #
    #   @return [String]
    #
    ListTargetsByRuleOutput = ::Struct.new(
      :targets,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This rule was created by an Amazon Web Services service on behalf of your account. It is managed by that
    #       service. If you see this error in response to <code>DeleteRule</code> or
    #         <code>RemoveTargets</code>, you can use the <code>Force</code> parameter in those calls to
    #       delete the rule or remove targets from the rule. You cannot modify these managed rules by
    #       using <code>DisableRule</code>, <code>EnableRule</code>, <code>PutTargets</code>,
    #         <code>PutRule</code>, <code>TagResource</code>, or <code>UntagResource</code>. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ManagedRuleException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This structure specifies the network configuration for an ECS task.</p>
    #
    # @!attribute awsvpc_configuration
    #   <p>Use this structure to specify the VPC subnets and security groups for the task, and
    #         whether a public IP address is to be used. This structure is relevant only for ECS tasks that
    #         use the <code>awsvpc</code> network mode.</p>
    #
    #   @return [AwsVpcConfiguration]
    #
    NetworkConfiguration = ::Struct.new(
      :awsvpc_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The operation you are attempting is not available in this region.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    OperationDisabledException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A partner event source is created by an SaaS partner. If a customer creates a partner
    #       event bus that matches this event source, that Amazon Web Services account can receive events from the
    #       partner's applications or services.</p>
    #
    # @!attribute arn
    #   <p>The ARN of the partner event source.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the partner event source.</p>
    #
    #   @return [String]
    #
    PartnerEventSource = ::Struct.new(
      :arn,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The Amazon Web Services account that a partner event source has been offered to.</p>
    #
    # @!attribute account
    #   <p>The Amazon Web Services account ID that the partner event source was offered to.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The date and time the event source was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute expiration_time
    #   <p>The date and time that the event source will expire, if the Amazon Web Services account doesn't create a
    #         matching event bus for it.</p>
    #
    #   @return [Time]
    #
    # @!attribute state
    #   <p>The state of the event source. If it is ACTIVE, you have already created a matching event
    #         bus for this event source, and that event bus is active. If it is PENDING, either you haven't
    #         yet created a matching event bus, or that event bus is deactivated. If it is DELETED, you have
    #         created a matching event bus, but the event source has since been deleted.</p>
    #
    #   Enum, one of: ["PENDING", "ACTIVE", "DELETED"]
    #
    #   @return [String]
    #
    PartnerEventSourceAccount = ::Struct.new(
      :account,
      :creation_time,
      :expiration_time,
      :state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object representing a constraint on task placement. To learn more, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-constraints.html">Task Placement Constraints</a> in the Amazon Elastic Container Service Developer
    #       Guide.</p>
    #
    # @!attribute type
    #   <p>The type of constraint. Use distinctInstance to ensure that each task in a particular
    #         group is running on a different container instance. Use memberOf to restrict the selection to
    #         a group of valid candidates. </p>
    #
    #   Enum, one of: ["distinctInstance", "memberOf"]
    #
    #   @return [String]
    #
    # @!attribute expression
    #   <p>A cluster query language expression to apply to the constraint. You cannot specify an
    #         expression if the constraint type is <code>distinctInstance</code>. To learn more, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html">Cluster Query Language</a> in the Amazon Elastic Container Service Developer Guide.
    #       </p>
    #
    #   @return [String]
    #
    PlacementConstraint = ::Struct.new(
      :type,
      :expression,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PlacementConstraintType
    #
    module PlacementConstraintType
      # No documentation available.
      #
      DISTINCT_INSTANCE = "distinctInstance"

      # No documentation available.
      #
      MEMBER_OF = "memberOf"
    end

    # <p>The task placement strategy for a task or service. To learn more, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-strategies.html">Task Placement Strategies</a> in the Amazon Elastic Container Service Service Developer
    #       Guide.</p>
    #
    # @!attribute type
    #   <p>The type of placement strategy. The random placement strategy randomly places tasks on
    #         available candidates. The spread placement strategy spreads placement across available
    #         candidates evenly based on the field parameter. The binpack strategy places tasks on available
    #         candidates that have the least available amount of the resource that is specified with the
    #         field parameter. For example, if you binpack on memory, a task is placed on the instance with
    #         the least amount of remaining memory (but still enough to run the task). </p>
    #
    #   Enum, one of: ["random", "spread", "binpack"]
    #
    #   @return [String]
    #
    # @!attribute field
    #   <p>The field to apply the placement strategy against. For the spread placement strategy,
    #         valid values are instanceId (or host, which has the same effect), or any platform or custom
    #         attribute that is applied to a container instance, such as attribute:ecs.availability-zone.
    #         For the binpack placement strategy, valid values are cpu and memory. For the random placement
    #         strategy, this field is not used. </p>
    #
    #   @return [String]
    #
    PlacementStrategy = ::Struct.new(
      :type,
      :field,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PlacementStrategyType
    #
    module PlacementStrategyType
      # No documentation available.
      #
      RANDOM = "random"

      # No documentation available.
      #
      SPREAD = "spread"

      # No documentation available.
      #
      BINPACK = "binpack"
    end

    # <p>The event bus policy is too long. For more information, see the limits.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    PolicyLengthExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PropagateTags
    #
    module PropagateTags
      # No documentation available.
      #
      TASK_DEFINITION = "TASK_DEFINITION"
    end

    # @!attribute entries
    #   <p>The entry that defines an event in your system. You can specify several parameters for the
    #         entry such as the source and type of the event, resources associated with the event, and so
    #         on.</p>
    #
    #   @return [Array<PutEventsRequestEntry>]
    #
    PutEventsInput = ::Struct.new(
      :entries,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute failed_entry_count
    #   <p>The number of failed entries.</p>
    #
    #   @return [Integer]
    #
    # @!attribute entries
    #   <p>The successfully and unsuccessfully ingested events results. If the ingestion was
    #         successful, the entry has the event ID in it. Otherwise, you can use the error code and error
    #         message to identify the problem with the entry.</p>
    #
    #   @return [Array<PutEventsResultEntry>]
    #
    PutEventsOutput = ::Struct.new(
      :failed_entry_count,
      :entries,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.failed_entry_count ||= 0
      end

    end

    # <p>Represents an event to be submitted.</p>
    #
    # @!attribute time
    #   <p>The time stamp of the event, per <a href="https://www.rfc-editor.org/rfc/rfc3339.txt">RFC3339</a>. If no time stamp is provided, the time stamp of the <a href="https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_PutEvents.html">PutEvents</a> call is used.</p>
    #
    #   @return [Time]
    #
    # @!attribute source
    #   <p>The source of the event.</p>
    #
    #   @return [String]
    #
    # @!attribute resources
    #   <p>Amazon Web Services resources, identified by Amazon Resource Name (ARN), which the event primarily
    #         concerns. Any number, including zero, may be present.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute detail_type
    #   <p>Free-form string used to decide what fields to expect in the event detail.</p>
    #
    #   @return [String]
    #
    # @!attribute detail
    #   <p>A valid JSON string. There is no other schema imposed. The JSON string may contain fields
    #         and nested subobjects.</p>
    #
    #   @return [String]
    #
    # @!attribute event_bus_name
    #   <p>The name or ARN of the event bus to receive the event. Only the rules that are associated
    #         with this event bus are used to match the event. If you omit this, the default event bus is
    #         used.</p>
    #
    #   @return [String]
    #
    # @!attribute trace_header
    #   <p>An X-Ray trade header, which is an http header (X-Amzn-Trace-Id) that contains the
    #         trace-id associated with the event.</p>
    #            <p>To learn more about X-Ray trace headers, see <a href="https://docs.aws.amazon.com/xray/latest/devguide/xray-concepts.html xray-concepts-tracingheader">Tracing header</a> in the X-Ray Developer Guide.</p>
    #
    #   @return [String]
    #
    PutEventsRequestEntry = ::Struct.new(
      :time,
      :source,
      :resources,
      :detail_type,
      :detail,
      :event_bus_name,
      :trace_header,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents an event that failed to be submitted.</p>
    #
    # @!attribute event_id
    #   <p>The ID of the event.</p>
    #
    #   @return [String]
    #
    # @!attribute error_code
    #   <p>The error code that indicates why the event submission failed.</p>
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>The error message that explains why the event submission failed.</p>
    #
    #   @return [String]
    #
    PutEventsResultEntry = ::Struct.new(
      :event_id,
      :error_code,
      :error_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute entries
    #   <p>The list of events to write to the event bus.</p>
    #
    #   @return [Array<PutPartnerEventsRequestEntry>]
    #
    PutPartnerEventsInput = ::Struct.new(
      :entries,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute failed_entry_count
    #   <p>The number of events from this operation that could not be written to the partner event
    #         bus.</p>
    #
    #   @return [Integer]
    #
    # @!attribute entries
    #   <p>The list of events from this operation that were successfully written to the partner event
    #         bus.</p>
    #
    #   @return [Array<PutPartnerEventsResultEntry>]
    #
    PutPartnerEventsOutput = ::Struct.new(
      :failed_entry_count,
      :entries,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.failed_entry_count ||= 0
      end

    end

    # <p>The details about an event generated by an SaaS partner.</p>
    #
    # @!attribute time
    #   <p>The date and time of the event.</p>
    #
    #   @return [Time]
    #
    # @!attribute source
    #   <p>The event source that is generating the entry.</p>
    #
    #   @return [String]
    #
    # @!attribute resources
    #   <p>Amazon Web Services resources, identified by Amazon Resource Name (ARN), which the event primarily
    #         concerns. Any number, including zero, may be present.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute detail_type
    #   <p>A free-form string used to decide what fields to expect in the event detail.</p>
    #
    #   @return [String]
    #
    # @!attribute detail
    #   <p>A valid JSON string. There is no other schema imposed. The JSON string may contain fields
    #         and nested subobjects.</p>
    #
    #   @return [String]
    #
    PutPartnerEventsRequestEntry = ::Struct.new(
      :time,
      :source,
      :resources,
      :detail_type,
      :detail,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents an event that a partner tried to generate, but failed.</p>
    #
    # @!attribute event_id
    #   <p>The ID of the event.</p>
    #
    #   @return [String]
    #
    # @!attribute error_code
    #   <p>The error code that indicates why the event submission failed.</p>
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>The error message that explains why the event submission failed.</p>
    #
    #   @return [String]
    #
    PutPartnerEventsResultEntry = ::Struct.new(
      :event_id,
      :error_code,
      :error_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute event_bus_name
    #   <p>The name of the event bus associated with the rule. If you omit this, the default event
    #         bus is used.</p>
    #
    #   @return [String]
    #
    # @!attribute action
    #   <p>The action that you are enabling the other account to perform.</p>
    #
    #   @return [String]
    #
    # @!attribute principal
    #   <p>The 12-digit Amazon Web Services account ID that you are permitting to put events to your default event
    #         bus. Specify "*" to permit any account to put events to your default event bus.</p>
    #
    #            <p>If you specify "*" without specifying <code>Condition</code>, avoid creating rules that
    #         may match undesirable events. To create more secure rules, make sure that the event pattern
    #         for each rule contains an <code>account</code> field with a specific account ID from which to
    #         receive events. Rules with an account field do not match any events sent from other
    #         accounts.</p>
    #
    #   @return [String]
    #
    # @!attribute statement_id
    #   <p>An identifier string for the external account that you are granting permissions to. If you
    #         later want to revoke the permission for this external account, specify this
    #         <code>StatementId</code> when you run <a href="https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_RemovePermission.html">RemovePermission</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute condition
    #   <p>This parameter enables you to limit the permission to accounts that fulfill a certain
    #         condition, such as being a member of a certain Amazon Web Services organization. For more information about
    #         Amazon Web Services Organizations, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_introduction.html">What Is Amazon Web Services
    #           Organizations</a> in the <i>Amazon Web Services Organizations User Guide</i>.</p>
    #            <p>If you specify <code>Condition</code> with an Amazon Web Services organization ID, and specify "*" as the
    #         value for <code>Principal</code>, you grant permission to all the accounts in the named
    #         organization.</p>
    #
    #            <p>The <code>Condition</code> is a JSON string which must contain <code>Type</code>,
    #           <code>Key</code>, and <code>Value</code> fields.</p>
    #
    #   @return [Condition]
    #
    # @!attribute policy
    #   <p>A JSON string that describes the permission policy statement. You can include a
    #           <code>Policy</code> parameter in the request instead of using the <code>StatementId</code>,
    #           <code>Action</code>, <code>Principal</code>, or <code>Condition</code> parameters.</p>
    #
    #   @return [String]
    #
    PutPermissionInput = ::Struct.new(
      :event_bus_name,
      :action,
      :principal,
      :statement_id,
      :condition,
      :policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutPermissionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the rule that you are creating or updating.</p>
    #
    #   @return [String]
    #
    # @!attribute schedule_expression
    #   <p>The scheduling expression. For example, "cron(0 20 * * ? *)" or "rate(5 minutes)".</p>
    #
    #   @return [String]
    #
    # @!attribute event_pattern
    #   <p>The event pattern. For more information, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-and-event-patterns.html">Events and Event
    #           Patterns</a> in the <i>Amazon EventBridge User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>Indicates whether the rule is enabled or disabled.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the rule.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role associated with the rule.</p>
    #            <p>If you're setting an event bus in another account as the target and that account granted
    #         permission to your account through an organization instead of directly by the account ID, you
    #         must specify a <code>RoleArn</code> with proper permissions in the <code>Target</code>
    #         structure, instead of here in this parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The list of key-value pairs to associate with the rule.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute event_bus_name
    #   <p>The name or ARN of the event bus to associate with this rule. If you omit this, the
    #         default event bus is used.</p>
    #
    #   @return [String]
    #
    PutRuleInput = ::Struct.new(
      :name,
      :schedule_expression,
      :event_pattern,
      :state,
      :description,
      :role_arn,
      :tags,
      :event_bus_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute rule_arn
    #   <p>The Amazon Resource Name (ARN) of the rule.</p>
    #
    #   @return [String]
    #
    PutRuleOutput = ::Struct.new(
      :rule_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute rule
    #   <p>The name of the rule.</p>
    #
    #   @return [String]
    #
    # @!attribute event_bus_name
    #   <p>The name or ARN of the event bus associated with the rule. If you omit this, the default
    #         event bus is used.</p>
    #
    #   @return [String]
    #
    # @!attribute targets
    #   <p>The targets to update or add to the rule.</p>
    #
    #   @return [Array<Target>]
    #
    PutTargetsInput = ::Struct.new(
      :rule,
      :event_bus_name,
      :targets,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute failed_entry_count
    #   <p>The number of failed entries.</p>
    #
    #   @return [Integer]
    #
    # @!attribute failed_entries
    #   <p>The failed target entries.</p>
    #
    #   @return [Array<PutTargetsResultEntry>]
    #
    PutTargetsOutput = ::Struct.new(
      :failed_entry_count,
      :failed_entries,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.failed_entry_count ||= 0
      end

    end

    # <p>Represents a target that failed to be added to a rule.</p>
    #
    # @!attribute target_id
    #   <p>The ID of the target.</p>
    #
    #   @return [String]
    #
    # @!attribute error_code
    #   <p>The error code that indicates why the target addition failed. If the value is
    #           <code>ConcurrentModificationException</code>, too many requests were made at the same
    #         time.</p>
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>The error message that explains why the target addition failed.</p>
    #
    #   @return [String]
    #
    PutTargetsResultEntry = ::Struct.new(
      :target_id,
      :error_code,
      :error_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>These are custom parameters to be used when the target is a Amazon Redshift cluster to invoke the
    #       Amazon Redshift Data API ExecuteStatement based on EventBridge events.</p>
    #
    # @!attribute secret_manager_arn
    #   <p>The name or ARN of the secret that enables access to the database. Required when
    #         authenticating using Amazon Web Services Secrets Manager.</p>
    #
    #   @return [String]
    #
    # @!attribute database
    #   <p>The name of the database. Required when authenticating using temporary credentials.</p>
    #
    #   @return [String]
    #
    # @!attribute db_user
    #   <p>The database user name. Required when authenticating using temporary credentials.</p>
    #
    #   @return [String]
    #
    # @!attribute sql
    #   <p>The SQL statement text to run.</p>
    #
    #   @return [String]
    #
    # @!attribute statement_name
    #   <p>The name of the SQL statement. You can name the SQL statement when you create it to
    #         identify the query.</p>
    #
    #   @return [String]
    #
    # @!attribute with_event
    #   <p>Indicates whether to send an event back to EventBridge after the SQL statement
    #         runs.</p>
    #
    #   @return [Boolean]
    #
    RedshiftDataParameters = ::Struct.new(
      :secret_manager_arn,
      :database,
      :db_user,
      :sql,
      :statement_name,
      :with_event,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.with_event ||= false
      end

    end

    # @!attribute statement_id
    #   <p>The statement ID corresponding to the account that is no longer allowed to put events to
    #         the default event bus.</p>
    #
    #   @return [String]
    #
    # @!attribute remove_all_permissions
    #   <p>Specifies whether to remove all permissions.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute event_bus_name
    #   <p>The name of the event bus to revoke permissions for. If you omit this, the default event
    #         bus is used.</p>
    #
    #   @return [String]
    #
    RemovePermissionInput = ::Struct.new(
      :statement_id,
      :remove_all_permissions,
      :event_bus_name,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.remove_all_permissions ||= false
      end

    end

    RemovePermissionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute rule
    #   <p>The name of the rule.</p>
    #
    #   @return [String]
    #
    # @!attribute event_bus_name
    #   <p>The name or ARN of the event bus associated with the rule. If you omit this, the default
    #         event bus is used.</p>
    #
    #   @return [String]
    #
    # @!attribute ids
    #   <p>The IDs of the targets to remove from the rule.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute force
    #   <p>If this is a managed rule, created by an Amazon Web Services service on your behalf, you must specify
    #           <code>Force</code> as <code>True</code> to remove targets. This parameter is ignored for
    #         rules that are not managed rules. You can check whether a rule is a managed rule by using
    #           <code>DescribeRule</code> or <code>ListRules</code> and checking the <code>ManagedBy</code>
    #         field of the response.</p>
    #
    #   @return [Boolean]
    #
    RemoveTargetsInput = ::Struct.new(
      :rule,
      :event_bus_name,
      :ids,
      :force,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.force ||= false
      end

    end

    # @!attribute failed_entry_count
    #   <p>The number of failed entries.</p>
    #
    #   @return [Integer]
    #
    # @!attribute failed_entries
    #   <p>The failed target entries.</p>
    #
    #   @return [Array<RemoveTargetsResultEntry>]
    #
    RemoveTargetsOutput = ::Struct.new(
      :failed_entry_count,
      :failed_entries,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.failed_entry_count ||= 0
      end

    end

    # <p>Represents a target that failed to be removed from a rule.</p>
    #
    # @!attribute target_id
    #   <p>The ID of the target.</p>
    #
    #   @return [String]
    #
    # @!attribute error_code
    #   <p>The error code that indicates why the target removal failed. If the value is
    #           <code>ConcurrentModificationException</code>, too many requests were made at the same
    #         time.</p>
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>The error message that explains why the target removal failed.</p>
    #
    #   @return [String]
    #
    RemoveTargetsResultEntry = ::Struct.new(
      :target_id,
      :error_code,
      :error_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A <code>Replay</code> object that contains details about a replay.</p>
    #
    # @!attribute replay_name
    #   <p>The name of the replay.</p>
    #
    #   @return [String]
    #
    # @!attribute event_source_arn
    #   <p>The ARN of the archive to replay event from.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The current state of the replay.</p>
    #
    #   Enum, one of: ["STARTING", "RUNNING", "CANCELLING", "COMPLETED", "CANCELLED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute state_reason
    #   <p>A description of why the replay is in the current state.</p>
    #
    #   @return [String]
    #
    # @!attribute event_start_time
    #   <p>A time stamp for the time to start replaying events. This is determined by the time in the
    #         event as described in <a href="https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_PutEventsRequestEntry.html eventbridge-Type-PutEventsRequestEntry-Time">Time</a>.</p>
    #
    #   @return [Time]
    #
    # @!attribute event_end_time
    #   <p>A time stamp for the time to start replaying events. Any event with a creation time prior
    #         to the <code>EventEndTime</code> specified is replayed.</p>
    #
    #   @return [Time]
    #
    # @!attribute event_last_replayed_time
    #   <p>A time stamp for the time that the last event was replayed.</p>
    #
    #   @return [Time]
    #
    # @!attribute replay_start_time
    #   <p>A time stamp for the time that the replay started.</p>
    #
    #   @return [Time]
    #
    # @!attribute replay_end_time
    #   <p>A time stamp for the time that the replay completed.</p>
    #
    #   @return [Time]
    #
    Replay = ::Struct.new(
      :replay_name,
      :event_source_arn,
      :state,
      :state_reason,
      :event_start_time,
      :event_end_time,
      :event_last_replayed_time,
      :replay_start_time,
      :replay_end_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A <code>ReplayDestination</code> object that contains details about a replay.</p>
    #
    # @!attribute arn
    #   <p>The ARN of the event bus to replay event to. You can replay events only to the event bus
    #         specified to create the archive.</p>
    #
    #   @return [String]
    #
    # @!attribute filter_arns
    #   <p>A list of ARNs for rules to replay events to.</p>
    #
    #   @return [Array<String>]
    #
    ReplayDestination = ::Struct.new(
      :arn,
      :filter_arns,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ReplayState
    #
    module ReplayState
      # No documentation available.
      #
      STARTING = "STARTING"

      # No documentation available.
      #
      RUNNING = "RUNNING"

      # No documentation available.
      #
      CANCELLING = "CANCELLING"

      # No documentation available.
      #
      COMPLETED = "COMPLETED"

      # No documentation available.
      #
      CANCELLED = "CANCELLED"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # <p>The resource you are trying to create already exists.</p>
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

    # <p>An entity that you specified does not exist.</p>
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

    # <p>A <code>RetryPolicy</code> object that includes information about the retry policy
    #       settings.</p>
    #
    # @!attribute maximum_retry_attempts
    #   <p>The maximum number of retry attempts to make before the request fails. Retry attempts
    #         continue until either the maximum number of attempts is made or until the duration of the
    #           <code>MaximumEventAgeInSeconds</code> is met.</p>
    #
    #   @return [Integer]
    #
    # @!attribute maximum_event_age_in_seconds
    #   <p>The maximum amount of time, in seconds, to continue to make retry attempts.</p>
    #
    #   @return [Integer]
    #
    RetryPolicy = ::Struct.new(
      :maximum_retry_attempts,
      :maximum_event_age_in_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about a rule in Amazon EventBridge.</p>
    #
    # @!attribute name
    #   <p>The name of the rule.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the rule.</p>
    #
    #   @return [String]
    #
    # @!attribute event_pattern
    #   <p>The event pattern of the rule. For more information, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-and-event-patterns.html">Events and Event
    #           Patterns</a> in the <i>Amazon EventBridge User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the rule.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the rule.</p>
    #
    #   @return [String]
    #
    # @!attribute schedule_expression
    #   <p>The scheduling expression. For example, "cron(0 20 * * ? *)", "rate(5 minutes)". For more information, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-create-rule-schedule.html">Creating an Amazon EventBridge rule that runs on a schedule</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the role that is used for target invocation.</p>
    #            <p>If you're setting an event bus in another account as the target and that account granted
    #         permission to your account through an organization instead of directly by the account ID, you
    #         must specify a <code>RoleArn</code> with proper permissions in the <code>Target</code>
    #         structure, instead of here in this parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute managed_by
    #   <p>If the rule was created on behalf of your account by an Amazon Web Services service, this field displays
    #         the principal name of the service that created the rule.</p>
    #
    #   @return [String]
    #
    # @!attribute event_bus_name
    #   <p>The name or ARN of the event bus associated with the rule. If you omit this, the default
    #         event bus is used.</p>
    #
    #   @return [String]
    #
    Rule = ::Struct.new(
      :name,
      :arn,
      :event_pattern,
      :state,
      :description,
      :schedule_expression,
      :role_arn,
      :managed_by,
      :event_bus_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RuleState
    #
    module RuleState
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # <p>This parameter contains the criteria (either InstanceIds or a tag) used to specify which
    #       EC2 instances are to be sent the command. </p>
    #
    # @!attribute run_command_targets
    #   <p>Currently, we support including only one RunCommandTarget block, which specifies either an
    #         array of InstanceIds or a tag.</p>
    #
    #   @return [Array<RunCommandTarget>]
    #
    RunCommandParameters = ::Struct.new(
      :run_command_targets,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the EC2 instances that are to be sent the command, specified as
    #       key-value pairs. Each <code>RunCommandTarget</code> block can include only one key, but this
    #       key may specify multiple values.</p>
    #
    # @!attribute key
    #   <p>Can be either <code>tag:</code>
    #               <i>tag-key</i> or
    #         <code>InstanceIds</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>If <code>Key</code> is <code>tag:</code>
    #               <i>tag-key</i>, <code>Values</code>
    #         is a list of tag values. If <code>Key</code> is <code>InstanceIds</code>, <code>Values</code>
    #         is a list of Amazon EC2 instance IDs.</p>
    #
    #   @return [Array<String>]
    #
    RunCommandTarget = ::Struct.new(
      :key,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Name/Value pair of a parameter to start execution of a SageMaker Model Building
    #       Pipeline.</p>
    #
    # @!attribute name
    #   <p>Name of parameter to start execution of a SageMaker Model Building Pipeline.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>Value of parameter to start execution of a SageMaker Model Building Pipeline.</p>
    #
    #   @return [String]
    #
    SageMakerPipelineParameter = ::Struct.new(
      :name,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>These are custom parameters to use when the target is a SageMaker Model Building Pipeline
    #       that starts based on EventBridge events.</p>
    #
    # @!attribute pipeline_parameter_list
    #   <p>List of Parameter names and values for SageMaker Model Building Pipeline execution.</p>
    #
    #   @return [Array<SageMakerPipelineParameter>]
    #
    SageMakerPipelineParameters = ::Struct.new(
      :pipeline_parameter_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This structure includes the custom parameter to be used when the target is an SQS FIFO
    #       queue.</p>
    #
    # @!attribute message_group_id
    #   <p>The FIFO message group ID to use as the target.</p>
    #
    #   @return [String]
    #
    SqsParameters = ::Struct.new(
      :message_group_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute replay_name
    #   <p>The name of the replay to start.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description for the replay to start.</p>
    #
    #   @return [String]
    #
    # @!attribute event_source_arn
    #   <p>The ARN of the archive to replay events from.</p>
    #
    #   @return [String]
    #
    # @!attribute event_start_time
    #   <p>A time stamp for the time to start replaying events. Only events that occurred between the
    #           <code>EventStartTime</code> and <code>EventEndTime</code> are replayed.</p>
    #
    #   @return [Time]
    #
    # @!attribute event_end_time
    #   <p>A time stamp for the time to stop replaying events. Only events that occurred between the
    #           <code>EventStartTime</code> and <code>EventEndTime</code> are replayed.</p>
    #
    #   @return [Time]
    #
    # @!attribute destination
    #   <p>A <code>ReplayDestination</code> object that includes details about the destination for
    #         the replay.</p>
    #
    #   @return [ReplayDestination]
    #
    StartReplayInput = ::Struct.new(
      :replay_name,
      :description,
      :event_source_arn,
      :event_start_time,
      :event_end_time,
      :destination,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute replay_arn
    #   <p>The ARN of the replay.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the replay.</p>
    #
    #   Enum, one of: ["STARTING", "RUNNING", "CANCELLING", "COMPLETED", "CANCELLED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute state_reason
    #   <p>The reason that the replay is in the state.</p>
    #
    #   @return [String]
    #
    # @!attribute replay_start_time
    #   <p>The time at which the replay started.</p>
    #
    #   @return [Time]
    #
    StartReplayOutput = ::Struct.new(
      :replay_arn,
      :state,
      :state_reason,
      :replay_start_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A key-value pair associated with an Amazon Web Services resource. In EventBridge, rules and event buses
    #       support tagging.</p>
    #
    # @!attribute key
    #   <p>A string you can use to assign a value. The combination of tag keys and values can help
    #         you organize and categorize your resources.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value for the specified tag key.</p>
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
    #   <p>The ARN of the EventBridge resource that you're adding tags to.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The list of key-value pairs to associate with the resource.</p>
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

    # <p>Targets are the resources to be invoked when a rule is triggered. For a complete list of
    #       services and resources that can be set as a target, see <a href="https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_PutTargets.html">PutTargets</a>.</p>
    #
    #          <p>If you are setting the event bus of another account as the target, and that account
    #       granted permission to your account through an organization instead of directly by the account
    #       ID, then you must specify a <code>RoleArn</code> with proper permissions in the
    #         <code>Target</code> structure. For more information, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-cross-account-event-delivery.html">Sending and
    #           Receiving Events Between Amazon Web Services Accounts</a> in the <i>Amazon EventBridge User
    #         Guide</i>.</p>
    #
    # @!attribute id
    #   <p>The ID of the target. We recommend using a memorable and unique string.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the target.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role to be used for this target when the rule is
    #         triggered. If one rule triggers multiple targets, you can use a different IAM role for each
    #         target.</p>
    #
    #   @return [String]
    #
    # @!attribute input
    #   <p>Valid JSON text passed to the target. In this case, nothing from the event itself is
    #         passed to the target. For more information, see <a href="http://www.rfc-editor.org/rfc/rfc7159.txt">The JavaScript Object Notation (JSON) Data
    #           Interchange Format</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute input_path
    #   <p>The value of the JSONPath that is used for extracting part of the matched event when
    #         passing it to the target. You must use JSON dot notation, not bracket notation. For more
    #         information about JSON paths, see <a href="http://goessner.net/articles/JsonPath/">JSONPath</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute input_transformer
    #   <p>Settings to enable you to provide custom input to a target based on certain event data.
    #         You can extract one or more key-value pairs from the event and then use that data to send
    #         customized input to the target.</p>
    #
    #   @return [InputTransformer]
    #
    # @!attribute kinesis_parameters
    #   <p>The custom parameter you can use to control the shard assignment, when the target is a
    #         Kinesis data stream. If you do not include this parameter, the default is to use the
    #           <code>eventId</code> as the partition key.</p>
    #
    #   @return [KinesisParameters]
    #
    # @!attribute run_command_parameters
    #   <p>Parameters used when you are using the rule to invoke Amazon EC2 Run Command.</p>
    #
    #   @return [RunCommandParameters]
    #
    # @!attribute ecs_parameters
    #   <p>Contains the Amazon ECS task definition and task count to be used, if the event target is
    #         an Amazon ECS task. For more information about Amazon ECS tasks, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_defintions.html">Task
    #           Definitions </a> in the <i>Amazon EC2 Container Service Developer
    #           Guide</i>.</p>
    #
    #   @return [EcsParameters]
    #
    # @!attribute batch_parameters
    #   <p>If the event target is an Batch job, this contains the job definition, job name, and
    #         other parameters. For more information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/jobs.html">Jobs</a> in the <i>Batch User
    #           Guide</i>.</p>
    #
    #   @return [BatchParameters]
    #
    # @!attribute sqs_parameters
    #   <p>Contains the message group ID to use when the target is a FIFO queue.</p>
    #            <p>If you specify an SQS FIFO queue as a target, the queue must have content-based
    #         deduplication enabled.</p>
    #
    #   @return [SqsParameters]
    #
    # @!attribute http_parameters
    #   <p>Contains the HTTP parameters to use when the target is a API Gateway REST endpoint or
    #         EventBridge ApiDestination.</p>
    #            <p>If you specify an API Gateway REST API or EventBridge ApiDestination as a target, you can
    #         use this parameter to specify headers, path parameters, and query string keys/values as part
    #         of your target invoking request. If you're using ApiDestinations, the corresponding Connection
    #         can also have these values configured. In case of any conflicting keys, values from the
    #         Connection take precedence.</p>
    #
    #   @return [HttpParameters]
    #
    # @!attribute redshift_data_parameters
    #   <p>Contains the Amazon Redshift Data API parameters to use when the target is a Amazon Redshift
    #         cluster.</p>
    #            <p>If you specify a Amazon Redshift Cluster as a Target, you can use this to specify parameters to
    #         invoke the Amazon Redshift Data API ExecuteStatement based on EventBridge events.</p>
    #
    #   @return [RedshiftDataParameters]
    #
    # @!attribute sage_maker_pipeline_parameters
    #   <p>Contains the SageMaker Model Building Pipeline parameters to start execution of a
    #         SageMaker Model Building Pipeline.</p>
    #            <p>If you specify a SageMaker Model Building Pipeline as a target, you can use this to
    #         specify parameters to start a pipeline execution based on EventBridge events.</p>
    #
    #   @return [SageMakerPipelineParameters]
    #
    # @!attribute dead_letter_config
    #   <p>The <code>DeadLetterConfig</code> that defines the target queue to send dead-letter queue
    #         events to.</p>
    #
    #   @return [DeadLetterConfig]
    #
    # @!attribute retry_policy
    #   <p>The <code>RetryPolicy</code> object that contains the retry policy configuration to use
    #         for the dead-letter queue.</p>
    #
    #   @return [RetryPolicy]
    #
    Target = ::Struct.new(
      :id,
      :arn,
      :role_arn,
      :input,
      :input_path,
      :input_transformer,
      :kinesis_parameters,
      :run_command_parameters,
      :ecs_parameters,
      :batch_parameters,
      :sqs_parameters,
      :http_parameters,
      :redshift_data_parameters,
      :sage_maker_pipeline_parameters,
      :dead_letter_config,
      :retry_policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute event_pattern
    #   <p>The event pattern. For more information, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-and-event-patterns.html">Events and Event
    #           Patterns</a> in the <i>Amazon EventBridge User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute event
    #   <p>The event, in JSON format, to test against the event pattern. The JSON must follow the
    #         format specified in <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/aws-events.html">Amazon Web Services Events</a>, and the following
    #         fields are mandatory:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>id</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>account</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>source</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>time</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>region</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>resources</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>detail-type</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    TestEventPatternInput = ::Struct.new(
      :event_pattern,
      :event,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute result
    #   <p>Indicates whether the event matches the event pattern.</p>
    #
    #   @return [Boolean]
    #
    TestEventPatternOutput = ::Struct.new(
      :result,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.result ||= false
      end

    end

    # @!attribute resource_arn
    #   <p>The ARN of the EventBridge resource from which you are removing tags.</p>
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

    # @!attribute name
    #   <p>The name of the API destination to update.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The name of the API destination to update.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_arn
    #   <p>The ARN of the connection to use for the API destination.</p>
    #
    #   @return [String]
    #
    # @!attribute invocation_endpoint
    #   <p>The URL to the endpoint to use for the API destination.</p>
    #
    #   @return [String]
    #
    # @!attribute http_method
    #   <p>The method to use for the API destination.</p>
    #
    #   Enum, one of: ["POST", "GET", "HEAD", "OPTIONS", "PUT", "PATCH", "DELETE"]
    #
    #   @return [String]
    #
    # @!attribute invocation_rate_limit_per_second
    #   <p>The maximum number of invocations per second to send to the API destination.</p>
    #
    #   @return [Integer]
    #
    UpdateApiDestinationInput = ::Struct.new(
      :name,
      :description,
      :connection_arn,
      :invocation_endpoint,
      :http_method,
      :invocation_rate_limit_per_second,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute api_destination_arn
    #   <p>The ARN of the API destination that was updated.</p>
    #
    #   @return [String]
    #
    # @!attribute api_destination_state
    #   <p>The state of the API destination that was updated.</p>
    #
    #   Enum, one of: ["ACTIVE", "INACTIVE"]
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>A time stamp for the time that the API destination was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modified_time
    #   <p>A time stamp for the time that the API destination was last modified.</p>
    #
    #   @return [Time]
    #
    UpdateApiDestinationOutput = ::Struct.new(
      :api_destination_arn,
      :api_destination_state,
      :creation_time,
      :last_modified_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute archive_name
    #   <p>The name of the archive to update.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description for the archive.</p>
    #
    #   @return [String]
    #
    # @!attribute event_pattern
    #   <p>The event pattern to use to filter events sent to the archive.</p>
    #
    #   @return [String]
    #
    # @!attribute retention_days
    #   <p>The number of days to retain events in the archive.</p>
    #
    #   @return [Integer]
    #
    UpdateArchiveInput = ::Struct.new(
      :archive_name,
      :description,
      :event_pattern,
      :retention_days,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute archive_arn
    #   <p>The ARN of the archive.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the archive.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED", "CREATING", "UPDATING", "CREATE_FAILED", "UPDATE_FAILED"]
    #
    #   @return [String]
    #
    # @!attribute state_reason
    #   <p>The reason that the archive is in the current state.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The time at which the archive was updated.</p>
    #
    #   @return [Time]
    #
    UpdateArchiveOutput = ::Struct.new(
      :archive_arn,
      :state,
      :state_reason,
      :creation_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the API key authorization parameters to use to update the connection.</p>
    #
    # @!attribute api_key_name
    #   <p>The name of the API key to use for authorization.</p>
    #
    #   @return [String]
    #
    # @!attribute api_key_value
    #   <p>The value associated with teh API key to use for authorization.</p>
    #
    #   @return [String]
    #
    UpdateConnectionApiKeyAuthRequestParameters = ::Struct.new(
      :api_key_name,
      :api_key_value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the additional parameters to use for the connection.</p>
    #
    # @!attribute basic_auth_parameters
    #   <p>A <code>UpdateConnectionBasicAuthRequestParameters</code> object that contains the
    #         authorization parameters for Basic authorization.</p>
    #
    #   @return [UpdateConnectionBasicAuthRequestParameters]
    #
    # @!attribute o_auth_parameters
    #   <p>A <code>UpdateConnectionOAuthRequestParameters</code> object that contains the
    #         authorization parameters for OAuth authorization.</p>
    #
    #   @return [UpdateConnectionOAuthRequestParameters]
    #
    # @!attribute api_key_auth_parameters
    #   <p>A <code>UpdateConnectionApiKeyAuthRequestParameters</code> object that contains the
    #         authorization parameters for API key authorization.</p>
    #
    #   @return [UpdateConnectionApiKeyAuthRequestParameters]
    #
    # @!attribute invocation_http_parameters
    #   <p>A <code>ConnectionHttpParameters</code> object that contains the additional parameters to
    #         use for the connection.</p>
    #
    #   @return [ConnectionHttpParameters]
    #
    UpdateConnectionAuthRequestParameters = ::Struct.new(
      :basic_auth_parameters,
      :o_auth_parameters,
      :api_key_auth_parameters,
      :invocation_http_parameters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the Basic authorization parameters for the connection.</p>
    #
    # @!attribute username
    #   <p>The user name to use for Basic authorization.</p>
    #
    #   @return [String]
    #
    # @!attribute password
    #   <p>The password associated with the user name to use for Basic authorization.</p>
    #
    #   @return [String]
    #
    UpdateConnectionBasicAuthRequestParameters = ::Struct.new(
      :username,
      :password,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the connection to update.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description for the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute authorization_type
    #   <p>The type of authorization to use for the connection.</p>
    #
    #   Enum, one of: ["BASIC", "OAUTH_CLIENT_CREDENTIALS", "API_KEY"]
    #
    #   @return [String]
    #
    # @!attribute auth_parameters
    #   <p>The authorization parameters to use for the connection.</p>
    #
    #   @return [UpdateConnectionAuthRequestParameters]
    #
    UpdateConnectionInput = ::Struct.new(
      :name,
      :description,
      :authorization_type,
      :auth_parameters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the OAuth authorization parameters to use for the connection.</p>
    #
    # @!attribute client_id
    #   <p>The client ID to use for OAuth authorization.</p>
    #
    #   @return [String]
    #
    # @!attribute client_secret
    #   <p>The client secret assciated with the client ID to use for OAuth authorization.</p>
    #
    #   @return [String]
    #
    UpdateConnectionOAuthClientRequestParameters = ::Struct.new(
      :client_id,
      :client_secret,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the OAuth request parameters to use for the connection.</p>
    #
    # @!attribute client_parameters
    #   <p>A <code>UpdateConnectionOAuthClientRequestParameters</code> object that contains the
    #         client parameters to use for the connection when OAuth is specified as the authorization
    #         type.</p>
    #
    #   @return [UpdateConnectionOAuthClientRequestParameters]
    #
    # @!attribute authorization_endpoint
    #   <p>The URL to the authorization endpoint when OAuth is specified as the authorization
    #         type.</p>
    #
    #   @return [String]
    #
    # @!attribute http_method
    #   <p>The method used to connect to the HTTP endpoint.</p>
    #
    #   Enum, one of: ["GET", "POST", "PUT"]
    #
    #   @return [String]
    #
    # @!attribute o_auth_http_parameters
    #   <p>The additional HTTP parameters used for the OAuth authorization request.</p>
    #
    #   @return [ConnectionHttpParameters]
    #
    UpdateConnectionOAuthRequestParameters = ::Struct.new(
      :client_parameters,
      :authorization_endpoint,
      :http_method,
      :o_auth_http_parameters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connection_arn
    #   <p>The ARN of the connection that was updated.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_state
    #   <p>The state of the connection that was updated.</p>
    #
    #   Enum, one of: ["CREATING", "UPDATING", "DELETING", "AUTHORIZED", "DEAUTHORIZED", "AUTHORIZING", "DEAUTHORIZING"]
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>A time stamp for the time that the connection was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modified_time
    #   <p>A time stamp for the time that the connection was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_authorized_time
    #   <p>A time stamp for the time that the connection was last authorized.</p>
    #
    #   @return [Time]
    #
    UpdateConnectionOutput = ::Struct.new(
      :connection_arn,
      :connection_state,
      :creation_time,
      :last_modified_time,
      :last_authorized_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
