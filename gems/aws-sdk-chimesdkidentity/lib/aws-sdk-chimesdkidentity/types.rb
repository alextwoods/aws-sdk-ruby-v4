# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ChimeSDKIdentity
  module Types

    # Includes enum constants for AllowMessages
    #
    module AllowMessages
      # No documentation available.
      #
      ALL = "ALL"

      # No documentation available.
      #
      NONE = "NONE"
    end

    # <p>The details of an <code>AppInstance</code>, an instance of an Amazon Chime SDK messaging
    #          application.</p>
    #
    # @!attribute app_instance_arn
    #   <p>The ARN of the messaging instance.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of an <code>AppInstance</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute created_timestamp
    #   <p>The time at which an <code>AppInstance</code> was created. In epoch milliseconds.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_timestamp
    #   <p>The time an <code>AppInstance</code> was last updated. In epoch milliseconds.</p>
    #
    #   @return [Time]
    #
    # @!attribute metadata
    #   <p>The metadata of an <code>AppInstance</code>.</p>
    #
    #   @return [String]
    #
    AppInstance = ::Struct.new(
      :app_instance_arn,
      :name,
      :created_timestamp,
      :last_updated_timestamp,
      :metadata,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ChimeSDKIdentity::Types::AppInstance "\
          "app_instance_arn=#{app_instance_arn || 'nil'}, "\
          "name=\"[SENSITIVE]\", "\
          "created_timestamp=#{created_timestamp || 'nil'}, "\
          "last_updated_timestamp=#{last_updated_timestamp || 'nil'}, "\
          "metadata=\"[SENSITIVE]\">"
      end
    end

    # <p>The details of an <code>AppInstanceAdmin</code>.</p>
    #
    # @!attribute admin
    #   <p>The <code>AppInstanceAdmin</code> data.</p>
    #
    #   @return [Identity]
    #
    # @!attribute app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code> for which the user is an administrator.</p>
    #
    #   @return [String]
    #
    # @!attribute created_timestamp
    #   <p>The time at which an administrator was created.</p>
    #
    #   @return [Time]
    #
    AppInstanceAdmin = ::Struct.new(
      :admin,
      :app_instance_arn,
      :created_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Summary of the details of an <code>AppInstanceAdmin</code>.</p>
    #
    # @!attribute admin
    #   <p>The details of the <code>AppInstanceAdmin</code>.</p>
    #
    #   @return [Identity]
    #
    AppInstanceAdminSummary = ::Struct.new(
      :admin,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The details of the data-retention settings for an <code>AppInstance</code>.</p>
    #
    # @!attribute channel_retention_settings
    #   <p>The length of time in days to retain the messages in a channel.</p>
    #
    #   @return [ChannelRetentionSettings]
    #
    AppInstanceRetentionSettings = ::Struct.new(
      :channel_retention_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Summary of the data for an <code>AppInstance</code>.</p>
    #
    # @!attribute app_instance_arn
    #   <p>The <code>AppInstance</code> ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the <code>AppInstance</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute metadata
    #   <p>The metadata of the <code>AppInstance</code>.</p>
    #
    #   @return [String]
    #
    AppInstanceSummary = ::Struct.new(
      :app_instance_arn,
      :name,
      :metadata,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ChimeSDKIdentity::Types::AppInstanceSummary "\
          "app_instance_arn=#{app_instance_arn || 'nil'}, "\
          "name=\"[SENSITIVE]\", "\
          "metadata=\"[SENSITIVE]\">"
      end
    end

    # <p>The details of an <code>AppInstanceUser</code>.</p>
    #
    # @!attribute app_instance_user_arn
    #   <p>The ARN of the <code>AppInstanceUser</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the <code>AppInstanceUser</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute metadata
    #   <p>The metadata of the <code>AppInstanceUser</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute created_timestamp
    #   <p>The time at which the <code>AppInstanceUser</code> was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_timestamp
    #   <p>The time at which the <code>AppInstanceUser</code> was last updated.</p>
    #
    #   @return [Time]
    #
    AppInstanceUser = ::Struct.new(
      :app_instance_user_arn,
      :name,
      :metadata,
      :created_timestamp,
      :last_updated_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ChimeSDKIdentity::Types::AppInstanceUser "\
          "app_instance_user_arn=#{app_instance_user_arn || 'nil'}, "\
          "name=\"[SENSITIVE]\", "\
          "metadata=\"[SENSITIVE]\", "\
          "created_timestamp=#{created_timestamp || 'nil'}, "\
          "last_updated_timestamp=#{last_updated_timestamp || 'nil'}>"
      end
    end

    # <p>An endpoint under an Amazon Chime <code>AppInstanceUser</code> that receives messages for a user. For push notifications, the endpoint is a mobile device used to receive mobile push notifications for a user.</p>
    #
    # @!attribute app_instance_user_arn
    #   <p>The ARN of the <code>AppInstanceUser</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_id
    #   <p>The unique identifier of the <code>AppInstanceUserEndpoint</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the <code>AppInstanceUserEndpoint</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of the <code>AppInstanceUserEndpoint</code>.</p>
    #
    #   Enum, one of: ["APNS", "APNS_SANDBOX", "GCM"]
    #
    #   @return [String]
    #
    # @!attribute resource_arn
    #   <p>The ARN of the resource to which the endpoint belongs.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_attributes
    #   <p>The attributes of an <code>Endpoint</code>.</p>
    #
    #   @return [EndpointAttributes]
    #
    # @!attribute created_timestamp
    #   <p>The time at which an <code>AppInstanceUserEndpoint</code> was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_timestamp
    #   <p>The time at which an <code>AppInstanceUserEndpoint</code> was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute allow_messages
    #   <p>Boolean that controls whether the <code>AppInstanceUserEndpoint</code> is opted in to receive messages. <code>ALL</code> indicates the endpoint will receive all messages.
    #            <code>NONE</code> indicates the endpoint will receive no messages.</p>
    #
    #   Enum, one of: ["ALL", "NONE"]
    #
    #   @return [String]
    #
    # @!attribute endpoint_state
    #   <p>A read-only field that represents the state of an <code>AppInstanceUserEndpoint</code>. Supported values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code>: The <code>AppInstanceUserEndpoint</code> is active and able to receive messages. When <code>ACTIVE</code>, the <code>EndpointStatusReason</code> remains empty.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INACTIVE</code>: The <code>AppInstanceUserEndpoint</code> is inactive and can't receive message. When <code>INACTIVE</code>, the corresponding reason will be
    #               conveyed through <code>EndpointStatusReason</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INVALID_DEVICE_TOKEN</code> indicates that an <code>AppInstanceUserEndpoint</code> is <code>INACTIVE</code> due to invalid device token</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INVALID_PINPOINT_ARN</code> indicates that an <code>AppInstanceUserEndpoint</code> is <code>INACTIVE</code> due to an invalid pinpoint ARN that was input
    #               through the <code>ResourceArn</code> field.</p>
    #               </li>
    #            </ul>
    #
    #   @return [EndpointState]
    #
    AppInstanceUserEndpoint = ::Struct.new(
      :app_instance_user_arn,
      :endpoint_id,
      :name,
      :type,
      :resource_arn,
      :endpoint_attributes,
      :created_timestamp,
      :last_updated_timestamp,
      :allow_messages,
      :endpoint_state,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ChimeSDKIdentity::Types::AppInstanceUserEndpoint "\
          "app_instance_user_arn=\"[SENSITIVE]\", "\
          "endpoint_id=\"[SENSITIVE]\", "\
          "name=\"[SENSITIVE]\", "\
          "type=#{type || 'nil'}, "\
          "resource_arn=\"[SENSITIVE]\", "\
          "endpoint_attributes=#{endpoint_attributes || 'nil'}, "\
          "created_timestamp=#{created_timestamp || 'nil'}, "\
          "last_updated_timestamp=#{last_updated_timestamp || 'nil'}, "\
          "allow_messages=#{allow_messages || 'nil'}, "\
          "endpoint_state=#{endpoint_state || 'nil'}>"
      end
    end

    # <p>Summary of the details of an <code>AppInstanceUserEndpoint</code>.</p>
    #
    # @!attribute app_instance_user_arn
    #   <p>The ARN of the <code>AppInstanceUser</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_id
    #   <p>The unique identifier of the <code>AppInstanceUserEndpoint</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the <code>AppInstanceUserEndpoint</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of the <code>AppInstanceUserEndpoint</code>.</p>
    #
    #   Enum, one of: ["APNS", "APNS_SANDBOX", "GCM"]
    #
    #   @return [String]
    #
    # @!attribute allow_messages
    #   <p>BBoolean that controls whether the <code>AppInstanceUserEndpoint</code> is opted in to receive messages. <code>ALL</code> indicates the endpoint will receive all messages.
    #            <code>NONE</code> indicates the endpoint will receive no messages.</p>
    #
    #   Enum, one of: ["ALL", "NONE"]
    #
    #   @return [String]
    #
    # @!attribute endpoint_state
    #   <p>A read-only field that represent the state of an <code>AppInstanceUserEndpoint</code>.</p>
    #
    #   @return [EndpointState]
    #
    AppInstanceUserEndpointSummary = ::Struct.new(
      :app_instance_user_arn,
      :endpoint_id,
      :name,
      :type,
      :allow_messages,
      :endpoint_state,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ChimeSDKIdentity::Types::AppInstanceUserEndpointSummary "\
          "app_instance_user_arn=\"[SENSITIVE]\", "\
          "endpoint_id=\"[SENSITIVE]\", "\
          "name=\"[SENSITIVE]\", "\
          "type=#{type || 'nil'}, "\
          "allow_messages=#{allow_messages || 'nil'}, "\
          "endpoint_state=#{endpoint_state || 'nil'}>"
      end
    end

    # Includes enum constants for AppInstanceUserEndpointType
    #
    module AppInstanceUserEndpointType
      # No documentation available.
      #
      APNS = "APNS"

      # No documentation available.
      #
      APNS_SANDBOX = "APNS_SANDBOX"

      # No documentation available.
      #
      GCM = "GCM"
    end

    # <p>Summary of the details of an <code>AppInstanceUser</code>.</p>
    #
    # @!attribute app_instance_user_arn
    #   <p>The ARN of the <code>AppInstanceUser</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of an <code>AppInstanceUser</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute metadata
    #   <p>The metadata of the <code>AppInstanceUser</code>.</p>
    #
    #   @return [String]
    #
    AppInstanceUserSummary = ::Struct.new(
      :app_instance_user_arn,
      :name,
      :metadata,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ChimeSDKIdentity::Types::AppInstanceUserSummary "\
          "app_instance_user_arn=#{app_instance_user_arn || 'nil'}, "\
          "name=\"[SENSITIVE]\", "\
          "metadata=\"[SENSITIVE]\">"
      end
    end

    # <p>The input parameters don't match the service's restrictions.</p>
    #
    # @!attribute code
    #   Enum, one of: ["BadRequest", "Conflict", "Forbidden", "NotFound", "PreconditionFailed", "ResourceLimitExceeded", "ServiceFailure", "AccessDenied", "ServiceUnavailable", "Throttled", "Throttling", "Unauthorized", "Unprocessable", "VoiceConnectorGroupAssociationsExist", "PhoneNumberAssociationsExist"]
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    BadRequestException = ::Struct.new(
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The details of the retention settings for a channel.</p>
    #
    # @!attribute retention_days
    #   <p>The time in days to retain the messages in a channel.</p>
    #
    #   @return [Integer]
    #
    ChannelRetentionSettings = ::Struct.new(
      :retention_days,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request could not be processed because of conflict in the current state of the
    #          resource.</p>
    #
    # @!attribute code
    #   Enum, one of: ["BadRequest", "Conflict", "Forbidden", "NotFound", "PreconditionFailed", "ResourceLimitExceeded", "ServiceFailure", "AccessDenied", "ServiceUnavailable", "Throttled", "Throttling", "Unauthorized", "Unprocessable", "VoiceConnectorGroupAssociationsExist", "PhoneNumberAssociationsExist"]
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ConflictException = ::Struct.new(
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_instance_admin_arn
    #   <p>The ARN of the administrator of the current <code>AppInstance</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    #
    #   @return [String]
    #
    CreateAppInstanceAdminInput = ::Struct.new(
      :app_instance_admin_arn,
      :app_instance_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_instance_admin
    #   <p>The name and ARN of the admin for the <code>AppInstance</code>.</p>
    #
    #   @return [Identity]
    #
    # @!attribute app_instance_arn
    #   <p>The ARN of the of the admin for the <code>AppInstance</code>.</p>
    #
    #   @return [String]
    #
    CreateAppInstanceAdminOutput = ::Struct.new(
      :app_instance_admin,
      :app_instance_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the <code>AppInstance</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute metadata
    #   <p>The metadata of the <code>AppInstance</code>. Limited to a 1KB string in UTF-8.</p>
    #
    #   @return [String]
    #
    # @!attribute client_request_token
    #   <p>The <code>ClientRequestToken</code> of the <code>AppInstance</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Tags assigned to the <code>AppInstanceUser</code>.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateAppInstanceInput = ::Struct.new(
      :name,
      :metadata,
      :client_request_token,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ChimeSDKIdentity::Types::CreateAppInstanceInput "\
          "name=\"[SENSITIVE]\", "\
          "metadata=\"[SENSITIVE]\", "\
          "client_request_token=\"[SENSITIVE]\", "\
          "tags=#{tags || 'nil'}>"
      end
    end

    # @!attribute app_instance_arn
    #   <p>The Amazon Resource Number (ARN) of the <code>AppInstance</code>.</p>
    #
    #   @return [String]
    #
    CreateAppInstanceOutput = ::Struct.new(
      :app_instance_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code> request.</p>
    #
    #   @return [String]
    #
    # @!attribute app_instance_user_id
    #   <p>The user ID of the <code>AppInstance</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The user's name.</p>
    #
    #   @return [String]
    #
    # @!attribute metadata
    #   <p>The request's metadata. Limited to a 1KB string in UTF-8.</p>
    #
    #   @return [String]
    #
    # @!attribute client_request_token
    #   <p>The token assigned to the user requesting an <code>AppInstance</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Tags assigned to the <code>AppInstanceUser</code>.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateAppInstanceUserInput = ::Struct.new(
      :app_instance_arn,
      :app_instance_user_id,
      :name,
      :metadata,
      :client_request_token,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ChimeSDKIdentity::Types::CreateAppInstanceUserInput "\
          "app_instance_arn=#{app_instance_arn || 'nil'}, "\
          "app_instance_user_id=\"[SENSITIVE]\", "\
          "name=\"[SENSITIVE]\", "\
          "metadata=\"[SENSITIVE]\", "\
          "client_request_token=\"[SENSITIVE]\", "\
          "tags=#{tags || 'nil'}>"
      end
    end

    # @!attribute app_instance_user_arn
    #   <p>The user's ARN.</p>
    #
    #   @return [String]
    #
    CreateAppInstanceUserOutput = ::Struct.new(
      :app_instance_user_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_instance_admin_arn
    #   <p>The ARN of the <code>AppInstance</code>'s administrator.</p>
    #
    #   @return [String]
    #
    # @!attribute app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    #
    #   @return [String]
    #
    DeleteAppInstanceAdminInput = ::Struct.new(
      :app_instance_admin_arn,
      :app_instance_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteAppInstanceAdminOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    #
    #   @return [String]
    #
    DeleteAppInstanceInput = ::Struct.new(
      :app_instance_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteAppInstanceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_instance_user_arn
    #   <p>The ARN of the user request being deleted.</p>
    #
    #   @return [String]
    #
    DeleteAppInstanceUserInput = ::Struct.new(
      :app_instance_user_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteAppInstanceUserOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_instance_user_arn
    #   <p>The ARN of the <code>AppInstanceUser</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_id
    #   <p>The unique identifier of the <code>AppInstanceUserEndpoint</code>.</p>
    #
    #   @return [String]
    #
    DeregisterAppInstanceUserEndpointInput = ::Struct.new(
      :app_instance_user_arn,
      :endpoint_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ChimeSDKIdentity::Types::DeregisterAppInstanceUserEndpointInput "\
          "app_instance_user_arn=\"[SENSITIVE]\", "\
          "endpoint_id=\"[SENSITIVE]\">"
      end
    end

    DeregisterAppInstanceUserEndpointOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_instance_admin_arn
    #   <p>The ARN of the <code>AppInstanceAdmin</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    #
    #   @return [String]
    #
    DescribeAppInstanceAdminInput = ::Struct.new(
      :app_instance_admin_arn,
      :app_instance_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_instance_admin
    #   <p>The ARN and name of the <code>AppInstanceUser</code>, the ARN of the
    #               <code>AppInstance</code>, and the created and last-updated timestamps. All timestamps
    #            use epoch milliseconds.</p>
    #
    #   @return [AppInstanceAdmin]
    #
    DescribeAppInstanceAdminOutput = ::Struct.new(
      :app_instance_admin,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    #
    #   @return [String]
    #
    DescribeAppInstanceInput = ::Struct.new(
      :app_instance_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_instance
    #   <p>The ARN, metadata, created and last-updated timestamps, and the name of the
    #               <code>AppInstance</code>. All timestamps use epoch milliseconds.</p>
    #
    #   @return [AppInstance]
    #
    DescribeAppInstanceOutput = ::Struct.new(
      :app_instance,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_instance_user_arn
    #   <p>The ARN of the <code>AppInstanceUser</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_id
    #   <p>The unique identifier of the <code>AppInstanceUserEndpoint</code>.</p>
    #
    #   @return [String]
    #
    DescribeAppInstanceUserEndpointInput = ::Struct.new(
      :app_instance_user_arn,
      :endpoint_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ChimeSDKIdentity::Types::DescribeAppInstanceUserEndpointInput "\
          "app_instance_user_arn=\"[SENSITIVE]\", "\
          "endpoint_id=\"[SENSITIVE]\">"
      end
    end

    # @!attribute app_instance_user_endpoint
    #   <p>The full details of an <code>AppInstanceUserEndpoint</code>: the <code>AppInstanceUserArn</code>, ID, name, type, resource ARN, attributes,
    #            allow messages, state, and created and last updated timestamps. All timestamps use epoch milliseconds.</p>
    #
    #   @return [AppInstanceUserEndpoint]
    #
    DescribeAppInstanceUserEndpointOutput = ::Struct.new(
      :app_instance_user_endpoint,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_instance_user_arn
    #   <p>The ARN of the <code>AppInstanceUser</code>.</p>
    #
    #   @return [String]
    #
    DescribeAppInstanceUserInput = ::Struct.new(
      :app_instance_user_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_instance_user
    #   <p>The name of the <code>AppInstanceUser</code>.</p>
    #
    #   @return [AppInstanceUser]
    #
    DescribeAppInstanceUserOutput = ::Struct.new(
      :app_instance_user,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The attributes of an <code>Endpoint</code>.</p>
    #
    # @!attribute device_token
    #   <p>The device token for the GCM, APNS, and APNS_SANDBOX endpoint types.</p>
    #
    #   @return [String]
    #
    # @!attribute voip_device_token
    #   <p>The VOIP device token for the APNS and APNS_SANDBOX endpoint types.</p>
    #
    #   @return [String]
    #
    EndpointAttributes = ::Struct.new(
      :device_token,
      :voip_device_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ChimeSDKIdentity::Types::EndpointAttributes "\
          "device_token=\"[SENSITIVE]\", "\
          "voip_device_token=\"[SENSITIVE]\">"
      end
    end

    # <p>A read-only field that represents the state of an <code>AppInstanceUserEndpoint</code>. Supported values:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>ACTIVE</code>: The <code>AppInstanceUserEndpoint</code> is active and able to receive messages. When <code>ACTIVE</code>, the <code>EndpointStatusReason</code> remains empty.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>INACTIVE</code>: The <code>AppInstanceUserEndpoint</code> is inactive and can't receive
    #                message. When INACTIVE, the corresponding reason will be conveyed through
    #                EndpointStatusReason.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>INVALID_DEVICE_TOKEN</code> indicates that an <code>AppInstanceUserEndpoint</code> is <code>INACTIVE</code> due to invalid device token</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>INVALID_PINPOINT_ARN</code> indicates that an <code>AppInstanceUserEndpoint</code> is <code>INACTIVE</code> due to an invalid pinpoint ARN that was input through the <code>ResourceArn</code> field.</p>
    #             </li>
    #          </ul>
    #
    # @!attribute status
    #   <p>Enum that indicates the Status of an <code>AppInstanceUserEndpoint</code>.</p>
    #
    #   Enum, one of: ["ACTIVE", "INACTIVE"]
    #
    #   @return [String]
    #
    # @!attribute status_reason
    #   <p>The reason for the <code>EndpointStatus</code>.</p>
    #
    #   Enum, one of: ["INVALID_DEVICE_TOKEN", "INVALID_PINPOINT_ARN"]
    #
    #   @return [String]
    #
    EndpointState = ::Struct.new(
      :status,
      :status_reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EndpointStatus
    #
    module EndpointStatus
      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      INACTIVE = "INACTIVE"
    end

    # Includes enum constants for EndpointStatusReason
    #
    module EndpointStatusReason
      # No documentation available.
      #
      INVALID_DEVICE_TOKEN = "INVALID_DEVICE_TOKEN"

      # No documentation available.
      #
      INVALID_PINPOINT_ARN = "INVALID_PINPOINT_ARN"
    end

    # Includes enum constants for ErrorCode
    #
    module ErrorCode
      # No documentation available.
      #
      BadRequest = "BadRequest"

      # No documentation available.
      #
      Conflict = "Conflict"

      # No documentation available.
      #
      Forbidden = "Forbidden"

      # No documentation available.
      #
      NotFound = "NotFound"

      # No documentation available.
      #
      PreconditionFailed = "PreconditionFailed"

      # No documentation available.
      #
      ResourceLimitExceeded = "ResourceLimitExceeded"

      # No documentation available.
      #
      ServiceFailure = "ServiceFailure"

      # No documentation available.
      #
      AccessDenied = "AccessDenied"

      # No documentation available.
      #
      ServiceUnavailable = "ServiceUnavailable"

      # No documentation available.
      #
      Throttled = "Throttled"

      # No documentation available.
      #
      Throttling = "Throttling"

      # No documentation available.
      #
      Unauthorized = "Unauthorized"

      # No documentation available.
      #
      Unprocessable = "Unprocessable"

      # No documentation available.
      #
      VoiceConnectorGroupAssociationsExist = "VoiceConnectorGroupAssociationsExist"

      # No documentation available.
      #
      PhoneNumberAssociationsExist = "PhoneNumberAssociationsExist"
    end

    # <p>The client is permanently forbidden from making the request.</p>
    #
    # @!attribute code
    #   Enum, one of: ["BadRequest", "Conflict", "Forbidden", "NotFound", "PreconditionFailed", "ResourceLimitExceeded", "ServiceFailure", "AccessDenied", "ServiceUnavailable", "Throttled", "Throttling", "Unauthorized", "Unprocessable", "VoiceConnectorGroupAssociationsExist", "PhoneNumberAssociationsExist"]
    #
    #   @return [String]
    #
    # @!attribute message
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

    # @!attribute app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    #
    #   @return [String]
    #
    GetAppInstanceRetentionSettingsInput = ::Struct.new(
      :app_instance_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_instance_retention_settings
    #   <p>The retention settings for the <code>AppInstance</code>.</p>
    #
    #   @return [AppInstanceRetentionSettings]
    #
    # @!attribute initiate_deletion_timestamp
    #   <p>The timestamp representing the time at which the specified items are retained, in Epoch
    #            Seconds.</p>
    #
    #   @return [Time]
    #
    GetAppInstanceRetentionSettingsOutput = ::Struct.new(
      :app_instance_retention_settings,
      :initiate_deletion_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The details of a user.</p>
    #
    # @!attribute arn
    #   <p>The ARN in an Identity.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name in an Identity.</p>
    #
    #   @return [String]
    #
    Identity = ::Struct.new(
      :arn,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ChimeSDKIdentity::Types::Identity "\
          "arn=#{arn || 'nil'}, "\
          "name=\"[SENSITIVE]\">"
      end
    end

    # @!attribute app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of administrators that you want to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token returned from previous API requests until the number of administrators is
    #            reached.</p>
    #
    #   @return [String]
    #
    ListAppInstanceAdminsInput = ::Struct.new(
      :app_instance_arn,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ChimeSDKIdentity::Types::ListAppInstanceAdminsInput "\
          "app_instance_arn=#{app_instance_arn || 'nil'}, "\
          "max_results=#{max_results || 'nil'}, "\
          "next_token=\"[SENSITIVE]\">"
      end
    end

    # @!attribute app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute app_instance_admins
    #   <p>The information for each administrator.</p>
    #
    #   @return [Array<AppInstanceAdminSummary>]
    #
    # @!attribute next_token
    #   <p>The token returned from previous API requests until the number of administrators is
    #            reached.</p>
    #
    #   @return [String]
    #
    ListAppInstanceAdminsOutput = ::Struct.new(
      :app_instance_arn,
      :app_instance_admins,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ChimeSDKIdentity::Types::ListAppInstanceAdminsOutput "\
          "app_instance_arn=#{app_instance_arn || 'nil'}, "\
          "app_instance_admins=#{app_instance_admins || 'nil'}, "\
          "next_token=\"[SENSITIVE]\">"
      end
    end

    # @!attribute app_instance_user_arn
    #   <p>The ARN of the <code>AppInstanceUser</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of endpoints that you want to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token passed by previous API calls until all requested endpoints are returned.</p>
    #
    #   @return [String]
    #
    ListAppInstanceUserEndpointsInput = ::Struct.new(
      :app_instance_user_arn,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ChimeSDKIdentity::Types::ListAppInstanceUserEndpointsInput "\
          "app_instance_user_arn=\"[SENSITIVE]\", "\
          "max_results=#{max_results || 'nil'}, "\
          "next_token=\"[SENSITIVE]\">"
      end
    end

    # @!attribute app_instance_user_endpoints
    #   <p>The information for each requested <code>AppInstanceUserEndpoint</code>.</p>
    #
    #   @return [Array<AppInstanceUserEndpointSummary>]
    #
    # @!attribute next_token
    #   <p>The token passed by previous API calls until all requested endpoints are returned.</p>
    #
    #   @return [String]
    #
    ListAppInstanceUserEndpointsOutput = ::Struct.new(
      :app_instance_user_endpoints,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ChimeSDKIdentity::Types::ListAppInstanceUserEndpointsOutput "\
          "app_instance_user_endpoints=#{app_instance_user_endpoints || 'nil'}, "\
          "next_token=\"[SENSITIVE]\">"
      end
    end

    # @!attribute app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of requests that you want returned.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token passed by previous API calls until all requested users are returned.</p>
    #
    #   @return [String]
    #
    ListAppInstanceUsersInput = ::Struct.new(
      :app_instance_arn,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ChimeSDKIdentity::Types::ListAppInstanceUsersInput "\
          "app_instance_arn=#{app_instance_arn || 'nil'}, "\
          "max_results=#{max_results || 'nil'}, "\
          "next_token=\"[SENSITIVE]\">"
      end
    end

    # @!attribute app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute app_instance_users
    #   <p>The information for each requested <code>AppInstanceUser</code>.</p>
    #
    #   @return [Array<AppInstanceUserSummary>]
    #
    # @!attribute next_token
    #   <p>The token passed by previous API calls until all requested users are returned.</p>
    #
    #   @return [String]
    #
    ListAppInstanceUsersOutput = ::Struct.new(
      :app_instance_arn,
      :app_instance_users,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ChimeSDKIdentity::Types::ListAppInstanceUsersOutput "\
          "app_instance_arn=#{app_instance_arn || 'nil'}, "\
          "app_instance_users=#{app_instance_users || 'nil'}, "\
          "next_token=\"[SENSITIVE]\">"
      end
    end

    # @!attribute max_results
    #   <p>The maximum number of <code>AppInstance</code>s that you want to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token passed by previous API requests until you reach the maximum number of
    #               <code>AppInstances</code>.</p>
    #
    #   @return [String]
    #
    ListAppInstancesInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ChimeSDKIdentity::Types::ListAppInstancesInput "\
          "max_results=#{max_results || 'nil'}, "\
          "next_token=\"[SENSITIVE]\">"
      end
    end

    # @!attribute app_instances
    #   <p>The information for each <code>AppInstance</code>.</p>
    #
    #   @return [Array<AppInstanceSummary>]
    #
    # @!attribute next_token
    #   <p>The token passed by previous API requests until the maximum number of
    #               <code>AppInstance</code>s is reached.</p>
    #
    #   @return [String]
    #
    ListAppInstancesOutput = ::Struct.new(
      :app_instances,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ChimeSDKIdentity::Types::ListAppInstancesOutput "\
          "app_instances=#{app_instances || 'nil'}, "\
          "next_token=\"[SENSITIVE]\">"
      end
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
    #   <p>The tag key-value pairs.</p>
    #
    #   @return [Array<Tag>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute app_instance_retention_settings
    #   <p>The time in days to retain data. Data type: number.</p>
    #
    #   @return [AppInstanceRetentionSettings]
    #
    PutAppInstanceRetentionSettingsInput = ::Struct.new(
      :app_instance_arn,
      :app_instance_retention_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_instance_retention_settings
    #   <p>The time in days to retain data. Data type: number.</p>
    #
    #   @return [AppInstanceRetentionSettings]
    #
    # @!attribute initiate_deletion_timestamp
    #   <p>The time at which the API deletes data.</p>
    #
    #   @return [Time]
    #
    PutAppInstanceRetentionSettingsOutput = ::Struct.new(
      :app_instance_retention_settings,
      :initiate_deletion_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_instance_user_arn
    #   <p>The ARN of the <code>AppInstanceUser</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the <code>AppInstanceUserEndpoint</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of the <code>AppInstanceUserEndpoint</code>. Supported types:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>APNS</code>: The mobile notification service for an Apple device.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>APNS_SANDBOX</code>: The sandbox environment of the mobile notification service for an Apple device.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GCM</code>: The mobile notification service for an Android device.</p>
    #               </li>
    #            </ul>
    #            <p>Populate the <code>ResourceArn</code> value of each type as <code>PinpointAppArn</code>.</p>
    #
    #   Enum, one of: ["APNS", "APNS_SANDBOX", "GCM"]
    #
    #   @return [String]
    #
    # @!attribute resource_arn
    #   <p>The ARN of the resource to which the endpoint belongs.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_attributes
    #   <p>The attributes of an <code>Endpoint</code>.</p>
    #
    #   @return [EndpointAttributes]
    #
    # @!attribute client_request_token
    #   <p>The idempotency token for each client request. </p>
    #
    #   @return [String]
    #
    # @!attribute allow_messages
    #   <p>Boolean that controls whether the AppInstanceUserEndpoint is opted in to receive messages. <code>ALL</code> indicates the endpoint receives all messages.
    #            <code>NONE</code> indicates the endpoint receives no messages.</p>
    #
    #   Enum, one of: ["ALL", "NONE"]
    #
    #   @return [String]
    #
    RegisterAppInstanceUserEndpointInput = ::Struct.new(
      :app_instance_user_arn,
      :name,
      :type,
      :resource_arn,
      :endpoint_attributes,
      :client_request_token,
      :allow_messages,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ChimeSDKIdentity::Types::RegisterAppInstanceUserEndpointInput "\
          "app_instance_user_arn=\"[SENSITIVE]\", "\
          "name=\"[SENSITIVE]\", "\
          "type=#{type || 'nil'}, "\
          "resource_arn=\"[SENSITIVE]\", "\
          "endpoint_attributes=#{endpoint_attributes || 'nil'}, "\
          "client_request_token=\"[SENSITIVE]\", "\
          "allow_messages=#{allow_messages || 'nil'}>"
      end
    end

    # @!attribute app_instance_user_arn
    #   <p>The ARN of the <code>AppInstanceUser</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_id
    #   <p>The unique identifier of the <code>AppInstanceUserEndpoint</code>.</p>
    #
    #   @return [String]
    #
    RegisterAppInstanceUserEndpointOutput = ::Struct.new(
      :app_instance_user_arn,
      :endpoint_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ChimeSDKIdentity::Types::RegisterAppInstanceUserEndpointOutput "\
          "app_instance_user_arn=\"[SENSITIVE]\", "\
          "endpoint_id=\"[SENSITIVE]\">"
      end
    end

    # <p>The request exceeds the resource limit.</p>
    #
    # @!attribute code
    #   Enum, one of: ["BadRequest", "Conflict", "Forbidden", "NotFound", "PreconditionFailed", "ResourceLimitExceeded", "ServiceFailure", "AccessDenied", "ServiceUnavailable", "Throttled", "Throttling", "Unauthorized", "Unprocessable", "VoiceConnectorGroupAssociationsExist", "PhoneNumberAssociationsExist"]
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceLimitExceededException = ::Struct.new(
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The service encountered an unexpected error.</p>
    #
    # @!attribute code
    #   Enum, one of: ["BadRequest", "Conflict", "Forbidden", "NotFound", "PreconditionFailed", "ResourceLimitExceeded", "ServiceFailure", "AccessDenied", "ServiceUnavailable", "Throttled", "Throttling", "Unauthorized", "Unprocessable", "VoiceConnectorGroupAssociationsExist", "PhoneNumberAssociationsExist"]
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ServiceFailureException = ::Struct.new(
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The service is currently unavailable.</p>
    #
    # @!attribute code
    #   Enum, one of: ["BadRequest", "Conflict", "Forbidden", "NotFound", "PreconditionFailed", "ResourceLimitExceeded", "ServiceFailure", "AccessDenied", "ServiceUnavailable", "Throttled", "Throttling", "Unauthorized", "Unprocessable", "VoiceConnectorGroupAssociationsExist", "PhoneNumberAssociationsExist"]
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ServiceUnavailableException = ::Struct.new(
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A tag object containing a key-value pair.</p>
    #
    # @!attribute key
    #   <p>The key in a tag.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value in a tag.</p>
    #
    #   @return [String]
    #
    Tag = ::Struct.new(
      :key,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ChimeSDKIdentity::Types::Tag "\
          "key=\"[SENSITIVE]\", "\
          "value=\"[SENSITIVE]\">"
      end
    end

    # @!attribute resource_arn
    #   <p>The resource ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tag key-value pairs.</p>
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

    # <p>The client exceeded its request rate limit.</p>
    #
    # @!attribute code
    #   Enum, one of: ["BadRequest", "Conflict", "Forbidden", "NotFound", "PreconditionFailed", "ResourceLimitExceeded", "ServiceFailure", "AccessDenied", "ServiceUnavailable", "Throttled", "Throttling", "Unauthorized", "Unprocessable", "VoiceConnectorGroupAssociationsExist", "PhoneNumberAssociationsExist"]
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ThrottledClientException = ::Struct.new(
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The client is not currently authorized to make the request.</p>
    #
    # @!attribute code
    #   Enum, one of: ["BadRequest", "Conflict", "Forbidden", "NotFound", "PreconditionFailed", "ResourceLimitExceeded", "ServiceFailure", "AccessDenied", "ServiceUnavailable", "Throttled", "Throttling", "Unauthorized", "Unprocessable", "VoiceConnectorGroupAssociationsExist", "PhoneNumberAssociationsExist"]
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    UnauthorizedClientException = ::Struct.new(
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The resource ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>The tag keys.</p>
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

    # @!attribute app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name that you want to change.</p>
    #
    #   @return [String]
    #
    # @!attribute metadata
    #   <p>The metadata that you want to change.</p>
    #
    #   @return [String]
    #
    UpdateAppInstanceInput = ::Struct.new(
      :app_instance_arn,
      :name,
      :metadata,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ChimeSDKIdentity::Types::UpdateAppInstanceInput "\
          "app_instance_arn=#{app_instance_arn || 'nil'}, "\
          "name=\"[SENSITIVE]\", "\
          "metadata=\"[SENSITIVE]\">"
      end
    end

    # @!attribute app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    #
    #   @return [String]
    #
    UpdateAppInstanceOutput = ::Struct.new(
      :app_instance_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_instance_user_arn
    #   <p>The ARN of the <code>AppInstanceUser</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_id
    #   <p>The unique identifier of the <code>AppInstanceUserEndpoint</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the <code>AppInstanceUserEndpoint</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute allow_messages
    #   <p>Boolean that controls whether the <code>AppInstanceUserEndpoint</code> is opted in to receive messages. <code>ALL</code> indicates the endpoint will receive all messages.
    #            <code>NONE</code> indicates the endpoint will receive no messages.</p>
    #
    #   Enum, one of: ["ALL", "NONE"]
    #
    #   @return [String]
    #
    UpdateAppInstanceUserEndpointInput = ::Struct.new(
      :app_instance_user_arn,
      :endpoint_id,
      :name,
      :allow_messages,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ChimeSDKIdentity::Types::UpdateAppInstanceUserEndpointInput "\
          "app_instance_user_arn=\"[SENSITIVE]\", "\
          "endpoint_id=\"[SENSITIVE]\", "\
          "name=\"[SENSITIVE]\", "\
          "allow_messages=#{allow_messages || 'nil'}>"
      end
    end

    # @!attribute app_instance_user_arn
    #   <p>The ARN of the <code>AppInstanceUser</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_id
    #   <p>The unique identifier of the <code>AppInstanceUserEndpoint</code>.</p>
    #
    #   @return [String]
    #
    UpdateAppInstanceUserEndpointOutput = ::Struct.new(
      :app_instance_user_arn,
      :endpoint_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ChimeSDKIdentity::Types::UpdateAppInstanceUserEndpointOutput "\
          "app_instance_user_arn=\"[SENSITIVE]\", "\
          "endpoint_id=\"[SENSITIVE]\">"
      end
    end

    # @!attribute app_instance_user_arn
    #   <p>The ARN of the <code>AppInstanceUser</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the <code>AppInstanceUser</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute metadata
    #   <p>The metadata of the <code>AppInstanceUser</code>.</p>
    #
    #   @return [String]
    #
    UpdateAppInstanceUserInput = ::Struct.new(
      :app_instance_user_arn,
      :name,
      :metadata,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ChimeSDKIdentity::Types::UpdateAppInstanceUserInput "\
          "app_instance_user_arn=#{app_instance_user_arn || 'nil'}, "\
          "name=\"[SENSITIVE]\", "\
          "metadata=\"[SENSITIVE]\">"
      end
    end

    # @!attribute app_instance_user_arn
    #   <p>The ARN of the <code>AppInstanceUser</code>.</p>
    #
    #   @return [String]
    #
    UpdateAppInstanceUserOutput = ::Struct.new(
      :app_instance_user_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
