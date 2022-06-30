# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::IoT1ClickDevicesService
  module Types

    Attributes = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute claim_code
    #   <p>The claim code, starting with "C-", as provided by the device manufacturer.</p>
    #
    #   @return [String]
    #
    ClaimDevicesByClaimCodeInput = ::Struct.new(
      :claim_code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute claim_code
    #   <p>The claim code provided by the device manufacturer.</p>
    #
    #   @return [String]
    #
    # @!attribute total
    #   <p>The total number of devices associated with the claim code that has been processed in
    #    the claim request.</p>
    #
    #   @return [Integer]
    #
    ClaimDevicesByClaimCodeOutput = ::Struct.new(
      :claim_code,
      :total,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.total ||= 0
      end

    end

    # @!attribute device_id
    #   <p>The unique identifier of the device.</p>
    #
    #   @return [String]
    #
    DescribeDeviceInput = ::Struct.new(
      :device_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute device_description
    #   <p>Device details.</p>
    #
    #   @return [DeviceDescription]
    #
    DescribeDeviceOutput = ::Struct.new(
      :device_description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute attributes
    #   <p>The user specified attributes associated with the device for an event.</p>
    #
    #   @return [Attributes]
    #
    # @!attribute device_id
    #   <p>The unique identifier of the device.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The device type, such as "button".</p>
    #
    #   @return [String]
    #
    Device = ::Struct.new(
      :attributes,
      :device_id,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the device.</p>
    #
    #   @return [String]
    #
    # @!attribute attributes
    #   <p>An array of zero or more elements of DeviceAttribute objects providing
    #    user specified device attributes.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute device_id
    #   <p>The unique identifier of the device.</p>
    #
    #   @return [String]
    #
    # @!attribute enabled
    #   <p>A Boolean value indicating whether or not the device is enabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute remaining_life
    #   <p>A value between 0 and 1 inclusive, representing the fraction of life remaining for the
    #    device.</p>
    #
    #   @return [Float]
    #
    # @!attribute type
    #   <p>The type of the device, such as "button".</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags currently associated with the AWS IoT 1-Click device.</p>
    #
    #   @return [Hash<String, String>]
    #
    DeviceDescription = ::Struct.new(
      :arn,
      :attributes,
      :device_id,
      :enabled,
      :remaining_life,
      :type,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.enabled ||= false
        self.remaining_life ||= 0
      end

    end

    # @!attribute device
    #   <p>An object representing the device associated with the event.</p>
    #
    #   @return [Device]
    #
    # @!attribute std_event
    #   <p>A serialized JSON object representing the device-type specific event.</p>
    #
    #   @return [String]
    #
    DeviceEvent = ::Struct.new(
      :device,
      :std_event,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute device_type
    #   <p>The type of the device, such as "button".</p>
    #
    #   @return [String]
    #
    # @!attribute method_name
    #   <p>The name of the method applicable to the deviceType.</p>
    #
    #   @return [String]
    #
    DeviceMethod = ::Struct.new(
      :device_type,
      :method_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute device_id
    #   <p>The unique identifier of the device.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A collection of key/value pairs defining the resource tags. For example, {
    #    "tags": {"key1": "value1", "key2": "value2"} }. For more information, see <a href="https://aws.amazon.com/answers/account-management/aws-tagging-strategies/">AWS
    #    Tagging Strategies</a>.</p><p>
    #
    #    </p>
    #
    #   @return [Hash<String, String>]
    #
    FinalizeDeviceClaimInput = ::Struct.new(
      :device_id,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute state
    #   <p>The device's final claim state.</p>
    #
    #   @return [String]
    #
    FinalizeDeviceClaimOutput = ::Struct.new(
      :state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute code
    #   <p>403</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The 403 error message returned by the web server.</p>
    #
    #   @return [String]
    #
    ForbiddenException = ::Struct.new(
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute device_id
    #   <p>The unique identifier of the device.</p>
    #
    #   @return [String]
    #
    GetDeviceMethodsInput = ::Struct.new(
      :device_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute device_methods
    #   <p>List of available device APIs.</p>
    #
    #   @return [Array<DeviceMethod>]
    #
    GetDeviceMethodsOutput = ::Struct.new(
      :device_methods,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute device_id
    #   <p>The unique identifier of the device.</p>
    #
    #   @return [String]
    #
    InitiateDeviceClaimInput = ::Struct.new(
      :device_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute state
    #   <p>The device's final claim state.</p>
    #
    #   @return [String]
    #
    InitiateDeviceClaimOutput = ::Struct.new(
      :state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute code
    #   <p>500</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The 500 error message returned by the web server.</p>
    #
    #   @return [String]
    #
    InternalFailureException = ::Struct.new(
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute code
    #   <p>400</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The 400 error message returned by the web server.</p>
    #
    #   @return [String]
    #
    InvalidRequestException = ::Struct.new(
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute device_id
    #   <p>The unique identifier of the device.</p>
    #
    #   @return [String]
    #
    # @!attribute device_method
    #   <p>The device method to invoke.</p>
    #
    #   @return [DeviceMethod]
    #
    # @!attribute device_method_parameters
    #   <p>A JSON encoded string containing the device method request parameters.</p>
    #
    #   @return [String]
    #
    InvokeDeviceMethodInput = ::Struct.new(
      :device_id,
      :device_method,
      :device_method_parameters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute device_method_response
    #   <p>A JSON encoded string containing the device method response.</p>
    #
    #   @return [String]
    #
    InvokeDeviceMethodOutput = ::Struct.new(
      :device_method_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute device_id
    #   <p>The unique identifier of the device.</p>
    #
    #   @return [String]
    #
    # @!attribute from_time_stamp
    #   <p>The start date for the device event query, in ISO8061 format. For example,
    #    2018-03-28T15:45:12.880Z
    #    </p>
    #
    #   @return [Time]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per request. If not set, a default value of
    #    100 is used.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute to_time_stamp
    #   <p>The end date for the device event query, in ISO8061 format. For example,
    #    2018-03-28T15:45:12.880Z
    #    </p>
    #
    #   @return [Time]
    #
    ListDeviceEventsInput = ::Struct.new(
      :device_id,
      :from_time_stamp,
      :max_results,
      :next_token,
      :to_time_stamp,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max_results ||= 0
      end

    end

    # @!attribute events
    #   <p>An array of zero or more elements describing the event(s) associated with the
    #    device.</p>
    #
    #   @return [Array<DeviceEvent>]
    #
    # @!attribute next_token
    #   <p>The token to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    ListDeviceEventsOutput = ::Struct.new(
      :events,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute device_type
    #   <p>The type of the device, such as "button".</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per request. If not set, a default value of
    #    100 is used.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    ListDevicesInput = ::Struct.new(
      :device_type,
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

    # @!attribute devices
    #   <p>A list of devices.</p>
    #
    #   @return [Array<DeviceDescription>]
    #
    # @!attribute next_token
    #   <p>The token to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    ListDevicesOutput = ::Struct.new(
      :devices,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource.</p>
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
    #   <p>A collection of key/value pairs defining the resource tags. For example, {
    #    "tags": {"key1": "value1", "key2": "value2"} }. For more information, see <a href="https://aws.amazon.com/answers/account-management/aws-tagging-strategies/">AWS
    #    Tagging Strategies</a>.</p><p>
    #
    #    </p>
    #
    #   @return [Hash<String, String>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute code
    #   <p>412</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>An error message explaining the error or its remedy.</p>
    #
    #   @return [String]
    #
    PreconditionFailedException = ::Struct.new(
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute code
    #   <p>416</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The requested number of results specified by nextToken cannot be
    #    satisfied.</p>
    #
    #   @return [String]
    #
    RangeNotSatisfiableException = ::Struct.new(
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute code
    #   <p>409</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>An error message explaining the error or its remedy.</p>
    #
    #   @return [String]
    #
    ResourceConflictException = ::Struct.new(
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute code
    #   <p>404</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The requested device could not be found.</p>
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A collection of key/value pairs defining the resource tags. For example, {
    #    "tags": {"key1": "value1", "key2": "value2"} }. For more information, see <a href="https://aws.amazon.com/answers/account-management/aws-tagging-strategies/">AWS
    #    Tagging Strategies</a>.</p><p>
    #
    #    </p>
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

    # @!attribute device_id
    #   <p>The unique identifier of the device.</p>
    #
    #   @return [String]
    #
    UnclaimDeviceInput = ::Struct.new(
      :device_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute state
    #   <p>The device's final claim state.</p>
    #
    #   @return [String]
    #
    UnclaimDeviceOutput = ::Struct.new(
      :state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>A collections of tag keys. For example, {"key1","key2"}</p>
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

    # @!attribute device_id
    #   <p>The unique identifier of the device.</p>
    #
    #   @return [String]
    #
    # @!attribute enabled
    #   <p>If true, the device is enabled. If false, the device is
    #    disabled.</p>
    #
    #   @return [Boolean]
    #
    UpdateDeviceStateInput = ::Struct.new(
      :device_id,
      :enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.enabled ||= false
      end

    end

    UpdateDeviceStateOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
