# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::MediaLive
  module Stubs

    # Operation Stubber for AcceptInputDeviceTransfer
    class AcceptInputDeviceTransfer
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for BatchDelete
    class BatchDelete
      def self.default(visited=[])
        {
          failed: Stubs::List____listOfBatchFailedResultModel.default(visited),
          successful: Stubs::List____listOfBatchSuccessfulResultModel.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['failed'] = Stubs::List____listOfBatchFailedResultModel.stub(stub[:failed]) unless stub[:failed].nil?
        data['successful'] = Stubs::List____listOfBatchSuccessfulResultModel.stub(stub[:successful]) unless stub[:successful].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfBatchSuccessfulResultModel
    class List____listOfBatchSuccessfulResultModel
      def self.default(visited=[])
        return nil if visited.include?('List____listOfBatchSuccessfulResultModel')
        visited = visited + ['List____listOfBatchSuccessfulResultModel']
        [
          Stubs::BatchSuccessfulResultModel.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::BatchSuccessfulResultModel.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BatchSuccessfulResultModel
    class BatchSuccessfulResultModel
      def self.default(visited=[])
        return nil if visited.include?('BatchSuccessfulResultModel')
        visited = visited + ['BatchSuccessfulResultModel']
        {
          arn: 'arn',
          id: 'id',
          state: 'state',
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchSuccessfulResultModel.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data
      end
    end

    # List Stubber for __listOfBatchFailedResultModel
    class List____listOfBatchFailedResultModel
      def self.default(visited=[])
        return nil if visited.include?('List____listOfBatchFailedResultModel')
        visited = visited + ['List____listOfBatchFailedResultModel']
        [
          Stubs::BatchFailedResultModel.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::BatchFailedResultModel.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BatchFailedResultModel
    class BatchFailedResultModel
      def self.default(visited=[])
        return nil if visited.include?('BatchFailedResultModel')
        visited = visited + ['BatchFailedResultModel']
        {
          arn: 'arn',
          code: 'code',
          id: 'id',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchFailedResultModel.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['code'] = stub[:code] unless stub[:code].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Operation Stubber for BatchStart
    class BatchStart
      def self.default(visited=[])
        {
          failed: Stubs::List____listOfBatchFailedResultModel.default(visited),
          successful: Stubs::List____listOfBatchSuccessfulResultModel.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['failed'] = Stubs::List____listOfBatchFailedResultModel.stub(stub[:failed]) unless stub[:failed].nil?
        data['successful'] = Stubs::List____listOfBatchSuccessfulResultModel.stub(stub[:successful]) unless stub[:successful].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for BatchStop
    class BatchStop
      def self.default(visited=[])
        {
          failed: Stubs::List____listOfBatchFailedResultModel.default(visited),
          successful: Stubs::List____listOfBatchSuccessfulResultModel.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['failed'] = Stubs::List____listOfBatchFailedResultModel.stub(stub[:failed]) unless stub[:failed].nil?
        data['successful'] = Stubs::List____listOfBatchSuccessfulResultModel.stub(stub[:successful]) unless stub[:successful].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for BatchUpdateSchedule
    class BatchUpdateSchedule
      def self.default(visited=[])
        {
          creates: Stubs::BatchScheduleActionCreateResult.default(visited),
          deletes: Stubs::BatchScheduleActionDeleteResult.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['creates'] = Stubs::BatchScheduleActionCreateResult.stub(stub[:creates]) unless stub[:creates].nil?
        data['deletes'] = Stubs::BatchScheduleActionDeleteResult.stub(stub[:deletes]) unless stub[:deletes].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for BatchScheduleActionDeleteResult
    class BatchScheduleActionDeleteResult
      def self.default(visited=[])
        return nil if visited.include?('BatchScheduleActionDeleteResult')
        visited = visited + ['BatchScheduleActionDeleteResult']
        {
          schedule_actions: Stubs::List____listOfScheduleAction.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchScheduleActionDeleteResult.new
        data = {}
        data['scheduleActions'] = Stubs::List____listOfScheduleAction.stub(stub[:schedule_actions]) unless stub[:schedule_actions].nil?
        data
      end
    end

    # List Stubber for __listOfScheduleAction
    class List____listOfScheduleAction
      def self.default(visited=[])
        return nil if visited.include?('List____listOfScheduleAction')
        visited = visited + ['List____listOfScheduleAction']
        [
          Stubs::ScheduleAction.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ScheduleAction.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ScheduleAction
    class ScheduleAction
      def self.default(visited=[])
        return nil if visited.include?('ScheduleAction')
        visited = visited + ['ScheduleAction']
        {
          action_name: 'action_name',
          schedule_action_settings: Stubs::ScheduleActionSettings.default(visited),
          schedule_action_start_settings: Stubs::ScheduleActionStartSettings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ScheduleAction.new
        data = {}
        data['actionName'] = stub[:action_name] unless stub[:action_name].nil?
        data['scheduleActionSettings'] = Stubs::ScheduleActionSettings.stub(stub[:schedule_action_settings]) unless stub[:schedule_action_settings].nil?
        data['scheduleActionStartSettings'] = Stubs::ScheduleActionStartSettings.stub(stub[:schedule_action_start_settings]) unless stub[:schedule_action_start_settings].nil?
        data
      end
    end

    # Structure Stubber for ScheduleActionStartSettings
    class ScheduleActionStartSettings
      def self.default(visited=[])
        return nil if visited.include?('ScheduleActionStartSettings')
        visited = visited + ['ScheduleActionStartSettings']
        {
          fixed_mode_schedule_action_start_settings: Stubs::FixedModeScheduleActionStartSettings.default(visited),
          follow_mode_schedule_action_start_settings: Stubs::FollowModeScheduleActionStartSettings.default(visited),
          immediate_mode_schedule_action_start_settings: Stubs::ImmediateModeScheduleActionStartSettings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ScheduleActionStartSettings.new
        data = {}
        data['fixedModeScheduleActionStartSettings'] = Stubs::FixedModeScheduleActionStartSettings.stub(stub[:fixed_mode_schedule_action_start_settings]) unless stub[:fixed_mode_schedule_action_start_settings].nil?
        data['followModeScheduleActionStartSettings'] = Stubs::FollowModeScheduleActionStartSettings.stub(stub[:follow_mode_schedule_action_start_settings]) unless stub[:follow_mode_schedule_action_start_settings].nil?
        data['immediateModeScheduleActionStartSettings'] = Stubs::ImmediateModeScheduleActionStartSettings.stub(stub[:immediate_mode_schedule_action_start_settings]) unless stub[:immediate_mode_schedule_action_start_settings].nil?
        data
      end
    end

    # Structure Stubber for ImmediateModeScheduleActionStartSettings
    class ImmediateModeScheduleActionStartSettings
      def self.default(visited=[])
        return nil if visited.include?('ImmediateModeScheduleActionStartSettings')
        visited = visited + ['ImmediateModeScheduleActionStartSettings']
        {
        }
      end

      def self.stub(stub)
        stub ||= Types::ImmediateModeScheduleActionStartSettings.new
        data = {}
        data
      end
    end

    # Structure Stubber for FollowModeScheduleActionStartSettings
    class FollowModeScheduleActionStartSettings
      def self.default(visited=[])
        return nil if visited.include?('FollowModeScheduleActionStartSettings')
        visited = visited + ['FollowModeScheduleActionStartSettings']
        {
          follow_point: 'follow_point',
          reference_action_name: 'reference_action_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::FollowModeScheduleActionStartSettings.new
        data = {}
        data['followPoint'] = stub[:follow_point] unless stub[:follow_point].nil?
        data['referenceActionName'] = stub[:reference_action_name] unless stub[:reference_action_name].nil?
        data
      end
    end

    # Structure Stubber for FixedModeScheduleActionStartSettings
    class FixedModeScheduleActionStartSettings
      def self.default(visited=[])
        return nil if visited.include?('FixedModeScheduleActionStartSettings')
        visited = visited + ['FixedModeScheduleActionStartSettings']
        {
          time: 'time',
        }
      end

      def self.stub(stub)
        stub ||= Types::FixedModeScheduleActionStartSettings.new
        data = {}
        data['time'] = stub[:time] unless stub[:time].nil?
        data
      end
    end

    # Structure Stubber for ScheduleActionSettings
    class ScheduleActionSettings
      def self.default(visited=[])
        return nil if visited.include?('ScheduleActionSettings')
        visited = visited + ['ScheduleActionSettings']
        {
          hls_id3_segment_tagging_settings: Stubs::HlsId3SegmentTaggingScheduleActionSettings.default(visited),
          hls_timed_metadata_settings: Stubs::HlsTimedMetadataScheduleActionSettings.default(visited),
          input_prepare_settings: Stubs::InputPrepareScheduleActionSettings.default(visited),
          input_switch_settings: Stubs::InputSwitchScheduleActionSettings.default(visited),
          motion_graphics_image_activate_settings: Stubs::MotionGraphicsActivateScheduleActionSettings.default(visited),
          motion_graphics_image_deactivate_settings: Stubs::MotionGraphicsDeactivateScheduleActionSettings.default(visited),
          pause_state_settings: Stubs::PauseStateScheduleActionSettings.default(visited),
          scte35_return_to_network_settings: Stubs::Scte35ReturnToNetworkScheduleActionSettings.default(visited),
          scte35_splice_insert_settings: Stubs::Scte35SpliceInsertScheduleActionSettings.default(visited),
          scte35_time_signal_settings: Stubs::Scte35TimeSignalScheduleActionSettings.default(visited),
          static_image_activate_settings: Stubs::StaticImageActivateScheduleActionSettings.default(visited),
          static_image_deactivate_settings: Stubs::StaticImageDeactivateScheduleActionSettings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ScheduleActionSettings.new
        data = {}
        data['hlsId3SegmentTaggingSettings'] = Stubs::HlsId3SegmentTaggingScheduleActionSettings.stub(stub[:hls_id3_segment_tagging_settings]) unless stub[:hls_id3_segment_tagging_settings].nil?
        data['hlsTimedMetadataSettings'] = Stubs::HlsTimedMetadataScheduleActionSettings.stub(stub[:hls_timed_metadata_settings]) unless stub[:hls_timed_metadata_settings].nil?
        data['inputPrepareSettings'] = Stubs::InputPrepareScheduleActionSettings.stub(stub[:input_prepare_settings]) unless stub[:input_prepare_settings].nil?
        data['inputSwitchSettings'] = Stubs::InputSwitchScheduleActionSettings.stub(stub[:input_switch_settings]) unless stub[:input_switch_settings].nil?
        data['motionGraphicsImageActivateSettings'] = Stubs::MotionGraphicsActivateScheduleActionSettings.stub(stub[:motion_graphics_image_activate_settings]) unless stub[:motion_graphics_image_activate_settings].nil?
        data['motionGraphicsImageDeactivateSettings'] = Stubs::MotionGraphicsDeactivateScheduleActionSettings.stub(stub[:motion_graphics_image_deactivate_settings]) unless stub[:motion_graphics_image_deactivate_settings].nil?
        data['pauseStateSettings'] = Stubs::PauseStateScheduleActionSettings.stub(stub[:pause_state_settings]) unless stub[:pause_state_settings].nil?
        data['scte35ReturnToNetworkSettings'] = Stubs::Scte35ReturnToNetworkScheduleActionSettings.stub(stub[:scte35_return_to_network_settings]) unless stub[:scte35_return_to_network_settings].nil?
        data['scte35SpliceInsertSettings'] = Stubs::Scte35SpliceInsertScheduleActionSettings.stub(stub[:scte35_splice_insert_settings]) unless stub[:scte35_splice_insert_settings].nil?
        data['scte35TimeSignalSettings'] = Stubs::Scte35TimeSignalScheduleActionSettings.stub(stub[:scte35_time_signal_settings]) unless stub[:scte35_time_signal_settings].nil?
        data['staticImageActivateSettings'] = Stubs::StaticImageActivateScheduleActionSettings.stub(stub[:static_image_activate_settings]) unless stub[:static_image_activate_settings].nil?
        data['staticImageDeactivateSettings'] = Stubs::StaticImageDeactivateScheduleActionSettings.stub(stub[:static_image_deactivate_settings]) unless stub[:static_image_deactivate_settings].nil?
        data
      end
    end

    # Structure Stubber for StaticImageDeactivateScheduleActionSettings
    class StaticImageDeactivateScheduleActionSettings
      def self.default(visited=[])
        return nil if visited.include?('StaticImageDeactivateScheduleActionSettings')
        visited = visited + ['StaticImageDeactivateScheduleActionSettings']
        {
          fade_out: 1,
          layer: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::StaticImageDeactivateScheduleActionSettings.new
        data = {}
        data['fadeOut'] = stub[:fade_out] unless stub[:fade_out].nil?
        data['layer'] = stub[:layer] unless stub[:layer].nil?
        data
      end
    end

    # Structure Stubber for StaticImageActivateScheduleActionSettings
    class StaticImageActivateScheduleActionSettings
      def self.default(visited=[])
        return nil if visited.include?('StaticImageActivateScheduleActionSettings')
        visited = visited + ['StaticImageActivateScheduleActionSettings']
        {
          duration: 1,
          fade_in: 1,
          fade_out: 1,
          height: 1,
          image: Stubs::InputLocation.default(visited),
          image_x: 1,
          image_y: 1,
          layer: 1,
          opacity: 1,
          width: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::StaticImageActivateScheduleActionSettings.new
        data = {}
        data['duration'] = stub[:duration] unless stub[:duration].nil?
        data['fadeIn'] = stub[:fade_in] unless stub[:fade_in].nil?
        data['fadeOut'] = stub[:fade_out] unless stub[:fade_out].nil?
        data['height'] = stub[:height] unless stub[:height].nil?
        data['image'] = Stubs::InputLocation.stub(stub[:image]) unless stub[:image].nil?
        data['imageX'] = stub[:image_x] unless stub[:image_x].nil?
        data['imageY'] = stub[:image_y] unless stub[:image_y].nil?
        data['layer'] = stub[:layer] unless stub[:layer].nil?
        data['opacity'] = stub[:opacity] unless stub[:opacity].nil?
        data['width'] = stub[:width] unless stub[:width].nil?
        data
      end
    end

    # Structure Stubber for InputLocation
    class InputLocation
      def self.default(visited=[])
        return nil if visited.include?('InputLocation')
        visited = visited + ['InputLocation']
        {
          password_param: 'password_param',
          uri: 'uri',
          username: 'username',
        }
      end

      def self.stub(stub)
        stub ||= Types::InputLocation.new
        data = {}
        data['passwordParam'] = stub[:password_param] unless stub[:password_param].nil?
        data['uri'] = stub[:uri] unless stub[:uri].nil?
        data['username'] = stub[:username] unless stub[:username].nil?
        data
      end
    end

    # Structure Stubber for Scte35TimeSignalScheduleActionSettings
    class Scte35TimeSignalScheduleActionSettings
      def self.default(visited=[])
        return nil if visited.include?('Scte35TimeSignalScheduleActionSettings')
        visited = visited + ['Scte35TimeSignalScheduleActionSettings']
        {
          scte35_descriptors: Stubs::List____listOfScte35Descriptor.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Scte35TimeSignalScheduleActionSettings.new
        data = {}
        data['scte35Descriptors'] = Stubs::List____listOfScte35Descriptor.stub(stub[:scte35_descriptors]) unless stub[:scte35_descriptors].nil?
        data
      end
    end

    # List Stubber for __listOfScte35Descriptor
    class List____listOfScte35Descriptor
      def self.default(visited=[])
        return nil if visited.include?('List____listOfScte35Descriptor')
        visited = visited + ['List____listOfScte35Descriptor']
        [
          Stubs::Scte35Descriptor.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Scte35Descriptor.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Scte35Descriptor
    class Scte35Descriptor
      def self.default(visited=[])
        return nil if visited.include?('Scte35Descriptor')
        visited = visited + ['Scte35Descriptor']
        {
          scte35_descriptor_settings: Stubs::Scte35DescriptorSettings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Scte35Descriptor.new
        data = {}
        data['scte35DescriptorSettings'] = Stubs::Scte35DescriptorSettings.stub(stub[:scte35_descriptor_settings]) unless stub[:scte35_descriptor_settings].nil?
        data
      end
    end

    # Structure Stubber for Scte35DescriptorSettings
    class Scte35DescriptorSettings
      def self.default(visited=[])
        return nil if visited.include?('Scte35DescriptorSettings')
        visited = visited + ['Scte35DescriptorSettings']
        {
          segmentation_descriptor_scte35_descriptor_settings: Stubs::Scte35SegmentationDescriptor.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Scte35DescriptorSettings.new
        data = {}
        data['segmentationDescriptorScte35DescriptorSettings'] = Stubs::Scte35SegmentationDescriptor.stub(stub[:segmentation_descriptor_scte35_descriptor_settings]) unless stub[:segmentation_descriptor_scte35_descriptor_settings].nil?
        data
      end
    end

    # Structure Stubber for Scte35SegmentationDescriptor
    class Scte35SegmentationDescriptor
      def self.default(visited=[])
        return nil if visited.include?('Scte35SegmentationDescriptor')
        visited = visited + ['Scte35SegmentationDescriptor']
        {
          delivery_restrictions: Stubs::Scte35DeliveryRestrictions.default(visited),
          segment_num: 1,
          segmentation_cancel_indicator: 'segmentation_cancel_indicator',
          segmentation_duration: 1,
          segmentation_event_id: 1,
          segmentation_type_id: 1,
          segmentation_upid: 'segmentation_upid',
          segmentation_upid_type: 1,
          segments_expected: 1,
          sub_segment_num: 1,
          sub_segments_expected: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::Scte35SegmentationDescriptor.new
        data = {}
        data['deliveryRestrictions'] = Stubs::Scte35DeliveryRestrictions.stub(stub[:delivery_restrictions]) unless stub[:delivery_restrictions].nil?
        data['segmentNum'] = stub[:segment_num] unless stub[:segment_num].nil?
        data['segmentationCancelIndicator'] = stub[:segmentation_cancel_indicator] unless stub[:segmentation_cancel_indicator].nil?
        data['segmentationDuration'] = stub[:segmentation_duration] unless stub[:segmentation_duration].nil?
        data['segmentationEventId'] = stub[:segmentation_event_id] unless stub[:segmentation_event_id].nil?
        data['segmentationTypeId'] = stub[:segmentation_type_id] unless stub[:segmentation_type_id].nil?
        data['segmentationUpid'] = stub[:segmentation_upid] unless stub[:segmentation_upid].nil?
        data['segmentationUpidType'] = stub[:segmentation_upid_type] unless stub[:segmentation_upid_type].nil?
        data['segmentsExpected'] = stub[:segments_expected] unless stub[:segments_expected].nil?
        data['subSegmentNum'] = stub[:sub_segment_num] unless stub[:sub_segment_num].nil?
        data['subSegmentsExpected'] = stub[:sub_segments_expected] unless stub[:sub_segments_expected].nil?
        data
      end
    end

    # Structure Stubber for Scte35DeliveryRestrictions
    class Scte35DeliveryRestrictions
      def self.default(visited=[])
        return nil if visited.include?('Scte35DeliveryRestrictions')
        visited = visited + ['Scte35DeliveryRestrictions']
        {
          archive_allowed_flag: 'archive_allowed_flag',
          device_restrictions: 'device_restrictions',
          no_regional_blackout_flag: 'no_regional_blackout_flag',
          web_delivery_allowed_flag: 'web_delivery_allowed_flag',
        }
      end

      def self.stub(stub)
        stub ||= Types::Scte35DeliveryRestrictions.new
        data = {}
        data['archiveAllowedFlag'] = stub[:archive_allowed_flag] unless stub[:archive_allowed_flag].nil?
        data['deviceRestrictions'] = stub[:device_restrictions] unless stub[:device_restrictions].nil?
        data['noRegionalBlackoutFlag'] = stub[:no_regional_blackout_flag] unless stub[:no_regional_blackout_flag].nil?
        data['webDeliveryAllowedFlag'] = stub[:web_delivery_allowed_flag] unless stub[:web_delivery_allowed_flag].nil?
        data
      end
    end

    # Structure Stubber for Scte35SpliceInsertScheduleActionSettings
    class Scte35SpliceInsertScheduleActionSettings
      def self.default(visited=[])
        return nil if visited.include?('Scte35SpliceInsertScheduleActionSettings')
        visited = visited + ['Scte35SpliceInsertScheduleActionSettings']
        {
          duration: 1,
          splice_event_id: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::Scte35SpliceInsertScheduleActionSettings.new
        data = {}
        data['duration'] = stub[:duration] unless stub[:duration].nil?
        data['spliceEventId'] = stub[:splice_event_id] unless stub[:splice_event_id].nil?
        data
      end
    end

    # Structure Stubber for Scte35ReturnToNetworkScheduleActionSettings
    class Scte35ReturnToNetworkScheduleActionSettings
      def self.default(visited=[])
        return nil if visited.include?('Scte35ReturnToNetworkScheduleActionSettings')
        visited = visited + ['Scte35ReturnToNetworkScheduleActionSettings']
        {
          splice_event_id: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::Scte35ReturnToNetworkScheduleActionSettings.new
        data = {}
        data['spliceEventId'] = stub[:splice_event_id] unless stub[:splice_event_id].nil?
        data
      end
    end

    # Structure Stubber for PauseStateScheduleActionSettings
    class PauseStateScheduleActionSettings
      def self.default(visited=[])
        return nil if visited.include?('PauseStateScheduleActionSettings')
        visited = visited + ['PauseStateScheduleActionSettings']
        {
          pipelines: Stubs::List____listOfPipelinePauseStateSettings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PauseStateScheduleActionSettings.new
        data = {}
        data['pipelines'] = Stubs::List____listOfPipelinePauseStateSettings.stub(stub[:pipelines]) unless stub[:pipelines].nil?
        data
      end
    end

    # List Stubber for __listOfPipelinePauseStateSettings
    class List____listOfPipelinePauseStateSettings
      def self.default(visited=[])
        return nil if visited.include?('List____listOfPipelinePauseStateSettings')
        visited = visited + ['List____listOfPipelinePauseStateSettings']
        [
          Stubs::PipelinePauseStateSettings.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PipelinePauseStateSettings.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PipelinePauseStateSettings
    class PipelinePauseStateSettings
      def self.default(visited=[])
        return nil if visited.include?('PipelinePauseStateSettings')
        visited = visited + ['PipelinePauseStateSettings']
        {
          pipeline_id: 'pipeline_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::PipelinePauseStateSettings.new
        data = {}
        data['pipelineId'] = stub[:pipeline_id] unless stub[:pipeline_id].nil?
        data
      end
    end

    # Structure Stubber for MotionGraphicsDeactivateScheduleActionSettings
    class MotionGraphicsDeactivateScheduleActionSettings
      def self.default(visited=[])
        return nil if visited.include?('MotionGraphicsDeactivateScheduleActionSettings')
        visited = visited + ['MotionGraphicsDeactivateScheduleActionSettings']
        {
        }
      end

      def self.stub(stub)
        stub ||= Types::MotionGraphicsDeactivateScheduleActionSettings.new
        data = {}
        data
      end
    end

    # Structure Stubber for MotionGraphicsActivateScheduleActionSettings
    class MotionGraphicsActivateScheduleActionSettings
      def self.default(visited=[])
        return nil if visited.include?('MotionGraphicsActivateScheduleActionSettings')
        visited = visited + ['MotionGraphicsActivateScheduleActionSettings']
        {
          duration: 1,
          password_param: 'password_param',
          url: 'url',
          username: 'username',
        }
      end

      def self.stub(stub)
        stub ||= Types::MotionGraphicsActivateScheduleActionSettings.new
        data = {}
        data['duration'] = stub[:duration] unless stub[:duration].nil?
        data['passwordParam'] = stub[:password_param] unless stub[:password_param].nil?
        data['url'] = stub[:url] unless stub[:url].nil?
        data['username'] = stub[:username] unless stub[:username].nil?
        data
      end
    end

    # Structure Stubber for InputSwitchScheduleActionSettings
    class InputSwitchScheduleActionSettings
      def self.default(visited=[])
        return nil if visited.include?('InputSwitchScheduleActionSettings')
        visited = visited + ['InputSwitchScheduleActionSettings']
        {
          input_attachment_name_reference: 'input_attachment_name_reference',
          input_clipping_settings: Stubs::InputClippingSettings.default(visited),
          url_path: Stubs::List____listOf__string.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::InputSwitchScheduleActionSettings.new
        data = {}
        data['inputAttachmentNameReference'] = stub[:input_attachment_name_reference] unless stub[:input_attachment_name_reference].nil?
        data['inputClippingSettings'] = Stubs::InputClippingSettings.stub(stub[:input_clipping_settings]) unless stub[:input_clipping_settings].nil?
        data['urlPath'] = Stubs::List____listOf__string.stub(stub[:url_path]) unless stub[:url_path].nil?
        data
      end
    end

    # List Stubber for __listOf__string
    class List____listOf__string
      def self.default(visited=[])
        return nil if visited.include?('List____listOf__string')
        visited = visited + ['List____listOf__string']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for InputClippingSettings
    class InputClippingSettings
      def self.default(visited=[])
        return nil if visited.include?('InputClippingSettings')
        visited = visited + ['InputClippingSettings']
        {
          input_timecode_source: 'input_timecode_source',
          start_timecode: Stubs::StartTimecode.default(visited),
          stop_timecode: Stubs::StopTimecode.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::InputClippingSettings.new
        data = {}
        data['inputTimecodeSource'] = stub[:input_timecode_source] unless stub[:input_timecode_source].nil?
        data['startTimecode'] = Stubs::StartTimecode.stub(stub[:start_timecode]) unless stub[:start_timecode].nil?
        data['stopTimecode'] = Stubs::StopTimecode.stub(stub[:stop_timecode]) unless stub[:stop_timecode].nil?
        data
      end
    end

    # Structure Stubber for StopTimecode
    class StopTimecode
      def self.default(visited=[])
        return nil if visited.include?('StopTimecode')
        visited = visited + ['StopTimecode']
        {
          last_frame_clipping_behavior: 'last_frame_clipping_behavior',
          timecode: 'timecode',
        }
      end

      def self.stub(stub)
        stub ||= Types::StopTimecode.new
        data = {}
        data['lastFrameClippingBehavior'] = stub[:last_frame_clipping_behavior] unless stub[:last_frame_clipping_behavior].nil?
        data['timecode'] = stub[:timecode] unless stub[:timecode].nil?
        data
      end
    end

    # Structure Stubber for StartTimecode
    class StartTimecode
      def self.default(visited=[])
        return nil if visited.include?('StartTimecode')
        visited = visited + ['StartTimecode']
        {
          timecode: 'timecode',
        }
      end

      def self.stub(stub)
        stub ||= Types::StartTimecode.new
        data = {}
        data['timecode'] = stub[:timecode] unless stub[:timecode].nil?
        data
      end
    end

    # Structure Stubber for InputPrepareScheduleActionSettings
    class InputPrepareScheduleActionSettings
      def self.default(visited=[])
        return nil if visited.include?('InputPrepareScheduleActionSettings')
        visited = visited + ['InputPrepareScheduleActionSettings']
        {
          input_attachment_name_reference: 'input_attachment_name_reference',
          input_clipping_settings: Stubs::InputClippingSettings.default(visited),
          url_path: Stubs::List____listOf__string.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::InputPrepareScheduleActionSettings.new
        data = {}
        data['inputAttachmentNameReference'] = stub[:input_attachment_name_reference] unless stub[:input_attachment_name_reference].nil?
        data['inputClippingSettings'] = Stubs::InputClippingSettings.stub(stub[:input_clipping_settings]) unless stub[:input_clipping_settings].nil?
        data['urlPath'] = Stubs::List____listOf__string.stub(stub[:url_path]) unless stub[:url_path].nil?
        data
      end
    end

    # Structure Stubber for HlsTimedMetadataScheduleActionSettings
    class HlsTimedMetadataScheduleActionSettings
      def self.default(visited=[])
        return nil if visited.include?('HlsTimedMetadataScheduleActionSettings')
        visited = visited + ['HlsTimedMetadataScheduleActionSettings']
        {
          id3: 'id3',
        }
      end

      def self.stub(stub)
        stub ||= Types::HlsTimedMetadataScheduleActionSettings.new
        data = {}
        data['id3'] = stub[:id3] unless stub[:id3].nil?
        data
      end
    end

    # Structure Stubber for HlsId3SegmentTaggingScheduleActionSettings
    class HlsId3SegmentTaggingScheduleActionSettings
      def self.default(visited=[])
        return nil if visited.include?('HlsId3SegmentTaggingScheduleActionSettings')
        visited = visited + ['HlsId3SegmentTaggingScheduleActionSettings']
        {
          tag: 'tag',
        }
      end

      def self.stub(stub)
        stub ||= Types::HlsId3SegmentTaggingScheduleActionSettings.new
        data = {}
        data['tag'] = stub[:tag] unless stub[:tag].nil?
        data
      end
    end

    # Structure Stubber for BatchScheduleActionCreateResult
    class BatchScheduleActionCreateResult
      def self.default(visited=[])
        return nil if visited.include?('BatchScheduleActionCreateResult')
        visited = visited + ['BatchScheduleActionCreateResult']
        {
          schedule_actions: Stubs::List____listOfScheduleAction.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchScheduleActionCreateResult.new
        data = {}
        data['scheduleActions'] = Stubs::List____listOfScheduleAction.stub(stub[:schedule_actions]) unless stub[:schedule_actions].nil?
        data
      end
    end

    # Operation Stubber for CancelInputDeviceTransfer
    class CancelInputDeviceTransfer
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for ClaimDevice
    class ClaimDevice
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateChannel
    class CreateChannel
      def self.default(visited=[])
        {
          channel: Stubs::Channel.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['channel'] = Stubs::Channel.stub(stub[:channel]) unless stub[:channel].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Channel
    class Channel
      def self.default(visited=[])
        return nil if visited.include?('Channel')
        visited = visited + ['Channel']
        {
          arn: 'arn',
          cdi_input_specification: Stubs::CdiInputSpecification.default(visited),
          channel_class: 'channel_class',
          destinations: Stubs::List____listOfOutputDestination.default(visited),
          egress_endpoints: Stubs::List____listOfChannelEgressEndpoint.default(visited),
          encoder_settings: Stubs::EncoderSettings.default(visited),
          id: 'id',
          input_attachments: Stubs::List____listOfInputAttachment.default(visited),
          input_specification: Stubs::InputSpecification.default(visited),
          log_level: 'log_level',
          maintenance: Stubs::MaintenanceStatus.default(visited),
          name: 'name',
          pipeline_details: Stubs::List____listOfPipelineDetail.default(visited),
          pipelines_running_count: 1,
          role_arn: 'role_arn',
          state: 'state',
          tags: Stubs::Tags.default(visited),
          vpc: Stubs::VpcOutputSettingsDescription.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Channel.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['cdiInputSpecification'] = Stubs::CdiInputSpecification.stub(stub[:cdi_input_specification]) unless stub[:cdi_input_specification].nil?
        data['channelClass'] = stub[:channel_class] unless stub[:channel_class].nil?
        data['destinations'] = Stubs::List____listOfOutputDestination.stub(stub[:destinations]) unless stub[:destinations].nil?
        data['egressEndpoints'] = Stubs::List____listOfChannelEgressEndpoint.stub(stub[:egress_endpoints]) unless stub[:egress_endpoints].nil?
        data['encoderSettings'] = Stubs::EncoderSettings.stub(stub[:encoder_settings]) unless stub[:encoder_settings].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['inputAttachments'] = Stubs::List____listOfInputAttachment.stub(stub[:input_attachments]) unless stub[:input_attachments].nil?
        data['inputSpecification'] = Stubs::InputSpecification.stub(stub[:input_specification]) unless stub[:input_specification].nil?
        data['logLevel'] = stub[:log_level] unless stub[:log_level].nil?
        data['maintenance'] = Stubs::MaintenanceStatus.stub(stub[:maintenance]) unless stub[:maintenance].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['pipelineDetails'] = Stubs::List____listOfPipelineDetail.stub(stub[:pipeline_details]) unless stub[:pipeline_details].nil?
        data['pipelinesRunningCount'] = stub[:pipelines_running_count] unless stub[:pipelines_running_count].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['vpc'] = Stubs::VpcOutputSettingsDescription.stub(stub[:vpc]) unless stub[:vpc].nil?
        data
      end
    end

    # Structure Stubber for VpcOutputSettingsDescription
    class VpcOutputSettingsDescription
      def self.default(visited=[])
        return nil if visited.include?('VpcOutputSettingsDescription')
        visited = visited + ['VpcOutputSettingsDescription']
        {
          availability_zones: Stubs::List____listOf__string.default(visited),
          network_interface_ids: Stubs::List____listOf__string.default(visited),
          security_group_ids: Stubs::List____listOf__string.default(visited),
          subnet_ids: Stubs::List____listOf__string.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::VpcOutputSettingsDescription.new
        data = {}
        data['availabilityZones'] = Stubs::List____listOf__string.stub(stub[:availability_zones]) unless stub[:availability_zones].nil?
        data['networkInterfaceIds'] = Stubs::List____listOf__string.stub(stub[:network_interface_ids]) unless stub[:network_interface_ids].nil?
        data['securityGroupIds'] = Stubs::List____listOf__string.stub(stub[:security_group_ids]) unless stub[:security_group_ids].nil?
        data['subnetIds'] = Stubs::List____listOf__string.stub(stub[:subnet_ids]) unless stub[:subnet_ids].nil?
        data
      end
    end

    # Map Stubber for Tags
    class Tags
      def self.default(visited=[])
        return nil if visited.include?('Tags')
        visited = visited + ['Tags']
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

    # List Stubber for __listOfPipelineDetail
    class List____listOfPipelineDetail
      def self.default(visited=[])
        return nil if visited.include?('List____listOfPipelineDetail')
        visited = visited + ['List____listOfPipelineDetail']
        [
          Stubs::PipelineDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PipelineDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PipelineDetail
    class PipelineDetail
      def self.default(visited=[])
        return nil if visited.include?('PipelineDetail')
        visited = visited + ['PipelineDetail']
        {
          active_input_attachment_name: 'active_input_attachment_name',
          active_input_switch_action_name: 'active_input_switch_action_name',
          active_motion_graphics_action_name: 'active_motion_graphics_action_name',
          active_motion_graphics_uri: 'active_motion_graphics_uri',
          pipeline_id: 'pipeline_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::PipelineDetail.new
        data = {}
        data['activeInputAttachmentName'] = stub[:active_input_attachment_name] unless stub[:active_input_attachment_name].nil?
        data['activeInputSwitchActionName'] = stub[:active_input_switch_action_name] unless stub[:active_input_switch_action_name].nil?
        data['activeMotionGraphicsActionName'] = stub[:active_motion_graphics_action_name] unless stub[:active_motion_graphics_action_name].nil?
        data['activeMotionGraphicsUri'] = stub[:active_motion_graphics_uri] unless stub[:active_motion_graphics_uri].nil?
        data['pipelineId'] = stub[:pipeline_id] unless stub[:pipeline_id].nil?
        data
      end
    end

    # Structure Stubber for MaintenanceStatus
    class MaintenanceStatus
      def self.default(visited=[])
        return nil if visited.include?('MaintenanceStatus')
        visited = visited + ['MaintenanceStatus']
        {
          maintenance_day: 'maintenance_day',
          maintenance_deadline: 'maintenance_deadline',
          maintenance_scheduled_date: 'maintenance_scheduled_date',
          maintenance_start_time: 'maintenance_start_time',
        }
      end

      def self.stub(stub)
        stub ||= Types::MaintenanceStatus.new
        data = {}
        data['maintenanceDay'] = stub[:maintenance_day] unless stub[:maintenance_day].nil?
        data['maintenanceDeadline'] = stub[:maintenance_deadline] unless stub[:maintenance_deadline].nil?
        data['maintenanceScheduledDate'] = stub[:maintenance_scheduled_date] unless stub[:maintenance_scheduled_date].nil?
        data['maintenanceStartTime'] = stub[:maintenance_start_time] unless stub[:maintenance_start_time].nil?
        data
      end
    end

    # Structure Stubber for InputSpecification
    class InputSpecification
      def self.default(visited=[])
        return nil if visited.include?('InputSpecification')
        visited = visited + ['InputSpecification']
        {
          codec: 'codec',
          maximum_bitrate: 'maximum_bitrate',
          resolution: 'resolution',
        }
      end

      def self.stub(stub)
        stub ||= Types::InputSpecification.new
        data = {}
        data['codec'] = stub[:codec] unless stub[:codec].nil?
        data['maximumBitrate'] = stub[:maximum_bitrate] unless stub[:maximum_bitrate].nil?
        data['resolution'] = stub[:resolution] unless stub[:resolution].nil?
        data
      end
    end

    # List Stubber for __listOfInputAttachment
    class List____listOfInputAttachment
      def self.default(visited=[])
        return nil if visited.include?('List____listOfInputAttachment')
        visited = visited + ['List____listOfInputAttachment']
        [
          Stubs::InputAttachment.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::InputAttachment.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for InputAttachment
    class InputAttachment
      def self.default(visited=[])
        return nil if visited.include?('InputAttachment')
        visited = visited + ['InputAttachment']
        {
          automatic_input_failover_settings: Stubs::AutomaticInputFailoverSettings.default(visited),
          input_attachment_name: 'input_attachment_name',
          input_id: 'input_id',
          input_settings: Stubs::InputSettings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::InputAttachment.new
        data = {}
        data['automaticInputFailoverSettings'] = Stubs::AutomaticInputFailoverSettings.stub(stub[:automatic_input_failover_settings]) unless stub[:automatic_input_failover_settings].nil?
        data['inputAttachmentName'] = stub[:input_attachment_name] unless stub[:input_attachment_name].nil?
        data['inputId'] = stub[:input_id] unless stub[:input_id].nil?
        data['inputSettings'] = Stubs::InputSettings.stub(stub[:input_settings]) unless stub[:input_settings].nil?
        data
      end
    end

    # Structure Stubber for InputSettings
    class InputSettings
      def self.default(visited=[])
        return nil if visited.include?('InputSettings')
        visited = visited + ['InputSettings']
        {
          audio_selectors: Stubs::List____listOfAudioSelector.default(visited),
          caption_selectors: Stubs::List____listOfCaptionSelector.default(visited),
          deblock_filter: 'deblock_filter',
          denoise_filter: 'denoise_filter',
          filter_strength: 1,
          input_filter: 'input_filter',
          network_input_settings: Stubs::NetworkInputSettings.default(visited),
          scte35_pid: 1,
          smpte2038_data_preference: 'smpte2038_data_preference',
          source_end_behavior: 'source_end_behavior',
          video_selector: Stubs::VideoSelector.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::InputSettings.new
        data = {}
        data['audioSelectors'] = Stubs::List____listOfAudioSelector.stub(stub[:audio_selectors]) unless stub[:audio_selectors].nil?
        data['captionSelectors'] = Stubs::List____listOfCaptionSelector.stub(stub[:caption_selectors]) unless stub[:caption_selectors].nil?
        data['deblockFilter'] = stub[:deblock_filter] unless stub[:deblock_filter].nil?
        data['denoiseFilter'] = stub[:denoise_filter] unless stub[:denoise_filter].nil?
        data['filterStrength'] = stub[:filter_strength] unless stub[:filter_strength].nil?
        data['inputFilter'] = stub[:input_filter] unless stub[:input_filter].nil?
        data['networkInputSettings'] = Stubs::NetworkInputSettings.stub(stub[:network_input_settings]) unless stub[:network_input_settings].nil?
        data['scte35Pid'] = stub[:scte35_pid] unless stub[:scte35_pid].nil?
        data['smpte2038DataPreference'] = stub[:smpte2038_data_preference] unless stub[:smpte2038_data_preference].nil?
        data['sourceEndBehavior'] = stub[:source_end_behavior] unless stub[:source_end_behavior].nil?
        data['videoSelector'] = Stubs::VideoSelector.stub(stub[:video_selector]) unless stub[:video_selector].nil?
        data
      end
    end

    # Structure Stubber for VideoSelector
    class VideoSelector
      def self.default(visited=[])
        return nil if visited.include?('VideoSelector')
        visited = visited + ['VideoSelector']
        {
          color_space: 'color_space',
          color_space_settings: Stubs::VideoSelectorColorSpaceSettings.default(visited),
          color_space_usage: 'color_space_usage',
          selector_settings: Stubs::VideoSelectorSettings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::VideoSelector.new
        data = {}
        data['colorSpace'] = stub[:color_space] unless stub[:color_space].nil?
        data['colorSpaceSettings'] = Stubs::VideoSelectorColorSpaceSettings.stub(stub[:color_space_settings]) unless stub[:color_space_settings].nil?
        data['colorSpaceUsage'] = stub[:color_space_usage] unless stub[:color_space_usage].nil?
        data['selectorSettings'] = Stubs::VideoSelectorSettings.stub(stub[:selector_settings]) unless stub[:selector_settings].nil?
        data
      end
    end

    # Structure Stubber for VideoSelectorSettings
    class VideoSelectorSettings
      def self.default(visited=[])
        return nil if visited.include?('VideoSelectorSettings')
        visited = visited + ['VideoSelectorSettings']
        {
          video_selector_pid: Stubs::VideoSelectorPid.default(visited),
          video_selector_program_id: Stubs::VideoSelectorProgramId.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::VideoSelectorSettings.new
        data = {}
        data['videoSelectorPid'] = Stubs::VideoSelectorPid.stub(stub[:video_selector_pid]) unless stub[:video_selector_pid].nil?
        data['videoSelectorProgramId'] = Stubs::VideoSelectorProgramId.stub(stub[:video_selector_program_id]) unless stub[:video_selector_program_id].nil?
        data
      end
    end

    # Structure Stubber for VideoSelectorProgramId
    class VideoSelectorProgramId
      def self.default(visited=[])
        return nil if visited.include?('VideoSelectorProgramId')
        visited = visited + ['VideoSelectorProgramId']
        {
          program_id: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::VideoSelectorProgramId.new
        data = {}
        data['programId'] = stub[:program_id] unless stub[:program_id].nil?
        data
      end
    end

    # Structure Stubber for VideoSelectorPid
    class VideoSelectorPid
      def self.default(visited=[])
        return nil if visited.include?('VideoSelectorPid')
        visited = visited + ['VideoSelectorPid']
        {
          pid: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::VideoSelectorPid.new
        data = {}
        data['pid'] = stub[:pid] unless stub[:pid].nil?
        data
      end
    end

    # Structure Stubber for VideoSelectorColorSpaceSettings
    class VideoSelectorColorSpaceSettings
      def self.default(visited=[])
        return nil if visited.include?('VideoSelectorColorSpaceSettings')
        visited = visited + ['VideoSelectorColorSpaceSettings']
        {
          hdr10_settings: Stubs::Hdr10Settings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::VideoSelectorColorSpaceSettings.new
        data = {}
        data['hdr10Settings'] = Stubs::Hdr10Settings.stub(stub[:hdr10_settings]) unless stub[:hdr10_settings].nil?
        data
      end
    end

    # Structure Stubber for Hdr10Settings
    class Hdr10Settings
      def self.default(visited=[])
        return nil if visited.include?('Hdr10Settings')
        visited = visited + ['Hdr10Settings']
        {
          max_cll: 1,
          max_fall: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::Hdr10Settings.new
        data = {}
        data['maxCll'] = stub[:max_cll] unless stub[:max_cll].nil?
        data['maxFall'] = stub[:max_fall] unless stub[:max_fall].nil?
        data
      end
    end

    # Structure Stubber for NetworkInputSettings
    class NetworkInputSettings
      def self.default(visited=[])
        return nil if visited.include?('NetworkInputSettings')
        visited = visited + ['NetworkInputSettings']
        {
          hls_input_settings: Stubs::HlsInputSettings.default(visited),
          server_validation: 'server_validation',
        }
      end

      def self.stub(stub)
        stub ||= Types::NetworkInputSettings.new
        data = {}
        data['hlsInputSettings'] = Stubs::HlsInputSettings.stub(stub[:hls_input_settings]) unless stub[:hls_input_settings].nil?
        data['serverValidation'] = stub[:server_validation] unless stub[:server_validation].nil?
        data
      end
    end

    # Structure Stubber for HlsInputSettings
    class HlsInputSettings
      def self.default(visited=[])
        return nil if visited.include?('HlsInputSettings')
        visited = visited + ['HlsInputSettings']
        {
          bandwidth: 1,
          buffer_segments: 1,
          retries: 1,
          retry_interval: 1,
          scte35_source: 'scte35_source',
        }
      end

      def self.stub(stub)
        stub ||= Types::HlsInputSettings.new
        data = {}
        data['bandwidth'] = stub[:bandwidth] unless stub[:bandwidth].nil?
        data['bufferSegments'] = stub[:buffer_segments] unless stub[:buffer_segments].nil?
        data['retries'] = stub[:retries] unless stub[:retries].nil?
        data['retryInterval'] = stub[:retry_interval] unless stub[:retry_interval].nil?
        data['scte35Source'] = stub[:scte35_source] unless stub[:scte35_source].nil?
        data
      end
    end

    # List Stubber for __listOfCaptionSelector
    class List____listOfCaptionSelector
      def self.default(visited=[])
        return nil if visited.include?('List____listOfCaptionSelector')
        visited = visited + ['List____listOfCaptionSelector']
        [
          Stubs::CaptionSelector.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::CaptionSelector.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CaptionSelector
    class CaptionSelector
      def self.default(visited=[])
        return nil if visited.include?('CaptionSelector')
        visited = visited + ['CaptionSelector']
        {
          language_code: 'language_code',
          name: 'name',
          selector_settings: Stubs::CaptionSelectorSettings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CaptionSelector.new
        data = {}
        data['languageCode'] = stub[:language_code] unless stub[:language_code].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['selectorSettings'] = Stubs::CaptionSelectorSettings.stub(stub[:selector_settings]) unless stub[:selector_settings].nil?
        data
      end
    end

    # Structure Stubber for CaptionSelectorSettings
    class CaptionSelectorSettings
      def self.default(visited=[])
        return nil if visited.include?('CaptionSelectorSettings')
        visited = visited + ['CaptionSelectorSettings']
        {
          ancillary_source_settings: Stubs::AncillarySourceSettings.default(visited),
          arib_source_settings: Stubs::AribSourceSettings.default(visited),
          dvb_sub_source_settings: Stubs::DvbSubSourceSettings.default(visited),
          embedded_source_settings: Stubs::EmbeddedSourceSettings.default(visited),
          scte20_source_settings: Stubs::Scte20SourceSettings.default(visited),
          scte27_source_settings: Stubs::Scte27SourceSettings.default(visited),
          teletext_source_settings: Stubs::TeletextSourceSettings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CaptionSelectorSettings.new
        data = {}
        data['ancillarySourceSettings'] = Stubs::AncillarySourceSettings.stub(stub[:ancillary_source_settings]) unless stub[:ancillary_source_settings].nil?
        data['aribSourceSettings'] = Stubs::AribSourceSettings.stub(stub[:arib_source_settings]) unless stub[:arib_source_settings].nil?
        data['dvbSubSourceSettings'] = Stubs::DvbSubSourceSettings.stub(stub[:dvb_sub_source_settings]) unless stub[:dvb_sub_source_settings].nil?
        data['embeddedSourceSettings'] = Stubs::EmbeddedSourceSettings.stub(stub[:embedded_source_settings]) unless stub[:embedded_source_settings].nil?
        data['scte20SourceSettings'] = Stubs::Scte20SourceSettings.stub(stub[:scte20_source_settings]) unless stub[:scte20_source_settings].nil?
        data['scte27SourceSettings'] = Stubs::Scte27SourceSettings.stub(stub[:scte27_source_settings]) unless stub[:scte27_source_settings].nil?
        data['teletextSourceSettings'] = Stubs::TeletextSourceSettings.stub(stub[:teletext_source_settings]) unless stub[:teletext_source_settings].nil?
        data
      end
    end

    # Structure Stubber for TeletextSourceSettings
    class TeletextSourceSettings
      def self.default(visited=[])
        return nil if visited.include?('TeletextSourceSettings')
        visited = visited + ['TeletextSourceSettings']
        {
          output_rectangle: Stubs::CaptionRectangle.default(visited),
          page_number: 'page_number',
        }
      end

      def self.stub(stub)
        stub ||= Types::TeletextSourceSettings.new
        data = {}
        data['outputRectangle'] = Stubs::CaptionRectangle.stub(stub[:output_rectangle]) unless stub[:output_rectangle].nil?
        data['pageNumber'] = stub[:page_number] unless stub[:page_number].nil?
        data
      end
    end

    # Structure Stubber for CaptionRectangle
    class CaptionRectangle
      def self.default(visited=[])
        return nil if visited.include?('CaptionRectangle')
        visited = visited + ['CaptionRectangle']
        {
          height: 1.0,
          left_offset: 1.0,
          top_offset: 1.0,
          width: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::CaptionRectangle.new
        data = {}
        data['height'] = Hearth::NumberHelper.serialize(stub[:height])
        data['leftOffset'] = Hearth::NumberHelper.serialize(stub[:left_offset])
        data['topOffset'] = Hearth::NumberHelper.serialize(stub[:top_offset])
        data['width'] = Hearth::NumberHelper.serialize(stub[:width])
        data
      end
    end

    # Structure Stubber for Scte27SourceSettings
    class Scte27SourceSettings
      def self.default(visited=[])
        return nil if visited.include?('Scte27SourceSettings')
        visited = visited + ['Scte27SourceSettings']
        {
          ocr_language: 'ocr_language',
          pid: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::Scte27SourceSettings.new
        data = {}
        data['ocrLanguage'] = stub[:ocr_language] unless stub[:ocr_language].nil?
        data['pid'] = stub[:pid] unless stub[:pid].nil?
        data
      end
    end

    # Structure Stubber for Scte20SourceSettings
    class Scte20SourceSettings
      def self.default(visited=[])
        return nil if visited.include?('Scte20SourceSettings')
        visited = visited + ['Scte20SourceSettings']
        {
          convert608_to708: 'convert608_to708',
          source608_channel_number: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::Scte20SourceSettings.new
        data = {}
        data['convert608To708'] = stub[:convert608_to708] unless stub[:convert608_to708].nil?
        data['source608ChannelNumber'] = stub[:source608_channel_number] unless stub[:source608_channel_number].nil?
        data
      end
    end

    # Structure Stubber for EmbeddedSourceSettings
    class EmbeddedSourceSettings
      def self.default(visited=[])
        return nil if visited.include?('EmbeddedSourceSettings')
        visited = visited + ['EmbeddedSourceSettings']
        {
          convert608_to708: 'convert608_to708',
          scte20_detection: 'scte20_detection',
          source608_channel_number: 1,
          source608_track_number: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::EmbeddedSourceSettings.new
        data = {}
        data['convert608To708'] = stub[:convert608_to708] unless stub[:convert608_to708].nil?
        data['scte20Detection'] = stub[:scte20_detection] unless stub[:scte20_detection].nil?
        data['source608ChannelNumber'] = stub[:source608_channel_number] unless stub[:source608_channel_number].nil?
        data['source608TrackNumber'] = stub[:source608_track_number] unless stub[:source608_track_number].nil?
        data
      end
    end

    # Structure Stubber for DvbSubSourceSettings
    class DvbSubSourceSettings
      def self.default(visited=[])
        return nil if visited.include?('DvbSubSourceSettings')
        visited = visited + ['DvbSubSourceSettings']
        {
          ocr_language: 'ocr_language',
          pid: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::DvbSubSourceSettings.new
        data = {}
        data['ocrLanguage'] = stub[:ocr_language] unless stub[:ocr_language].nil?
        data['pid'] = stub[:pid] unless stub[:pid].nil?
        data
      end
    end

    # Structure Stubber for AribSourceSettings
    class AribSourceSettings
      def self.default(visited=[])
        return nil if visited.include?('AribSourceSettings')
        visited = visited + ['AribSourceSettings']
        {
        }
      end

      def self.stub(stub)
        stub ||= Types::AribSourceSettings.new
        data = {}
        data
      end
    end

    # Structure Stubber for AncillarySourceSettings
    class AncillarySourceSettings
      def self.default(visited=[])
        return nil if visited.include?('AncillarySourceSettings')
        visited = visited + ['AncillarySourceSettings']
        {
          source_ancillary_channel_number: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::AncillarySourceSettings.new
        data = {}
        data['sourceAncillaryChannelNumber'] = stub[:source_ancillary_channel_number] unless stub[:source_ancillary_channel_number].nil?
        data
      end
    end

    # List Stubber for __listOfAudioSelector
    class List____listOfAudioSelector
      def self.default(visited=[])
        return nil if visited.include?('List____listOfAudioSelector')
        visited = visited + ['List____listOfAudioSelector']
        [
          Stubs::AudioSelector.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AudioSelector.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AudioSelector
    class AudioSelector
      def self.default(visited=[])
        return nil if visited.include?('AudioSelector')
        visited = visited + ['AudioSelector']
        {
          name: 'name',
          selector_settings: Stubs::AudioSelectorSettings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AudioSelector.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['selectorSettings'] = Stubs::AudioSelectorSettings.stub(stub[:selector_settings]) unless stub[:selector_settings].nil?
        data
      end
    end

    # Structure Stubber for AudioSelectorSettings
    class AudioSelectorSettings
      def self.default(visited=[])
        return nil if visited.include?('AudioSelectorSettings')
        visited = visited + ['AudioSelectorSettings']
        {
          audio_hls_rendition_selection: Stubs::AudioHlsRenditionSelection.default(visited),
          audio_language_selection: Stubs::AudioLanguageSelection.default(visited),
          audio_pid_selection: Stubs::AudioPidSelection.default(visited),
          audio_track_selection: Stubs::AudioTrackSelection.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AudioSelectorSettings.new
        data = {}
        data['audioHlsRenditionSelection'] = Stubs::AudioHlsRenditionSelection.stub(stub[:audio_hls_rendition_selection]) unless stub[:audio_hls_rendition_selection].nil?
        data['audioLanguageSelection'] = Stubs::AudioLanguageSelection.stub(stub[:audio_language_selection]) unless stub[:audio_language_selection].nil?
        data['audioPidSelection'] = Stubs::AudioPidSelection.stub(stub[:audio_pid_selection]) unless stub[:audio_pid_selection].nil?
        data['audioTrackSelection'] = Stubs::AudioTrackSelection.stub(stub[:audio_track_selection]) unless stub[:audio_track_selection].nil?
        data
      end
    end

    # Structure Stubber for AudioTrackSelection
    class AudioTrackSelection
      def self.default(visited=[])
        return nil if visited.include?('AudioTrackSelection')
        visited = visited + ['AudioTrackSelection']
        {
          tracks: Stubs::List____listOfAudioTrack.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AudioTrackSelection.new
        data = {}
        data['tracks'] = Stubs::List____listOfAudioTrack.stub(stub[:tracks]) unless stub[:tracks].nil?
        data
      end
    end

    # List Stubber for __listOfAudioTrack
    class List____listOfAudioTrack
      def self.default(visited=[])
        return nil if visited.include?('List____listOfAudioTrack')
        visited = visited + ['List____listOfAudioTrack']
        [
          Stubs::AudioTrack.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AudioTrack.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AudioTrack
    class AudioTrack
      def self.default(visited=[])
        return nil if visited.include?('AudioTrack')
        visited = visited + ['AudioTrack']
        {
          track: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::AudioTrack.new
        data = {}
        data['track'] = stub[:track] unless stub[:track].nil?
        data
      end
    end

    # Structure Stubber for AudioPidSelection
    class AudioPidSelection
      def self.default(visited=[])
        return nil if visited.include?('AudioPidSelection')
        visited = visited + ['AudioPidSelection']
        {
          pid: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::AudioPidSelection.new
        data = {}
        data['pid'] = stub[:pid] unless stub[:pid].nil?
        data
      end
    end

    # Structure Stubber for AudioLanguageSelection
    class AudioLanguageSelection
      def self.default(visited=[])
        return nil if visited.include?('AudioLanguageSelection')
        visited = visited + ['AudioLanguageSelection']
        {
          language_code: 'language_code',
          language_selection_policy: 'language_selection_policy',
        }
      end

      def self.stub(stub)
        stub ||= Types::AudioLanguageSelection.new
        data = {}
        data['languageCode'] = stub[:language_code] unless stub[:language_code].nil?
        data['languageSelectionPolicy'] = stub[:language_selection_policy] unless stub[:language_selection_policy].nil?
        data
      end
    end

    # Structure Stubber for AudioHlsRenditionSelection
    class AudioHlsRenditionSelection
      def self.default(visited=[])
        return nil if visited.include?('AudioHlsRenditionSelection')
        visited = visited + ['AudioHlsRenditionSelection']
        {
          group_id: 'group_id',
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::AudioHlsRenditionSelection.new
        data = {}
        data['groupId'] = stub[:group_id] unless stub[:group_id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Structure Stubber for AutomaticInputFailoverSettings
    class AutomaticInputFailoverSettings
      def self.default(visited=[])
        return nil if visited.include?('AutomaticInputFailoverSettings')
        visited = visited + ['AutomaticInputFailoverSettings']
        {
          error_clear_time_msec: 1,
          failover_conditions: Stubs::List____listOfFailoverCondition.default(visited),
          input_preference: 'input_preference',
          secondary_input_id: 'secondary_input_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::AutomaticInputFailoverSettings.new
        data = {}
        data['errorClearTimeMsec'] = stub[:error_clear_time_msec] unless stub[:error_clear_time_msec].nil?
        data['failoverConditions'] = Stubs::List____listOfFailoverCondition.stub(stub[:failover_conditions]) unless stub[:failover_conditions].nil?
        data['inputPreference'] = stub[:input_preference] unless stub[:input_preference].nil?
        data['secondaryInputId'] = stub[:secondary_input_id] unless stub[:secondary_input_id].nil?
        data
      end
    end

    # List Stubber for __listOfFailoverCondition
    class List____listOfFailoverCondition
      def self.default(visited=[])
        return nil if visited.include?('List____listOfFailoverCondition')
        visited = visited + ['List____listOfFailoverCondition']
        [
          Stubs::FailoverCondition.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::FailoverCondition.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FailoverCondition
    class FailoverCondition
      def self.default(visited=[])
        return nil if visited.include?('FailoverCondition')
        visited = visited + ['FailoverCondition']
        {
          failover_condition_settings: Stubs::FailoverConditionSettings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FailoverCondition.new
        data = {}
        data['failoverConditionSettings'] = Stubs::FailoverConditionSettings.stub(stub[:failover_condition_settings]) unless stub[:failover_condition_settings].nil?
        data
      end
    end

    # Structure Stubber for FailoverConditionSettings
    class FailoverConditionSettings
      def self.default(visited=[])
        return nil if visited.include?('FailoverConditionSettings')
        visited = visited + ['FailoverConditionSettings']
        {
          audio_silence_settings: Stubs::AudioSilenceFailoverSettings.default(visited),
          input_loss_settings: Stubs::InputLossFailoverSettings.default(visited),
          video_black_settings: Stubs::VideoBlackFailoverSettings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FailoverConditionSettings.new
        data = {}
        data['audioSilenceSettings'] = Stubs::AudioSilenceFailoverSettings.stub(stub[:audio_silence_settings]) unless stub[:audio_silence_settings].nil?
        data['inputLossSettings'] = Stubs::InputLossFailoverSettings.stub(stub[:input_loss_settings]) unless stub[:input_loss_settings].nil?
        data['videoBlackSettings'] = Stubs::VideoBlackFailoverSettings.stub(stub[:video_black_settings]) unless stub[:video_black_settings].nil?
        data
      end
    end

    # Structure Stubber for VideoBlackFailoverSettings
    class VideoBlackFailoverSettings
      def self.default(visited=[])
        return nil if visited.include?('VideoBlackFailoverSettings')
        visited = visited + ['VideoBlackFailoverSettings']
        {
          black_detect_threshold: 1.0,
          video_black_threshold_msec: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::VideoBlackFailoverSettings.new
        data = {}
        data['blackDetectThreshold'] = Hearth::NumberHelper.serialize(stub[:black_detect_threshold])
        data['videoBlackThresholdMsec'] = stub[:video_black_threshold_msec] unless stub[:video_black_threshold_msec].nil?
        data
      end
    end

    # Structure Stubber for InputLossFailoverSettings
    class InputLossFailoverSettings
      def self.default(visited=[])
        return nil if visited.include?('InputLossFailoverSettings')
        visited = visited + ['InputLossFailoverSettings']
        {
          input_loss_threshold_msec: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::InputLossFailoverSettings.new
        data = {}
        data['inputLossThresholdMsec'] = stub[:input_loss_threshold_msec] unless stub[:input_loss_threshold_msec].nil?
        data
      end
    end

    # Structure Stubber for AudioSilenceFailoverSettings
    class AudioSilenceFailoverSettings
      def self.default(visited=[])
        return nil if visited.include?('AudioSilenceFailoverSettings')
        visited = visited + ['AudioSilenceFailoverSettings']
        {
          audio_selector_name: 'audio_selector_name',
          audio_silence_threshold_msec: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::AudioSilenceFailoverSettings.new
        data = {}
        data['audioSelectorName'] = stub[:audio_selector_name] unless stub[:audio_selector_name].nil?
        data['audioSilenceThresholdMsec'] = stub[:audio_silence_threshold_msec] unless stub[:audio_silence_threshold_msec].nil?
        data
      end
    end

    # Structure Stubber for EncoderSettings
    class EncoderSettings
      def self.default(visited=[])
        return nil if visited.include?('EncoderSettings')
        visited = visited + ['EncoderSettings']
        {
          audio_descriptions: Stubs::List____listOfAudioDescription.default(visited),
          avail_blanking: Stubs::AvailBlanking.default(visited),
          avail_configuration: Stubs::AvailConfiguration.default(visited),
          blackout_slate: Stubs::BlackoutSlate.default(visited),
          caption_descriptions: Stubs::List____listOfCaptionDescription.default(visited),
          feature_activations: Stubs::FeatureActivations.default(visited),
          global_configuration: Stubs::GlobalConfiguration.default(visited),
          motion_graphics_configuration: Stubs::MotionGraphicsConfiguration.default(visited),
          nielsen_configuration: Stubs::NielsenConfiguration.default(visited),
          output_groups: Stubs::List____listOfOutputGroup.default(visited),
          timecode_config: Stubs::TimecodeConfig.default(visited),
          video_descriptions: Stubs::List____listOfVideoDescription.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::EncoderSettings.new
        data = {}
        data['audioDescriptions'] = Stubs::List____listOfAudioDescription.stub(stub[:audio_descriptions]) unless stub[:audio_descriptions].nil?
        data['availBlanking'] = Stubs::AvailBlanking.stub(stub[:avail_blanking]) unless stub[:avail_blanking].nil?
        data['availConfiguration'] = Stubs::AvailConfiguration.stub(stub[:avail_configuration]) unless stub[:avail_configuration].nil?
        data['blackoutSlate'] = Stubs::BlackoutSlate.stub(stub[:blackout_slate]) unless stub[:blackout_slate].nil?
        data['captionDescriptions'] = Stubs::List____listOfCaptionDescription.stub(stub[:caption_descriptions]) unless stub[:caption_descriptions].nil?
        data['featureActivations'] = Stubs::FeatureActivations.stub(stub[:feature_activations]) unless stub[:feature_activations].nil?
        data['globalConfiguration'] = Stubs::GlobalConfiguration.stub(stub[:global_configuration]) unless stub[:global_configuration].nil?
        data['motionGraphicsConfiguration'] = Stubs::MotionGraphicsConfiguration.stub(stub[:motion_graphics_configuration]) unless stub[:motion_graphics_configuration].nil?
        data['nielsenConfiguration'] = Stubs::NielsenConfiguration.stub(stub[:nielsen_configuration]) unless stub[:nielsen_configuration].nil?
        data['outputGroups'] = Stubs::List____listOfOutputGroup.stub(stub[:output_groups]) unless stub[:output_groups].nil?
        data['timecodeConfig'] = Stubs::TimecodeConfig.stub(stub[:timecode_config]) unless stub[:timecode_config].nil?
        data['videoDescriptions'] = Stubs::List____listOfVideoDescription.stub(stub[:video_descriptions]) unless stub[:video_descriptions].nil?
        data
      end
    end

    # List Stubber for __listOfVideoDescription
    class List____listOfVideoDescription
      def self.default(visited=[])
        return nil if visited.include?('List____listOfVideoDescription')
        visited = visited + ['List____listOfVideoDescription']
        [
          Stubs::VideoDescription.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::VideoDescription.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for VideoDescription
    class VideoDescription
      def self.default(visited=[])
        return nil if visited.include?('VideoDescription')
        visited = visited + ['VideoDescription']
        {
          codec_settings: Stubs::VideoCodecSettings.default(visited),
          height: 1,
          name: 'name',
          respond_to_afd: 'respond_to_afd',
          scaling_behavior: 'scaling_behavior',
          sharpness: 1,
          width: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::VideoDescription.new
        data = {}
        data['codecSettings'] = Stubs::VideoCodecSettings.stub(stub[:codec_settings]) unless stub[:codec_settings].nil?
        data['height'] = stub[:height] unless stub[:height].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['respondToAfd'] = stub[:respond_to_afd] unless stub[:respond_to_afd].nil?
        data['scalingBehavior'] = stub[:scaling_behavior] unless stub[:scaling_behavior].nil?
        data['sharpness'] = stub[:sharpness] unless stub[:sharpness].nil?
        data['width'] = stub[:width] unless stub[:width].nil?
        data
      end
    end

    # Structure Stubber for VideoCodecSettings
    class VideoCodecSettings
      def self.default(visited=[])
        return nil if visited.include?('VideoCodecSettings')
        visited = visited + ['VideoCodecSettings']
        {
          frame_capture_settings: Stubs::FrameCaptureSettings.default(visited),
          h264_settings: Stubs::H264Settings.default(visited),
          h265_settings: Stubs::H265Settings.default(visited),
          mpeg2_settings: Stubs::Mpeg2Settings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::VideoCodecSettings.new
        data = {}
        data['frameCaptureSettings'] = Stubs::FrameCaptureSettings.stub(stub[:frame_capture_settings]) unless stub[:frame_capture_settings].nil?
        data['h264Settings'] = Stubs::H264Settings.stub(stub[:h264_settings]) unless stub[:h264_settings].nil?
        data['h265Settings'] = Stubs::H265Settings.stub(stub[:h265_settings]) unless stub[:h265_settings].nil?
        data['mpeg2Settings'] = Stubs::Mpeg2Settings.stub(stub[:mpeg2_settings]) unless stub[:mpeg2_settings].nil?
        data
      end
    end

    # Structure Stubber for Mpeg2Settings
    class Mpeg2Settings
      def self.default(visited=[])
        return nil if visited.include?('Mpeg2Settings')
        visited = visited + ['Mpeg2Settings']
        {
          adaptive_quantization: 'adaptive_quantization',
          afd_signaling: 'afd_signaling',
          color_metadata: 'color_metadata',
          color_space: 'color_space',
          display_aspect_ratio: 'display_aspect_ratio',
          filter_settings: Stubs::Mpeg2FilterSettings.default(visited),
          fixed_afd: 'fixed_afd',
          framerate_denominator: 1,
          framerate_numerator: 1,
          gop_closed_cadence: 1,
          gop_num_b_frames: 1,
          gop_size: 1.0,
          gop_size_units: 'gop_size_units',
          scan_type: 'scan_type',
          subgop_length: 'subgop_length',
          timecode_insertion: 'timecode_insertion',
        }
      end

      def self.stub(stub)
        stub ||= Types::Mpeg2Settings.new
        data = {}
        data['adaptiveQuantization'] = stub[:adaptive_quantization] unless stub[:adaptive_quantization].nil?
        data['afdSignaling'] = stub[:afd_signaling] unless stub[:afd_signaling].nil?
        data['colorMetadata'] = stub[:color_metadata] unless stub[:color_metadata].nil?
        data['colorSpace'] = stub[:color_space] unless stub[:color_space].nil?
        data['displayAspectRatio'] = stub[:display_aspect_ratio] unless stub[:display_aspect_ratio].nil?
        data['filterSettings'] = Stubs::Mpeg2FilterSettings.stub(stub[:filter_settings]) unless stub[:filter_settings].nil?
        data['fixedAfd'] = stub[:fixed_afd] unless stub[:fixed_afd].nil?
        data['framerateDenominator'] = stub[:framerate_denominator] unless stub[:framerate_denominator].nil?
        data['framerateNumerator'] = stub[:framerate_numerator] unless stub[:framerate_numerator].nil?
        data['gopClosedCadence'] = stub[:gop_closed_cadence] unless stub[:gop_closed_cadence].nil?
        data['gopNumBFrames'] = stub[:gop_num_b_frames] unless stub[:gop_num_b_frames].nil?
        data['gopSize'] = Hearth::NumberHelper.serialize(stub[:gop_size])
        data['gopSizeUnits'] = stub[:gop_size_units] unless stub[:gop_size_units].nil?
        data['scanType'] = stub[:scan_type] unless stub[:scan_type].nil?
        data['subgopLength'] = stub[:subgop_length] unless stub[:subgop_length].nil?
        data['timecodeInsertion'] = stub[:timecode_insertion] unless stub[:timecode_insertion].nil?
        data
      end
    end

    # Structure Stubber for Mpeg2FilterSettings
    class Mpeg2FilterSettings
      def self.default(visited=[])
        return nil if visited.include?('Mpeg2FilterSettings')
        visited = visited + ['Mpeg2FilterSettings']
        {
          temporal_filter_settings: Stubs::TemporalFilterSettings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Mpeg2FilterSettings.new
        data = {}
        data['temporalFilterSettings'] = Stubs::TemporalFilterSettings.stub(stub[:temporal_filter_settings]) unless stub[:temporal_filter_settings].nil?
        data
      end
    end

    # Structure Stubber for TemporalFilterSettings
    class TemporalFilterSettings
      def self.default(visited=[])
        return nil if visited.include?('TemporalFilterSettings')
        visited = visited + ['TemporalFilterSettings']
        {
          post_filter_sharpening: 'post_filter_sharpening',
          strength: 'strength',
        }
      end

      def self.stub(stub)
        stub ||= Types::TemporalFilterSettings.new
        data = {}
        data['postFilterSharpening'] = stub[:post_filter_sharpening] unless stub[:post_filter_sharpening].nil?
        data['strength'] = stub[:strength] unless stub[:strength].nil?
        data
      end
    end

    # Structure Stubber for H265Settings
    class H265Settings
      def self.default(visited=[])
        return nil if visited.include?('H265Settings')
        visited = visited + ['H265Settings']
        {
          adaptive_quantization: 'adaptive_quantization',
          afd_signaling: 'afd_signaling',
          alternative_transfer_function: 'alternative_transfer_function',
          bitrate: 1,
          buf_size: 1,
          color_metadata: 'color_metadata',
          color_space_settings: Stubs::H265ColorSpaceSettings.default(visited),
          filter_settings: Stubs::H265FilterSettings.default(visited),
          fixed_afd: 'fixed_afd',
          flicker_aq: 'flicker_aq',
          framerate_denominator: 1,
          framerate_numerator: 1,
          gop_closed_cadence: 1,
          gop_size: 1.0,
          gop_size_units: 'gop_size_units',
          level: 'level',
          look_ahead_rate_control: 'look_ahead_rate_control',
          max_bitrate: 1,
          min_i_interval: 1,
          par_denominator: 1,
          par_numerator: 1,
          profile: 'profile',
          qvbr_quality_level: 1,
          rate_control_mode: 'rate_control_mode',
          scan_type: 'scan_type',
          scene_change_detect: 'scene_change_detect',
          slices: 1,
          tier: 'tier',
          timecode_insertion: 'timecode_insertion',
        }
      end

      def self.stub(stub)
        stub ||= Types::H265Settings.new
        data = {}
        data['adaptiveQuantization'] = stub[:adaptive_quantization] unless stub[:adaptive_quantization].nil?
        data['afdSignaling'] = stub[:afd_signaling] unless stub[:afd_signaling].nil?
        data['alternativeTransferFunction'] = stub[:alternative_transfer_function] unless stub[:alternative_transfer_function].nil?
        data['bitrate'] = stub[:bitrate] unless stub[:bitrate].nil?
        data['bufSize'] = stub[:buf_size] unless stub[:buf_size].nil?
        data['colorMetadata'] = stub[:color_metadata] unless stub[:color_metadata].nil?
        data['colorSpaceSettings'] = Stubs::H265ColorSpaceSettings.stub(stub[:color_space_settings]) unless stub[:color_space_settings].nil?
        data['filterSettings'] = Stubs::H265FilterSettings.stub(stub[:filter_settings]) unless stub[:filter_settings].nil?
        data['fixedAfd'] = stub[:fixed_afd] unless stub[:fixed_afd].nil?
        data['flickerAq'] = stub[:flicker_aq] unless stub[:flicker_aq].nil?
        data['framerateDenominator'] = stub[:framerate_denominator] unless stub[:framerate_denominator].nil?
        data['framerateNumerator'] = stub[:framerate_numerator] unless stub[:framerate_numerator].nil?
        data['gopClosedCadence'] = stub[:gop_closed_cadence] unless stub[:gop_closed_cadence].nil?
        data['gopSize'] = Hearth::NumberHelper.serialize(stub[:gop_size])
        data['gopSizeUnits'] = stub[:gop_size_units] unless stub[:gop_size_units].nil?
        data['level'] = stub[:level] unless stub[:level].nil?
        data['lookAheadRateControl'] = stub[:look_ahead_rate_control] unless stub[:look_ahead_rate_control].nil?
        data['maxBitrate'] = stub[:max_bitrate] unless stub[:max_bitrate].nil?
        data['minIInterval'] = stub[:min_i_interval] unless stub[:min_i_interval].nil?
        data['parDenominator'] = stub[:par_denominator] unless stub[:par_denominator].nil?
        data['parNumerator'] = stub[:par_numerator] unless stub[:par_numerator].nil?
        data['profile'] = stub[:profile] unless stub[:profile].nil?
        data['qvbrQualityLevel'] = stub[:qvbr_quality_level] unless stub[:qvbr_quality_level].nil?
        data['rateControlMode'] = stub[:rate_control_mode] unless stub[:rate_control_mode].nil?
        data['scanType'] = stub[:scan_type] unless stub[:scan_type].nil?
        data['sceneChangeDetect'] = stub[:scene_change_detect] unless stub[:scene_change_detect].nil?
        data['slices'] = stub[:slices] unless stub[:slices].nil?
        data['tier'] = stub[:tier] unless stub[:tier].nil?
        data['timecodeInsertion'] = stub[:timecode_insertion] unless stub[:timecode_insertion].nil?
        data
      end
    end

    # Structure Stubber for H265FilterSettings
    class H265FilterSettings
      def self.default(visited=[])
        return nil if visited.include?('H265FilterSettings')
        visited = visited + ['H265FilterSettings']
        {
          temporal_filter_settings: Stubs::TemporalFilterSettings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::H265FilterSettings.new
        data = {}
        data['temporalFilterSettings'] = Stubs::TemporalFilterSettings.stub(stub[:temporal_filter_settings]) unless stub[:temporal_filter_settings].nil?
        data
      end
    end

    # Structure Stubber for H265ColorSpaceSettings
    class H265ColorSpaceSettings
      def self.default(visited=[])
        return nil if visited.include?('H265ColorSpaceSettings')
        visited = visited + ['H265ColorSpaceSettings']
        {
          color_space_passthrough_settings: Stubs::ColorSpacePassthroughSettings.default(visited),
          hdr10_settings: Stubs::Hdr10Settings.default(visited),
          rec601_settings: Stubs::Rec601Settings.default(visited),
          rec709_settings: Stubs::Rec709Settings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::H265ColorSpaceSettings.new
        data = {}
        data['colorSpacePassthroughSettings'] = Stubs::ColorSpacePassthroughSettings.stub(stub[:color_space_passthrough_settings]) unless stub[:color_space_passthrough_settings].nil?
        data['hdr10Settings'] = Stubs::Hdr10Settings.stub(stub[:hdr10_settings]) unless stub[:hdr10_settings].nil?
        data['rec601Settings'] = Stubs::Rec601Settings.stub(stub[:rec601_settings]) unless stub[:rec601_settings].nil?
        data['rec709Settings'] = Stubs::Rec709Settings.stub(stub[:rec709_settings]) unless stub[:rec709_settings].nil?
        data
      end
    end

    # Structure Stubber for Rec709Settings
    class Rec709Settings
      def self.default(visited=[])
        return nil if visited.include?('Rec709Settings')
        visited = visited + ['Rec709Settings']
        {
        }
      end

      def self.stub(stub)
        stub ||= Types::Rec709Settings.new
        data = {}
        data
      end
    end

    # Structure Stubber for Rec601Settings
    class Rec601Settings
      def self.default(visited=[])
        return nil if visited.include?('Rec601Settings')
        visited = visited + ['Rec601Settings']
        {
        }
      end

      def self.stub(stub)
        stub ||= Types::Rec601Settings.new
        data = {}
        data
      end
    end

    # Structure Stubber for ColorSpacePassthroughSettings
    class ColorSpacePassthroughSettings
      def self.default(visited=[])
        return nil if visited.include?('ColorSpacePassthroughSettings')
        visited = visited + ['ColorSpacePassthroughSettings']
        {
        }
      end

      def self.stub(stub)
        stub ||= Types::ColorSpacePassthroughSettings.new
        data = {}
        data
      end
    end

    # Structure Stubber for H264Settings
    class H264Settings
      def self.default(visited=[])
        return nil if visited.include?('H264Settings')
        visited = visited + ['H264Settings']
        {
          adaptive_quantization: 'adaptive_quantization',
          afd_signaling: 'afd_signaling',
          bitrate: 1,
          buf_fill_pct: 1,
          buf_size: 1,
          color_metadata: 'color_metadata',
          color_space_settings: Stubs::H264ColorSpaceSettings.default(visited),
          entropy_encoding: 'entropy_encoding',
          filter_settings: Stubs::H264FilterSettings.default(visited),
          fixed_afd: 'fixed_afd',
          flicker_aq: 'flicker_aq',
          force_field_pictures: 'force_field_pictures',
          framerate_control: 'framerate_control',
          framerate_denominator: 1,
          framerate_numerator: 1,
          gop_b_reference: 'gop_b_reference',
          gop_closed_cadence: 1,
          gop_num_b_frames: 1,
          gop_size: 1.0,
          gop_size_units: 'gop_size_units',
          level: 'level',
          look_ahead_rate_control: 'look_ahead_rate_control',
          max_bitrate: 1,
          min_i_interval: 1,
          num_ref_frames: 1,
          par_control: 'par_control',
          par_denominator: 1,
          par_numerator: 1,
          profile: 'profile',
          quality_level: 'quality_level',
          qvbr_quality_level: 1,
          rate_control_mode: 'rate_control_mode',
          scan_type: 'scan_type',
          scene_change_detect: 'scene_change_detect',
          slices: 1,
          softness: 1,
          spatial_aq: 'spatial_aq',
          subgop_length: 'subgop_length',
          syntax: 'syntax',
          temporal_aq: 'temporal_aq',
          timecode_insertion: 'timecode_insertion',
        }
      end

      def self.stub(stub)
        stub ||= Types::H264Settings.new
        data = {}
        data['adaptiveQuantization'] = stub[:adaptive_quantization] unless stub[:adaptive_quantization].nil?
        data['afdSignaling'] = stub[:afd_signaling] unless stub[:afd_signaling].nil?
        data['bitrate'] = stub[:bitrate] unless stub[:bitrate].nil?
        data['bufFillPct'] = stub[:buf_fill_pct] unless stub[:buf_fill_pct].nil?
        data['bufSize'] = stub[:buf_size] unless stub[:buf_size].nil?
        data['colorMetadata'] = stub[:color_metadata] unless stub[:color_metadata].nil?
        data['colorSpaceSettings'] = Stubs::H264ColorSpaceSettings.stub(stub[:color_space_settings]) unless stub[:color_space_settings].nil?
        data['entropyEncoding'] = stub[:entropy_encoding] unless stub[:entropy_encoding].nil?
        data['filterSettings'] = Stubs::H264FilterSettings.stub(stub[:filter_settings]) unless stub[:filter_settings].nil?
        data['fixedAfd'] = stub[:fixed_afd] unless stub[:fixed_afd].nil?
        data['flickerAq'] = stub[:flicker_aq] unless stub[:flicker_aq].nil?
        data['forceFieldPictures'] = stub[:force_field_pictures] unless stub[:force_field_pictures].nil?
        data['framerateControl'] = stub[:framerate_control] unless stub[:framerate_control].nil?
        data['framerateDenominator'] = stub[:framerate_denominator] unless stub[:framerate_denominator].nil?
        data['framerateNumerator'] = stub[:framerate_numerator] unless stub[:framerate_numerator].nil?
        data['gopBReference'] = stub[:gop_b_reference] unless stub[:gop_b_reference].nil?
        data['gopClosedCadence'] = stub[:gop_closed_cadence] unless stub[:gop_closed_cadence].nil?
        data['gopNumBFrames'] = stub[:gop_num_b_frames] unless stub[:gop_num_b_frames].nil?
        data['gopSize'] = Hearth::NumberHelper.serialize(stub[:gop_size])
        data['gopSizeUnits'] = stub[:gop_size_units] unless stub[:gop_size_units].nil?
        data['level'] = stub[:level] unless stub[:level].nil?
        data['lookAheadRateControl'] = stub[:look_ahead_rate_control] unless stub[:look_ahead_rate_control].nil?
        data['maxBitrate'] = stub[:max_bitrate] unless stub[:max_bitrate].nil?
        data['minIInterval'] = stub[:min_i_interval] unless stub[:min_i_interval].nil?
        data['numRefFrames'] = stub[:num_ref_frames] unless stub[:num_ref_frames].nil?
        data['parControl'] = stub[:par_control] unless stub[:par_control].nil?
        data['parDenominator'] = stub[:par_denominator] unless stub[:par_denominator].nil?
        data['parNumerator'] = stub[:par_numerator] unless stub[:par_numerator].nil?
        data['profile'] = stub[:profile] unless stub[:profile].nil?
        data['qualityLevel'] = stub[:quality_level] unless stub[:quality_level].nil?
        data['qvbrQualityLevel'] = stub[:qvbr_quality_level] unless stub[:qvbr_quality_level].nil?
        data['rateControlMode'] = stub[:rate_control_mode] unless stub[:rate_control_mode].nil?
        data['scanType'] = stub[:scan_type] unless stub[:scan_type].nil?
        data['sceneChangeDetect'] = stub[:scene_change_detect] unless stub[:scene_change_detect].nil?
        data['slices'] = stub[:slices] unless stub[:slices].nil?
        data['softness'] = stub[:softness] unless stub[:softness].nil?
        data['spatialAq'] = stub[:spatial_aq] unless stub[:spatial_aq].nil?
        data['subgopLength'] = stub[:subgop_length] unless stub[:subgop_length].nil?
        data['syntax'] = stub[:syntax] unless stub[:syntax].nil?
        data['temporalAq'] = stub[:temporal_aq] unless stub[:temporal_aq].nil?
        data['timecodeInsertion'] = stub[:timecode_insertion] unless stub[:timecode_insertion].nil?
        data
      end
    end

    # Structure Stubber for H264FilterSettings
    class H264FilterSettings
      def self.default(visited=[])
        return nil if visited.include?('H264FilterSettings')
        visited = visited + ['H264FilterSettings']
        {
          temporal_filter_settings: Stubs::TemporalFilterSettings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::H264FilterSettings.new
        data = {}
        data['temporalFilterSettings'] = Stubs::TemporalFilterSettings.stub(stub[:temporal_filter_settings]) unless stub[:temporal_filter_settings].nil?
        data
      end
    end

    # Structure Stubber for H264ColorSpaceSettings
    class H264ColorSpaceSettings
      def self.default(visited=[])
        return nil if visited.include?('H264ColorSpaceSettings')
        visited = visited + ['H264ColorSpaceSettings']
        {
          color_space_passthrough_settings: Stubs::ColorSpacePassthroughSettings.default(visited),
          rec601_settings: Stubs::Rec601Settings.default(visited),
          rec709_settings: Stubs::Rec709Settings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::H264ColorSpaceSettings.new
        data = {}
        data['colorSpacePassthroughSettings'] = Stubs::ColorSpacePassthroughSettings.stub(stub[:color_space_passthrough_settings]) unless stub[:color_space_passthrough_settings].nil?
        data['rec601Settings'] = Stubs::Rec601Settings.stub(stub[:rec601_settings]) unless stub[:rec601_settings].nil?
        data['rec709Settings'] = Stubs::Rec709Settings.stub(stub[:rec709_settings]) unless stub[:rec709_settings].nil?
        data
      end
    end

    # Structure Stubber for FrameCaptureSettings
    class FrameCaptureSettings
      def self.default(visited=[])
        return nil if visited.include?('FrameCaptureSettings')
        visited = visited + ['FrameCaptureSettings']
        {
          capture_interval: 1,
          capture_interval_units: 'capture_interval_units',
        }
      end

      def self.stub(stub)
        stub ||= Types::FrameCaptureSettings.new
        data = {}
        data['captureInterval'] = stub[:capture_interval] unless stub[:capture_interval].nil?
        data['captureIntervalUnits'] = stub[:capture_interval_units] unless stub[:capture_interval_units].nil?
        data
      end
    end

    # Structure Stubber for TimecodeConfig
    class TimecodeConfig
      def self.default(visited=[])
        return nil if visited.include?('TimecodeConfig')
        visited = visited + ['TimecodeConfig']
        {
          source: 'source',
          sync_threshold: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::TimecodeConfig.new
        data = {}
        data['source'] = stub[:source] unless stub[:source].nil?
        data['syncThreshold'] = stub[:sync_threshold] unless stub[:sync_threshold].nil?
        data
      end
    end

    # List Stubber for __listOfOutputGroup
    class List____listOfOutputGroup
      def self.default(visited=[])
        return nil if visited.include?('List____listOfOutputGroup')
        visited = visited + ['List____listOfOutputGroup']
        [
          Stubs::OutputGroup.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::OutputGroup.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for OutputGroup
    class OutputGroup
      def self.default(visited=[])
        return nil if visited.include?('OutputGroup')
        visited = visited + ['OutputGroup']
        {
          name: 'name',
          output_group_settings: Stubs::OutputGroupSettings.default(visited),
          outputs: Stubs::List____listOfOutput.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::OutputGroup.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['outputGroupSettings'] = Stubs::OutputGroupSettings.stub(stub[:output_group_settings]) unless stub[:output_group_settings].nil?
        data['outputs'] = Stubs::List____listOfOutput.stub(stub[:outputs]) unless stub[:outputs].nil?
        data
      end
    end

    # List Stubber for __listOfOutput
    class List____listOfOutput
      def self.default(visited=[])
        return nil if visited.include?('List____listOfOutput')
        visited = visited + ['List____listOfOutput']
        [
          Stubs::Output.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Output.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Output
    class Output
      def self.default(visited=[])
        return nil if visited.include?('Output')
        visited = visited + ['Output']
        {
          audio_description_names: Stubs::List____listOf__string.default(visited),
          caption_description_names: Stubs::List____listOf__string.default(visited),
          output_name: 'output_name',
          output_settings: Stubs::OutputSettings.default(visited),
          video_description_name: 'video_description_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::Output.new
        data = {}
        data['audioDescriptionNames'] = Stubs::List____listOf__string.stub(stub[:audio_description_names]) unless stub[:audio_description_names].nil?
        data['captionDescriptionNames'] = Stubs::List____listOf__string.stub(stub[:caption_description_names]) unless stub[:caption_description_names].nil?
        data['outputName'] = stub[:output_name] unless stub[:output_name].nil?
        data['outputSettings'] = Stubs::OutputSettings.stub(stub[:output_settings]) unless stub[:output_settings].nil?
        data['videoDescriptionName'] = stub[:video_description_name] unless stub[:video_description_name].nil?
        data
      end
    end

    # Structure Stubber for OutputSettings
    class OutputSettings
      def self.default(visited=[])
        return nil if visited.include?('OutputSettings')
        visited = visited + ['OutputSettings']
        {
          archive_output_settings: Stubs::ArchiveOutputSettings.default(visited),
          frame_capture_output_settings: Stubs::FrameCaptureOutputSettings.default(visited),
          hls_output_settings: Stubs::HlsOutputSettings.default(visited),
          media_package_output_settings: Stubs::MediaPackageOutputSettings.default(visited),
          ms_smooth_output_settings: Stubs::MsSmoothOutputSettings.default(visited),
          multiplex_output_settings: Stubs::MultiplexOutputSettings.default(visited),
          rtmp_output_settings: Stubs::RtmpOutputSettings.default(visited),
          udp_output_settings: Stubs::UdpOutputSettings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::OutputSettings.new
        data = {}
        data['archiveOutputSettings'] = Stubs::ArchiveOutputSettings.stub(stub[:archive_output_settings]) unless stub[:archive_output_settings].nil?
        data['frameCaptureOutputSettings'] = Stubs::FrameCaptureOutputSettings.stub(stub[:frame_capture_output_settings]) unless stub[:frame_capture_output_settings].nil?
        data['hlsOutputSettings'] = Stubs::HlsOutputSettings.stub(stub[:hls_output_settings]) unless stub[:hls_output_settings].nil?
        data['mediaPackageOutputSettings'] = Stubs::MediaPackageOutputSettings.stub(stub[:media_package_output_settings]) unless stub[:media_package_output_settings].nil?
        data['msSmoothOutputSettings'] = Stubs::MsSmoothOutputSettings.stub(stub[:ms_smooth_output_settings]) unless stub[:ms_smooth_output_settings].nil?
        data['multiplexOutputSettings'] = Stubs::MultiplexOutputSettings.stub(stub[:multiplex_output_settings]) unless stub[:multiplex_output_settings].nil?
        data['rtmpOutputSettings'] = Stubs::RtmpOutputSettings.stub(stub[:rtmp_output_settings]) unless stub[:rtmp_output_settings].nil?
        data['udpOutputSettings'] = Stubs::UdpOutputSettings.stub(stub[:udp_output_settings]) unless stub[:udp_output_settings].nil?
        data
      end
    end

    # Structure Stubber for UdpOutputSettings
    class UdpOutputSettings
      def self.default(visited=[])
        return nil if visited.include?('UdpOutputSettings')
        visited = visited + ['UdpOutputSettings']
        {
          buffer_msec: 1,
          container_settings: Stubs::UdpContainerSettings.default(visited),
          destination: Stubs::OutputLocationRef.default(visited),
          fec_output_settings: Stubs::FecOutputSettings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::UdpOutputSettings.new
        data = {}
        data['bufferMsec'] = stub[:buffer_msec] unless stub[:buffer_msec].nil?
        data['containerSettings'] = Stubs::UdpContainerSettings.stub(stub[:container_settings]) unless stub[:container_settings].nil?
        data['destination'] = Stubs::OutputLocationRef.stub(stub[:destination]) unless stub[:destination].nil?
        data['fecOutputSettings'] = Stubs::FecOutputSettings.stub(stub[:fec_output_settings]) unless stub[:fec_output_settings].nil?
        data
      end
    end

    # Structure Stubber for FecOutputSettings
    class FecOutputSettings
      def self.default(visited=[])
        return nil if visited.include?('FecOutputSettings')
        visited = visited + ['FecOutputSettings']
        {
          column_depth: 1,
          include_fec: 'include_fec',
          row_length: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::FecOutputSettings.new
        data = {}
        data['columnDepth'] = stub[:column_depth] unless stub[:column_depth].nil?
        data['includeFec'] = stub[:include_fec] unless stub[:include_fec].nil?
        data['rowLength'] = stub[:row_length] unless stub[:row_length].nil?
        data
      end
    end

    # Structure Stubber for OutputLocationRef
    class OutputLocationRef
      def self.default(visited=[])
        return nil if visited.include?('OutputLocationRef')
        visited = visited + ['OutputLocationRef']
        {
          destination_ref_id: 'destination_ref_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::OutputLocationRef.new
        data = {}
        data['destinationRefId'] = stub[:destination_ref_id] unless stub[:destination_ref_id].nil?
        data
      end
    end

    # Structure Stubber for UdpContainerSettings
    class UdpContainerSettings
      def self.default(visited=[])
        return nil if visited.include?('UdpContainerSettings')
        visited = visited + ['UdpContainerSettings']
        {
          m2ts_settings: Stubs::M2tsSettings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::UdpContainerSettings.new
        data = {}
        data['m2tsSettings'] = Stubs::M2tsSettings.stub(stub[:m2ts_settings]) unless stub[:m2ts_settings].nil?
        data
      end
    end

    # Structure Stubber for M2tsSettings
    class M2tsSettings
      def self.default(visited=[])
        return nil if visited.include?('M2tsSettings')
        visited = visited + ['M2tsSettings']
        {
          absent_input_audio_behavior: 'absent_input_audio_behavior',
          arib: 'arib',
          arib_captions_pid: 'arib_captions_pid',
          arib_captions_pid_control: 'arib_captions_pid_control',
          audio_buffer_model: 'audio_buffer_model',
          audio_frames_per_pes: 1,
          audio_pids: 'audio_pids',
          audio_stream_type: 'audio_stream_type',
          bitrate: 1,
          buffer_model: 'buffer_model',
          cc_descriptor: 'cc_descriptor',
          dvb_nit_settings: Stubs::DvbNitSettings.default(visited),
          dvb_sdt_settings: Stubs::DvbSdtSettings.default(visited),
          dvb_sub_pids: 'dvb_sub_pids',
          dvb_tdt_settings: Stubs::DvbTdtSettings.default(visited),
          dvb_teletext_pid: 'dvb_teletext_pid',
          ebif: 'ebif',
          ebp_audio_interval: 'ebp_audio_interval',
          ebp_lookahead_ms: 1,
          ebp_placement: 'ebp_placement',
          ecm_pid: 'ecm_pid',
          es_rate_in_pes: 'es_rate_in_pes',
          etv_platform_pid: 'etv_platform_pid',
          etv_signal_pid: 'etv_signal_pid',
          fragment_time: 1.0,
          klv: 'klv',
          klv_data_pids: 'klv_data_pids',
          nielsen_id3_behavior: 'nielsen_id3_behavior',
          null_packet_bitrate: 1.0,
          pat_interval: 1,
          pcr_control: 'pcr_control',
          pcr_period: 1,
          pcr_pid: 'pcr_pid',
          pmt_interval: 1,
          pmt_pid: 'pmt_pid',
          program_num: 1,
          rate_mode: 'rate_mode',
          scte27_pids: 'scte27_pids',
          scte35_control: 'scte35_control',
          scte35_pid: 'scte35_pid',
          segmentation_markers: 'segmentation_markers',
          segmentation_style: 'segmentation_style',
          segmentation_time: 1.0,
          timed_metadata_behavior: 'timed_metadata_behavior',
          timed_metadata_pid: 'timed_metadata_pid',
          transport_stream_id: 1,
          video_pid: 'video_pid',
        }
      end

      def self.stub(stub)
        stub ||= Types::M2tsSettings.new
        data = {}
        data['absentInputAudioBehavior'] = stub[:absent_input_audio_behavior] unless stub[:absent_input_audio_behavior].nil?
        data['arib'] = stub[:arib] unless stub[:arib].nil?
        data['aribCaptionsPid'] = stub[:arib_captions_pid] unless stub[:arib_captions_pid].nil?
        data['aribCaptionsPidControl'] = stub[:arib_captions_pid_control] unless stub[:arib_captions_pid_control].nil?
        data['audioBufferModel'] = stub[:audio_buffer_model] unless stub[:audio_buffer_model].nil?
        data['audioFramesPerPes'] = stub[:audio_frames_per_pes] unless stub[:audio_frames_per_pes].nil?
        data['audioPids'] = stub[:audio_pids] unless stub[:audio_pids].nil?
        data['audioStreamType'] = stub[:audio_stream_type] unless stub[:audio_stream_type].nil?
        data['bitrate'] = stub[:bitrate] unless stub[:bitrate].nil?
        data['bufferModel'] = stub[:buffer_model] unless stub[:buffer_model].nil?
        data['ccDescriptor'] = stub[:cc_descriptor] unless stub[:cc_descriptor].nil?
        data['dvbNitSettings'] = Stubs::DvbNitSettings.stub(stub[:dvb_nit_settings]) unless stub[:dvb_nit_settings].nil?
        data['dvbSdtSettings'] = Stubs::DvbSdtSettings.stub(stub[:dvb_sdt_settings]) unless stub[:dvb_sdt_settings].nil?
        data['dvbSubPids'] = stub[:dvb_sub_pids] unless stub[:dvb_sub_pids].nil?
        data['dvbTdtSettings'] = Stubs::DvbTdtSettings.stub(stub[:dvb_tdt_settings]) unless stub[:dvb_tdt_settings].nil?
        data['dvbTeletextPid'] = stub[:dvb_teletext_pid] unless stub[:dvb_teletext_pid].nil?
        data['ebif'] = stub[:ebif] unless stub[:ebif].nil?
        data['ebpAudioInterval'] = stub[:ebp_audio_interval] unless stub[:ebp_audio_interval].nil?
        data['ebpLookaheadMs'] = stub[:ebp_lookahead_ms] unless stub[:ebp_lookahead_ms].nil?
        data['ebpPlacement'] = stub[:ebp_placement] unless stub[:ebp_placement].nil?
        data['ecmPid'] = stub[:ecm_pid] unless stub[:ecm_pid].nil?
        data['esRateInPes'] = stub[:es_rate_in_pes] unless stub[:es_rate_in_pes].nil?
        data['etvPlatformPid'] = stub[:etv_platform_pid] unless stub[:etv_platform_pid].nil?
        data['etvSignalPid'] = stub[:etv_signal_pid] unless stub[:etv_signal_pid].nil?
        data['fragmentTime'] = Hearth::NumberHelper.serialize(stub[:fragment_time])
        data['klv'] = stub[:klv] unless stub[:klv].nil?
        data['klvDataPids'] = stub[:klv_data_pids] unless stub[:klv_data_pids].nil?
        data['nielsenId3Behavior'] = stub[:nielsen_id3_behavior] unless stub[:nielsen_id3_behavior].nil?
        data['nullPacketBitrate'] = Hearth::NumberHelper.serialize(stub[:null_packet_bitrate])
        data['patInterval'] = stub[:pat_interval] unless stub[:pat_interval].nil?
        data['pcrControl'] = stub[:pcr_control] unless stub[:pcr_control].nil?
        data['pcrPeriod'] = stub[:pcr_period] unless stub[:pcr_period].nil?
        data['pcrPid'] = stub[:pcr_pid] unless stub[:pcr_pid].nil?
        data['pmtInterval'] = stub[:pmt_interval] unless stub[:pmt_interval].nil?
        data['pmtPid'] = stub[:pmt_pid] unless stub[:pmt_pid].nil?
        data['programNum'] = stub[:program_num] unless stub[:program_num].nil?
        data['rateMode'] = stub[:rate_mode] unless stub[:rate_mode].nil?
        data['scte27Pids'] = stub[:scte27_pids] unless stub[:scte27_pids].nil?
        data['scte35Control'] = stub[:scte35_control] unless stub[:scte35_control].nil?
        data['scte35Pid'] = stub[:scte35_pid] unless stub[:scte35_pid].nil?
        data['segmentationMarkers'] = stub[:segmentation_markers] unless stub[:segmentation_markers].nil?
        data['segmentationStyle'] = stub[:segmentation_style] unless stub[:segmentation_style].nil?
        data['segmentationTime'] = Hearth::NumberHelper.serialize(stub[:segmentation_time])
        data['timedMetadataBehavior'] = stub[:timed_metadata_behavior] unless stub[:timed_metadata_behavior].nil?
        data['timedMetadataPid'] = stub[:timed_metadata_pid] unless stub[:timed_metadata_pid].nil?
        data['transportStreamId'] = stub[:transport_stream_id] unless stub[:transport_stream_id].nil?
        data['videoPid'] = stub[:video_pid] unless stub[:video_pid].nil?
        data
      end
    end

    # Structure Stubber for DvbTdtSettings
    class DvbTdtSettings
      def self.default(visited=[])
        return nil if visited.include?('DvbTdtSettings')
        visited = visited + ['DvbTdtSettings']
        {
          rep_interval: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::DvbTdtSettings.new
        data = {}
        data['repInterval'] = stub[:rep_interval] unless stub[:rep_interval].nil?
        data
      end
    end

    # Structure Stubber for DvbSdtSettings
    class DvbSdtSettings
      def self.default(visited=[])
        return nil if visited.include?('DvbSdtSettings')
        visited = visited + ['DvbSdtSettings']
        {
          output_sdt: 'output_sdt',
          rep_interval: 1,
          service_name: 'service_name',
          service_provider_name: 'service_provider_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::DvbSdtSettings.new
        data = {}
        data['outputSdt'] = stub[:output_sdt] unless stub[:output_sdt].nil?
        data['repInterval'] = stub[:rep_interval] unless stub[:rep_interval].nil?
        data['serviceName'] = stub[:service_name] unless stub[:service_name].nil?
        data['serviceProviderName'] = stub[:service_provider_name] unless stub[:service_provider_name].nil?
        data
      end
    end

    # Structure Stubber for DvbNitSettings
    class DvbNitSettings
      def self.default(visited=[])
        return nil if visited.include?('DvbNitSettings')
        visited = visited + ['DvbNitSettings']
        {
          network_id: 1,
          network_name: 'network_name',
          rep_interval: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::DvbNitSettings.new
        data = {}
        data['networkId'] = stub[:network_id] unless stub[:network_id].nil?
        data['networkName'] = stub[:network_name] unless stub[:network_name].nil?
        data['repInterval'] = stub[:rep_interval] unless stub[:rep_interval].nil?
        data
      end
    end

    # Structure Stubber for RtmpOutputSettings
    class RtmpOutputSettings
      def self.default(visited=[])
        return nil if visited.include?('RtmpOutputSettings')
        visited = visited + ['RtmpOutputSettings']
        {
          certificate_mode: 'certificate_mode',
          connection_retry_interval: 1,
          destination: Stubs::OutputLocationRef.default(visited),
          num_retries: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::RtmpOutputSettings.new
        data = {}
        data['certificateMode'] = stub[:certificate_mode] unless stub[:certificate_mode].nil?
        data['connectionRetryInterval'] = stub[:connection_retry_interval] unless stub[:connection_retry_interval].nil?
        data['destination'] = Stubs::OutputLocationRef.stub(stub[:destination]) unless stub[:destination].nil?
        data['numRetries'] = stub[:num_retries] unless stub[:num_retries].nil?
        data
      end
    end

    # Structure Stubber for MultiplexOutputSettings
    class MultiplexOutputSettings
      def self.default(visited=[])
        return nil if visited.include?('MultiplexOutputSettings')
        visited = visited + ['MultiplexOutputSettings']
        {
          destination: Stubs::OutputLocationRef.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MultiplexOutputSettings.new
        data = {}
        data['destination'] = Stubs::OutputLocationRef.stub(stub[:destination]) unless stub[:destination].nil?
        data
      end
    end

    # Structure Stubber for MsSmoothOutputSettings
    class MsSmoothOutputSettings
      def self.default(visited=[])
        return nil if visited.include?('MsSmoothOutputSettings')
        visited = visited + ['MsSmoothOutputSettings']
        {
          h265_packaging_type: 'h265_packaging_type',
          name_modifier: 'name_modifier',
        }
      end

      def self.stub(stub)
        stub ||= Types::MsSmoothOutputSettings.new
        data = {}
        data['h265PackagingType'] = stub[:h265_packaging_type] unless stub[:h265_packaging_type].nil?
        data['nameModifier'] = stub[:name_modifier] unless stub[:name_modifier].nil?
        data
      end
    end

    # Structure Stubber for MediaPackageOutputSettings
    class MediaPackageOutputSettings
      def self.default(visited=[])
        return nil if visited.include?('MediaPackageOutputSettings')
        visited = visited + ['MediaPackageOutputSettings']
        {
        }
      end

      def self.stub(stub)
        stub ||= Types::MediaPackageOutputSettings.new
        data = {}
        data
      end
    end

    # Structure Stubber for HlsOutputSettings
    class HlsOutputSettings
      def self.default(visited=[])
        return nil if visited.include?('HlsOutputSettings')
        visited = visited + ['HlsOutputSettings']
        {
          h265_packaging_type: 'h265_packaging_type',
          hls_settings: Stubs::HlsSettings.default(visited),
          name_modifier: 'name_modifier',
          segment_modifier: 'segment_modifier',
        }
      end

      def self.stub(stub)
        stub ||= Types::HlsOutputSettings.new
        data = {}
        data['h265PackagingType'] = stub[:h265_packaging_type] unless stub[:h265_packaging_type].nil?
        data['hlsSettings'] = Stubs::HlsSettings.stub(stub[:hls_settings]) unless stub[:hls_settings].nil?
        data['nameModifier'] = stub[:name_modifier] unless stub[:name_modifier].nil?
        data['segmentModifier'] = stub[:segment_modifier] unless stub[:segment_modifier].nil?
        data
      end
    end

    # Structure Stubber for HlsSettings
    class HlsSettings
      def self.default(visited=[])
        return nil if visited.include?('HlsSettings')
        visited = visited + ['HlsSettings']
        {
          audio_only_hls_settings: Stubs::AudioOnlyHlsSettings.default(visited),
          fmp4_hls_settings: Stubs::Fmp4HlsSettings.default(visited),
          frame_capture_hls_settings: Stubs::FrameCaptureHlsSettings.default(visited),
          standard_hls_settings: Stubs::StandardHlsSettings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::HlsSettings.new
        data = {}
        data['audioOnlyHlsSettings'] = Stubs::AudioOnlyHlsSettings.stub(stub[:audio_only_hls_settings]) unless stub[:audio_only_hls_settings].nil?
        data['fmp4HlsSettings'] = Stubs::Fmp4HlsSettings.stub(stub[:fmp4_hls_settings]) unless stub[:fmp4_hls_settings].nil?
        data['frameCaptureHlsSettings'] = Stubs::FrameCaptureHlsSettings.stub(stub[:frame_capture_hls_settings]) unless stub[:frame_capture_hls_settings].nil?
        data['standardHlsSettings'] = Stubs::StandardHlsSettings.stub(stub[:standard_hls_settings]) unless stub[:standard_hls_settings].nil?
        data
      end
    end

    # Structure Stubber for StandardHlsSettings
    class StandardHlsSettings
      def self.default(visited=[])
        return nil if visited.include?('StandardHlsSettings')
        visited = visited + ['StandardHlsSettings']
        {
          audio_rendition_sets: 'audio_rendition_sets',
          m3u8_settings: Stubs::M3u8Settings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::StandardHlsSettings.new
        data = {}
        data['audioRenditionSets'] = stub[:audio_rendition_sets] unless stub[:audio_rendition_sets].nil?
        data['m3u8Settings'] = Stubs::M3u8Settings.stub(stub[:m3u8_settings]) unless stub[:m3u8_settings].nil?
        data
      end
    end

    # Structure Stubber for M3u8Settings
    class M3u8Settings
      def self.default(visited=[])
        return nil if visited.include?('M3u8Settings')
        visited = visited + ['M3u8Settings']
        {
          audio_frames_per_pes: 1,
          audio_pids: 'audio_pids',
          ecm_pid: 'ecm_pid',
          nielsen_id3_behavior: 'nielsen_id3_behavior',
          pat_interval: 1,
          pcr_control: 'pcr_control',
          pcr_period: 1,
          pcr_pid: 'pcr_pid',
          pmt_interval: 1,
          pmt_pid: 'pmt_pid',
          program_num: 1,
          scte35_behavior: 'scte35_behavior',
          scte35_pid: 'scte35_pid',
          timed_metadata_behavior: 'timed_metadata_behavior',
          timed_metadata_pid: 'timed_metadata_pid',
          transport_stream_id: 1,
          video_pid: 'video_pid',
        }
      end

      def self.stub(stub)
        stub ||= Types::M3u8Settings.new
        data = {}
        data['audioFramesPerPes'] = stub[:audio_frames_per_pes] unless stub[:audio_frames_per_pes].nil?
        data['audioPids'] = stub[:audio_pids] unless stub[:audio_pids].nil?
        data['ecmPid'] = stub[:ecm_pid] unless stub[:ecm_pid].nil?
        data['nielsenId3Behavior'] = stub[:nielsen_id3_behavior] unless stub[:nielsen_id3_behavior].nil?
        data['patInterval'] = stub[:pat_interval] unless stub[:pat_interval].nil?
        data['pcrControl'] = stub[:pcr_control] unless stub[:pcr_control].nil?
        data['pcrPeriod'] = stub[:pcr_period] unless stub[:pcr_period].nil?
        data['pcrPid'] = stub[:pcr_pid] unless stub[:pcr_pid].nil?
        data['pmtInterval'] = stub[:pmt_interval] unless stub[:pmt_interval].nil?
        data['pmtPid'] = stub[:pmt_pid] unless stub[:pmt_pid].nil?
        data['programNum'] = stub[:program_num] unless stub[:program_num].nil?
        data['scte35Behavior'] = stub[:scte35_behavior] unless stub[:scte35_behavior].nil?
        data['scte35Pid'] = stub[:scte35_pid] unless stub[:scte35_pid].nil?
        data['timedMetadataBehavior'] = stub[:timed_metadata_behavior] unless stub[:timed_metadata_behavior].nil?
        data['timedMetadataPid'] = stub[:timed_metadata_pid] unless stub[:timed_metadata_pid].nil?
        data['transportStreamId'] = stub[:transport_stream_id] unless stub[:transport_stream_id].nil?
        data['videoPid'] = stub[:video_pid] unless stub[:video_pid].nil?
        data
      end
    end

    # Structure Stubber for FrameCaptureHlsSettings
    class FrameCaptureHlsSettings
      def self.default(visited=[])
        return nil if visited.include?('FrameCaptureHlsSettings')
        visited = visited + ['FrameCaptureHlsSettings']
        {
        }
      end

      def self.stub(stub)
        stub ||= Types::FrameCaptureHlsSettings.new
        data = {}
        data
      end
    end

    # Structure Stubber for Fmp4HlsSettings
    class Fmp4HlsSettings
      def self.default(visited=[])
        return nil if visited.include?('Fmp4HlsSettings')
        visited = visited + ['Fmp4HlsSettings']
        {
          audio_rendition_sets: 'audio_rendition_sets',
          nielsen_id3_behavior: 'nielsen_id3_behavior',
          timed_metadata_behavior: 'timed_metadata_behavior',
        }
      end

      def self.stub(stub)
        stub ||= Types::Fmp4HlsSettings.new
        data = {}
        data['audioRenditionSets'] = stub[:audio_rendition_sets] unless stub[:audio_rendition_sets].nil?
        data['nielsenId3Behavior'] = stub[:nielsen_id3_behavior] unless stub[:nielsen_id3_behavior].nil?
        data['timedMetadataBehavior'] = stub[:timed_metadata_behavior] unless stub[:timed_metadata_behavior].nil?
        data
      end
    end

    # Structure Stubber for AudioOnlyHlsSettings
    class AudioOnlyHlsSettings
      def self.default(visited=[])
        return nil if visited.include?('AudioOnlyHlsSettings')
        visited = visited + ['AudioOnlyHlsSettings']
        {
          audio_group_id: 'audio_group_id',
          audio_only_image: Stubs::InputLocation.default(visited),
          audio_track_type: 'audio_track_type',
          segment_type: 'segment_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::AudioOnlyHlsSettings.new
        data = {}
        data['audioGroupId'] = stub[:audio_group_id] unless stub[:audio_group_id].nil?
        data['audioOnlyImage'] = Stubs::InputLocation.stub(stub[:audio_only_image]) unless stub[:audio_only_image].nil?
        data['audioTrackType'] = stub[:audio_track_type] unless stub[:audio_track_type].nil?
        data['segmentType'] = stub[:segment_type] unless stub[:segment_type].nil?
        data
      end
    end

    # Structure Stubber for FrameCaptureOutputSettings
    class FrameCaptureOutputSettings
      def self.default(visited=[])
        return nil if visited.include?('FrameCaptureOutputSettings')
        visited = visited + ['FrameCaptureOutputSettings']
        {
          name_modifier: 'name_modifier',
        }
      end

      def self.stub(stub)
        stub ||= Types::FrameCaptureOutputSettings.new
        data = {}
        data['nameModifier'] = stub[:name_modifier] unless stub[:name_modifier].nil?
        data
      end
    end

    # Structure Stubber for ArchiveOutputSettings
    class ArchiveOutputSettings
      def self.default(visited=[])
        return nil if visited.include?('ArchiveOutputSettings')
        visited = visited + ['ArchiveOutputSettings']
        {
          container_settings: Stubs::ArchiveContainerSettings.default(visited),
          extension: 'extension',
          name_modifier: 'name_modifier',
        }
      end

      def self.stub(stub)
        stub ||= Types::ArchiveOutputSettings.new
        data = {}
        data['containerSettings'] = Stubs::ArchiveContainerSettings.stub(stub[:container_settings]) unless stub[:container_settings].nil?
        data['extension'] = stub[:extension] unless stub[:extension].nil?
        data['nameModifier'] = stub[:name_modifier] unless stub[:name_modifier].nil?
        data
      end
    end

    # Structure Stubber for ArchiveContainerSettings
    class ArchiveContainerSettings
      def self.default(visited=[])
        return nil if visited.include?('ArchiveContainerSettings')
        visited = visited + ['ArchiveContainerSettings']
        {
          m2ts_settings: Stubs::M2tsSettings.default(visited),
          raw_settings: Stubs::RawSettings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ArchiveContainerSettings.new
        data = {}
        data['m2tsSettings'] = Stubs::M2tsSettings.stub(stub[:m2ts_settings]) unless stub[:m2ts_settings].nil?
        data['rawSettings'] = Stubs::RawSettings.stub(stub[:raw_settings]) unless stub[:raw_settings].nil?
        data
      end
    end

    # Structure Stubber for RawSettings
    class RawSettings
      def self.default(visited=[])
        return nil if visited.include?('RawSettings')
        visited = visited + ['RawSettings']
        {
        }
      end

      def self.stub(stub)
        stub ||= Types::RawSettings.new
        data = {}
        data
      end
    end

    # Structure Stubber for OutputGroupSettings
    class OutputGroupSettings
      def self.default(visited=[])
        return nil if visited.include?('OutputGroupSettings')
        visited = visited + ['OutputGroupSettings']
        {
          archive_group_settings: Stubs::ArchiveGroupSettings.default(visited),
          frame_capture_group_settings: Stubs::FrameCaptureGroupSettings.default(visited),
          hls_group_settings: Stubs::HlsGroupSettings.default(visited),
          media_package_group_settings: Stubs::MediaPackageGroupSettings.default(visited),
          ms_smooth_group_settings: Stubs::MsSmoothGroupSettings.default(visited),
          multiplex_group_settings: Stubs::MultiplexGroupSettings.default(visited),
          rtmp_group_settings: Stubs::RtmpGroupSettings.default(visited),
          udp_group_settings: Stubs::UdpGroupSettings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::OutputGroupSettings.new
        data = {}
        data['archiveGroupSettings'] = Stubs::ArchiveGroupSettings.stub(stub[:archive_group_settings]) unless stub[:archive_group_settings].nil?
        data['frameCaptureGroupSettings'] = Stubs::FrameCaptureGroupSettings.stub(stub[:frame_capture_group_settings]) unless stub[:frame_capture_group_settings].nil?
        data['hlsGroupSettings'] = Stubs::HlsGroupSettings.stub(stub[:hls_group_settings]) unless stub[:hls_group_settings].nil?
        data['mediaPackageGroupSettings'] = Stubs::MediaPackageGroupSettings.stub(stub[:media_package_group_settings]) unless stub[:media_package_group_settings].nil?
        data['msSmoothGroupSettings'] = Stubs::MsSmoothGroupSettings.stub(stub[:ms_smooth_group_settings]) unless stub[:ms_smooth_group_settings].nil?
        data['multiplexGroupSettings'] = Stubs::MultiplexGroupSettings.stub(stub[:multiplex_group_settings]) unless stub[:multiplex_group_settings].nil?
        data['rtmpGroupSettings'] = Stubs::RtmpGroupSettings.stub(stub[:rtmp_group_settings]) unless stub[:rtmp_group_settings].nil?
        data['udpGroupSettings'] = Stubs::UdpGroupSettings.stub(stub[:udp_group_settings]) unless stub[:udp_group_settings].nil?
        data
      end
    end

    # Structure Stubber for UdpGroupSettings
    class UdpGroupSettings
      def self.default(visited=[])
        return nil if visited.include?('UdpGroupSettings')
        visited = visited + ['UdpGroupSettings']
        {
          input_loss_action: 'input_loss_action',
          timed_metadata_id3_frame: 'timed_metadata_id3_frame',
          timed_metadata_id3_period: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::UdpGroupSettings.new
        data = {}
        data['inputLossAction'] = stub[:input_loss_action] unless stub[:input_loss_action].nil?
        data['timedMetadataId3Frame'] = stub[:timed_metadata_id3_frame] unless stub[:timed_metadata_id3_frame].nil?
        data['timedMetadataId3Period'] = stub[:timed_metadata_id3_period] unless stub[:timed_metadata_id3_period].nil?
        data
      end
    end

    # Structure Stubber for RtmpGroupSettings
    class RtmpGroupSettings
      def self.default(visited=[])
        return nil if visited.include?('RtmpGroupSettings')
        visited = visited + ['RtmpGroupSettings']
        {
          ad_markers: Stubs::List____listOfRtmpAdMarkers.default(visited),
          authentication_scheme: 'authentication_scheme',
          cache_full_behavior: 'cache_full_behavior',
          cache_length: 1,
          caption_data: 'caption_data',
          input_loss_action: 'input_loss_action',
          restart_delay: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::RtmpGroupSettings.new
        data = {}
        data['adMarkers'] = Stubs::List____listOfRtmpAdMarkers.stub(stub[:ad_markers]) unless stub[:ad_markers].nil?
        data['authenticationScheme'] = stub[:authentication_scheme] unless stub[:authentication_scheme].nil?
        data['cacheFullBehavior'] = stub[:cache_full_behavior] unless stub[:cache_full_behavior].nil?
        data['cacheLength'] = stub[:cache_length] unless stub[:cache_length].nil?
        data['captionData'] = stub[:caption_data] unless stub[:caption_data].nil?
        data['inputLossAction'] = stub[:input_loss_action] unless stub[:input_loss_action].nil?
        data['restartDelay'] = stub[:restart_delay] unless stub[:restart_delay].nil?
        data
      end
    end

    # List Stubber for __listOfRtmpAdMarkers
    class List____listOfRtmpAdMarkers
      def self.default(visited=[])
        return nil if visited.include?('List____listOfRtmpAdMarkers')
        visited = visited + ['List____listOfRtmpAdMarkers']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MultiplexGroupSettings
    class MultiplexGroupSettings
      def self.default(visited=[])
        return nil if visited.include?('MultiplexGroupSettings')
        visited = visited + ['MultiplexGroupSettings']
        {
        }
      end

      def self.stub(stub)
        stub ||= Types::MultiplexGroupSettings.new
        data = {}
        data
      end
    end

    # Structure Stubber for MsSmoothGroupSettings
    class MsSmoothGroupSettings
      def self.default(visited=[])
        return nil if visited.include?('MsSmoothGroupSettings')
        visited = visited + ['MsSmoothGroupSettings']
        {
          acquisition_point_id: 'acquisition_point_id',
          audio_only_timecode_control: 'audio_only_timecode_control',
          certificate_mode: 'certificate_mode',
          connection_retry_interval: 1,
          destination: Stubs::OutputLocationRef.default(visited),
          event_id: 'event_id',
          event_id_mode: 'event_id_mode',
          event_stop_behavior: 'event_stop_behavior',
          filecache_duration: 1,
          fragment_length: 1,
          input_loss_action: 'input_loss_action',
          num_retries: 1,
          restart_delay: 1,
          segmentation_mode: 'segmentation_mode',
          send_delay_ms: 1,
          sparse_track_type: 'sparse_track_type',
          stream_manifest_behavior: 'stream_manifest_behavior',
          timestamp_offset: 'timestamp_offset',
          timestamp_offset_mode: 'timestamp_offset_mode',
        }
      end

      def self.stub(stub)
        stub ||= Types::MsSmoothGroupSettings.new
        data = {}
        data['acquisitionPointId'] = stub[:acquisition_point_id] unless stub[:acquisition_point_id].nil?
        data['audioOnlyTimecodeControl'] = stub[:audio_only_timecode_control] unless stub[:audio_only_timecode_control].nil?
        data['certificateMode'] = stub[:certificate_mode] unless stub[:certificate_mode].nil?
        data['connectionRetryInterval'] = stub[:connection_retry_interval] unless stub[:connection_retry_interval].nil?
        data['destination'] = Stubs::OutputLocationRef.stub(stub[:destination]) unless stub[:destination].nil?
        data['eventId'] = stub[:event_id] unless stub[:event_id].nil?
        data['eventIdMode'] = stub[:event_id_mode] unless stub[:event_id_mode].nil?
        data['eventStopBehavior'] = stub[:event_stop_behavior] unless stub[:event_stop_behavior].nil?
        data['filecacheDuration'] = stub[:filecache_duration] unless stub[:filecache_duration].nil?
        data['fragmentLength'] = stub[:fragment_length] unless stub[:fragment_length].nil?
        data['inputLossAction'] = stub[:input_loss_action] unless stub[:input_loss_action].nil?
        data['numRetries'] = stub[:num_retries] unless stub[:num_retries].nil?
        data['restartDelay'] = stub[:restart_delay] unless stub[:restart_delay].nil?
        data['segmentationMode'] = stub[:segmentation_mode] unless stub[:segmentation_mode].nil?
        data['sendDelayMs'] = stub[:send_delay_ms] unless stub[:send_delay_ms].nil?
        data['sparseTrackType'] = stub[:sparse_track_type] unless stub[:sparse_track_type].nil?
        data['streamManifestBehavior'] = stub[:stream_manifest_behavior] unless stub[:stream_manifest_behavior].nil?
        data['timestampOffset'] = stub[:timestamp_offset] unless stub[:timestamp_offset].nil?
        data['timestampOffsetMode'] = stub[:timestamp_offset_mode] unless stub[:timestamp_offset_mode].nil?
        data
      end
    end

    # Structure Stubber for MediaPackageGroupSettings
    class MediaPackageGroupSettings
      def self.default(visited=[])
        return nil if visited.include?('MediaPackageGroupSettings')
        visited = visited + ['MediaPackageGroupSettings']
        {
          destination: Stubs::OutputLocationRef.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MediaPackageGroupSettings.new
        data = {}
        data['destination'] = Stubs::OutputLocationRef.stub(stub[:destination]) unless stub[:destination].nil?
        data
      end
    end

    # Structure Stubber for HlsGroupSettings
    class HlsGroupSettings
      def self.default(visited=[])
        return nil if visited.include?('HlsGroupSettings')
        visited = visited + ['HlsGroupSettings']
        {
          ad_markers: Stubs::List____listOfHlsAdMarkers.default(visited),
          base_url_content: 'base_url_content',
          base_url_content1: 'base_url_content1',
          base_url_manifest: 'base_url_manifest',
          base_url_manifest1: 'base_url_manifest1',
          caption_language_mappings: Stubs::List____listOfCaptionLanguageMapping.default(visited),
          caption_language_setting: 'caption_language_setting',
          client_cache: 'client_cache',
          codec_specification: 'codec_specification',
          constant_iv: 'constant_iv',
          destination: Stubs::OutputLocationRef.default(visited),
          directory_structure: 'directory_structure',
          discontinuity_tags: 'discontinuity_tags',
          encryption_type: 'encryption_type',
          hls_cdn_settings: Stubs::HlsCdnSettings.default(visited),
          hls_id3_segment_tagging: 'hls_id3_segment_tagging',
          i_frame_only_playlists: 'i_frame_only_playlists',
          incomplete_segment_behavior: 'incomplete_segment_behavior',
          index_n_segments: 1,
          input_loss_action: 'input_loss_action',
          iv_in_manifest: 'iv_in_manifest',
          iv_source: 'iv_source',
          keep_segments: 1,
          key_format: 'key_format',
          key_format_versions: 'key_format_versions',
          key_provider_settings: Stubs::KeyProviderSettings.default(visited),
          manifest_compression: 'manifest_compression',
          manifest_duration_format: 'manifest_duration_format',
          min_segment_length: 1,
          mode: 'mode',
          output_selection: 'output_selection',
          program_date_time: 'program_date_time',
          program_date_time_clock: 'program_date_time_clock',
          program_date_time_period: 1,
          redundant_manifest: 'redundant_manifest',
          segment_length: 1,
          segmentation_mode: 'segmentation_mode',
          segments_per_subdirectory: 1,
          stream_inf_resolution: 'stream_inf_resolution',
          timed_metadata_id3_frame: 'timed_metadata_id3_frame',
          timed_metadata_id3_period: 1,
          timestamp_delta_milliseconds: 1,
          ts_file_mode: 'ts_file_mode',
        }
      end

      def self.stub(stub)
        stub ||= Types::HlsGroupSettings.new
        data = {}
        data['adMarkers'] = Stubs::List____listOfHlsAdMarkers.stub(stub[:ad_markers]) unless stub[:ad_markers].nil?
        data['baseUrlContent'] = stub[:base_url_content] unless stub[:base_url_content].nil?
        data['baseUrlContent1'] = stub[:base_url_content1] unless stub[:base_url_content1].nil?
        data['baseUrlManifest'] = stub[:base_url_manifest] unless stub[:base_url_manifest].nil?
        data['baseUrlManifest1'] = stub[:base_url_manifest1] unless stub[:base_url_manifest1].nil?
        data['captionLanguageMappings'] = Stubs::List____listOfCaptionLanguageMapping.stub(stub[:caption_language_mappings]) unless stub[:caption_language_mappings].nil?
        data['captionLanguageSetting'] = stub[:caption_language_setting] unless stub[:caption_language_setting].nil?
        data['clientCache'] = stub[:client_cache] unless stub[:client_cache].nil?
        data['codecSpecification'] = stub[:codec_specification] unless stub[:codec_specification].nil?
        data['constantIv'] = stub[:constant_iv] unless stub[:constant_iv].nil?
        data['destination'] = Stubs::OutputLocationRef.stub(stub[:destination]) unless stub[:destination].nil?
        data['directoryStructure'] = stub[:directory_structure] unless stub[:directory_structure].nil?
        data['discontinuityTags'] = stub[:discontinuity_tags] unless stub[:discontinuity_tags].nil?
        data['encryptionType'] = stub[:encryption_type] unless stub[:encryption_type].nil?
        data['hlsCdnSettings'] = Stubs::HlsCdnSettings.stub(stub[:hls_cdn_settings]) unless stub[:hls_cdn_settings].nil?
        data['hlsId3SegmentTagging'] = stub[:hls_id3_segment_tagging] unless stub[:hls_id3_segment_tagging].nil?
        data['iFrameOnlyPlaylists'] = stub[:i_frame_only_playlists] unless stub[:i_frame_only_playlists].nil?
        data['incompleteSegmentBehavior'] = stub[:incomplete_segment_behavior] unless stub[:incomplete_segment_behavior].nil?
        data['indexNSegments'] = stub[:index_n_segments] unless stub[:index_n_segments].nil?
        data['inputLossAction'] = stub[:input_loss_action] unless stub[:input_loss_action].nil?
        data['ivInManifest'] = stub[:iv_in_manifest] unless stub[:iv_in_manifest].nil?
        data['ivSource'] = stub[:iv_source] unless stub[:iv_source].nil?
        data['keepSegments'] = stub[:keep_segments] unless stub[:keep_segments].nil?
        data['keyFormat'] = stub[:key_format] unless stub[:key_format].nil?
        data['keyFormatVersions'] = stub[:key_format_versions] unless stub[:key_format_versions].nil?
        data['keyProviderSettings'] = Stubs::KeyProviderSettings.stub(stub[:key_provider_settings]) unless stub[:key_provider_settings].nil?
        data['manifestCompression'] = stub[:manifest_compression] unless stub[:manifest_compression].nil?
        data['manifestDurationFormat'] = stub[:manifest_duration_format] unless stub[:manifest_duration_format].nil?
        data['minSegmentLength'] = stub[:min_segment_length] unless stub[:min_segment_length].nil?
        data['mode'] = stub[:mode] unless stub[:mode].nil?
        data['outputSelection'] = stub[:output_selection] unless stub[:output_selection].nil?
        data['programDateTime'] = stub[:program_date_time] unless stub[:program_date_time].nil?
        data['programDateTimeClock'] = stub[:program_date_time_clock] unless stub[:program_date_time_clock].nil?
        data['programDateTimePeriod'] = stub[:program_date_time_period] unless stub[:program_date_time_period].nil?
        data['redundantManifest'] = stub[:redundant_manifest] unless stub[:redundant_manifest].nil?
        data['segmentLength'] = stub[:segment_length] unless stub[:segment_length].nil?
        data['segmentationMode'] = stub[:segmentation_mode] unless stub[:segmentation_mode].nil?
        data['segmentsPerSubdirectory'] = stub[:segments_per_subdirectory] unless stub[:segments_per_subdirectory].nil?
        data['streamInfResolution'] = stub[:stream_inf_resolution] unless stub[:stream_inf_resolution].nil?
        data['timedMetadataId3Frame'] = stub[:timed_metadata_id3_frame] unless stub[:timed_metadata_id3_frame].nil?
        data['timedMetadataId3Period'] = stub[:timed_metadata_id3_period] unless stub[:timed_metadata_id3_period].nil?
        data['timestampDeltaMilliseconds'] = stub[:timestamp_delta_milliseconds] unless stub[:timestamp_delta_milliseconds].nil?
        data['tsFileMode'] = stub[:ts_file_mode] unless stub[:ts_file_mode].nil?
        data
      end
    end

    # Structure Stubber for KeyProviderSettings
    class KeyProviderSettings
      def self.default(visited=[])
        return nil if visited.include?('KeyProviderSettings')
        visited = visited + ['KeyProviderSettings']
        {
          static_key_settings: Stubs::StaticKeySettings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::KeyProviderSettings.new
        data = {}
        data['staticKeySettings'] = Stubs::StaticKeySettings.stub(stub[:static_key_settings]) unless stub[:static_key_settings].nil?
        data
      end
    end

    # Structure Stubber for StaticKeySettings
    class StaticKeySettings
      def self.default(visited=[])
        return nil if visited.include?('StaticKeySettings')
        visited = visited + ['StaticKeySettings']
        {
          key_provider_server: Stubs::InputLocation.default(visited),
          static_key_value: 'static_key_value',
        }
      end

      def self.stub(stub)
        stub ||= Types::StaticKeySettings.new
        data = {}
        data['keyProviderServer'] = Stubs::InputLocation.stub(stub[:key_provider_server]) unless stub[:key_provider_server].nil?
        data['staticKeyValue'] = stub[:static_key_value] unless stub[:static_key_value].nil?
        data
      end
    end

    # Structure Stubber for HlsCdnSettings
    class HlsCdnSettings
      def self.default(visited=[])
        return nil if visited.include?('HlsCdnSettings')
        visited = visited + ['HlsCdnSettings']
        {
          hls_akamai_settings: Stubs::HlsAkamaiSettings.default(visited),
          hls_basic_put_settings: Stubs::HlsBasicPutSettings.default(visited),
          hls_media_store_settings: Stubs::HlsMediaStoreSettings.default(visited),
          hls_s3_settings: Stubs::HlsS3Settings.default(visited),
          hls_webdav_settings: Stubs::HlsWebdavSettings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::HlsCdnSettings.new
        data = {}
        data['hlsAkamaiSettings'] = Stubs::HlsAkamaiSettings.stub(stub[:hls_akamai_settings]) unless stub[:hls_akamai_settings].nil?
        data['hlsBasicPutSettings'] = Stubs::HlsBasicPutSettings.stub(stub[:hls_basic_put_settings]) unless stub[:hls_basic_put_settings].nil?
        data['hlsMediaStoreSettings'] = Stubs::HlsMediaStoreSettings.stub(stub[:hls_media_store_settings]) unless stub[:hls_media_store_settings].nil?
        data['hlsS3Settings'] = Stubs::HlsS3Settings.stub(stub[:hls_s3_settings]) unless stub[:hls_s3_settings].nil?
        data['hlsWebdavSettings'] = Stubs::HlsWebdavSettings.stub(stub[:hls_webdav_settings]) unless stub[:hls_webdav_settings].nil?
        data
      end
    end

    # Structure Stubber for HlsWebdavSettings
    class HlsWebdavSettings
      def self.default(visited=[])
        return nil if visited.include?('HlsWebdavSettings')
        visited = visited + ['HlsWebdavSettings']
        {
          connection_retry_interval: 1,
          filecache_duration: 1,
          http_transfer_mode: 'http_transfer_mode',
          num_retries: 1,
          restart_delay: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::HlsWebdavSettings.new
        data = {}
        data['connectionRetryInterval'] = stub[:connection_retry_interval] unless stub[:connection_retry_interval].nil?
        data['filecacheDuration'] = stub[:filecache_duration] unless stub[:filecache_duration].nil?
        data['httpTransferMode'] = stub[:http_transfer_mode] unless stub[:http_transfer_mode].nil?
        data['numRetries'] = stub[:num_retries] unless stub[:num_retries].nil?
        data['restartDelay'] = stub[:restart_delay] unless stub[:restart_delay].nil?
        data
      end
    end

    # Structure Stubber for HlsS3Settings
    class HlsS3Settings
      def self.default(visited=[])
        return nil if visited.include?('HlsS3Settings')
        visited = visited + ['HlsS3Settings']
        {
          canned_acl: 'canned_acl',
        }
      end

      def self.stub(stub)
        stub ||= Types::HlsS3Settings.new
        data = {}
        data['cannedAcl'] = stub[:canned_acl] unless stub[:canned_acl].nil?
        data
      end
    end

    # Structure Stubber for HlsMediaStoreSettings
    class HlsMediaStoreSettings
      def self.default(visited=[])
        return nil if visited.include?('HlsMediaStoreSettings')
        visited = visited + ['HlsMediaStoreSettings']
        {
          connection_retry_interval: 1,
          filecache_duration: 1,
          media_store_storage_class: 'media_store_storage_class',
          num_retries: 1,
          restart_delay: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::HlsMediaStoreSettings.new
        data = {}
        data['connectionRetryInterval'] = stub[:connection_retry_interval] unless stub[:connection_retry_interval].nil?
        data['filecacheDuration'] = stub[:filecache_duration] unless stub[:filecache_duration].nil?
        data['mediaStoreStorageClass'] = stub[:media_store_storage_class] unless stub[:media_store_storage_class].nil?
        data['numRetries'] = stub[:num_retries] unless stub[:num_retries].nil?
        data['restartDelay'] = stub[:restart_delay] unless stub[:restart_delay].nil?
        data
      end
    end

    # Structure Stubber for HlsBasicPutSettings
    class HlsBasicPutSettings
      def self.default(visited=[])
        return nil if visited.include?('HlsBasicPutSettings')
        visited = visited + ['HlsBasicPutSettings']
        {
          connection_retry_interval: 1,
          filecache_duration: 1,
          num_retries: 1,
          restart_delay: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::HlsBasicPutSettings.new
        data = {}
        data['connectionRetryInterval'] = stub[:connection_retry_interval] unless stub[:connection_retry_interval].nil?
        data['filecacheDuration'] = stub[:filecache_duration] unless stub[:filecache_duration].nil?
        data['numRetries'] = stub[:num_retries] unless stub[:num_retries].nil?
        data['restartDelay'] = stub[:restart_delay] unless stub[:restart_delay].nil?
        data
      end
    end

    # Structure Stubber for HlsAkamaiSettings
    class HlsAkamaiSettings
      def self.default(visited=[])
        return nil if visited.include?('HlsAkamaiSettings')
        visited = visited + ['HlsAkamaiSettings']
        {
          connection_retry_interval: 1,
          filecache_duration: 1,
          http_transfer_mode: 'http_transfer_mode',
          num_retries: 1,
          restart_delay: 1,
          salt: 'salt',
          token: 'token',
        }
      end

      def self.stub(stub)
        stub ||= Types::HlsAkamaiSettings.new
        data = {}
        data['connectionRetryInterval'] = stub[:connection_retry_interval] unless stub[:connection_retry_interval].nil?
        data['filecacheDuration'] = stub[:filecache_duration] unless stub[:filecache_duration].nil?
        data['httpTransferMode'] = stub[:http_transfer_mode] unless stub[:http_transfer_mode].nil?
        data['numRetries'] = stub[:num_retries] unless stub[:num_retries].nil?
        data['restartDelay'] = stub[:restart_delay] unless stub[:restart_delay].nil?
        data['salt'] = stub[:salt] unless stub[:salt].nil?
        data['token'] = stub[:token] unless stub[:token].nil?
        data
      end
    end

    # List Stubber for __listOfCaptionLanguageMapping
    class List____listOfCaptionLanguageMapping
      def self.default(visited=[])
        return nil if visited.include?('List____listOfCaptionLanguageMapping')
        visited = visited + ['List____listOfCaptionLanguageMapping']
        [
          Stubs::CaptionLanguageMapping.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::CaptionLanguageMapping.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CaptionLanguageMapping
    class CaptionLanguageMapping
      def self.default(visited=[])
        return nil if visited.include?('CaptionLanguageMapping')
        visited = visited + ['CaptionLanguageMapping']
        {
          caption_channel: 1,
          language_code: 'language_code',
          language_description: 'language_description',
        }
      end

      def self.stub(stub)
        stub ||= Types::CaptionLanguageMapping.new
        data = {}
        data['captionChannel'] = stub[:caption_channel] unless stub[:caption_channel].nil?
        data['languageCode'] = stub[:language_code] unless stub[:language_code].nil?
        data['languageDescription'] = stub[:language_description] unless stub[:language_description].nil?
        data
      end
    end

    # List Stubber for __listOfHlsAdMarkers
    class List____listOfHlsAdMarkers
      def self.default(visited=[])
        return nil if visited.include?('List____listOfHlsAdMarkers')
        visited = visited + ['List____listOfHlsAdMarkers']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FrameCaptureGroupSettings
    class FrameCaptureGroupSettings
      def self.default(visited=[])
        return nil if visited.include?('FrameCaptureGroupSettings')
        visited = visited + ['FrameCaptureGroupSettings']
        {
          destination: Stubs::OutputLocationRef.default(visited),
          frame_capture_cdn_settings: Stubs::FrameCaptureCdnSettings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FrameCaptureGroupSettings.new
        data = {}
        data['destination'] = Stubs::OutputLocationRef.stub(stub[:destination]) unless stub[:destination].nil?
        data['frameCaptureCdnSettings'] = Stubs::FrameCaptureCdnSettings.stub(stub[:frame_capture_cdn_settings]) unless stub[:frame_capture_cdn_settings].nil?
        data
      end
    end

    # Structure Stubber for FrameCaptureCdnSettings
    class FrameCaptureCdnSettings
      def self.default(visited=[])
        return nil if visited.include?('FrameCaptureCdnSettings')
        visited = visited + ['FrameCaptureCdnSettings']
        {
          frame_capture_s3_settings: Stubs::FrameCaptureS3Settings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FrameCaptureCdnSettings.new
        data = {}
        data['frameCaptureS3Settings'] = Stubs::FrameCaptureS3Settings.stub(stub[:frame_capture_s3_settings]) unless stub[:frame_capture_s3_settings].nil?
        data
      end
    end

    # Structure Stubber for FrameCaptureS3Settings
    class FrameCaptureS3Settings
      def self.default(visited=[])
        return nil if visited.include?('FrameCaptureS3Settings')
        visited = visited + ['FrameCaptureS3Settings']
        {
          canned_acl: 'canned_acl',
        }
      end

      def self.stub(stub)
        stub ||= Types::FrameCaptureS3Settings.new
        data = {}
        data['cannedAcl'] = stub[:canned_acl] unless stub[:canned_acl].nil?
        data
      end
    end

    # Structure Stubber for ArchiveGroupSettings
    class ArchiveGroupSettings
      def self.default(visited=[])
        return nil if visited.include?('ArchiveGroupSettings')
        visited = visited + ['ArchiveGroupSettings']
        {
          archive_cdn_settings: Stubs::ArchiveCdnSettings.default(visited),
          destination: Stubs::OutputLocationRef.default(visited),
          rollover_interval: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ArchiveGroupSettings.new
        data = {}
        data['archiveCdnSettings'] = Stubs::ArchiveCdnSettings.stub(stub[:archive_cdn_settings]) unless stub[:archive_cdn_settings].nil?
        data['destination'] = Stubs::OutputLocationRef.stub(stub[:destination]) unless stub[:destination].nil?
        data['rolloverInterval'] = stub[:rollover_interval] unless stub[:rollover_interval].nil?
        data
      end
    end

    # Structure Stubber for ArchiveCdnSettings
    class ArchiveCdnSettings
      def self.default(visited=[])
        return nil if visited.include?('ArchiveCdnSettings')
        visited = visited + ['ArchiveCdnSettings']
        {
          archive_s3_settings: Stubs::ArchiveS3Settings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ArchiveCdnSettings.new
        data = {}
        data['archiveS3Settings'] = Stubs::ArchiveS3Settings.stub(stub[:archive_s3_settings]) unless stub[:archive_s3_settings].nil?
        data
      end
    end

    # Structure Stubber for ArchiveS3Settings
    class ArchiveS3Settings
      def self.default(visited=[])
        return nil if visited.include?('ArchiveS3Settings')
        visited = visited + ['ArchiveS3Settings']
        {
          canned_acl: 'canned_acl',
        }
      end

      def self.stub(stub)
        stub ||= Types::ArchiveS3Settings.new
        data = {}
        data['cannedAcl'] = stub[:canned_acl] unless stub[:canned_acl].nil?
        data
      end
    end

    # Structure Stubber for NielsenConfiguration
    class NielsenConfiguration
      def self.default(visited=[])
        return nil if visited.include?('NielsenConfiguration')
        visited = visited + ['NielsenConfiguration']
        {
          distributor_id: 'distributor_id',
          nielsen_pcm_to_id3_tagging: 'nielsen_pcm_to_id3_tagging',
        }
      end

      def self.stub(stub)
        stub ||= Types::NielsenConfiguration.new
        data = {}
        data['distributorId'] = stub[:distributor_id] unless stub[:distributor_id].nil?
        data['nielsenPcmToId3Tagging'] = stub[:nielsen_pcm_to_id3_tagging] unless stub[:nielsen_pcm_to_id3_tagging].nil?
        data
      end
    end

    # Structure Stubber for MotionGraphicsConfiguration
    class MotionGraphicsConfiguration
      def self.default(visited=[])
        return nil if visited.include?('MotionGraphicsConfiguration')
        visited = visited + ['MotionGraphicsConfiguration']
        {
          motion_graphics_insertion: 'motion_graphics_insertion',
          motion_graphics_settings: Stubs::MotionGraphicsSettings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MotionGraphicsConfiguration.new
        data = {}
        data['motionGraphicsInsertion'] = stub[:motion_graphics_insertion] unless stub[:motion_graphics_insertion].nil?
        data['motionGraphicsSettings'] = Stubs::MotionGraphicsSettings.stub(stub[:motion_graphics_settings]) unless stub[:motion_graphics_settings].nil?
        data
      end
    end

    # Structure Stubber for MotionGraphicsSettings
    class MotionGraphicsSettings
      def self.default(visited=[])
        return nil if visited.include?('MotionGraphicsSettings')
        visited = visited + ['MotionGraphicsSettings']
        {
          html_motion_graphics_settings: Stubs::HtmlMotionGraphicsSettings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MotionGraphicsSettings.new
        data = {}
        data['htmlMotionGraphicsSettings'] = Stubs::HtmlMotionGraphicsSettings.stub(stub[:html_motion_graphics_settings]) unless stub[:html_motion_graphics_settings].nil?
        data
      end
    end

    # Structure Stubber for HtmlMotionGraphicsSettings
    class HtmlMotionGraphicsSettings
      def self.default(visited=[])
        return nil if visited.include?('HtmlMotionGraphicsSettings')
        visited = visited + ['HtmlMotionGraphicsSettings']
        {
        }
      end

      def self.stub(stub)
        stub ||= Types::HtmlMotionGraphicsSettings.new
        data = {}
        data
      end
    end

    # Structure Stubber for GlobalConfiguration
    class GlobalConfiguration
      def self.default(visited=[])
        return nil if visited.include?('GlobalConfiguration')
        visited = visited + ['GlobalConfiguration']
        {
          initial_audio_gain: 1,
          input_end_action: 'input_end_action',
          input_loss_behavior: Stubs::InputLossBehavior.default(visited),
          output_locking_mode: 'output_locking_mode',
          output_timing_source: 'output_timing_source',
          support_low_framerate_inputs: 'support_low_framerate_inputs',
        }
      end

      def self.stub(stub)
        stub ||= Types::GlobalConfiguration.new
        data = {}
        data['initialAudioGain'] = stub[:initial_audio_gain] unless stub[:initial_audio_gain].nil?
        data['inputEndAction'] = stub[:input_end_action] unless stub[:input_end_action].nil?
        data['inputLossBehavior'] = Stubs::InputLossBehavior.stub(stub[:input_loss_behavior]) unless stub[:input_loss_behavior].nil?
        data['outputLockingMode'] = stub[:output_locking_mode] unless stub[:output_locking_mode].nil?
        data['outputTimingSource'] = stub[:output_timing_source] unless stub[:output_timing_source].nil?
        data['supportLowFramerateInputs'] = stub[:support_low_framerate_inputs] unless stub[:support_low_framerate_inputs].nil?
        data
      end
    end

    # Structure Stubber for InputLossBehavior
    class InputLossBehavior
      def self.default(visited=[])
        return nil if visited.include?('InputLossBehavior')
        visited = visited + ['InputLossBehavior']
        {
          black_frame_msec: 1,
          input_loss_image_color: 'input_loss_image_color',
          input_loss_image_slate: Stubs::InputLocation.default(visited),
          input_loss_image_type: 'input_loss_image_type',
          repeat_frame_msec: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::InputLossBehavior.new
        data = {}
        data['blackFrameMsec'] = stub[:black_frame_msec] unless stub[:black_frame_msec].nil?
        data['inputLossImageColor'] = stub[:input_loss_image_color] unless stub[:input_loss_image_color].nil?
        data['inputLossImageSlate'] = Stubs::InputLocation.stub(stub[:input_loss_image_slate]) unless stub[:input_loss_image_slate].nil?
        data['inputLossImageType'] = stub[:input_loss_image_type] unless stub[:input_loss_image_type].nil?
        data['repeatFrameMsec'] = stub[:repeat_frame_msec] unless stub[:repeat_frame_msec].nil?
        data
      end
    end

    # Structure Stubber for FeatureActivations
    class FeatureActivations
      def self.default(visited=[])
        return nil if visited.include?('FeatureActivations')
        visited = visited + ['FeatureActivations']
        {
          input_prepare_schedule_actions: 'input_prepare_schedule_actions',
        }
      end

      def self.stub(stub)
        stub ||= Types::FeatureActivations.new
        data = {}
        data['inputPrepareScheduleActions'] = stub[:input_prepare_schedule_actions] unless stub[:input_prepare_schedule_actions].nil?
        data
      end
    end

    # List Stubber for __listOfCaptionDescription
    class List____listOfCaptionDescription
      def self.default(visited=[])
        return nil if visited.include?('List____listOfCaptionDescription')
        visited = visited + ['List____listOfCaptionDescription']
        [
          Stubs::CaptionDescription.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::CaptionDescription.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CaptionDescription
    class CaptionDescription
      def self.default(visited=[])
        return nil if visited.include?('CaptionDescription')
        visited = visited + ['CaptionDescription']
        {
          caption_selector_name: 'caption_selector_name',
          destination_settings: Stubs::CaptionDestinationSettings.default(visited),
          language_code: 'language_code',
          language_description: 'language_description',
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::CaptionDescription.new
        data = {}
        data['captionSelectorName'] = stub[:caption_selector_name] unless stub[:caption_selector_name].nil?
        data['destinationSettings'] = Stubs::CaptionDestinationSettings.stub(stub[:destination_settings]) unless stub[:destination_settings].nil?
        data['languageCode'] = stub[:language_code] unless stub[:language_code].nil?
        data['languageDescription'] = stub[:language_description] unless stub[:language_description].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Structure Stubber for CaptionDestinationSettings
    class CaptionDestinationSettings
      def self.default(visited=[])
        return nil if visited.include?('CaptionDestinationSettings')
        visited = visited + ['CaptionDestinationSettings']
        {
          arib_destination_settings: Stubs::AribDestinationSettings.default(visited),
          burn_in_destination_settings: Stubs::BurnInDestinationSettings.default(visited),
          dvb_sub_destination_settings: Stubs::DvbSubDestinationSettings.default(visited),
          ebu_tt_d_destination_settings: Stubs::EbuTtDDestinationSettings.default(visited),
          embedded_destination_settings: Stubs::EmbeddedDestinationSettings.default(visited),
          embedded_plus_scte20_destination_settings: Stubs::EmbeddedPlusScte20DestinationSettings.default(visited),
          rtmp_caption_info_destination_settings: Stubs::RtmpCaptionInfoDestinationSettings.default(visited),
          scte20_plus_embedded_destination_settings: Stubs::Scte20PlusEmbeddedDestinationSettings.default(visited),
          scte27_destination_settings: Stubs::Scte27DestinationSettings.default(visited),
          smpte_tt_destination_settings: Stubs::SmpteTtDestinationSettings.default(visited),
          teletext_destination_settings: Stubs::TeletextDestinationSettings.default(visited),
          ttml_destination_settings: Stubs::TtmlDestinationSettings.default(visited),
          webvtt_destination_settings: Stubs::WebvttDestinationSettings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CaptionDestinationSettings.new
        data = {}
        data['aribDestinationSettings'] = Stubs::AribDestinationSettings.stub(stub[:arib_destination_settings]) unless stub[:arib_destination_settings].nil?
        data['burnInDestinationSettings'] = Stubs::BurnInDestinationSettings.stub(stub[:burn_in_destination_settings]) unless stub[:burn_in_destination_settings].nil?
        data['dvbSubDestinationSettings'] = Stubs::DvbSubDestinationSettings.stub(stub[:dvb_sub_destination_settings]) unless stub[:dvb_sub_destination_settings].nil?
        data['ebuTtDDestinationSettings'] = Stubs::EbuTtDDestinationSettings.stub(stub[:ebu_tt_d_destination_settings]) unless stub[:ebu_tt_d_destination_settings].nil?
        data['embeddedDestinationSettings'] = Stubs::EmbeddedDestinationSettings.stub(stub[:embedded_destination_settings]) unless stub[:embedded_destination_settings].nil?
        data['embeddedPlusScte20DestinationSettings'] = Stubs::EmbeddedPlusScte20DestinationSettings.stub(stub[:embedded_plus_scte20_destination_settings]) unless stub[:embedded_plus_scte20_destination_settings].nil?
        data['rtmpCaptionInfoDestinationSettings'] = Stubs::RtmpCaptionInfoDestinationSettings.stub(stub[:rtmp_caption_info_destination_settings]) unless stub[:rtmp_caption_info_destination_settings].nil?
        data['scte20PlusEmbeddedDestinationSettings'] = Stubs::Scte20PlusEmbeddedDestinationSettings.stub(stub[:scte20_plus_embedded_destination_settings]) unless stub[:scte20_plus_embedded_destination_settings].nil?
        data['scte27DestinationSettings'] = Stubs::Scte27DestinationSettings.stub(stub[:scte27_destination_settings]) unless stub[:scte27_destination_settings].nil?
        data['smpteTtDestinationSettings'] = Stubs::SmpteTtDestinationSettings.stub(stub[:smpte_tt_destination_settings]) unless stub[:smpte_tt_destination_settings].nil?
        data['teletextDestinationSettings'] = Stubs::TeletextDestinationSettings.stub(stub[:teletext_destination_settings]) unless stub[:teletext_destination_settings].nil?
        data['ttmlDestinationSettings'] = Stubs::TtmlDestinationSettings.stub(stub[:ttml_destination_settings]) unless stub[:ttml_destination_settings].nil?
        data['webvttDestinationSettings'] = Stubs::WebvttDestinationSettings.stub(stub[:webvtt_destination_settings]) unless stub[:webvtt_destination_settings].nil?
        data
      end
    end

    # Structure Stubber for WebvttDestinationSettings
    class WebvttDestinationSettings
      def self.default(visited=[])
        return nil if visited.include?('WebvttDestinationSettings')
        visited = visited + ['WebvttDestinationSettings']
        {
          style_control: 'style_control',
        }
      end

      def self.stub(stub)
        stub ||= Types::WebvttDestinationSettings.new
        data = {}
        data['styleControl'] = stub[:style_control] unless stub[:style_control].nil?
        data
      end
    end

    # Structure Stubber for TtmlDestinationSettings
    class TtmlDestinationSettings
      def self.default(visited=[])
        return nil if visited.include?('TtmlDestinationSettings')
        visited = visited + ['TtmlDestinationSettings']
        {
          style_control: 'style_control',
        }
      end

      def self.stub(stub)
        stub ||= Types::TtmlDestinationSettings.new
        data = {}
        data['styleControl'] = stub[:style_control] unless stub[:style_control].nil?
        data
      end
    end

    # Structure Stubber for TeletextDestinationSettings
    class TeletextDestinationSettings
      def self.default(visited=[])
        return nil if visited.include?('TeletextDestinationSettings')
        visited = visited + ['TeletextDestinationSettings']
        {
        }
      end

      def self.stub(stub)
        stub ||= Types::TeletextDestinationSettings.new
        data = {}
        data
      end
    end

    # Structure Stubber for SmpteTtDestinationSettings
    class SmpteTtDestinationSettings
      def self.default(visited=[])
        return nil if visited.include?('SmpteTtDestinationSettings')
        visited = visited + ['SmpteTtDestinationSettings']
        {
        }
      end

      def self.stub(stub)
        stub ||= Types::SmpteTtDestinationSettings.new
        data = {}
        data
      end
    end

    # Structure Stubber for Scte27DestinationSettings
    class Scte27DestinationSettings
      def self.default(visited=[])
        return nil if visited.include?('Scte27DestinationSettings')
        visited = visited + ['Scte27DestinationSettings']
        {
        }
      end

      def self.stub(stub)
        stub ||= Types::Scte27DestinationSettings.new
        data = {}
        data
      end
    end

    # Structure Stubber for Scte20PlusEmbeddedDestinationSettings
    class Scte20PlusEmbeddedDestinationSettings
      def self.default(visited=[])
        return nil if visited.include?('Scte20PlusEmbeddedDestinationSettings')
        visited = visited + ['Scte20PlusEmbeddedDestinationSettings']
        {
        }
      end

      def self.stub(stub)
        stub ||= Types::Scte20PlusEmbeddedDestinationSettings.new
        data = {}
        data
      end
    end

    # Structure Stubber for RtmpCaptionInfoDestinationSettings
    class RtmpCaptionInfoDestinationSettings
      def self.default(visited=[])
        return nil if visited.include?('RtmpCaptionInfoDestinationSettings')
        visited = visited + ['RtmpCaptionInfoDestinationSettings']
        {
        }
      end

      def self.stub(stub)
        stub ||= Types::RtmpCaptionInfoDestinationSettings.new
        data = {}
        data
      end
    end

    # Structure Stubber for EmbeddedPlusScte20DestinationSettings
    class EmbeddedPlusScte20DestinationSettings
      def self.default(visited=[])
        return nil if visited.include?('EmbeddedPlusScte20DestinationSettings')
        visited = visited + ['EmbeddedPlusScte20DestinationSettings']
        {
        }
      end

      def self.stub(stub)
        stub ||= Types::EmbeddedPlusScte20DestinationSettings.new
        data = {}
        data
      end
    end

    # Structure Stubber for EmbeddedDestinationSettings
    class EmbeddedDestinationSettings
      def self.default(visited=[])
        return nil if visited.include?('EmbeddedDestinationSettings')
        visited = visited + ['EmbeddedDestinationSettings']
        {
        }
      end

      def self.stub(stub)
        stub ||= Types::EmbeddedDestinationSettings.new
        data = {}
        data
      end
    end

    # Structure Stubber for EbuTtDDestinationSettings
    class EbuTtDDestinationSettings
      def self.default(visited=[])
        return nil if visited.include?('EbuTtDDestinationSettings')
        visited = visited + ['EbuTtDDestinationSettings']
        {
          copyright_holder: 'copyright_holder',
          fill_line_gap: 'fill_line_gap',
          font_family: 'font_family',
          style_control: 'style_control',
        }
      end

      def self.stub(stub)
        stub ||= Types::EbuTtDDestinationSettings.new
        data = {}
        data['copyrightHolder'] = stub[:copyright_holder] unless stub[:copyright_holder].nil?
        data['fillLineGap'] = stub[:fill_line_gap] unless stub[:fill_line_gap].nil?
        data['fontFamily'] = stub[:font_family] unless stub[:font_family].nil?
        data['styleControl'] = stub[:style_control] unless stub[:style_control].nil?
        data
      end
    end

    # Structure Stubber for DvbSubDestinationSettings
    class DvbSubDestinationSettings
      def self.default(visited=[])
        return nil if visited.include?('DvbSubDestinationSettings')
        visited = visited + ['DvbSubDestinationSettings']
        {
          alignment: 'alignment',
          background_color: 'background_color',
          background_opacity: 1,
          font: Stubs::InputLocation.default(visited),
          font_color: 'font_color',
          font_opacity: 1,
          font_resolution: 1,
          font_size: 'font_size',
          outline_color: 'outline_color',
          outline_size: 1,
          shadow_color: 'shadow_color',
          shadow_opacity: 1,
          shadow_x_offset: 1,
          shadow_y_offset: 1,
          teletext_grid_control: 'teletext_grid_control',
          x_position: 1,
          y_position: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::DvbSubDestinationSettings.new
        data = {}
        data['alignment'] = stub[:alignment] unless stub[:alignment].nil?
        data['backgroundColor'] = stub[:background_color] unless stub[:background_color].nil?
        data['backgroundOpacity'] = stub[:background_opacity] unless stub[:background_opacity].nil?
        data['font'] = Stubs::InputLocation.stub(stub[:font]) unless stub[:font].nil?
        data['fontColor'] = stub[:font_color] unless stub[:font_color].nil?
        data['fontOpacity'] = stub[:font_opacity] unless stub[:font_opacity].nil?
        data['fontResolution'] = stub[:font_resolution] unless stub[:font_resolution].nil?
        data['fontSize'] = stub[:font_size] unless stub[:font_size].nil?
        data['outlineColor'] = stub[:outline_color] unless stub[:outline_color].nil?
        data['outlineSize'] = stub[:outline_size] unless stub[:outline_size].nil?
        data['shadowColor'] = stub[:shadow_color] unless stub[:shadow_color].nil?
        data['shadowOpacity'] = stub[:shadow_opacity] unless stub[:shadow_opacity].nil?
        data['shadowXOffset'] = stub[:shadow_x_offset] unless stub[:shadow_x_offset].nil?
        data['shadowYOffset'] = stub[:shadow_y_offset] unless stub[:shadow_y_offset].nil?
        data['teletextGridControl'] = stub[:teletext_grid_control] unless stub[:teletext_grid_control].nil?
        data['xPosition'] = stub[:x_position] unless stub[:x_position].nil?
        data['yPosition'] = stub[:y_position] unless stub[:y_position].nil?
        data
      end
    end

    # Structure Stubber for BurnInDestinationSettings
    class BurnInDestinationSettings
      def self.default(visited=[])
        return nil if visited.include?('BurnInDestinationSettings')
        visited = visited + ['BurnInDestinationSettings']
        {
          alignment: 'alignment',
          background_color: 'background_color',
          background_opacity: 1,
          font: Stubs::InputLocation.default(visited),
          font_color: 'font_color',
          font_opacity: 1,
          font_resolution: 1,
          font_size: 'font_size',
          outline_color: 'outline_color',
          outline_size: 1,
          shadow_color: 'shadow_color',
          shadow_opacity: 1,
          shadow_x_offset: 1,
          shadow_y_offset: 1,
          teletext_grid_control: 'teletext_grid_control',
          x_position: 1,
          y_position: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::BurnInDestinationSettings.new
        data = {}
        data['alignment'] = stub[:alignment] unless stub[:alignment].nil?
        data['backgroundColor'] = stub[:background_color] unless stub[:background_color].nil?
        data['backgroundOpacity'] = stub[:background_opacity] unless stub[:background_opacity].nil?
        data['font'] = Stubs::InputLocation.stub(stub[:font]) unless stub[:font].nil?
        data['fontColor'] = stub[:font_color] unless stub[:font_color].nil?
        data['fontOpacity'] = stub[:font_opacity] unless stub[:font_opacity].nil?
        data['fontResolution'] = stub[:font_resolution] unless stub[:font_resolution].nil?
        data['fontSize'] = stub[:font_size] unless stub[:font_size].nil?
        data['outlineColor'] = stub[:outline_color] unless stub[:outline_color].nil?
        data['outlineSize'] = stub[:outline_size] unless stub[:outline_size].nil?
        data['shadowColor'] = stub[:shadow_color] unless stub[:shadow_color].nil?
        data['shadowOpacity'] = stub[:shadow_opacity] unless stub[:shadow_opacity].nil?
        data['shadowXOffset'] = stub[:shadow_x_offset] unless stub[:shadow_x_offset].nil?
        data['shadowYOffset'] = stub[:shadow_y_offset] unless stub[:shadow_y_offset].nil?
        data['teletextGridControl'] = stub[:teletext_grid_control] unless stub[:teletext_grid_control].nil?
        data['xPosition'] = stub[:x_position] unless stub[:x_position].nil?
        data['yPosition'] = stub[:y_position] unless stub[:y_position].nil?
        data
      end
    end

    # Structure Stubber for AribDestinationSettings
    class AribDestinationSettings
      def self.default(visited=[])
        return nil if visited.include?('AribDestinationSettings')
        visited = visited + ['AribDestinationSettings']
        {
        }
      end

      def self.stub(stub)
        stub ||= Types::AribDestinationSettings.new
        data = {}
        data
      end
    end

    # Structure Stubber for BlackoutSlate
    class BlackoutSlate
      def self.default(visited=[])
        return nil if visited.include?('BlackoutSlate')
        visited = visited + ['BlackoutSlate']
        {
          blackout_slate_image: Stubs::InputLocation.default(visited),
          network_end_blackout: 'network_end_blackout',
          network_end_blackout_image: Stubs::InputLocation.default(visited),
          network_id: 'network_id',
          state: 'state',
        }
      end

      def self.stub(stub)
        stub ||= Types::BlackoutSlate.new
        data = {}
        data['blackoutSlateImage'] = Stubs::InputLocation.stub(stub[:blackout_slate_image]) unless stub[:blackout_slate_image].nil?
        data['networkEndBlackout'] = stub[:network_end_blackout] unless stub[:network_end_blackout].nil?
        data['networkEndBlackoutImage'] = Stubs::InputLocation.stub(stub[:network_end_blackout_image]) unless stub[:network_end_blackout_image].nil?
        data['networkId'] = stub[:network_id] unless stub[:network_id].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data
      end
    end

    # Structure Stubber for AvailConfiguration
    class AvailConfiguration
      def self.default(visited=[])
        return nil if visited.include?('AvailConfiguration')
        visited = visited + ['AvailConfiguration']
        {
          avail_settings: Stubs::AvailSettings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AvailConfiguration.new
        data = {}
        data['availSettings'] = Stubs::AvailSettings.stub(stub[:avail_settings]) unless stub[:avail_settings].nil?
        data
      end
    end

    # Structure Stubber for AvailSettings
    class AvailSettings
      def self.default(visited=[])
        return nil if visited.include?('AvailSettings')
        visited = visited + ['AvailSettings']
        {
          scte35_splice_insert: Stubs::Scte35SpliceInsert.default(visited),
          scte35_time_signal_apos: Stubs::Scte35TimeSignalApos.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AvailSettings.new
        data = {}
        data['scte35SpliceInsert'] = Stubs::Scte35SpliceInsert.stub(stub[:scte35_splice_insert]) unless stub[:scte35_splice_insert].nil?
        data['scte35TimeSignalApos'] = Stubs::Scte35TimeSignalApos.stub(stub[:scte35_time_signal_apos]) unless stub[:scte35_time_signal_apos].nil?
        data
      end
    end

    # Structure Stubber for Scte35TimeSignalApos
    class Scte35TimeSignalApos
      def self.default(visited=[])
        return nil if visited.include?('Scte35TimeSignalApos')
        visited = visited + ['Scte35TimeSignalApos']
        {
          ad_avail_offset: 1,
          no_regional_blackout_flag: 'no_regional_blackout_flag',
          web_delivery_allowed_flag: 'web_delivery_allowed_flag',
        }
      end

      def self.stub(stub)
        stub ||= Types::Scte35TimeSignalApos.new
        data = {}
        data['adAvailOffset'] = stub[:ad_avail_offset] unless stub[:ad_avail_offset].nil?
        data['noRegionalBlackoutFlag'] = stub[:no_regional_blackout_flag] unless stub[:no_regional_blackout_flag].nil?
        data['webDeliveryAllowedFlag'] = stub[:web_delivery_allowed_flag] unless stub[:web_delivery_allowed_flag].nil?
        data
      end
    end

    # Structure Stubber for Scte35SpliceInsert
    class Scte35SpliceInsert
      def self.default(visited=[])
        return nil if visited.include?('Scte35SpliceInsert')
        visited = visited + ['Scte35SpliceInsert']
        {
          ad_avail_offset: 1,
          no_regional_blackout_flag: 'no_regional_blackout_flag',
          web_delivery_allowed_flag: 'web_delivery_allowed_flag',
        }
      end

      def self.stub(stub)
        stub ||= Types::Scte35SpliceInsert.new
        data = {}
        data['adAvailOffset'] = stub[:ad_avail_offset] unless stub[:ad_avail_offset].nil?
        data['noRegionalBlackoutFlag'] = stub[:no_regional_blackout_flag] unless stub[:no_regional_blackout_flag].nil?
        data['webDeliveryAllowedFlag'] = stub[:web_delivery_allowed_flag] unless stub[:web_delivery_allowed_flag].nil?
        data
      end
    end

    # Structure Stubber for AvailBlanking
    class AvailBlanking
      def self.default(visited=[])
        return nil if visited.include?('AvailBlanking')
        visited = visited + ['AvailBlanking']
        {
          avail_blanking_image: Stubs::InputLocation.default(visited),
          state: 'state',
        }
      end

      def self.stub(stub)
        stub ||= Types::AvailBlanking.new
        data = {}
        data['availBlankingImage'] = Stubs::InputLocation.stub(stub[:avail_blanking_image]) unless stub[:avail_blanking_image].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data
      end
    end

    # List Stubber for __listOfAudioDescription
    class List____listOfAudioDescription
      def self.default(visited=[])
        return nil if visited.include?('List____listOfAudioDescription')
        visited = visited + ['List____listOfAudioDescription']
        [
          Stubs::AudioDescription.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AudioDescription.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AudioDescription
    class AudioDescription
      def self.default(visited=[])
        return nil if visited.include?('AudioDescription')
        visited = visited + ['AudioDescription']
        {
          audio_normalization_settings: Stubs::AudioNormalizationSettings.default(visited),
          audio_selector_name: 'audio_selector_name',
          audio_type: 'audio_type',
          audio_type_control: 'audio_type_control',
          audio_watermarking_settings: Stubs::AudioWatermarkSettings.default(visited),
          codec_settings: Stubs::AudioCodecSettings.default(visited),
          language_code: 'language_code',
          language_code_control: 'language_code_control',
          name: 'name',
          remix_settings: Stubs::RemixSettings.default(visited),
          stream_name: 'stream_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::AudioDescription.new
        data = {}
        data['audioNormalizationSettings'] = Stubs::AudioNormalizationSettings.stub(stub[:audio_normalization_settings]) unless stub[:audio_normalization_settings].nil?
        data['audioSelectorName'] = stub[:audio_selector_name] unless stub[:audio_selector_name].nil?
        data['audioType'] = stub[:audio_type] unless stub[:audio_type].nil?
        data['audioTypeControl'] = stub[:audio_type_control] unless stub[:audio_type_control].nil?
        data['audioWatermarkingSettings'] = Stubs::AudioWatermarkSettings.stub(stub[:audio_watermarking_settings]) unless stub[:audio_watermarking_settings].nil?
        data['codecSettings'] = Stubs::AudioCodecSettings.stub(stub[:codec_settings]) unless stub[:codec_settings].nil?
        data['languageCode'] = stub[:language_code] unless stub[:language_code].nil?
        data['languageCodeControl'] = stub[:language_code_control] unless stub[:language_code_control].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['remixSettings'] = Stubs::RemixSettings.stub(stub[:remix_settings]) unless stub[:remix_settings].nil?
        data['streamName'] = stub[:stream_name] unless stub[:stream_name].nil?
        data
      end
    end

    # Structure Stubber for RemixSettings
    class RemixSettings
      def self.default(visited=[])
        return nil if visited.include?('RemixSettings')
        visited = visited + ['RemixSettings']
        {
          channel_mappings: Stubs::List____listOfAudioChannelMapping.default(visited),
          channels_in: 1,
          channels_out: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::RemixSettings.new
        data = {}
        data['channelMappings'] = Stubs::List____listOfAudioChannelMapping.stub(stub[:channel_mappings]) unless stub[:channel_mappings].nil?
        data['channelsIn'] = stub[:channels_in] unless stub[:channels_in].nil?
        data['channelsOut'] = stub[:channels_out] unless stub[:channels_out].nil?
        data
      end
    end

    # List Stubber for __listOfAudioChannelMapping
    class List____listOfAudioChannelMapping
      def self.default(visited=[])
        return nil if visited.include?('List____listOfAudioChannelMapping')
        visited = visited + ['List____listOfAudioChannelMapping']
        [
          Stubs::AudioChannelMapping.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AudioChannelMapping.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AudioChannelMapping
    class AudioChannelMapping
      def self.default(visited=[])
        return nil if visited.include?('AudioChannelMapping')
        visited = visited + ['AudioChannelMapping']
        {
          input_channel_levels: Stubs::List____listOfInputChannelLevel.default(visited),
          output_channel: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::AudioChannelMapping.new
        data = {}
        data['inputChannelLevels'] = Stubs::List____listOfInputChannelLevel.stub(stub[:input_channel_levels]) unless stub[:input_channel_levels].nil?
        data['outputChannel'] = stub[:output_channel] unless stub[:output_channel].nil?
        data
      end
    end

    # List Stubber for __listOfInputChannelLevel
    class List____listOfInputChannelLevel
      def self.default(visited=[])
        return nil if visited.include?('List____listOfInputChannelLevel')
        visited = visited + ['List____listOfInputChannelLevel']
        [
          Stubs::InputChannelLevel.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::InputChannelLevel.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for InputChannelLevel
    class InputChannelLevel
      def self.default(visited=[])
        return nil if visited.include?('InputChannelLevel')
        visited = visited + ['InputChannelLevel']
        {
          gain: 1,
          input_channel: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::InputChannelLevel.new
        data = {}
        data['gain'] = stub[:gain] unless stub[:gain].nil?
        data['inputChannel'] = stub[:input_channel] unless stub[:input_channel].nil?
        data
      end
    end

    # Structure Stubber for AudioCodecSettings
    class AudioCodecSettings
      def self.default(visited=[])
        return nil if visited.include?('AudioCodecSettings')
        visited = visited + ['AudioCodecSettings']
        {
          aac_settings: Stubs::AacSettings.default(visited),
          ac3_settings: Stubs::Ac3Settings.default(visited),
          eac3_settings: Stubs::Eac3Settings.default(visited),
          mp2_settings: Stubs::Mp2Settings.default(visited),
          pass_through_settings: Stubs::PassThroughSettings.default(visited),
          wav_settings: Stubs::WavSettings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AudioCodecSettings.new
        data = {}
        data['aacSettings'] = Stubs::AacSettings.stub(stub[:aac_settings]) unless stub[:aac_settings].nil?
        data['ac3Settings'] = Stubs::Ac3Settings.stub(stub[:ac3_settings]) unless stub[:ac3_settings].nil?
        data['eac3Settings'] = Stubs::Eac3Settings.stub(stub[:eac3_settings]) unless stub[:eac3_settings].nil?
        data['mp2Settings'] = Stubs::Mp2Settings.stub(stub[:mp2_settings]) unless stub[:mp2_settings].nil?
        data['passThroughSettings'] = Stubs::PassThroughSettings.stub(stub[:pass_through_settings]) unless stub[:pass_through_settings].nil?
        data['wavSettings'] = Stubs::WavSettings.stub(stub[:wav_settings]) unless stub[:wav_settings].nil?
        data
      end
    end

    # Structure Stubber for WavSettings
    class WavSettings
      def self.default(visited=[])
        return nil if visited.include?('WavSettings')
        visited = visited + ['WavSettings']
        {
          bit_depth: 1.0,
          coding_mode: 'coding_mode',
          sample_rate: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::WavSettings.new
        data = {}
        data['bitDepth'] = Hearth::NumberHelper.serialize(stub[:bit_depth])
        data['codingMode'] = stub[:coding_mode] unless stub[:coding_mode].nil?
        data['sampleRate'] = Hearth::NumberHelper.serialize(stub[:sample_rate])
        data
      end
    end

    # Structure Stubber for PassThroughSettings
    class PassThroughSettings
      def self.default(visited=[])
        return nil if visited.include?('PassThroughSettings')
        visited = visited + ['PassThroughSettings']
        {
        }
      end

      def self.stub(stub)
        stub ||= Types::PassThroughSettings.new
        data = {}
        data
      end
    end

    # Structure Stubber for Mp2Settings
    class Mp2Settings
      def self.default(visited=[])
        return nil if visited.include?('Mp2Settings')
        visited = visited + ['Mp2Settings']
        {
          bitrate: 1.0,
          coding_mode: 'coding_mode',
          sample_rate: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::Mp2Settings.new
        data = {}
        data['bitrate'] = Hearth::NumberHelper.serialize(stub[:bitrate])
        data['codingMode'] = stub[:coding_mode] unless stub[:coding_mode].nil?
        data['sampleRate'] = Hearth::NumberHelper.serialize(stub[:sample_rate])
        data
      end
    end

    # Structure Stubber for Eac3Settings
    class Eac3Settings
      def self.default(visited=[])
        return nil if visited.include?('Eac3Settings')
        visited = visited + ['Eac3Settings']
        {
          attenuation_control: 'attenuation_control',
          bitrate: 1.0,
          bitstream_mode: 'bitstream_mode',
          coding_mode: 'coding_mode',
          dc_filter: 'dc_filter',
          dialnorm: 1,
          drc_line: 'drc_line',
          drc_rf: 'drc_rf',
          lfe_control: 'lfe_control',
          lfe_filter: 'lfe_filter',
          lo_ro_center_mix_level: 1.0,
          lo_ro_surround_mix_level: 1.0,
          lt_rt_center_mix_level: 1.0,
          lt_rt_surround_mix_level: 1.0,
          metadata_control: 'metadata_control',
          passthrough_control: 'passthrough_control',
          phase_control: 'phase_control',
          stereo_downmix: 'stereo_downmix',
          surround_ex_mode: 'surround_ex_mode',
          surround_mode: 'surround_mode',
        }
      end

      def self.stub(stub)
        stub ||= Types::Eac3Settings.new
        data = {}
        data['attenuationControl'] = stub[:attenuation_control] unless stub[:attenuation_control].nil?
        data['bitrate'] = Hearth::NumberHelper.serialize(stub[:bitrate])
        data['bitstreamMode'] = stub[:bitstream_mode] unless stub[:bitstream_mode].nil?
        data['codingMode'] = stub[:coding_mode] unless stub[:coding_mode].nil?
        data['dcFilter'] = stub[:dc_filter] unless stub[:dc_filter].nil?
        data['dialnorm'] = stub[:dialnorm] unless stub[:dialnorm].nil?
        data['drcLine'] = stub[:drc_line] unless stub[:drc_line].nil?
        data['drcRf'] = stub[:drc_rf] unless stub[:drc_rf].nil?
        data['lfeControl'] = stub[:lfe_control] unless stub[:lfe_control].nil?
        data['lfeFilter'] = stub[:lfe_filter] unless stub[:lfe_filter].nil?
        data['loRoCenterMixLevel'] = Hearth::NumberHelper.serialize(stub[:lo_ro_center_mix_level])
        data['loRoSurroundMixLevel'] = Hearth::NumberHelper.serialize(stub[:lo_ro_surround_mix_level])
        data['ltRtCenterMixLevel'] = Hearth::NumberHelper.serialize(stub[:lt_rt_center_mix_level])
        data['ltRtSurroundMixLevel'] = Hearth::NumberHelper.serialize(stub[:lt_rt_surround_mix_level])
        data['metadataControl'] = stub[:metadata_control] unless stub[:metadata_control].nil?
        data['passthroughControl'] = stub[:passthrough_control] unless stub[:passthrough_control].nil?
        data['phaseControl'] = stub[:phase_control] unless stub[:phase_control].nil?
        data['stereoDownmix'] = stub[:stereo_downmix] unless stub[:stereo_downmix].nil?
        data['surroundExMode'] = stub[:surround_ex_mode] unless stub[:surround_ex_mode].nil?
        data['surroundMode'] = stub[:surround_mode] unless stub[:surround_mode].nil?
        data
      end
    end

    # Structure Stubber for Ac3Settings
    class Ac3Settings
      def self.default(visited=[])
        return nil if visited.include?('Ac3Settings')
        visited = visited + ['Ac3Settings']
        {
          bitrate: 1.0,
          bitstream_mode: 'bitstream_mode',
          coding_mode: 'coding_mode',
          dialnorm: 1,
          drc_profile: 'drc_profile',
          lfe_filter: 'lfe_filter',
          metadata_control: 'metadata_control',
        }
      end

      def self.stub(stub)
        stub ||= Types::Ac3Settings.new
        data = {}
        data['bitrate'] = Hearth::NumberHelper.serialize(stub[:bitrate])
        data['bitstreamMode'] = stub[:bitstream_mode] unless stub[:bitstream_mode].nil?
        data['codingMode'] = stub[:coding_mode] unless stub[:coding_mode].nil?
        data['dialnorm'] = stub[:dialnorm] unless stub[:dialnorm].nil?
        data['drcProfile'] = stub[:drc_profile] unless stub[:drc_profile].nil?
        data['lfeFilter'] = stub[:lfe_filter] unless stub[:lfe_filter].nil?
        data['metadataControl'] = stub[:metadata_control] unless stub[:metadata_control].nil?
        data
      end
    end

    # Structure Stubber for AacSettings
    class AacSettings
      def self.default(visited=[])
        return nil if visited.include?('AacSettings')
        visited = visited + ['AacSettings']
        {
          bitrate: 1.0,
          coding_mode: 'coding_mode',
          input_type: 'input_type',
          profile: 'profile',
          rate_control_mode: 'rate_control_mode',
          raw_format: 'raw_format',
          sample_rate: 1.0,
          spec: 'spec',
          vbr_quality: 'vbr_quality',
        }
      end

      def self.stub(stub)
        stub ||= Types::AacSettings.new
        data = {}
        data['bitrate'] = Hearth::NumberHelper.serialize(stub[:bitrate])
        data['codingMode'] = stub[:coding_mode] unless stub[:coding_mode].nil?
        data['inputType'] = stub[:input_type] unless stub[:input_type].nil?
        data['profile'] = stub[:profile] unless stub[:profile].nil?
        data['rateControlMode'] = stub[:rate_control_mode] unless stub[:rate_control_mode].nil?
        data['rawFormat'] = stub[:raw_format] unless stub[:raw_format].nil?
        data['sampleRate'] = Hearth::NumberHelper.serialize(stub[:sample_rate])
        data['spec'] = stub[:spec] unless stub[:spec].nil?
        data['vbrQuality'] = stub[:vbr_quality] unless stub[:vbr_quality].nil?
        data
      end
    end

    # Structure Stubber for AudioWatermarkSettings
    class AudioWatermarkSettings
      def self.default(visited=[])
        return nil if visited.include?('AudioWatermarkSettings')
        visited = visited + ['AudioWatermarkSettings']
        {
          nielsen_watermarks_settings: Stubs::NielsenWatermarksSettings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AudioWatermarkSettings.new
        data = {}
        data['nielsenWatermarksSettings'] = Stubs::NielsenWatermarksSettings.stub(stub[:nielsen_watermarks_settings]) unless stub[:nielsen_watermarks_settings].nil?
        data
      end
    end

    # Structure Stubber for NielsenWatermarksSettings
    class NielsenWatermarksSettings
      def self.default(visited=[])
        return nil if visited.include?('NielsenWatermarksSettings')
        visited = visited + ['NielsenWatermarksSettings']
        {
          nielsen_cbet_settings: Stubs::NielsenCBET.default(visited),
          nielsen_distribution_type: 'nielsen_distribution_type',
          nielsen_naes_ii_nw_settings: Stubs::NielsenNaesIiNw.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::NielsenWatermarksSettings.new
        data = {}
        data['nielsenCbetSettings'] = Stubs::NielsenCBET.stub(stub[:nielsen_cbet_settings]) unless stub[:nielsen_cbet_settings].nil?
        data['nielsenDistributionType'] = stub[:nielsen_distribution_type] unless stub[:nielsen_distribution_type].nil?
        data['nielsenNaesIiNwSettings'] = Stubs::NielsenNaesIiNw.stub(stub[:nielsen_naes_ii_nw_settings]) unless stub[:nielsen_naes_ii_nw_settings].nil?
        data
      end
    end

    # Structure Stubber for NielsenNaesIiNw
    class NielsenNaesIiNw
      def self.default(visited=[])
        return nil if visited.include?('NielsenNaesIiNw')
        visited = visited + ['NielsenNaesIiNw']
        {
          check_digit_string: 'check_digit_string',
          sid: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::NielsenNaesIiNw.new
        data = {}
        data['checkDigitString'] = stub[:check_digit_string] unless stub[:check_digit_string].nil?
        data['sid'] = Hearth::NumberHelper.serialize(stub[:sid])
        data
      end
    end

    # Structure Stubber for NielsenCBET
    class NielsenCBET
      def self.default(visited=[])
        return nil if visited.include?('NielsenCBET')
        visited = visited + ['NielsenCBET']
        {
          cbet_check_digit_string: 'cbet_check_digit_string',
          cbet_stepaside: 'cbet_stepaside',
          csid: 'csid',
        }
      end

      def self.stub(stub)
        stub ||= Types::NielsenCBET.new
        data = {}
        data['cbetCheckDigitString'] = stub[:cbet_check_digit_string] unless stub[:cbet_check_digit_string].nil?
        data['cbetStepaside'] = stub[:cbet_stepaside] unless stub[:cbet_stepaside].nil?
        data['csid'] = stub[:csid] unless stub[:csid].nil?
        data
      end
    end

    # Structure Stubber for AudioNormalizationSettings
    class AudioNormalizationSettings
      def self.default(visited=[])
        return nil if visited.include?('AudioNormalizationSettings')
        visited = visited + ['AudioNormalizationSettings']
        {
          algorithm: 'algorithm',
          algorithm_control: 'algorithm_control',
          target_lkfs: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::AudioNormalizationSettings.new
        data = {}
        data['algorithm'] = stub[:algorithm] unless stub[:algorithm].nil?
        data['algorithmControl'] = stub[:algorithm_control] unless stub[:algorithm_control].nil?
        data['targetLkfs'] = Hearth::NumberHelper.serialize(stub[:target_lkfs])
        data
      end
    end

    # List Stubber for __listOfChannelEgressEndpoint
    class List____listOfChannelEgressEndpoint
      def self.default(visited=[])
        return nil if visited.include?('List____listOfChannelEgressEndpoint')
        visited = visited + ['List____listOfChannelEgressEndpoint']
        [
          Stubs::ChannelEgressEndpoint.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ChannelEgressEndpoint.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ChannelEgressEndpoint
    class ChannelEgressEndpoint
      def self.default(visited=[])
        return nil if visited.include?('ChannelEgressEndpoint')
        visited = visited + ['ChannelEgressEndpoint']
        {
          source_ip: 'source_ip',
        }
      end

      def self.stub(stub)
        stub ||= Types::ChannelEgressEndpoint.new
        data = {}
        data['sourceIp'] = stub[:source_ip] unless stub[:source_ip].nil?
        data
      end
    end

    # List Stubber for __listOfOutputDestination
    class List____listOfOutputDestination
      def self.default(visited=[])
        return nil if visited.include?('List____listOfOutputDestination')
        visited = visited + ['List____listOfOutputDestination']
        [
          Stubs::OutputDestination.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::OutputDestination.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for OutputDestination
    class OutputDestination
      def self.default(visited=[])
        return nil if visited.include?('OutputDestination')
        visited = visited + ['OutputDestination']
        {
          id: 'id',
          media_package_settings: Stubs::List____listOfMediaPackageOutputDestinationSettings.default(visited),
          multiplex_settings: Stubs::MultiplexProgramChannelDestinationSettings.default(visited),
          settings: Stubs::List____listOfOutputDestinationSettings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::OutputDestination.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['mediaPackageSettings'] = Stubs::List____listOfMediaPackageOutputDestinationSettings.stub(stub[:media_package_settings]) unless stub[:media_package_settings].nil?
        data['multiplexSettings'] = Stubs::MultiplexProgramChannelDestinationSettings.stub(stub[:multiplex_settings]) unless stub[:multiplex_settings].nil?
        data['settings'] = Stubs::List____listOfOutputDestinationSettings.stub(stub[:settings]) unless stub[:settings].nil?
        data
      end
    end

    # List Stubber for __listOfOutputDestinationSettings
    class List____listOfOutputDestinationSettings
      def self.default(visited=[])
        return nil if visited.include?('List____listOfOutputDestinationSettings')
        visited = visited + ['List____listOfOutputDestinationSettings']
        [
          Stubs::OutputDestinationSettings.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::OutputDestinationSettings.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for OutputDestinationSettings
    class OutputDestinationSettings
      def self.default(visited=[])
        return nil if visited.include?('OutputDestinationSettings')
        visited = visited + ['OutputDestinationSettings']
        {
          password_param: 'password_param',
          stream_name: 'stream_name',
          url: 'url',
          username: 'username',
        }
      end

      def self.stub(stub)
        stub ||= Types::OutputDestinationSettings.new
        data = {}
        data['passwordParam'] = stub[:password_param] unless stub[:password_param].nil?
        data['streamName'] = stub[:stream_name] unless stub[:stream_name].nil?
        data['url'] = stub[:url] unless stub[:url].nil?
        data['username'] = stub[:username] unless stub[:username].nil?
        data
      end
    end

    # Structure Stubber for MultiplexProgramChannelDestinationSettings
    class MultiplexProgramChannelDestinationSettings
      def self.default(visited=[])
        return nil if visited.include?('MultiplexProgramChannelDestinationSettings')
        visited = visited + ['MultiplexProgramChannelDestinationSettings']
        {
          multiplex_id: 'multiplex_id',
          program_name: 'program_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::MultiplexProgramChannelDestinationSettings.new
        data = {}
        data['multiplexId'] = stub[:multiplex_id] unless stub[:multiplex_id].nil?
        data['programName'] = stub[:program_name] unless stub[:program_name].nil?
        data
      end
    end

    # List Stubber for __listOfMediaPackageOutputDestinationSettings
    class List____listOfMediaPackageOutputDestinationSettings
      def self.default(visited=[])
        return nil if visited.include?('List____listOfMediaPackageOutputDestinationSettings')
        visited = visited + ['List____listOfMediaPackageOutputDestinationSettings']
        [
          Stubs::MediaPackageOutputDestinationSettings.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::MediaPackageOutputDestinationSettings.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MediaPackageOutputDestinationSettings
    class MediaPackageOutputDestinationSettings
      def self.default(visited=[])
        return nil if visited.include?('MediaPackageOutputDestinationSettings')
        visited = visited + ['MediaPackageOutputDestinationSettings']
        {
          channel_id: 'channel_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::MediaPackageOutputDestinationSettings.new
        data = {}
        data['channelId'] = stub[:channel_id] unless stub[:channel_id].nil?
        data
      end
    end

    # Structure Stubber for CdiInputSpecification
    class CdiInputSpecification
      def self.default(visited=[])
        return nil if visited.include?('CdiInputSpecification')
        visited = visited + ['CdiInputSpecification']
        {
          resolution: 'resolution',
        }
      end

      def self.stub(stub)
        stub ||= Types::CdiInputSpecification.new
        data = {}
        data['resolution'] = stub[:resolution] unless stub[:resolution].nil?
        data
      end
    end

    # Operation Stubber for CreateInput
    class CreateInput
      def self.default(visited=[])
        {
          input: Stubs::Input.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['input'] = Stubs::Input.stub(stub[:input]) unless stub[:input].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Input
    class Input
      def self.default(visited=[])
        return nil if visited.include?('Input')
        visited = visited + ['Input']
        {
          arn: 'arn',
          attached_channels: Stubs::List____listOf__string.default(visited),
          destinations: Stubs::List____listOfInputDestination.default(visited),
          id: 'id',
          input_class: 'input_class',
          input_devices: Stubs::List____listOfInputDeviceSettings.default(visited),
          input_partner_ids: Stubs::List____listOf__string.default(visited),
          input_source_type: 'input_source_type',
          media_connect_flows: Stubs::List____listOfMediaConnectFlow.default(visited),
          name: 'name',
          role_arn: 'role_arn',
          security_groups: Stubs::List____listOf__string.default(visited),
          sources: Stubs::List____listOfInputSource.default(visited),
          state: 'state',
          tags: Stubs::Tags.default(visited),
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::Input.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['attachedChannels'] = Stubs::List____listOf__string.stub(stub[:attached_channels]) unless stub[:attached_channels].nil?
        data['destinations'] = Stubs::List____listOfInputDestination.stub(stub[:destinations]) unless stub[:destinations].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['inputClass'] = stub[:input_class] unless stub[:input_class].nil?
        data['inputDevices'] = Stubs::List____listOfInputDeviceSettings.stub(stub[:input_devices]) unless stub[:input_devices].nil?
        data['inputPartnerIds'] = Stubs::List____listOf__string.stub(stub[:input_partner_ids]) unless stub[:input_partner_ids].nil?
        data['inputSourceType'] = stub[:input_source_type] unless stub[:input_source_type].nil?
        data['mediaConnectFlows'] = Stubs::List____listOfMediaConnectFlow.stub(stub[:media_connect_flows]) unless stub[:media_connect_flows].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['securityGroups'] = Stubs::List____listOf__string.stub(stub[:security_groups]) unless stub[:security_groups].nil?
        data['sources'] = Stubs::List____listOfInputSource.stub(stub[:sources]) unless stub[:sources].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # List Stubber for __listOfInputSource
    class List____listOfInputSource
      def self.default(visited=[])
        return nil if visited.include?('List____listOfInputSource')
        visited = visited + ['List____listOfInputSource']
        [
          Stubs::InputSource.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::InputSource.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for InputSource
    class InputSource
      def self.default(visited=[])
        return nil if visited.include?('InputSource')
        visited = visited + ['InputSource']
        {
          password_param: 'password_param',
          url: 'url',
          username: 'username',
        }
      end

      def self.stub(stub)
        stub ||= Types::InputSource.new
        data = {}
        data['passwordParam'] = stub[:password_param] unless stub[:password_param].nil?
        data['url'] = stub[:url] unless stub[:url].nil?
        data['username'] = stub[:username] unless stub[:username].nil?
        data
      end
    end

    # List Stubber for __listOfMediaConnectFlow
    class List____listOfMediaConnectFlow
      def self.default(visited=[])
        return nil if visited.include?('List____listOfMediaConnectFlow')
        visited = visited + ['List____listOfMediaConnectFlow']
        [
          Stubs::MediaConnectFlow.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::MediaConnectFlow.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MediaConnectFlow
    class MediaConnectFlow
      def self.default(visited=[])
        return nil if visited.include?('MediaConnectFlow')
        visited = visited + ['MediaConnectFlow']
        {
          flow_arn: 'flow_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::MediaConnectFlow.new
        data = {}
        data['flowArn'] = stub[:flow_arn] unless stub[:flow_arn].nil?
        data
      end
    end

    # List Stubber for __listOfInputDeviceSettings
    class List____listOfInputDeviceSettings
      def self.default(visited=[])
        return nil if visited.include?('List____listOfInputDeviceSettings')
        visited = visited + ['List____listOfInputDeviceSettings']
        [
          Stubs::InputDeviceSettings.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::InputDeviceSettings.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for InputDeviceSettings
    class InputDeviceSettings
      def self.default(visited=[])
        return nil if visited.include?('InputDeviceSettings')
        visited = visited + ['InputDeviceSettings']
        {
          id: 'id',
        }
      end

      def self.stub(stub)
        stub ||= Types::InputDeviceSettings.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data
      end
    end

    # List Stubber for __listOfInputDestination
    class List____listOfInputDestination
      def self.default(visited=[])
        return nil if visited.include?('List____listOfInputDestination')
        visited = visited + ['List____listOfInputDestination']
        [
          Stubs::InputDestination.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::InputDestination.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for InputDestination
    class InputDestination
      def self.default(visited=[])
        return nil if visited.include?('InputDestination')
        visited = visited + ['InputDestination']
        {
          ip: 'ip',
          port: 'port',
          url: 'url',
          vpc: Stubs::InputDestinationVpc.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::InputDestination.new
        data = {}
        data['ip'] = stub[:ip] unless stub[:ip].nil?
        data['port'] = stub[:port] unless stub[:port].nil?
        data['url'] = stub[:url] unless stub[:url].nil?
        data['vpc'] = Stubs::InputDestinationVpc.stub(stub[:vpc]) unless stub[:vpc].nil?
        data
      end
    end

    # Structure Stubber for InputDestinationVpc
    class InputDestinationVpc
      def self.default(visited=[])
        return nil if visited.include?('InputDestinationVpc')
        visited = visited + ['InputDestinationVpc']
        {
          availability_zone: 'availability_zone',
          network_interface_id: 'network_interface_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::InputDestinationVpc.new
        data = {}
        data['availabilityZone'] = stub[:availability_zone] unless stub[:availability_zone].nil?
        data['networkInterfaceId'] = stub[:network_interface_id] unless stub[:network_interface_id].nil?
        data
      end
    end

    # Operation Stubber for CreateInputSecurityGroup
    class CreateInputSecurityGroup
      def self.default(visited=[])
        {
          security_group: Stubs::InputSecurityGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['securityGroup'] = Stubs::InputSecurityGroup.stub(stub[:security_group]) unless stub[:security_group].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for InputSecurityGroup
    class InputSecurityGroup
      def self.default(visited=[])
        return nil if visited.include?('InputSecurityGroup')
        visited = visited + ['InputSecurityGroup']
        {
          arn: 'arn',
          id: 'id',
          inputs: Stubs::List____listOf__string.default(visited),
          state: 'state',
          tags: Stubs::Tags.default(visited),
          whitelist_rules: Stubs::List____listOfInputWhitelistRule.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::InputSecurityGroup.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['inputs'] = Stubs::List____listOf__string.stub(stub[:inputs]) unless stub[:inputs].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['whitelistRules'] = Stubs::List____listOfInputWhitelistRule.stub(stub[:whitelist_rules]) unless stub[:whitelist_rules].nil?
        data
      end
    end

    # List Stubber for __listOfInputWhitelistRule
    class List____listOfInputWhitelistRule
      def self.default(visited=[])
        return nil if visited.include?('List____listOfInputWhitelistRule')
        visited = visited + ['List____listOfInputWhitelistRule']
        [
          Stubs::InputWhitelistRule.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::InputWhitelistRule.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for InputWhitelistRule
    class InputWhitelistRule
      def self.default(visited=[])
        return nil if visited.include?('InputWhitelistRule')
        visited = visited + ['InputWhitelistRule']
        {
          cidr: 'cidr',
        }
      end

      def self.stub(stub)
        stub ||= Types::InputWhitelistRule.new
        data = {}
        data['cidr'] = stub[:cidr] unless stub[:cidr].nil?
        data
      end
    end

    # Operation Stubber for CreateMultiplex
    class CreateMultiplex
      def self.default(visited=[])
        {
          multiplex: Stubs::Multiplex.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['multiplex'] = Stubs::Multiplex.stub(stub[:multiplex]) unless stub[:multiplex].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Multiplex
    class Multiplex
      def self.default(visited=[])
        return nil if visited.include?('Multiplex')
        visited = visited + ['Multiplex']
        {
          arn: 'arn',
          availability_zones: Stubs::List____listOf__string.default(visited),
          destinations: Stubs::List____listOfMultiplexOutputDestination.default(visited),
          id: 'id',
          multiplex_settings: Stubs::MultiplexSettings.default(visited),
          name: 'name',
          pipelines_running_count: 1,
          program_count: 1,
          state: 'state',
          tags: Stubs::Tags.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Multiplex.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['availabilityZones'] = Stubs::List____listOf__string.stub(stub[:availability_zones]) unless stub[:availability_zones].nil?
        data['destinations'] = Stubs::List____listOfMultiplexOutputDestination.stub(stub[:destinations]) unless stub[:destinations].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['multiplexSettings'] = Stubs::MultiplexSettings.stub(stub[:multiplex_settings]) unless stub[:multiplex_settings].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['pipelinesRunningCount'] = stub[:pipelines_running_count] unless stub[:pipelines_running_count].nil?
        data['programCount'] = stub[:program_count] unless stub[:program_count].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Structure Stubber for MultiplexSettings
    class MultiplexSettings
      def self.default(visited=[])
        return nil if visited.include?('MultiplexSettings')
        visited = visited + ['MultiplexSettings']
        {
          maximum_video_buffer_delay_milliseconds: 1,
          transport_stream_bitrate: 1,
          transport_stream_id: 1,
          transport_stream_reserved_bitrate: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::MultiplexSettings.new
        data = {}
        data['maximumVideoBufferDelayMilliseconds'] = stub[:maximum_video_buffer_delay_milliseconds] unless stub[:maximum_video_buffer_delay_milliseconds].nil?
        data['transportStreamBitrate'] = stub[:transport_stream_bitrate] unless stub[:transport_stream_bitrate].nil?
        data['transportStreamId'] = stub[:transport_stream_id] unless stub[:transport_stream_id].nil?
        data['transportStreamReservedBitrate'] = stub[:transport_stream_reserved_bitrate] unless stub[:transport_stream_reserved_bitrate].nil?
        data
      end
    end

    # List Stubber for __listOfMultiplexOutputDestination
    class List____listOfMultiplexOutputDestination
      def self.default(visited=[])
        return nil if visited.include?('List____listOfMultiplexOutputDestination')
        visited = visited + ['List____listOfMultiplexOutputDestination']
        [
          Stubs::MultiplexOutputDestination.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::MultiplexOutputDestination.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MultiplexOutputDestination
    class MultiplexOutputDestination
      def self.default(visited=[])
        return nil if visited.include?('MultiplexOutputDestination')
        visited = visited + ['MultiplexOutputDestination']
        {
          media_connect_settings: Stubs::MultiplexMediaConnectOutputDestinationSettings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MultiplexOutputDestination.new
        data = {}
        data['mediaConnectSettings'] = Stubs::MultiplexMediaConnectOutputDestinationSettings.stub(stub[:media_connect_settings]) unless stub[:media_connect_settings].nil?
        data
      end
    end

    # Structure Stubber for MultiplexMediaConnectOutputDestinationSettings
    class MultiplexMediaConnectOutputDestinationSettings
      def self.default(visited=[])
        return nil if visited.include?('MultiplexMediaConnectOutputDestinationSettings')
        visited = visited + ['MultiplexMediaConnectOutputDestinationSettings']
        {
          entitlement_arn: 'entitlement_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::MultiplexMediaConnectOutputDestinationSettings.new
        data = {}
        data['entitlementArn'] = stub[:entitlement_arn] unless stub[:entitlement_arn].nil?
        data
      end
    end

    # Operation Stubber for CreateMultiplexProgram
    class CreateMultiplexProgram
      def self.default(visited=[])
        {
          multiplex_program: Stubs::MultiplexProgram.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['multiplexProgram'] = Stubs::MultiplexProgram.stub(stub[:multiplex_program]) unless stub[:multiplex_program].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for MultiplexProgram
    class MultiplexProgram
      def self.default(visited=[])
        return nil if visited.include?('MultiplexProgram')
        visited = visited + ['MultiplexProgram']
        {
          channel_id: 'channel_id',
          multiplex_program_settings: Stubs::MultiplexProgramSettings.default(visited),
          packet_identifiers_map: Stubs::MultiplexProgramPacketIdentifiersMap.default(visited),
          pipeline_details: Stubs::List____listOfMultiplexProgramPipelineDetail.default(visited),
          program_name: 'program_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::MultiplexProgram.new
        data = {}
        data['channelId'] = stub[:channel_id] unless stub[:channel_id].nil?
        data['multiplexProgramSettings'] = Stubs::MultiplexProgramSettings.stub(stub[:multiplex_program_settings]) unless stub[:multiplex_program_settings].nil?
        data['packetIdentifiersMap'] = Stubs::MultiplexProgramPacketIdentifiersMap.stub(stub[:packet_identifiers_map]) unless stub[:packet_identifiers_map].nil?
        data['pipelineDetails'] = Stubs::List____listOfMultiplexProgramPipelineDetail.stub(stub[:pipeline_details]) unless stub[:pipeline_details].nil?
        data['programName'] = stub[:program_name] unless stub[:program_name].nil?
        data
      end
    end

    # List Stubber for __listOfMultiplexProgramPipelineDetail
    class List____listOfMultiplexProgramPipelineDetail
      def self.default(visited=[])
        return nil if visited.include?('List____listOfMultiplexProgramPipelineDetail')
        visited = visited + ['List____listOfMultiplexProgramPipelineDetail']
        [
          Stubs::MultiplexProgramPipelineDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::MultiplexProgramPipelineDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MultiplexProgramPipelineDetail
    class MultiplexProgramPipelineDetail
      def self.default(visited=[])
        return nil if visited.include?('MultiplexProgramPipelineDetail')
        visited = visited + ['MultiplexProgramPipelineDetail']
        {
          active_channel_pipeline: 'active_channel_pipeline',
          pipeline_id: 'pipeline_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::MultiplexProgramPipelineDetail.new
        data = {}
        data['activeChannelPipeline'] = stub[:active_channel_pipeline] unless stub[:active_channel_pipeline].nil?
        data['pipelineId'] = stub[:pipeline_id] unless stub[:pipeline_id].nil?
        data
      end
    end

    # Structure Stubber for MultiplexProgramPacketIdentifiersMap
    class MultiplexProgramPacketIdentifiersMap
      def self.default(visited=[])
        return nil if visited.include?('MultiplexProgramPacketIdentifiersMap')
        visited = visited + ['MultiplexProgramPacketIdentifiersMap']
        {
          audio_pids: Stubs::List____listOf__integer.default(visited),
          dvb_sub_pids: Stubs::List____listOf__integer.default(visited),
          dvb_teletext_pid: 1,
          etv_platform_pid: 1,
          etv_signal_pid: 1,
          klv_data_pids: Stubs::List____listOf__integer.default(visited),
          pcr_pid: 1,
          pmt_pid: 1,
          private_metadata_pid: 1,
          scte27_pids: Stubs::List____listOf__integer.default(visited),
          scte35_pid: 1,
          timed_metadata_pid: 1,
          video_pid: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::MultiplexProgramPacketIdentifiersMap.new
        data = {}
        data['audioPids'] = Stubs::List____listOf__integer.stub(stub[:audio_pids]) unless stub[:audio_pids].nil?
        data['dvbSubPids'] = Stubs::List____listOf__integer.stub(stub[:dvb_sub_pids]) unless stub[:dvb_sub_pids].nil?
        data['dvbTeletextPid'] = stub[:dvb_teletext_pid] unless stub[:dvb_teletext_pid].nil?
        data['etvPlatformPid'] = stub[:etv_platform_pid] unless stub[:etv_platform_pid].nil?
        data['etvSignalPid'] = stub[:etv_signal_pid] unless stub[:etv_signal_pid].nil?
        data['klvDataPids'] = Stubs::List____listOf__integer.stub(stub[:klv_data_pids]) unless stub[:klv_data_pids].nil?
        data['pcrPid'] = stub[:pcr_pid] unless stub[:pcr_pid].nil?
        data['pmtPid'] = stub[:pmt_pid] unless stub[:pmt_pid].nil?
        data['privateMetadataPid'] = stub[:private_metadata_pid] unless stub[:private_metadata_pid].nil?
        data['scte27Pids'] = Stubs::List____listOf__integer.stub(stub[:scte27_pids]) unless stub[:scte27_pids].nil?
        data['scte35Pid'] = stub[:scte35_pid] unless stub[:scte35_pid].nil?
        data['timedMetadataPid'] = stub[:timed_metadata_pid] unless stub[:timed_metadata_pid].nil?
        data['videoPid'] = stub[:video_pid] unless stub[:video_pid].nil?
        data
      end
    end

    # List Stubber for __listOf__integer
    class List____listOf__integer
      def self.default(visited=[])
        return nil if visited.include?('List____listOf__integer')
        visited = visited + ['List____listOf__integer']
        [
          1
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MultiplexProgramSettings
    class MultiplexProgramSettings
      def self.default(visited=[])
        return nil if visited.include?('MultiplexProgramSettings')
        visited = visited + ['MultiplexProgramSettings']
        {
          preferred_channel_pipeline: 'preferred_channel_pipeline',
          program_number: 1,
          service_descriptor: Stubs::MultiplexProgramServiceDescriptor.default(visited),
          video_settings: Stubs::MultiplexVideoSettings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MultiplexProgramSettings.new
        data = {}
        data['preferredChannelPipeline'] = stub[:preferred_channel_pipeline] unless stub[:preferred_channel_pipeline].nil?
        data['programNumber'] = stub[:program_number] unless stub[:program_number].nil?
        data['serviceDescriptor'] = Stubs::MultiplexProgramServiceDescriptor.stub(stub[:service_descriptor]) unless stub[:service_descriptor].nil?
        data['videoSettings'] = Stubs::MultiplexVideoSettings.stub(stub[:video_settings]) unless stub[:video_settings].nil?
        data
      end
    end

    # Structure Stubber for MultiplexVideoSettings
    class MultiplexVideoSettings
      def self.default(visited=[])
        return nil if visited.include?('MultiplexVideoSettings')
        visited = visited + ['MultiplexVideoSettings']
        {
          constant_bitrate: 1,
          statmux_settings: Stubs::MultiplexStatmuxVideoSettings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MultiplexVideoSettings.new
        data = {}
        data['constantBitrate'] = stub[:constant_bitrate] unless stub[:constant_bitrate].nil?
        data['statmuxSettings'] = Stubs::MultiplexStatmuxVideoSettings.stub(stub[:statmux_settings]) unless stub[:statmux_settings].nil?
        data
      end
    end

    # Structure Stubber for MultiplexStatmuxVideoSettings
    class MultiplexStatmuxVideoSettings
      def self.default(visited=[])
        return nil if visited.include?('MultiplexStatmuxVideoSettings')
        visited = visited + ['MultiplexStatmuxVideoSettings']
        {
          maximum_bitrate: 1,
          minimum_bitrate: 1,
          priority: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::MultiplexStatmuxVideoSettings.new
        data = {}
        data['maximumBitrate'] = stub[:maximum_bitrate] unless stub[:maximum_bitrate].nil?
        data['minimumBitrate'] = stub[:minimum_bitrate] unless stub[:minimum_bitrate].nil?
        data['priority'] = stub[:priority] unless stub[:priority].nil?
        data
      end
    end

    # Structure Stubber for MultiplexProgramServiceDescriptor
    class MultiplexProgramServiceDescriptor
      def self.default(visited=[])
        return nil if visited.include?('MultiplexProgramServiceDescriptor')
        visited = visited + ['MultiplexProgramServiceDescriptor']
        {
          provider_name: 'provider_name',
          service_name: 'service_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::MultiplexProgramServiceDescriptor.new
        data = {}
        data['providerName'] = stub[:provider_name] unless stub[:provider_name].nil?
        data['serviceName'] = stub[:service_name] unless stub[:service_name].nil?
        data
      end
    end

    # Operation Stubber for CreatePartnerInput
    class CreatePartnerInput
      def self.default(visited=[])
        {
          input: Stubs::Input.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['input'] = Stubs::Input.stub(stub[:input]) unless stub[:input].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateTags
    class CreateTags
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteChannel
    class DeleteChannel
      def self.default(visited=[])
        {
          arn: 'arn',
          cdi_input_specification: Stubs::CdiInputSpecification.default(visited),
          channel_class: 'channel_class',
          destinations: Stubs::List____listOfOutputDestination.default(visited),
          egress_endpoints: Stubs::List____listOfChannelEgressEndpoint.default(visited),
          encoder_settings: Stubs::EncoderSettings.default(visited),
          id: 'id',
          input_attachments: Stubs::List____listOfInputAttachment.default(visited),
          input_specification: Stubs::InputSpecification.default(visited),
          log_level: 'log_level',
          maintenance: Stubs::MaintenanceStatus.default(visited),
          name: 'name',
          pipeline_details: Stubs::List____listOfPipelineDetail.default(visited),
          pipelines_running_count: 1,
          role_arn: 'role_arn',
          state: 'state',
          tags: Stubs::Tags.default(visited),
          vpc: Stubs::VpcOutputSettingsDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['cdiInputSpecification'] = Stubs::CdiInputSpecification.stub(stub[:cdi_input_specification]) unless stub[:cdi_input_specification].nil?
        data['channelClass'] = stub[:channel_class] unless stub[:channel_class].nil?
        data['destinations'] = Stubs::List____listOfOutputDestination.stub(stub[:destinations]) unless stub[:destinations].nil?
        data['egressEndpoints'] = Stubs::List____listOfChannelEgressEndpoint.stub(stub[:egress_endpoints]) unless stub[:egress_endpoints].nil?
        data['encoderSettings'] = Stubs::EncoderSettings.stub(stub[:encoder_settings]) unless stub[:encoder_settings].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['inputAttachments'] = Stubs::List____listOfInputAttachment.stub(stub[:input_attachments]) unless stub[:input_attachments].nil?
        data['inputSpecification'] = Stubs::InputSpecification.stub(stub[:input_specification]) unless stub[:input_specification].nil?
        data['logLevel'] = stub[:log_level] unless stub[:log_level].nil?
        data['maintenance'] = Stubs::MaintenanceStatus.stub(stub[:maintenance]) unless stub[:maintenance].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['pipelineDetails'] = Stubs::List____listOfPipelineDetail.stub(stub[:pipeline_details]) unless stub[:pipeline_details].nil?
        data['pipelinesRunningCount'] = stub[:pipelines_running_count] unless stub[:pipelines_running_count].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['vpc'] = Stubs::VpcOutputSettingsDescription.stub(stub[:vpc]) unless stub[:vpc].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteInput
    class DeleteInput
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteInputSecurityGroup
    class DeleteInputSecurityGroup
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteMultiplex
    class DeleteMultiplex
      def self.default(visited=[])
        {
          arn: 'arn',
          availability_zones: Stubs::List____listOf__string.default(visited),
          destinations: Stubs::List____listOfMultiplexOutputDestination.default(visited),
          id: 'id',
          multiplex_settings: Stubs::MultiplexSettings.default(visited),
          name: 'name',
          pipelines_running_count: 1,
          program_count: 1,
          state: 'state',
          tags: Stubs::Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['availabilityZones'] = Stubs::List____listOf__string.stub(stub[:availability_zones]) unless stub[:availability_zones].nil?
        data['destinations'] = Stubs::List____listOfMultiplexOutputDestination.stub(stub[:destinations]) unless stub[:destinations].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['multiplexSettings'] = Stubs::MultiplexSettings.stub(stub[:multiplex_settings]) unless stub[:multiplex_settings].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['pipelinesRunningCount'] = stub[:pipelines_running_count] unless stub[:pipelines_running_count].nil?
        data['programCount'] = stub[:program_count] unless stub[:program_count].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteMultiplexProgram
    class DeleteMultiplexProgram
      def self.default(visited=[])
        {
          channel_id: 'channel_id',
          multiplex_program_settings: Stubs::MultiplexProgramSettings.default(visited),
          packet_identifiers_map: Stubs::MultiplexProgramPacketIdentifiersMap.default(visited),
          pipeline_details: Stubs::List____listOfMultiplexProgramPipelineDetail.default(visited),
          program_name: 'program_name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['channelId'] = stub[:channel_id] unless stub[:channel_id].nil?
        data['multiplexProgramSettings'] = Stubs::MultiplexProgramSettings.stub(stub[:multiplex_program_settings]) unless stub[:multiplex_program_settings].nil?
        data['packetIdentifiersMap'] = Stubs::MultiplexProgramPacketIdentifiersMap.stub(stub[:packet_identifiers_map]) unless stub[:packet_identifiers_map].nil?
        data['pipelineDetails'] = Stubs::List____listOfMultiplexProgramPipelineDetail.stub(stub[:pipeline_details]) unless stub[:pipeline_details].nil?
        data['programName'] = stub[:program_name] unless stub[:program_name].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteReservation
    class DeleteReservation
      def self.default(visited=[])
        {
          arn: 'arn',
          count: 1,
          currency_code: 'currency_code',
          duration: 1,
          duration_units: 'duration_units',
          end: 'end',
          fixed_price: 1.0,
          name: 'name',
          offering_description: 'offering_description',
          offering_id: 'offering_id',
          offering_type: 'offering_type',
          region: 'region',
          reservation_id: 'reservation_id',
          resource_specification: Stubs::ReservationResourceSpecification.default(visited),
          start: 'start',
          state: 'state',
          tags: Stubs::Tags.default(visited),
          usage_price: 1.0,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['count'] = stub[:count] unless stub[:count].nil?
        data['currencyCode'] = stub[:currency_code] unless stub[:currency_code].nil?
        data['duration'] = stub[:duration] unless stub[:duration].nil?
        data['durationUnits'] = stub[:duration_units] unless stub[:duration_units].nil?
        data['end'] = stub[:end] unless stub[:end].nil?
        data['fixedPrice'] = Hearth::NumberHelper.serialize(stub[:fixed_price])
        data['name'] = stub[:name] unless stub[:name].nil?
        data['offeringDescription'] = stub[:offering_description] unless stub[:offering_description].nil?
        data['offeringId'] = stub[:offering_id] unless stub[:offering_id].nil?
        data['offeringType'] = stub[:offering_type] unless stub[:offering_type].nil?
        data['region'] = stub[:region] unless stub[:region].nil?
        data['reservationId'] = stub[:reservation_id] unless stub[:reservation_id].nil?
        data['resourceSpecification'] = Stubs::ReservationResourceSpecification.stub(stub[:resource_specification]) unless stub[:resource_specification].nil?
        data['start'] = stub[:start] unless stub[:start].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['usagePrice'] = Hearth::NumberHelper.serialize(stub[:usage_price])
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ReservationResourceSpecification
    class ReservationResourceSpecification
      def self.default(visited=[])
        return nil if visited.include?('ReservationResourceSpecification')
        visited = visited + ['ReservationResourceSpecification']
        {
          channel_class: 'channel_class',
          codec: 'codec',
          maximum_bitrate: 'maximum_bitrate',
          maximum_framerate: 'maximum_framerate',
          resolution: 'resolution',
          resource_type: 'resource_type',
          special_feature: 'special_feature',
          video_quality: 'video_quality',
        }
      end

      def self.stub(stub)
        stub ||= Types::ReservationResourceSpecification.new
        data = {}
        data['channelClass'] = stub[:channel_class] unless stub[:channel_class].nil?
        data['codec'] = stub[:codec] unless stub[:codec].nil?
        data['maximumBitrate'] = stub[:maximum_bitrate] unless stub[:maximum_bitrate].nil?
        data['maximumFramerate'] = stub[:maximum_framerate] unless stub[:maximum_framerate].nil?
        data['resolution'] = stub[:resolution] unless stub[:resolution].nil?
        data['resourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['specialFeature'] = stub[:special_feature] unless stub[:special_feature].nil?
        data['videoQuality'] = stub[:video_quality] unless stub[:video_quality].nil?
        data
      end
    end

    # Operation Stubber for DeleteSchedule
    class DeleteSchedule
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteTags
    class DeleteTags
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DescribeChannel
    class DescribeChannel
      def self.default(visited=[])
        {
          arn: 'arn',
          cdi_input_specification: Stubs::CdiInputSpecification.default(visited),
          channel_class: 'channel_class',
          destinations: Stubs::List____listOfOutputDestination.default(visited),
          egress_endpoints: Stubs::List____listOfChannelEgressEndpoint.default(visited),
          encoder_settings: Stubs::EncoderSettings.default(visited),
          id: 'id',
          input_attachments: Stubs::List____listOfInputAttachment.default(visited),
          input_specification: Stubs::InputSpecification.default(visited),
          log_level: 'log_level',
          maintenance: Stubs::MaintenanceStatus.default(visited),
          name: 'name',
          pipeline_details: Stubs::List____listOfPipelineDetail.default(visited),
          pipelines_running_count: 1,
          role_arn: 'role_arn',
          state: 'state',
          tags: Stubs::Tags.default(visited),
          vpc: Stubs::VpcOutputSettingsDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['cdiInputSpecification'] = Stubs::CdiInputSpecification.stub(stub[:cdi_input_specification]) unless stub[:cdi_input_specification].nil?
        data['channelClass'] = stub[:channel_class] unless stub[:channel_class].nil?
        data['destinations'] = Stubs::List____listOfOutputDestination.stub(stub[:destinations]) unless stub[:destinations].nil?
        data['egressEndpoints'] = Stubs::List____listOfChannelEgressEndpoint.stub(stub[:egress_endpoints]) unless stub[:egress_endpoints].nil?
        data['encoderSettings'] = Stubs::EncoderSettings.stub(stub[:encoder_settings]) unless stub[:encoder_settings].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['inputAttachments'] = Stubs::List____listOfInputAttachment.stub(stub[:input_attachments]) unless stub[:input_attachments].nil?
        data['inputSpecification'] = Stubs::InputSpecification.stub(stub[:input_specification]) unless stub[:input_specification].nil?
        data['logLevel'] = stub[:log_level] unless stub[:log_level].nil?
        data['maintenance'] = Stubs::MaintenanceStatus.stub(stub[:maintenance]) unless stub[:maintenance].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['pipelineDetails'] = Stubs::List____listOfPipelineDetail.stub(stub[:pipeline_details]) unless stub[:pipeline_details].nil?
        data['pipelinesRunningCount'] = stub[:pipelines_running_count] unless stub[:pipelines_running_count].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['vpc'] = Stubs::VpcOutputSettingsDescription.stub(stub[:vpc]) unless stub[:vpc].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeInput
    class DescribeInput
      def self.default(visited=[])
        {
          arn: 'arn',
          attached_channels: Stubs::List____listOf__string.default(visited),
          destinations: Stubs::List____listOfInputDestination.default(visited),
          id: 'id',
          input_class: 'input_class',
          input_devices: Stubs::List____listOfInputDeviceSettings.default(visited),
          input_partner_ids: Stubs::List____listOf__string.default(visited),
          input_source_type: 'input_source_type',
          media_connect_flows: Stubs::List____listOfMediaConnectFlow.default(visited),
          name: 'name',
          role_arn: 'role_arn',
          security_groups: Stubs::List____listOf__string.default(visited),
          sources: Stubs::List____listOfInputSource.default(visited),
          state: 'state',
          tags: Stubs::Tags.default(visited),
          type: 'type',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['attachedChannels'] = Stubs::List____listOf__string.stub(stub[:attached_channels]) unless stub[:attached_channels].nil?
        data['destinations'] = Stubs::List____listOfInputDestination.stub(stub[:destinations]) unless stub[:destinations].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['inputClass'] = stub[:input_class] unless stub[:input_class].nil?
        data['inputDevices'] = Stubs::List____listOfInputDeviceSettings.stub(stub[:input_devices]) unless stub[:input_devices].nil?
        data['inputPartnerIds'] = Stubs::List____listOf__string.stub(stub[:input_partner_ids]) unless stub[:input_partner_ids].nil?
        data['inputSourceType'] = stub[:input_source_type] unless stub[:input_source_type].nil?
        data['mediaConnectFlows'] = Stubs::List____listOfMediaConnectFlow.stub(stub[:media_connect_flows]) unless stub[:media_connect_flows].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['securityGroups'] = Stubs::List____listOf__string.stub(stub[:security_groups]) unless stub[:security_groups].nil?
        data['sources'] = Stubs::List____listOfInputSource.stub(stub[:sources]) unless stub[:sources].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeInputDevice
    class DescribeInputDevice
      def self.default(visited=[])
        {
          arn: 'arn',
          connection_state: 'connection_state',
          device_settings_sync_state: 'device_settings_sync_state',
          device_update_status: 'device_update_status',
          hd_device_settings: Stubs::InputDeviceHdSettings.default(visited),
          id: 'id',
          mac_address: 'mac_address',
          name: 'name',
          network_settings: Stubs::InputDeviceNetworkSettings.default(visited),
          serial_number: 'serial_number',
          type: 'type',
          uhd_device_settings: Stubs::InputDeviceUhdSettings.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['connectionState'] = stub[:connection_state] unless stub[:connection_state].nil?
        data['deviceSettingsSyncState'] = stub[:device_settings_sync_state] unless stub[:device_settings_sync_state].nil?
        data['deviceUpdateStatus'] = stub[:device_update_status] unless stub[:device_update_status].nil?
        data['hdDeviceSettings'] = Stubs::InputDeviceHdSettings.stub(stub[:hd_device_settings]) unless stub[:hd_device_settings].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['macAddress'] = stub[:mac_address] unless stub[:mac_address].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['networkSettings'] = Stubs::InputDeviceNetworkSettings.stub(stub[:network_settings]) unless stub[:network_settings].nil?
        data['serialNumber'] = stub[:serial_number] unless stub[:serial_number].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['uhdDeviceSettings'] = Stubs::InputDeviceUhdSettings.stub(stub[:uhd_device_settings]) unless stub[:uhd_device_settings].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for InputDeviceUhdSettings
    class InputDeviceUhdSettings
      def self.default(visited=[])
        return nil if visited.include?('InputDeviceUhdSettings')
        visited = visited + ['InputDeviceUhdSettings']
        {
          active_input: 'active_input',
          configured_input: 'configured_input',
          device_state: 'device_state',
          framerate: 1.0,
          height: 1,
          max_bitrate: 1,
          scan_type: 'scan_type',
          width: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::InputDeviceUhdSettings.new
        data = {}
        data['activeInput'] = stub[:active_input] unless stub[:active_input].nil?
        data['configuredInput'] = stub[:configured_input] unless stub[:configured_input].nil?
        data['deviceState'] = stub[:device_state] unless stub[:device_state].nil?
        data['framerate'] = Hearth::NumberHelper.serialize(stub[:framerate])
        data['height'] = stub[:height] unless stub[:height].nil?
        data['maxBitrate'] = stub[:max_bitrate] unless stub[:max_bitrate].nil?
        data['scanType'] = stub[:scan_type] unless stub[:scan_type].nil?
        data['width'] = stub[:width] unless stub[:width].nil?
        data
      end
    end

    # Structure Stubber for InputDeviceNetworkSettings
    class InputDeviceNetworkSettings
      def self.default(visited=[])
        return nil if visited.include?('InputDeviceNetworkSettings')
        visited = visited + ['InputDeviceNetworkSettings']
        {
          dns_addresses: Stubs::List____listOf__string.default(visited),
          gateway: 'gateway',
          ip_address: 'ip_address',
          ip_scheme: 'ip_scheme',
          subnet_mask: 'subnet_mask',
        }
      end

      def self.stub(stub)
        stub ||= Types::InputDeviceNetworkSettings.new
        data = {}
        data['dnsAddresses'] = Stubs::List____listOf__string.stub(stub[:dns_addresses]) unless stub[:dns_addresses].nil?
        data['gateway'] = stub[:gateway] unless stub[:gateway].nil?
        data['ipAddress'] = stub[:ip_address] unless stub[:ip_address].nil?
        data['ipScheme'] = stub[:ip_scheme] unless stub[:ip_scheme].nil?
        data['subnetMask'] = stub[:subnet_mask] unless stub[:subnet_mask].nil?
        data
      end
    end

    # Structure Stubber for InputDeviceHdSettings
    class InputDeviceHdSettings
      def self.default(visited=[])
        return nil if visited.include?('InputDeviceHdSettings')
        visited = visited + ['InputDeviceHdSettings']
        {
          active_input: 'active_input',
          configured_input: 'configured_input',
          device_state: 'device_state',
          framerate: 1.0,
          height: 1,
          max_bitrate: 1,
          scan_type: 'scan_type',
          width: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::InputDeviceHdSettings.new
        data = {}
        data['activeInput'] = stub[:active_input] unless stub[:active_input].nil?
        data['configuredInput'] = stub[:configured_input] unless stub[:configured_input].nil?
        data['deviceState'] = stub[:device_state] unless stub[:device_state].nil?
        data['framerate'] = Hearth::NumberHelper.serialize(stub[:framerate])
        data['height'] = stub[:height] unless stub[:height].nil?
        data['maxBitrate'] = stub[:max_bitrate] unless stub[:max_bitrate].nil?
        data['scanType'] = stub[:scan_type] unless stub[:scan_type].nil?
        data['width'] = stub[:width] unless stub[:width].nil?
        data
      end
    end

    # Operation Stubber for DescribeInputDeviceThumbnail
    class DescribeInputDeviceThumbnail
      def self.default(visited=[])
        {
          body: 'body',
          content_type: 'content_type',
          content_length: 1,
          e_tag: 'e_tag',
          last_modified: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = stub[:content_type] unless stub[:content_type].nil? || stub[:content_type].empty?
        http_resp.headers['Content-Length'] = stub[:content_length].to_s unless stub[:content_length].nil?
        http_resp.headers['ETag'] = stub[:e_tag] unless stub[:e_tag].nil? || stub[:e_tag].empty?
        http_resp.headers['Last-Modified'] = Hearth::TimeHelper.to_date_time(stub[:last_modified]) unless stub[:last_modified].nil?
        IO.copy_stream(stub[:body], http_resp.body)
      end
    end

    # Operation Stubber for DescribeInputSecurityGroup
    class DescribeInputSecurityGroup
      def self.default(visited=[])
        {
          arn: 'arn',
          id: 'id',
          inputs: Stubs::List____listOf__string.default(visited),
          state: 'state',
          tags: Stubs::Tags.default(visited),
          whitelist_rules: Stubs::List____listOfInputWhitelistRule.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['inputs'] = Stubs::List____listOf__string.stub(stub[:inputs]) unless stub[:inputs].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['whitelistRules'] = Stubs::List____listOfInputWhitelistRule.stub(stub[:whitelist_rules]) unless stub[:whitelist_rules].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeMultiplex
    class DescribeMultiplex
      def self.default(visited=[])
        {
          arn: 'arn',
          availability_zones: Stubs::List____listOf__string.default(visited),
          destinations: Stubs::List____listOfMultiplexOutputDestination.default(visited),
          id: 'id',
          multiplex_settings: Stubs::MultiplexSettings.default(visited),
          name: 'name',
          pipelines_running_count: 1,
          program_count: 1,
          state: 'state',
          tags: Stubs::Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['availabilityZones'] = Stubs::List____listOf__string.stub(stub[:availability_zones]) unless stub[:availability_zones].nil?
        data['destinations'] = Stubs::List____listOfMultiplexOutputDestination.stub(stub[:destinations]) unless stub[:destinations].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['multiplexSettings'] = Stubs::MultiplexSettings.stub(stub[:multiplex_settings]) unless stub[:multiplex_settings].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['pipelinesRunningCount'] = stub[:pipelines_running_count] unless stub[:pipelines_running_count].nil?
        data['programCount'] = stub[:program_count] unless stub[:program_count].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeMultiplexProgram
    class DescribeMultiplexProgram
      def self.default(visited=[])
        {
          channel_id: 'channel_id',
          multiplex_program_settings: Stubs::MultiplexProgramSettings.default(visited),
          packet_identifiers_map: Stubs::MultiplexProgramPacketIdentifiersMap.default(visited),
          pipeline_details: Stubs::List____listOfMultiplexProgramPipelineDetail.default(visited),
          program_name: 'program_name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['channelId'] = stub[:channel_id] unless stub[:channel_id].nil?
        data['multiplexProgramSettings'] = Stubs::MultiplexProgramSettings.stub(stub[:multiplex_program_settings]) unless stub[:multiplex_program_settings].nil?
        data['packetIdentifiersMap'] = Stubs::MultiplexProgramPacketIdentifiersMap.stub(stub[:packet_identifiers_map]) unless stub[:packet_identifiers_map].nil?
        data['pipelineDetails'] = Stubs::List____listOfMultiplexProgramPipelineDetail.stub(stub[:pipeline_details]) unless stub[:pipeline_details].nil?
        data['programName'] = stub[:program_name] unless stub[:program_name].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeOffering
    class DescribeOffering
      def self.default(visited=[])
        {
          arn: 'arn',
          currency_code: 'currency_code',
          duration: 1,
          duration_units: 'duration_units',
          fixed_price: 1.0,
          offering_description: 'offering_description',
          offering_id: 'offering_id',
          offering_type: 'offering_type',
          region: 'region',
          resource_specification: Stubs::ReservationResourceSpecification.default(visited),
          usage_price: 1.0,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['currencyCode'] = stub[:currency_code] unless stub[:currency_code].nil?
        data['duration'] = stub[:duration] unless stub[:duration].nil?
        data['durationUnits'] = stub[:duration_units] unless stub[:duration_units].nil?
        data['fixedPrice'] = Hearth::NumberHelper.serialize(stub[:fixed_price])
        data['offeringDescription'] = stub[:offering_description] unless stub[:offering_description].nil?
        data['offeringId'] = stub[:offering_id] unless stub[:offering_id].nil?
        data['offeringType'] = stub[:offering_type] unless stub[:offering_type].nil?
        data['region'] = stub[:region] unless stub[:region].nil?
        data['resourceSpecification'] = Stubs::ReservationResourceSpecification.stub(stub[:resource_specification]) unless stub[:resource_specification].nil?
        data['usagePrice'] = Hearth::NumberHelper.serialize(stub[:usage_price])
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeReservation
    class DescribeReservation
      def self.default(visited=[])
        {
          arn: 'arn',
          count: 1,
          currency_code: 'currency_code',
          duration: 1,
          duration_units: 'duration_units',
          end: 'end',
          fixed_price: 1.0,
          name: 'name',
          offering_description: 'offering_description',
          offering_id: 'offering_id',
          offering_type: 'offering_type',
          region: 'region',
          reservation_id: 'reservation_id',
          resource_specification: Stubs::ReservationResourceSpecification.default(visited),
          start: 'start',
          state: 'state',
          tags: Stubs::Tags.default(visited),
          usage_price: 1.0,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['count'] = stub[:count] unless stub[:count].nil?
        data['currencyCode'] = stub[:currency_code] unless stub[:currency_code].nil?
        data['duration'] = stub[:duration] unless stub[:duration].nil?
        data['durationUnits'] = stub[:duration_units] unless stub[:duration_units].nil?
        data['end'] = stub[:end] unless stub[:end].nil?
        data['fixedPrice'] = Hearth::NumberHelper.serialize(stub[:fixed_price])
        data['name'] = stub[:name] unless stub[:name].nil?
        data['offeringDescription'] = stub[:offering_description] unless stub[:offering_description].nil?
        data['offeringId'] = stub[:offering_id] unless stub[:offering_id].nil?
        data['offeringType'] = stub[:offering_type] unless stub[:offering_type].nil?
        data['region'] = stub[:region] unless stub[:region].nil?
        data['reservationId'] = stub[:reservation_id] unless stub[:reservation_id].nil?
        data['resourceSpecification'] = Stubs::ReservationResourceSpecification.stub(stub[:resource_specification]) unless stub[:resource_specification].nil?
        data['start'] = stub[:start] unless stub[:start].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['usagePrice'] = Hearth::NumberHelper.serialize(stub[:usage_price])
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeSchedule
    class DescribeSchedule
      def self.default(visited=[])
        {
          next_token: 'next_token',
          schedule_actions: Stubs::List____listOfScheduleAction.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['scheduleActions'] = Stubs::List____listOfScheduleAction.stub(stub[:schedule_actions]) unless stub[:schedule_actions].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListChannels
    class ListChannels
      def self.default(visited=[])
        {
          channels: Stubs::List____listOfChannelSummary.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['channels'] = Stubs::List____listOfChannelSummary.stub(stub[:channels]) unless stub[:channels].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfChannelSummary
    class List____listOfChannelSummary
      def self.default(visited=[])
        return nil if visited.include?('List____listOfChannelSummary')
        visited = visited + ['List____listOfChannelSummary']
        [
          Stubs::ChannelSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ChannelSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ChannelSummary
    class ChannelSummary
      def self.default(visited=[])
        return nil if visited.include?('ChannelSummary')
        visited = visited + ['ChannelSummary']
        {
          arn: 'arn',
          cdi_input_specification: Stubs::CdiInputSpecification.default(visited),
          channel_class: 'channel_class',
          destinations: Stubs::List____listOfOutputDestination.default(visited),
          egress_endpoints: Stubs::List____listOfChannelEgressEndpoint.default(visited),
          id: 'id',
          input_attachments: Stubs::List____listOfInputAttachment.default(visited),
          input_specification: Stubs::InputSpecification.default(visited),
          log_level: 'log_level',
          maintenance: Stubs::MaintenanceStatus.default(visited),
          name: 'name',
          pipelines_running_count: 1,
          role_arn: 'role_arn',
          state: 'state',
          tags: Stubs::Tags.default(visited),
          vpc: Stubs::VpcOutputSettingsDescription.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ChannelSummary.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['cdiInputSpecification'] = Stubs::CdiInputSpecification.stub(stub[:cdi_input_specification]) unless stub[:cdi_input_specification].nil?
        data['channelClass'] = stub[:channel_class] unless stub[:channel_class].nil?
        data['destinations'] = Stubs::List____listOfOutputDestination.stub(stub[:destinations]) unless stub[:destinations].nil?
        data['egressEndpoints'] = Stubs::List____listOfChannelEgressEndpoint.stub(stub[:egress_endpoints]) unless stub[:egress_endpoints].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['inputAttachments'] = Stubs::List____listOfInputAttachment.stub(stub[:input_attachments]) unless stub[:input_attachments].nil?
        data['inputSpecification'] = Stubs::InputSpecification.stub(stub[:input_specification]) unless stub[:input_specification].nil?
        data['logLevel'] = stub[:log_level] unless stub[:log_level].nil?
        data['maintenance'] = Stubs::MaintenanceStatus.stub(stub[:maintenance]) unless stub[:maintenance].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['pipelinesRunningCount'] = stub[:pipelines_running_count] unless stub[:pipelines_running_count].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['vpc'] = Stubs::VpcOutputSettingsDescription.stub(stub[:vpc]) unless stub[:vpc].nil?
        data
      end
    end

    # Operation Stubber for ListInputDeviceTransfers
    class ListInputDeviceTransfers
      def self.default(visited=[])
        {
          input_device_transfers: Stubs::List____listOfTransferringInputDeviceSummary.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['inputDeviceTransfers'] = Stubs::List____listOfTransferringInputDeviceSummary.stub(stub[:input_device_transfers]) unless stub[:input_device_transfers].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfTransferringInputDeviceSummary
    class List____listOfTransferringInputDeviceSummary
      def self.default(visited=[])
        return nil if visited.include?('List____listOfTransferringInputDeviceSummary')
        visited = visited + ['List____listOfTransferringInputDeviceSummary']
        [
          Stubs::TransferringInputDeviceSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::TransferringInputDeviceSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TransferringInputDeviceSummary
    class TransferringInputDeviceSummary
      def self.default(visited=[])
        return nil if visited.include?('TransferringInputDeviceSummary')
        visited = visited + ['TransferringInputDeviceSummary']
        {
          id: 'id',
          message: 'message',
          target_customer_id: 'target_customer_id',
          transfer_type: 'transfer_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::TransferringInputDeviceSummary.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['message'] = stub[:message] unless stub[:message].nil?
        data['targetCustomerId'] = stub[:target_customer_id] unless stub[:target_customer_id].nil?
        data['transferType'] = stub[:transfer_type] unless stub[:transfer_type].nil?
        data
      end
    end

    # Operation Stubber for ListInputDevices
    class ListInputDevices
      def self.default(visited=[])
        {
          input_devices: Stubs::List____listOfInputDeviceSummary.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['inputDevices'] = Stubs::List____listOfInputDeviceSummary.stub(stub[:input_devices]) unless stub[:input_devices].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfInputDeviceSummary
    class List____listOfInputDeviceSummary
      def self.default(visited=[])
        return nil if visited.include?('List____listOfInputDeviceSummary')
        visited = visited + ['List____listOfInputDeviceSummary']
        [
          Stubs::InputDeviceSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::InputDeviceSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for InputDeviceSummary
    class InputDeviceSummary
      def self.default(visited=[])
        return nil if visited.include?('InputDeviceSummary')
        visited = visited + ['InputDeviceSummary']
        {
          arn: 'arn',
          connection_state: 'connection_state',
          device_settings_sync_state: 'device_settings_sync_state',
          device_update_status: 'device_update_status',
          hd_device_settings: Stubs::InputDeviceHdSettings.default(visited),
          id: 'id',
          mac_address: 'mac_address',
          name: 'name',
          network_settings: Stubs::InputDeviceNetworkSettings.default(visited),
          serial_number: 'serial_number',
          type: 'type',
          uhd_device_settings: Stubs::InputDeviceUhdSettings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::InputDeviceSummary.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['connectionState'] = stub[:connection_state] unless stub[:connection_state].nil?
        data['deviceSettingsSyncState'] = stub[:device_settings_sync_state] unless stub[:device_settings_sync_state].nil?
        data['deviceUpdateStatus'] = stub[:device_update_status] unless stub[:device_update_status].nil?
        data['hdDeviceSettings'] = Stubs::InputDeviceHdSettings.stub(stub[:hd_device_settings]) unless stub[:hd_device_settings].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['macAddress'] = stub[:mac_address] unless stub[:mac_address].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['networkSettings'] = Stubs::InputDeviceNetworkSettings.stub(stub[:network_settings]) unless stub[:network_settings].nil?
        data['serialNumber'] = stub[:serial_number] unless stub[:serial_number].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['uhdDeviceSettings'] = Stubs::InputDeviceUhdSettings.stub(stub[:uhd_device_settings]) unless stub[:uhd_device_settings].nil?
        data
      end
    end

    # Operation Stubber for ListInputSecurityGroups
    class ListInputSecurityGroups
      def self.default(visited=[])
        {
          input_security_groups: Stubs::List____listOfInputSecurityGroup.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['inputSecurityGroups'] = Stubs::List____listOfInputSecurityGroup.stub(stub[:input_security_groups]) unless stub[:input_security_groups].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfInputSecurityGroup
    class List____listOfInputSecurityGroup
      def self.default(visited=[])
        return nil if visited.include?('List____listOfInputSecurityGroup')
        visited = visited + ['List____listOfInputSecurityGroup']
        [
          Stubs::InputSecurityGroup.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::InputSecurityGroup.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListInputs
    class ListInputs
      def self.default(visited=[])
        {
          inputs: Stubs::List____listOfInput.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['inputs'] = Stubs::List____listOfInput.stub(stub[:inputs]) unless stub[:inputs].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfInput
    class List____listOfInput
      def self.default(visited=[])
        return nil if visited.include?('List____listOfInput')
        visited = visited + ['List____listOfInput']
        [
          Stubs::Input.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Input.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListMultiplexPrograms
    class ListMultiplexPrograms
      def self.default(visited=[])
        {
          multiplex_programs: Stubs::List____listOfMultiplexProgramSummary.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['multiplexPrograms'] = Stubs::List____listOfMultiplexProgramSummary.stub(stub[:multiplex_programs]) unless stub[:multiplex_programs].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfMultiplexProgramSummary
    class List____listOfMultiplexProgramSummary
      def self.default(visited=[])
        return nil if visited.include?('List____listOfMultiplexProgramSummary')
        visited = visited + ['List____listOfMultiplexProgramSummary']
        [
          Stubs::MultiplexProgramSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::MultiplexProgramSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MultiplexProgramSummary
    class MultiplexProgramSummary
      def self.default(visited=[])
        return nil if visited.include?('MultiplexProgramSummary')
        visited = visited + ['MultiplexProgramSummary']
        {
          channel_id: 'channel_id',
          program_name: 'program_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::MultiplexProgramSummary.new
        data = {}
        data['channelId'] = stub[:channel_id] unless stub[:channel_id].nil?
        data['programName'] = stub[:program_name] unless stub[:program_name].nil?
        data
      end
    end

    # Operation Stubber for ListMultiplexes
    class ListMultiplexes
      def self.default(visited=[])
        {
          multiplexes: Stubs::List____listOfMultiplexSummary.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['multiplexes'] = Stubs::List____listOfMultiplexSummary.stub(stub[:multiplexes]) unless stub[:multiplexes].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfMultiplexSummary
    class List____listOfMultiplexSummary
      def self.default(visited=[])
        return nil if visited.include?('List____listOfMultiplexSummary')
        visited = visited + ['List____listOfMultiplexSummary']
        [
          Stubs::MultiplexSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::MultiplexSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MultiplexSummary
    class MultiplexSummary
      def self.default(visited=[])
        return nil if visited.include?('MultiplexSummary')
        visited = visited + ['MultiplexSummary']
        {
          arn: 'arn',
          availability_zones: Stubs::List____listOf__string.default(visited),
          id: 'id',
          multiplex_settings: Stubs::MultiplexSettingsSummary.default(visited),
          name: 'name',
          pipelines_running_count: 1,
          program_count: 1,
          state: 'state',
          tags: Stubs::Tags.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MultiplexSummary.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['availabilityZones'] = Stubs::List____listOf__string.stub(stub[:availability_zones]) unless stub[:availability_zones].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['multiplexSettings'] = Stubs::MultiplexSettingsSummary.stub(stub[:multiplex_settings]) unless stub[:multiplex_settings].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['pipelinesRunningCount'] = stub[:pipelines_running_count] unless stub[:pipelines_running_count].nil?
        data['programCount'] = stub[:program_count] unless stub[:program_count].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Structure Stubber for MultiplexSettingsSummary
    class MultiplexSettingsSummary
      def self.default(visited=[])
        return nil if visited.include?('MultiplexSettingsSummary')
        visited = visited + ['MultiplexSettingsSummary']
        {
          transport_stream_bitrate: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::MultiplexSettingsSummary.new
        data = {}
        data['transportStreamBitrate'] = stub[:transport_stream_bitrate] unless stub[:transport_stream_bitrate].nil?
        data
      end
    end

    # Operation Stubber for ListOfferings
    class ListOfferings
      def self.default(visited=[])
        {
          next_token: 'next_token',
          offerings: Stubs::List____listOfOffering.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['offerings'] = Stubs::List____listOfOffering.stub(stub[:offerings]) unless stub[:offerings].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfOffering
    class List____listOfOffering
      def self.default(visited=[])
        return nil if visited.include?('List____listOfOffering')
        visited = visited + ['List____listOfOffering']
        [
          Stubs::Offering.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Offering.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Offering
    class Offering
      def self.default(visited=[])
        return nil if visited.include?('Offering')
        visited = visited + ['Offering']
        {
          arn: 'arn',
          currency_code: 'currency_code',
          duration: 1,
          duration_units: 'duration_units',
          fixed_price: 1.0,
          offering_description: 'offering_description',
          offering_id: 'offering_id',
          offering_type: 'offering_type',
          region: 'region',
          resource_specification: Stubs::ReservationResourceSpecification.default(visited),
          usage_price: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::Offering.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['currencyCode'] = stub[:currency_code] unless stub[:currency_code].nil?
        data['duration'] = stub[:duration] unless stub[:duration].nil?
        data['durationUnits'] = stub[:duration_units] unless stub[:duration_units].nil?
        data['fixedPrice'] = Hearth::NumberHelper.serialize(stub[:fixed_price])
        data['offeringDescription'] = stub[:offering_description] unless stub[:offering_description].nil?
        data['offeringId'] = stub[:offering_id] unless stub[:offering_id].nil?
        data['offeringType'] = stub[:offering_type] unless stub[:offering_type].nil?
        data['region'] = stub[:region] unless stub[:region].nil?
        data['resourceSpecification'] = Stubs::ReservationResourceSpecification.stub(stub[:resource_specification]) unless stub[:resource_specification].nil?
        data['usagePrice'] = Hearth::NumberHelper.serialize(stub[:usage_price])
        data
      end
    end

    # Operation Stubber for ListReservations
    class ListReservations
      def self.default(visited=[])
        {
          next_token: 'next_token',
          reservations: Stubs::List____listOfReservation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['reservations'] = Stubs::List____listOfReservation.stub(stub[:reservations]) unless stub[:reservations].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfReservation
    class List____listOfReservation
      def self.default(visited=[])
        return nil if visited.include?('List____listOfReservation')
        visited = visited + ['List____listOfReservation']
        [
          Stubs::Reservation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Reservation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Reservation
    class Reservation
      def self.default(visited=[])
        return nil if visited.include?('Reservation')
        visited = visited + ['Reservation']
        {
          arn: 'arn',
          count: 1,
          currency_code: 'currency_code',
          duration: 1,
          duration_units: 'duration_units',
          end: 'end',
          fixed_price: 1.0,
          name: 'name',
          offering_description: 'offering_description',
          offering_id: 'offering_id',
          offering_type: 'offering_type',
          region: 'region',
          reservation_id: 'reservation_id',
          resource_specification: Stubs::ReservationResourceSpecification.default(visited),
          start: 'start',
          state: 'state',
          tags: Stubs::Tags.default(visited),
          usage_price: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::Reservation.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['count'] = stub[:count] unless stub[:count].nil?
        data['currencyCode'] = stub[:currency_code] unless stub[:currency_code].nil?
        data['duration'] = stub[:duration] unless stub[:duration].nil?
        data['durationUnits'] = stub[:duration_units] unless stub[:duration_units].nil?
        data['end'] = stub[:end] unless stub[:end].nil?
        data['fixedPrice'] = Hearth::NumberHelper.serialize(stub[:fixed_price])
        data['name'] = stub[:name] unless stub[:name].nil?
        data['offeringDescription'] = stub[:offering_description] unless stub[:offering_description].nil?
        data['offeringId'] = stub[:offering_id] unless stub[:offering_id].nil?
        data['offeringType'] = stub[:offering_type] unless stub[:offering_type].nil?
        data['region'] = stub[:region] unless stub[:region].nil?
        data['reservationId'] = stub[:reservation_id] unless stub[:reservation_id].nil?
        data['resourceSpecification'] = Stubs::ReservationResourceSpecification.stub(stub[:resource_specification]) unless stub[:resource_specification].nil?
        data['start'] = stub[:start] unless stub[:start].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['usagePrice'] = Hearth::NumberHelper.serialize(stub[:usage_price])
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: Stubs::Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for PurchaseOffering
    class PurchaseOffering
      def self.default(visited=[])
        {
          reservation: Stubs::Reservation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['reservation'] = Stubs::Reservation.stub(stub[:reservation]) unless stub[:reservation].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for RejectInputDeviceTransfer
    class RejectInputDeviceTransfer
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartChannel
    class StartChannel
      def self.default(visited=[])
        {
          arn: 'arn',
          cdi_input_specification: Stubs::CdiInputSpecification.default(visited),
          channel_class: 'channel_class',
          destinations: Stubs::List____listOfOutputDestination.default(visited),
          egress_endpoints: Stubs::List____listOfChannelEgressEndpoint.default(visited),
          encoder_settings: Stubs::EncoderSettings.default(visited),
          id: 'id',
          input_attachments: Stubs::List____listOfInputAttachment.default(visited),
          input_specification: Stubs::InputSpecification.default(visited),
          log_level: 'log_level',
          maintenance: Stubs::MaintenanceStatus.default(visited),
          name: 'name',
          pipeline_details: Stubs::List____listOfPipelineDetail.default(visited),
          pipelines_running_count: 1,
          role_arn: 'role_arn',
          state: 'state',
          tags: Stubs::Tags.default(visited),
          vpc: Stubs::VpcOutputSettingsDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['cdiInputSpecification'] = Stubs::CdiInputSpecification.stub(stub[:cdi_input_specification]) unless stub[:cdi_input_specification].nil?
        data['channelClass'] = stub[:channel_class] unless stub[:channel_class].nil?
        data['destinations'] = Stubs::List____listOfOutputDestination.stub(stub[:destinations]) unless stub[:destinations].nil?
        data['egressEndpoints'] = Stubs::List____listOfChannelEgressEndpoint.stub(stub[:egress_endpoints]) unless stub[:egress_endpoints].nil?
        data['encoderSettings'] = Stubs::EncoderSettings.stub(stub[:encoder_settings]) unless stub[:encoder_settings].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['inputAttachments'] = Stubs::List____listOfInputAttachment.stub(stub[:input_attachments]) unless stub[:input_attachments].nil?
        data['inputSpecification'] = Stubs::InputSpecification.stub(stub[:input_specification]) unless stub[:input_specification].nil?
        data['logLevel'] = stub[:log_level] unless stub[:log_level].nil?
        data['maintenance'] = Stubs::MaintenanceStatus.stub(stub[:maintenance]) unless stub[:maintenance].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['pipelineDetails'] = Stubs::List____listOfPipelineDetail.stub(stub[:pipeline_details]) unless stub[:pipeline_details].nil?
        data['pipelinesRunningCount'] = stub[:pipelines_running_count] unless stub[:pipelines_running_count].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['vpc'] = Stubs::VpcOutputSettingsDescription.stub(stub[:vpc]) unless stub[:vpc].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StartMultiplex
    class StartMultiplex
      def self.default(visited=[])
        {
          arn: 'arn',
          availability_zones: Stubs::List____listOf__string.default(visited),
          destinations: Stubs::List____listOfMultiplexOutputDestination.default(visited),
          id: 'id',
          multiplex_settings: Stubs::MultiplexSettings.default(visited),
          name: 'name',
          pipelines_running_count: 1,
          program_count: 1,
          state: 'state',
          tags: Stubs::Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['availabilityZones'] = Stubs::List____listOf__string.stub(stub[:availability_zones]) unless stub[:availability_zones].nil?
        data['destinations'] = Stubs::List____listOfMultiplexOutputDestination.stub(stub[:destinations]) unless stub[:destinations].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['multiplexSettings'] = Stubs::MultiplexSettings.stub(stub[:multiplex_settings]) unless stub[:multiplex_settings].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['pipelinesRunningCount'] = stub[:pipelines_running_count] unless stub[:pipelines_running_count].nil?
        data['programCount'] = stub[:program_count] unless stub[:program_count].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StopChannel
    class StopChannel
      def self.default(visited=[])
        {
          arn: 'arn',
          cdi_input_specification: Stubs::CdiInputSpecification.default(visited),
          channel_class: 'channel_class',
          destinations: Stubs::List____listOfOutputDestination.default(visited),
          egress_endpoints: Stubs::List____listOfChannelEgressEndpoint.default(visited),
          encoder_settings: Stubs::EncoderSettings.default(visited),
          id: 'id',
          input_attachments: Stubs::List____listOfInputAttachment.default(visited),
          input_specification: Stubs::InputSpecification.default(visited),
          log_level: 'log_level',
          maintenance: Stubs::MaintenanceStatus.default(visited),
          name: 'name',
          pipeline_details: Stubs::List____listOfPipelineDetail.default(visited),
          pipelines_running_count: 1,
          role_arn: 'role_arn',
          state: 'state',
          tags: Stubs::Tags.default(visited),
          vpc: Stubs::VpcOutputSettingsDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['cdiInputSpecification'] = Stubs::CdiInputSpecification.stub(stub[:cdi_input_specification]) unless stub[:cdi_input_specification].nil?
        data['channelClass'] = stub[:channel_class] unless stub[:channel_class].nil?
        data['destinations'] = Stubs::List____listOfOutputDestination.stub(stub[:destinations]) unless stub[:destinations].nil?
        data['egressEndpoints'] = Stubs::List____listOfChannelEgressEndpoint.stub(stub[:egress_endpoints]) unless stub[:egress_endpoints].nil?
        data['encoderSettings'] = Stubs::EncoderSettings.stub(stub[:encoder_settings]) unless stub[:encoder_settings].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['inputAttachments'] = Stubs::List____listOfInputAttachment.stub(stub[:input_attachments]) unless stub[:input_attachments].nil?
        data['inputSpecification'] = Stubs::InputSpecification.stub(stub[:input_specification]) unless stub[:input_specification].nil?
        data['logLevel'] = stub[:log_level] unless stub[:log_level].nil?
        data['maintenance'] = Stubs::MaintenanceStatus.stub(stub[:maintenance]) unless stub[:maintenance].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['pipelineDetails'] = Stubs::List____listOfPipelineDetail.stub(stub[:pipeline_details]) unless stub[:pipeline_details].nil?
        data['pipelinesRunningCount'] = stub[:pipelines_running_count] unless stub[:pipelines_running_count].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['vpc'] = Stubs::VpcOutputSettingsDescription.stub(stub[:vpc]) unless stub[:vpc].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StopMultiplex
    class StopMultiplex
      def self.default(visited=[])
        {
          arn: 'arn',
          availability_zones: Stubs::List____listOf__string.default(visited),
          destinations: Stubs::List____listOfMultiplexOutputDestination.default(visited),
          id: 'id',
          multiplex_settings: Stubs::MultiplexSettings.default(visited),
          name: 'name',
          pipelines_running_count: 1,
          program_count: 1,
          state: 'state',
          tags: Stubs::Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['availabilityZones'] = Stubs::List____listOf__string.stub(stub[:availability_zones]) unless stub[:availability_zones].nil?
        data['destinations'] = Stubs::List____listOfMultiplexOutputDestination.stub(stub[:destinations]) unless stub[:destinations].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['multiplexSettings'] = Stubs::MultiplexSettings.stub(stub[:multiplex_settings]) unless stub[:multiplex_settings].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['pipelinesRunningCount'] = stub[:pipelines_running_count] unless stub[:pipelines_running_count].nil?
        data['programCount'] = stub[:program_count] unless stub[:program_count].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for TransferInputDevice
    class TransferInputDevice
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateChannel
    class UpdateChannel
      def self.default(visited=[])
        {
          channel: Stubs::Channel.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['channel'] = Stubs::Channel.stub(stub[:channel]) unless stub[:channel].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateChannelClass
    class UpdateChannelClass
      def self.default(visited=[])
        {
          channel: Stubs::Channel.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['channel'] = Stubs::Channel.stub(stub[:channel]) unless stub[:channel].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateInput
    class UpdateInput
      def self.default(visited=[])
        {
          input: Stubs::Input.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['input'] = Stubs::Input.stub(stub[:input]) unless stub[:input].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateInputDevice
    class UpdateInputDevice
      def self.default(visited=[])
        {
          arn: 'arn',
          connection_state: 'connection_state',
          device_settings_sync_state: 'device_settings_sync_state',
          device_update_status: 'device_update_status',
          hd_device_settings: Stubs::InputDeviceHdSettings.default(visited),
          id: 'id',
          mac_address: 'mac_address',
          name: 'name',
          network_settings: Stubs::InputDeviceNetworkSettings.default(visited),
          serial_number: 'serial_number',
          type: 'type',
          uhd_device_settings: Stubs::InputDeviceUhdSettings.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['connectionState'] = stub[:connection_state] unless stub[:connection_state].nil?
        data['deviceSettingsSyncState'] = stub[:device_settings_sync_state] unless stub[:device_settings_sync_state].nil?
        data['deviceUpdateStatus'] = stub[:device_update_status] unless stub[:device_update_status].nil?
        data['hdDeviceSettings'] = Stubs::InputDeviceHdSettings.stub(stub[:hd_device_settings]) unless stub[:hd_device_settings].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['macAddress'] = stub[:mac_address] unless stub[:mac_address].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['networkSettings'] = Stubs::InputDeviceNetworkSettings.stub(stub[:network_settings]) unless stub[:network_settings].nil?
        data['serialNumber'] = stub[:serial_number] unless stub[:serial_number].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['uhdDeviceSettings'] = Stubs::InputDeviceUhdSettings.stub(stub[:uhd_device_settings]) unless stub[:uhd_device_settings].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateInputSecurityGroup
    class UpdateInputSecurityGroup
      def self.default(visited=[])
        {
          security_group: Stubs::InputSecurityGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['securityGroup'] = Stubs::InputSecurityGroup.stub(stub[:security_group]) unless stub[:security_group].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateMultiplex
    class UpdateMultiplex
      def self.default(visited=[])
        {
          multiplex: Stubs::Multiplex.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['multiplex'] = Stubs::Multiplex.stub(stub[:multiplex]) unless stub[:multiplex].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateMultiplexProgram
    class UpdateMultiplexProgram
      def self.default(visited=[])
        {
          multiplex_program: Stubs::MultiplexProgram.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['multiplexProgram'] = Stubs::MultiplexProgram.stub(stub[:multiplex_program]) unless stub[:multiplex_program].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateReservation
    class UpdateReservation
      def self.default(visited=[])
        {
          reservation: Stubs::Reservation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['reservation'] = Stubs::Reservation.stub(stub[:reservation]) unless stub[:reservation].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
