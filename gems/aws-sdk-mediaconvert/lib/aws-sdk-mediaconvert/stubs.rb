# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::MediaConvert
  module Stubs

    # Operation Stubber for AssociateCertificate
    class AssociateCertificate
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
      end
    end

    # Operation Stubber for CancelJob
    class CancelJob
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
      end
    end

    # Operation Stubber for CreateJob
    class CreateJob
      def self.default(visited=[])
        {
          job: Stubs::Job.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['job'] = Stubs::Job.stub(stub[:job]) unless stub[:job].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Job
    class Job
      def self.default(visited=[])
        return nil if visited.include?('Job')
        visited = visited + ['Job']
        {
          acceleration_settings: Stubs::AccelerationSettings.default(visited),
          acceleration_status: 'acceleration_status',
          arn: 'arn',
          billing_tags_source: 'billing_tags_source',
          created_at: Time.now,
          current_phase: 'current_phase',
          error_code: 1,
          error_message: 'error_message',
          hop_destinations: Stubs::List____listOfHopDestination.default(visited),
          id: 'id',
          job_percent_complete: 1,
          job_template: 'job_template',
          messages: Stubs::JobMessages.default(visited),
          output_group_details: Stubs::List____listOfOutputGroupDetail.default(visited),
          priority: 1,
          queue: 'queue',
          queue_transitions: Stubs::List____listOfQueueTransition.default(visited),
          retry_count: 1,
          role: 'role',
          settings: Stubs::JobSettings.default(visited),
          simulate_reserved_queue: 'simulate_reserved_queue',
          status: 'status',
          status_update_interval: 'status_update_interval',
          timing: Stubs::Timing.default(visited),
          user_metadata: Stubs::Map____mapOf__string.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Job.new
        data = {}
        data['accelerationSettings'] = Stubs::AccelerationSettings.stub(stub[:acceleration_settings]) unless stub[:acceleration_settings].nil?
        data['accelerationStatus'] = stub[:acceleration_status] unless stub[:acceleration_status].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['billingTagsSource'] = stub[:billing_tags_source] unless stub[:billing_tags_source].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['currentPhase'] = stub[:current_phase] unless stub[:current_phase].nil?
        data['errorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['errorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data['hopDestinations'] = Stubs::List____listOfHopDestination.stub(stub[:hop_destinations]) unless stub[:hop_destinations].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['jobPercentComplete'] = stub[:job_percent_complete] unless stub[:job_percent_complete].nil?
        data['jobTemplate'] = stub[:job_template] unless stub[:job_template].nil?
        data['messages'] = Stubs::JobMessages.stub(stub[:messages]) unless stub[:messages].nil?
        data['outputGroupDetails'] = Stubs::List____listOfOutputGroupDetail.stub(stub[:output_group_details]) unless stub[:output_group_details].nil?
        data['priority'] = stub[:priority] unless stub[:priority].nil?
        data['queue'] = stub[:queue] unless stub[:queue].nil?
        data['queueTransitions'] = Stubs::List____listOfQueueTransition.stub(stub[:queue_transitions]) unless stub[:queue_transitions].nil?
        data['retryCount'] = stub[:retry_count] unless stub[:retry_count].nil?
        data['role'] = stub[:role] unless stub[:role].nil?
        data['settings'] = Stubs::JobSettings.stub(stub[:settings]) unless stub[:settings].nil?
        data['simulateReservedQueue'] = stub[:simulate_reserved_queue] unless stub[:simulate_reserved_queue].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['statusUpdateInterval'] = stub[:status_update_interval] unless stub[:status_update_interval].nil?
        data['timing'] = Stubs::Timing.stub(stub[:timing]) unless stub[:timing].nil?
        data['userMetadata'] = Stubs::Map____mapOf__string.stub(stub[:user_metadata]) unless stub[:user_metadata].nil?
        data
      end
    end

    # Map Stubber for __mapOf__string
    class Map____mapOf__string
      def self.default(visited=[])
        return nil if visited.include?('Map____mapOf__string')
        visited = visited + ['Map____mapOf__string']
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

    # Structure Stubber for Timing
    class Timing
      def self.default(visited=[])
        return nil if visited.include?('Timing')
        visited = visited + ['Timing']
        {
          finish_time: Time.now,
          start_time: Time.now,
          submit_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Timing.new
        data = {}
        data['finishTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:finish_time]).to_i unless stub[:finish_time].nil?
        data['startTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['submitTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:submit_time]).to_i unless stub[:submit_time].nil?
        data
      end
    end

    # Structure Stubber for JobSettings
    class JobSettings
      def self.default(visited=[])
        return nil if visited.include?('JobSettings')
        visited = visited + ['JobSettings']
        {
          ad_avail_offset: 1,
          avail_blanking: Stubs::AvailBlanking.default(visited),
          esam: Stubs::EsamSettings.default(visited),
          extended_data_services: Stubs::ExtendedDataServices.default(visited),
          inputs: Stubs::List____listOfInput.default(visited),
          kantar_watermark: Stubs::KantarWatermarkSettings.default(visited),
          motion_image_inserter: Stubs::MotionImageInserter.default(visited),
          nielsen_configuration: Stubs::NielsenConfiguration.default(visited),
          nielsen_non_linear_watermark: Stubs::NielsenNonLinearWatermarkSettings.default(visited),
          output_groups: Stubs::List____listOfOutputGroup.default(visited),
          timecode_config: Stubs::TimecodeConfig.default(visited),
          timed_metadata_insertion: Stubs::TimedMetadataInsertion.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::JobSettings.new
        data = {}
        data['adAvailOffset'] = stub[:ad_avail_offset] unless stub[:ad_avail_offset].nil?
        data['availBlanking'] = Stubs::AvailBlanking.stub(stub[:avail_blanking]) unless stub[:avail_blanking].nil?
        data['esam'] = Stubs::EsamSettings.stub(stub[:esam]) unless stub[:esam].nil?
        data['extendedDataServices'] = Stubs::ExtendedDataServices.stub(stub[:extended_data_services]) unless stub[:extended_data_services].nil?
        data['inputs'] = Stubs::List____listOfInput.stub(stub[:inputs]) unless stub[:inputs].nil?
        data['kantarWatermark'] = Stubs::KantarWatermarkSettings.stub(stub[:kantar_watermark]) unless stub[:kantar_watermark].nil?
        data['motionImageInserter'] = Stubs::MotionImageInserter.stub(stub[:motion_image_inserter]) unless stub[:motion_image_inserter].nil?
        data['nielsenConfiguration'] = Stubs::NielsenConfiguration.stub(stub[:nielsen_configuration]) unless stub[:nielsen_configuration].nil?
        data['nielsenNonLinearWatermark'] = Stubs::NielsenNonLinearWatermarkSettings.stub(stub[:nielsen_non_linear_watermark]) unless stub[:nielsen_non_linear_watermark].nil?
        data['outputGroups'] = Stubs::List____listOfOutputGroup.stub(stub[:output_groups]) unless stub[:output_groups].nil?
        data['timecodeConfig'] = Stubs::TimecodeConfig.stub(stub[:timecode_config]) unless stub[:timecode_config].nil?
        data['timedMetadataInsertion'] = Stubs::TimedMetadataInsertion.stub(stub[:timed_metadata_insertion]) unless stub[:timed_metadata_insertion].nil?
        data
      end
    end

    # Structure Stubber for TimedMetadataInsertion
    class TimedMetadataInsertion
      def self.default(visited=[])
        return nil if visited.include?('TimedMetadataInsertion')
        visited = visited + ['TimedMetadataInsertion']
        {
          id3_insertions: Stubs::List____listOfId3Insertion.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TimedMetadataInsertion.new
        data = {}
        data['id3Insertions'] = Stubs::List____listOfId3Insertion.stub(stub[:id3_insertions]) unless stub[:id3_insertions].nil?
        data
      end
    end

    # List Stubber for __listOfId3Insertion
    class List____listOfId3Insertion
      def self.default(visited=[])
        return nil if visited.include?('List____listOfId3Insertion')
        visited = visited + ['List____listOfId3Insertion']
        [
          Stubs::Id3Insertion.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Id3Insertion.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Id3Insertion
    class Id3Insertion
      def self.default(visited=[])
        return nil if visited.include?('Id3Insertion')
        visited = visited + ['Id3Insertion']
        {
          id3: 'id3',
          timecode: 'timecode',
        }
      end

      def self.stub(stub)
        stub ||= Types::Id3Insertion.new
        data = {}
        data['id3'] = stub[:id3] unless stub[:id3].nil?
        data['timecode'] = stub[:timecode] unless stub[:timecode].nil?
        data
      end
    end

    # Structure Stubber for TimecodeConfig
    class TimecodeConfig
      def self.default(visited=[])
        return nil if visited.include?('TimecodeConfig')
        visited = visited + ['TimecodeConfig']
        {
          anchor: 'anchor',
          source: 'source',
          start: 'start',
          timestamp_offset: 'timestamp_offset',
        }
      end

      def self.stub(stub)
        stub ||= Types::TimecodeConfig.new
        data = {}
        data['anchor'] = stub[:anchor] unless stub[:anchor].nil?
        data['source'] = stub[:source] unless stub[:source].nil?
        data['start'] = stub[:start] unless stub[:start].nil?
        data['timestampOffset'] = stub[:timestamp_offset] unless stub[:timestamp_offset].nil?
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
          automated_encoding_settings: Stubs::AutomatedEncodingSettings.default(visited),
          custom_name: 'custom_name',
          name: 'name',
          output_group_settings: Stubs::OutputGroupSettings.default(visited),
          outputs: Stubs::List____listOfOutput.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::OutputGroup.new
        data = {}
        data['automatedEncodingSettings'] = Stubs::AutomatedEncodingSettings.stub(stub[:automated_encoding_settings]) unless stub[:automated_encoding_settings].nil?
        data['customName'] = stub[:custom_name] unless stub[:custom_name].nil?
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
          audio_descriptions: Stubs::List____listOfAudioDescription.default(visited),
          caption_descriptions: Stubs::List____listOfCaptionDescription.default(visited),
          container_settings: Stubs::ContainerSettings.default(visited),
          extension: 'extension',
          name_modifier: 'name_modifier',
          output_settings: Stubs::OutputSettings.default(visited),
          preset: 'preset',
          video_description: Stubs::VideoDescription.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Output.new
        data = {}
        data['audioDescriptions'] = Stubs::List____listOfAudioDescription.stub(stub[:audio_descriptions]) unless stub[:audio_descriptions].nil?
        data['captionDescriptions'] = Stubs::List____listOfCaptionDescription.stub(stub[:caption_descriptions]) unless stub[:caption_descriptions].nil?
        data['containerSettings'] = Stubs::ContainerSettings.stub(stub[:container_settings]) unless stub[:container_settings].nil?
        data['extension'] = stub[:extension] unless stub[:extension].nil?
        data['nameModifier'] = stub[:name_modifier] unless stub[:name_modifier].nil?
        data['outputSettings'] = Stubs::OutputSettings.stub(stub[:output_settings]) unless stub[:output_settings].nil?
        data['preset'] = stub[:preset] unless stub[:preset].nil?
        data['videoDescription'] = Stubs::VideoDescription.stub(stub[:video_description]) unless stub[:video_description].nil?
        data
      end
    end

    # Structure Stubber for VideoDescription
    class VideoDescription
      def self.default(visited=[])
        return nil if visited.include?('VideoDescription')
        visited = visited + ['VideoDescription']
        {
          afd_signaling: 'afd_signaling',
          anti_alias: 'anti_alias',
          codec_settings: Stubs::VideoCodecSettings.default(visited),
          color_metadata: 'color_metadata',
          crop: Stubs::Rectangle.default(visited),
          drop_frame_timecode: 'drop_frame_timecode',
          fixed_afd: 1,
          height: 1,
          position: Stubs::Rectangle.default(visited),
          respond_to_afd: 'respond_to_afd',
          scaling_behavior: 'scaling_behavior',
          sharpness: 1,
          timecode_insertion: 'timecode_insertion',
          video_preprocessors: Stubs::VideoPreprocessor.default(visited),
          width: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::VideoDescription.new
        data = {}
        data['afdSignaling'] = stub[:afd_signaling] unless stub[:afd_signaling].nil?
        data['antiAlias'] = stub[:anti_alias] unless stub[:anti_alias].nil?
        data['codecSettings'] = Stubs::VideoCodecSettings.stub(stub[:codec_settings]) unless stub[:codec_settings].nil?
        data['colorMetadata'] = stub[:color_metadata] unless stub[:color_metadata].nil?
        data['crop'] = Stubs::Rectangle.stub(stub[:crop]) unless stub[:crop].nil?
        data['dropFrameTimecode'] = stub[:drop_frame_timecode] unless stub[:drop_frame_timecode].nil?
        data['fixedAfd'] = stub[:fixed_afd] unless stub[:fixed_afd].nil?
        data['height'] = stub[:height] unless stub[:height].nil?
        data['position'] = Stubs::Rectangle.stub(stub[:position]) unless stub[:position].nil?
        data['respondToAfd'] = stub[:respond_to_afd] unless stub[:respond_to_afd].nil?
        data['scalingBehavior'] = stub[:scaling_behavior] unless stub[:scaling_behavior].nil?
        data['sharpness'] = stub[:sharpness] unless stub[:sharpness].nil?
        data['timecodeInsertion'] = stub[:timecode_insertion] unless stub[:timecode_insertion].nil?
        data['videoPreprocessors'] = Stubs::VideoPreprocessor.stub(stub[:video_preprocessors]) unless stub[:video_preprocessors].nil?
        data['width'] = stub[:width] unless stub[:width].nil?
        data
      end
    end

    # Structure Stubber for VideoPreprocessor
    class VideoPreprocessor
      def self.default(visited=[])
        return nil if visited.include?('VideoPreprocessor')
        visited = visited + ['VideoPreprocessor']
        {
          color_corrector: Stubs::ColorCorrector.default(visited),
          deinterlacer: Stubs::Deinterlacer.default(visited),
          dolby_vision: Stubs::DolbyVision.default(visited),
          hdr10_plus: Stubs::Hdr10Plus.default(visited),
          image_inserter: Stubs::ImageInserter.default(visited),
          noise_reducer: Stubs::NoiseReducer.default(visited),
          partner_watermarking: Stubs::PartnerWatermarking.default(visited),
          timecode_burnin: Stubs::TimecodeBurnin.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::VideoPreprocessor.new
        data = {}
        data['colorCorrector'] = Stubs::ColorCorrector.stub(stub[:color_corrector]) unless stub[:color_corrector].nil?
        data['deinterlacer'] = Stubs::Deinterlacer.stub(stub[:deinterlacer]) unless stub[:deinterlacer].nil?
        data['dolbyVision'] = Stubs::DolbyVision.stub(stub[:dolby_vision]) unless stub[:dolby_vision].nil?
        data['hdr10Plus'] = Stubs::Hdr10Plus.stub(stub[:hdr10_plus]) unless stub[:hdr10_plus].nil?
        data['imageInserter'] = Stubs::ImageInserter.stub(stub[:image_inserter]) unless stub[:image_inserter].nil?
        data['noiseReducer'] = Stubs::NoiseReducer.stub(stub[:noise_reducer]) unless stub[:noise_reducer].nil?
        data['partnerWatermarking'] = Stubs::PartnerWatermarking.stub(stub[:partner_watermarking]) unless stub[:partner_watermarking].nil?
        data['timecodeBurnin'] = Stubs::TimecodeBurnin.stub(stub[:timecode_burnin]) unless stub[:timecode_burnin].nil?
        data
      end
    end

    # Structure Stubber for TimecodeBurnin
    class TimecodeBurnin
      def self.default(visited=[])
        return nil if visited.include?('TimecodeBurnin')
        visited = visited + ['TimecodeBurnin']
        {
          font_size: 1,
          position: 'position',
          prefix: 'prefix',
        }
      end

      def self.stub(stub)
        stub ||= Types::TimecodeBurnin.new
        data = {}
        data['fontSize'] = stub[:font_size] unless stub[:font_size].nil?
        data['position'] = stub[:position] unless stub[:position].nil?
        data['prefix'] = stub[:prefix] unless stub[:prefix].nil?
        data
      end
    end

    # Structure Stubber for PartnerWatermarking
    class PartnerWatermarking
      def self.default(visited=[])
        return nil if visited.include?('PartnerWatermarking')
        visited = visited + ['PartnerWatermarking']
        {
          nexguard_file_marker_settings: Stubs::NexGuardFileMarkerSettings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PartnerWatermarking.new
        data = {}
        data['nexguardFileMarkerSettings'] = Stubs::NexGuardFileMarkerSettings.stub(stub[:nexguard_file_marker_settings]) unless stub[:nexguard_file_marker_settings].nil?
        data
      end
    end

    # Structure Stubber for NexGuardFileMarkerSettings
    class NexGuardFileMarkerSettings
      def self.default(visited=[])
        return nil if visited.include?('NexGuardFileMarkerSettings')
        visited = visited + ['NexGuardFileMarkerSettings']
        {
          license: 'license',
          payload: 1,
          preset: 'preset',
          strength: 'strength',
        }
      end

      def self.stub(stub)
        stub ||= Types::NexGuardFileMarkerSettings.new
        data = {}
        data['license'] = stub[:license] unless stub[:license].nil?
        data['payload'] = stub[:payload] unless stub[:payload].nil?
        data['preset'] = stub[:preset] unless stub[:preset].nil?
        data['strength'] = stub[:strength] unless stub[:strength].nil?
        data
      end
    end

    # Structure Stubber for NoiseReducer
    class NoiseReducer
      def self.default(visited=[])
        return nil if visited.include?('NoiseReducer')
        visited = visited + ['NoiseReducer']
        {
          filter: 'filter',
          filter_settings: Stubs::NoiseReducerFilterSettings.default(visited),
          spatial_filter_settings: Stubs::NoiseReducerSpatialFilterSettings.default(visited),
          temporal_filter_settings: Stubs::NoiseReducerTemporalFilterSettings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::NoiseReducer.new
        data = {}
        data['filter'] = stub[:filter] unless stub[:filter].nil?
        data['filterSettings'] = Stubs::NoiseReducerFilterSettings.stub(stub[:filter_settings]) unless stub[:filter_settings].nil?
        data['spatialFilterSettings'] = Stubs::NoiseReducerSpatialFilterSettings.stub(stub[:spatial_filter_settings]) unless stub[:spatial_filter_settings].nil?
        data['temporalFilterSettings'] = Stubs::NoiseReducerTemporalFilterSettings.stub(stub[:temporal_filter_settings]) unless stub[:temporal_filter_settings].nil?
        data
      end
    end

    # Structure Stubber for NoiseReducerTemporalFilterSettings
    class NoiseReducerTemporalFilterSettings
      def self.default(visited=[])
        return nil if visited.include?('NoiseReducerTemporalFilterSettings')
        visited = visited + ['NoiseReducerTemporalFilterSettings']
        {
          aggressive_mode: 1,
          post_temporal_sharpening: 'post_temporal_sharpening',
          post_temporal_sharpening_strength: 'post_temporal_sharpening_strength',
          speed: 1,
          strength: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::NoiseReducerTemporalFilterSettings.new
        data = {}
        data['aggressiveMode'] = stub[:aggressive_mode] unless stub[:aggressive_mode].nil?
        data['postTemporalSharpening'] = stub[:post_temporal_sharpening] unless stub[:post_temporal_sharpening].nil?
        data['postTemporalSharpeningStrength'] = stub[:post_temporal_sharpening_strength] unless stub[:post_temporal_sharpening_strength].nil?
        data['speed'] = stub[:speed] unless stub[:speed].nil?
        data['strength'] = stub[:strength] unless stub[:strength].nil?
        data
      end
    end

    # Structure Stubber for NoiseReducerSpatialFilterSettings
    class NoiseReducerSpatialFilterSettings
      def self.default(visited=[])
        return nil if visited.include?('NoiseReducerSpatialFilterSettings')
        visited = visited + ['NoiseReducerSpatialFilterSettings']
        {
          post_filter_sharpen_strength: 1,
          speed: 1,
          strength: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::NoiseReducerSpatialFilterSettings.new
        data = {}
        data['postFilterSharpenStrength'] = stub[:post_filter_sharpen_strength] unless stub[:post_filter_sharpen_strength].nil?
        data['speed'] = stub[:speed] unless stub[:speed].nil?
        data['strength'] = stub[:strength] unless stub[:strength].nil?
        data
      end
    end

    # Structure Stubber for NoiseReducerFilterSettings
    class NoiseReducerFilterSettings
      def self.default(visited=[])
        return nil if visited.include?('NoiseReducerFilterSettings')
        visited = visited + ['NoiseReducerFilterSettings']
        {
          strength: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::NoiseReducerFilterSettings.new
        data = {}
        data['strength'] = stub[:strength] unless stub[:strength].nil?
        data
      end
    end

    # Structure Stubber for ImageInserter
    class ImageInserter
      def self.default(visited=[])
        return nil if visited.include?('ImageInserter')
        visited = visited + ['ImageInserter']
        {
          insertable_images: Stubs::List____listOfInsertableImage.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ImageInserter.new
        data = {}
        data['insertableImages'] = Stubs::List____listOfInsertableImage.stub(stub[:insertable_images]) unless stub[:insertable_images].nil?
        data
      end
    end

    # List Stubber for __listOfInsertableImage
    class List____listOfInsertableImage
      def self.default(visited=[])
        return nil if visited.include?('List____listOfInsertableImage')
        visited = visited + ['List____listOfInsertableImage']
        [
          Stubs::InsertableImage.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::InsertableImage.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for InsertableImage
    class InsertableImage
      def self.default(visited=[])
        return nil if visited.include?('InsertableImage')
        visited = visited + ['InsertableImage']
        {
          duration: 1,
          fade_in: 1,
          fade_out: 1,
          height: 1,
          image_inserter_input: 'image_inserter_input',
          image_x: 1,
          image_y: 1,
          layer: 1,
          opacity: 1,
          start_time: 'start_time',
          width: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::InsertableImage.new
        data = {}
        data['duration'] = stub[:duration] unless stub[:duration].nil?
        data['fadeIn'] = stub[:fade_in] unless stub[:fade_in].nil?
        data['fadeOut'] = stub[:fade_out] unless stub[:fade_out].nil?
        data['height'] = stub[:height] unless stub[:height].nil?
        data['imageInserterInput'] = stub[:image_inserter_input] unless stub[:image_inserter_input].nil?
        data['imageX'] = stub[:image_x] unless stub[:image_x].nil?
        data['imageY'] = stub[:image_y] unless stub[:image_y].nil?
        data['layer'] = stub[:layer] unless stub[:layer].nil?
        data['opacity'] = stub[:opacity] unless stub[:opacity].nil?
        data['startTime'] = stub[:start_time] unless stub[:start_time].nil?
        data['width'] = stub[:width] unless stub[:width].nil?
        data
      end
    end

    # Structure Stubber for Hdr10Plus
    class Hdr10Plus
      def self.default(visited=[])
        return nil if visited.include?('Hdr10Plus')
        visited = visited + ['Hdr10Plus']
        {
          mastering_monitor_nits: 1,
          target_monitor_nits: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::Hdr10Plus.new
        data = {}
        data['masteringMonitorNits'] = stub[:mastering_monitor_nits] unless stub[:mastering_monitor_nits].nil?
        data['targetMonitorNits'] = stub[:target_monitor_nits] unless stub[:target_monitor_nits].nil?
        data
      end
    end

    # Structure Stubber for DolbyVision
    class DolbyVision
      def self.default(visited=[])
        return nil if visited.include?('DolbyVision')
        visited = visited + ['DolbyVision']
        {
          l6_metadata: Stubs::DolbyVisionLevel6Metadata.default(visited),
          l6_mode: 'l6_mode',
          mapping: 'mapping',
          profile: 'profile',
        }
      end

      def self.stub(stub)
        stub ||= Types::DolbyVision.new
        data = {}
        data['l6Metadata'] = Stubs::DolbyVisionLevel6Metadata.stub(stub[:l6_metadata]) unless stub[:l6_metadata].nil?
        data['l6Mode'] = stub[:l6_mode] unless stub[:l6_mode].nil?
        data['mapping'] = stub[:mapping] unless stub[:mapping].nil?
        data['profile'] = stub[:profile] unless stub[:profile].nil?
        data
      end
    end

    # Structure Stubber for DolbyVisionLevel6Metadata
    class DolbyVisionLevel6Metadata
      def self.default(visited=[])
        return nil if visited.include?('DolbyVisionLevel6Metadata')
        visited = visited + ['DolbyVisionLevel6Metadata']
        {
          max_cll: 1,
          max_fall: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::DolbyVisionLevel6Metadata.new
        data = {}
        data['maxCll'] = stub[:max_cll] unless stub[:max_cll].nil?
        data['maxFall'] = stub[:max_fall] unless stub[:max_fall].nil?
        data
      end
    end

    # Structure Stubber for Deinterlacer
    class Deinterlacer
      def self.default(visited=[])
        return nil if visited.include?('Deinterlacer')
        visited = visited + ['Deinterlacer']
        {
          algorithm: 'algorithm',
          control: 'control',
          mode: 'mode',
        }
      end

      def self.stub(stub)
        stub ||= Types::Deinterlacer.new
        data = {}
        data['algorithm'] = stub[:algorithm] unless stub[:algorithm].nil?
        data['control'] = stub[:control] unless stub[:control].nil?
        data['mode'] = stub[:mode] unless stub[:mode].nil?
        data
      end
    end

    # Structure Stubber for ColorCorrector
    class ColorCorrector
      def self.default(visited=[])
        return nil if visited.include?('ColorCorrector')
        visited = visited + ['ColorCorrector']
        {
          brightness: 1,
          color_space_conversion: 'color_space_conversion',
          contrast: 1,
          hdr10_metadata: Stubs::Hdr10Metadata.default(visited),
          hue: 1,
          sample_range_conversion: 'sample_range_conversion',
          saturation: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ColorCorrector.new
        data = {}
        data['brightness'] = stub[:brightness] unless stub[:brightness].nil?
        data['colorSpaceConversion'] = stub[:color_space_conversion] unless stub[:color_space_conversion].nil?
        data['contrast'] = stub[:contrast] unless stub[:contrast].nil?
        data['hdr10Metadata'] = Stubs::Hdr10Metadata.stub(stub[:hdr10_metadata]) unless stub[:hdr10_metadata].nil?
        data['hue'] = stub[:hue] unless stub[:hue].nil?
        data['sampleRangeConversion'] = stub[:sample_range_conversion] unless stub[:sample_range_conversion].nil?
        data['saturation'] = stub[:saturation] unless stub[:saturation].nil?
        data
      end
    end

    # Structure Stubber for Hdr10Metadata
    class Hdr10Metadata
      def self.default(visited=[])
        return nil if visited.include?('Hdr10Metadata')
        visited = visited + ['Hdr10Metadata']
        {
          blue_primary_x: 1,
          blue_primary_y: 1,
          green_primary_x: 1,
          green_primary_y: 1,
          max_content_light_level: 1,
          max_frame_average_light_level: 1,
          max_luminance: 1,
          min_luminance: 1,
          red_primary_x: 1,
          red_primary_y: 1,
          white_point_x: 1,
          white_point_y: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::Hdr10Metadata.new
        data = {}
        data['bluePrimaryX'] = stub[:blue_primary_x] unless stub[:blue_primary_x].nil?
        data['bluePrimaryY'] = stub[:blue_primary_y] unless stub[:blue_primary_y].nil?
        data['greenPrimaryX'] = stub[:green_primary_x] unless stub[:green_primary_x].nil?
        data['greenPrimaryY'] = stub[:green_primary_y] unless stub[:green_primary_y].nil?
        data['maxContentLightLevel'] = stub[:max_content_light_level] unless stub[:max_content_light_level].nil?
        data['maxFrameAverageLightLevel'] = stub[:max_frame_average_light_level] unless stub[:max_frame_average_light_level].nil?
        data['maxLuminance'] = stub[:max_luminance] unless stub[:max_luminance].nil?
        data['minLuminance'] = stub[:min_luminance] unless stub[:min_luminance].nil?
        data['redPrimaryX'] = stub[:red_primary_x] unless stub[:red_primary_x].nil?
        data['redPrimaryY'] = stub[:red_primary_y] unless stub[:red_primary_y].nil?
        data['whitePointX'] = stub[:white_point_x] unless stub[:white_point_x].nil?
        data['whitePointY'] = stub[:white_point_y] unless stub[:white_point_y].nil?
        data
      end
    end

    # Structure Stubber for Rectangle
    class Rectangle
      def self.default(visited=[])
        return nil if visited.include?('Rectangle')
        visited = visited + ['Rectangle']
        {
          height: 1,
          width: 1,
          x: 1,
          y: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::Rectangle.new
        data = {}
        data['height'] = stub[:height] unless stub[:height].nil?
        data['width'] = stub[:width] unless stub[:width].nil?
        data['x'] = stub[:x] unless stub[:x].nil?
        data['y'] = stub[:y] unless stub[:y].nil?
        data
      end
    end

    # Structure Stubber for VideoCodecSettings
    class VideoCodecSettings
      def self.default(visited=[])
        return nil if visited.include?('VideoCodecSettings')
        visited = visited + ['VideoCodecSettings']
        {
          av1_settings: Stubs::Av1Settings.default(visited),
          avc_intra_settings: Stubs::AvcIntraSettings.default(visited),
          codec: 'codec',
          frame_capture_settings: Stubs::FrameCaptureSettings.default(visited),
          h264_settings: Stubs::H264Settings.default(visited),
          h265_settings: Stubs::H265Settings.default(visited),
          mpeg2_settings: Stubs::Mpeg2Settings.default(visited),
          prores_settings: Stubs::ProresSettings.default(visited),
          vc3_settings: Stubs::Vc3Settings.default(visited),
          vp8_settings: Stubs::Vp8Settings.default(visited),
          vp9_settings: Stubs::Vp9Settings.default(visited),
          xavc_settings: Stubs::XavcSettings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::VideoCodecSettings.new
        data = {}
        data['av1Settings'] = Stubs::Av1Settings.stub(stub[:av1_settings]) unless stub[:av1_settings].nil?
        data['avcIntraSettings'] = Stubs::AvcIntraSettings.stub(stub[:avc_intra_settings]) unless stub[:avc_intra_settings].nil?
        data['codec'] = stub[:codec] unless stub[:codec].nil?
        data['frameCaptureSettings'] = Stubs::FrameCaptureSettings.stub(stub[:frame_capture_settings]) unless stub[:frame_capture_settings].nil?
        data['h264Settings'] = Stubs::H264Settings.stub(stub[:h264_settings]) unless stub[:h264_settings].nil?
        data['h265Settings'] = Stubs::H265Settings.stub(stub[:h265_settings]) unless stub[:h265_settings].nil?
        data['mpeg2Settings'] = Stubs::Mpeg2Settings.stub(stub[:mpeg2_settings]) unless stub[:mpeg2_settings].nil?
        data['proresSettings'] = Stubs::ProresSettings.stub(stub[:prores_settings]) unless stub[:prores_settings].nil?
        data['vc3Settings'] = Stubs::Vc3Settings.stub(stub[:vc3_settings]) unless stub[:vc3_settings].nil?
        data['vp8Settings'] = Stubs::Vp8Settings.stub(stub[:vp8_settings]) unless stub[:vp8_settings].nil?
        data['vp9Settings'] = Stubs::Vp9Settings.stub(stub[:vp9_settings]) unless stub[:vp9_settings].nil?
        data['xavcSettings'] = Stubs::XavcSettings.stub(stub[:xavc_settings]) unless stub[:xavc_settings].nil?
        data
      end
    end

    # Structure Stubber for XavcSettings
    class XavcSettings
      def self.default(visited=[])
        return nil if visited.include?('XavcSettings')
        visited = visited + ['XavcSettings']
        {
          adaptive_quantization: 'adaptive_quantization',
          entropy_encoding: 'entropy_encoding',
          framerate_control: 'framerate_control',
          framerate_conversion_algorithm: 'framerate_conversion_algorithm',
          framerate_denominator: 1,
          framerate_numerator: 1,
          profile: 'profile',
          slow_pal: 'slow_pal',
          softness: 1,
          spatial_adaptive_quantization: 'spatial_adaptive_quantization',
          temporal_adaptive_quantization: 'temporal_adaptive_quantization',
          xavc4k_intra_cbg_profile_settings: Stubs::Xavc4kIntraCbgProfileSettings.default(visited),
          xavc4k_intra_vbr_profile_settings: Stubs::Xavc4kIntraVbrProfileSettings.default(visited),
          xavc4k_profile_settings: Stubs::Xavc4kProfileSettings.default(visited),
          xavc_hd_intra_cbg_profile_settings: Stubs::XavcHdIntraCbgProfileSettings.default(visited),
          xavc_hd_profile_settings: Stubs::XavcHdProfileSettings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::XavcSettings.new
        data = {}
        data['adaptiveQuantization'] = stub[:adaptive_quantization] unless stub[:adaptive_quantization].nil?
        data['entropyEncoding'] = stub[:entropy_encoding] unless stub[:entropy_encoding].nil?
        data['framerateControl'] = stub[:framerate_control] unless stub[:framerate_control].nil?
        data['framerateConversionAlgorithm'] = stub[:framerate_conversion_algorithm] unless stub[:framerate_conversion_algorithm].nil?
        data['framerateDenominator'] = stub[:framerate_denominator] unless stub[:framerate_denominator].nil?
        data['framerateNumerator'] = stub[:framerate_numerator] unless stub[:framerate_numerator].nil?
        data['profile'] = stub[:profile] unless stub[:profile].nil?
        data['slowPal'] = stub[:slow_pal] unless stub[:slow_pal].nil?
        data['softness'] = stub[:softness] unless stub[:softness].nil?
        data['spatialAdaptiveQuantization'] = stub[:spatial_adaptive_quantization] unless stub[:spatial_adaptive_quantization].nil?
        data['temporalAdaptiveQuantization'] = stub[:temporal_adaptive_quantization] unless stub[:temporal_adaptive_quantization].nil?
        data['xavc4kIntraCbgProfileSettings'] = Stubs::Xavc4kIntraCbgProfileSettings.stub(stub[:xavc4k_intra_cbg_profile_settings]) unless stub[:xavc4k_intra_cbg_profile_settings].nil?
        data['xavc4kIntraVbrProfileSettings'] = Stubs::Xavc4kIntraVbrProfileSettings.stub(stub[:xavc4k_intra_vbr_profile_settings]) unless stub[:xavc4k_intra_vbr_profile_settings].nil?
        data['xavc4kProfileSettings'] = Stubs::Xavc4kProfileSettings.stub(stub[:xavc4k_profile_settings]) unless stub[:xavc4k_profile_settings].nil?
        data['xavcHdIntraCbgProfileSettings'] = Stubs::XavcHdIntraCbgProfileSettings.stub(stub[:xavc_hd_intra_cbg_profile_settings]) unless stub[:xavc_hd_intra_cbg_profile_settings].nil?
        data['xavcHdProfileSettings'] = Stubs::XavcHdProfileSettings.stub(stub[:xavc_hd_profile_settings]) unless stub[:xavc_hd_profile_settings].nil?
        data
      end
    end

    # Structure Stubber for XavcHdProfileSettings
    class XavcHdProfileSettings
      def self.default(visited=[])
        return nil if visited.include?('XavcHdProfileSettings')
        visited = visited + ['XavcHdProfileSettings']
        {
          bitrate_class: 'bitrate_class',
          flicker_adaptive_quantization: 'flicker_adaptive_quantization',
          gop_b_reference: 'gop_b_reference',
          gop_closed_cadence: 1,
          hrd_buffer_size: 1,
          interlace_mode: 'interlace_mode',
          quality_tuning_level: 'quality_tuning_level',
          slices: 1,
          telecine: 'telecine',
        }
      end

      def self.stub(stub)
        stub ||= Types::XavcHdProfileSettings.new
        data = {}
        data['bitrateClass'] = stub[:bitrate_class] unless stub[:bitrate_class].nil?
        data['flickerAdaptiveQuantization'] = stub[:flicker_adaptive_quantization] unless stub[:flicker_adaptive_quantization].nil?
        data['gopBReference'] = stub[:gop_b_reference] unless stub[:gop_b_reference].nil?
        data['gopClosedCadence'] = stub[:gop_closed_cadence] unless stub[:gop_closed_cadence].nil?
        data['hrdBufferSize'] = stub[:hrd_buffer_size] unless stub[:hrd_buffer_size].nil?
        data['interlaceMode'] = stub[:interlace_mode] unless stub[:interlace_mode].nil?
        data['qualityTuningLevel'] = stub[:quality_tuning_level] unless stub[:quality_tuning_level].nil?
        data['slices'] = stub[:slices] unless stub[:slices].nil?
        data['telecine'] = stub[:telecine] unless stub[:telecine].nil?
        data
      end
    end

    # Structure Stubber for XavcHdIntraCbgProfileSettings
    class XavcHdIntraCbgProfileSettings
      def self.default(visited=[])
        return nil if visited.include?('XavcHdIntraCbgProfileSettings')
        visited = visited + ['XavcHdIntraCbgProfileSettings']
        {
          xavc_class: 'xavc_class',
        }
      end

      def self.stub(stub)
        stub ||= Types::XavcHdIntraCbgProfileSettings.new
        data = {}
        data['xavcClass'] = stub[:xavc_class] unless stub[:xavc_class].nil?
        data
      end
    end

    # Structure Stubber for Xavc4kProfileSettings
    class Xavc4kProfileSettings
      def self.default(visited=[])
        return nil if visited.include?('Xavc4kProfileSettings')
        visited = visited + ['Xavc4kProfileSettings']
        {
          bitrate_class: 'bitrate_class',
          codec_profile: 'codec_profile',
          flicker_adaptive_quantization: 'flicker_adaptive_quantization',
          gop_b_reference: 'gop_b_reference',
          gop_closed_cadence: 1,
          hrd_buffer_size: 1,
          quality_tuning_level: 'quality_tuning_level',
          slices: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::Xavc4kProfileSettings.new
        data = {}
        data['bitrateClass'] = stub[:bitrate_class] unless stub[:bitrate_class].nil?
        data['codecProfile'] = stub[:codec_profile] unless stub[:codec_profile].nil?
        data['flickerAdaptiveQuantization'] = stub[:flicker_adaptive_quantization] unless stub[:flicker_adaptive_quantization].nil?
        data['gopBReference'] = stub[:gop_b_reference] unless stub[:gop_b_reference].nil?
        data['gopClosedCadence'] = stub[:gop_closed_cadence] unless stub[:gop_closed_cadence].nil?
        data['hrdBufferSize'] = stub[:hrd_buffer_size] unless stub[:hrd_buffer_size].nil?
        data['qualityTuningLevel'] = stub[:quality_tuning_level] unless stub[:quality_tuning_level].nil?
        data['slices'] = stub[:slices] unless stub[:slices].nil?
        data
      end
    end

    # Structure Stubber for Xavc4kIntraVbrProfileSettings
    class Xavc4kIntraVbrProfileSettings
      def self.default(visited=[])
        return nil if visited.include?('Xavc4kIntraVbrProfileSettings')
        visited = visited + ['Xavc4kIntraVbrProfileSettings']
        {
          xavc_class: 'xavc_class',
        }
      end

      def self.stub(stub)
        stub ||= Types::Xavc4kIntraVbrProfileSettings.new
        data = {}
        data['xavcClass'] = stub[:xavc_class] unless stub[:xavc_class].nil?
        data
      end
    end

    # Structure Stubber for Xavc4kIntraCbgProfileSettings
    class Xavc4kIntraCbgProfileSettings
      def self.default(visited=[])
        return nil if visited.include?('Xavc4kIntraCbgProfileSettings')
        visited = visited + ['Xavc4kIntraCbgProfileSettings']
        {
          xavc_class: 'xavc_class',
        }
      end

      def self.stub(stub)
        stub ||= Types::Xavc4kIntraCbgProfileSettings.new
        data = {}
        data['xavcClass'] = stub[:xavc_class] unless stub[:xavc_class].nil?
        data
      end
    end

    # Structure Stubber for Vp9Settings
    class Vp9Settings
      def self.default(visited=[])
        return nil if visited.include?('Vp9Settings')
        visited = visited + ['Vp9Settings']
        {
          bitrate: 1,
          framerate_control: 'framerate_control',
          framerate_conversion_algorithm: 'framerate_conversion_algorithm',
          framerate_denominator: 1,
          framerate_numerator: 1,
          gop_size: 1.0,
          hrd_buffer_size: 1,
          max_bitrate: 1,
          par_control: 'par_control',
          par_denominator: 1,
          par_numerator: 1,
          quality_tuning_level: 'quality_tuning_level',
          rate_control_mode: 'rate_control_mode',
        }
      end

      def self.stub(stub)
        stub ||= Types::Vp9Settings.new
        data = {}
        data['bitrate'] = stub[:bitrate] unless stub[:bitrate].nil?
        data['framerateControl'] = stub[:framerate_control] unless stub[:framerate_control].nil?
        data['framerateConversionAlgorithm'] = stub[:framerate_conversion_algorithm] unless stub[:framerate_conversion_algorithm].nil?
        data['framerateDenominator'] = stub[:framerate_denominator] unless stub[:framerate_denominator].nil?
        data['framerateNumerator'] = stub[:framerate_numerator] unless stub[:framerate_numerator].nil?
        data['gopSize'] = Hearth::NumberHelper.serialize(stub[:gop_size])
        data['hrdBufferSize'] = stub[:hrd_buffer_size] unless stub[:hrd_buffer_size].nil?
        data['maxBitrate'] = stub[:max_bitrate] unless stub[:max_bitrate].nil?
        data['parControl'] = stub[:par_control] unless stub[:par_control].nil?
        data['parDenominator'] = stub[:par_denominator] unless stub[:par_denominator].nil?
        data['parNumerator'] = stub[:par_numerator] unless stub[:par_numerator].nil?
        data['qualityTuningLevel'] = stub[:quality_tuning_level] unless stub[:quality_tuning_level].nil?
        data['rateControlMode'] = stub[:rate_control_mode] unless stub[:rate_control_mode].nil?
        data
      end
    end

    # Structure Stubber for Vp8Settings
    class Vp8Settings
      def self.default(visited=[])
        return nil if visited.include?('Vp8Settings')
        visited = visited + ['Vp8Settings']
        {
          bitrate: 1,
          framerate_control: 'framerate_control',
          framerate_conversion_algorithm: 'framerate_conversion_algorithm',
          framerate_denominator: 1,
          framerate_numerator: 1,
          gop_size: 1.0,
          hrd_buffer_size: 1,
          max_bitrate: 1,
          par_control: 'par_control',
          par_denominator: 1,
          par_numerator: 1,
          quality_tuning_level: 'quality_tuning_level',
          rate_control_mode: 'rate_control_mode',
        }
      end

      def self.stub(stub)
        stub ||= Types::Vp8Settings.new
        data = {}
        data['bitrate'] = stub[:bitrate] unless stub[:bitrate].nil?
        data['framerateControl'] = stub[:framerate_control] unless stub[:framerate_control].nil?
        data['framerateConversionAlgorithm'] = stub[:framerate_conversion_algorithm] unless stub[:framerate_conversion_algorithm].nil?
        data['framerateDenominator'] = stub[:framerate_denominator] unless stub[:framerate_denominator].nil?
        data['framerateNumerator'] = stub[:framerate_numerator] unless stub[:framerate_numerator].nil?
        data['gopSize'] = Hearth::NumberHelper.serialize(stub[:gop_size])
        data['hrdBufferSize'] = stub[:hrd_buffer_size] unless stub[:hrd_buffer_size].nil?
        data['maxBitrate'] = stub[:max_bitrate] unless stub[:max_bitrate].nil?
        data['parControl'] = stub[:par_control] unless stub[:par_control].nil?
        data['parDenominator'] = stub[:par_denominator] unless stub[:par_denominator].nil?
        data['parNumerator'] = stub[:par_numerator] unless stub[:par_numerator].nil?
        data['qualityTuningLevel'] = stub[:quality_tuning_level] unless stub[:quality_tuning_level].nil?
        data['rateControlMode'] = stub[:rate_control_mode] unless stub[:rate_control_mode].nil?
        data
      end
    end

    # Structure Stubber for Vc3Settings
    class Vc3Settings
      def self.default(visited=[])
        return nil if visited.include?('Vc3Settings')
        visited = visited + ['Vc3Settings']
        {
          framerate_control: 'framerate_control',
          framerate_conversion_algorithm: 'framerate_conversion_algorithm',
          framerate_denominator: 1,
          framerate_numerator: 1,
          interlace_mode: 'interlace_mode',
          scan_type_conversion_mode: 'scan_type_conversion_mode',
          slow_pal: 'slow_pal',
          telecine: 'telecine',
          vc3_class: 'vc3_class',
        }
      end

      def self.stub(stub)
        stub ||= Types::Vc3Settings.new
        data = {}
        data['framerateControl'] = stub[:framerate_control] unless stub[:framerate_control].nil?
        data['framerateConversionAlgorithm'] = stub[:framerate_conversion_algorithm] unless stub[:framerate_conversion_algorithm].nil?
        data['framerateDenominator'] = stub[:framerate_denominator] unless stub[:framerate_denominator].nil?
        data['framerateNumerator'] = stub[:framerate_numerator] unless stub[:framerate_numerator].nil?
        data['interlaceMode'] = stub[:interlace_mode] unless stub[:interlace_mode].nil?
        data['scanTypeConversionMode'] = stub[:scan_type_conversion_mode] unless stub[:scan_type_conversion_mode].nil?
        data['slowPal'] = stub[:slow_pal] unless stub[:slow_pal].nil?
        data['telecine'] = stub[:telecine] unless stub[:telecine].nil?
        data['vc3Class'] = stub[:vc3_class] unless stub[:vc3_class].nil?
        data
      end
    end

    # Structure Stubber for ProresSettings
    class ProresSettings
      def self.default(visited=[])
        return nil if visited.include?('ProresSettings')
        visited = visited + ['ProresSettings']
        {
          chroma_sampling: 'chroma_sampling',
          codec_profile: 'codec_profile',
          framerate_control: 'framerate_control',
          framerate_conversion_algorithm: 'framerate_conversion_algorithm',
          framerate_denominator: 1,
          framerate_numerator: 1,
          interlace_mode: 'interlace_mode',
          par_control: 'par_control',
          par_denominator: 1,
          par_numerator: 1,
          scan_type_conversion_mode: 'scan_type_conversion_mode',
          slow_pal: 'slow_pal',
          telecine: 'telecine',
        }
      end

      def self.stub(stub)
        stub ||= Types::ProresSettings.new
        data = {}
        data['chromaSampling'] = stub[:chroma_sampling] unless stub[:chroma_sampling].nil?
        data['codecProfile'] = stub[:codec_profile] unless stub[:codec_profile].nil?
        data['framerateControl'] = stub[:framerate_control] unless stub[:framerate_control].nil?
        data['framerateConversionAlgorithm'] = stub[:framerate_conversion_algorithm] unless stub[:framerate_conversion_algorithm].nil?
        data['framerateDenominator'] = stub[:framerate_denominator] unless stub[:framerate_denominator].nil?
        data['framerateNumerator'] = stub[:framerate_numerator] unless stub[:framerate_numerator].nil?
        data['interlaceMode'] = stub[:interlace_mode] unless stub[:interlace_mode].nil?
        data['parControl'] = stub[:par_control] unless stub[:par_control].nil?
        data['parDenominator'] = stub[:par_denominator] unless stub[:par_denominator].nil?
        data['parNumerator'] = stub[:par_numerator] unless stub[:par_numerator].nil?
        data['scanTypeConversionMode'] = stub[:scan_type_conversion_mode] unless stub[:scan_type_conversion_mode].nil?
        data['slowPal'] = stub[:slow_pal] unless stub[:slow_pal].nil?
        data['telecine'] = stub[:telecine] unless stub[:telecine].nil?
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
          bitrate: 1,
          codec_level: 'codec_level',
          codec_profile: 'codec_profile',
          dynamic_sub_gop: 'dynamic_sub_gop',
          framerate_control: 'framerate_control',
          framerate_conversion_algorithm: 'framerate_conversion_algorithm',
          framerate_denominator: 1,
          framerate_numerator: 1,
          gop_closed_cadence: 1,
          gop_size: 1.0,
          gop_size_units: 'gop_size_units',
          hrd_buffer_initial_fill_percentage: 1,
          hrd_buffer_size: 1,
          interlace_mode: 'interlace_mode',
          intra_dc_precision: 'intra_dc_precision',
          max_bitrate: 1,
          min_i_interval: 1,
          number_b_frames_between_reference_frames: 1,
          par_control: 'par_control',
          par_denominator: 1,
          par_numerator: 1,
          quality_tuning_level: 'quality_tuning_level',
          rate_control_mode: 'rate_control_mode',
          scan_type_conversion_mode: 'scan_type_conversion_mode',
          scene_change_detect: 'scene_change_detect',
          slow_pal: 'slow_pal',
          softness: 1,
          spatial_adaptive_quantization: 'spatial_adaptive_quantization',
          syntax: 'syntax',
          telecine: 'telecine',
          temporal_adaptive_quantization: 'temporal_adaptive_quantization',
        }
      end

      def self.stub(stub)
        stub ||= Types::Mpeg2Settings.new
        data = {}
        data['adaptiveQuantization'] = stub[:adaptive_quantization] unless stub[:adaptive_quantization].nil?
        data['bitrate'] = stub[:bitrate] unless stub[:bitrate].nil?
        data['codecLevel'] = stub[:codec_level] unless stub[:codec_level].nil?
        data['codecProfile'] = stub[:codec_profile] unless stub[:codec_profile].nil?
        data['dynamicSubGop'] = stub[:dynamic_sub_gop] unless stub[:dynamic_sub_gop].nil?
        data['framerateControl'] = stub[:framerate_control] unless stub[:framerate_control].nil?
        data['framerateConversionAlgorithm'] = stub[:framerate_conversion_algorithm] unless stub[:framerate_conversion_algorithm].nil?
        data['framerateDenominator'] = stub[:framerate_denominator] unless stub[:framerate_denominator].nil?
        data['framerateNumerator'] = stub[:framerate_numerator] unless stub[:framerate_numerator].nil?
        data['gopClosedCadence'] = stub[:gop_closed_cadence] unless stub[:gop_closed_cadence].nil?
        data['gopSize'] = Hearth::NumberHelper.serialize(stub[:gop_size])
        data['gopSizeUnits'] = stub[:gop_size_units] unless stub[:gop_size_units].nil?
        data['hrdBufferInitialFillPercentage'] = stub[:hrd_buffer_initial_fill_percentage] unless stub[:hrd_buffer_initial_fill_percentage].nil?
        data['hrdBufferSize'] = stub[:hrd_buffer_size] unless stub[:hrd_buffer_size].nil?
        data['interlaceMode'] = stub[:interlace_mode] unless stub[:interlace_mode].nil?
        data['intraDcPrecision'] = stub[:intra_dc_precision] unless stub[:intra_dc_precision].nil?
        data['maxBitrate'] = stub[:max_bitrate] unless stub[:max_bitrate].nil?
        data['minIInterval'] = stub[:min_i_interval] unless stub[:min_i_interval].nil?
        data['numberBFramesBetweenReferenceFrames'] = stub[:number_b_frames_between_reference_frames] unless stub[:number_b_frames_between_reference_frames].nil?
        data['parControl'] = stub[:par_control] unless stub[:par_control].nil?
        data['parDenominator'] = stub[:par_denominator] unless stub[:par_denominator].nil?
        data['parNumerator'] = stub[:par_numerator] unless stub[:par_numerator].nil?
        data['qualityTuningLevel'] = stub[:quality_tuning_level] unless stub[:quality_tuning_level].nil?
        data['rateControlMode'] = stub[:rate_control_mode] unless stub[:rate_control_mode].nil?
        data['scanTypeConversionMode'] = stub[:scan_type_conversion_mode] unless stub[:scan_type_conversion_mode].nil?
        data['sceneChangeDetect'] = stub[:scene_change_detect] unless stub[:scene_change_detect].nil?
        data['slowPal'] = stub[:slow_pal] unless stub[:slow_pal].nil?
        data['softness'] = stub[:softness] unless stub[:softness].nil?
        data['spatialAdaptiveQuantization'] = stub[:spatial_adaptive_quantization] unless stub[:spatial_adaptive_quantization].nil?
        data['syntax'] = stub[:syntax] unless stub[:syntax].nil?
        data['telecine'] = stub[:telecine] unless stub[:telecine].nil?
        data['temporalAdaptiveQuantization'] = stub[:temporal_adaptive_quantization] unless stub[:temporal_adaptive_quantization].nil?
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
          alternate_transfer_function_sei: 'alternate_transfer_function_sei',
          bitrate: 1,
          codec_level: 'codec_level',
          codec_profile: 'codec_profile',
          dynamic_sub_gop: 'dynamic_sub_gop',
          flicker_adaptive_quantization: 'flicker_adaptive_quantization',
          framerate_control: 'framerate_control',
          framerate_conversion_algorithm: 'framerate_conversion_algorithm',
          framerate_denominator: 1,
          framerate_numerator: 1,
          gop_b_reference: 'gop_b_reference',
          gop_closed_cadence: 1,
          gop_size: 1.0,
          gop_size_units: 'gop_size_units',
          hrd_buffer_initial_fill_percentage: 1,
          hrd_buffer_size: 1,
          interlace_mode: 'interlace_mode',
          max_bitrate: 1,
          min_i_interval: 1,
          number_b_frames_between_reference_frames: 1,
          number_reference_frames: 1,
          par_control: 'par_control',
          par_denominator: 1,
          par_numerator: 1,
          quality_tuning_level: 'quality_tuning_level',
          qvbr_settings: Stubs::H265QvbrSettings.default(visited),
          rate_control_mode: 'rate_control_mode',
          sample_adaptive_offset_filter_mode: 'sample_adaptive_offset_filter_mode',
          scan_type_conversion_mode: 'scan_type_conversion_mode',
          scene_change_detect: 'scene_change_detect',
          slices: 1,
          slow_pal: 'slow_pal',
          spatial_adaptive_quantization: 'spatial_adaptive_quantization',
          telecine: 'telecine',
          temporal_adaptive_quantization: 'temporal_adaptive_quantization',
          temporal_ids: 'temporal_ids',
          tiles: 'tiles',
          unregistered_sei_timecode: 'unregistered_sei_timecode',
          write_mp4_packaging_type: 'write_mp4_packaging_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::H265Settings.new
        data = {}
        data['adaptiveQuantization'] = stub[:adaptive_quantization] unless stub[:adaptive_quantization].nil?
        data['alternateTransferFunctionSei'] = stub[:alternate_transfer_function_sei] unless stub[:alternate_transfer_function_sei].nil?
        data['bitrate'] = stub[:bitrate] unless stub[:bitrate].nil?
        data['codecLevel'] = stub[:codec_level] unless stub[:codec_level].nil?
        data['codecProfile'] = stub[:codec_profile] unless stub[:codec_profile].nil?
        data['dynamicSubGop'] = stub[:dynamic_sub_gop] unless stub[:dynamic_sub_gop].nil?
        data['flickerAdaptiveQuantization'] = stub[:flicker_adaptive_quantization] unless stub[:flicker_adaptive_quantization].nil?
        data['framerateControl'] = stub[:framerate_control] unless stub[:framerate_control].nil?
        data['framerateConversionAlgorithm'] = stub[:framerate_conversion_algorithm] unless stub[:framerate_conversion_algorithm].nil?
        data['framerateDenominator'] = stub[:framerate_denominator] unless stub[:framerate_denominator].nil?
        data['framerateNumerator'] = stub[:framerate_numerator] unless stub[:framerate_numerator].nil?
        data['gopBReference'] = stub[:gop_b_reference] unless stub[:gop_b_reference].nil?
        data['gopClosedCadence'] = stub[:gop_closed_cadence] unless stub[:gop_closed_cadence].nil?
        data['gopSize'] = Hearth::NumberHelper.serialize(stub[:gop_size])
        data['gopSizeUnits'] = stub[:gop_size_units] unless stub[:gop_size_units].nil?
        data['hrdBufferInitialFillPercentage'] = stub[:hrd_buffer_initial_fill_percentage] unless stub[:hrd_buffer_initial_fill_percentage].nil?
        data['hrdBufferSize'] = stub[:hrd_buffer_size] unless stub[:hrd_buffer_size].nil?
        data['interlaceMode'] = stub[:interlace_mode] unless stub[:interlace_mode].nil?
        data['maxBitrate'] = stub[:max_bitrate] unless stub[:max_bitrate].nil?
        data['minIInterval'] = stub[:min_i_interval] unless stub[:min_i_interval].nil?
        data['numberBFramesBetweenReferenceFrames'] = stub[:number_b_frames_between_reference_frames] unless stub[:number_b_frames_between_reference_frames].nil?
        data['numberReferenceFrames'] = stub[:number_reference_frames] unless stub[:number_reference_frames].nil?
        data['parControl'] = stub[:par_control] unless stub[:par_control].nil?
        data['parDenominator'] = stub[:par_denominator] unless stub[:par_denominator].nil?
        data['parNumerator'] = stub[:par_numerator] unless stub[:par_numerator].nil?
        data['qualityTuningLevel'] = stub[:quality_tuning_level] unless stub[:quality_tuning_level].nil?
        data['qvbrSettings'] = Stubs::H265QvbrSettings.stub(stub[:qvbr_settings]) unless stub[:qvbr_settings].nil?
        data['rateControlMode'] = stub[:rate_control_mode] unless stub[:rate_control_mode].nil?
        data['sampleAdaptiveOffsetFilterMode'] = stub[:sample_adaptive_offset_filter_mode] unless stub[:sample_adaptive_offset_filter_mode].nil?
        data['scanTypeConversionMode'] = stub[:scan_type_conversion_mode] unless stub[:scan_type_conversion_mode].nil?
        data['sceneChangeDetect'] = stub[:scene_change_detect] unless stub[:scene_change_detect].nil?
        data['slices'] = stub[:slices] unless stub[:slices].nil?
        data['slowPal'] = stub[:slow_pal] unless stub[:slow_pal].nil?
        data['spatialAdaptiveQuantization'] = stub[:spatial_adaptive_quantization] unless stub[:spatial_adaptive_quantization].nil?
        data['telecine'] = stub[:telecine] unless stub[:telecine].nil?
        data['temporalAdaptiveQuantization'] = stub[:temporal_adaptive_quantization] unless stub[:temporal_adaptive_quantization].nil?
        data['temporalIds'] = stub[:temporal_ids] unless stub[:temporal_ids].nil?
        data['tiles'] = stub[:tiles] unless stub[:tiles].nil?
        data['unregisteredSeiTimecode'] = stub[:unregistered_sei_timecode] unless stub[:unregistered_sei_timecode].nil?
        data['writeMp4PackagingType'] = stub[:write_mp4_packaging_type] unless stub[:write_mp4_packaging_type].nil?
        data
      end
    end

    # Structure Stubber for H265QvbrSettings
    class H265QvbrSettings
      def self.default(visited=[])
        return nil if visited.include?('H265QvbrSettings')
        visited = visited + ['H265QvbrSettings']
        {
          max_average_bitrate: 1,
          qvbr_quality_level: 1,
          qvbr_quality_level_fine_tune: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::H265QvbrSettings.new
        data = {}
        data['maxAverageBitrate'] = stub[:max_average_bitrate] unless stub[:max_average_bitrate].nil?
        data['qvbrQualityLevel'] = stub[:qvbr_quality_level] unless stub[:qvbr_quality_level].nil?
        data['qvbrQualityLevelFineTune'] = Hearth::NumberHelper.serialize(stub[:qvbr_quality_level_fine_tune])
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
          bitrate: 1,
          codec_level: 'codec_level',
          codec_profile: 'codec_profile',
          dynamic_sub_gop: 'dynamic_sub_gop',
          entropy_encoding: 'entropy_encoding',
          field_encoding: 'field_encoding',
          flicker_adaptive_quantization: 'flicker_adaptive_quantization',
          framerate_control: 'framerate_control',
          framerate_conversion_algorithm: 'framerate_conversion_algorithm',
          framerate_denominator: 1,
          framerate_numerator: 1,
          gop_b_reference: 'gop_b_reference',
          gop_closed_cadence: 1,
          gop_size: 1.0,
          gop_size_units: 'gop_size_units',
          hrd_buffer_initial_fill_percentage: 1,
          hrd_buffer_size: 1,
          interlace_mode: 'interlace_mode',
          max_bitrate: 1,
          min_i_interval: 1,
          number_b_frames_between_reference_frames: 1,
          number_reference_frames: 1,
          par_control: 'par_control',
          par_denominator: 1,
          par_numerator: 1,
          quality_tuning_level: 'quality_tuning_level',
          qvbr_settings: Stubs::H264QvbrSettings.default(visited),
          rate_control_mode: 'rate_control_mode',
          repeat_pps: 'repeat_pps',
          scan_type_conversion_mode: 'scan_type_conversion_mode',
          scene_change_detect: 'scene_change_detect',
          slices: 1,
          slow_pal: 'slow_pal',
          softness: 1,
          spatial_adaptive_quantization: 'spatial_adaptive_quantization',
          syntax: 'syntax',
          telecine: 'telecine',
          temporal_adaptive_quantization: 'temporal_adaptive_quantization',
          unregistered_sei_timecode: 'unregistered_sei_timecode',
        }
      end

      def self.stub(stub)
        stub ||= Types::H264Settings.new
        data = {}
        data['adaptiveQuantization'] = stub[:adaptive_quantization] unless stub[:adaptive_quantization].nil?
        data['bitrate'] = stub[:bitrate] unless stub[:bitrate].nil?
        data['codecLevel'] = stub[:codec_level] unless stub[:codec_level].nil?
        data['codecProfile'] = stub[:codec_profile] unless stub[:codec_profile].nil?
        data['dynamicSubGop'] = stub[:dynamic_sub_gop] unless stub[:dynamic_sub_gop].nil?
        data['entropyEncoding'] = stub[:entropy_encoding] unless stub[:entropy_encoding].nil?
        data['fieldEncoding'] = stub[:field_encoding] unless stub[:field_encoding].nil?
        data['flickerAdaptiveQuantization'] = stub[:flicker_adaptive_quantization] unless stub[:flicker_adaptive_quantization].nil?
        data['framerateControl'] = stub[:framerate_control] unless stub[:framerate_control].nil?
        data['framerateConversionAlgorithm'] = stub[:framerate_conversion_algorithm] unless stub[:framerate_conversion_algorithm].nil?
        data['framerateDenominator'] = stub[:framerate_denominator] unless stub[:framerate_denominator].nil?
        data['framerateNumerator'] = stub[:framerate_numerator] unless stub[:framerate_numerator].nil?
        data['gopBReference'] = stub[:gop_b_reference] unless stub[:gop_b_reference].nil?
        data['gopClosedCadence'] = stub[:gop_closed_cadence] unless stub[:gop_closed_cadence].nil?
        data['gopSize'] = Hearth::NumberHelper.serialize(stub[:gop_size])
        data['gopSizeUnits'] = stub[:gop_size_units] unless stub[:gop_size_units].nil?
        data['hrdBufferInitialFillPercentage'] = stub[:hrd_buffer_initial_fill_percentage] unless stub[:hrd_buffer_initial_fill_percentage].nil?
        data['hrdBufferSize'] = stub[:hrd_buffer_size] unless stub[:hrd_buffer_size].nil?
        data['interlaceMode'] = stub[:interlace_mode] unless stub[:interlace_mode].nil?
        data['maxBitrate'] = stub[:max_bitrate] unless stub[:max_bitrate].nil?
        data['minIInterval'] = stub[:min_i_interval] unless stub[:min_i_interval].nil?
        data['numberBFramesBetweenReferenceFrames'] = stub[:number_b_frames_between_reference_frames] unless stub[:number_b_frames_between_reference_frames].nil?
        data['numberReferenceFrames'] = stub[:number_reference_frames] unless stub[:number_reference_frames].nil?
        data['parControl'] = stub[:par_control] unless stub[:par_control].nil?
        data['parDenominator'] = stub[:par_denominator] unless stub[:par_denominator].nil?
        data['parNumerator'] = stub[:par_numerator] unless stub[:par_numerator].nil?
        data['qualityTuningLevel'] = stub[:quality_tuning_level] unless stub[:quality_tuning_level].nil?
        data['qvbrSettings'] = Stubs::H264QvbrSettings.stub(stub[:qvbr_settings]) unless stub[:qvbr_settings].nil?
        data['rateControlMode'] = stub[:rate_control_mode] unless stub[:rate_control_mode].nil?
        data['repeatPps'] = stub[:repeat_pps] unless stub[:repeat_pps].nil?
        data['scanTypeConversionMode'] = stub[:scan_type_conversion_mode] unless stub[:scan_type_conversion_mode].nil?
        data['sceneChangeDetect'] = stub[:scene_change_detect] unless stub[:scene_change_detect].nil?
        data['slices'] = stub[:slices] unless stub[:slices].nil?
        data['slowPal'] = stub[:slow_pal] unless stub[:slow_pal].nil?
        data['softness'] = stub[:softness] unless stub[:softness].nil?
        data['spatialAdaptiveQuantization'] = stub[:spatial_adaptive_quantization] unless stub[:spatial_adaptive_quantization].nil?
        data['syntax'] = stub[:syntax] unless stub[:syntax].nil?
        data['telecine'] = stub[:telecine] unless stub[:telecine].nil?
        data['temporalAdaptiveQuantization'] = stub[:temporal_adaptive_quantization] unless stub[:temporal_adaptive_quantization].nil?
        data['unregisteredSeiTimecode'] = stub[:unregistered_sei_timecode] unless stub[:unregistered_sei_timecode].nil?
        data
      end
    end

    # Structure Stubber for H264QvbrSettings
    class H264QvbrSettings
      def self.default(visited=[])
        return nil if visited.include?('H264QvbrSettings')
        visited = visited + ['H264QvbrSettings']
        {
          max_average_bitrate: 1,
          qvbr_quality_level: 1,
          qvbr_quality_level_fine_tune: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::H264QvbrSettings.new
        data = {}
        data['maxAverageBitrate'] = stub[:max_average_bitrate] unless stub[:max_average_bitrate].nil?
        data['qvbrQualityLevel'] = stub[:qvbr_quality_level] unless stub[:qvbr_quality_level].nil?
        data['qvbrQualityLevelFineTune'] = Hearth::NumberHelper.serialize(stub[:qvbr_quality_level_fine_tune])
        data
      end
    end

    # Structure Stubber for FrameCaptureSettings
    class FrameCaptureSettings
      def self.default(visited=[])
        return nil if visited.include?('FrameCaptureSettings')
        visited = visited + ['FrameCaptureSettings']
        {
          framerate_denominator: 1,
          framerate_numerator: 1,
          max_captures: 1,
          quality: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::FrameCaptureSettings.new
        data = {}
        data['framerateDenominator'] = stub[:framerate_denominator] unless stub[:framerate_denominator].nil?
        data['framerateNumerator'] = stub[:framerate_numerator] unless stub[:framerate_numerator].nil?
        data['maxCaptures'] = stub[:max_captures] unless stub[:max_captures].nil?
        data['quality'] = stub[:quality] unless stub[:quality].nil?
        data
      end
    end

    # Structure Stubber for AvcIntraSettings
    class AvcIntraSettings
      def self.default(visited=[])
        return nil if visited.include?('AvcIntraSettings')
        visited = visited + ['AvcIntraSettings']
        {
          avc_intra_class: 'avc_intra_class',
          avc_intra_uhd_settings: Stubs::AvcIntraUhdSettings.default(visited),
          framerate_control: 'framerate_control',
          framerate_conversion_algorithm: 'framerate_conversion_algorithm',
          framerate_denominator: 1,
          framerate_numerator: 1,
          interlace_mode: 'interlace_mode',
          scan_type_conversion_mode: 'scan_type_conversion_mode',
          slow_pal: 'slow_pal',
          telecine: 'telecine',
        }
      end

      def self.stub(stub)
        stub ||= Types::AvcIntraSettings.new
        data = {}
        data['avcIntraClass'] = stub[:avc_intra_class] unless stub[:avc_intra_class].nil?
        data['avcIntraUhdSettings'] = Stubs::AvcIntraUhdSettings.stub(stub[:avc_intra_uhd_settings]) unless stub[:avc_intra_uhd_settings].nil?
        data['framerateControl'] = stub[:framerate_control] unless stub[:framerate_control].nil?
        data['framerateConversionAlgorithm'] = stub[:framerate_conversion_algorithm] unless stub[:framerate_conversion_algorithm].nil?
        data['framerateDenominator'] = stub[:framerate_denominator] unless stub[:framerate_denominator].nil?
        data['framerateNumerator'] = stub[:framerate_numerator] unless stub[:framerate_numerator].nil?
        data['interlaceMode'] = stub[:interlace_mode] unless stub[:interlace_mode].nil?
        data['scanTypeConversionMode'] = stub[:scan_type_conversion_mode] unless stub[:scan_type_conversion_mode].nil?
        data['slowPal'] = stub[:slow_pal] unless stub[:slow_pal].nil?
        data['telecine'] = stub[:telecine] unless stub[:telecine].nil?
        data
      end
    end

    # Structure Stubber for AvcIntraUhdSettings
    class AvcIntraUhdSettings
      def self.default(visited=[])
        return nil if visited.include?('AvcIntraUhdSettings')
        visited = visited + ['AvcIntraUhdSettings']
        {
          quality_tuning_level: 'quality_tuning_level',
        }
      end

      def self.stub(stub)
        stub ||= Types::AvcIntraUhdSettings.new
        data = {}
        data['qualityTuningLevel'] = stub[:quality_tuning_level] unless stub[:quality_tuning_level].nil?
        data
      end
    end

    # Structure Stubber for Av1Settings
    class Av1Settings
      def self.default(visited=[])
        return nil if visited.include?('Av1Settings')
        visited = visited + ['Av1Settings']
        {
          adaptive_quantization: 'adaptive_quantization',
          bit_depth: 'bit_depth',
          framerate_control: 'framerate_control',
          framerate_conversion_algorithm: 'framerate_conversion_algorithm',
          framerate_denominator: 1,
          framerate_numerator: 1,
          gop_size: 1.0,
          max_bitrate: 1,
          number_b_frames_between_reference_frames: 1,
          qvbr_settings: Stubs::Av1QvbrSettings.default(visited),
          rate_control_mode: 'rate_control_mode',
          slices: 1,
          spatial_adaptive_quantization: 'spatial_adaptive_quantization',
        }
      end

      def self.stub(stub)
        stub ||= Types::Av1Settings.new
        data = {}
        data['adaptiveQuantization'] = stub[:adaptive_quantization] unless stub[:adaptive_quantization].nil?
        data['bitDepth'] = stub[:bit_depth] unless stub[:bit_depth].nil?
        data['framerateControl'] = stub[:framerate_control] unless stub[:framerate_control].nil?
        data['framerateConversionAlgorithm'] = stub[:framerate_conversion_algorithm] unless stub[:framerate_conversion_algorithm].nil?
        data['framerateDenominator'] = stub[:framerate_denominator] unless stub[:framerate_denominator].nil?
        data['framerateNumerator'] = stub[:framerate_numerator] unless stub[:framerate_numerator].nil?
        data['gopSize'] = Hearth::NumberHelper.serialize(stub[:gop_size])
        data['maxBitrate'] = stub[:max_bitrate] unless stub[:max_bitrate].nil?
        data['numberBFramesBetweenReferenceFrames'] = stub[:number_b_frames_between_reference_frames] unless stub[:number_b_frames_between_reference_frames].nil?
        data['qvbrSettings'] = Stubs::Av1QvbrSettings.stub(stub[:qvbr_settings]) unless stub[:qvbr_settings].nil?
        data['rateControlMode'] = stub[:rate_control_mode] unless stub[:rate_control_mode].nil?
        data['slices'] = stub[:slices] unless stub[:slices].nil?
        data['spatialAdaptiveQuantization'] = stub[:spatial_adaptive_quantization] unless stub[:spatial_adaptive_quantization].nil?
        data
      end
    end

    # Structure Stubber for Av1QvbrSettings
    class Av1QvbrSettings
      def self.default(visited=[])
        return nil if visited.include?('Av1QvbrSettings')
        visited = visited + ['Av1QvbrSettings']
        {
          qvbr_quality_level: 1,
          qvbr_quality_level_fine_tune: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::Av1QvbrSettings.new
        data = {}
        data['qvbrQualityLevel'] = stub[:qvbr_quality_level] unless stub[:qvbr_quality_level].nil?
        data['qvbrQualityLevelFineTune'] = Hearth::NumberHelper.serialize(stub[:qvbr_quality_level_fine_tune])
        data
      end
    end

    # Structure Stubber for OutputSettings
    class OutputSettings
      def self.default(visited=[])
        return nil if visited.include?('OutputSettings')
        visited = visited + ['OutputSettings']
        {
          hls_settings: Stubs::HlsSettings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::OutputSettings.new
        data = {}
        data['hlsSettings'] = Stubs::HlsSettings.stub(stub[:hls_settings]) unless stub[:hls_settings].nil?
        data
      end
    end

    # Structure Stubber for HlsSettings
    class HlsSettings
      def self.default(visited=[])
        return nil if visited.include?('HlsSettings')
        visited = visited + ['HlsSettings']
        {
          audio_group_id: 'audio_group_id',
          audio_only_container: 'audio_only_container',
          audio_rendition_sets: 'audio_rendition_sets',
          audio_track_type: 'audio_track_type',
          descriptive_video_service_flag: 'descriptive_video_service_flag',
          i_frame_only_manifest: 'i_frame_only_manifest',
          segment_modifier: 'segment_modifier',
        }
      end

      def self.stub(stub)
        stub ||= Types::HlsSettings.new
        data = {}
        data['audioGroupId'] = stub[:audio_group_id] unless stub[:audio_group_id].nil?
        data['audioOnlyContainer'] = stub[:audio_only_container] unless stub[:audio_only_container].nil?
        data['audioRenditionSets'] = stub[:audio_rendition_sets] unless stub[:audio_rendition_sets].nil?
        data['audioTrackType'] = stub[:audio_track_type] unless stub[:audio_track_type].nil?
        data['descriptiveVideoServiceFlag'] = stub[:descriptive_video_service_flag] unless stub[:descriptive_video_service_flag].nil?
        data['iFrameOnlyManifest'] = stub[:i_frame_only_manifest] unless stub[:i_frame_only_manifest].nil?
        data['segmentModifier'] = stub[:segment_modifier] unless stub[:segment_modifier].nil?
        data
      end
    end

    # Structure Stubber for ContainerSettings
    class ContainerSettings
      def self.default(visited=[])
        return nil if visited.include?('ContainerSettings')
        visited = visited + ['ContainerSettings']
        {
          cmfc_settings: Stubs::CmfcSettings.default(visited),
          container: 'container',
          f4v_settings: Stubs::F4vSettings.default(visited),
          m2ts_settings: Stubs::M2tsSettings.default(visited),
          m3u8_settings: Stubs::M3u8Settings.default(visited),
          mov_settings: Stubs::MovSettings.default(visited),
          mp4_settings: Stubs::Mp4Settings.default(visited),
          mpd_settings: Stubs::MpdSettings.default(visited),
          mxf_settings: Stubs::MxfSettings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ContainerSettings.new
        data = {}
        data['cmfcSettings'] = Stubs::CmfcSettings.stub(stub[:cmfc_settings]) unless stub[:cmfc_settings].nil?
        data['container'] = stub[:container] unless stub[:container].nil?
        data['f4vSettings'] = Stubs::F4vSettings.stub(stub[:f4v_settings]) unless stub[:f4v_settings].nil?
        data['m2tsSettings'] = Stubs::M2tsSettings.stub(stub[:m2ts_settings]) unless stub[:m2ts_settings].nil?
        data['m3u8Settings'] = Stubs::M3u8Settings.stub(stub[:m3u8_settings]) unless stub[:m3u8_settings].nil?
        data['movSettings'] = Stubs::MovSettings.stub(stub[:mov_settings]) unless stub[:mov_settings].nil?
        data['mp4Settings'] = Stubs::Mp4Settings.stub(stub[:mp4_settings]) unless stub[:mp4_settings].nil?
        data['mpdSettings'] = Stubs::MpdSettings.stub(stub[:mpd_settings]) unless stub[:mpd_settings].nil?
        data['mxfSettings'] = Stubs::MxfSettings.stub(stub[:mxf_settings]) unless stub[:mxf_settings].nil?
        data
      end
    end

    # Structure Stubber for MxfSettings
    class MxfSettings
      def self.default(visited=[])
        return nil if visited.include?('MxfSettings')
        visited = visited + ['MxfSettings']
        {
          afd_signaling: 'afd_signaling',
          profile: 'profile',
          xavc_profile_settings: Stubs::MxfXavcProfileSettings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MxfSettings.new
        data = {}
        data['afdSignaling'] = stub[:afd_signaling] unless stub[:afd_signaling].nil?
        data['profile'] = stub[:profile] unless stub[:profile].nil?
        data['xavcProfileSettings'] = Stubs::MxfXavcProfileSettings.stub(stub[:xavc_profile_settings]) unless stub[:xavc_profile_settings].nil?
        data
      end
    end

    # Structure Stubber for MxfXavcProfileSettings
    class MxfXavcProfileSettings
      def self.default(visited=[])
        return nil if visited.include?('MxfXavcProfileSettings')
        visited = visited + ['MxfXavcProfileSettings']
        {
          duration_mode: 'duration_mode',
          max_anc_data_size: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::MxfXavcProfileSettings.new
        data = {}
        data['durationMode'] = stub[:duration_mode] unless stub[:duration_mode].nil?
        data['maxAncDataSize'] = stub[:max_anc_data_size] unless stub[:max_anc_data_size].nil?
        data
      end
    end

    # Structure Stubber for MpdSettings
    class MpdSettings
      def self.default(visited=[])
        return nil if visited.include?('MpdSettings')
        visited = visited + ['MpdSettings']
        {
          accessibility_caption_hints: 'accessibility_caption_hints',
          audio_duration: 'audio_duration',
          caption_container_type: 'caption_container_type',
          klv_metadata: 'klv_metadata',
          scte35_esam: 'scte35_esam',
          scte35_source: 'scte35_source',
          timed_metadata: 'timed_metadata',
        }
      end

      def self.stub(stub)
        stub ||= Types::MpdSettings.new
        data = {}
        data['accessibilityCaptionHints'] = stub[:accessibility_caption_hints] unless stub[:accessibility_caption_hints].nil?
        data['audioDuration'] = stub[:audio_duration] unless stub[:audio_duration].nil?
        data['captionContainerType'] = stub[:caption_container_type] unless stub[:caption_container_type].nil?
        data['klvMetadata'] = stub[:klv_metadata] unless stub[:klv_metadata].nil?
        data['scte35Esam'] = stub[:scte35_esam] unless stub[:scte35_esam].nil?
        data['scte35Source'] = stub[:scte35_source] unless stub[:scte35_source].nil?
        data['timedMetadata'] = stub[:timed_metadata] unless stub[:timed_metadata].nil?
        data
      end
    end

    # Structure Stubber for Mp4Settings
    class Mp4Settings
      def self.default(visited=[])
        return nil if visited.include?('Mp4Settings')
        visited = visited + ['Mp4Settings']
        {
          audio_duration: 'audio_duration',
          cslg_atom: 'cslg_atom',
          ctts_version: 1,
          free_space_box: 'free_space_box',
          moov_placement: 'moov_placement',
          mp4_major_brand: 'mp4_major_brand',
        }
      end

      def self.stub(stub)
        stub ||= Types::Mp4Settings.new
        data = {}
        data['audioDuration'] = stub[:audio_duration] unless stub[:audio_duration].nil?
        data['cslgAtom'] = stub[:cslg_atom] unless stub[:cslg_atom].nil?
        data['cttsVersion'] = stub[:ctts_version] unless stub[:ctts_version].nil?
        data['freeSpaceBox'] = stub[:free_space_box] unless stub[:free_space_box].nil?
        data['moovPlacement'] = stub[:moov_placement] unless stub[:moov_placement].nil?
        data['mp4MajorBrand'] = stub[:mp4_major_brand] unless stub[:mp4_major_brand].nil?
        data
      end
    end

    # Structure Stubber for MovSettings
    class MovSettings
      def self.default(visited=[])
        return nil if visited.include?('MovSettings')
        visited = visited + ['MovSettings']
        {
          clap_atom: 'clap_atom',
          cslg_atom: 'cslg_atom',
          mpeg2_four_cc_control: 'mpeg2_four_cc_control',
          padding_control: 'padding_control',
          reference: 'reference',
        }
      end

      def self.stub(stub)
        stub ||= Types::MovSettings.new
        data = {}
        data['clapAtom'] = stub[:clap_atom] unless stub[:clap_atom].nil?
        data['cslgAtom'] = stub[:cslg_atom] unless stub[:cslg_atom].nil?
        data['mpeg2FourCCControl'] = stub[:mpeg2_four_cc_control] unless stub[:mpeg2_four_cc_control].nil?
        data['paddingControl'] = stub[:padding_control] unless stub[:padding_control].nil?
        data['reference'] = stub[:reference] unless stub[:reference].nil?
        data
      end
    end

    # Structure Stubber for M3u8Settings
    class M3u8Settings
      def self.default(visited=[])
        return nil if visited.include?('M3u8Settings')
        visited = visited + ['M3u8Settings']
        {
          audio_duration: 'audio_duration',
          audio_frames_per_pes: 1,
          audio_pids: Stubs::List____listOf__integerMin32Max8182.default(visited),
          data_pts_control: 'data_pts_control',
          max_pcr_interval: 1,
          nielsen_id3: 'nielsen_id3',
          pat_interval: 1,
          pcr_control: 'pcr_control',
          pcr_pid: 1,
          pmt_interval: 1,
          pmt_pid: 1,
          private_metadata_pid: 1,
          program_number: 1,
          scte35_pid: 1,
          scte35_source: 'scte35_source',
          timed_metadata: 'timed_metadata',
          timed_metadata_pid: 1,
          transport_stream_id: 1,
          video_pid: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::M3u8Settings.new
        data = {}
        data['audioDuration'] = stub[:audio_duration] unless stub[:audio_duration].nil?
        data['audioFramesPerPes'] = stub[:audio_frames_per_pes] unless stub[:audio_frames_per_pes].nil?
        data['audioPids'] = Stubs::List____listOf__integerMin32Max8182.stub(stub[:audio_pids]) unless stub[:audio_pids].nil?
        data['dataPTSControl'] = stub[:data_pts_control] unless stub[:data_pts_control].nil?
        data['maxPcrInterval'] = stub[:max_pcr_interval] unless stub[:max_pcr_interval].nil?
        data['nielsenId3'] = stub[:nielsen_id3] unless stub[:nielsen_id3].nil?
        data['patInterval'] = stub[:pat_interval] unless stub[:pat_interval].nil?
        data['pcrControl'] = stub[:pcr_control] unless stub[:pcr_control].nil?
        data['pcrPid'] = stub[:pcr_pid] unless stub[:pcr_pid].nil?
        data['pmtInterval'] = stub[:pmt_interval] unless stub[:pmt_interval].nil?
        data['pmtPid'] = stub[:pmt_pid] unless stub[:pmt_pid].nil?
        data['privateMetadataPid'] = stub[:private_metadata_pid] unless stub[:private_metadata_pid].nil?
        data['programNumber'] = stub[:program_number] unless stub[:program_number].nil?
        data['scte35Pid'] = stub[:scte35_pid] unless stub[:scte35_pid].nil?
        data['scte35Source'] = stub[:scte35_source] unless stub[:scte35_source].nil?
        data['timedMetadata'] = stub[:timed_metadata] unless stub[:timed_metadata].nil?
        data['timedMetadataPid'] = stub[:timed_metadata_pid] unless stub[:timed_metadata_pid].nil?
        data['transportStreamId'] = stub[:transport_stream_id] unless stub[:transport_stream_id].nil?
        data['videoPid'] = stub[:video_pid] unless stub[:video_pid].nil?
        data
      end
    end

    # List Stubber for __listOf__integerMin32Max8182
    class List____listOf__integerMin32Max8182
      def self.default(visited=[])
        return nil if visited.include?('List____listOf__integerMin32Max8182')
        visited = visited + ['List____listOf__integerMin32Max8182']
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

    # Structure Stubber for M2tsSettings
    class M2tsSettings
      def self.default(visited=[])
        return nil if visited.include?('M2tsSettings')
        visited = visited + ['M2tsSettings']
        {
          audio_buffer_model: 'audio_buffer_model',
          audio_duration: 'audio_duration',
          audio_frames_per_pes: 1,
          audio_pids: Stubs::List____listOf__integerMin32Max8182.default(visited),
          bitrate: 1,
          buffer_model: 'buffer_model',
          data_pts_control: 'data_pts_control',
          dvb_nit_settings: Stubs::DvbNitSettings.default(visited),
          dvb_sdt_settings: Stubs::DvbSdtSettings.default(visited),
          dvb_sub_pids: Stubs::List____listOf__integerMin32Max8182.default(visited),
          dvb_tdt_settings: Stubs::DvbTdtSettings.default(visited),
          dvb_teletext_pid: 1,
          ebp_audio_interval: 'ebp_audio_interval',
          ebp_placement: 'ebp_placement',
          es_rate_in_pes: 'es_rate_in_pes',
          force_ts_video_ebp_order: 'force_ts_video_ebp_order',
          fragment_time: 1.0,
          klv_metadata: 'klv_metadata',
          max_pcr_interval: 1,
          min_ebp_interval: 1,
          nielsen_id3: 'nielsen_id3',
          null_packet_bitrate: 1.0,
          pat_interval: 1,
          pcr_control: 'pcr_control',
          pcr_pid: 1,
          pmt_interval: 1,
          pmt_pid: 1,
          private_metadata_pid: 1,
          program_number: 1,
          rate_mode: 'rate_mode',
          scte35_esam: Stubs::M2tsScte35Esam.default(visited),
          scte35_pid: 1,
          scte35_source: 'scte35_source',
          segmentation_markers: 'segmentation_markers',
          segmentation_style: 'segmentation_style',
          segmentation_time: 1.0,
          timed_metadata_pid: 1,
          transport_stream_id: 1,
          video_pid: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::M2tsSettings.new
        data = {}
        data['audioBufferModel'] = stub[:audio_buffer_model] unless stub[:audio_buffer_model].nil?
        data['audioDuration'] = stub[:audio_duration] unless stub[:audio_duration].nil?
        data['audioFramesPerPes'] = stub[:audio_frames_per_pes] unless stub[:audio_frames_per_pes].nil?
        data['audioPids'] = Stubs::List____listOf__integerMin32Max8182.stub(stub[:audio_pids]) unless stub[:audio_pids].nil?
        data['bitrate'] = stub[:bitrate] unless stub[:bitrate].nil?
        data['bufferModel'] = stub[:buffer_model] unless stub[:buffer_model].nil?
        data['dataPTSControl'] = stub[:data_pts_control] unless stub[:data_pts_control].nil?
        data['dvbNitSettings'] = Stubs::DvbNitSettings.stub(stub[:dvb_nit_settings]) unless stub[:dvb_nit_settings].nil?
        data['dvbSdtSettings'] = Stubs::DvbSdtSettings.stub(stub[:dvb_sdt_settings]) unless stub[:dvb_sdt_settings].nil?
        data['dvbSubPids'] = Stubs::List____listOf__integerMin32Max8182.stub(stub[:dvb_sub_pids]) unless stub[:dvb_sub_pids].nil?
        data['dvbTdtSettings'] = Stubs::DvbTdtSettings.stub(stub[:dvb_tdt_settings]) unless stub[:dvb_tdt_settings].nil?
        data['dvbTeletextPid'] = stub[:dvb_teletext_pid] unless stub[:dvb_teletext_pid].nil?
        data['ebpAudioInterval'] = stub[:ebp_audio_interval] unless stub[:ebp_audio_interval].nil?
        data['ebpPlacement'] = stub[:ebp_placement] unless stub[:ebp_placement].nil?
        data['esRateInPes'] = stub[:es_rate_in_pes] unless stub[:es_rate_in_pes].nil?
        data['forceTsVideoEbpOrder'] = stub[:force_ts_video_ebp_order] unless stub[:force_ts_video_ebp_order].nil?
        data['fragmentTime'] = Hearth::NumberHelper.serialize(stub[:fragment_time])
        data['klvMetadata'] = stub[:klv_metadata] unless stub[:klv_metadata].nil?
        data['maxPcrInterval'] = stub[:max_pcr_interval] unless stub[:max_pcr_interval].nil?
        data['minEbpInterval'] = stub[:min_ebp_interval] unless stub[:min_ebp_interval].nil?
        data['nielsenId3'] = stub[:nielsen_id3] unless stub[:nielsen_id3].nil?
        data['nullPacketBitrate'] = Hearth::NumberHelper.serialize(stub[:null_packet_bitrate])
        data['patInterval'] = stub[:pat_interval] unless stub[:pat_interval].nil?
        data['pcrControl'] = stub[:pcr_control] unless stub[:pcr_control].nil?
        data['pcrPid'] = stub[:pcr_pid] unless stub[:pcr_pid].nil?
        data['pmtInterval'] = stub[:pmt_interval] unless stub[:pmt_interval].nil?
        data['pmtPid'] = stub[:pmt_pid] unless stub[:pmt_pid].nil?
        data['privateMetadataPid'] = stub[:private_metadata_pid] unless stub[:private_metadata_pid].nil?
        data['programNumber'] = stub[:program_number] unless stub[:program_number].nil?
        data['rateMode'] = stub[:rate_mode] unless stub[:rate_mode].nil?
        data['scte35Esam'] = Stubs::M2tsScte35Esam.stub(stub[:scte35_esam]) unless stub[:scte35_esam].nil?
        data['scte35Pid'] = stub[:scte35_pid] unless stub[:scte35_pid].nil?
        data['scte35Source'] = stub[:scte35_source] unless stub[:scte35_source].nil?
        data['segmentationMarkers'] = stub[:segmentation_markers] unless stub[:segmentation_markers].nil?
        data['segmentationStyle'] = stub[:segmentation_style] unless stub[:segmentation_style].nil?
        data['segmentationTime'] = Hearth::NumberHelper.serialize(stub[:segmentation_time])
        data['timedMetadataPid'] = stub[:timed_metadata_pid] unless stub[:timed_metadata_pid].nil?
        data['transportStreamId'] = stub[:transport_stream_id] unless stub[:transport_stream_id].nil?
        data['videoPid'] = stub[:video_pid] unless stub[:video_pid].nil?
        data
      end
    end

    # Structure Stubber for M2tsScte35Esam
    class M2tsScte35Esam
      def self.default(visited=[])
        return nil if visited.include?('M2tsScte35Esam')
        visited = visited + ['M2tsScte35Esam']
        {
          scte35_esam_pid: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::M2tsScte35Esam.new
        data = {}
        data['scte35EsamPid'] = stub[:scte35_esam_pid] unless stub[:scte35_esam_pid].nil?
        data
      end
    end

    # Structure Stubber for DvbTdtSettings
    class DvbTdtSettings
      def self.default(visited=[])
        return nil if visited.include?('DvbTdtSettings')
        visited = visited + ['DvbTdtSettings']
        {
          tdt_interval: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::DvbTdtSettings.new
        data = {}
        data['tdtInterval'] = stub[:tdt_interval] unless stub[:tdt_interval].nil?
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
          sdt_interval: 1,
          service_name: 'service_name',
          service_provider_name: 'service_provider_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::DvbSdtSettings.new
        data = {}
        data['outputSdt'] = stub[:output_sdt] unless stub[:output_sdt].nil?
        data['sdtInterval'] = stub[:sdt_interval] unless stub[:sdt_interval].nil?
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
          nit_interval: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::DvbNitSettings.new
        data = {}
        data['networkId'] = stub[:network_id] unless stub[:network_id].nil?
        data['networkName'] = stub[:network_name] unless stub[:network_name].nil?
        data['nitInterval'] = stub[:nit_interval] unless stub[:nit_interval].nil?
        data
      end
    end

    # Structure Stubber for F4vSettings
    class F4vSettings
      def self.default(visited=[])
        return nil if visited.include?('F4vSettings')
        visited = visited + ['F4vSettings']
        {
          moov_placement: 'moov_placement',
        }
      end

      def self.stub(stub)
        stub ||= Types::F4vSettings.new
        data = {}
        data['moovPlacement'] = stub[:moov_placement] unless stub[:moov_placement].nil?
        data
      end
    end

    # Structure Stubber for CmfcSettings
    class CmfcSettings
      def self.default(visited=[])
        return nil if visited.include?('CmfcSettings')
        visited = visited + ['CmfcSettings']
        {
          audio_duration: 'audio_duration',
          audio_group_id: 'audio_group_id',
          audio_rendition_sets: 'audio_rendition_sets',
          audio_track_type: 'audio_track_type',
          descriptive_video_service_flag: 'descriptive_video_service_flag',
          i_frame_only_manifest: 'i_frame_only_manifest',
          klv_metadata: 'klv_metadata',
          scte35_esam: 'scte35_esam',
          scte35_source: 'scte35_source',
          timed_metadata: 'timed_metadata',
        }
      end

      def self.stub(stub)
        stub ||= Types::CmfcSettings.new
        data = {}
        data['audioDuration'] = stub[:audio_duration] unless stub[:audio_duration].nil?
        data['audioGroupId'] = stub[:audio_group_id] unless stub[:audio_group_id].nil?
        data['audioRenditionSets'] = stub[:audio_rendition_sets] unless stub[:audio_rendition_sets].nil?
        data['audioTrackType'] = stub[:audio_track_type] unless stub[:audio_track_type].nil?
        data['descriptiveVideoServiceFlag'] = stub[:descriptive_video_service_flag] unless stub[:descriptive_video_service_flag].nil?
        data['iFrameOnlyManifest'] = stub[:i_frame_only_manifest] unless stub[:i_frame_only_manifest].nil?
        data['klvMetadata'] = stub[:klv_metadata] unless stub[:klv_metadata].nil?
        data['scte35Esam'] = stub[:scte35_esam] unless stub[:scte35_esam].nil?
        data['scte35Source'] = stub[:scte35_source] unless stub[:scte35_source].nil?
        data['timedMetadata'] = stub[:timed_metadata] unless stub[:timed_metadata].nil?
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
          custom_language_code: 'custom_language_code',
          destination_settings: Stubs::CaptionDestinationSettings.default(visited),
          language_code: 'language_code',
          language_description: 'language_description',
        }
      end

      def self.stub(stub)
        stub ||= Types::CaptionDescription.new
        data = {}
        data['captionSelectorName'] = stub[:caption_selector_name] unless stub[:caption_selector_name].nil?
        data['customLanguageCode'] = stub[:custom_language_code] unless stub[:custom_language_code].nil?
        data['destinationSettings'] = Stubs::CaptionDestinationSettings.stub(stub[:destination_settings]) unless stub[:destination_settings].nil?
        data['languageCode'] = stub[:language_code] unless stub[:language_code].nil?
        data['languageDescription'] = stub[:language_description] unless stub[:language_description].nil?
        data
      end
    end

    # Structure Stubber for CaptionDestinationSettings
    class CaptionDestinationSettings
      def self.default(visited=[])
        return nil if visited.include?('CaptionDestinationSettings')
        visited = visited + ['CaptionDestinationSettings']
        {
          burnin_destination_settings: Stubs::BurninDestinationSettings.default(visited),
          destination_type: 'destination_type',
          dvb_sub_destination_settings: Stubs::DvbSubDestinationSettings.default(visited),
          embedded_destination_settings: Stubs::EmbeddedDestinationSettings.default(visited),
          imsc_destination_settings: Stubs::ImscDestinationSettings.default(visited),
          scc_destination_settings: Stubs::SccDestinationSettings.default(visited),
          srt_destination_settings: Stubs::SrtDestinationSettings.default(visited),
          teletext_destination_settings: Stubs::TeletextDestinationSettings.default(visited),
          ttml_destination_settings: Stubs::TtmlDestinationSettings.default(visited),
          webvtt_destination_settings: Stubs::WebvttDestinationSettings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CaptionDestinationSettings.new
        data = {}
        data['burninDestinationSettings'] = Stubs::BurninDestinationSettings.stub(stub[:burnin_destination_settings]) unless stub[:burnin_destination_settings].nil?
        data['destinationType'] = stub[:destination_type] unless stub[:destination_type].nil?
        data['dvbSubDestinationSettings'] = Stubs::DvbSubDestinationSettings.stub(stub[:dvb_sub_destination_settings]) unless stub[:dvb_sub_destination_settings].nil?
        data['embeddedDestinationSettings'] = Stubs::EmbeddedDestinationSettings.stub(stub[:embedded_destination_settings]) unless stub[:embedded_destination_settings].nil?
        data['imscDestinationSettings'] = Stubs::ImscDestinationSettings.stub(stub[:imsc_destination_settings]) unless stub[:imsc_destination_settings].nil?
        data['sccDestinationSettings'] = Stubs::SccDestinationSettings.stub(stub[:scc_destination_settings]) unless stub[:scc_destination_settings].nil?
        data['srtDestinationSettings'] = Stubs::SrtDestinationSettings.stub(stub[:srt_destination_settings]) unless stub[:srt_destination_settings].nil?
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
          accessibility: 'accessibility',
          style_passthrough: 'style_passthrough',
        }
      end

      def self.stub(stub)
        stub ||= Types::WebvttDestinationSettings.new
        data = {}
        data['accessibility'] = stub[:accessibility] unless stub[:accessibility].nil?
        data['stylePassthrough'] = stub[:style_passthrough] unless stub[:style_passthrough].nil?
        data
      end
    end

    # Structure Stubber for TtmlDestinationSettings
    class TtmlDestinationSettings
      def self.default(visited=[])
        return nil if visited.include?('TtmlDestinationSettings')
        visited = visited + ['TtmlDestinationSettings']
        {
          style_passthrough: 'style_passthrough',
        }
      end

      def self.stub(stub)
        stub ||= Types::TtmlDestinationSettings.new
        data = {}
        data['stylePassthrough'] = stub[:style_passthrough] unless stub[:style_passthrough].nil?
        data
      end
    end

    # Structure Stubber for TeletextDestinationSettings
    class TeletextDestinationSettings
      def self.default(visited=[])
        return nil if visited.include?('TeletextDestinationSettings')
        visited = visited + ['TeletextDestinationSettings']
        {
          page_number: 'page_number',
          page_types: Stubs::List____listOfTeletextPageType.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TeletextDestinationSettings.new
        data = {}
        data['pageNumber'] = stub[:page_number] unless stub[:page_number].nil?
        data['pageTypes'] = Stubs::List____listOfTeletextPageType.stub(stub[:page_types]) unless stub[:page_types].nil?
        data
      end
    end

    # List Stubber for __listOfTeletextPageType
    class List____listOfTeletextPageType
      def self.default(visited=[])
        return nil if visited.include?('List____listOfTeletextPageType')
        visited = visited + ['List____listOfTeletextPageType']
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

    # Structure Stubber for SrtDestinationSettings
    class SrtDestinationSettings
      def self.default(visited=[])
        return nil if visited.include?('SrtDestinationSettings')
        visited = visited + ['SrtDestinationSettings']
        {
          style_passthrough: 'style_passthrough',
        }
      end

      def self.stub(stub)
        stub ||= Types::SrtDestinationSettings.new
        data = {}
        data['stylePassthrough'] = stub[:style_passthrough] unless stub[:style_passthrough].nil?
        data
      end
    end

    # Structure Stubber for SccDestinationSettings
    class SccDestinationSettings
      def self.default(visited=[])
        return nil if visited.include?('SccDestinationSettings')
        visited = visited + ['SccDestinationSettings']
        {
          framerate: 'framerate',
        }
      end

      def self.stub(stub)
        stub ||= Types::SccDestinationSettings.new
        data = {}
        data['framerate'] = stub[:framerate] unless stub[:framerate].nil?
        data
      end
    end

    # Structure Stubber for ImscDestinationSettings
    class ImscDestinationSettings
      def self.default(visited=[])
        return nil if visited.include?('ImscDestinationSettings')
        visited = visited + ['ImscDestinationSettings']
        {
          accessibility: 'accessibility',
          style_passthrough: 'style_passthrough',
        }
      end

      def self.stub(stub)
        stub ||= Types::ImscDestinationSettings.new
        data = {}
        data['accessibility'] = stub[:accessibility] unless stub[:accessibility].nil?
        data['stylePassthrough'] = stub[:style_passthrough] unless stub[:style_passthrough].nil?
        data
      end
    end

    # Structure Stubber for EmbeddedDestinationSettings
    class EmbeddedDestinationSettings
      def self.default(visited=[])
        return nil if visited.include?('EmbeddedDestinationSettings')
        visited = visited + ['EmbeddedDestinationSettings']
        {
          destination608_channel_number: 1,
          destination708_service_number: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::EmbeddedDestinationSettings.new
        data = {}
        data['destination608ChannelNumber'] = stub[:destination608_channel_number] unless stub[:destination608_channel_number].nil?
        data['destination708ServiceNumber'] = stub[:destination708_service_number] unless stub[:destination708_service_number].nil?
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
          apply_font_color: 'apply_font_color',
          background_color: 'background_color',
          background_opacity: 1,
          dds_handling: 'dds_handling',
          dds_x_coordinate: 1,
          dds_y_coordinate: 1,
          fallback_font: 'fallback_font',
          font_color: 'font_color',
          font_opacity: 1,
          font_resolution: 1,
          font_script: 'font_script',
          font_size: 1,
          height: 1,
          hex_font_color: 'hex_font_color',
          outline_color: 'outline_color',
          outline_size: 1,
          shadow_color: 'shadow_color',
          shadow_opacity: 1,
          shadow_x_offset: 1,
          shadow_y_offset: 1,
          style_passthrough: 'style_passthrough',
          subtitling_type: 'subtitling_type',
          teletext_spacing: 'teletext_spacing',
          width: 1,
          x_position: 1,
          y_position: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::DvbSubDestinationSettings.new
        data = {}
        data['alignment'] = stub[:alignment] unless stub[:alignment].nil?
        data['applyFontColor'] = stub[:apply_font_color] unless stub[:apply_font_color].nil?
        data['backgroundColor'] = stub[:background_color] unless stub[:background_color].nil?
        data['backgroundOpacity'] = stub[:background_opacity] unless stub[:background_opacity].nil?
        data['ddsHandling'] = stub[:dds_handling] unless stub[:dds_handling].nil?
        data['ddsXCoordinate'] = stub[:dds_x_coordinate] unless stub[:dds_x_coordinate].nil?
        data['ddsYCoordinate'] = stub[:dds_y_coordinate] unless stub[:dds_y_coordinate].nil?
        data['fallbackFont'] = stub[:fallback_font] unless stub[:fallback_font].nil?
        data['fontColor'] = stub[:font_color] unless stub[:font_color].nil?
        data['fontOpacity'] = stub[:font_opacity] unless stub[:font_opacity].nil?
        data['fontResolution'] = stub[:font_resolution] unless stub[:font_resolution].nil?
        data['fontScript'] = stub[:font_script] unless stub[:font_script].nil?
        data['fontSize'] = stub[:font_size] unless stub[:font_size].nil?
        data['height'] = stub[:height] unless stub[:height].nil?
        data['hexFontColor'] = stub[:hex_font_color] unless stub[:hex_font_color].nil?
        data['outlineColor'] = stub[:outline_color] unless stub[:outline_color].nil?
        data['outlineSize'] = stub[:outline_size] unless stub[:outline_size].nil?
        data['shadowColor'] = stub[:shadow_color] unless stub[:shadow_color].nil?
        data['shadowOpacity'] = stub[:shadow_opacity] unless stub[:shadow_opacity].nil?
        data['shadowXOffset'] = stub[:shadow_x_offset] unless stub[:shadow_x_offset].nil?
        data['shadowYOffset'] = stub[:shadow_y_offset] unless stub[:shadow_y_offset].nil?
        data['stylePassthrough'] = stub[:style_passthrough] unless stub[:style_passthrough].nil?
        data['subtitlingType'] = stub[:subtitling_type] unless stub[:subtitling_type].nil?
        data['teletextSpacing'] = stub[:teletext_spacing] unless stub[:teletext_spacing].nil?
        data['width'] = stub[:width] unless stub[:width].nil?
        data['xPosition'] = stub[:x_position] unless stub[:x_position].nil?
        data['yPosition'] = stub[:y_position] unless stub[:y_position].nil?
        data
      end
    end

    # Structure Stubber for BurninDestinationSettings
    class BurninDestinationSettings
      def self.default(visited=[])
        return nil if visited.include?('BurninDestinationSettings')
        visited = visited + ['BurninDestinationSettings']
        {
          alignment: 'alignment',
          apply_font_color: 'apply_font_color',
          background_color: 'background_color',
          background_opacity: 1,
          fallback_font: 'fallback_font',
          font_color: 'font_color',
          font_opacity: 1,
          font_resolution: 1,
          font_script: 'font_script',
          font_size: 1,
          hex_font_color: 'hex_font_color',
          outline_color: 'outline_color',
          outline_size: 1,
          shadow_color: 'shadow_color',
          shadow_opacity: 1,
          shadow_x_offset: 1,
          shadow_y_offset: 1,
          style_passthrough: 'style_passthrough',
          teletext_spacing: 'teletext_spacing',
          x_position: 1,
          y_position: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::BurninDestinationSettings.new
        data = {}
        data['alignment'] = stub[:alignment] unless stub[:alignment].nil?
        data['applyFontColor'] = stub[:apply_font_color] unless stub[:apply_font_color].nil?
        data['backgroundColor'] = stub[:background_color] unless stub[:background_color].nil?
        data['backgroundOpacity'] = stub[:background_opacity] unless stub[:background_opacity].nil?
        data['fallbackFont'] = stub[:fallback_font] unless stub[:fallback_font].nil?
        data['fontColor'] = stub[:font_color] unless stub[:font_color].nil?
        data['fontOpacity'] = stub[:font_opacity] unless stub[:font_opacity].nil?
        data['fontResolution'] = stub[:font_resolution] unless stub[:font_resolution].nil?
        data['fontScript'] = stub[:font_script] unless stub[:font_script].nil?
        data['fontSize'] = stub[:font_size] unless stub[:font_size].nil?
        data['hexFontColor'] = stub[:hex_font_color] unless stub[:hex_font_color].nil?
        data['outlineColor'] = stub[:outline_color] unless stub[:outline_color].nil?
        data['outlineSize'] = stub[:outline_size] unless stub[:outline_size].nil?
        data['shadowColor'] = stub[:shadow_color] unless stub[:shadow_color].nil?
        data['shadowOpacity'] = stub[:shadow_opacity] unless stub[:shadow_opacity].nil?
        data['shadowXOffset'] = stub[:shadow_x_offset] unless stub[:shadow_x_offset].nil?
        data['shadowYOffset'] = stub[:shadow_y_offset] unless stub[:shadow_y_offset].nil?
        data['stylePassthrough'] = stub[:style_passthrough] unless stub[:style_passthrough].nil?
        data['teletextSpacing'] = stub[:teletext_spacing] unless stub[:teletext_spacing].nil?
        data['xPosition'] = stub[:x_position] unless stub[:x_position].nil?
        data['yPosition'] = stub[:y_position] unless stub[:y_position].nil?
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
          audio_channel_tagging_settings: Stubs::AudioChannelTaggingSettings.default(visited),
          audio_normalization_settings: Stubs::AudioNormalizationSettings.default(visited),
          audio_source_name: 'audio_source_name',
          audio_type: 1,
          audio_type_control: 'audio_type_control',
          codec_settings: Stubs::AudioCodecSettings.default(visited),
          custom_language_code: 'custom_language_code',
          language_code: 'language_code',
          language_code_control: 'language_code_control',
          remix_settings: Stubs::RemixSettings.default(visited),
          stream_name: 'stream_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::AudioDescription.new
        data = {}
        data['audioChannelTaggingSettings'] = Stubs::AudioChannelTaggingSettings.stub(stub[:audio_channel_tagging_settings]) unless stub[:audio_channel_tagging_settings].nil?
        data['audioNormalizationSettings'] = Stubs::AudioNormalizationSettings.stub(stub[:audio_normalization_settings]) unless stub[:audio_normalization_settings].nil?
        data['audioSourceName'] = stub[:audio_source_name] unless stub[:audio_source_name].nil?
        data['audioType'] = stub[:audio_type] unless stub[:audio_type].nil?
        data['audioTypeControl'] = stub[:audio_type_control] unless stub[:audio_type_control].nil?
        data['codecSettings'] = Stubs::AudioCodecSettings.stub(stub[:codec_settings]) unless stub[:codec_settings].nil?
        data['customLanguageCode'] = stub[:custom_language_code] unless stub[:custom_language_code].nil?
        data['languageCode'] = stub[:language_code] unless stub[:language_code].nil?
        data['languageCodeControl'] = stub[:language_code_control] unless stub[:language_code_control].nil?
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
          channel_mapping: Stubs::ChannelMapping.default(visited),
          channels_in: 1,
          channels_out: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::RemixSettings.new
        data = {}
        data['channelMapping'] = Stubs::ChannelMapping.stub(stub[:channel_mapping]) unless stub[:channel_mapping].nil?
        data['channelsIn'] = stub[:channels_in] unless stub[:channels_in].nil?
        data['channelsOut'] = stub[:channels_out] unless stub[:channels_out].nil?
        data
      end
    end

    # Structure Stubber for ChannelMapping
    class ChannelMapping
      def self.default(visited=[])
        return nil if visited.include?('ChannelMapping')
        visited = visited + ['ChannelMapping']
        {
          output_channels: Stubs::List____listOfOutputChannelMapping.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ChannelMapping.new
        data = {}
        data['outputChannels'] = Stubs::List____listOfOutputChannelMapping.stub(stub[:output_channels]) unless stub[:output_channels].nil?
        data
      end
    end

    # List Stubber for __listOfOutputChannelMapping
    class List____listOfOutputChannelMapping
      def self.default(visited=[])
        return nil if visited.include?('List____listOfOutputChannelMapping')
        visited = visited + ['List____listOfOutputChannelMapping']
        [
          Stubs::OutputChannelMapping.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::OutputChannelMapping.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for OutputChannelMapping
    class OutputChannelMapping
      def self.default(visited=[])
        return nil if visited.include?('OutputChannelMapping')
        visited = visited + ['OutputChannelMapping']
        {
          input_channels: Stubs::List____listOf__integerMinNegative60Max6.default(visited),
          input_channels_fine_tune: Stubs::List____listOf__doubleMinNegative60Max6.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::OutputChannelMapping.new
        data = {}
        data['inputChannels'] = Stubs::List____listOf__integerMinNegative60Max6.stub(stub[:input_channels]) unless stub[:input_channels].nil?
        data['inputChannelsFineTune'] = Stubs::List____listOf__doubleMinNegative60Max6.stub(stub[:input_channels_fine_tune]) unless stub[:input_channels_fine_tune].nil?
        data
      end
    end

    # List Stubber for __listOf__doubleMinNegative60Max6
    class List____listOf__doubleMinNegative60Max6
      def self.default(visited=[])
        return nil if visited.include?('List____listOf__doubleMinNegative60Max6')
        visited = visited + ['List____listOf__doubleMinNegative60Max6']
        [
          1.0
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Hearth::NumberHelper.serialize(element)
        end
        data
      end
    end

    # List Stubber for __listOf__integerMinNegative60Max6
    class List____listOf__integerMinNegative60Max6
      def self.default(visited=[])
        return nil if visited.include?('List____listOf__integerMinNegative60Max6')
        visited = visited + ['List____listOf__integerMinNegative60Max6']
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

    # Structure Stubber for AudioCodecSettings
    class AudioCodecSettings
      def self.default(visited=[])
        return nil if visited.include?('AudioCodecSettings')
        visited = visited + ['AudioCodecSettings']
        {
          aac_settings: Stubs::AacSettings.default(visited),
          ac3_settings: Stubs::Ac3Settings.default(visited),
          aiff_settings: Stubs::AiffSettings.default(visited),
          codec: 'codec',
          eac3_atmos_settings: Stubs::Eac3AtmosSettings.default(visited),
          eac3_settings: Stubs::Eac3Settings.default(visited),
          mp2_settings: Stubs::Mp2Settings.default(visited),
          mp3_settings: Stubs::Mp3Settings.default(visited),
          opus_settings: Stubs::OpusSettings.default(visited),
          vorbis_settings: Stubs::VorbisSettings.default(visited),
          wav_settings: Stubs::WavSettings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AudioCodecSettings.new
        data = {}
        data['aacSettings'] = Stubs::AacSettings.stub(stub[:aac_settings]) unless stub[:aac_settings].nil?
        data['ac3Settings'] = Stubs::Ac3Settings.stub(stub[:ac3_settings]) unless stub[:ac3_settings].nil?
        data['aiffSettings'] = Stubs::AiffSettings.stub(stub[:aiff_settings]) unless stub[:aiff_settings].nil?
        data['codec'] = stub[:codec] unless stub[:codec].nil?
        data['eac3AtmosSettings'] = Stubs::Eac3AtmosSettings.stub(stub[:eac3_atmos_settings]) unless stub[:eac3_atmos_settings].nil?
        data['eac3Settings'] = Stubs::Eac3Settings.stub(stub[:eac3_settings]) unless stub[:eac3_settings].nil?
        data['mp2Settings'] = Stubs::Mp2Settings.stub(stub[:mp2_settings]) unless stub[:mp2_settings].nil?
        data['mp3Settings'] = Stubs::Mp3Settings.stub(stub[:mp3_settings]) unless stub[:mp3_settings].nil?
        data['opusSettings'] = Stubs::OpusSettings.stub(stub[:opus_settings]) unless stub[:opus_settings].nil?
        data['vorbisSettings'] = Stubs::VorbisSettings.stub(stub[:vorbis_settings]) unless stub[:vorbis_settings].nil?
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
          bit_depth: 1,
          channels: 1,
          format: 'format',
          sample_rate: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::WavSettings.new
        data = {}
        data['bitDepth'] = stub[:bit_depth] unless stub[:bit_depth].nil?
        data['channels'] = stub[:channels] unless stub[:channels].nil?
        data['format'] = stub[:format] unless stub[:format].nil?
        data['sampleRate'] = stub[:sample_rate] unless stub[:sample_rate].nil?
        data
      end
    end

    # Structure Stubber for VorbisSettings
    class VorbisSettings
      def self.default(visited=[])
        return nil if visited.include?('VorbisSettings')
        visited = visited + ['VorbisSettings']
        {
          channels: 1,
          sample_rate: 1,
          vbr_quality: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::VorbisSettings.new
        data = {}
        data['channels'] = stub[:channels] unless stub[:channels].nil?
        data['sampleRate'] = stub[:sample_rate] unless stub[:sample_rate].nil?
        data['vbrQuality'] = stub[:vbr_quality] unless stub[:vbr_quality].nil?
        data
      end
    end

    # Structure Stubber for OpusSettings
    class OpusSettings
      def self.default(visited=[])
        return nil if visited.include?('OpusSettings')
        visited = visited + ['OpusSettings']
        {
          bitrate: 1,
          channels: 1,
          sample_rate: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::OpusSettings.new
        data = {}
        data['bitrate'] = stub[:bitrate] unless stub[:bitrate].nil?
        data['channels'] = stub[:channels] unless stub[:channels].nil?
        data['sampleRate'] = stub[:sample_rate] unless stub[:sample_rate].nil?
        data
      end
    end

    # Structure Stubber for Mp3Settings
    class Mp3Settings
      def self.default(visited=[])
        return nil if visited.include?('Mp3Settings')
        visited = visited + ['Mp3Settings']
        {
          bitrate: 1,
          channels: 1,
          rate_control_mode: 'rate_control_mode',
          sample_rate: 1,
          vbr_quality: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::Mp3Settings.new
        data = {}
        data['bitrate'] = stub[:bitrate] unless stub[:bitrate].nil?
        data['channels'] = stub[:channels] unless stub[:channels].nil?
        data['rateControlMode'] = stub[:rate_control_mode] unless stub[:rate_control_mode].nil?
        data['sampleRate'] = stub[:sample_rate] unless stub[:sample_rate].nil?
        data['vbrQuality'] = stub[:vbr_quality] unless stub[:vbr_quality].nil?
        data
      end
    end

    # Structure Stubber for Mp2Settings
    class Mp2Settings
      def self.default(visited=[])
        return nil if visited.include?('Mp2Settings')
        visited = visited + ['Mp2Settings']
        {
          bitrate: 1,
          channels: 1,
          sample_rate: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::Mp2Settings.new
        data = {}
        data['bitrate'] = stub[:bitrate] unless stub[:bitrate].nil?
        data['channels'] = stub[:channels] unless stub[:channels].nil?
        data['sampleRate'] = stub[:sample_rate] unless stub[:sample_rate].nil?
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
          bitrate: 1,
          bitstream_mode: 'bitstream_mode',
          coding_mode: 'coding_mode',
          dc_filter: 'dc_filter',
          dialnorm: 1,
          dynamic_range_compression_line: 'dynamic_range_compression_line',
          dynamic_range_compression_rf: 'dynamic_range_compression_rf',
          lfe_control: 'lfe_control',
          lfe_filter: 'lfe_filter',
          lo_ro_center_mix_level: 1.0,
          lo_ro_surround_mix_level: 1.0,
          lt_rt_center_mix_level: 1.0,
          lt_rt_surround_mix_level: 1.0,
          metadata_control: 'metadata_control',
          passthrough_control: 'passthrough_control',
          phase_control: 'phase_control',
          sample_rate: 1,
          stereo_downmix: 'stereo_downmix',
          surround_ex_mode: 'surround_ex_mode',
          surround_mode: 'surround_mode',
        }
      end

      def self.stub(stub)
        stub ||= Types::Eac3Settings.new
        data = {}
        data['attenuationControl'] = stub[:attenuation_control] unless stub[:attenuation_control].nil?
        data['bitrate'] = stub[:bitrate] unless stub[:bitrate].nil?
        data['bitstreamMode'] = stub[:bitstream_mode] unless stub[:bitstream_mode].nil?
        data['codingMode'] = stub[:coding_mode] unless stub[:coding_mode].nil?
        data['dcFilter'] = stub[:dc_filter] unless stub[:dc_filter].nil?
        data['dialnorm'] = stub[:dialnorm] unless stub[:dialnorm].nil?
        data['dynamicRangeCompressionLine'] = stub[:dynamic_range_compression_line] unless stub[:dynamic_range_compression_line].nil?
        data['dynamicRangeCompressionRf'] = stub[:dynamic_range_compression_rf] unless stub[:dynamic_range_compression_rf].nil?
        data['lfeControl'] = stub[:lfe_control] unless stub[:lfe_control].nil?
        data['lfeFilter'] = stub[:lfe_filter] unless stub[:lfe_filter].nil?
        data['loRoCenterMixLevel'] = Hearth::NumberHelper.serialize(stub[:lo_ro_center_mix_level])
        data['loRoSurroundMixLevel'] = Hearth::NumberHelper.serialize(stub[:lo_ro_surround_mix_level])
        data['ltRtCenterMixLevel'] = Hearth::NumberHelper.serialize(stub[:lt_rt_center_mix_level])
        data['ltRtSurroundMixLevel'] = Hearth::NumberHelper.serialize(stub[:lt_rt_surround_mix_level])
        data['metadataControl'] = stub[:metadata_control] unless stub[:metadata_control].nil?
        data['passthroughControl'] = stub[:passthrough_control] unless stub[:passthrough_control].nil?
        data['phaseControl'] = stub[:phase_control] unless stub[:phase_control].nil?
        data['sampleRate'] = stub[:sample_rate] unless stub[:sample_rate].nil?
        data['stereoDownmix'] = stub[:stereo_downmix] unless stub[:stereo_downmix].nil?
        data['surroundExMode'] = stub[:surround_ex_mode] unless stub[:surround_ex_mode].nil?
        data['surroundMode'] = stub[:surround_mode] unless stub[:surround_mode].nil?
        data
      end
    end

    # Structure Stubber for Eac3AtmosSettings
    class Eac3AtmosSettings
      def self.default(visited=[])
        return nil if visited.include?('Eac3AtmosSettings')
        visited = visited + ['Eac3AtmosSettings']
        {
          bitrate: 1,
          bitstream_mode: 'bitstream_mode',
          coding_mode: 'coding_mode',
          dialogue_intelligence: 'dialogue_intelligence',
          downmix_control: 'downmix_control',
          dynamic_range_compression_line: 'dynamic_range_compression_line',
          dynamic_range_compression_rf: 'dynamic_range_compression_rf',
          dynamic_range_control: 'dynamic_range_control',
          lo_ro_center_mix_level: 1.0,
          lo_ro_surround_mix_level: 1.0,
          lt_rt_center_mix_level: 1.0,
          lt_rt_surround_mix_level: 1.0,
          metering_mode: 'metering_mode',
          sample_rate: 1,
          speech_threshold: 1,
          stereo_downmix: 'stereo_downmix',
          surround_ex_mode: 'surround_ex_mode',
        }
      end

      def self.stub(stub)
        stub ||= Types::Eac3AtmosSettings.new
        data = {}
        data['bitrate'] = stub[:bitrate] unless stub[:bitrate].nil?
        data['bitstreamMode'] = stub[:bitstream_mode] unless stub[:bitstream_mode].nil?
        data['codingMode'] = stub[:coding_mode] unless stub[:coding_mode].nil?
        data['dialogueIntelligence'] = stub[:dialogue_intelligence] unless stub[:dialogue_intelligence].nil?
        data['downmixControl'] = stub[:downmix_control] unless stub[:downmix_control].nil?
        data['dynamicRangeCompressionLine'] = stub[:dynamic_range_compression_line] unless stub[:dynamic_range_compression_line].nil?
        data['dynamicRangeCompressionRf'] = stub[:dynamic_range_compression_rf] unless stub[:dynamic_range_compression_rf].nil?
        data['dynamicRangeControl'] = stub[:dynamic_range_control] unless stub[:dynamic_range_control].nil?
        data['loRoCenterMixLevel'] = Hearth::NumberHelper.serialize(stub[:lo_ro_center_mix_level])
        data['loRoSurroundMixLevel'] = Hearth::NumberHelper.serialize(stub[:lo_ro_surround_mix_level])
        data['ltRtCenterMixLevel'] = Hearth::NumberHelper.serialize(stub[:lt_rt_center_mix_level])
        data['ltRtSurroundMixLevel'] = Hearth::NumberHelper.serialize(stub[:lt_rt_surround_mix_level])
        data['meteringMode'] = stub[:metering_mode] unless stub[:metering_mode].nil?
        data['sampleRate'] = stub[:sample_rate] unless stub[:sample_rate].nil?
        data['speechThreshold'] = stub[:speech_threshold] unless stub[:speech_threshold].nil?
        data['stereoDownmix'] = stub[:stereo_downmix] unless stub[:stereo_downmix].nil?
        data['surroundExMode'] = stub[:surround_ex_mode] unless stub[:surround_ex_mode].nil?
        data
      end
    end

    # Structure Stubber for AiffSettings
    class AiffSettings
      def self.default(visited=[])
        return nil if visited.include?('AiffSettings')
        visited = visited + ['AiffSettings']
        {
          bit_depth: 1,
          channels: 1,
          sample_rate: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::AiffSettings.new
        data = {}
        data['bitDepth'] = stub[:bit_depth] unless stub[:bit_depth].nil?
        data['channels'] = stub[:channels] unless stub[:channels].nil?
        data['sampleRate'] = stub[:sample_rate] unless stub[:sample_rate].nil?
        data
      end
    end

    # Structure Stubber for Ac3Settings
    class Ac3Settings
      def self.default(visited=[])
        return nil if visited.include?('Ac3Settings')
        visited = visited + ['Ac3Settings']
        {
          bitrate: 1,
          bitstream_mode: 'bitstream_mode',
          coding_mode: 'coding_mode',
          dialnorm: 1,
          dynamic_range_compression_line: 'dynamic_range_compression_line',
          dynamic_range_compression_profile: 'dynamic_range_compression_profile',
          dynamic_range_compression_rf: 'dynamic_range_compression_rf',
          lfe_filter: 'lfe_filter',
          metadata_control: 'metadata_control',
          sample_rate: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::Ac3Settings.new
        data = {}
        data['bitrate'] = stub[:bitrate] unless stub[:bitrate].nil?
        data['bitstreamMode'] = stub[:bitstream_mode] unless stub[:bitstream_mode].nil?
        data['codingMode'] = stub[:coding_mode] unless stub[:coding_mode].nil?
        data['dialnorm'] = stub[:dialnorm] unless stub[:dialnorm].nil?
        data['dynamicRangeCompressionLine'] = stub[:dynamic_range_compression_line] unless stub[:dynamic_range_compression_line].nil?
        data['dynamicRangeCompressionProfile'] = stub[:dynamic_range_compression_profile] unless stub[:dynamic_range_compression_profile].nil?
        data['dynamicRangeCompressionRf'] = stub[:dynamic_range_compression_rf] unless stub[:dynamic_range_compression_rf].nil?
        data['lfeFilter'] = stub[:lfe_filter] unless stub[:lfe_filter].nil?
        data['metadataControl'] = stub[:metadata_control] unless stub[:metadata_control].nil?
        data['sampleRate'] = stub[:sample_rate] unless stub[:sample_rate].nil?
        data
      end
    end

    # Structure Stubber for AacSettings
    class AacSettings
      def self.default(visited=[])
        return nil if visited.include?('AacSettings')
        visited = visited + ['AacSettings']
        {
          audio_description_broadcaster_mix: 'audio_description_broadcaster_mix',
          bitrate: 1,
          codec_profile: 'codec_profile',
          coding_mode: 'coding_mode',
          rate_control_mode: 'rate_control_mode',
          raw_format: 'raw_format',
          sample_rate: 1,
          specification: 'specification',
          vbr_quality: 'vbr_quality',
        }
      end

      def self.stub(stub)
        stub ||= Types::AacSettings.new
        data = {}
        data['audioDescriptionBroadcasterMix'] = stub[:audio_description_broadcaster_mix] unless stub[:audio_description_broadcaster_mix].nil?
        data['bitrate'] = stub[:bitrate] unless stub[:bitrate].nil?
        data['codecProfile'] = stub[:codec_profile] unless stub[:codec_profile].nil?
        data['codingMode'] = stub[:coding_mode] unless stub[:coding_mode].nil?
        data['rateControlMode'] = stub[:rate_control_mode] unless stub[:rate_control_mode].nil?
        data['rawFormat'] = stub[:raw_format] unless stub[:raw_format].nil?
        data['sampleRate'] = stub[:sample_rate] unless stub[:sample_rate].nil?
        data['specification'] = stub[:specification] unless stub[:specification].nil?
        data['vbrQuality'] = stub[:vbr_quality] unless stub[:vbr_quality].nil?
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
          correction_gate_level: 1,
          loudness_logging: 'loudness_logging',
          peak_calculation: 'peak_calculation',
          target_lkfs: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::AudioNormalizationSettings.new
        data = {}
        data['algorithm'] = stub[:algorithm] unless stub[:algorithm].nil?
        data['algorithmControl'] = stub[:algorithm_control] unless stub[:algorithm_control].nil?
        data['correctionGateLevel'] = stub[:correction_gate_level] unless stub[:correction_gate_level].nil?
        data['loudnessLogging'] = stub[:loudness_logging] unless stub[:loudness_logging].nil?
        data['peakCalculation'] = stub[:peak_calculation] unless stub[:peak_calculation].nil?
        data['targetLkfs'] = Hearth::NumberHelper.serialize(stub[:target_lkfs])
        data
      end
    end

    # Structure Stubber for AudioChannelTaggingSettings
    class AudioChannelTaggingSettings
      def self.default(visited=[])
        return nil if visited.include?('AudioChannelTaggingSettings')
        visited = visited + ['AudioChannelTaggingSettings']
        {
          channel_tag: 'channel_tag',
        }
      end

      def self.stub(stub)
        stub ||= Types::AudioChannelTaggingSettings.new
        data = {}
        data['channelTag'] = stub[:channel_tag] unless stub[:channel_tag].nil?
        data
      end
    end

    # Structure Stubber for OutputGroupSettings
    class OutputGroupSettings
      def self.default(visited=[])
        return nil if visited.include?('OutputGroupSettings')
        visited = visited + ['OutputGroupSettings']
        {
          cmaf_group_settings: Stubs::CmafGroupSettings.default(visited),
          dash_iso_group_settings: Stubs::DashIsoGroupSettings.default(visited),
          file_group_settings: Stubs::FileGroupSettings.default(visited),
          hls_group_settings: Stubs::HlsGroupSettings.default(visited),
          ms_smooth_group_settings: Stubs::MsSmoothGroupSettings.default(visited),
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::OutputGroupSettings.new
        data = {}
        data['cmafGroupSettings'] = Stubs::CmafGroupSettings.stub(stub[:cmaf_group_settings]) unless stub[:cmaf_group_settings].nil?
        data['dashIsoGroupSettings'] = Stubs::DashIsoGroupSettings.stub(stub[:dash_iso_group_settings]) unless stub[:dash_iso_group_settings].nil?
        data['fileGroupSettings'] = Stubs::FileGroupSettings.stub(stub[:file_group_settings]) unless stub[:file_group_settings].nil?
        data['hlsGroupSettings'] = Stubs::HlsGroupSettings.stub(stub[:hls_group_settings]) unless stub[:hls_group_settings].nil?
        data['msSmoothGroupSettings'] = Stubs::MsSmoothGroupSettings.stub(stub[:ms_smooth_group_settings]) unless stub[:ms_smooth_group_settings].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Structure Stubber for MsSmoothGroupSettings
    class MsSmoothGroupSettings
      def self.default(visited=[])
        return nil if visited.include?('MsSmoothGroupSettings')
        visited = visited + ['MsSmoothGroupSettings']
        {
          additional_manifests: Stubs::List____listOfMsSmoothAdditionalManifest.default(visited),
          audio_deduplication: 'audio_deduplication',
          destination: 'destination',
          destination_settings: Stubs::DestinationSettings.default(visited),
          encryption: Stubs::MsSmoothEncryptionSettings.default(visited),
          fragment_length: 1,
          fragment_length_control: 'fragment_length_control',
          manifest_encoding: 'manifest_encoding',
        }
      end

      def self.stub(stub)
        stub ||= Types::MsSmoothGroupSettings.new
        data = {}
        data['additionalManifests'] = Stubs::List____listOfMsSmoothAdditionalManifest.stub(stub[:additional_manifests]) unless stub[:additional_manifests].nil?
        data['audioDeduplication'] = stub[:audio_deduplication] unless stub[:audio_deduplication].nil?
        data['destination'] = stub[:destination] unless stub[:destination].nil?
        data['destinationSettings'] = Stubs::DestinationSettings.stub(stub[:destination_settings]) unless stub[:destination_settings].nil?
        data['encryption'] = Stubs::MsSmoothEncryptionSettings.stub(stub[:encryption]) unless stub[:encryption].nil?
        data['fragmentLength'] = stub[:fragment_length] unless stub[:fragment_length].nil?
        data['fragmentLengthControl'] = stub[:fragment_length_control] unless stub[:fragment_length_control].nil?
        data['manifestEncoding'] = stub[:manifest_encoding] unless stub[:manifest_encoding].nil?
        data
      end
    end

    # Structure Stubber for MsSmoothEncryptionSettings
    class MsSmoothEncryptionSettings
      def self.default(visited=[])
        return nil if visited.include?('MsSmoothEncryptionSettings')
        visited = visited + ['MsSmoothEncryptionSettings']
        {
          speke_key_provider: Stubs::SpekeKeyProvider.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MsSmoothEncryptionSettings.new
        data = {}
        data['spekeKeyProvider'] = Stubs::SpekeKeyProvider.stub(stub[:speke_key_provider]) unless stub[:speke_key_provider].nil?
        data
      end
    end

    # Structure Stubber for SpekeKeyProvider
    class SpekeKeyProvider
      def self.default(visited=[])
        return nil if visited.include?('SpekeKeyProvider')
        visited = visited + ['SpekeKeyProvider']
        {
          certificate_arn: 'certificate_arn',
          resource_id: 'resource_id',
          system_ids: Stubs::List____listOf__stringPattern09aFAF809aFAF409aFAF409aFAF409aFAF12.default(visited),
          url: 'url',
        }
      end

      def self.stub(stub)
        stub ||= Types::SpekeKeyProvider.new
        data = {}
        data['certificateArn'] = stub[:certificate_arn] unless stub[:certificate_arn].nil?
        data['resourceId'] = stub[:resource_id] unless stub[:resource_id].nil?
        data['systemIds'] = Stubs::List____listOf__stringPattern09aFAF809aFAF409aFAF409aFAF409aFAF12.stub(stub[:system_ids]) unless stub[:system_ids].nil?
        data['url'] = stub[:url] unless stub[:url].nil?
        data
      end
    end

    # List Stubber for __listOf__stringPattern09aFAF809aFAF409aFAF409aFAF409aFAF12
    class List____listOf__stringPattern09aFAF809aFAF409aFAF409aFAF409aFAF12
      def self.default(visited=[])
        return nil if visited.include?('List____listOf__stringPattern09aFAF809aFAF409aFAF409aFAF409aFAF12')
        visited = visited + ['List____listOf__stringPattern09aFAF809aFAF409aFAF409aFAF409aFAF12']
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

    # Structure Stubber for DestinationSettings
    class DestinationSettings
      def self.default(visited=[])
        return nil if visited.include?('DestinationSettings')
        visited = visited + ['DestinationSettings']
        {
          s3_settings: Stubs::S3DestinationSettings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DestinationSettings.new
        data = {}
        data['s3Settings'] = Stubs::S3DestinationSettings.stub(stub[:s3_settings]) unless stub[:s3_settings].nil?
        data
      end
    end

    # Structure Stubber for S3DestinationSettings
    class S3DestinationSettings
      def self.default(visited=[])
        return nil if visited.include?('S3DestinationSettings')
        visited = visited + ['S3DestinationSettings']
        {
          access_control: Stubs::S3DestinationAccessControl.default(visited),
          encryption: Stubs::S3EncryptionSettings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::S3DestinationSettings.new
        data = {}
        data['accessControl'] = Stubs::S3DestinationAccessControl.stub(stub[:access_control]) unless stub[:access_control].nil?
        data['encryption'] = Stubs::S3EncryptionSettings.stub(stub[:encryption]) unless stub[:encryption].nil?
        data
      end
    end

    # Structure Stubber for S3EncryptionSettings
    class S3EncryptionSettings
      def self.default(visited=[])
        return nil if visited.include?('S3EncryptionSettings')
        visited = visited + ['S3EncryptionSettings']
        {
          encryption_type: 'encryption_type',
          kms_encryption_context: 'kms_encryption_context',
          kms_key_arn: 'kms_key_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3EncryptionSettings.new
        data = {}
        data['encryptionType'] = stub[:encryption_type] unless stub[:encryption_type].nil?
        data['kmsEncryptionContext'] = stub[:kms_encryption_context] unless stub[:kms_encryption_context].nil?
        data['kmsKeyArn'] = stub[:kms_key_arn] unless stub[:kms_key_arn].nil?
        data
      end
    end

    # Structure Stubber for S3DestinationAccessControl
    class S3DestinationAccessControl
      def self.default(visited=[])
        return nil if visited.include?('S3DestinationAccessControl')
        visited = visited + ['S3DestinationAccessControl']
        {
          canned_acl: 'canned_acl',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3DestinationAccessControl.new
        data = {}
        data['cannedAcl'] = stub[:canned_acl] unless stub[:canned_acl].nil?
        data
      end
    end

    # List Stubber for __listOfMsSmoothAdditionalManifest
    class List____listOfMsSmoothAdditionalManifest
      def self.default(visited=[])
        return nil if visited.include?('List____listOfMsSmoothAdditionalManifest')
        visited = visited + ['List____listOfMsSmoothAdditionalManifest']
        [
          Stubs::MsSmoothAdditionalManifest.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::MsSmoothAdditionalManifest.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MsSmoothAdditionalManifest
    class MsSmoothAdditionalManifest
      def self.default(visited=[])
        return nil if visited.include?('MsSmoothAdditionalManifest')
        visited = visited + ['MsSmoothAdditionalManifest']
        {
          manifest_name_modifier: 'manifest_name_modifier',
          selected_outputs: Stubs::List____listOf__stringMin1.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MsSmoothAdditionalManifest.new
        data = {}
        data['manifestNameModifier'] = stub[:manifest_name_modifier] unless stub[:manifest_name_modifier].nil?
        data['selectedOutputs'] = Stubs::List____listOf__stringMin1.stub(stub[:selected_outputs]) unless stub[:selected_outputs].nil?
        data
      end
    end

    # List Stubber for __listOf__stringMin1
    class List____listOf__stringMin1
      def self.default(visited=[])
        return nil if visited.include?('List____listOf__stringMin1')
        visited = visited + ['List____listOf__stringMin1']
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

    # Structure Stubber for HlsGroupSettings
    class HlsGroupSettings
      def self.default(visited=[])
        return nil if visited.include?('HlsGroupSettings')
        visited = visited + ['HlsGroupSettings']
        {
          ad_markers: Stubs::List____listOfHlsAdMarkers.default(visited),
          additional_manifests: Stubs::List____listOfHlsAdditionalManifest.default(visited),
          audio_only_header: 'audio_only_header',
          base_url: 'base_url',
          caption_language_mappings: Stubs::List____listOfHlsCaptionLanguageMapping.default(visited),
          caption_language_setting: 'caption_language_setting',
          caption_segment_length_control: 'caption_segment_length_control',
          client_cache: 'client_cache',
          codec_specification: 'codec_specification',
          destination: 'destination',
          destination_settings: Stubs::DestinationSettings.default(visited),
          directory_structure: 'directory_structure',
          encryption: Stubs::HlsEncryptionSettings.default(visited),
          image_based_trick_play: 'image_based_trick_play',
          image_based_trick_play_settings: Stubs::HlsImageBasedTrickPlaySettings.default(visited),
          manifest_compression: 'manifest_compression',
          manifest_duration_format: 'manifest_duration_format',
          min_final_segment_length: 1.0,
          min_segment_length: 1,
          output_selection: 'output_selection',
          program_date_time: 'program_date_time',
          program_date_time_period: 1,
          segment_control: 'segment_control',
          segment_length: 1,
          segment_length_control: 'segment_length_control',
          segments_per_subdirectory: 1,
          stream_inf_resolution: 'stream_inf_resolution',
          target_duration_compatibility_mode: 'target_duration_compatibility_mode',
          timed_metadata_id3_frame: 'timed_metadata_id3_frame',
          timed_metadata_id3_period: 1,
          timestamp_delta_milliseconds: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::HlsGroupSettings.new
        data = {}
        data['adMarkers'] = Stubs::List____listOfHlsAdMarkers.stub(stub[:ad_markers]) unless stub[:ad_markers].nil?
        data['additionalManifests'] = Stubs::List____listOfHlsAdditionalManifest.stub(stub[:additional_manifests]) unless stub[:additional_manifests].nil?
        data['audioOnlyHeader'] = stub[:audio_only_header] unless stub[:audio_only_header].nil?
        data['baseUrl'] = stub[:base_url] unless stub[:base_url].nil?
        data['captionLanguageMappings'] = Stubs::List____listOfHlsCaptionLanguageMapping.stub(stub[:caption_language_mappings]) unless stub[:caption_language_mappings].nil?
        data['captionLanguageSetting'] = stub[:caption_language_setting] unless stub[:caption_language_setting].nil?
        data['captionSegmentLengthControl'] = stub[:caption_segment_length_control] unless stub[:caption_segment_length_control].nil?
        data['clientCache'] = stub[:client_cache] unless stub[:client_cache].nil?
        data['codecSpecification'] = stub[:codec_specification] unless stub[:codec_specification].nil?
        data['destination'] = stub[:destination] unless stub[:destination].nil?
        data['destinationSettings'] = Stubs::DestinationSettings.stub(stub[:destination_settings]) unless stub[:destination_settings].nil?
        data['directoryStructure'] = stub[:directory_structure] unless stub[:directory_structure].nil?
        data['encryption'] = Stubs::HlsEncryptionSettings.stub(stub[:encryption]) unless stub[:encryption].nil?
        data['imageBasedTrickPlay'] = stub[:image_based_trick_play] unless stub[:image_based_trick_play].nil?
        data['imageBasedTrickPlaySettings'] = Stubs::HlsImageBasedTrickPlaySettings.stub(stub[:image_based_trick_play_settings]) unless stub[:image_based_trick_play_settings].nil?
        data['manifestCompression'] = stub[:manifest_compression] unless stub[:manifest_compression].nil?
        data['manifestDurationFormat'] = stub[:manifest_duration_format] unless stub[:manifest_duration_format].nil?
        data['minFinalSegmentLength'] = Hearth::NumberHelper.serialize(stub[:min_final_segment_length])
        data['minSegmentLength'] = stub[:min_segment_length] unless stub[:min_segment_length].nil?
        data['outputSelection'] = stub[:output_selection] unless stub[:output_selection].nil?
        data['programDateTime'] = stub[:program_date_time] unless stub[:program_date_time].nil?
        data['programDateTimePeriod'] = stub[:program_date_time_period] unless stub[:program_date_time_period].nil?
        data['segmentControl'] = stub[:segment_control] unless stub[:segment_control].nil?
        data['segmentLength'] = stub[:segment_length] unless stub[:segment_length].nil?
        data['segmentLengthControl'] = stub[:segment_length_control] unless stub[:segment_length_control].nil?
        data['segmentsPerSubdirectory'] = stub[:segments_per_subdirectory] unless stub[:segments_per_subdirectory].nil?
        data['streamInfResolution'] = stub[:stream_inf_resolution] unless stub[:stream_inf_resolution].nil?
        data['targetDurationCompatibilityMode'] = stub[:target_duration_compatibility_mode] unless stub[:target_duration_compatibility_mode].nil?
        data['timedMetadataId3Frame'] = stub[:timed_metadata_id3_frame] unless stub[:timed_metadata_id3_frame].nil?
        data['timedMetadataId3Period'] = stub[:timed_metadata_id3_period] unless stub[:timed_metadata_id3_period].nil?
        data['timestampDeltaMilliseconds'] = stub[:timestamp_delta_milliseconds] unless stub[:timestamp_delta_milliseconds].nil?
        data
      end
    end

    # Structure Stubber for HlsImageBasedTrickPlaySettings
    class HlsImageBasedTrickPlaySettings
      def self.default(visited=[])
        return nil if visited.include?('HlsImageBasedTrickPlaySettings')
        visited = visited + ['HlsImageBasedTrickPlaySettings']
        {
          interval_cadence: 'interval_cadence',
          thumbnail_height: 1,
          thumbnail_interval: 1.0,
          thumbnail_width: 1,
          tile_height: 1,
          tile_width: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::HlsImageBasedTrickPlaySettings.new
        data = {}
        data['intervalCadence'] = stub[:interval_cadence] unless stub[:interval_cadence].nil?
        data['thumbnailHeight'] = stub[:thumbnail_height] unless stub[:thumbnail_height].nil?
        data['thumbnailInterval'] = Hearth::NumberHelper.serialize(stub[:thumbnail_interval])
        data['thumbnailWidth'] = stub[:thumbnail_width] unless stub[:thumbnail_width].nil?
        data['tileHeight'] = stub[:tile_height] unless stub[:tile_height].nil?
        data['tileWidth'] = stub[:tile_width] unless stub[:tile_width].nil?
        data
      end
    end

    # Structure Stubber for HlsEncryptionSettings
    class HlsEncryptionSettings
      def self.default(visited=[])
        return nil if visited.include?('HlsEncryptionSettings')
        visited = visited + ['HlsEncryptionSettings']
        {
          constant_initialization_vector: 'constant_initialization_vector',
          encryption_method: 'encryption_method',
          initialization_vector_in_manifest: 'initialization_vector_in_manifest',
          offline_encrypted: 'offline_encrypted',
          speke_key_provider: Stubs::SpekeKeyProvider.default(visited),
          static_key_provider: Stubs::StaticKeyProvider.default(visited),
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::HlsEncryptionSettings.new
        data = {}
        data['constantInitializationVector'] = stub[:constant_initialization_vector] unless stub[:constant_initialization_vector].nil?
        data['encryptionMethod'] = stub[:encryption_method] unless stub[:encryption_method].nil?
        data['initializationVectorInManifest'] = stub[:initialization_vector_in_manifest] unless stub[:initialization_vector_in_manifest].nil?
        data['offlineEncrypted'] = stub[:offline_encrypted] unless stub[:offline_encrypted].nil?
        data['spekeKeyProvider'] = Stubs::SpekeKeyProvider.stub(stub[:speke_key_provider]) unless stub[:speke_key_provider].nil?
        data['staticKeyProvider'] = Stubs::StaticKeyProvider.stub(stub[:static_key_provider]) unless stub[:static_key_provider].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Structure Stubber for StaticKeyProvider
    class StaticKeyProvider
      def self.default(visited=[])
        return nil if visited.include?('StaticKeyProvider')
        visited = visited + ['StaticKeyProvider']
        {
          key_format: 'key_format',
          key_format_versions: 'key_format_versions',
          static_key_value: 'static_key_value',
          url: 'url',
        }
      end

      def self.stub(stub)
        stub ||= Types::StaticKeyProvider.new
        data = {}
        data['keyFormat'] = stub[:key_format] unless stub[:key_format].nil?
        data['keyFormatVersions'] = stub[:key_format_versions] unless stub[:key_format_versions].nil?
        data['staticKeyValue'] = stub[:static_key_value] unless stub[:static_key_value].nil?
        data['url'] = stub[:url] unless stub[:url].nil?
        data
      end
    end

    # List Stubber for __listOfHlsCaptionLanguageMapping
    class List____listOfHlsCaptionLanguageMapping
      def self.default(visited=[])
        return nil if visited.include?('List____listOfHlsCaptionLanguageMapping')
        visited = visited + ['List____listOfHlsCaptionLanguageMapping']
        [
          Stubs::HlsCaptionLanguageMapping.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::HlsCaptionLanguageMapping.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for HlsCaptionLanguageMapping
    class HlsCaptionLanguageMapping
      def self.default(visited=[])
        return nil if visited.include?('HlsCaptionLanguageMapping')
        visited = visited + ['HlsCaptionLanguageMapping']
        {
          caption_channel: 1,
          custom_language_code: 'custom_language_code',
          language_code: 'language_code',
          language_description: 'language_description',
        }
      end

      def self.stub(stub)
        stub ||= Types::HlsCaptionLanguageMapping.new
        data = {}
        data['captionChannel'] = stub[:caption_channel] unless stub[:caption_channel].nil?
        data['customLanguageCode'] = stub[:custom_language_code] unless stub[:custom_language_code].nil?
        data['languageCode'] = stub[:language_code] unless stub[:language_code].nil?
        data['languageDescription'] = stub[:language_description] unless stub[:language_description].nil?
        data
      end
    end

    # List Stubber for __listOfHlsAdditionalManifest
    class List____listOfHlsAdditionalManifest
      def self.default(visited=[])
        return nil if visited.include?('List____listOfHlsAdditionalManifest')
        visited = visited + ['List____listOfHlsAdditionalManifest']
        [
          Stubs::HlsAdditionalManifest.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::HlsAdditionalManifest.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for HlsAdditionalManifest
    class HlsAdditionalManifest
      def self.default(visited=[])
        return nil if visited.include?('HlsAdditionalManifest')
        visited = visited + ['HlsAdditionalManifest']
        {
          manifest_name_modifier: 'manifest_name_modifier',
          selected_outputs: Stubs::List____listOf__stringMin1.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::HlsAdditionalManifest.new
        data = {}
        data['manifestNameModifier'] = stub[:manifest_name_modifier] unless stub[:manifest_name_modifier].nil?
        data['selectedOutputs'] = Stubs::List____listOf__stringMin1.stub(stub[:selected_outputs]) unless stub[:selected_outputs].nil?
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

    # Structure Stubber for FileGroupSettings
    class FileGroupSettings
      def self.default(visited=[])
        return nil if visited.include?('FileGroupSettings')
        visited = visited + ['FileGroupSettings']
        {
          destination: 'destination',
          destination_settings: Stubs::DestinationSettings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FileGroupSettings.new
        data = {}
        data['destination'] = stub[:destination] unless stub[:destination].nil?
        data['destinationSettings'] = Stubs::DestinationSettings.stub(stub[:destination_settings]) unless stub[:destination_settings].nil?
        data
      end
    end

    # Structure Stubber for DashIsoGroupSettings
    class DashIsoGroupSettings
      def self.default(visited=[])
        return nil if visited.include?('DashIsoGroupSettings')
        visited = visited + ['DashIsoGroupSettings']
        {
          additional_manifests: Stubs::List____listOfDashAdditionalManifest.default(visited),
          audio_channel_config_scheme_id_uri: 'audio_channel_config_scheme_id_uri',
          base_url: 'base_url',
          destination: 'destination',
          destination_settings: Stubs::DestinationSettings.default(visited),
          encryption: Stubs::DashIsoEncryptionSettings.default(visited),
          fragment_length: 1,
          hbbtv_compliance: 'hbbtv_compliance',
          image_based_trick_play: 'image_based_trick_play',
          image_based_trick_play_settings: Stubs::DashIsoImageBasedTrickPlaySettings.default(visited),
          min_buffer_time: 1,
          min_final_segment_length: 1.0,
          mpd_profile: 'mpd_profile',
          pts_offset_handling_for_b_frames: 'pts_offset_handling_for_b_frames',
          segment_control: 'segment_control',
          segment_length: 1,
          segment_length_control: 'segment_length_control',
          write_segment_timeline_in_representation: 'write_segment_timeline_in_representation',
        }
      end

      def self.stub(stub)
        stub ||= Types::DashIsoGroupSettings.new
        data = {}
        data['additionalManifests'] = Stubs::List____listOfDashAdditionalManifest.stub(stub[:additional_manifests]) unless stub[:additional_manifests].nil?
        data['audioChannelConfigSchemeIdUri'] = stub[:audio_channel_config_scheme_id_uri] unless stub[:audio_channel_config_scheme_id_uri].nil?
        data['baseUrl'] = stub[:base_url] unless stub[:base_url].nil?
        data['destination'] = stub[:destination] unless stub[:destination].nil?
        data['destinationSettings'] = Stubs::DestinationSettings.stub(stub[:destination_settings]) unless stub[:destination_settings].nil?
        data['encryption'] = Stubs::DashIsoEncryptionSettings.stub(stub[:encryption]) unless stub[:encryption].nil?
        data['fragmentLength'] = stub[:fragment_length] unless stub[:fragment_length].nil?
        data['hbbtvCompliance'] = stub[:hbbtv_compliance] unless stub[:hbbtv_compliance].nil?
        data['imageBasedTrickPlay'] = stub[:image_based_trick_play] unless stub[:image_based_trick_play].nil?
        data['imageBasedTrickPlaySettings'] = Stubs::DashIsoImageBasedTrickPlaySettings.stub(stub[:image_based_trick_play_settings]) unless stub[:image_based_trick_play_settings].nil?
        data['minBufferTime'] = stub[:min_buffer_time] unless stub[:min_buffer_time].nil?
        data['minFinalSegmentLength'] = Hearth::NumberHelper.serialize(stub[:min_final_segment_length])
        data['mpdProfile'] = stub[:mpd_profile] unless stub[:mpd_profile].nil?
        data['ptsOffsetHandlingForBFrames'] = stub[:pts_offset_handling_for_b_frames] unless stub[:pts_offset_handling_for_b_frames].nil?
        data['segmentControl'] = stub[:segment_control] unless stub[:segment_control].nil?
        data['segmentLength'] = stub[:segment_length] unless stub[:segment_length].nil?
        data['segmentLengthControl'] = stub[:segment_length_control] unless stub[:segment_length_control].nil?
        data['writeSegmentTimelineInRepresentation'] = stub[:write_segment_timeline_in_representation] unless stub[:write_segment_timeline_in_representation].nil?
        data
      end
    end

    # Structure Stubber for DashIsoImageBasedTrickPlaySettings
    class DashIsoImageBasedTrickPlaySettings
      def self.default(visited=[])
        return nil if visited.include?('DashIsoImageBasedTrickPlaySettings')
        visited = visited + ['DashIsoImageBasedTrickPlaySettings']
        {
          interval_cadence: 'interval_cadence',
          thumbnail_height: 1,
          thumbnail_interval: 1.0,
          thumbnail_width: 1,
          tile_height: 1,
          tile_width: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::DashIsoImageBasedTrickPlaySettings.new
        data = {}
        data['intervalCadence'] = stub[:interval_cadence] unless stub[:interval_cadence].nil?
        data['thumbnailHeight'] = stub[:thumbnail_height] unless stub[:thumbnail_height].nil?
        data['thumbnailInterval'] = Hearth::NumberHelper.serialize(stub[:thumbnail_interval])
        data['thumbnailWidth'] = stub[:thumbnail_width] unless stub[:thumbnail_width].nil?
        data['tileHeight'] = stub[:tile_height] unless stub[:tile_height].nil?
        data['tileWidth'] = stub[:tile_width] unless stub[:tile_width].nil?
        data
      end
    end

    # Structure Stubber for DashIsoEncryptionSettings
    class DashIsoEncryptionSettings
      def self.default(visited=[])
        return nil if visited.include?('DashIsoEncryptionSettings')
        visited = visited + ['DashIsoEncryptionSettings']
        {
          playback_device_compatibility: 'playback_device_compatibility',
          speke_key_provider: Stubs::SpekeKeyProvider.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DashIsoEncryptionSettings.new
        data = {}
        data['playbackDeviceCompatibility'] = stub[:playback_device_compatibility] unless stub[:playback_device_compatibility].nil?
        data['spekeKeyProvider'] = Stubs::SpekeKeyProvider.stub(stub[:speke_key_provider]) unless stub[:speke_key_provider].nil?
        data
      end
    end

    # List Stubber for __listOfDashAdditionalManifest
    class List____listOfDashAdditionalManifest
      def self.default(visited=[])
        return nil if visited.include?('List____listOfDashAdditionalManifest')
        visited = visited + ['List____listOfDashAdditionalManifest']
        [
          Stubs::DashAdditionalManifest.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DashAdditionalManifest.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DashAdditionalManifest
    class DashAdditionalManifest
      def self.default(visited=[])
        return nil if visited.include?('DashAdditionalManifest')
        visited = visited + ['DashAdditionalManifest']
        {
          manifest_name_modifier: 'manifest_name_modifier',
          selected_outputs: Stubs::List____listOf__stringMin1.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DashAdditionalManifest.new
        data = {}
        data['manifestNameModifier'] = stub[:manifest_name_modifier] unless stub[:manifest_name_modifier].nil?
        data['selectedOutputs'] = Stubs::List____listOf__stringMin1.stub(stub[:selected_outputs]) unless stub[:selected_outputs].nil?
        data
      end
    end

    # Structure Stubber for CmafGroupSettings
    class CmafGroupSettings
      def self.default(visited=[])
        return nil if visited.include?('CmafGroupSettings')
        visited = visited + ['CmafGroupSettings']
        {
          additional_manifests: Stubs::List____listOfCmafAdditionalManifest.default(visited),
          base_url: 'base_url',
          client_cache: 'client_cache',
          codec_specification: 'codec_specification',
          destination: 'destination',
          destination_settings: Stubs::DestinationSettings.default(visited),
          encryption: Stubs::CmafEncryptionSettings.default(visited),
          fragment_length: 1,
          image_based_trick_play: 'image_based_trick_play',
          image_based_trick_play_settings: Stubs::CmafImageBasedTrickPlaySettings.default(visited),
          manifest_compression: 'manifest_compression',
          manifest_duration_format: 'manifest_duration_format',
          min_buffer_time: 1,
          min_final_segment_length: 1.0,
          mpd_profile: 'mpd_profile',
          pts_offset_handling_for_b_frames: 'pts_offset_handling_for_b_frames',
          segment_control: 'segment_control',
          segment_length: 1,
          segment_length_control: 'segment_length_control',
          stream_inf_resolution: 'stream_inf_resolution',
          target_duration_compatibility_mode: 'target_duration_compatibility_mode',
          write_dash_manifest: 'write_dash_manifest',
          write_hls_manifest: 'write_hls_manifest',
          write_segment_timeline_in_representation: 'write_segment_timeline_in_representation',
        }
      end

      def self.stub(stub)
        stub ||= Types::CmafGroupSettings.new
        data = {}
        data['additionalManifests'] = Stubs::List____listOfCmafAdditionalManifest.stub(stub[:additional_manifests]) unless stub[:additional_manifests].nil?
        data['baseUrl'] = stub[:base_url] unless stub[:base_url].nil?
        data['clientCache'] = stub[:client_cache] unless stub[:client_cache].nil?
        data['codecSpecification'] = stub[:codec_specification] unless stub[:codec_specification].nil?
        data['destination'] = stub[:destination] unless stub[:destination].nil?
        data['destinationSettings'] = Stubs::DestinationSettings.stub(stub[:destination_settings]) unless stub[:destination_settings].nil?
        data['encryption'] = Stubs::CmafEncryptionSettings.stub(stub[:encryption]) unless stub[:encryption].nil?
        data['fragmentLength'] = stub[:fragment_length] unless stub[:fragment_length].nil?
        data['imageBasedTrickPlay'] = stub[:image_based_trick_play] unless stub[:image_based_trick_play].nil?
        data['imageBasedTrickPlaySettings'] = Stubs::CmafImageBasedTrickPlaySettings.stub(stub[:image_based_trick_play_settings]) unless stub[:image_based_trick_play_settings].nil?
        data['manifestCompression'] = stub[:manifest_compression] unless stub[:manifest_compression].nil?
        data['manifestDurationFormat'] = stub[:manifest_duration_format] unless stub[:manifest_duration_format].nil?
        data['minBufferTime'] = stub[:min_buffer_time] unless stub[:min_buffer_time].nil?
        data['minFinalSegmentLength'] = Hearth::NumberHelper.serialize(stub[:min_final_segment_length])
        data['mpdProfile'] = stub[:mpd_profile] unless stub[:mpd_profile].nil?
        data['ptsOffsetHandlingForBFrames'] = stub[:pts_offset_handling_for_b_frames] unless stub[:pts_offset_handling_for_b_frames].nil?
        data['segmentControl'] = stub[:segment_control] unless stub[:segment_control].nil?
        data['segmentLength'] = stub[:segment_length] unless stub[:segment_length].nil?
        data['segmentLengthControl'] = stub[:segment_length_control] unless stub[:segment_length_control].nil?
        data['streamInfResolution'] = stub[:stream_inf_resolution] unless stub[:stream_inf_resolution].nil?
        data['targetDurationCompatibilityMode'] = stub[:target_duration_compatibility_mode] unless stub[:target_duration_compatibility_mode].nil?
        data['writeDashManifest'] = stub[:write_dash_manifest] unless stub[:write_dash_manifest].nil?
        data['writeHlsManifest'] = stub[:write_hls_manifest] unless stub[:write_hls_manifest].nil?
        data['writeSegmentTimelineInRepresentation'] = stub[:write_segment_timeline_in_representation] unless stub[:write_segment_timeline_in_representation].nil?
        data
      end
    end

    # Structure Stubber for CmafImageBasedTrickPlaySettings
    class CmafImageBasedTrickPlaySettings
      def self.default(visited=[])
        return nil if visited.include?('CmafImageBasedTrickPlaySettings')
        visited = visited + ['CmafImageBasedTrickPlaySettings']
        {
          interval_cadence: 'interval_cadence',
          thumbnail_height: 1,
          thumbnail_interval: 1.0,
          thumbnail_width: 1,
          tile_height: 1,
          tile_width: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::CmafImageBasedTrickPlaySettings.new
        data = {}
        data['intervalCadence'] = stub[:interval_cadence] unless stub[:interval_cadence].nil?
        data['thumbnailHeight'] = stub[:thumbnail_height] unless stub[:thumbnail_height].nil?
        data['thumbnailInterval'] = Hearth::NumberHelper.serialize(stub[:thumbnail_interval])
        data['thumbnailWidth'] = stub[:thumbnail_width] unless stub[:thumbnail_width].nil?
        data['tileHeight'] = stub[:tile_height] unless stub[:tile_height].nil?
        data['tileWidth'] = stub[:tile_width] unless stub[:tile_width].nil?
        data
      end
    end

    # Structure Stubber for CmafEncryptionSettings
    class CmafEncryptionSettings
      def self.default(visited=[])
        return nil if visited.include?('CmafEncryptionSettings')
        visited = visited + ['CmafEncryptionSettings']
        {
          constant_initialization_vector: 'constant_initialization_vector',
          encryption_method: 'encryption_method',
          initialization_vector_in_manifest: 'initialization_vector_in_manifest',
          speke_key_provider: Stubs::SpekeKeyProviderCmaf.default(visited),
          static_key_provider: Stubs::StaticKeyProvider.default(visited),
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::CmafEncryptionSettings.new
        data = {}
        data['constantInitializationVector'] = stub[:constant_initialization_vector] unless stub[:constant_initialization_vector].nil?
        data['encryptionMethod'] = stub[:encryption_method] unless stub[:encryption_method].nil?
        data['initializationVectorInManifest'] = stub[:initialization_vector_in_manifest] unless stub[:initialization_vector_in_manifest].nil?
        data['spekeKeyProvider'] = Stubs::SpekeKeyProviderCmaf.stub(stub[:speke_key_provider]) unless stub[:speke_key_provider].nil?
        data['staticKeyProvider'] = Stubs::StaticKeyProvider.stub(stub[:static_key_provider]) unless stub[:static_key_provider].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Structure Stubber for SpekeKeyProviderCmaf
    class SpekeKeyProviderCmaf
      def self.default(visited=[])
        return nil if visited.include?('SpekeKeyProviderCmaf')
        visited = visited + ['SpekeKeyProviderCmaf']
        {
          certificate_arn: 'certificate_arn',
          dash_signaled_system_ids: Stubs::List____listOf__stringMin36Max36Pattern09aFAF809aFAF409aFAF409aFAF409aFAF12.default(visited),
          hls_signaled_system_ids: Stubs::List____listOf__stringMin36Max36Pattern09aFAF809aFAF409aFAF409aFAF409aFAF12.default(visited),
          resource_id: 'resource_id',
          url: 'url',
        }
      end

      def self.stub(stub)
        stub ||= Types::SpekeKeyProviderCmaf.new
        data = {}
        data['certificateArn'] = stub[:certificate_arn] unless stub[:certificate_arn].nil?
        data['dashSignaledSystemIds'] = Stubs::List____listOf__stringMin36Max36Pattern09aFAF809aFAF409aFAF409aFAF409aFAF12.stub(stub[:dash_signaled_system_ids]) unless stub[:dash_signaled_system_ids].nil?
        data['hlsSignaledSystemIds'] = Stubs::List____listOf__stringMin36Max36Pattern09aFAF809aFAF409aFAF409aFAF409aFAF12.stub(stub[:hls_signaled_system_ids]) unless stub[:hls_signaled_system_ids].nil?
        data['resourceId'] = stub[:resource_id] unless stub[:resource_id].nil?
        data['url'] = stub[:url] unless stub[:url].nil?
        data
      end
    end

    # List Stubber for __listOf__stringMin36Max36Pattern09aFAF809aFAF409aFAF409aFAF409aFAF12
    class List____listOf__stringMin36Max36Pattern09aFAF809aFAF409aFAF409aFAF409aFAF12
      def self.default(visited=[])
        return nil if visited.include?('List____listOf__stringMin36Max36Pattern09aFAF809aFAF409aFAF409aFAF409aFAF12')
        visited = visited + ['List____listOf__stringMin36Max36Pattern09aFAF809aFAF409aFAF409aFAF409aFAF12']
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

    # List Stubber for __listOfCmafAdditionalManifest
    class List____listOfCmafAdditionalManifest
      def self.default(visited=[])
        return nil if visited.include?('List____listOfCmafAdditionalManifest')
        visited = visited + ['List____listOfCmafAdditionalManifest']
        [
          Stubs::CmafAdditionalManifest.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::CmafAdditionalManifest.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CmafAdditionalManifest
    class CmafAdditionalManifest
      def self.default(visited=[])
        return nil if visited.include?('CmafAdditionalManifest')
        visited = visited + ['CmafAdditionalManifest']
        {
          manifest_name_modifier: 'manifest_name_modifier',
          selected_outputs: Stubs::List____listOf__stringMin1.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CmafAdditionalManifest.new
        data = {}
        data['manifestNameModifier'] = stub[:manifest_name_modifier] unless stub[:manifest_name_modifier].nil?
        data['selectedOutputs'] = Stubs::List____listOf__stringMin1.stub(stub[:selected_outputs]) unless stub[:selected_outputs].nil?
        data
      end
    end

    # Structure Stubber for AutomatedEncodingSettings
    class AutomatedEncodingSettings
      def self.default(visited=[])
        return nil if visited.include?('AutomatedEncodingSettings')
        visited = visited + ['AutomatedEncodingSettings']
        {
          abr_settings: Stubs::AutomatedAbrSettings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AutomatedEncodingSettings.new
        data = {}
        data['abrSettings'] = Stubs::AutomatedAbrSettings.stub(stub[:abr_settings]) unless stub[:abr_settings].nil?
        data
      end
    end

    # Structure Stubber for AutomatedAbrSettings
    class AutomatedAbrSettings
      def self.default(visited=[])
        return nil if visited.include?('AutomatedAbrSettings')
        visited = visited + ['AutomatedAbrSettings']
        {
          max_abr_bitrate: 1,
          max_renditions: 1,
          min_abr_bitrate: 1,
          rules: Stubs::List____listOfAutomatedAbrRule.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AutomatedAbrSettings.new
        data = {}
        data['maxAbrBitrate'] = stub[:max_abr_bitrate] unless stub[:max_abr_bitrate].nil?
        data['maxRenditions'] = stub[:max_renditions] unless stub[:max_renditions].nil?
        data['minAbrBitrate'] = stub[:min_abr_bitrate] unless stub[:min_abr_bitrate].nil?
        data['rules'] = Stubs::List____listOfAutomatedAbrRule.stub(stub[:rules]) unless stub[:rules].nil?
        data
      end
    end

    # List Stubber for __listOfAutomatedAbrRule
    class List____listOfAutomatedAbrRule
      def self.default(visited=[])
        return nil if visited.include?('List____listOfAutomatedAbrRule')
        visited = visited + ['List____listOfAutomatedAbrRule']
        [
          Stubs::AutomatedAbrRule.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AutomatedAbrRule.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AutomatedAbrRule
    class AutomatedAbrRule
      def self.default(visited=[])
        return nil if visited.include?('AutomatedAbrRule')
        visited = visited + ['AutomatedAbrRule']
        {
          allowed_renditions: Stubs::List____listOfAllowedRenditionSize.default(visited),
          force_include_renditions: Stubs::List____listOfForceIncludeRenditionSize.default(visited),
          min_bottom_rendition_size: Stubs::MinBottomRenditionSize.default(visited),
          min_top_rendition_size: Stubs::MinTopRenditionSize.default(visited),
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::AutomatedAbrRule.new
        data = {}
        data['allowedRenditions'] = Stubs::List____listOfAllowedRenditionSize.stub(stub[:allowed_renditions]) unless stub[:allowed_renditions].nil?
        data['forceIncludeRenditions'] = Stubs::List____listOfForceIncludeRenditionSize.stub(stub[:force_include_renditions]) unless stub[:force_include_renditions].nil?
        data['minBottomRenditionSize'] = Stubs::MinBottomRenditionSize.stub(stub[:min_bottom_rendition_size]) unless stub[:min_bottom_rendition_size].nil?
        data['minTopRenditionSize'] = Stubs::MinTopRenditionSize.stub(stub[:min_top_rendition_size]) unless stub[:min_top_rendition_size].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Structure Stubber for MinTopRenditionSize
    class MinTopRenditionSize
      def self.default(visited=[])
        return nil if visited.include?('MinTopRenditionSize')
        visited = visited + ['MinTopRenditionSize']
        {
          height: 1,
          width: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::MinTopRenditionSize.new
        data = {}
        data['height'] = stub[:height] unless stub[:height].nil?
        data['width'] = stub[:width] unless stub[:width].nil?
        data
      end
    end

    # Structure Stubber for MinBottomRenditionSize
    class MinBottomRenditionSize
      def self.default(visited=[])
        return nil if visited.include?('MinBottomRenditionSize')
        visited = visited + ['MinBottomRenditionSize']
        {
          height: 1,
          width: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::MinBottomRenditionSize.new
        data = {}
        data['height'] = stub[:height] unless stub[:height].nil?
        data['width'] = stub[:width] unless stub[:width].nil?
        data
      end
    end

    # List Stubber for __listOfForceIncludeRenditionSize
    class List____listOfForceIncludeRenditionSize
      def self.default(visited=[])
        return nil if visited.include?('List____listOfForceIncludeRenditionSize')
        visited = visited + ['List____listOfForceIncludeRenditionSize']
        [
          Stubs::ForceIncludeRenditionSize.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ForceIncludeRenditionSize.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ForceIncludeRenditionSize
    class ForceIncludeRenditionSize
      def self.default(visited=[])
        return nil if visited.include?('ForceIncludeRenditionSize')
        visited = visited + ['ForceIncludeRenditionSize']
        {
          height: 1,
          width: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ForceIncludeRenditionSize.new
        data = {}
        data['height'] = stub[:height] unless stub[:height].nil?
        data['width'] = stub[:width] unless stub[:width].nil?
        data
      end
    end

    # List Stubber for __listOfAllowedRenditionSize
    class List____listOfAllowedRenditionSize
      def self.default(visited=[])
        return nil if visited.include?('List____listOfAllowedRenditionSize')
        visited = visited + ['List____listOfAllowedRenditionSize']
        [
          Stubs::AllowedRenditionSize.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AllowedRenditionSize.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AllowedRenditionSize
    class AllowedRenditionSize
      def self.default(visited=[])
        return nil if visited.include?('AllowedRenditionSize')
        visited = visited + ['AllowedRenditionSize']
        {
          height: 1,
          required: 'required',
          width: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::AllowedRenditionSize.new
        data = {}
        data['height'] = stub[:height] unless stub[:height].nil?
        data['required'] = stub[:required] unless stub[:required].nil?
        data['width'] = stub[:width] unless stub[:width].nil?
        data
      end
    end

    # Structure Stubber for NielsenNonLinearWatermarkSettings
    class NielsenNonLinearWatermarkSettings
      def self.default(visited=[])
        return nil if visited.include?('NielsenNonLinearWatermarkSettings')
        visited = visited + ['NielsenNonLinearWatermarkSettings']
        {
          active_watermark_process: 'active_watermark_process',
          adi_filename: 'adi_filename',
          asset_id: 'asset_id',
          asset_name: 'asset_name',
          cbet_source_id: 'cbet_source_id',
          episode_id: 'episode_id',
          metadata_destination: 'metadata_destination',
          source_id: 1,
          source_watermark_status: 'source_watermark_status',
          tic_server_url: 'tic_server_url',
          unique_tic_per_audio_track: 'unique_tic_per_audio_track',
        }
      end

      def self.stub(stub)
        stub ||= Types::NielsenNonLinearWatermarkSettings.new
        data = {}
        data['activeWatermarkProcess'] = stub[:active_watermark_process] unless stub[:active_watermark_process].nil?
        data['adiFilename'] = stub[:adi_filename] unless stub[:adi_filename].nil?
        data['assetId'] = stub[:asset_id] unless stub[:asset_id].nil?
        data['assetName'] = stub[:asset_name] unless stub[:asset_name].nil?
        data['cbetSourceId'] = stub[:cbet_source_id] unless stub[:cbet_source_id].nil?
        data['episodeId'] = stub[:episode_id] unless stub[:episode_id].nil?
        data['metadataDestination'] = stub[:metadata_destination] unless stub[:metadata_destination].nil?
        data['sourceId'] = stub[:source_id] unless stub[:source_id].nil?
        data['sourceWatermarkStatus'] = stub[:source_watermark_status] unless stub[:source_watermark_status].nil?
        data['ticServerUrl'] = stub[:tic_server_url] unless stub[:tic_server_url].nil?
        data['uniqueTicPerAudioTrack'] = stub[:unique_tic_per_audio_track] unless stub[:unique_tic_per_audio_track].nil?
        data
      end
    end

    # Structure Stubber for NielsenConfiguration
    class NielsenConfiguration
      def self.default(visited=[])
        return nil if visited.include?('NielsenConfiguration')
        visited = visited + ['NielsenConfiguration']
        {
          breakout_code: 1,
          distributor_id: 'distributor_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::NielsenConfiguration.new
        data = {}
        data['breakoutCode'] = stub[:breakout_code] unless stub[:breakout_code].nil?
        data['distributorId'] = stub[:distributor_id] unless stub[:distributor_id].nil?
        data
      end
    end

    # Structure Stubber for MotionImageInserter
    class MotionImageInserter
      def self.default(visited=[])
        return nil if visited.include?('MotionImageInserter')
        visited = visited + ['MotionImageInserter']
        {
          framerate: Stubs::MotionImageInsertionFramerate.default(visited),
          input: 'input',
          insertion_mode: 'insertion_mode',
          offset: Stubs::MotionImageInsertionOffset.default(visited),
          playback: 'playback',
          start_time: 'start_time',
        }
      end

      def self.stub(stub)
        stub ||= Types::MotionImageInserter.new
        data = {}
        data['framerate'] = Stubs::MotionImageInsertionFramerate.stub(stub[:framerate]) unless stub[:framerate].nil?
        data['input'] = stub[:input] unless stub[:input].nil?
        data['insertionMode'] = stub[:insertion_mode] unless stub[:insertion_mode].nil?
        data['offset'] = Stubs::MotionImageInsertionOffset.stub(stub[:offset]) unless stub[:offset].nil?
        data['playback'] = stub[:playback] unless stub[:playback].nil?
        data['startTime'] = stub[:start_time] unless stub[:start_time].nil?
        data
      end
    end

    # Structure Stubber for MotionImageInsertionOffset
    class MotionImageInsertionOffset
      def self.default(visited=[])
        return nil if visited.include?('MotionImageInsertionOffset')
        visited = visited + ['MotionImageInsertionOffset']
        {
          image_x: 1,
          image_y: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::MotionImageInsertionOffset.new
        data = {}
        data['imageX'] = stub[:image_x] unless stub[:image_x].nil?
        data['imageY'] = stub[:image_y] unless stub[:image_y].nil?
        data
      end
    end

    # Structure Stubber for MotionImageInsertionFramerate
    class MotionImageInsertionFramerate
      def self.default(visited=[])
        return nil if visited.include?('MotionImageInsertionFramerate')
        visited = visited + ['MotionImageInsertionFramerate']
        {
          framerate_denominator: 1,
          framerate_numerator: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::MotionImageInsertionFramerate.new
        data = {}
        data['framerateDenominator'] = stub[:framerate_denominator] unless stub[:framerate_denominator].nil?
        data['framerateNumerator'] = stub[:framerate_numerator] unless stub[:framerate_numerator].nil?
        data
      end
    end

    # Structure Stubber for KantarWatermarkSettings
    class KantarWatermarkSettings
      def self.default(visited=[])
        return nil if visited.include?('KantarWatermarkSettings')
        visited = visited + ['KantarWatermarkSettings']
        {
          channel_name: 'channel_name',
          content_reference: 'content_reference',
          credentials_secret_name: 'credentials_secret_name',
          file_offset: 1.0,
          kantar_license_id: 1,
          kantar_server_url: 'kantar_server_url',
          log_destination: 'log_destination',
          metadata3: 'metadata3',
          metadata4: 'metadata4',
          metadata5: 'metadata5',
          metadata6: 'metadata6',
          metadata7: 'metadata7',
          metadata8: 'metadata8',
        }
      end

      def self.stub(stub)
        stub ||= Types::KantarWatermarkSettings.new
        data = {}
        data['channelName'] = stub[:channel_name] unless stub[:channel_name].nil?
        data['contentReference'] = stub[:content_reference] unless stub[:content_reference].nil?
        data['credentialsSecretName'] = stub[:credentials_secret_name] unless stub[:credentials_secret_name].nil?
        data['fileOffset'] = Hearth::NumberHelper.serialize(stub[:file_offset])
        data['kantarLicenseId'] = stub[:kantar_license_id] unless stub[:kantar_license_id].nil?
        data['kantarServerUrl'] = stub[:kantar_server_url] unless stub[:kantar_server_url].nil?
        data['logDestination'] = stub[:log_destination] unless stub[:log_destination].nil?
        data['metadata3'] = stub[:metadata3] unless stub[:metadata3].nil?
        data['metadata4'] = stub[:metadata4] unless stub[:metadata4].nil?
        data['metadata5'] = stub[:metadata5] unless stub[:metadata5].nil?
        data['metadata6'] = stub[:metadata6] unless stub[:metadata6].nil?
        data['metadata7'] = stub[:metadata7] unless stub[:metadata7].nil?
        data['metadata8'] = stub[:metadata8] unless stub[:metadata8].nil?
        data
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

    # Structure Stubber for Input
    class Input
      def self.default(visited=[])
        return nil if visited.include?('Input')
        visited = visited + ['Input']
        {
          audio_selector_groups: Stubs::Map____mapOfAudioSelectorGroup.default(visited),
          audio_selectors: Stubs::Map____mapOfAudioSelector.default(visited),
          caption_selectors: Stubs::Map____mapOfCaptionSelector.default(visited),
          crop: Stubs::Rectangle.default(visited),
          deblock_filter: 'deblock_filter',
          decryption_settings: Stubs::InputDecryptionSettings.default(visited),
          denoise_filter: 'denoise_filter',
          dolby_vision_metadata_xml: 'dolby_vision_metadata_xml',
          file_input: 'file_input',
          filter_enable: 'filter_enable',
          filter_strength: 1,
          image_inserter: Stubs::ImageInserter.default(visited),
          input_clippings: Stubs::List____listOfInputClipping.default(visited),
          input_scan_type: 'input_scan_type',
          position: Stubs::Rectangle.default(visited),
          program_number: 1,
          psi_control: 'psi_control',
          supplemental_imps: Stubs::List____listOf__stringPatternS3ASSETMAPXml.default(visited),
          timecode_source: 'timecode_source',
          timecode_start: 'timecode_start',
          video_generator: Stubs::InputVideoGenerator.default(visited),
          video_selector: Stubs::VideoSelector.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Input.new
        data = {}
        data['audioSelectorGroups'] = Stubs::Map____mapOfAudioSelectorGroup.stub(stub[:audio_selector_groups]) unless stub[:audio_selector_groups].nil?
        data['audioSelectors'] = Stubs::Map____mapOfAudioSelector.stub(stub[:audio_selectors]) unless stub[:audio_selectors].nil?
        data['captionSelectors'] = Stubs::Map____mapOfCaptionSelector.stub(stub[:caption_selectors]) unless stub[:caption_selectors].nil?
        data['crop'] = Stubs::Rectangle.stub(stub[:crop]) unless stub[:crop].nil?
        data['deblockFilter'] = stub[:deblock_filter] unless stub[:deblock_filter].nil?
        data['decryptionSettings'] = Stubs::InputDecryptionSettings.stub(stub[:decryption_settings]) unless stub[:decryption_settings].nil?
        data['denoiseFilter'] = stub[:denoise_filter] unless stub[:denoise_filter].nil?
        data['dolbyVisionMetadataXml'] = stub[:dolby_vision_metadata_xml] unless stub[:dolby_vision_metadata_xml].nil?
        data['fileInput'] = stub[:file_input] unless stub[:file_input].nil?
        data['filterEnable'] = stub[:filter_enable] unless stub[:filter_enable].nil?
        data['filterStrength'] = stub[:filter_strength] unless stub[:filter_strength].nil?
        data['imageInserter'] = Stubs::ImageInserter.stub(stub[:image_inserter]) unless stub[:image_inserter].nil?
        data['inputClippings'] = Stubs::List____listOfInputClipping.stub(stub[:input_clippings]) unless stub[:input_clippings].nil?
        data['inputScanType'] = stub[:input_scan_type] unless stub[:input_scan_type].nil?
        data['position'] = Stubs::Rectangle.stub(stub[:position]) unless stub[:position].nil?
        data['programNumber'] = stub[:program_number] unless stub[:program_number].nil?
        data['psiControl'] = stub[:psi_control] unless stub[:psi_control].nil?
        data['supplementalImps'] = Stubs::List____listOf__stringPatternS3ASSETMAPXml.stub(stub[:supplemental_imps]) unless stub[:supplemental_imps].nil?
        data['timecodeSource'] = stub[:timecode_source] unless stub[:timecode_source].nil?
        data['timecodeStart'] = stub[:timecode_start] unless stub[:timecode_start].nil?
        data['videoGenerator'] = Stubs::InputVideoGenerator.stub(stub[:video_generator]) unless stub[:video_generator].nil?
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
          alpha_behavior: 'alpha_behavior',
          color_space: 'color_space',
          color_space_usage: 'color_space_usage',
          embedded_timecode_override: 'embedded_timecode_override',
          hdr10_metadata: Stubs::Hdr10Metadata.default(visited),
          pad_video: 'pad_video',
          pid: 1,
          program_number: 1,
          rotate: 'rotate',
          sample_range: 'sample_range',
        }
      end

      def self.stub(stub)
        stub ||= Types::VideoSelector.new
        data = {}
        data['alphaBehavior'] = stub[:alpha_behavior] unless stub[:alpha_behavior].nil?
        data['colorSpace'] = stub[:color_space] unless stub[:color_space].nil?
        data['colorSpaceUsage'] = stub[:color_space_usage] unless stub[:color_space_usage].nil?
        data['embeddedTimecodeOverride'] = stub[:embedded_timecode_override] unless stub[:embedded_timecode_override].nil?
        data['hdr10Metadata'] = Stubs::Hdr10Metadata.stub(stub[:hdr10_metadata]) unless stub[:hdr10_metadata].nil?
        data['padVideo'] = stub[:pad_video] unless stub[:pad_video].nil?
        data['pid'] = stub[:pid] unless stub[:pid].nil?
        data['programNumber'] = stub[:program_number] unless stub[:program_number].nil?
        data['rotate'] = stub[:rotate] unless stub[:rotate].nil?
        data['sampleRange'] = stub[:sample_range] unless stub[:sample_range].nil?
        data
      end
    end

    # Structure Stubber for InputVideoGenerator
    class InputVideoGenerator
      def self.default(visited=[])
        return nil if visited.include?('InputVideoGenerator')
        visited = visited + ['InputVideoGenerator']
        {
          duration: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::InputVideoGenerator.new
        data = {}
        data['duration'] = stub[:duration] unless stub[:duration].nil?
        data
      end
    end

    # List Stubber for __listOf__stringPatternS3ASSETMAPXml
    class List____listOf__stringPatternS3ASSETMAPXml
      def self.default(visited=[])
        return nil if visited.include?('List____listOf__stringPatternS3ASSETMAPXml')
        visited = visited + ['List____listOf__stringPatternS3ASSETMAPXml']
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

    # List Stubber for __listOfInputClipping
    class List____listOfInputClipping
      def self.default(visited=[])
        return nil if visited.include?('List____listOfInputClipping')
        visited = visited + ['List____listOfInputClipping']
        [
          Stubs::InputClipping.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::InputClipping.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for InputClipping
    class InputClipping
      def self.default(visited=[])
        return nil if visited.include?('InputClipping')
        visited = visited + ['InputClipping']
        {
          end_timecode: 'end_timecode',
          start_timecode: 'start_timecode',
        }
      end

      def self.stub(stub)
        stub ||= Types::InputClipping.new
        data = {}
        data['endTimecode'] = stub[:end_timecode] unless stub[:end_timecode].nil?
        data['startTimecode'] = stub[:start_timecode] unless stub[:start_timecode].nil?
        data
      end
    end

    # Structure Stubber for InputDecryptionSettings
    class InputDecryptionSettings
      def self.default(visited=[])
        return nil if visited.include?('InputDecryptionSettings')
        visited = visited + ['InputDecryptionSettings']
        {
          decryption_mode: 'decryption_mode',
          encrypted_decryption_key: 'encrypted_decryption_key',
          initialization_vector: 'initialization_vector',
          kms_key_region: 'kms_key_region',
        }
      end

      def self.stub(stub)
        stub ||= Types::InputDecryptionSettings.new
        data = {}
        data['decryptionMode'] = stub[:decryption_mode] unless stub[:decryption_mode].nil?
        data['encryptedDecryptionKey'] = stub[:encrypted_decryption_key] unless stub[:encrypted_decryption_key].nil?
        data['initializationVector'] = stub[:initialization_vector] unless stub[:initialization_vector].nil?
        data['kmsKeyRegion'] = stub[:kms_key_region] unless stub[:kms_key_region].nil?
        data
      end
    end

    # Map Stubber for __mapOfCaptionSelector
    class Map____mapOfCaptionSelector
      def self.default(visited=[])
        return nil if visited.include?('Map____mapOfCaptionSelector')
        visited = visited + ['Map____mapOfCaptionSelector']
        {
          test_key: Stubs::CaptionSelector.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::CaptionSelector.stub(value) unless value.nil?
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
          custom_language_code: 'custom_language_code',
          language_code: 'language_code',
          source_settings: Stubs::CaptionSourceSettings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CaptionSelector.new
        data = {}
        data['customLanguageCode'] = stub[:custom_language_code] unless stub[:custom_language_code].nil?
        data['languageCode'] = stub[:language_code] unless stub[:language_code].nil?
        data['sourceSettings'] = Stubs::CaptionSourceSettings.stub(stub[:source_settings]) unless stub[:source_settings].nil?
        data
      end
    end

    # Structure Stubber for CaptionSourceSettings
    class CaptionSourceSettings
      def self.default(visited=[])
        return nil if visited.include?('CaptionSourceSettings')
        visited = visited + ['CaptionSourceSettings']
        {
          ancillary_source_settings: Stubs::AncillarySourceSettings.default(visited),
          dvb_sub_source_settings: Stubs::DvbSubSourceSettings.default(visited),
          embedded_source_settings: Stubs::EmbeddedSourceSettings.default(visited),
          file_source_settings: Stubs::FileSourceSettings.default(visited),
          source_type: 'source_type',
          teletext_source_settings: Stubs::TeletextSourceSettings.default(visited),
          track_source_settings: Stubs::TrackSourceSettings.default(visited),
          webvtt_hls_source_settings: Stubs::WebvttHlsSourceSettings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CaptionSourceSettings.new
        data = {}
        data['ancillarySourceSettings'] = Stubs::AncillarySourceSettings.stub(stub[:ancillary_source_settings]) unless stub[:ancillary_source_settings].nil?
        data['dvbSubSourceSettings'] = Stubs::DvbSubSourceSettings.stub(stub[:dvb_sub_source_settings]) unless stub[:dvb_sub_source_settings].nil?
        data['embeddedSourceSettings'] = Stubs::EmbeddedSourceSettings.stub(stub[:embedded_source_settings]) unless stub[:embedded_source_settings].nil?
        data['fileSourceSettings'] = Stubs::FileSourceSettings.stub(stub[:file_source_settings]) unless stub[:file_source_settings].nil?
        data['sourceType'] = stub[:source_type] unless stub[:source_type].nil?
        data['teletextSourceSettings'] = Stubs::TeletextSourceSettings.stub(stub[:teletext_source_settings]) unless stub[:teletext_source_settings].nil?
        data['trackSourceSettings'] = Stubs::TrackSourceSettings.stub(stub[:track_source_settings]) unless stub[:track_source_settings].nil?
        data['webvttHlsSourceSettings'] = Stubs::WebvttHlsSourceSettings.stub(stub[:webvtt_hls_source_settings]) unless stub[:webvtt_hls_source_settings].nil?
        data
      end
    end

    # Structure Stubber for WebvttHlsSourceSettings
    class WebvttHlsSourceSettings
      def self.default(visited=[])
        return nil if visited.include?('WebvttHlsSourceSettings')
        visited = visited + ['WebvttHlsSourceSettings']
        {
          rendition_group_id: 'rendition_group_id',
          rendition_language_code: 'rendition_language_code',
          rendition_name: 'rendition_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::WebvttHlsSourceSettings.new
        data = {}
        data['renditionGroupId'] = stub[:rendition_group_id] unless stub[:rendition_group_id].nil?
        data['renditionLanguageCode'] = stub[:rendition_language_code] unless stub[:rendition_language_code].nil?
        data['renditionName'] = stub[:rendition_name] unless stub[:rendition_name].nil?
        data
      end
    end

    # Structure Stubber for TrackSourceSettings
    class TrackSourceSettings
      def self.default(visited=[])
        return nil if visited.include?('TrackSourceSettings')
        visited = visited + ['TrackSourceSettings']
        {
          track_number: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::TrackSourceSettings.new
        data = {}
        data['trackNumber'] = stub[:track_number] unless stub[:track_number].nil?
        data
      end
    end

    # Structure Stubber for TeletextSourceSettings
    class TeletextSourceSettings
      def self.default(visited=[])
        return nil if visited.include?('TeletextSourceSettings')
        visited = visited + ['TeletextSourceSettings']
        {
          page_number: 'page_number',
        }
      end

      def self.stub(stub)
        stub ||= Types::TeletextSourceSettings.new
        data = {}
        data['pageNumber'] = stub[:page_number] unless stub[:page_number].nil?
        data
      end
    end

    # Structure Stubber for FileSourceSettings
    class FileSourceSettings
      def self.default(visited=[])
        return nil if visited.include?('FileSourceSettings')
        visited = visited + ['FileSourceSettings']
        {
          convert608_to708: 'convert608_to708',
          framerate: Stubs::CaptionSourceFramerate.default(visited),
          source_file: 'source_file',
          time_delta: 1,
          time_delta_units: 'time_delta_units',
        }
      end

      def self.stub(stub)
        stub ||= Types::FileSourceSettings.new
        data = {}
        data['convert608To708'] = stub[:convert608_to708] unless stub[:convert608_to708].nil?
        data['framerate'] = Stubs::CaptionSourceFramerate.stub(stub[:framerate]) unless stub[:framerate].nil?
        data['sourceFile'] = stub[:source_file] unless stub[:source_file].nil?
        data['timeDelta'] = stub[:time_delta] unless stub[:time_delta].nil?
        data['timeDeltaUnits'] = stub[:time_delta_units] unless stub[:time_delta_units].nil?
        data
      end
    end

    # Structure Stubber for CaptionSourceFramerate
    class CaptionSourceFramerate
      def self.default(visited=[])
        return nil if visited.include?('CaptionSourceFramerate')
        visited = visited + ['CaptionSourceFramerate']
        {
          framerate_denominator: 1,
          framerate_numerator: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::CaptionSourceFramerate.new
        data = {}
        data['framerateDenominator'] = stub[:framerate_denominator] unless stub[:framerate_denominator].nil?
        data['framerateNumerator'] = stub[:framerate_numerator] unless stub[:framerate_numerator].nil?
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
          source608_channel_number: 1,
          source608_track_number: 1,
          terminate_captions: 'terminate_captions',
        }
      end

      def self.stub(stub)
        stub ||= Types::EmbeddedSourceSettings.new
        data = {}
        data['convert608To708'] = stub[:convert608_to708] unless stub[:convert608_to708].nil?
        data['source608ChannelNumber'] = stub[:source608_channel_number] unless stub[:source608_channel_number].nil?
        data['source608TrackNumber'] = stub[:source608_track_number] unless stub[:source608_track_number].nil?
        data['terminateCaptions'] = stub[:terminate_captions] unless stub[:terminate_captions].nil?
        data
      end
    end

    # Structure Stubber for DvbSubSourceSettings
    class DvbSubSourceSettings
      def self.default(visited=[])
        return nil if visited.include?('DvbSubSourceSettings')
        visited = visited + ['DvbSubSourceSettings']
        {
          pid: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::DvbSubSourceSettings.new
        data = {}
        data['pid'] = stub[:pid] unless stub[:pid].nil?
        data
      end
    end

    # Structure Stubber for AncillarySourceSettings
    class AncillarySourceSettings
      def self.default(visited=[])
        return nil if visited.include?('AncillarySourceSettings')
        visited = visited + ['AncillarySourceSettings']
        {
          convert608_to708: 'convert608_to708',
          source_ancillary_channel_number: 1,
          terminate_captions: 'terminate_captions',
        }
      end

      def self.stub(stub)
        stub ||= Types::AncillarySourceSettings.new
        data = {}
        data['convert608To708'] = stub[:convert608_to708] unless stub[:convert608_to708].nil?
        data['sourceAncillaryChannelNumber'] = stub[:source_ancillary_channel_number] unless stub[:source_ancillary_channel_number].nil?
        data['terminateCaptions'] = stub[:terminate_captions] unless stub[:terminate_captions].nil?
        data
      end
    end

    # Map Stubber for __mapOfAudioSelector
    class Map____mapOfAudioSelector
      def self.default(visited=[])
        return nil if visited.include?('Map____mapOfAudioSelector')
        visited = visited + ['Map____mapOfAudioSelector']
        {
          test_key: Stubs::AudioSelector.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::AudioSelector.stub(value) unless value.nil?
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
          custom_language_code: 'custom_language_code',
          default_selection: 'default_selection',
          external_audio_file_input: 'external_audio_file_input',
          hls_rendition_group_settings: Stubs::HlsRenditionGroupSettings.default(visited),
          language_code: 'language_code',
          offset: 1,
          pids: Stubs::List____listOf__integerMin1Max2147483647.default(visited),
          program_selection: 1,
          remix_settings: Stubs::RemixSettings.default(visited),
          selector_type: 'selector_type',
          tracks: Stubs::List____listOf__integerMin1Max2147483647.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AudioSelector.new
        data = {}
        data['customLanguageCode'] = stub[:custom_language_code] unless stub[:custom_language_code].nil?
        data['defaultSelection'] = stub[:default_selection] unless stub[:default_selection].nil?
        data['externalAudioFileInput'] = stub[:external_audio_file_input] unless stub[:external_audio_file_input].nil?
        data['hlsRenditionGroupSettings'] = Stubs::HlsRenditionGroupSettings.stub(stub[:hls_rendition_group_settings]) unless stub[:hls_rendition_group_settings].nil?
        data['languageCode'] = stub[:language_code] unless stub[:language_code].nil?
        data['offset'] = stub[:offset] unless stub[:offset].nil?
        data['pids'] = Stubs::List____listOf__integerMin1Max2147483647.stub(stub[:pids]) unless stub[:pids].nil?
        data['programSelection'] = stub[:program_selection] unless stub[:program_selection].nil?
        data['remixSettings'] = Stubs::RemixSettings.stub(stub[:remix_settings]) unless stub[:remix_settings].nil?
        data['selectorType'] = stub[:selector_type] unless stub[:selector_type].nil?
        data['tracks'] = Stubs::List____listOf__integerMin1Max2147483647.stub(stub[:tracks]) unless stub[:tracks].nil?
        data
      end
    end

    # List Stubber for __listOf__integerMin1Max2147483647
    class List____listOf__integerMin1Max2147483647
      def self.default(visited=[])
        return nil if visited.include?('List____listOf__integerMin1Max2147483647')
        visited = visited + ['List____listOf__integerMin1Max2147483647']
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

    # Structure Stubber for HlsRenditionGroupSettings
    class HlsRenditionGroupSettings
      def self.default(visited=[])
        return nil if visited.include?('HlsRenditionGroupSettings')
        visited = visited + ['HlsRenditionGroupSettings']
        {
          rendition_group_id: 'rendition_group_id',
          rendition_language_code: 'rendition_language_code',
          rendition_name: 'rendition_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::HlsRenditionGroupSettings.new
        data = {}
        data['renditionGroupId'] = stub[:rendition_group_id] unless stub[:rendition_group_id].nil?
        data['renditionLanguageCode'] = stub[:rendition_language_code] unless stub[:rendition_language_code].nil?
        data['renditionName'] = stub[:rendition_name] unless stub[:rendition_name].nil?
        data
      end
    end

    # Map Stubber for __mapOfAudioSelectorGroup
    class Map____mapOfAudioSelectorGroup
      def self.default(visited=[])
        return nil if visited.include?('Map____mapOfAudioSelectorGroup')
        visited = visited + ['Map____mapOfAudioSelectorGroup']
        {
          test_key: Stubs::AudioSelectorGroup.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::AudioSelectorGroup.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for AudioSelectorGroup
    class AudioSelectorGroup
      def self.default(visited=[])
        return nil if visited.include?('AudioSelectorGroup')
        visited = visited + ['AudioSelectorGroup']
        {
          audio_selector_names: Stubs::List____listOf__stringMin1.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AudioSelectorGroup.new
        data = {}
        data['audioSelectorNames'] = Stubs::List____listOf__stringMin1.stub(stub[:audio_selector_names]) unless stub[:audio_selector_names].nil?
        data
      end
    end

    # Structure Stubber for ExtendedDataServices
    class ExtendedDataServices
      def self.default(visited=[])
        return nil if visited.include?('ExtendedDataServices')
        visited = visited + ['ExtendedDataServices']
        {
          copy_protection_action: 'copy_protection_action',
          vchip_action: 'vchip_action',
        }
      end

      def self.stub(stub)
        stub ||= Types::ExtendedDataServices.new
        data = {}
        data['copyProtectionAction'] = stub[:copy_protection_action] unless stub[:copy_protection_action].nil?
        data['vchipAction'] = stub[:vchip_action] unless stub[:vchip_action].nil?
        data
      end
    end

    # Structure Stubber for EsamSettings
    class EsamSettings
      def self.default(visited=[])
        return nil if visited.include?('EsamSettings')
        visited = visited + ['EsamSettings']
        {
          manifest_confirm_condition_notification: Stubs::EsamManifestConfirmConditionNotification.default(visited),
          response_signal_preroll: 1,
          signal_processing_notification: Stubs::EsamSignalProcessingNotification.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::EsamSettings.new
        data = {}
        data['manifestConfirmConditionNotification'] = Stubs::EsamManifestConfirmConditionNotification.stub(stub[:manifest_confirm_condition_notification]) unless stub[:manifest_confirm_condition_notification].nil?
        data['responseSignalPreroll'] = stub[:response_signal_preroll] unless stub[:response_signal_preroll].nil?
        data['signalProcessingNotification'] = Stubs::EsamSignalProcessingNotification.stub(stub[:signal_processing_notification]) unless stub[:signal_processing_notification].nil?
        data
      end
    end

    # Structure Stubber for EsamSignalProcessingNotification
    class EsamSignalProcessingNotification
      def self.default(visited=[])
        return nil if visited.include?('EsamSignalProcessingNotification')
        visited = visited + ['EsamSignalProcessingNotification']
        {
          scc_xml: 'scc_xml',
        }
      end

      def self.stub(stub)
        stub ||= Types::EsamSignalProcessingNotification.new
        data = {}
        data['sccXml'] = stub[:scc_xml] unless stub[:scc_xml].nil?
        data
      end
    end

    # Structure Stubber for EsamManifestConfirmConditionNotification
    class EsamManifestConfirmConditionNotification
      def self.default(visited=[])
        return nil if visited.include?('EsamManifestConfirmConditionNotification')
        visited = visited + ['EsamManifestConfirmConditionNotification']
        {
          mcc_xml: 'mcc_xml',
        }
      end

      def self.stub(stub)
        stub ||= Types::EsamManifestConfirmConditionNotification.new
        data = {}
        data['mccXml'] = stub[:mcc_xml] unless stub[:mcc_xml].nil?
        data
      end
    end

    # Structure Stubber for AvailBlanking
    class AvailBlanking
      def self.default(visited=[])
        return nil if visited.include?('AvailBlanking')
        visited = visited + ['AvailBlanking']
        {
          avail_blanking_image: 'avail_blanking_image',
        }
      end

      def self.stub(stub)
        stub ||= Types::AvailBlanking.new
        data = {}
        data['availBlankingImage'] = stub[:avail_blanking_image] unless stub[:avail_blanking_image].nil?
        data
      end
    end

    # List Stubber for __listOfQueueTransition
    class List____listOfQueueTransition
      def self.default(visited=[])
        return nil if visited.include?('List____listOfQueueTransition')
        visited = visited + ['List____listOfQueueTransition']
        [
          Stubs::QueueTransition.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::QueueTransition.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for QueueTransition
    class QueueTransition
      def self.default(visited=[])
        return nil if visited.include?('QueueTransition')
        visited = visited + ['QueueTransition']
        {
          destination_queue: 'destination_queue',
          source_queue: 'source_queue',
          timestamp: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::QueueTransition.new
        data = {}
        data['destinationQueue'] = stub[:destination_queue] unless stub[:destination_queue].nil?
        data['sourceQueue'] = stub[:source_queue] unless stub[:source_queue].nil?
        data['timestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:timestamp]).to_i unless stub[:timestamp].nil?
        data
      end
    end

    # List Stubber for __listOfOutputGroupDetail
    class List____listOfOutputGroupDetail
      def self.default(visited=[])
        return nil if visited.include?('List____listOfOutputGroupDetail')
        visited = visited + ['List____listOfOutputGroupDetail']
        [
          Stubs::OutputGroupDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::OutputGroupDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for OutputGroupDetail
    class OutputGroupDetail
      def self.default(visited=[])
        return nil if visited.include?('OutputGroupDetail')
        visited = visited + ['OutputGroupDetail']
        {
          output_details: Stubs::List____listOfOutputDetail.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::OutputGroupDetail.new
        data = {}
        data['outputDetails'] = Stubs::List____listOfOutputDetail.stub(stub[:output_details]) unless stub[:output_details].nil?
        data
      end
    end

    # List Stubber for __listOfOutputDetail
    class List____listOfOutputDetail
      def self.default(visited=[])
        return nil if visited.include?('List____listOfOutputDetail')
        visited = visited + ['List____listOfOutputDetail']
        [
          Stubs::OutputDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::OutputDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for OutputDetail
    class OutputDetail
      def self.default(visited=[])
        return nil if visited.include?('OutputDetail')
        visited = visited + ['OutputDetail']
        {
          duration_in_ms: 1,
          video_details: Stubs::VideoDetail.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::OutputDetail.new
        data = {}
        data['durationInMs'] = stub[:duration_in_ms] unless stub[:duration_in_ms].nil?
        data['videoDetails'] = Stubs::VideoDetail.stub(stub[:video_details]) unless stub[:video_details].nil?
        data
      end
    end

    # Structure Stubber for VideoDetail
    class VideoDetail
      def self.default(visited=[])
        return nil if visited.include?('VideoDetail')
        visited = visited + ['VideoDetail']
        {
          height_in_px: 1,
          width_in_px: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::VideoDetail.new
        data = {}
        data['heightInPx'] = stub[:height_in_px] unless stub[:height_in_px].nil?
        data['widthInPx'] = stub[:width_in_px] unless stub[:width_in_px].nil?
        data
      end
    end

    # Structure Stubber for JobMessages
    class JobMessages
      def self.default(visited=[])
        return nil if visited.include?('JobMessages')
        visited = visited + ['JobMessages']
        {
          info: Stubs::List____listOf__string.default(visited),
          warning: Stubs::List____listOf__string.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::JobMessages.new
        data = {}
        data['info'] = Stubs::List____listOf__string.stub(stub[:info]) unless stub[:info].nil?
        data['warning'] = Stubs::List____listOf__string.stub(stub[:warning]) unless stub[:warning].nil?
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

    # List Stubber for __listOfHopDestination
    class List____listOfHopDestination
      def self.default(visited=[])
        return nil if visited.include?('List____listOfHopDestination')
        visited = visited + ['List____listOfHopDestination']
        [
          Stubs::HopDestination.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::HopDestination.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for HopDestination
    class HopDestination
      def self.default(visited=[])
        return nil if visited.include?('HopDestination')
        visited = visited + ['HopDestination']
        {
          priority: 1,
          queue: 'queue',
          wait_minutes: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::HopDestination.new
        data = {}
        data['priority'] = stub[:priority] unless stub[:priority].nil?
        data['queue'] = stub[:queue] unless stub[:queue].nil?
        data['waitMinutes'] = stub[:wait_minutes] unless stub[:wait_minutes].nil?
        data
      end
    end

    # Structure Stubber for AccelerationSettings
    class AccelerationSettings
      def self.default(visited=[])
        return nil if visited.include?('AccelerationSettings')
        visited = visited + ['AccelerationSettings']
        {
          mode: 'mode',
        }
      end

      def self.stub(stub)
        stub ||= Types::AccelerationSettings.new
        data = {}
        data['mode'] = stub[:mode] unless stub[:mode].nil?
        data
      end
    end

    # Operation Stubber for CreateJobTemplate
    class CreateJobTemplate
      def self.default(visited=[])
        {
          job_template: Stubs::JobTemplate.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['jobTemplate'] = Stubs::JobTemplate.stub(stub[:job_template]) unless stub[:job_template].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for JobTemplate
    class JobTemplate
      def self.default(visited=[])
        return nil if visited.include?('JobTemplate')
        visited = visited + ['JobTemplate']
        {
          acceleration_settings: Stubs::AccelerationSettings.default(visited),
          arn: 'arn',
          category: 'category',
          created_at: Time.now,
          description: 'description',
          hop_destinations: Stubs::List____listOfHopDestination.default(visited),
          last_updated: Time.now,
          name: 'name',
          priority: 1,
          queue: 'queue',
          settings: Stubs::JobTemplateSettings.default(visited),
          status_update_interval: 'status_update_interval',
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::JobTemplate.new
        data = {}
        data['accelerationSettings'] = Stubs::AccelerationSettings.stub(stub[:acceleration_settings]) unless stub[:acceleration_settings].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['category'] = stub[:category] unless stub[:category].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['hopDestinations'] = Stubs::List____listOfHopDestination.stub(stub[:hop_destinations]) unless stub[:hop_destinations].nil?
        data['lastUpdated'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated]).to_i unless stub[:last_updated].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['priority'] = stub[:priority] unless stub[:priority].nil?
        data['queue'] = stub[:queue] unless stub[:queue].nil?
        data['settings'] = Stubs::JobTemplateSettings.stub(stub[:settings]) unless stub[:settings].nil?
        data['statusUpdateInterval'] = stub[:status_update_interval] unless stub[:status_update_interval].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Structure Stubber for JobTemplateSettings
    class JobTemplateSettings
      def self.default(visited=[])
        return nil if visited.include?('JobTemplateSettings')
        visited = visited + ['JobTemplateSettings']
        {
          ad_avail_offset: 1,
          avail_blanking: Stubs::AvailBlanking.default(visited),
          esam: Stubs::EsamSettings.default(visited),
          extended_data_services: Stubs::ExtendedDataServices.default(visited),
          inputs: Stubs::List____listOfInputTemplate.default(visited),
          kantar_watermark: Stubs::KantarWatermarkSettings.default(visited),
          motion_image_inserter: Stubs::MotionImageInserter.default(visited),
          nielsen_configuration: Stubs::NielsenConfiguration.default(visited),
          nielsen_non_linear_watermark: Stubs::NielsenNonLinearWatermarkSettings.default(visited),
          output_groups: Stubs::List____listOfOutputGroup.default(visited),
          timecode_config: Stubs::TimecodeConfig.default(visited),
          timed_metadata_insertion: Stubs::TimedMetadataInsertion.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::JobTemplateSettings.new
        data = {}
        data['adAvailOffset'] = stub[:ad_avail_offset] unless stub[:ad_avail_offset].nil?
        data['availBlanking'] = Stubs::AvailBlanking.stub(stub[:avail_blanking]) unless stub[:avail_blanking].nil?
        data['esam'] = Stubs::EsamSettings.stub(stub[:esam]) unless stub[:esam].nil?
        data['extendedDataServices'] = Stubs::ExtendedDataServices.stub(stub[:extended_data_services]) unless stub[:extended_data_services].nil?
        data['inputs'] = Stubs::List____listOfInputTemplate.stub(stub[:inputs]) unless stub[:inputs].nil?
        data['kantarWatermark'] = Stubs::KantarWatermarkSettings.stub(stub[:kantar_watermark]) unless stub[:kantar_watermark].nil?
        data['motionImageInserter'] = Stubs::MotionImageInserter.stub(stub[:motion_image_inserter]) unless stub[:motion_image_inserter].nil?
        data['nielsenConfiguration'] = Stubs::NielsenConfiguration.stub(stub[:nielsen_configuration]) unless stub[:nielsen_configuration].nil?
        data['nielsenNonLinearWatermark'] = Stubs::NielsenNonLinearWatermarkSettings.stub(stub[:nielsen_non_linear_watermark]) unless stub[:nielsen_non_linear_watermark].nil?
        data['outputGroups'] = Stubs::List____listOfOutputGroup.stub(stub[:output_groups]) unless stub[:output_groups].nil?
        data['timecodeConfig'] = Stubs::TimecodeConfig.stub(stub[:timecode_config]) unless stub[:timecode_config].nil?
        data['timedMetadataInsertion'] = Stubs::TimedMetadataInsertion.stub(stub[:timed_metadata_insertion]) unless stub[:timed_metadata_insertion].nil?
        data
      end
    end

    # List Stubber for __listOfInputTemplate
    class List____listOfInputTemplate
      def self.default(visited=[])
        return nil if visited.include?('List____listOfInputTemplate')
        visited = visited + ['List____listOfInputTemplate']
        [
          Stubs::InputTemplate.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::InputTemplate.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for InputTemplate
    class InputTemplate
      def self.default(visited=[])
        return nil if visited.include?('InputTemplate')
        visited = visited + ['InputTemplate']
        {
          audio_selector_groups: Stubs::Map____mapOfAudioSelectorGroup.default(visited),
          audio_selectors: Stubs::Map____mapOfAudioSelector.default(visited),
          caption_selectors: Stubs::Map____mapOfCaptionSelector.default(visited),
          crop: Stubs::Rectangle.default(visited),
          deblock_filter: 'deblock_filter',
          denoise_filter: 'denoise_filter',
          dolby_vision_metadata_xml: 'dolby_vision_metadata_xml',
          filter_enable: 'filter_enable',
          filter_strength: 1,
          image_inserter: Stubs::ImageInserter.default(visited),
          input_clippings: Stubs::List____listOfInputClipping.default(visited),
          input_scan_type: 'input_scan_type',
          position: Stubs::Rectangle.default(visited),
          program_number: 1,
          psi_control: 'psi_control',
          timecode_source: 'timecode_source',
          timecode_start: 'timecode_start',
          video_selector: Stubs::VideoSelector.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::InputTemplate.new
        data = {}
        data['audioSelectorGroups'] = Stubs::Map____mapOfAudioSelectorGroup.stub(stub[:audio_selector_groups]) unless stub[:audio_selector_groups].nil?
        data['audioSelectors'] = Stubs::Map____mapOfAudioSelector.stub(stub[:audio_selectors]) unless stub[:audio_selectors].nil?
        data['captionSelectors'] = Stubs::Map____mapOfCaptionSelector.stub(stub[:caption_selectors]) unless stub[:caption_selectors].nil?
        data['crop'] = Stubs::Rectangle.stub(stub[:crop]) unless stub[:crop].nil?
        data['deblockFilter'] = stub[:deblock_filter] unless stub[:deblock_filter].nil?
        data['denoiseFilter'] = stub[:denoise_filter] unless stub[:denoise_filter].nil?
        data['dolbyVisionMetadataXml'] = stub[:dolby_vision_metadata_xml] unless stub[:dolby_vision_metadata_xml].nil?
        data['filterEnable'] = stub[:filter_enable] unless stub[:filter_enable].nil?
        data['filterStrength'] = stub[:filter_strength] unless stub[:filter_strength].nil?
        data['imageInserter'] = Stubs::ImageInserter.stub(stub[:image_inserter]) unless stub[:image_inserter].nil?
        data['inputClippings'] = Stubs::List____listOfInputClipping.stub(stub[:input_clippings]) unless stub[:input_clippings].nil?
        data['inputScanType'] = stub[:input_scan_type] unless stub[:input_scan_type].nil?
        data['position'] = Stubs::Rectangle.stub(stub[:position]) unless stub[:position].nil?
        data['programNumber'] = stub[:program_number] unless stub[:program_number].nil?
        data['psiControl'] = stub[:psi_control] unless stub[:psi_control].nil?
        data['timecodeSource'] = stub[:timecode_source] unless stub[:timecode_source].nil?
        data['timecodeStart'] = stub[:timecode_start] unless stub[:timecode_start].nil?
        data['videoSelector'] = Stubs::VideoSelector.stub(stub[:video_selector]) unless stub[:video_selector].nil?
        data
      end
    end

    # Operation Stubber for CreatePreset
    class CreatePreset
      def self.default(visited=[])
        {
          preset: Stubs::Preset.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['preset'] = Stubs::Preset.stub(stub[:preset]) unless stub[:preset].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Preset
    class Preset
      def self.default(visited=[])
        return nil if visited.include?('Preset')
        visited = visited + ['Preset']
        {
          arn: 'arn',
          category: 'category',
          created_at: Time.now,
          description: 'description',
          last_updated: Time.now,
          name: 'name',
          settings: Stubs::PresetSettings.default(visited),
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::Preset.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['category'] = stub[:category] unless stub[:category].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['lastUpdated'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated]).to_i unless stub[:last_updated].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['settings'] = Stubs::PresetSettings.stub(stub[:settings]) unless stub[:settings].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Structure Stubber for PresetSettings
    class PresetSettings
      def self.default(visited=[])
        return nil if visited.include?('PresetSettings')
        visited = visited + ['PresetSettings']
        {
          audio_descriptions: Stubs::List____listOfAudioDescription.default(visited),
          caption_descriptions: Stubs::List____listOfCaptionDescriptionPreset.default(visited),
          container_settings: Stubs::ContainerSettings.default(visited),
          video_description: Stubs::VideoDescription.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PresetSettings.new
        data = {}
        data['audioDescriptions'] = Stubs::List____listOfAudioDescription.stub(stub[:audio_descriptions]) unless stub[:audio_descriptions].nil?
        data['captionDescriptions'] = Stubs::List____listOfCaptionDescriptionPreset.stub(stub[:caption_descriptions]) unless stub[:caption_descriptions].nil?
        data['containerSettings'] = Stubs::ContainerSettings.stub(stub[:container_settings]) unless stub[:container_settings].nil?
        data['videoDescription'] = Stubs::VideoDescription.stub(stub[:video_description]) unless stub[:video_description].nil?
        data
      end
    end

    # List Stubber for __listOfCaptionDescriptionPreset
    class List____listOfCaptionDescriptionPreset
      def self.default(visited=[])
        return nil if visited.include?('List____listOfCaptionDescriptionPreset')
        visited = visited + ['List____listOfCaptionDescriptionPreset']
        [
          Stubs::CaptionDescriptionPreset.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::CaptionDescriptionPreset.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CaptionDescriptionPreset
    class CaptionDescriptionPreset
      def self.default(visited=[])
        return nil if visited.include?('CaptionDescriptionPreset')
        visited = visited + ['CaptionDescriptionPreset']
        {
          custom_language_code: 'custom_language_code',
          destination_settings: Stubs::CaptionDestinationSettings.default(visited),
          language_code: 'language_code',
          language_description: 'language_description',
        }
      end

      def self.stub(stub)
        stub ||= Types::CaptionDescriptionPreset.new
        data = {}
        data['customLanguageCode'] = stub[:custom_language_code] unless stub[:custom_language_code].nil?
        data['destinationSettings'] = Stubs::CaptionDestinationSettings.stub(stub[:destination_settings]) unless stub[:destination_settings].nil?
        data['languageCode'] = stub[:language_code] unless stub[:language_code].nil?
        data['languageDescription'] = stub[:language_description] unless stub[:language_description].nil?
        data
      end
    end

    # Operation Stubber for CreateQueue
    class CreateQueue
      def self.default(visited=[])
        {
          queue: Stubs::Queue.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['queue'] = Stubs::Queue.stub(stub[:queue]) unless stub[:queue].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Queue
    class Queue
      def self.default(visited=[])
        return nil if visited.include?('Queue')
        visited = visited + ['Queue']
        {
          arn: 'arn',
          created_at: Time.now,
          description: 'description',
          last_updated: Time.now,
          name: 'name',
          pricing_plan: 'pricing_plan',
          progressing_jobs_count: 1,
          reservation_plan: Stubs::ReservationPlan.default(visited),
          status: 'status',
          submitted_jobs_count: 1,
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::Queue.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['lastUpdated'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated]).to_i unless stub[:last_updated].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['pricingPlan'] = stub[:pricing_plan] unless stub[:pricing_plan].nil?
        data['progressingJobsCount'] = stub[:progressing_jobs_count] unless stub[:progressing_jobs_count].nil?
        data['reservationPlan'] = Stubs::ReservationPlan.stub(stub[:reservation_plan]) unless stub[:reservation_plan].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['submittedJobsCount'] = stub[:submitted_jobs_count] unless stub[:submitted_jobs_count].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Structure Stubber for ReservationPlan
    class ReservationPlan
      def self.default(visited=[])
        return nil if visited.include?('ReservationPlan')
        visited = visited + ['ReservationPlan']
        {
          commitment: 'commitment',
          expires_at: Time.now,
          purchased_at: Time.now,
          renewal_type: 'renewal_type',
          reserved_slots: 1,
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::ReservationPlan.new
        data = {}
        data['commitment'] = stub[:commitment] unless stub[:commitment].nil?
        data['expiresAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:expires_at]).to_i unless stub[:expires_at].nil?
        data['purchasedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:purchased_at]).to_i unless stub[:purchased_at].nil?
        data['renewalType'] = stub[:renewal_type] unless stub[:renewal_type].nil?
        data['reservedSlots'] = stub[:reserved_slots] unless stub[:reserved_slots].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Operation Stubber for DeleteJobTemplate
    class DeleteJobTemplate
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
      end
    end

    # Operation Stubber for DeletePolicy
    class DeletePolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeletePreset
    class DeletePreset
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
      end
    end

    # Operation Stubber for DeleteQueue
    class DeleteQueue
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
      end
    end

    # Operation Stubber for DescribeEndpoints
    class DescribeEndpoints
      def self.default(visited=[])
        {
          endpoints: Stubs::List____listOfEndpoint.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['endpoints'] = Stubs::List____listOfEndpoint.stub(stub[:endpoints]) unless stub[:endpoints].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfEndpoint
    class List____listOfEndpoint
      def self.default(visited=[])
        return nil if visited.include?('List____listOfEndpoint')
        visited = visited + ['List____listOfEndpoint']
        [
          Stubs::Endpoint.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Endpoint.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Endpoint
    class Endpoint
      def self.default(visited=[])
        return nil if visited.include?('Endpoint')
        visited = visited + ['Endpoint']
        {
          url: 'url',
        }
      end

      def self.stub(stub)
        stub ||= Types::Endpoint.new
        data = {}
        data['url'] = stub[:url] unless stub[:url].nil?
        data
      end
    end

    # Operation Stubber for DisassociateCertificate
    class DisassociateCertificate
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
      end
    end

    # Operation Stubber for GetJob
    class GetJob
      def self.default(visited=[])
        {
          job: Stubs::Job.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['job'] = Stubs::Job.stub(stub[:job]) unless stub[:job].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetJobTemplate
    class GetJobTemplate
      def self.default(visited=[])
        {
          job_template: Stubs::JobTemplate.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['jobTemplate'] = Stubs::JobTemplate.stub(stub[:job_template]) unless stub[:job_template].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetPolicy
    class GetPolicy
      def self.default(visited=[])
        {
          policy: Stubs::Policy.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['policy'] = Stubs::Policy.stub(stub[:policy]) unless stub[:policy].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Policy
    class Policy
      def self.default(visited=[])
        return nil if visited.include?('Policy')
        visited = visited + ['Policy']
        {
          http_inputs: 'http_inputs',
          https_inputs: 'https_inputs',
          s3_inputs: 's3_inputs',
        }
      end

      def self.stub(stub)
        stub ||= Types::Policy.new
        data = {}
        data['httpInputs'] = stub[:http_inputs] unless stub[:http_inputs].nil?
        data['httpsInputs'] = stub[:https_inputs] unless stub[:https_inputs].nil?
        data['s3Inputs'] = stub[:s3_inputs] unless stub[:s3_inputs].nil?
        data
      end
    end

    # Operation Stubber for GetPreset
    class GetPreset
      def self.default(visited=[])
        {
          preset: Stubs::Preset.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['preset'] = Stubs::Preset.stub(stub[:preset]) unless stub[:preset].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetQueue
    class GetQueue
      def self.default(visited=[])
        {
          queue: Stubs::Queue.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['queue'] = Stubs::Queue.stub(stub[:queue]) unless stub[:queue].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListJobTemplates
    class ListJobTemplates
      def self.default(visited=[])
        {
          job_templates: Stubs::List____listOfJobTemplate.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['jobTemplates'] = Stubs::List____listOfJobTemplate.stub(stub[:job_templates]) unless stub[:job_templates].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfJobTemplate
    class List____listOfJobTemplate
      def self.default(visited=[])
        return nil if visited.include?('List____listOfJobTemplate')
        visited = visited + ['List____listOfJobTemplate']
        [
          Stubs::JobTemplate.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::JobTemplate.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListJobs
    class ListJobs
      def self.default(visited=[])
        {
          jobs: Stubs::List____listOfJob.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['jobs'] = Stubs::List____listOfJob.stub(stub[:jobs]) unless stub[:jobs].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfJob
    class List____listOfJob
      def self.default(visited=[])
        return nil if visited.include?('List____listOfJob')
        visited = visited + ['List____listOfJob']
        [
          Stubs::Job.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Job.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListPresets
    class ListPresets
      def self.default(visited=[])
        {
          next_token: 'next_token',
          presets: Stubs::List____listOfPreset.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['presets'] = Stubs::List____listOfPreset.stub(stub[:presets]) unless stub[:presets].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfPreset
    class List____listOfPreset
      def self.default(visited=[])
        return nil if visited.include?('List____listOfPreset')
        visited = visited + ['List____listOfPreset']
        [
          Stubs::Preset.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Preset.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListQueues
    class ListQueues
      def self.default(visited=[])
        {
          next_token: 'next_token',
          queues: Stubs::List____listOfQueue.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['queues'] = Stubs::List____listOfQueue.stub(stub[:queues]) unless stub[:queues].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfQueue
    class List____listOfQueue
      def self.default(visited=[])
        return nil if visited.include?('List____listOfQueue')
        visited = visited + ['List____listOfQueue']
        [
          Stubs::Queue.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Queue.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          resource_tags: Stubs::ResourceTags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['resourceTags'] = Stubs::ResourceTags.stub(stub[:resource_tags]) unless stub[:resource_tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ResourceTags
    class ResourceTags
      def self.default(visited=[])
        return nil if visited.include?('ResourceTags')
        visited = visited + ['ResourceTags']
        {
          arn: 'arn',
          tags: Stubs::Map____mapOf__string.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceTags.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['tags'] = Stubs::Map____mapOf__string.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for PutPolicy
    class PutPolicy
      def self.default(visited=[])
        {
          policy: Stubs::Policy.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['policy'] = Stubs::Policy.stub(stub[:policy]) unless stub[:policy].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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

    # Operation Stubber for UpdateJobTemplate
    class UpdateJobTemplate
      def self.default(visited=[])
        {
          job_template: Stubs::JobTemplate.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['jobTemplate'] = Stubs::JobTemplate.stub(stub[:job_template]) unless stub[:job_template].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdatePreset
    class UpdatePreset
      def self.default(visited=[])
        {
          preset: Stubs::Preset.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['preset'] = Stubs::Preset.stub(stub[:preset]) unless stub[:preset].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateQueue
    class UpdateQueue
      def self.default(visited=[])
        {
          queue: Stubs::Queue.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['queue'] = Stubs::Queue.stub(stub[:queue]) unless stub[:queue].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
