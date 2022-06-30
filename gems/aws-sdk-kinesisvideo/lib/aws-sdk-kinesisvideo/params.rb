# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::KinesisVideo
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module AccountChannelLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccountChannelLimitExceededException, context: context)
        type = Types::AccountChannelLimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module AccountStreamLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccountStreamLimitExceededException, context: context)
        type = Types::AccountStreamLimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module ChannelInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChannelInfo, context: context)
        type = Types::ChannelInfo.new
        type.channel_name = params[:channel_name]
        type.channel_arn = params[:channel_arn]
        type.channel_type = params[:channel_type]
        type.channel_status = params[:channel_status]
        type.creation_time = params[:creation_time]
        type.single_master_configuration = SingleMasterConfiguration.build(params[:single_master_configuration], context: "#{context}[:single_master_configuration]") unless params[:single_master_configuration].nil?
        type.version = params[:version]
        type
      end
    end

    module ChannelInfoList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ChannelInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ChannelNameCondition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChannelNameCondition, context: context)
        type = Types::ChannelNameCondition.new
        type.comparison_operator = params[:comparison_operator]
        type.comparison_value = params[:comparison_value]
        type
      end
    end

    module ClientLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClientLimitExceededException, context: context)
        type = Types::ClientLimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module CreateSignalingChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSignalingChannelInput, context: context)
        type = Types::CreateSignalingChannelInput.new
        type.channel_name = params[:channel_name]
        type.channel_type = params[:channel_type]
        type.single_master_configuration = SingleMasterConfiguration.build(params[:single_master_configuration], context: "#{context}[:single_master_configuration]") unless params[:single_master_configuration].nil?
        type.tags = TagOnCreateList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateSignalingChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSignalingChannelOutput, context: context)
        type = Types::CreateSignalingChannelOutput.new
        type.channel_arn = params[:channel_arn]
        type
      end
    end

    module CreateStreamInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateStreamInput, context: context)
        type = Types::CreateStreamInput.new
        type.device_name = params[:device_name]
        type.stream_name = params[:stream_name]
        type.media_type = params[:media_type]
        type.kms_key_id = params[:kms_key_id]
        type.data_retention_in_hours = params[:data_retention_in_hours]
        type.tags = ResourceTags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateStreamOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateStreamOutput, context: context)
        type = Types::CreateStreamOutput.new
        type.stream_arn = params[:stream_arn]
        type
      end
    end

    module DeleteSignalingChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSignalingChannelInput, context: context)
        type = Types::DeleteSignalingChannelInput.new
        type.channel_arn = params[:channel_arn]
        type.current_version = params[:current_version]
        type
      end
    end

    module DeleteSignalingChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSignalingChannelOutput, context: context)
        type = Types::DeleteSignalingChannelOutput.new
        type
      end
    end

    module DeleteStreamInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteStreamInput, context: context)
        type = Types::DeleteStreamInput.new
        type.stream_arn = params[:stream_arn]
        type.current_version = params[:current_version]
        type
      end
    end

    module DeleteStreamOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteStreamOutput, context: context)
        type = Types::DeleteStreamOutput.new
        type
      end
    end

    module DescribeImageGenerationConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeImageGenerationConfigurationInput, context: context)
        type = Types::DescribeImageGenerationConfigurationInput.new
        type.stream_name = params[:stream_name]
        type.stream_arn = params[:stream_arn]
        type
      end
    end

    module DescribeImageGenerationConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeImageGenerationConfigurationOutput, context: context)
        type = Types::DescribeImageGenerationConfigurationOutput.new
        type.image_generation_configuration = ImageGenerationConfiguration.build(params[:image_generation_configuration], context: "#{context}[:image_generation_configuration]") unless params[:image_generation_configuration].nil?
        type
      end
    end

    module DescribeNotificationConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeNotificationConfigurationInput, context: context)
        type = Types::DescribeNotificationConfigurationInput.new
        type.stream_name = params[:stream_name]
        type.stream_arn = params[:stream_arn]
        type
      end
    end

    module DescribeNotificationConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeNotificationConfigurationOutput, context: context)
        type = Types::DescribeNotificationConfigurationOutput.new
        type.notification_configuration = NotificationConfiguration.build(params[:notification_configuration], context: "#{context}[:notification_configuration]") unless params[:notification_configuration].nil?
        type
      end
    end

    module DescribeSignalingChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSignalingChannelInput, context: context)
        type = Types::DescribeSignalingChannelInput.new
        type.channel_name = params[:channel_name]
        type.channel_arn = params[:channel_arn]
        type
      end
    end

    module DescribeSignalingChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSignalingChannelOutput, context: context)
        type = Types::DescribeSignalingChannelOutput.new
        type.channel_info = ChannelInfo.build(params[:channel_info], context: "#{context}[:channel_info]") unless params[:channel_info].nil?
        type
      end
    end

    module DescribeStreamInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeStreamInput, context: context)
        type = Types::DescribeStreamInput.new
        type.stream_name = params[:stream_name]
        type.stream_arn = params[:stream_arn]
        type
      end
    end

    module DescribeStreamOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeStreamOutput, context: context)
        type = Types::DescribeStreamOutput.new
        type.stream_info = StreamInfo.build(params[:stream_info], context: "#{context}[:stream_info]") unless params[:stream_info].nil?
        type
      end
    end

    module DeviceStreamLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeviceStreamLimitExceededException, context: context)
        type = Types::DeviceStreamLimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module FormatConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module GetDataEndpointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDataEndpointInput, context: context)
        type = Types::GetDataEndpointInput.new
        type.stream_name = params[:stream_name]
        type.stream_arn = params[:stream_arn]
        type.api_name = params[:api_name]
        type
      end
    end

    module GetDataEndpointOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDataEndpointOutput, context: context)
        type = Types::GetDataEndpointOutput.new
        type.data_endpoint = params[:data_endpoint]
        type
      end
    end

    module GetSignalingChannelEndpointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSignalingChannelEndpointInput, context: context)
        type = Types::GetSignalingChannelEndpointInput.new
        type.channel_arn = params[:channel_arn]
        type.single_master_channel_endpoint_configuration = SingleMasterChannelEndpointConfiguration.build(params[:single_master_channel_endpoint_configuration], context: "#{context}[:single_master_channel_endpoint_configuration]") unless params[:single_master_channel_endpoint_configuration].nil?
        type
      end
    end

    module GetSignalingChannelEndpointOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSignalingChannelEndpointOutput, context: context)
        type = Types::GetSignalingChannelEndpointOutput.new
        type.resource_endpoint_list = ResourceEndpointList.build(params[:resource_endpoint_list], context: "#{context}[:resource_endpoint_list]") unless params[:resource_endpoint_list].nil?
        type
      end
    end

    module ImageGenerationConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImageGenerationConfiguration, context: context)
        type = Types::ImageGenerationConfiguration.new
        type.status = params[:status]
        type.image_selector_type = params[:image_selector_type]
        type.destination_config = ImageGenerationDestinationConfig.build(params[:destination_config], context: "#{context}[:destination_config]") unless params[:destination_config].nil?
        type.sampling_interval = params[:sampling_interval]
        type.format = params[:format]
        type.format_config = FormatConfig.build(params[:format_config], context: "#{context}[:format_config]") unless params[:format_config].nil?
        type.width_pixels = params[:width_pixels]
        type.height_pixels = params[:height_pixels]
        type
      end
    end

    module ImageGenerationDestinationConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImageGenerationDestinationConfig, context: context)
        type = Types::ImageGenerationDestinationConfig.new
        type.uri = params[:uri]
        type.destination_region = params[:destination_region]
        type
      end
    end

    module InvalidArgumentException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidArgumentException, context: context)
        type = Types::InvalidArgumentException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidDeviceException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidDeviceException, context: context)
        type = Types::InvalidDeviceException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidResourceFormatException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidResourceFormatException, context: context)
        type = Types::InvalidResourceFormatException.new
        type.message = params[:message]
        type
      end
    end

    module ListOfProtocols
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ListSignalingChannelsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSignalingChannelsInput, context: context)
        type = Types::ListSignalingChannelsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.channel_name_condition = ChannelNameCondition.build(params[:channel_name_condition], context: "#{context}[:channel_name_condition]") unless params[:channel_name_condition].nil?
        type
      end
    end

    module ListSignalingChannelsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSignalingChannelsOutput, context: context)
        type = Types::ListSignalingChannelsOutput.new
        type.channel_info_list = ChannelInfoList.build(params[:channel_info_list], context: "#{context}[:channel_info_list]") unless params[:channel_info_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListStreamsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListStreamsInput, context: context)
        type = Types::ListStreamsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.stream_name_condition = StreamNameCondition.build(params[:stream_name_condition], context: "#{context}[:stream_name_condition]") unless params[:stream_name_condition].nil?
        type
      end
    end

    module ListStreamsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListStreamsOutput, context: context)
        type = Types::ListStreamsOutput.new
        type.stream_info_list = StreamInfoList.build(params[:stream_info_list], context: "#{context}[:stream_info_list]") unless params[:stream_info_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.next_token = params[:next_token]
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.next_token = params[:next_token]
        type.tags = ResourceTags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ListTagsForStreamInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForStreamInput, context: context)
        type = Types::ListTagsForStreamInput.new
        type.next_token = params[:next_token]
        type.stream_arn = params[:stream_arn]
        type.stream_name = params[:stream_name]
        type
      end
    end

    module ListTagsForStreamOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForStreamOutput, context: context)
        type = Types::ListTagsForStreamOutput.new
        type.next_token = params[:next_token]
        type.tags = ResourceTags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module NoDataRetentionException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NoDataRetentionException, context: context)
        type = Types::NoDataRetentionException.new
        type.message = params[:message]
        type
      end
    end

    module NotAuthorizedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotAuthorizedException, context: context)
        type = Types::NotAuthorizedException.new
        type.message = params[:message]
        type
      end
    end

    module NotificationConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotificationConfiguration, context: context)
        type = Types::NotificationConfiguration.new
        type.status = params[:status]
        type.destination_config = NotificationDestinationConfig.build(params[:destination_config], context: "#{context}[:destination_config]") unless params[:destination_config].nil?
        type
      end
    end

    module NotificationDestinationConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotificationDestinationConfig, context: context)
        type = Types::NotificationDestinationConfig.new
        type.uri = params[:uri]
        type
      end
    end

    module ResourceEndpointList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResourceEndpointListItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResourceEndpointListItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceEndpointListItem, context: context)
        type = Types::ResourceEndpointListItem.new
        type.protocol = params[:protocol]
        type.resource_endpoint = params[:resource_endpoint]
        type
      end
    end

    module ResourceInUseException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceInUseException, context: context)
        type = Types::ResourceInUseException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceTags
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module SingleMasterChannelEndpointConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SingleMasterChannelEndpointConfiguration, context: context)
        type = Types::SingleMasterChannelEndpointConfiguration.new
        type.protocols = ListOfProtocols.build(params[:protocols], context: "#{context}[:protocols]") unless params[:protocols].nil?
        type.role = params[:role]
        type
      end
    end

    module SingleMasterConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SingleMasterConfiguration, context: context)
        type = Types::SingleMasterConfiguration.new
        type.message_ttl_seconds = params[:message_ttl_seconds]
        type
      end
    end

    module StreamInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StreamInfo, context: context)
        type = Types::StreamInfo.new
        type.device_name = params[:device_name]
        type.stream_name = params[:stream_name]
        type.stream_arn = params[:stream_arn]
        type.media_type = params[:media_type]
        type.kms_key_id = params[:kms_key_id]
        type.version = params[:version]
        type.status = params[:status]
        type.creation_time = params[:creation_time]
        type.data_retention_in_hours = params[:data_retention_in_hours]
        type
      end
    end

    module StreamInfoList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StreamInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StreamNameCondition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StreamNameCondition, context: context)
        type = Types::StreamNameCondition.new
        type.comparison_operator = params[:comparison_operator]
        type.comparison_value = params[:comparison_value]
        type
      end
    end

    module Tag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Tag, context: context)
        type = Types::Tag.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module TagKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagOnCreateList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceOutput, context: context)
        type = Types::TagResourceOutput.new
        type
      end
    end

    module TagStreamInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagStreamInput, context: context)
        type = Types::TagStreamInput.new
        type.stream_arn = params[:stream_arn]
        type.stream_name = params[:stream_name]
        type.tags = ResourceTags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagStreamOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagStreamOutput, context: context)
        type = Types::TagStreamOutput.new
        type
      end
    end

    module TagsPerResourceExceededLimitException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagsPerResourceExceededLimitException, context: context)
        type = Types::TagsPerResourceExceededLimitException.new
        type.message = params[:message]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_key_list = TagKeyList.build(params[:tag_key_list], context: "#{context}[:tag_key_list]") unless params[:tag_key_list].nil?
        type
      end
    end

    module UntagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceOutput, context: context)
        type = Types::UntagResourceOutput.new
        type
      end
    end

    module UntagStreamInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagStreamInput, context: context)
        type = Types::UntagStreamInput.new
        type.stream_arn = params[:stream_arn]
        type.stream_name = params[:stream_name]
        type.tag_key_list = TagKeyList.build(params[:tag_key_list], context: "#{context}[:tag_key_list]") unless params[:tag_key_list].nil?
        type
      end
    end

    module UntagStreamOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagStreamOutput, context: context)
        type = Types::UntagStreamOutput.new
        type
      end
    end

    module UpdateDataRetentionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDataRetentionInput, context: context)
        type = Types::UpdateDataRetentionInput.new
        type.stream_name = params[:stream_name]
        type.stream_arn = params[:stream_arn]
        type.current_version = params[:current_version]
        type.operation = params[:operation]
        type.data_retention_change_in_hours = params[:data_retention_change_in_hours]
        type
      end
    end

    module UpdateDataRetentionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDataRetentionOutput, context: context)
        type = Types::UpdateDataRetentionOutput.new
        type
      end
    end

    module UpdateImageGenerationConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateImageGenerationConfigurationInput, context: context)
        type = Types::UpdateImageGenerationConfigurationInput.new
        type.stream_name = params[:stream_name]
        type.stream_arn = params[:stream_arn]
        type.image_generation_configuration = ImageGenerationConfiguration.build(params[:image_generation_configuration], context: "#{context}[:image_generation_configuration]") unless params[:image_generation_configuration].nil?
        type
      end
    end

    module UpdateImageGenerationConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateImageGenerationConfigurationOutput, context: context)
        type = Types::UpdateImageGenerationConfigurationOutput.new
        type
      end
    end

    module UpdateNotificationConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateNotificationConfigurationInput, context: context)
        type = Types::UpdateNotificationConfigurationInput.new
        type.stream_name = params[:stream_name]
        type.stream_arn = params[:stream_arn]
        type.notification_configuration = NotificationConfiguration.build(params[:notification_configuration], context: "#{context}[:notification_configuration]") unless params[:notification_configuration].nil?
        type
      end
    end

    module UpdateNotificationConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateNotificationConfigurationOutput, context: context)
        type = Types::UpdateNotificationConfigurationOutput.new
        type
      end
    end

    module UpdateSignalingChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSignalingChannelInput, context: context)
        type = Types::UpdateSignalingChannelInput.new
        type.channel_arn = params[:channel_arn]
        type.current_version = params[:current_version]
        type.single_master_configuration = SingleMasterConfiguration.build(params[:single_master_configuration], context: "#{context}[:single_master_configuration]") unless params[:single_master_configuration].nil?
        type
      end
    end

    module UpdateSignalingChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSignalingChannelOutput, context: context)
        type = Types::UpdateSignalingChannelOutput.new
        type
      end
    end

    module UpdateStreamInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateStreamInput, context: context)
        type = Types::UpdateStreamInput.new
        type.stream_name = params[:stream_name]
        type.stream_arn = params[:stream_arn]
        type.current_version = params[:current_version]
        type.device_name = params[:device_name]
        type.media_type = params[:media_type]
        type
      end
    end

    module UpdateStreamOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateStreamOutput, context: context)
        type = Types::UpdateStreamOutput.new
        type
      end
    end

    module VersionMismatchException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VersionMismatchException, context: context)
        type = Types::VersionMismatchException.new
        type.message = params[:message]
        type
      end
    end

  end
end
