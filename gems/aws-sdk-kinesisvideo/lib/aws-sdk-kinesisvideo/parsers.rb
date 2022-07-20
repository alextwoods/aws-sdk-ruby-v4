# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::KinesisVideo
  module Parsers

    # Operation Parser for CreateSignalingChannel
    class CreateSignalingChannel
      def self.parse(http_resp)
        data = Types::CreateSignalingChannelOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.channel_arn = map['ChannelARN']
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for AccountChannelLimitExceededException
    class AccountChannelLimitExceededException
      def self.parse(http_resp)
        data = Types::AccountChannelLimitExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ClientLimitExceededException
    class ClientLimitExceededException
      def self.parse(http_resp)
        data = Types::ClientLimitExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidArgumentException
    class InvalidArgumentException
      def self.parse(http_resp)
        data = Types::InvalidArgumentException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ResourceInUseException
    class ResourceInUseException
      def self.parse(http_resp)
        data = Types::ResourceInUseException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for TagsPerResourceExceededLimitException
    class TagsPerResourceExceededLimitException
      def self.parse(http_resp)
        data = Types::TagsPerResourceExceededLimitException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateStream
    class CreateStream
      def self.parse(http_resp)
        data = Types::CreateStreamOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.stream_arn = map['StreamARN']
        data
      end
    end

    # Error Parser for AccountStreamLimitExceededException
    class AccountStreamLimitExceededException
      def self.parse(http_resp)
        data = Types::AccountStreamLimitExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for DeviceStreamLimitExceededException
    class DeviceStreamLimitExceededException
      def self.parse(http_resp)
        data = Types::DeviceStreamLimitExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidDeviceException
    class InvalidDeviceException
      def self.parse(http_resp)
        data = Types::InvalidDeviceException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeleteSignalingChannel
    class DeleteSignalingChannel
      def self.parse(http_resp)
        data = Types::DeleteSignalingChannelOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for VersionMismatchException
    class VersionMismatchException
      def self.parse(http_resp)
        data = Types::VersionMismatchException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeleteStream
    class DeleteStream
      def self.parse(http_resp)
        data = Types::DeleteStreamOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for NotAuthorizedException
    class NotAuthorizedException
      def self.parse(http_resp)
        data = Types::NotAuthorizedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DescribeImageGenerationConfiguration
    class DescribeImageGenerationConfiguration
      def self.parse(http_resp)
        data = Types::DescribeImageGenerationConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.image_generation_configuration = (Parsers::ImageGenerationConfiguration.parse(map['ImageGenerationConfiguration']) unless map['ImageGenerationConfiguration'].nil?)
        data
      end
    end

    class ImageGenerationConfiguration
      def self.parse(map)
        data = Types::ImageGenerationConfiguration.new
        data.status = map['Status']
        data.image_selector_type = map['ImageSelectorType']
        data.destination_config = (Parsers::ImageGenerationDestinationConfig.parse(map['DestinationConfig']) unless map['DestinationConfig'].nil?)
        data.sampling_interval = map['SamplingInterval']
        data.format = map['Format']
        data.format_config = (Parsers::FormatConfig.parse(map['FormatConfig']) unless map['FormatConfig'].nil?)
        data.width_pixels = map['WidthPixels']
        data.height_pixels = map['HeightPixels']
        return data
      end
    end

    class FormatConfig
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class ImageGenerationDestinationConfig
      def self.parse(map)
        data = Types::ImageGenerationDestinationConfig.new
        data.uri = map['Uri']
        data.destination_region = map['DestinationRegion']
        return data
      end
    end

    # Operation Parser for DescribeNotificationConfiguration
    class DescribeNotificationConfiguration
      def self.parse(http_resp)
        data = Types::DescribeNotificationConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.notification_configuration = (Parsers::NotificationConfiguration.parse(map['NotificationConfiguration']) unless map['NotificationConfiguration'].nil?)
        data
      end
    end

    class NotificationConfiguration
      def self.parse(map)
        data = Types::NotificationConfiguration.new
        data.status = map['Status']
        data.destination_config = (Parsers::NotificationDestinationConfig.parse(map['DestinationConfig']) unless map['DestinationConfig'].nil?)
        return data
      end
    end

    class NotificationDestinationConfig
      def self.parse(map)
        data = Types::NotificationDestinationConfig.new
        data.uri = map['Uri']
        return data
      end
    end

    # Operation Parser for DescribeSignalingChannel
    class DescribeSignalingChannel
      def self.parse(http_resp)
        data = Types::DescribeSignalingChannelOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.channel_info = (Parsers::ChannelInfo.parse(map['ChannelInfo']) unless map['ChannelInfo'].nil?)
        data
      end
    end

    class ChannelInfo
      def self.parse(map)
        data = Types::ChannelInfo.new
        data.channel_name = map['ChannelName']
        data.channel_arn = map['ChannelARN']
        data.channel_type = map['ChannelType']
        data.channel_status = map['ChannelStatus']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.single_master_configuration = (Parsers::SingleMasterConfiguration.parse(map['SingleMasterConfiguration']) unless map['SingleMasterConfiguration'].nil?)
        data.version = map['Version']
        return data
      end
    end

    class SingleMasterConfiguration
      def self.parse(map)
        data = Types::SingleMasterConfiguration.new
        data.message_ttl_seconds = map['MessageTtlSeconds']
        return data
      end
    end

    # Operation Parser for DescribeStream
    class DescribeStream
      def self.parse(http_resp)
        data = Types::DescribeStreamOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.stream_info = (Parsers::StreamInfo.parse(map['StreamInfo']) unless map['StreamInfo'].nil?)
        data
      end
    end

    class StreamInfo
      def self.parse(map)
        data = Types::StreamInfo.new
        data.device_name = map['DeviceName']
        data.stream_name = map['StreamName']
        data.stream_arn = map['StreamARN']
        data.media_type = map['MediaType']
        data.kms_key_id = map['KmsKeyId']
        data.version = map['Version']
        data.status = map['Status']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.data_retention_in_hours = map['DataRetentionInHours']
        return data
      end
    end

    # Operation Parser for GetDataEndpoint
    class GetDataEndpoint
      def self.parse(http_resp)
        data = Types::GetDataEndpointOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.data_endpoint = map['DataEndpoint']
        data
      end
    end

    # Operation Parser for GetSignalingChannelEndpoint
    class GetSignalingChannelEndpoint
      def self.parse(http_resp)
        data = Types::GetSignalingChannelEndpointOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.resource_endpoint_list = (Parsers::ResourceEndpointList.parse(map['ResourceEndpointList']) unless map['ResourceEndpointList'].nil?)
        data
      end
    end

    class ResourceEndpointList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ResourceEndpointListItem.parse(value) unless value.nil?
        end
        data
      end
    end

    class ResourceEndpointListItem
      def self.parse(map)
        data = Types::ResourceEndpointListItem.new
        data.protocol = map['Protocol']
        data.resource_endpoint = map['ResourceEndpoint']
        return data
      end
    end

    # Operation Parser for ListSignalingChannels
    class ListSignalingChannels
      def self.parse(http_resp)
        data = Types::ListSignalingChannelsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.channel_info_list = (Parsers::ChannelInfoList.parse(map['ChannelInfoList']) unless map['ChannelInfoList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ChannelInfoList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ChannelInfo.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListStreams
    class ListStreams
      def self.parse(http_resp)
        data = Types::ListStreamsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.stream_info_list = (Parsers::StreamInfoList.parse(map['StreamInfoList']) unless map['StreamInfoList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class StreamInfoList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::StreamInfo.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['NextToken']
        data.tags = (Parsers::ResourceTags.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    class ResourceTags
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListTagsForStream
    class ListTagsForStream
      def self.parse(http_resp)
        data = Types::ListTagsForStreamOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['NextToken']
        data.tags = (Parsers::ResourceTags.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    # Error Parser for InvalidResourceFormatException
    class InvalidResourceFormatException
      def self.parse(http_resp)
        data = Types::InvalidResourceFormatException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for TagStream
    class TagStream
      def self.parse(http_resp)
        data = Types::TagStreamOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UntagStream
    class UntagStream
      def self.parse(http_resp)
        data = Types::UntagStreamOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateDataRetention
    class UpdateDataRetention
      def self.parse(http_resp)
        data = Types::UpdateDataRetentionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateImageGenerationConfiguration
    class UpdateImageGenerationConfiguration
      def self.parse(http_resp)
        data = Types::UpdateImageGenerationConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for NoDataRetentionException
    class NoDataRetentionException
      def self.parse(http_resp)
        data = Types::NoDataRetentionException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for UpdateNotificationConfiguration
    class UpdateNotificationConfiguration
      def self.parse(http_resp)
        data = Types::UpdateNotificationConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateSignalingChannel
    class UpdateSignalingChannel
      def self.parse(http_resp)
        data = Types::UpdateSignalingChannelOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateStream
    class UpdateStream
      def self.parse(http_resp)
        data = Types::UpdateStreamOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end
  end
end
