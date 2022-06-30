# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::GuardDuty
  module Types

    # @!attribute detector_id
    #   <p>The unique ID of the detector of the GuardDuty member account.</p>
    #
    #   @return [String]
    #
    # @!attribute master_id
    #   <p>The account ID of the GuardDuty administrator account whose invitation you're accepting.</p>
    #
    #   @return [String]
    #
    # @!attribute invitation_id
    #   <p>The value that is used to validate the administrator account to the member account.</p>
    #
    #   @return [String]
    #
    AcceptInvitationInput = ::Struct.new(
      :detector_id,
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

    # <p>Contains information on the current access control policies for the bucket.</p>
    #
    # @!attribute allows_public_read_access
    #   <p>A value that indicates whether public read access for the bucket is enabled through an
    #         Access Control List (ACL).</p>
    #
    #   @return [Boolean]
    #
    # @!attribute allows_public_write_access
    #   <p>A value that indicates whether public write access for the bucket is enabled through an
    #         Access Control List (ACL).</p>
    #
    #   @return [Boolean]
    #
    AccessControlList = ::Struct.new(
      :allows_public_read_access,
      :allows_public_write_access,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.allows_public_read_access ||= false
        self.allows_public_write_access ||= false
      end

    end

    # <p>Contains information about the access keys.</p>
    #
    # @!attribute access_key_id
    #   <p>The access key ID of the user.</p>
    #
    #   @return [String]
    #
    # @!attribute principal_id
    #   <p>The principal ID of the user.</p>
    #
    #   @return [String]
    #
    # @!attribute user_name
    #   <p>The name of the user.</p>
    #
    #   @return [String]
    #
    # @!attribute user_type
    #   <p>The type of the user.</p>
    #
    #   @return [String]
    #
    AccessKeyDetails = ::Struct.new(
      :access_key_id,
      :principal_id,
      :user_name,
      :user_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about the account.</p>
    #
    # @!attribute account_id
    #   <p>The member account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute email
    #   <p>The email address of the member account.</p>
    #
    #   @return [String]
    #
    AccountDetail = ::Struct.new(
      :account_id,
      :email,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about the account level permissions on the S3 bucket.</p>
    #
    # @!attribute block_public_access
    #   <p>Describes the S3 Block Public Access settings of the bucket's parent account.</p>
    #
    #   @return [BlockPublicAccess]
    #
    AccountLevelPermissions = ::Struct.new(
      :block_public_access,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about actions.</p>
    #
    # @!attribute action_type
    #   <p>The GuardDuty finding activity type.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_api_call_action
    #   <p>Information about the AWS_API_CALL action described in this finding.</p>
    #
    #   @return [AwsApiCallAction]
    #
    # @!attribute dns_request_action
    #   <p>Information about the DNS_REQUEST action described in this finding.</p>
    #
    #   @return [DnsRequestAction]
    #
    # @!attribute network_connection_action
    #   <p>Information about the NETWORK_CONNECTION action described in this finding.</p>
    #
    #   @return [NetworkConnectionAction]
    #
    # @!attribute port_probe_action
    #   <p>Information about the PORT_PROBE action described in this finding.</p>
    #
    #   @return [PortProbeAction]
    #
    # @!attribute kubernetes_api_call_action
    #   <p>Information about the Kubernetes API call action described in this finding.</p>
    #
    #   @return [KubernetesApiCallAction]
    #
    Action = ::Struct.new(
      :action_type,
      :aws_api_call_action,
      :dns_request_action,
      :network_connection_action,
      :port_probe_action,
      :kubernetes_api_call_action,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The account within the organization specified as the GuardDuty delegated
    #       administrator.</p>
    #
    # @!attribute admin_account_id
    #   <p>The Amazon Web Services account ID for the account.</p>
    #
    #   @return [String]
    #
    # @!attribute admin_status
    #   <p>Indicates whether the account is enabled as the delegated administrator.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLE_IN_PROGRESS"]
    #
    #   @return [String]
    #
    AdminAccount = ::Struct.new(
      :admin_account_id,
      :admin_status,
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

    # @!attribute detector_id
    #   <p>The ID of the detector that specifies the GuardDuty service whose findings you want to
    #         archive.</p>
    #
    #   @return [String]
    #
    # @!attribute finding_ids
    #   <p>The IDs of the findings that you want to archive.</p>
    #
    #   @return [Array<String>]
    #
    ArchiveFindingsInput = ::Struct.new(
      :detector_id,
      :finding_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    ArchiveFindingsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about the API action.</p>
    #
    # @!attribute api
    #   <p>The Amazon Web Services API name.</p>
    #
    #   @return [String]
    #
    # @!attribute caller_type
    #   <p>The Amazon Web Services API caller type.</p>
    #
    #   @return [String]
    #
    # @!attribute domain_details
    #   <p>The domain information for the Amazon Web Services API call.</p>
    #
    #   @return [DomainDetails]
    #
    # @!attribute error_code
    #   <p>The error code of the failed Amazon Web Services API action.</p>
    #
    #   @return [String]
    #
    # @!attribute user_agent
    #   <p>The agent through which the API request was made.</p>
    #
    #   @return [String]
    #
    # @!attribute remote_ip_details
    #   <p>The remote IP information of the connection that initiated the Amazon Web Services API call.</p>
    #
    #   @return [RemoteIpDetails]
    #
    # @!attribute service_name
    #   <p>The Amazon Web Services service name whose API was invoked.</p>
    #
    #   @return [String]
    #
    # @!attribute remote_account_details
    #   <p>The details of the Amazon Web Services account that made the API call. This field appears if the call was made from outside your account.</p>
    #
    #   @return [RemoteAccountDetails]
    #
    AwsApiCallAction = ::Struct.new(
      :api,
      :caller_type,
      :domain_details,
      :error_code,
      :user_agent,
      :remote_ip_details,
      :service_name,
      :remote_account_details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A bad request exception object.</p>
    #
    # @!attribute message
    #   <p>The error message.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The error type.</p>
    #
    #   @return [String]
    #
    BadRequestException = ::Struct.new(
      :message,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information on how the bucker owner's S3 Block Public Access settings are being
    #       applied to the S3 bucket. See <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html">S3 Block Public
    #         Access</a> for more information. </p>
    #
    # @!attribute ignore_public_acls
    #   <p>Indicates if S3 Block Public Access is set to <code>IgnorePublicAcls</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute restrict_public_buckets
    #   <p>Indicates if S3 Block Public Access is set to <code>RestrictPublicBuckets</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute block_public_acls
    #   <p>Indicates if S3 Block Public Access is set to <code>BlockPublicAcls</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute block_public_policy
    #   <p>Indicates if S3 Block Public Access is set to <code>BlockPublicPolicy</code>.</p>
    #
    #   @return [Boolean]
    #
    BlockPublicAccess = ::Struct.new(
      :ignore_public_acls,
      :restrict_public_buckets,
      :block_public_acls,
      :block_public_policy,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.ignore_public_acls ||= false
        self.restrict_public_buckets ||= false
        self.block_public_acls ||= false
        self.block_public_policy ||= false
      end

    end

    # <p>Contains information about the bucket level permissions for the S3 bucket.</p>
    #
    # @!attribute access_control_list
    #   <p>Contains information on how Access Control Policies are applied to the bucket.</p>
    #
    #   @return [AccessControlList]
    #
    # @!attribute bucket_policy
    #   <p>Contains information on the bucket policies for the S3 bucket.</p>
    #
    #   @return [BucketPolicy]
    #
    # @!attribute block_public_access
    #   <p>Contains information on which account level S3 Block Public Access settings are applied to
    #         the S3 bucket.</p>
    #
    #   @return [BlockPublicAccess]
    #
    BucketLevelPermissions = ::Struct.new(
      :access_control_list,
      :bucket_policy,
      :block_public_access,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information on the current bucket policies for the S3 bucket.</p>
    #
    # @!attribute allows_public_read_access
    #   <p>A value that indicates whether public read access for the bucket is enabled through a
    #         bucket policy.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute allows_public_write_access
    #   <p>A value that indicates whether public write access for the bucket is enabled through a
    #         bucket policy.</p>
    #
    #   @return [Boolean]
    #
    BucketPolicy = ::Struct.new(
      :allows_public_read_access,
      :allows_public_write_access,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.allows_public_read_access ||= false
        self.allows_public_write_access ||= false
      end

    end

    # <p>Contains information about the city associated with the IP address.</p>
    #
    # @!attribute city_name
    #   <p>The city name of the remote IP address.</p>
    #
    #   @return [String]
    #
    City = ::Struct.new(
      :city_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information on the status of CloudTrail as a data source for the detector.</p>
    #
    # @!attribute status
    #   <p>Describes whether CloudTrail is enabled as a data source for the detector.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    CloudTrailConfigurationResult = ::Struct.new(
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about the condition.</p>
    #
    # @!attribute eq
    #   <p>Represents the <i>equal</i> condition to be applied to a single field when
    #         querying for findings.</p>
    #
    #   @deprecated
    #
    #   @return [Array<String>]
    #
    # @!attribute neq
    #   <p>Represents the <i>not equal</i> condition to be applied to a single field
    #         when querying for findings.</p>
    #
    #   @deprecated
    #
    #   @return [Array<String>]
    #
    # @!attribute gt
    #   <p>Represents a <i>greater than</i> condition to be applied to a single field
    #         when querying for findings.</p>
    #
    #   @deprecated
    #
    #   @return [Integer]
    #
    # @!attribute gte
    #   <p>Represents a <i>greater than or equal</i> condition to be applied to a
    #         single field when querying for findings.</p>
    #
    #   @deprecated
    #
    #   @return [Integer]
    #
    # @!attribute lt
    #   <p>Represents a <i>less than</i> condition to be applied to a single field when
    #         querying for findings.</p>
    #
    #   @deprecated
    #
    #   @return [Integer]
    #
    # @!attribute lte
    #   <p>Represents a <i>less than or equal</i> condition to be applied to a single
    #         field when querying for findings.</p>
    #
    #   @deprecated
    #
    #   @return [Integer]
    #
    # @!attribute equals
    #   <p>Represents an <i>equal</i>
    #               <b></b> condition to be applied to
    #         a single field when querying for findings.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute not_equals
    #   <p>Represents a <i>not equal</i>
    #               <b></b> condition to be applied
    #         to a single field when querying for findings.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute greater_than
    #   <p>Represents a <i>greater than</i> condition to be applied to a single field
    #         when querying for findings.</p>
    #
    #   @return [Integer]
    #
    # @!attribute greater_than_or_equal
    #   <p>Represents a <i>greater than or equal</i> condition to be applied to a
    #         single field when querying for findings.</p>
    #
    #   @return [Integer]
    #
    # @!attribute less_than
    #   <p>Represents a <i>less than</i> condition to be applied to a single field when
    #         querying for findings.</p>
    #
    #   @return [Integer]
    #
    # @!attribute less_than_or_equal
    #   <p>Represents a <i>less than or equal</i> condition to be applied to a single
    #         field when querying for findings.</p>
    #
    #   @return [Integer]
    #
    Condition = ::Struct.new(
      :eq,
      :neq,
      :gt,
      :gte,
      :lt,
      :lte,
      :equals,
      :not_equals,
      :greater_than,
      :greater_than_or_equal,
      :less_than,
      :less_than_or_equal,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.gt ||= 0
        self.gte ||= 0
        self.lt ||= 0
        self.lte ||= 0
        self.greater_than ||= 0
        self.greater_than_or_equal ||= 0
        self.less_than ||= 0
        self.less_than_or_equal ||= 0
      end

    end

    # <p>Details of a container.</p>
    #
    # @!attribute container_runtime
    #   <p>The container runtime (such as, Docker or containerd) used to run the container.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>Container ID.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>Container name.</p>
    #
    #   @return [String]
    #
    # @!attribute image
    #   <p>Container image.</p>
    #
    #   @return [String]
    #
    # @!attribute image_prefix
    #   <p>Part of the image name before the last slash. For example, imagePrefix for public.ecr.aws/amazonlinux/amazonlinux:latest would be public.ecr.aws/amazonlinux. If the image name is relative and does not have a slash, this field is empty.</p>
    #
    #   @return [String]
    #
    # @!attribute volume_mounts
    #   <p>Container volume mounts.</p>
    #
    #   @return [Array<VolumeMount>]
    #
    # @!attribute security_context
    #   <p>Container security context.</p>
    #
    #   @return [SecurityContext]
    #
    Container = ::Struct.new(
      :container_runtime,
      :id,
      :name,
      :image,
      :image_prefix,
      :volume_mounts,
      :security_context,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about the country where the remote IP address is located.</p>
    #
    # @!attribute country_code
    #   <p>The country code of the remote IP address.</p>
    #
    #   @return [String]
    #
    # @!attribute country_name
    #   <p>The country name of the remote IP address.</p>
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

    # @!attribute enable
    #   <p>A Boolean value that specifies whether the detector is to be enabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute client_token
    #   <p>The idempotency token for the create request.</p>
    #
    #   @return [String]
    #
    # @!attribute finding_publishing_frequency
    #   <p>A value that specifies how frequently updated findings are exported.</p>
    #
    #   Enum, one of: ["FIFTEEN_MINUTES", "ONE_HOUR", "SIX_HOURS"]
    #
    #   @return [String]
    #
    # @!attribute data_sources
    #   <p>Describes which data sources will be enabled for the detector.</p>
    #
    #   @return [DataSourceConfigurations]
    #
    # @!attribute tags
    #   <p>The tags to be added to a new detector resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateDetectorInput = ::Struct.new(
      :enable,
      :client_token,
      :finding_publishing_frequency,
      :data_sources,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.enable ||= false
      end

    end

    # @!attribute detector_id
    #   <p>The unique ID of the created detector.</p>
    #
    #   @return [String]
    #
    CreateDetectorOutput = ::Struct.new(
      :detector_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute detector_id
    #   <p>The ID of the detector belonging to the GuardDuty account that you want to create a filter
    #         for.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the filter. Minimum length of 3. Maximum length of 64. Valid characters include alphanumeric characters, dot (.), underscore (_), and dash (-). Spaces are not allowed.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the filter.</p>
    #
    #   @return [String]
    #
    # @!attribute action
    #   <p>Specifies the action that is to be applied to the findings that match the filter.</p>
    #
    #   Enum, one of: ["NOOP", "ARCHIVE"]
    #
    #   @return [String]
    #
    # @!attribute rank
    #   <p>Specifies the position of the filter in the list of current filters. Also specifies the
    #         order in which this filter is applied to the findings.</p>
    #
    #   @return [Integer]
    #
    # @!attribute finding_criteria
    #   <p>Represents the criteria to be used in the filter for querying findings.</p>
    #            <p>You can only use the following attributes to query findings:</p>
    #            <ul>
    #               <li>
    #                  <p>accountId</p>
    #               </li>
    #               <li>
    #                  <p>region</p>
    #               </li>
    #               <li>
    #                  <p>confidence</p>
    #               </li>
    #               <li>
    #                  <p>id</p>
    #               </li>
    #               <li>
    #                  <p>resource.accessKeyDetails.accessKeyId</p>
    #               </li>
    #               <li>
    #                  <p>resource.accessKeyDetails.principalId</p>
    #               </li>
    #               <li>
    #                  <p>resource.accessKeyDetails.userName</p>
    #               </li>
    #               <li>
    #                  <p>resource.accessKeyDetails.userType</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.iamInstanceProfile.id</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.imageId</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.instanceId</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.outpostArn</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.networkInterfaces.ipv6Addresses</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.networkInterfaces.privateIpAddresses.privateIpAddress</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.networkInterfaces.publicDnsName</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.networkInterfaces.publicIp</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.networkInterfaces.securityGroups.groupId</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.networkInterfaces.securityGroups.groupName</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.networkInterfaces.subnetId</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.networkInterfaces.vpcId</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.tags.key</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.tags.value</p>
    #               </li>
    #               <li>
    #                  <p>resource.resourceType</p>
    #               </li>
    #               <li>
    #                  <p>service.action.actionType</p>
    #               </li>
    #               <li>
    #                  <p>service.action.awsApiCallAction.api</p>
    #               </li>
    #               <li>
    #                  <p>service.action.awsApiCallAction.callerType</p>
    #               </li>
    #               <li>
    #                  <p>service.action.awsApiCallAction.errorCode</p>
    #               </li>
    #               <li>
    #                  <p>service.action.awsApiCallAction.userAgent</p>
    #               </li>
    #               <li>
    #                  <p>service.action.awsApiCallAction.remoteIpDetails.city.cityName</p>
    #               </li>
    #               <li>
    #                  <p>service.action.awsApiCallAction.remoteIpDetails.country.countryName</p>
    #               </li>
    #               <li>
    #                  <p>service.action.awsApiCallAction.remoteIpDetails.ipAddressV4</p>
    #               </li>
    #               <li>
    #                  <p>service.action.awsApiCallAction.remoteIpDetails.organization.asn</p>
    #               </li>
    #               <li>
    #                  <p>service.action.awsApiCallAction.remoteIpDetails.organization.asnOrg</p>
    #               </li>
    #               <li>
    #                  <p>service.action.awsApiCallAction.serviceName</p>
    #               </li>
    #               <li>
    #                  <p>service.action.dnsRequestAction.domain</p>
    #               </li>
    #               <li>
    #                  <p>service.action.networkConnectionAction.blocked</p>
    #               </li>
    #               <li>
    #                  <p>service.action.networkConnectionAction.connectionDirection</p>
    #               </li>
    #               <li>
    #                  <p>service.action.networkConnectionAction.localPortDetails.port</p>
    #               </li>
    #               <li>
    #                  <p>service.action.networkConnectionAction.protocol</p>
    #               </li>
    #               <li>
    #                  <p>service.action.networkConnectionAction.localIpDetails.ipAddressV4</p>
    #               </li>
    #               <li>
    #                  <p>service.action.networkConnectionAction.remoteIpDetails.city.cityName</p>
    #               </li>
    #               <li>
    #                  <p>service.action.networkConnectionAction.remoteIpDetails.country.countryName</p>
    #               </li>
    #               <li>
    #                  <p>service.action.networkConnectionAction.remoteIpDetails.ipAddressV4</p>
    #               </li>
    #               <li>
    #                  <p>service.action.networkConnectionAction.remoteIpDetails.organization.asn</p>
    #               </li>
    #               <li>
    #                  <p>service.action.networkConnectionAction.remoteIpDetails.organization.asnOrg</p>
    #               </li>
    #               <li>
    #                  <p>service.action.networkConnectionAction.remotePortDetails.port</p>
    #               </li>
    #               <li>
    #                  <p>service.additionalInfo.threatListName</p>
    #               </li>
    #               <li>
    #                  <p>resource.s3BucketDetails.publicAccess.effectivePermissions</p>
    #               </li>
    #               <li>
    #                  <p>resource.s3BucketDetails.name</p>
    #               </li>
    #               <li>
    #                  <p>resource.s3BucketDetails.tags.key</p>
    #               </li>
    #               <li>
    #                  <p>resource.s3BucketDetails.tags.value</p>
    #               </li>
    #               <li>
    #                  <p>resource.s3BucketDetails.type</p>
    #               </li>
    #               <li>
    #                  <p>service.archived</p>
    #                  <p>When this attribute is set to TRUE, only archived findings are listed. When it's set
    #             to FALSE, only unarchived findings are listed. When this attribute is not set, all
    #             existing findings are listed.</p>
    #               </li>
    #               <li>
    #                  <p>service.resourceRole</p>
    #               </li>
    #               <li>
    #                  <p>severity</p>
    #               </li>
    #               <li>
    #                  <p>type</p>
    #               </li>
    #               <li>
    #                  <p>updatedAt</p>
    #                  <p>Type: ISO 8601 string format: YYYY-MM-DDTHH:MM:SS.SSSZ or YYYY-MM-DDTHH:MM:SSZ
    #             depending on whether the value contains milliseconds.</p>
    #               </li>
    #            </ul>
    #
    #   @return [FindingCriteria]
    #
    # @!attribute client_token
    #   <p>The idempotency token for the create request.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to be added to a new filter resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateFilterInput = ::Struct.new(
      :detector_id,
      :name,
      :description,
      :action,
      :rank,
      :finding_criteria,
      :client_token,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.rank ||= 0
      end

    end

    # @!attribute name
    #   <p>The name of the successfully created filter.</p>
    #
    #   @return [String]
    #
    CreateFilterOutput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute detector_id
    #   <p>The unique ID of the detector of the GuardDuty account that you want to create an IPSet
    #         for.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The user-friendly name to identify the IPSet.</p>
    #            <p> Allowed characters are alphanumerics, spaces, hyphens (-), and underscores (_).</p>
    #
    #   @return [String]
    #
    # @!attribute format
    #   <p>The format of the file that contains the IPSet.</p>
    #
    #   Enum, one of: ["TXT", "STIX", "OTX_CSV", "ALIEN_VAULT", "PROOF_POINT", "FIRE_EYE"]
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>The URI of the file that contains the IPSet. </p>
    #
    #   @return [String]
    #
    # @!attribute activate
    #   <p>A Boolean value that indicates whether GuardDuty is to start using the uploaded
    #         IPSet.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute client_token
    #   <p>The idempotency token for the create request.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to be added to a new IP set resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateIPSetInput = ::Struct.new(
      :detector_id,
      :name,
      :format,
      :location,
      :activate,
      :client_token,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.activate ||= false
      end

    end

    # @!attribute ip_set_id
    #   <p>The ID of the IPSet resource.</p>
    #
    #   @return [String]
    #
    CreateIPSetOutput = ::Struct.new(
      :ip_set_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute detector_id
    #   <p>The unique ID of the detector of the GuardDuty account that you want to associate member
    #         accounts with.</p>
    #
    #   @return [String]
    #
    # @!attribute account_details
    #   <p>A list of account ID and email address pairs of the accounts that you want to associate
    #         with the GuardDuty administrator account.</p>
    #
    #   @return [Array<AccountDetail>]
    #
    CreateMembersInput = ::Struct.new(
      :detector_id,
      :account_details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute unprocessed_accounts
    #   <p>A list of objects that include the <code>accountIds</code> of the unprocessed accounts and
    #         a result string that explains why each was unprocessed.</p>
    #
    #   @return [Array<UnprocessedAccount>]
    #
    CreateMembersOutput = ::Struct.new(
      :unprocessed_accounts,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute detector_id
    #   <p>The ID of the GuardDuty detector associated with the publishing destination.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_type
    #   <p>The type of resource for the publishing destination. Currently only Amazon S3 buckets are
    #         supported.</p>
    #
    #   Enum, one of: ["S3"]
    #
    #   @return [String]
    #
    # @!attribute destination_properties
    #   <p>The properties of the publishing destination, including the ARNs for the destination and
    #         the KMS key used for encryption.</p>
    #
    #   @return [DestinationProperties]
    #
    # @!attribute client_token
    #   <p>The idempotency token for the request.</p>
    #
    #   @return [String]
    #
    CreatePublishingDestinationInput = ::Struct.new(
      :detector_id,
      :destination_type,
      :destination_properties,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute destination_id
    #   <p>The ID of the publishing destination that is created.</p>
    #
    #   @return [String]
    #
    CreatePublishingDestinationOutput = ::Struct.new(
      :destination_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute detector_id
    #   <p>The ID of the detector to create sample findings for.</p>
    #
    #   @return [String]
    #
    # @!attribute finding_types
    #   <p>The types of sample findings to generate.</p>
    #
    #   @return [Array<String>]
    #
    CreateSampleFindingsInput = ::Struct.new(
      :detector_id,
      :finding_types,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    CreateSampleFindingsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute detector_id
    #   <p>The unique ID of the detector of the GuardDuty account that you want to create a
    #         threatIntelSet for.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>A user-friendly ThreatIntelSet name displayed in all findings that are generated by
    #         activity that involves IP addresses included in this ThreatIntelSet.</p>
    #
    #   @return [String]
    #
    # @!attribute format
    #   <p>The format of the file that contains the ThreatIntelSet.</p>
    #
    #   Enum, one of: ["TXT", "STIX", "OTX_CSV", "ALIEN_VAULT", "PROOF_POINT", "FIRE_EYE"]
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>The URI of the file that contains the ThreatIntelSet. </p>
    #
    #   @return [String]
    #
    # @!attribute activate
    #   <p>A Boolean value that indicates whether GuardDuty is to start using the uploaded
    #         ThreatIntelSet.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute client_token
    #   <p>The idempotency token for the create request.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to be added to a new threat list resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateThreatIntelSetInput = ::Struct.new(
      :detector_id,
      :name,
      :format,
      :location,
      :activate,
      :client_token,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.activate ||= false
      end

    end

    # @!attribute threat_intel_set_id
    #   <p>The ID of the ThreatIntelSet resource.</p>
    #
    #   @return [String]
    #
    CreateThreatIntelSetOutput = ::Struct.new(
      :threat_intel_set_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information on the status of DNS logs as a data source.</p>
    #
    # @!attribute status
    #   <p>Denotes whether DNS logs is enabled as a data source.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    DNSLogsConfigurationResult = ::Struct.new(
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DataSource
    #
    module DataSource
      # No documentation available.
      #
      FLOW_LOGS = "FLOW_LOGS"

      # No documentation available.
      #
      CLOUD_TRAIL = "CLOUD_TRAIL"

      # No documentation available.
      #
      DNS_LOGS = "DNS_LOGS"

      # No documentation available.
      #
      S3_LOGS = "S3_LOGS"

      # No documentation available.
      #
      KUBERNETES_AUDIT_LOGS = "KUBERNETES_AUDIT_LOGS"
    end

    # <p>Contains information about which data sources are enabled.</p>
    #
    # @!attribute s3_logs
    #   <p>Describes whether S3 data event logs are enabled as a data source.</p>
    #
    #   @return [S3LogsConfiguration]
    #
    # @!attribute kubernetes
    #   <p>Describes whether any Kubernetes logs are enabled as data sources.</p>
    #
    #   @return [KubernetesConfiguration]
    #
    DataSourceConfigurations = ::Struct.new(
      :s3_logs,
      :kubernetes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information on the status of data sources for the detector.</p>
    #
    # @!attribute cloud_trail
    #   <p>An object that contains information on the status of CloudTrail as a data source.</p>
    #
    #   @return [CloudTrailConfigurationResult]
    #
    # @!attribute dns_logs
    #   <p>An object that contains information on the status of DNS logs as a data source.</p>
    #
    #   @return [DNSLogsConfigurationResult]
    #
    # @!attribute flow_logs
    #   <p>An object that contains information on the status of VPC flow logs as a data
    #         source.</p>
    #
    #   @return [FlowLogsConfigurationResult]
    #
    # @!attribute s3_logs
    #   <p>An object that contains information on the status of S3 Data event logs as a data
    #         source.</p>
    #
    #   @return [S3LogsConfigurationResult]
    #
    # @!attribute kubernetes
    #   <p>An object that contains information on the status of all Kubernetes data sources.</p>
    #
    #   @return [KubernetesConfigurationResult]
    #
    DataSourceConfigurationsResult = ::Struct.new(
      :cloud_trail,
      :dns_logs,
      :flow_logs,
      :s3_logs,
      :kubernetes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DataSourceStatus
    #
    module DataSourceStatus
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # @!attribute account_ids
    #   <p>A list of account IDs of the Amazon Web Services accounts that sent invitations to the current member
    #         account that you want to decline invitations from.</p>
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
    #   <p>A list of objects that contain the unprocessed account and a result string that explains
    #         why it was unprocessed.</p>
    #
    #   @return [Array<UnprocessedAccount>]
    #
    DeclineInvitationsOutput = ::Struct.new(
      :unprocessed_accounts,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information on the server side encryption method used in the S3 bucket. See
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/serv-side-encryption.html">S3
    #         Server-Side Encryption</a> for more information.</p>
    #
    # @!attribute encryption_type
    #   <p>The type of encryption used for objects within the S3 bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute kms_master_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS encryption key. Only available if the bucket
    #           <code>EncryptionType</code> is <code>aws:kms</code>.</p>
    #
    #   @return [String]
    #
    DefaultServerSideEncryption = ::Struct.new(
      :encryption_type,
      :kms_master_key_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute detector_id
    #   <p>The unique ID of the detector that you want to delete.</p>
    #
    #   @return [String]
    #
    DeleteDetectorInput = ::Struct.new(
      :detector_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteDetectorOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute detector_id
    #   <p>The unique ID of the detector that the filter is associated with.</p>
    #
    #   @return [String]
    #
    # @!attribute filter_name
    #   <p>The name of the filter that you want to delete.</p>
    #
    #   @return [String]
    #
    DeleteFilterInput = ::Struct.new(
      :detector_id,
      :filter_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteFilterOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute detector_id
    #   <p>The unique ID of the detector associated with the IPSet.</p>
    #
    #   @return [String]
    #
    # @!attribute ip_set_id
    #   <p>The unique ID of the IPSet to delete.</p>
    #
    #   @return [String]
    #
    DeleteIPSetInput = ::Struct.new(
      :detector_id,
      :ip_set_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteIPSetOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_ids
    #   <p>A list of account IDs of the Amazon Web Services accounts that sent invitations to the current member
    #         account that you want to delete invitations from.</p>
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
    #   <p>A list of objects that contain the unprocessed account and a result string that explains
    #         why it was unprocessed.</p>
    #
    #   @return [Array<UnprocessedAccount>]
    #
    DeleteInvitationsOutput = ::Struct.new(
      :unprocessed_accounts,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute detector_id
    #   <p>The unique ID of the detector of the GuardDuty account whose members you want to
    #         delete.</p>
    #
    #   @return [String]
    #
    # @!attribute account_ids
    #   <p>A list of account IDs of the GuardDuty member accounts that you want to delete.</p>
    #
    #   @return [Array<String>]
    #
    DeleteMembersInput = ::Struct.new(
      :detector_id,
      :account_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute unprocessed_accounts
    #   <p>The accounts that could not be processed.</p>
    #
    #   @return [Array<UnprocessedAccount>]
    #
    DeleteMembersOutput = ::Struct.new(
      :unprocessed_accounts,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute detector_id
    #   <p>The unique ID of the detector associated with the publishing destination to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_id
    #   <p>The ID of the publishing destination to delete.</p>
    #
    #   @return [String]
    #
    DeletePublishingDestinationInput = ::Struct.new(
      :detector_id,
      :destination_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeletePublishingDestinationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute detector_id
    #   <p>The unique ID of the detector that the threatIntelSet is associated with.</p>
    #
    #   @return [String]
    #
    # @!attribute threat_intel_set_id
    #   <p>The unique ID of the threatIntelSet that you want to delete.</p>
    #
    #   @return [String]
    #
    DeleteThreatIntelSetInput = ::Struct.new(
      :detector_id,
      :threat_intel_set_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteThreatIntelSetOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute detector_id
    #   <p>The ID of the detector to retrieve information about the delegated administrator
    #         from.</p>
    #
    #   @return [String]
    #
    DescribeOrganizationConfigurationInput = ::Struct.new(
      :detector_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute auto_enable
    #   <p>Indicates whether GuardDuty is automatically enabled for accounts added to the
    #         organization.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute member_account_limit_reached
    #   <p>Indicates whether the maximum number of allowed member accounts are already associated
    #         with the delegated administrator account for your organization.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute data_sources
    #   <p>Describes which data sources are enabled automatically for member
    #         accounts.</p>
    #
    #   @return [OrganizationDataSourceConfigurationsResult]
    #
    DescribeOrganizationConfigurationOutput = ::Struct.new(
      :auto_enable,
      :member_account_limit_reached,
      :data_sources,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.auto_enable ||= false
        self.member_account_limit_reached ||= false
      end

    end

    # @!attribute detector_id
    #   <p>The unique ID of the detector associated with the publishing destination to
    #         retrieve.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_id
    #   <p>The ID of the publishing destination to retrieve.</p>
    #
    #   @return [String]
    #
    DescribePublishingDestinationInput = ::Struct.new(
      :detector_id,
      :destination_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute destination_id
    #   <p>The ID of the publishing destination.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_type
    #   <p>The type of publishing destination. Currently, only Amazon S3 buckets are
    #         supported.</p>
    #
    #   Enum, one of: ["S3"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the publishing destination.</p>
    #
    #   Enum, one of: ["PENDING_VERIFICATION", "PUBLISHING", "UNABLE_TO_PUBLISH_FIX_DESTINATION_PROPERTY", "STOPPED"]
    #
    #   @return [String]
    #
    # @!attribute publishing_failure_start_timestamp
    #   <p>The time, in epoch millisecond format, at which GuardDuty was first unable to publish
    #         findings to the destination.</p>
    #
    #   @return [Integer]
    #
    # @!attribute destination_properties
    #   <p>A <code>DestinationProperties</code> object that includes the <code>DestinationArn</code>
    #         and <code>KmsKeyArn</code> of the publishing destination.</p>
    #
    #   @return [DestinationProperties]
    #
    DescribePublishingDestinationOutput = ::Struct.new(
      :destination_id,
      :destination_type,
      :status,
      :publishing_failure_start_timestamp,
      :destination_properties,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.publishing_failure_start_timestamp ||= 0
      end

    end

    # <p>Contains information about the publishing destination, including the ID, type, and
    #       status.</p>
    #
    # @!attribute destination_id
    #   <p>The unique ID of the publishing destination.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_type
    #   <p>The type of resource used for the publishing destination. Currently, only Amazon S3
    #         buckets are supported.</p>
    #
    #   Enum, one of: ["S3"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the publishing destination.</p>
    #
    #   Enum, one of: ["PENDING_VERIFICATION", "PUBLISHING", "UNABLE_TO_PUBLISH_FIX_DESTINATION_PROPERTY", "STOPPED"]
    #
    #   @return [String]
    #
    Destination = ::Struct.new(
      :destination_id,
      :destination_type,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the Amazon Resource Name (ARN) of the resource to publish to, such as an S3
    #       bucket, and the ARN of the KMS key to use to encrypt published findings.</p>
    #
    # @!attribute destination_arn
    #   <p>The ARN of the resource to publish to.</p>
    #            <p>To specify an S3 bucket folder use the following format:
    #           <code>arn:aws:s3:::DOC-EXAMPLE-BUCKET/myFolder/</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute kms_key_arn
    #   <p>The ARN of the KMS key to use for encryption.</p>
    #
    #   @return [String]
    #
    DestinationProperties = ::Struct.new(
      :destination_arn,
      :kms_key_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DestinationType
    #
    module DestinationType
      # No documentation available.
      #
      S3 = "S3"
    end

    # Includes enum constants for DetectorStatus
    #
    module DetectorStatus
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # @!attribute admin_account_id
    #   <p>The Amazon Web Services Account ID for the organizations account to be disabled as a GuardDuty delegated
    #         administrator.</p>
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

    # @!attribute detector_id
    #   <p>The unique ID of the detector of the GuardDuty member account.</p>
    #
    #   @return [String]
    #
    DisassociateFromMasterAccountInput = ::Struct.new(
      :detector_id,
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

    # @!attribute detector_id
    #   <p>The unique ID of the detector of the GuardDuty account whose members you want to
    #         disassociate from the administrator account.</p>
    #
    #   @return [String]
    #
    # @!attribute account_ids
    #   <p>A list of account IDs of the GuardDuty member accounts that you want to disassociate from
    #         the administrator account.</p>
    #
    #   @return [Array<String>]
    #
    DisassociateMembersInput = ::Struct.new(
      :detector_id,
      :account_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute unprocessed_accounts
    #   <p>A list of objects that contain the unprocessed account and a result string that explains
    #         why it was unprocessed.</p>
    #
    #   @return [Array<UnprocessedAccount>]
    #
    DisassociateMembersOutput = ::Struct.new(
      :unprocessed_accounts,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about the DNS_REQUEST action described in this finding.</p>
    #
    # @!attribute domain
    #   <p>The domain information for the API request.</p>
    #
    #   @return [String]
    #
    DnsRequestAction = ::Struct.new(
      :domain,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about the domain.</p>
    #
    # @!attribute domain
    #   <p>The domain information for the Amazon Web Services API call.</p>
    #
    #   @return [String]
    #
    DomainDetails = ::Struct.new(
      :domain,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about the EKS cluster involved in a Kubernetes finding.</p>
    #
    # @!attribute name
    #   <p>EKS cluster name.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>EKS cluster ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_id
    #   <p>The VPC ID to which the EKS cluster is attached.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The EKS cluster status.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The EKS cluster tags.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute created_at
    #   <p>The timestamp when the EKS cluster was created.</p>
    #
    #   @return [Time]
    #
    EksClusterDetails = ::Struct.new(
      :name,
      :arn,
      :vpc_id,
      :status,
      :tags,
      :created_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute admin_account_id
    #   <p>The Amazon Web Services Account ID for the organization account to be enabled as a GuardDuty delegated
    #         administrator.</p>
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

    # <p>Contains information about the reason that the finding was generated.</p>
    #
    # @!attribute threat_intelligence_details
    #   <p>A list of threat intelligence details related to the evidence.</p>
    #
    #   @return [Array<ThreatIntelligenceDetail>]
    #
    Evidence = ::Struct.new(
      :threat_intelligence_details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Feedback
    #
    module Feedback
      # No documentation available.
      #
      USEFUL = "USEFUL"

      # No documentation available.
      #
      NOT_USEFUL = "NOT_USEFUL"
    end

    # Includes enum constants for FilterAction
    #
    module FilterAction
      # No documentation available.
      #
      NOOP = "NOOP"

      # No documentation available.
      #
      ARCHIVE = "ARCHIVE"
    end

    # <p>Contains information about the finding, which is generated when abnormal or suspicious
    #       activity is detected.</p>
    #
    # @!attribute account_id
    #   <p>The ID of the account in which the finding was generated.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The ARN of the finding.</p>
    #
    #   @return [String]
    #
    # @!attribute confidence
    #   <p>The confidence score for the finding.</p>
    #
    #   @return [Float]
    #
    # @!attribute created_at
    #   <p>The time and date when the finding was created.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the finding.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The ID of the finding.</p>
    #
    #   @return [String]
    #
    # @!attribute partition
    #   <p>The partition associated with the finding.</p>
    #
    #   @return [String]
    #
    # @!attribute region
    #   <p>The Region where the finding was generated.</p>
    #
    #   @return [String]
    #
    # @!attribute resource
    #   <p>Contains information about the Amazon Web Services resource associated with the activity that prompted
    #         GuardDuty to generate a finding.</p>
    #
    #   @return [Resource]
    #
    # @!attribute schema_version
    #   <p>The version of the schema used for the finding.</p>
    #
    #   @return [String]
    #
    # @!attribute service
    #   <p>Contains additional information about the generated finding.</p>
    #
    #   @return [Service]
    #
    # @!attribute severity
    #   <p>The severity of the finding.</p>
    #
    #   @return [Float]
    #
    # @!attribute title
    #   <p>The title of the finding.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of finding.</p>
    #
    #   @return [String]
    #
    # @!attribute updated_at
    #   <p>The time and date when the finding was last updated.</p>
    #
    #   @return [String]
    #
    Finding = ::Struct.new(
      :account_id,
      :arn,
      :confidence,
      :created_at,
      :description,
      :id,
      :partition,
      :region,
      :resource,
      :schema_version,
      :service,
      :severity,
      :title,
      :type,
      :updated_at,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.confidence ||= 0
        self.severity ||= 0
      end

    end

    # <p>Contains information about the criteria used for querying findings.</p>
    #
    # @!attribute criterion
    #   <p>Represents a map of finding properties that match specified conditions and values when
    #         querying findings.</p>
    #
    #   @return [Hash<String, Condition>]
    #
    FindingCriteria = ::Struct.new(
      :criterion,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FindingPublishingFrequency
    #
    module FindingPublishingFrequency
      # No documentation available.
      #
      FIFTEEN_MINUTES = "FIFTEEN_MINUTES"

      # No documentation available.
      #
      ONE_HOUR = "ONE_HOUR"

      # No documentation available.
      #
      SIX_HOURS = "SIX_HOURS"
    end

    # Includes enum constants for FindingStatisticType
    #
    module FindingStatisticType
      # No documentation available.
      #
      COUNT_BY_SEVERITY = "COUNT_BY_SEVERITY"
    end

    # <p>Contains information about finding statistics.</p>
    #
    # @!attribute count_by_severity
    #   <p>Represents a map of severity to count statistics for a set of findings.</p>
    #
    #   @return [Hash<String, Integer>]
    #
    FindingStatistics = ::Struct.new(
      :count_by_severity,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information on the status of VPC flow logs as a data source.</p>
    #
    # @!attribute status
    #   <p>Denotes whether VPC flow logs is enabled as a data source.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    FlowLogsConfigurationResult = ::Struct.new(
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about the location of the remote IP address.</p>
    #
    # @!attribute lat
    #   <p>The latitude information of the remote IP address.</p>
    #
    #   @return [Float]
    #
    # @!attribute lon
    #   <p>The longitude information of the remote IP address.</p>
    #
    #   @return [Float]
    #
    GeoLocation = ::Struct.new(
      :lat,
      :lon,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.lat ||= 0
        self.lon ||= 0
      end

    end

    # @!attribute detector_id
    #   <p>The unique ID of the detector that you want to get.</p>
    #
    #   @return [String]
    #
    GetDetectorInput = ::Struct.new(
      :detector_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute created_at
    #   <p>The timestamp of when the detector was created.</p>
    #
    #   @return [String]
    #
    # @!attribute finding_publishing_frequency
    #   <p>The publishing frequency of the finding.</p>
    #
    #   Enum, one of: ["FIFTEEN_MINUTES", "ONE_HOUR", "SIX_HOURS"]
    #
    #   @return [String]
    #
    # @!attribute service_role
    #   <p>The GuardDuty service role.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The detector status.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute updated_at
    #   <p>The last-updated timestamp for the detector.</p>
    #
    #   @return [String]
    #
    # @!attribute data_sources
    #   <p>Describes which data sources are enabled for the detector.</p>
    #
    #   @return [DataSourceConfigurationsResult]
    #
    # @!attribute tags
    #   <p>The tags of the detector resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    GetDetectorOutput = ::Struct.new(
      :created_at,
      :finding_publishing_frequency,
      :service_role,
      :status,
      :updated_at,
      :data_sources,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute detector_id
    #   <p>The unique ID of the detector that the filter is associated with.</p>
    #
    #   @return [String]
    #
    # @!attribute filter_name
    #   <p>The name of the filter you want to get.</p>
    #
    #   @return [String]
    #
    GetFilterInput = ::Struct.new(
      :detector_id,
      :filter_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the filter.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the filter.</p>
    #
    #   @return [String]
    #
    # @!attribute action
    #   <p>Specifies the action that is to be applied to the findings that match the filter.</p>
    #
    #   Enum, one of: ["NOOP", "ARCHIVE"]
    #
    #   @return [String]
    #
    # @!attribute rank
    #   <p>Specifies the position of the filter in the list of current filters. Also specifies the
    #         order in which this filter is applied to the findings.</p>
    #
    #   @return [Integer]
    #
    # @!attribute finding_criteria
    #   <p>Represents the criteria to be used in the filter for querying findings.</p>
    #
    #   @return [FindingCriteria]
    #
    # @!attribute tags
    #   <p>The tags of the filter resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    GetFilterOutput = ::Struct.new(
      :name,
      :description,
      :action,
      :rank,
      :finding_criteria,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.rank ||= 0
      end

    end

    # @!attribute detector_id
    #   <p>The ID of the detector that specifies the GuardDuty service whose findings you want to
    #         retrieve.</p>
    #
    #   @return [String]
    #
    # @!attribute finding_ids
    #   <p>The IDs of the findings that you want to retrieve.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute sort_criteria
    #   <p>Represents the criteria used for sorting findings.</p>
    #
    #   @return [SortCriteria]
    #
    GetFindingsInput = ::Struct.new(
      :detector_id,
      :finding_ids,
      :sort_criteria,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute findings
    #   <p>A list of findings.</p>
    #
    #   @return [Array<Finding>]
    #
    GetFindingsOutput = ::Struct.new(
      :findings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute detector_id
    #   <p>The ID of the detector that specifies the GuardDuty service whose findings' statistics you
    #         want to retrieve.</p>
    #
    #   @return [String]
    #
    # @!attribute finding_statistic_types
    #   <p>The types of finding statistics to retrieve.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute finding_criteria
    #   <p>Represents the criteria that is used for querying findings.</p>
    #
    #   @return [FindingCriteria]
    #
    GetFindingsStatisticsInput = ::Struct.new(
      :detector_id,
      :finding_statistic_types,
      :finding_criteria,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute finding_statistics
    #   <p>The finding statistics object.</p>
    #
    #   @return [FindingStatistics]
    #
    GetFindingsStatisticsOutput = ::Struct.new(
      :finding_statistics,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute detector_id
    #   <p>The unique ID of the detector that the IPSet is associated with.</p>
    #
    #   @return [String]
    #
    # @!attribute ip_set_id
    #   <p>The unique ID of the IPSet to retrieve.</p>
    #
    #   @return [String]
    #
    GetIPSetInput = ::Struct.new(
      :detector_id,
      :ip_set_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The user-friendly name for the IPSet.</p>
    #
    #   @return [String]
    #
    # @!attribute format
    #   <p>The format of the file that contains the IPSet.</p>
    #
    #   Enum, one of: ["TXT", "STIX", "OTX_CSV", "ALIEN_VAULT", "PROOF_POINT", "FIRE_EYE"]
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>The URI of the file that contains the IPSet.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of IPSet file that was uploaded.</p>
    #
    #   Enum, one of: ["INACTIVE", "ACTIVATING", "ACTIVE", "DEACTIVATING", "ERROR", "DELETE_PENDING", "DELETED"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags of the IPSet resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    GetIPSetOutput = ::Struct.new(
      :name,
      :format,
      :location,
      :status,
      :tags,
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
    #   <p>The number of received invitations.</p>
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

    # @!attribute detector_id
    #   <p>The unique ID of the detector of the GuardDuty member account.</p>
    #
    #   @return [String]
    #
    GetMasterAccountInput = ::Struct.new(
      :detector_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute master
    #   <p>The administrator account details.</p>
    #
    #   @return [Master]
    #
    GetMasterAccountOutput = ::Struct.new(
      :master,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute detector_id
    #   <p>The detector ID for the administrator account.</p>
    #
    #   @return [String]
    #
    # @!attribute account_ids
    #   <p>The account ID of the member account.</p>
    #
    #   @return [Array<String>]
    #
    GetMemberDetectorsInput = ::Struct.new(
      :detector_id,
      :account_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute member_data_source_configurations
    #   <p>An object that describes which data sources are enabled for a member account.</p>
    #
    #   @return [Array<MemberDataSourceConfiguration>]
    #
    # @!attribute unprocessed_accounts
    #   <p>A list of member account IDs that were unable to be processed along with an explanation
    #         for why they were not processed.</p>
    #
    #   @return [Array<UnprocessedAccount>]
    #
    GetMemberDetectorsOutput = ::Struct.new(
      :member_data_source_configurations,
      :unprocessed_accounts,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute detector_id
    #   <p>The unique ID of the detector of the GuardDuty account whose members you want to
    #         retrieve.</p>
    #
    #   @return [String]
    #
    # @!attribute account_ids
    #   <p>A list of account IDs of the GuardDuty member accounts that you want to describe.</p>
    #
    #   @return [Array<String>]
    #
    GetMembersInput = ::Struct.new(
      :detector_id,
      :account_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute members
    #   <p>A list of members.</p>
    #
    #   @return [Array<Member>]
    #
    # @!attribute unprocessed_accounts
    #   <p>A list of objects that contain the unprocessed account and a result string that explains
    #         why it was unprocessed.</p>
    #
    #   @return [Array<UnprocessedAccount>]
    #
    GetMembersOutput = ::Struct.new(
      :members,
      :unprocessed_accounts,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute detector_id
    #   <p>The unique ID of the detector that the threatIntelSet is associated with.</p>
    #
    #   @return [String]
    #
    # @!attribute threat_intel_set_id
    #   <p>The unique ID of the threatIntelSet that you want to get.</p>
    #
    #   @return [String]
    #
    GetThreatIntelSetInput = ::Struct.new(
      :detector_id,
      :threat_intel_set_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>A user-friendly ThreatIntelSet name displayed in all findings that are generated by
    #         activity that involves IP addresses included in this ThreatIntelSet.</p>
    #
    #   @return [String]
    #
    # @!attribute format
    #   <p>The format of the threatIntelSet.</p>
    #
    #   Enum, one of: ["TXT", "STIX", "OTX_CSV", "ALIEN_VAULT", "PROOF_POINT", "FIRE_EYE"]
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>The URI of the file that contains the ThreatIntelSet. </p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of threatIntelSet file uploaded.</p>
    #
    #   Enum, one of: ["INACTIVE", "ACTIVATING", "ACTIVE", "DEACTIVATING", "ERROR", "DELETE_PENDING", "DELETED"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags of the threat list resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    GetThreatIntelSetOutput = ::Struct.new(
      :name,
      :format,
      :location,
      :status,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute detector_id
    #   <p>The ID of the detector that specifies the GuardDuty service whose usage statistics you
    #         want to retrieve.</p>
    #
    #   @return [String]
    #
    # @!attribute usage_statistic_type
    #   <p>The type of usage statistics to retrieve.</p>
    #
    #   Enum, one of: ["SUM_BY_ACCOUNT", "SUM_BY_DATA_SOURCE", "SUM_BY_RESOURCE", "TOP_RESOURCES"]
    #
    #   @return [String]
    #
    # @!attribute usage_criteria
    #   <p>Represents the criteria used for querying usage.</p>
    #
    #   @return [UsageCriteria]
    #
    # @!attribute unit
    #   <p>The currency unit you would like to view your usage statistics in. Current valid values
    #         are USD.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value of
    #         this parameter to null for the first request to a list action. For subsequent calls, use the
    #         NextToken value returned from the previous request to continue listing results after the first
    #         page.</p>
    #
    #   @return [String]
    #
    GetUsageStatisticsInput = ::Struct.new(
      :detector_id,
      :usage_statistic_type,
      :usage_criteria,
      :unit,
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

    # @!attribute usage_statistics
    #   <p>The usage statistics object. If a UsageStatisticType was provided, the objects
    #         representing other types will be null.</p>
    #
    #   @return [UsageStatistics]
    #
    # @!attribute next_token
    #   <p>The pagination parameter to be used on the next list operation to retrieve more
    #         items.</p>
    #
    #   @return [String]
    #
    GetUsageStatisticsOutput = ::Struct.new(
      :usage_statistics,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a pre-existing file or directory on the host machine that the volume maps to.</p>
    #
    # @!attribute path
    #   <p>Path of the file or directory on the host that the volume maps to.</p>
    #
    #   @return [String]
    #
    HostPath = ::Struct.new(
      :path,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about the EC2 instance profile.</p>
    #
    # @!attribute arn
    #   <p>The profile ARN of the EC2 instance.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The profile ID of the EC2 instance.</p>
    #
    #   @return [String]
    #
    IamInstanceProfile = ::Struct.new(
      :arn,
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about the details of an instance.</p>
    #
    # @!attribute availability_zone
    #   <p>The Availability Zone of the EC2 instance.</p>
    #
    #   @return [String]
    #
    # @!attribute iam_instance_profile
    #   <p>The profile information of the EC2 instance.</p>
    #
    #   @return [IamInstanceProfile]
    #
    # @!attribute image_description
    #   <p>The image description of the EC2 instance.</p>
    #
    #   @return [String]
    #
    # @!attribute image_id
    #   <p>The image ID of the EC2 instance.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_id
    #   <p>The ID of the EC2 instance.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_state
    #   <p>The state of the EC2 instance.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_type
    #   <p>The type of the EC2 instance.</p>
    #
    #   @return [String]
    #
    # @!attribute outpost_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Web Services Outpost. Only applicable to Amazon Web Services Outposts
    #         instances.</p>
    #
    #   @return [String]
    #
    # @!attribute launch_time
    #   <p>The launch time of the EC2 instance.</p>
    #
    #   @return [String]
    #
    # @!attribute network_interfaces
    #   <p>The elastic network interface information of the EC2 instance.</p>
    #
    #   @return [Array<NetworkInterface>]
    #
    # @!attribute platform
    #   <p>The platform of the EC2 instance.</p>
    #
    #   @return [String]
    #
    # @!attribute product_codes
    #   <p>The product code of the EC2 instance.</p>
    #
    #   @return [Array<ProductCode>]
    #
    # @!attribute tags
    #   <p>The tags of the EC2 instance.</p>
    #
    #   @return [Array<Tag>]
    #
    InstanceDetails = ::Struct.new(
      :availability_zone,
      :iam_instance_profile,
      :image_description,
      :image_id,
      :instance_id,
      :instance_state,
      :instance_type,
      :outpost_arn,
      :launch_time,
      :network_interfaces,
      :platform,
      :product_codes,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An internal server error exception object.</p>
    #
    # @!attribute message
    #   <p>The error message.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The error type.</p>
    #
    #   @return [String]
    #
    InternalServerErrorException = ::Struct.new(
      :message,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about the invitation to become a member account.</p>
    #
    # @!attribute account_id
    #   <p>The ID of the account that the invitation was sent from.</p>
    #
    #   @return [String]
    #
    # @!attribute invitation_id
    #   <p>The ID of the invitation. This value is used to validate the inviter account to the member
    #         account.</p>
    #
    #   @return [String]
    #
    # @!attribute relationship_status
    #   <p>The status of the relationship between the inviter and invitee accounts.</p>
    #
    #   @return [String]
    #
    # @!attribute invited_at
    #   <p>The timestamp when the invitation was sent.</p>
    #
    #   @return [String]
    #
    Invitation = ::Struct.new(
      :account_id,
      :invitation_id,
      :relationship_status,
      :invited_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute detector_id
    #   <p>The unique ID of the detector of the GuardDuty account that you want to invite members
    #         with.</p>
    #
    #   @return [String]
    #
    # @!attribute account_ids
    #   <p>A list of account IDs of the accounts that you want to invite to GuardDuty as
    #         members.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute disable_email_notification
    #   <p>A Boolean value that specifies whether you want to disable email notification to the accounts that you are inviting to GuardDuty as members.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute message
    #   <p>The invitation message that you want to send to the accounts that you're inviting to
    #         GuardDuty as members.</p>
    #
    #   @return [String]
    #
    InviteMembersInput = ::Struct.new(
      :detector_id,
      :account_ids,
      :disable_email_notification,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.disable_email_notification ||= false
      end

    end

    # @!attribute unprocessed_accounts
    #   <p>A list of objects that contain the unprocessed account and a result string that explains
    #         why it was unprocessed.</p>
    #
    #   @return [Array<UnprocessedAccount>]
    #
    InviteMembersOutput = ::Struct.new(
      :unprocessed_accounts,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for IpSetFormat
    #
    module IpSetFormat
      # No documentation available.
      #
      TXT = "TXT"

      # No documentation available.
      #
      STIX = "STIX"

      # No documentation available.
      #
      OTX_CSV = "OTX_CSV"

      # No documentation available.
      #
      ALIEN_VAULT = "ALIEN_VAULT"

      # No documentation available.
      #
      PROOF_POINT = "PROOF_POINT"

      # No documentation available.
      #
      FIRE_EYE = "FIRE_EYE"
    end

    # Includes enum constants for IpSetStatus
    #
    module IpSetStatus
      # No documentation available.
      #
      INACTIVE = "INACTIVE"

      # No documentation available.
      #
      ACTIVATING = "ACTIVATING"

      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      DEACTIVATING = "DEACTIVATING"

      # No documentation available.
      #
      ERROR = "ERROR"

      # No documentation available.
      #
      DELETE_PENDING = "DELETE_PENDING"

      # No documentation available.
      #
      DELETED = "DELETED"
    end

    # <p>Information about the Kubernetes API call action described in this finding.</p>
    #
    # @!attribute request_uri
    #   <p>The Kubernetes API request URI.</p>
    #
    #   @return [String]
    #
    # @!attribute verb
    #   <p>The Kubernetes API request HTTP verb.</p>
    #
    #   @return [String]
    #
    # @!attribute source_ips
    #   <p>The IP of the  Kubernetes API caller and the IPs of any proxies or load balancers between the caller and the API endpoint.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute user_agent
    #   <p>The user agent of the caller of the Kubernetes API.</p>
    #
    #   @return [String]
    #
    # @!attribute remote_ip_details
    #   <p>Contains information about the remote IP address of the connection.</p>
    #
    #   @return [RemoteIpDetails]
    #
    # @!attribute status_code
    #   <p>The resulting HTTP response code of the Kubernetes API call action.</p>
    #
    #   @return [Integer]
    #
    # @!attribute parameters
    #   <p>Parameters related to the Kubernetes API call action.</p>
    #
    #   @return [String]
    #
    KubernetesApiCallAction = ::Struct.new(
      :request_uri,
      :verb,
      :source_ips,
      :user_agent,
      :remote_ip_details,
      :status_code,
      :parameters,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.status_code ||= 0
      end

    end

    # <p>Describes whether Kubernetes audit logs are enabled as a data source.</p>
    #
    # @!attribute enable
    #   <p>The status of Kubernetes audit logs as a data source.</p>
    #
    #   @return [Boolean]
    #
    KubernetesAuditLogsConfiguration = ::Struct.new(
      :enable,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.enable ||= false
      end

    end

    # <p>Describes whether Kubernetes audit logs are enabled as a data source.</p>
    #
    # @!attribute status
    #   <p>A value that describes whether Kubernetes audit logs are enabled as a data source.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    KubernetesAuditLogsConfigurationResult = ::Struct.new(
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes whether any Kubernetes data sources are enabled.</p>
    #
    # @!attribute audit_logs
    #   <p>The status of Kubernetes audit logs as a data source.</p>
    #
    #   @return [KubernetesAuditLogsConfiguration]
    #
    KubernetesConfiguration = ::Struct.new(
      :audit_logs,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes whether any Kubernetes logs will be enabled as a data source.</p>
    #
    # @!attribute audit_logs
    #   <p>Describes whether Kubernetes audit logs are enabled as a data source.</p>
    #
    #   @return [KubernetesAuditLogsConfigurationResult]
    #
    KubernetesConfigurationResult = ::Struct.new(
      :audit_logs,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about Kubernetes resources such as a Kubernetes user or workload resource involved in a Kubernetes finding.</p>
    #
    # @!attribute kubernetes_user_details
    #   <p>Details about the Kubernetes user involved in a Kubernetes finding.</p>
    #
    #   @return [KubernetesUserDetails]
    #
    # @!attribute kubernetes_workload_details
    #   <p>Details about the Kubernetes workload involved in a Kubernetes finding.</p>
    #
    #   @return [KubernetesWorkloadDetails]
    #
    KubernetesDetails = ::Struct.new(
      :kubernetes_user_details,
      :kubernetes_workload_details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about the Kubernetes user involved in a Kubernetes finding.</p>
    #
    # @!attribute username
    #   <p>The username of the user who called the Kubernetes API.</p>
    #
    #   @return [String]
    #
    # @!attribute uid
    #   <p>The user ID of the user who called the Kubernetes API.</p>
    #
    #   @return [String]
    #
    # @!attribute groups
    #   <p>The groups that include the user who called the Kubernetes API.</p>
    #
    #   @return [Array<String>]
    #
    KubernetesUserDetails = ::Struct.new(
      :username,
      :uid,
      :groups,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about the Kubernetes workload involved in a Kubernetes finding.</p>
    #
    # @!attribute name
    #   <p>Kubernetes workload name.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>Kubernetes workload type (e.g. Pod, Deployment, etc.).</p>
    #
    #   @return [String]
    #
    # @!attribute uid
    #   <p>Kubernetes workload ID.</p>
    #
    #   @return [String]
    #
    # @!attribute namespace
    #   <p>Kubernetes namespace that the workload is part of.</p>
    #
    #   @return [String]
    #
    # @!attribute host_network
    #   <p>Whether the hostNetwork flag is enabled for the pods included in the workload.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute containers
    #   <p>Containers running as part of the Kubernetes workload.</p>
    #
    #   @return [Array<Container>]
    #
    # @!attribute volumes
    #   <p>Volumes used by the Kubernetes workload.</p>
    #
    #   @return [Array<Volume>]
    #
    KubernetesWorkloadDetails = ::Struct.new(
      :name,
      :type,
      :uid,
      :namespace,
      :host_network,
      :containers,
      :volumes,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.host_network ||= false
      end

    end

    # @!attribute max_results
    #   <p>You can use this parameter to indicate the maximum number of items that you want in the
    #         response. The default value is 50. The maximum value is 50.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>You can use this parameter when paginating results. Set the value of this parameter to
    #         null on your first call to the list action. For subsequent calls to the action, fill nextToken
    #         in the request with the value of NextToken from the previous response to continue listing
    #         data.</p>
    #
    #   @return [String]
    #
    ListDetectorsInput = ::Struct.new(
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

    # @!attribute detector_ids
    #   <p>A list of detector IDs.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The pagination parameter to be used on the next list operation to retrieve more
    #         items.</p>
    #
    #   @return [String]
    #
    ListDetectorsOutput = ::Struct.new(
      :detector_ids,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute detector_id
    #   <p>The unique ID of the detector that the filter is associated with.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>You can use this parameter to indicate the maximum number of items that you want in the
    #         response. The default value is 50. The maximum value is 50.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>You can use this parameter when paginating results. Set the value of this parameter to
    #         null on your first call to the list action. For subsequent calls to the action, fill nextToken
    #         in the request with the value of NextToken from the previous response to continue listing
    #         data.</p>
    #
    #   @return [String]
    #
    ListFiltersInput = ::Struct.new(
      :detector_id,
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

    # @!attribute filter_names
    #   <p>A list of filter names.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The pagination parameter to be used on the next list operation to retrieve more
    #         items.</p>
    #
    #   @return [String]
    #
    ListFiltersOutput = ::Struct.new(
      :filter_names,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute detector_id
    #   <p>The ID of the detector that specifies the GuardDuty service whose findings you want to
    #         list.</p>
    #
    #   @return [String]
    #
    # @!attribute finding_criteria
    #   <p>Represents the criteria used for querying findings. Valid values include:</p>
    #            <ul>
    #               <li>
    #                  <p>JSON field name</p>
    #               </li>
    #               <li>
    #                  <p>accountId</p>
    #               </li>
    #               <li>
    #                  <p>region</p>
    #               </li>
    #               <li>
    #                  <p>confidence</p>
    #               </li>
    #               <li>
    #                  <p>id</p>
    #               </li>
    #               <li>
    #                  <p>resource.accessKeyDetails.accessKeyId</p>
    #               </li>
    #               <li>
    #                  <p>resource.accessKeyDetails.principalId</p>
    #               </li>
    #               <li>
    #                  <p>resource.accessKeyDetails.userName</p>
    #               </li>
    #               <li>
    #                  <p>resource.accessKeyDetails.userType</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.iamInstanceProfile.id</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.imageId</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.instanceId</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.networkInterfaces.ipv6Addresses</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.networkInterfaces.privateIpAddresses.privateIpAddress</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.networkInterfaces.publicDnsName</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.networkInterfaces.publicIp</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.networkInterfaces.securityGroups.groupId</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.networkInterfaces.securityGroups.groupName</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.networkInterfaces.subnetId</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.networkInterfaces.vpcId</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.tags.key</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.tags.value</p>
    #               </li>
    #               <li>
    #                  <p>resource.resourceType</p>
    #               </li>
    #               <li>
    #                  <p>service.action.actionType</p>
    #               </li>
    #               <li>
    #                  <p>service.action.awsApiCallAction.api</p>
    #               </li>
    #               <li>
    #                  <p>service.action.awsApiCallAction.callerType</p>
    #               </li>
    #               <li>
    #                  <p>service.action.awsApiCallAction.remoteIpDetails.city.cityName</p>
    #               </li>
    #               <li>
    #                  <p>service.action.awsApiCallAction.remoteIpDetails.country.countryName</p>
    #               </li>
    #               <li>
    #                  <p>service.action.awsApiCallAction.remoteIpDetails.ipAddressV4</p>
    #               </li>
    #               <li>
    #                  <p>service.action.awsApiCallAction.remoteIpDetails.organization.asn</p>
    #               </li>
    #               <li>
    #                  <p>service.action.awsApiCallAction.remoteIpDetails.organization.asnOrg</p>
    #               </li>
    #               <li>
    #                  <p>service.action.awsApiCallAction.serviceName</p>
    #               </li>
    #               <li>
    #                  <p>service.action.dnsRequestAction.domain</p>
    #               </li>
    #               <li>
    #                  <p>service.action.networkConnectionAction.blocked</p>
    #               </li>
    #               <li>
    #                  <p>service.action.networkConnectionAction.connectionDirection</p>
    #               </li>
    #               <li>
    #                  <p>service.action.networkConnectionAction.localPortDetails.port</p>
    #               </li>
    #               <li>
    #                  <p>service.action.networkConnectionAction.protocol</p>
    #               </li>
    #               <li>
    #                  <p>service.action.networkConnectionAction.remoteIpDetails.country.countryName</p>
    #               </li>
    #               <li>
    #                  <p>service.action.networkConnectionAction.remoteIpDetails.ipAddressV4</p>
    #               </li>
    #               <li>
    #                  <p>service.action.networkConnectionAction.remoteIpDetails.organization.asn</p>
    #               </li>
    #               <li>
    #                  <p>service.action.networkConnectionAction.remoteIpDetails.organization.asnOrg</p>
    #               </li>
    #               <li>
    #                  <p>service.action.networkConnectionAction.remotePortDetails.port</p>
    #               </li>
    #               <li>
    #                  <p>service.additionalInfo.threatListName</p>
    #               </li>
    #               <li>
    #                  <p>service.archived</p>
    #                  <p>When this attribute is set to 'true', only archived findings are listed. When it's set
    #             to 'false', only unarchived findings are listed. When this attribute is not set, all
    #             existing findings are listed.</p>
    #               </li>
    #               <li>
    #                  <p>service.resourceRole</p>
    #               </li>
    #               <li>
    #                  <p>severity</p>
    #               </li>
    #               <li>
    #                  <p>type</p>
    #               </li>
    #               <li>
    #                  <p>updatedAt</p>
    #                  <p>Type: Timestamp in Unix Epoch millisecond format: 1486685375000</p>
    #               </li>
    #            </ul>
    #
    #   @return [FindingCriteria]
    #
    # @!attribute sort_criteria
    #   <p>Represents the criteria used for sorting findings.</p>
    #
    #   @return [SortCriteria]
    #
    # @!attribute max_results
    #   <p>You can use this parameter to indicate the maximum number of items you want in the
    #         response. The default value is 50. The maximum value is 50.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>You can use this parameter when paginating results. Set the value of this parameter to
    #         null on your first call to the list action. For subsequent calls to the action, fill nextToken
    #         in the request with the value of NextToken from the previous response to continue listing
    #         data.</p>
    #
    #   @return [String]
    #
    ListFindingsInput = ::Struct.new(
      :detector_id,
      :finding_criteria,
      :sort_criteria,
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

    # @!attribute finding_ids
    #   <p>The IDs of the findings that you're listing.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The pagination parameter to be used on the next list operation to retrieve more
    #         items.</p>
    #
    #   @return [String]
    #
    ListFindingsOutput = ::Struct.new(
      :finding_ids,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute detector_id
    #   <p>The unique ID of the detector that the IPSet is associated with.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>You can use this parameter to indicate the maximum number of items you want in the
    #         response. The default value is 50. The maximum value is 50.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>You can use this parameter when paginating results. Set the value of this parameter to
    #         null on your first call to the list action. For subsequent calls to the action, fill nextToken
    #         in the request with the value of NextToken from the previous response to continue listing
    #         data.</p>
    #
    #   @return [String]
    #
    ListIPSetsInput = ::Struct.new(
      :detector_id,
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

    # @!attribute ip_set_ids
    #   <p>The IDs of the IPSet resources.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The pagination parameter to be used on the next list operation to retrieve more
    #         items.</p>
    #
    #   @return [String]
    #
    ListIPSetsOutput = ::Struct.new(
      :ip_set_ids,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>You can use this parameter to indicate the maximum number of items that you want in the
    #         response. The default value is 50. The maximum value is 50.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>You can use this parameter when paginating results. Set the value of this parameter to
    #         null on your first call to the list action. For subsequent calls to the action, fill nextToken
    #         in the request with the value of NextToken from the previous response to continue listing
    #         data.</p>
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
    #   <p>A list of invitation descriptions.</p>
    #
    #   @return [Array<Invitation>]
    #
    # @!attribute next_token
    #   <p>The pagination parameter to be used on the next list operation to retrieve more
    #         items.</p>
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

    # @!attribute detector_id
    #   <p>The unique ID of the detector the member is associated with.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>You can use this parameter to indicate the maximum number of items you want in the
    #         response. The default value is 50. The maximum value is 50.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>You can use this parameter when paginating results. Set the value of this parameter to
    #         null on your first call to the list action. For subsequent calls to the action, fill nextToken
    #         in the request with the value of NextToken from the previous response to continue listing
    #         data.</p>
    #
    #   @return [String]
    #
    # @!attribute only_associated
    #   <p>Specifies whether to only return associated members or to return all members (including
    #         members who haven't been invited yet or have been disassociated).</p>
    #
    #   @return [String]
    #
    ListMembersInput = ::Struct.new(
      :detector_id,
      :max_results,
      :next_token,
      :only_associated,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max_results ||= 0
      end

    end

    # @!attribute members
    #   <p>A list of members.</p>
    #
    #   @return [Array<Member>]
    #
    # @!attribute next_token
    #   <p>The pagination parameter to be used on the next list operation to retrieve more
    #         items.</p>
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
    #   <p>The maximum number of results to return in the response.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value of
    #         this parameter to null for the first request to a list action. For subsequent calls, use the
    #           <code>NextToken</code> value returned from the previous request to continue listing results
    #         after the first page.</p>
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
    #   <p>A list of accounts configured as GuardDuty delegated
    #         administrators.</p>
    #
    #   @return [Array<AdminAccount>]
    #
    # @!attribute next_token
    #   <p>The pagination parameter to be used on the next list operation to retrieve more
    #         items.</p>
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

    # @!attribute detector_id
    #   <p>The ID of the detector to retrieve publishing destinations for.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value of
    #         this parameter to null for the first request to a list action. For subsequent calls, use the
    #           <code>NextToken</code> value returned from the previous request to continue listing results
    #         after the first page.</p>
    #
    #   @return [String]
    #
    ListPublishingDestinationsInput = ::Struct.new(
      :detector_id,
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

    # @!attribute destinations
    #   <p>A <code>Destinations</code> object that includes information about each publishing
    #         destination returned.</p>
    #
    #   @return [Array<Destination>]
    #
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value of
    #         this parameter to null for the first request to a list action. For subsequent calls, use the
    #           <code>NextToken</code> value returned from the previous request to continue listing results
    #         after the first page.</p>
    #
    #   @return [String]
    #
    ListPublishingDestinationsOutput = ::Struct.new(
      :destinations,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) for the given GuardDuty resource. </p>
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
    #   <p>The tags associated with the resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute detector_id
    #   <p>The unique ID of the detector that the threatIntelSet is associated with.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>You can use this parameter to indicate the maximum number of items that you want in the
    #         response. The default value is 50. The maximum value is 50.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>You can use this parameter to paginate results in the response. Set the value of this
    #         parameter to null on your first call to the list action. For subsequent calls to the action,
    #         fill nextToken in the request with the value of NextToken from the previous response to
    #         continue listing data.</p>
    #
    #   @return [String]
    #
    ListThreatIntelSetsInput = ::Struct.new(
      :detector_id,
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

    # @!attribute threat_intel_set_ids
    #   <p>The IDs of the ThreatIntelSet resources.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The pagination parameter to be used on the next list operation to retrieve more
    #         items.</p>
    #
    #   @return [String]
    #
    ListThreatIntelSetsOutput = ::Struct.new(
      :threat_intel_set_ids,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about the local IP address of the connection.</p>
    #
    # @!attribute ip_address_v4
    #   <p>The IPv4 local address of the connection.</p>
    #
    #   @return [String]
    #
    LocalIpDetails = ::Struct.new(
      :ip_address_v4,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about the port for the local connection.</p>
    #
    # @!attribute port
    #   <p>The port number of the local connection.</p>
    #
    #   @return [Integer]
    #
    # @!attribute port_name
    #   <p>The port name of the local connection.</p>
    #
    #   @return [String]
    #
    LocalPortDetails = ::Struct.new(
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

    # <p>Contains information about the administrator account and invitation.</p>
    #
    # @!attribute account_id
    #   <p>The ID of the account used as the administrator account.</p>
    #
    #   @return [String]
    #
    # @!attribute invitation_id
    #   <p>The value used to validate the administrator account to the member account.</p>
    #
    #   @return [String]
    #
    # @!attribute relationship_status
    #   <p>The status of the relationship between the administrator and member accounts.</p>
    #
    #   @return [String]
    #
    # @!attribute invited_at
    #   <p>The timestamp when the invitation was sent.</p>
    #
    #   @return [String]
    #
    Master = ::Struct.new(
      :account_id,
      :invitation_id,
      :relationship_status,
      :invited_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about the member account. </p>
    #
    # @!attribute account_id
    #   <p>The ID of the member account.</p>
    #
    #   @return [String]
    #
    # @!attribute detector_id
    #   <p>The detector ID of the member account.</p>
    #
    #   @return [String]
    #
    # @!attribute master_id
    #   <p>The administrator account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute email
    #   <p>The email address of the member account.</p>
    #
    #   @return [String]
    #
    # @!attribute relationship_status
    #   <p>The status of the relationship between the member and the administrator.</p>
    #
    #   @return [String]
    #
    # @!attribute invited_at
    #   <p>The timestamp when the invitation was sent.</p>
    #
    #   @return [String]
    #
    # @!attribute updated_at
    #   <p>The last-updated timestamp of the member.</p>
    #
    #   @return [String]
    #
    Member = ::Struct.new(
      :account_id,
      :detector_id,
      :master_id,
      :email,
      :relationship_status,
      :invited_at,
      :updated_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information on which data sources are enabled for a member account.</p>
    #
    # @!attribute account_id
    #   <p>The account ID for the member account.</p>
    #
    #   @return [String]
    #
    # @!attribute data_sources
    #   <p>Contains information on the status of data sources for the account.</p>
    #
    #   @return [DataSourceConfigurationsResult]
    #
    MemberDataSourceConfiguration = ::Struct.new(
      :account_id,
      :data_sources,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about the NETWORK_CONNECTION action described in the finding.</p>
    #
    # @!attribute blocked
    #   <p>Indicates whether EC2 blocked the network connection to your instance.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute connection_direction
    #   <p>The network connection direction.</p>
    #
    #   @return [String]
    #
    # @!attribute local_port_details
    #   <p>The local port information of the connection.</p>
    #
    #   @return [LocalPortDetails]
    #
    # @!attribute protocol
    #   <p>The network connection protocol.</p>
    #
    #   @return [String]
    #
    # @!attribute local_ip_details
    #   <p>The local IP information of the connection.</p>
    #
    #   @return [LocalIpDetails]
    #
    # @!attribute remote_ip_details
    #   <p>The remote IP information of the connection.</p>
    #
    #   @return [RemoteIpDetails]
    #
    # @!attribute remote_port_details
    #   <p>The remote port information of the connection.</p>
    #
    #   @return [RemotePortDetails]
    #
    NetworkConnectionAction = ::Struct.new(
      :blocked,
      :connection_direction,
      :local_port_details,
      :protocol,
      :local_ip_details,
      :remote_ip_details,
      :remote_port_details,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.blocked ||= false
      end

    end

    # <p>Contains information about the elastic network interface of the EC2 instance.</p>
    #
    # @!attribute ipv6_addresses
    #   <p>A list of IPv6 addresses for the EC2 instance.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute network_interface_id
    #   <p>The ID of the network interface.</p>
    #
    #   @return [String]
    #
    # @!attribute private_dns_name
    #   <p>The private DNS name of the EC2 instance.</p>
    #
    #   @return [String]
    #
    # @!attribute private_ip_address
    #   <p>The private IP address of the EC2 instance.</p>
    #
    #   @return [String]
    #
    # @!attribute private_ip_addresses
    #   <p>Other private IP address information of the EC2 instance.</p>
    #
    #   @return [Array<PrivateIpAddressDetails>]
    #
    # @!attribute public_dns_name
    #   <p>The public DNS name of the EC2 instance.</p>
    #
    #   @return [String]
    #
    # @!attribute public_ip
    #   <p>The public IP address of the EC2 instance.</p>
    #
    #   @return [String]
    #
    # @!attribute security_groups
    #   <p>The security groups associated with the EC2 instance.</p>
    #
    #   @return [Array<SecurityGroup>]
    #
    # @!attribute subnet_id
    #   <p>The subnet ID of the EC2 instance.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_id
    #   <p>The VPC ID of the EC2 instance.</p>
    #
    #   @return [String]
    #
    NetworkInterface = ::Struct.new(
      :ipv6_addresses,
      :network_interface_id,
      :private_dns_name,
      :private_ip_address,
      :private_ip_addresses,
      :public_dns_name,
      :public_ip,
      :security_groups,
      :subnet_id,
      :vpc_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for OrderBy
    #
    module OrderBy
      # No documentation available.
      #
      ASC = "ASC"

      # No documentation available.
      #
      DESC = "DESC"
    end

    # <p>Contains information about the ISP organization of the remote IP address.</p>
    #
    # @!attribute asn
    #   <p>The Autonomous System Number (ASN) of the internet provider of the remote IP
    #         address.</p>
    #
    #   @return [String]
    #
    # @!attribute asn_org
    #   <p>The organization that registered this ASN.</p>
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
    Organization = ::Struct.new(
      :asn,
      :asn_org,
      :isp,
      :org,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that contains information on which data sources will be configured to be
    #       automatically enabled for new members within the organization.</p>
    #
    # @!attribute s3_logs
    #   <p>Describes whether S3 data event logs are enabled for new members of the
    #         organization.</p>
    #
    #   @return [OrganizationS3LogsConfiguration]
    #
    # @!attribute kubernetes
    #   <p>Describes the configuration of Kubernetes data sources for new members of the organization.</p>
    #
    #   @return [OrganizationKubernetesConfiguration]
    #
    OrganizationDataSourceConfigurations = ::Struct.new(
      :s3_logs,
      :kubernetes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that contains information on which data sources are automatically enabled for
    #       new members within the organization.</p>
    #
    # @!attribute s3_logs
    #   <p>Describes whether S3 data event logs are enabled as a data source.</p>
    #
    #   @return [OrganizationS3LogsConfigurationResult]
    #
    # @!attribute kubernetes
    #   <p>Describes the configuration of Kubernetes data sources.</p>
    #
    #   @return [OrganizationKubernetesConfigurationResult]
    #
    OrganizationDataSourceConfigurationsResult = ::Struct.new(
      :s3_logs,
      :kubernetes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Organization-wide Kubernetes audit logs configuration.</p>
    #
    # @!attribute auto_enable
    #   <p>A value that contains information on whether Kubernetes audit logs should be enabled
    #         automatically as a data source for the organization.</p>
    #
    #   @return [Boolean]
    #
    OrganizationKubernetesAuditLogsConfiguration = ::Struct.new(
      :auto_enable,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.auto_enable ||= false
      end

    end

    # <p>The current configuration of Kubernetes audit logs as a data source for the organization.</p>
    #
    # @!attribute auto_enable
    #   <p>Whether Kubernetes audit logs data source should be auto-enabled for new members joining the organization.</p>
    #
    #   @return [Boolean]
    #
    OrganizationKubernetesAuditLogsConfigurationResult = ::Struct.new(
      :auto_enable,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.auto_enable ||= false
      end

    end

    # <p>Organization-wide Kubernetes data sources configurations.</p>
    #
    # @!attribute audit_logs
    #   <p>Whether Kubernetes audit logs data source should be auto-enabled for new members joining the organization.</p>
    #
    #   @return [OrganizationKubernetesAuditLogsConfiguration]
    #
    OrganizationKubernetesConfiguration = ::Struct.new(
      :audit_logs,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The current configuration of all Kubernetes data sources for the organization.</p>
    #
    # @!attribute audit_logs
    #   <p>The current configuration of Kubernetes audit logs as a data source for the organization.</p>
    #
    #   @return [OrganizationKubernetesAuditLogsConfigurationResult]
    #
    OrganizationKubernetesConfigurationResult = ::Struct.new(
      :audit_logs,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes whether S3 data event logs will be automatically enabled for new members of the
    #       organization.</p>
    #
    # @!attribute auto_enable
    #   <p>A value that contains information on whether S3 data event logs will be enabled
    #         automatically as a data source for the organization.</p>
    #
    #   @return [Boolean]
    #
    OrganizationS3LogsConfiguration = ::Struct.new(
      :auto_enable,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.auto_enable ||= false
      end

    end

    # <p>The current configuration of S3 data event logs as a data source for the
    #       organization.</p>
    #
    # @!attribute auto_enable
    #   <p>A value that describes whether S3 data event logs are automatically enabled for new
    #         members of the organization.</p>
    #
    #   @return [Boolean]
    #
    OrganizationS3LogsConfigurationResult = ::Struct.new(
      :auto_enable,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.auto_enable ||= false
      end

    end

    # <p>Contains information on the owner of the bucket.</p>
    #
    # @!attribute id
    #   <p>The canonical user ID of the bucket owner. For information about locating your canonical
    #         user ID see <a href="https://docs.aws.amazon.com/general/latest/gr/acct-identifiers.html FindingCanonicalId">Finding Your Account
    #           Canonical User ID.</a>
    #            </p>
    #
    #   @return [String]
    #
    Owner = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about how permissions are configured for the S3 bucket.</p>
    #
    # @!attribute bucket_level_permissions
    #   <p>Contains information about the bucket level permissions for the S3 bucket.</p>
    #
    #   @return [BucketLevelPermissions]
    #
    # @!attribute account_level_permissions
    #   <p>Contains information about the account level permissions on the S3 bucket.</p>
    #
    #   @return [AccountLevelPermissions]
    #
    PermissionConfiguration = ::Struct.new(
      :bucket_level_permissions,
      :account_level_permissions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about the PORT_PROBE action described in the finding.</p>
    #
    # @!attribute blocked
    #   <p>Indicates whether EC2 blocked the port probe to the instance, such as with an ACL.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute port_probe_details
    #   <p>A list of objects related to port probe details.</p>
    #
    #   @return [Array<PortProbeDetail>]
    #
    PortProbeAction = ::Struct.new(
      :blocked,
      :port_probe_details,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.blocked ||= false
      end

    end

    # <p>Contains information about the port probe details.</p>
    #
    # @!attribute local_port_details
    #   <p>The local port information of the connection.</p>
    #
    #   @return [LocalPortDetails]
    #
    # @!attribute local_ip_details
    #   <p>The local IP information of the connection.</p>
    #
    #   @return [LocalIpDetails]
    #
    # @!attribute remote_ip_details
    #   <p>The remote IP information of the connection.</p>
    #
    #   @return [RemoteIpDetails]
    #
    PortProbeDetail = ::Struct.new(
      :local_port_details,
      :local_ip_details,
      :remote_ip_details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains other private IP address information of the EC2 instance.</p>
    #
    # @!attribute private_dns_name
    #   <p>The private DNS name of the EC2 instance.</p>
    #
    #   @return [String]
    #
    # @!attribute private_ip_address
    #   <p>The private IP address of the EC2 instance.</p>
    #
    #   @return [String]
    #
    PrivateIpAddressDetails = ::Struct.new(
      :private_dns_name,
      :private_ip_address,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about the product code for the EC2 instance.</p>
    #
    # @!attribute code
    #   <p>The product code information.</p>
    #
    #   @return [String]
    #
    # @!attribute product_type
    #   <p>The product code type.</p>
    #
    #   @return [String]
    #
    ProductCode = ::Struct.new(
      :code,
      :product_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the public access policies that apply to the S3 bucket.</p>
    #
    # @!attribute permission_configuration
    #   <p>Contains information about how permissions are configured for the S3 bucket.</p>
    #
    #   @return [PermissionConfiguration]
    #
    # @!attribute effective_permission
    #   <p>Describes the effective permission on this bucket after factoring all attached
    #         policies.</p>
    #
    #   @return [String]
    #
    PublicAccess = ::Struct.new(
      :permission_configuration,
      :effective_permission,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PublishingStatus
    #
    module PublishingStatus
      # No documentation available.
      #
      PENDING_VERIFICATION = "PENDING_VERIFICATION"

      # No documentation available.
      #
      PUBLISHING = "PUBLISHING"

      # No documentation available.
      #
      UNABLE_TO_PUBLISH_FIX_DESTINATION_PROPERTY = "UNABLE_TO_PUBLISH_FIX_DESTINATION_PROPERTY"

      # No documentation available.
      #
      STOPPED = "STOPPED"
    end

    # <p>Contains details about the remote Amazon Web Services account that made the API call.</p>
    #
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the remote API caller.</p>
    #
    #   @return [String]
    #
    # @!attribute affiliated
    #   <p>Details on whether the Amazon Web Services account of the remote API caller is related to your GuardDuty environment.  If this value is <code>True</code> the API caller is affiliated to your account in some way. If it is <code>False</code> the API caller is from outside your environment.</p>
    #
    #   @return [Boolean]
    #
    RemoteAccountDetails = ::Struct.new(
      :account_id,
      :affiliated,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.affiliated ||= false
      end

    end

    # <p>Contains information about the remote IP address of the connection.</p>
    #
    # @!attribute city
    #   <p>The city information of the remote IP address.</p>
    #
    #   @return [City]
    #
    # @!attribute country
    #   <p>The country code of the remote IP address.</p>
    #
    #   @return [Country]
    #
    # @!attribute geo_location
    #   <p>The location information of the remote IP address.</p>
    #
    #   @return [GeoLocation]
    #
    # @!attribute ip_address_v4
    #   <p>The IPv4 remote address of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute organization
    #   <p>The ISP organization information of the remote IP address.</p>
    #
    #   @return [Organization]
    #
    RemoteIpDetails = ::Struct.new(
      :city,
      :country,
      :geo_location,
      :ip_address_v4,
      :organization,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about the remote port.</p>
    #
    # @!attribute port
    #   <p>The port number of the remote connection.</p>
    #
    #   @return [Integer]
    #
    # @!attribute port_name
    #   <p>The port name of the remote connection.</p>
    #
    #   @return [String]
    #
    RemotePortDetails = ::Struct.new(
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

    # <p>Contains information about the Amazon Web Services resource associated with the activity that prompted
    #       GuardDuty to generate a finding.</p>
    #
    # @!attribute access_key_details
    #   <p>The IAM access key details (IAM user information) of a user that engaged in the activity
    #         that prompted GuardDuty to generate a finding.</p>
    #
    #   @return [AccessKeyDetails]
    #
    # @!attribute s3_bucket_details
    #   <p>Contains information on the S3 bucket.</p>
    #
    #   @return [Array<S3BucketDetail>]
    #
    # @!attribute instance_details
    #   <p>The information about the EC2 instance associated with the activity that prompted
    #         GuardDuty to generate a finding.</p>
    #
    #   @return [InstanceDetails]
    #
    # @!attribute eks_cluster_details
    #   <p>Details about the EKS cluster involved in a Kubernetes finding.</p>
    #
    #   @return [EksClusterDetails]
    #
    # @!attribute kubernetes_details
    #   <p>Details about the Kubernetes user and workload involved in a Kubernetes finding.</p>
    #
    #   @return [KubernetesDetails]
    #
    # @!attribute resource_type
    #   <p>The type of Amazon Web Services resource.</p>
    #
    #   @return [String]
    #
    Resource = ::Struct.new(
      :access_key_details,
      :s3_bucket_details,
      :instance_details,
      :eks_cluster_details,
      :kubernetes_details,
      :resource_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information on the S3 bucket.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the S3 bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the S3 bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>Describes whether the bucket is a source or destination bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The date and time the bucket was created at.</p>
    #
    #   @return [Time]
    #
    # @!attribute owner
    #   <p>The owner of the S3 bucket.</p>
    #
    #   @return [Owner]
    #
    # @!attribute tags
    #   <p>All tags attached to the S3 bucket</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute default_server_side_encryption
    #   <p>Describes the server side encryption method used in the S3 bucket.</p>
    #
    #   @return [DefaultServerSideEncryption]
    #
    # @!attribute public_access
    #   <p>Describes the public access policies that apply to the S3 bucket.</p>
    #
    #   @return [PublicAccess]
    #
    S3BucketDetail = ::Struct.new(
      :arn,
      :name,
      :type,
      :created_at,
      :owner,
      :tags,
      :default_server_side_encryption,
      :public_access,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes whether S3 data event logs will be enabled as a data source.</p>
    #
    # @!attribute enable
    #   <p> The status of S3 data event logs as a data source.</p>
    #
    #   @return [Boolean]
    #
    S3LogsConfiguration = ::Struct.new(
      :enable,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.enable ||= false
      end

    end

    # <p>Describes whether S3 data event logs will be enabled as a data source.</p>
    #
    # @!attribute status
    #   <p>A value that describes whether S3 data event logs are automatically enabled for new
    #         members of the organization.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    S3LogsConfigurationResult = ::Struct.new(
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Container security context.</p>
    #
    # @!attribute privileged
    #   <p>Whether the container is privileged.</p>
    #
    #   @return [Boolean]
    #
    SecurityContext = ::Struct.new(
      :privileged,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.privileged ||= false
      end

    end

    # <p>Contains information about the security groups associated with the EC2 instance.</p>
    #
    # @!attribute group_id
    #   <p>The security group ID of the EC2 instance.</p>
    #
    #   @return [String]
    #
    # @!attribute group_name
    #   <p>The security group name of the EC2 instance.</p>
    #
    #   @return [String]
    #
    SecurityGroup = ::Struct.new(
      :group_id,
      :group_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains additional information about the generated finding.</p>
    #
    # @!attribute action
    #   <p>Information about the activity that is described in a finding.</p>
    #
    #   @return [Action]
    #
    # @!attribute evidence
    #   <p>An evidence object associated with the service.</p>
    #
    #   @return [Evidence]
    #
    # @!attribute archived
    #   <p>Indicates whether this finding is archived.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute count
    #   <p>The total count of the occurrences of this finding type.</p>
    #
    #   @return [Integer]
    #
    # @!attribute detector_id
    #   <p>The detector ID for the GuardDuty service.</p>
    #
    #   @return [String]
    #
    # @!attribute event_first_seen
    #   <p>The first-seen timestamp of the activity that prompted GuardDuty to generate this
    #         finding.</p>
    #
    #   @return [String]
    #
    # @!attribute event_last_seen
    #   <p>The last-seen timestamp of the activity that prompted GuardDuty to generate this
    #         finding.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_role
    #   <p>The resource role information for this finding.</p>
    #
    #   @return [String]
    #
    # @!attribute service_name
    #   <p>The name of the Amazon Web Services service (GuardDuty) that generated a finding.</p>
    #
    #   @return [String]
    #
    # @!attribute user_feedback
    #   <p>Feedback that was submitted about the finding.</p>
    #
    #   @return [String]
    #
    Service = ::Struct.new(
      :action,
      :evidence,
      :archived,
      :count,
      :detector_id,
      :event_first_seen,
      :event_last_seen,
      :resource_role,
      :service_name,
      :user_feedback,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.archived ||= false
        self.count ||= 0
      end

    end

    # <p>Contains information about the criteria used for sorting findings.</p>
    #
    # @!attribute attribute_name
    #   <p>Represents the finding attribute (for example, accountId) to sort findings by.</p>
    #
    #   @return [String]
    #
    # @!attribute order_by
    #   <p>The order by which the sorted findings are to be displayed.</p>
    #
    #   Enum, one of: ["ASC", "DESC"]
    #
    #   @return [String]
    #
    SortCriteria = ::Struct.new(
      :attribute_name,
      :order_by,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute detector_id
    #   <p>The unique ID of the detector of the GuardDuty administrator account associated with the member
    #         accounts to monitor.</p>
    #
    #   @return [String]
    #
    # @!attribute account_ids
    #   <p>A list of account IDs of the GuardDuty member accounts to start monitoring.</p>
    #
    #   @return [Array<String>]
    #
    StartMonitoringMembersInput = ::Struct.new(
      :detector_id,
      :account_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute unprocessed_accounts
    #   <p>A list of objects that contain the unprocessed account and a result string that explains
    #         why it was unprocessed.</p>
    #
    #   @return [Array<UnprocessedAccount>]
    #
    StartMonitoringMembersOutput = ::Struct.new(
      :unprocessed_accounts,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute detector_id
    #   <p>The unique ID of the detector associated with the GuardDuty administrator account that is
    #         monitoring member accounts.</p>
    #
    #   @return [String]
    #
    # @!attribute account_ids
    #   <p>A list of account IDs for the member accounts to stop monitoring.</p>
    #
    #   @return [Array<String>]
    #
    StopMonitoringMembersInput = ::Struct.new(
      :detector_id,
      :account_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute unprocessed_accounts
    #   <p>A list of objects that contain an accountId for each account that could not be processed,
    #         and a result string that indicates why the account was not processed. </p>
    #
    #   @return [Array<UnprocessedAccount>]
    #
    StopMonitoringMembersOutput = ::Struct.new(
      :unprocessed_accounts,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about a tag associated with the EC2 instance.</p>
    #
    # @!attribute key
    #   <p>The EC2 instance tag key.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The EC2 instance tag value.</p>
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
    #   <p>The Amazon Resource Name (ARN) for the GuardDuty resource to apply a tag to.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to be added to a resource.</p>
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

    # Includes enum constants for ThreatIntelSetFormat
    #
    module ThreatIntelSetFormat
      # No documentation available.
      #
      TXT = "TXT"

      # No documentation available.
      #
      STIX = "STIX"

      # No documentation available.
      #
      OTX_CSV = "OTX_CSV"

      # No documentation available.
      #
      ALIEN_VAULT = "ALIEN_VAULT"

      # No documentation available.
      #
      PROOF_POINT = "PROOF_POINT"

      # No documentation available.
      #
      FIRE_EYE = "FIRE_EYE"
    end

    # Includes enum constants for ThreatIntelSetStatus
    #
    module ThreatIntelSetStatus
      # No documentation available.
      #
      INACTIVE = "INACTIVE"

      # No documentation available.
      #
      ACTIVATING = "ACTIVATING"

      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      DEACTIVATING = "DEACTIVATING"

      # No documentation available.
      #
      ERROR = "ERROR"

      # No documentation available.
      #
      DELETE_PENDING = "DELETE_PENDING"

      # No documentation available.
      #
      DELETED = "DELETED"
    end

    # <p>An instance of a threat intelligence detail that constitutes evidence for the
    #       finding.</p>
    #
    # @!attribute threat_list_name
    #   <p>The name of the threat intelligence list that triggered the finding.</p>
    #
    #   @return [String]
    #
    # @!attribute threat_names
    #   <p>A list of names of the threats in the threat intelligence list that triggered the
    #         finding.</p>
    #
    #   @return [Array<String>]
    #
    ThreatIntelligenceDetail = ::Struct.new(
      :threat_list_name,
      :threat_names,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the total usage with the corresponding currency unit for that value.</p>
    #
    # @!attribute amount
    #   <p>The total usage.</p>
    #
    #   @return [String]
    #
    # @!attribute unit
    #   <p>The currency unit that the amount is given in.</p>
    #
    #   @return [String]
    #
    Total = ::Struct.new(
      :amount,
      :unit,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute detector_id
    #   <p>The ID of the detector associated with the findings to unarchive.</p>
    #
    #   @return [String]
    #
    # @!attribute finding_ids
    #   <p>The IDs of the findings to unarchive.</p>
    #
    #   @return [Array<String>]
    #
    UnarchiveFindingsInput = ::Struct.new(
      :detector_id,
      :finding_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UnarchiveFindingsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about the accounts that weren't processed.</p>
    #
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute result
    #   <p>A reason why the account hasn't been processed.</p>
    #
    #   @return [String]
    #
    UnprocessedAccount = ::Struct.new(
      :account_id,
      :result,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) for the resource to remove tags from.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>The tag keys to remove from the resource.</p>
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

    # @!attribute detector_id
    #   <p>The unique ID of the detector to update.</p>
    #
    #   @return [String]
    #
    # @!attribute enable
    #   <p>Specifies whether the detector is enabled or not enabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute finding_publishing_frequency
    #   <p>An enum value that specifies how frequently findings are exported, such as to CloudWatch
    #         Events.</p>
    #
    #   Enum, one of: ["FIFTEEN_MINUTES", "ONE_HOUR", "SIX_HOURS"]
    #
    #   @return [String]
    #
    # @!attribute data_sources
    #   <p>Describes which data sources will be updated.</p>
    #
    #   @return [DataSourceConfigurations]
    #
    UpdateDetectorInput = ::Struct.new(
      :detector_id,
      :enable,
      :finding_publishing_frequency,
      :data_sources,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.enable ||= false
      end

    end

    UpdateDetectorOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute detector_id
    #   <p>The unique ID of the detector that specifies the GuardDuty service where you want to
    #         update a filter.</p>
    #
    #   @return [String]
    #
    # @!attribute filter_name
    #   <p>The name of the filter.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the filter.</p>
    #
    #   @return [String]
    #
    # @!attribute action
    #   <p>Specifies the action that is to be applied to the findings that match the filter.</p>
    #
    #   Enum, one of: ["NOOP", "ARCHIVE"]
    #
    #   @return [String]
    #
    # @!attribute rank
    #   <p>Specifies the position of the filter in the list of current filters. Also specifies the
    #         order in which this filter is applied to the findings.</p>
    #
    #   @return [Integer]
    #
    # @!attribute finding_criteria
    #   <p>Represents the criteria to be used in the filter for querying findings.</p>
    #
    #   @return [FindingCriteria]
    #
    UpdateFilterInput = ::Struct.new(
      :detector_id,
      :filter_name,
      :description,
      :action,
      :rank,
      :finding_criteria,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.rank ||= 0
      end

    end

    # @!attribute name
    #   <p>The name of the filter.</p>
    #
    #   @return [String]
    #
    UpdateFilterOutput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute detector_id
    #   <p>The ID of the detector associated with the findings to update feedback for.</p>
    #
    #   @return [String]
    #
    # @!attribute finding_ids
    #   <p>The IDs of the findings that you want to mark as useful or not useful.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute feedback
    #   <p>The feedback for the finding.</p>
    #
    #   Enum, one of: ["USEFUL", "NOT_USEFUL"]
    #
    #   @return [String]
    #
    # @!attribute comments
    #   <p>Additional feedback about the GuardDuty findings.</p>
    #
    #   @return [String]
    #
    UpdateFindingsFeedbackInput = ::Struct.new(
      :detector_id,
      :finding_ids,
      :feedback,
      :comments,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateFindingsFeedbackOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute detector_id
    #   <p>The detectorID that specifies the GuardDuty service whose IPSet you want to update.</p>
    #
    #   @return [String]
    #
    # @!attribute ip_set_id
    #   <p>The unique ID that specifies the IPSet that you want to update.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The unique ID that specifies the IPSet that you want to update.</p>
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>The updated URI of the file that contains the IPSet. </p>
    #
    #   @return [String]
    #
    # @!attribute activate
    #   <p>The updated Boolean value that specifies whether the IPSet is active or not.</p>
    #
    #   @return [Boolean]
    #
    UpdateIPSetInput = ::Struct.new(
      :detector_id,
      :ip_set_id,
      :name,
      :location,
      :activate,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.activate ||= false
      end

    end

    UpdateIPSetOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute detector_id
    #   <p>The detector ID of the administrator account.</p>
    #
    #   @return [String]
    #
    # @!attribute account_ids
    #   <p>A list of member account IDs to be updated.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute data_sources
    #   <p>Describes which data sources will be updated.</p>
    #
    #   @return [DataSourceConfigurations]
    #
    UpdateMemberDetectorsInput = ::Struct.new(
      :detector_id,
      :account_ids,
      :data_sources,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute unprocessed_accounts
    #   <p>A list of member account IDs that were unable to be processed along with an explanation
    #         for why they were not processed.</p>
    #
    #   @return [Array<UnprocessedAccount>]
    #
    UpdateMemberDetectorsOutput = ::Struct.new(
      :unprocessed_accounts,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute detector_id
    #   <p>The ID of the detector to update the delegated administrator for.</p>
    #
    #   @return [String]
    #
    # @!attribute auto_enable
    #   <p>Indicates whether to automatically enable member accounts in the organization.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute data_sources
    #   <p>Describes which data sources will be updated.</p>
    #
    #   @return [OrganizationDataSourceConfigurations]
    #
    UpdateOrganizationConfigurationInput = ::Struct.new(
      :detector_id,
      :auto_enable,
      :data_sources,
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

    # @!attribute detector_id
    #   <p>The ID of the detector associated with the publishing destinations to update.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_id
    #   <p>The ID of the publishing destination to update.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_properties
    #   <p>A <code>DestinationProperties</code> object that includes the <code>DestinationArn</code>
    #         and <code>KmsKeyArn</code> of the publishing destination.</p>
    #
    #   @return [DestinationProperties]
    #
    UpdatePublishingDestinationInput = ::Struct.new(
      :detector_id,
      :destination_id,
      :destination_properties,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdatePublishingDestinationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute detector_id
    #   <p>The detectorID that specifies the GuardDuty service whose ThreatIntelSet you want to
    #         update.</p>
    #
    #   @return [String]
    #
    # @!attribute threat_intel_set_id
    #   <p>The unique ID that specifies the ThreatIntelSet that you want to update.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The unique ID that specifies the ThreatIntelSet that you want to update.</p>
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>The updated URI of the file that contains the ThreateIntelSet.</p>
    #
    #   @return [String]
    #
    # @!attribute activate
    #   <p>The updated Boolean value that specifies whether the ThreateIntelSet is active or
    #         not.</p>
    #
    #   @return [Boolean]
    #
    UpdateThreatIntelSetInput = ::Struct.new(
      :detector_id,
      :threat_intel_set_id,
      :name,
      :location,
      :activate,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.activate ||= false
      end

    end

    UpdateThreatIntelSetOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information on the total of usage based on account IDs.</p>
    #
    # @!attribute account_id
    #   <p>The Account ID that generated usage.</p>
    #
    #   @return [String]
    #
    # @!attribute total
    #   <p>Represents the total of usage for the Account ID.</p>
    #
    #   @return [Total]
    #
    UsageAccountResult = ::Struct.new(
      :account_id,
      :total,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about the criteria used to query usage statistics.</p>
    #
    # @!attribute account_ids
    #   <p>The account IDs to aggregate usage statistics from.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute data_sources
    #   <p>The data sources to aggregate usage statistics from.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute resources
    #   <p>The resources to aggregate usage statistics from. Only accepts exact resource
    #         names.</p>
    #
    #   @return [Array<String>]
    #
    UsageCriteria = ::Struct.new(
      :account_ids,
      :data_sources,
      :resources,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information on the result of usage based on data source type.</p>
    #
    # @!attribute data_source
    #   <p>The data source type that generated usage.</p>
    #
    #   Enum, one of: ["FLOW_LOGS", "CLOUD_TRAIL", "DNS_LOGS", "S3_LOGS", "KUBERNETES_AUDIT_LOGS"]
    #
    #   @return [String]
    #
    # @!attribute total
    #   <p>Represents the total of usage for the specified data source.</p>
    #
    #   @return [Total]
    #
    UsageDataSourceResult = ::Struct.new(
      :data_source,
      :total,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information on the sum of usage based on an Amazon Web Services resource.</p>
    #
    # @!attribute resource
    #   <p>The Amazon Web Services resource that generated usage.</p>
    #
    #   @return [String]
    #
    # @!attribute total
    #   <p>Represents the sum total of usage for the specified resource type.</p>
    #
    #   @return [Total]
    #
    UsageResourceResult = ::Struct.new(
      :resource,
      :total,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for UsageStatisticType
    #
    module UsageStatisticType
      # No documentation available.
      #
      SUM_BY_ACCOUNT = "SUM_BY_ACCOUNT"

      # No documentation available.
      #
      SUM_BY_DATA_SOURCE = "SUM_BY_DATA_SOURCE"

      # No documentation available.
      #
      SUM_BY_RESOURCE = "SUM_BY_RESOURCE"

      # No documentation available.
      #
      TOP_RESOURCES = "TOP_RESOURCES"
    end

    # <p>Contains the result of GuardDuty usage. If a UsageStatisticType is provided the result for
    #       other types will be null. </p>
    #
    # @!attribute sum_by_account
    #   <p>The usage statistic sum organized by account ID.</p>
    #
    #   @return [Array<UsageAccountResult>]
    #
    # @!attribute sum_by_data_source
    #   <p>The usage statistic sum organized by on data source.</p>
    #
    #   @return [Array<UsageDataSourceResult>]
    #
    # @!attribute sum_by_resource
    #   <p>The usage statistic sum organized by resource.</p>
    #
    #   @return [Array<UsageResourceResult>]
    #
    # @!attribute top_resources
    #   <p>Lists the top 50 resources that have generated the most GuardDuty usage, in order from
    #         most to least expensive.</p>
    #
    #   @return [Array<UsageResourceResult>]
    #
    UsageStatistics = ::Struct.new(
      :sum_by_account,
      :sum_by_data_source,
      :sum_by_resource,
      :top_resources,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Volume used by the Kubernetes workload.</p>
    #
    # @!attribute name
    #   <p>Volume name.</p>
    #
    #   @return [String]
    #
    # @!attribute host_path
    #   <p>Represents a pre-existing file or directory on the host machine that the volume maps to.</p>
    #
    #   @return [HostPath]
    #
    Volume = ::Struct.new(
      :name,
      :host_path,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Container volume mount.</p>
    #
    # @!attribute name
    #   <p>Volume mount name.</p>
    #
    #   @return [String]
    #
    # @!attribute mount_path
    #   <p>Volume mount path.</p>
    #
    #   @return [String]
    #
    VolumeMount = ::Struct.new(
      :name,
      :mount_path,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
