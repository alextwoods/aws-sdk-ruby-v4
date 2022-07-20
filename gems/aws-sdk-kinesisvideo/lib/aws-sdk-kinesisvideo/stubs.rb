# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::KinesisVideo
  module Stubs

    # Operation Stubber for CreateSignalingChannel
    class CreateSignalingChannel
      def self.default(visited=[])
        {
          channel_arn: 'channel_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ChannelARN'] = stub[:channel_arn] unless stub[:channel_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateStream
    class CreateStream
      def self.default(visited=[])
        {
          stream_arn: 'stream_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['StreamARN'] = stub[:stream_arn] unless stub[:stream_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteSignalingChannel
    class DeleteSignalingChannel
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteStream
    class DeleteStream
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeImageGenerationConfiguration
    class DescribeImageGenerationConfiguration
      def self.default(visited=[])
        {
          image_generation_configuration: ImageGenerationConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ImageGenerationConfiguration'] = ImageGenerationConfiguration.stub(stub[:image_generation_configuration]) unless stub[:image_generation_configuration].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ImageGenerationConfiguration
    class ImageGenerationConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ImageGenerationConfiguration')
        visited = visited + ['ImageGenerationConfiguration']
        {
          status: 'status',
          image_selector_type: 'image_selector_type',
          destination_config: ImageGenerationDestinationConfig.default(visited),
          sampling_interval: 1,
          format: 'format',
          format_config: FormatConfig.default(visited),
          width_pixels: 1,
          height_pixels: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ImageGenerationConfiguration.new
        data = {}
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['ImageSelectorType'] = stub[:image_selector_type] unless stub[:image_selector_type].nil?
        data['DestinationConfig'] = ImageGenerationDestinationConfig.stub(stub[:destination_config]) unless stub[:destination_config].nil?
        data['SamplingInterval'] = stub[:sampling_interval] unless stub[:sampling_interval].nil?
        data['Format'] = stub[:format] unless stub[:format].nil?
        data['FormatConfig'] = FormatConfig.stub(stub[:format_config]) unless stub[:format_config].nil?
        data['WidthPixels'] = stub[:width_pixels] unless stub[:width_pixels].nil?
        data['HeightPixels'] = stub[:height_pixels] unless stub[:height_pixels].nil?
        data
      end
    end

    # Map Stubber for FormatConfig
    class FormatConfig
      def self.default(visited=[])
        return nil if visited.include?('FormatConfig')
        visited = visited + ['FormatConfig']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for ImageGenerationDestinationConfig
    class ImageGenerationDestinationConfig
      def self.default(visited=[])
        return nil if visited.include?('ImageGenerationDestinationConfig')
        visited = visited + ['ImageGenerationDestinationConfig']
        {
          uri: 'uri',
          destination_region: 'destination_region',
        }
      end

      def self.stub(stub)
        stub ||= Types::ImageGenerationDestinationConfig.new
        data = {}
        data['Uri'] = stub[:uri] unless stub[:uri].nil?
        data['DestinationRegion'] = stub[:destination_region] unless stub[:destination_region].nil?
        data
      end
    end

    # Operation Stubber for DescribeNotificationConfiguration
    class DescribeNotificationConfiguration
      def self.default(visited=[])
        {
          notification_configuration: NotificationConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NotificationConfiguration'] = NotificationConfiguration.stub(stub[:notification_configuration]) unless stub[:notification_configuration].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for NotificationConfiguration
    class NotificationConfiguration
      def self.default(visited=[])
        return nil if visited.include?('NotificationConfiguration')
        visited = visited + ['NotificationConfiguration']
        {
          status: 'status',
          destination_config: NotificationDestinationConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::NotificationConfiguration.new
        data = {}
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['DestinationConfig'] = NotificationDestinationConfig.stub(stub[:destination_config]) unless stub[:destination_config].nil?
        data
      end
    end

    # Structure Stubber for NotificationDestinationConfig
    class NotificationDestinationConfig
      def self.default(visited=[])
        return nil if visited.include?('NotificationDestinationConfig')
        visited = visited + ['NotificationDestinationConfig']
        {
          uri: 'uri',
        }
      end

      def self.stub(stub)
        stub ||= Types::NotificationDestinationConfig.new
        data = {}
        data['Uri'] = stub[:uri] unless stub[:uri].nil?
        data
      end
    end

    # Operation Stubber for DescribeSignalingChannel
    class DescribeSignalingChannel
      def self.default(visited=[])
        {
          channel_info: ChannelInfo.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ChannelInfo'] = ChannelInfo.stub(stub[:channel_info]) unless stub[:channel_info].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ChannelInfo
    class ChannelInfo
      def self.default(visited=[])
        return nil if visited.include?('ChannelInfo')
        visited = visited + ['ChannelInfo']
        {
          channel_name: 'channel_name',
          channel_arn: 'channel_arn',
          channel_type: 'channel_type',
          channel_status: 'channel_status',
          creation_time: Time.now,
          single_master_configuration: SingleMasterConfiguration.default(visited),
          version: 'version',
        }
      end

      def self.stub(stub)
        stub ||= Types::ChannelInfo.new
        data = {}
        data['ChannelName'] = stub[:channel_name] unless stub[:channel_name].nil?
        data['ChannelARN'] = stub[:channel_arn] unless stub[:channel_arn].nil?
        data['ChannelType'] = stub[:channel_type] unless stub[:channel_type].nil?
        data['ChannelStatus'] = stub[:channel_status] unless stub[:channel_status].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['SingleMasterConfiguration'] = SingleMasterConfiguration.stub(stub[:single_master_configuration]) unless stub[:single_master_configuration].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data
      end
    end

    # Structure Stubber for SingleMasterConfiguration
    class SingleMasterConfiguration
      def self.default(visited=[])
        return nil if visited.include?('SingleMasterConfiguration')
        visited = visited + ['SingleMasterConfiguration']
        {
          message_ttl_seconds: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::SingleMasterConfiguration.new
        data = {}
        data['MessageTtlSeconds'] = stub[:message_ttl_seconds] unless stub[:message_ttl_seconds].nil?
        data
      end
    end

    # Operation Stubber for DescribeStream
    class DescribeStream
      def self.default(visited=[])
        {
          stream_info: StreamInfo.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['StreamInfo'] = StreamInfo.stub(stub[:stream_info]) unless stub[:stream_info].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for StreamInfo
    class StreamInfo
      def self.default(visited=[])
        return nil if visited.include?('StreamInfo')
        visited = visited + ['StreamInfo']
        {
          device_name: 'device_name',
          stream_name: 'stream_name',
          stream_arn: 'stream_arn',
          media_type: 'media_type',
          kms_key_id: 'kms_key_id',
          version: 'version',
          status: 'status',
          creation_time: Time.now,
          data_retention_in_hours: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::StreamInfo.new
        data = {}
        data['DeviceName'] = stub[:device_name] unless stub[:device_name].nil?
        data['StreamName'] = stub[:stream_name] unless stub[:stream_name].nil?
        data['StreamARN'] = stub[:stream_arn] unless stub[:stream_arn].nil?
        data['MediaType'] = stub[:media_type] unless stub[:media_type].nil?
        data['KmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['DataRetentionInHours'] = stub[:data_retention_in_hours] unless stub[:data_retention_in_hours].nil?
        data
      end
    end

    # Operation Stubber for GetDataEndpoint
    class GetDataEndpoint
      def self.default(visited=[])
        {
          data_endpoint: 'data_endpoint',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DataEndpoint'] = stub[:data_endpoint] unless stub[:data_endpoint].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetSignalingChannelEndpoint
    class GetSignalingChannelEndpoint
      def self.default(visited=[])
        {
          resource_endpoint_list: ResourceEndpointList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ResourceEndpointList'] = ResourceEndpointList.stub(stub[:resource_endpoint_list]) unless stub[:resource_endpoint_list].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ResourceEndpointList
    class ResourceEndpointList
      def self.default(visited=[])
        return nil if visited.include?('ResourceEndpointList')
        visited = visited + ['ResourceEndpointList']
        [
          ResourceEndpointListItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ResourceEndpointListItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ResourceEndpointListItem
    class ResourceEndpointListItem
      def self.default(visited=[])
        return nil if visited.include?('ResourceEndpointListItem')
        visited = visited + ['ResourceEndpointListItem']
        {
          protocol: 'protocol',
          resource_endpoint: 'resource_endpoint',
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceEndpointListItem.new
        data = {}
        data['Protocol'] = stub[:protocol] unless stub[:protocol].nil?
        data['ResourceEndpoint'] = stub[:resource_endpoint] unless stub[:resource_endpoint].nil?
        data
      end
    end

    # Operation Stubber for ListSignalingChannels
    class ListSignalingChannels
      def self.default(visited=[])
        {
          channel_info_list: ChannelInfoList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ChannelInfoList'] = ChannelInfoList.stub(stub[:channel_info_list]) unless stub[:channel_info_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ChannelInfoList
    class ChannelInfoList
      def self.default(visited=[])
        return nil if visited.include?('ChannelInfoList')
        visited = visited + ['ChannelInfoList']
        [
          ChannelInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ChannelInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListStreams
    class ListStreams
      def self.default(visited=[])
        {
          stream_info_list: StreamInfoList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['StreamInfoList'] = StreamInfoList.stub(stub[:stream_info_list]) unless stub[:stream_info_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for StreamInfoList
    class StreamInfoList
      def self.default(visited=[])
        return nil if visited.include?('StreamInfoList')
        visited = visited + ['StreamInfoList']
        [
          StreamInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << StreamInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          next_token: 'next_token',
          tags: ResourceTags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['Tags'] = ResourceTags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Stubber for ResourceTags
    class ResourceTags
      def self.default(visited=[])
        return nil if visited.include?('ResourceTags')
        visited = visited + ['ResourceTags']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for ListTagsForStream
    class ListTagsForStream
      def self.default(visited=[])
        {
          next_token: 'next_token',
          tags: ResourceTags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['Tags'] = ResourceTags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for TagStream
    class TagStream
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UntagResource
    class UntagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UntagStream
    class UntagStream
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateDataRetention
    class UpdateDataRetention
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateImageGenerationConfiguration
    class UpdateImageGenerationConfiguration
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateNotificationConfiguration
    class UpdateNotificationConfiguration
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateSignalingChannel
    class UpdateSignalingChannel
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateStream
    class UpdateStream
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end
  end
end
