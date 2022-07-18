# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::MediaLive
  module Builders

    # Operation Builder for AcceptInputDeviceTransfer
    class AcceptInputDeviceTransfer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:input_device_id].to_s.empty?
          raise ArgumentError, "HTTP label :input_device_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/prod/inputDevices/%<InputDeviceId>s/accept',
            InputDeviceId: Hearth::HTTP.uri_escape(input[:input_device_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for BatchDelete
    class BatchDelete
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/prod/batch/delete')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['channelIds'] = Builders::List____listOf__string.build(input[:channel_ids]) unless input[:channel_ids].nil?
        data['inputIds'] = Builders::List____listOf__string.build(input[:input_ids]) unless input[:input_ids].nil?
        data['inputSecurityGroupIds'] = Builders::List____listOf__string.build(input[:input_security_group_ids]) unless input[:input_security_group_ids].nil?
        data['multiplexIds'] = Builders::List____listOf__string.build(input[:multiplex_ids]) unless input[:multiplex_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for __listOf__string
    class List____listOf__string
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for BatchStart
    class BatchStart
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/prod/batch/start')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['channelIds'] = Builders::List____listOf__string.build(input[:channel_ids]) unless input[:channel_ids].nil?
        data['multiplexIds'] = Builders::List____listOf__string.build(input[:multiplex_ids]) unless input[:multiplex_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for BatchStop
    class BatchStop
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/prod/batch/stop')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['channelIds'] = Builders::List____listOf__string.build(input[:channel_ids]) unless input[:channel_ids].nil?
        data['multiplexIds'] = Builders::List____listOf__string.build(input[:multiplex_ids]) unless input[:multiplex_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for BatchUpdateSchedule
    class BatchUpdateSchedule
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:channel_id].to_s.empty?
          raise ArgumentError, "HTTP label :channel_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/prod/channels/%<ChannelId>s/schedule',
            ChannelId: Hearth::HTTP.uri_escape(input[:channel_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['creates'] = Builders::BatchScheduleActionCreateRequest.build(input[:creates]) unless input[:creates].nil?
        data['deletes'] = Builders::BatchScheduleActionDeleteRequest.build(input[:deletes]) unless input[:deletes].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for BatchScheduleActionDeleteRequest
    class BatchScheduleActionDeleteRequest
      def self.build(input)
        data = {}
        data['actionNames'] = Builders::List____listOf__string.build(input[:action_names]) unless input[:action_names].nil?
        data
      end
    end

    # Structure Builder for BatchScheduleActionCreateRequest
    class BatchScheduleActionCreateRequest
      def self.build(input)
        data = {}
        data['scheduleActions'] = Builders::List____listOfScheduleAction.build(input[:schedule_actions]) unless input[:schedule_actions].nil?
        data
      end
    end

    # List Builder for __listOfScheduleAction
    class List____listOfScheduleAction
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ScheduleAction.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ScheduleAction
    class ScheduleAction
      def self.build(input)
        data = {}
        data['actionName'] = input[:action_name] unless input[:action_name].nil?
        data['scheduleActionSettings'] = Builders::ScheduleActionSettings.build(input[:schedule_action_settings]) unless input[:schedule_action_settings].nil?
        data['scheduleActionStartSettings'] = Builders::ScheduleActionStartSettings.build(input[:schedule_action_start_settings]) unless input[:schedule_action_start_settings].nil?
        data
      end
    end

    # Structure Builder for ScheduleActionStartSettings
    class ScheduleActionStartSettings
      def self.build(input)
        data = {}
        data['fixedModeScheduleActionStartSettings'] = Builders::FixedModeScheduleActionStartSettings.build(input[:fixed_mode_schedule_action_start_settings]) unless input[:fixed_mode_schedule_action_start_settings].nil?
        data['followModeScheduleActionStartSettings'] = Builders::FollowModeScheduleActionStartSettings.build(input[:follow_mode_schedule_action_start_settings]) unless input[:follow_mode_schedule_action_start_settings].nil?
        data['immediateModeScheduleActionStartSettings'] = Builders::ImmediateModeScheduleActionStartSettings.build(input[:immediate_mode_schedule_action_start_settings]) unless input[:immediate_mode_schedule_action_start_settings].nil?
        data
      end
    end

    # Structure Builder for ImmediateModeScheduleActionStartSettings
    class ImmediateModeScheduleActionStartSettings
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for FollowModeScheduleActionStartSettings
    class FollowModeScheduleActionStartSettings
      def self.build(input)
        data = {}
        data['followPoint'] = input[:follow_point] unless input[:follow_point].nil?
        data['referenceActionName'] = input[:reference_action_name] unless input[:reference_action_name].nil?
        data
      end
    end

    # Structure Builder for FixedModeScheduleActionStartSettings
    class FixedModeScheduleActionStartSettings
      def self.build(input)
        data = {}
        data['time'] = input[:time] unless input[:time].nil?
        data
      end
    end

    # Structure Builder for ScheduleActionSettings
    class ScheduleActionSettings
      def self.build(input)
        data = {}
        data['hlsId3SegmentTaggingSettings'] = Builders::HlsId3SegmentTaggingScheduleActionSettings.build(input[:hls_id3_segment_tagging_settings]) unless input[:hls_id3_segment_tagging_settings].nil?
        data['hlsTimedMetadataSettings'] = Builders::HlsTimedMetadataScheduleActionSettings.build(input[:hls_timed_metadata_settings]) unless input[:hls_timed_metadata_settings].nil?
        data['inputPrepareSettings'] = Builders::InputPrepareScheduleActionSettings.build(input[:input_prepare_settings]) unless input[:input_prepare_settings].nil?
        data['inputSwitchSettings'] = Builders::InputSwitchScheduleActionSettings.build(input[:input_switch_settings]) unless input[:input_switch_settings].nil?
        data['motionGraphicsImageActivateSettings'] = Builders::MotionGraphicsActivateScheduleActionSettings.build(input[:motion_graphics_image_activate_settings]) unless input[:motion_graphics_image_activate_settings].nil?
        data['motionGraphicsImageDeactivateSettings'] = Builders::MotionGraphicsDeactivateScheduleActionSettings.build(input[:motion_graphics_image_deactivate_settings]) unless input[:motion_graphics_image_deactivate_settings].nil?
        data['pauseStateSettings'] = Builders::PauseStateScheduleActionSettings.build(input[:pause_state_settings]) unless input[:pause_state_settings].nil?
        data['scte35ReturnToNetworkSettings'] = Builders::Scte35ReturnToNetworkScheduleActionSettings.build(input[:scte35_return_to_network_settings]) unless input[:scte35_return_to_network_settings].nil?
        data['scte35SpliceInsertSettings'] = Builders::Scte35SpliceInsertScheduleActionSettings.build(input[:scte35_splice_insert_settings]) unless input[:scte35_splice_insert_settings].nil?
        data['scte35TimeSignalSettings'] = Builders::Scte35TimeSignalScheduleActionSettings.build(input[:scte35_time_signal_settings]) unless input[:scte35_time_signal_settings].nil?
        data['staticImageActivateSettings'] = Builders::StaticImageActivateScheduleActionSettings.build(input[:static_image_activate_settings]) unless input[:static_image_activate_settings].nil?
        data['staticImageDeactivateSettings'] = Builders::StaticImageDeactivateScheduleActionSettings.build(input[:static_image_deactivate_settings]) unless input[:static_image_deactivate_settings].nil?
        data
      end
    end

    # Structure Builder for StaticImageDeactivateScheduleActionSettings
    class StaticImageDeactivateScheduleActionSettings
      def self.build(input)
        data = {}
        data['fadeOut'] = input[:fade_out] unless input[:fade_out].nil?
        data['layer'] = input[:layer] unless input[:layer].nil?
        data
      end
    end

    # Structure Builder for StaticImageActivateScheduleActionSettings
    class StaticImageActivateScheduleActionSettings
      def self.build(input)
        data = {}
        data['duration'] = input[:duration] unless input[:duration].nil?
        data['fadeIn'] = input[:fade_in] unless input[:fade_in].nil?
        data['fadeOut'] = input[:fade_out] unless input[:fade_out].nil?
        data['height'] = input[:height] unless input[:height].nil?
        data['image'] = Builders::InputLocation.build(input[:image]) unless input[:image].nil?
        data['imageX'] = input[:image_x] unless input[:image_x].nil?
        data['imageY'] = input[:image_y] unless input[:image_y].nil?
        data['layer'] = input[:layer] unless input[:layer].nil?
        data['opacity'] = input[:opacity] unless input[:opacity].nil?
        data['width'] = input[:width] unless input[:width].nil?
        data
      end
    end

    # Structure Builder for InputLocation
    class InputLocation
      def self.build(input)
        data = {}
        data['passwordParam'] = input[:password_param] unless input[:password_param].nil?
        data['uri'] = input[:uri] unless input[:uri].nil?
        data['username'] = input[:username] unless input[:username].nil?
        data
      end
    end

    # Structure Builder for Scte35TimeSignalScheduleActionSettings
    class Scte35TimeSignalScheduleActionSettings
      def self.build(input)
        data = {}
        data['scte35Descriptors'] = Builders::List____listOfScte35Descriptor.build(input[:scte35_descriptors]) unless input[:scte35_descriptors].nil?
        data
      end
    end

    # List Builder for __listOfScte35Descriptor
    class List____listOfScte35Descriptor
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Scte35Descriptor.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Scte35Descriptor
    class Scte35Descriptor
      def self.build(input)
        data = {}
        data['scte35DescriptorSettings'] = Builders::Scte35DescriptorSettings.build(input[:scte35_descriptor_settings]) unless input[:scte35_descriptor_settings].nil?
        data
      end
    end

    # Structure Builder for Scte35DescriptorSettings
    class Scte35DescriptorSettings
      def self.build(input)
        data = {}
        data['segmentationDescriptorScte35DescriptorSettings'] = Builders::Scte35SegmentationDescriptor.build(input[:segmentation_descriptor_scte35_descriptor_settings]) unless input[:segmentation_descriptor_scte35_descriptor_settings].nil?
        data
      end
    end

    # Structure Builder for Scte35SegmentationDescriptor
    class Scte35SegmentationDescriptor
      def self.build(input)
        data = {}
        data['deliveryRestrictions'] = Builders::Scte35DeliveryRestrictions.build(input[:delivery_restrictions]) unless input[:delivery_restrictions].nil?
        data['segmentNum'] = input[:segment_num] unless input[:segment_num].nil?
        data['segmentationCancelIndicator'] = input[:segmentation_cancel_indicator] unless input[:segmentation_cancel_indicator].nil?
        data['segmentationDuration'] = input[:segmentation_duration] unless input[:segmentation_duration].nil?
        data['segmentationEventId'] = input[:segmentation_event_id] unless input[:segmentation_event_id].nil?
        data['segmentationTypeId'] = input[:segmentation_type_id] unless input[:segmentation_type_id].nil?
        data['segmentationUpid'] = input[:segmentation_upid] unless input[:segmentation_upid].nil?
        data['segmentationUpidType'] = input[:segmentation_upid_type] unless input[:segmentation_upid_type].nil?
        data['segmentsExpected'] = input[:segments_expected] unless input[:segments_expected].nil?
        data['subSegmentNum'] = input[:sub_segment_num] unless input[:sub_segment_num].nil?
        data['subSegmentsExpected'] = input[:sub_segments_expected] unless input[:sub_segments_expected].nil?
        data
      end
    end

    # Structure Builder for Scte35DeliveryRestrictions
    class Scte35DeliveryRestrictions
      def self.build(input)
        data = {}
        data['archiveAllowedFlag'] = input[:archive_allowed_flag] unless input[:archive_allowed_flag].nil?
        data['deviceRestrictions'] = input[:device_restrictions] unless input[:device_restrictions].nil?
        data['noRegionalBlackoutFlag'] = input[:no_regional_blackout_flag] unless input[:no_regional_blackout_flag].nil?
        data['webDeliveryAllowedFlag'] = input[:web_delivery_allowed_flag] unless input[:web_delivery_allowed_flag].nil?
        data
      end
    end

    # Structure Builder for Scte35SpliceInsertScheduleActionSettings
    class Scte35SpliceInsertScheduleActionSettings
      def self.build(input)
        data = {}
        data['duration'] = input[:duration] unless input[:duration].nil?
        data['spliceEventId'] = input[:splice_event_id] unless input[:splice_event_id].nil?
        data
      end
    end

    # Structure Builder for Scte35ReturnToNetworkScheduleActionSettings
    class Scte35ReturnToNetworkScheduleActionSettings
      def self.build(input)
        data = {}
        data['spliceEventId'] = input[:splice_event_id] unless input[:splice_event_id].nil?
        data
      end
    end

    # Structure Builder for PauseStateScheduleActionSettings
    class PauseStateScheduleActionSettings
      def self.build(input)
        data = {}
        data['pipelines'] = Builders::List____listOfPipelinePauseStateSettings.build(input[:pipelines]) unless input[:pipelines].nil?
        data
      end
    end

    # List Builder for __listOfPipelinePauseStateSettings
    class List____listOfPipelinePauseStateSettings
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::PipelinePauseStateSettings.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for PipelinePauseStateSettings
    class PipelinePauseStateSettings
      def self.build(input)
        data = {}
        data['pipelineId'] = input[:pipeline_id] unless input[:pipeline_id].nil?
        data
      end
    end

    # Structure Builder for MotionGraphicsDeactivateScheduleActionSettings
    class MotionGraphicsDeactivateScheduleActionSettings
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for MotionGraphicsActivateScheduleActionSettings
    class MotionGraphicsActivateScheduleActionSettings
      def self.build(input)
        data = {}
        data['duration'] = input[:duration] unless input[:duration].nil?
        data['passwordParam'] = input[:password_param] unless input[:password_param].nil?
        data['url'] = input[:url] unless input[:url].nil?
        data['username'] = input[:username] unless input[:username].nil?
        data
      end
    end

    # Structure Builder for InputSwitchScheduleActionSettings
    class InputSwitchScheduleActionSettings
      def self.build(input)
        data = {}
        data['inputAttachmentNameReference'] = input[:input_attachment_name_reference] unless input[:input_attachment_name_reference].nil?
        data['inputClippingSettings'] = Builders::InputClippingSettings.build(input[:input_clipping_settings]) unless input[:input_clipping_settings].nil?
        data['urlPath'] = Builders::List____listOf__string.build(input[:url_path]) unless input[:url_path].nil?
        data
      end
    end

    # Structure Builder for InputClippingSettings
    class InputClippingSettings
      def self.build(input)
        data = {}
        data['inputTimecodeSource'] = input[:input_timecode_source] unless input[:input_timecode_source].nil?
        data['startTimecode'] = Builders::StartTimecode.build(input[:start_timecode]) unless input[:start_timecode].nil?
        data['stopTimecode'] = Builders::StopTimecode.build(input[:stop_timecode]) unless input[:stop_timecode].nil?
        data
      end
    end

    # Structure Builder for StopTimecode
    class StopTimecode
      def self.build(input)
        data = {}
        data['lastFrameClippingBehavior'] = input[:last_frame_clipping_behavior] unless input[:last_frame_clipping_behavior].nil?
        data['timecode'] = input[:timecode] unless input[:timecode].nil?
        data
      end
    end

    # Structure Builder for StartTimecode
    class StartTimecode
      def self.build(input)
        data = {}
        data['timecode'] = input[:timecode] unless input[:timecode].nil?
        data
      end
    end

    # Structure Builder for InputPrepareScheduleActionSettings
    class InputPrepareScheduleActionSettings
      def self.build(input)
        data = {}
        data['inputAttachmentNameReference'] = input[:input_attachment_name_reference] unless input[:input_attachment_name_reference].nil?
        data['inputClippingSettings'] = Builders::InputClippingSettings.build(input[:input_clipping_settings]) unless input[:input_clipping_settings].nil?
        data['urlPath'] = Builders::List____listOf__string.build(input[:url_path]) unless input[:url_path].nil?
        data
      end
    end

    # Structure Builder for HlsTimedMetadataScheduleActionSettings
    class HlsTimedMetadataScheduleActionSettings
      def self.build(input)
        data = {}
        data['id3'] = input[:id3] unless input[:id3].nil?
        data
      end
    end

    # Structure Builder for HlsId3SegmentTaggingScheduleActionSettings
    class HlsId3SegmentTaggingScheduleActionSettings
      def self.build(input)
        data = {}
        data['tag'] = input[:tag] unless input[:tag].nil?
        data
      end
    end

    # Operation Builder for CancelInputDeviceTransfer
    class CancelInputDeviceTransfer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:input_device_id].to_s.empty?
          raise ArgumentError, "HTTP label :input_device_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/prod/inputDevices/%<InputDeviceId>s/cancel',
            InputDeviceId: Hearth::HTTP.uri_escape(input[:input_device_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ClaimDevice
    class ClaimDevice
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/prod/claimDevice')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['id'] = input[:id] unless input[:id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateChannel
    class CreateChannel
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/prod/channels')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['cdiInputSpecification'] = Builders::CdiInputSpecification.build(input[:cdi_input_specification]) unless input[:cdi_input_specification].nil?
        data['channelClass'] = input[:channel_class] unless input[:channel_class].nil?
        data['destinations'] = Builders::List____listOfOutputDestination.build(input[:destinations]) unless input[:destinations].nil?
        data['encoderSettings'] = Builders::EncoderSettings.build(input[:encoder_settings]) unless input[:encoder_settings].nil?
        data['inputAttachments'] = Builders::List____listOfInputAttachment.build(input[:input_attachments]) unless input[:input_attachments].nil?
        data['inputSpecification'] = Builders::InputSpecification.build(input[:input_specification]) unless input[:input_specification].nil?
        data['logLevel'] = input[:log_level] unless input[:log_level].nil?
        data['maintenance'] = Builders::MaintenanceCreateSettings.build(input[:maintenance]) unless input[:maintenance].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['requestId'] = input[:request_id] unless input[:request_id].nil?
        data['reserved'] = input[:reserved] unless input[:reserved].nil?
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        data['vpc'] = Builders::VpcOutputSettings.build(input[:vpc]) unless input[:vpc].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for VpcOutputSettings
    class VpcOutputSettings
      def self.build(input)
        data = {}
        data['publicAddressAllocationIds'] = Builders::List____listOf__string.build(input[:public_address_allocation_ids]) unless input[:public_address_allocation_ids].nil?
        data['securityGroupIds'] = Builders::List____listOf__string.build(input[:security_group_ids]) unless input[:security_group_ids].nil?
        data['subnetIds'] = Builders::List____listOf__string.build(input[:subnet_ids]) unless input[:subnet_ids].nil?
        data
      end
    end

    # Map Builder for Tags
    class Tags
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for MaintenanceCreateSettings
    class MaintenanceCreateSettings
      def self.build(input)
        data = {}
        data['maintenanceDay'] = input[:maintenance_day] unless input[:maintenance_day].nil?
        data['maintenanceStartTime'] = input[:maintenance_start_time] unless input[:maintenance_start_time].nil?
        data
      end
    end

    # Structure Builder for InputSpecification
    class InputSpecification
      def self.build(input)
        data = {}
        data['codec'] = input[:codec] unless input[:codec].nil?
        data['maximumBitrate'] = input[:maximum_bitrate] unless input[:maximum_bitrate].nil?
        data['resolution'] = input[:resolution] unless input[:resolution].nil?
        data
      end
    end

    # List Builder for __listOfInputAttachment
    class List____listOfInputAttachment
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::InputAttachment.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for InputAttachment
    class InputAttachment
      def self.build(input)
        data = {}
        data['automaticInputFailoverSettings'] = Builders::AutomaticInputFailoverSettings.build(input[:automatic_input_failover_settings]) unless input[:automatic_input_failover_settings].nil?
        data['inputAttachmentName'] = input[:input_attachment_name] unless input[:input_attachment_name].nil?
        data['inputId'] = input[:input_id] unless input[:input_id].nil?
        data['inputSettings'] = Builders::InputSettings.build(input[:input_settings]) unless input[:input_settings].nil?
        data
      end
    end

    # Structure Builder for InputSettings
    class InputSettings
      def self.build(input)
        data = {}
        data['audioSelectors'] = Builders::List____listOfAudioSelector.build(input[:audio_selectors]) unless input[:audio_selectors].nil?
        data['captionSelectors'] = Builders::List____listOfCaptionSelector.build(input[:caption_selectors]) unless input[:caption_selectors].nil?
        data['deblockFilter'] = input[:deblock_filter] unless input[:deblock_filter].nil?
        data['denoiseFilter'] = input[:denoise_filter] unless input[:denoise_filter].nil?
        data['filterStrength'] = input[:filter_strength] unless input[:filter_strength].nil?
        data['inputFilter'] = input[:input_filter] unless input[:input_filter].nil?
        data['networkInputSettings'] = Builders::NetworkInputSettings.build(input[:network_input_settings]) unless input[:network_input_settings].nil?
        data['scte35Pid'] = input[:scte35_pid] unless input[:scte35_pid].nil?
        data['smpte2038DataPreference'] = input[:smpte2038_data_preference] unless input[:smpte2038_data_preference].nil?
        data['sourceEndBehavior'] = input[:source_end_behavior] unless input[:source_end_behavior].nil?
        data['videoSelector'] = Builders::VideoSelector.build(input[:video_selector]) unless input[:video_selector].nil?
        data
      end
    end

    # Structure Builder for VideoSelector
    class VideoSelector
      def self.build(input)
        data = {}
        data['colorSpace'] = input[:color_space] unless input[:color_space].nil?
        data['colorSpaceSettings'] = Builders::VideoSelectorColorSpaceSettings.build(input[:color_space_settings]) unless input[:color_space_settings].nil?
        data['colorSpaceUsage'] = input[:color_space_usage] unless input[:color_space_usage].nil?
        data['selectorSettings'] = Builders::VideoSelectorSettings.build(input[:selector_settings]) unless input[:selector_settings].nil?
        data
      end
    end

    # Structure Builder for VideoSelectorSettings
    class VideoSelectorSettings
      def self.build(input)
        data = {}
        data['videoSelectorPid'] = Builders::VideoSelectorPid.build(input[:video_selector_pid]) unless input[:video_selector_pid].nil?
        data['videoSelectorProgramId'] = Builders::VideoSelectorProgramId.build(input[:video_selector_program_id]) unless input[:video_selector_program_id].nil?
        data
      end
    end

    # Structure Builder for VideoSelectorProgramId
    class VideoSelectorProgramId
      def self.build(input)
        data = {}
        data['programId'] = input[:program_id] unless input[:program_id].nil?
        data
      end
    end

    # Structure Builder for VideoSelectorPid
    class VideoSelectorPid
      def self.build(input)
        data = {}
        data['pid'] = input[:pid] unless input[:pid].nil?
        data
      end
    end

    # Structure Builder for VideoSelectorColorSpaceSettings
    class VideoSelectorColorSpaceSettings
      def self.build(input)
        data = {}
        data['hdr10Settings'] = Builders::Hdr10Settings.build(input[:hdr10_settings]) unless input[:hdr10_settings].nil?
        data
      end
    end

    # Structure Builder for Hdr10Settings
    class Hdr10Settings
      def self.build(input)
        data = {}
        data['maxCll'] = input[:max_cll] unless input[:max_cll].nil?
        data['maxFall'] = input[:max_fall] unless input[:max_fall].nil?
        data
      end
    end

    # Structure Builder for NetworkInputSettings
    class NetworkInputSettings
      def self.build(input)
        data = {}
        data['hlsInputSettings'] = Builders::HlsInputSettings.build(input[:hls_input_settings]) unless input[:hls_input_settings].nil?
        data['serverValidation'] = input[:server_validation] unless input[:server_validation].nil?
        data
      end
    end

    # Structure Builder for HlsInputSettings
    class HlsInputSettings
      def self.build(input)
        data = {}
        data['bandwidth'] = input[:bandwidth] unless input[:bandwidth].nil?
        data['bufferSegments'] = input[:buffer_segments] unless input[:buffer_segments].nil?
        data['retries'] = input[:retries] unless input[:retries].nil?
        data['retryInterval'] = input[:retry_interval] unless input[:retry_interval].nil?
        data['scte35Source'] = input[:scte35_source] unless input[:scte35_source].nil?
        data
      end
    end

    # List Builder for __listOfCaptionSelector
    class List____listOfCaptionSelector
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::CaptionSelector.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CaptionSelector
    class CaptionSelector
      def self.build(input)
        data = {}
        data['languageCode'] = input[:language_code] unless input[:language_code].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['selectorSettings'] = Builders::CaptionSelectorSettings.build(input[:selector_settings]) unless input[:selector_settings].nil?
        data
      end
    end

    # Structure Builder for CaptionSelectorSettings
    class CaptionSelectorSettings
      def self.build(input)
        data = {}
        data['ancillarySourceSettings'] = Builders::AncillarySourceSettings.build(input[:ancillary_source_settings]) unless input[:ancillary_source_settings].nil?
        data['aribSourceSettings'] = Builders::AribSourceSettings.build(input[:arib_source_settings]) unless input[:arib_source_settings].nil?
        data['dvbSubSourceSettings'] = Builders::DvbSubSourceSettings.build(input[:dvb_sub_source_settings]) unless input[:dvb_sub_source_settings].nil?
        data['embeddedSourceSettings'] = Builders::EmbeddedSourceSettings.build(input[:embedded_source_settings]) unless input[:embedded_source_settings].nil?
        data['scte20SourceSettings'] = Builders::Scte20SourceSettings.build(input[:scte20_source_settings]) unless input[:scte20_source_settings].nil?
        data['scte27SourceSettings'] = Builders::Scte27SourceSettings.build(input[:scte27_source_settings]) unless input[:scte27_source_settings].nil?
        data['teletextSourceSettings'] = Builders::TeletextSourceSettings.build(input[:teletext_source_settings]) unless input[:teletext_source_settings].nil?
        data
      end
    end

    # Structure Builder for TeletextSourceSettings
    class TeletextSourceSettings
      def self.build(input)
        data = {}
        data['outputRectangle'] = Builders::CaptionRectangle.build(input[:output_rectangle]) unless input[:output_rectangle].nil?
        data['pageNumber'] = input[:page_number] unless input[:page_number].nil?
        data
      end
    end

    # Structure Builder for CaptionRectangle
    class CaptionRectangle
      def self.build(input)
        data = {}
        data['height'] = Hearth::NumberHelper.serialize(input[:height]) unless input[:height].nil?
        data['leftOffset'] = Hearth::NumberHelper.serialize(input[:left_offset]) unless input[:left_offset].nil?
        data['topOffset'] = Hearth::NumberHelper.serialize(input[:top_offset]) unless input[:top_offset].nil?
        data['width'] = Hearth::NumberHelper.serialize(input[:width]) unless input[:width].nil?
        data
      end
    end

    # Structure Builder for Scte27SourceSettings
    class Scte27SourceSettings
      def self.build(input)
        data = {}
        data['ocrLanguage'] = input[:ocr_language] unless input[:ocr_language].nil?
        data['pid'] = input[:pid] unless input[:pid].nil?
        data
      end
    end

    # Structure Builder for Scte20SourceSettings
    class Scte20SourceSettings
      def self.build(input)
        data = {}
        data['convert608To708'] = input[:convert608_to708] unless input[:convert608_to708].nil?
        data['source608ChannelNumber'] = input[:source608_channel_number] unless input[:source608_channel_number].nil?
        data
      end
    end

    # Structure Builder for EmbeddedSourceSettings
    class EmbeddedSourceSettings
      def self.build(input)
        data = {}
        data['convert608To708'] = input[:convert608_to708] unless input[:convert608_to708].nil?
        data['scte20Detection'] = input[:scte20_detection] unless input[:scte20_detection].nil?
        data['source608ChannelNumber'] = input[:source608_channel_number] unless input[:source608_channel_number].nil?
        data['source608TrackNumber'] = input[:source608_track_number] unless input[:source608_track_number].nil?
        data
      end
    end

    # Structure Builder for DvbSubSourceSettings
    class DvbSubSourceSettings
      def self.build(input)
        data = {}
        data['ocrLanguage'] = input[:ocr_language] unless input[:ocr_language].nil?
        data['pid'] = input[:pid] unless input[:pid].nil?
        data
      end
    end

    # Structure Builder for AribSourceSettings
    class AribSourceSettings
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for AncillarySourceSettings
    class AncillarySourceSettings
      def self.build(input)
        data = {}
        data['sourceAncillaryChannelNumber'] = input[:source_ancillary_channel_number] unless input[:source_ancillary_channel_number].nil?
        data
      end
    end

    # List Builder for __listOfAudioSelector
    class List____listOfAudioSelector
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AudioSelector.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AudioSelector
    class AudioSelector
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['selectorSettings'] = Builders::AudioSelectorSettings.build(input[:selector_settings]) unless input[:selector_settings].nil?
        data
      end
    end

    # Structure Builder for AudioSelectorSettings
    class AudioSelectorSettings
      def self.build(input)
        data = {}
        data['audioHlsRenditionSelection'] = Builders::AudioHlsRenditionSelection.build(input[:audio_hls_rendition_selection]) unless input[:audio_hls_rendition_selection].nil?
        data['audioLanguageSelection'] = Builders::AudioLanguageSelection.build(input[:audio_language_selection]) unless input[:audio_language_selection].nil?
        data['audioPidSelection'] = Builders::AudioPidSelection.build(input[:audio_pid_selection]) unless input[:audio_pid_selection].nil?
        data['audioTrackSelection'] = Builders::AudioTrackSelection.build(input[:audio_track_selection]) unless input[:audio_track_selection].nil?
        data
      end
    end

    # Structure Builder for AudioTrackSelection
    class AudioTrackSelection
      def self.build(input)
        data = {}
        data['tracks'] = Builders::List____listOfAudioTrack.build(input[:tracks]) unless input[:tracks].nil?
        data
      end
    end

    # List Builder for __listOfAudioTrack
    class List____listOfAudioTrack
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AudioTrack.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AudioTrack
    class AudioTrack
      def self.build(input)
        data = {}
        data['track'] = input[:track] unless input[:track].nil?
        data
      end
    end

    # Structure Builder for AudioPidSelection
    class AudioPidSelection
      def self.build(input)
        data = {}
        data['pid'] = input[:pid] unless input[:pid].nil?
        data
      end
    end

    # Structure Builder for AudioLanguageSelection
    class AudioLanguageSelection
      def self.build(input)
        data = {}
        data['languageCode'] = input[:language_code] unless input[:language_code].nil?
        data['languageSelectionPolicy'] = input[:language_selection_policy] unless input[:language_selection_policy].nil?
        data
      end
    end

    # Structure Builder for AudioHlsRenditionSelection
    class AudioHlsRenditionSelection
      def self.build(input)
        data = {}
        data['groupId'] = input[:group_id] unless input[:group_id].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data
      end
    end

    # Structure Builder for AutomaticInputFailoverSettings
    class AutomaticInputFailoverSettings
      def self.build(input)
        data = {}
        data['errorClearTimeMsec'] = input[:error_clear_time_msec] unless input[:error_clear_time_msec].nil?
        data['failoverConditions'] = Builders::List____listOfFailoverCondition.build(input[:failover_conditions]) unless input[:failover_conditions].nil?
        data['inputPreference'] = input[:input_preference] unless input[:input_preference].nil?
        data['secondaryInputId'] = input[:secondary_input_id] unless input[:secondary_input_id].nil?
        data
      end
    end

    # List Builder for __listOfFailoverCondition
    class List____listOfFailoverCondition
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::FailoverCondition.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for FailoverCondition
    class FailoverCondition
      def self.build(input)
        data = {}
        data['failoverConditionSettings'] = Builders::FailoverConditionSettings.build(input[:failover_condition_settings]) unless input[:failover_condition_settings].nil?
        data
      end
    end

    # Structure Builder for FailoverConditionSettings
    class FailoverConditionSettings
      def self.build(input)
        data = {}
        data['audioSilenceSettings'] = Builders::AudioSilenceFailoverSettings.build(input[:audio_silence_settings]) unless input[:audio_silence_settings].nil?
        data['inputLossSettings'] = Builders::InputLossFailoverSettings.build(input[:input_loss_settings]) unless input[:input_loss_settings].nil?
        data['videoBlackSettings'] = Builders::VideoBlackFailoverSettings.build(input[:video_black_settings]) unless input[:video_black_settings].nil?
        data
      end
    end

    # Structure Builder for VideoBlackFailoverSettings
    class VideoBlackFailoverSettings
      def self.build(input)
        data = {}
        data['blackDetectThreshold'] = Hearth::NumberHelper.serialize(input[:black_detect_threshold]) unless input[:black_detect_threshold].nil?
        data['videoBlackThresholdMsec'] = input[:video_black_threshold_msec] unless input[:video_black_threshold_msec].nil?
        data
      end
    end

    # Structure Builder for InputLossFailoverSettings
    class InputLossFailoverSettings
      def self.build(input)
        data = {}
        data['inputLossThresholdMsec'] = input[:input_loss_threshold_msec] unless input[:input_loss_threshold_msec].nil?
        data
      end
    end

    # Structure Builder for AudioSilenceFailoverSettings
    class AudioSilenceFailoverSettings
      def self.build(input)
        data = {}
        data['audioSelectorName'] = input[:audio_selector_name] unless input[:audio_selector_name].nil?
        data['audioSilenceThresholdMsec'] = input[:audio_silence_threshold_msec] unless input[:audio_silence_threshold_msec].nil?
        data
      end
    end

    # Structure Builder for EncoderSettings
    class EncoderSettings
      def self.build(input)
        data = {}
        data['audioDescriptions'] = Builders::List____listOfAudioDescription.build(input[:audio_descriptions]) unless input[:audio_descriptions].nil?
        data['availBlanking'] = Builders::AvailBlanking.build(input[:avail_blanking]) unless input[:avail_blanking].nil?
        data['availConfiguration'] = Builders::AvailConfiguration.build(input[:avail_configuration]) unless input[:avail_configuration].nil?
        data['blackoutSlate'] = Builders::BlackoutSlate.build(input[:blackout_slate]) unless input[:blackout_slate].nil?
        data['captionDescriptions'] = Builders::List____listOfCaptionDescription.build(input[:caption_descriptions]) unless input[:caption_descriptions].nil?
        data['featureActivations'] = Builders::FeatureActivations.build(input[:feature_activations]) unless input[:feature_activations].nil?
        data['globalConfiguration'] = Builders::GlobalConfiguration.build(input[:global_configuration]) unless input[:global_configuration].nil?
        data['motionGraphicsConfiguration'] = Builders::MotionGraphicsConfiguration.build(input[:motion_graphics_configuration]) unless input[:motion_graphics_configuration].nil?
        data['nielsenConfiguration'] = Builders::NielsenConfiguration.build(input[:nielsen_configuration]) unless input[:nielsen_configuration].nil?
        data['outputGroups'] = Builders::List____listOfOutputGroup.build(input[:output_groups]) unless input[:output_groups].nil?
        data['timecodeConfig'] = Builders::TimecodeConfig.build(input[:timecode_config]) unless input[:timecode_config].nil?
        data['videoDescriptions'] = Builders::List____listOfVideoDescription.build(input[:video_descriptions]) unless input[:video_descriptions].nil?
        data
      end
    end

    # List Builder for __listOfVideoDescription
    class List____listOfVideoDescription
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::VideoDescription.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for VideoDescription
    class VideoDescription
      def self.build(input)
        data = {}
        data['codecSettings'] = Builders::VideoCodecSettings.build(input[:codec_settings]) unless input[:codec_settings].nil?
        data['height'] = input[:height] unless input[:height].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['respondToAfd'] = input[:respond_to_afd] unless input[:respond_to_afd].nil?
        data['scalingBehavior'] = input[:scaling_behavior] unless input[:scaling_behavior].nil?
        data['sharpness'] = input[:sharpness] unless input[:sharpness].nil?
        data['width'] = input[:width] unless input[:width].nil?
        data
      end
    end

    # Structure Builder for VideoCodecSettings
    class VideoCodecSettings
      def self.build(input)
        data = {}
        data['frameCaptureSettings'] = Builders::FrameCaptureSettings.build(input[:frame_capture_settings]) unless input[:frame_capture_settings].nil?
        data['h264Settings'] = Builders::H264Settings.build(input[:h264_settings]) unless input[:h264_settings].nil?
        data['h265Settings'] = Builders::H265Settings.build(input[:h265_settings]) unless input[:h265_settings].nil?
        data['mpeg2Settings'] = Builders::Mpeg2Settings.build(input[:mpeg2_settings]) unless input[:mpeg2_settings].nil?
        data
      end
    end

    # Structure Builder for Mpeg2Settings
    class Mpeg2Settings
      def self.build(input)
        data = {}
        data['adaptiveQuantization'] = input[:adaptive_quantization] unless input[:adaptive_quantization].nil?
        data['afdSignaling'] = input[:afd_signaling] unless input[:afd_signaling].nil?
        data['colorMetadata'] = input[:color_metadata] unless input[:color_metadata].nil?
        data['colorSpace'] = input[:color_space] unless input[:color_space].nil?
        data['displayAspectRatio'] = input[:display_aspect_ratio] unless input[:display_aspect_ratio].nil?
        data['filterSettings'] = Builders::Mpeg2FilterSettings.build(input[:filter_settings]) unless input[:filter_settings].nil?
        data['fixedAfd'] = input[:fixed_afd] unless input[:fixed_afd].nil?
        data['framerateDenominator'] = input[:framerate_denominator] unless input[:framerate_denominator].nil?
        data['framerateNumerator'] = input[:framerate_numerator] unless input[:framerate_numerator].nil?
        data['gopClosedCadence'] = input[:gop_closed_cadence] unless input[:gop_closed_cadence].nil?
        data['gopNumBFrames'] = input[:gop_num_b_frames] unless input[:gop_num_b_frames].nil?
        data['gopSize'] = Hearth::NumberHelper.serialize(input[:gop_size]) unless input[:gop_size].nil?
        data['gopSizeUnits'] = input[:gop_size_units] unless input[:gop_size_units].nil?
        data['scanType'] = input[:scan_type] unless input[:scan_type].nil?
        data['subgopLength'] = input[:subgop_length] unless input[:subgop_length].nil?
        data['timecodeInsertion'] = input[:timecode_insertion] unless input[:timecode_insertion].nil?
        data
      end
    end

    # Structure Builder for Mpeg2FilterSettings
    class Mpeg2FilterSettings
      def self.build(input)
        data = {}
        data['temporalFilterSettings'] = Builders::TemporalFilterSettings.build(input[:temporal_filter_settings]) unless input[:temporal_filter_settings].nil?
        data
      end
    end

    # Structure Builder for TemporalFilterSettings
    class TemporalFilterSettings
      def self.build(input)
        data = {}
        data['postFilterSharpening'] = input[:post_filter_sharpening] unless input[:post_filter_sharpening].nil?
        data['strength'] = input[:strength] unless input[:strength].nil?
        data
      end
    end

    # Structure Builder for H265Settings
    class H265Settings
      def self.build(input)
        data = {}
        data['adaptiveQuantization'] = input[:adaptive_quantization] unless input[:adaptive_quantization].nil?
        data['afdSignaling'] = input[:afd_signaling] unless input[:afd_signaling].nil?
        data['alternativeTransferFunction'] = input[:alternative_transfer_function] unless input[:alternative_transfer_function].nil?
        data['bitrate'] = input[:bitrate] unless input[:bitrate].nil?
        data['bufSize'] = input[:buf_size] unless input[:buf_size].nil?
        data['colorMetadata'] = input[:color_metadata] unless input[:color_metadata].nil?
        data['colorSpaceSettings'] = Builders::H265ColorSpaceSettings.build(input[:color_space_settings]) unless input[:color_space_settings].nil?
        data['filterSettings'] = Builders::H265FilterSettings.build(input[:filter_settings]) unless input[:filter_settings].nil?
        data['fixedAfd'] = input[:fixed_afd] unless input[:fixed_afd].nil?
        data['flickerAq'] = input[:flicker_aq] unless input[:flicker_aq].nil?
        data['framerateDenominator'] = input[:framerate_denominator] unless input[:framerate_denominator].nil?
        data['framerateNumerator'] = input[:framerate_numerator] unless input[:framerate_numerator].nil?
        data['gopClosedCadence'] = input[:gop_closed_cadence] unless input[:gop_closed_cadence].nil?
        data['gopSize'] = Hearth::NumberHelper.serialize(input[:gop_size]) unless input[:gop_size].nil?
        data['gopSizeUnits'] = input[:gop_size_units] unless input[:gop_size_units].nil?
        data['level'] = input[:level] unless input[:level].nil?
        data['lookAheadRateControl'] = input[:look_ahead_rate_control] unless input[:look_ahead_rate_control].nil?
        data['maxBitrate'] = input[:max_bitrate] unless input[:max_bitrate].nil?
        data['minIInterval'] = input[:min_i_interval] unless input[:min_i_interval].nil?
        data['parDenominator'] = input[:par_denominator] unless input[:par_denominator].nil?
        data['parNumerator'] = input[:par_numerator] unless input[:par_numerator].nil?
        data['profile'] = input[:profile] unless input[:profile].nil?
        data['qvbrQualityLevel'] = input[:qvbr_quality_level] unless input[:qvbr_quality_level].nil?
        data['rateControlMode'] = input[:rate_control_mode] unless input[:rate_control_mode].nil?
        data['scanType'] = input[:scan_type] unless input[:scan_type].nil?
        data['sceneChangeDetect'] = input[:scene_change_detect] unless input[:scene_change_detect].nil?
        data['slices'] = input[:slices] unless input[:slices].nil?
        data['tier'] = input[:tier] unless input[:tier].nil?
        data['timecodeInsertion'] = input[:timecode_insertion] unless input[:timecode_insertion].nil?
        data
      end
    end

    # Structure Builder for H265FilterSettings
    class H265FilterSettings
      def self.build(input)
        data = {}
        data['temporalFilterSettings'] = Builders::TemporalFilterSettings.build(input[:temporal_filter_settings]) unless input[:temporal_filter_settings].nil?
        data
      end
    end

    # Structure Builder for H265ColorSpaceSettings
    class H265ColorSpaceSettings
      def self.build(input)
        data = {}
        data['colorSpacePassthroughSettings'] = Builders::ColorSpacePassthroughSettings.build(input[:color_space_passthrough_settings]) unless input[:color_space_passthrough_settings].nil?
        data['hdr10Settings'] = Builders::Hdr10Settings.build(input[:hdr10_settings]) unless input[:hdr10_settings].nil?
        data['rec601Settings'] = Builders::Rec601Settings.build(input[:rec601_settings]) unless input[:rec601_settings].nil?
        data['rec709Settings'] = Builders::Rec709Settings.build(input[:rec709_settings]) unless input[:rec709_settings].nil?
        data
      end
    end

    # Structure Builder for Rec709Settings
    class Rec709Settings
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for Rec601Settings
    class Rec601Settings
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for ColorSpacePassthroughSettings
    class ColorSpacePassthroughSettings
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for H264Settings
    class H264Settings
      def self.build(input)
        data = {}
        data['adaptiveQuantization'] = input[:adaptive_quantization] unless input[:adaptive_quantization].nil?
        data['afdSignaling'] = input[:afd_signaling] unless input[:afd_signaling].nil?
        data['bitrate'] = input[:bitrate] unless input[:bitrate].nil?
        data['bufFillPct'] = input[:buf_fill_pct] unless input[:buf_fill_pct].nil?
        data['bufSize'] = input[:buf_size] unless input[:buf_size].nil?
        data['colorMetadata'] = input[:color_metadata] unless input[:color_metadata].nil?
        data['colorSpaceSettings'] = Builders::H264ColorSpaceSettings.build(input[:color_space_settings]) unless input[:color_space_settings].nil?
        data['entropyEncoding'] = input[:entropy_encoding] unless input[:entropy_encoding].nil?
        data['filterSettings'] = Builders::H264FilterSettings.build(input[:filter_settings]) unless input[:filter_settings].nil?
        data['fixedAfd'] = input[:fixed_afd] unless input[:fixed_afd].nil?
        data['flickerAq'] = input[:flicker_aq] unless input[:flicker_aq].nil?
        data['forceFieldPictures'] = input[:force_field_pictures] unless input[:force_field_pictures].nil?
        data['framerateControl'] = input[:framerate_control] unless input[:framerate_control].nil?
        data['framerateDenominator'] = input[:framerate_denominator] unless input[:framerate_denominator].nil?
        data['framerateNumerator'] = input[:framerate_numerator] unless input[:framerate_numerator].nil?
        data['gopBReference'] = input[:gop_b_reference] unless input[:gop_b_reference].nil?
        data['gopClosedCadence'] = input[:gop_closed_cadence] unless input[:gop_closed_cadence].nil?
        data['gopNumBFrames'] = input[:gop_num_b_frames] unless input[:gop_num_b_frames].nil?
        data['gopSize'] = Hearth::NumberHelper.serialize(input[:gop_size]) unless input[:gop_size].nil?
        data['gopSizeUnits'] = input[:gop_size_units] unless input[:gop_size_units].nil?
        data['level'] = input[:level] unless input[:level].nil?
        data['lookAheadRateControl'] = input[:look_ahead_rate_control] unless input[:look_ahead_rate_control].nil?
        data['maxBitrate'] = input[:max_bitrate] unless input[:max_bitrate].nil?
        data['minIInterval'] = input[:min_i_interval] unless input[:min_i_interval].nil?
        data['numRefFrames'] = input[:num_ref_frames] unless input[:num_ref_frames].nil?
        data['parControl'] = input[:par_control] unless input[:par_control].nil?
        data['parDenominator'] = input[:par_denominator] unless input[:par_denominator].nil?
        data['parNumerator'] = input[:par_numerator] unless input[:par_numerator].nil?
        data['profile'] = input[:profile] unless input[:profile].nil?
        data['qualityLevel'] = input[:quality_level] unless input[:quality_level].nil?
        data['qvbrQualityLevel'] = input[:qvbr_quality_level] unless input[:qvbr_quality_level].nil?
        data['rateControlMode'] = input[:rate_control_mode] unless input[:rate_control_mode].nil?
        data['scanType'] = input[:scan_type] unless input[:scan_type].nil?
        data['sceneChangeDetect'] = input[:scene_change_detect] unless input[:scene_change_detect].nil?
        data['slices'] = input[:slices] unless input[:slices].nil?
        data['softness'] = input[:softness] unless input[:softness].nil?
        data['spatialAq'] = input[:spatial_aq] unless input[:spatial_aq].nil?
        data['subgopLength'] = input[:subgop_length] unless input[:subgop_length].nil?
        data['syntax'] = input[:syntax] unless input[:syntax].nil?
        data['temporalAq'] = input[:temporal_aq] unless input[:temporal_aq].nil?
        data['timecodeInsertion'] = input[:timecode_insertion] unless input[:timecode_insertion].nil?
        data
      end
    end

    # Structure Builder for H264FilterSettings
    class H264FilterSettings
      def self.build(input)
        data = {}
        data['temporalFilterSettings'] = Builders::TemporalFilterSettings.build(input[:temporal_filter_settings]) unless input[:temporal_filter_settings].nil?
        data
      end
    end

    # Structure Builder for H264ColorSpaceSettings
    class H264ColorSpaceSettings
      def self.build(input)
        data = {}
        data['colorSpacePassthroughSettings'] = Builders::ColorSpacePassthroughSettings.build(input[:color_space_passthrough_settings]) unless input[:color_space_passthrough_settings].nil?
        data['rec601Settings'] = Builders::Rec601Settings.build(input[:rec601_settings]) unless input[:rec601_settings].nil?
        data['rec709Settings'] = Builders::Rec709Settings.build(input[:rec709_settings]) unless input[:rec709_settings].nil?
        data
      end
    end

    # Structure Builder for FrameCaptureSettings
    class FrameCaptureSettings
      def self.build(input)
        data = {}
        data['captureInterval'] = input[:capture_interval] unless input[:capture_interval].nil?
        data['captureIntervalUnits'] = input[:capture_interval_units] unless input[:capture_interval_units].nil?
        data
      end
    end

    # Structure Builder for TimecodeConfig
    class TimecodeConfig
      def self.build(input)
        data = {}
        data['source'] = input[:source] unless input[:source].nil?
        data['syncThreshold'] = input[:sync_threshold] unless input[:sync_threshold].nil?
        data
      end
    end

    # List Builder for __listOfOutputGroup
    class List____listOfOutputGroup
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::OutputGroup.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for OutputGroup
    class OutputGroup
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['outputGroupSettings'] = Builders::OutputGroupSettings.build(input[:output_group_settings]) unless input[:output_group_settings].nil?
        data['outputs'] = Builders::List____listOfOutput.build(input[:outputs]) unless input[:outputs].nil?
        data
      end
    end

    # List Builder for __listOfOutput
    class List____listOfOutput
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Output.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Output
    class Output
      def self.build(input)
        data = {}
        data['audioDescriptionNames'] = Builders::List____listOf__string.build(input[:audio_description_names]) unless input[:audio_description_names].nil?
        data['captionDescriptionNames'] = Builders::List____listOf__string.build(input[:caption_description_names]) unless input[:caption_description_names].nil?
        data['outputName'] = input[:output_name] unless input[:output_name].nil?
        data['outputSettings'] = Builders::OutputSettings.build(input[:output_settings]) unless input[:output_settings].nil?
        data['videoDescriptionName'] = input[:video_description_name] unless input[:video_description_name].nil?
        data
      end
    end

    # Structure Builder for OutputSettings
    class OutputSettings
      def self.build(input)
        data = {}
        data['archiveOutputSettings'] = Builders::ArchiveOutputSettings.build(input[:archive_output_settings]) unless input[:archive_output_settings].nil?
        data['frameCaptureOutputSettings'] = Builders::FrameCaptureOutputSettings.build(input[:frame_capture_output_settings]) unless input[:frame_capture_output_settings].nil?
        data['hlsOutputSettings'] = Builders::HlsOutputSettings.build(input[:hls_output_settings]) unless input[:hls_output_settings].nil?
        data['mediaPackageOutputSettings'] = Builders::MediaPackageOutputSettings.build(input[:media_package_output_settings]) unless input[:media_package_output_settings].nil?
        data['msSmoothOutputSettings'] = Builders::MsSmoothOutputSettings.build(input[:ms_smooth_output_settings]) unless input[:ms_smooth_output_settings].nil?
        data['multiplexOutputSettings'] = Builders::MultiplexOutputSettings.build(input[:multiplex_output_settings]) unless input[:multiplex_output_settings].nil?
        data['rtmpOutputSettings'] = Builders::RtmpOutputSettings.build(input[:rtmp_output_settings]) unless input[:rtmp_output_settings].nil?
        data['udpOutputSettings'] = Builders::UdpOutputSettings.build(input[:udp_output_settings]) unless input[:udp_output_settings].nil?
        data
      end
    end

    # Structure Builder for UdpOutputSettings
    class UdpOutputSettings
      def self.build(input)
        data = {}
        data['bufferMsec'] = input[:buffer_msec] unless input[:buffer_msec].nil?
        data['containerSettings'] = Builders::UdpContainerSettings.build(input[:container_settings]) unless input[:container_settings].nil?
        data['destination'] = Builders::OutputLocationRef.build(input[:destination]) unless input[:destination].nil?
        data['fecOutputSettings'] = Builders::FecOutputSettings.build(input[:fec_output_settings]) unless input[:fec_output_settings].nil?
        data
      end
    end

    # Structure Builder for FecOutputSettings
    class FecOutputSettings
      def self.build(input)
        data = {}
        data['columnDepth'] = input[:column_depth] unless input[:column_depth].nil?
        data['includeFec'] = input[:include_fec] unless input[:include_fec].nil?
        data['rowLength'] = input[:row_length] unless input[:row_length].nil?
        data
      end
    end

    # Structure Builder for OutputLocationRef
    class OutputLocationRef
      def self.build(input)
        data = {}
        data['destinationRefId'] = input[:destination_ref_id] unless input[:destination_ref_id].nil?
        data
      end
    end

    # Structure Builder for UdpContainerSettings
    class UdpContainerSettings
      def self.build(input)
        data = {}
        data['m2tsSettings'] = Builders::M2tsSettings.build(input[:m2ts_settings]) unless input[:m2ts_settings].nil?
        data
      end
    end

    # Structure Builder for M2tsSettings
    class M2tsSettings
      def self.build(input)
        data = {}
        data['absentInputAudioBehavior'] = input[:absent_input_audio_behavior] unless input[:absent_input_audio_behavior].nil?
        data['arib'] = input[:arib] unless input[:arib].nil?
        data['aribCaptionsPid'] = input[:arib_captions_pid] unless input[:arib_captions_pid].nil?
        data['aribCaptionsPidControl'] = input[:arib_captions_pid_control] unless input[:arib_captions_pid_control].nil?
        data['audioBufferModel'] = input[:audio_buffer_model] unless input[:audio_buffer_model].nil?
        data['audioFramesPerPes'] = input[:audio_frames_per_pes] unless input[:audio_frames_per_pes].nil?
        data['audioPids'] = input[:audio_pids] unless input[:audio_pids].nil?
        data['audioStreamType'] = input[:audio_stream_type] unless input[:audio_stream_type].nil?
        data['bitrate'] = input[:bitrate] unless input[:bitrate].nil?
        data['bufferModel'] = input[:buffer_model] unless input[:buffer_model].nil?
        data['ccDescriptor'] = input[:cc_descriptor] unless input[:cc_descriptor].nil?
        data['dvbNitSettings'] = Builders::DvbNitSettings.build(input[:dvb_nit_settings]) unless input[:dvb_nit_settings].nil?
        data['dvbSdtSettings'] = Builders::DvbSdtSettings.build(input[:dvb_sdt_settings]) unless input[:dvb_sdt_settings].nil?
        data['dvbSubPids'] = input[:dvb_sub_pids] unless input[:dvb_sub_pids].nil?
        data['dvbTdtSettings'] = Builders::DvbTdtSettings.build(input[:dvb_tdt_settings]) unless input[:dvb_tdt_settings].nil?
        data['dvbTeletextPid'] = input[:dvb_teletext_pid] unless input[:dvb_teletext_pid].nil?
        data['ebif'] = input[:ebif] unless input[:ebif].nil?
        data['ebpAudioInterval'] = input[:ebp_audio_interval] unless input[:ebp_audio_interval].nil?
        data['ebpLookaheadMs'] = input[:ebp_lookahead_ms] unless input[:ebp_lookahead_ms].nil?
        data['ebpPlacement'] = input[:ebp_placement] unless input[:ebp_placement].nil?
        data['ecmPid'] = input[:ecm_pid] unless input[:ecm_pid].nil?
        data['esRateInPes'] = input[:es_rate_in_pes] unless input[:es_rate_in_pes].nil?
        data['etvPlatformPid'] = input[:etv_platform_pid] unless input[:etv_platform_pid].nil?
        data['etvSignalPid'] = input[:etv_signal_pid] unless input[:etv_signal_pid].nil?
        data['fragmentTime'] = Hearth::NumberHelper.serialize(input[:fragment_time]) unless input[:fragment_time].nil?
        data['klv'] = input[:klv] unless input[:klv].nil?
        data['klvDataPids'] = input[:klv_data_pids] unless input[:klv_data_pids].nil?
        data['nielsenId3Behavior'] = input[:nielsen_id3_behavior] unless input[:nielsen_id3_behavior].nil?
        data['nullPacketBitrate'] = Hearth::NumberHelper.serialize(input[:null_packet_bitrate]) unless input[:null_packet_bitrate].nil?
        data['patInterval'] = input[:pat_interval] unless input[:pat_interval].nil?
        data['pcrControl'] = input[:pcr_control] unless input[:pcr_control].nil?
        data['pcrPeriod'] = input[:pcr_period] unless input[:pcr_period].nil?
        data['pcrPid'] = input[:pcr_pid] unless input[:pcr_pid].nil?
        data['pmtInterval'] = input[:pmt_interval] unless input[:pmt_interval].nil?
        data['pmtPid'] = input[:pmt_pid] unless input[:pmt_pid].nil?
        data['programNum'] = input[:program_num] unless input[:program_num].nil?
        data['rateMode'] = input[:rate_mode] unless input[:rate_mode].nil?
        data['scte27Pids'] = input[:scte27_pids] unless input[:scte27_pids].nil?
        data['scte35Control'] = input[:scte35_control] unless input[:scte35_control].nil?
        data['scte35Pid'] = input[:scte35_pid] unless input[:scte35_pid].nil?
        data['segmentationMarkers'] = input[:segmentation_markers] unless input[:segmentation_markers].nil?
        data['segmentationStyle'] = input[:segmentation_style] unless input[:segmentation_style].nil?
        data['segmentationTime'] = Hearth::NumberHelper.serialize(input[:segmentation_time]) unless input[:segmentation_time].nil?
        data['timedMetadataBehavior'] = input[:timed_metadata_behavior] unless input[:timed_metadata_behavior].nil?
        data['timedMetadataPid'] = input[:timed_metadata_pid] unless input[:timed_metadata_pid].nil?
        data['transportStreamId'] = input[:transport_stream_id] unless input[:transport_stream_id].nil?
        data['videoPid'] = input[:video_pid] unless input[:video_pid].nil?
        data
      end
    end

    # Structure Builder for DvbTdtSettings
    class DvbTdtSettings
      def self.build(input)
        data = {}
        data['repInterval'] = input[:rep_interval] unless input[:rep_interval].nil?
        data
      end
    end

    # Structure Builder for DvbSdtSettings
    class DvbSdtSettings
      def self.build(input)
        data = {}
        data['outputSdt'] = input[:output_sdt] unless input[:output_sdt].nil?
        data['repInterval'] = input[:rep_interval] unless input[:rep_interval].nil?
        data['serviceName'] = input[:service_name] unless input[:service_name].nil?
        data['serviceProviderName'] = input[:service_provider_name] unless input[:service_provider_name].nil?
        data
      end
    end

    # Structure Builder for DvbNitSettings
    class DvbNitSettings
      def self.build(input)
        data = {}
        data['networkId'] = input[:network_id] unless input[:network_id].nil?
        data['networkName'] = input[:network_name] unless input[:network_name].nil?
        data['repInterval'] = input[:rep_interval] unless input[:rep_interval].nil?
        data
      end
    end

    # Structure Builder for RtmpOutputSettings
    class RtmpOutputSettings
      def self.build(input)
        data = {}
        data['certificateMode'] = input[:certificate_mode] unless input[:certificate_mode].nil?
        data['connectionRetryInterval'] = input[:connection_retry_interval] unless input[:connection_retry_interval].nil?
        data['destination'] = Builders::OutputLocationRef.build(input[:destination]) unless input[:destination].nil?
        data['numRetries'] = input[:num_retries] unless input[:num_retries].nil?
        data
      end
    end

    # Structure Builder for MultiplexOutputSettings
    class MultiplexOutputSettings
      def self.build(input)
        data = {}
        data['destination'] = Builders::OutputLocationRef.build(input[:destination]) unless input[:destination].nil?
        data
      end
    end

    # Structure Builder for MsSmoothOutputSettings
    class MsSmoothOutputSettings
      def self.build(input)
        data = {}
        data['h265PackagingType'] = input[:h265_packaging_type] unless input[:h265_packaging_type].nil?
        data['nameModifier'] = input[:name_modifier] unless input[:name_modifier].nil?
        data
      end
    end

    # Structure Builder for MediaPackageOutputSettings
    class MediaPackageOutputSettings
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for HlsOutputSettings
    class HlsOutputSettings
      def self.build(input)
        data = {}
        data['h265PackagingType'] = input[:h265_packaging_type] unless input[:h265_packaging_type].nil?
        data['hlsSettings'] = Builders::HlsSettings.build(input[:hls_settings]) unless input[:hls_settings].nil?
        data['nameModifier'] = input[:name_modifier] unless input[:name_modifier].nil?
        data['segmentModifier'] = input[:segment_modifier] unless input[:segment_modifier].nil?
        data
      end
    end

    # Structure Builder for HlsSettings
    class HlsSettings
      def self.build(input)
        data = {}
        data['audioOnlyHlsSettings'] = Builders::AudioOnlyHlsSettings.build(input[:audio_only_hls_settings]) unless input[:audio_only_hls_settings].nil?
        data['fmp4HlsSettings'] = Builders::Fmp4HlsSettings.build(input[:fmp4_hls_settings]) unless input[:fmp4_hls_settings].nil?
        data['frameCaptureHlsSettings'] = Builders::FrameCaptureHlsSettings.build(input[:frame_capture_hls_settings]) unless input[:frame_capture_hls_settings].nil?
        data['standardHlsSettings'] = Builders::StandardHlsSettings.build(input[:standard_hls_settings]) unless input[:standard_hls_settings].nil?
        data
      end
    end

    # Structure Builder for StandardHlsSettings
    class StandardHlsSettings
      def self.build(input)
        data = {}
        data['audioRenditionSets'] = input[:audio_rendition_sets] unless input[:audio_rendition_sets].nil?
        data['m3u8Settings'] = Builders::M3u8Settings.build(input[:m3u8_settings]) unless input[:m3u8_settings].nil?
        data
      end
    end

    # Structure Builder for M3u8Settings
    class M3u8Settings
      def self.build(input)
        data = {}
        data['audioFramesPerPes'] = input[:audio_frames_per_pes] unless input[:audio_frames_per_pes].nil?
        data['audioPids'] = input[:audio_pids] unless input[:audio_pids].nil?
        data['ecmPid'] = input[:ecm_pid] unless input[:ecm_pid].nil?
        data['nielsenId3Behavior'] = input[:nielsen_id3_behavior] unless input[:nielsen_id3_behavior].nil?
        data['patInterval'] = input[:pat_interval] unless input[:pat_interval].nil?
        data['pcrControl'] = input[:pcr_control] unless input[:pcr_control].nil?
        data['pcrPeriod'] = input[:pcr_period] unless input[:pcr_period].nil?
        data['pcrPid'] = input[:pcr_pid] unless input[:pcr_pid].nil?
        data['pmtInterval'] = input[:pmt_interval] unless input[:pmt_interval].nil?
        data['pmtPid'] = input[:pmt_pid] unless input[:pmt_pid].nil?
        data['programNum'] = input[:program_num] unless input[:program_num].nil?
        data['scte35Behavior'] = input[:scte35_behavior] unless input[:scte35_behavior].nil?
        data['scte35Pid'] = input[:scte35_pid] unless input[:scte35_pid].nil?
        data['timedMetadataBehavior'] = input[:timed_metadata_behavior] unless input[:timed_metadata_behavior].nil?
        data['timedMetadataPid'] = input[:timed_metadata_pid] unless input[:timed_metadata_pid].nil?
        data['transportStreamId'] = input[:transport_stream_id] unless input[:transport_stream_id].nil?
        data['videoPid'] = input[:video_pid] unless input[:video_pid].nil?
        data
      end
    end

    # Structure Builder for FrameCaptureHlsSettings
    class FrameCaptureHlsSettings
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for Fmp4HlsSettings
    class Fmp4HlsSettings
      def self.build(input)
        data = {}
        data['audioRenditionSets'] = input[:audio_rendition_sets] unless input[:audio_rendition_sets].nil?
        data['nielsenId3Behavior'] = input[:nielsen_id3_behavior] unless input[:nielsen_id3_behavior].nil?
        data['timedMetadataBehavior'] = input[:timed_metadata_behavior] unless input[:timed_metadata_behavior].nil?
        data
      end
    end

    # Structure Builder for AudioOnlyHlsSettings
    class AudioOnlyHlsSettings
      def self.build(input)
        data = {}
        data['audioGroupId'] = input[:audio_group_id] unless input[:audio_group_id].nil?
        data['audioOnlyImage'] = Builders::InputLocation.build(input[:audio_only_image]) unless input[:audio_only_image].nil?
        data['audioTrackType'] = input[:audio_track_type] unless input[:audio_track_type].nil?
        data['segmentType'] = input[:segment_type] unless input[:segment_type].nil?
        data
      end
    end

    # Structure Builder for FrameCaptureOutputSettings
    class FrameCaptureOutputSettings
      def self.build(input)
        data = {}
        data['nameModifier'] = input[:name_modifier] unless input[:name_modifier].nil?
        data
      end
    end

    # Structure Builder for ArchiveOutputSettings
    class ArchiveOutputSettings
      def self.build(input)
        data = {}
        data['containerSettings'] = Builders::ArchiveContainerSettings.build(input[:container_settings]) unless input[:container_settings].nil?
        data['extension'] = input[:extension] unless input[:extension].nil?
        data['nameModifier'] = input[:name_modifier] unless input[:name_modifier].nil?
        data
      end
    end

    # Structure Builder for ArchiveContainerSettings
    class ArchiveContainerSettings
      def self.build(input)
        data = {}
        data['m2tsSettings'] = Builders::M2tsSettings.build(input[:m2ts_settings]) unless input[:m2ts_settings].nil?
        data['rawSettings'] = Builders::RawSettings.build(input[:raw_settings]) unless input[:raw_settings].nil?
        data
      end
    end

    # Structure Builder for RawSettings
    class RawSettings
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for OutputGroupSettings
    class OutputGroupSettings
      def self.build(input)
        data = {}
        data['archiveGroupSettings'] = Builders::ArchiveGroupSettings.build(input[:archive_group_settings]) unless input[:archive_group_settings].nil?
        data['frameCaptureGroupSettings'] = Builders::FrameCaptureGroupSettings.build(input[:frame_capture_group_settings]) unless input[:frame_capture_group_settings].nil?
        data['hlsGroupSettings'] = Builders::HlsGroupSettings.build(input[:hls_group_settings]) unless input[:hls_group_settings].nil?
        data['mediaPackageGroupSettings'] = Builders::MediaPackageGroupSettings.build(input[:media_package_group_settings]) unless input[:media_package_group_settings].nil?
        data['msSmoothGroupSettings'] = Builders::MsSmoothGroupSettings.build(input[:ms_smooth_group_settings]) unless input[:ms_smooth_group_settings].nil?
        data['multiplexGroupSettings'] = Builders::MultiplexGroupSettings.build(input[:multiplex_group_settings]) unless input[:multiplex_group_settings].nil?
        data['rtmpGroupSettings'] = Builders::RtmpGroupSettings.build(input[:rtmp_group_settings]) unless input[:rtmp_group_settings].nil?
        data['udpGroupSettings'] = Builders::UdpGroupSettings.build(input[:udp_group_settings]) unless input[:udp_group_settings].nil?
        data
      end
    end

    # Structure Builder for UdpGroupSettings
    class UdpGroupSettings
      def self.build(input)
        data = {}
        data['inputLossAction'] = input[:input_loss_action] unless input[:input_loss_action].nil?
        data['timedMetadataId3Frame'] = input[:timed_metadata_id3_frame] unless input[:timed_metadata_id3_frame].nil?
        data['timedMetadataId3Period'] = input[:timed_metadata_id3_period] unless input[:timed_metadata_id3_period].nil?
        data
      end
    end

    # Structure Builder for RtmpGroupSettings
    class RtmpGroupSettings
      def self.build(input)
        data = {}
        data['adMarkers'] = Builders::List____listOfRtmpAdMarkers.build(input[:ad_markers]) unless input[:ad_markers].nil?
        data['authenticationScheme'] = input[:authentication_scheme] unless input[:authentication_scheme].nil?
        data['cacheFullBehavior'] = input[:cache_full_behavior] unless input[:cache_full_behavior].nil?
        data['cacheLength'] = input[:cache_length] unless input[:cache_length].nil?
        data['captionData'] = input[:caption_data] unless input[:caption_data].nil?
        data['inputLossAction'] = input[:input_loss_action] unless input[:input_loss_action].nil?
        data['restartDelay'] = input[:restart_delay] unless input[:restart_delay].nil?
        data
      end
    end

    # List Builder for __listOfRtmpAdMarkers
    class List____listOfRtmpAdMarkers
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for MultiplexGroupSettings
    class MultiplexGroupSettings
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for MsSmoothGroupSettings
    class MsSmoothGroupSettings
      def self.build(input)
        data = {}
        data['acquisitionPointId'] = input[:acquisition_point_id] unless input[:acquisition_point_id].nil?
        data['audioOnlyTimecodeControl'] = input[:audio_only_timecode_control] unless input[:audio_only_timecode_control].nil?
        data['certificateMode'] = input[:certificate_mode] unless input[:certificate_mode].nil?
        data['connectionRetryInterval'] = input[:connection_retry_interval] unless input[:connection_retry_interval].nil?
        data['destination'] = Builders::OutputLocationRef.build(input[:destination]) unless input[:destination].nil?
        data['eventId'] = input[:event_id] unless input[:event_id].nil?
        data['eventIdMode'] = input[:event_id_mode] unless input[:event_id_mode].nil?
        data['eventStopBehavior'] = input[:event_stop_behavior] unless input[:event_stop_behavior].nil?
        data['filecacheDuration'] = input[:filecache_duration] unless input[:filecache_duration].nil?
        data['fragmentLength'] = input[:fragment_length] unless input[:fragment_length].nil?
        data['inputLossAction'] = input[:input_loss_action] unless input[:input_loss_action].nil?
        data['numRetries'] = input[:num_retries] unless input[:num_retries].nil?
        data['restartDelay'] = input[:restart_delay] unless input[:restart_delay].nil?
        data['segmentationMode'] = input[:segmentation_mode] unless input[:segmentation_mode].nil?
        data['sendDelayMs'] = input[:send_delay_ms] unless input[:send_delay_ms].nil?
        data['sparseTrackType'] = input[:sparse_track_type] unless input[:sparse_track_type].nil?
        data['streamManifestBehavior'] = input[:stream_manifest_behavior] unless input[:stream_manifest_behavior].nil?
        data['timestampOffset'] = input[:timestamp_offset] unless input[:timestamp_offset].nil?
        data['timestampOffsetMode'] = input[:timestamp_offset_mode] unless input[:timestamp_offset_mode].nil?
        data
      end
    end

    # Structure Builder for MediaPackageGroupSettings
    class MediaPackageGroupSettings
      def self.build(input)
        data = {}
        data['destination'] = Builders::OutputLocationRef.build(input[:destination]) unless input[:destination].nil?
        data
      end
    end

    # Structure Builder for HlsGroupSettings
    class HlsGroupSettings
      def self.build(input)
        data = {}
        data['adMarkers'] = Builders::List____listOfHlsAdMarkers.build(input[:ad_markers]) unless input[:ad_markers].nil?
        data['baseUrlContent'] = input[:base_url_content] unless input[:base_url_content].nil?
        data['baseUrlContent1'] = input[:base_url_content1] unless input[:base_url_content1].nil?
        data['baseUrlManifest'] = input[:base_url_manifest] unless input[:base_url_manifest].nil?
        data['baseUrlManifest1'] = input[:base_url_manifest1] unless input[:base_url_manifest1].nil?
        data['captionLanguageMappings'] = Builders::List____listOfCaptionLanguageMapping.build(input[:caption_language_mappings]) unless input[:caption_language_mappings].nil?
        data['captionLanguageSetting'] = input[:caption_language_setting] unless input[:caption_language_setting].nil?
        data['clientCache'] = input[:client_cache] unless input[:client_cache].nil?
        data['codecSpecification'] = input[:codec_specification] unless input[:codec_specification].nil?
        data['constantIv'] = input[:constant_iv] unless input[:constant_iv].nil?
        data['destination'] = Builders::OutputLocationRef.build(input[:destination]) unless input[:destination].nil?
        data['directoryStructure'] = input[:directory_structure] unless input[:directory_structure].nil?
        data['discontinuityTags'] = input[:discontinuity_tags] unless input[:discontinuity_tags].nil?
        data['encryptionType'] = input[:encryption_type] unless input[:encryption_type].nil?
        data['hlsCdnSettings'] = Builders::HlsCdnSettings.build(input[:hls_cdn_settings]) unless input[:hls_cdn_settings].nil?
        data['hlsId3SegmentTagging'] = input[:hls_id3_segment_tagging] unless input[:hls_id3_segment_tagging].nil?
        data['iFrameOnlyPlaylists'] = input[:i_frame_only_playlists] unless input[:i_frame_only_playlists].nil?
        data['incompleteSegmentBehavior'] = input[:incomplete_segment_behavior] unless input[:incomplete_segment_behavior].nil?
        data['indexNSegments'] = input[:index_n_segments] unless input[:index_n_segments].nil?
        data['inputLossAction'] = input[:input_loss_action] unless input[:input_loss_action].nil?
        data['ivInManifest'] = input[:iv_in_manifest] unless input[:iv_in_manifest].nil?
        data['ivSource'] = input[:iv_source] unless input[:iv_source].nil?
        data['keepSegments'] = input[:keep_segments] unless input[:keep_segments].nil?
        data['keyFormat'] = input[:key_format] unless input[:key_format].nil?
        data['keyFormatVersions'] = input[:key_format_versions] unless input[:key_format_versions].nil?
        data['keyProviderSettings'] = Builders::KeyProviderSettings.build(input[:key_provider_settings]) unless input[:key_provider_settings].nil?
        data['manifestCompression'] = input[:manifest_compression] unless input[:manifest_compression].nil?
        data['manifestDurationFormat'] = input[:manifest_duration_format] unless input[:manifest_duration_format].nil?
        data['minSegmentLength'] = input[:min_segment_length] unless input[:min_segment_length].nil?
        data['mode'] = input[:mode] unless input[:mode].nil?
        data['outputSelection'] = input[:output_selection] unless input[:output_selection].nil?
        data['programDateTime'] = input[:program_date_time] unless input[:program_date_time].nil?
        data['programDateTimeClock'] = input[:program_date_time_clock] unless input[:program_date_time_clock].nil?
        data['programDateTimePeriod'] = input[:program_date_time_period] unless input[:program_date_time_period].nil?
        data['redundantManifest'] = input[:redundant_manifest] unless input[:redundant_manifest].nil?
        data['segmentLength'] = input[:segment_length] unless input[:segment_length].nil?
        data['segmentationMode'] = input[:segmentation_mode] unless input[:segmentation_mode].nil?
        data['segmentsPerSubdirectory'] = input[:segments_per_subdirectory] unless input[:segments_per_subdirectory].nil?
        data['streamInfResolution'] = input[:stream_inf_resolution] unless input[:stream_inf_resolution].nil?
        data['timedMetadataId3Frame'] = input[:timed_metadata_id3_frame] unless input[:timed_metadata_id3_frame].nil?
        data['timedMetadataId3Period'] = input[:timed_metadata_id3_period] unless input[:timed_metadata_id3_period].nil?
        data['timestampDeltaMilliseconds'] = input[:timestamp_delta_milliseconds] unless input[:timestamp_delta_milliseconds].nil?
        data['tsFileMode'] = input[:ts_file_mode] unless input[:ts_file_mode].nil?
        data
      end
    end

    # Structure Builder for KeyProviderSettings
    class KeyProviderSettings
      def self.build(input)
        data = {}
        data['staticKeySettings'] = Builders::StaticKeySettings.build(input[:static_key_settings]) unless input[:static_key_settings].nil?
        data
      end
    end

    # Structure Builder for StaticKeySettings
    class StaticKeySettings
      def self.build(input)
        data = {}
        data['keyProviderServer'] = Builders::InputLocation.build(input[:key_provider_server]) unless input[:key_provider_server].nil?
        data['staticKeyValue'] = input[:static_key_value] unless input[:static_key_value].nil?
        data
      end
    end

    # Structure Builder for HlsCdnSettings
    class HlsCdnSettings
      def self.build(input)
        data = {}
        data['hlsAkamaiSettings'] = Builders::HlsAkamaiSettings.build(input[:hls_akamai_settings]) unless input[:hls_akamai_settings].nil?
        data['hlsBasicPutSettings'] = Builders::HlsBasicPutSettings.build(input[:hls_basic_put_settings]) unless input[:hls_basic_put_settings].nil?
        data['hlsMediaStoreSettings'] = Builders::HlsMediaStoreSettings.build(input[:hls_media_store_settings]) unless input[:hls_media_store_settings].nil?
        data['hlsS3Settings'] = Builders::HlsS3Settings.build(input[:hls_s3_settings]) unless input[:hls_s3_settings].nil?
        data['hlsWebdavSettings'] = Builders::HlsWebdavSettings.build(input[:hls_webdav_settings]) unless input[:hls_webdav_settings].nil?
        data
      end
    end

    # Structure Builder for HlsWebdavSettings
    class HlsWebdavSettings
      def self.build(input)
        data = {}
        data['connectionRetryInterval'] = input[:connection_retry_interval] unless input[:connection_retry_interval].nil?
        data['filecacheDuration'] = input[:filecache_duration] unless input[:filecache_duration].nil?
        data['httpTransferMode'] = input[:http_transfer_mode] unless input[:http_transfer_mode].nil?
        data['numRetries'] = input[:num_retries] unless input[:num_retries].nil?
        data['restartDelay'] = input[:restart_delay] unless input[:restart_delay].nil?
        data
      end
    end

    # Structure Builder for HlsS3Settings
    class HlsS3Settings
      def self.build(input)
        data = {}
        data['cannedAcl'] = input[:canned_acl] unless input[:canned_acl].nil?
        data
      end
    end

    # Structure Builder for HlsMediaStoreSettings
    class HlsMediaStoreSettings
      def self.build(input)
        data = {}
        data['connectionRetryInterval'] = input[:connection_retry_interval] unless input[:connection_retry_interval].nil?
        data['filecacheDuration'] = input[:filecache_duration] unless input[:filecache_duration].nil?
        data['mediaStoreStorageClass'] = input[:media_store_storage_class] unless input[:media_store_storage_class].nil?
        data['numRetries'] = input[:num_retries] unless input[:num_retries].nil?
        data['restartDelay'] = input[:restart_delay] unless input[:restart_delay].nil?
        data
      end
    end

    # Structure Builder for HlsBasicPutSettings
    class HlsBasicPutSettings
      def self.build(input)
        data = {}
        data['connectionRetryInterval'] = input[:connection_retry_interval] unless input[:connection_retry_interval].nil?
        data['filecacheDuration'] = input[:filecache_duration] unless input[:filecache_duration].nil?
        data['numRetries'] = input[:num_retries] unless input[:num_retries].nil?
        data['restartDelay'] = input[:restart_delay] unless input[:restart_delay].nil?
        data
      end
    end

    # Structure Builder for HlsAkamaiSettings
    class HlsAkamaiSettings
      def self.build(input)
        data = {}
        data['connectionRetryInterval'] = input[:connection_retry_interval] unless input[:connection_retry_interval].nil?
        data['filecacheDuration'] = input[:filecache_duration] unless input[:filecache_duration].nil?
        data['httpTransferMode'] = input[:http_transfer_mode] unless input[:http_transfer_mode].nil?
        data['numRetries'] = input[:num_retries] unless input[:num_retries].nil?
        data['restartDelay'] = input[:restart_delay] unless input[:restart_delay].nil?
        data['salt'] = input[:salt] unless input[:salt].nil?
        data['token'] = input[:token] unless input[:token].nil?
        data
      end
    end

    # List Builder for __listOfCaptionLanguageMapping
    class List____listOfCaptionLanguageMapping
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::CaptionLanguageMapping.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CaptionLanguageMapping
    class CaptionLanguageMapping
      def self.build(input)
        data = {}
        data['captionChannel'] = input[:caption_channel] unless input[:caption_channel].nil?
        data['languageCode'] = input[:language_code] unless input[:language_code].nil?
        data['languageDescription'] = input[:language_description] unless input[:language_description].nil?
        data
      end
    end

    # List Builder for __listOfHlsAdMarkers
    class List____listOfHlsAdMarkers
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for FrameCaptureGroupSettings
    class FrameCaptureGroupSettings
      def self.build(input)
        data = {}
        data['destination'] = Builders::OutputLocationRef.build(input[:destination]) unless input[:destination].nil?
        data['frameCaptureCdnSettings'] = Builders::FrameCaptureCdnSettings.build(input[:frame_capture_cdn_settings]) unless input[:frame_capture_cdn_settings].nil?
        data
      end
    end

    # Structure Builder for FrameCaptureCdnSettings
    class FrameCaptureCdnSettings
      def self.build(input)
        data = {}
        data['frameCaptureS3Settings'] = Builders::FrameCaptureS3Settings.build(input[:frame_capture_s3_settings]) unless input[:frame_capture_s3_settings].nil?
        data
      end
    end

    # Structure Builder for FrameCaptureS3Settings
    class FrameCaptureS3Settings
      def self.build(input)
        data = {}
        data['cannedAcl'] = input[:canned_acl] unless input[:canned_acl].nil?
        data
      end
    end

    # Structure Builder for ArchiveGroupSettings
    class ArchiveGroupSettings
      def self.build(input)
        data = {}
        data['archiveCdnSettings'] = Builders::ArchiveCdnSettings.build(input[:archive_cdn_settings]) unless input[:archive_cdn_settings].nil?
        data['destination'] = Builders::OutputLocationRef.build(input[:destination]) unless input[:destination].nil?
        data['rolloverInterval'] = input[:rollover_interval] unless input[:rollover_interval].nil?
        data
      end
    end

    # Structure Builder for ArchiveCdnSettings
    class ArchiveCdnSettings
      def self.build(input)
        data = {}
        data['archiveS3Settings'] = Builders::ArchiveS3Settings.build(input[:archive_s3_settings]) unless input[:archive_s3_settings].nil?
        data
      end
    end

    # Structure Builder for ArchiveS3Settings
    class ArchiveS3Settings
      def self.build(input)
        data = {}
        data['cannedAcl'] = input[:canned_acl] unless input[:canned_acl].nil?
        data
      end
    end

    # Structure Builder for NielsenConfiguration
    class NielsenConfiguration
      def self.build(input)
        data = {}
        data['distributorId'] = input[:distributor_id] unless input[:distributor_id].nil?
        data['nielsenPcmToId3Tagging'] = input[:nielsen_pcm_to_id3_tagging] unless input[:nielsen_pcm_to_id3_tagging].nil?
        data
      end
    end

    # Structure Builder for MotionGraphicsConfiguration
    class MotionGraphicsConfiguration
      def self.build(input)
        data = {}
        data['motionGraphicsInsertion'] = input[:motion_graphics_insertion] unless input[:motion_graphics_insertion].nil?
        data['motionGraphicsSettings'] = Builders::MotionGraphicsSettings.build(input[:motion_graphics_settings]) unless input[:motion_graphics_settings].nil?
        data
      end
    end

    # Structure Builder for MotionGraphicsSettings
    class MotionGraphicsSettings
      def self.build(input)
        data = {}
        data['htmlMotionGraphicsSettings'] = Builders::HtmlMotionGraphicsSettings.build(input[:html_motion_graphics_settings]) unless input[:html_motion_graphics_settings].nil?
        data
      end
    end

    # Structure Builder for HtmlMotionGraphicsSettings
    class HtmlMotionGraphicsSettings
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for GlobalConfiguration
    class GlobalConfiguration
      def self.build(input)
        data = {}
        data['initialAudioGain'] = input[:initial_audio_gain] unless input[:initial_audio_gain].nil?
        data['inputEndAction'] = input[:input_end_action] unless input[:input_end_action].nil?
        data['inputLossBehavior'] = Builders::InputLossBehavior.build(input[:input_loss_behavior]) unless input[:input_loss_behavior].nil?
        data['outputLockingMode'] = input[:output_locking_mode] unless input[:output_locking_mode].nil?
        data['outputTimingSource'] = input[:output_timing_source] unless input[:output_timing_source].nil?
        data['supportLowFramerateInputs'] = input[:support_low_framerate_inputs] unless input[:support_low_framerate_inputs].nil?
        data
      end
    end

    # Structure Builder for InputLossBehavior
    class InputLossBehavior
      def self.build(input)
        data = {}
        data['blackFrameMsec'] = input[:black_frame_msec] unless input[:black_frame_msec].nil?
        data['inputLossImageColor'] = input[:input_loss_image_color] unless input[:input_loss_image_color].nil?
        data['inputLossImageSlate'] = Builders::InputLocation.build(input[:input_loss_image_slate]) unless input[:input_loss_image_slate].nil?
        data['inputLossImageType'] = input[:input_loss_image_type] unless input[:input_loss_image_type].nil?
        data['repeatFrameMsec'] = input[:repeat_frame_msec] unless input[:repeat_frame_msec].nil?
        data
      end
    end

    # Structure Builder for FeatureActivations
    class FeatureActivations
      def self.build(input)
        data = {}
        data['inputPrepareScheduleActions'] = input[:input_prepare_schedule_actions] unless input[:input_prepare_schedule_actions].nil?
        data
      end
    end

    # List Builder for __listOfCaptionDescription
    class List____listOfCaptionDescription
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::CaptionDescription.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CaptionDescription
    class CaptionDescription
      def self.build(input)
        data = {}
        data['captionSelectorName'] = input[:caption_selector_name] unless input[:caption_selector_name].nil?
        data['destinationSettings'] = Builders::CaptionDestinationSettings.build(input[:destination_settings]) unless input[:destination_settings].nil?
        data['languageCode'] = input[:language_code] unless input[:language_code].nil?
        data['languageDescription'] = input[:language_description] unless input[:language_description].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data
      end
    end

    # Structure Builder for CaptionDestinationSettings
    class CaptionDestinationSettings
      def self.build(input)
        data = {}
        data['aribDestinationSettings'] = Builders::AribDestinationSettings.build(input[:arib_destination_settings]) unless input[:arib_destination_settings].nil?
        data['burnInDestinationSettings'] = Builders::BurnInDestinationSettings.build(input[:burn_in_destination_settings]) unless input[:burn_in_destination_settings].nil?
        data['dvbSubDestinationSettings'] = Builders::DvbSubDestinationSettings.build(input[:dvb_sub_destination_settings]) unless input[:dvb_sub_destination_settings].nil?
        data['ebuTtDDestinationSettings'] = Builders::EbuTtDDestinationSettings.build(input[:ebu_tt_d_destination_settings]) unless input[:ebu_tt_d_destination_settings].nil?
        data['embeddedDestinationSettings'] = Builders::EmbeddedDestinationSettings.build(input[:embedded_destination_settings]) unless input[:embedded_destination_settings].nil?
        data['embeddedPlusScte20DestinationSettings'] = Builders::EmbeddedPlusScte20DestinationSettings.build(input[:embedded_plus_scte20_destination_settings]) unless input[:embedded_plus_scte20_destination_settings].nil?
        data['rtmpCaptionInfoDestinationSettings'] = Builders::RtmpCaptionInfoDestinationSettings.build(input[:rtmp_caption_info_destination_settings]) unless input[:rtmp_caption_info_destination_settings].nil?
        data['scte20PlusEmbeddedDestinationSettings'] = Builders::Scte20PlusEmbeddedDestinationSettings.build(input[:scte20_plus_embedded_destination_settings]) unless input[:scte20_plus_embedded_destination_settings].nil?
        data['scte27DestinationSettings'] = Builders::Scte27DestinationSettings.build(input[:scte27_destination_settings]) unless input[:scte27_destination_settings].nil?
        data['smpteTtDestinationSettings'] = Builders::SmpteTtDestinationSettings.build(input[:smpte_tt_destination_settings]) unless input[:smpte_tt_destination_settings].nil?
        data['teletextDestinationSettings'] = Builders::TeletextDestinationSettings.build(input[:teletext_destination_settings]) unless input[:teletext_destination_settings].nil?
        data['ttmlDestinationSettings'] = Builders::TtmlDestinationSettings.build(input[:ttml_destination_settings]) unless input[:ttml_destination_settings].nil?
        data['webvttDestinationSettings'] = Builders::WebvttDestinationSettings.build(input[:webvtt_destination_settings]) unless input[:webvtt_destination_settings].nil?
        data
      end
    end

    # Structure Builder for WebvttDestinationSettings
    class WebvttDestinationSettings
      def self.build(input)
        data = {}
        data['styleControl'] = input[:style_control] unless input[:style_control].nil?
        data
      end
    end

    # Structure Builder for TtmlDestinationSettings
    class TtmlDestinationSettings
      def self.build(input)
        data = {}
        data['styleControl'] = input[:style_control] unless input[:style_control].nil?
        data
      end
    end

    # Structure Builder for TeletextDestinationSettings
    class TeletextDestinationSettings
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for SmpteTtDestinationSettings
    class SmpteTtDestinationSettings
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for Scte27DestinationSettings
    class Scte27DestinationSettings
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for Scte20PlusEmbeddedDestinationSettings
    class Scte20PlusEmbeddedDestinationSettings
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for RtmpCaptionInfoDestinationSettings
    class RtmpCaptionInfoDestinationSettings
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for EmbeddedPlusScte20DestinationSettings
    class EmbeddedPlusScte20DestinationSettings
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for EmbeddedDestinationSettings
    class EmbeddedDestinationSettings
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for EbuTtDDestinationSettings
    class EbuTtDDestinationSettings
      def self.build(input)
        data = {}
        data['copyrightHolder'] = input[:copyright_holder] unless input[:copyright_holder].nil?
        data['fillLineGap'] = input[:fill_line_gap] unless input[:fill_line_gap].nil?
        data['fontFamily'] = input[:font_family] unless input[:font_family].nil?
        data['styleControl'] = input[:style_control] unless input[:style_control].nil?
        data
      end
    end

    # Structure Builder for DvbSubDestinationSettings
    class DvbSubDestinationSettings
      def self.build(input)
        data = {}
        data['alignment'] = input[:alignment] unless input[:alignment].nil?
        data['backgroundColor'] = input[:background_color] unless input[:background_color].nil?
        data['backgroundOpacity'] = input[:background_opacity] unless input[:background_opacity].nil?
        data['font'] = Builders::InputLocation.build(input[:font]) unless input[:font].nil?
        data['fontColor'] = input[:font_color] unless input[:font_color].nil?
        data['fontOpacity'] = input[:font_opacity] unless input[:font_opacity].nil?
        data['fontResolution'] = input[:font_resolution] unless input[:font_resolution].nil?
        data['fontSize'] = input[:font_size] unless input[:font_size].nil?
        data['outlineColor'] = input[:outline_color] unless input[:outline_color].nil?
        data['outlineSize'] = input[:outline_size] unless input[:outline_size].nil?
        data['shadowColor'] = input[:shadow_color] unless input[:shadow_color].nil?
        data['shadowOpacity'] = input[:shadow_opacity] unless input[:shadow_opacity].nil?
        data['shadowXOffset'] = input[:shadow_x_offset] unless input[:shadow_x_offset].nil?
        data['shadowYOffset'] = input[:shadow_y_offset] unless input[:shadow_y_offset].nil?
        data['teletextGridControl'] = input[:teletext_grid_control] unless input[:teletext_grid_control].nil?
        data['xPosition'] = input[:x_position] unless input[:x_position].nil?
        data['yPosition'] = input[:y_position] unless input[:y_position].nil?
        data
      end
    end

    # Structure Builder for BurnInDestinationSettings
    class BurnInDestinationSettings
      def self.build(input)
        data = {}
        data['alignment'] = input[:alignment] unless input[:alignment].nil?
        data['backgroundColor'] = input[:background_color] unless input[:background_color].nil?
        data['backgroundOpacity'] = input[:background_opacity] unless input[:background_opacity].nil?
        data['font'] = Builders::InputLocation.build(input[:font]) unless input[:font].nil?
        data['fontColor'] = input[:font_color] unless input[:font_color].nil?
        data['fontOpacity'] = input[:font_opacity] unless input[:font_opacity].nil?
        data['fontResolution'] = input[:font_resolution] unless input[:font_resolution].nil?
        data['fontSize'] = input[:font_size] unless input[:font_size].nil?
        data['outlineColor'] = input[:outline_color] unless input[:outline_color].nil?
        data['outlineSize'] = input[:outline_size] unless input[:outline_size].nil?
        data['shadowColor'] = input[:shadow_color] unless input[:shadow_color].nil?
        data['shadowOpacity'] = input[:shadow_opacity] unless input[:shadow_opacity].nil?
        data['shadowXOffset'] = input[:shadow_x_offset] unless input[:shadow_x_offset].nil?
        data['shadowYOffset'] = input[:shadow_y_offset] unless input[:shadow_y_offset].nil?
        data['teletextGridControl'] = input[:teletext_grid_control] unless input[:teletext_grid_control].nil?
        data['xPosition'] = input[:x_position] unless input[:x_position].nil?
        data['yPosition'] = input[:y_position] unless input[:y_position].nil?
        data
      end
    end

    # Structure Builder for AribDestinationSettings
    class AribDestinationSettings
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for BlackoutSlate
    class BlackoutSlate
      def self.build(input)
        data = {}
        data['blackoutSlateImage'] = Builders::InputLocation.build(input[:blackout_slate_image]) unless input[:blackout_slate_image].nil?
        data['networkEndBlackout'] = input[:network_end_blackout] unless input[:network_end_blackout].nil?
        data['networkEndBlackoutImage'] = Builders::InputLocation.build(input[:network_end_blackout_image]) unless input[:network_end_blackout_image].nil?
        data['networkId'] = input[:network_id] unless input[:network_id].nil?
        data['state'] = input[:state] unless input[:state].nil?
        data
      end
    end

    # Structure Builder for AvailConfiguration
    class AvailConfiguration
      def self.build(input)
        data = {}
        data['availSettings'] = Builders::AvailSettings.build(input[:avail_settings]) unless input[:avail_settings].nil?
        data
      end
    end

    # Structure Builder for AvailSettings
    class AvailSettings
      def self.build(input)
        data = {}
        data['scte35SpliceInsert'] = Builders::Scte35SpliceInsert.build(input[:scte35_splice_insert]) unless input[:scte35_splice_insert].nil?
        data['scte35TimeSignalApos'] = Builders::Scte35TimeSignalApos.build(input[:scte35_time_signal_apos]) unless input[:scte35_time_signal_apos].nil?
        data
      end
    end

    # Structure Builder for Scte35TimeSignalApos
    class Scte35TimeSignalApos
      def self.build(input)
        data = {}
        data['adAvailOffset'] = input[:ad_avail_offset] unless input[:ad_avail_offset].nil?
        data['noRegionalBlackoutFlag'] = input[:no_regional_blackout_flag] unless input[:no_regional_blackout_flag].nil?
        data['webDeliveryAllowedFlag'] = input[:web_delivery_allowed_flag] unless input[:web_delivery_allowed_flag].nil?
        data
      end
    end

    # Structure Builder for Scte35SpliceInsert
    class Scte35SpliceInsert
      def self.build(input)
        data = {}
        data['adAvailOffset'] = input[:ad_avail_offset] unless input[:ad_avail_offset].nil?
        data['noRegionalBlackoutFlag'] = input[:no_regional_blackout_flag] unless input[:no_regional_blackout_flag].nil?
        data['webDeliveryAllowedFlag'] = input[:web_delivery_allowed_flag] unless input[:web_delivery_allowed_flag].nil?
        data
      end
    end

    # Structure Builder for AvailBlanking
    class AvailBlanking
      def self.build(input)
        data = {}
        data['availBlankingImage'] = Builders::InputLocation.build(input[:avail_blanking_image]) unless input[:avail_blanking_image].nil?
        data['state'] = input[:state] unless input[:state].nil?
        data
      end
    end

    # List Builder for __listOfAudioDescription
    class List____listOfAudioDescription
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AudioDescription.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AudioDescription
    class AudioDescription
      def self.build(input)
        data = {}
        data['audioNormalizationSettings'] = Builders::AudioNormalizationSettings.build(input[:audio_normalization_settings]) unless input[:audio_normalization_settings].nil?
        data['audioSelectorName'] = input[:audio_selector_name] unless input[:audio_selector_name].nil?
        data['audioType'] = input[:audio_type] unless input[:audio_type].nil?
        data['audioTypeControl'] = input[:audio_type_control] unless input[:audio_type_control].nil?
        data['audioWatermarkingSettings'] = Builders::AudioWatermarkSettings.build(input[:audio_watermarking_settings]) unless input[:audio_watermarking_settings].nil?
        data['codecSettings'] = Builders::AudioCodecSettings.build(input[:codec_settings]) unless input[:codec_settings].nil?
        data['languageCode'] = input[:language_code] unless input[:language_code].nil?
        data['languageCodeControl'] = input[:language_code_control] unless input[:language_code_control].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['remixSettings'] = Builders::RemixSettings.build(input[:remix_settings]) unless input[:remix_settings].nil?
        data['streamName'] = input[:stream_name] unless input[:stream_name].nil?
        data
      end
    end

    # Structure Builder for RemixSettings
    class RemixSettings
      def self.build(input)
        data = {}
        data['channelMappings'] = Builders::List____listOfAudioChannelMapping.build(input[:channel_mappings]) unless input[:channel_mappings].nil?
        data['channelsIn'] = input[:channels_in] unless input[:channels_in].nil?
        data['channelsOut'] = input[:channels_out] unless input[:channels_out].nil?
        data
      end
    end

    # List Builder for __listOfAudioChannelMapping
    class List____listOfAudioChannelMapping
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AudioChannelMapping.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AudioChannelMapping
    class AudioChannelMapping
      def self.build(input)
        data = {}
        data['inputChannelLevels'] = Builders::List____listOfInputChannelLevel.build(input[:input_channel_levels]) unless input[:input_channel_levels].nil?
        data['outputChannel'] = input[:output_channel] unless input[:output_channel].nil?
        data
      end
    end

    # List Builder for __listOfInputChannelLevel
    class List____listOfInputChannelLevel
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::InputChannelLevel.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for InputChannelLevel
    class InputChannelLevel
      def self.build(input)
        data = {}
        data['gain'] = input[:gain] unless input[:gain].nil?
        data['inputChannel'] = input[:input_channel] unless input[:input_channel].nil?
        data
      end
    end

    # Structure Builder for AudioCodecSettings
    class AudioCodecSettings
      def self.build(input)
        data = {}
        data['aacSettings'] = Builders::AacSettings.build(input[:aac_settings]) unless input[:aac_settings].nil?
        data['ac3Settings'] = Builders::Ac3Settings.build(input[:ac3_settings]) unless input[:ac3_settings].nil?
        data['eac3Settings'] = Builders::Eac3Settings.build(input[:eac3_settings]) unless input[:eac3_settings].nil?
        data['mp2Settings'] = Builders::Mp2Settings.build(input[:mp2_settings]) unless input[:mp2_settings].nil?
        data['passThroughSettings'] = Builders::PassThroughSettings.build(input[:pass_through_settings]) unless input[:pass_through_settings].nil?
        data['wavSettings'] = Builders::WavSettings.build(input[:wav_settings]) unless input[:wav_settings].nil?
        data
      end
    end

    # Structure Builder for WavSettings
    class WavSettings
      def self.build(input)
        data = {}
        data['bitDepth'] = Hearth::NumberHelper.serialize(input[:bit_depth]) unless input[:bit_depth].nil?
        data['codingMode'] = input[:coding_mode] unless input[:coding_mode].nil?
        data['sampleRate'] = Hearth::NumberHelper.serialize(input[:sample_rate]) unless input[:sample_rate].nil?
        data
      end
    end

    # Structure Builder for PassThroughSettings
    class PassThroughSettings
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for Mp2Settings
    class Mp2Settings
      def self.build(input)
        data = {}
        data['bitrate'] = Hearth::NumberHelper.serialize(input[:bitrate]) unless input[:bitrate].nil?
        data['codingMode'] = input[:coding_mode] unless input[:coding_mode].nil?
        data['sampleRate'] = Hearth::NumberHelper.serialize(input[:sample_rate]) unless input[:sample_rate].nil?
        data
      end
    end

    # Structure Builder for Eac3Settings
    class Eac3Settings
      def self.build(input)
        data = {}
        data['attenuationControl'] = input[:attenuation_control] unless input[:attenuation_control].nil?
        data['bitrate'] = Hearth::NumberHelper.serialize(input[:bitrate]) unless input[:bitrate].nil?
        data['bitstreamMode'] = input[:bitstream_mode] unless input[:bitstream_mode].nil?
        data['codingMode'] = input[:coding_mode] unless input[:coding_mode].nil?
        data['dcFilter'] = input[:dc_filter] unless input[:dc_filter].nil?
        data['dialnorm'] = input[:dialnorm] unless input[:dialnorm].nil?
        data['drcLine'] = input[:drc_line] unless input[:drc_line].nil?
        data['drcRf'] = input[:drc_rf] unless input[:drc_rf].nil?
        data['lfeControl'] = input[:lfe_control] unless input[:lfe_control].nil?
        data['lfeFilter'] = input[:lfe_filter] unless input[:lfe_filter].nil?
        data['loRoCenterMixLevel'] = Hearth::NumberHelper.serialize(input[:lo_ro_center_mix_level]) unless input[:lo_ro_center_mix_level].nil?
        data['loRoSurroundMixLevel'] = Hearth::NumberHelper.serialize(input[:lo_ro_surround_mix_level]) unless input[:lo_ro_surround_mix_level].nil?
        data['ltRtCenterMixLevel'] = Hearth::NumberHelper.serialize(input[:lt_rt_center_mix_level]) unless input[:lt_rt_center_mix_level].nil?
        data['ltRtSurroundMixLevel'] = Hearth::NumberHelper.serialize(input[:lt_rt_surround_mix_level]) unless input[:lt_rt_surround_mix_level].nil?
        data['metadataControl'] = input[:metadata_control] unless input[:metadata_control].nil?
        data['passthroughControl'] = input[:passthrough_control] unless input[:passthrough_control].nil?
        data['phaseControl'] = input[:phase_control] unless input[:phase_control].nil?
        data['stereoDownmix'] = input[:stereo_downmix] unless input[:stereo_downmix].nil?
        data['surroundExMode'] = input[:surround_ex_mode] unless input[:surround_ex_mode].nil?
        data['surroundMode'] = input[:surround_mode] unless input[:surround_mode].nil?
        data
      end
    end

    # Structure Builder for Ac3Settings
    class Ac3Settings
      def self.build(input)
        data = {}
        data['bitrate'] = Hearth::NumberHelper.serialize(input[:bitrate]) unless input[:bitrate].nil?
        data['bitstreamMode'] = input[:bitstream_mode] unless input[:bitstream_mode].nil?
        data['codingMode'] = input[:coding_mode] unless input[:coding_mode].nil?
        data['dialnorm'] = input[:dialnorm] unless input[:dialnorm].nil?
        data['drcProfile'] = input[:drc_profile] unless input[:drc_profile].nil?
        data['lfeFilter'] = input[:lfe_filter] unless input[:lfe_filter].nil?
        data['metadataControl'] = input[:metadata_control] unless input[:metadata_control].nil?
        data
      end
    end

    # Structure Builder for AacSettings
    class AacSettings
      def self.build(input)
        data = {}
        data['bitrate'] = Hearth::NumberHelper.serialize(input[:bitrate]) unless input[:bitrate].nil?
        data['codingMode'] = input[:coding_mode] unless input[:coding_mode].nil?
        data['inputType'] = input[:input_type] unless input[:input_type].nil?
        data['profile'] = input[:profile] unless input[:profile].nil?
        data['rateControlMode'] = input[:rate_control_mode] unless input[:rate_control_mode].nil?
        data['rawFormat'] = input[:raw_format] unless input[:raw_format].nil?
        data['sampleRate'] = Hearth::NumberHelper.serialize(input[:sample_rate]) unless input[:sample_rate].nil?
        data['spec'] = input[:spec] unless input[:spec].nil?
        data['vbrQuality'] = input[:vbr_quality] unless input[:vbr_quality].nil?
        data
      end
    end

    # Structure Builder for AudioWatermarkSettings
    class AudioWatermarkSettings
      def self.build(input)
        data = {}
        data['nielsenWatermarksSettings'] = Builders::NielsenWatermarksSettings.build(input[:nielsen_watermarks_settings]) unless input[:nielsen_watermarks_settings].nil?
        data
      end
    end

    # Structure Builder for NielsenWatermarksSettings
    class NielsenWatermarksSettings
      def self.build(input)
        data = {}
        data['nielsenCbetSettings'] = Builders::NielsenCBET.build(input[:nielsen_cbet_settings]) unless input[:nielsen_cbet_settings].nil?
        data['nielsenDistributionType'] = input[:nielsen_distribution_type] unless input[:nielsen_distribution_type].nil?
        data['nielsenNaesIiNwSettings'] = Builders::NielsenNaesIiNw.build(input[:nielsen_naes_ii_nw_settings]) unless input[:nielsen_naes_ii_nw_settings].nil?
        data
      end
    end

    # Structure Builder for NielsenNaesIiNw
    class NielsenNaesIiNw
      def self.build(input)
        data = {}
        data['checkDigitString'] = input[:check_digit_string] unless input[:check_digit_string].nil?
        data['sid'] = Hearth::NumberHelper.serialize(input[:sid]) unless input[:sid].nil?
        data
      end
    end

    # Structure Builder for NielsenCBET
    class NielsenCBET
      def self.build(input)
        data = {}
        data['cbetCheckDigitString'] = input[:cbet_check_digit_string] unless input[:cbet_check_digit_string].nil?
        data['cbetStepaside'] = input[:cbet_stepaside] unless input[:cbet_stepaside].nil?
        data['csid'] = input[:csid] unless input[:csid].nil?
        data
      end
    end

    # Structure Builder for AudioNormalizationSettings
    class AudioNormalizationSettings
      def self.build(input)
        data = {}
        data['algorithm'] = input[:algorithm] unless input[:algorithm].nil?
        data['algorithmControl'] = input[:algorithm_control] unless input[:algorithm_control].nil?
        data['targetLkfs'] = Hearth::NumberHelper.serialize(input[:target_lkfs]) unless input[:target_lkfs].nil?
        data
      end
    end

    # List Builder for __listOfOutputDestination
    class List____listOfOutputDestination
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::OutputDestination.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for OutputDestination
    class OutputDestination
      def self.build(input)
        data = {}
        data['id'] = input[:id] unless input[:id].nil?
        data['mediaPackageSettings'] = Builders::List____listOfMediaPackageOutputDestinationSettings.build(input[:media_package_settings]) unless input[:media_package_settings].nil?
        data['multiplexSettings'] = Builders::MultiplexProgramChannelDestinationSettings.build(input[:multiplex_settings]) unless input[:multiplex_settings].nil?
        data['settings'] = Builders::List____listOfOutputDestinationSettings.build(input[:settings]) unless input[:settings].nil?
        data
      end
    end

    # List Builder for __listOfOutputDestinationSettings
    class List____listOfOutputDestinationSettings
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::OutputDestinationSettings.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for OutputDestinationSettings
    class OutputDestinationSettings
      def self.build(input)
        data = {}
        data['passwordParam'] = input[:password_param] unless input[:password_param].nil?
        data['streamName'] = input[:stream_name] unless input[:stream_name].nil?
        data['url'] = input[:url] unless input[:url].nil?
        data['username'] = input[:username] unless input[:username].nil?
        data
      end
    end

    # Structure Builder for MultiplexProgramChannelDestinationSettings
    class MultiplexProgramChannelDestinationSettings
      def self.build(input)
        data = {}
        data['multiplexId'] = input[:multiplex_id] unless input[:multiplex_id].nil?
        data['programName'] = input[:program_name] unless input[:program_name].nil?
        data
      end
    end

    # List Builder for __listOfMediaPackageOutputDestinationSettings
    class List____listOfMediaPackageOutputDestinationSettings
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::MediaPackageOutputDestinationSettings.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for MediaPackageOutputDestinationSettings
    class MediaPackageOutputDestinationSettings
      def self.build(input)
        data = {}
        data['channelId'] = input[:channel_id] unless input[:channel_id].nil?
        data
      end
    end

    # Structure Builder for CdiInputSpecification
    class CdiInputSpecification
      def self.build(input)
        data = {}
        data['resolution'] = input[:resolution] unless input[:resolution].nil?
        data
      end
    end

    # Operation Builder for CreateInput
    class CreateInput
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/prod/inputs')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['destinations'] = Builders::List____listOfInputDestinationRequest.build(input[:destinations]) unless input[:destinations].nil?
        data['inputDevices'] = Builders::List____listOfInputDeviceSettings.build(input[:input_devices]) unless input[:input_devices].nil?
        data['inputSecurityGroups'] = Builders::List____listOf__string.build(input[:input_security_groups]) unless input[:input_security_groups].nil?
        data['mediaConnectFlows'] = Builders::List____listOfMediaConnectFlowRequest.build(input[:media_connect_flows]) unless input[:media_connect_flows].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['requestId'] = input[:request_id] unless input[:request_id].nil?
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['sources'] = Builders::List____listOfInputSourceRequest.build(input[:sources]) unless input[:sources].nil?
        data['tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        data['type'] = input[:type] unless input[:type].nil?
        data['vpc'] = Builders::InputVpcRequest.build(input[:vpc]) unless input[:vpc].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for InputVpcRequest
    class InputVpcRequest
      def self.build(input)
        data = {}
        data['securityGroupIds'] = Builders::List____listOf__string.build(input[:security_group_ids]) unless input[:security_group_ids].nil?
        data['subnetIds'] = Builders::List____listOf__string.build(input[:subnet_ids]) unless input[:subnet_ids].nil?
        data
      end
    end

    # List Builder for __listOfInputSourceRequest
    class List____listOfInputSourceRequest
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::InputSourceRequest.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for InputSourceRequest
    class InputSourceRequest
      def self.build(input)
        data = {}
        data['passwordParam'] = input[:password_param] unless input[:password_param].nil?
        data['url'] = input[:url] unless input[:url].nil?
        data['username'] = input[:username] unless input[:username].nil?
        data
      end
    end

    # List Builder for __listOfMediaConnectFlowRequest
    class List____listOfMediaConnectFlowRequest
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::MediaConnectFlowRequest.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for MediaConnectFlowRequest
    class MediaConnectFlowRequest
      def self.build(input)
        data = {}
        data['flowArn'] = input[:flow_arn] unless input[:flow_arn].nil?
        data
      end
    end

    # List Builder for __listOfInputDeviceSettings
    class List____listOfInputDeviceSettings
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::InputDeviceSettings.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for InputDeviceSettings
    class InputDeviceSettings
      def self.build(input)
        data = {}
        data['id'] = input[:id] unless input[:id].nil?
        data
      end
    end

    # List Builder for __listOfInputDestinationRequest
    class List____listOfInputDestinationRequest
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::InputDestinationRequest.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for InputDestinationRequest
    class InputDestinationRequest
      def self.build(input)
        data = {}
        data['streamName'] = input[:stream_name] unless input[:stream_name].nil?
        data
      end
    end

    # Operation Builder for CreateInputSecurityGroup
    class CreateInputSecurityGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/prod/inputSecurityGroups')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        data['whitelistRules'] = Builders::List____listOfInputWhitelistRuleCidr.build(input[:whitelist_rules]) unless input[:whitelist_rules].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for __listOfInputWhitelistRuleCidr
    class List____listOfInputWhitelistRuleCidr
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::InputWhitelistRuleCidr.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for InputWhitelistRuleCidr
    class InputWhitelistRuleCidr
      def self.build(input)
        data = {}
        data['cidr'] = input[:cidr] unless input[:cidr].nil?
        data
      end
    end

    # Operation Builder for CreateMultiplex
    class CreateMultiplex
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/prod/multiplexes')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['availabilityZones'] = Builders::List____listOf__string.build(input[:availability_zones]) unless input[:availability_zones].nil?
        data['multiplexSettings'] = Builders::MultiplexSettings.build(input[:multiplex_settings]) unless input[:multiplex_settings].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['requestId'] = input[:request_id] unless input[:request_id].nil?
        data['tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for MultiplexSettings
    class MultiplexSettings
      def self.build(input)
        data = {}
        data['maximumVideoBufferDelayMilliseconds'] = input[:maximum_video_buffer_delay_milliseconds] unless input[:maximum_video_buffer_delay_milliseconds].nil?
        data['transportStreamBitrate'] = input[:transport_stream_bitrate] unless input[:transport_stream_bitrate].nil?
        data['transportStreamId'] = input[:transport_stream_id] unless input[:transport_stream_id].nil?
        data['transportStreamReservedBitrate'] = input[:transport_stream_reserved_bitrate] unless input[:transport_stream_reserved_bitrate].nil?
        data
      end
    end

    # Operation Builder for CreateMultiplexProgram
    class CreateMultiplexProgram
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:multiplex_id].to_s.empty?
          raise ArgumentError, "HTTP label :multiplex_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/prod/multiplexes/%<MultiplexId>s/programs',
            MultiplexId: Hearth::HTTP.uri_escape(input[:multiplex_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['multiplexProgramSettings'] = Builders::MultiplexProgramSettings.build(input[:multiplex_program_settings]) unless input[:multiplex_program_settings].nil?
        data['programName'] = input[:program_name] unless input[:program_name].nil?
        data['requestId'] = input[:request_id] unless input[:request_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for MultiplexProgramSettings
    class MultiplexProgramSettings
      def self.build(input)
        data = {}
        data['preferredChannelPipeline'] = input[:preferred_channel_pipeline] unless input[:preferred_channel_pipeline].nil?
        data['programNumber'] = input[:program_number] unless input[:program_number].nil?
        data['serviceDescriptor'] = Builders::MultiplexProgramServiceDescriptor.build(input[:service_descriptor]) unless input[:service_descriptor].nil?
        data['videoSettings'] = Builders::MultiplexVideoSettings.build(input[:video_settings]) unless input[:video_settings].nil?
        data
      end
    end

    # Structure Builder for MultiplexVideoSettings
    class MultiplexVideoSettings
      def self.build(input)
        data = {}
        data['constantBitrate'] = input[:constant_bitrate] unless input[:constant_bitrate].nil?
        data['statmuxSettings'] = Builders::MultiplexStatmuxVideoSettings.build(input[:statmux_settings]) unless input[:statmux_settings].nil?
        data
      end
    end

    # Structure Builder for MultiplexStatmuxVideoSettings
    class MultiplexStatmuxVideoSettings
      def self.build(input)
        data = {}
        data['maximumBitrate'] = input[:maximum_bitrate] unless input[:maximum_bitrate].nil?
        data['minimumBitrate'] = input[:minimum_bitrate] unless input[:minimum_bitrate].nil?
        data['priority'] = input[:priority] unless input[:priority].nil?
        data
      end
    end

    # Structure Builder for MultiplexProgramServiceDescriptor
    class MultiplexProgramServiceDescriptor
      def self.build(input)
        data = {}
        data['providerName'] = input[:provider_name] unless input[:provider_name].nil?
        data['serviceName'] = input[:service_name] unless input[:service_name].nil?
        data
      end
    end

    # Operation Builder for CreatePartnerInput
    class CreatePartnerInput
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:input_id].to_s.empty?
          raise ArgumentError, "HTTP label :input_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/prod/inputs/%<InputId>s/partners',
            InputId: Hearth::HTTP.uri_escape(input[:input_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['requestId'] = input[:request_id] unless input[:request_id].nil?
        data['tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateTags
    class CreateTags
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/prod/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteChannel
    class DeleteChannel
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:channel_id].to_s.empty?
          raise ArgumentError, "HTTP label :channel_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/prod/channels/%<ChannelId>s',
            ChannelId: Hearth::HTTP.uri_escape(input[:channel_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteInput
    class DeleteInput
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:input_id].to_s.empty?
          raise ArgumentError, "HTTP label :input_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/prod/inputs/%<InputId>s',
            InputId: Hearth::HTTP.uri_escape(input[:input_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteInputSecurityGroup
    class DeleteInputSecurityGroup
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:input_security_group_id].to_s.empty?
          raise ArgumentError, "HTTP label :input_security_group_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/prod/inputSecurityGroups/%<InputSecurityGroupId>s',
            InputSecurityGroupId: Hearth::HTTP.uri_escape(input[:input_security_group_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteMultiplex
    class DeleteMultiplex
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:multiplex_id].to_s.empty?
          raise ArgumentError, "HTTP label :multiplex_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/prod/multiplexes/%<MultiplexId>s',
            MultiplexId: Hearth::HTTP.uri_escape(input[:multiplex_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteMultiplexProgram
    class DeleteMultiplexProgram
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:multiplex_id].to_s.empty?
          raise ArgumentError, "HTTP label :multiplex_id cannot be nil or empty."
        end
        if input[:program_name].to_s.empty?
          raise ArgumentError, "HTTP label :program_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/prod/multiplexes/%<MultiplexId>s/programs/%<ProgramName>s',
            MultiplexId: Hearth::HTTP.uri_escape(input[:multiplex_id].to_s),
            ProgramName: Hearth::HTTP.uri_escape(input[:program_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteReservation
    class DeleteReservation
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:reservation_id].to_s.empty?
          raise ArgumentError, "HTTP label :reservation_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/prod/reservations/%<ReservationId>s',
            ReservationId: Hearth::HTTP.uri_escape(input[:reservation_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteSchedule
    class DeleteSchedule
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:channel_id].to_s.empty?
          raise ArgumentError, "HTTP label :channel_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/prod/channels/%<ChannelId>s/schedule',
            ChannelId: Hearth::HTTP.uri_escape(input[:channel_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteTags
    class DeleteTags
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/prod/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        unless input[:tag_keys].nil? || input[:tag_keys].empty?
          params['tagKeys'] = input[:tag_keys].map do |value|
            value.to_s unless value.nil?
          end
        end
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeChannel
    class DescribeChannel
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:channel_id].to_s.empty?
          raise ArgumentError, "HTTP label :channel_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/prod/channels/%<ChannelId>s',
            ChannelId: Hearth::HTTP.uri_escape(input[:channel_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeInput
    class DescribeInput
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:input_id].to_s.empty?
          raise ArgumentError, "HTTP label :input_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/prod/inputs/%<InputId>s',
            InputId: Hearth::HTTP.uri_escape(input[:input_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeInputDevice
    class DescribeInputDevice
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:input_device_id].to_s.empty?
          raise ArgumentError, "HTTP label :input_device_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/prod/inputDevices/%<InputDeviceId>s',
            InputDeviceId: Hearth::HTTP.uri_escape(input[:input_device_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeInputDeviceThumbnail
    class DescribeInputDeviceThumbnail
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:input_device_id].to_s.empty?
          raise ArgumentError, "HTTP label :input_device_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/prod/inputDevices/%<InputDeviceId>s/thumbnailData',
            InputDeviceId: Hearth::HTTP.uri_escape(input[:input_device_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['accept'] = input[:accept] unless input[:accept].nil? || input[:accept].empty?
      end
    end

    # Operation Builder for DescribeInputSecurityGroup
    class DescribeInputSecurityGroup
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:input_security_group_id].to_s.empty?
          raise ArgumentError, "HTTP label :input_security_group_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/prod/inputSecurityGroups/%<InputSecurityGroupId>s',
            InputSecurityGroupId: Hearth::HTTP.uri_escape(input[:input_security_group_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeMultiplex
    class DescribeMultiplex
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:multiplex_id].to_s.empty?
          raise ArgumentError, "HTTP label :multiplex_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/prod/multiplexes/%<MultiplexId>s',
            MultiplexId: Hearth::HTTP.uri_escape(input[:multiplex_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeMultiplexProgram
    class DescribeMultiplexProgram
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:multiplex_id].to_s.empty?
          raise ArgumentError, "HTTP label :multiplex_id cannot be nil or empty."
        end
        if input[:program_name].to_s.empty?
          raise ArgumentError, "HTTP label :program_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/prod/multiplexes/%<MultiplexId>s/programs/%<ProgramName>s',
            MultiplexId: Hearth::HTTP.uri_escape(input[:multiplex_id].to_s),
            ProgramName: Hearth::HTTP.uri_escape(input[:program_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeOffering
    class DescribeOffering
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:offering_id].to_s.empty?
          raise ArgumentError, "HTTP label :offering_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/prod/offerings/%<OfferingId>s',
            OfferingId: Hearth::HTTP.uri_escape(input[:offering_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeReservation
    class DescribeReservation
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:reservation_id].to_s.empty?
          raise ArgumentError, "HTTP label :reservation_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/prod/reservations/%<ReservationId>s',
            ReservationId: Hearth::HTTP.uri_escape(input[:reservation_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeSchedule
    class DescribeSchedule
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:channel_id].to_s.empty?
          raise ArgumentError, "HTTP label :channel_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/prod/channels/%<ChannelId>s/schedule',
            ChannelId: Hearth::HTTP.uri_escape(input[:channel_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListChannels
    class ListChannels
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/prod/channels')
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListInputDeviceTransfers
    class ListInputDeviceTransfers
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/prod/inputDeviceTransfers')
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['transferType'] = input[:transfer_type].to_s unless input[:transfer_type].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListInputDevices
    class ListInputDevices
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/prod/inputDevices')
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListInputSecurityGroups
    class ListInputSecurityGroups
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/prod/inputSecurityGroups')
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListInputs
    class ListInputs
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/prod/inputs')
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListMultiplexPrograms
    class ListMultiplexPrograms
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:multiplex_id].to_s.empty?
          raise ArgumentError, "HTTP label :multiplex_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/prod/multiplexes/%<MultiplexId>s/programs',
            MultiplexId: Hearth::HTTP.uri_escape(input[:multiplex_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListMultiplexes
    class ListMultiplexes
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/prod/multiplexes')
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListOfferings
    class ListOfferings
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/prod/offerings')
        params = Hearth::Query::ParamList.new
        params['channelClass'] = input[:channel_class].to_s unless input[:channel_class].nil?
        params['channelConfiguration'] = input[:channel_configuration].to_s unless input[:channel_configuration].nil?
        params['codec'] = input[:codec].to_s unless input[:codec].nil?
        params['duration'] = input[:duration].to_s unless input[:duration].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['maximumBitrate'] = input[:maximum_bitrate].to_s unless input[:maximum_bitrate].nil?
        params['maximumFramerate'] = input[:maximum_framerate].to_s unless input[:maximum_framerate].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['resolution'] = input[:resolution].to_s unless input[:resolution].nil?
        params['resourceType'] = input[:resource_type].to_s unless input[:resource_type].nil?
        params['specialFeature'] = input[:special_feature].to_s unless input[:special_feature].nil?
        params['videoQuality'] = input[:video_quality].to_s unless input[:video_quality].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListReservations
    class ListReservations
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/prod/reservations')
        params = Hearth::Query::ParamList.new
        params['channelClass'] = input[:channel_class].to_s unless input[:channel_class].nil?
        params['codec'] = input[:codec].to_s unless input[:codec].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['maximumBitrate'] = input[:maximum_bitrate].to_s unless input[:maximum_bitrate].nil?
        params['maximumFramerate'] = input[:maximum_framerate].to_s unless input[:maximum_framerate].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['resolution'] = input[:resolution].to_s unless input[:resolution].nil?
        params['resourceType'] = input[:resource_type].to_s unless input[:resource_type].nil?
        params['specialFeature'] = input[:special_feature].to_s unless input[:special_feature].nil?
        params['videoQuality'] = input[:video_quality].to_s unless input[:video_quality].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/prod/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for PurchaseOffering
    class PurchaseOffering
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:offering_id].to_s.empty?
          raise ArgumentError, "HTTP label :offering_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/prod/offerings/%<OfferingId>s/purchase',
            OfferingId: Hearth::HTTP.uri_escape(input[:offering_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['count'] = input[:count] unless input[:count].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['requestId'] = input[:request_id] unless input[:request_id].nil?
        data['start'] = input[:start] unless input[:start].nil?
        data['tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RejectInputDeviceTransfer
    class RejectInputDeviceTransfer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:input_device_id].to_s.empty?
          raise ArgumentError, "HTTP label :input_device_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/prod/inputDevices/%<InputDeviceId>s/reject',
            InputDeviceId: Hearth::HTTP.uri_escape(input[:input_device_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for StartChannel
    class StartChannel
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:channel_id].to_s.empty?
          raise ArgumentError, "HTTP label :channel_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/prod/channels/%<ChannelId>s/start',
            ChannelId: Hearth::HTTP.uri_escape(input[:channel_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for StartMultiplex
    class StartMultiplex
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:multiplex_id].to_s.empty?
          raise ArgumentError, "HTTP label :multiplex_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/prod/multiplexes/%<MultiplexId>s/start',
            MultiplexId: Hearth::HTTP.uri_escape(input[:multiplex_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for StopChannel
    class StopChannel
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:channel_id].to_s.empty?
          raise ArgumentError, "HTTP label :channel_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/prod/channels/%<ChannelId>s/stop',
            ChannelId: Hearth::HTTP.uri_escape(input[:channel_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for StopMultiplex
    class StopMultiplex
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:multiplex_id].to_s.empty?
          raise ArgumentError, "HTTP label :multiplex_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/prod/multiplexes/%<MultiplexId>s/stop',
            MultiplexId: Hearth::HTTP.uri_escape(input[:multiplex_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for TransferInputDevice
    class TransferInputDevice
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:input_device_id].to_s.empty?
          raise ArgumentError, "HTTP label :input_device_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/prod/inputDevices/%<InputDeviceId>s/transfer',
            InputDeviceId: Hearth::HTTP.uri_escape(input[:input_device_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['targetCustomerId'] = input[:target_customer_id] unless input[:target_customer_id].nil?
        data['targetRegion'] = input[:target_region] unless input[:target_region].nil?
        data['transferMessage'] = input[:transfer_message] unless input[:transfer_message].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateChannel
    class UpdateChannel
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:channel_id].to_s.empty?
          raise ArgumentError, "HTTP label :channel_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/prod/channels/%<ChannelId>s',
            ChannelId: Hearth::HTTP.uri_escape(input[:channel_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['cdiInputSpecification'] = Builders::CdiInputSpecification.build(input[:cdi_input_specification]) unless input[:cdi_input_specification].nil?
        data['destinations'] = Builders::List____listOfOutputDestination.build(input[:destinations]) unless input[:destinations].nil?
        data['encoderSettings'] = Builders::EncoderSettings.build(input[:encoder_settings]) unless input[:encoder_settings].nil?
        data['inputAttachments'] = Builders::List____listOfInputAttachment.build(input[:input_attachments]) unless input[:input_attachments].nil?
        data['inputSpecification'] = Builders::InputSpecification.build(input[:input_specification]) unless input[:input_specification].nil?
        data['logLevel'] = input[:log_level] unless input[:log_level].nil?
        data['maintenance'] = Builders::MaintenanceUpdateSettings.build(input[:maintenance]) unless input[:maintenance].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for MaintenanceUpdateSettings
    class MaintenanceUpdateSettings
      def self.build(input)
        data = {}
        data['maintenanceDay'] = input[:maintenance_day] unless input[:maintenance_day].nil?
        data['maintenanceScheduledDate'] = input[:maintenance_scheduled_date] unless input[:maintenance_scheduled_date].nil?
        data['maintenanceStartTime'] = input[:maintenance_start_time] unless input[:maintenance_start_time].nil?
        data
      end
    end

    # Operation Builder for UpdateChannelClass
    class UpdateChannelClass
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:channel_id].to_s.empty?
          raise ArgumentError, "HTTP label :channel_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/prod/channels/%<ChannelId>s/channelClass',
            ChannelId: Hearth::HTTP.uri_escape(input[:channel_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['channelClass'] = input[:channel_class] unless input[:channel_class].nil?
        data['destinations'] = Builders::List____listOfOutputDestination.build(input[:destinations]) unless input[:destinations].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateInput
    class UpdateInput
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:input_id].to_s.empty?
          raise ArgumentError, "HTTP label :input_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/prod/inputs/%<InputId>s',
            InputId: Hearth::HTTP.uri_escape(input[:input_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['destinations'] = Builders::List____listOfInputDestinationRequest.build(input[:destinations]) unless input[:destinations].nil?
        data['inputDevices'] = Builders::List____listOfInputDeviceRequest.build(input[:input_devices]) unless input[:input_devices].nil?
        data['inputSecurityGroups'] = Builders::List____listOf__string.build(input[:input_security_groups]) unless input[:input_security_groups].nil?
        data['mediaConnectFlows'] = Builders::List____listOfMediaConnectFlowRequest.build(input[:media_connect_flows]) unless input[:media_connect_flows].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['sources'] = Builders::List____listOfInputSourceRequest.build(input[:sources]) unless input[:sources].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for __listOfInputDeviceRequest
    class List____listOfInputDeviceRequest
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::InputDeviceRequest.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for InputDeviceRequest
    class InputDeviceRequest
      def self.build(input)
        data = {}
        data['id'] = input[:id] unless input[:id].nil?
        data
      end
    end

    # Operation Builder for UpdateInputDevice
    class UpdateInputDevice
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:input_device_id].to_s.empty?
          raise ArgumentError, "HTTP label :input_device_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/prod/inputDevices/%<InputDeviceId>s',
            InputDeviceId: Hearth::HTTP.uri_escape(input[:input_device_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['hdDeviceSettings'] = Builders::InputDeviceConfigurableSettings.build(input[:hd_device_settings]) unless input[:hd_device_settings].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['uhdDeviceSettings'] = Builders::InputDeviceConfigurableSettings.build(input[:uhd_device_settings]) unless input[:uhd_device_settings].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for InputDeviceConfigurableSettings
    class InputDeviceConfigurableSettings
      def self.build(input)
        data = {}
        data['configuredInput'] = input[:configured_input] unless input[:configured_input].nil?
        data['maxBitrate'] = input[:max_bitrate] unless input[:max_bitrate].nil?
        data
      end
    end

    # Operation Builder for UpdateInputSecurityGroup
    class UpdateInputSecurityGroup
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:input_security_group_id].to_s.empty?
          raise ArgumentError, "HTTP label :input_security_group_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/prod/inputSecurityGroups/%<InputSecurityGroupId>s',
            InputSecurityGroupId: Hearth::HTTP.uri_escape(input[:input_security_group_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        data['whitelistRules'] = Builders::List____listOfInputWhitelistRuleCidr.build(input[:whitelist_rules]) unless input[:whitelist_rules].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateMultiplex
    class UpdateMultiplex
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:multiplex_id].to_s.empty?
          raise ArgumentError, "HTTP label :multiplex_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/prod/multiplexes/%<MultiplexId>s',
            MultiplexId: Hearth::HTTP.uri_escape(input[:multiplex_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['multiplexSettings'] = Builders::MultiplexSettings.build(input[:multiplex_settings]) unless input[:multiplex_settings].nil?
        data['name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateMultiplexProgram
    class UpdateMultiplexProgram
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:multiplex_id].to_s.empty?
          raise ArgumentError, "HTTP label :multiplex_id cannot be nil or empty."
        end
        if input[:program_name].to_s.empty?
          raise ArgumentError, "HTTP label :program_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/prod/multiplexes/%<MultiplexId>s/programs/%<ProgramName>s',
            MultiplexId: Hearth::HTTP.uri_escape(input[:multiplex_id].to_s),
            ProgramName: Hearth::HTTP.uri_escape(input[:program_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['multiplexProgramSettings'] = Builders::MultiplexProgramSettings.build(input[:multiplex_program_settings]) unless input[:multiplex_program_settings].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateReservation
    class UpdateReservation
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:reservation_id].to_s.empty?
          raise ArgumentError, "HTTP label :reservation_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/prod/reservations/%<ReservationId>s',
            ReservationId: Hearth::HTTP.uri_escape(input[:reservation_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
