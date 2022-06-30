# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::BackupGateway
  module Types

    # <p>The operation cannot proceed because you have insufficient permissions.</p>
    #
    # @!attribute error_code
    #   <p>A description of why you have insufficient permissions.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AccessDeniedException = ::Struct.new(
      :error_code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <code>ListGateways</code> operation
    #         to return a list of gateways for your account and Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute server_arn
    #   <p>The Amazon Resource Name (ARN) of the server that hosts your virtual machines.</p>
    #
    #   @return [String]
    #
    AssociateGatewayToServerInput = ::Struct.new(
      :gateway_arn,
      :server_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of a gateway.</p>
    #
    #   @return [String]
    #
    AssociateGatewayToServerOutput = ::Struct.new(
      :gateway_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The operation cannot proceed because it is not supported.</p>
    #
    # @!attribute error_code
    #   <p>A description of why the operation is not supported.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ConflictException = ::Struct.new(
      :error_code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute activation_key
    #   <p>The activation key of the created gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute gateway_display_name
    #   <p>The display name of the created gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute gateway_type
    #   <p>The type of created gateway.</p>
    #
    #   Enum, one of: ["BACKUP_VM"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of up to 50 tags to assign to the gateway. Each tag is a key-value pair.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateGatewayInput = ::Struct.new(
      :activation_key,
      :gateway_display_name,
      :gateway_type,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway you create.</p>
    #
    #   @return [String]
    #
    CreateGatewayOutput = ::Struct.new(
      :gateway_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway to delete.</p>
    #
    #   @return [String]
    #
    DeleteGatewayInput = ::Struct.new(
      :gateway_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway you deleted.</p>
    #
    #   @return [String]
    #
    DeleteGatewayOutput = ::Struct.new(
      :gateway_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute hypervisor_arn
    #   <p>The Amazon Resource Name (ARN) of the hypervisor to delete.</p>
    #
    #   @return [String]
    #
    DeleteHypervisorInput = ::Struct.new(
      :hypervisor_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute hypervisor_arn
    #   <p>The Amazon Resource Name (ARN) of the hypervisor you deleted.</p>
    #
    #   @return [String]
    #
    DeleteHypervisorOutput = ::Struct.new(
      :hypervisor_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway to disassociate.</p>
    #
    #   @return [String]
    #
    DisassociateGatewayFromServerInput = ::Struct.new(
      :gateway_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway you disassociated.</p>
    #
    #   @return [String]
    #
    DisassociateGatewayFromServerOutput = ::Struct.new(
      :gateway_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A gateway is an Backup Gateway appliance that runs on the customer's network
    #       to provide seamless connectivity to backup storage in the Amazon Web Services Cloud.</p>
    #
    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <code>ListGateways</code> operation
    #         to return a list of gateways for your account and Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute gateway_display_name
    #   <p>The display name of the gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute gateway_type
    #   <p>The type of the gateway.</p>
    #
    #   Enum, one of: ["BACKUP_VM"]
    #
    #   @return [String]
    #
    # @!attribute hypervisor_id
    #   <p>The hypervisor ID of the gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute last_seen_time
    #   <p>The last time Backup gateway communicated with the gateway, in Unix format and
    #         UTC time.</p>
    #
    #   @return [Time]
    #
    Gateway = ::Struct.new(
      :gateway_arn,
      :gateway_display_name,
      :gateway_type,
      :hypervisor_id,
      :last_seen_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The details of gateway.</p>
    #
    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the
    #         gateway. Use the <code>ListGateways</code> operation
    #         to return a list of gateways for your account and
    #         Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute gateway_display_name
    #   <p>The display name of the gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute gateway_type
    #   <p>The type of the gateway type.</p>
    #
    #   Enum, one of: ["BACKUP_VM"]
    #
    #   @return [String]
    #
    # @!attribute hypervisor_id
    #   <p>The hypervisor ID of the gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute last_seen_time
    #   <p>Details showing the last time Backup gateway communicated
    #         with the cloud, in Unix format and UTC time.</p>
    #
    #   @return [Time]
    #
    # @!attribute next_update_availability_time
    #   <p>Details showing the next update availability time of the
    #         gateway.</p>
    #
    #   @return [Time]
    #
    # @!attribute vpc_endpoint
    #   <p>The DNS name for the virtual private cloud (VPC) endpoint the gateway
    #         uses to connect to the cloud for backup gateway.</p>
    #
    #   @return [String]
    #
    GatewayDetails = ::Struct.new(
      :gateway_arn,
      :gateway_display_name,
      :gateway_type,
      :hypervisor_id,
      :last_seen_time,
      :next_update_availability_time,
      :vpc_endpoint,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for GatewayType
    #
    module GatewayType
      # No documentation available.
      #
      BACKUP_VM = "BACKUP_VM"
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway.</p>
    #
    #   @return [String]
    #
    GetGatewayInput = ::Struct.new(
      :gateway_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute gateway
    #   <p>By providing the ARN (Amazon Resource Name), this
    #         API returns the gateway.</p>
    #
    #   @return [GatewayDetails]
    #
    GetGatewayOutput = ::Struct.new(
      :gateway,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the hypervisor's permissions to which the gateway will connect.</p>
    #          <p>A hypervisor is hardware, software, or firmware that creates and manages virtual machines,
    #       and allocates resources to them.</p>
    #
    # @!attribute host
    #   <p>The server host of the hypervisor. This can be either an IP address or a fully-qualified
    #         domain name (FQDN).</p>
    #
    #   @return [String]
    #
    # @!attribute hypervisor_arn
    #   <p>The Amazon Resource Name (ARN) of the hypervisor.</p>
    #
    #   @return [String]
    #
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the Key Management Service used to encrypt the
    #         hypervisor.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the hypervisor.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the hypervisor.</p>
    #
    #   Enum, one of: ["PENDING", "ONLINE", "OFFLINE", "ERROR"]
    #
    #   @return [String]
    #
    Hypervisor = ::Struct.new(
      :host,
      :hypervisor_arn,
      :kms_key_arn,
      :name,
      :state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for HypervisorState
    #
    module HypervisorState
      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      ONLINE = "ONLINE"

      # No documentation available.
      #
      OFFLINE = "OFFLINE"

      # No documentation available.
      #
      ERROR = "ERROR"
    end

    # @!attribute name
    #   <p>The name of the hypervisor.</p>
    #
    #   @return [String]
    #
    # @!attribute host
    #   <p>The server host of the hypervisor. This can be either an IP address or a fully-qualified
    #         domain name (FQDN).</p>
    #
    #   @return [String]
    #
    # @!attribute username
    #   <p>The username for the hypervisor.</p>
    #
    #   @return [String]
    #
    # @!attribute password
    #   <p>The password for the hypervisor.</p>
    #
    #   @return [String]
    #
    # @!attribute kms_key_arn
    #   <p>The Key Management Service for the hypervisor.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags of the hypervisor configuration to import.</p>
    #
    #   @return [Array<Tag>]
    #
    ImportHypervisorConfigurationInput = ::Struct.new(
      :name,
      :host,
      :username,
      :password,
      :kms_key_arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::BackupGateway::Types::ImportHypervisorConfigurationInput "\
          "name=#{name || 'nil'}, "\
          "host=#{host || 'nil'}, "\
          "username=\"[SENSITIVE]\", "\
          "password=\"[SENSITIVE]\", "\
          "kms_key_arn=#{kms_key_arn || 'nil'}, "\
          "tags=#{tags || 'nil'}>"
      end
    end

    # @!attribute hypervisor_arn
    #   <p>The Amazon Resource Name (ARN) of the hypervisor you disassociated.</p>
    #
    #   @return [String]
    #
    ImportHypervisorConfigurationOutput = ::Struct.new(
      :hypervisor_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The operation did not succeed because an internal error occurred. Try again later.</p>
    #
    # @!attribute error_code
    #   <p>A description of which internal error occured.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InternalServerException = ::Struct.new(
      :error_code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of gateways to list.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The next item following a partial list of returned resources. For example, if a request is
    #         made to return <code>MaxResults</code> number of resources, <code>NextToken</code> allows you
    #         to return more items in your list starting at the location pointed to by the next
    #         token.</p>
    #
    #   @return [String]
    #
    ListGatewaysInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute gateways
    #   <p>A list of your gateways.</p>
    #
    #   @return [Array<Gateway>]
    #
    # @!attribute next_token
    #   <p>The next item following a partial list of returned resources. For example, if a request is
    #         made to return <code>maxResults</code> number of resources, <code>NextToken</code> allows you
    #         to return more items in your list starting at the location pointed to by the next
    #         token.</p>
    #
    #   @return [String]
    #
    ListGatewaysOutput = ::Struct.new(
      :gateways,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of hypervisors to list.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The next item following a partial list of returned resources. For example, if a request is
    #         made to return <code>maxResults</code> number of resources, <code>NextToken</code> allows you
    #         to return more items in your list starting at the location pointed to by the next
    #         token.</p>
    #
    #   @return [String]
    #
    ListHypervisorsInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute hypervisors
    #   <p>A list of your <code>Hypervisor</code> objects, ordered by their Amazon Resource Names
    #         (ARNs).</p>
    #
    #   @return [Array<Hypervisor>]
    #
    # @!attribute next_token
    #   <p>The next item following a partial list of returned resources. For example, if a request is
    #         made to return <code>maxResults</code> number of resources, <code>NextToken</code> allows you
    #         to return more items in your list starting at the location pointed to by the next
    #         token.</p>
    #
    #   @return [String]
    #
    ListHypervisorsOutput = ::Struct.new(
      :hypervisors,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource's tags to list.</p>
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
    #   <p>The Amazon Resource Name (ARN) of the resource's tags that you listed.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of the resource's tags.</p>
    #
    #   @return [Array<Tag>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of virtual machines to list.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The next item following a partial list of returned resources. For example, if a request is
    #         made to return <code>maxResults</code> number of resources, <code>NextToken</code> allows you
    #         to return more items in your list starting at the location pointed to by the next
    #         token.</p>
    #
    #   @return [String]
    #
    ListVirtualMachinesInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute virtual_machines
    #   <p>A list of your <code>VirtualMachine</code> objects, ordered by their Amazon Resource Names
    #         (ARNs).</p>
    #
    #   @return [Array<VirtualMachine>]
    #
    # @!attribute next_token
    #   <p>The next item following a partial list of returned resources. For example, if a request is
    #         made to return <code>maxResults</code> number of resources, <code>NextToken</code> allows you
    #         to return more items in your list starting at the location pointed to by the next
    #         token.</p>
    #
    #   @return [String]
    #
    ListVirtualMachinesOutput = ::Struct.new(
      :virtual_machines,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) for the gateway, used to specify its maintenance start
    #         time.</p>
    #
    #   @return [String]
    #
    # @!attribute hour_of_day
    #   <p>The hour of the day to start maintenance on a gateway.</p>
    #
    #   @return [Integer]
    #
    # @!attribute minute_of_hour
    #   <p>The minute of the hour to start maintenance on a gateway.</p>
    #
    #   @return [Integer]
    #
    # @!attribute day_of_week
    #   <p>The day of the week to start maintenance on a gateway.</p>
    #
    #   @return [Integer]
    #
    # @!attribute day_of_month
    #   <p>The day of the month start maintenance on a gateway.</p>
    #            <p>Valid values range from <code>Sunday</code> to <code>Saturday</code>.</p>
    #
    #   @return [Integer]
    #
    PutMaintenanceStartTimeInput = ::Struct.new(
      :gateway_arn,
      :hour_of_day,
      :minute_of_hour,
      :day_of_week,
      :day_of_month,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of a gateway for which you set the maintenance start
    #         time.</p>
    #
    #   @return [String]
    #
    PutMaintenanceStartTimeOutput = ::Struct.new(
      :gateway_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A resource that is required for the action wasn't found.</p>
    #
    # @!attribute error_code
    #   <p>A description of which resource wasn't found.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :error_code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A key-value pair you can use to manage, filter, and search for your resources. Allowed
    #       characters include UTF-8 letters, numbers, spaces, and the following characters: + - = . _ :
    #       /.</p>
    #
    # @!attribute key
    #   <p>The key part of a tag's key-value pair. The key can't start with <code>aws:</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value part of a tag's key-value pair.</p>
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
    #   <p>The Amazon Resource Name (ARN) of the resource to tag.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of tags to assign to the resource.</p>
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

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource you tagged.</p>
    #
    #   @return [String]
    #
    TagResourceOutput = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway to the hypervisor to test.</p>
    #
    #   @return [String]
    #
    # @!attribute host
    #   <p>The server host of the hypervisor. This can be either an IP address or a fully-qualified
    #         domain name (FQDN).</p>
    #
    #   @return [String]
    #
    # @!attribute username
    #   <p>The username for the hypervisor.</p>
    #
    #   @return [String]
    #
    # @!attribute password
    #   <p>The password for the hypervisor.</p>
    #
    #   @return [String]
    #
    TestHypervisorConfigurationInput = ::Struct.new(
      :gateway_arn,
      :host,
      :username,
      :password,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::BackupGateway::Types::TestHypervisorConfigurationInput "\
          "gateway_arn=#{gateway_arn || 'nil'}, "\
          "host=#{host || 'nil'}, "\
          "username=\"[SENSITIVE]\", "\
          "password=\"[SENSITIVE]\">"
      end
    end

    TestHypervisorConfigurationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource from which to remove tags.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>The list of tag keys specifying which tags to remove.</p>
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

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource from which you removed tags.</p>
    #
    #   @return [String]
    #
    UntagResourceOutput = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway to update.</p>
    #
    #   @return [String]
    #
    # @!attribute gateway_display_name
    #   <p>The updated display name of the gateway.</p>
    #
    #   @return [String]
    #
    UpdateGatewayInformationInput = ::Struct.new(
      :gateway_arn,
      :gateway_display_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway you updated.</p>
    #
    #   @return [String]
    #
    UpdateGatewayInformationOutput = ::Struct.new(
      :gateway_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway
    #         to be updated.</p>
    #
    #   @return [String]
    #
    UpdateGatewaySoftwareNowInput = ::Struct.new(
      :gateway_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway
    #         you updated.</p>
    #
    #   @return [String]
    #
    UpdateGatewaySoftwareNowOutput = ::Struct.new(
      :gateway_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute hypervisor_arn
    #   <p>The Amazon Resource Name (ARN) of the hypervisor to update.</p>
    #
    #   @return [String]
    #
    # @!attribute host
    #   <p>The updated host of the hypervisor. This can be either an IP address or a fully-qualified
    #         domain name (FQDN).</p>
    #
    #   @return [String]
    #
    # @!attribute username
    #   <p>The updated username for the hypervisor.</p>
    #
    #   @return [String]
    #
    # @!attribute password
    #   <p>The updated password for the hypervisor.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The updated name for the hypervisor</p>
    #
    #   @return [String]
    #
    UpdateHypervisorInput = ::Struct.new(
      :hypervisor_arn,
      :host,
      :username,
      :password,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::BackupGateway::Types::UpdateHypervisorInput "\
          "hypervisor_arn=#{hypervisor_arn || 'nil'}, "\
          "host=#{host || 'nil'}, "\
          "username=\"[SENSITIVE]\", "\
          "password=\"[SENSITIVE]\", "\
          "name=#{name || 'nil'}>"
      end
    end

    # @!attribute hypervisor_arn
    #   <p>The Amazon Resource Name (ARN) of the hypervisor you updated.</p>
    #
    #   @return [String]
    #
    UpdateHypervisorOutput = ::Struct.new(
      :hypervisor_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The operation did not succeed because a validation error occurred.</p>
    #
    # @!attribute error_code
    #   <p>A description of what caused the validation error.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ValidationException = ::Struct.new(
      :error_code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A virtual machine that is on a hypervisor.</p>
    #
    # @!attribute host_name
    #   <p>The host name of the virtual machine.</p>
    #
    #   @return [String]
    #
    # @!attribute hypervisor_id
    #   <p>The ID of the virtual machine's hypervisor.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the virtual machine.</p>
    #
    #   @return [String]
    #
    # @!attribute path
    #   <p>The path of the virtual machine.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the virtual machine. For example,
    #           <code>arn:aws:backup-gateway:us-west-1:0000000000000:vm/vm-0000ABCDEFGIJKL</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute last_backup_date
    #   <p>The most recent date a virtual machine was backed up, in Unix format and UTC time.</p>
    #
    #   @return [Time]
    #
    VirtualMachine = ::Struct.new(
      :host_name,
      :hypervisor_id,
      :name,
      :path,
      :resource_arn,
      :last_backup_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
