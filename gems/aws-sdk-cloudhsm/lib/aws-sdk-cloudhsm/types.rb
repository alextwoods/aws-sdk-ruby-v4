# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CloudHSM
  module Types

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS CloudHSM resource to tag.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_list
    #   <p>One or more tags.</p>
    #
    #   @return [Array<Tag>]
    #
    AddTagsToResourceInput = ::Struct.new(
      :resource_arn,
      :tag_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute status
    #   <p>The status of the operation.</p>
    #
    #   @return [String]
    #
    AddTagsToResourceOutput = ::Struct.new(
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ClientVersion
    #
    module ClientVersion
      # No documentation available.
      #
      FIVE_ONE = "5.1"

      # No documentation available.
      #
      FIVE_THREE = "5.3"
    end

    # <p>Indicates that an internal error occurred.</p>
    #
    # @!attribute message
    #   <p>Additional information about the error.</p>
    #
    #   @return [String]
    #
    # @!attribute retryable
    #   <p>Indicates if the action can be retried.</p>
    #
    #   @return [Boolean]
    #
    CloudHsmInternalException = ::Struct.new(
      :message,
      :retryable,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.retryable ||= false
      end

    end

    # Includes enum constants for CloudHsmObjectState
    #
    module CloudHsmObjectState
      # No documentation available.
      #
      READY = "READY"

      # No documentation available.
      #
      UPDATING = "UPDATING"

      # No documentation available.
      #
      DEGRADED = "DEGRADED"
    end

    # <p>Indicates that an exception occurred in the AWS CloudHSM service.</p>
    #
    # @!attribute message
    #   <p>Additional information about the error.</p>
    #
    #   @return [String]
    #
    # @!attribute retryable
    #   <p>Indicates if the action can be retried.</p>
    #
    #   @return [Boolean]
    #
    CloudHsmServiceException = ::Struct.new(
      :message,
      :retryable,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.retryable ||= false
      end

    end

    # <p>Contains the inputs for the <a>CreateHapgRequest</a> action.</p>
    #
    # @!attribute label
    #   <p>The label of the new high-availability partition group.</p>
    #
    #   @return [String]
    #
    CreateHapgInput = ::Struct.new(
      :label,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the output of the <a>CreateHAPartitionGroup</a> action.</p>
    #
    # @!attribute hapg_arn
    #   <p>The ARN of the high-availability partition group.</p>
    #
    #   @return [String]
    #
    CreateHapgOutput = ::Struct.new(
      :hapg_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the inputs for the <code>CreateHsm</code> operation.</p>
    #
    # @!attribute subnet_id
    #   <p>The identifier of the subnet in your VPC in which to place the HSM.</p>
    #
    #   @return [String]
    #
    # @!attribute ssh_key
    #   <p>The SSH public key to install on the HSM.</p>
    #
    #   @return [String]
    #
    # @!attribute eni_ip
    #   <p>The IP address to assign to the HSM's ENI.</p>
    #            <p>If an IP address is not specified, an IP address will be randomly chosen from the CIDR
    #         range of the subnet.</p>
    #
    #   @return [String]
    #
    # @!attribute iam_role_arn
    #   <p>The ARN of an IAM role to enable the AWS CloudHSM service to allocate an ENI on your
    #         behalf.</p>
    #
    #   @return [String]
    #
    # @!attribute external_id
    #   <p>The external ID from <code>IamRoleArn</code>, if present.</p>
    #
    #   @return [String]
    #
    # @!attribute subscription_type
    #   <p>Specifies the type of subscription for the HSM.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>PRODUCTION</b> - The HSM is being used in a production
    #             environment.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>TRIAL</b> - The HSM is being used in a product
    #             trial.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["PRODUCTION"]
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>A user-defined token to ensure idempotence. Subsequent calls to this operation with the
    #         same token will be ignored.</p>
    #
    #   @return [String]
    #
    # @!attribute syslog_ip
    #   <p>The IP address for the syslog monitoring server. The AWS CloudHSM service only supports one
    #         syslog monitoring server.</p>
    #
    #   @return [String]
    #
    CreateHsmInput = ::Struct.new(
      :subnet_id,
      :ssh_key,
      :eni_ip,
      :iam_role_arn,
      :external_id,
      :subscription_type,
      :client_token,
      :syslog_ip,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the output of the <code>CreateHsm</code> operation.</p>
    #
    # @!attribute hsm_arn
    #   <p>The ARN of the HSM.</p>
    #
    #   @return [String]
    #
    CreateHsmOutput = ::Struct.new(
      :hsm_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the inputs for the <a>CreateLunaClient</a> action.</p>
    #
    # @!attribute label
    #   <p>The label for the client.</p>
    #
    #   @return [String]
    #
    # @!attribute certificate
    #   <p>The contents of a Base64-Encoded X.509 v3 certificate to be installed on the HSMs used
    #         by this client.</p>
    #
    #   @return [String]
    #
    CreateLunaClientInput = ::Struct.new(
      :label,
      :certificate,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the output of the <a>CreateLunaClient</a> action.</p>
    #
    # @!attribute client_arn
    #   <p>The ARN of the client.</p>
    #
    #   @return [String]
    #
    CreateLunaClientOutput = ::Struct.new(
      :client_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the inputs for the <a>DeleteHapg</a> action.</p>
    #
    # @!attribute hapg_arn
    #   <p>The ARN of the high-availability partition group to delete.</p>
    #
    #   @return [String]
    #
    DeleteHapgInput = ::Struct.new(
      :hapg_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the output of the <a>DeleteHapg</a> action.</p>
    #
    # @!attribute status
    #   <p>The status of the action.</p>
    #
    #   @return [String]
    #
    DeleteHapgOutput = ::Struct.new(
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the inputs for the <a>DeleteHsm</a> operation.</p>
    #
    # @!attribute hsm_arn
    #   <p>The ARN of the HSM to delete.</p>
    #
    #   @return [String]
    #
    DeleteHsmInput = ::Struct.new(
      :hsm_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the output of the <a>DeleteHsm</a> operation.</p>
    #
    # @!attribute status
    #   <p>The status of the operation.</p>
    #
    #   @return [String]
    #
    DeleteHsmOutput = ::Struct.new(
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute client_arn
    #   <p>The ARN of the client to delete.</p>
    #
    #   @return [String]
    #
    DeleteLunaClientInput = ::Struct.new(
      :client_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute status
    #   <p>The status of the action.</p>
    #
    #   @return [String]
    #
    DeleteLunaClientOutput = ::Struct.new(
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the inputs for the <a>DescribeHapg</a> action.</p>
    #
    # @!attribute hapg_arn
    #   <p>The ARN of the high-availability partition group to describe.</p>
    #
    #   @return [String]
    #
    DescribeHapgInput = ::Struct.new(
      :hapg_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the output of the <a>DescribeHapg</a> action.</p>
    #
    # @!attribute hapg_arn
    #   <p>The ARN of the high-availability partition group.</p>
    #
    #   @return [String]
    #
    # @!attribute hapg_serial
    #   <p>The serial number of the high-availability partition group.</p>
    #
    #   @return [String]
    #
    # @!attribute hsms_last_action_failed
    #   <p></p>
    #
    #   @return [Array<String>]
    #
    # @!attribute hsms_pending_deletion
    #   <p></p>
    #
    #   @return [Array<String>]
    #
    # @!attribute hsms_pending_registration
    #   <p></p>
    #
    #   @return [Array<String>]
    #
    # @!attribute label
    #   <p>The label for the high-availability partition group.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified_timestamp
    #   <p>The date and time the high-availability partition group was last modified.</p>
    #
    #   @return [String]
    #
    # @!attribute partition_serial_list
    #   <p>The list of partition serial numbers that belong to the high-availability partition
    #         group.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute state
    #   <p>The state of the high-availability partition group.</p>
    #
    #   Enum, one of: ["READY", "UPDATING", "DEGRADED"]
    #
    #   @return [String]
    #
    DescribeHapgOutput = ::Struct.new(
      :hapg_arn,
      :hapg_serial,
      :hsms_last_action_failed,
      :hsms_pending_deletion,
      :hsms_pending_registration,
      :label,
      :last_modified_timestamp,
      :partition_serial_list,
      :state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the inputs for the <a>DescribeHsm</a> operation.</p>
    #
    # @!attribute hsm_arn
    #   <p>The ARN of the HSM. Either the <code>HsmArn</code> or the <code>SerialNumber</code>
    #         parameter must be specified.</p>
    #
    #   @return [String]
    #
    # @!attribute hsm_serial_number
    #   <p>The serial number of the HSM. Either the <code>HsmArn</code> or the
    #           <code>HsmSerialNumber</code> parameter must be specified.</p>
    #
    #   @return [String]
    #
    DescribeHsmInput = ::Struct.new(
      :hsm_arn,
      :hsm_serial_number,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the output of the <a>DescribeHsm</a> operation.</p>
    #
    # @!attribute hsm_arn
    #   <p>The ARN of the HSM.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the HSM.</p>
    #
    #   Enum, one of: ["PENDING", "RUNNING", "UPDATING", "SUSPENDED", "TERMINATING", "TERMINATED", "DEGRADED"]
    #
    #   @return [String]
    #
    # @!attribute status_details
    #   <p>Contains additional information about the status of the HSM.</p>
    #
    #   @return [String]
    #
    # @!attribute availability_zone
    #   <p>The Availability Zone that the HSM is in.</p>
    #
    #   @return [String]
    #
    # @!attribute eni_id
    #   <p>The identifier of the elastic network interface (ENI) attached to the HSM.</p>
    #
    #   @return [String]
    #
    # @!attribute eni_ip
    #   <p>The IP address assigned to the HSM's ENI.</p>
    #
    #   @return [String]
    #
    # @!attribute subscription_type
    #   <p>Specifies the type of subscription for the HSM.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>PRODUCTION</b> - The HSM is being used in a production
    #             environment.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>TRIAL</b> - The HSM is being used in a product
    #             trial.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["PRODUCTION"]
    #
    #   @return [String]
    #
    # @!attribute subscription_start_date
    #   <p>The subscription start date.</p>
    #
    #   @return [String]
    #
    # @!attribute subscription_end_date
    #   <p>The subscription end date.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_id
    #   <p>The identifier of the VPC that the HSM is in.</p>
    #
    #   @return [String]
    #
    # @!attribute subnet_id
    #   <p>The identifier of the subnet that the HSM is in.</p>
    #
    #   @return [String]
    #
    # @!attribute iam_role_arn
    #   <p>The ARN of the IAM role assigned to the HSM.</p>
    #
    #   @return [String]
    #
    # @!attribute serial_number
    #   <p>The serial number of the HSM.</p>
    #
    #   @return [String]
    #
    # @!attribute vendor_name
    #   <p>The name of the HSM vendor.</p>
    #
    #   @return [String]
    #
    # @!attribute hsm_type
    #   <p>The HSM model type.</p>
    #
    #   @return [String]
    #
    # @!attribute software_version
    #   <p>The HSM software version.</p>
    #
    #   @return [String]
    #
    # @!attribute ssh_public_key
    #   <p>The public SSH key.</p>
    #
    #   @return [String]
    #
    # @!attribute ssh_key_last_updated
    #   <p>The date and time that the SSH key was last updated.</p>
    #
    #   @return [String]
    #
    # @!attribute server_cert_uri
    #   <p>The URI of the certificate server.</p>
    #
    #   @return [String]
    #
    # @!attribute server_cert_last_updated
    #   <p>The date and time that the server certificate was last updated.</p>
    #
    #   @return [String]
    #
    # @!attribute partitions
    #   <p>The list of partitions on the HSM.</p>
    #
    #   @return [Array<String>]
    #
    DescribeHsmOutput = ::Struct.new(
      :hsm_arn,
      :status,
      :status_details,
      :availability_zone,
      :eni_id,
      :eni_ip,
      :subscription_type,
      :subscription_start_date,
      :subscription_end_date,
      :vpc_id,
      :subnet_id,
      :iam_role_arn,
      :serial_number,
      :vendor_name,
      :hsm_type,
      :software_version,
      :ssh_public_key,
      :ssh_key_last_updated,
      :server_cert_uri,
      :server_cert_last_updated,
      :partitions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute client_arn
    #   <p>The ARN of the client.</p>
    #
    #   @return [String]
    #
    # @!attribute certificate_fingerprint
    #   <p>The certificate fingerprint.</p>
    #
    #   @return [String]
    #
    DescribeLunaClientInput = ::Struct.new(
      :client_arn,
      :certificate_fingerprint,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute client_arn
    #   <p>The ARN of the client.</p>
    #
    #   @return [String]
    #
    # @!attribute certificate
    #   <p>The certificate installed on the HSMs used by this client.</p>
    #
    #   @return [String]
    #
    # @!attribute certificate_fingerprint
    #   <p>The certificate fingerprint.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified_timestamp
    #   <p>The date and time the client was last modified.</p>
    #
    #   @return [String]
    #
    # @!attribute label
    #   <p>The label of the client.</p>
    #
    #   @return [String]
    #
    DescribeLunaClientOutput = ::Struct.new(
      :client_arn,
      :certificate,
      :certificate_fingerprint,
      :last_modified_timestamp,
      :label,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute client_arn
    #   <p>The ARN of the client.</p>
    #
    #   @return [String]
    #
    # @!attribute client_version
    #   <p>The client version.</p>
    #
    #   Enum, one of: ["5.1", "5.3"]
    #
    #   @return [String]
    #
    # @!attribute hapg_list
    #   <p>A list of ARNs that identify the high-availability partition groups that are associated
    #         with the client.</p>
    #
    #   @return [Array<String>]
    #
    GetConfigInput = ::Struct.new(
      :client_arn,
      :client_version,
      :hapg_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute config_type
    #   <p>The type of credentials.</p>
    #
    #   @return [String]
    #
    # @!attribute config_file
    #   <p>The chrystoki.conf configuration file.</p>
    #
    #   @return [String]
    #
    # @!attribute config_cred
    #   <p>The certificate file containing the server.pem files of the HSMs.</p>
    #
    #   @return [String]
    #
    GetConfigOutput = ::Struct.new(
      :config_type,
      :config_file,
      :config_cred,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for HsmStatus
    #
    module HsmStatus
      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      RUNNING = "RUNNING"

      # No documentation available.
      #
      UPDATING = "UPDATING"

      # No documentation available.
      #
      SUSPENDED = "SUSPENDED"

      # No documentation available.
      #
      TERMINATING = "TERMINATING"

      # No documentation available.
      #
      TERMINATED = "TERMINATED"

      # No documentation available.
      #
      DEGRADED = "DEGRADED"
    end

    # <p>Indicates that one or more of the request parameters are not valid.</p>
    #
    # @!attribute message
    #   <p>Additional information about the error.</p>
    #
    #   @return [String]
    #
    # @!attribute retryable
    #   <p>Indicates if the action can be retried.</p>
    #
    #   @return [Boolean]
    #
    InvalidRequestException = ::Struct.new(
      :message,
      :retryable,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.retryable ||= false
      end

    end

    # <p>Contains the inputs for the <a>ListAvailableZones</a> action.</p>
    #
    ListAvailableZonesInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute az_list
    #   <p>The list of Availability Zones that have available AWS CloudHSM capacity.</p>
    #
    #   @return [Array<String>]
    #
    ListAvailableZonesOutput = ::Struct.new(
      :az_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The <code>NextToken</code> value from a previous call to <code>ListHapgs</code>. Pass
    #         null if this is the first call.</p>
    #
    #   @return [String]
    #
    ListHapgsInput = ::Struct.new(
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute hapg_list
    #   <p>The list of high-availability partition groups.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>If not null, more results are available. Pass this value to <code>ListHapgs</code> to
    #         retrieve the next set of items.</p>
    #
    #   @return [String]
    #
    ListHapgsOutput = ::Struct.new(
      :hapg_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The <code>NextToken</code> value from a previous call to <code>ListHsms</code>. Pass
    #         null if this is the first call.</p>
    #
    #   @return [String]
    #
    ListHsmsInput = ::Struct.new(
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the output of the <code>ListHsms</code> operation.</p>
    #
    # @!attribute hsm_list
    #   <p>The list of ARNs that identify the HSMs.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>If not null, more results are available. Pass this value to <code>ListHsms</code> to
    #         retrieve the next set of items.</p>
    #
    #   @return [String]
    #
    ListHsmsOutput = ::Struct.new(
      :hsm_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The <code>NextToken</code> value from a previous call to <code>ListLunaClients</code>.
    #         Pass null if this is the first call.</p>
    #
    #   @return [String]
    #
    ListLunaClientsInput = ::Struct.new(
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute client_list
    #   <p>The list of clients.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>If not null, more results are available. Pass this to <code>ListLunaClients</code> to
    #         retrieve the next set of items.</p>
    #
    #   @return [String]
    #
    ListLunaClientsOutput = ::Struct.new(
      :client_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS CloudHSM resource.</p>
    #
    #   @return [String]
    #
    ListTagsForResourceInput = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tag_list
    #   <p>One or more tags.</p>
    #
    #   @return [Array<Tag>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tag_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute hapg_arn
    #   <p>The ARN of the high-availability partition group to modify.</p>
    #
    #   @return [String]
    #
    # @!attribute label
    #   <p>The new label for the high-availability partition group.</p>
    #
    #   @return [String]
    #
    # @!attribute partition_serial_list
    #   <p>The list of partition serial numbers to make members of the high-availability partition
    #         group.</p>
    #
    #   @return [Array<String>]
    #
    ModifyHapgInput = ::Struct.new(
      :hapg_arn,
      :label,
      :partition_serial_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute hapg_arn
    #   <p>The ARN of the high-availability partition group.</p>
    #
    #   @return [String]
    #
    ModifyHapgOutput = ::Struct.new(
      :hapg_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the inputs for the <a>ModifyHsm</a> operation.</p>
    #
    # @!attribute hsm_arn
    #   <p>The ARN of the HSM to modify.</p>
    #
    #   @return [String]
    #
    # @!attribute subnet_id
    #   <p>The new identifier of the subnet that the HSM is in. The new subnet must be in the same
    #         Availability Zone as the current subnet.</p>
    #
    #   @return [String]
    #
    # @!attribute eni_ip
    #   <p>The new IP address for the elastic network interface (ENI) attached to the
    #         HSM.</p>
    #            <p>If the HSM is moved to a different subnet, and an IP address is not specified, an IP
    #         address will be randomly chosen from the CIDR range of the new subnet.</p>
    #
    #   @return [String]
    #
    # @!attribute iam_role_arn
    #   <p>The new IAM role ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute external_id
    #   <p>The new external ID.</p>
    #
    #   @return [String]
    #
    # @!attribute syslog_ip
    #   <p>The new IP address for the syslog monitoring server. The AWS CloudHSM service only supports
    #         one syslog monitoring server.</p>
    #
    #   @return [String]
    #
    ModifyHsmInput = ::Struct.new(
      :hsm_arn,
      :subnet_id,
      :eni_ip,
      :iam_role_arn,
      :external_id,
      :syslog_ip,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the output of the <a>ModifyHsm</a> operation.</p>
    #
    # @!attribute hsm_arn
    #   <p>The ARN of the HSM.</p>
    #
    #   @return [String]
    #
    ModifyHsmOutput = ::Struct.new(
      :hsm_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute client_arn
    #   <p>The ARN of the client.</p>
    #
    #   @return [String]
    #
    # @!attribute certificate
    #   <p>The new certificate for the client.</p>
    #
    #   @return [String]
    #
    ModifyLunaClientInput = ::Struct.new(
      :client_arn,
      :certificate,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute client_arn
    #   <p>The ARN of the client.</p>
    #
    #   @return [String]
    #
    ModifyLunaClientOutput = ::Struct.new(
      :client_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS CloudHSM resource.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_key_list
    #   <p>The tag key or keys to remove.</p>
    #            <p>Specify only the tag key to remove (not the value). To overwrite the value for an
    #         existing tag, use <a>AddTagsToResource</a>.</p>
    #
    #   @return [Array<String>]
    #
    RemoveTagsFromResourceInput = ::Struct.new(
      :resource_arn,
      :tag_key_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute status
    #   <p>The status of the operation.</p>
    #
    #   @return [String]
    #
    RemoveTagsFromResourceOutput = ::Struct.new(
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SubscriptionType
    #
    module SubscriptionType
      # No documentation available.
      #
      PRODUCTION = "PRODUCTION"
    end

    # <p>A key-value pair that identifies or specifies metadata about an AWS CloudHSM
    #       resource.</p>
    #
    # @!attribute key
    #   <p>The key of the tag.</p>
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

  end
end
