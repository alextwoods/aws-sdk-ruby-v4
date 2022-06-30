# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::KinesisVideo
  module Builders

    # Operation Builder for CreateSignalingChannel
    class CreateSignalingChannel
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/createSignalingChannel')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ChannelName'] = input[:channel_name] unless input[:channel_name].nil?
        data['ChannelType'] = input[:channel_type] unless input[:channel_type].nil?
        data['SingleMasterConfiguration'] = Builders::SingleMasterConfiguration.build(input[:single_master_configuration]) unless input[:single_master_configuration].nil?
        data['Tags'] = Builders::TagOnCreateList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagOnCreateList
    class TagOnCreateList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Structure Builder for SingleMasterConfiguration
    class SingleMasterConfiguration
      def self.build(input)
        data = {}
        data['MessageTtlSeconds'] = input[:message_ttl_seconds] unless input[:message_ttl_seconds].nil?
        data
      end
    end

    # Operation Builder for CreateStream
    class CreateStream
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/createStream')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['DeviceName'] = input[:device_name] unless input[:device_name].nil?
        data['StreamName'] = input[:stream_name] unless input[:stream_name].nil?
        data['MediaType'] = input[:media_type] unless input[:media_type].nil?
        data['KmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data['DataRetentionInHours'] = input[:data_retention_in_hours] unless input[:data_retention_in_hours].nil?
        data['Tags'] = Builders::ResourceTags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for ResourceTags
    class ResourceTags
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for DeleteSignalingChannel
    class DeleteSignalingChannel
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/deleteSignalingChannel')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ChannelARN'] = input[:channel_arn] unless input[:channel_arn].nil?
        data['CurrentVersion'] = input[:current_version] unless input[:current_version].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteStream
    class DeleteStream
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/deleteStream')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['StreamARN'] = input[:stream_arn] unless input[:stream_arn].nil?
        data['CurrentVersion'] = input[:current_version] unless input[:current_version].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeImageGenerationConfiguration
    class DescribeImageGenerationConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/describeImageGenerationConfiguration')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['StreamName'] = input[:stream_name] unless input[:stream_name].nil?
        data['StreamARN'] = input[:stream_arn] unless input[:stream_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeNotificationConfiguration
    class DescribeNotificationConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/describeNotificationConfiguration')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['StreamName'] = input[:stream_name] unless input[:stream_name].nil?
        data['StreamARN'] = input[:stream_arn] unless input[:stream_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeSignalingChannel
    class DescribeSignalingChannel
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/describeSignalingChannel')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ChannelName'] = input[:channel_name] unless input[:channel_name].nil?
        data['ChannelARN'] = input[:channel_arn] unless input[:channel_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeStream
    class DescribeStream
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/describeStream')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['StreamName'] = input[:stream_name] unless input[:stream_name].nil?
        data['StreamARN'] = input[:stream_arn] unless input[:stream_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetDataEndpoint
    class GetDataEndpoint
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/getDataEndpoint')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['StreamName'] = input[:stream_name] unless input[:stream_name].nil?
        data['StreamARN'] = input[:stream_arn] unless input[:stream_arn].nil?
        data['APIName'] = input[:api_name] unless input[:api_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetSignalingChannelEndpoint
    class GetSignalingChannelEndpoint
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/getSignalingChannelEndpoint')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ChannelARN'] = input[:channel_arn] unless input[:channel_arn].nil?
        data['SingleMasterChannelEndpointConfiguration'] = Builders::SingleMasterChannelEndpointConfiguration.build(input[:single_master_channel_endpoint_configuration]) unless input[:single_master_channel_endpoint_configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for SingleMasterChannelEndpointConfiguration
    class SingleMasterChannelEndpointConfiguration
      def self.build(input)
        data = {}
        data['Protocols'] = Builders::ListOfProtocols.build(input[:protocols]) unless input[:protocols].nil?
        data['Role'] = input[:role] unless input[:role].nil?
        data
      end
    end

    # List Builder for ListOfProtocols
    class ListOfProtocols
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListSignalingChannels
    class ListSignalingChannels
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/listSignalingChannels')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['ChannelNameCondition'] = Builders::ChannelNameCondition.build(input[:channel_name_condition]) unless input[:channel_name_condition].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ChannelNameCondition
    class ChannelNameCondition
      def self.build(input)
        data = {}
        data['ComparisonOperator'] = input[:comparison_operator] unless input[:comparison_operator].nil?
        data['ComparisonValue'] = input[:comparison_value] unless input[:comparison_value].nil?
        data
      end
    end

    # Operation Builder for ListStreams
    class ListStreams
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/listStreams')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['StreamNameCondition'] = Builders::StreamNameCondition.build(input[:stream_name_condition]) unless input[:stream_name_condition].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for StreamNameCondition
    class StreamNameCondition
      def self.build(input)
        data = {}
        data['ComparisonOperator'] = input[:comparison_operator] unless input[:comparison_operator].nil?
        data['ComparisonValue'] = input[:comparison_value] unless input[:comparison_value].nil?
        data
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/ListTagsForResource')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTagsForStream
    class ListTagsForStream
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/listTagsForStream')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['StreamARN'] = input[:stream_arn] unless input[:stream_arn].nil?
        data['StreamName'] = input[:stream_name] unless input[:stream_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/TagResource')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagList
    class TagList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # Operation Builder for TagStream
    class TagStream
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/tagStream')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['StreamARN'] = input[:stream_arn] unless input[:stream_arn].nil?
        data['StreamName'] = input[:stream_name] unless input[:stream_name].nil?
        data['Tags'] = Builders::ResourceTags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/UntagResource')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['TagKeyList'] = Builders::TagKeyList.build(input[:tag_key_list]) unless input[:tag_key_list].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagKeyList
    class TagKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UntagStream
    class UntagStream
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/untagStream')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['StreamARN'] = input[:stream_arn] unless input[:stream_arn].nil?
        data['StreamName'] = input[:stream_name] unless input[:stream_name].nil?
        data['TagKeyList'] = Builders::TagKeyList.build(input[:tag_key_list]) unless input[:tag_key_list].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateDataRetention
    class UpdateDataRetention
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/updateDataRetention')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['StreamName'] = input[:stream_name] unless input[:stream_name].nil?
        data['StreamARN'] = input[:stream_arn] unless input[:stream_arn].nil?
        data['CurrentVersion'] = input[:current_version] unless input[:current_version].nil?
        data['Operation'] = input[:operation] unless input[:operation].nil?
        data['DataRetentionChangeInHours'] = input[:data_retention_change_in_hours] unless input[:data_retention_change_in_hours].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateImageGenerationConfiguration
    class UpdateImageGenerationConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/updateImageGenerationConfiguration')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['StreamName'] = input[:stream_name] unless input[:stream_name].nil?
        data['StreamARN'] = input[:stream_arn] unless input[:stream_arn].nil?
        data['ImageGenerationConfiguration'] = Builders::ImageGenerationConfiguration.build(input[:image_generation_configuration]) unless input[:image_generation_configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ImageGenerationConfiguration
    class ImageGenerationConfiguration
      def self.build(input)
        data = {}
        data['Status'] = input[:status] unless input[:status].nil?
        data['ImageSelectorType'] = input[:image_selector_type] unless input[:image_selector_type].nil?
        data['DestinationConfig'] = Builders::ImageGenerationDestinationConfig.build(input[:destination_config]) unless input[:destination_config].nil?
        data['SamplingInterval'] = input[:sampling_interval] unless input[:sampling_interval].nil?
        data['Format'] = input[:format] unless input[:format].nil?
        data['FormatConfig'] = Builders::FormatConfig.build(input[:format_config]) unless input[:format_config].nil?
        data['WidthPixels'] = input[:width_pixels] unless input[:width_pixels].nil?
        data['HeightPixels'] = input[:height_pixels] unless input[:height_pixels].nil?
        data
      end
    end

    # Map Builder for FormatConfig
    class FormatConfig
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for ImageGenerationDestinationConfig
    class ImageGenerationDestinationConfig
      def self.build(input)
        data = {}
        data['Uri'] = input[:uri] unless input[:uri].nil?
        data['DestinationRegion'] = input[:destination_region] unless input[:destination_region].nil?
        data
      end
    end

    # Operation Builder for UpdateNotificationConfiguration
    class UpdateNotificationConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/updateNotificationConfiguration')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['StreamName'] = input[:stream_name] unless input[:stream_name].nil?
        data['StreamARN'] = input[:stream_arn] unless input[:stream_arn].nil?
        data['NotificationConfiguration'] = Builders::NotificationConfiguration.build(input[:notification_configuration]) unless input[:notification_configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for NotificationConfiguration
    class NotificationConfiguration
      def self.build(input)
        data = {}
        data['Status'] = input[:status] unless input[:status].nil?
        data['DestinationConfig'] = Builders::NotificationDestinationConfig.build(input[:destination_config]) unless input[:destination_config].nil?
        data
      end
    end

    # Structure Builder for NotificationDestinationConfig
    class NotificationDestinationConfig
      def self.build(input)
        data = {}
        data['Uri'] = input[:uri] unless input[:uri].nil?
        data
      end
    end

    # Operation Builder for UpdateSignalingChannel
    class UpdateSignalingChannel
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/updateSignalingChannel')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ChannelARN'] = input[:channel_arn] unless input[:channel_arn].nil?
        data['CurrentVersion'] = input[:current_version] unless input[:current_version].nil?
        data['SingleMasterConfiguration'] = Builders::SingleMasterConfiguration.build(input[:single_master_configuration]) unless input[:single_master_configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateStream
    class UpdateStream
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/updateStream')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['StreamName'] = input[:stream_name] unless input[:stream_name].nil?
        data['StreamARN'] = input[:stream_arn] unless input[:stream_arn].nil?
        data['CurrentVersion'] = input[:current_version] unless input[:current_version].nil?
        data['DeviceName'] = input[:device_name] unless input[:device_name].nil?
        data['MediaType'] = input[:media_type] unless input[:media_type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
