# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Shield
  module Types

    # <p>Exception that indicates the specified <code>AttackId</code> does not exist, or the requester does not have the appropriate permissions to access the <code>AttackId</code>.</p>
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

    # <p>In order to grant the necessary access to the Shield Response Team (SRT) the user submitting the request must have the <code>iam:PassRole</code> permission. This error indicates the user did not have the appropriate permissions. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_passrole.html">Granting a User Permissions to Pass a Role to an Amazon Web Services Service</a>. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AccessDeniedForDependencyException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The automatic application layer DDoS mitigation settings for a <a>Protection</a>.
    #        This configuration determines whether Shield Advanced automatically
    #        manages rules in the web ACL in order to respond to application layer events that Shield Advanced determines to be DDoS attacks. </p>
    #
    # @!attribute status
    #   <p>Indicates whether automatic application layer DDoS mitigation is enabled for the protection. </p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute action
    #   <p>Specifies the action setting that Shield Advanced should use in the WAF rules that it creates on behalf of the
    #      protected resource in response to DDoS attacks. You specify this as part of the configuration for the automatic application layer DDoS mitigation feature,
    #      when you enable or update automatic mitigation. Shield Advanced creates the WAF rules in a Shield Advanced-managed rule group, inside the web ACL that you have associated with the resource. </p>
    #
    #   @return [ResponseAction]
    #
    ApplicationLayerAutomaticResponseConfiguration = ::Struct.new(
      :status,
      :action,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ApplicationLayerAutomaticResponseStatus
    #
    module ApplicationLayerAutomaticResponseStatus
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # @!attribute log_bucket
    #   <p>The Amazon S3 bucket that contains the logs that you want to share.</p>
    #
    #   @return [String]
    #
    AssociateDRTLogBucketInput = ::Struct.new(
      :log_bucket,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AssociateDRTLogBucketOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the role the SRT will use to access your Amazon Web Services account.</p>
    #   	        <p>Prior to making the <code>AssociateDRTRole</code> request, you must attach the <a href="https://console.aws.amazon.com/iam/home? /policies/arn:aws:iam::aws:policy/service-role/AWSShieldDRTAccessPolicy">AWSShieldDRTAccessPolicy</a> managed policy to this role.  For more information see <a href=" https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_manage-attach-detach.html">Attaching and Detaching IAM Policies</a>.</p>
    #
    #   @return [String]
    #
    AssociateDRTRoleInput = ::Struct.new(
      :role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AssociateDRTRoleOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute protection_id
    #   <p>The unique identifier (ID) for the <a>Protection</a> object to add the health check association to. </p>
    #
    #   @return [String]
    #
    # @!attribute health_check_arn
    #   <p>The Amazon Resource Name (ARN) of the health check to associate with the protection.</p>
    #
    #   @return [String]
    #
    AssociateHealthCheckInput = ::Struct.new(
      :protection_id,
      :health_check_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AssociateHealthCheckOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute emergency_contact_list
    #   <p>A list of email addresses and phone numbers that the Shield Response Team (SRT) can use to contact you for escalations to the SRT and to initiate proactive customer support. </p>
    #            <p>To enable proactive engagement, the contact list must include at least one phone number.</p>
    #            <note>
    #               <p>The contacts that you provide here replace any contacts that were already defined. If you already have contacts defined and want to use them, retrieve the list using <code>DescribeEmergencyContactSettings</code> and then provide it here.  </p>
    #            </note>
    #
    #   @return [Array<EmergencyContact>]
    #
    AssociateProactiveEngagementDetailsInput = ::Struct.new(
      :emergency_contact_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AssociateProactiveEngagementDetailsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The details of a DDoS attack.</p>
    #
    # @!attribute attack_id
    #   <p>The unique identifier (ID) of the attack.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_arn
    #   <p>The ARN (Amazon Resource Name) of the resource that was attacked.</p>
    #
    #   @return [String]
    #
    # @!attribute sub_resources
    #   <p>If applicable, additional detail about the resource being attacked, for example, IP address or URL.</p>
    #
    #   @return [Array<SubResourceSummary>]
    #
    # @!attribute start_time
    #   <p>The time the attack started, in Unix time in seconds. </p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The time the attack ended, in Unix time in seconds. </p>
    #
    #   @return [Time]
    #
    # @!attribute attack_counters
    #   <p>List of counters that describe the attack for the specified time period.</p>
    #
    #   @return [Array<SummarizedCounter>]
    #
    # @!attribute attack_properties
    #   <p>The array of objects that provide details of the Shield event. </p>
    #            <p>For infrastructure
    #     layer events (L3 and L4 events), you can view metrics for top contributors in Amazon CloudWatch metrics.
    #              For more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/monitoring-cloudwatch.html set-ddos-alarms">Shield metrics and alarms</a>
    #                  in the <i>WAF Developer Guide</i>. </p>
    #
    #   @return [Array<AttackProperty>]
    #
    # @!attribute mitigations
    #   <p>List of mitigation actions taken for the attack.</p>
    #
    #   @return [Array<Mitigation>]
    #
    AttackDetail = ::Struct.new(
      :attack_id,
      :resource_arn,
      :sub_resources,
      :start_time,
      :end_time,
      :attack_counters,
      :attack_properties,
      :mitigations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AttackLayer
    #
    module AttackLayer
      # No documentation available.
      #
      NETWORK = "NETWORK"

      # No documentation available.
      #
      APPLICATION = "APPLICATION"
    end

    # <p>Details of a Shield event. This is provided as part of an <a>AttackDetail</a>.</p>
    #
    # @!attribute attack_layer
    #   <p>The type of Shield event that was observed. <code>NETWORK</code> indicates layer 3 and layer 4 events and <code>APPLICATION</code>
    #            indicates layer 7 events.</p>
    #            <p>For infrastructure
    #     layer events (L3 and L4 events), you can view metrics for top contributors in Amazon CloudWatch metrics.
    #              For more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/monitoring-cloudwatch.html set-ddos-alarms">Shield metrics and alarms</a>
    #                  in the <i>WAF Developer Guide</i>. </p>
    #
    #   Enum, one of: ["NETWORK", "APPLICATION"]
    #
    #   @return [String]
    #
    # @!attribute attack_property_identifier
    #   <p>Defines the Shield event property information that is provided. The
    #               <code>WORDPRESS_PINGBACK_REFLECTOR</code> and <code>WORDPRESS_PINGBACK_SOURCE</code>
    #            values are valid only for WordPress reflective pingback events.</p>
    #
    #   Enum, one of: ["DESTINATION_URL", "REFERRER", "SOURCE_ASN", "SOURCE_COUNTRY", "SOURCE_IP_ADDRESS", "SOURCE_USER_AGENT", "WORDPRESS_PINGBACK_REFLECTOR", "WORDPRESS_PINGBACK_SOURCE"]
    #
    #   @return [String]
    #
    # @!attribute top_contributors
    #   <p>Contributor objects for the top five contributors to a Shield event. A contributor is a source of traffic that Shield Advanced identifies as responsible for some or all of an event.</p>
    #
    #   @return [Array<Contributor>]
    #
    # @!attribute unit
    #   <p>The unit used for the <code>Contributor</code>
    #               <code>Value</code> property. </p>
    #
    #   Enum, one of: ["BITS", "BYTES", "PACKETS", "REQUESTS"]
    #
    #   @return [String]
    #
    # @!attribute total
    #   <p>The total contributions made to this Shield event by all contributors.</p>
    #
    #   @return [Integer]
    #
    AttackProperty = ::Struct.new(
      :attack_layer,
      :attack_property_identifier,
      :top_contributors,
      :unit,
      :total,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.total ||= 0
      end

    end

    # Includes enum constants for AttackPropertyIdentifier
    #
    module AttackPropertyIdentifier
      # No documentation available.
      #
      DESTINATION_URL = "DESTINATION_URL"

      # No documentation available.
      #
      REFERRER = "REFERRER"

      # No documentation available.
      #
      SOURCE_ASN = "SOURCE_ASN"

      # No documentation available.
      #
      SOURCE_COUNTRY = "SOURCE_COUNTRY"

      # No documentation available.
      #
      SOURCE_IP_ADDRESS = "SOURCE_IP_ADDRESS"

      # No documentation available.
      #
      SOURCE_USER_AGENT = "SOURCE_USER_AGENT"

      # No documentation available.
      #
      WORDPRESS_PINGBACK_REFLECTOR = "WORDPRESS_PINGBACK_REFLECTOR"

      # No documentation available.
      #
      WORDPRESS_PINGBACK_SOURCE = "WORDPRESS_PINGBACK_SOURCE"
    end

    # <p>A single attack statistics data record. This is returned by <a>DescribeAttackStatistics</a> along with a time range indicating the time period that the attack statistics apply to.  </p>
    #
    # @!attribute attack_volume
    #   <p>Information about the volume of attacks during the time period. If the accompanying <code>AttackCount</code> is zero, this setting might be empty.</p>
    #
    #   @return [AttackVolume]
    #
    # @!attribute attack_count
    #   <p>The number of attacks detected during the time period. This is always present, but might be zero. </p>
    #
    #   @return [Integer]
    #
    AttackStatisticsDataItem = ::Struct.new(
      :attack_volume,
      :attack_count,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.attack_count ||= 0
      end

    end

    # <p>Summarizes all DDoS attacks for a specified time period.</p>
    #
    # @!attribute attack_id
    #   <p>The unique identifier (ID) of the attack.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_arn
    #   <p>The ARN (Amazon Resource Name) of the resource that was attacked.</p>
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The start time of the attack, in Unix time in seconds. </p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The end time of the attack, in Unix time in seconds. </p>
    #
    #   @return [Time]
    #
    # @!attribute attack_vectors
    #   <p>The list of attacks for a specified time period.</p>
    #
    #   @return [Array<AttackVectorDescription>]
    #
    AttackSummary = ::Struct.new(
      :attack_id,
      :resource_arn,
      :start_time,
      :end_time,
      :attack_vectors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the attack.</p>
    #
    # @!attribute vector_type
    #   <p>The attack type. Valid values:</p>
    #   	        <ul>
    #               <li>
    #                  <p>UDP_TRAFFIC</p>
    #               </li>
    #               <li>
    #                  <p>UDP_FRAGMENT</p>
    #               </li>
    #               <li>
    #                  <p>GENERIC_UDP_REFLECTION</p>
    #               </li>
    #               <li>
    #                  <p>DNS_REFLECTION</p>
    #               </li>
    #               <li>
    #                  <p>NTP_REFLECTION</p>
    #               </li>
    #               <li>
    #                  <p>CHARGEN_REFLECTION</p>
    #               </li>
    #               <li>
    #                  <p>SSDP_REFLECTION</p>
    #               </li>
    #               <li>
    #                  <p>PORT_MAPPER</p>
    #               </li>
    #               <li>
    #                  <p>RIP_REFLECTION</p>
    #               </li>
    #               <li>
    #                  <p>SNMP_REFLECTION</p>
    #               </li>
    #               <li>
    #                  <p>MSSQL_REFLECTION</p>
    #               </li>
    #               <li>
    #                  <p>NET_BIOS_REFLECTION</p>
    #               </li>
    #               <li>
    #                  <p>SYN_FLOOD</p>
    #               </li>
    #               <li>
    #                  <p>ACK_FLOOD</p>
    #               </li>
    #               <li>
    #                  <p>REQUEST_FLOOD</p>
    #               </li>
    #               <li>
    #                  <p>HTTP_REFLECTION</p>
    #               </li>
    #               <li>
    #                  <p>UDS_REFLECTION</p>
    #               </li>
    #               <li>
    #                  <p>MEMCACHED_REFLECTION</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    AttackVectorDescription = ::Struct.new(
      :vector_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the volume of attacks during the time period, included in an <a>AttackStatisticsDataItem</a>. If the accompanying <code>AttackCount</code> in the statistics object is zero, this setting might be empty.</p>
    #
    # @!attribute bits_per_second
    #   <p>A statistics object that uses bits per second as the unit. This is included for network level attacks. </p>
    #
    #   @return [AttackVolumeStatistics]
    #
    # @!attribute packets_per_second
    #   <p>A statistics object that uses packets per second as the unit. This is included for network level attacks. </p>
    #
    #   @return [AttackVolumeStatistics]
    #
    # @!attribute requests_per_second
    #   <p>A statistics object that uses requests per second as the unit. This is included for application level attacks, and is only available for accounts that are subscribed to Shield Advanced.</p>
    #
    #   @return [AttackVolumeStatistics]
    #
    AttackVolume = ::Struct.new(
      :bits_per_second,
      :packets_per_second,
      :requests_per_second,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Statistics objects for the various data types in <a>AttackVolume</a>. </p>
    #
    # @!attribute max
    #   <p>The maximum attack volume observed for the given unit.</p>
    #
    #   @return [Float]
    #
    AttackVolumeStatistics = ::Struct.new(
      :max,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max ||= 0
      end

    end

    # Includes enum constants for AutoRenew
    #
    module AutoRenew
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # <p>Specifies that Shield Advanced should configure its WAF rules with the WAF <code>Block</code> action. </p>
    #             <p>This is only used in the context of the <code>ResponseAction</code> setting. </p>
    #          <p>JSON specification: <code>"Block": {}</code>
    #          </p>
    #
    BlockAction = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A contributor to the attack and their contribution. </p>
    #
    # @!attribute name
    #   <p>The name of the contributor. The type of name that you'll find here depends on the <code>AttackPropertyIdentifier</code> setting in the <code>AttackProperty</code> where this contributor is defined. For example, if the <code>AttackPropertyIdentifier</code> is <code>SOURCE_COUNTRY</code>, the <code>Name</code> could be <code>United States</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The contribution of this contributor expressed in <a>Protection</a> units. For example <code>10,000</code>.</p>
    #
    #   @return [Integer]
    #
    Contributor = ::Struct.new(
      :name,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.value ||= 0
      end

    end

    # <p>Specifies that Shield Advanced should configure its WAF rules with the WAF <code>Count</code> action. </p>
    #             <p>This is only used in the context of the <code>ResponseAction</code> setting. </p>
    #          <p>JSON specification: <code>"Count": {}</code>
    #          </p>
    #
    CountAction = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute protection_group_id
    #   <p>The name of the protection group. You use this to identify the protection group in lists and to manage the protection group, for example to update, delete, or describe it. </p>
    #
    #   @return [String]
    #
    # @!attribute aggregation
    #   <p>Defines how Shield combines resource data for the group in order to detect, mitigate, and report events.</p>
    #            <ul>
    #               <li>
    #                  <p>Sum - Use the total traffic across the group. This is a good choice for most cases. Examples include Elastic IP addresses for EC2 instances that scale manually or automatically.</p>
    #               </li>
    #               <li>
    #                  <p>Mean - Use the average of the traffic across the group. This is a good choice for resources that share traffic uniformly. Examples include accelerators and load balancers.</p>
    #               </li>
    #               <li>
    #                  <p>Max - Use the highest traffic from each resource. This is useful for resources that don't share traffic and for resources that share that traffic in a non-uniform way. Examples include Amazon CloudFront and origin resources for CloudFront distributions.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["SUM", "MEAN", "MAX"]
    #
    #   @return [String]
    #
    # @!attribute pattern
    #   <p>The criteria to use to choose the protected resources for inclusion in the group. You can include all resources that have protections, provide a list of resource Amazon Resource Names (ARNs), or include all resources of a specified resource type. </p>
    #
    #   Enum, one of: ["ALL", "ARBITRARY", "BY_RESOURCE_TYPE"]
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The resource type to include in the protection group. All protected resources of this type are included in the protection group. Newly protected resources of this type are automatically added to the group.
    #              You must set this when you set <code>Pattern</code> to <code>BY_RESOURCE_TYPE</code> and you must not set it for any other <code>Pattern</code> setting. </p>
    #
    #   Enum, one of: ["CLOUDFRONT_DISTRIBUTION", "ROUTE_53_HOSTED_ZONE", "ELASTIC_IP_ALLOCATION", "CLASSIC_LOAD_BALANCER", "APPLICATION_LOAD_BALANCER", "GLOBAL_ACCELERATOR"]
    #
    #   @return [String]
    #
    # @!attribute members
    #   <p>The Amazon Resource Names (ARNs) of the resources to include in the protection group. You must set this when you set <code>Pattern</code> to <code>ARBITRARY</code> and you must not set it for any other <code>Pattern</code> setting. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute tags
    #   <p>One or more tag key-value pairs for the protection group.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateProtectionGroupInput = ::Struct.new(
      :protection_group_id,
      :aggregation,
      :pattern,
      :resource_type,
      :members,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    CreateProtectionGroupOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>Friendly name for the <code>Protection</code> you are creating.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_arn
    #   <p>The ARN (Amazon Resource Name) of the resource to be protected.</p>
    #            <p>The ARN should be in one of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>For an Application Load Balancer: <code>arn:aws:elasticloadbalancing:<i>region</i>:<i>account-id</i>:loadbalancer/app/<i>load-balancer-name</i>/<i>load-balancer-id</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For an Elastic Load Balancer (Classic Load Balancer): <code>arn:aws:elasticloadbalancing:<i>region</i>:<i>account-id</i>:loadbalancer/<i>load-balancer-name</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For an Amazon CloudFront distribution: <code>arn:aws:cloudfront::<i>account-id</i>:distribution/<i>distribution-id</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For an Global Accelerator accelerator: <code>arn:aws:globalaccelerator::<i>account-id</i>:accelerator/<i>accelerator-id</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For Amazon Route 53: <code>arn:aws:route53:::hostedzone/<i>hosted-zone-id</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For an Elastic IP address: <code>arn:aws:ec2:<i>region</i>:<i>account-id</i>:eip-allocation/<i>allocation-id</i>
    #                     </code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>One or more tag key-value pairs for the <a>Protection</a> object that is created.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateProtectionInput = ::Struct.new(
      :name,
      :resource_arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute protection_id
    #   <p>The unique identifier (ID) for the <a>Protection</a> object that is created.</p>
    #
    #   @return [String]
    #
    CreateProtectionOutput = ::Struct.new(
      :protection_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    CreateSubscriptionInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    CreateSubscriptionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute protection_group_id
    #   <p>The name of the protection group. You use this to identify the protection group in lists and to manage the protection group, for example to update, delete, or describe it. </p>
    #
    #   @return [String]
    #
    DeleteProtectionGroupInput = ::Struct.new(
      :protection_group_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteProtectionGroupOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute protection_id
    #   <p>The unique identifier (ID) for the <a>Protection</a> object to be
    #            deleted.</p>
    #
    #   @return [String]
    #
    DeleteProtectionInput = ::Struct.new(
      :protection_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteProtectionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @deprecated
    #
    DeleteSubscriptionInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @deprecated
    #
    DeleteSubscriptionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute attack_id
    #   <p>The unique identifier (ID) for the attack.</p>
    #
    #   @return [String]
    #
    DescribeAttackInput = ::Struct.new(
      :attack_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute attack
    #   <p>The attack that is described.</p>
    #
    #   @return [AttackDetail]
    #
    DescribeAttackOutput = ::Struct.new(
      :attack,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DescribeAttackStatisticsInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute time_range
    #   <p>The time range. </p>
    #
    #   @return [TimeRange]
    #
    # @!attribute data_items
    #   <p>The data that describes the attacks detected during the time period.</p>
    #
    #   @return [Array<AttackStatisticsDataItem>]
    #
    DescribeAttackStatisticsOutput = ::Struct.new(
      :time_range,
      :data_items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DescribeDRTAccessInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the role the SRT used to access your Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    # @!attribute log_bucket_list
    #   <p>The list of Amazon S3 buckets accessed by the SRT.</p>
    #
    #   @return [Array<String>]
    #
    DescribeDRTAccessOutput = ::Struct.new(
      :role_arn,
      :log_bucket_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DescribeEmergencyContactSettingsInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute emergency_contact_list
    #   <p>A list of email addresses and phone numbers that the Shield Response Team (SRT) can use to contact you if you have proactive engagement enabled, for escalations to the SRT and to initiate proactive customer support.</p>
    #
    #   @return [Array<EmergencyContact>]
    #
    DescribeEmergencyContactSettingsOutput = ::Struct.new(
      :emergency_contact_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute protection_group_id
    #   <p>The name of the protection group. You use this to identify the protection group in lists and to manage the protection group, for example to update, delete, or describe it. </p>
    #
    #   @return [String]
    #
    DescribeProtectionGroupInput = ::Struct.new(
      :protection_group_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute protection_group
    #   <p>A grouping of protected resources that you and Shield Advanced can monitor as a collective. This resource grouping improves the accuracy of detection and reduces false positives. </p>
    #
    #   @return [ProtectionGroup]
    #
    DescribeProtectionGroupOutput = ::Struct.new(
      :protection_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute protection_id
    #   <p>The unique identifier (ID) for the <a>Protection</a> object that is
    #            described. When submitting the <code>DescribeProtection</code> request you must provide either the <code>ResourceArn</code> or the <code>ProtectionID</code>, but not both.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_arn
    #   <p>The ARN (Amazon Resource Name) of the Amazon Web Services resource for the <a>Protection</a> object that is
    #            described. When submitting the <code>DescribeProtection</code> request you must provide either the <code>ResourceArn</code> or the <code>ProtectionID</code>, but not both.</p>
    #
    #   @return [String]
    #
    DescribeProtectionInput = ::Struct.new(
      :protection_id,
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute protection
    #   <p>The <a>Protection</a> object that is described.</p>
    #
    #   @return [Protection]
    #
    DescribeProtectionOutput = ::Struct.new(
      :protection,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DescribeSubscriptionInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute subscription
    #   <p>The Shield Advanced subscription details for an account.</p>
    #
    #   @return [Subscription]
    #
    DescribeSubscriptionOutput = ::Struct.new(
      :subscription,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN (Amazon Resource Name) of the resource.</p>
    #
    #   @return [String]
    #
    DisableApplicationLayerAutomaticResponseInput = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisableApplicationLayerAutomaticResponseOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisableProactiveEngagementInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisableProactiveEngagementOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute log_bucket
    #   <p>The Amazon S3 bucket that contains the logs that you want to share.</p>
    #
    #   @return [String]
    #
    DisassociateDRTLogBucketInput = ::Struct.new(
      :log_bucket,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateDRTLogBucketOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateDRTRoleInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateDRTRoleOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute protection_id
    #   <p>The unique identifier (ID) for the <a>Protection</a> object to remove the health check association from. </p>
    #
    #   @return [String]
    #
    # @!attribute health_check_arn
    #   <p>The Amazon Resource Name (ARN) of the health check that is associated with the protection.</p>
    #
    #   @return [String]
    #
    DisassociateHealthCheckInput = ::Struct.new(
      :protection_id,
      :health_check_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateHealthCheckOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contact information that the SRT can use to contact you if you have proactive engagement enabled, for escalations to the SRT and to initiate proactive customer support.</p>
    #
    # @!attribute email_address
    #   <p>The email address for the contact.</p>
    #
    #   @return [String]
    #
    # @!attribute phone_number
    #   <p>The phone number for the contact.</p>
    #
    #   @return [String]
    #
    # @!attribute contact_notes
    #   <p>Additional notes regarding the contact. </p>
    #
    #   @return [String]
    #
    EmergencyContact = ::Struct.new(
      :email_address,
      :phone_number,
      :contact_notes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN (Amazon Resource Name) of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute action
    #   <p>Specifies the action setting that Shield Advanced should use in the WAF rules that it creates on behalf of the
    #      protected resource in response to DDoS attacks. You specify this as part of the configuration for the automatic application layer DDoS mitigation feature,
    #      when you enable or update automatic mitigation. Shield Advanced creates the WAF rules in a Shield Advanced-managed rule group, inside the web ACL that you have associated with the resource. </p>
    #
    #   @return [ResponseAction]
    #
    EnableApplicationLayerAutomaticResponseInput = ::Struct.new(
      :resource_arn,
      :action,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    EnableApplicationLayerAutomaticResponseOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    EnableProactiveEngagementInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    EnableProactiveEngagementOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    GetSubscriptionStateInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute subscription_state
    #   <p>The status of the subscription.</p>
    #
    #   Enum, one of: ["ACTIVE", "INACTIVE"]
    #
    #   @return [String]
    #
    GetSubscriptionStateOutput = ::Struct.new(
      :subscription_state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Exception that indicates that a problem occurred with the service infrastructure. You can retry the request.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InternalErrorException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Exception that indicates that the operation would not cause any change to occur.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidOperationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Exception that indicates that the <code>NextToken</code> specified in the request is invalid. Submit the request using the <code>NextToken</code> value that was returned in the prior response.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidPaginationTokenException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Exception that indicates that the parameters passed to the API are invalid. If available, this exception includes details in additional properties. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>Additional information about the exception.</p>
    #
    #   Enum, one of: ["FIELD_VALIDATION_FAILED", "OTHER"]
    #
    #   @return [String]
    #
    # @!attribute fields
    #   <p>Fields that caused the exception.</p>
    #
    #   @return [Array<ValidationExceptionField>]
    #
    InvalidParameterException = ::Struct.new(
      :message,
      :reason,
      :fields,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Exception that indicates that the resource is invalid. You might not have access to the resource, or the resource might not exist.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidResourceException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies how many protections of a given type you can create.</p>
    #
    # @!attribute type
    #   <p>The type of protection.</p>
    #
    #   @return [String]
    #
    # @!attribute max
    #   <p>The maximum number of protections that can be created for the specified <code>Type</code>.</p>
    #
    #   @return [Integer]
    #
    Limit = ::Struct.new(
      :type,
      :max,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max ||= 0
      end

    end

    # <p>Exception that indicates that the operation would exceed a limit.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of limit that would be exceeded.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The threshold that would be exceeded.</p>
    #
    #   @return [Integer]
    #
    LimitsExceededException = ::Struct.new(
      :message,
      :type,
      :limit,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.limit ||= 0
      end

    end

    # @!attribute resource_arns
    #   <p>The ARNs (Amazon Resource Names) of the resources that were attacked. If you leave this
    #            blank, all applicable resources for this account will be included.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute start_time
    #   <p>The start of the time period for the attacks. This is a <code>timestamp</code> type. The request syntax listing for this call indicates a <code>number</code> type,
    #              but you can provide the time in any valid <a href="https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters-types.html parameter-type-timestamp">timestamp format</a> setting.  </p>
    #
    #   @return [TimeRange]
    #
    # @!attribute end_time
    #   <p>The end of the time period for the attacks. This is a <code>timestamp</code> type. The request syntax listing for this call indicates a <code>number</code> type,
    #              but you can provide the time in any valid <a href="https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters-types.html parameter-type-timestamp">timestamp format</a> setting.  </p>
    #
    #   @return [TimeRange]
    #
    # @!attribute next_token
    #   <p>When you request a list of objects from Shield Advanced, if the response does not include all of the remaining available objects,
    #              Shield Advanced includes a <code>NextToken</code> value in the response. You can retrieve the next batch of objects by requesting the list again and
    #              providing the token that was returned by the prior call in your request. </p>
    #              <p>You can indicate the maximum number of objects that you want Shield Advanced to return for a single call with the <code>MaxResults</code>
    #              setting. Shield Advanced will not return more than <code>MaxResults</code> objects, but may return fewer, even if more objects are still available.</p>
    #              <p>Whenever more objects remain that Shield Advanced has not yet returned to you, the response will include a <code>NextToken</code> value.</p>
    #            <p>On your first call to a list operation, leave this setting empty.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The greatest number of objects that you want Shield Advanced to return to the list request. Shield Advanced might return fewer objects
    #            than you indicate in this setting, even if more objects are available. If there are more objects remaining, Shield Advanced will always also return a <code>NextToken</code> value
    #            in the response.</p>
    #            <p>The default setting is 20.</p>
    #
    #   @return [Integer]
    #
    ListAttacksInput = ::Struct.new(
      :resource_arns,
      :start_time,
      :end_time,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute attack_summaries
    #   <p>The attack information for the specified time range.</p>
    #
    #   @return [Array<AttackSummary>]
    #
    # @!attribute next_token
    #   <p>When you request a list of objects from Shield Advanced, if the response does not include all of the remaining available objects,
    #              Shield Advanced includes a <code>NextToken</code> value in the response. You can retrieve the next batch of objects by requesting the list again and
    #              providing the token that was returned by the prior call in your request. </p>
    #              <p>You can indicate the maximum number of objects that you want Shield Advanced to return for a single call with the <code>MaxResults</code>
    #              setting. Shield Advanced will not return more than <code>MaxResults</code> objects, but may return fewer, even if more objects are still available.</p>
    #              <p>Whenever more objects remain that Shield Advanced has not yet returned to you, the response will include a <code>NextToken</code> value.</p>
    #
    #   @return [String]
    #
    ListAttacksOutput = ::Struct.new(
      :attack_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>When you request a list of objects from Shield Advanced, if the response does not include all of the remaining available objects,
    #              Shield Advanced includes a <code>NextToken</code> value in the response. You can retrieve the next batch of objects by requesting the list again and
    #              providing the token that was returned by the prior call in your request. </p>
    #              <p>You can indicate the maximum number of objects that you want Shield Advanced to return for a single call with the <code>MaxResults</code>
    #              setting. Shield Advanced will not return more than <code>MaxResults</code> objects, but may return fewer, even if more objects are still available.</p>
    #              <p>Whenever more objects remain that Shield Advanced has not yet returned to you, the response will include a <code>NextToken</code> value.</p>
    #            <p>On your first call to a list operation, leave this setting empty.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The greatest number of objects that you want Shield Advanced to return to the list request. Shield Advanced might return fewer objects
    #            than you indicate in this setting, even if more objects are available. If there are more objects remaining, Shield Advanced will always also return a <code>NextToken</code> value
    #            in the response.</p>
    #            <p>The default setting is 20.</p>
    #
    #   @return [Integer]
    #
    ListProtectionGroupsInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute protection_groups
    #   <p></p>
    #
    #   @return [Array<ProtectionGroup>]
    #
    # @!attribute next_token
    #   <p>When you request a list of objects from Shield Advanced, if the response does not include all of the remaining available objects,
    #              Shield Advanced includes a <code>NextToken</code> value in the response. You can retrieve the next batch of objects by requesting the list again and
    #              providing the token that was returned by the prior call in your request. </p>
    #              <p>You can indicate the maximum number of objects that you want Shield Advanced to return for a single call with the <code>MaxResults</code>
    #              setting. Shield Advanced will not return more than <code>MaxResults</code> objects, but may return fewer, even if more objects are still available.</p>
    #              <p>Whenever more objects remain that Shield Advanced has not yet returned to you, the response will include a <code>NextToken</code> value.</p>
    #
    #   @return [String]
    #
    ListProtectionGroupsOutput = ::Struct.new(
      :protection_groups,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>When you request a list of objects from Shield Advanced, if the response does not include all of the remaining available objects,
    #              Shield Advanced includes a <code>NextToken</code> value in the response. You can retrieve the next batch of objects by requesting the list again and
    #              providing the token that was returned by the prior call in your request. </p>
    #              <p>You can indicate the maximum number of objects that you want Shield Advanced to return for a single call with the <code>MaxResults</code>
    #              setting. Shield Advanced will not return more than <code>MaxResults</code> objects, but may return fewer, even if more objects are still available.</p>
    #              <p>Whenever more objects remain that Shield Advanced has not yet returned to you, the response will include a <code>NextToken</code> value.</p>
    #            <p>On your first call to a list operation, leave this setting empty.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The greatest number of objects that you want Shield Advanced to return to the list request. Shield Advanced might return fewer objects
    #            than you indicate in this setting, even if more objects are available. If there are more objects remaining, Shield Advanced will always also return a <code>NextToken</code> value
    #            in the response.</p>
    #            <p>The default setting is 20.</p>
    #
    #   @return [Integer]
    #
    ListProtectionsInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute protections
    #   <p>The array of enabled <a>Protection</a> objects.</p>
    #
    #   @return [Array<Protection>]
    #
    # @!attribute next_token
    #   <p>When you request a list of objects from Shield Advanced, if the response does not include all of the remaining available objects,
    #              Shield Advanced includes a <code>NextToken</code> value in the response. You can retrieve the next batch of objects by requesting the list again and
    #              providing the token that was returned by the prior call in your request. </p>
    #              <p>You can indicate the maximum number of objects that you want Shield Advanced to return for a single call with the <code>MaxResults</code>
    #              setting. Shield Advanced will not return more than <code>MaxResults</code> objects, but may return fewer, even if more objects are still available.</p>
    #              <p>Whenever more objects remain that Shield Advanced has not yet returned to you, the response will include a <code>NextToken</code> value.</p>
    #
    #   @return [String]
    #
    ListProtectionsOutput = ::Struct.new(
      :protections,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute protection_group_id
    #   <p>The name of the protection group. You use this to identify the protection group in lists and to manage the protection group, for example to update, delete, or describe it. </p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>When you request a list of objects from Shield Advanced, if the response does not include all of the remaining available objects,
    #              Shield Advanced includes a <code>NextToken</code> value in the response. You can retrieve the next batch of objects by requesting the list again and
    #              providing the token that was returned by the prior call in your request. </p>
    #              <p>You can indicate the maximum number of objects that you want Shield Advanced to return for a single call with the <code>MaxResults</code>
    #              setting. Shield Advanced will not return more than <code>MaxResults</code> objects, but may return fewer, even if more objects are still available.</p>
    #              <p>Whenever more objects remain that Shield Advanced has not yet returned to you, the response will include a <code>NextToken</code> value.</p>
    #            <p>On your first call to a list operation, leave this setting empty.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The greatest number of objects that you want Shield Advanced to return to the list request. Shield Advanced might return fewer objects
    #            than you indicate in this setting, even if more objects are available. If there are more objects remaining, Shield Advanced will always also return a <code>NextToken</code> value
    #            in the response.</p>
    #            <p>The default setting is 20.</p>
    #
    #   @return [Integer]
    #
    ListResourcesInProtectionGroupInput = ::Struct.new(
      :protection_group_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arns
    #   <p>The Amazon Resource Names (ARNs) of the resources that are included in the protection group.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>When you request a list of objects from Shield Advanced, if the response does not include all of the remaining available objects,
    #              Shield Advanced includes a <code>NextToken</code> value in the response. You can retrieve the next batch of objects by requesting the list again and
    #              providing the token that was returned by the prior call in your request. </p>
    #              <p>You can indicate the maximum number of objects that you want Shield Advanced to return for a single call with the <code>MaxResults</code>
    #              setting. Shield Advanced will not return more than <code>MaxResults</code> objects, but may return fewer, even if more objects are still available.</p>
    #              <p>Whenever more objects remain that Shield Advanced has not yet returned to you, the response will include a <code>NextToken</code> value.</p>
    #
    #   @return [String]
    #
    ListResourcesInProtectionGroupOutput = ::Struct.new(
      :resource_arns,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to get tags for.</p>
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
    #   <p>A list of tag key and value pairs associated with the specified resource.</p>
    #
    #   @return [Array<Tag>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You are trying to update a subscription that has not yet completed the 1-year commitment. You can change the <code>AutoRenew</code> parameter during the last 30 days of your subscription. This exception indicates that you are attempting to change <code>AutoRenew</code> prior to that period.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    LockedSubscriptionException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The mitigation applied to a DDoS attack.</p>
    #
    # @!attribute mitigation_name
    #   <p>The name of the mitigation taken for this attack.</p>
    #
    #   @return [String]
    #
    Mitigation = ::Struct.new(
      :mitigation_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The ARN of the role that you specifed does not exist.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    NoAssociatedRoleException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Exception that indicates that the resource state has been modified by another
    #          client. Retrieve the resource and then retry your request.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    OptimisticLockException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ProactiveEngagementStatus
    #
    module ProactiveEngagementStatus
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      PENDING = "PENDING"
    end

    # Includes enum constants for ProtectedResourceType
    #
    module ProtectedResourceType
      # No documentation available.
      #
      CLOUDFRONT_DISTRIBUTION = "CLOUDFRONT_DISTRIBUTION"

      # No documentation available.
      #
      ROUTE_53_HOSTED_ZONE = "ROUTE_53_HOSTED_ZONE"

      # No documentation available.
      #
      ELASTIC_IP_ALLOCATION = "ELASTIC_IP_ALLOCATION"

      # No documentation available.
      #
      CLASSIC_LOAD_BALANCER = "CLASSIC_LOAD_BALANCER"

      # No documentation available.
      #
      APPLICATION_LOAD_BALANCER = "APPLICATION_LOAD_BALANCER"

      # No documentation available.
      #
      GLOBAL_ACCELERATOR = "GLOBAL_ACCELERATOR"
    end

    # <p>An object that represents a resource that is under DDoS protection.</p>
    #
    # @!attribute id
    #   <p>The unique identifier (ID) of the protection.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the protection. For example, <code>My CloudFront distributions</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_arn
    #   <p>The ARN (Amazon Resource Name) of the Amazon Web Services resource that is protected.</p>
    #
    #   @return [String]
    #
    # @!attribute health_check_ids
    #   <p>The unique identifier (ID) for the Route 53 health check that's associated with the protection. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute protection_arn
    #   <p>The ARN (Amazon Resource Name) of the protection.</p>
    #
    #   @return [String]
    #
    # @!attribute application_layer_automatic_response_configuration
    #   <p>The automatic application layer DDoS mitigation settings for the protection.
    #          This configuration determines whether Shield Advanced automatically
    #          manages rules in the web ACL in order to respond to application layer events that Shield Advanced determines to be DDoS attacks. </p>
    #
    #   @return [ApplicationLayerAutomaticResponseConfiguration]
    #
    Protection = ::Struct.new(
      :id,
      :name,
      :resource_arn,
      :health_check_ids,
      :protection_arn,
      :application_layer_automatic_response_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A grouping of protected resources that you and Shield Advanced can monitor as a collective. This resource grouping improves the accuracy of detection and reduces false positives. </p>
    #
    # @!attribute protection_group_id
    #   <p>The name of the protection group. You use this to identify the protection group in lists and to manage the protection group, for example to update, delete, or describe it. </p>
    #
    #   @return [String]
    #
    # @!attribute aggregation
    #   <p>Defines how Shield combines resource data for the group in order to detect, mitigate, and report events.</p>
    #            <ul>
    #               <li>
    #                  <p>Sum - Use the total traffic across the group. This is a good choice for most cases. Examples include Elastic IP addresses for EC2 instances that scale manually or automatically.</p>
    #               </li>
    #               <li>
    #                  <p>Mean - Use the average of the traffic across the group. This is a good choice for resources that share traffic uniformly. Examples include accelerators and load balancers.</p>
    #               </li>
    #               <li>
    #                  <p>Max - Use the highest traffic from each resource. This is useful for resources that don't share traffic and for resources that share that traffic in a non-uniform way. Examples include Amazon CloudFront distributions and origin resources for CloudFront distributions.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["SUM", "MEAN", "MAX"]
    #
    #   @return [String]
    #
    # @!attribute pattern
    #   <p>The criteria to use to choose the protected resources for inclusion in the group. You can include all resources that have protections, provide a list of resource Amazon Resource Names (ARNs), or include all resources of a specified resource type.</p>
    #
    #   Enum, one of: ["ALL", "ARBITRARY", "BY_RESOURCE_TYPE"]
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The resource type to include in the protection group. All protected resources of this type are included in the protection group.
    #              You must set this when you set <code>Pattern</code> to <code>BY_RESOURCE_TYPE</code> and you must not set it for any other <code>Pattern</code> setting. </p>
    #
    #   Enum, one of: ["CLOUDFRONT_DISTRIBUTION", "ROUTE_53_HOSTED_ZONE", "ELASTIC_IP_ALLOCATION", "CLASSIC_LOAD_BALANCER", "APPLICATION_LOAD_BALANCER", "GLOBAL_ACCELERATOR"]
    #
    #   @return [String]
    #
    # @!attribute members
    #   <p>The Amazon Resource Names (ARNs) of the resources to include in the protection group. You must set this when you set <code>Pattern</code> to <code>ARBITRARY</code> and you must not set it for any other <code>Pattern</code> setting. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute protection_group_arn
    #   <p>The ARN (Amazon Resource Name) of the protection group.</p>
    #
    #   @return [String]
    #
    ProtectionGroup = ::Struct.new(
      :protection_group_id,
      :aggregation,
      :pattern,
      :resource_type,
      :members,
      :protection_group_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ProtectionGroupAggregation
    #
    module ProtectionGroupAggregation
      # No documentation available.
      #
      SUM = "SUM"

      # No documentation available.
      #
      MEAN = "MEAN"

      # No documentation available.
      #
      MAX = "MAX"
    end

    # <p>Limits settings on protection groups with arbitrary pattern type. </p>
    #
    # @!attribute max_members
    #   <p>The maximum number of resources you can specify for a single arbitrary pattern in a protection group.</p>
    #
    #   @return [Integer]
    #
    ProtectionGroupArbitraryPatternLimits = ::Struct.new(
      :max_members,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max_members ||= 0
      end

    end

    # <p>Limits settings on protection groups for your subscription. </p>
    #
    # @!attribute max_protection_groups
    #   <p>The maximum number of protection groups that you can have at one time. </p>
    #
    #   @return [Integer]
    #
    # @!attribute pattern_type_limits
    #   <p>Limits settings by pattern type in the protection groups for your subscription. </p>
    #
    #   @return [ProtectionGroupPatternTypeLimits]
    #
    ProtectionGroupLimits = ::Struct.new(
      :max_protection_groups,
      :pattern_type_limits,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max_protection_groups ||= 0
      end

    end

    # Includes enum constants for ProtectionGroupPattern
    #
    module ProtectionGroupPattern
      # No documentation available.
      #
      ALL = "ALL"

      # No documentation available.
      #
      ARBITRARY = "ARBITRARY"

      # No documentation available.
      #
      BY_RESOURCE_TYPE = "BY_RESOURCE_TYPE"
    end

    # <p>Limits settings by pattern type in the protection groups for your subscription. </p>
    #
    # @!attribute arbitrary_pattern_limits
    #   <p>Limits settings on protection groups with arbitrary pattern type. </p>
    #
    #   @return [ProtectionGroupArbitraryPatternLimits]
    #
    ProtectionGroupPatternTypeLimits = ::Struct.new(
      :arbitrary_pattern_limits,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Limits settings on protections for your subscription. </p>
    #
    # @!attribute protected_resource_type_limits
    #   <p>The maximum number of resource types that you can specify in a protection.</p>
    #
    #   @return [Array<Limit>]
    #
    ProtectionLimits = ::Struct.new(
      :protected_resource_type_limits,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Exception indicating the specified resource already exists. If available, this exception includes details in additional properties. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The type of resource that already exists.</p>
    #
    #   @return [String]
    #
    ResourceAlreadyExistsException = ::Struct.new(
      :message,
      :resource_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Exception indicating the specified resource does not exist. If available, this exception includes details in additional properties. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>Type of resource.</p>
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :message,
      :resource_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the action setting that Shield Advanced should use in the WAF rules that it creates on behalf of the
    #    protected resource in response to DDoS attacks. You specify this as part of the configuration for the automatic application layer DDoS mitigation feature,
    #    when you enable or update automatic mitigation. Shield Advanced creates the WAF rules in a Shield Advanced-managed rule group, inside the web ACL that you have associated with the resource. </p>
    #
    # @!attribute block
    #   <p>Specifies that Shield Advanced should configure its WAF rules with the WAF <code>Block</code> action. </p>
    #            <p>You must specify exactly one action, either <code>Block</code> or <code>Count</code>.</p>
    #
    #   @return [BlockAction]
    #
    # @!attribute count
    #   <p>Specifies that Shield Advanced should configure its WAF rules with the WAF <code>Count</code> action. </p>
    #            <p>You must specify exactly one action, either <code>Block</code> or <code>Count</code>.</p>
    #
    #   @return [CountAction]
    #
    ResponseAction = ::Struct.new(
      :block,
      :count,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The attack information for the specified SubResource.</p>
    #
    # @!attribute type
    #   <p>The <code>SubResource</code> type.</p>
    #
    #   Enum, one of: ["IP", "URL"]
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The unique identifier (ID) of the <code>SubResource</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute attack_vectors
    #   <p>The list of attack types and associated counters.</p>
    #
    #   @return [Array<SummarizedAttackVector>]
    #
    # @!attribute counters
    #   <p>The counters that describe the details of the attack.</p>
    #
    #   @return [Array<SummarizedCounter>]
    #
    SubResourceSummary = ::Struct.new(
      :type,
      :id,
      :attack_vectors,
      :counters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SubResourceType
    #
    module SubResourceType
      # No documentation available.
      #
      IP = "IP"

      # No documentation available.
      #
      URL = "URL"
    end

    # <p>Information about the Shield Advanced subscription for an account.</p>
    #
    # @!attribute start_time
    #   <p>The start time of the subscription, in Unix time in seconds. </p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The date and time your subscription will end.</p>
    #
    #   @return [Time]
    #
    # @!attribute time_commitment_in_seconds
    #   <p>The length, in seconds, of the Shield Advanced subscription for the account.</p>
    #
    #   @return [Integer]
    #
    # @!attribute auto_renew
    #   <p>If <code>ENABLED</code>, the subscription will be automatically renewed at the end of the existing subscription period.</p>
    #            <p>When you initally create a subscription, <code>AutoRenew</code> is set to <code>ENABLED</code>. You can change this by submitting an <code>UpdateSubscription</code> request. If the <code>UpdateSubscription</code> request does not included a value for <code>AutoRenew</code>, the existing value for <code>AutoRenew</code> remains unchanged.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute limits
    #   <p>Specifies how many protections of a given type you can create.</p>
    #
    #   @return [Array<Limit>]
    #
    # @!attribute proactive_engagement_status
    #   <p>If <code>ENABLED</code>, the Shield Response Team (SRT) will use email and phone to notify contacts about escalations to the SRT and to initiate proactive customer support.</p>
    #            <p>If <code>PENDING</code>, you have requested proactive engagement and the request is pending. The status changes to <code>ENABLED</code> when your request is fully processed.</p>
    #            <p>If <code>DISABLED</code>, the SRT will not proactively notify contacts about escalations or to initiate proactive customer support. </p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED", "PENDING"]
    #
    #   @return [String]
    #
    # @!attribute subscription_limits
    #   <p>Limits settings for your subscription. </p>
    #
    #   @return [SubscriptionLimits]
    #
    # @!attribute subscription_arn
    #   <p>The ARN (Amazon Resource Name) of the subscription.</p>
    #
    #   @return [String]
    #
    Subscription = ::Struct.new(
      :start_time,
      :end_time,
      :time_commitment_in_seconds,
      :auto_renew,
      :limits,
      :proactive_engagement_status,
      :subscription_limits,
      :subscription_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.time_commitment_in_seconds ||= 0
      end

    end

    # <p>Limits settings for your subscription. </p>
    #
    # @!attribute protection_limits
    #   <p>Limits settings on protections for your subscription. </p>
    #
    #   @return [ProtectionLimits]
    #
    # @!attribute protection_group_limits
    #   <p>Limits settings on protection groups for your subscription. </p>
    #
    #   @return [ProtectionGroupLimits]
    #
    SubscriptionLimits = ::Struct.new(
      :protection_limits,
      :protection_group_limits,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SubscriptionState
    #
    module SubscriptionState
      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      INACTIVE = "INACTIVE"
    end

    # <p>A summary of information about the attack.</p>
    #
    # @!attribute vector_type
    #   <p>The attack type, for example, SNMP reflection or SYN flood.</p>
    #
    #   @return [String]
    #
    # @!attribute vector_counters
    #   <p>The list of counters that describe the details of the attack.</p>
    #
    #   @return [Array<SummarizedCounter>]
    #
    SummarizedAttackVector = ::Struct.new(
      :vector_type,
      :vector_counters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The counter that describes a DDoS attack.</p>
    #
    # @!attribute name
    #   <p>The counter name.</p>
    #
    #   @return [String]
    #
    # @!attribute max
    #   <p>The maximum value of the counter for a specified time period.</p>
    #
    #   @return [Float]
    #
    # @!attribute average
    #   <p>The average value of the counter for a specified time period.</p>
    #
    #   @return [Float]
    #
    # @!attribute sum
    #   <p>The total of counter values for a specified time period.</p>
    #
    #   @return [Float]
    #
    # @!attribute n
    #   <p>The number of counters for a specified time period.</p>
    #
    #   @return [Integer]
    #
    # @!attribute unit
    #   <p>The unit of the counters.</p>
    #
    #   @return [String]
    #
    SummarizedCounter = ::Struct.new(
      :name,
      :max,
      :average,
      :sum,
      :n,
      :unit,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max ||= 0
        self.average ||= 0
        self.sum ||= 0
        self.n ||= 0
      end

    end

    # <p>A tag associated with an Amazon Web Services resource. Tags are key:value pairs that you can use to categorize and manage your resources, for purposes like billing or other management. Typically, the tag key represents a category, such as "environment", and the tag value represents a specific value within that category, such as "test," "development," or "production". Or you might set the tag key to "customer" and the value to the customer name or ID. You can specify one or more tags to add to each Amazon Web Services resource, up to 50 tags for a resource.</p>
    #
    # @!attribute key
    #   <p>Part of the key:value pair that defines a tag. You can use a tag key to describe a category of information, such as "customer." Tag keys are case-sensitive.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>Part of the key:value pair that defines a tag. You can use a tag value to describe a specific value within a category, such as "companyA" or "companyB." Tag values are case-sensitive.</p>
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
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to add or update tags for.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags that you want to modify or add to the resource.</p>
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

    # <p>The time range. </p>
    #
    # @!attribute from_inclusive
    #   <p>The start time, in Unix time in seconds. </p>
    #
    #   @return [Time]
    #
    # @!attribute to_exclusive
    #   <p>The end time, in Unix time in seconds. </p>
    #
    #   @return [Time]
    #
    TimeRange = ::Struct.new(
      :from_inclusive,
      :to_exclusive,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Unit
    #
    module Unit
      # No documentation available.
      #
      BITS = "BITS"

      # No documentation available.
      #
      BYTES = "BYTES"

      # No documentation available.
      #
      PACKETS = "PACKETS"

      # No documentation available.
      #
      REQUESTS = "REQUESTS"
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to remove tags from.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>The tag key for each tag that you want to remove from the resource.</p>
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

    # @!attribute resource_arn
    #   <p>The ARN (Amazon Resource Name) of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute action
    #   <p>Specifies the action setting that Shield Advanced should use in the WAF rules that it creates on behalf of the
    #      protected resource in response to DDoS attacks. You specify this as part of the configuration for the automatic application layer DDoS mitigation feature,
    #      when you enable or update automatic mitigation. Shield Advanced creates the WAF rules in a Shield Advanced-managed rule group, inside the web ACL that you have associated with the resource. </p>
    #
    #   @return [ResponseAction]
    #
    UpdateApplicationLayerAutomaticResponseInput = ::Struct.new(
      :resource_arn,
      :action,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateApplicationLayerAutomaticResponseOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute emergency_contact_list
    #   <p>A list of email addresses and phone numbers that the Shield Response Team (SRT) can use to contact you if you have proactive engagement enabled, for escalations to the SRT and to initiate proactive customer support.</p>
    #            <p>If you have proactive engagement enabled, the contact list must include at least one phone number.</p>
    #
    #   @return [Array<EmergencyContact>]
    #
    UpdateEmergencyContactSettingsInput = ::Struct.new(
      :emergency_contact_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateEmergencyContactSettingsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute protection_group_id
    #   <p>The name of the protection group. You use this to identify the protection group in lists and to manage the protection group, for example to update, delete, or describe it. </p>
    #
    #   @return [String]
    #
    # @!attribute aggregation
    #   <p>Defines how Shield combines resource data for the group in order to detect, mitigate, and report events.</p>
    #            <ul>
    #               <li>
    #                  <p>Sum - Use the total traffic across the group. This is a good choice for most cases. Examples include Elastic IP addresses for EC2 instances that scale manually or automatically.</p>
    #               </li>
    #               <li>
    #                  <p>Mean - Use the average of the traffic across the group. This is a good choice for resources that share traffic uniformly. Examples include accelerators and load balancers.</p>
    #               </li>
    #               <li>
    #                  <p>Max - Use the highest traffic from each resource. This is useful for resources that don't share traffic and for resources that share that traffic in a non-uniform way. Examples include Amazon CloudFront distributions and origin resources for CloudFront distributions.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["SUM", "MEAN", "MAX"]
    #
    #   @return [String]
    #
    # @!attribute pattern
    #   <p>The criteria to use to choose the protected resources for inclusion in the group. You can include all resources that have protections, provide a list of resource Amazon Resource Names (ARNs), or include all resources of a specified resource type.</p>
    #
    #   Enum, one of: ["ALL", "ARBITRARY", "BY_RESOURCE_TYPE"]
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The resource type to include in the protection group. All protected resources of this type are included in the protection group.
    #              You must set this when you set <code>Pattern</code> to <code>BY_RESOURCE_TYPE</code> and you must not set it for any other <code>Pattern</code> setting. </p>
    #
    #   Enum, one of: ["CLOUDFRONT_DISTRIBUTION", "ROUTE_53_HOSTED_ZONE", "ELASTIC_IP_ALLOCATION", "CLASSIC_LOAD_BALANCER", "APPLICATION_LOAD_BALANCER", "GLOBAL_ACCELERATOR"]
    #
    #   @return [String]
    #
    # @!attribute members
    #   <p>The Amazon Resource Names (ARNs) of the resources to include in the protection group. You must set this when you set <code>Pattern</code> to <code>ARBITRARY</code> and you must not set it for any other <code>Pattern</code> setting. </p>
    #
    #   @return [Array<String>]
    #
    UpdateProtectionGroupInput = ::Struct.new(
      :protection_group_id,
      :aggregation,
      :pattern,
      :resource_type,
      :members,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateProtectionGroupOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute auto_renew
    #   <p>When you initally create a subscription, <code>AutoRenew</code> is set to <code>ENABLED</code>. If <code>ENABLED</code>, the subscription will be automatically renewed at the end of the existing subscription period. You can change this by submitting an <code>UpdateSubscription</code> request. If the <code>UpdateSubscription</code> request does not included a value for <code>AutoRenew</code>, the existing value for <code>AutoRenew</code> remains unchanged.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    UpdateSubscriptionInput = ::Struct.new(
      :auto_renew,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateSubscriptionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about a particular parameter passed inside a request that resulted in an exception.</p>
    #
    # @!attribute name
    #   <p>The name of the parameter that failed validation.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The message describing why the parameter failed validation.</p>
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
      FIELD_VALIDATION_FAILED = "FIELD_VALIDATION_FAILED"

      # No documentation available.
      #
      OTHER = "OTHER"
    end

  end
end
