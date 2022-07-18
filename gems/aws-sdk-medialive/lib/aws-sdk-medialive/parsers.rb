# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::MediaLive
  module Parsers

    # Operation Parser for AcceptInputDeviceTransfer
    class AcceptInputDeviceTransfer
      def self.parse(http_resp)
        data = Types::AcceptInputDeviceTransferOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for TooManyRequestsException
    class TooManyRequestsException
      def self.parse(http_resp)
        data = Types::TooManyRequestsException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for GatewayTimeoutException
    class GatewayTimeoutException
      def self.parse(http_resp)
        data = Types::GatewayTimeoutException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for UnprocessableEntityException
    class UnprocessableEntityException
      def self.parse(http_resp)
        data = Types::UnprocessableEntityException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.validation_errors = (Parsers::List____listOfValidationError.parse(map['validationErrors']) unless map['validationErrors'].nil?)
        data
      end
    end

    class List____listOfValidationError
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ValidationError.parse(value) unless value.nil?
        end
        data
      end
    end

    class ValidationError
      def self.parse(map)
        data = Types::ValidationError.new
        data.element_path = map['elementPath']
        data.error_message = map['errorMessage']
        return data
      end
    end

    # Error Parser for BadRequestException
    class BadRequestException
      def self.parse(http_resp)
        data = Types::BadRequestException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ForbiddenException
    class ForbiddenException
      def self.parse(http_resp)
        data = Types::ForbiddenException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for InternalServerErrorException
    class InternalServerErrorException
      def self.parse(http_resp)
        data = Types::InternalServerErrorException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for BadGatewayException
    class BadGatewayException
      def self.parse(http_resp)
        data = Types::BadGatewayException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for NotFoundException
    class NotFoundException
      def self.parse(http_resp)
        data = Types::NotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for BatchDelete
    class BatchDelete
      def self.parse(http_resp)
        data = Types::BatchDeleteOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.failed = (Parsers::List____listOfBatchFailedResultModel.parse(map['failed']) unless map['failed'].nil?)
        data.successful = (Parsers::List____listOfBatchSuccessfulResultModel.parse(map['successful']) unless map['successful'].nil?)
        data
      end
    end

    class List____listOfBatchSuccessfulResultModel
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::BatchSuccessfulResultModel.parse(value) unless value.nil?
        end
        data
      end
    end

    class BatchSuccessfulResultModel
      def self.parse(map)
        data = Types::BatchSuccessfulResultModel.new
        data.arn = map['arn']
        data.id = map['id']
        data.state = map['state']
        return data
      end
    end

    class List____listOfBatchFailedResultModel
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::BatchFailedResultModel.parse(value) unless value.nil?
        end
        data
      end
    end

    class BatchFailedResultModel
      def self.parse(map)
        data = Types::BatchFailedResultModel.new
        data.arn = map['arn']
        data.code = map['code']
        data.id = map['id']
        data.message = map['message'] || map['Message']
        return data
      end
    end

    # Operation Parser for BatchStart
    class BatchStart
      def self.parse(http_resp)
        data = Types::BatchStartOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.failed = (Parsers::List____listOfBatchFailedResultModel.parse(map['failed']) unless map['failed'].nil?)
        data.successful = (Parsers::List____listOfBatchSuccessfulResultModel.parse(map['successful']) unless map['successful'].nil?)
        data
      end
    end

    # Operation Parser for BatchStop
    class BatchStop
      def self.parse(http_resp)
        data = Types::BatchStopOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.failed = (Parsers::List____listOfBatchFailedResultModel.parse(map['failed']) unless map['failed'].nil?)
        data.successful = (Parsers::List____listOfBatchSuccessfulResultModel.parse(map['successful']) unless map['successful'].nil?)
        data
      end
    end

    # Operation Parser for BatchUpdateSchedule
    class BatchUpdateSchedule
      def self.parse(http_resp)
        data = Types::BatchUpdateScheduleOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.creates = (Parsers::BatchScheduleActionCreateResult.parse(map['creates']) unless map['creates'].nil?)
        data.deletes = (Parsers::BatchScheduleActionDeleteResult.parse(map['deletes']) unless map['deletes'].nil?)
        data
      end
    end

    class BatchScheduleActionDeleteResult
      def self.parse(map)
        data = Types::BatchScheduleActionDeleteResult.new
        data.schedule_actions = (Parsers::List____listOfScheduleAction.parse(map['scheduleActions']) unless map['scheduleActions'].nil?)
        return data
      end
    end

    class List____listOfScheduleAction
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ScheduleAction.parse(value) unless value.nil?
        end
        data
      end
    end

    class ScheduleAction
      def self.parse(map)
        data = Types::ScheduleAction.new
        data.action_name = map['actionName']
        data.schedule_action_settings = (Parsers::ScheduleActionSettings.parse(map['scheduleActionSettings']) unless map['scheduleActionSettings'].nil?)
        data.schedule_action_start_settings = (Parsers::ScheduleActionStartSettings.parse(map['scheduleActionStartSettings']) unless map['scheduleActionStartSettings'].nil?)
        return data
      end
    end

    class ScheduleActionStartSettings
      def self.parse(map)
        data = Types::ScheduleActionStartSettings.new
        data.fixed_mode_schedule_action_start_settings = (Parsers::FixedModeScheduleActionStartSettings.parse(map['fixedModeScheduleActionStartSettings']) unless map['fixedModeScheduleActionStartSettings'].nil?)
        data.follow_mode_schedule_action_start_settings = (Parsers::FollowModeScheduleActionStartSettings.parse(map['followModeScheduleActionStartSettings']) unless map['followModeScheduleActionStartSettings'].nil?)
        data.immediate_mode_schedule_action_start_settings = (Parsers::ImmediateModeScheduleActionStartSettings.parse(map['immediateModeScheduleActionStartSettings']) unless map['immediateModeScheduleActionStartSettings'].nil?)
        return data
      end
    end

    class ImmediateModeScheduleActionStartSettings
      def self.parse(map)
        data = Types::ImmediateModeScheduleActionStartSettings.new
        return data
      end
    end

    class FollowModeScheduleActionStartSettings
      def self.parse(map)
        data = Types::FollowModeScheduleActionStartSettings.new
        data.follow_point = map['followPoint']
        data.reference_action_name = map['referenceActionName']
        return data
      end
    end

    class FixedModeScheduleActionStartSettings
      def self.parse(map)
        data = Types::FixedModeScheduleActionStartSettings.new
        data.time = map['time']
        return data
      end
    end

    class ScheduleActionSettings
      def self.parse(map)
        data = Types::ScheduleActionSettings.new
        data.hls_id3_segment_tagging_settings = (Parsers::HlsId3SegmentTaggingScheduleActionSettings.parse(map['hlsId3SegmentTaggingSettings']) unless map['hlsId3SegmentTaggingSettings'].nil?)
        data.hls_timed_metadata_settings = (Parsers::HlsTimedMetadataScheduleActionSettings.parse(map['hlsTimedMetadataSettings']) unless map['hlsTimedMetadataSettings'].nil?)
        data.input_prepare_settings = (Parsers::InputPrepareScheduleActionSettings.parse(map['inputPrepareSettings']) unless map['inputPrepareSettings'].nil?)
        data.input_switch_settings = (Parsers::InputSwitchScheduleActionSettings.parse(map['inputSwitchSettings']) unless map['inputSwitchSettings'].nil?)
        data.motion_graphics_image_activate_settings = (Parsers::MotionGraphicsActivateScheduleActionSettings.parse(map['motionGraphicsImageActivateSettings']) unless map['motionGraphicsImageActivateSettings'].nil?)
        data.motion_graphics_image_deactivate_settings = (Parsers::MotionGraphicsDeactivateScheduleActionSettings.parse(map['motionGraphicsImageDeactivateSettings']) unless map['motionGraphicsImageDeactivateSettings'].nil?)
        data.pause_state_settings = (Parsers::PauseStateScheduleActionSettings.parse(map['pauseStateSettings']) unless map['pauseStateSettings'].nil?)
        data.scte35_return_to_network_settings = (Parsers::Scte35ReturnToNetworkScheduleActionSettings.parse(map['scte35ReturnToNetworkSettings']) unless map['scte35ReturnToNetworkSettings'].nil?)
        data.scte35_splice_insert_settings = (Parsers::Scte35SpliceInsertScheduleActionSettings.parse(map['scte35SpliceInsertSettings']) unless map['scte35SpliceInsertSettings'].nil?)
        data.scte35_time_signal_settings = (Parsers::Scte35TimeSignalScheduleActionSettings.parse(map['scte35TimeSignalSettings']) unless map['scte35TimeSignalSettings'].nil?)
        data.static_image_activate_settings = (Parsers::StaticImageActivateScheduleActionSettings.parse(map['staticImageActivateSettings']) unless map['staticImageActivateSettings'].nil?)
        data.static_image_deactivate_settings = (Parsers::StaticImageDeactivateScheduleActionSettings.parse(map['staticImageDeactivateSettings']) unless map['staticImageDeactivateSettings'].nil?)
        return data
      end
    end

    class StaticImageDeactivateScheduleActionSettings
      def self.parse(map)
        data = Types::StaticImageDeactivateScheduleActionSettings.new
        data.fade_out = map['fadeOut']
        data.layer = map['layer']
        return data
      end
    end

    class StaticImageActivateScheduleActionSettings
      def self.parse(map)
        data = Types::StaticImageActivateScheduleActionSettings.new
        data.duration = map['duration']
        data.fade_in = map['fadeIn']
        data.fade_out = map['fadeOut']
        data.height = map['height']
        data.image = (Parsers::InputLocation.parse(map['image']) unless map['image'].nil?)
        data.image_x = map['imageX']
        data.image_y = map['imageY']
        data.layer = map['layer']
        data.opacity = map['opacity']
        data.width = map['width']
        return data
      end
    end

    class InputLocation
      def self.parse(map)
        data = Types::InputLocation.new
        data.password_param = map['passwordParam']
        data.uri = map['uri']
        data.username = map['username']
        return data
      end
    end

    class Scte35TimeSignalScheduleActionSettings
      def self.parse(map)
        data = Types::Scte35TimeSignalScheduleActionSettings.new
        data.scte35_descriptors = (Parsers::List____listOfScte35Descriptor.parse(map['scte35Descriptors']) unless map['scte35Descriptors'].nil?)
        return data
      end
    end

    class List____listOfScte35Descriptor
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Scte35Descriptor.parse(value) unless value.nil?
        end
        data
      end
    end

    class Scte35Descriptor
      def self.parse(map)
        data = Types::Scte35Descriptor.new
        data.scte35_descriptor_settings = (Parsers::Scte35DescriptorSettings.parse(map['scte35DescriptorSettings']) unless map['scte35DescriptorSettings'].nil?)
        return data
      end
    end

    class Scte35DescriptorSettings
      def self.parse(map)
        data = Types::Scte35DescriptorSettings.new
        data.segmentation_descriptor_scte35_descriptor_settings = (Parsers::Scte35SegmentationDescriptor.parse(map['segmentationDescriptorScte35DescriptorSettings']) unless map['segmentationDescriptorScte35DescriptorSettings'].nil?)
        return data
      end
    end

    class Scte35SegmentationDescriptor
      def self.parse(map)
        data = Types::Scte35SegmentationDescriptor.new
        data.delivery_restrictions = (Parsers::Scte35DeliveryRestrictions.parse(map['deliveryRestrictions']) unless map['deliveryRestrictions'].nil?)
        data.segment_num = map['segmentNum']
        data.segmentation_cancel_indicator = map['segmentationCancelIndicator']
        data.segmentation_duration = map['segmentationDuration']
        data.segmentation_event_id = map['segmentationEventId']
        data.segmentation_type_id = map['segmentationTypeId']
        data.segmentation_upid = map['segmentationUpid']
        data.segmentation_upid_type = map['segmentationUpidType']
        data.segments_expected = map['segmentsExpected']
        data.sub_segment_num = map['subSegmentNum']
        data.sub_segments_expected = map['subSegmentsExpected']
        return data
      end
    end

    class Scte35DeliveryRestrictions
      def self.parse(map)
        data = Types::Scte35DeliveryRestrictions.new
        data.archive_allowed_flag = map['archiveAllowedFlag']
        data.device_restrictions = map['deviceRestrictions']
        data.no_regional_blackout_flag = map['noRegionalBlackoutFlag']
        data.web_delivery_allowed_flag = map['webDeliveryAllowedFlag']
        return data
      end
    end

    class Scte35SpliceInsertScheduleActionSettings
      def self.parse(map)
        data = Types::Scte35SpliceInsertScheduleActionSettings.new
        data.duration = map['duration']
        data.splice_event_id = map['spliceEventId']
        return data
      end
    end

    class Scte35ReturnToNetworkScheduleActionSettings
      def self.parse(map)
        data = Types::Scte35ReturnToNetworkScheduleActionSettings.new
        data.splice_event_id = map['spliceEventId']
        return data
      end
    end

    class PauseStateScheduleActionSettings
      def self.parse(map)
        data = Types::PauseStateScheduleActionSettings.new
        data.pipelines = (Parsers::List____listOfPipelinePauseStateSettings.parse(map['pipelines']) unless map['pipelines'].nil?)
        return data
      end
    end

    class List____listOfPipelinePauseStateSettings
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::PipelinePauseStateSettings.parse(value) unless value.nil?
        end
        data
      end
    end

    class PipelinePauseStateSettings
      def self.parse(map)
        data = Types::PipelinePauseStateSettings.new
        data.pipeline_id = map['pipelineId']
        return data
      end
    end

    class MotionGraphicsDeactivateScheduleActionSettings
      def self.parse(map)
        data = Types::MotionGraphicsDeactivateScheduleActionSettings.new
        return data
      end
    end

    class MotionGraphicsActivateScheduleActionSettings
      def self.parse(map)
        data = Types::MotionGraphicsActivateScheduleActionSettings.new
        data.duration = map['duration']
        data.password_param = map['passwordParam']
        data.url = map['url']
        data.username = map['username']
        return data
      end
    end

    class InputSwitchScheduleActionSettings
      def self.parse(map)
        data = Types::InputSwitchScheduleActionSettings.new
        data.input_attachment_name_reference = map['inputAttachmentNameReference']
        data.input_clipping_settings = (Parsers::InputClippingSettings.parse(map['inputClippingSettings']) unless map['inputClippingSettings'].nil?)
        data.url_path = (Parsers::List____listOf__string.parse(map['urlPath']) unless map['urlPath'].nil?)
        return data
      end
    end

    class List____listOf__string
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class InputClippingSettings
      def self.parse(map)
        data = Types::InputClippingSettings.new
        data.input_timecode_source = map['inputTimecodeSource']
        data.start_timecode = (Parsers::StartTimecode.parse(map['startTimecode']) unless map['startTimecode'].nil?)
        data.stop_timecode = (Parsers::StopTimecode.parse(map['stopTimecode']) unless map['stopTimecode'].nil?)
        return data
      end
    end

    class StopTimecode
      def self.parse(map)
        data = Types::StopTimecode.new
        data.last_frame_clipping_behavior = map['lastFrameClippingBehavior']
        data.timecode = map['timecode']
        return data
      end
    end

    class StartTimecode
      def self.parse(map)
        data = Types::StartTimecode.new
        data.timecode = map['timecode']
        return data
      end
    end

    class InputPrepareScheduleActionSettings
      def self.parse(map)
        data = Types::InputPrepareScheduleActionSettings.new
        data.input_attachment_name_reference = map['inputAttachmentNameReference']
        data.input_clipping_settings = (Parsers::InputClippingSettings.parse(map['inputClippingSettings']) unless map['inputClippingSettings'].nil?)
        data.url_path = (Parsers::List____listOf__string.parse(map['urlPath']) unless map['urlPath'].nil?)
        return data
      end
    end

    class HlsTimedMetadataScheduleActionSettings
      def self.parse(map)
        data = Types::HlsTimedMetadataScheduleActionSettings.new
        data.id3 = map['id3']
        return data
      end
    end

    class HlsId3SegmentTaggingScheduleActionSettings
      def self.parse(map)
        data = Types::HlsId3SegmentTaggingScheduleActionSettings.new
        data.tag = map['tag']
        return data
      end
    end

    class BatchScheduleActionCreateResult
      def self.parse(map)
        data = Types::BatchScheduleActionCreateResult.new
        data.schedule_actions = (Parsers::List____listOfScheduleAction.parse(map['scheduleActions']) unless map['scheduleActions'].nil?)
        return data
      end
    end

    # Operation Parser for CancelInputDeviceTransfer
    class CancelInputDeviceTransfer
      def self.parse(http_resp)
        data = Types::CancelInputDeviceTransferOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for ClaimDevice
    class ClaimDevice
      def self.parse(http_resp)
        data = Types::ClaimDeviceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for CreateChannel
    class CreateChannel
      def self.parse(http_resp)
        data = Types::CreateChannelOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.channel = (Parsers::Channel.parse(map['channel']) unless map['channel'].nil?)
        data
      end
    end

    class Channel
      def self.parse(map)
        data = Types::Channel.new
        data.arn = map['arn']
        data.cdi_input_specification = (Parsers::CdiInputSpecification.parse(map['cdiInputSpecification']) unless map['cdiInputSpecification'].nil?)
        data.channel_class = map['channelClass']
        data.destinations = (Parsers::List____listOfOutputDestination.parse(map['destinations']) unless map['destinations'].nil?)
        data.egress_endpoints = (Parsers::List____listOfChannelEgressEndpoint.parse(map['egressEndpoints']) unless map['egressEndpoints'].nil?)
        data.encoder_settings = (Parsers::EncoderSettings.parse(map['encoderSettings']) unless map['encoderSettings'].nil?)
        data.id = map['id']
        data.input_attachments = (Parsers::List____listOfInputAttachment.parse(map['inputAttachments']) unless map['inputAttachments'].nil?)
        data.input_specification = (Parsers::InputSpecification.parse(map['inputSpecification']) unless map['inputSpecification'].nil?)
        data.log_level = map['logLevel']
        data.maintenance = (Parsers::MaintenanceStatus.parse(map['maintenance']) unless map['maintenance'].nil?)
        data.name = map['name']
        data.pipeline_details = (Parsers::List____listOfPipelineDetail.parse(map['pipelineDetails']) unless map['pipelineDetails'].nil?)
        data.pipelines_running_count = map['pipelinesRunningCount']
        data.role_arn = map['roleArn']
        data.state = map['state']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data.vpc = (Parsers::VpcOutputSettingsDescription.parse(map['vpc']) unless map['vpc'].nil?)
        return data
      end
    end

    class VpcOutputSettingsDescription
      def self.parse(map)
        data = Types::VpcOutputSettingsDescription.new
        data.availability_zones = (Parsers::List____listOf__string.parse(map['availabilityZones']) unless map['availabilityZones'].nil?)
        data.network_interface_ids = (Parsers::List____listOf__string.parse(map['networkInterfaceIds']) unless map['networkInterfaceIds'].nil?)
        data.security_group_ids = (Parsers::List____listOf__string.parse(map['securityGroupIds']) unless map['securityGroupIds'].nil?)
        data.subnet_ids = (Parsers::List____listOf__string.parse(map['subnetIds']) unless map['subnetIds'].nil?)
        return data
      end
    end

    class Tags
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class List____listOfPipelineDetail
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::PipelineDetail.parse(value) unless value.nil?
        end
        data
      end
    end

    class PipelineDetail
      def self.parse(map)
        data = Types::PipelineDetail.new
        data.active_input_attachment_name = map['activeInputAttachmentName']
        data.active_input_switch_action_name = map['activeInputSwitchActionName']
        data.active_motion_graphics_action_name = map['activeMotionGraphicsActionName']
        data.active_motion_graphics_uri = map['activeMotionGraphicsUri']
        data.pipeline_id = map['pipelineId']
        return data
      end
    end

    class MaintenanceStatus
      def self.parse(map)
        data = Types::MaintenanceStatus.new
        data.maintenance_day = map['maintenanceDay']
        data.maintenance_deadline = map['maintenanceDeadline']
        data.maintenance_scheduled_date = map['maintenanceScheduledDate']
        data.maintenance_start_time = map['maintenanceStartTime']
        return data
      end
    end

    class InputSpecification
      def self.parse(map)
        data = Types::InputSpecification.new
        data.codec = map['codec']
        data.maximum_bitrate = map['maximumBitrate']
        data.resolution = map['resolution']
        return data
      end
    end

    class List____listOfInputAttachment
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::InputAttachment.parse(value) unless value.nil?
        end
        data
      end
    end

    class InputAttachment
      def self.parse(map)
        data = Types::InputAttachment.new
        data.automatic_input_failover_settings = (Parsers::AutomaticInputFailoverSettings.parse(map['automaticInputFailoverSettings']) unless map['automaticInputFailoverSettings'].nil?)
        data.input_attachment_name = map['inputAttachmentName']
        data.input_id = map['inputId']
        data.input_settings = (Parsers::InputSettings.parse(map['inputSettings']) unless map['inputSettings'].nil?)
        return data
      end
    end

    class InputSettings
      def self.parse(map)
        data = Types::InputSettings.new
        data.audio_selectors = (Parsers::List____listOfAudioSelector.parse(map['audioSelectors']) unless map['audioSelectors'].nil?)
        data.caption_selectors = (Parsers::List____listOfCaptionSelector.parse(map['captionSelectors']) unless map['captionSelectors'].nil?)
        data.deblock_filter = map['deblockFilter']
        data.denoise_filter = map['denoiseFilter']
        data.filter_strength = map['filterStrength']
        data.input_filter = map['inputFilter']
        data.network_input_settings = (Parsers::NetworkInputSettings.parse(map['networkInputSettings']) unless map['networkInputSettings'].nil?)
        data.scte35_pid = map['scte35Pid']
        data.smpte2038_data_preference = map['smpte2038DataPreference']
        data.source_end_behavior = map['sourceEndBehavior']
        data.video_selector = (Parsers::VideoSelector.parse(map['videoSelector']) unless map['videoSelector'].nil?)
        return data
      end
    end

    class VideoSelector
      def self.parse(map)
        data = Types::VideoSelector.new
        data.color_space = map['colorSpace']
        data.color_space_settings = (Parsers::VideoSelectorColorSpaceSettings.parse(map['colorSpaceSettings']) unless map['colorSpaceSettings'].nil?)
        data.color_space_usage = map['colorSpaceUsage']
        data.selector_settings = (Parsers::VideoSelectorSettings.parse(map['selectorSettings']) unless map['selectorSettings'].nil?)
        return data
      end
    end

    class VideoSelectorSettings
      def self.parse(map)
        data = Types::VideoSelectorSettings.new
        data.video_selector_pid = (Parsers::VideoSelectorPid.parse(map['videoSelectorPid']) unless map['videoSelectorPid'].nil?)
        data.video_selector_program_id = (Parsers::VideoSelectorProgramId.parse(map['videoSelectorProgramId']) unless map['videoSelectorProgramId'].nil?)
        return data
      end
    end

    class VideoSelectorProgramId
      def self.parse(map)
        data = Types::VideoSelectorProgramId.new
        data.program_id = map['programId']
        return data
      end
    end

    class VideoSelectorPid
      def self.parse(map)
        data = Types::VideoSelectorPid.new
        data.pid = map['pid']
        return data
      end
    end

    class VideoSelectorColorSpaceSettings
      def self.parse(map)
        data = Types::VideoSelectorColorSpaceSettings.new
        data.hdr10_settings = (Parsers::Hdr10Settings.parse(map['hdr10Settings']) unless map['hdr10Settings'].nil?)
        return data
      end
    end

    class Hdr10Settings
      def self.parse(map)
        data = Types::Hdr10Settings.new
        data.max_cll = map['maxCll']
        data.max_fall = map['maxFall']
        return data
      end
    end

    class NetworkInputSettings
      def self.parse(map)
        data = Types::NetworkInputSettings.new
        data.hls_input_settings = (Parsers::HlsInputSettings.parse(map['hlsInputSettings']) unless map['hlsInputSettings'].nil?)
        data.server_validation = map['serverValidation']
        return data
      end
    end

    class HlsInputSettings
      def self.parse(map)
        data = Types::HlsInputSettings.new
        data.bandwidth = map['bandwidth']
        data.buffer_segments = map['bufferSegments']
        data.retries = map['retries']
        data.retry_interval = map['retryInterval']
        data.scte35_source = map['scte35Source']
        return data
      end
    end

    class List____listOfCaptionSelector
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::CaptionSelector.parse(value) unless value.nil?
        end
        data
      end
    end

    class CaptionSelector
      def self.parse(map)
        data = Types::CaptionSelector.new
        data.language_code = map['languageCode']
        data.name = map['name']
        data.selector_settings = (Parsers::CaptionSelectorSettings.parse(map['selectorSettings']) unless map['selectorSettings'].nil?)
        return data
      end
    end

    class CaptionSelectorSettings
      def self.parse(map)
        data = Types::CaptionSelectorSettings.new
        data.ancillary_source_settings = (Parsers::AncillarySourceSettings.parse(map['ancillarySourceSettings']) unless map['ancillarySourceSettings'].nil?)
        data.arib_source_settings = (Parsers::AribSourceSettings.parse(map['aribSourceSettings']) unless map['aribSourceSettings'].nil?)
        data.dvb_sub_source_settings = (Parsers::DvbSubSourceSettings.parse(map['dvbSubSourceSettings']) unless map['dvbSubSourceSettings'].nil?)
        data.embedded_source_settings = (Parsers::EmbeddedSourceSettings.parse(map['embeddedSourceSettings']) unless map['embeddedSourceSettings'].nil?)
        data.scte20_source_settings = (Parsers::Scte20SourceSettings.parse(map['scte20SourceSettings']) unless map['scte20SourceSettings'].nil?)
        data.scte27_source_settings = (Parsers::Scte27SourceSettings.parse(map['scte27SourceSettings']) unless map['scte27SourceSettings'].nil?)
        data.teletext_source_settings = (Parsers::TeletextSourceSettings.parse(map['teletextSourceSettings']) unless map['teletextSourceSettings'].nil?)
        return data
      end
    end

    class TeletextSourceSettings
      def self.parse(map)
        data = Types::TeletextSourceSettings.new
        data.output_rectangle = (Parsers::CaptionRectangle.parse(map['outputRectangle']) unless map['outputRectangle'].nil?)
        data.page_number = map['pageNumber']
        return data
      end
    end

    class CaptionRectangle
      def self.parse(map)
        data = Types::CaptionRectangle.new
        data.height = Hearth::NumberHelper.deserialize(map['height'])
        data.left_offset = Hearth::NumberHelper.deserialize(map['leftOffset'])
        data.top_offset = Hearth::NumberHelper.deserialize(map['topOffset'])
        data.width = Hearth::NumberHelper.deserialize(map['width'])
        return data
      end
    end

    class Scte27SourceSettings
      def self.parse(map)
        data = Types::Scte27SourceSettings.new
        data.ocr_language = map['ocrLanguage']
        data.pid = map['pid']
        return data
      end
    end

    class Scte20SourceSettings
      def self.parse(map)
        data = Types::Scte20SourceSettings.new
        data.convert608_to708 = map['convert608To708']
        data.source608_channel_number = map['source608ChannelNumber']
        return data
      end
    end

    class EmbeddedSourceSettings
      def self.parse(map)
        data = Types::EmbeddedSourceSettings.new
        data.convert608_to708 = map['convert608To708']
        data.scte20_detection = map['scte20Detection']
        data.source608_channel_number = map['source608ChannelNumber']
        data.source608_track_number = map['source608TrackNumber']
        return data
      end
    end

    class DvbSubSourceSettings
      def self.parse(map)
        data = Types::DvbSubSourceSettings.new
        data.ocr_language = map['ocrLanguage']
        data.pid = map['pid']
        return data
      end
    end

    class AribSourceSettings
      def self.parse(map)
        data = Types::AribSourceSettings.new
        return data
      end
    end

    class AncillarySourceSettings
      def self.parse(map)
        data = Types::AncillarySourceSettings.new
        data.source_ancillary_channel_number = map['sourceAncillaryChannelNumber']
        return data
      end
    end

    class List____listOfAudioSelector
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AudioSelector.parse(value) unless value.nil?
        end
        data
      end
    end

    class AudioSelector
      def self.parse(map)
        data = Types::AudioSelector.new
        data.name = map['name']
        data.selector_settings = (Parsers::AudioSelectorSettings.parse(map['selectorSettings']) unless map['selectorSettings'].nil?)
        return data
      end
    end

    class AudioSelectorSettings
      def self.parse(map)
        data = Types::AudioSelectorSettings.new
        data.audio_hls_rendition_selection = (Parsers::AudioHlsRenditionSelection.parse(map['audioHlsRenditionSelection']) unless map['audioHlsRenditionSelection'].nil?)
        data.audio_language_selection = (Parsers::AudioLanguageSelection.parse(map['audioLanguageSelection']) unless map['audioLanguageSelection'].nil?)
        data.audio_pid_selection = (Parsers::AudioPidSelection.parse(map['audioPidSelection']) unless map['audioPidSelection'].nil?)
        data.audio_track_selection = (Parsers::AudioTrackSelection.parse(map['audioTrackSelection']) unless map['audioTrackSelection'].nil?)
        return data
      end
    end

    class AudioTrackSelection
      def self.parse(map)
        data = Types::AudioTrackSelection.new
        data.tracks = (Parsers::List____listOfAudioTrack.parse(map['tracks']) unless map['tracks'].nil?)
        return data
      end
    end

    class List____listOfAudioTrack
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AudioTrack.parse(value) unless value.nil?
        end
        data
      end
    end

    class AudioTrack
      def self.parse(map)
        data = Types::AudioTrack.new
        data.track = map['track']
        return data
      end
    end

    class AudioPidSelection
      def self.parse(map)
        data = Types::AudioPidSelection.new
        data.pid = map['pid']
        return data
      end
    end

    class AudioLanguageSelection
      def self.parse(map)
        data = Types::AudioLanguageSelection.new
        data.language_code = map['languageCode']
        data.language_selection_policy = map['languageSelectionPolicy']
        return data
      end
    end

    class AudioHlsRenditionSelection
      def self.parse(map)
        data = Types::AudioHlsRenditionSelection.new
        data.group_id = map['groupId']
        data.name = map['name']
        return data
      end
    end

    class AutomaticInputFailoverSettings
      def self.parse(map)
        data = Types::AutomaticInputFailoverSettings.new
        data.error_clear_time_msec = map['errorClearTimeMsec']
        data.failover_conditions = (Parsers::List____listOfFailoverCondition.parse(map['failoverConditions']) unless map['failoverConditions'].nil?)
        data.input_preference = map['inputPreference']
        data.secondary_input_id = map['secondaryInputId']
        return data
      end
    end

    class List____listOfFailoverCondition
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::FailoverCondition.parse(value) unless value.nil?
        end
        data
      end
    end

    class FailoverCondition
      def self.parse(map)
        data = Types::FailoverCondition.new
        data.failover_condition_settings = (Parsers::FailoverConditionSettings.parse(map['failoverConditionSettings']) unless map['failoverConditionSettings'].nil?)
        return data
      end
    end

    class FailoverConditionSettings
      def self.parse(map)
        data = Types::FailoverConditionSettings.new
        data.audio_silence_settings = (Parsers::AudioSilenceFailoverSettings.parse(map['audioSilenceSettings']) unless map['audioSilenceSettings'].nil?)
        data.input_loss_settings = (Parsers::InputLossFailoverSettings.parse(map['inputLossSettings']) unless map['inputLossSettings'].nil?)
        data.video_black_settings = (Parsers::VideoBlackFailoverSettings.parse(map['videoBlackSettings']) unless map['videoBlackSettings'].nil?)
        return data
      end
    end

    class VideoBlackFailoverSettings
      def self.parse(map)
        data = Types::VideoBlackFailoverSettings.new
        data.black_detect_threshold = Hearth::NumberHelper.deserialize(map['blackDetectThreshold'])
        data.video_black_threshold_msec = map['videoBlackThresholdMsec']
        return data
      end
    end

    class InputLossFailoverSettings
      def self.parse(map)
        data = Types::InputLossFailoverSettings.new
        data.input_loss_threshold_msec = map['inputLossThresholdMsec']
        return data
      end
    end

    class AudioSilenceFailoverSettings
      def self.parse(map)
        data = Types::AudioSilenceFailoverSettings.new
        data.audio_selector_name = map['audioSelectorName']
        data.audio_silence_threshold_msec = map['audioSilenceThresholdMsec']
        return data
      end
    end

    class EncoderSettings
      def self.parse(map)
        data = Types::EncoderSettings.new
        data.audio_descriptions = (Parsers::List____listOfAudioDescription.parse(map['audioDescriptions']) unless map['audioDescriptions'].nil?)
        data.avail_blanking = (Parsers::AvailBlanking.parse(map['availBlanking']) unless map['availBlanking'].nil?)
        data.avail_configuration = (Parsers::AvailConfiguration.parse(map['availConfiguration']) unless map['availConfiguration'].nil?)
        data.blackout_slate = (Parsers::BlackoutSlate.parse(map['blackoutSlate']) unless map['blackoutSlate'].nil?)
        data.caption_descriptions = (Parsers::List____listOfCaptionDescription.parse(map['captionDescriptions']) unless map['captionDescriptions'].nil?)
        data.feature_activations = (Parsers::FeatureActivations.parse(map['featureActivations']) unless map['featureActivations'].nil?)
        data.global_configuration = (Parsers::GlobalConfiguration.parse(map['globalConfiguration']) unless map['globalConfiguration'].nil?)
        data.motion_graphics_configuration = (Parsers::MotionGraphicsConfiguration.parse(map['motionGraphicsConfiguration']) unless map['motionGraphicsConfiguration'].nil?)
        data.nielsen_configuration = (Parsers::NielsenConfiguration.parse(map['nielsenConfiguration']) unless map['nielsenConfiguration'].nil?)
        data.output_groups = (Parsers::List____listOfOutputGroup.parse(map['outputGroups']) unless map['outputGroups'].nil?)
        data.timecode_config = (Parsers::TimecodeConfig.parse(map['timecodeConfig']) unless map['timecodeConfig'].nil?)
        data.video_descriptions = (Parsers::List____listOfVideoDescription.parse(map['videoDescriptions']) unless map['videoDescriptions'].nil?)
        return data
      end
    end

    class List____listOfVideoDescription
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::VideoDescription.parse(value) unless value.nil?
        end
        data
      end
    end

    class VideoDescription
      def self.parse(map)
        data = Types::VideoDescription.new
        data.codec_settings = (Parsers::VideoCodecSettings.parse(map['codecSettings']) unless map['codecSettings'].nil?)
        data.height = map['height']
        data.name = map['name']
        data.respond_to_afd = map['respondToAfd']
        data.scaling_behavior = map['scalingBehavior']
        data.sharpness = map['sharpness']
        data.width = map['width']
        return data
      end
    end

    class VideoCodecSettings
      def self.parse(map)
        data = Types::VideoCodecSettings.new
        data.frame_capture_settings = (Parsers::FrameCaptureSettings.parse(map['frameCaptureSettings']) unless map['frameCaptureSettings'].nil?)
        data.h264_settings = (Parsers::H264Settings.parse(map['h264Settings']) unless map['h264Settings'].nil?)
        data.h265_settings = (Parsers::H265Settings.parse(map['h265Settings']) unless map['h265Settings'].nil?)
        data.mpeg2_settings = (Parsers::Mpeg2Settings.parse(map['mpeg2Settings']) unless map['mpeg2Settings'].nil?)
        return data
      end
    end

    class Mpeg2Settings
      def self.parse(map)
        data = Types::Mpeg2Settings.new
        data.adaptive_quantization = map['adaptiveQuantization']
        data.afd_signaling = map['afdSignaling']
        data.color_metadata = map['colorMetadata']
        data.color_space = map['colorSpace']
        data.display_aspect_ratio = map['displayAspectRatio']
        data.filter_settings = (Parsers::Mpeg2FilterSettings.parse(map['filterSettings']) unless map['filterSettings'].nil?)
        data.fixed_afd = map['fixedAfd']
        data.framerate_denominator = map['framerateDenominator']
        data.framerate_numerator = map['framerateNumerator']
        data.gop_closed_cadence = map['gopClosedCadence']
        data.gop_num_b_frames = map['gopNumBFrames']
        data.gop_size = Hearth::NumberHelper.deserialize(map['gopSize'])
        data.gop_size_units = map['gopSizeUnits']
        data.scan_type = map['scanType']
        data.subgop_length = map['subgopLength']
        data.timecode_insertion = map['timecodeInsertion']
        return data
      end
    end

    class Mpeg2FilterSettings
      def self.parse(map)
        data = Types::Mpeg2FilterSettings.new
        data.temporal_filter_settings = (Parsers::TemporalFilterSettings.parse(map['temporalFilterSettings']) unless map['temporalFilterSettings'].nil?)
        return data
      end
    end

    class TemporalFilterSettings
      def self.parse(map)
        data = Types::TemporalFilterSettings.new
        data.post_filter_sharpening = map['postFilterSharpening']
        data.strength = map['strength']
        return data
      end
    end

    class H265Settings
      def self.parse(map)
        data = Types::H265Settings.new
        data.adaptive_quantization = map['adaptiveQuantization']
        data.afd_signaling = map['afdSignaling']
        data.alternative_transfer_function = map['alternativeTransferFunction']
        data.bitrate = map['bitrate']
        data.buf_size = map['bufSize']
        data.color_metadata = map['colorMetadata']
        data.color_space_settings = (Parsers::H265ColorSpaceSettings.parse(map['colorSpaceSettings']) unless map['colorSpaceSettings'].nil?)
        data.filter_settings = (Parsers::H265FilterSettings.parse(map['filterSettings']) unless map['filterSettings'].nil?)
        data.fixed_afd = map['fixedAfd']
        data.flicker_aq = map['flickerAq']
        data.framerate_denominator = map['framerateDenominator']
        data.framerate_numerator = map['framerateNumerator']
        data.gop_closed_cadence = map['gopClosedCadence']
        data.gop_size = Hearth::NumberHelper.deserialize(map['gopSize'])
        data.gop_size_units = map['gopSizeUnits']
        data.level = map['level']
        data.look_ahead_rate_control = map['lookAheadRateControl']
        data.max_bitrate = map['maxBitrate']
        data.min_i_interval = map['minIInterval']
        data.par_denominator = map['parDenominator']
        data.par_numerator = map['parNumerator']
        data.profile = map['profile']
        data.qvbr_quality_level = map['qvbrQualityLevel']
        data.rate_control_mode = map['rateControlMode']
        data.scan_type = map['scanType']
        data.scene_change_detect = map['sceneChangeDetect']
        data.slices = map['slices']
        data.tier = map['tier']
        data.timecode_insertion = map['timecodeInsertion']
        return data
      end
    end

    class H265FilterSettings
      def self.parse(map)
        data = Types::H265FilterSettings.new
        data.temporal_filter_settings = (Parsers::TemporalFilterSettings.parse(map['temporalFilterSettings']) unless map['temporalFilterSettings'].nil?)
        return data
      end
    end

    class H265ColorSpaceSettings
      def self.parse(map)
        data = Types::H265ColorSpaceSettings.new
        data.color_space_passthrough_settings = (Parsers::ColorSpacePassthroughSettings.parse(map['colorSpacePassthroughSettings']) unless map['colorSpacePassthroughSettings'].nil?)
        data.hdr10_settings = (Parsers::Hdr10Settings.parse(map['hdr10Settings']) unless map['hdr10Settings'].nil?)
        data.rec601_settings = (Parsers::Rec601Settings.parse(map['rec601Settings']) unless map['rec601Settings'].nil?)
        data.rec709_settings = (Parsers::Rec709Settings.parse(map['rec709Settings']) unless map['rec709Settings'].nil?)
        return data
      end
    end

    class Rec709Settings
      def self.parse(map)
        data = Types::Rec709Settings.new
        return data
      end
    end

    class Rec601Settings
      def self.parse(map)
        data = Types::Rec601Settings.new
        return data
      end
    end

    class ColorSpacePassthroughSettings
      def self.parse(map)
        data = Types::ColorSpacePassthroughSettings.new
        return data
      end
    end

    class H264Settings
      def self.parse(map)
        data = Types::H264Settings.new
        data.adaptive_quantization = map['adaptiveQuantization']
        data.afd_signaling = map['afdSignaling']
        data.bitrate = map['bitrate']
        data.buf_fill_pct = map['bufFillPct']
        data.buf_size = map['bufSize']
        data.color_metadata = map['colorMetadata']
        data.color_space_settings = (Parsers::H264ColorSpaceSettings.parse(map['colorSpaceSettings']) unless map['colorSpaceSettings'].nil?)
        data.entropy_encoding = map['entropyEncoding']
        data.filter_settings = (Parsers::H264FilterSettings.parse(map['filterSettings']) unless map['filterSettings'].nil?)
        data.fixed_afd = map['fixedAfd']
        data.flicker_aq = map['flickerAq']
        data.force_field_pictures = map['forceFieldPictures']
        data.framerate_control = map['framerateControl']
        data.framerate_denominator = map['framerateDenominator']
        data.framerate_numerator = map['framerateNumerator']
        data.gop_b_reference = map['gopBReference']
        data.gop_closed_cadence = map['gopClosedCadence']
        data.gop_num_b_frames = map['gopNumBFrames']
        data.gop_size = Hearth::NumberHelper.deserialize(map['gopSize'])
        data.gop_size_units = map['gopSizeUnits']
        data.level = map['level']
        data.look_ahead_rate_control = map['lookAheadRateControl']
        data.max_bitrate = map['maxBitrate']
        data.min_i_interval = map['minIInterval']
        data.num_ref_frames = map['numRefFrames']
        data.par_control = map['parControl']
        data.par_denominator = map['parDenominator']
        data.par_numerator = map['parNumerator']
        data.profile = map['profile']
        data.quality_level = map['qualityLevel']
        data.qvbr_quality_level = map['qvbrQualityLevel']
        data.rate_control_mode = map['rateControlMode']
        data.scan_type = map['scanType']
        data.scene_change_detect = map['sceneChangeDetect']
        data.slices = map['slices']
        data.softness = map['softness']
        data.spatial_aq = map['spatialAq']
        data.subgop_length = map['subgopLength']
        data.syntax = map['syntax']
        data.temporal_aq = map['temporalAq']
        data.timecode_insertion = map['timecodeInsertion']
        return data
      end
    end

    class H264FilterSettings
      def self.parse(map)
        data = Types::H264FilterSettings.new
        data.temporal_filter_settings = (Parsers::TemporalFilterSettings.parse(map['temporalFilterSettings']) unless map['temporalFilterSettings'].nil?)
        return data
      end
    end

    class H264ColorSpaceSettings
      def self.parse(map)
        data = Types::H264ColorSpaceSettings.new
        data.color_space_passthrough_settings = (Parsers::ColorSpacePassthroughSettings.parse(map['colorSpacePassthroughSettings']) unless map['colorSpacePassthroughSettings'].nil?)
        data.rec601_settings = (Parsers::Rec601Settings.parse(map['rec601Settings']) unless map['rec601Settings'].nil?)
        data.rec709_settings = (Parsers::Rec709Settings.parse(map['rec709Settings']) unless map['rec709Settings'].nil?)
        return data
      end
    end

    class FrameCaptureSettings
      def self.parse(map)
        data = Types::FrameCaptureSettings.new
        data.capture_interval = map['captureInterval']
        data.capture_interval_units = map['captureIntervalUnits']
        return data
      end
    end

    class TimecodeConfig
      def self.parse(map)
        data = Types::TimecodeConfig.new
        data.source = map['source']
        data.sync_threshold = map['syncThreshold']
        return data
      end
    end

    class List____listOfOutputGroup
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::OutputGroup.parse(value) unless value.nil?
        end
        data
      end
    end

    class OutputGroup
      def self.parse(map)
        data = Types::OutputGroup.new
        data.name = map['name']
        data.output_group_settings = (Parsers::OutputGroupSettings.parse(map['outputGroupSettings']) unless map['outputGroupSettings'].nil?)
        data.outputs = (Parsers::List____listOfOutput.parse(map['outputs']) unless map['outputs'].nil?)
        return data
      end
    end

    class List____listOfOutput
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Output.parse(value) unless value.nil?
        end
        data
      end
    end

    class Output
      def self.parse(map)
        data = Types::Output.new
        data.audio_description_names = (Parsers::List____listOf__string.parse(map['audioDescriptionNames']) unless map['audioDescriptionNames'].nil?)
        data.caption_description_names = (Parsers::List____listOf__string.parse(map['captionDescriptionNames']) unless map['captionDescriptionNames'].nil?)
        data.output_name = map['outputName']
        data.output_settings = (Parsers::OutputSettings.parse(map['outputSettings']) unless map['outputSettings'].nil?)
        data.video_description_name = map['videoDescriptionName']
        return data
      end
    end

    class OutputSettings
      def self.parse(map)
        data = Types::OutputSettings.new
        data.archive_output_settings = (Parsers::ArchiveOutputSettings.parse(map['archiveOutputSettings']) unless map['archiveOutputSettings'].nil?)
        data.frame_capture_output_settings = (Parsers::FrameCaptureOutputSettings.parse(map['frameCaptureOutputSettings']) unless map['frameCaptureOutputSettings'].nil?)
        data.hls_output_settings = (Parsers::HlsOutputSettings.parse(map['hlsOutputSettings']) unless map['hlsOutputSettings'].nil?)
        data.media_package_output_settings = (Parsers::MediaPackageOutputSettings.parse(map['mediaPackageOutputSettings']) unless map['mediaPackageOutputSettings'].nil?)
        data.ms_smooth_output_settings = (Parsers::MsSmoothOutputSettings.parse(map['msSmoothOutputSettings']) unless map['msSmoothOutputSettings'].nil?)
        data.multiplex_output_settings = (Parsers::MultiplexOutputSettings.parse(map['multiplexOutputSettings']) unless map['multiplexOutputSettings'].nil?)
        data.rtmp_output_settings = (Parsers::RtmpOutputSettings.parse(map['rtmpOutputSettings']) unless map['rtmpOutputSettings'].nil?)
        data.udp_output_settings = (Parsers::UdpOutputSettings.parse(map['udpOutputSettings']) unless map['udpOutputSettings'].nil?)
        return data
      end
    end

    class UdpOutputSettings
      def self.parse(map)
        data = Types::UdpOutputSettings.new
        data.buffer_msec = map['bufferMsec']
        data.container_settings = (Parsers::UdpContainerSettings.parse(map['containerSettings']) unless map['containerSettings'].nil?)
        data.destination = (Parsers::OutputLocationRef.parse(map['destination']) unless map['destination'].nil?)
        data.fec_output_settings = (Parsers::FecOutputSettings.parse(map['fecOutputSettings']) unless map['fecOutputSettings'].nil?)
        return data
      end
    end

    class FecOutputSettings
      def self.parse(map)
        data = Types::FecOutputSettings.new
        data.column_depth = map['columnDepth']
        data.include_fec = map['includeFec']
        data.row_length = map['rowLength']
        return data
      end
    end

    class OutputLocationRef
      def self.parse(map)
        data = Types::OutputLocationRef.new
        data.destination_ref_id = map['destinationRefId']
        return data
      end
    end

    class UdpContainerSettings
      def self.parse(map)
        data = Types::UdpContainerSettings.new
        data.m2ts_settings = (Parsers::M2tsSettings.parse(map['m2tsSettings']) unless map['m2tsSettings'].nil?)
        return data
      end
    end

    class M2tsSettings
      def self.parse(map)
        data = Types::M2tsSettings.new
        data.absent_input_audio_behavior = map['absentInputAudioBehavior']
        data.arib = map['arib']
        data.arib_captions_pid = map['aribCaptionsPid']
        data.arib_captions_pid_control = map['aribCaptionsPidControl']
        data.audio_buffer_model = map['audioBufferModel']
        data.audio_frames_per_pes = map['audioFramesPerPes']
        data.audio_pids = map['audioPids']
        data.audio_stream_type = map['audioStreamType']
        data.bitrate = map['bitrate']
        data.buffer_model = map['bufferModel']
        data.cc_descriptor = map['ccDescriptor']
        data.dvb_nit_settings = (Parsers::DvbNitSettings.parse(map['dvbNitSettings']) unless map['dvbNitSettings'].nil?)
        data.dvb_sdt_settings = (Parsers::DvbSdtSettings.parse(map['dvbSdtSettings']) unless map['dvbSdtSettings'].nil?)
        data.dvb_sub_pids = map['dvbSubPids']
        data.dvb_tdt_settings = (Parsers::DvbTdtSettings.parse(map['dvbTdtSettings']) unless map['dvbTdtSettings'].nil?)
        data.dvb_teletext_pid = map['dvbTeletextPid']
        data.ebif = map['ebif']
        data.ebp_audio_interval = map['ebpAudioInterval']
        data.ebp_lookahead_ms = map['ebpLookaheadMs']
        data.ebp_placement = map['ebpPlacement']
        data.ecm_pid = map['ecmPid']
        data.es_rate_in_pes = map['esRateInPes']
        data.etv_platform_pid = map['etvPlatformPid']
        data.etv_signal_pid = map['etvSignalPid']
        data.fragment_time = Hearth::NumberHelper.deserialize(map['fragmentTime'])
        data.klv = map['klv']
        data.klv_data_pids = map['klvDataPids']
        data.nielsen_id3_behavior = map['nielsenId3Behavior']
        data.null_packet_bitrate = Hearth::NumberHelper.deserialize(map['nullPacketBitrate'])
        data.pat_interval = map['patInterval']
        data.pcr_control = map['pcrControl']
        data.pcr_period = map['pcrPeriod']
        data.pcr_pid = map['pcrPid']
        data.pmt_interval = map['pmtInterval']
        data.pmt_pid = map['pmtPid']
        data.program_num = map['programNum']
        data.rate_mode = map['rateMode']
        data.scte27_pids = map['scte27Pids']
        data.scte35_control = map['scte35Control']
        data.scte35_pid = map['scte35Pid']
        data.segmentation_markers = map['segmentationMarkers']
        data.segmentation_style = map['segmentationStyle']
        data.segmentation_time = Hearth::NumberHelper.deserialize(map['segmentationTime'])
        data.timed_metadata_behavior = map['timedMetadataBehavior']
        data.timed_metadata_pid = map['timedMetadataPid']
        data.transport_stream_id = map['transportStreamId']
        data.video_pid = map['videoPid']
        return data
      end
    end

    class DvbTdtSettings
      def self.parse(map)
        data = Types::DvbTdtSettings.new
        data.rep_interval = map['repInterval']
        return data
      end
    end

    class DvbSdtSettings
      def self.parse(map)
        data = Types::DvbSdtSettings.new
        data.output_sdt = map['outputSdt']
        data.rep_interval = map['repInterval']
        data.service_name = map['serviceName']
        data.service_provider_name = map['serviceProviderName']
        return data
      end
    end

    class DvbNitSettings
      def self.parse(map)
        data = Types::DvbNitSettings.new
        data.network_id = map['networkId']
        data.network_name = map['networkName']
        data.rep_interval = map['repInterval']
        return data
      end
    end

    class RtmpOutputSettings
      def self.parse(map)
        data = Types::RtmpOutputSettings.new
        data.certificate_mode = map['certificateMode']
        data.connection_retry_interval = map['connectionRetryInterval']
        data.destination = (Parsers::OutputLocationRef.parse(map['destination']) unless map['destination'].nil?)
        data.num_retries = map['numRetries']
        return data
      end
    end

    class MultiplexOutputSettings
      def self.parse(map)
        data = Types::MultiplexOutputSettings.new
        data.destination = (Parsers::OutputLocationRef.parse(map['destination']) unless map['destination'].nil?)
        return data
      end
    end

    class MsSmoothOutputSettings
      def self.parse(map)
        data = Types::MsSmoothOutputSettings.new
        data.h265_packaging_type = map['h265PackagingType']
        data.name_modifier = map['nameModifier']
        return data
      end
    end

    class MediaPackageOutputSettings
      def self.parse(map)
        data = Types::MediaPackageOutputSettings.new
        return data
      end
    end

    class HlsOutputSettings
      def self.parse(map)
        data = Types::HlsOutputSettings.new
        data.h265_packaging_type = map['h265PackagingType']
        data.hls_settings = (Parsers::HlsSettings.parse(map['hlsSettings']) unless map['hlsSettings'].nil?)
        data.name_modifier = map['nameModifier']
        data.segment_modifier = map['segmentModifier']
        return data
      end
    end

    class HlsSettings
      def self.parse(map)
        data = Types::HlsSettings.new
        data.audio_only_hls_settings = (Parsers::AudioOnlyHlsSettings.parse(map['audioOnlyHlsSettings']) unless map['audioOnlyHlsSettings'].nil?)
        data.fmp4_hls_settings = (Parsers::Fmp4HlsSettings.parse(map['fmp4HlsSettings']) unless map['fmp4HlsSettings'].nil?)
        data.frame_capture_hls_settings = (Parsers::FrameCaptureHlsSettings.parse(map['frameCaptureHlsSettings']) unless map['frameCaptureHlsSettings'].nil?)
        data.standard_hls_settings = (Parsers::StandardHlsSettings.parse(map['standardHlsSettings']) unless map['standardHlsSettings'].nil?)
        return data
      end
    end

    class StandardHlsSettings
      def self.parse(map)
        data = Types::StandardHlsSettings.new
        data.audio_rendition_sets = map['audioRenditionSets']
        data.m3u8_settings = (Parsers::M3u8Settings.parse(map['m3u8Settings']) unless map['m3u8Settings'].nil?)
        return data
      end
    end

    class M3u8Settings
      def self.parse(map)
        data = Types::M3u8Settings.new
        data.audio_frames_per_pes = map['audioFramesPerPes']
        data.audio_pids = map['audioPids']
        data.ecm_pid = map['ecmPid']
        data.nielsen_id3_behavior = map['nielsenId3Behavior']
        data.pat_interval = map['patInterval']
        data.pcr_control = map['pcrControl']
        data.pcr_period = map['pcrPeriod']
        data.pcr_pid = map['pcrPid']
        data.pmt_interval = map['pmtInterval']
        data.pmt_pid = map['pmtPid']
        data.program_num = map['programNum']
        data.scte35_behavior = map['scte35Behavior']
        data.scte35_pid = map['scte35Pid']
        data.timed_metadata_behavior = map['timedMetadataBehavior']
        data.timed_metadata_pid = map['timedMetadataPid']
        data.transport_stream_id = map['transportStreamId']
        data.video_pid = map['videoPid']
        return data
      end
    end

    class FrameCaptureHlsSettings
      def self.parse(map)
        data = Types::FrameCaptureHlsSettings.new
        return data
      end
    end

    class Fmp4HlsSettings
      def self.parse(map)
        data = Types::Fmp4HlsSettings.new
        data.audio_rendition_sets = map['audioRenditionSets']
        data.nielsen_id3_behavior = map['nielsenId3Behavior']
        data.timed_metadata_behavior = map['timedMetadataBehavior']
        return data
      end
    end

    class AudioOnlyHlsSettings
      def self.parse(map)
        data = Types::AudioOnlyHlsSettings.new
        data.audio_group_id = map['audioGroupId']
        data.audio_only_image = (Parsers::InputLocation.parse(map['audioOnlyImage']) unless map['audioOnlyImage'].nil?)
        data.audio_track_type = map['audioTrackType']
        data.segment_type = map['segmentType']
        return data
      end
    end

    class FrameCaptureOutputSettings
      def self.parse(map)
        data = Types::FrameCaptureOutputSettings.new
        data.name_modifier = map['nameModifier']
        return data
      end
    end

    class ArchiveOutputSettings
      def self.parse(map)
        data = Types::ArchiveOutputSettings.new
        data.container_settings = (Parsers::ArchiveContainerSettings.parse(map['containerSettings']) unless map['containerSettings'].nil?)
        data.extension = map['extension']
        data.name_modifier = map['nameModifier']
        return data
      end
    end

    class ArchiveContainerSettings
      def self.parse(map)
        data = Types::ArchiveContainerSettings.new
        data.m2ts_settings = (Parsers::M2tsSettings.parse(map['m2tsSettings']) unless map['m2tsSettings'].nil?)
        data.raw_settings = (Parsers::RawSettings.parse(map['rawSettings']) unless map['rawSettings'].nil?)
        return data
      end
    end

    class RawSettings
      def self.parse(map)
        data = Types::RawSettings.new
        return data
      end
    end

    class OutputGroupSettings
      def self.parse(map)
        data = Types::OutputGroupSettings.new
        data.archive_group_settings = (Parsers::ArchiveGroupSettings.parse(map['archiveGroupSettings']) unless map['archiveGroupSettings'].nil?)
        data.frame_capture_group_settings = (Parsers::FrameCaptureGroupSettings.parse(map['frameCaptureGroupSettings']) unless map['frameCaptureGroupSettings'].nil?)
        data.hls_group_settings = (Parsers::HlsGroupSettings.parse(map['hlsGroupSettings']) unless map['hlsGroupSettings'].nil?)
        data.media_package_group_settings = (Parsers::MediaPackageGroupSettings.parse(map['mediaPackageGroupSettings']) unless map['mediaPackageGroupSettings'].nil?)
        data.ms_smooth_group_settings = (Parsers::MsSmoothGroupSettings.parse(map['msSmoothGroupSettings']) unless map['msSmoothGroupSettings'].nil?)
        data.multiplex_group_settings = (Parsers::MultiplexGroupSettings.parse(map['multiplexGroupSettings']) unless map['multiplexGroupSettings'].nil?)
        data.rtmp_group_settings = (Parsers::RtmpGroupSettings.parse(map['rtmpGroupSettings']) unless map['rtmpGroupSettings'].nil?)
        data.udp_group_settings = (Parsers::UdpGroupSettings.parse(map['udpGroupSettings']) unless map['udpGroupSettings'].nil?)
        return data
      end
    end

    class UdpGroupSettings
      def self.parse(map)
        data = Types::UdpGroupSettings.new
        data.input_loss_action = map['inputLossAction']
        data.timed_metadata_id3_frame = map['timedMetadataId3Frame']
        data.timed_metadata_id3_period = map['timedMetadataId3Period']
        return data
      end
    end

    class RtmpGroupSettings
      def self.parse(map)
        data = Types::RtmpGroupSettings.new
        data.ad_markers = (Parsers::List____listOfRtmpAdMarkers.parse(map['adMarkers']) unless map['adMarkers'].nil?)
        data.authentication_scheme = map['authenticationScheme']
        data.cache_full_behavior = map['cacheFullBehavior']
        data.cache_length = map['cacheLength']
        data.caption_data = map['captionData']
        data.input_loss_action = map['inputLossAction']
        data.restart_delay = map['restartDelay']
        return data
      end
    end

    class List____listOfRtmpAdMarkers
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class MultiplexGroupSettings
      def self.parse(map)
        data = Types::MultiplexGroupSettings.new
        return data
      end
    end

    class MsSmoothGroupSettings
      def self.parse(map)
        data = Types::MsSmoothGroupSettings.new
        data.acquisition_point_id = map['acquisitionPointId']
        data.audio_only_timecode_control = map['audioOnlyTimecodeControl']
        data.certificate_mode = map['certificateMode']
        data.connection_retry_interval = map['connectionRetryInterval']
        data.destination = (Parsers::OutputLocationRef.parse(map['destination']) unless map['destination'].nil?)
        data.event_id = map['eventId']
        data.event_id_mode = map['eventIdMode']
        data.event_stop_behavior = map['eventStopBehavior']
        data.filecache_duration = map['filecacheDuration']
        data.fragment_length = map['fragmentLength']
        data.input_loss_action = map['inputLossAction']
        data.num_retries = map['numRetries']
        data.restart_delay = map['restartDelay']
        data.segmentation_mode = map['segmentationMode']
        data.send_delay_ms = map['sendDelayMs']
        data.sparse_track_type = map['sparseTrackType']
        data.stream_manifest_behavior = map['streamManifestBehavior']
        data.timestamp_offset = map['timestampOffset']
        data.timestamp_offset_mode = map['timestampOffsetMode']
        return data
      end
    end

    class MediaPackageGroupSettings
      def self.parse(map)
        data = Types::MediaPackageGroupSettings.new
        data.destination = (Parsers::OutputLocationRef.parse(map['destination']) unless map['destination'].nil?)
        return data
      end
    end

    class HlsGroupSettings
      def self.parse(map)
        data = Types::HlsGroupSettings.new
        data.ad_markers = (Parsers::List____listOfHlsAdMarkers.parse(map['adMarkers']) unless map['adMarkers'].nil?)
        data.base_url_content = map['baseUrlContent']
        data.base_url_content1 = map['baseUrlContent1']
        data.base_url_manifest = map['baseUrlManifest']
        data.base_url_manifest1 = map['baseUrlManifest1']
        data.caption_language_mappings = (Parsers::List____listOfCaptionLanguageMapping.parse(map['captionLanguageMappings']) unless map['captionLanguageMappings'].nil?)
        data.caption_language_setting = map['captionLanguageSetting']
        data.client_cache = map['clientCache']
        data.codec_specification = map['codecSpecification']
        data.constant_iv = map['constantIv']
        data.destination = (Parsers::OutputLocationRef.parse(map['destination']) unless map['destination'].nil?)
        data.directory_structure = map['directoryStructure']
        data.discontinuity_tags = map['discontinuityTags']
        data.encryption_type = map['encryptionType']
        data.hls_cdn_settings = (Parsers::HlsCdnSettings.parse(map['hlsCdnSettings']) unless map['hlsCdnSettings'].nil?)
        data.hls_id3_segment_tagging = map['hlsId3SegmentTagging']
        data.i_frame_only_playlists = map['iFrameOnlyPlaylists']
        data.incomplete_segment_behavior = map['incompleteSegmentBehavior']
        data.index_n_segments = map['indexNSegments']
        data.input_loss_action = map['inputLossAction']
        data.iv_in_manifest = map['ivInManifest']
        data.iv_source = map['ivSource']
        data.keep_segments = map['keepSegments']
        data.key_format = map['keyFormat']
        data.key_format_versions = map['keyFormatVersions']
        data.key_provider_settings = (Parsers::KeyProviderSettings.parse(map['keyProviderSettings']) unless map['keyProviderSettings'].nil?)
        data.manifest_compression = map['manifestCompression']
        data.manifest_duration_format = map['manifestDurationFormat']
        data.min_segment_length = map['minSegmentLength']
        data.mode = map['mode']
        data.output_selection = map['outputSelection']
        data.program_date_time = map['programDateTime']
        data.program_date_time_clock = map['programDateTimeClock']
        data.program_date_time_period = map['programDateTimePeriod']
        data.redundant_manifest = map['redundantManifest']
        data.segment_length = map['segmentLength']
        data.segmentation_mode = map['segmentationMode']
        data.segments_per_subdirectory = map['segmentsPerSubdirectory']
        data.stream_inf_resolution = map['streamInfResolution']
        data.timed_metadata_id3_frame = map['timedMetadataId3Frame']
        data.timed_metadata_id3_period = map['timedMetadataId3Period']
        data.timestamp_delta_milliseconds = map['timestampDeltaMilliseconds']
        data.ts_file_mode = map['tsFileMode']
        return data
      end
    end

    class KeyProviderSettings
      def self.parse(map)
        data = Types::KeyProviderSettings.new
        data.static_key_settings = (Parsers::StaticKeySettings.parse(map['staticKeySettings']) unless map['staticKeySettings'].nil?)
        return data
      end
    end

    class StaticKeySettings
      def self.parse(map)
        data = Types::StaticKeySettings.new
        data.key_provider_server = (Parsers::InputLocation.parse(map['keyProviderServer']) unless map['keyProviderServer'].nil?)
        data.static_key_value = map['staticKeyValue']
        return data
      end
    end

    class HlsCdnSettings
      def self.parse(map)
        data = Types::HlsCdnSettings.new
        data.hls_akamai_settings = (Parsers::HlsAkamaiSettings.parse(map['hlsAkamaiSettings']) unless map['hlsAkamaiSettings'].nil?)
        data.hls_basic_put_settings = (Parsers::HlsBasicPutSettings.parse(map['hlsBasicPutSettings']) unless map['hlsBasicPutSettings'].nil?)
        data.hls_media_store_settings = (Parsers::HlsMediaStoreSettings.parse(map['hlsMediaStoreSettings']) unless map['hlsMediaStoreSettings'].nil?)
        data.hls_s3_settings = (Parsers::HlsS3Settings.parse(map['hlsS3Settings']) unless map['hlsS3Settings'].nil?)
        data.hls_webdav_settings = (Parsers::HlsWebdavSettings.parse(map['hlsWebdavSettings']) unless map['hlsWebdavSettings'].nil?)
        return data
      end
    end

    class HlsWebdavSettings
      def self.parse(map)
        data = Types::HlsWebdavSettings.new
        data.connection_retry_interval = map['connectionRetryInterval']
        data.filecache_duration = map['filecacheDuration']
        data.http_transfer_mode = map['httpTransferMode']
        data.num_retries = map['numRetries']
        data.restart_delay = map['restartDelay']
        return data
      end
    end

    class HlsS3Settings
      def self.parse(map)
        data = Types::HlsS3Settings.new
        data.canned_acl = map['cannedAcl']
        return data
      end
    end

    class HlsMediaStoreSettings
      def self.parse(map)
        data = Types::HlsMediaStoreSettings.new
        data.connection_retry_interval = map['connectionRetryInterval']
        data.filecache_duration = map['filecacheDuration']
        data.media_store_storage_class = map['mediaStoreStorageClass']
        data.num_retries = map['numRetries']
        data.restart_delay = map['restartDelay']
        return data
      end
    end

    class HlsBasicPutSettings
      def self.parse(map)
        data = Types::HlsBasicPutSettings.new
        data.connection_retry_interval = map['connectionRetryInterval']
        data.filecache_duration = map['filecacheDuration']
        data.num_retries = map['numRetries']
        data.restart_delay = map['restartDelay']
        return data
      end
    end

    class HlsAkamaiSettings
      def self.parse(map)
        data = Types::HlsAkamaiSettings.new
        data.connection_retry_interval = map['connectionRetryInterval']
        data.filecache_duration = map['filecacheDuration']
        data.http_transfer_mode = map['httpTransferMode']
        data.num_retries = map['numRetries']
        data.restart_delay = map['restartDelay']
        data.salt = map['salt']
        data.token = map['token']
        return data
      end
    end

    class List____listOfCaptionLanguageMapping
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::CaptionLanguageMapping.parse(value) unless value.nil?
        end
        data
      end
    end

    class CaptionLanguageMapping
      def self.parse(map)
        data = Types::CaptionLanguageMapping.new
        data.caption_channel = map['captionChannel']
        data.language_code = map['languageCode']
        data.language_description = map['languageDescription']
        return data
      end
    end

    class List____listOfHlsAdMarkers
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class FrameCaptureGroupSettings
      def self.parse(map)
        data = Types::FrameCaptureGroupSettings.new
        data.destination = (Parsers::OutputLocationRef.parse(map['destination']) unless map['destination'].nil?)
        data.frame_capture_cdn_settings = (Parsers::FrameCaptureCdnSettings.parse(map['frameCaptureCdnSettings']) unless map['frameCaptureCdnSettings'].nil?)
        return data
      end
    end

    class FrameCaptureCdnSettings
      def self.parse(map)
        data = Types::FrameCaptureCdnSettings.new
        data.frame_capture_s3_settings = (Parsers::FrameCaptureS3Settings.parse(map['frameCaptureS3Settings']) unless map['frameCaptureS3Settings'].nil?)
        return data
      end
    end

    class FrameCaptureS3Settings
      def self.parse(map)
        data = Types::FrameCaptureS3Settings.new
        data.canned_acl = map['cannedAcl']
        return data
      end
    end

    class ArchiveGroupSettings
      def self.parse(map)
        data = Types::ArchiveGroupSettings.new
        data.archive_cdn_settings = (Parsers::ArchiveCdnSettings.parse(map['archiveCdnSettings']) unless map['archiveCdnSettings'].nil?)
        data.destination = (Parsers::OutputLocationRef.parse(map['destination']) unless map['destination'].nil?)
        data.rollover_interval = map['rolloverInterval']
        return data
      end
    end

    class ArchiveCdnSettings
      def self.parse(map)
        data = Types::ArchiveCdnSettings.new
        data.archive_s3_settings = (Parsers::ArchiveS3Settings.parse(map['archiveS3Settings']) unless map['archiveS3Settings'].nil?)
        return data
      end
    end

    class ArchiveS3Settings
      def self.parse(map)
        data = Types::ArchiveS3Settings.new
        data.canned_acl = map['cannedAcl']
        return data
      end
    end

    class NielsenConfiguration
      def self.parse(map)
        data = Types::NielsenConfiguration.new
        data.distributor_id = map['distributorId']
        data.nielsen_pcm_to_id3_tagging = map['nielsenPcmToId3Tagging']
        return data
      end
    end

    class MotionGraphicsConfiguration
      def self.parse(map)
        data = Types::MotionGraphicsConfiguration.new
        data.motion_graphics_insertion = map['motionGraphicsInsertion']
        data.motion_graphics_settings = (Parsers::MotionGraphicsSettings.parse(map['motionGraphicsSettings']) unless map['motionGraphicsSettings'].nil?)
        return data
      end
    end

    class MotionGraphicsSettings
      def self.parse(map)
        data = Types::MotionGraphicsSettings.new
        data.html_motion_graphics_settings = (Parsers::HtmlMotionGraphicsSettings.parse(map['htmlMotionGraphicsSettings']) unless map['htmlMotionGraphicsSettings'].nil?)
        return data
      end
    end

    class HtmlMotionGraphicsSettings
      def self.parse(map)
        data = Types::HtmlMotionGraphicsSettings.new
        return data
      end
    end

    class GlobalConfiguration
      def self.parse(map)
        data = Types::GlobalConfiguration.new
        data.initial_audio_gain = map['initialAudioGain']
        data.input_end_action = map['inputEndAction']
        data.input_loss_behavior = (Parsers::InputLossBehavior.parse(map['inputLossBehavior']) unless map['inputLossBehavior'].nil?)
        data.output_locking_mode = map['outputLockingMode']
        data.output_timing_source = map['outputTimingSource']
        data.support_low_framerate_inputs = map['supportLowFramerateInputs']
        return data
      end
    end

    class InputLossBehavior
      def self.parse(map)
        data = Types::InputLossBehavior.new
        data.black_frame_msec = map['blackFrameMsec']
        data.input_loss_image_color = map['inputLossImageColor']
        data.input_loss_image_slate = (Parsers::InputLocation.parse(map['inputLossImageSlate']) unless map['inputLossImageSlate'].nil?)
        data.input_loss_image_type = map['inputLossImageType']
        data.repeat_frame_msec = map['repeatFrameMsec']
        return data
      end
    end

    class FeatureActivations
      def self.parse(map)
        data = Types::FeatureActivations.new
        data.input_prepare_schedule_actions = map['inputPrepareScheduleActions']
        return data
      end
    end

    class List____listOfCaptionDescription
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::CaptionDescription.parse(value) unless value.nil?
        end
        data
      end
    end

    class CaptionDescription
      def self.parse(map)
        data = Types::CaptionDescription.new
        data.caption_selector_name = map['captionSelectorName']
        data.destination_settings = (Parsers::CaptionDestinationSettings.parse(map['destinationSettings']) unless map['destinationSettings'].nil?)
        data.language_code = map['languageCode']
        data.language_description = map['languageDescription']
        data.name = map['name']
        return data
      end
    end

    class CaptionDestinationSettings
      def self.parse(map)
        data = Types::CaptionDestinationSettings.new
        data.arib_destination_settings = (Parsers::AribDestinationSettings.parse(map['aribDestinationSettings']) unless map['aribDestinationSettings'].nil?)
        data.burn_in_destination_settings = (Parsers::BurnInDestinationSettings.parse(map['burnInDestinationSettings']) unless map['burnInDestinationSettings'].nil?)
        data.dvb_sub_destination_settings = (Parsers::DvbSubDestinationSettings.parse(map['dvbSubDestinationSettings']) unless map['dvbSubDestinationSettings'].nil?)
        data.ebu_tt_d_destination_settings = (Parsers::EbuTtDDestinationSettings.parse(map['ebuTtDDestinationSettings']) unless map['ebuTtDDestinationSettings'].nil?)
        data.embedded_destination_settings = (Parsers::EmbeddedDestinationSettings.parse(map['embeddedDestinationSettings']) unless map['embeddedDestinationSettings'].nil?)
        data.embedded_plus_scte20_destination_settings = (Parsers::EmbeddedPlusScte20DestinationSettings.parse(map['embeddedPlusScte20DestinationSettings']) unless map['embeddedPlusScte20DestinationSettings'].nil?)
        data.rtmp_caption_info_destination_settings = (Parsers::RtmpCaptionInfoDestinationSettings.parse(map['rtmpCaptionInfoDestinationSettings']) unless map['rtmpCaptionInfoDestinationSettings'].nil?)
        data.scte20_plus_embedded_destination_settings = (Parsers::Scte20PlusEmbeddedDestinationSettings.parse(map['scte20PlusEmbeddedDestinationSettings']) unless map['scte20PlusEmbeddedDestinationSettings'].nil?)
        data.scte27_destination_settings = (Parsers::Scte27DestinationSettings.parse(map['scte27DestinationSettings']) unless map['scte27DestinationSettings'].nil?)
        data.smpte_tt_destination_settings = (Parsers::SmpteTtDestinationSettings.parse(map['smpteTtDestinationSettings']) unless map['smpteTtDestinationSettings'].nil?)
        data.teletext_destination_settings = (Parsers::TeletextDestinationSettings.parse(map['teletextDestinationSettings']) unless map['teletextDestinationSettings'].nil?)
        data.ttml_destination_settings = (Parsers::TtmlDestinationSettings.parse(map['ttmlDestinationSettings']) unless map['ttmlDestinationSettings'].nil?)
        data.webvtt_destination_settings = (Parsers::WebvttDestinationSettings.parse(map['webvttDestinationSettings']) unless map['webvttDestinationSettings'].nil?)
        return data
      end
    end

    class WebvttDestinationSettings
      def self.parse(map)
        data = Types::WebvttDestinationSettings.new
        data.style_control = map['styleControl']
        return data
      end
    end

    class TtmlDestinationSettings
      def self.parse(map)
        data = Types::TtmlDestinationSettings.new
        data.style_control = map['styleControl']
        return data
      end
    end

    class TeletextDestinationSettings
      def self.parse(map)
        data = Types::TeletextDestinationSettings.new
        return data
      end
    end

    class SmpteTtDestinationSettings
      def self.parse(map)
        data = Types::SmpteTtDestinationSettings.new
        return data
      end
    end

    class Scte27DestinationSettings
      def self.parse(map)
        data = Types::Scte27DestinationSettings.new
        return data
      end
    end

    class Scte20PlusEmbeddedDestinationSettings
      def self.parse(map)
        data = Types::Scte20PlusEmbeddedDestinationSettings.new
        return data
      end
    end

    class RtmpCaptionInfoDestinationSettings
      def self.parse(map)
        data = Types::RtmpCaptionInfoDestinationSettings.new
        return data
      end
    end

    class EmbeddedPlusScte20DestinationSettings
      def self.parse(map)
        data = Types::EmbeddedPlusScte20DestinationSettings.new
        return data
      end
    end

    class EmbeddedDestinationSettings
      def self.parse(map)
        data = Types::EmbeddedDestinationSettings.new
        return data
      end
    end

    class EbuTtDDestinationSettings
      def self.parse(map)
        data = Types::EbuTtDDestinationSettings.new
        data.copyright_holder = map['copyrightHolder']
        data.fill_line_gap = map['fillLineGap']
        data.font_family = map['fontFamily']
        data.style_control = map['styleControl']
        return data
      end
    end

    class DvbSubDestinationSettings
      def self.parse(map)
        data = Types::DvbSubDestinationSettings.new
        data.alignment = map['alignment']
        data.background_color = map['backgroundColor']
        data.background_opacity = map['backgroundOpacity']
        data.font = (Parsers::InputLocation.parse(map['font']) unless map['font'].nil?)
        data.font_color = map['fontColor']
        data.font_opacity = map['fontOpacity']
        data.font_resolution = map['fontResolution']
        data.font_size = map['fontSize']
        data.outline_color = map['outlineColor']
        data.outline_size = map['outlineSize']
        data.shadow_color = map['shadowColor']
        data.shadow_opacity = map['shadowOpacity']
        data.shadow_x_offset = map['shadowXOffset']
        data.shadow_y_offset = map['shadowYOffset']
        data.teletext_grid_control = map['teletextGridControl']
        data.x_position = map['xPosition']
        data.y_position = map['yPosition']
        return data
      end
    end

    class BurnInDestinationSettings
      def self.parse(map)
        data = Types::BurnInDestinationSettings.new
        data.alignment = map['alignment']
        data.background_color = map['backgroundColor']
        data.background_opacity = map['backgroundOpacity']
        data.font = (Parsers::InputLocation.parse(map['font']) unless map['font'].nil?)
        data.font_color = map['fontColor']
        data.font_opacity = map['fontOpacity']
        data.font_resolution = map['fontResolution']
        data.font_size = map['fontSize']
        data.outline_color = map['outlineColor']
        data.outline_size = map['outlineSize']
        data.shadow_color = map['shadowColor']
        data.shadow_opacity = map['shadowOpacity']
        data.shadow_x_offset = map['shadowXOffset']
        data.shadow_y_offset = map['shadowYOffset']
        data.teletext_grid_control = map['teletextGridControl']
        data.x_position = map['xPosition']
        data.y_position = map['yPosition']
        return data
      end
    end

    class AribDestinationSettings
      def self.parse(map)
        data = Types::AribDestinationSettings.new
        return data
      end
    end

    class BlackoutSlate
      def self.parse(map)
        data = Types::BlackoutSlate.new
        data.blackout_slate_image = (Parsers::InputLocation.parse(map['blackoutSlateImage']) unless map['blackoutSlateImage'].nil?)
        data.network_end_blackout = map['networkEndBlackout']
        data.network_end_blackout_image = (Parsers::InputLocation.parse(map['networkEndBlackoutImage']) unless map['networkEndBlackoutImage'].nil?)
        data.network_id = map['networkId']
        data.state = map['state']
        return data
      end
    end

    class AvailConfiguration
      def self.parse(map)
        data = Types::AvailConfiguration.new
        data.avail_settings = (Parsers::AvailSettings.parse(map['availSettings']) unless map['availSettings'].nil?)
        return data
      end
    end

    class AvailSettings
      def self.parse(map)
        data = Types::AvailSettings.new
        data.scte35_splice_insert = (Parsers::Scte35SpliceInsert.parse(map['scte35SpliceInsert']) unless map['scte35SpliceInsert'].nil?)
        data.scte35_time_signal_apos = (Parsers::Scte35TimeSignalApos.parse(map['scte35TimeSignalApos']) unless map['scte35TimeSignalApos'].nil?)
        return data
      end
    end

    class Scte35TimeSignalApos
      def self.parse(map)
        data = Types::Scte35TimeSignalApos.new
        data.ad_avail_offset = map['adAvailOffset']
        data.no_regional_blackout_flag = map['noRegionalBlackoutFlag']
        data.web_delivery_allowed_flag = map['webDeliveryAllowedFlag']
        return data
      end
    end

    class Scte35SpliceInsert
      def self.parse(map)
        data = Types::Scte35SpliceInsert.new
        data.ad_avail_offset = map['adAvailOffset']
        data.no_regional_blackout_flag = map['noRegionalBlackoutFlag']
        data.web_delivery_allowed_flag = map['webDeliveryAllowedFlag']
        return data
      end
    end

    class AvailBlanking
      def self.parse(map)
        data = Types::AvailBlanking.new
        data.avail_blanking_image = (Parsers::InputLocation.parse(map['availBlankingImage']) unless map['availBlankingImage'].nil?)
        data.state = map['state']
        return data
      end
    end

    class List____listOfAudioDescription
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AudioDescription.parse(value) unless value.nil?
        end
        data
      end
    end

    class AudioDescription
      def self.parse(map)
        data = Types::AudioDescription.new
        data.audio_normalization_settings = (Parsers::AudioNormalizationSettings.parse(map['audioNormalizationSettings']) unless map['audioNormalizationSettings'].nil?)
        data.audio_selector_name = map['audioSelectorName']
        data.audio_type = map['audioType']
        data.audio_type_control = map['audioTypeControl']
        data.audio_watermarking_settings = (Parsers::AudioWatermarkSettings.parse(map['audioWatermarkingSettings']) unless map['audioWatermarkingSettings'].nil?)
        data.codec_settings = (Parsers::AudioCodecSettings.parse(map['codecSettings']) unless map['codecSettings'].nil?)
        data.language_code = map['languageCode']
        data.language_code_control = map['languageCodeControl']
        data.name = map['name']
        data.remix_settings = (Parsers::RemixSettings.parse(map['remixSettings']) unless map['remixSettings'].nil?)
        data.stream_name = map['streamName']
        return data
      end
    end

    class RemixSettings
      def self.parse(map)
        data = Types::RemixSettings.new
        data.channel_mappings = (Parsers::List____listOfAudioChannelMapping.parse(map['channelMappings']) unless map['channelMappings'].nil?)
        data.channels_in = map['channelsIn']
        data.channels_out = map['channelsOut']
        return data
      end
    end

    class List____listOfAudioChannelMapping
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AudioChannelMapping.parse(value) unless value.nil?
        end
        data
      end
    end

    class AudioChannelMapping
      def self.parse(map)
        data = Types::AudioChannelMapping.new
        data.input_channel_levels = (Parsers::List____listOfInputChannelLevel.parse(map['inputChannelLevels']) unless map['inputChannelLevels'].nil?)
        data.output_channel = map['outputChannel']
        return data
      end
    end

    class List____listOfInputChannelLevel
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::InputChannelLevel.parse(value) unless value.nil?
        end
        data
      end
    end

    class InputChannelLevel
      def self.parse(map)
        data = Types::InputChannelLevel.new
        data.gain = map['gain']
        data.input_channel = map['inputChannel']
        return data
      end
    end

    class AudioCodecSettings
      def self.parse(map)
        data = Types::AudioCodecSettings.new
        data.aac_settings = (Parsers::AacSettings.parse(map['aacSettings']) unless map['aacSettings'].nil?)
        data.ac3_settings = (Parsers::Ac3Settings.parse(map['ac3Settings']) unless map['ac3Settings'].nil?)
        data.eac3_settings = (Parsers::Eac3Settings.parse(map['eac3Settings']) unless map['eac3Settings'].nil?)
        data.mp2_settings = (Parsers::Mp2Settings.parse(map['mp2Settings']) unless map['mp2Settings'].nil?)
        data.pass_through_settings = (Parsers::PassThroughSettings.parse(map['passThroughSettings']) unless map['passThroughSettings'].nil?)
        data.wav_settings = (Parsers::WavSettings.parse(map['wavSettings']) unless map['wavSettings'].nil?)
        return data
      end
    end

    class WavSettings
      def self.parse(map)
        data = Types::WavSettings.new
        data.bit_depth = Hearth::NumberHelper.deserialize(map['bitDepth'])
        data.coding_mode = map['codingMode']
        data.sample_rate = Hearth::NumberHelper.deserialize(map['sampleRate'])
        return data
      end
    end

    class PassThroughSettings
      def self.parse(map)
        data = Types::PassThroughSettings.new
        return data
      end
    end

    class Mp2Settings
      def self.parse(map)
        data = Types::Mp2Settings.new
        data.bitrate = Hearth::NumberHelper.deserialize(map['bitrate'])
        data.coding_mode = map['codingMode']
        data.sample_rate = Hearth::NumberHelper.deserialize(map['sampleRate'])
        return data
      end
    end

    class Eac3Settings
      def self.parse(map)
        data = Types::Eac3Settings.new
        data.attenuation_control = map['attenuationControl']
        data.bitrate = Hearth::NumberHelper.deserialize(map['bitrate'])
        data.bitstream_mode = map['bitstreamMode']
        data.coding_mode = map['codingMode']
        data.dc_filter = map['dcFilter']
        data.dialnorm = map['dialnorm']
        data.drc_line = map['drcLine']
        data.drc_rf = map['drcRf']
        data.lfe_control = map['lfeControl']
        data.lfe_filter = map['lfeFilter']
        data.lo_ro_center_mix_level = Hearth::NumberHelper.deserialize(map['loRoCenterMixLevel'])
        data.lo_ro_surround_mix_level = Hearth::NumberHelper.deserialize(map['loRoSurroundMixLevel'])
        data.lt_rt_center_mix_level = Hearth::NumberHelper.deserialize(map['ltRtCenterMixLevel'])
        data.lt_rt_surround_mix_level = Hearth::NumberHelper.deserialize(map['ltRtSurroundMixLevel'])
        data.metadata_control = map['metadataControl']
        data.passthrough_control = map['passthroughControl']
        data.phase_control = map['phaseControl']
        data.stereo_downmix = map['stereoDownmix']
        data.surround_ex_mode = map['surroundExMode']
        data.surround_mode = map['surroundMode']
        return data
      end
    end

    class Ac3Settings
      def self.parse(map)
        data = Types::Ac3Settings.new
        data.bitrate = Hearth::NumberHelper.deserialize(map['bitrate'])
        data.bitstream_mode = map['bitstreamMode']
        data.coding_mode = map['codingMode']
        data.dialnorm = map['dialnorm']
        data.drc_profile = map['drcProfile']
        data.lfe_filter = map['lfeFilter']
        data.metadata_control = map['metadataControl']
        return data
      end
    end

    class AacSettings
      def self.parse(map)
        data = Types::AacSettings.new
        data.bitrate = Hearth::NumberHelper.deserialize(map['bitrate'])
        data.coding_mode = map['codingMode']
        data.input_type = map['inputType']
        data.profile = map['profile']
        data.rate_control_mode = map['rateControlMode']
        data.raw_format = map['rawFormat']
        data.sample_rate = Hearth::NumberHelper.deserialize(map['sampleRate'])
        data.spec = map['spec']
        data.vbr_quality = map['vbrQuality']
        return data
      end
    end

    class AudioWatermarkSettings
      def self.parse(map)
        data = Types::AudioWatermarkSettings.new
        data.nielsen_watermarks_settings = (Parsers::NielsenWatermarksSettings.parse(map['nielsenWatermarksSettings']) unless map['nielsenWatermarksSettings'].nil?)
        return data
      end
    end

    class NielsenWatermarksSettings
      def self.parse(map)
        data = Types::NielsenWatermarksSettings.new
        data.nielsen_cbet_settings = (Parsers::NielsenCBET.parse(map['nielsenCbetSettings']) unless map['nielsenCbetSettings'].nil?)
        data.nielsen_distribution_type = map['nielsenDistributionType']
        data.nielsen_naes_ii_nw_settings = (Parsers::NielsenNaesIiNw.parse(map['nielsenNaesIiNwSettings']) unless map['nielsenNaesIiNwSettings'].nil?)
        return data
      end
    end

    class NielsenNaesIiNw
      def self.parse(map)
        data = Types::NielsenNaesIiNw.new
        data.check_digit_string = map['checkDigitString']
        data.sid = Hearth::NumberHelper.deserialize(map['sid'])
        return data
      end
    end

    class NielsenCBET
      def self.parse(map)
        data = Types::NielsenCBET.new
        data.cbet_check_digit_string = map['cbetCheckDigitString']
        data.cbet_stepaside = map['cbetStepaside']
        data.csid = map['csid']
        return data
      end
    end

    class AudioNormalizationSettings
      def self.parse(map)
        data = Types::AudioNormalizationSettings.new
        data.algorithm = map['algorithm']
        data.algorithm_control = map['algorithmControl']
        data.target_lkfs = Hearth::NumberHelper.deserialize(map['targetLkfs'])
        return data
      end
    end

    class List____listOfChannelEgressEndpoint
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ChannelEgressEndpoint.parse(value) unless value.nil?
        end
        data
      end
    end

    class ChannelEgressEndpoint
      def self.parse(map)
        data = Types::ChannelEgressEndpoint.new
        data.source_ip = map['sourceIp']
        return data
      end
    end

    class List____listOfOutputDestination
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::OutputDestination.parse(value) unless value.nil?
        end
        data
      end
    end

    class OutputDestination
      def self.parse(map)
        data = Types::OutputDestination.new
        data.id = map['id']
        data.media_package_settings = (Parsers::List____listOfMediaPackageOutputDestinationSettings.parse(map['mediaPackageSettings']) unless map['mediaPackageSettings'].nil?)
        data.multiplex_settings = (Parsers::MultiplexProgramChannelDestinationSettings.parse(map['multiplexSettings']) unless map['multiplexSettings'].nil?)
        data.settings = (Parsers::List____listOfOutputDestinationSettings.parse(map['settings']) unless map['settings'].nil?)
        return data
      end
    end

    class List____listOfOutputDestinationSettings
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::OutputDestinationSettings.parse(value) unless value.nil?
        end
        data
      end
    end

    class OutputDestinationSettings
      def self.parse(map)
        data = Types::OutputDestinationSettings.new
        data.password_param = map['passwordParam']
        data.stream_name = map['streamName']
        data.url = map['url']
        data.username = map['username']
        return data
      end
    end

    class MultiplexProgramChannelDestinationSettings
      def self.parse(map)
        data = Types::MultiplexProgramChannelDestinationSettings.new
        data.multiplex_id = map['multiplexId']
        data.program_name = map['programName']
        return data
      end
    end

    class List____listOfMediaPackageOutputDestinationSettings
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::MediaPackageOutputDestinationSettings.parse(value) unless value.nil?
        end
        data
      end
    end

    class MediaPackageOutputDestinationSettings
      def self.parse(map)
        data = Types::MediaPackageOutputDestinationSettings.new
        data.channel_id = map['channelId']
        return data
      end
    end

    class CdiInputSpecification
      def self.parse(map)
        data = Types::CdiInputSpecification.new
        data.resolution = map['resolution']
        return data
      end
    end

    # Operation Parser for CreateInput
    class CreateInput
      def self.parse(http_resp)
        data = Types::CreateInputOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.input = (Parsers::Input.parse(map['input']) unless map['input'].nil?)
        data
      end
    end

    class Input
      def self.parse(map)
        data = Types::Input.new
        data.arn = map['arn']
        data.attached_channels = (Parsers::List____listOf__string.parse(map['attachedChannels']) unless map['attachedChannels'].nil?)
        data.destinations = (Parsers::List____listOfInputDestination.parse(map['destinations']) unless map['destinations'].nil?)
        data.id = map['id']
        data.input_class = map['inputClass']
        data.input_devices = (Parsers::List____listOfInputDeviceSettings.parse(map['inputDevices']) unless map['inputDevices'].nil?)
        data.input_partner_ids = (Parsers::List____listOf__string.parse(map['inputPartnerIds']) unless map['inputPartnerIds'].nil?)
        data.input_source_type = map['inputSourceType']
        data.media_connect_flows = (Parsers::List____listOfMediaConnectFlow.parse(map['mediaConnectFlows']) unless map['mediaConnectFlows'].nil?)
        data.name = map['name']
        data.role_arn = map['roleArn']
        data.security_groups = (Parsers::List____listOf__string.parse(map['securityGroups']) unless map['securityGroups'].nil?)
        data.sources = (Parsers::List____listOfInputSource.parse(map['sources']) unless map['sources'].nil?)
        data.state = map['state']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data.type = map['type']
        return data
      end
    end

    class List____listOfInputSource
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::InputSource.parse(value) unless value.nil?
        end
        data
      end
    end

    class InputSource
      def self.parse(map)
        data = Types::InputSource.new
        data.password_param = map['passwordParam']
        data.url = map['url']
        data.username = map['username']
        return data
      end
    end

    class List____listOfMediaConnectFlow
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::MediaConnectFlow.parse(value) unless value.nil?
        end
        data
      end
    end

    class MediaConnectFlow
      def self.parse(map)
        data = Types::MediaConnectFlow.new
        data.flow_arn = map['flowArn']
        return data
      end
    end

    class List____listOfInputDeviceSettings
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::InputDeviceSettings.parse(value) unless value.nil?
        end
        data
      end
    end

    class InputDeviceSettings
      def self.parse(map)
        data = Types::InputDeviceSettings.new
        data.id = map['id']
        return data
      end
    end

    class List____listOfInputDestination
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::InputDestination.parse(value) unless value.nil?
        end
        data
      end
    end

    class InputDestination
      def self.parse(map)
        data = Types::InputDestination.new
        data.ip = map['ip']
        data.port = map['port']
        data.url = map['url']
        data.vpc = (Parsers::InputDestinationVpc.parse(map['vpc']) unless map['vpc'].nil?)
        return data
      end
    end

    class InputDestinationVpc
      def self.parse(map)
        data = Types::InputDestinationVpc.new
        data.availability_zone = map['availabilityZone']
        data.network_interface_id = map['networkInterfaceId']
        return data
      end
    end

    # Operation Parser for CreateInputSecurityGroup
    class CreateInputSecurityGroup
      def self.parse(http_resp)
        data = Types::CreateInputSecurityGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.security_group = (Parsers::InputSecurityGroup.parse(map['securityGroup']) unless map['securityGroup'].nil?)
        data
      end
    end

    class InputSecurityGroup
      def self.parse(map)
        data = Types::InputSecurityGroup.new
        data.arn = map['arn']
        data.id = map['id']
        data.inputs = (Parsers::List____listOf__string.parse(map['inputs']) unless map['inputs'].nil?)
        data.state = map['state']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data.whitelist_rules = (Parsers::List____listOfInputWhitelistRule.parse(map['whitelistRules']) unless map['whitelistRules'].nil?)
        return data
      end
    end

    class List____listOfInputWhitelistRule
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::InputWhitelistRule.parse(value) unless value.nil?
        end
        data
      end
    end

    class InputWhitelistRule
      def self.parse(map)
        data = Types::InputWhitelistRule.new
        data.cidr = map['cidr']
        return data
      end
    end

    # Operation Parser for CreateMultiplex
    class CreateMultiplex
      def self.parse(http_resp)
        data = Types::CreateMultiplexOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.multiplex = (Parsers::Multiplex.parse(map['multiplex']) unless map['multiplex'].nil?)
        data
      end
    end

    class Multiplex
      def self.parse(map)
        data = Types::Multiplex.new
        data.arn = map['arn']
        data.availability_zones = (Parsers::List____listOf__string.parse(map['availabilityZones']) unless map['availabilityZones'].nil?)
        data.destinations = (Parsers::List____listOfMultiplexOutputDestination.parse(map['destinations']) unless map['destinations'].nil?)
        data.id = map['id']
        data.multiplex_settings = (Parsers::MultiplexSettings.parse(map['multiplexSettings']) unless map['multiplexSettings'].nil?)
        data.name = map['name']
        data.pipelines_running_count = map['pipelinesRunningCount']
        data.program_count = map['programCount']
        data.state = map['state']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    class MultiplexSettings
      def self.parse(map)
        data = Types::MultiplexSettings.new
        data.maximum_video_buffer_delay_milliseconds = map['maximumVideoBufferDelayMilliseconds']
        data.transport_stream_bitrate = map['transportStreamBitrate']
        data.transport_stream_id = map['transportStreamId']
        data.transport_stream_reserved_bitrate = map['transportStreamReservedBitrate']
        return data
      end
    end

    class List____listOfMultiplexOutputDestination
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::MultiplexOutputDestination.parse(value) unless value.nil?
        end
        data
      end
    end

    class MultiplexOutputDestination
      def self.parse(map)
        data = Types::MultiplexOutputDestination.new
        data.media_connect_settings = (Parsers::MultiplexMediaConnectOutputDestinationSettings.parse(map['mediaConnectSettings']) unless map['mediaConnectSettings'].nil?)
        return data
      end
    end

    class MultiplexMediaConnectOutputDestinationSettings
      def self.parse(map)
        data = Types::MultiplexMediaConnectOutputDestinationSettings.new
        data.entitlement_arn = map['entitlementArn']
        return data
      end
    end

    # Operation Parser for CreateMultiplexProgram
    class CreateMultiplexProgram
      def self.parse(http_resp)
        data = Types::CreateMultiplexProgramOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.multiplex_program = (Parsers::MultiplexProgram.parse(map['multiplexProgram']) unless map['multiplexProgram'].nil?)
        data
      end
    end

    class MultiplexProgram
      def self.parse(map)
        data = Types::MultiplexProgram.new
        data.channel_id = map['channelId']
        data.multiplex_program_settings = (Parsers::MultiplexProgramSettings.parse(map['multiplexProgramSettings']) unless map['multiplexProgramSettings'].nil?)
        data.packet_identifiers_map = (Parsers::MultiplexProgramPacketIdentifiersMap.parse(map['packetIdentifiersMap']) unless map['packetIdentifiersMap'].nil?)
        data.pipeline_details = (Parsers::List____listOfMultiplexProgramPipelineDetail.parse(map['pipelineDetails']) unless map['pipelineDetails'].nil?)
        data.program_name = map['programName']
        return data
      end
    end

    class List____listOfMultiplexProgramPipelineDetail
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::MultiplexProgramPipelineDetail.parse(value) unless value.nil?
        end
        data
      end
    end

    class MultiplexProgramPipelineDetail
      def self.parse(map)
        data = Types::MultiplexProgramPipelineDetail.new
        data.active_channel_pipeline = map['activeChannelPipeline']
        data.pipeline_id = map['pipelineId']
        return data
      end
    end

    class MultiplexProgramPacketIdentifiersMap
      def self.parse(map)
        data = Types::MultiplexProgramPacketIdentifiersMap.new
        data.audio_pids = (Parsers::List____listOf__integer.parse(map['audioPids']) unless map['audioPids'].nil?)
        data.dvb_sub_pids = (Parsers::List____listOf__integer.parse(map['dvbSubPids']) unless map['dvbSubPids'].nil?)
        data.dvb_teletext_pid = map['dvbTeletextPid']
        data.etv_platform_pid = map['etvPlatformPid']
        data.etv_signal_pid = map['etvSignalPid']
        data.klv_data_pids = (Parsers::List____listOf__integer.parse(map['klvDataPids']) unless map['klvDataPids'].nil?)
        data.pcr_pid = map['pcrPid']
        data.pmt_pid = map['pmtPid']
        data.private_metadata_pid = map['privateMetadataPid']
        data.scte27_pids = (Parsers::List____listOf__integer.parse(map['scte27Pids']) unless map['scte27Pids'].nil?)
        data.scte35_pid = map['scte35Pid']
        data.timed_metadata_pid = map['timedMetadataPid']
        data.video_pid = map['videoPid']
        return data
      end
    end

    class List____listOf__integer
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class MultiplexProgramSettings
      def self.parse(map)
        data = Types::MultiplexProgramSettings.new
        data.preferred_channel_pipeline = map['preferredChannelPipeline']
        data.program_number = map['programNumber']
        data.service_descriptor = (Parsers::MultiplexProgramServiceDescriptor.parse(map['serviceDescriptor']) unless map['serviceDescriptor'].nil?)
        data.video_settings = (Parsers::MultiplexVideoSettings.parse(map['videoSettings']) unless map['videoSettings'].nil?)
        return data
      end
    end

    class MultiplexVideoSettings
      def self.parse(map)
        data = Types::MultiplexVideoSettings.new
        data.constant_bitrate = map['constantBitrate']
        data.statmux_settings = (Parsers::MultiplexStatmuxVideoSettings.parse(map['statmuxSettings']) unless map['statmuxSettings'].nil?)
        return data
      end
    end

    class MultiplexStatmuxVideoSettings
      def self.parse(map)
        data = Types::MultiplexStatmuxVideoSettings.new
        data.maximum_bitrate = map['maximumBitrate']
        data.minimum_bitrate = map['minimumBitrate']
        data.priority = map['priority']
        return data
      end
    end

    class MultiplexProgramServiceDescriptor
      def self.parse(map)
        data = Types::MultiplexProgramServiceDescriptor.new
        data.provider_name = map['providerName']
        data.service_name = map['serviceName']
        return data
      end
    end

    # Operation Parser for CreatePartnerInput
    class CreatePartnerInput
      def self.parse(http_resp)
        data = Types::CreatePartnerInputOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.input = (Parsers::Input.parse(map['input']) unless map['input'].nil?)
        data
      end
    end

    # Operation Parser for CreateTags
    class CreateTags
      def self.parse(http_resp)
        data = Types::CreateTagsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteChannel
    class DeleteChannel
      def self.parse(http_resp)
        data = Types::DeleteChannelOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.cdi_input_specification = (Parsers::CdiInputSpecification.parse(map['cdiInputSpecification']) unless map['cdiInputSpecification'].nil?)
        data.channel_class = map['channelClass']
        data.destinations = (Parsers::List____listOfOutputDestination.parse(map['destinations']) unless map['destinations'].nil?)
        data.egress_endpoints = (Parsers::List____listOfChannelEgressEndpoint.parse(map['egressEndpoints']) unless map['egressEndpoints'].nil?)
        data.encoder_settings = (Parsers::EncoderSettings.parse(map['encoderSettings']) unless map['encoderSettings'].nil?)
        data.id = map['id']
        data.input_attachments = (Parsers::List____listOfInputAttachment.parse(map['inputAttachments']) unless map['inputAttachments'].nil?)
        data.input_specification = (Parsers::InputSpecification.parse(map['inputSpecification']) unless map['inputSpecification'].nil?)
        data.log_level = map['logLevel']
        data.maintenance = (Parsers::MaintenanceStatus.parse(map['maintenance']) unless map['maintenance'].nil?)
        data.name = map['name']
        data.pipeline_details = (Parsers::List____listOfPipelineDetail.parse(map['pipelineDetails']) unless map['pipelineDetails'].nil?)
        data.pipelines_running_count = map['pipelinesRunningCount']
        data.role_arn = map['roleArn']
        data.state = map['state']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data.vpc = (Parsers::VpcOutputSettingsDescription.parse(map['vpc']) unless map['vpc'].nil?)
        data
      end
    end

    # Operation Parser for DeleteInput
    class DeleteInput
      def self.parse(http_resp)
        data = Types::DeleteInputOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteInputSecurityGroup
    class DeleteInputSecurityGroup
      def self.parse(http_resp)
        data = Types::DeleteInputSecurityGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteMultiplex
    class DeleteMultiplex
      def self.parse(http_resp)
        data = Types::DeleteMultiplexOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.availability_zones = (Parsers::List____listOf__string.parse(map['availabilityZones']) unless map['availabilityZones'].nil?)
        data.destinations = (Parsers::List____listOfMultiplexOutputDestination.parse(map['destinations']) unless map['destinations'].nil?)
        data.id = map['id']
        data.multiplex_settings = (Parsers::MultiplexSettings.parse(map['multiplexSettings']) unless map['multiplexSettings'].nil?)
        data.name = map['name']
        data.pipelines_running_count = map['pipelinesRunningCount']
        data.program_count = map['programCount']
        data.state = map['state']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for DeleteMultiplexProgram
    class DeleteMultiplexProgram
      def self.parse(http_resp)
        data = Types::DeleteMultiplexProgramOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.channel_id = map['channelId']
        data.multiplex_program_settings = (Parsers::MultiplexProgramSettings.parse(map['multiplexProgramSettings']) unless map['multiplexProgramSettings'].nil?)
        data.packet_identifiers_map = (Parsers::MultiplexProgramPacketIdentifiersMap.parse(map['packetIdentifiersMap']) unless map['packetIdentifiersMap'].nil?)
        data.pipeline_details = (Parsers::List____listOfMultiplexProgramPipelineDetail.parse(map['pipelineDetails']) unless map['pipelineDetails'].nil?)
        data.program_name = map['programName']
        data
      end
    end

    # Operation Parser for DeleteReservation
    class DeleteReservation
      def self.parse(http_resp)
        data = Types::DeleteReservationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.count = map['count']
        data.currency_code = map['currencyCode']
        data.duration = map['duration']
        data.duration_units = map['durationUnits']
        data.end = map['end']
        data.fixed_price = Hearth::NumberHelper.deserialize(map['fixedPrice'])
        data.name = map['name']
        data.offering_description = map['offeringDescription']
        data.offering_id = map['offeringId']
        data.offering_type = map['offeringType']
        data.region = map['region']
        data.reservation_id = map['reservationId']
        data.resource_specification = (Parsers::ReservationResourceSpecification.parse(map['resourceSpecification']) unless map['resourceSpecification'].nil?)
        data.start = map['start']
        data.state = map['state']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data.usage_price = Hearth::NumberHelper.deserialize(map['usagePrice'])
        data
      end
    end

    class ReservationResourceSpecification
      def self.parse(map)
        data = Types::ReservationResourceSpecification.new
        data.channel_class = map['channelClass']
        data.codec = map['codec']
        data.maximum_bitrate = map['maximumBitrate']
        data.maximum_framerate = map['maximumFramerate']
        data.resolution = map['resolution']
        data.resource_type = map['resourceType']
        data.special_feature = map['specialFeature']
        data.video_quality = map['videoQuality']
        return data
      end
    end

    # Operation Parser for DeleteSchedule
    class DeleteSchedule
      def self.parse(http_resp)
        data = Types::DeleteScheduleOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteTags
    class DeleteTags
      def self.parse(http_resp)
        data = Types::DeleteTagsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DescribeChannel
    class DescribeChannel
      def self.parse(http_resp)
        data = Types::DescribeChannelOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.cdi_input_specification = (Parsers::CdiInputSpecification.parse(map['cdiInputSpecification']) unless map['cdiInputSpecification'].nil?)
        data.channel_class = map['channelClass']
        data.destinations = (Parsers::List____listOfOutputDestination.parse(map['destinations']) unless map['destinations'].nil?)
        data.egress_endpoints = (Parsers::List____listOfChannelEgressEndpoint.parse(map['egressEndpoints']) unless map['egressEndpoints'].nil?)
        data.encoder_settings = (Parsers::EncoderSettings.parse(map['encoderSettings']) unless map['encoderSettings'].nil?)
        data.id = map['id']
        data.input_attachments = (Parsers::List____listOfInputAttachment.parse(map['inputAttachments']) unless map['inputAttachments'].nil?)
        data.input_specification = (Parsers::InputSpecification.parse(map['inputSpecification']) unless map['inputSpecification'].nil?)
        data.log_level = map['logLevel']
        data.maintenance = (Parsers::MaintenanceStatus.parse(map['maintenance']) unless map['maintenance'].nil?)
        data.name = map['name']
        data.pipeline_details = (Parsers::List____listOfPipelineDetail.parse(map['pipelineDetails']) unless map['pipelineDetails'].nil?)
        data.pipelines_running_count = map['pipelinesRunningCount']
        data.role_arn = map['roleArn']
        data.state = map['state']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data.vpc = (Parsers::VpcOutputSettingsDescription.parse(map['vpc']) unless map['vpc'].nil?)
        data
      end
    end

    # Operation Parser for DescribeInput
    class DescribeInput
      def self.parse(http_resp)
        data = Types::DescribeInputOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.attached_channels = (Parsers::List____listOf__string.parse(map['attachedChannels']) unless map['attachedChannels'].nil?)
        data.destinations = (Parsers::List____listOfInputDestination.parse(map['destinations']) unless map['destinations'].nil?)
        data.id = map['id']
        data.input_class = map['inputClass']
        data.input_devices = (Parsers::List____listOfInputDeviceSettings.parse(map['inputDevices']) unless map['inputDevices'].nil?)
        data.input_partner_ids = (Parsers::List____listOf__string.parse(map['inputPartnerIds']) unless map['inputPartnerIds'].nil?)
        data.input_source_type = map['inputSourceType']
        data.media_connect_flows = (Parsers::List____listOfMediaConnectFlow.parse(map['mediaConnectFlows']) unless map['mediaConnectFlows'].nil?)
        data.name = map['name']
        data.role_arn = map['roleArn']
        data.security_groups = (Parsers::List____listOf__string.parse(map['securityGroups']) unless map['securityGroups'].nil?)
        data.sources = (Parsers::List____listOfInputSource.parse(map['sources']) unless map['sources'].nil?)
        data.state = map['state']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data.type = map['type']
        data
      end
    end

    # Operation Parser for DescribeInputDevice
    class DescribeInputDevice
      def self.parse(http_resp)
        data = Types::DescribeInputDeviceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.connection_state = map['connectionState']
        data.device_settings_sync_state = map['deviceSettingsSyncState']
        data.device_update_status = map['deviceUpdateStatus']
        data.hd_device_settings = (Parsers::InputDeviceHdSettings.parse(map['hdDeviceSettings']) unless map['hdDeviceSettings'].nil?)
        data.id = map['id']
        data.mac_address = map['macAddress']
        data.name = map['name']
        data.network_settings = (Parsers::InputDeviceNetworkSettings.parse(map['networkSettings']) unless map['networkSettings'].nil?)
        data.serial_number = map['serialNumber']
        data.type = map['type']
        data.uhd_device_settings = (Parsers::InputDeviceUhdSettings.parse(map['uhdDeviceSettings']) unless map['uhdDeviceSettings'].nil?)
        data
      end
    end

    class InputDeviceUhdSettings
      def self.parse(map)
        data = Types::InputDeviceUhdSettings.new
        data.active_input = map['activeInput']
        data.configured_input = map['configuredInput']
        data.device_state = map['deviceState']
        data.framerate = Hearth::NumberHelper.deserialize(map['framerate'])
        data.height = map['height']
        data.max_bitrate = map['maxBitrate']
        data.scan_type = map['scanType']
        data.width = map['width']
        return data
      end
    end

    class InputDeviceNetworkSettings
      def self.parse(map)
        data = Types::InputDeviceNetworkSettings.new
        data.dns_addresses = (Parsers::List____listOf__string.parse(map['dnsAddresses']) unless map['dnsAddresses'].nil?)
        data.gateway = map['gateway']
        data.ip_address = map['ipAddress']
        data.ip_scheme = map['ipScheme']
        data.subnet_mask = map['subnetMask']
        return data
      end
    end

    class InputDeviceHdSettings
      def self.parse(map)
        data = Types::InputDeviceHdSettings.new
        data.active_input = map['activeInput']
        data.configured_input = map['configuredInput']
        data.device_state = map['deviceState']
        data.framerate = Hearth::NumberHelper.deserialize(map['framerate'])
        data.height = map['height']
        data.max_bitrate = map['maxBitrate']
        data.scan_type = map['scanType']
        data.width = map['width']
        return data
      end
    end

    # Operation Parser for DescribeInputDeviceThumbnail
    class DescribeInputDeviceThumbnail
      def self.parse(http_resp)
        data = Types::DescribeInputDeviceThumbnailOutput.new
        data.content_type = http_resp.headers['Content-Type']
        data.content_length = http_resp.headers['Content-Length'].to_i unless http_resp.headers['Content-Length'].nil?
        data.e_tag = http_resp.headers['ETag']
        data.last_modified = Time.parse(http_resp.headers['Last-Modified']) if http_resp.headers['Last-Modified']
        data.body = http_resp.body
        data
      end
    end

    # Operation Parser for DescribeInputSecurityGroup
    class DescribeInputSecurityGroup
      def self.parse(http_resp)
        data = Types::DescribeInputSecurityGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.id = map['id']
        data.inputs = (Parsers::List____listOf__string.parse(map['inputs']) unless map['inputs'].nil?)
        data.state = map['state']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data.whitelist_rules = (Parsers::List____listOfInputWhitelistRule.parse(map['whitelistRules']) unless map['whitelistRules'].nil?)
        data
      end
    end

    # Operation Parser for DescribeMultiplex
    class DescribeMultiplex
      def self.parse(http_resp)
        data = Types::DescribeMultiplexOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.availability_zones = (Parsers::List____listOf__string.parse(map['availabilityZones']) unless map['availabilityZones'].nil?)
        data.destinations = (Parsers::List____listOfMultiplexOutputDestination.parse(map['destinations']) unless map['destinations'].nil?)
        data.id = map['id']
        data.multiplex_settings = (Parsers::MultiplexSettings.parse(map['multiplexSettings']) unless map['multiplexSettings'].nil?)
        data.name = map['name']
        data.pipelines_running_count = map['pipelinesRunningCount']
        data.program_count = map['programCount']
        data.state = map['state']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for DescribeMultiplexProgram
    class DescribeMultiplexProgram
      def self.parse(http_resp)
        data = Types::DescribeMultiplexProgramOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.channel_id = map['channelId']
        data.multiplex_program_settings = (Parsers::MultiplexProgramSettings.parse(map['multiplexProgramSettings']) unless map['multiplexProgramSettings'].nil?)
        data.packet_identifiers_map = (Parsers::MultiplexProgramPacketIdentifiersMap.parse(map['packetIdentifiersMap']) unless map['packetIdentifiersMap'].nil?)
        data.pipeline_details = (Parsers::List____listOfMultiplexProgramPipelineDetail.parse(map['pipelineDetails']) unless map['pipelineDetails'].nil?)
        data.program_name = map['programName']
        data
      end
    end

    # Operation Parser for DescribeOffering
    class DescribeOffering
      def self.parse(http_resp)
        data = Types::DescribeOfferingOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.currency_code = map['currencyCode']
        data.duration = map['duration']
        data.duration_units = map['durationUnits']
        data.fixed_price = Hearth::NumberHelper.deserialize(map['fixedPrice'])
        data.offering_description = map['offeringDescription']
        data.offering_id = map['offeringId']
        data.offering_type = map['offeringType']
        data.region = map['region']
        data.resource_specification = (Parsers::ReservationResourceSpecification.parse(map['resourceSpecification']) unless map['resourceSpecification'].nil?)
        data.usage_price = Hearth::NumberHelper.deserialize(map['usagePrice'])
        data
      end
    end

    # Operation Parser for DescribeReservation
    class DescribeReservation
      def self.parse(http_resp)
        data = Types::DescribeReservationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.count = map['count']
        data.currency_code = map['currencyCode']
        data.duration = map['duration']
        data.duration_units = map['durationUnits']
        data.end = map['end']
        data.fixed_price = Hearth::NumberHelper.deserialize(map['fixedPrice'])
        data.name = map['name']
        data.offering_description = map['offeringDescription']
        data.offering_id = map['offeringId']
        data.offering_type = map['offeringType']
        data.region = map['region']
        data.reservation_id = map['reservationId']
        data.resource_specification = (Parsers::ReservationResourceSpecification.parse(map['resourceSpecification']) unless map['resourceSpecification'].nil?)
        data.start = map['start']
        data.state = map['state']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data.usage_price = Hearth::NumberHelper.deserialize(map['usagePrice'])
        data
      end
    end

    # Operation Parser for DescribeSchedule
    class DescribeSchedule
      def self.parse(http_resp)
        data = Types::DescribeScheduleOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['nextToken']
        data.schedule_actions = (Parsers::List____listOfScheduleAction.parse(map['scheduleActions']) unless map['scheduleActions'].nil?)
        data
      end
    end

    # Operation Parser for ListChannels
    class ListChannels
      def self.parse(http_resp)
        data = Types::ListChannelsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.channels = (Parsers::List____listOfChannelSummary.parse(map['channels']) unless map['channels'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class List____listOfChannelSummary
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ChannelSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class ChannelSummary
      def self.parse(map)
        data = Types::ChannelSummary.new
        data.arn = map['arn']
        data.cdi_input_specification = (Parsers::CdiInputSpecification.parse(map['cdiInputSpecification']) unless map['cdiInputSpecification'].nil?)
        data.channel_class = map['channelClass']
        data.destinations = (Parsers::List____listOfOutputDestination.parse(map['destinations']) unless map['destinations'].nil?)
        data.egress_endpoints = (Parsers::List____listOfChannelEgressEndpoint.parse(map['egressEndpoints']) unless map['egressEndpoints'].nil?)
        data.id = map['id']
        data.input_attachments = (Parsers::List____listOfInputAttachment.parse(map['inputAttachments']) unless map['inputAttachments'].nil?)
        data.input_specification = (Parsers::InputSpecification.parse(map['inputSpecification']) unless map['inputSpecification'].nil?)
        data.log_level = map['logLevel']
        data.maintenance = (Parsers::MaintenanceStatus.parse(map['maintenance']) unless map['maintenance'].nil?)
        data.name = map['name']
        data.pipelines_running_count = map['pipelinesRunningCount']
        data.role_arn = map['roleArn']
        data.state = map['state']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data.vpc = (Parsers::VpcOutputSettingsDescription.parse(map['vpc']) unless map['vpc'].nil?)
        return data
      end
    end

    # Operation Parser for ListInputDeviceTransfers
    class ListInputDeviceTransfers
      def self.parse(http_resp)
        data = Types::ListInputDeviceTransfersOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.input_device_transfers = (Parsers::List____listOfTransferringInputDeviceSummary.parse(map['inputDeviceTransfers']) unless map['inputDeviceTransfers'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class List____listOfTransferringInputDeviceSummary
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::TransferringInputDeviceSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class TransferringInputDeviceSummary
      def self.parse(map)
        data = Types::TransferringInputDeviceSummary.new
        data.id = map['id']
        data.message = map['message'] || map['Message']
        data.target_customer_id = map['targetCustomerId']
        data.transfer_type = map['transferType']
        return data
      end
    end

    # Operation Parser for ListInputDevices
    class ListInputDevices
      def self.parse(http_resp)
        data = Types::ListInputDevicesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.input_devices = (Parsers::List____listOfInputDeviceSummary.parse(map['inputDevices']) unless map['inputDevices'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class List____listOfInputDeviceSummary
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::InputDeviceSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class InputDeviceSummary
      def self.parse(map)
        data = Types::InputDeviceSummary.new
        data.arn = map['arn']
        data.connection_state = map['connectionState']
        data.device_settings_sync_state = map['deviceSettingsSyncState']
        data.device_update_status = map['deviceUpdateStatus']
        data.hd_device_settings = (Parsers::InputDeviceHdSettings.parse(map['hdDeviceSettings']) unless map['hdDeviceSettings'].nil?)
        data.id = map['id']
        data.mac_address = map['macAddress']
        data.name = map['name']
        data.network_settings = (Parsers::InputDeviceNetworkSettings.parse(map['networkSettings']) unless map['networkSettings'].nil?)
        data.serial_number = map['serialNumber']
        data.type = map['type']
        data.uhd_device_settings = (Parsers::InputDeviceUhdSettings.parse(map['uhdDeviceSettings']) unless map['uhdDeviceSettings'].nil?)
        return data
      end
    end

    # Operation Parser for ListInputSecurityGroups
    class ListInputSecurityGroups
      def self.parse(http_resp)
        data = Types::ListInputSecurityGroupsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.input_security_groups = (Parsers::List____listOfInputSecurityGroup.parse(map['inputSecurityGroups']) unless map['inputSecurityGroups'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class List____listOfInputSecurityGroup
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::InputSecurityGroup.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListInputs
    class ListInputs
      def self.parse(http_resp)
        data = Types::ListInputsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.inputs = (Parsers::List____listOfInput.parse(map['inputs']) unless map['inputs'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class List____listOfInput
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Input.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListMultiplexPrograms
    class ListMultiplexPrograms
      def self.parse(http_resp)
        data = Types::ListMultiplexProgramsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.multiplex_programs = (Parsers::List____listOfMultiplexProgramSummary.parse(map['multiplexPrograms']) unless map['multiplexPrograms'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class List____listOfMultiplexProgramSummary
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::MultiplexProgramSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class MultiplexProgramSummary
      def self.parse(map)
        data = Types::MultiplexProgramSummary.new
        data.channel_id = map['channelId']
        data.program_name = map['programName']
        return data
      end
    end

    # Operation Parser for ListMultiplexes
    class ListMultiplexes
      def self.parse(http_resp)
        data = Types::ListMultiplexesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.multiplexes = (Parsers::List____listOfMultiplexSummary.parse(map['multiplexes']) unless map['multiplexes'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class List____listOfMultiplexSummary
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::MultiplexSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class MultiplexSummary
      def self.parse(map)
        data = Types::MultiplexSummary.new
        data.arn = map['arn']
        data.availability_zones = (Parsers::List____listOf__string.parse(map['availabilityZones']) unless map['availabilityZones'].nil?)
        data.id = map['id']
        data.multiplex_settings = (Parsers::MultiplexSettingsSummary.parse(map['multiplexSettings']) unless map['multiplexSettings'].nil?)
        data.name = map['name']
        data.pipelines_running_count = map['pipelinesRunningCount']
        data.program_count = map['programCount']
        data.state = map['state']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    class MultiplexSettingsSummary
      def self.parse(map)
        data = Types::MultiplexSettingsSummary.new
        data.transport_stream_bitrate = map['transportStreamBitrate']
        return data
      end
    end

    # Operation Parser for ListOfferings
    class ListOfferings
      def self.parse(http_resp)
        data = Types::ListOfferingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['nextToken']
        data.offerings = (Parsers::List____listOfOffering.parse(map['offerings']) unless map['offerings'].nil?)
        data
      end
    end

    class List____listOfOffering
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Offering.parse(value) unless value.nil?
        end
        data
      end
    end

    class Offering
      def self.parse(map)
        data = Types::Offering.new
        data.arn = map['arn']
        data.currency_code = map['currencyCode']
        data.duration = map['duration']
        data.duration_units = map['durationUnits']
        data.fixed_price = Hearth::NumberHelper.deserialize(map['fixedPrice'])
        data.offering_description = map['offeringDescription']
        data.offering_id = map['offeringId']
        data.offering_type = map['offeringType']
        data.region = map['region']
        data.resource_specification = (Parsers::ReservationResourceSpecification.parse(map['resourceSpecification']) unless map['resourceSpecification'].nil?)
        data.usage_price = Hearth::NumberHelper.deserialize(map['usagePrice'])
        return data
      end
    end

    # Operation Parser for ListReservations
    class ListReservations
      def self.parse(http_resp)
        data = Types::ListReservationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['nextToken']
        data.reservations = (Parsers::List____listOfReservation.parse(map['reservations']) unless map['reservations'].nil?)
        data
      end
    end

    class List____listOfReservation
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Reservation.parse(value) unless value.nil?
        end
        data
      end
    end

    class Reservation
      def self.parse(map)
        data = Types::Reservation.new
        data.arn = map['arn']
        data.count = map['count']
        data.currency_code = map['currencyCode']
        data.duration = map['duration']
        data.duration_units = map['durationUnits']
        data.end = map['end']
        data.fixed_price = Hearth::NumberHelper.deserialize(map['fixedPrice'])
        data.name = map['name']
        data.offering_description = map['offeringDescription']
        data.offering_id = map['offeringId']
        data.offering_type = map['offeringType']
        data.region = map['region']
        data.reservation_id = map['reservationId']
        data.resource_specification = (Parsers::ReservationResourceSpecification.parse(map['resourceSpecification']) unless map['resourceSpecification'].nil?)
        data.start = map['start']
        data.state = map['state']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data.usage_price = Hearth::NumberHelper.deserialize(map['usagePrice'])
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for PurchaseOffering
    class PurchaseOffering
      def self.parse(http_resp)
        data = Types::PurchaseOfferingOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.reservation = (Parsers::Reservation.parse(map['reservation']) unless map['reservation'].nil?)
        data
      end
    end

    # Operation Parser for RejectInputDeviceTransfer
    class RejectInputDeviceTransfer
      def self.parse(http_resp)
        data = Types::RejectInputDeviceTransferOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for StartChannel
    class StartChannel
      def self.parse(http_resp)
        data = Types::StartChannelOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.cdi_input_specification = (Parsers::CdiInputSpecification.parse(map['cdiInputSpecification']) unless map['cdiInputSpecification'].nil?)
        data.channel_class = map['channelClass']
        data.destinations = (Parsers::List____listOfOutputDestination.parse(map['destinations']) unless map['destinations'].nil?)
        data.egress_endpoints = (Parsers::List____listOfChannelEgressEndpoint.parse(map['egressEndpoints']) unless map['egressEndpoints'].nil?)
        data.encoder_settings = (Parsers::EncoderSettings.parse(map['encoderSettings']) unless map['encoderSettings'].nil?)
        data.id = map['id']
        data.input_attachments = (Parsers::List____listOfInputAttachment.parse(map['inputAttachments']) unless map['inputAttachments'].nil?)
        data.input_specification = (Parsers::InputSpecification.parse(map['inputSpecification']) unless map['inputSpecification'].nil?)
        data.log_level = map['logLevel']
        data.maintenance = (Parsers::MaintenanceStatus.parse(map['maintenance']) unless map['maintenance'].nil?)
        data.name = map['name']
        data.pipeline_details = (Parsers::List____listOfPipelineDetail.parse(map['pipelineDetails']) unless map['pipelineDetails'].nil?)
        data.pipelines_running_count = map['pipelinesRunningCount']
        data.role_arn = map['roleArn']
        data.state = map['state']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data.vpc = (Parsers::VpcOutputSettingsDescription.parse(map['vpc']) unless map['vpc'].nil?)
        data
      end
    end

    # Operation Parser for StartMultiplex
    class StartMultiplex
      def self.parse(http_resp)
        data = Types::StartMultiplexOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.availability_zones = (Parsers::List____listOf__string.parse(map['availabilityZones']) unless map['availabilityZones'].nil?)
        data.destinations = (Parsers::List____listOfMultiplexOutputDestination.parse(map['destinations']) unless map['destinations'].nil?)
        data.id = map['id']
        data.multiplex_settings = (Parsers::MultiplexSettings.parse(map['multiplexSettings']) unless map['multiplexSettings'].nil?)
        data.name = map['name']
        data.pipelines_running_count = map['pipelinesRunningCount']
        data.program_count = map['programCount']
        data.state = map['state']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for StopChannel
    class StopChannel
      def self.parse(http_resp)
        data = Types::StopChannelOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.cdi_input_specification = (Parsers::CdiInputSpecification.parse(map['cdiInputSpecification']) unless map['cdiInputSpecification'].nil?)
        data.channel_class = map['channelClass']
        data.destinations = (Parsers::List____listOfOutputDestination.parse(map['destinations']) unless map['destinations'].nil?)
        data.egress_endpoints = (Parsers::List____listOfChannelEgressEndpoint.parse(map['egressEndpoints']) unless map['egressEndpoints'].nil?)
        data.encoder_settings = (Parsers::EncoderSettings.parse(map['encoderSettings']) unless map['encoderSettings'].nil?)
        data.id = map['id']
        data.input_attachments = (Parsers::List____listOfInputAttachment.parse(map['inputAttachments']) unless map['inputAttachments'].nil?)
        data.input_specification = (Parsers::InputSpecification.parse(map['inputSpecification']) unless map['inputSpecification'].nil?)
        data.log_level = map['logLevel']
        data.maintenance = (Parsers::MaintenanceStatus.parse(map['maintenance']) unless map['maintenance'].nil?)
        data.name = map['name']
        data.pipeline_details = (Parsers::List____listOfPipelineDetail.parse(map['pipelineDetails']) unless map['pipelineDetails'].nil?)
        data.pipelines_running_count = map['pipelinesRunningCount']
        data.role_arn = map['roleArn']
        data.state = map['state']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data.vpc = (Parsers::VpcOutputSettingsDescription.parse(map['vpc']) unless map['vpc'].nil?)
        data
      end
    end

    # Operation Parser for StopMultiplex
    class StopMultiplex
      def self.parse(http_resp)
        data = Types::StopMultiplexOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.availability_zones = (Parsers::List____listOf__string.parse(map['availabilityZones']) unless map['availabilityZones'].nil?)
        data.destinations = (Parsers::List____listOfMultiplexOutputDestination.parse(map['destinations']) unless map['destinations'].nil?)
        data.id = map['id']
        data.multiplex_settings = (Parsers::MultiplexSettings.parse(map['multiplexSettings']) unless map['multiplexSettings'].nil?)
        data.name = map['name']
        data.pipelines_running_count = map['pipelinesRunningCount']
        data.program_count = map['programCount']
        data.state = map['state']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for TransferInputDevice
    class TransferInputDevice
      def self.parse(http_resp)
        data = Types::TransferInputDeviceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateChannel
    class UpdateChannel
      def self.parse(http_resp)
        data = Types::UpdateChannelOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.channel = (Parsers::Channel.parse(map['channel']) unless map['channel'].nil?)
        data
      end
    end

    # Operation Parser for UpdateChannelClass
    class UpdateChannelClass
      def self.parse(http_resp)
        data = Types::UpdateChannelClassOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.channel = (Parsers::Channel.parse(map['channel']) unless map['channel'].nil?)
        data
      end
    end

    # Operation Parser for UpdateInput
    class UpdateInput
      def self.parse(http_resp)
        data = Types::UpdateInputOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.input = (Parsers::Input.parse(map['input']) unless map['input'].nil?)
        data
      end
    end

    # Operation Parser for UpdateInputDevice
    class UpdateInputDevice
      def self.parse(http_resp)
        data = Types::UpdateInputDeviceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.connection_state = map['connectionState']
        data.device_settings_sync_state = map['deviceSettingsSyncState']
        data.device_update_status = map['deviceUpdateStatus']
        data.hd_device_settings = (Parsers::InputDeviceHdSettings.parse(map['hdDeviceSettings']) unless map['hdDeviceSettings'].nil?)
        data.id = map['id']
        data.mac_address = map['macAddress']
        data.name = map['name']
        data.network_settings = (Parsers::InputDeviceNetworkSettings.parse(map['networkSettings']) unless map['networkSettings'].nil?)
        data.serial_number = map['serialNumber']
        data.type = map['type']
        data.uhd_device_settings = (Parsers::InputDeviceUhdSettings.parse(map['uhdDeviceSettings']) unless map['uhdDeviceSettings'].nil?)
        data
      end
    end

    # Operation Parser for UpdateInputSecurityGroup
    class UpdateInputSecurityGroup
      def self.parse(http_resp)
        data = Types::UpdateInputSecurityGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.security_group = (Parsers::InputSecurityGroup.parse(map['securityGroup']) unless map['securityGroup'].nil?)
        data
      end
    end

    # Operation Parser for UpdateMultiplex
    class UpdateMultiplex
      def self.parse(http_resp)
        data = Types::UpdateMultiplexOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.multiplex = (Parsers::Multiplex.parse(map['multiplex']) unless map['multiplex'].nil?)
        data
      end
    end

    # Operation Parser for UpdateMultiplexProgram
    class UpdateMultiplexProgram
      def self.parse(http_resp)
        data = Types::UpdateMultiplexProgramOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.multiplex_program = (Parsers::MultiplexProgram.parse(map['multiplexProgram']) unless map['multiplexProgram'].nil?)
        data
      end
    end

    # Operation Parser for UpdateReservation
    class UpdateReservation
      def self.parse(http_resp)
        data = Types::UpdateReservationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.reservation = (Parsers::Reservation.parse(map['reservation']) unless map['reservation'].nil?)
        data
      end
    end
  end
end
