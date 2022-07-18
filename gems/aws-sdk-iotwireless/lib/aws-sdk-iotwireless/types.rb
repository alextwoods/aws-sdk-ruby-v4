# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::IoTWireless
  module Types

    # <p>ABP device object for LoRaWAN specification v1.0.x</p>
    #
    # @!attribute dev_addr
    #   <p>The DevAddr value.</p>
    #
    #   @return [String]
    #
    # @!attribute session_keys
    #   <p>Session keys for ABP v1.0.x</p>
    #
    #   @return [SessionKeysAbpV1_0_x]
    #
    # @!attribute f_cnt_start
    #   <p>The FCnt init value.</p>
    #
    #   @return [Integer]
    #
    AbpV1_0_x = ::Struct.new(
      :dev_addr,
      :session_keys,
      :f_cnt_start,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>ABP device object for LoRaWAN specification v1.1</p>
    #
    # @!attribute dev_addr
    #   <p>The DevAddr value.</p>
    #
    #   @return [String]
    #
    # @!attribute session_keys
    #   <p>Session keys for ABP v1.1</p>
    #
    #   @return [SessionKeysAbpV1_1]
    #
    # @!attribute f_cnt_start
    #   <p>The FCnt init value.</p>
    #
    #   @return [Integer]
    #
    AbpV1_1 = ::Struct.new(
      :dev_addr,
      :session_keys,
      :f_cnt_start,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>User does not have permission to perform this action.</p>
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

    # @!attribute sidewalk
    #   <p>The Sidewalk account credentials.</p>
    #
    #   @return [SidewalkAccountInfo]
    #
    # @!attribute client_request_token
    #   <p>Each resource must have a unique client request token. If you try to create a new resource with the same token as a resource that already exists, an exception occurs. If you omit this value, AWS SDKs will automatically generate a unique client request. </p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to attach to the specified resource. Tags are metadata that you can use to manage a resource.</p>
    #
    #   @return [Array<Tag>]
    #
    AssociateAwsAccountWithPartnerAccountInput = ::Struct.new(
      :sidewalk,
      :client_request_token,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute sidewalk
    #   <p>The Sidewalk account credentials.</p>
    #
    #   @return [SidewalkAccountInfo]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name of the resource.</p>
    #
    #   @return [String]
    #
    AssociateAwsAccountWithPartnerAccountOutput = ::Struct.new(
      :sidewalk,
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of a FUOTA task.</p>
    #
    #   @return [String]
    #
    # @!attribute multicast_group_id
    #   <p>The ID of the multicast group.</p>
    #
    #   @return [String]
    #
    AssociateMulticastGroupWithFuotaTaskInput = ::Struct.new(
      :id,
      :multicast_group_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AssociateMulticastGroupWithFuotaTaskOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of a FUOTA task.</p>
    #
    #   @return [String]
    #
    # @!attribute wireless_device_id
    #   <p>The ID of the wireless device.</p>
    #
    #   @return [String]
    #
    AssociateWirelessDeviceWithFuotaTaskInput = ::Struct.new(
      :id,
      :wireless_device_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AssociateWirelessDeviceWithFuotaTaskOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of the multicast group.</p>
    #
    #   @return [String]
    #
    # @!attribute wireless_device_id
    #   <p>The ID of the wireless device.</p>
    #
    #   @return [String]
    #
    AssociateWirelessDeviceWithMulticastGroupInput = ::Struct.new(
      :id,
      :wireless_device_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AssociateWirelessDeviceWithMulticastGroupOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of the resource to update.</p>
    #
    #   @return [String]
    #
    # @!attribute thing_arn
    #   <p>The ARN of the thing to associate with the wireless device.</p>
    #
    #   @return [String]
    #
    AssociateWirelessDeviceWithThingInput = ::Struct.new(
      :id,
      :thing_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AssociateWirelessDeviceWithThingOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of the resource to update.</p>
    #
    #   @return [String]
    #
    # @!attribute iot_certificate_id
    #   <p>The ID of the certificate to associate with the wireless gateway.</p>
    #
    #   @return [String]
    #
    AssociateWirelessGatewayWithCertificateInput = ::Struct.new(
      :id,
      :iot_certificate_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute iot_certificate_id
    #   <p>The ID of the certificate associated with the wireless gateway.</p>
    #
    #   @return [String]
    #
    AssociateWirelessGatewayWithCertificateOutput = ::Struct.new(
      :iot_certificate_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of the resource to update.</p>
    #
    #   @return [String]
    #
    # @!attribute thing_arn
    #   <p>The ARN of the thing to associate with the wireless gateway.</p>
    #
    #   @return [String]
    #
    AssociateWirelessGatewayWithThingInput = ::Struct.new(
      :id,
      :thing_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AssociateWirelessGatewayWithThingOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for BatteryLevel
    #
    module BatteryLevel
      # No documentation available.
      #
      NORMAL = "normal"

      # No documentation available.
      #
      LOW = "low"

      # No documentation available.
      #
      CRITICAL = "critical"
    end

    # @!attribute id
    #   <p>The ID of the multicast group.</p>
    #
    #   @return [String]
    #
    CancelMulticastGroupSessionInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    CancelMulticastGroupSessionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>List of sidewalk certificates.</p>
    #
    # @!attribute signing_alg
    #   <p>The certificate chain algorithm provided by sidewalk.</p>
    #
    #   Enum, one of: ["Ed25519", "P256r1"]
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of the chosen sidewalk certificate.</p>
    #
    #   @return [String]
    #
    CertificateList = ::Struct.new(
      :signing_alg,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Adding, updating, or deleting the resource can cause an inconsistent state.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>Id of the resource in the conflicting operation.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>Type of the resource in the conflicting operation.</p>
    #
    #   @return [String]
    #
    ConflictException = ::Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ConnectionStatus
    #
    module ConnectionStatus
      # No documentation available.
      #
      CONNECTED = "Connected"

      # No documentation available.
      #
      DISCONNECTED = "Disconnected"
    end

    # <p>Connection status event configuration object for enabling or disabling topic.</p>
    #
    # @!attribute lo_ra_wan
    #   <p>Connection status event configuration object for enabling or disabling LoRaWAN related event topics.</p>
    #
    #   @return [LoRaWANConnectionStatusEventNotificationConfigurations]
    #
    # @!attribute wireless_gateway_id_event_topic
    #   <p>Enum to denote whether the wireless gateway id connection status event topic is enabled or disabled
    #               .</p>
    #
    #   Enum, one of: ["Enabled", "Disabled"]
    #
    #   @return [String]
    #
    ConnectionStatusEventConfiguration = ::Struct.new(
      :lo_ra_wan,
      :wireless_gateway_id_event_topic,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Connection status resource type event configuration object for enabling or disabling topic.</p>
    #
    # @!attribute lo_ra_wan
    #   <p>Connection status resource type event configuration object for enabling or disabling LoRaWAN related
    #               event topics.</p>
    #
    #   @return [LoRaWANConnectionStatusResourceTypeEventConfiguration]
    #
    ConnectionStatusResourceTypeEventConfiguration = ::Struct.new(
      :lo_ra_wan,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the new resource.</p>
    #
    #   @return [String]
    #
    # @!attribute expression_type
    #   <p>The type of value in <code>Expression</code>.</p>
    #
    #   Enum, one of: ["RuleName", "MqttTopic"]
    #
    #   @return [String]
    #
    # @!attribute expression
    #   <p>The rule name or topic rule to send messages to.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the new resource.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The ARN of the IAM Role that authorizes the destination.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to attach to the new destination. Tags are metadata that you can use to manage a resource.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute client_request_token
    #   <p>Each resource must have a unique client request token. If you try to create a new resource with the same token as a resource that already exists, an exception occurs. If you omit this value, AWS SDKs will automatically generate a unique client request. </p>
    #
    #   @return [String]
    #
    CreateDestinationInput = ::Struct.new(
      :name,
      :expression_type,
      :expression,
      :description,
      :role_arn,
      :tags,
      :client_request_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name of the new resource.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the new resource.</p>
    #
    #   @return [String]
    #
    CreateDestinationOutput = ::Struct.new(
      :arn,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the new resource.</p>
    #
    #   @return [String]
    #
    # @!attribute lo_ra_wan
    #   <p>The device profile information to use to create the device profile.</p>
    #
    #   @return [LoRaWANDeviceProfile]
    #
    # @!attribute tags
    #   <p>The tags to attach to the new device profile. Tags are metadata that you can use to manage a resource.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute client_request_token
    #   <p>Each resource must have a unique client request token. If you try to create a new resource with the same token as a resource that already exists, an exception occurs. If you omit this value, AWS SDKs will automatically generate a unique client request. </p>
    #
    #   @return [String]
    #
    CreateDeviceProfileInput = ::Struct.new(
      :name,
      :lo_ra_wan,
      :tags,
      :client_request_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name of the new resource.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The ID of the new device profile.</p>
    #
    #   @return [String]
    #
    CreateDeviceProfileOutput = ::Struct.new(
      :arn,
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of a FUOTA task.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the new resource.</p>
    #
    #   @return [String]
    #
    # @!attribute client_request_token
    #   <p>Each resource must have a unique client request token. If you try to create a new resource with the same token as a resource that already exists, an exception occurs. If you omit this value, AWS SDKs will automatically generate a unique client request.</p>
    #
    #   @return [String]
    #
    # @!attribute lo_ra_wan
    #   <p>The LoRaWAN information used with a FUOTA task.</p>
    #
    #   @return [LoRaWANFuotaTask]
    #
    # @!attribute firmware_update_image
    #   <p>The S3 URI points to a firmware update image that is to be used with a FUOTA task.</p>
    #
    #   @return [String]
    #
    # @!attribute firmware_update_role
    #   <p>The firmware update role that is to be used with a FUOTA task.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tag to attach to the specified resource. Tags are metadata that you can use to manage a resource.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateFuotaTaskInput = ::Struct.new(
      :name,
      :description,
      :client_request_token,
      :lo_ra_wan,
      :firmware_update_image,
      :firmware_update_role,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The arn of a FUOTA task.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The ID of a FUOTA task.</p>
    #
    #   @return [String]
    #
    CreateFuotaTaskOutput = ::Struct.new(
      :arn,
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the multicast group.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the multicast group.</p>
    #
    #   @return [String]
    #
    # @!attribute client_request_token
    #   <p>Each resource must have a unique client request token. If you try to create a new resource with the
    #               same token as a resource that already exists, an exception occurs. If you omit this value,
    #               AWS SDKs will automatically generate a unique client request. </p>
    #
    #   @return [String]
    #
    # @!attribute lo_ra_wan
    #   <p>The LoRaWAN information that is to be used with the multicast group.</p>
    #
    #   @return [LoRaWANMulticast]
    #
    # @!attribute tags
    #   <p>The tag to attach to the specified resource. Tags are metadata that you can use to manage a resource.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateMulticastGroupInput = ::Struct.new(
      :name,
      :description,
      :client_request_token,
      :lo_ra_wan,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The arn of the multicast group.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The ID of the multicast group.</p>
    #
    #   @return [String]
    #
    CreateMulticastGroupOutput = ::Struct.new(
      :arn,
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>Name of the network analyzer configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute trace_content
    #   <p>Trace content for your wireless gateway and wireless device resources.</p>
    #
    #   @return [TraceContent]
    #
    # @!attribute wireless_devices
    #   <p>Wireless device resources to add to the network analyzer configuration. Provide the <code>WirelessDeviceId</code> of the resource to add in the input array.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute wireless_gateways
    #   <p>Wireless gateway resources to add to the network analyzer configuration. Provide the <code>WirelessGatewayId</code> of the resource to add in the input array.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute description
    #   <p>The description of the new resource.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tag to attach to the specified resource. Tags are metadata that you can use to manage a resource.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute client_request_token
    #   <p>Each resource must have a unique client request token. If you try to create a new resource with the same token as a resource that already exists, an exception occurs. If you omit this value, AWS SDKs will automatically generate a unique client request.</p>
    #
    #   @return [String]
    #
    CreateNetworkAnalyzerConfigurationInput = ::Struct.new(
      :name,
      :trace_content,
      :wireless_devices,
      :wireless_gateways,
      :description,
      :tags,
      :client_request_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name of the new resource.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>Name of the network analyzer configuration.</p>
    #
    #   @return [String]
    #
    CreateNetworkAnalyzerConfigurationOutput = ::Struct.new(
      :arn,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the new resource.</p>
    #
    #   @return [String]
    #
    # @!attribute lo_ra_wan
    #   <p>The service profile information to use to create the service profile.</p>
    #
    #   @return [LoRaWANServiceProfile]
    #
    # @!attribute tags
    #   <p>The tags to attach to the new service profile. Tags are metadata that you can use to manage a resource.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute client_request_token
    #   <p>Each resource must have a unique client request token. If you try to create a new resource with the same token as a resource that already exists, an exception occurs. If you omit this value, AWS SDKs will automatically generate a unique client request. </p>
    #
    #   @return [String]
    #
    CreateServiceProfileInput = ::Struct.new(
      :name,
      :lo_ra_wan,
      :tags,
      :client_request_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name of the new resource.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The ID of the new service profile.</p>
    #
    #   @return [String]
    #
    CreateServiceProfileOutput = ::Struct.new(
      :arn,
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute type
    #   <p>The wireless device type.</p>
    #
    #   Enum, one of: ["Sidewalk", "LoRaWAN"]
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the new resource.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the new resource.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_name
    #   <p>The name of the destination to assign to the new wireless device.</p>
    #
    #   @return [String]
    #
    # @!attribute client_request_token
    #   <p>Each resource must have a unique client request token. If you try to create a new resource with the same token as a resource that already exists, an exception occurs. If you omit this value, AWS SDKs will automatically generate a unique client request. </p>
    #
    #   @return [String]
    #
    # @!attribute lo_ra_wan
    #   <p>The device configuration information to use to create the wireless device.</p>
    #
    #   @return [LoRaWANDevice]
    #
    # @!attribute tags
    #   <p>The tags to attach to the new wireless device. Tags are metadata that you can use to manage a resource.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateWirelessDeviceInput = ::Struct.new(
      :type,
      :name,
      :description,
      :destination_name,
      :client_request_token,
      :lo_ra_wan,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name of the new resource.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The ID of the new wireless device.</p>
    #
    #   @return [String]
    #
    CreateWirelessDeviceOutput = ::Struct.new(
      :arn,
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the new resource.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the new resource.</p>
    #
    #   @return [String]
    #
    # @!attribute lo_ra_wan
    #   <p>The gateway configuration information to use to create the wireless gateway.</p>
    #
    #   @return [LoRaWANGateway]
    #
    # @!attribute tags
    #   <p>The tags to attach to the new wireless gateway. Tags are metadata that you can use to manage a resource.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute client_request_token
    #   <p>Each resource must have a unique client request token. If you try to create a new resource with the same token as a resource that already exists, an exception occurs. If you omit this value, AWS SDKs will automatically generate a unique client request. </p>
    #
    #   @return [String]
    #
    CreateWirelessGatewayInput = ::Struct.new(
      :name,
      :description,
      :lo_ra_wan,
      :tags,
      :client_request_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name of the new resource.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The ID of the new wireless gateway.</p>
    #
    #   @return [String]
    #
    CreateWirelessGatewayOutput = ::Struct.new(
      :arn,
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute auto_create_tasks
    #   <p>Whether to automatically create tasks using this task definition for all gateways with the specified current version. If <code>false</code>, the task must me created by calling <code>CreateWirelessGatewayTask</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute name
    #   <p>The name of the new resource.</p>
    #
    #   @return [String]
    #
    # @!attribute update
    #   <p>Information about the gateways to update.</p>
    #
    #   @return [UpdateWirelessGatewayTaskCreate]
    #
    # @!attribute client_request_token
    #   <p>Each resource must have a unique client request token. If you try to create a new resource with the same token as a resource that already exists, an exception occurs. If you omit this value, AWS SDKs will automatically generate a unique client request. </p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to attach to the specified resource. Tags are metadata that you can use to manage a resource.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateWirelessGatewayTaskDefinitionInput = ::Struct.new(
      :auto_create_tasks,
      :name,
      :update,
      :client_request_token,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.auto_create_tasks ||= false
      end
    end

    # @!attribute id
    #   <p>The ID of the new wireless gateway task definition.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name of the resource.</p>
    #
    #   @return [String]
    #
    CreateWirelessGatewayTaskDefinitionOutput = ::Struct.new(
      :id,
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of the resource to update.</p>
    #
    #   @return [String]
    #
    # @!attribute wireless_gateway_task_definition_id
    #   <p>The ID of the WirelessGatewayTaskDefinition.</p>
    #
    #   @return [String]
    #
    CreateWirelessGatewayTaskInput = ::Struct.new(
      :id,
      :wireless_gateway_task_definition_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute wireless_gateway_task_definition_id
    #   <p>The ID of the WirelessGatewayTaskDefinition.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the request.</p>
    #
    #   Enum, one of: ["PENDING", "IN_PROGRESS", "FIRST_RETRY", "SECOND_RETRY", "COMPLETED", "FAILED"]
    #
    #   @return [String]
    #
    CreateWirelessGatewayTaskOutput = ::Struct.new(
      :wireless_gateway_task_definition_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the resource to delete.</p>
    #
    #   @return [String]
    #
    DeleteDestinationInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteDestinationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of the resource to delete.</p>
    #
    #   @return [String]
    #
    DeleteDeviceProfileInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteDeviceProfileOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of a FUOTA task.</p>
    #
    #   @return [String]
    #
    DeleteFuotaTaskInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteFuotaTaskOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of the multicast group.</p>
    #
    #   @return [String]
    #
    DeleteMulticastGroupInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteMulticastGroupOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute configuration_name
    #   <p>Name of the network analyzer configuration.</p>
    #
    #   @return [String]
    #
    DeleteNetworkAnalyzerConfigurationInput = ::Struct.new(
      :configuration_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteNetworkAnalyzerConfigurationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of a given wireless device for which downlink messages will be deleted.</p>
    #
    #   @return [String]
    #
    # @!attribute message_id
    #   <p>If message ID is <code>"*"</code>, it cleares the entire downlink queue for a given
    #               device, specified by the wireless device ID. Otherwise, the downlink message with the
    #               specified message ID will be deleted.</p>
    #
    #   @return [String]
    #
    # @!attribute wireless_device_type
    #   <p>The wireless device type, which can be either Sidewalk or LoRaWAN.</p>
    #
    #   Enum, one of: ["Sidewalk", "LoRaWAN"]
    #
    #   @return [String]
    #
    DeleteQueuedMessagesInput = ::Struct.new(
      :id,
      :message_id,
      :wireless_device_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteQueuedMessagesOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of the resource to delete.</p>
    #
    #   @return [String]
    #
    DeleteServiceProfileInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteServiceProfileOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of the resource to delete.</p>
    #
    #   @return [String]
    #
    DeleteWirelessDeviceInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteWirelessDeviceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of the resource to delete.</p>
    #
    #   @return [String]
    #
    DeleteWirelessGatewayInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteWirelessGatewayOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of the resource to delete.</p>
    #
    #   @return [String]
    #
    DeleteWirelessGatewayTaskDefinitionInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteWirelessGatewayTaskDefinitionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of the resource to delete.</p>
    #
    #   @return [String]
    #
    DeleteWirelessGatewayTaskInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteWirelessGatewayTaskOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a destination.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute expression_type
    #   <p>The type of value in <code>Expression</code>.</p>
    #
    #   Enum, one of: ["RuleName", "MqttTopic"]
    #
    #   @return [String]
    #
    # @!attribute expression
    #   <p>The rule name or topic rule to send messages to.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The ARN of the IAM Role that authorizes the destination.</p>
    #
    #   @return [String]
    #
    Destinations = ::Struct.new(
      :arn,
      :name,
      :expression_type,
      :expression,
      :description,
      :role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a device profile.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The ID of the device profile.</p>
    #
    #   @return [String]
    #
    DeviceProfile = ::Struct.new(
      :arn,
      :name,
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Device registration state event configuration object for enabling and disabling relevant topics.</p>
    #
    # @!attribute sidewalk
    #   <p>Device registration state event configuration object for enabling or disabling Sidewalk related event
    #               topics.</p>
    #
    #   @return [SidewalkEventNotificationConfigurations]
    #
    # @!attribute wireless_device_id_event_topic
    #   <p>Enum to denote whether the wireless device id device registration state event topic is enabled or disabled.</p>
    #
    #   Enum, one of: ["Enabled", "Disabled"]
    #
    #   @return [String]
    #
    DeviceRegistrationStateEventConfiguration = ::Struct.new(
      :sidewalk,
      :wireless_device_id_event_topic,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Device registration state resource type event configuration object for enabling or disabling topic.</p>
    #
    # @!attribute sidewalk
    #   <p>Device registration resource type state event configuration object for enabling or disabling Sidewalk
    #               related event topics.</p>
    #
    #   @return [SidewalkResourceTypeEventConfiguration]
    #
    DeviceRegistrationStateResourceTypeEventConfiguration = ::Struct.new(
      :sidewalk,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DeviceState
    #
    module DeviceState
      # No documentation available.
      #
      PROVISIONED = "Provisioned"

      # No documentation available.
      #
      REGISTEREDNOTSEEN = "RegisteredNotSeen"

      # No documentation available.
      #
      REGISTEREDREACHABLE = "RegisteredReachable"

      # No documentation available.
      #
      REGISTEREDUNREACHABLE = "RegisteredUnreachable"
    end

    # @!attribute partner_account_id
    #   <p>The partner account ID to disassociate from the AWS account.</p>
    #
    #   @return [String]
    #
    # @!attribute partner_type
    #   <p>The partner type.</p>
    #
    #   Enum, one of: ["Sidewalk"]
    #
    #   @return [String]
    #
    DisassociateAwsAccountFromPartnerAccountInput = ::Struct.new(
      :partner_account_id,
      :partner_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateAwsAccountFromPartnerAccountOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of a FUOTA task.</p>
    #
    #   @return [String]
    #
    # @!attribute multicast_group_id
    #   <p>The ID of the multicast group.</p>
    #
    #   @return [String]
    #
    DisassociateMulticastGroupFromFuotaTaskInput = ::Struct.new(
      :id,
      :multicast_group_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateMulticastGroupFromFuotaTaskOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of a FUOTA task.</p>
    #
    #   @return [String]
    #
    # @!attribute wireless_device_id
    #   <p>The ID of the wireless device.</p>
    #
    #   @return [String]
    #
    DisassociateWirelessDeviceFromFuotaTaskInput = ::Struct.new(
      :id,
      :wireless_device_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateWirelessDeviceFromFuotaTaskOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of the multicast group.</p>
    #
    #   @return [String]
    #
    # @!attribute wireless_device_id
    #   <p>The ID of the wireless device.</p>
    #
    #   @return [String]
    #
    DisassociateWirelessDeviceFromMulticastGroupInput = ::Struct.new(
      :id,
      :wireless_device_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateWirelessDeviceFromMulticastGroupOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of the resource to update.</p>
    #
    #   @return [String]
    #
    DisassociateWirelessDeviceFromThingInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateWirelessDeviceFromThingOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of the resource to update.</p>
    #
    #   @return [String]
    #
    DisassociateWirelessGatewayFromCertificateInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateWirelessGatewayFromCertificateOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of the resource to update.</p>
    #
    #   @return [String]
    #
    DisassociateWirelessGatewayFromThingInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateWirelessGatewayFromThingOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DlClass
    #
    module DlClass
      # No documentation available.
      #
      ClassB = "ClassB"

      # No documentation available.
      #
      ClassC = "ClassC"
    end

    # <p>The message in the downlink queue.</p>
    #
    # @!attribute message_id
    #   <p> The message ID assigned by IoT Wireless to each downlink message, which helps identify the
    #           message.</p>
    #
    #   @return [String]
    #
    # @!attribute transmit_mode
    #   <p>The transmit mode to use for sending data to the wireless device. This can be <code>0</code> for UM (unacknowledge mode)
    #               or <code>1</code> for AM (acknowledge mode).</p>
    #
    #   @return [Integer]
    #
    # @!attribute received_at
    #   <p>The time at which Iot Wireless received the downlink message.</p>
    #
    #   @return [String]
    #
    # @!attribute lo_ra_wan
    #   <p>LoRaWAN router info.</p>
    #
    #   @return [LoRaWANSendDataToDevice]
    #
    DownlinkQueueMessage = ::Struct.new(
      :message_id,
      :transmit_mode,
      :received_at,
      :lo_ra_wan,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Event
    #
    module Event
      # No documentation available.
      #
      DISCOVERED = "discovered"

      # No documentation available.
      #
      LOST = "lost"

      # No documentation available.
      #
      ACK = "ack"

      # No documentation available.
      #
      NACK = "nack"

      # No documentation available.
      #
      PASSTHROUGH = "passthrough"
    end

    # <p>Event configuration object for a single resource.</p>
    #
    # @!attribute identifier
    #   <p>Resource identifier opted in for event messaging.</p>
    #
    #   @return [String]
    #
    # @!attribute identifier_type
    #   <p>Identifier type of the particular resource identifier for event configuration.</p>
    #
    #   Enum, one of: ["PartnerAccountId", "DevEui", "GatewayEui", "WirelessDeviceId", "WirelessGatewayId"]
    #
    #   @return [String]
    #
    # @!attribute partner_type
    #   <p>Partner type of the resource if the identifier type is PartnerAccountId.</p>
    #
    #   Enum, one of: ["Sidewalk"]
    #
    #   @return [String]
    #
    # @!attribute events
    #   <p>Object of all event configurations and the status of the event topics.</p>
    #
    #   @return [EventNotificationItemConfigurations]
    #
    EventConfigurationItem = ::Struct.new(
      :identifier,
      :identifier_type,
      :partner_type,
      :events,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Object of all event configurations and the status of the event topics.</p>
    #
    # @!attribute device_registration_state
    #   <p>Device registration state event configuration for an event configuration item.</p>
    #
    #   @return [DeviceRegistrationStateEventConfiguration]
    #
    # @!attribute proximity
    #   <p>Proximity event configuration for an event configuration item.</p>
    #
    #   @return [ProximityEventConfiguration]
    #
    # @!attribute join
    #   <p>Join event configuration for an event configuration item.</p>
    #
    #   @return [JoinEventConfiguration]
    #
    # @!attribute connection_status
    #   <p>Connection status event configuration for an event configuration item.</p>
    #
    #   @return [ConnectionStatusEventConfiguration]
    #
    EventNotificationItemConfigurations = ::Struct.new(
      :device_registration_state,
      :proximity,
      :join,
      :connection_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EventNotificationPartnerType
    #
    module EventNotificationPartnerType
      # No documentation available.
      #
      Sidewalk = "Sidewalk"
    end

    # Includes enum constants for EventNotificationResourceType
    #
    module EventNotificationResourceType
      # No documentation available.
      #
      SidewalkAccount = "SidewalkAccount"

      # No documentation available.
      #
      WirelessDevice = "WirelessDevice"

      # No documentation available.
      #
      WirelessGateway = "WirelessGateway"
    end

    # Includes enum constants for EventNotificationTopicStatus
    #
    module EventNotificationTopicStatus
      # No documentation available.
      #
      Enabled = "Enabled"

      # No documentation available.
      #
      Disabled = "Disabled"
    end

    # Includes enum constants for ExpressionType
    #
    module ExpressionType
      # No documentation available.
      #
      RuleName = "RuleName"

      # No documentation available.
      #
      MqttTopic = "MqttTopic"
    end

    # <p>List of FPort assigned for different LoRaWAN application packages to use</p>
    #
    # @!attribute fuota
    #   <p>The Fport value.</p>
    #
    #   @return [Integer]
    #
    # @!attribute multicast
    #   <p>The Fport value.</p>
    #
    #   @return [Integer]
    #
    # @!attribute clock_sync
    #   <p>The Fport value.</p>
    #
    #   @return [Integer]
    #
    FPorts = ::Struct.new(
      :fuota,
      :multicast,
      :clock_sync,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FuotaDeviceStatus
    #
    module FuotaDeviceStatus
      # No documentation available.
      #
      Initial = "Initial"

      # No documentation available.
      #
      Package_Not_Supported = "Package_Not_Supported"

      # No documentation available.
      #
      FragAlgo_unsupported = "FragAlgo_unsupported"

      # No documentation available.
      #
      Not_enough_memory = "Not_enough_memory"

      # No documentation available.
      #
      FragIndex_unsupported = "FragIndex_unsupported"

      # No documentation available.
      #
      Wrong_descriptor = "Wrong_descriptor"

      # No documentation available.
      #
      SessionCnt_replay = "SessionCnt_replay"

      # No documentation available.
      #
      MissingFrag = "MissingFrag"

      # No documentation available.
      #
      MemoryError = "MemoryError"

      # No documentation available.
      #
      MICError = "MICError"

      # No documentation available.
      #
      Successful = "Successful"
    end

    # <p>A FUOTA task.</p>
    #
    # @!attribute id
    #   <p>The ID of a FUOTA task.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The arn of a FUOTA task.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of a FUOTA task.</p>
    #
    #   @return [String]
    #
    FuotaTask = ::Struct.new(
      :id,
      :arn,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FuotaTaskStatus
    #
    module FuotaTaskStatus
      # No documentation available.
      #
      Pending = "Pending"

      # No documentation available.
      #
      FuotaSession_Waiting = "FuotaSession_Waiting"

      # No documentation available.
      #
      In_FuotaSession = "In_FuotaSession"

      # No documentation available.
      #
      FuotaDone = "FuotaDone"

      # No documentation available.
      #
      Delete_Waiting = "Delete_Waiting"
    end

    # @!attribute name
    #   <p>The name of the resource to get.</p>
    #
    #   @return [String]
    #
    GetDestinationInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute expression
    #   <p>The rule name or topic rule to send messages to.</p>
    #
    #   @return [String]
    #
    # @!attribute expression_type
    #   <p>The type of value in <code>Expression</code>.</p>
    #
    #   Enum, one of: ["RuleName", "MqttTopic"]
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The ARN of the IAM Role that authorizes the destination.</p>
    #
    #   @return [String]
    #
    GetDestinationOutput = ::Struct.new(
      :arn,
      :name,
      :expression,
      :expression_type,
      :description,
      :role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of the resource to get.</p>
    #
    #   @return [String]
    #
    GetDeviceProfileInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The ID of the device profile.</p>
    #
    #   @return [String]
    #
    # @!attribute lo_ra_wan
    #   <p>Information about the device profile.</p>
    #
    #   @return [LoRaWANDeviceProfile]
    #
    GetDeviceProfileOutput = ::Struct.new(
      :arn,
      :name,
      :id,
      :lo_ra_wan,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    GetEventConfigurationByResourceTypesInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute device_registration_state
    #   <p>Resource type event configuration for the device registration state event</p>
    #
    #   @return [DeviceRegistrationStateResourceTypeEventConfiguration]
    #
    # @!attribute proximity
    #   <p>Resource type event configuration for the proximity event</p>
    #
    #   @return [ProximityResourceTypeEventConfiguration]
    #
    # @!attribute join
    #   <p>Resource type event configuration for the join event</p>
    #
    #   @return [JoinResourceTypeEventConfiguration]
    #
    # @!attribute connection_status
    #   <p>Resource type event configuration for the connection status event</p>
    #
    #   @return [ConnectionStatusResourceTypeEventConfiguration]
    #
    GetEventConfigurationByResourceTypesOutput = ::Struct.new(
      :device_registration_state,
      :proximity,
      :join,
      :connection_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of a FUOTA task.</p>
    #
    #   @return [String]
    #
    GetFuotaTaskInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The arn of a FUOTA task.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The ID of a FUOTA task.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of a FUOTA task.</p>
    #
    #   Enum, one of: ["Pending", "FuotaSession_Waiting", "In_FuotaSession", "FuotaDone", "Delete_Waiting"]
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of a FUOTA task.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the new resource.</p>
    #
    #   @return [String]
    #
    # @!attribute lo_ra_wan
    #   <p>The LoRaWAN information returned from getting a FUOTA task.</p>
    #
    #   @return [LoRaWANFuotaTaskGetInfo]
    #
    # @!attribute firmware_update_image
    #   <p>The S3 URI points to a firmware update image that is to be used with a FUOTA task.</p>
    #
    #   @return [String]
    #
    # @!attribute firmware_update_role
    #   <p>The firmware update role that is to be used with a FUOTA task.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>Created at timestamp for the resource.</p>
    #
    #   @return [Time]
    #
    GetFuotaTaskOutput = ::Struct.new(
      :arn,
      :id,
      :status,
      :name,
      :description,
      :lo_ra_wan,
      :firmware_update_image,
      :firmware_update_role,
      :created_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    GetLogLevelsByResourceTypesInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute default_log_level
    #   <p>The log level for a log message. The log levels can be disabled, or set to <code>ERROR</code> to display
    #               less verbose logs containing only error information, or to <code>INFO</code> for more detailed logs.</p>
    #
    #   Enum, one of: ["INFO", "ERROR", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute wireless_gateway_log_options
    #   <p>The list of wireless gateway log options.</p>
    #
    #   @return [Array<WirelessGatewayLogOption>]
    #
    # @!attribute wireless_device_log_options
    #   <p>The list of wireless device log options.</p>
    #
    #   @return [Array<WirelessDeviceLogOption>]
    #
    GetLogLevelsByResourceTypesOutput = ::Struct.new(
      :default_log_level,
      :wireless_gateway_log_options,
      :wireless_device_log_options,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of the multicast group.</p>
    #
    #   @return [String]
    #
    GetMulticastGroupInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The arn of the multicast group.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The ID of the multicast group.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the multicast group.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the new resource.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the multicast group.</p>
    #
    #   @return [String]
    #
    # @!attribute lo_ra_wan
    #   <p>The LoRaWAN information that is to be returned from getting multicast group information.</p>
    #
    #   @return [LoRaWANMulticastGet]
    #
    # @!attribute created_at
    #   <p>Created at timestamp for the resource.</p>
    #
    #   @return [Time]
    #
    GetMulticastGroupOutput = ::Struct.new(
      :arn,
      :id,
      :name,
      :description,
      :status,
      :lo_ra_wan,
      :created_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of the multicast group.</p>
    #
    #   @return [String]
    #
    GetMulticastGroupSessionInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute lo_ra_wan
    #   <p>The LoRaWAN information used with the multicast session.</p>
    #
    #   @return [LoRaWANMulticastSession]
    #
    GetMulticastGroupSessionOutput = ::Struct.new(
      :lo_ra_wan,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute configuration_name
    #   <p>Name of the network analyzer configuration.</p>
    #
    #   @return [String]
    #
    GetNetworkAnalyzerConfigurationInput = ::Struct.new(
      :configuration_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute trace_content
    #   <p>Trace content for your wireless gateway and wireless device resources.</p>
    #
    #   @return [TraceContent]
    #
    # @!attribute wireless_devices
    #   <p>List of wireless gateway resources that have been added to the network analyzer configuration.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute wireless_gateways
    #   <p>List of wireless gateway resources that have been added to the network analyzer configuration.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute description
    #   <p>The description of the new resource.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name of the new resource.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>Name of the network analyzer configuration.</p>
    #
    #   @return [String]
    #
    GetNetworkAnalyzerConfigurationOutput = ::Struct.new(
      :trace_content,
      :wireless_devices,
      :wireless_gateways,
      :description,
      :arn,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute partner_account_id
    #   <p>The partner account ID to disassociate from the AWS account.</p>
    #
    #   @return [String]
    #
    # @!attribute partner_type
    #   <p>The partner type.</p>
    #
    #   Enum, one of: ["Sidewalk"]
    #
    #   @return [String]
    #
    GetPartnerAccountInput = ::Struct.new(
      :partner_account_id,
      :partner_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute sidewalk
    #   <p>The Sidewalk account credentials.</p>
    #
    #   @return [SidewalkAccountInfoWithFingerprint]
    #
    # @!attribute account_linked
    #   <p>Whether the partner account is linked to the AWS account.</p>
    #
    #   @return [Boolean]
    #
    GetPartnerAccountOutput = ::Struct.new(
      :sidewalk,
      :account_linked,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.account_linked ||= false
      end
    end

    # @!attribute identifier
    #   <p>Resource identifier to opt in for event messaging.</p>
    #
    #   @return [String]
    #
    # @!attribute identifier_type
    #   <p>Identifier type of the particular resource identifier for event configuration.</p>
    #
    #   Enum, one of: ["PartnerAccountId", "DevEui", "GatewayEui", "WirelessDeviceId", "WirelessGatewayId"]
    #
    #   @return [String]
    #
    # @!attribute partner_type
    #   <p>Partner type of the resource if the identifier type is PartnerAccountId.</p>
    #
    #   Enum, one of: ["Sidewalk"]
    #
    #   @return [String]
    #
    GetResourceEventConfigurationInput = ::Struct.new(
      :identifier,
      :identifier_type,
      :partner_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute device_registration_state
    #   <p>Event configuration for the device registration state event</p>
    #
    #   @return [DeviceRegistrationStateEventConfiguration]
    #
    # @!attribute proximity
    #   <p>Event configuration for the Proximity event</p>
    #
    #   @return [ProximityEventConfiguration]
    #
    # @!attribute join
    #   <p>Event configuration for the join event.</p>
    #
    #   @return [JoinEventConfiguration]
    #
    # @!attribute connection_status
    #   <p>Event configuration for the connection status event.</p>
    #
    #   @return [ConnectionStatusEventConfiguration]
    #
    GetResourceEventConfigurationOutput = ::Struct.new(
      :device_registration_state,
      :proximity,
      :join,
      :connection_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_identifier
    #   <p>The identifier of the resource. For a Wireless Device, it is the wireless device ID. For a wireless gateway,
    #               it is the wireless gateway ID.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The type of the resource, which can be <code>WirelessDevice</code> or <code>WirelessGateway</code>.</p>
    #
    #   @return [String]
    #
    GetResourceLogLevelInput = ::Struct.new(
      :resource_identifier,
      :resource_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute log_level
    #   <p>The log level for a log message. The log levels can be disabled, or set to <code>ERROR</code> to display
    #               less verbose logs containing only error information, or to <code>INFO</code> for more detailed logs.</p>
    #
    #   Enum, one of: ["INFO", "ERROR", "DISABLED"]
    #
    #   @return [String]
    #
    GetResourceLogLevelOutput = ::Struct.new(
      :log_level,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute service_type
    #   <p>The service type for which to get endpoint information about. Can be <code>CUPS</code> for the
    #               Configuration and Update Server endpoint, or <code>LNS</code> for the LoRaWAN Network Server endpoint or
    #               <code>CLAIM</code> for the global endpoint.</p>
    #
    #   Enum, one of: ["CUPS", "LNS"]
    #
    #   @return [String]
    #
    GetServiceEndpointInput = ::Struct.new(
      :service_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute service_type
    #   <p>The endpoint's service type.</p>
    #
    #   Enum, one of: ["CUPS", "LNS"]
    #
    #   @return [String]
    #
    # @!attribute service_endpoint
    #   <p>The service endpoint value.</p>
    #
    #   @return [String]
    #
    # @!attribute server_trust
    #   <p>The Root CA of the server trust certificate.</p>
    #
    #   @return [String]
    #
    GetServiceEndpointOutput = ::Struct.new(
      :service_type,
      :service_endpoint,
      :server_trust,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of the resource to get.</p>
    #
    #   @return [String]
    #
    GetServiceProfileInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The ID of the service profile.</p>
    #
    #   @return [String]
    #
    # @!attribute lo_ra_wan
    #   <p>Information about the service profile.</p>
    #
    #   @return [LoRaWANGetServiceProfileInfo]
    #
    GetServiceProfileOutput = ::Struct.new(
      :arn,
      :name,
      :id,
      :lo_ra_wan,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute identifier
    #   <p>The identifier of the wireless device to get.</p>
    #
    #   @return [String]
    #
    # @!attribute identifier_type
    #   <p>The type of identifier used in <code>identifier</code>.</p>
    #
    #   Enum, one of: ["WirelessDeviceId", "DevEui", "ThingName", "SidewalkManufacturingSn"]
    #
    #   @return [String]
    #
    GetWirelessDeviceInput = ::Struct.new(
      :identifier,
      :identifier_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute type
    #   <p>The wireless device type.</p>
    #
    #   Enum, one of: ["Sidewalk", "LoRaWAN"]
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_name
    #   <p>The name of the destination to which the device is assigned.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The ID of the wireless device.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute thing_name
    #   <p>The name of the thing associated with the wireless device. The value is empty if a thing isn't associated with the device.</p>
    #
    #   @return [String]
    #
    # @!attribute thing_arn
    #   <p>The ARN of the thing associated with the wireless device.</p>
    #
    #   @return [String]
    #
    # @!attribute lo_ra_wan
    #   <p>Information about the wireless device.</p>
    #
    #   @return [LoRaWANDevice]
    #
    # @!attribute sidewalk
    #   <p>Sidewalk device object.</p>
    #
    #   @return [SidewalkDevice]
    #
    GetWirelessDeviceOutput = ::Struct.new(
      :type,
      :name,
      :description,
      :destination_name,
      :id,
      :arn,
      :thing_name,
      :thing_arn,
      :lo_ra_wan,
      :sidewalk,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute wireless_device_id
    #   <p>The ID of the wireless device for which to get the data.</p>
    #
    #   @return [String]
    #
    GetWirelessDeviceStatisticsInput = ::Struct.new(
      :wireless_device_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute wireless_device_id
    #   <p>The ID of the wireless device.</p>
    #
    #   @return [String]
    #
    # @!attribute last_uplink_received_at
    #   <p>The date and time when the most recent uplink was received.</p>
    #
    #   @return [String]
    #
    # @!attribute lo_ra_wan
    #   <p>Information about the wireless device's operations.</p>
    #
    #   @return [LoRaWANDeviceMetadata]
    #
    # @!attribute sidewalk
    #   <p>MetaData for Sidewalk device.</p>
    #
    #   @return [SidewalkDeviceMetadata]
    #
    GetWirelessDeviceStatisticsOutput = ::Struct.new(
      :wireless_device_id,
      :last_uplink_received_at,
      :lo_ra_wan,
      :sidewalk,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of the resource to get.</p>
    #
    #   @return [String]
    #
    GetWirelessGatewayCertificateInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute iot_certificate_id
    #   <p>The ID of the certificate associated with the wireless gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute lo_ra_wan_network_server_certificate_id
    #   <p>The ID of the certificate that is associated with the wireless gateway and used for the LoRaWANNetworkServer endpoint.</p>
    #
    #   @return [String]
    #
    GetWirelessGatewayCertificateOutput = ::Struct.new(
      :iot_certificate_id,
      :lo_ra_wan_network_server_certificate_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of the resource to get.</p>
    #
    #   @return [String]
    #
    GetWirelessGatewayFirmwareInformationInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute lo_ra_wan
    #   <p>Information about the wireless gateway's firmware.</p>
    #
    #   @return [LoRaWANGatewayCurrentVersion]
    #
    GetWirelessGatewayFirmwareInformationOutput = ::Struct.new(
      :lo_ra_wan,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute identifier
    #   <p>The identifier of the wireless gateway to get.</p>
    #
    #   @return [String]
    #
    # @!attribute identifier_type
    #   <p>The type of identifier used in <code>identifier</code>.</p>
    #
    #   Enum, one of: ["GatewayEui", "WirelessGatewayId", "ThingName"]
    #
    #   @return [String]
    #
    GetWirelessGatewayInput = ::Struct.new(
      :identifier,
      :identifier_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The ID of the wireless gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute lo_ra_wan
    #   <p>Information about the wireless gateway.</p>
    #
    #   @return [LoRaWANGateway]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute thing_name
    #   <p>The name of the thing associated with the wireless gateway. The value is empty if a thing isn't associated with the gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute thing_arn
    #   <p>The ARN of the thing associated with the wireless gateway.</p>
    #
    #   @return [String]
    #
    GetWirelessGatewayOutput = ::Struct.new(
      :name,
      :id,
      :description,
      :lo_ra_wan,
      :arn,
      :thing_name,
      :thing_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute wireless_gateway_id
    #   <p>The ID of the wireless gateway for which to get the data.</p>
    #
    #   @return [String]
    #
    GetWirelessGatewayStatisticsInput = ::Struct.new(
      :wireless_gateway_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute wireless_gateway_id
    #   <p>The ID of the wireless gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute last_uplink_received_at
    #   <p>The date and time when the most recent uplink was received.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_status
    #   <p>The connection status of the wireless gateway.</p>
    #
    #   Enum, one of: ["Connected", "Disconnected"]
    #
    #   @return [String]
    #
    GetWirelessGatewayStatisticsOutput = ::Struct.new(
      :wireless_gateway_id,
      :last_uplink_received_at,
      :connection_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of the resource to get.</p>
    #
    #   @return [String]
    #
    GetWirelessGatewayTaskDefinitionInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute auto_create_tasks
    #   <p>Whether to automatically create tasks using this task definition for all gateways with the specified current version. If <code>false</code>, the task must me created by calling <code>CreateWirelessGatewayTask</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute name
    #   <p>The name of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute update
    #   <p>Information about the gateways to update.</p>
    #
    #   @return [UpdateWirelessGatewayTaskCreate]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name of the resource.</p>
    #
    #   @return [String]
    #
    GetWirelessGatewayTaskDefinitionOutput = ::Struct.new(
      :auto_create_tasks,
      :name,
      :update,
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.auto_create_tasks ||= false
      end
    end

    # @!attribute id
    #   <p>The ID of the resource to get.</p>
    #
    #   @return [String]
    #
    GetWirelessGatewayTaskInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute wireless_gateway_id
    #   <p>The ID of the wireless gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute wireless_gateway_task_definition_id
    #   <p>The ID of the WirelessGatewayTask.</p>
    #
    #   @return [String]
    #
    # @!attribute last_uplink_received_at
    #   <p>The date and time when the most recent uplink was received.</p>
    #
    #   @return [String]
    #
    # @!attribute task_created_at
    #   <p>The date and time when the task was created.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the request.</p>
    #
    #   Enum, one of: ["PENDING", "IN_PROGRESS", "FIRST_RETRY", "SECOND_RETRY", "COMPLETED", "FAILED"]
    #
    #   @return [String]
    #
    GetWirelessGatewayTaskOutput = ::Struct.new(
      :wireless_gateway_id,
      :wireless_gateway_task_definition_id,
      :last_uplink_received_at,
      :task_created_at,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for IdentifierType
    #
    module IdentifierType
      # No documentation available.
      #
      PartnerAccountId = "PartnerAccountId"

      # No documentation available.
      #
      DevEui = "DevEui"

      # No documentation available.
      #
      GatewayEui = "GatewayEui"

      # No documentation available.
      #
      WirelessDeviceId = "WirelessDeviceId"

      # No documentation available.
      #
      WirelessGatewayId = "WirelessGatewayId"
    end

    # <p>An unexpected error occurred while processing a request.</p>
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

    # <p>Join event configuration object for enabling or disabling topic.</p>
    #
    # @!attribute lo_ra_wan
    #   <p>Join event configuration object for enabling or disabling LoRaWAN related event topics.</p>
    #
    #   @return [LoRaWANJoinEventNotificationConfigurations]
    #
    # @!attribute wireless_device_id_event_topic
    #   <p>Enum to denote whether the wireless device id join event topic is enabled or disabled.</p>
    #
    #   Enum, one of: ["Enabled", "Disabled"]
    #
    #   @return [String]
    #
    JoinEventConfiguration = ::Struct.new(
      :lo_ra_wan,
      :wireless_device_id_event_topic,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Join resource type event configuration object for enabling or disabling topic.</p>
    #
    # @!attribute lo_ra_wan
    #   <p>Join resource type event configuration object for enabling or disabling LoRaWAN related
    #               event topics.</p>
    #
    #   @return [LoRaWANJoinResourceTypeEventConfiguration]
    #
    JoinResourceTypeEventConfiguration = ::Struct.new(
      :lo_ra_wan,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return in this operation.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous response; otherwise <b>null</b> to receive the first set of results.</p>
    #
    #   @return [String]
    #
    ListDestinationsInput = ::Struct.new(
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

    # @!attribute next_token
    #   <p>The token to use to get the next set of results, or <b>null</b> if there are no additional results.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_list
    #   <p>The list of destinations.</p>
    #
    #   @return [Array<Destinations>]
    #
    ListDestinationsOutput = ::Struct.new(
      :next_token,
      :destination_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous response; otherwise <b>null</b> to receive the first set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in this operation.</p>
    #
    #   @return [Integer]
    #
    ListDeviceProfilesInput = ::Struct.new(
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

    # @!attribute next_token
    #   <p>The token to use to get the next set of results, or <b>null</b> if there are no additional results.</p>
    #
    #   @return [String]
    #
    # @!attribute device_profile_list
    #   <p>The list of device profiles.</p>
    #
    #   @return [Array<DeviceProfile>]
    #
    ListDeviceProfilesOutput = ::Struct.new(
      :next_token,
      :device_profile_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_type
    #   <p>Resource type to filter event configurations.</p>
    #
    #   Enum, one of: ["SidewalkAccount", "WirelessDevice", "WirelessGateway"]
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in this operation.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous response;
    #               otherwise <b>null</b> to receive the first set of results.</p>
    #
    #   @return [String]
    #
    ListEventConfigurationsInput = ::Struct.new(
      :resource_type,
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

    # @!attribute next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous response;
    #               otherwise <b>null</b> to receive the first set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute event_configurations_list
    #   <p>Event configurations of all events for a single resource.</p>
    #
    #   @return [Array<EventConfigurationItem>]
    #
    ListEventConfigurationsOutput = ::Struct.new(
      :next_token,
      :event_configurations_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous response; otherwise <b>null</b> to receive the first set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in this operation.</p>
    #
    #   @return [Integer]
    #
    ListFuotaTasksInput = ::Struct.new(
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

    # @!attribute next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous response; otherwise <b>null</b> to receive the first set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute fuota_task_list
    #   <p>Lists the FUOTA tasks registered to your AWS account.</p>
    #
    #   @return [Array<FuotaTask>]
    #
    ListFuotaTasksOutput = ::Struct.new(
      :next_token,
      :fuota_task_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of a FUOTA task.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous response; otherwise <b>null</b> to receive the first set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in this operation.</p>
    #
    #   @return [Integer]
    #
    ListMulticastGroupsByFuotaTaskInput = ::Struct.new(
      :id,
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

    # @!attribute next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous response; otherwise <b>null</b> to receive the first set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute multicast_group_list
    #   <p>List of multicast groups associated with a FUOTA task.</p>
    #
    #   @return [Array<MulticastGroupByFuotaTask>]
    #
    ListMulticastGroupsByFuotaTaskOutput = ::Struct.new(
      :next_token,
      :multicast_group_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous response; otherwise <b>null</b> to receive the first set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in this operation.</p>
    #
    #   @return [Integer]
    #
    ListMulticastGroupsInput = ::Struct.new(
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

    # @!attribute next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous response; otherwise <b>null</b> to receive the first set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute multicast_group_list
    #   <p>List of multicast groups.</p>
    #
    #   @return [Array<MulticastGroup>]
    #
    ListMulticastGroupsOutput = ::Struct.new(
      :next_token,
      :multicast_group_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return in this operation.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous response; otherwise <b>null</b> to receive the first set of results.</p>
    #
    #   @return [String]
    #
    ListNetworkAnalyzerConfigurationsInput = ::Struct.new(
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

    # @!attribute next_token
    #   <p>The token to use to get the next set of results, or <b>null</b> if there are no additional results.</p>
    #
    #   @return [String]
    #
    # @!attribute network_analyzer_configuration_list
    #   <p>The list of network analyzer configurations.</p>
    #
    #   @return [Array<NetworkAnalyzerConfigurations>]
    #
    ListNetworkAnalyzerConfigurationsOutput = ::Struct.new(
      :next_token,
      :network_analyzer_configuration_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous response; otherwise <b>null</b> to receive the first set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in this operation.</p>
    #
    #   @return [Integer]
    #
    ListPartnerAccountsInput = ::Struct.new(
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

    # @!attribute next_token
    #   <p>The token to use to get the next set of results, or <b>null</b> if there are no additional results.</p>
    #
    #   @return [String]
    #
    # @!attribute sidewalk
    #   <p>The Sidewalk account credentials.</p>
    #
    #   @return [Array<SidewalkAccountInfoWithFingerprint>]
    #
    ListPartnerAccountsOutput = ::Struct.new(
      :next_token,
      :sidewalk,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of a given wireless device which the downlink message packets are being sent.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous response; otherwise
    #               <b>null</b> to receive the first set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in this operation.</p>
    #
    #   @return [Integer]
    #
    # @!attribute wireless_device_type
    #   <p>The wireless device type, whic can be either Sidewalk or LoRaWAN.</p>
    #
    #   Enum, one of: ["Sidewalk", "LoRaWAN"]
    #
    #   @return [String]
    #
    ListQueuedMessagesInput = ::Struct.new(
      :id,
      :next_token,
      :max_results,
      :wireless_device_type,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # @!attribute next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous response;
    #               otherwise <b>null</b> to receive the first set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute downlink_queue_messages_list
    #   <p>The messages in the downlink queue.</p>
    #
    #   @return [Array<DownlinkQueueMessage>]
    #
    ListQueuedMessagesOutput = ::Struct.new(
      :next_token,
      :downlink_queue_messages_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous response; otherwise <b>null</b> to receive the first set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in this operation.</p>
    #
    #   @return [Integer]
    #
    ListServiceProfilesInput = ::Struct.new(
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

    # @!attribute next_token
    #   <p>The token to use to get the next set of results, or <b>null</b> if there are no additional results.</p>
    #
    #   @return [String]
    #
    # @!attribute service_profile_list
    #   <p>The list of service profiles.</p>
    #
    #   @return [Array<ServiceProfile>]
    #
    ListServiceProfilesOutput = ::Struct.new(
      :next_token,
      :service_profile_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource for which you want to list tags.</p>
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
    #   <p>The tags to attach to the specified resource. Tags are metadata that you can use to manage a resource.</p>
    #
    #   @return [Array<Tag>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return in this operation.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous response; otherwise <b>null</b> to receive the first set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_name
    #   <p>A filter to list only the wireless devices that use this destination.</p>
    #
    #   @return [String]
    #
    # @!attribute device_profile_id
    #   <p>A filter to list only the wireless devices that use this device profile.</p>
    #
    #   @return [String]
    #
    # @!attribute service_profile_id
    #   <p>A filter to list only the wireless devices that use this service profile.</p>
    #
    #   @return [String]
    #
    # @!attribute wireless_device_type
    #   <p>A filter to list only the wireless devices that use this wireless device type.</p>
    #
    #   Enum, one of: ["Sidewalk", "LoRaWAN"]
    #
    #   @return [String]
    #
    # @!attribute fuota_task_id
    #   <p>The ID of a FUOTA task.</p>
    #
    #   @return [String]
    #
    # @!attribute multicast_group_id
    #   <p>The ID of the multicast group.</p>
    #
    #   @return [String]
    #
    ListWirelessDevicesInput = ::Struct.new(
      :max_results,
      :next_token,
      :destination_name,
      :device_profile_id,
      :service_profile_id,
      :wireless_device_type,
      :fuota_task_id,
      :multicast_group_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # @!attribute next_token
    #   <p>The token to use to get the next set of results, or <b>null</b> if there are no additional results.</p>
    #
    #   @return [String]
    #
    # @!attribute wireless_device_list
    #   <p>The ID of the wireless device.</p>
    #
    #   @return [Array<WirelessDeviceStatistics>]
    #
    ListWirelessDevicesOutput = ::Struct.new(
      :next_token,
      :wireless_device_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return in this operation.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous response; otherwise <b>null</b> to receive the first set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute task_definition_type
    #   <p>A filter to list only the wireless gateway task definitions that use this task definition type.</p>
    #
    #   Enum, one of: ["UPDATE"]
    #
    #   @return [String]
    #
    ListWirelessGatewayTaskDefinitionsInput = ::Struct.new(
      :max_results,
      :next_token,
      :task_definition_type,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # @!attribute next_token
    #   <p>The token to use to get the next set of results, or <b>null</b> if there are no additional results.</p>
    #
    #   @return [String]
    #
    # @!attribute task_definitions
    #   <p>The list of task definitions.</p>
    #
    #   @return [Array<UpdateWirelessGatewayTaskEntry>]
    #
    ListWirelessGatewayTaskDefinitionsOutput = ::Struct.new(
      :next_token,
      :task_definitions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous response; otherwise <b>null</b> to receive the first set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in this operation.</p>
    #
    #   @return [Integer]
    #
    ListWirelessGatewaysInput = ::Struct.new(
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

    # @!attribute next_token
    #   <p>The token to use to get the next set of results, or <b>null</b> if there are no additional results.</p>
    #
    #   @return [String]
    #
    # @!attribute wireless_gateway_list
    #   <p>The ID of the wireless gateway.</p>
    #
    #   @return [Array<WirelessGatewayStatistics>]
    #
    ListWirelessGatewaysOutput = ::Struct.new(
      :next_token,
      :wireless_gateway_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Object for LoRaWAN connection status resource type event configuration.</p>
    #
    # @!attribute gateway_eui_event_topic
    #   <p>Enum to denote whether the gateway eui connection status event topic is enabled or disabled.</p>
    #
    #   Enum, one of: ["Enabled", "Disabled"]
    #
    #   @return [String]
    #
    LoRaWANConnectionStatusEventNotificationConfigurations = ::Struct.new(
      :gateway_eui_event_topic,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Object for LoRaWAN connection status resource type event configuration.</p>
    #
    # @!attribute wireless_gateway_event_topic
    #   <p>Enum to denote whether the wireless gateway connection status event topic is enabled or disabled.</p>
    #
    #   Enum, one of: ["Enabled", "Disabled"]
    #
    #   @return [String]
    #
    LoRaWANConnectionStatusResourceTypeEventConfiguration = ::Struct.new(
      :wireless_gateway_event_topic,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>LoRaWAN object for create functions.</p>
    #
    # @!attribute dev_eui
    #   <p>The DevEUI value.</p>
    #
    #   @return [String]
    #
    # @!attribute device_profile_id
    #   <p>The ID of the device profile for the new wireless device.</p>
    #
    #   @return [String]
    #
    # @!attribute service_profile_id
    #   <p>The ID of the service profile.</p>
    #
    #   @return [String]
    #
    # @!attribute otaa_v1_1
    #   <p>OTAA device object for v1.1 for create APIs</p>
    #
    #   @return [OtaaV1_1]
    #
    # @!attribute otaa_v1_0_x
    #   <p>OTAA device object for create APIs for v1.0.x</p>
    #
    #   @return [OtaaV1_0_x]
    #
    # @!attribute abp_v1_1
    #   <p>ABP device object for create APIs for v1.1</p>
    #
    #   @return [AbpV1_1]
    #
    # @!attribute abp_v1_0_x
    #   <p>LoRaWAN object for create APIs</p>
    #
    #   @return [AbpV1_0_x]
    #
    # @!attribute f_ports
    #   <p>List of FPort assigned for different LoRaWAN application packages to use</p>
    #
    #   @return [FPorts]
    #
    LoRaWANDevice = ::Struct.new(
      :dev_eui,
      :device_profile_id,
      :service_profile_id,
      :otaa_v1_1,
      :otaa_v1_0_x,
      :abp_v1_1,
      :abp_v1_0_x,
      :f_ports,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>LoRaWAN device metatdata.</p>
    #
    # @!attribute dev_eui
    #   <p>The DevEUI value.</p>
    #
    #   @return [String]
    #
    # @!attribute f_port
    #   <p>The FPort value.</p>
    #
    #   @return [Integer]
    #
    # @!attribute data_rate
    #   <p>The DataRate value.</p>
    #
    #   @return [Integer]
    #
    # @!attribute frequency
    #   <p>The device's channel frequency in Hz.</p>
    #
    #   @return [Integer]
    #
    # @!attribute timestamp
    #   <p>The date and time of the metadata.</p>
    #
    #   @return [String]
    #
    # @!attribute gateways
    #   <p>Information about the gateways accessed by the device.</p>
    #
    #   @return [Array<LoRaWANGatewayMetadata>]
    #
    LoRaWANDeviceMetadata = ::Struct.new(
      :dev_eui,
      :f_port,
      :data_rate,
      :frequency,
      :timestamp,
      :gateways,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>LoRaWANDeviceProfile object.</p>
    #
    # @!attribute supports_class_b
    #   <p>The SupportsClassB value.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute class_b_timeout
    #   <p>The ClassBTimeout value.</p>
    #
    #   @return [Integer]
    #
    # @!attribute ping_slot_period
    #   <p>The PingSlotPeriod value.</p>
    #
    #   @return [Integer]
    #
    # @!attribute ping_slot_dr
    #   <p>The PingSlotDR value.</p>
    #
    #   @return [Integer]
    #
    # @!attribute ping_slot_freq
    #   <p>The PingSlotFreq value.</p>
    #
    #   @return [Integer]
    #
    # @!attribute supports_class_c
    #   <p>The SupportsClassC value.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute class_c_timeout
    #   <p>The ClassCTimeout value.</p>
    #
    #   @return [Integer]
    #
    # @!attribute mac_version
    #   <p>The MAC version (such as OTAA 1.1 or OTAA 1.0.3) to use with this device profile.</p>
    #
    #   @return [String]
    #
    # @!attribute reg_params_revision
    #   <p>The version of regional parameters.</p>
    #
    #   @return [String]
    #
    # @!attribute rx_delay1
    #   <p>The RXDelay1 value.</p>
    #
    #   @return [Integer]
    #
    # @!attribute rx_dr_offset1
    #   <p>The RXDROffset1 value.</p>
    #
    #   @return [Integer]
    #
    # @!attribute rx_data_rate2
    #   <p>The RXDataRate2 value.</p>
    #
    #   @return [Integer]
    #
    # @!attribute rx_freq2
    #   <p>The RXFreq2 value.</p>
    #
    #   @return [Integer]
    #
    # @!attribute factory_preset_freqs_list
    #   <p>The list of values that make up the FactoryPresetFreqs value.</p>
    #
    #   @return [Array<Integer>]
    #
    # @!attribute max_eirp
    #   <p>The MaxEIRP value.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max_duty_cycle
    #   <p>The MaxDutyCycle value.</p>
    #
    #   @return [Integer]
    #
    # @!attribute rf_region
    #   <p>The frequency band (RFRegion) value.</p>
    #
    #   @return [String]
    #
    # @!attribute supports_join
    #   <p>The SupportsJoin value.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute supports32_bit_f_cnt
    #   <p>The Supports32BitFCnt value.</p>
    #
    #   @return [Boolean]
    #
    LoRaWANDeviceProfile = ::Struct.new(
      :supports_class_b,
      :class_b_timeout,
      :ping_slot_period,
      :ping_slot_dr,
      :ping_slot_freq,
      :supports_class_c,
      :class_c_timeout,
      :mac_version,
      :reg_params_revision,
      :rx_delay1,
      :rx_dr_offset1,
      :rx_data_rate2,
      :rx_freq2,
      :factory_preset_freqs_list,
      :max_eirp,
      :max_duty_cycle,
      :rf_region,
      :supports_join,
      :supports32_bit_f_cnt,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.supports_class_b ||= false
        self.supports_class_c ||= false
        self.supports32_bit_f_cnt ||= false
      end
    end

    # <p>The LoRaWAN information used with a FUOTA task.</p>
    #
    # @!attribute rf_region
    #   <p>Supported RfRegions</p>
    #
    #   Enum, one of: ["EU868", "US915", "AU915", "AS923-1"]
    #
    #   @return [String]
    #
    LoRaWANFuotaTask = ::Struct.new(
      :rf_region,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The LoRaWAN information returned from getting a FUOTA task.</p>
    #
    # @!attribute rf_region
    #   <p>The frequency band (RFRegion) value.</p>
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>Start time of a FUOTA task.</p>
    #
    #   @return [Time]
    #
    LoRaWANFuotaTaskGetInfo = ::Struct.new(
      :rf_region,
      :start_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>LoRaWANGateway object.</p>
    #
    # @!attribute gateway_eui
    #   <p>The gateway's EUI value.</p>
    #
    #   @return [String]
    #
    # @!attribute rf_region
    #   <p>The frequency band (RFRegion) value.</p>
    #
    #   @return [String]
    #
    # @!attribute join_eui_filters
    #   <p>A list of JoinEuiRange used by LoRa gateways to filter LoRa frames.</p>
    #
    #   @return [Array<Array<String>>]
    #
    # @!attribute net_id_filters
    #   <p>A list of NetId values that are used by LoRa gateways to filter the uplink frames.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute sub_bands
    #   <p>A list of integer indicating which sub bands are supported by LoRa gateway.</p>
    #
    #   @return [Array<Integer>]
    #
    LoRaWANGateway = ::Struct.new(
      :gateway_eui,
      :rf_region,
      :join_eui_filters,
      :net_id_filters,
      :sub_bands,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>LoRaWANGatewayCurrentVersion object.</p>
    #
    # @!attribute current_version
    #   <p>The version of the gateways that should receive the update.</p>
    #
    #   @return [LoRaWANGatewayVersion]
    #
    LoRaWANGatewayCurrentVersion = ::Struct.new(
      :current_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>LoRaWAN gateway metatdata.</p>
    #
    # @!attribute gateway_eui
    #   <p>The gateway's EUI value.</p>
    #
    #   @return [String]
    #
    # @!attribute snr
    #   <p>The SNR value.</p>
    #
    #   @return [Float]
    #
    # @!attribute rssi
    #   <p>The RSSI value.</p>
    #
    #   @return [Float]
    #
    LoRaWANGatewayMetadata = ::Struct.new(
      :gateway_eui,
      :snr,
      :rssi,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>LoRaWANGatewayVersion object.</p>
    #
    # @!attribute package_version
    #   <p>The version of the wireless gateway firmware.</p>
    #
    #   @return [String]
    #
    # @!attribute model
    #   <p>The model number of the wireless gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute station
    #   <p>The basic station version of the wireless gateway.</p>
    #
    #   @return [String]
    #
    LoRaWANGatewayVersion = ::Struct.new(
      :package_version,
      :model,
      :station,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>LoRaWANGetServiceProfileInfo object.</p>
    #
    # @!attribute ul_rate
    #   <p>The ULRate value.</p>
    #
    #   @return [Integer]
    #
    # @!attribute ul_bucket_size
    #   <p>The ULBucketSize value.</p>
    #
    #   @return [Integer]
    #
    # @!attribute ul_rate_policy
    #   <p>The ULRatePolicy value.</p>
    #
    #   @return [String]
    #
    # @!attribute dl_rate
    #   <p>The DLRate value.</p>
    #
    #   @return [Integer]
    #
    # @!attribute dl_bucket_size
    #   <p>The DLBucketSize value.</p>
    #
    #   @return [Integer]
    #
    # @!attribute dl_rate_policy
    #   <p>The DLRatePolicy value.</p>
    #
    #   @return [String]
    #
    # @!attribute add_gw_metadata
    #   <p>The AddGWMetaData value.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute dev_status_req_freq
    #   <p>The DevStatusReqFreq value.</p>
    #
    #   @return [Integer]
    #
    # @!attribute report_dev_status_battery
    #   <p>The ReportDevStatusBattery value.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute report_dev_status_margin
    #   <p>The ReportDevStatusMargin value.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute dr_min
    #   <p>The DRMin value.</p>
    #
    #   @return [Integer]
    #
    # @!attribute dr_max
    #   <p>The DRMax value.</p>
    #
    #   @return [Integer]
    #
    # @!attribute channel_mask
    #   <p>The ChannelMask value.</p>
    #
    #   @return [String]
    #
    # @!attribute pr_allowed
    #   <p>The PRAllowed value that describes whether passive roaming is allowed.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute hr_allowed
    #   <p>The HRAllowed value that describes whether handover roaming is allowed.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute ra_allowed
    #   <p>The RAAllowed value that describes whether roaming activation is allowed.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute nwk_geo_loc
    #   <p>The NwkGeoLoc value.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute target_per
    #   <p>The TargetPER value.</p>
    #
    #   @return [Integer]
    #
    # @!attribute min_gw_diversity
    #   <p>The MinGwDiversity value.</p>
    #
    #   @return [Integer]
    #
    LoRaWANGetServiceProfileInfo = ::Struct.new(
      :ul_rate,
      :ul_bucket_size,
      :ul_rate_policy,
      :dl_rate,
      :dl_bucket_size,
      :dl_rate_policy,
      :add_gw_metadata,
      :dev_status_req_freq,
      :report_dev_status_battery,
      :report_dev_status_margin,
      :dr_min,
      :dr_max,
      :channel_mask,
      :pr_allowed,
      :hr_allowed,
      :ra_allowed,
      :nwk_geo_loc,
      :target_per,
      :min_gw_diversity,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.add_gw_metadata ||= false
        self.report_dev_status_battery ||= false
        self.report_dev_status_margin ||= false
        self.dr_min ||= 0
        self.dr_max ||= 0
        self.pr_allowed ||= false
        self.hr_allowed ||= false
        self.ra_allowed ||= false
        self.nwk_geo_loc ||= false
        self.target_per ||= 0
      end
    end

    # <p>Object for LoRaWAN join resource type event configuration.</p>
    #
    # @!attribute dev_eui_event_topic
    #   <p>Enum to denote whether the dev eui join event topic is enabled or disabled.</p>
    #
    #   Enum, one of: ["Enabled", "Disabled"]
    #
    #   @return [String]
    #
    LoRaWANJoinEventNotificationConfigurations = ::Struct.new(
      :dev_eui_event_topic,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Object for LoRaWAN join resource type event configuration.</p>
    #
    # @!attribute wireless_device_event_topic
    #   <p>Enum to denote whether the wireless device join event topic is enabled or disabled.</p>
    #
    #   Enum, one of: ["Enabled", "Disabled"]
    #
    #   @return [String]
    #
    LoRaWANJoinResourceTypeEventConfiguration = ::Struct.new(
      :wireless_device_event_topic,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>LoRaWAN object for list functions.</p>
    #
    # @!attribute dev_eui
    #   <p>The DevEUI value.</p>
    #
    #   @return [String]
    #
    LoRaWANListDevice = ::Struct.new(
      :dev_eui,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The LoRaWAN information that is to be used with the multicast group.</p>
    #
    # @!attribute rf_region
    #   <p>Supported RfRegions</p>
    #
    #   Enum, one of: ["EU868", "US915", "AU915", "AS923-1"]
    #
    #   @return [String]
    #
    # @!attribute dl_class
    #   <p>DlClass for LoRaWAM, valid values are ClassB and ClassC.</p>
    #
    #   Enum, one of: ["ClassB", "ClassC"]
    #
    #   @return [String]
    #
    LoRaWANMulticast = ::Struct.new(
      :rf_region,
      :dl_class,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The LoRaWAN information that is to be returned from getting multicast group information.</p>
    #
    # @!attribute rf_region
    #   <p>Supported RfRegions</p>
    #
    #   Enum, one of: ["EU868", "US915", "AU915", "AS923-1"]
    #
    #   @return [String]
    #
    # @!attribute dl_class
    #   <p>DlClass for LoRaWAM, valid values are ClassB and ClassC.</p>
    #
    #   Enum, one of: ["ClassB", "ClassC"]
    #
    #   @return [String]
    #
    # @!attribute number_of_devices_requested
    #   <p>Number of devices that are requested to be associated with the multicast group.</p>
    #
    #   @return [Integer]
    #
    # @!attribute number_of_devices_in_group
    #   <p>Number of devices that are associated to the multicast group.</p>
    #
    #   @return [Integer]
    #
    LoRaWANMulticastGet = ::Struct.new(
      :rf_region,
      :dl_class,
      :number_of_devices_requested,
      :number_of_devices_in_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The metadata information of the LoRaWAN multicast group.</p>
    #
    # @!attribute f_port
    #   <p>The Fport value.</p>
    #
    #   @return [Integer]
    #
    LoRaWANMulticastMetadata = ::Struct.new(
      :f_port,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The LoRaWAN information used with the multicast session.</p>
    #
    # @!attribute dl_dr
    #   <p>Downlink data rate.</p>
    #
    #   @return [Integer]
    #
    # @!attribute dl_freq
    #   <p>Downlink frequency.</p>
    #
    #   @return [Integer]
    #
    # @!attribute session_start_time
    #   <p>Timestamp of when the multicast group session is to start.</p>
    #
    #   @return [Time]
    #
    # @!attribute session_timeout
    #   <p>How long before a multicast group session is to timeout.</p>
    #
    #   @return [Integer]
    #
    LoRaWANMulticastSession = ::Struct.new(
      :dl_dr,
      :dl_freq,
      :session_start_time,
      :session_timeout,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>LoRaWAN router info.</p>
    #
    # @!attribute f_port
    #   <p>The Fport value.</p>
    #
    #   @return [Integer]
    #
    LoRaWANSendDataToDevice = ::Struct.new(
      :f_port,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>LoRaWANServiceProfile object.</p>
    #
    # @!attribute add_gw_metadata
    #   <p>The AddGWMetaData value.</p>
    #
    #   @return [Boolean]
    #
    LoRaWANServiceProfile = ::Struct.new(
      :add_gw_metadata,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.add_gw_metadata ||= false
      end
    end

    # <p>The LoRaWAN information used to start a FUOTA task.</p>
    #
    # @!attribute start_time
    #   <p>Start time of a FUOTA task.</p>
    #
    #   @return [Time]
    #
    LoRaWANStartFuotaTask = ::Struct.new(
      :start_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>LoRaWAN object for update functions.</p>
    #
    # @!attribute device_profile_id
    #   <p>The ID of the device profile for the wireless device.</p>
    #
    #   @return [String]
    #
    # @!attribute service_profile_id
    #   <p>The ID of the service profile.</p>
    #
    #   @return [String]
    #
    # @!attribute abp_v1_1
    #   <p>ABP device object for update APIs for v1.1</p>
    #
    #   @return [UpdateAbpV1_1]
    #
    # @!attribute abp_v1_0_x
    #   <p>ABP device object for update APIs for v1.0.x</p>
    #
    #   @return [UpdateAbpV1_0_x]
    #
    LoRaWANUpdateDevice = ::Struct.new(
      :device_profile_id,
      :service_profile_id,
      :abp_v1_1,
      :abp_v1_0_x,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>LoRaWANUpdateGatewayTaskCreate object.</p>
    #
    # @!attribute update_signature
    #   <p>The signature used to verify the update firmware.</p>
    #
    #   @return [String]
    #
    # @!attribute sig_key_crc
    #   <p>The CRC of the signature private key to check.</p>
    #
    #   @return [Integer]
    #
    # @!attribute current_version
    #   <p>The version of the gateways that should receive the update.</p>
    #
    #   @return [LoRaWANGatewayVersion]
    #
    # @!attribute update_version
    #   <p>The firmware version to update the gateway to.</p>
    #
    #   @return [LoRaWANGatewayVersion]
    #
    LoRaWANUpdateGatewayTaskCreate = ::Struct.new(
      :update_signature,
      :sig_key_crc,
      :current_version,
      :update_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>LoRaWANUpdateGatewayTaskEntry object.</p>
    #
    # @!attribute current_version
    #   <p>The version of the gateways that should receive the update.</p>
    #
    #   @return [LoRaWANGatewayVersion]
    #
    # @!attribute update_version
    #   <p>The firmware version to update the gateway to.</p>
    #
    #   @return [LoRaWANGatewayVersion]
    #
    LoRaWANUpdateGatewayTaskEntry = ::Struct.new(
      :current_version,
      :update_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for LogLevel
    #
    module LogLevel
      # No documentation available.
      #
      INFO = "INFO"

      # No documentation available.
      #
      ERROR = "ERROR"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # Includes enum constants for MessageType
    #
    module MessageType
      # No documentation available.
      #
      CUSTOM_COMMAND_ID_NOTIFY = "CUSTOM_COMMAND_ID_NOTIFY"

      # No documentation available.
      #
      CUSTOM_COMMAND_ID_GET = "CUSTOM_COMMAND_ID_GET"

      # No documentation available.
      #
      CUSTOM_COMMAND_ID_SET = "CUSTOM_COMMAND_ID_SET"

      # No documentation available.
      #
      CUSTOM_COMMAND_ID_RESP = "CUSTOM_COMMAND_ID_RESP"
    end

    # <p>A multicast group.</p>
    #
    # @!attribute id
    #   <p>The ID of the multicast group.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The arn of the multicast group.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the multicast group.</p>
    #
    #   @return [String]
    #
    MulticastGroup = ::Struct.new(
      :id,
      :arn,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A multicast group that is associated with a FUOTA task.</p>
    #
    # @!attribute id
    #   <p>The ID of the multicast group.</p>
    #
    #   @return [String]
    #
    MulticastGroupByFuotaTask = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Wireless metadata that is to be sent to multicast group.</p>
    #
    # @!attribute lo_ra_wan
    #   <p>The metadata information of the LoRaWAN multicast group.</p>
    #
    #   @return [LoRaWANMulticastMetadata]
    #
    MulticastWirelessMetadata = ::Struct.new(
      :lo_ra_wan,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Network analyzer configurations.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name of the new resource.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>Name of the network analyzer configuration.</p>
    #
    #   @return [String]
    #
    NetworkAnalyzerConfigurations = ::Struct.new(
      :arn,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>OTAA device object for v1.0.x</p>
    #
    # @!attribute app_key
    #   <p>The AppKey value.</p>
    #
    #   @return [String]
    #
    # @!attribute app_eui
    #   <p>The AppEUI value.</p>
    #
    #   @return [String]
    #
    # @!attribute gen_app_key
    #   <p>The GenAppKey value.</p>
    #
    #   @return [String]
    #
    OtaaV1_0_x = ::Struct.new(
      :app_key,
      :app_eui,
      :gen_app_key,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>OTAA device object for v1.1</p>
    #
    # @!attribute app_key
    #   <p>The AppKey value.</p>
    #
    #   @return [String]
    #
    # @!attribute nwk_key
    #   <p>The NwkKey value.</p>
    #
    #   @return [String]
    #
    # @!attribute join_eui
    #   <p>The JoinEUI value.</p>
    #
    #   @return [String]
    #
    OtaaV1_1 = ::Struct.new(
      :app_key,
      :nwk_key,
      :join_eui,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PartnerType
    #
    module PartnerType
      # No documentation available.
      #
      Sidewalk = "Sidewalk"
    end

    # <p>Proximity event configuration object for enabling and disabling relevant topics.</p>
    #
    # @!attribute sidewalk
    #   <p>Proximity event configuration object for enabling or disabling Sidewalk related event topics.</p>
    #
    #   @return [SidewalkEventNotificationConfigurations]
    #
    # @!attribute wireless_device_id_event_topic
    #   <p>Enum to denote whether the wireless device id proximity event topic is enabled or disabled.</p>
    #
    #   Enum, one of: ["Enabled", "Disabled"]
    #
    #   @return [String]
    #
    ProximityEventConfiguration = ::Struct.new(
      :sidewalk,
      :wireless_device_id_event_topic,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Proximity resource type event configuration object for enabling or disabling topic.</p>
    #
    # @!attribute sidewalk
    #   <p>Proximity resource type event configuration object for enabling and disabling wireless device topic.</p>
    #
    #   @return [SidewalkResourceTypeEventConfiguration]
    #
    ProximityResourceTypeEventConfiguration = ::Struct.new(
      :sidewalk,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_identifier
    #   <p>The identifier of the resource. For a Wireless Device, it is the wireless device ID. For a wireless gateway,
    #               it is the wireless gateway ID.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The type of the resource, which can be <code>WirelessDevice</code> or <code>WirelessGateway</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute log_level
    #   <p>The log level for a log message. The log levels can be disabled, or set to <code>ERROR</code> to display
    #               less verbose logs containing only error information, or to <code>INFO</code> for more detailed logs.</p>
    #
    #   Enum, one of: ["INFO", "ERROR", "DISABLED"]
    #
    #   @return [String]
    #
    PutResourceLogLevelInput = ::Struct.new(
      :resource_identifier,
      :resource_type,
      :log_level,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutResourceLogLevelOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    ResetAllResourceLogLevelsInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    ResetAllResourceLogLevelsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_identifier
    #   <p>The identifier of the resource. For a Wireless Device, it is the wireless device ID. For a wireless gateway,
    #               it is the wireless gateway ID.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The type of the resource, which can be <code>WirelessDevice</code> or <code>WirelessGateway</code>.</p>
    #
    #   @return [String]
    #
    ResetResourceLogLevelInput = ::Struct.new(
      :resource_identifier,
      :resource_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    ResetResourceLogLevelOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Resource does not exist.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>Id of the not found resource.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>Type of the font found resource.</p>
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of the multicast group.</p>
    #
    #   @return [String]
    #
    # @!attribute payload_data
    #   <p>The binary to be sent to the end device, encoded in base64.</p>
    #
    #   @return [String]
    #
    # @!attribute wireless_metadata
    #   <p>Wireless metadata that is to be sent to multicast group.</p>
    #
    #   @return [MulticastWirelessMetadata]
    #
    SendDataToMulticastGroupInput = ::Struct.new(
      :id,
      :payload_data,
      :wireless_metadata,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute message_id
    #   <p>ID of a multicast group message.</p>
    #
    #   @return [String]
    #
    SendDataToMulticastGroupOutput = ::Struct.new(
      :message_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of the wireless device to receive the data.</p>
    #
    #   @return [String]
    #
    # @!attribute transmit_mode
    #   <p>The transmit mode to use to send data to the wireless device. Can be: <code>0</code> for UM (unacknowledge mode) or <code>1</code> for AM (acknowledge mode).</p>
    #
    #   @return [Integer]
    #
    # @!attribute payload_data
    #   <p>The binary to be sent to the end device, encoded in base64.</p>
    #
    #   @return [String]
    #
    # @!attribute wireless_metadata
    #   <p>Metadata about the message request.</p>
    #
    #   @return [WirelessMetadata]
    #
    SendDataToWirelessDeviceInput = ::Struct.new(
      :id,
      :transmit_mode,
      :payload_data,
      :wireless_metadata,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute message_id
    #   <p>The ID of the message sent to the wireless device.</p>
    #
    #   @return [String]
    #
    SendDataToWirelessDeviceOutput = ::Struct.new(
      :message_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a service profile.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The ID of the service profile.</p>
    #
    #   @return [String]
    #
    ServiceProfile = ::Struct.new(
      :arn,
      :name,
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Session keys for ABP v1.1</p>
    #
    # @!attribute nwk_s_key
    #   <p>The NwkSKey value.</p>
    #
    #   @return [String]
    #
    # @!attribute app_s_key
    #   <p>The AppSKey value.</p>
    #
    #   @return [String]
    #
    SessionKeysAbpV1_0_x = ::Struct.new(
      :nwk_s_key,
      :app_s_key,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Session keys for ABP v1.1</p>
    #
    # @!attribute f_nwk_s_int_key
    #   <p>The FNwkSIntKey value.</p>
    #
    #   @return [String]
    #
    # @!attribute s_nwk_s_int_key
    #   <p>The SNwkSIntKey value.</p>
    #
    #   @return [String]
    #
    # @!attribute nwk_s_enc_key
    #   <p>The NwkSEncKey value.</p>
    #
    #   @return [String]
    #
    # @!attribute app_s_key
    #   <p>The AppSKey value.</p>
    #
    #   @return [String]
    #
    SessionKeysAbpV1_1 = ::Struct.new(
      :f_nwk_s_int_key,
      :s_nwk_s_int_key,
      :nwk_s_enc_key,
      :app_s_key,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a Sidewalk account.</p>
    #
    # @!attribute amazon_id
    #   <p>The Sidewalk Amazon ID.</p>
    #
    #   @return [String]
    #
    # @!attribute app_server_private_key
    #   <p>The Sidewalk application server private key.</p>
    #
    #   @return [String]
    #
    SidewalkAccountInfo = ::Struct.new(
      :amazon_id,
      :app_server_private_key,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::IoTWireless::Types::SidewalkAccountInfo "\
          "amazon_id=#{amazon_id || 'nil'}, "\
          "app_server_private_key=\"[SENSITIVE]\">"
      end
    end

    # <p>Information about a Sidewalk account.</p>
    #
    # @!attribute amazon_id
    #   <p>The Sidewalk Amazon ID.</p>
    #
    #   @return [String]
    #
    # @!attribute fingerprint
    #   <p>The fingerprint of the Sidewalk application server private key.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name of the resource.</p>
    #
    #   @return [String]
    #
    SidewalkAccountInfoWithFingerprint = ::Struct.new(
      :amazon_id,
      :fingerprint,
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::IoTWireless::Types::SidewalkAccountInfoWithFingerprint "\
          "amazon_id=#{amazon_id || 'nil'}, "\
          "fingerprint=\"[SENSITIVE]\", "\
          "arn=#{arn || 'nil'}>"
      end
    end

    # <p>Sidewalk device object.</p>
    #
    # @!attribute amazon_id
    #   <p>The Sidewalk Amazon ID.</p>
    #
    #   @return [String]
    #
    # @!attribute sidewalk_id
    #   <p>The sidewalk device identification.</p>
    #
    #   @return [String]
    #
    # @!attribute sidewalk_manufacturing_sn
    #   <p>The Sidewalk manufacturing series number.</p>
    #
    #   @return [String]
    #
    # @!attribute device_certificates
    #   <p>The sidewalk device certificates for Ed25519 and P256r1.</p>
    #
    #   @return [Array<CertificateList>]
    #
    SidewalkDevice = ::Struct.new(
      :amazon_id,
      :sidewalk_id,
      :sidewalk_manufacturing_sn,
      :device_certificates,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>MetaData for Sidewalk device.</p>
    #
    # @!attribute rssi
    #   <p>The RSSI value.</p>
    #
    #   @return [Integer]
    #
    # @!attribute battery_level
    #   <p>Sidewalk device battery level.</p>
    #
    #   Enum, one of: ["normal", "low", "critical"]
    #
    #   @return [String]
    #
    # @!attribute event
    #   <p>Sidewalk device status notification.</p>
    #
    #   Enum, one of: ["discovered", "lost", "ack", "nack", "passthrough"]
    #
    #   @return [String]
    #
    # @!attribute device_state
    #   <p>Device state defines the device status of sidewalk device.</p>
    #
    #   Enum, one of: ["Provisioned", "RegisteredNotSeen", "RegisteredReachable", "RegisteredUnreachable"]
    #
    #   @return [String]
    #
    SidewalkDeviceMetadata = ::Struct.new(
      :rssi,
      :battery_level,
      :event,
      :device_state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> SidewalkEventNotificationConfigurations object
    #             Event configuration object for Sidewalk related event topics.</p>
    #
    # @!attribute amazon_id_event_topic
    #   <p>Enum to denote whether amazon id event topic is enabled or disabled.</p>
    #
    #   Enum, one of: ["Enabled", "Disabled"]
    #
    #   @return [String]
    #
    SidewalkEventNotificationConfigurations = ::Struct.new(
      :amazon_id_event_topic,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Sidewalk object used by list functions.</p>
    #
    # @!attribute amazon_id
    #   <p>The Sidewalk Amazon ID.</p>
    #
    #   @return [String]
    #
    # @!attribute sidewalk_id
    #   <p>The sidewalk device identification.</p>
    #
    #   @return [String]
    #
    # @!attribute sidewalk_manufacturing_sn
    #   <p>The Sidewalk manufacturing series number.</p>
    #
    #   @return [String]
    #
    # @!attribute device_certificates
    #   <p>The sidewalk device certificates for Ed25519 and P256r1.</p>
    #
    #   @return [Array<CertificateList>]
    #
    SidewalkListDevice = ::Struct.new(
      :amazon_id,
      :sidewalk_id,
      :sidewalk_manufacturing_sn,
      :device_certificates,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Sidewalk resource type event configuration object for enabling or disabling topic.</p>
    #
    # @!attribute wireless_device_event_topic
    #   <p>Enum to denote whether the wireless device join event topic is enabled or disabled.</p>
    #
    #   Enum, one of: ["Enabled", "Disabled"]
    #
    #   @return [String]
    #
    SidewalkResourceTypeEventConfiguration = ::Struct.new(
      :wireless_device_event_topic,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a Sidewalk router.</p>
    #
    # @!attribute seq
    #   <p>The sequence number.</p>
    #
    #   @return [Integer]
    #
    # @!attribute message_type
    #   <p>Sidewalk device message type. Default value is <code>CUSTOM_COMMAND_ID_NOTIFY</code>.</p>
    #
    #   Enum, one of: ["CUSTOM_COMMAND_ID_NOTIFY", "CUSTOM_COMMAND_ID_GET", "CUSTOM_COMMAND_ID_SET", "CUSTOM_COMMAND_ID_RESP"]
    #
    #   @return [String]
    #
    SidewalkSendDataToDevice = ::Struct.new(
      :seq,
      :message_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Sidewalk update.</p>
    #
    # @!attribute app_server_private_key
    #   <p>The new Sidewalk application server private key.</p>
    #
    #   @return [String]
    #
    SidewalkUpdateAccount = ::Struct.new(
      :app_server_private_key,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::IoTWireless::Types::SidewalkUpdateAccount "\
          "app_server_private_key=\"[SENSITIVE]\">"
      end
    end

    # Includes enum constants for SigningAlg
    #
    module SigningAlg
      # No documentation available.
      #
      Ed25519 = "Ed25519"

      # No documentation available.
      #
      P256r1 = "P256r1"
    end

    # @!attribute id
    #   <p>The ID of the multicast group.</p>
    #
    #   @return [String]
    #
    # @!attribute query_string
    #   <p>Query string used to search for wireless devices as part of the bulk associate and disassociate process.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tag to attach to the specified resource. Tags are metadata that you can use to manage a resource.</p>
    #
    #   @return [Array<Tag>]
    #
    StartBulkAssociateWirelessDeviceWithMulticastGroupInput = ::Struct.new(
      :id,
      :query_string,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    StartBulkAssociateWirelessDeviceWithMulticastGroupOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of the multicast group.</p>
    #
    #   @return [String]
    #
    # @!attribute query_string
    #   <p>Query string used to search for wireless devices as part of the bulk associate and disassociate process.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tag to attach to the specified resource. Tags are metadata that you can use to manage a resource.</p>
    #
    #   @return [Array<Tag>]
    #
    StartBulkDisassociateWirelessDeviceFromMulticastGroupInput = ::Struct.new(
      :id,
      :query_string,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    StartBulkDisassociateWirelessDeviceFromMulticastGroupOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of a FUOTA task.</p>
    #
    #   @return [String]
    #
    # @!attribute lo_ra_wan
    #   <p>The LoRaWAN information used to start a FUOTA task.</p>
    #
    #   @return [LoRaWANStartFuotaTask]
    #
    StartFuotaTaskInput = ::Struct.new(
      :id,
      :lo_ra_wan,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    StartFuotaTaskOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of the multicast group.</p>
    #
    #   @return [String]
    #
    # @!attribute lo_ra_wan
    #   <p>The LoRaWAN information used with the multicast session.</p>
    #
    #   @return [LoRaWANMulticastSession]
    #
    StartMulticastGroupSessionInput = ::Struct.new(
      :id,
      :lo_ra_wan,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    StartMulticastGroupSessionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SupportedRfRegion
    #
    module SupportedRfRegion
      # No documentation available.
      #
      EU868 = "EU868"

      # No documentation available.
      #
      US915 = "US915"

      # No documentation available.
      #
      AU915 = "AU915"

      # No documentation available.
      #
      AS923_1 = "AS923-1"
    end

    # <p>A simple label consisting of a customer-defined key-value pair</p>
    #
    # @!attribute key
    #   <p>The tag's key value.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The tag's value.</p>
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
    #   <p>The ARN of the resource to add tags to.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Adds to or modifies the tags of the given resource. Tags are metadata that you can use to manage a resource.</p>
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

    # @!attribute id
    #   <p>The ID of the wireless device to test.</p>
    #
    #   @return [String]
    #
    TestWirelessDeviceInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute result
    #   <p>The result returned by the test.</p>
    #
    #   @return [String]
    #
    TestWirelessDeviceOutput = ::Struct.new(
      :result,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request was denied because it exceeded the allowed API request rate.</p>
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

    # <p>The request was denied because the resource can't have any more tags.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_name
    #   <p>Name of the resource that exceeds maximum number of tags allowed.</p>
    #
    #   @return [String]
    #
    TooManyTagsException = ::Struct.new(
      :message,
      :resource_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Trace content for your wireless gateway and wireless device resources.</p>
    #
    # @!attribute wireless_device_frame_info
    #   <p>FrameInfo of your wireless device resources for the trace content. Use FrameInfo to debug
    #               the communication between your LoRaWAN end devices and the network server.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute log_level
    #   <p>The log level for a log message. The log levels can be disabled, or set to <code>ERROR</code> to display
    #               less verbose logs containing only error information, or to <code>INFO</code> for more detailed logs.</p>
    #
    #   Enum, one of: ["INFO", "ERROR", "DISABLED"]
    #
    #   @return [String]
    #
    TraceContent = ::Struct.new(
      :wireless_device_frame_info,
      :log_level,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource to remove tags from.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>A list of the keys of the tags to remove from the resource.</p>
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

    # <p>ABP device object for LoRaWAN specification v1.0.x</p>
    #
    # @!attribute f_cnt_start
    #   <p>The FCnt init value.</p>
    #
    #   @return [Integer]
    #
    UpdateAbpV1_0_x = ::Struct.new(
      :f_cnt_start,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>ABP device object for LoRaWAN specification v1.1</p>
    #
    # @!attribute f_cnt_start
    #   <p>The FCnt init value.</p>
    #
    #   @return [Integer]
    #
    UpdateAbpV1_1 = ::Struct.new(
      :f_cnt_start,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The new name of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute expression_type
    #   <p>The type of value in <code>Expression</code>.</p>
    #
    #   Enum, one of: ["RuleName", "MqttTopic"]
    #
    #   @return [String]
    #
    # @!attribute expression
    #   <p>The new rule name or topic rule to send messages to.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A new description of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The ARN of the IAM Role that authorizes the destination.</p>
    #
    #   @return [String]
    #
    UpdateDestinationInput = ::Struct.new(
      :name,
      :expression_type,
      :expression,
      :description,
      :role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateDestinationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute device_registration_state
    #   <p>Device registration state resource type event configuration object for enabling and disabling wireless
    #               gateway topic.</p>
    #
    #   @return [DeviceRegistrationStateResourceTypeEventConfiguration]
    #
    # @!attribute proximity
    #   <p>Proximity resource type event configuration object for enabling and disabling wireless gateway topic.</p>
    #
    #   @return [ProximityResourceTypeEventConfiguration]
    #
    # @!attribute join
    #   <p>Join resource type event configuration object for enabling and disabling wireless device topic.</p>
    #
    #   @return [JoinResourceTypeEventConfiguration]
    #
    # @!attribute connection_status
    #   <p>Connection status resource type event configuration object for enabling and disabling wireless gateway topic.</p>
    #
    #   @return [ConnectionStatusResourceTypeEventConfiguration]
    #
    UpdateEventConfigurationByResourceTypesInput = ::Struct.new(
      :device_registration_state,
      :proximity,
      :join,
      :connection_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateEventConfigurationByResourceTypesOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of a FUOTA task.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of a FUOTA task.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the new resource.</p>
    #
    #   @return [String]
    #
    # @!attribute lo_ra_wan
    #   <p>The LoRaWAN information used with a FUOTA task.</p>
    #
    #   @return [LoRaWANFuotaTask]
    #
    # @!attribute firmware_update_image
    #   <p>The S3 URI points to a firmware update image that is to be used with a FUOTA task.</p>
    #
    #   @return [String]
    #
    # @!attribute firmware_update_role
    #   <p>The firmware update role that is to be used with a FUOTA task.</p>
    #
    #   @return [String]
    #
    UpdateFuotaTaskInput = ::Struct.new(
      :id,
      :name,
      :description,
      :lo_ra_wan,
      :firmware_update_image,
      :firmware_update_role,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateFuotaTaskOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute default_log_level
    #   <p>The log level for a log message. The log levels can be disabled, or set to <code>ERROR</code> to display
    #               less verbose logs containing only error information, or to <code>INFO</code> for more detailed logs.</p>
    #
    #   Enum, one of: ["INFO", "ERROR", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute wireless_device_log_options
    #   <p>The list of wireless device log options.</p>
    #
    #   @return [Array<WirelessDeviceLogOption>]
    #
    # @!attribute wireless_gateway_log_options
    #   <p>The list of wireless gateway log options.</p>
    #
    #   @return [Array<WirelessGatewayLogOption>]
    #
    UpdateLogLevelsByResourceTypesInput = ::Struct.new(
      :default_log_level,
      :wireless_device_log_options,
      :wireless_gateway_log_options,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateLogLevelsByResourceTypesOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of the multicast group.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the multicast group.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the new resource.</p>
    #
    #   @return [String]
    #
    # @!attribute lo_ra_wan
    #   <p>The LoRaWAN information that is to be used with the multicast group.</p>
    #
    #   @return [LoRaWANMulticast]
    #
    UpdateMulticastGroupInput = ::Struct.new(
      :id,
      :name,
      :description,
      :lo_ra_wan,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateMulticastGroupOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute configuration_name
    #   <p>Name of the network analyzer configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute trace_content
    #   <p>Trace content for your wireless gateway and wireless device resources.</p>
    #
    #   @return [TraceContent]
    #
    # @!attribute wireless_devices_to_add
    #   <p>Wireless device resources to add to the network analyzer configuration. Provide the
    #               <code>WirelessDeviceId</code> of the resource to add in the input array.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute wireless_devices_to_remove
    #   <p>Wireless device resources to remove from the network analyzer configuration. Provide the
    #               <code>WirelessDeviceId</code> of the resources to remove in the input array.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute wireless_gateways_to_add
    #   <p>Wireless gateway resources to add to the network analyzer configuration. Provide the
    #               <code>WirelessGatewayId</code> of the resource to add in the input array.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute wireless_gateways_to_remove
    #   <p>Wireless gateway resources to remove from the network analyzer configuration. Provide the
    #               <code>WirelessGatewayId</code> of the resources to remove in the input array.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute description
    #   <p>The description of the new resource.</p>
    #
    #   @return [String]
    #
    UpdateNetworkAnalyzerConfigurationInput = ::Struct.new(
      :configuration_name,
      :trace_content,
      :wireless_devices_to_add,
      :wireless_devices_to_remove,
      :wireless_gateways_to_add,
      :wireless_gateways_to_remove,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateNetworkAnalyzerConfigurationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute sidewalk
    #   <p>The Sidewalk account credentials.</p>
    #
    #   @return [SidewalkUpdateAccount]
    #
    # @!attribute partner_account_id
    #   <p>The ID of the partner account to update.</p>
    #
    #   @return [String]
    #
    # @!attribute partner_type
    #   <p>The partner type.</p>
    #
    #   Enum, one of: ["Sidewalk"]
    #
    #   @return [String]
    #
    UpdatePartnerAccountInput = ::Struct.new(
      :sidewalk,
      :partner_account_id,
      :partner_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdatePartnerAccountOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute identifier
    #   <p>Resource identifier to opt in for event messaging.</p>
    #
    #   @return [String]
    #
    # @!attribute identifier_type
    #   <p>Identifier type of the particular resource identifier for event configuration.</p>
    #
    #   Enum, one of: ["PartnerAccountId", "DevEui", "GatewayEui", "WirelessDeviceId", "WirelessGatewayId"]
    #
    #   @return [String]
    #
    # @!attribute partner_type
    #   <p>Partner type of the resource if the identifier type is PartnerAccountId</p>
    #
    #   Enum, one of: ["Sidewalk"]
    #
    #   @return [String]
    #
    # @!attribute device_registration_state
    #   <p>Event configuration for the device registration state event</p>
    #
    #   @return [DeviceRegistrationStateEventConfiguration]
    #
    # @!attribute proximity
    #   <p>Event configuration for the Proximity event</p>
    #
    #   @return [ProximityEventConfiguration]
    #
    # @!attribute join
    #   <p>Event configuration for the join event</p>
    #
    #   @return [JoinEventConfiguration]
    #
    # @!attribute connection_status
    #   <p>Event configuration for the connection status event</p>
    #
    #   @return [ConnectionStatusEventConfiguration]
    #
    UpdateResourceEventConfigurationInput = ::Struct.new(
      :identifier,
      :identifier_type,
      :partner_type,
      :device_registration_state,
      :proximity,
      :join,
      :connection_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateResourceEventConfigurationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of the resource to update.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_name
    #   <p>The name of the new destination for the device.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The new name of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A new description of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute lo_ra_wan
    #   <p>The updated wireless device's configuration.</p>
    #
    #   @return [LoRaWANUpdateDevice]
    #
    UpdateWirelessDeviceInput = ::Struct.new(
      :id,
      :destination_name,
      :name,
      :description,
      :lo_ra_wan,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateWirelessDeviceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of the resource to update.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The new name of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A new description of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute join_eui_filters
    #   <p>A list of JoinEuiRange used by LoRa gateways to filter LoRa frames.</p>
    #
    #   @return [Array<Array<String>>]
    #
    # @!attribute net_id_filters
    #   <p>A list of NetId values that are used by LoRa gateways to filter the uplink frames.</p>
    #
    #   @return [Array<String>]
    #
    UpdateWirelessGatewayInput = ::Struct.new(
      :id,
      :name,
      :description,
      :join_eui_filters,
      :net_id_filters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateWirelessGatewayOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>UpdateWirelessGatewayTaskCreate object.</p>
    #
    # @!attribute update_data_source
    #   <p>The link to the S3 bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute update_data_role
    #   <p>The IAM role used to read data from the S3 bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute lo_ra_wan
    #   <p>The properties that relate to the LoRaWAN wireless gateway.</p>
    #
    #   @return [LoRaWANUpdateGatewayTaskCreate]
    #
    UpdateWirelessGatewayTaskCreate = ::Struct.new(
      :update_data_source,
      :update_data_role,
      :lo_ra_wan,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>UpdateWirelessGatewayTaskEntry object.</p>
    #
    # @!attribute id
    #   <p>The ID of the new wireless gateway task entry.</p>
    #
    #   @return [String]
    #
    # @!attribute lo_ra_wan
    #   <p>The properties that relate to the LoRaWAN wireless gateway.</p>
    #
    #   @return [LoRaWANUpdateGatewayTaskEntry]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name of the resource.</p>
    #
    #   @return [String]
    #
    UpdateWirelessGatewayTaskEntry = ::Struct.new(
      :id,
      :lo_ra_wan,
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The input did not meet the specified constraints.</p>
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

    # Includes enum constants for WirelessDeviceEvent
    #
    module WirelessDeviceEvent
      # No documentation available.
      #
      Join = "Join"

      # No documentation available.
      #
      Rejoin = "Rejoin"

      # No documentation available.
      #
      Uplink_Data = "Uplink_Data"

      # No documentation available.
      #
      Downlink_Data = "Downlink_Data"

      # No documentation available.
      #
      Registration = "Registration"
    end

    # <p>The log options for a wireless device event and can be used to set log levels for a specific wireless device event.</p>
    #          <p>For a LoRaWAN device, possible events for a log messsage are: <code>Join</code>, <code>Rejoin</code>,
    #              <code>Downlink_Data</code>, and <code>Uplink_Data</code>. For a Sidewalk device, possible events for a log message are
    #              <code>Registration</code>, <code>Downlink_Data</code>, and <code>Uplink_Data</code>.</p>
    #
    # @!attribute event
    #   <p>The event for a log message, if the log message is tied to a wireless device.</p>
    #
    #   Enum, one of: ["Join", "Rejoin", "Uplink_Data", "Downlink_Data", "Registration"]
    #
    #   @return [String]
    #
    # @!attribute log_level
    #   <p>The log level for a log message. The log levels can be disabled, or set to <code>ERROR</code> to display
    #               less verbose logs containing only error information, or to <code>INFO</code> for more detailed logs.</p>
    #
    #   Enum, one of: ["INFO", "ERROR", "DISABLED"]
    #
    #   @return [String]
    #
    WirelessDeviceEventLogOption = ::Struct.new(
      :event,
      :log_level,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for WirelessDeviceFrameInfo
    #
    module WirelessDeviceFrameInfo
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # Includes enum constants for WirelessDeviceIdType
    #
    module WirelessDeviceIdType
      # No documentation available.
      #
      WirelessDeviceId = "WirelessDeviceId"

      # No documentation available.
      #
      DevEui = "DevEui"

      # No documentation available.
      #
      ThingName = "ThingName"

      # No documentation available.
      #
      SidewalkManufacturingSn = "SidewalkManufacturingSn"
    end

    # <p>The log options for wireless devices and can be used to set log levels for a specific type of wireless device.</p>
    #
    # @!attribute type
    #   <p>The wireless device type.</p>
    #
    #   Enum, one of: ["Sidewalk", "LoRaWAN"]
    #
    #   @return [String]
    #
    # @!attribute log_level
    #   <p>The log level for a log message. The log levels can be disabled, or set to <code>ERROR</code> to display
    #               less verbose logs containing only error information, or to <code>INFO</code> for more detailed logs.</p>
    #
    #   Enum, one of: ["INFO", "ERROR", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute events
    #   <p>The list of wireless device event log options.</p>
    #
    #   @return [Array<WirelessDeviceEventLogOption>]
    #
    WirelessDeviceLogOption = ::Struct.new(
      :type,
      :log_level,
      :events,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a wireless device's operation.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The ID of the wireless device reporting the data.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The wireless device type.</p>
    #
    #   Enum, one of: ["Sidewalk", "LoRaWAN"]
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_name
    #   <p>The name of the destination to which the device is assigned.</p>
    #
    #   @return [String]
    #
    # @!attribute last_uplink_received_at
    #   <p>The date and time when the most recent uplink was received.</p>
    #
    #   @return [String]
    #
    # @!attribute lo_ra_wan
    #   <p>LoRaWAN device info.</p>
    #
    #   @return [LoRaWANListDevice]
    #
    # @!attribute sidewalk
    #   <p>The Sidewalk account credentials.</p>
    #
    #   @return [SidewalkListDevice]
    #
    # @!attribute fuota_device_status
    #   <p>The status of a wireless device in a FUOTA task.</p>
    #
    #   Enum, one of: ["Initial", "Package_Not_Supported", "FragAlgo_unsupported", "Not_enough_memory", "FragIndex_unsupported", "Wrong_descriptor", "SessionCnt_replay", "MissingFrag", "MemoryError", "MICError", "Successful"]
    #
    #   @return [String]
    #
    # @!attribute multicast_device_status
    #   <p>The status of the wireless device in the multicast group.</p>
    #
    #   @return [String]
    #
    # @!attribute mc_group_id
    #   <p>Id of the multicast group.</p>
    #
    #   @return [Integer]
    #
    WirelessDeviceStatistics = ::Struct.new(
      :arn,
      :id,
      :type,
      :name,
      :destination_name,
      :last_uplink_received_at,
      :lo_ra_wan,
      :sidewalk,
      :fuota_device_status,
      :multicast_device_status,
      :mc_group_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for WirelessDeviceType
    #
    module WirelessDeviceType
      # No documentation available.
      #
      Sidewalk = "Sidewalk"

      # No documentation available.
      #
      LoRaWAN = "LoRaWAN"
    end

    # Includes enum constants for WirelessGatewayEvent
    #
    module WirelessGatewayEvent
      # No documentation available.
      #
      CUPS_Request = "CUPS_Request"

      # No documentation available.
      #
      Certificate = "Certificate"
    end

    # <p>The log options for a wireless gateway event and can be used to set log levels for a specific wireless gateway event.</p>
    #          <p>For a LoRaWAN gateway, possible events for a log message are <code>CUPS_Request</code> and <code>Certificate</code>.</p>
    #
    # @!attribute event
    #   <p>The event for a log message, if the log message is tied to a wireless gateway.</p>
    #
    #   Enum, one of: ["CUPS_Request", "Certificate"]
    #
    #   @return [String]
    #
    # @!attribute log_level
    #   <p>The log level for a log message. The log levels can be disabled, or set to <code>ERROR</code> to display
    #               less verbose logs containing only error information, or to <code>INFO</code> for more detailed logs.</p>
    #
    #   Enum, one of: ["INFO", "ERROR", "DISABLED"]
    #
    #   @return [String]
    #
    WirelessGatewayEventLogOption = ::Struct.new(
      :event,
      :log_level,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for WirelessGatewayIdType
    #
    module WirelessGatewayIdType
      # No documentation available.
      #
      GatewayEui = "GatewayEui"

      # No documentation available.
      #
      WirelessGatewayId = "WirelessGatewayId"

      # No documentation available.
      #
      ThingName = "ThingName"
    end

    # <p>The log options for wireless gateways and can be used to set log levels for a specific type of wireless gateway.</p>
    #
    # @!attribute type
    #   <p>The wireless gateway type.</p>
    #
    #   Enum, one of: ["LoRaWAN"]
    #
    #   @return [String]
    #
    # @!attribute log_level
    #   <p>The log level for a log message. The log levels can be disabled, or set to <code>ERROR</code> to display
    #               less verbose logs containing only error information, or to <code>INFO</code> for more detailed logs.</p>
    #
    #   Enum, one of: ["INFO", "ERROR", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute events
    #   <p>The list of wireless gateway event log options.</p>
    #
    #   @return [Array<WirelessGatewayEventLogOption>]
    #
    WirelessGatewayLogOption = ::Struct.new(
      :type,
      :log_level,
      :events,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for WirelessGatewayServiceType
    #
    module WirelessGatewayServiceType
      # No documentation available.
      #
      CUPS = "CUPS"

      # No documentation available.
      #
      LNS = "LNS"
    end

    # <p>Information about a wireless gateway's operation.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The ID of the wireless gateway reporting the data.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute lo_ra_wan
    #   <p>LoRaWAN gateway info.</p>
    #
    #   @return [LoRaWANGateway]
    #
    # @!attribute last_uplink_received_at
    #   <p>The date and time when the most recent uplink was received.</p>
    #
    #   @return [String]
    #
    WirelessGatewayStatistics = ::Struct.new(
      :arn,
      :id,
      :name,
      :description,
      :lo_ra_wan,
      :last_uplink_received_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for WirelessGatewayTaskDefinitionType
    #
    module WirelessGatewayTaskDefinitionType
      # No documentation available.
      #
      UPDATE = "UPDATE"
    end

    # Includes enum constants for WirelessGatewayTaskStatus
    #
    module WirelessGatewayTaskStatus
      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"

      # No documentation available.
      #
      FIRST_RETRY = "FIRST_RETRY"

      # No documentation available.
      #
      SECOND_RETRY = "SECOND_RETRY"

      # No documentation available.
      #
      COMPLETED = "COMPLETED"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # Includes enum constants for WirelessGatewayType
    #
    module WirelessGatewayType
      # No documentation available.
      #
      LoRaWAN = "LoRaWAN"
    end

    # <p>WirelessMetadata object.</p>
    #
    # @!attribute lo_ra_wan
    #   <p>LoRaWAN device info.</p>
    #
    #   @return [LoRaWANSendDataToDevice]
    #
    # @!attribute sidewalk
    #   <p>The Sidewalk account credentials.</p>
    #
    #   @return [SidewalkSendDataToDevice]
    #
    WirelessMetadata = ::Struct.new(
      :lo_ra_wan,
      :sidewalk,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
