# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::KinesisVideo
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AccountChannelLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccountChannelLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AccountStreamLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccountStreamLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ChannelInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChannelInfo, context: context)
        Hearth::Validator.validate!(input[:channel_name], ::String, context: "#{context}[:channel_name]")
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
        Hearth::Validator.validate!(input[:channel_type], ::String, context: "#{context}[:channel_type]")
        Hearth::Validator.validate!(input[:channel_status], ::String, context: "#{context}[:channel_status]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        SingleMasterConfiguration.validate!(input[:single_master_configuration], context: "#{context}[:single_master_configuration]") unless input[:single_master_configuration].nil?
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class ChannelInfoList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ChannelInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ChannelNameCondition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChannelNameCondition, context: context)
        Hearth::Validator.validate!(input[:comparison_operator], ::String, context: "#{context}[:comparison_operator]")
        Hearth::Validator.validate!(input[:comparison_value], ::String, context: "#{context}[:comparison_value]")
      end
    end

    class ClientLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClientLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CreateSignalingChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSignalingChannelInput, context: context)
        Hearth::Validator.validate!(input[:channel_name], ::String, context: "#{context}[:channel_name]")
        Hearth::Validator.validate!(input[:channel_type], ::String, context: "#{context}[:channel_type]")
        SingleMasterConfiguration.validate!(input[:single_master_configuration], context: "#{context}[:single_master_configuration]") unless input[:single_master_configuration].nil?
        TagOnCreateList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateSignalingChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSignalingChannelOutput, context: context)
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
      end
    end

    class CreateStreamInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateStreamInput, context: context)
        Hearth::Validator.validate!(input[:device_name], ::String, context: "#{context}[:device_name]")
        Hearth::Validator.validate!(input[:stream_name], ::String, context: "#{context}[:stream_name]")
        Hearth::Validator.validate!(input[:media_type], ::String, context: "#{context}[:media_type]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:data_retention_in_hours], ::Integer, context: "#{context}[:data_retention_in_hours]")
        ResourceTags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateStreamOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateStreamOutput, context: context)
        Hearth::Validator.validate!(input[:stream_arn], ::String, context: "#{context}[:stream_arn]")
      end
    end

    class DeleteSignalingChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSignalingChannelInput, context: context)
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
        Hearth::Validator.validate!(input[:current_version], ::String, context: "#{context}[:current_version]")
      end
    end

    class DeleteSignalingChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSignalingChannelOutput, context: context)
      end
    end

    class DeleteStreamInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteStreamInput, context: context)
        Hearth::Validator.validate!(input[:stream_arn], ::String, context: "#{context}[:stream_arn]")
        Hearth::Validator.validate!(input[:current_version], ::String, context: "#{context}[:current_version]")
      end
    end

    class DeleteStreamOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteStreamOutput, context: context)
      end
    end

    class DescribeImageGenerationConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeImageGenerationConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:stream_name], ::String, context: "#{context}[:stream_name]")
        Hearth::Validator.validate!(input[:stream_arn], ::String, context: "#{context}[:stream_arn]")
      end
    end

    class DescribeImageGenerationConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeImageGenerationConfigurationOutput, context: context)
        ImageGenerationConfiguration.validate!(input[:image_generation_configuration], context: "#{context}[:image_generation_configuration]") unless input[:image_generation_configuration].nil?
      end
    end

    class DescribeNotificationConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeNotificationConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:stream_name], ::String, context: "#{context}[:stream_name]")
        Hearth::Validator.validate!(input[:stream_arn], ::String, context: "#{context}[:stream_arn]")
      end
    end

    class DescribeNotificationConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeNotificationConfigurationOutput, context: context)
        NotificationConfiguration.validate!(input[:notification_configuration], context: "#{context}[:notification_configuration]") unless input[:notification_configuration].nil?
      end
    end

    class DescribeSignalingChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSignalingChannelInput, context: context)
        Hearth::Validator.validate!(input[:channel_name], ::String, context: "#{context}[:channel_name]")
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
      end
    end

    class DescribeSignalingChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSignalingChannelOutput, context: context)
        ChannelInfo.validate!(input[:channel_info], context: "#{context}[:channel_info]") unless input[:channel_info].nil?
      end
    end

    class DescribeStreamInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeStreamInput, context: context)
        Hearth::Validator.validate!(input[:stream_name], ::String, context: "#{context}[:stream_name]")
        Hearth::Validator.validate!(input[:stream_arn], ::String, context: "#{context}[:stream_arn]")
      end
    end

    class DescribeStreamOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeStreamOutput, context: context)
        StreamInfo.validate!(input[:stream_info], context: "#{context}[:stream_info]") unless input[:stream_info].nil?
      end
    end

    class DeviceStreamLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeviceStreamLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class FormatConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class GetDataEndpointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDataEndpointInput, context: context)
        Hearth::Validator.validate!(input[:stream_name], ::String, context: "#{context}[:stream_name]")
        Hearth::Validator.validate!(input[:stream_arn], ::String, context: "#{context}[:stream_arn]")
        Hearth::Validator.validate!(input[:api_name], ::String, context: "#{context}[:api_name]")
      end
    end

    class GetDataEndpointOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDataEndpointOutput, context: context)
        Hearth::Validator.validate!(input[:data_endpoint], ::String, context: "#{context}[:data_endpoint]")
      end
    end

    class GetSignalingChannelEndpointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSignalingChannelEndpointInput, context: context)
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
        SingleMasterChannelEndpointConfiguration.validate!(input[:single_master_channel_endpoint_configuration], context: "#{context}[:single_master_channel_endpoint_configuration]") unless input[:single_master_channel_endpoint_configuration].nil?
      end
    end

    class GetSignalingChannelEndpointOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSignalingChannelEndpointOutput, context: context)
        ResourceEndpointList.validate!(input[:resource_endpoint_list], context: "#{context}[:resource_endpoint_list]") unless input[:resource_endpoint_list].nil?
      end
    end

    class ImageGenerationConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImageGenerationConfiguration, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:image_selector_type], ::String, context: "#{context}[:image_selector_type]")
        ImageGenerationDestinationConfig.validate!(input[:destination_config], context: "#{context}[:destination_config]") unless input[:destination_config].nil?
        Hearth::Validator.validate!(input[:sampling_interval], ::Integer, context: "#{context}[:sampling_interval]")
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        FormatConfig.validate!(input[:format_config], context: "#{context}[:format_config]") unless input[:format_config].nil?
        Hearth::Validator.validate!(input[:width_pixels], ::Integer, context: "#{context}[:width_pixels]")
        Hearth::Validator.validate!(input[:height_pixels], ::Integer, context: "#{context}[:height_pixels]")
      end
    end

    class ImageGenerationDestinationConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImageGenerationDestinationConfig, context: context)
        Hearth::Validator.validate!(input[:uri], ::String, context: "#{context}[:uri]")
        Hearth::Validator.validate!(input[:destination_region], ::String, context: "#{context}[:destination_region]")
      end
    end

    class InvalidArgumentException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidArgumentException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidDeviceException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidDeviceException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidResourceFormatException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidResourceFormatException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListOfProtocols
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ListSignalingChannelsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSignalingChannelsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        ChannelNameCondition.validate!(input[:channel_name_condition], context: "#{context}[:channel_name_condition]") unless input[:channel_name_condition].nil?
      end
    end

    class ListSignalingChannelsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSignalingChannelsOutput, context: context)
        ChannelInfoList.validate!(input[:channel_info_list], context: "#{context}[:channel_info_list]") unless input[:channel_info_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListStreamsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListStreamsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        StreamNameCondition.validate!(input[:stream_name_condition], context: "#{context}[:stream_name_condition]") unless input[:stream_name_condition].nil?
      end
    end

    class ListStreamsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListStreamsOutput, context: context)
        StreamInfoList.validate!(input[:stream_info_list], context: "#{context}[:stream_info_list]") unless input[:stream_info_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        ResourceTags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ListTagsForStreamInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForStreamInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:stream_arn], ::String, context: "#{context}[:stream_arn]")
        Hearth::Validator.validate!(input[:stream_name], ::String, context: "#{context}[:stream_name]")
      end
    end

    class ListTagsForStreamOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForStreamOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        ResourceTags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class NoDataRetentionException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NoDataRetentionException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NotAuthorizedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotAuthorizedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NotificationConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotificationConfiguration, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        NotificationDestinationConfig.validate!(input[:destination_config], context: "#{context}[:destination_config]") unless input[:destination_config].nil?
      end
    end

    class NotificationDestinationConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotificationDestinationConfig, context: context)
        Hearth::Validator.validate!(input[:uri], ::String, context: "#{context}[:uri]")
      end
    end

    class ResourceEndpointList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ResourceEndpointListItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResourceEndpointListItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceEndpointListItem, context: context)
        Hearth::Validator.validate!(input[:protocol], ::String, context: "#{context}[:protocol]")
        Hearth::Validator.validate!(input[:resource_endpoint], ::String, context: "#{context}[:resource_endpoint]")
      end
    end

    class ResourceInUseException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceInUseException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceTags
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class SingleMasterChannelEndpointConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SingleMasterChannelEndpointConfiguration, context: context)
        ListOfProtocols.validate!(input[:protocols], context: "#{context}[:protocols]") unless input[:protocols].nil?
        Hearth::Validator.validate!(input[:role], ::String, context: "#{context}[:role]")
      end
    end

    class SingleMasterConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SingleMasterConfiguration, context: context)
        Hearth::Validator.validate!(input[:message_ttl_seconds], ::Integer, context: "#{context}[:message_ttl_seconds]")
      end
    end

    class StreamInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StreamInfo, context: context)
        Hearth::Validator.validate!(input[:device_name], ::String, context: "#{context}[:device_name]")
        Hearth::Validator.validate!(input[:stream_name], ::String, context: "#{context}[:stream_name]")
        Hearth::Validator.validate!(input[:stream_arn], ::String, context: "#{context}[:stream_arn]")
        Hearth::Validator.validate!(input[:media_type], ::String, context: "#{context}[:media_type]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:data_retention_in_hours], ::Integer, context: "#{context}[:data_retention_in_hours]")
      end
    end

    class StreamInfoList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          StreamInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StreamNameCondition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StreamNameCondition, context: context)
        Hearth::Validator.validate!(input[:comparison_operator], ::String, context: "#{context}[:comparison_operator]")
        Hearth::Validator.validate!(input[:comparison_value], ::String, context: "#{context}[:comparison_value]")
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class TagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagOnCreateList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class TagStreamInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagStreamInput, context: context)
        Hearth::Validator.validate!(input[:stream_arn], ::String, context: "#{context}[:stream_arn]")
        Hearth::Validator.validate!(input[:stream_name], ::String, context: "#{context}[:stream_name]")
        ResourceTags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagStreamOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagStreamOutput, context: context)
      end
    end

    class TagsPerResourceExceededLimitException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagsPerResourceExceededLimitException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagKeyList.validate!(input[:tag_key_list], context: "#{context}[:tag_key_list]") unless input[:tag_key_list].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UntagStreamInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagStreamInput, context: context)
        Hearth::Validator.validate!(input[:stream_arn], ::String, context: "#{context}[:stream_arn]")
        Hearth::Validator.validate!(input[:stream_name], ::String, context: "#{context}[:stream_name]")
        TagKeyList.validate!(input[:tag_key_list], context: "#{context}[:tag_key_list]") unless input[:tag_key_list].nil?
      end
    end

    class UntagStreamOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagStreamOutput, context: context)
      end
    end

    class UpdateDataRetentionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDataRetentionInput, context: context)
        Hearth::Validator.validate!(input[:stream_name], ::String, context: "#{context}[:stream_name]")
        Hearth::Validator.validate!(input[:stream_arn], ::String, context: "#{context}[:stream_arn]")
        Hearth::Validator.validate!(input[:current_version], ::String, context: "#{context}[:current_version]")
        Hearth::Validator.validate!(input[:operation], ::String, context: "#{context}[:operation]")
        Hearth::Validator.validate!(input[:data_retention_change_in_hours], ::Integer, context: "#{context}[:data_retention_change_in_hours]")
      end
    end

    class UpdateDataRetentionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDataRetentionOutput, context: context)
      end
    end

    class UpdateImageGenerationConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateImageGenerationConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:stream_name], ::String, context: "#{context}[:stream_name]")
        Hearth::Validator.validate!(input[:stream_arn], ::String, context: "#{context}[:stream_arn]")
        ImageGenerationConfiguration.validate!(input[:image_generation_configuration], context: "#{context}[:image_generation_configuration]") unless input[:image_generation_configuration].nil?
      end
    end

    class UpdateImageGenerationConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateImageGenerationConfigurationOutput, context: context)
      end
    end

    class UpdateNotificationConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateNotificationConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:stream_name], ::String, context: "#{context}[:stream_name]")
        Hearth::Validator.validate!(input[:stream_arn], ::String, context: "#{context}[:stream_arn]")
        NotificationConfiguration.validate!(input[:notification_configuration], context: "#{context}[:notification_configuration]") unless input[:notification_configuration].nil?
      end
    end

    class UpdateNotificationConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateNotificationConfigurationOutput, context: context)
      end
    end

    class UpdateSignalingChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSignalingChannelInput, context: context)
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
        Hearth::Validator.validate!(input[:current_version], ::String, context: "#{context}[:current_version]")
        SingleMasterConfiguration.validate!(input[:single_master_configuration], context: "#{context}[:single_master_configuration]") unless input[:single_master_configuration].nil?
      end
    end

    class UpdateSignalingChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSignalingChannelOutput, context: context)
      end
    end

    class UpdateStreamInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateStreamInput, context: context)
        Hearth::Validator.validate!(input[:stream_name], ::String, context: "#{context}[:stream_name]")
        Hearth::Validator.validate!(input[:stream_arn], ::String, context: "#{context}[:stream_arn]")
        Hearth::Validator.validate!(input[:current_version], ::String, context: "#{context}[:current_version]")
        Hearth::Validator.validate!(input[:device_name], ::String, context: "#{context}[:device_name]")
        Hearth::Validator.validate!(input[:media_type], ::String, context: "#{context}[:media_type]")
      end
    end

    class UpdateStreamOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateStreamOutput, context: context)
      end
    end

    class VersionMismatchException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VersionMismatchException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

  end
end
