# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::GlobalAccelerator
  module Types

    # <p>An accelerator is a complex type that includes one or more listeners that process inbound connections and then direct
    # 			traffic to one or more endpoint groups, each of which includes endpoints, such as load balancers.</p>
    #
    # @!attribute accelerator_arn
    #   <p>The Amazon Resource Name (ARN) of the accelerator.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the accelerator. The name must contain only alphanumeric characters or
    #   			hyphens (-), and must not begin or end with a hyphen.</p>
    #
    #   @return [String]
    #
    # @!attribute ip_address_type
    #   <p>The value for the address type must be IPv4.
    #   			</p>
    #
    #   Enum, one of: ["IPV4"]
    #
    #   @return [String]
    #
    # @!attribute enabled
    #   <p>Indicates whether the accelerator is enabled. The value is true or false. The default value is true. </p>
    #   		       <p>If the value is set to true, the accelerator cannot be deleted. If set to false, accelerator can be deleted.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute ip_sets
    #   <p>The static IP addresses that Global Accelerator associates with the accelerator.</p>
    #
    #   @return [Array<IpSet>]
    #
    # @!attribute dns_name
    #   <p>The Domain Name System (DNS) name that Global Accelerator creates that points to your accelerator's static IP addresses. </p>
    #   		       <p>The naming convention for the DNS name is the following: A lowercase letter a,
    #   			followed by a 16-bit random hex string, followed by .awsglobalaccelerator.com. For example:
    #   			a1234567890abcdef.awsglobalaccelerator.com.</p>
    #   		       <p>For more information about the default DNS name, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/about-accelerators.html about-accelerators.dns-addressing">
    #   			Support for DNS Addressing in Global Accelerator</a> in the <i>AWS Global Accelerator Developer Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Describes the deployment status of the accelerator.</p>
    #
    #   Enum, one of: ["DEPLOYED", "IN_PROGRESS"]
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>The date and time that the accelerator was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modified_time
    #   <p>The date and time that the accelerator was last modified.</p>
    #
    #   @return [Time]
    #
    Accelerator = ::Struct.new(
      :accelerator_arn,
      :name,
      :ip_address_type,
      :enabled,
      :ip_sets,
      :dns_name,
      :status,
      :created_time,
      :last_modified_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Attributes of an accelerator.</p>
    #
    # @!attribute flow_logs_enabled
    #   <p>Indicates whether flow logs are enabled. The default value is false. If the value is true,
    #   				<code>FlowLogsS3Bucket</code> and <code>FlowLogsS3Prefix</code> must be specified.</p>
    #   		       <p>For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/monitoring-global-accelerator.flow-logs.html">Flow Logs</a> in
    #   			the <i>AWS Global Accelerator Developer Guide</i>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute flow_logs_s3_bucket
    #   <p>The name of the Amazon S3 bucket for the flow logs. Attribute is required if <code>FlowLogsEnabled</code> is
    #   				<code>true</code>. The bucket must exist and have a bucket policy that grants AWS Global Accelerator permission to write to the
    #   			bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute flow_logs_s3_prefix
    #   <p>The prefix for the location in the Amazon S3 bucket for the flow logs. Attribute is required if
    #   				<code>FlowLogsEnabled</code> is <code>true</code>.</p>
    #   		       <p>If you don’t specify a prefix, the flow logs are stored in the
    #   			root of the bucket. If you specify slash (/) for the S3 bucket prefix, the log file bucket folder structure will include a double slash (//), like the following:</p>
    #   		       <p>s3-bucket_name//AWSLogs/aws_account_id</p>
    #
    #   @return [String]
    #
    AcceleratorAttributes = ::Struct.new(
      :flow_logs_enabled,
      :flow_logs_s3_bucket,
      :flow_logs_s3_prefix,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The accelerator that you specified could not be disabled.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AcceleratorNotDisabledException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The accelerator that you specified doesn't exist.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AcceleratorNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AcceleratorStatus
    #
    module AcceleratorStatus
      # No documentation available.
      #
      DEPLOYED = "DEPLOYED"

      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"
    end

    # <p>You don't have access permission.</p>
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

    # @!attribute endpoint_configurations
    #   <p>The list of endpoint objects to add to a custom routing accelerator.</p>
    #
    #   @return [Array<CustomRoutingEndpointConfiguration>]
    #
    # @!attribute endpoint_group_arn
    #   <p>The Amazon Resource Name (ARN) of the endpoint group for the custom routing endpoint.</p>
    #
    #   @return [String]
    #
    AddCustomRoutingEndpointsInput = ::Struct.new(
      :endpoint_configurations,
      :endpoint_group_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute endpoint_descriptions
    #   <p>The endpoint objects added to the custom routing accelerator.</p>
    #
    #   @return [Array<CustomRoutingEndpointDescription>]
    #
    # @!attribute endpoint_group_arn
    #   <p>The Amazon Resource Name (ARN) of the endpoint group for the custom routing endpoint.</p>
    #
    #   @return [String]
    #
    AddCustomRoutingEndpointsOutput = ::Struct.new(
      :endpoint_descriptions,
      :endpoint_group_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cidr
    #   <p>The address range, in CIDR notation. This must be the exact range that you provisioned.
    #   			You can't advertise only a portion of the provisioned range.</p>
    #
    #   @return [String]
    #
    AdvertiseByoipCidrInput = ::Struct.new(
      :cidr,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute byoip_cidr
    #   <p>Information about the address range.</p>
    #
    #   @return [ByoipCidr]
    #
    AdvertiseByoipCidrOutput = ::Struct.new(
      :byoip_cidr,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute endpoint_group_arn
    #   <p>The Amazon Resource Name (ARN) of the endpoint group.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_id
    #   <p>An ID for the endpoint. For custom routing accelerators, this is the virtual private cloud (VPC) subnet ID.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_addresses
    #   <p>A list of specific Amazon EC2 instance IP addresses (destination addresses) in a subnet that you want to allow to receive
    #   			traffic. The IP addresses must be a subset of the IP addresses that you specified for the endpoint group.</p>
    #   		       <p>
    #               <code>DestinationAddresses</code> is required if <code>AllowAllTrafficToEndpoint</code> is <code>FALSE</code> or is
    #   		not specified.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute destination_ports
    #   <p>A list of specific Amazon EC2 instance ports (destination ports) that you want to allow to receive traffic.</p>
    #
    #   @return [Array<Integer>]
    #
    # @!attribute allow_all_traffic_to_endpoint
    #   <p>Indicates whether all destination IP addresses and ports for a specified VPC subnet endpoint can receive traffic
    #   			from a custom routing accelerator. The value is TRUE or FALSE. </p>
    #   		       <p>When set to TRUE, <i>all</i> destinations in the custom routing VPC subnet can receive traffic. Note
    #   			that you cannot specify destination IP addresses and ports when the value is set to TRUE.</p>
    #   		       <p>When set to FALSE (or not specified), you <i>must</i> specify a list of destination IP addresses that are allowed
    #   			to receive traffic. A list of ports is optional. If you don't specify a list of ports, the ports that can accept traffic is
    #   			the same as the ports configured for the endpoint group.</p>
    #   		       <p>The default value is FALSE.</p>
    #
    #   @return [Boolean]
    #
    AllowCustomRoutingTrafficInput = ::Struct.new(
      :endpoint_group_arn,
      :endpoint_id,
      :destination_addresses,
      :destination_ports,
      :allow_all_traffic_to_endpoint,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AllowCustomRoutingTrafficOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The listener that you specified has an endpoint group associated with it. You must remove all dependent resources
    # 			from a listener before you can delete it.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AssociatedEndpointGroupFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The accelerator that you specified has a listener associated with it. You must remove all dependent resources from an
    # 			accelerator before you can delete it.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AssociatedListenerFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about an IP address range that is provisioned for use with your AWS resources through
    # 			bring your own IP address (BYOIP).</p>
    # 		       <p>The following describes each BYOIP <code>State</code> that your IP address range can be in.</p>
    # 		       <ul>
    #             <li>
    #                <p>
    #                   <b>PENDING_PROVISIONING</b> —
    # 				You’ve submitted a request to provision an IP address range but it is not yet provisioned with
    # 				AWS Global Accelerator.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>READY</b> — The address range is provisioned
    # 				with AWS Global Accelerator and can be advertised.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>PENDING_ADVERTISING</b> — You’ve submitted a
    # 				request for AWS Global Accelerator to advertise an address range but it is not yet being advertised.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>ADVERTISING</b> — The address range is
    # 				being advertised by AWS Global Accelerator.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>PENDING_WITHDRAWING</b> — You’ve submitted
    # 				a request to withdraw an address range from being advertised but it is still being advertised
    # 				by AWS Global Accelerator.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>PENDING_DEPROVISIONING</b> — You’ve submitted a
    # 				request to deprovision an address range from AWS Global Accelerator but it is still provisioned.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>DEPROVISIONED</b> — The address range is deprovisioned
    # 				from AWS Global Accelerator.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>FAILED_PROVISION </b> — The request to
    # 				provision the address range from AWS Global Accelerator was not successful. Please make sure that
    # 				you provide all of the correct information, and try again. If the request fails
    # 				a second time, contact AWS support.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>FAILED_ADVERTISING</b> — The request for AWS Global Accelerator
    # 				to advertise the address range was not successful. Please make sure that
    # 				you provide all of the correct information, and try again. If the request fails
    # 				a second time, contact AWS support.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>FAILED_WITHDRAW</b> — The request to withdraw
    # 				the address range from advertising by AWS Global Accelerator was not successful. Please make sure that
    # 				you provide all of the correct information, and try again. If the request fails
    # 				a second time, contact AWS support.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>FAILED_DEPROVISION </b> — The request to
    # 				deprovision the address range from AWS Global Accelerator was not successful. Please make sure that
    # 				you provide all of the correct information, and try again. If the request fails
    # 				a second time, contact AWS support.</p>
    #             </li>
    #          </ul>
    #
    # @!attribute cidr
    #   <p>The address range, in CIDR notation.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the address pool.</p>
    #
    #   Enum, one of: ["PENDING_PROVISIONING", "READY", "PENDING_ADVERTISING", "ADVERTISING", "PENDING_WITHDRAWING", "PENDING_DEPROVISIONING", "DEPROVISIONED", "FAILED_PROVISION", "FAILED_ADVERTISING", "FAILED_WITHDRAW", "FAILED_DEPROVISION"]
    #
    #   @return [String]
    #
    # @!attribute events
    #   <p>A history of status changes for an IP address range that you bring to AWS Global Accelerator
    #   			through bring your own IP address (BYOIP).</p>
    #
    #   @return [Array<ByoipCidrEvent>]
    #
    ByoipCidr = ::Struct.new(
      :cidr,
      :state,
      :events,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A complex type that contains a <code>Message</code> and a <code>Timestamp</code> value for changes
    # 			that you make in the status an IP address range that you bring to AWS Global Accelerator through bring your own IP
    # 			address (BYOIP).</p>
    #
    # @!attribute message
    #   <p>A string that contains an <code>Event</code> message describing changes that you make in the status
    #   			of an IP address range that you bring to AWS Global Accelerator through bring your own IP address (BYOIP).</p>
    #
    #   @return [String]
    #
    # @!attribute timestamp
    #   <p>A timestamp when you make a status change for an IP address range that you bring to AWS Global Accelerator through
    #   			bring your own IP address (BYOIP).</p>
    #
    #   @return [Time]
    #
    ByoipCidrEvent = ::Struct.new(
      :message,
      :timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The CIDR that you specified was not found or is incorrect.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ByoipCidrNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ByoipCidrState
    #
    module ByoipCidrState
      # No documentation available.
      #
      PENDING_PROVISIONING = "PENDING_PROVISIONING"

      # No documentation available.
      #
      READY = "READY"

      # No documentation available.
      #
      PENDING_ADVERTISING = "PENDING_ADVERTISING"

      # No documentation available.
      #
      ADVERTISING = "ADVERTISING"

      # No documentation available.
      #
      PENDING_WITHDRAWING = "PENDING_WITHDRAWING"

      # No documentation available.
      #
      PENDING_DEPROVISIONING = "PENDING_DEPROVISIONING"

      # No documentation available.
      #
      DEPROVISIONED = "DEPROVISIONED"

      # No documentation available.
      #
      FAILED_PROVISION = "FAILED_PROVISION"

      # No documentation available.
      #
      FAILED_ADVERTISING = "FAILED_ADVERTISING"

      # No documentation available.
      #
      FAILED_WITHDRAW = "FAILED_WITHDRAW"

      # No documentation available.
      #
      FAILED_DEPROVISION = "FAILED_DEPROVISION"
    end

    # <p>Provides authorization for Amazon to bring a specific IP address range to a specific AWS
    # 			account using bring your own IP addresses (BYOIP). </p>
    # 		       <p>For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html">Bring Your Own
    # 			IP Addresses (BYOIP)</a> in the <i>AWS Global Accelerator Developer Guide</i>.</p>
    #
    # @!attribute message
    #   <p>The plain-text authorization message for the prefix and account.</p>
    #
    #   @return [String]
    #
    # @!attribute signature
    #   <p>The signed authorization message for the prefix and account.</p>
    #
    #   @return [String]
    #
    CidrAuthorizationContext = ::Struct.new(
      :message,
      :signature,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ClientAffinity
    #
    module ClientAffinity
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      SOURCE_IP = "SOURCE_IP"
    end

    # <p>You can't use both of those options.</p>
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

    # @!attribute name
    #   <p>The name of an accelerator. The name can have a maximum of 32 characters, must contain only alphanumeric characters or
    #   			hyphens (-), and must not begin or end with a hyphen.</p>
    #
    #   @return [String]
    #
    # @!attribute ip_address_type
    #   <p>The value for the address type must be IPv4.</p>
    #
    #   Enum, one of: ["IPV4"]
    #
    #   @return [String]
    #
    # @!attribute ip_addresses
    #   <p>Optionally, if you've added your own IP address pool to Global Accelerator (BYOIP), you can choose IP addresses
    #   			from your own pool to use for the accelerator's static IP addresses when you create an accelerator. You can
    #   			specify one or two addresses, separated by a space. Do not include the /32 suffix.</p>
    #   		       <p>Only one IP address from each of your IP address ranges can be used for each accelerator. If you specify only
    #   			one IP address from your IP address range, Global Accelerator assigns a second static IP address for the
    #   			accelerator from the AWS IP address pool.</p>
    #   		       <p>Note that you can't update IP addresses for an existing accelerator. To change them, you must create a new
    #   			accelerator with the new addresses.</p>
    #   		       <p>For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html">Bring Your Own
    #   			IP Addresses (BYOIP)</a> in the <i>AWS Global Accelerator Developer Guide</i>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute enabled
    #   <p>Indicates whether an accelerator is enabled. The value is true or false. The default value is true. </p>
    #   		       <p>If the value is set to true, an accelerator cannot be deleted. If set to false, the accelerator can be deleted.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute idempotency_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency—that is, the
    #   			uniqueness—of an accelerator.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Create tags for an accelerator.</p>
    #   		       <p>For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/tagging-in-global-accelerator.html">Tagging
    #   			in AWS Global Accelerator</a> in the <i>AWS Global Accelerator Developer Guide</i>.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateAcceleratorInput = ::Struct.new(
      :name,
      :ip_address_type,
      :ip_addresses,
      :enabled,
      :idempotency_token,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accelerator
    #   <p>The accelerator that is created by specifying a listener and the supported IP address types.</p>
    #
    #   @return [Accelerator]
    #
    CreateAcceleratorOutput = ::Struct.new(
      :accelerator,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of a custom routing accelerator. The name can have a maximum of 64 characters, must contain
    #   		only alphanumeric characters or hyphens (-), and must not begin or end with a hyphen.</p>
    #
    #   @return [String]
    #
    # @!attribute ip_address_type
    #   <p>The value for the address type must be IPv4.</p>
    #
    #   Enum, one of: ["IPV4"]
    #
    #   @return [String]
    #
    # @!attribute ip_addresses
    #   <p>Optionally, if you've added your own IP address pool to Global Accelerator (BYOIP), you can choose IP addresses
    #   				from your own pool to use for the accelerator's static IP addresses when you create an accelerator. You can
    #   				specify one or two addresses, separated by a space. Do not include the /32 suffix.</p>
    #   			      <p>Only one IP address from each of your IP address ranges can be used for each accelerator. If you specify only
    #   				one IP address from your IP address range, Global Accelerator assigns a second static IP address for the
    #   				accelerator from the AWS IP address pool.</p>
    #   			      <p>Note that you can't update IP addresses for an existing accelerator. To change them, you must create a new
    #   				accelerator with the new addresses.</p>
    #   			      <p>For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html">Bring
    #   				your own IP addresses (BYOIP)</a> in the <i>AWS Global Accelerator Developer Guide</i>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute enabled
    #   <p>Indicates whether an accelerator is enabled. The value is true or false. The default value is true. </p>
    #   	        <p>If the value is set to true, an accelerator cannot be deleted. If set to false, the accelerator can be deleted.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute idempotency_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency—that
    #   			is, the uniqueness—of the request.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Create tags for an accelerator.</p>
    #   	        <p>For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/tagging-in-global-accelerator.html">Tagging
    #   		in AWS Global Accelerator</a> in the <i>AWS Global Accelerator Developer Guide</i>.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateCustomRoutingAcceleratorInput = ::Struct.new(
      :name,
      :ip_address_type,
      :ip_addresses,
      :enabled,
      :idempotency_token,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accelerator
    #   <p>The accelerator that is created.</p>
    #
    #   @return [CustomRoutingAccelerator]
    #
    CreateCustomRoutingAcceleratorOutput = ::Struct.new(
      :accelerator,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute listener_arn
    #   <p>The Amazon Resource Name (ARN) of the listener for a custom routing endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_group_region
    #   <p>The AWS Region where the endpoint group is located. A listener can have only one endpoint group in a
    #   		specific Region.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_configurations
    #   <p>Sets the port range and protocol for all endpoints (virtual private cloud subnets) in a custom routing endpoint group to accept
    #   		client traffic on.</p>
    #
    #   @return [Array<CustomRoutingDestinationConfiguration>]
    #
    # @!attribute idempotency_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency—that is, the
    #   		uniqueness—of the request.</p>
    #
    #   @return [String]
    #
    CreateCustomRoutingEndpointGroupInput = ::Struct.new(
      :listener_arn,
      :endpoint_group_region,
      :destination_configurations,
      :idempotency_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute endpoint_group
    #   <p>The information about the endpoint group created for a custom routing accelerator.</p>
    #
    #   @return [CustomRoutingEndpointGroup]
    #
    CreateCustomRoutingEndpointGroupOutput = ::Struct.new(
      :endpoint_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accelerator_arn
    #   <p>The Amazon Resource Name (ARN) of the accelerator for a custom routing listener.</p>
    #
    #   @return [String]
    #
    # @!attribute port_ranges
    #   <p>The port range to support for connections from clients to your accelerator.</p>
    #   	        <p>Separately, you set port ranges for endpoints. For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/about-custom-routing-endpoints.html">About
    #   		endpoints for custom routing accelerators</a>.</p>
    #
    #   @return [Array<PortRange>]
    #
    # @!attribute idempotency_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency—that is, the
    #   		uniqueness—of the request.</p>
    #
    #   @return [String]
    #
    CreateCustomRoutingListenerInput = ::Struct.new(
      :accelerator_arn,
      :port_ranges,
      :idempotency_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute listener
    #   <p>The listener that you've created for a custom routing accelerator.</p>
    #
    #   @return [CustomRoutingListener]
    #
    CreateCustomRoutingListenerOutput = ::Struct.new(
      :listener,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute listener_arn
    #   <p>The Amazon Resource Name (ARN) of the listener.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_group_region
    #   <p>The AWS Region where the endpoint group is located. A listener can have only one endpoint group in a
    #   			specific Region.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_configurations
    #   <p>The list of endpoint objects.</p>
    #
    #   @return [Array<EndpointConfiguration>]
    #
    # @!attribute traffic_dial_percentage
    #   <p>The percentage of traffic to send to an AWS Region. Additional traffic is distributed to other endpoint groups for
    #   			this listener. </p>
    #   		       <p>Use this action to increase (dial up) or decrease (dial down) traffic to a specific Region. The percentage is
    #   			applied to the traffic that would otherwise have been routed to the Region based on optimal routing.</p>
    #   		       <p>The default value is 100.</p>
    #
    #   @return [Float]
    #
    # @!attribute health_check_port
    #   <p>The port that AWS Global Accelerator uses to check the health of endpoints that are part of this endpoint group. The default port
    #   			is the listener port that this endpoint group is associated with. If listener port is a list of ports, Global Accelerator uses the
    #   			first port in the list.</p>
    #
    #   @return [Integer]
    #
    # @!attribute health_check_protocol
    #   <p>The protocol that AWS Global Accelerator uses to check the health of endpoints that are part of this endpoint group. The default
    #   			value is TCP.</p>
    #
    #   Enum, one of: ["TCP", "HTTP", "HTTPS"]
    #
    #   @return [String]
    #
    # @!attribute health_check_path
    #   <p>If the protocol is HTTP/S, then this specifies the path that is the destination for health check targets. The
    #   			default value is slash (/).</p>
    #
    #   @return [String]
    #
    # @!attribute health_check_interval_seconds
    #   <p>The time—10 seconds or 30 seconds—between each health check for an endpoint. The default value is 30.</p>
    #
    #   @return [Integer]
    #
    # @!attribute threshold_count
    #   <p>The number of consecutive health checks required to set the state of a healthy endpoint to unhealthy, or to set an
    #   			unhealthy endpoint to healthy. The default value is 3.</p>
    #
    #   @return [Integer]
    #
    # @!attribute idempotency_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency—that is, the
    #   			uniqueness—of the request.</p>
    #
    #   @return [String]
    #
    # @!attribute port_overrides
    #   <p>Override specific listener ports used to route traffic to endpoints that are part of this endpoint group.
    #   			For example, you can create a port override in which the listener
    #   			receives user traffic on ports 80 and 443, but your accelerator routes that traffic to ports 1080
    #   			and 1443, respectively, on the endpoints.</p>
    #   		       <p>For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/about-endpoint-groups-port-override.html">
    #   			Port overrides</a> in the <i>AWS Global Accelerator Developer Guide</i>.</p>
    #
    #   @return [Array<PortOverride>]
    #
    CreateEndpointGroupInput = ::Struct.new(
      :listener_arn,
      :endpoint_group_region,
      :endpoint_configurations,
      :traffic_dial_percentage,
      :health_check_port,
      :health_check_protocol,
      :health_check_path,
      :health_check_interval_seconds,
      :threshold_count,
      :idempotency_token,
      :port_overrides,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute endpoint_group
    #   <p>The information about the endpoint group that was created.</p>
    #
    #   @return [EndpointGroup]
    #
    CreateEndpointGroupOutput = ::Struct.new(
      :endpoint_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accelerator_arn
    #   <p>The Amazon Resource Name (ARN) of your accelerator.</p>
    #
    #   @return [String]
    #
    # @!attribute port_ranges
    #   <p>The list of port ranges to support for connections from clients to your accelerator.</p>
    #
    #   @return [Array<PortRange>]
    #
    # @!attribute protocol
    #   <p>The protocol for connections from clients to your accelerator.</p>
    #
    #   Enum, one of: ["TCP", "UDP"]
    #
    #   @return [String]
    #
    # @!attribute client_affinity
    #   <p>Client affinity lets you direct all requests from a user to the same endpoint, if you have stateful applications,
    #   			regardless of the port and protocol of the client request. Client affinity gives you control over whether to always
    #   			route each client to the same specific endpoint.</p>
    #   		       <p>AWS Global Accelerator uses a consistent-flow hashing algorithm to choose the optimal endpoint for a connection. If client
    #   			affinity is <code>NONE</code>, Global Accelerator uses the "five-tuple" (5-tuple) properties—source IP address, source port,
    #   			destination IP address, destination port, and protocol—to select the hash value, and then chooses the best
    #   			endpoint. However, with this setting, if someone uses different ports to connect to Global Accelerator, their connections might not
    #   			be always routed to the same endpoint because the hash value changes. </p>
    #   		       <p>If you want a given client to always be routed to the same endpoint, set client affinity to <code>SOURCE_IP</code>
    #   			instead. When you use the <code>SOURCE_IP</code> setting, Global Accelerator uses the "two-tuple" (2-tuple) properties—
    #   			source (client) IP address and destination IP address—to select the hash value.</p>
    #   		       <p>The default value is <code>NONE</code>.</p>
    #
    #   Enum, one of: ["NONE", "SOURCE_IP"]
    #
    #   @return [String]
    #
    # @!attribute idempotency_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency—that is, the
    #   			uniqueness—of the request.</p>
    #
    #   @return [String]
    #
    CreateListenerInput = ::Struct.new(
      :accelerator_arn,
      :port_ranges,
      :protocol,
      :client_affinity,
      :idempotency_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute listener
    #   <p>The listener that you've created.</p>
    #
    #   @return [Listener]
    #
    CreateListenerOutput = ::Struct.new(
      :listener,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Attributes of a custom routing accelerator.</p>
    #
    # @!attribute accelerator_arn
    #   <p>The Amazon Resource Name (ARN) of the custom routing accelerator.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the accelerator. The name must contain only alphanumeric characters or
    #   			hyphens (-), and must not begin or end with a hyphen.</p>
    #
    #   @return [String]
    #
    # @!attribute ip_address_type
    #   <p>The value for the address type must be IPv4.</p>
    #
    #   Enum, one of: ["IPV4"]
    #
    #   @return [String]
    #
    # @!attribute enabled
    #   <p>Indicates whether the accelerator is enabled. The value is true or false. The default value is true. </p>
    #   		       <p>If the value is set to true, the accelerator cannot be deleted. If set to false, accelerator can be deleted.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute ip_sets
    #   <p>The static IP addresses that Global Accelerator associates with the accelerator.</p>
    #
    #   @return [Array<IpSet>]
    #
    # @!attribute dns_name
    #   <p>The Domain Name System (DNS) name that Global Accelerator creates that points to your accelerator's static IP addresses. </p>
    #   		       <p>The naming convention for the DNS name is the following: A lowercase letter a,
    #   			followed by a 16-bit random hex string, followed by .awsglobalaccelerator.com. For example:
    #   			a1234567890abcdef.awsglobalaccelerator.com.</p>
    #   		       <p>For more information about the default DNS name, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/about-accelerators.html about-accelerators.dns-addressing">
    #   			Support for DNS Addressing in Global Accelerator</a> in the <i>AWS Global Accelerator Developer Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Describes the deployment status of the accelerator.</p>
    #
    #   Enum, one of: ["DEPLOYED", "IN_PROGRESS"]
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>The date and time that the accelerator was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modified_time
    #   <p>The date and time that the accelerator was last modified.</p>
    #
    #   @return [Time]
    #
    CustomRoutingAccelerator = ::Struct.new(
      :accelerator_arn,
      :name,
      :ip_address_type,
      :enabled,
      :ip_sets,
      :dns_name,
      :status,
      :created_time,
      :last_modified_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Attributes of a custom routing accelerator.</p>
    #
    # @!attribute flow_logs_enabled
    #   <p>Indicates whether flow logs are enabled. The default value is false. If the value is true,
    #   			<code>FlowLogsS3Bucket</code> and <code>FlowLogsS3Prefix</code> must be specified.</p>
    #   		       <p>For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/monitoring-global-accelerator.flow-logs.html">Flow Logs</a> in
    #   			the <i>AWS Global Accelerator Developer Guide</i>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute flow_logs_s3_bucket
    #   <p>The name of the Amazon S3 bucket for the flow logs. Attribute is required if <code>FlowLogsEnabled</code> is
    #   			<code>true</code>. The bucket must exist and have a bucket policy that grants AWS Global Accelerator permission to write to the
    #   			bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute flow_logs_s3_prefix
    #   <p>The prefix for the location in the Amazon S3 bucket for the flow logs. Attribute is required if
    #   			<code>FlowLogsEnabled</code> is <code>true</code>.</p>
    #   		       <p>If you don’t specify a prefix, the flow logs are stored in the
    #   			root of the bucket. If you specify slash (/) for the S3 bucket prefix, the log file bucket folder structure will include a double slash (//), like the following:</p>
    #   		       <p>DOC-EXAMPLE-BUCKET//AWSLogs/aws_account_id</p>
    #
    #   @return [String]
    #
    CustomRoutingAcceleratorAttributes = ::Struct.new(
      :flow_logs_enabled,
      :flow_logs_s3_bucket,
      :flow_logs_s3_prefix,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CustomRoutingAcceleratorStatus
    #
    module CustomRoutingAcceleratorStatus
      # No documentation available.
      #
      DEPLOYED = "DEPLOYED"

      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"
    end

    # <p>For a custom routing accelerator, sets the port range and protocol for all endpoints (virtual
    # 			private cloud subnets) in an endpoint group to accept client traffic on.</p>
    #
    # @!attribute from_port
    #   <p>The first port, inclusive, in the range of ports for the endpoint group that is associated with a custom routing accelerator.</p>
    #
    #   @return [Integer]
    #
    # @!attribute to_port
    #   <p>The last port, inclusive, in the range of ports for the endpoint group that is associated with a custom routing accelerator.</p>
    #
    #   @return [Integer]
    #
    # @!attribute protocols
    #   <p>The protocol for the endpoint group that is associated with a custom routing accelerator. The protocol can be either TCP or UDP.</p>
    #
    #   @return [Array<String>]
    #
    CustomRoutingDestinationConfiguration = ::Struct.new(
      :from_port,
      :to_port,
      :protocols,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>For a custom routing accelerator, describes the port range and protocol for all endpoints
    # 			(virtual private cloud subnets) in an endpoint group to accept client traffic on.</p>
    #
    # @!attribute from_port
    #   <p>The first port, inclusive, in the range of ports for the endpoint group that is associated with a custom routing accelerator.</p>
    #
    #   @return [Integer]
    #
    # @!attribute to_port
    #   <p>The last port, inclusive, in the range of ports for the endpoint group that is associated with a custom routing accelerator.</p>
    #
    #   @return [Integer]
    #
    # @!attribute protocols
    #   <p>The protocol for the endpoint group that is associated with a custom routing accelerator. The protocol can be either TCP or UDP.</p>
    #
    #   @return [Array<String>]
    #
    CustomRoutingDestinationDescription = ::Struct.new(
      :from_port,
      :to_port,
      :protocols,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CustomRoutingDestinationTrafficState
    #
    module CustomRoutingDestinationTrafficState
      # No documentation available.
      #
      ALLOW = "ALLOW"

      # No documentation available.
      #
      DENY = "DENY"
    end

    # <p>The list of endpoint objects. For custom routing, this is a list of virtual private cloud (VPC) subnet IDs.</p>
    #
    # @!attribute endpoint_id
    #   <p>An ID for the endpoint. For custom routing accelerators, this is the virtual private cloud (VPC)
    #   			subnet ID. </p>
    #
    #   @return [String]
    #
    CustomRoutingEndpointConfiguration = ::Struct.new(
      :endpoint_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A complex type for an endpoint for a custom routing accelerator. Each endpoint group can include one or more endpoints,
    # 			which are virtual private cloud (VPC) subnets.</p>
    #
    # @!attribute endpoint_id
    #   <p>An ID for the endpoint. For custom routing accelerators, this is the virtual private cloud (VPC)
    #   			subnet ID. </p>
    #
    #   @return [String]
    #
    CustomRoutingEndpointDescription = ::Struct.new(
      :endpoint_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A complex type for the endpoint group for a custom routing accelerator. An AWS Region can have only one endpoint group for a specific listener.
    # 		</p>
    #
    # @!attribute endpoint_group_arn
    #   <p>The Amazon Resource Name (ARN) of the endpoint group.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_group_region
    #   <p>The AWS Region where the endpoint group is located.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_descriptions
    #   <p>For a custom routing accelerator, describes the port range and protocol for all endpoints
    #   			(virtual private cloud subnets) in an endpoint group to accept client traffic on.</p>
    #
    #   @return [Array<CustomRoutingDestinationDescription>]
    #
    # @!attribute endpoint_descriptions
    #   <p>For a custom routing accelerator, describes the endpoints (virtual private cloud subnets) in an
    #   			endpoint group to accept client traffic on.</p>
    #
    #   @return [Array<CustomRoutingEndpointDescription>]
    #
    CustomRoutingEndpointGroup = ::Struct.new(
      :endpoint_group_arn,
      :endpoint_group_region,
      :destination_descriptions,
      :endpoint_descriptions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A complex type for a listener for a custom routing accelerator.</p>
    #
    # @!attribute listener_arn
    #   <p>The Amazon Resource Name (ARN) of the listener.</p>
    #
    #   @return [String]
    #
    # @!attribute port_ranges
    #   <p>The port range to support for connections from clients to your accelerator.</p>
    #   		       <p>Separately, you set port ranges for endpoints. For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/about-custom-routing-endpoints.html">About
    #   				endpoints for custom routing accelerators</a>.</p>
    #
    #   @return [Array<PortRange>]
    #
    CustomRoutingListener = ::Struct.new(
      :listener_arn,
      :port_ranges,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CustomRoutingProtocol
    #
    module CustomRoutingProtocol
      # No documentation available.
      #
      TCP = "TCP"

      # No documentation available.
      #
      UDP = "UDP"
    end

    # @!attribute accelerator_arn
    #   <p>The Amazon Resource Name (ARN) of an accelerator.</p>
    #
    #   @return [String]
    #
    DeleteAcceleratorInput = ::Struct.new(
      :accelerator_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteAcceleratorOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accelerator_arn
    #   <p>The Amazon Resource Name (ARN) of the custom routing accelerator to delete.</p>
    #
    #   @return [String]
    #
    DeleteCustomRoutingAcceleratorInput = ::Struct.new(
      :accelerator_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteCustomRoutingAcceleratorOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute endpoint_group_arn
    #   <p>The Amazon Resource Name (ARN) of the endpoint group to delete.</p>
    #
    #   @return [String]
    #
    DeleteCustomRoutingEndpointGroupInput = ::Struct.new(
      :endpoint_group_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteCustomRoutingEndpointGroupOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute listener_arn
    #   <p>The Amazon Resource Name (ARN) of the listener to delete.</p>
    #
    #   @return [String]
    #
    DeleteCustomRoutingListenerInput = ::Struct.new(
      :listener_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteCustomRoutingListenerOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute endpoint_group_arn
    #   <p>The Amazon Resource Name (ARN) of the endpoint group to delete.</p>
    #
    #   @return [String]
    #
    DeleteEndpointGroupInput = ::Struct.new(
      :endpoint_group_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteEndpointGroupOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute listener_arn
    #   <p>The Amazon Resource Name (ARN) of the listener.</p>
    #
    #   @return [String]
    #
    DeleteListenerInput = ::Struct.new(
      :listener_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteListenerOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute endpoint_group_arn
    #   <p>The Amazon Resource Name (ARN) of the endpoint group.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_id
    #   <p>An ID for the endpoint. For custom routing accelerators, this is the virtual private cloud (VPC) subnet ID.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_addresses
    #   <p>A list of specific Amazon EC2 instance IP addresses (destination addresses) in a subnet that you want to prevent from receiving
    #   			traffic. The IP addresses must be a subset of the IP addresses allowed for the VPC subnet associated with the
    #   			endpoint group.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute destination_ports
    #   <p>A list of specific Amazon EC2 instance ports (destination ports) in a subnet endpoint that you want to prevent from
    #   			receiving traffic.</p>
    #
    #   @return [Array<Integer>]
    #
    # @!attribute deny_all_traffic_to_endpoint
    #   <p>Indicates whether all destination IP addresses and ports for a specified VPC subnet endpoint <i>cannot</i>
    #   			receive traffic from a custom routing accelerator. The value is TRUE or FALSE. </p>
    #   		       <p>When set to TRUE, <i>no</i> destinations in the custom routing VPC subnet can receive traffic. Note
    #   			that you cannot specify destination IP addresses and ports when the value is set to TRUE.</p>
    #   		       <p>When set to FALSE (or not specified), you <i>must</i> specify a list of destination IP addresses that cannot receive
    #   			traffic. A list of ports is optional. If you don't specify a list of ports, the ports that can accept traffic is
    #   			the same as the ports configured for the endpoint group.</p>
    #   		       <p>The default value is FALSE.</p>
    #
    #   @return [Boolean]
    #
    DenyCustomRoutingTrafficInput = ::Struct.new(
      :endpoint_group_arn,
      :endpoint_id,
      :destination_addresses,
      :destination_ports,
      :deny_all_traffic_to_endpoint,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DenyCustomRoutingTrafficOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cidr
    #   <p>The address range, in CIDR notation. The prefix must be the same prefix that you specified
    #   			when you provisioned the address range.</p>
    #
    #   @return [String]
    #
    DeprovisionByoipCidrInput = ::Struct.new(
      :cidr,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute byoip_cidr
    #   <p>Information about the address range.</p>
    #
    #   @return [ByoipCidr]
    #
    DeprovisionByoipCidrOutput = ::Struct.new(
      :byoip_cidr,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accelerator_arn
    #   <p>The Amazon Resource Name (ARN) of the accelerator with the attributes that you want to describe.</p>
    #
    #   @return [String]
    #
    DescribeAcceleratorAttributesInput = ::Struct.new(
      :accelerator_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accelerator_attributes
    #   <p>The attributes of the accelerator.</p>
    #
    #   @return [AcceleratorAttributes]
    #
    DescribeAcceleratorAttributesOutput = ::Struct.new(
      :accelerator_attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accelerator_arn
    #   <p>The Amazon Resource Name (ARN) of the accelerator to describe.</p>
    #
    #   @return [String]
    #
    DescribeAcceleratorInput = ::Struct.new(
      :accelerator_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accelerator
    #   <p>The description of the accelerator.</p>
    #
    #   @return [Accelerator]
    #
    DescribeAcceleratorOutput = ::Struct.new(
      :accelerator,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accelerator_arn
    #   <p>The Amazon Resource Name (ARN) of the custom routing accelerator to describe the attributes for.</p>
    #
    #   @return [String]
    #
    DescribeCustomRoutingAcceleratorAttributesInput = ::Struct.new(
      :accelerator_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accelerator_attributes
    #   <p>The attributes of the custom routing accelerator.</p>
    #
    #   @return [CustomRoutingAcceleratorAttributes]
    #
    DescribeCustomRoutingAcceleratorAttributesOutput = ::Struct.new(
      :accelerator_attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accelerator_arn
    #   <p>The Amazon Resource Name (ARN) of the accelerator to describe.</p>
    #
    #   @return [String]
    #
    DescribeCustomRoutingAcceleratorInput = ::Struct.new(
      :accelerator_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accelerator
    #   <p>The description of the custom routing accelerator.</p>
    #
    #   @return [CustomRoutingAccelerator]
    #
    DescribeCustomRoutingAcceleratorOutput = ::Struct.new(
      :accelerator,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute endpoint_group_arn
    #   <p>The Amazon Resource Name (ARN) of the endpoint group to describe.</p>
    #
    #   @return [String]
    #
    DescribeCustomRoutingEndpointGroupInput = ::Struct.new(
      :endpoint_group_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute endpoint_group
    #   <p>The description of an endpoint group for a custom routing accelerator.</p>
    #
    #   @return [CustomRoutingEndpointGroup]
    #
    DescribeCustomRoutingEndpointGroupOutput = ::Struct.new(
      :endpoint_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute listener_arn
    #   <p>The Amazon Resource Name (ARN) of the listener to describe.</p>
    #
    #   @return [String]
    #
    DescribeCustomRoutingListenerInput = ::Struct.new(
      :listener_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute listener
    #   <p>The description of a listener for a custom routing accelerator.</p>
    #
    #   @return [CustomRoutingListener]
    #
    DescribeCustomRoutingListenerOutput = ::Struct.new(
      :listener,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute endpoint_group_arn
    #   <p>The Amazon Resource Name (ARN) of the endpoint group to describe.</p>
    #
    #   @return [String]
    #
    DescribeEndpointGroupInput = ::Struct.new(
      :endpoint_group_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute endpoint_group
    #   <p>The description of an endpoint group.</p>
    #
    #   @return [EndpointGroup]
    #
    DescribeEndpointGroupOutput = ::Struct.new(
      :endpoint_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute listener_arn
    #   <p>The Amazon Resource Name (ARN) of the listener to describe.</p>
    #
    #   @return [String]
    #
    DescribeListenerInput = ::Struct.new(
      :listener_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute listener
    #   <p>The description of a listener.</p>
    #
    #   @return [Listener]
    #
    DescribeListenerOutput = ::Struct.new(
      :listener,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The port mappings for a specified endpoint IP address (destination).</p>
    #
    # @!attribute accelerator_arn
    #   <p>The Amazon Resource Name (ARN) of the custom routing accelerator
    #   			that you have port mappings for.</p>
    #
    #   @return [String]
    #
    # @!attribute accelerator_socket_addresses
    #   <p>The IP address/port combinations (sockets) that map to a given destination socket
    #   			address.</p>
    #
    #   @return [Array<SocketAddress>]
    #
    # @!attribute endpoint_group_arn
    #   <p>The Amazon Resource Name (ARN) of the endpoint group.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_id
    #   <p>The ID for the virtual private cloud (VPC) subnet.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_group_region
    #   <p>The AWS Region for the endpoint group.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_socket_address
    #   <p>The endpoint IP address/port combination for traffic received on the accelerator socket address.</p>
    #
    #   @return [SocketAddress]
    #
    # @!attribute ip_address_type
    #   <p>The IP address type, which must be IPv4.</p>
    #
    #   Enum, one of: ["IPV4"]
    #
    #   @return [String]
    #
    # @!attribute destination_traffic_state
    #   <p>Indicates whether or not a port mapping destination can receive traffic. The value is either ALLOW, if
    #   			traffic is allowed to the destination, or DENY, if traffic is not allowed to the destination.</p>
    #
    #   Enum, one of: ["ALLOW", "DENY"]
    #
    #   @return [String]
    #
    DestinationPortMapping = ::Struct.new(
      :accelerator_arn,
      :accelerator_socket_addresses,
      :endpoint_group_arn,
      :endpoint_id,
      :endpoint_group_region,
      :destination_socket_address,
      :ip_address_type,
      :destination_traffic_state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The endpoint that you specified doesn't exist.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    EndpointAlreadyExistsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A complex type for endpoints. A resource must be valid and active when you add it as an endpoint.</p>
    #
    # @!attribute endpoint_id
    #   <p>An ID for the endpoint. If the endpoint is a Network Load Balancer or Application Load Balancer, this is the Amazon
    #   			Resource Name (ARN) of the resource. If the endpoint is an Elastic IP address, this is the Elastic IP address
    #   			allocation ID. For Amazon EC2 instances, this is the EC2 instance ID. A resource must be valid and active
    #   			when you add it as an endpoint.</p>
    #   		       <p>An Application Load Balancer can be either internal or internet-facing.</p>
    #
    #   @return [String]
    #
    # @!attribute weight
    #   <p>The weight associated with the endpoint. When you add weights to endpoints, you configure AWS Global Accelerator to route traffic
    #   			based on proportions that you specify. For example, you might specify endpoint weights of 4, 5, 5, and 6 (sum=20). The
    #   			result is that 4/20 of your traffic, on average, is routed to the first endpoint, 5/20 is routed both to the second
    #   			and third endpoints, and 6/20 is routed to the last endpoint. For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/about-endpoints-endpoint-weights.html">Endpoint Weights</a> in the
    #   				<i>AWS Global Accelerator Developer Guide</i>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute client_ip_preservation_enabled
    #   <p>Indicates whether client IP address preservation is enabled for an Application Load Balancer endpoint.
    #   			The value is true or false. The default value is true for new accelerators. </p>
    #   		       <p>If the value is set to true, the client's IP address is preserved in the <code>X-Forwarded-For</code> request header as
    #   			traffic travels to applications on the Application Load Balancer endpoint fronted by the accelerator.</p>
    #   		       <p>For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/preserve-client-ip-address.html">
    #   			Preserve Client IP Addresses in AWS Global Accelerator</a> in the <i>AWS Global Accelerator Developer Guide</i>.</p>
    #
    #   @return [Boolean]
    #
    EndpointConfiguration = ::Struct.new(
      :endpoint_id,
      :weight,
      :client_ip_preservation_enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A complex type for an endpoint. Each endpoint group can include one or more endpoints, such as load
    # 			balancers.</p>
    #
    # @!attribute endpoint_id
    #   <p>An ID for the endpoint. If the endpoint is a Network Load Balancer or Application Load Balancer, this is the Amazon
    #   			Resource Name (ARN) of the resource. If the endpoint is an Elastic IP address, this is the Elastic IP address
    #   			allocation ID. For Amazon EC2 instances, this is the EC2 instance ID. </p>
    #   		       <p>An Application Load Balancer can be either internal or internet-facing.</p>
    #
    #   @return [String]
    #
    # @!attribute weight
    #   <p>The weight associated with the endpoint. When you add weights to endpoints, you configure AWS Global Accelerator to route traffic
    #   			based on proportions that you specify. For example, you might specify endpoint weights of 4, 5, 5, and 6 (sum=20). The
    #   			result is that 4/20 of your traffic, on average, is routed to the first endpoint, 5/20 is routed both to the second
    #   			and third endpoints, and 6/20 is routed to the last endpoint. For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/about-endpoints-endpoint-weights.html">Endpoint Weights</a> in the
    #   				<i>AWS Global Accelerator Developer Guide</i>. </p>
    #
    #   @return [Integer]
    #
    # @!attribute health_state
    #   <p>The health status of the endpoint.</p>
    #
    #   Enum, one of: ["INITIAL", "HEALTHY", "UNHEALTHY"]
    #
    #   @return [String]
    #
    # @!attribute health_reason
    #   <p>Returns a null result.</p>
    #
    #   @return [String]
    #
    # @!attribute client_ip_preservation_enabled
    #   <p>Indicates whether client IP address preservation is enabled for an Application Load Balancer endpoint.
    #   			The value is true or false. The default value is true for new accelerators. </p>
    #   		       <p>If the value is set to true, the client's IP address is preserved in the <code>X-Forwarded-For</code> request header as
    #   			traffic travels to applications on the Application Load Balancer endpoint fronted by the accelerator.</p>
    #   		       <p>For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/introduction-how-it-works-client-ip.html">
    #   			Viewing Client IP Addresses in AWS Global Accelerator</a> in the <i>AWS Global Accelerator Developer Guide</i>.</p>
    #
    #   @return [Boolean]
    #
    EndpointDescription = ::Struct.new(
      :endpoint_id,
      :weight,
      :health_state,
      :health_reason,
      :client_ip_preservation_enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A complex type for the endpoint group. An AWS Region can have only one endpoint group for a specific listener.
    # 		</p>
    #
    # @!attribute endpoint_group_arn
    #   <p>The Amazon Resource Name (ARN) of the endpoint group.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_group_region
    #   <p>The AWS Region where the endpoint group is located.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_descriptions
    #   <p>The list of endpoint objects.</p>
    #
    #   @return [Array<EndpointDescription>]
    #
    # @!attribute traffic_dial_percentage
    #   <p>The percentage of traffic to send to an AWS Region. Additional traffic is distributed to other endpoint groups for
    #   			this listener. </p>
    #   		       <p>Use this action to increase (dial up) or decrease (dial down) traffic to a specific Region. The percentage is
    #   			applied to the traffic that would otherwise have been routed to the Region based on optimal routing.</p>
    #   		       <p>The default value is 100.</p>
    #
    #   @return [Float]
    #
    # @!attribute health_check_port
    #   <p>The port that Global Accelerator uses to perform health checks on endpoints that are part of this endpoint group. </p>
    #   		
    #   		       <p>The default port is the port for the listener that this endpoint group is associated with. If the listener port is a
    #   			list, Global Accelerator uses the first specified port in the list of ports.</p>
    #
    #   @return [Integer]
    #
    # @!attribute health_check_protocol
    #   <p>The protocol that Global Accelerator uses to perform health checks on endpoints that are part of this endpoint group. The default
    #   			value is TCP.</p>
    #
    #   Enum, one of: ["TCP", "HTTP", "HTTPS"]
    #
    #   @return [String]
    #
    # @!attribute health_check_path
    #   <p>If the protocol is HTTP/S, then this value provides the ping path that Global Accelerator uses for the destination on the
    #   			endpoints for health checks. The default is slash (/).</p>
    #
    #   @return [String]
    #
    # @!attribute health_check_interval_seconds
    #   <p>The time—10 seconds or 30 seconds—between health checks for each endpoint. The default value is 30.</p>
    #
    #   @return [Integer]
    #
    # @!attribute threshold_count
    #   <p>The number of consecutive health checks required to set the state of a healthy endpoint to unhealthy, or to set an
    #   			unhealthy endpoint to healthy. The default value is 3.</p>
    #
    #   @return [Integer]
    #
    # @!attribute port_overrides
    #   <p>Allows you to override the destination ports used to route traffic to an endpoint.
    #   			Using a port override lets you to map a list of external destination ports (that your
    #   			users send traffic to) to a list of internal destination ports that you want an application
    #   			endpoint to receive traffic on. </p>
    #
    #   @return [Array<PortOverride>]
    #
    EndpointGroup = ::Struct.new(
      :endpoint_group_arn,
      :endpoint_group_region,
      :endpoint_descriptions,
      :traffic_dial_percentage,
      :health_check_port,
      :health_check_protocol,
      :health_check_path,
      :health_check_interval_seconds,
      :threshold_count,
      :port_overrides,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The endpoint group that you specified already exists.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    EndpointGroupAlreadyExistsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The endpoint group that you specified doesn't exist.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    EndpointGroupNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The endpoint that you specified doesn't exist.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    EndpointNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for HealthCheckProtocol
    #
    module HealthCheckProtocol
      # No documentation available.
      #
      TCP = "TCP"

      # No documentation available.
      #
      HTTP = "HTTP"

      # No documentation available.
      #
      HTTPS = "HTTPS"
    end

    # Includes enum constants for HealthState
    #
    module HealthState
      # No documentation available.
      #
      INITIAL = "INITIAL"

      # No documentation available.
      #
      HEALTHY = "HEALTHY"

      # No documentation available.
      #
      UNHEALTHY = "UNHEALTHY"
    end

    # <p>The CIDR that you specified is not valid for this action. For example, the state of the CIDR might be
    # 		incorrect for this action.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    IncorrectCidrStateException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>There was an internal error for AWS Global Accelerator.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InternalServiceErrorException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An argument that you specified is invalid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidArgumentException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>There isn't another item to return.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidNextTokenException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The port numbers that you specified are not valid numbers or are not unique for this accelerator.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidPortRangeException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for IpAddressType
    #
    module IpAddressType
      # No documentation available.
      #
      IPV4 = "IPV4"
    end

    # <p>A complex type for the set of IP addresses for an accelerator.</p>
    #
    # @!attribute ip_family
    #   <p>The types of IP addresses included in this IP set.</p>
    #
    #   @return [String]
    #
    # @!attribute ip_addresses
    #   <p>The array of IP addresses in the IP address set. An IP address set can have a maximum of two IP addresses.</p>
    #
    #   @return [Array<String>]
    #
    IpSet = ::Struct.new(
      :ip_family,
      :ip_addresses,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Processing your request would cause you to exceed an AWS Global Accelerator limit.</p>
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

    # @!attribute max_results
    #   <p>The number of Global Accelerator objects that you want to return with this call. The default value is 10.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    #
    #   @return [String]
    #
    ListAcceleratorsInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accelerators
    #   <p>The list of accelerators for a customer account.</p>
    #
    #   @return [Array<Accelerator>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    #
    #   @return [String]
    #
    ListAcceleratorsOutput = ::Struct.new(
      :accelerators,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return with a single call. To retrieve the remaining results, make
    #   			another call with the returned <code>nextToken</code> value.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #
    #   @return [String]
    #
    ListByoipCidrsInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute byoip_cidrs
    #   <p>Information about your address ranges.</p>
    #
    #   @return [Array<ByoipCidr>]
    #
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #
    #   @return [String]
    #
    ListByoipCidrsOutput = ::Struct.new(
      :byoip_cidrs,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>The number of custom routing Global Accelerator objects that you want to return with this call. The default value is 10.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    #
    #   @return [String]
    #
    ListCustomRoutingAcceleratorsInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accelerators
    #   <p>The list of custom routing accelerators for a customer account.</p>
    #
    #   @return [Array<CustomRoutingAccelerator>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    #
    #   @return [String]
    #
    ListCustomRoutingAcceleratorsOutput = ::Struct.new(
      :accelerators,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute listener_arn
    #   <p>The Amazon Resource Name (ARN) of the listener to list endpoint groups for.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The number of endpoint group objects that you want to return with this call. The default value is 10.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    #
    #   @return [String]
    #
    ListCustomRoutingEndpointGroupsInput = ::Struct.new(
      :listener_arn,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute endpoint_groups
    #   <p>The list of the endpoint groups associated with a listener for a custom routing accelerator.</p>
    #
    #   @return [Array<CustomRoutingEndpointGroup>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    #
    #   @return [String]
    #
    ListCustomRoutingEndpointGroupsOutput = ::Struct.new(
      :endpoint_groups,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accelerator_arn
    #   <p>The Amazon Resource Name (ARN) of the accelerator to list listeners for.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The number of listener objects that you want to return with this call. The default value is 10.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    #
    #   @return [String]
    #
    ListCustomRoutingListenersInput = ::Struct.new(
      :accelerator_arn,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute listeners
    #   <p>The list of listeners for a custom routing accelerator.</p>
    #
    #   @return [Array<CustomRoutingListener>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    #
    #   @return [String]
    #
    ListCustomRoutingListenersOutput = ::Struct.new(
      :listeners,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute endpoint_id
    #   <p>The ID for the virtual private cloud (VPC) subnet.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_address
    #   <p>The endpoint IP address in a virtual private cloud (VPC) subnet for which you want to receive back port
    #   		mappings.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The number of destination port mappings that you want to return with this call. The default value is 10.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    #
    #   @return [String]
    #
    ListCustomRoutingPortMappingsByDestinationInput = ::Struct.new(
      :endpoint_id,
      :destination_address,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute destination_port_mappings
    #   <p>The port mappings for the endpoint IP address that you specified in the request.</p>
    #
    #   @return [Array<DestinationPortMapping>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    #
    #   @return [String]
    #
    ListCustomRoutingPortMappingsByDestinationOutput = ::Struct.new(
      :destination_port_mappings,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accelerator_arn
    #   <p>The Amazon Resource Name (ARN) of the accelerator to list the custom routing port mappings for.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_group_arn
    #   <p>The Amazon Resource Name (ARN) of the endpoint group to list the custom routing port mappings for.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The number of destination port mappings that you want to return with this call. The default value is 10.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    #
    #   @return [String]
    #
    ListCustomRoutingPortMappingsInput = ::Struct.new(
      :accelerator_arn,
      :endpoint_group_arn,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute port_mappings
    #   <p>The port mappings for a custom routing accelerator.</p>
    #
    #   @return [Array<PortMapping>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    #
    #   @return [String]
    #
    ListCustomRoutingPortMappingsOutput = ::Struct.new(
      :port_mappings,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute listener_arn
    #   <p>The Amazon Resource Name (ARN) of the listener.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The number of endpoint group objects that you want to return with this call. The default value is 10.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    #
    #   @return [String]
    #
    ListEndpointGroupsInput = ::Struct.new(
      :listener_arn,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute endpoint_groups
    #   <p>The list of the endpoint groups associated with a listener.</p>
    #
    #   @return [Array<EndpointGroup>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    #
    #   @return [String]
    #
    ListEndpointGroupsOutput = ::Struct.new(
      :endpoint_groups,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accelerator_arn
    #   <p>The Amazon Resource Name (ARN) of the accelerator for which you want to list listener objects.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The number of listener objects that you want to return with this call. The default value is 10.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    #
    #   @return [String]
    #
    ListListenersInput = ::Struct.new(
      :accelerator_arn,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute listeners
    #   <p>The list of listeners for an accelerator.</p>
    #
    #   @return [Array<Listener>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    #
    #   @return [String]
    #
    ListListenersOutput = ::Struct.new(
      :listeners,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the accelerator to list tags for. An ARN uniquely identifies an accelerator.</p>
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
    #   <p>Root level tag for the Tags parameters.</p>
    #
    #   @return [Array<Tag>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A complex type for a listener.</p>
    #
    # @!attribute listener_arn
    #   <p>The Amazon Resource Name (ARN) of the listener.</p>
    #
    #   @return [String]
    #
    # @!attribute port_ranges
    #   <p>The list of port ranges for the connections from clients to the accelerator.</p>
    #
    #   @return [Array<PortRange>]
    #
    # @!attribute protocol
    #   <p>The protocol for the connections from clients to the accelerator.</p>
    #
    #   Enum, one of: ["TCP", "UDP"]
    #
    #   @return [String]
    #
    # @!attribute client_affinity
    #   <p>Client affinity lets you direct all requests from a user to the same endpoint, if you have stateful applications,
    #   			regardless of the port and protocol of the client request. Client affinity gives you control over whether to always
    #   			route each client to the same specific endpoint.</p>
    #   		       <p>AWS Global Accelerator uses a consistent-flow hashing algorithm to choose the optimal endpoint for a connection. If client
    #   			affinity is <code>NONE</code>, Global Accelerator uses the "five-tuple" (5-tuple) properties—source IP address, source port,
    #   			destination IP address, destination port, and protocol—to select the hash value, and then chooses the best
    #   			endpoint. However, with this setting, if someone uses different ports to connect to Global Accelerator, their connections might not
    #   			be always routed to the same endpoint because the hash value changes. </p>
    #   		       <p>If you want a given client to always be routed to the same endpoint, set client affinity to <code>SOURCE_IP</code>
    #   			instead. When you use the <code>SOURCE_IP</code> setting, Global Accelerator uses the "two-tuple" (2-tuple) properties—
    #   			source (client) IP address and destination IP address—to select the hash value.</p>
    #   		       <p>The default value is <code>NONE</code>.</p>
    #
    #   Enum, one of: ["NONE", "SOURCE_IP"]
    #
    #   @return [String]
    #
    Listener = ::Struct.new(
      :listener_arn,
      :port_ranges,
      :protocol,
      :client_affinity,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The listener that you specified doesn't exist.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ListenerNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns the ports and associated IP addresses and ports of Amazon EC2 instances in your virtual
    # 			private cloud (VPC) subnets. Custom routing is a port mapping protocol in AWS Global Accelerator that
    # 			statically associates port ranges with VPC subnets, which allows Global Accelerator to route to
    # 			specific instances and ports within one or more subnets. </p>
    #
    # @!attribute accelerator_port
    #   <p>The accelerator port.</p>
    #
    #   @return [Integer]
    #
    # @!attribute endpoint_group_arn
    #   <p>The Amazon Resource Name (ARN) of the endpoint group.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_id
    #   <p>The IP address of the VPC subnet (the subnet ID).</p>
    #
    #   @return [String]
    #
    # @!attribute destination_socket_address
    #   <p>The EC2 instance IP address and port number in the virtual private cloud (VPC) subnet.</p>
    #
    #   @return [SocketAddress]
    #
    # @!attribute protocols
    #   <p>The protocols supported by the endpoint group.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute destination_traffic_state
    #   <p>Indicates whether or not a port mapping destination can receive traffic. The value is either ALLOW, if
    #   			traffic is allowed to the destination, or DENY, if traffic is not allowed to the destination.</p>
    #
    #   Enum, one of: ["ALLOW", "DENY"]
    #
    #   @return [String]
    #
    PortMapping = ::Struct.new(
      :accelerator_port,
      :endpoint_group_arn,
      :endpoint_id,
      :destination_socket_address,
      :protocols,
      :destination_traffic_state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Override specific listener ports used to route traffic to endpoints that are part of an endpoint group.
    # 			For example, you can create a port override in which the listener
    # 			receives user traffic on ports 80 and 443, but your accelerator routes that traffic to ports 1080
    # 			and 1443, respectively, on the endpoints.</p>
    # 		       <p>For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/about-endpoint-groups-port-override.html">
    # 			Port overrides</a> in the <i>AWS Global Accelerator Developer Guide</i>.</p>
    #
    # @!attribute listener_port
    #   <p>The listener port that you want to map to a specific endpoint port. This is the port that user traffic
    #   		arrives to the Global Accelerator on.</p>
    #
    #   @return [Integer]
    #
    # @!attribute endpoint_port
    #   <p>The endpoint port that you want a listener port to be mapped to. This is the port on the endpoint,
    #   			such as the Application Load Balancer or Amazon EC2 instance.</p>
    #
    #   @return [Integer]
    #
    PortOverride = ::Struct.new(
      :listener_port,
      :endpoint_port,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A complex type for a range of ports for a listener.</p>
    #
    # @!attribute from_port
    #   <p>The first port in the range of ports, inclusive.</p>
    #
    #   @return [Integer]
    #
    # @!attribute to_port
    #   <p>The last port in the range of ports, inclusive.</p>
    #
    #   @return [Integer]
    #
    PortRange = ::Struct.new(
      :from_port,
      :to_port,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Protocol
    #
    module Protocol
      # No documentation available.
      #
      TCP = "TCP"

      # No documentation available.
      #
      UDP = "UDP"
    end

    # @!attribute cidr
    #   <p>The public IPv4 address range, in CIDR notation. The most specific IP prefix that you can
    #   			specify is /24. The address range cannot overlap with another address range that you've brought
    #   			to this or another Region.</p>
    #
    #   @return [String]
    #
    # @!attribute cidr_authorization_context
    #   <p>A signed document that proves that you are authorized to bring the specified IP address range to
    #   			Amazon using BYOIP.
    #   		</p>
    #
    #   @return [CidrAuthorizationContext]
    #
    ProvisionByoipCidrInput = ::Struct.new(
      :cidr,
      :cidr_authorization_context,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute byoip_cidr
    #   <p>Information about the address range.</p>
    #
    #   @return [ByoipCidr]
    #
    ProvisionByoipCidrOutput = ::Struct.new(
      :byoip_cidr,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute endpoint_ids
    #   <p>The IDs for the endpoints. For custom routing accelerators, endpoint IDs are the virtual private cloud (VPC)
    #   		subnet IDs. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute endpoint_group_arn
    #   <p>The Amazon Resource Name (ARN) of the endpoint group to remove endpoints from.</p>
    #
    #   @return [String]
    #
    RemoveCustomRoutingEndpointsInput = ::Struct.new(
      :endpoint_ids,
      :endpoint_group_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    RemoveCustomRoutingEndpointsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An IP address/port combination.</p>
    #
    # @!attribute ip_address
    #   <p>The IP address for the socket address.</p>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>The port for the socket address.</p>
    #
    #   @return [Integer]
    #
    SocketAddress = ::Struct.new(
      :ip_address,
      :port,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A complex type that contains a <code>Tag</code> key and <code>Tag</code> value.</p>
    #
    # @!attribute key
    #   <p>A string that contains a <code>Tag</code> key.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>A string that contains a <code>Tag</code> value.</p>
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
    #   <p>The Amazon Resource Name (ARN) of the Global Accelerator resource to add tags to. An ARN uniquely identifies a resource.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to add to a resource. A tag consists of a key and a value that you define.</p>
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

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Global Accelerator resource to remove tags from. An ARN uniquely identifies a resource.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>The tag key pairs that you want to remove from the specified resources.</p>
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

    # @!attribute accelerator_arn
    #   <p>The Amazon Resource Name (ARN) of the accelerator that you want to update.</p>
    #
    #   @return [String]
    #
    # @!attribute flow_logs_enabled
    #   <p>Update whether flow logs are enabled. The default value is false. If the value is true,
    #   				<code>FlowLogsS3Bucket</code> and <code>FlowLogsS3Prefix</code> must be specified.</p>
    #   		       <p>For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/monitoring-global-accelerator.flow-logs.html">Flow Logs</a> in
    #   			the <i>AWS Global Accelerator Developer Guide</i>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute flow_logs_s3_bucket
    #   <p>The name of the Amazon S3 bucket for the flow logs. Attribute is required if <code>FlowLogsEnabled</code> is
    #   				<code>true</code>. The bucket must exist and have a bucket policy that grants AWS Global Accelerator permission to write to the
    #   			bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute flow_logs_s3_prefix
    #   <p>Update the prefix for the location in the Amazon S3 bucket for the flow logs. Attribute is required if
    #   				<code>FlowLogsEnabled</code> is <code>true</code>. </p>
    #   		       <p>If you don’t specify a prefix, the flow logs are stored in the
    #   			root of the bucket. If you specify slash (/) for the S3 bucket prefix, the log file bucket folder structure will include a double slash (//), like the following:</p>
    #   			      <p>s3-bucket_name//AWSLogs/aws_account_id</p>
    #
    #   @return [String]
    #
    UpdateAcceleratorAttributesInput = ::Struct.new(
      :accelerator_arn,
      :flow_logs_enabled,
      :flow_logs_s3_bucket,
      :flow_logs_s3_prefix,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accelerator_attributes
    #   <p>Updated attributes for the accelerator.</p>
    #
    #   @return [AcceleratorAttributes]
    #
    UpdateAcceleratorAttributesOutput = ::Struct.new(
      :accelerator_attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accelerator_arn
    #   <p>The Amazon Resource Name (ARN) of the accelerator to update.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the accelerator. The name can have a maximum of 32 characters, must contain only alphanumeric characters or
    #   			hyphens (-), and must not begin or end with a hyphen.</p>
    #
    #   @return [String]
    #
    # @!attribute ip_address_type
    #   <p>The IP address type, which must be IPv4.</p>
    #
    #   Enum, one of: ["IPV4"]
    #
    #   @return [String]
    #
    # @!attribute enabled
    #   <p>Indicates whether an accelerator is enabled. The value is true or false. The default value is true. </p>
    #   		       <p>If the value is set to true, the accelerator cannot be deleted. If set to false, the accelerator can be deleted.</p>
    #
    #   @return [Boolean]
    #
    UpdateAcceleratorInput = ::Struct.new(
      :accelerator_arn,
      :name,
      :ip_address_type,
      :enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accelerator
    #   <p>Information about the updated accelerator.</p>
    #
    #   @return [Accelerator]
    #
    UpdateAcceleratorOutput = ::Struct.new(
      :accelerator,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accelerator_arn
    #   <p>The Amazon Resource Name (ARN) of the custom routing accelerator to update attributes for.</p>
    #
    #   @return [String]
    #
    # @!attribute flow_logs_enabled
    #   <p>Update whether flow logs are enabled. The default value is false. If the value is true,
    #   		<code>FlowLogsS3Bucket</code> and <code>FlowLogsS3Prefix</code> must be specified.</p>
    #   	        <p>For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/monitoring-global-accelerator.flow-logs.html">Flow Logs</a> in
    #   		the <i>AWS Global Accelerator Developer Guide</i>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute flow_logs_s3_bucket
    #   <p>The name of the Amazon S3 bucket for the flow logs. Attribute is required if <code>FlowLogsEnabled</code> is
    #   		<code>true</code>. The bucket must exist and have a bucket policy that grants AWS Global Accelerator permission to write to the
    #   		bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute flow_logs_s3_prefix
    #   <p>Update the prefix for the location in the Amazon S3 bucket for the flow logs. Attribute is required if
    #   		<code>FlowLogsEnabled</code> is <code>true</code>. </p>
    #   	        <p>If you don’t specify a prefix, the flow logs are stored in the
    #   		root of the bucket. If you specify slash (/) for the S3 bucket prefix, the log file bucket folder structure will include a double slash (//), like the following:</p>
    #   	        <p>DOC-EXAMPLE-BUCKET//AWSLogs/aws_account_id</p>
    #
    #   @return [String]
    #
    UpdateCustomRoutingAcceleratorAttributesInput = ::Struct.new(
      :accelerator_arn,
      :flow_logs_enabled,
      :flow_logs_s3_bucket,
      :flow_logs_s3_prefix,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accelerator_attributes
    #   <p>Updated custom routing accelerator.</p>
    #
    #   @return [CustomRoutingAcceleratorAttributes]
    #
    UpdateCustomRoutingAcceleratorAttributesOutput = ::Struct.new(
      :accelerator_attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accelerator_arn
    #   <p>The Amazon Resource Name (ARN) of the accelerator to update.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the accelerator. The name can have a maximum of 32 characters, must contain only alphanumeric characters or
    #   		hyphens (-), and must not begin or end with a hyphen.</p>
    #
    #   @return [String]
    #
    # @!attribute ip_address_type
    #   <p>The value for the address type must be IPv4.</p>
    #
    #   Enum, one of: ["IPV4"]
    #
    #   @return [String]
    #
    # @!attribute enabled
    #   <p>Indicates whether an accelerator is enabled. The value is true or false. The default value is true. </p>
    #   	        <p>If the value is set to true, the accelerator cannot be deleted. If set to false, the accelerator can be deleted.</p>
    #
    #   @return [Boolean]
    #
    UpdateCustomRoutingAcceleratorInput = ::Struct.new(
      :accelerator_arn,
      :name,
      :ip_address_type,
      :enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accelerator
    #   <p>Information about the updated custom routing accelerator.</p>
    #
    #   @return [CustomRoutingAccelerator]
    #
    UpdateCustomRoutingAcceleratorOutput = ::Struct.new(
      :accelerator,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute listener_arn
    #   <p>The Amazon Resource Name (ARN) of the listener to update.</p>
    #
    #   @return [String]
    #
    # @!attribute port_ranges
    #   <p>The updated port range to support for connections from clients to your accelerator. If you remove ports that are
    #   	currently being used by a subnet endpoint, the call fails.</p>
    #   	        <p>Separately, you set port ranges for endpoints. For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/about-custom-routing-endpoints.html">About
    #   		endpoints for custom routing accelerators</a>.</p>
    #
    #   @return [Array<PortRange>]
    #
    UpdateCustomRoutingListenerInput = ::Struct.new(
      :listener_arn,
      :port_ranges,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute listener
    #   <p>Information for the updated listener for a custom routing accelerator.</p>
    #
    #   @return [CustomRoutingListener]
    #
    UpdateCustomRoutingListenerOutput = ::Struct.new(
      :listener,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute endpoint_group_arn
    #   <p>The Amazon Resource Name (ARN) of the endpoint group.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_configurations
    #   <p>The list of endpoint objects. A resource must be valid and active when you add it as an endpoint.</p>
    #
    #   @return [Array<EndpointConfiguration>]
    #
    # @!attribute traffic_dial_percentage
    #   <p>The percentage of traffic to send to an AWS Region. Additional traffic is distributed to other endpoint groups for
    #   			this listener. </p>
    #   		       <p>Use this action to increase (dial up) or decrease (dial down) traffic to a specific Region. The percentage is
    #   			applied to the traffic that would otherwise have been routed to the Region based on optimal routing.</p>
    #   		       <p>The default value is 100.</p>
    #
    #   @return [Float]
    #
    # @!attribute health_check_port
    #   <p>The port that AWS Global Accelerator uses to check the health of endpoints that are part of this endpoint group. The default port
    #   			is the listener port that this endpoint group is associated with. If the listener port is a list of ports, Global Accelerator uses
    #   			the first port in the list.</p>
    #
    #   @return [Integer]
    #
    # @!attribute health_check_protocol
    #   <p>The protocol that AWS Global Accelerator uses to check the health of endpoints that are part of this endpoint group. The default
    #   			value is TCP.</p>
    #
    #   Enum, one of: ["TCP", "HTTP", "HTTPS"]
    #
    #   @return [String]
    #
    # @!attribute health_check_path
    #   <p>If the protocol is HTTP/S, then this specifies the path that is the destination for health check targets. The
    #   			default value is slash (/).</p>
    #
    #   @return [String]
    #
    # @!attribute health_check_interval_seconds
    #   <p>The time—10 seconds or 30 seconds—between each health check for an endpoint. The default value is 30.</p>
    #
    #   @return [Integer]
    #
    # @!attribute threshold_count
    #   <p>The number of consecutive health checks required to set the state of a healthy endpoint to unhealthy, or to set an
    #   			unhealthy endpoint to healthy. The default value is 3.</p>
    #
    #   @return [Integer]
    #
    # @!attribute port_overrides
    #   <p>Override specific listener ports used to route traffic to endpoints that are part of this endpoint group.
    #   			For example, you can create a port override in which the listener
    #   			receives user traffic on ports 80 and 443, but your accelerator routes that traffic to ports 1080
    #   			and 1443, respectively, on the endpoints.</p>
    #   		       <p>For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/about-endpoint-groups-port-override.html">
    #   			Port overrides</a> in the <i>AWS Global Accelerator Developer Guide</i>.</p>
    #
    #   @return [Array<PortOverride>]
    #
    UpdateEndpointGroupInput = ::Struct.new(
      :endpoint_group_arn,
      :endpoint_configurations,
      :traffic_dial_percentage,
      :health_check_port,
      :health_check_protocol,
      :health_check_path,
      :health_check_interval_seconds,
      :threshold_count,
      :port_overrides,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute endpoint_group
    #   <p>The information about the endpoint group that was updated.</p>
    #
    #   @return [EndpointGroup]
    #
    UpdateEndpointGroupOutput = ::Struct.new(
      :endpoint_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute listener_arn
    #   <p>The Amazon Resource Name (ARN) of the listener to update.</p>
    #
    #   @return [String]
    #
    # @!attribute port_ranges
    #   <p>The updated list of port ranges for the connections from clients to the accelerator.</p>
    #
    #   @return [Array<PortRange>]
    #
    # @!attribute protocol
    #   <p>The updated protocol for the connections from clients to the accelerator.</p>
    #
    #   Enum, one of: ["TCP", "UDP"]
    #
    #   @return [String]
    #
    # @!attribute client_affinity
    #   <p>Client affinity lets you direct all requests from a user to the same endpoint, if you have stateful applications,
    #   			regardless of the port and protocol of the client request. Client affinity gives you control over whether to always
    #   			route each client to the same specific endpoint.</p>
    #   		       <p>AWS Global Accelerator uses a consistent-flow hashing algorithm to choose the optimal endpoint for a connection. If client
    #   			affinity is <code>NONE</code>, Global Accelerator uses the "five-tuple" (5-tuple) properties—source IP address, source port,
    #   			destination IP address, destination port, and protocol—to select the hash value, and then chooses the best
    #   			endpoint. However, with this setting, if someone uses different ports to connect to Global Accelerator, their connections might not
    #   			be always routed to the same endpoint because the hash value changes. </p>
    #   		       <p>If you want a given client to always be routed to the same endpoint, set client affinity to <code>SOURCE_IP</code>
    #   			instead. When you use the <code>SOURCE_IP</code> setting, Global Accelerator uses the "two-tuple" (2-tuple) properties—
    #   			source (client) IP address and destination IP address—to select the hash value.</p>
    #   		       <p>The default value is <code>NONE</code>.</p>
    #
    #   Enum, one of: ["NONE", "SOURCE_IP"]
    #
    #   @return [String]
    #
    UpdateListenerInput = ::Struct.new(
      :listener_arn,
      :port_ranges,
      :protocol,
      :client_affinity,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute listener
    #   <p>Information for the updated listener.</p>
    #
    #   @return [Listener]
    #
    UpdateListenerOutput = ::Struct.new(
      :listener,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cidr
    #   <p>The address range, in CIDR notation.</p>
    #
    #   @return [String]
    #
    WithdrawByoipCidrInput = ::Struct.new(
      :cidr,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute byoip_cidr
    #   <p>Information about the address pool.</p>
    #
    #   @return [ByoipCidr]
    #
    WithdrawByoipCidrOutput = ::Struct.new(
      :byoip_cidr,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
