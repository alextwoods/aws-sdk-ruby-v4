# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::ElasticTranscoder
  module Stubs

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
          job: Job.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['Job'] = Job.stub(stub[:job]) unless stub[:job].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Job
    class Job
      def self.default(visited=[])
        return nil if visited.include?('Job')
        visited = visited + ['Job']
        {
          id: 'id',
          arn: 'arn',
          pipeline_id: 'pipeline_id',
          input: JobInput.default(visited),
          inputs: JobInputs.default(visited),
          output: JobOutput.default(visited),
          outputs: JobOutputs.default(visited),
          output_key_prefix: 'output_key_prefix',
          playlists: Playlists.default(visited),
          status: 'status',
          user_metadata: UserMetadata.default(visited),
          timing: Timing.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Job.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['PipelineId'] = stub[:pipeline_id] unless stub[:pipeline_id].nil?
        data['Input'] = JobInput.stub(stub[:input]) unless stub[:input].nil?
        data['Inputs'] = JobInputs.stub(stub[:inputs]) unless stub[:inputs].nil?
        data['Output'] = JobOutput.stub(stub[:output]) unless stub[:output].nil?
        data['Outputs'] = JobOutputs.stub(stub[:outputs]) unless stub[:outputs].nil?
        data['OutputKeyPrefix'] = stub[:output_key_prefix] unless stub[:output_key_prefix].nil?
        data['Playlists'] = Playlists.stub(stub[:playlists]) unless stub[:playlists].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['UserMetadata'] = UserMetadata.stub(stub[:user_metadata]) unless stub[:user_metadata].nil?
        data['Timing'] = Timing.stub(stub[:timing]) unless stub[:timing].nil?
        data
      end
    end

    # Structure Stubber for Timing
    class Timing
      def self.default(visited=[])
        return nil if visited.include?('Timing')
        visited = visited + ['Timing']
        {
          submit_time_millis: 1,
          start_time_millis: 1,
          finish_time_millis: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::Timing.new
        data = {}
        data['SubmitTimeMillis'] = stub[:submit_time_millis] unless stub[:submit_time_millis].nil?
        data['StartTimeMillis'] = stub[:start_time_millis] unless stub[:start_time_millis].nil?
        data['FinishTimeMillis'] = stub[:finish_time_millis] unless stub[:finish_time_millis].nil?
        data
      end
    end

    # Map Stubber for UserMetadata
    class UserMetadata
      def self.default(visited=[])
        return nil if visited.include?('UserMetadata')
        visited = visited + ['UserMetadata']
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

    # List Stubber for Playlists
    class Playlists
      def self.default(visited=[])
        return nil if visited.include?('Playlists')
        visited = visited + ['Playlists']
        [
          Playlist.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Playlist.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Playlist
    class Playlist
      def self.default(visited=[])
        return nil if visited.include?('Playlist')
        visited = visited + ['Playlist']
        {
          name: 'name',
          format: 'format',
          output_keys: OutputKeys.default(visited),
          hls_content_protection: HlsContentProtection.default(visited),
          play_ready_drm: PlayReadyDrm.default(visited),
          status: 'status',
          status_detail: 'status_detail',
        }
      end

      def self.stub(stub)
        stub ||= Types::Playlist.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Format'] = stub[:format] unless stub[:format].nil?
        data['OutputKeys'] = OutputKeys.stub(stub[:output_keys]) unless stub[:output_keys].nil?
        data['HlsContentProtection'] = HlsContentProtection.stub(stub[:hls_content_protection]) unless stub[:hls_content_protection].nil?
        data['PlayReadyDrm'] = PlayReadyDrm.stub(stub[:play_ready_drm]) unless stub[:play_ready_drm].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StatusDetail'] = stub[:status_detail] unless stub[:status_detail].nil?
        data
      end
    end

    # Structure Stubber for PlayReadyDrm
    class PlayReadyDrm
      def self.default(visited=[])
        return nil if visited.include?('PlayReadyDrm')
        visited = visited + ['PlayReadyDrm']
        {
          format: 'format',
          key: 'key',
          key_md5: 'key_md5',
          key_id: 'key_id',
          initialization_vector: 'initialization_vector',
          license_acquisition_url: 'license_acquisition_url',
        }
      end

      def self.stub(stub)
        stub ||= Types::PlayReadyDrm.new
        data = {}
        data['Format'] = stub[:format] unless stub[:format].nil?
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['KeyMd5'] = stub[:key_md5] unless stub[:key_md5].nil?
        data['KeyId'] = stub[:key_id] unless stub[:key_id].nil?
        data['InitializationVector'] = stub[:initialization_vector] unless stub[:initialization_vector].nil?
        data['LicenseAcquisitionUrl'] = stub[:license_acquisition_url] unless stub[:license_acquisition_url].nil?
        data
      end
    end

    # Structure Stubber for HlsContentProtection
    class HlsContentProtection
      def self.default(visited=[])
        return nil if visited.include?('HlsContentProtection')
        visited = visited + ['HlsContentProtection']
        {
          member_method: 'member_method',
          key: 'key',
          key_md5: 'key_md5',
          initialization_vector: 'initialization_vector',
          license_acquisition_url: 'license_acquisition_url',
          key_storage_policy: 'key_storage_policy',
        }
      end

      def self.stub(stub)
        stub ||= Types::HlsContentProtection.new
        data = {}
        data['Method'] = stub[:member_method] unless stub[:member_method].nil?
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['KeyMd5'] = stub[:key_md5] unless stub[:key_md5].nil?
        data['InitializationVector'] = stub[:initialization_vector] unless stub[:initialization_vector].nil?
        data['LicenseAcquisitionUrl'] = stub[:license_acquisition_url] unless stub[:license_acquisition_url].nil?
        data['KeyStoragePolicy'] = stub[:key_storage_policy] unless stub[:key_storage_policy].nil?
        data
      end
    end

    # List Stubber for OutputKeys
    class OutputKeys
      def self.default(visited=[])
        return nil if visited.include?('OutputKeys')
        visited = visited + ['OutputKeys']
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

    # List Stubber for JobOutputs
    class JobOutputs
      def self.default(visited=[])
        return nil if visited.include?('JobOutputs')
        visited = visited + ['JobOutputs']
        [
          JobOutput.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << JobOutput.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for JobOutput
    class JobOutput
      def self.default(visited=[])
        return nil if visited.include?('JobOutput')
        visited = visited + ['JobOutput']
        {
          id: 'id',
          key: 'key',
          thumbnail_pattern: 'thumbnail_pattern',
          thumbnail_encryption: Encryption.default(visited),
          rotate: 'rotate',
          preset_id: 'preset_id',
          segment_duration: 'segment_duration',
          status: 'status',
          status_detail: 'status_detail',
          duration: 1,
          width: 1,
          height: 1,
          frame_rate: 'frame_rate',
          file_size: 1,
          duration_millis: 1,
          watermarks: JobWatermarks.default(visited),
          album_art: JobAlbumArt.default(visited),
          composition: Composition.default(visited),
          captions: Captions.default(visited),
          encryption: Encryption.default(visited),
          applied_color_space_conversion: 'applied_color_space_conversion',
        }
      end

      def self.stub(stub)
        stub ||= Types::JobOutput.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['ThumbnailPattern'] = stub[:thumbnail_pattern] unless stub[:thumbnail_pattern].nil?
        data['ThumbnailEncryption'] = Encryption.stub(stub[:thumbnail_encryption]) unless stub[:thumbnail_encryption].nil?
        data['Rotate'] = stub[:rotate] unless stub[:rotate].nil?
        data['PresetId'] = stub[:preset_id] unless stub[:preset_id].nil?
        data['SegmentDuration'] = stub[:segment_duration] unless stub[:segment_duration].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StatusDetail'] = stub[:status_detail] unless stub[:status_detail].nil?
        data['Duration'] = stub[:duration] unless stub[:duration].nil?
        data['Width'] = stub[:width] unless stub[:width].nil?
        data['Height'] = stub[:height] unless stub[:height].nil?
        data['FrameRate'] = stub[:frame_rate] unless stub[:frame_rate].nil?
        data['FileSize'] = stub[:file_size] unless stub[:file_size].nil?
        data['DurationMillis'] = stub[:duration_millis] unless stub[:duration_millis].nil?
        data['Watermarks'] = JobWatermarks.stub(stub[:watermarks]) unless stub[:watermarks].nil?
        data['AlbumArt'] = JobAlbumArt.stub(stub[:album_art]) unless stub[:album_art].nil?
        data['Composition'] = Composition.stub(stub[:composition]) unless stub[:composition].nil?
        data['Captions'] = Captions.stub(stub[:captions]) unless stub[:captions].nil?
        data['Encryption'] = Encryption.stub(stub[:encryption]) unless stub[:encryption].nil?
        data['AppliedColorSpaceConversion'] = stub[:applied_color_space_conversion] unless stub[:applied_color_space_conversion].nil?
        data
      end
    end

    # Structure Stubber for Encryption
    class Encryption
      def self.default(visited=[])
        return nil if visited.include?('Encryption')
        visited = visited + ['Encryption']
        {
          mode: 'mode',
          key: 'key',
          key_md5: 'key_md5',
          initialization_vector: 'initialization_vector',
        }
      end

      def self.stub(stub)
        stub ||= Types::Encryption.new
        data = {}
        data['Mode'] = stub[:mode] unless stub[:mode].nil?
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['KeyMd5'] = stub[:key_md5] unless stub[:key_md5].nil?
        data['InitializationVector'] = stub[:initialization_vector] unless stub[:initialization_vector].nil?
        data
      end
    end

    # Structure Stubber for Captions
    class Captions
      def self.default(visited=[])
        return nil if visited.include?('Captions')
        visited = visited + ['Captions']
        {
          merge_policy: 'merge_policy',
          caption_sources: CaptionSources.default(visited),
          caption_formats: CaptionFormats.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Captions.new
        data = {}
        data['MergePolicy'] = stub[:merge_policy] unless stub[:merge_policy].nil?
        data['CaptionSources'] = CaptionSources.stub(stub[:caption_sources]) unless stub[:caption_sources].nil?
        data['CaptionFormats'] = CaptionFormats.stub(stub[:caption_formats]) unless stub[:caption_formats].nil?
        data
      end
    end

    # List Stubber for CaptionFormats
    class CaptionFormats
      def self.default(visited=[])
        return nil if visited.include?('CaptionFormats')
        visited = visited + ['CaptionFormats']
        [
          CaptionFormat.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << CaptionFormat.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CaptionFormat
    class CaptionFormat
      def self.default(visited=[])
        return nil if visited.include?('CaptionFormat')
        visited = visited + ['CaptionFormat']
        {
          format: 'format',
          pattern: 'pattern',
          encryption: Encryption.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CaptionFormat.new
        data = {}
        data['Format'] = stub[:format] unless stub[:format].nil?
        data['Pattern'] = stub[:pattern] unless stub[:pattern].nil?
        data['Encryption'] = Encryption.stub(stub[:encryption]) unless stub[:encryption].nil?
        data
      end
    end

    # List Stubber for CaptionSources
    class CaptionSources
      def self.default(visited=[])
        return nil if visited.include?('CaptionSources')
        visited = visited + ['CaptionSources']
        [
          CaptionSource.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << CaptionSource.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CaptionSource
    class CaptionSource
      def self.default(visited=[])
        return nil if visited.include?('CaptionSource')
        visited = visited + ['CaptionSource']
        {
          key: 'key',
          language: 'language',
          time_offset: 'time_offset',
          label: 'label',
          encryption: Encryption.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CaptionSource.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Language'] = stub[:language] unless stub[:language].nil?
        data['TimeOffset'] = stub[:time_offset] unless stub[:time_offset].nil?
        data['Label'] = stub[:label] unless stub[:label].nil?
        data['Encryption'] = Encryption.stub(stub[:encryption]) unless stub[:encryption].nil?
        data
      end
    end

    # List Stubber for Composition
    class Composition
      def self.default(visited=[])
        return nil if visited.include?('Composition')
        visited = visited + ['Composition']
        [
          Clip.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Clip.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Clip
    class Clip
      def self.default(visited=[])
        return nil if visited.include?('Clip')
        visited = visited + ['Clip']
        {
          time_span: TimeSpan.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Clip.new
        data = {}
        data['TimeSpan'] = TimeSpan.stub(stub[:time_span]) unless stub[:time_span].nil?
        data
      end
    end

    # Structure Stubber for TimeSpan
    class TimeSpan
      def self.default(visited=[])
        return nil if visited.include?('TimeSpan')
        visited = visited + ['TimeSpan']
        {
          start_time: 'start_time',
          duration: 'duration',
        }
      end

      def self.stub(stub)
        stub ||= Types::TimeSpan.new
        data = {}
        data['StartTime'] = stub[:start_time] unless stub[:start_time].nil?
        data['Duration'] = stub[:duration] unless stub[:duration].nil?
        data
      end
    end

    # Structure Stubber for JobAlbumArt
    class JobAlbumArt
      def self.default(visited=[])
        return nil if visited.include?('JobAlbumArt')
        visited = visited + ['JobAlbumArt']
        {
          merge_policy: 'merge_policy',
          artwork: Artworks.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::JobAlbumArt.new
        data = {}
        data['MergePolicy'] = stub[:merge_policy] unless stub[:merge_policy].nil?
        data['Artwork'] = Artworks.stub(stub[:artwork]) unless stub[:artwork].nil?
        data
      end
    end

    # List Stubber for Artworks
    class Artworks
      def self.default(visited=[])
        return nil if visited.include?('Artworks')
        visited = visited + ['Artworks']
        [
          Artwork.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Artwork.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Artwork
    class Artwork
      def self.default(visited=[])
        return nil if visited.include?('Artwork')
        visited = visited + ['Artwork']
        {
          input_key: 'input_key',
          max_width: 'max_width',
          max_height: 'max_height',
          sizing_policy: 'sizing_policy',
          padding_policy: 'padding_policy',
          album_art_format: 'album_art_format',
          encryption: Encryption.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Artwork.new
        data = {}
        data['InputKey'] = stub[:input_key] unless stub[:input_key].nil?
        data['MaxWidth'] = stub[:max_width] unless stub[:max_width].nil?
        data['MaxHeight'] = stub[:max_height] unless stub[:max_height].nil?
        data['SizingPolicy'] = stub[:sizing_policy] unless stub[:sizing_policy].nil?
        data['PaddingPolicy'] = stub[:padding_policy] unless stub[:padding_policy].nil?
        data['AlbumArtFormat'] = stub[:album_art_format] unless stub[:album_art_format].nil?
        data['Encryption'] = Encryption.stub(stub[:encryption]) unless stub[:encryption].nil?
        data
      end
    end

    # List Stubber for JobWatermarks
    class JobWatermarks
      def self.default(visited=[])
        return nil if visited.include?('JobWatermarks')
        visited = visited + ['JobWatermarks']
        [
          JobWatermark.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << JobWatermark.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for JobWatermark
    class JobWatermark
      def self.default(visited=[])
        return nil if visited.include?('JobWatermark')
        visited = visited + ['JobWatermark']
        {
          preset_watermark_id: 'preset_watermark_id',
          input_key: 'input_key',
          encryption: Encryption.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::JobWatermark.new
        data = {}
        data['PresetWatermarkId'] = stub[:preset_watermark_id] unless stub[:preset_watermark_id].nil?
        data['InputKey'] = stub[:input_key] unless stub[:input_key].nil?
        data['Encryption'] = Encryption.stub(stub[:encryption]) unless stub[:encryption].nil?
        data
      end
    end

    # List Stubber for JobInputs
    class JobInputs
      def self.default(visited=[])
        return nil if visited.include?('JobInputs')
        visited = visited + ['JobInputs']
        [
          JobInput.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << JobInput.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for JobInput
    class JobInput
      def self.default(visited=[])
        return nil if visited.include?('JobInput')
        visited = visited + ['JobInput']
        {
          key: 'key',
          frame_rate: 'frame_rate',
          resolution: 'resolution',
          aspect_ratio: 'aspect_ratio',
          interlaced: 'interlaced',
          container: 'container',
          encryption: Encryption.default(visited),
          time_span: TimeSpan.default(visited),
          input_captions: InputCaptions.default(visited),
          detected_properties: DetectedProperties.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::JobInput.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['FrameRate'] = stub[:frame_rate] unless stub[:frame_rate].nil?
        data['Resolution'] = stub[:resolution] unless stub[:resolution].nil?
        data['AspectRatio'] = stub[:aspect_ratio] unless stub[:aspect_ratio].nil?
        data['Interlaced'] = stub[:interlaced] unless stub[:interlaced].nil?
        data['Container'] = stub[:container] unless stub[:container].nil?
        data['Encryption'] = Encryption.stub(stub[:encryption]) unless stub[:encryption].nil?
        data['TimeSpan'] = TimeSpan.stub(stub[:time_span]) unless stub[:time_span].nil?
        data['InputCaptions'] = InputCaptions.stub(stub[:input_captions]) unless stub[:input_captions].nil?
        data['DetectedProperties'] = DetectedProperties.stub(stub[:detected_properties]) unless stub[:detected_properties].nil?
        data
      end
    end

    # Structure Stubber for DetectedProperties
    class DetectedProperties
      def self.default(visited=[])
        return nil if visited.include?('DetectedProperties')
        visited = visited + ['DetectedProperties']
        {
          width: 1,
          height: 1,
          frame_rate: 'frame_rate',
          file_size: 1,
          duration_millis: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::DetectedProperties.new
        data = {}
        data['Width'] = stub[:width] unless stub[:width].nil?
        data['Height'] = stub[:height] unless stub[:height].nil?
        data['FrameRate'] = stub[:frame_rate] unless stub[:frame_rate].nil?
        data['FileSize'] = stub[:file_size] unless stub[:file_size].nil?
        data['DurationMillis'] = stub[:duration_millis] unless stub[:duration_millis].nil?
        data
      end
    end

    # Structure Stubber for InputCaptions
    class InputCaptions
      def self.default(visited=[])
        return nil if visited.include?('InputCaptions')
        visited = visited + ['InputCaptions']
        {
          merge_policy: 'merge_policy',
          caption_sources: CaptionSources.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::InputCaptions.new
        data = {}
        data['MergePolicy'] = stub[:merge_policy] unless stub[:merge_policy].nil?
        data['CaptionSources'] = CaptionSources.stub(stub[:caption_sources]) unless stub[:caption_sources].nil?
        data
      end
    end

    # Operation Stubber for CreatePipeline
    class CreatePipeline
      def self.default(visited=[])
        {
          pipeline: Pipeline.default(visited),
          warnings: Warnings.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['Pipeline'] = Pipeline.stub(stub[:pipeline]) unless stub[:pipeline].nil?
        data['Warnings'] = Warnings.stub(stub[:warnings]) unless stub[:warnings].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for Warnings
    class Warnings
      def self.default(visited=[])
        return nil if visited.include?('Warnings')
        visited = visited + ['Warnings']
        [
          Warning.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Warning.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Warning
    class Warning
      def self.default(visited=[])
        return nil if visited.include?('Warning')
        visited = visited + ['Warning']
        {
          code: 'code',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::Warning.new
        data = {}
        data['Code'] = stub[:code] unless stub[:code].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Structure Stubber for Pipeline
    class Pipeline
      def self.default(visited=[])
        return nil if visited.include?('Pipeline')
        visited = visited + ['Pipeline']
        {
          id: 'id',
          arn: 'arn',
          name: 'name',
          status: 'status',
          input_bucket: 'input_bucket',
          output_bucket: 'output_bucket',
          role: 'role',
          aws_kms_key_arn: 'aws_kms_key_arn',
          notifications: Notifications.default(visited),
          content_config: PipelineOutputConfig.default(visited),
          thumbnail_config: PipelineOutputConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Pipeline.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['InputBucket'] = stub[:input_bucket] unless stub[:input_bucket].nil?
        data['OutputBucket'] = stub[:output_bucket] unless stub[:output_bucket].nil?
        data['Role'] = stub[:role] unless stub[:role].nil?
        data['AwsKmsKeyArn'] = stub[:aws_kms_key_arn] unless stub[:aws_kms_key_arn].nil?
        data['Notifications'] = Notifications.stub(stub[:notifications]) unless stub[:notifications].nil?
        data['ContentConfig'] = PipelineOutputConfig.stub(stub[:content_config]) unless stub[:content_config].nil?
        data['ThumbnailConfig'] = PipelineOutputConfig.stub(stub[:thumbnail_config]) unless stub[:thumbnail_config].nil?
        data
      end
    end

    # Structure Stubber for PipelineOutputConfig
    class PipelineOutputConfig
      def self.default(visited=[])
        return nil if visited.include?('PipelineOutputConfig')
        visited = visited + ['PipelineOutputConfig']
        {
          bucket: 'bucket',
          storage_class: 'storage_class',
          permissions: Permissions.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PipelineOutputConfig.new
        data = {}
        data['Bucket'] = stub[:bucket] unless stub[:bucket].nil?
        data['StorageClass'] = stub[:storage_class] unless stub[:storage_class].nil?
        data['Permissions'] = Permissions.stub(stub[:permissions]) unless stub[:permissions].nil?
        data
      end
    end

    # List Stubber for Permissions
    class Permissions
      def self.default(visited=[])
        return nil if visited.include?('Permissions')
        visited = visited + ['Permissions']
        [
          Permission.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Permission.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Permission
    class Permission
      def self.default(visited=[])
        return nil if visited.include?('Permission')
        visited = visited + ['Permission']
        {
          grantee_type: 'grantee_type',
          grantee: 'grantee',
          access: AccessControls.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Permission.new
        data = {}
        data['GranteeType'] = stub[:grantee_type] unless stub[:grantee_type].nil?
        data['Grantee'] = stub[:grantee] unless stub[:grantee].nil?
        data['Access'] = AccessControls.stub(stub[:access]) unless stub[:access].nil?
        data
      end
    end

    # List Stubber for AccessControls
    class AccessControls
      def self.default(visited=[])
        return nil if visited.include?('AccessControls')
        visited = visited + ['AccessControls']
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

    # Structure Stubber for Notifications
    class Notifications
      def self.default(visited=[])
        return nil if visited.include?('Notifications')
        visited = visited + ['Notifications']
        {
          progressing: 'progressing',
          completed: 'completed',
          warning: 'warning',
          error: 'error',
        }
      end

      def self.stub(stub)
        stub ||= Types::Notifications.new
        data = {}
        data['Progressing'] = stub[:progressing] unless stub[:progressing].nil?
        data['Completed'] = stub[:completed] unless stub[:completed].nil?
        data['Warning'] = stub[:warning] unless stub[:warning].nil?
        data['Error'] = stub[:error] unless stub[:error].nil?
        data
      end
    end

    # Operation Stubber for CreatePreset
    class CreatePreset
      def self.default(visited=[])
        {
          preset: Preset.default(visited),
          warning: 'warning',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['Preset'] = Preset.stub(stub[:preset]) unless stub[:preset].nil?
        data['Warning'] = stub[:warning] unless stub[:warning].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Preset
    class Preset
      def self.default(visited=[])
        return nil if visited.include?('Preset')
        visited = visited + ['Preset']
        {
          id: 'id',
          arn: 'arn',
          name: 'name',
          description: 'description',
          container: 'container',
          audio: AudioParameters.default(visited),
          video: VideoParameters.default(visited),
          thumbnails: Thumbnails.default(visited),
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::Preset.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Container'] = stub[:container] unless stub[:container].nil?
        data['Audio'] = AudioParameters.stub(stub[:audio]) unless stub[:audio].nil?
        data['Video'] = VideoParameters.stub(stub[:video]) unless stub[:video].nil?
        data['Thumbnails'] = Thumbnails.stub(stub[:thumbnails]) unless stub[:thumbnails].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Structure Stubber for Thumbnails
    class Thumbnails
      def self.default(visited=[])
        return nil if visited.include?('Thumbnails')
        visited = visited + ['Thumbnails']
        {
          format: 'format',
          interval: 'interval',
          resolution: 'resolution',
          aspect_ratio: 'aspect_ratio',
          max_width: 'max_width',
          max_height: 'max_height',
          sizing_policy: 'sizing_policy',
          padding_policy: 'padding_policy',
        }
      end

      def self.stub(stub)
        stub ||= Types::Thumbnails.new
        data = {}
        data['Format'] = stub[:format] unless stub[:format].nil?
        data['Interval'] = stub[:interval] unless stub[:interval].nil?
        data['Resolution'] = stub[:resolution] unless stub[:resolution].nil?
        data['AspectRatio'] = stub[:aspect_ratio] unless stub[:aspect_ratio].nil?
        data['MaxWidth'] = stub[:max_width] unless stub[:max_width].nil?
        data['MaxHeight'] = stub[:max_height] unless stub[:max_height].nil?
        data['SizingPolicy'] = stub[:sizing_policy] unless stub[:sizing_policy].nil?
        data['PaddingPolicy'] = stub[:padding_policy] unless stub[:padding_policy].nil?
        data
      end
    end

    # Structure Stubber for VideoParameters
    class VideoParameters
      def self.default(visited=[])
        return nil if visited.include?('VideoParameters')
        visited = visited + ['VideoParameters']
        {
          codec: 'codec',
          codec_options: CodecOptions.default(visited),
          keyframes_max_dist: 'keyframes_max_dist',
          fixed_gop: 'fixed_gop',
          bit_rate: 'bit_rate',
          frame_rate: 'frame_rate',
          max_frame_rate: 'max_frame_rate',
          resolution: 'resolution',
          aspect_ratio: 'aspect_ratio',
          max_width: 'max_width',
          max_height: 'max_height',
          display_aspect_ratio: 'display_aspect_ratio',
          sizing_policy: 'sizing_policy',
          padding_policy: 'padding_policy',
          watermarks: PresetWatermarks.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::VideoParameters.new
        data = {}
        data['Codec'] = stub[:codec] unless stub[:codec].nil?
        data['CodecOptions'] = CodecOptions.stub(stub[:codec_options]) unless stub[:codec_options].nil?
        data['KeyframesMaxDist'] = stub[:keyframes_max_dist] unless stub[:keyframes_max_dist].nil?
        data['FixedGOP'] = stub[:fixed_gop] unless stub[:fixed_gop].nil?
        data['BitRate'] = stub[:bit_rate] unless stub[:bit_rate].nil?
        data['FrameRate'] = stub[:frame_rate] unless stub[:frame_rate].nil?
        data['MaxFrameRate'] = stub[:max_frame_rate] unless stub[:max_frame_rate].nil?
        data['Resolution'] = stub[:resolution] unless stub[:resolution].nil?
        data['AspectRatio'] = stub[:aspect_ratio] unless stub[:aspect_ratio].nil?
        data['MaxWidth'] = stub[:max_width] unless stub[:max_width].nil?
        data['MaxHeight'] = stub[:max_height] unless stub[:max_height].nil?
        data['DisplayAspectRatio'] = stub[:display_aspect_ratio] unless stub[:display_aspect_ratio].nil?
        data['SizingPolicy'] = stub[:sizing_policy] unless stub[:sizing_policy].nil?
        data['PaddingPolicy'] = stub[:padding_policy] unless stub[:padding_policy].nil?
        data['Watermarks'] = PresetWatermarks.stub(stub[:watermarks]) unless stub[:watermarks].nil?
        data
      end
    end

    # List Stubber for PresetWatermarks
    class PresetWatermarks
      def self.default(visited=[])
        return nil if visited.include?('PresetWatermarks')
        visited = visited + ['PresetWatermarks']
        [
          PresetWatermark.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << PresetWatermark.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PresetWatermark
    class PresetWatermark
      def self.default(visited=[])
        return nil if visited.include?('PresetWatermark')
        visited = visited + ['PresetWatermark']
        {
          id: 'id',
          max_width: 'max_width',
          max_height: 'max_height',
          sizing_policy: 'sizing_policy',
          horizontal_align: 'horizontal_align',
          horizontal_offset: 'horizontal_offset',
          vertical_align: 'vertical_align',
          vertical_offset: 'vertical_offset',
          opacity: 'opacity',
          target: 'target',
        }
      end

      def self.stub(stub)
        stub ||= Types::PresetWatermark.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['MaxWidth'] = stub[:max_width] unless stub[:max_width].nil?
        data['MaxHeight'] = stub[:max_height] unless stub[:max_height].nil?
        data['SizingPolicy'] = stub[:sizing_policy] unless stub[:sizing_policy].nil?
        data['HorizontalAlign'] = stub[:horizontal_align] unless stub[:horizontal_align].nil?
        data['HorizontalOffset'] = stub[:horizontal_offset] unless stub[:horizontal_offset].nil?
        data['VerticalAlign'] = stub[:vertical_align] unless stub[:vertical_align].nil?
        data['VerticalOffset'] = stub[:vertical_offset] unless stub[:vertical_offset].nil?
        data['Opacity'] = stub[:opacity] unless stub[:opacity].nil?
        data['Target'] = stub[:target] unless stub[:target].nil?
        data
      end
    end

    # Map Stubber for CodecOptions
    class CodecOptions
      def self.default(visited=[])
        return nil if visited.include?('CodecOptions')
        visited = visited + ['CodecOptions']
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

    # Structure Stubber for AudioParameters
    class AudioParameters
      def self.default(visited=[])
        return nil if visited.include?('AudioParameters')
        visited = visited + ['AudioParameters']
        {
          codec: 'codec',
          sample_rate: 'sample_rate',
          bit_rate: 'bit_rate',
          channels: 'channels',
          audio_packing_mode: 'audio_packing_mode',
          codec_options: AudioCodecOptions.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AudioParameters.new
        data = {}
        data['Codec'] = stub[:codec] unless stub[:codec].nil?
        data['SampleRate'] = stub[:sample_rate] unless stub[:sample_rate].nil?
        data['BitRate'] = stub[:bit_rate] unless stub[:bit_rate].nil?
        data['Channels'] = stub[:channels] unless stub[:channels].nil?
        data['AudioPackingMode'] = stub[:audio_packing_mode] unless stub[:audio_packing_mode].nil?
        data['CodecOptions'] = AudioCodecOptions.stub(stub[:codec_options]) unless stub[:codec_options].nil?
        data
      end
    end

    # Structure Stubber for AudioCodecOptions
    class AudioCodecOptions
      def self.default(visited=[])
        return nil if visited.include?('AudioCodecOptions')
        visited = visited + ['AudioCodecOptions']
        {
          profile: 'profile',
          bit_depth: 'bit_depth',
          bit_order: 'bit_order',
          signed: 'signed',
        }
      end

      def self.stub(stub)
        stub ||= Types::AudioCodecOptions.new
        data = {}
        data['Profile'] = stub[:profile] unless stub[:profile].nil?
        data['BitDepth'] = stub[:bit_depth] unless stub[:bit_depth].nil?
        data['BitOrder'] = stub[:bit_order] unless stub[:bit_order].nil?
        data['Signed'] = stub[:signed] unless stub[:signed].nil?
        data
      end
    end

    # Operation Stubber for DeletePipeline
    class DeletePipeline
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
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

    # Operation Stubber for ListJobsByPipeline
    class ListJobsByPipeline
      def self.default(visited=[])
        {
          jobs: Jobs.default(visited),
          next_page_token: 'next_page_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Jobs'] = Jobs.stub(stub[:jobs]) unless stub[:jobs].nil?
        data['NextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for Jobs
    class Jobs
      def self.default(visited=[])
        return nil if visited.include?('Jobs')
        visited = visited + ['Jobs']
        [
          Job.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Job.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListJobsByStatus
    class ListJobsByStatus
      def self.default(visited=[])
        {
          jobs: Jobs.default(visited),
          next_page_token: 'next_page_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Jobs'] = Jobs.stub(stub[:jobs]) unless stub[:jobs].nil?
        data['NextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListPipelines
    class ListPipelines
      def self.default(visited=[])
        {
          pipelines: Pipelines.default(visited),
          next_page_token: 'next_page_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Pipelines'] = Pipelines.stub(stub[:pipelines]) unless stub[:pipelines].nil?
        data['NextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for Pipelines
    class Pipelines
      def self.default(visited=[])
        return nil if visited.include?('Pipelines')
        visited = visited + ['Pipelines']
        [
          Pipeline.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Pipeline.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListPresets
    class ListPresets
      def self.default(visited=[])
        {
          presets: Presets.default(visited),
          next_page_token: 'next_page_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Presets'] = Presets.stub(stub[:presets]) unless stub[:presets].nil?
        data['NextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for Presets
    class Presets
      def self.default(visited=[])
        return nil if visited.include?('Presets')
        visited = visited + ['Presets']
        [
          Preset.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Preset.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ReadJob
    class ReadJob
      def self.default(visited=[])
        {
          job: Job.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Job'] = Job.stub(stub[:job]) unless stub[:job].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ReadPipeline
    class ReadPipeline
      def self.default(visited=[])
        {
          pipeline: Pipeline.default(visited),
          warnings: Warnings.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Pipeline'] = Pipeline.stub(stub[:pipeline]) unless stub[:pipeline].nil?
        data['Warnings'] = Warnings.stub(stub[:warnings]) unless stub[:warnings].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ReadPreset
    class ReadPreset
      def self.default(visited=[])
        {
          preset: Preset.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Preset'] = Preset.stub(stub[:preset]) unless stub[:preset].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for TestRole
    class TestRole
      def self.default(visited=[])
        {
          success: 'success',
          messages: ExceptionMessages.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Success'] = stub[:success] unless stub[:success].nil?
        data['Messages'] = ExceptionMessages.stub(stub[:messages]) unless stub[:messages].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ExceptionMessages
    class ExceptionMessages
      def self.default(visited=[])
        return nil if visited.include?('ExceptionMessages')
        visited = visited + ['ExceptionMessages']
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

    # Operation Stubber for UpdatePipeline
    class UpdatePipeline
      def self.default(visited=[])
        {
          pipeline: Pipeline.default(visited),
          warnings: Warnings.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Pipeline'] = Pipeline.stub(stub[:pipeline]) unless stub[:pipeline].nil?
        data['Warnings'] = Warnings.stub(stub[:warnings]) unless stub[:warnings].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdatePipelineNotifications
    class UpdatePipelineNotifications
      def self.default(visited=[])
        {
          pipeline: Pipeline.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Pipeline'] = Pipeline.stub(stub[:pipeline]) unless stub[:pipeline].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdatePipelineStatus
    class UpdatePipelineStatus
      def self.default(visited=[])
        {
          pipeline: Pipeline.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Pipeline'] = Pipeline.stub(stub[:pipeline]) unless stub[:pipeline].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
