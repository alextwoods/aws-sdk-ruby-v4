# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::RUM
  module Types

    # <p>You don't have sufficient permissions to perform this action.</p>
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

    # <p>A RUM app monitor collects telemetry data from your application and sends that
    #          data to RUM. The data includes performance and reliability information such as page load time, client-side errors,
    #          and user behavior.</p>
    #
    # @!attribute name
    #   <p>The name of the app monitor.</p>
    #
    #   @return [String]
    #
    # @!attribute domain
    #   <p>The top-level internet domain name for which your application has administrative authority.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The unique ID of this app monitor.</p>
    #
    #   @return [String]
    #
    # @!attribute created
    #   <p>The date and time that this app monitor was created.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified
    #   <p>The date and time of the most recent changes to this app monitor's configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The list of tag keys and values associated with this app monitor.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute state
    #   <p>The current state of the app monitor.</p>
    #
    #   Enum, one of: ["CREATED", "DELETING", "ACTIVE"]
    #
    #   @return [String]
    #
    # @!attribute app_monitor_configuration
    #   <p>A structure that contains much of the configuration data for the app monitor.</p>
    #
    #   @return [AppMonitorConfiguration]
    #
    # @!attribute data_storage
    #   <p>A structure that contains information about whether this app monitor stores a copy of
    #            the telemetry data that RUM collects using CloudWatch Logs.</p>
    #
    #   @return [DataStorage]
    #
    AppMonitor = ::Struct.new(
      :name,
      :domain,
      :id,
      :created,
      :last_modified,
      :tags,
      :state,
      :app_monitor_configuration,
      :data_storage,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This structure contains much of the configuration data for the app monitor.</p>
    #
    # @!attribute identity_pool_id
    #   <p>The ID of the Amazon Cognito identity pool
    #            that is used to authorize the sending of data to RUM.</p>
    #
    #   @return [String]
    #
    # @!attribute excluded_pages
    #   <p>A list of URLs in your website or application to exclude from RUM data collection.</p>
    #            <p>You can't include both <code>ExcludedPages</code> and <code>IncludedPages</code> in the same operation.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute included_pages
    #   <p>If this app monitor is to collect data from only certain pages in your application, this structure lists those pages. </p>
    #
    #            <p>You can't include both <code>ExcludedPages</code> and <code>IncludedPages</code> in the same operation.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute favorite_pages
    #   <p>A list of pages in the CloudWatch RUM console that are to be displayed with a "favorite" icon.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute session_sample_rate
    #   <p>Specifies the percentage of user sessions to use for RUM data collection. Choosing a higher percentage gives you
    #         more data but also incurs more costs.</p>
    #            <p>The number you specify is the percentage of user sessions that will be used.</p>
    #            <p>If you omit this parameter, the default of 10 is used.</p>
    #
    #   @return [Float]
    #
    # @!attribute guest_role_arn
    #   <p>The ARN of the guest IAM role that is attached to the Amazon Cognito identity pool
    #         that is used to authorize the sending of data to RUM.</p>
    #
    #   @return [String]
    #
    # @!attribute allow_cookies
    #   <p>If you set this to <code>true</code>, the RUM web client sets two cookies, a session
    #            cookie and a user cookie. The cookies allow the RUM web client to collect data relating to
    #            the number of users an application has and the behavior of the application across a
    #            sequence of events. Cookies are stored in the top-level domain of the current page.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute telemetries
    #   <p>An array that lists the types of telemetry data that this app monitor is to collect.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>errors</code> indicates that RUM collects data about unhandled JavaScript errors raised
    #            by your application.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>performance</code> indicates that RUM collects performance data about how your application
    #               and its resources are loaded and rendered. This includes Core Web Vitals.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>http</code> indicates that RUM collects data about HTTP errors thrown by your application.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<String>]
    #
    # @!attribute enable_x_ray
    #   <p>If you set this to <code>true</code>, RUM enables X-Ray tracing for
    #            the user sessions that RUM samples. RUM adds an X-Ray trace header to allowed
    #            HTTP requests. It also records an X-Ray segment for allowed HTTP requests.
    #            You can see traces and segments from these user sessions in the X-Ray console
    #            and the CloudWatch ServiceLens console. For more information, see <a href="https://docs.aws.amazon.com/xray/latest/devguide/aws-xray.html">What is X-Ray?</a>
    #            </p>
    #
    #   @return [Boolean]
    #
    AppMonitorConfiguration = ::Struct.new(
      :identity_pool_id,
      :excluded_pages,
      :included_pages,
      :favorite_pages,
      :session_sample_rate,
      :guest_role_arn,
      :allow_cookies,
      :telemetries,
      :enable_x_ray,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.session_sample_rate ||= 0
      end

    end

    # <p>A structure that contains information about the RUM app monitor.</p>
    #
    # @!attribute name
    #   <p>The name of the app monitor.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The unique ID of the app monitor.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version of the app monitor.</p>
    #
    #   @return [String]
    #
    AppMonitorDetails = ::Struct.new(
      :name,
      :id,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure that includes some data about app monitors and their settings.</p>
    #
    # @!attribute name
    #   <p>The name of this app monitor.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The unique ID of this app monitor.</p>
    #
    #   @return [String]
    #
    # @!attribute created
    #   <p>The date and time that the app monitor was created.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified
    #   <p>The date and time of the most recent changes to this app monitor's configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The current state of this app monitor.</p>
    #
    #   Enum, one of: ["CREATED", "DELETING", "ACTIVE"]
    #
    #   @return [String]
    #
    AppMonitorSummary = ::Struct.new(
      :name,
      :id,
      :created,
      :last_modified,
      :state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This operation attempted to create a resource that already exists.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_name
    #   <p>The name of the resource that is associated with the error.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The type of the resource that is associated with the error.</p>
    #
    #   @return [String]
    #
    ConflictException = ::Struct.new(
      :message,
      :resource_name,
      :resource_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>A name for the app monitor.</p>
    #
    #   @return [String]
    #
    # @!attribute domain
    #   <p>The top-level internet domain name for which your application has administrative authority.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Assigns one or more tags (key-value pairs) to the app monitor.</p>
    #            <p>Tags can help you organize and categorize your resources. You can also use them to scope user
    #            permissions by granting a user
    #            permission to access or change only resources with certain tag values.</p>
    #            <p>Tags don't have any semantic meaning to Amazon Web Services and are interpreted strictly as strings of characters.</p>
    #
    #            <p>You can associate as many as 50 tags with an app monitor.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services resources</a>.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute app_monitor_configuration
    #   <p>A structure that contains much of the configuration data for the app monitor. If you are using
    #            Amazon Cognito for authorization, you must include this structure in your request, and it must include the ID of the
    #            Amazon Cognito identity pool to use for authorization. If you don't include <code>AppMonitorConfiguration</code>, you must set up your own
    #            authorization method. For more information, see
    #            <a href="https://docs.aws.amazon.com/monitoring/CloudWatch-RUM-get-started-authorization.html">Authorize your application
    #               to send data to Amazon Web Services</a>.</p>
    #            <p>If you omit this argument, the sample rate used for RUM is set to 10% of the user sessions.</p>
    #
    #   @return [AppMonitorConfiguration]
    #
    # @!attribute cw_log_enabled
    #   <p>Data collected by RUM is kept by RUM for 30 days and then deleted. This parameter specifies whether RUM
    #            sends a copy of this telemetry data to Amazon CloudWatch Logs
    #            in your account. This enables you to keep the telemetry data for more than 30 days, but it does incur
    #            Amazon CloudWatch Logs charges.</p>
    #            <p>If you omit this parameter, the default is <code>false</code>.</p>
    #
    #   @return [Boolean]
    #
    CreateAppMonitorInput = ::Struct.new(
      :name,
      :domain,
      :tags,
      :app_monitor_configuration,
      :cw_log_enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The unique ID of the new app monitor.</p>
    #
    #   @return [String]
    #
    CreateAppMonitorOutput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure that contains the information about whether the app monitor stores copies of the data
    #       that RUM collects in CloudWatch Logs. If it does, this structure also contains the name of the log group.</p>
    #
    # @!attribute cw_log_enabled
    #   <p>Indicated whether the app monitor stores copies of the data
    #            that RUM collects in CloudWatch Logs.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute cw_log_group
    #   <p>The name of the log group where the copies are stored.</p>
    #
    #   @return [String]
    #
    CwLog = ::Struct.new(
      :cw_log_enabled,
      :cw_log_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure that contains information about whether this app monitor stores a copy of
    #          the telemetry data that RUM collects using CloudWatch Logs.</p>
    #
    # @!attribute cw_log
    #   <p>A structure that contains the information about whether the app monitor stores copies of the data
    #            that RUM collects in CloudWatch Logs. If it does, this structure also contains the name of the log group.</p>
    #
    #   @return [CwLog]
    #
    DataStorage = ::Struct.new(
      :cw_log,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the app monitor to delete.</p>
    #
    #   @return [String]
    #
    DeleteAppMonitorInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteAppMonitorOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the app monitor that collected the data that you want to retrieve.</p>
    #
    #   @return [String]
    #
    # @!attribute time_range
    #   <p>A structure that defines the time range that you want to retrieve results from.</p>
    #
    #   @return [TimeRange]
    #
    # @!attribute filters
    #   <p>An array of structures that you can use to filter the results to those that match one or
    #            more sets of key-value pairs that you specify.</p>
    #
    #   @return [Array<QueryFilter>]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in one operation. </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>Use the token returned by the previous operation to request the next page of results.</p>
    #
    #   @return [String]
    #
    GetAppMonitorDataInput = ::Struct.new(
      :name,
      :time_range,
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

    # @!attribute events
    #   <p>The events that RUM collected that match your request.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>A token that you can use in a subsequent operation to retrieve the next set of
    #            results.</p>
    #
    #   @return [String]
    #
    GetAppMonitorDataOutput = ::Struct.new(
      :events,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The app monitor to retrieve information for.</p>
    #
    #   @return [String]
    #
    GetAppMonitorInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_monitor
    #   <p>A structure containing all the configuration information for the app monitor.</p>
    #
    #   @return [AppMonitor]
    #
    GetAppMonitorOutput = ::Struct.new(
      :app_monitor,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Internal service exception.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute retry_after_seconds
    #   <p>The value of a parameter in the request caused an error.</p>
    #
    #   @return [Integer]
    #
    InternalServerException = ::Struct.new(
      :message,
      :retry_after_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return in one operation. </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>Use the token returned by the previous operation to request the next page of results.</p>
    #
    #   @return [String]
    #
    ListAppMonitorsInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>A token that you can use in a subsequent operation to retrieve the next set of
    #            results.</p>
    #
    #   @return [String]
    #
    # @!attribute app_monitor_summaries
    #   <p>An array of structures that contain information about the returned app monitors.</p>
    #
    #   @return [Array<AppMonitorSummary>]
    #
    ListAppMonitorsOutput = ::Struct.new(
      :next_token,
      :app_monitor_summaries,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource that you want to see the tags of.</p>
    #
    #   @return [String]
    #
    ListTagsForResourceInput = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource that you are viewing.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The list of tag keys and values associated with the resource you specified.</p>
    #
    #   @return [Hash<String, String>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of the app monitor that is sending this data.</p>
    #
    #   @return [String]
    #
    # @!attribute batch_id
    #   <p>A unique identifier for this batch of RUM event data.</p>
    #
    #   @return [String]
    #
    # @!attribute app_monitor_details
    #   <p>A structure that contains information about the app monitor that collected this telemetry information.</p>
    #
    #   @return [AppMonitorDetails]
    #
    # @!attribute user_details
    #   <p>A structure that contains information about the user session that this batch of events was collected from.</p>
    #
    #   @return [UserDetails]
    #
    # @!attribute rum_events
    #   <p>An array of structures that contain the telemetry event data.</p>
    #
    #   @return [Array<RumEvent>]
    #
    PutRumEventsInput = ::Struct.new(
      :id,
      :batch_id,
      :app_monitor_details,
      :user_details,
      :rum_events,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutRumEventsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure that defines a key and values that you can use to filter the results. The
    #          only performance events that are returned are those that have values matching the ones that
    #          you specify in one of your <code>QueryFilter</code> structures.</p>
    #          <p>For example, you could specify <code>Browser</code> as the <code>Name</code>
    #       and specify <code>Chrome,Firefox</code> as the <code>Values</code> to return
    #       events generated only from those browsers.</p>
    #          <p>Specifying <code>Invert</code> as the <code>Name</code>
    #          works as a "not equal to" filter. For example, specify <code>Invert</code> as the <code>Name</code>
    #          and specify <code>Chrome</code> as the value to return all events except events from
    #          user sessions with the Chrome browser.</p>
    #
    # @!attribute name
    #   <p>The name of a key to search for.
    #         The filter returns only the events that match the <code>Name</code>
    #            and <code>Values</code> that you specify.
    #         </p>
    #            <p>Valid values for <code>Name</code> are <code>Browser</code> | <code>Device</code> | <code>Country</code> |
    #            <code>Page</code> | <code>OS</code> | <code>EventType</code> | <code>Invert</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>The values of the <code>Name</code> that are to be be included in the returned results.</p>
    #
    #   @return [Array<String>]
    #
    QueryFilter = ::Struct.new(
      :name,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Resource not found.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_name
    #   <p>The name of the resource that is associated with the error.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The type of the resource that is associated with the error.</p>
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :message,
      :resource_name,
      :resource_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure that contains the information for one performance event that RUM collects from a user session with your
    #       application.</p>
    #
    # @!attribute id
    #   <p>A unique ID for this event.</p>
    #
    #   @return [String]
    #
    # @!attribute timestamp
    #   <p>The exact time that this event occurred.</p>
    #
    #   @return [Time]
    #
    # @!attribute type
    #   <p>The JSON schema that denotes the type of event this is, such as a page load or a new session.</p>
    #
    #   @return [String]
    #
    # @!attribute metadata
    #   <p>Metadata about this event, which contains a JSON serialization of the identity of the user for
    #            this session. The user information comes from information such as the HTTP user-agent request header
    #            and document interface.</p>
    #
    #   @return [String]
    #
    # @!attribute details
    #   <p>A string containing details about the event.</p>
    #
    #   @return [String]
    #
    RumEvent = ::Struct.new(
      :id,
      :timestamp,
      :type,
      :metadata,
      :details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This request exceeds a service quota.</p>
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

    # Includes enum constants for StateEnum
    #
    module StateEnum
      # No documentation available.
      #
      CREATED = "CREATED"

      # No documentation available.
      #
      DELETING = "DELETING"

      # No documentation available.
      #
      ACTIVE = "ACTIVE"
    end

    # @!attribute resource_arn
    #   <p>The ARN of the CloudWatch RUM resource that you're adding tags to.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The list of key-value pairs to associate with the resource.</p>
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

    # Includes enum constants for Telemetry
    #
    module Telemetry
      # Includes JS error event plugin
      #
      ERRORS = "errors"

      # Includes navigation, paint, resource and web vital event plugins
      #
      PERFORMANCE = "performance"

      # Includes X-Ray Xhr and X-Ray Fetch plugin
      #
      HTTP = "http"
    end

    # <p>The request was throttled because of quota limits.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute service_code
    #   <p>The ID of the service that is associated with the error.</p>
    #
    #   @return [String]
    #
    # @!attribute quota_code
    #   <p>The ID of the service quota that was exceeded.</p>
    #
    #   @return [String]
    #
    # @!attribute retry_after_seconds
    #   <p>The value of a parameter in the request caused an error.</p>
    #
    #   @return [Integer]
    #
    ThrottlingException = ::Struct.new(
      :message,
      :service_code,
      :quota_code,
      :retry_after_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure that defines the time range that you want to retrieve results from.</p>
    #
    # @!attribute after
    #   <p>The beginning of the time range to retrieve performance events from.</p>
    #
    #   @return [Integer]
    #
    # @!attribute before
    #   <p>The end of the time range to retrieve performance events from. If you omit this, the time
    #         range extends to the time that this operation is performed.</p>
    #
    #   @return [Integer]
    #
    TimeRange = ::Struct.new(
      :after,
      :before,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.after ||= 0
        self.before ||= 0
      end

    end

    # @!attribute resource_arn
    #   <p>The ARN of the CloudWatch RUM resource that you're removing tags from.</p>
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
    #   <p>The name of the app monitor to update.</p>
    #
    #   @return [String]
    #
    # @!attribute domain
    #   <p>The top-level internet domain name for which your application has administrative authority.</p>
    #
    #   @return [String]
    #
    # @!attribute app_monitor_configuration
    #   <p>A structure that contains much of the configuration data for the app monitor. If you are using
    #            Amazon Cognito for authorization, you must include this structure in your request, and it must include the ID of the
    #            Amazon Cognito identity pool to use for authorization. If you don't include <code>AppMonitorConfiguration</code>, you must set up your own
    #            authorization method. For more information, see
    #            <a href="https://docs.aws.amazon.com/monitoring/CloudWatch-RUM-get-started-authorization.html">Authorize your application
    #               to send data to Amazon Web Services</a>.</p>
    #
    #   @return [AppMonitorConfiguration]
    #
    # @!attribute cw_log_enabled
    #   <p>Data collected by RUM is kept by RUM for 30 days and then deleted. This parameter specifies whether RUM
    #            sends a copy of this telemetry data to Amazon CloudWatch Logs
    #            in your account. This enables you to keep the telemetry data for more than 30 days, but it does incur
    #            Amazon CloudWatch Logs charges.</p>
    #
    #   @return [Boolean]
    #
    UpdateAppMonitorInput = ::Struct.new(
      :name,
      :domain,
      :app_monitor_configuration,
      :cw_log_enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateAppMonitorOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure that contains information about the user session that this batch of events was collected from.</p>
    #
    # @!attribute user_id
    #   <p>The ID of the user for this user session. This ID is generated by RUM and does not include any
    #         personally identifiable information about the user.</p>
    #
    #   @return [String]
    #
    # @!attribute session_id
    #   <p>The session ID that the performance events are from.</p>
    #
    #   @return [String]
    #
    UserDetails = ::Struct.new(
      :user_id,
      :session_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>One of the arguments for the request is not valid.</p>
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
