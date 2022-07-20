# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ElasticTranscoder
  module Parsers

    # Operation Parser for CancelJob
    class CancelJob
      def self.parse(http_resp)
        data = Types::CancelJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for ResourceInUseException
    class ResourceInUseException
      def self.parse(http_resp)
        data = Types::ResourceInUseException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for IncompatibleVersionException
    class IncompatibleVersionException
      def self.parse(http_resp)
        data = Types::IncompatibleVersionException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for InternalServiceException
    class InternalServiceException
      def self.parse(http_resp)
        data = Types::InternalServiceException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for CreateJob
    class CreateJob
      def self.parse(http_resp)
        data = Types::CreateJobOperationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.job = (Job.parse(map['Job']) unless map['Job'].nil?)
        data
      end
    end

    class Job
      def self.parse(map)
        data = Types::Job.new
        data.id = map['Id']
        data.arn = map['Arn']
        data.pipeline_id = map['PipelineId']
        data.input = (JobInput.parse(map['Input']) unless map['Input'].nil?)
        data.inputs = (JobInputs.parse(map['Inputs']) unless map['Inputs'].nil?)
        data.output = (JobOutput.parse(map['Output']) unless map['Output'].nil?)
        data.outputs = (JobOutputs.parse(map['Outputs']) unless map['Outputs'].nil?)
        data.output_key_prefix = map['OutputKeyPrefix']
        data.playlists = (Playlists.parse(map['Playlists']) unless map['Playlists'].nil?)
        data.status = map['Status']
        data.user_metadata = (UserMetadata.parse(map['UserMetadata']) unless map['UserMetadata'].nil?)
        data.timing = (Timing.parse(map['Timing']) unless map['Timing'].nil?)
        return data
      end
    end

    class Timing
      def self.parse(map)
        data = Types::Timing.new
        data.submit_time_millis = map['SubmitTimeMillis']
        data.start_time_millis = map['StartTimeMillis']
        data.finish_time_millis = map['FinishTimeMillis']
        return data
      end
    end

    class UserMetadata
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class Playlists
      def self.parse(list)
        data = []
        list.map do |value|
          data << Playlist.parse(value) unless value.nil?
        end
        data
      end
    end

    class Playlist
      def self.parse(map)
        data = Types::Playlist.new
        data.name = map['Name']
        data.format = map['Format']
        data.output_keys = (OutputKeys.parse(map['OutputKeys']) unless map['OutputKeys'].nil?)
        data.hls_content_protection = (HlsContentProtection.parse(map['HlsContentProtection']) unless map['HlsContentProtection'].nil?)
        data.play_ready_drm = (PlayReadyDrm.parse(map['PlayReadyDrm']) unless map['PlayReadyDrm'].nil?)
        data.status = map['Status']
        data.status_detail = map['StatusDetail']
        return data
      end
    end

    class PlayReadyDrm
      def self.parse(map)
        data = Types::PlayReadyDrm.new
        data.format = map['Format']
        data.key = map['Key']
        data.key_md5 = map['KeyMd5']
        data.key_id = map['KeyId']
        data.initialization_vector = map['InitializationVector']
        data.license_acquisition_url = map['LicenseAcquisitionUrl']
        return data
      end
    end

    class HlsContentProtection
      def self.parse(map)
        data = Types::HlsContentProtection.new
        data.member_method = map['Method']
        data.key = map['Key']
        data.key_md5 = map['KeyMd5']
        data.initialization_vector = map['InitializationVector']
        data.license_acquisition_url = map['LicenseAcquisitionUrl']
        data.key_storage_policy = map['KeyStoragePolicy']
        return data
      end
    end

    class OutputKeys
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class JobOutputs
      def self.parse(list)
        data = []
        list.map do |value|
          data << JobOutput.parse(value) unless value.nil?
        end
        data
      end
    end

    class JobOutput
      def self.parse(map)
        data = Types::JobOutput.new
        data.id = map['Id']
        data.key = map['Key']
        data.thumbnail_pattern = map['ThumbnailPattern']
        data.thumbnail_encryption = (Encryption.parse(map['ThumbnailEncryption']) unless map['ThumbnailEncryption'].nil?)
        data.rotate = map['Rotate']
        data.preset_id = map['PresetId']
        data.segment_duration = map['SegmentDuration']
        data.status = map['Status']
        data.status_detail = map['StatusDetail']
        data.duration = map['Duration']
        data.width = map['Width']
        data.height = map['Height']
        data.frame_rate = map['FrameRate']
        data.file_size = map['FileSize']
        data.duration_millis = map['DurationMillis']
        data.watermarks = (JobWatermarks.parse(map['Watermarks']) unless map['Watermarks'].nil?)
        data.album_art = (JobAlbumArt.parse(map['AlbumArt']) unless map['AlbumArt'].nil?)
        data.composition = (Composition.parse(map['Composition']) unless map['Composition'].nil?)
        data.captions = (Captions.parse(map['Captions']) unless map['Captions'].nil?)
        data.encryption = (Encryption.parse(map['Encryption']) unless map['Encryption'].nil?)
        data.applied_color_space_conversion = map['AppliedColorSpaceConversion']
        return data
      end
    end

    class Encryption
      def self.parse(map)
        data = Types::Encryption.new
        data.mode = map['Mode']
        data.key = map['Key']
        data.key_md5 = map['KeyMd5']
        data.initialization_vector = map['InitializationVector']
        return data
      end
    end

    class Captions
      def self.parse(map)
        data = Types::Captions.new
        data.merge_policy = map['MergePolicy']
        data.caption_sources = (CaptionSources.parse(map['CaptionSources']) unless map['CaptionSources'].nil?)
        data.caption_formats = (CaptionFormats.parse(map['CaptionFormats']) unless map['CaptionFormats'].nil?)
        return data
      end
    end

    class CaptionFormats
      def self.parse(list)
        data = []
        list.map do |value|
          data << CaptionFormat.parse(value) unless value.nil?
        end
        data
      end
    end

    class CaptionFormat
      def self.parse(map)
        data = Types::CaptionFormat.new
        data.format = map['Format']
        data.pattern = map['Pattern']
        data.encryption = (Encryption.parse(map['Encryption']) unless map['Encryption'].nil?)
        return data
      end
    end

    class CaptionSources
      def self.parse(list)
        data = []
        list.map do |value|
          data << CaptionSource.parse(value) unless value.nil?
        end
        data
      end
    end

    class CaptionSource
      def self.parse(map)
        data = Types::CaptionSource.new
        data.key = map['Key']
        data.language = map['Language']
        data.time_offset = map['TimeOffset']
        data.label = map['Label']
        data.encryption = (Encryption.parse(map['Encryption']) unless map['Encryption'].nil?)
        return data
      end
    end

    class Composition
      def self.parse(list)
        data = []
        list.map do |value|
          data << Clip.parse(value) unless value.nil?
        end
        data
      end
    end

    class Clip
      def self.parse(map)
        data = Types::Clip.new
        data.time_span = (TimeSpan.parse(map['TimeSpan']) unless map['TimeSpan'].nil?)
        return data
      end
    end

    class TimeSpan
      def self.parse(map)
        data = Types::TimeSpan.new
        data.start_time = map['StartTime']
        data.duration = map['Duration']
        return data
      end
    end

    class JobAlbumArt
      def self.parse(map)
        data = Types::JobAlbumArt.new
        data.merge_policy = map['MergePolicy']
        data.artwork = (Artworks.parse(map['Artwork']) unless map['Artwork'].nil?)
        return data
      end
    end

    class Artworks
      def self.parse(list)
        data = []
        list.map do |value|
          data << Artwork.parse(value) unless value.nil?
        end
        data
      end
    end

    class Artwork
      def self.parse(map)
        data = Types::Artwork.new
        data.input_key = map['InputKey']
        data.max_width = map['MaxWidth']
        data.max_height = map['MaxHeight']
        data.sizing_policy = map['SizingPolicy']
        data.padding_policy = map['PaddingPolicy']
        data.album_art_format = map['AlbumArtFormat']
        data.encryption = (Encryption.parse(map['Encryption']) unless map['Encryption'].nil?)
        return data
      end
    end

    class JobWatermarks
      def self.parse(list)
        data = []
        list.map do |value|
          data << JobWatermark.parse(value) unless value.nil?
        end
        data
      end
    end

    class JobWatermark
      def self.parse(map)
        data = Types::JobWatermark.new
        data.preset_watermark_id = map['PresetWatermarkId']
        data.input_key = map['InputKey']
        data.encryption = (Encryption.parse(map['Encryption']) unless map['Encryption'].nil?)
        return data
      end
    end

    class JobInputs
      def self.parse(list)
        data = []
        list.map do |value|
          data << JobInput.parse(value) unless value.nil?
        end
        data
      end
    end

    class JobInput
      def self.parse(map)
        data = Types::JobInput.new
        data.key = map['Key']
        data.frame_rate = map['FrameRate']
        data.resolution = map['Resolution']
        data.aspect_ratio = map['AspectRatio']
        data.interlaced = map['Interlaced']
        data.container = map['Container']
        data.encryption = (Encryption.parse(map['Encryption']) unless map['Encryption'].nil?)
        data.time_span = (TimeSpan.parse(map['TimeSpan']) unless map['TimeSpan'].nil?)
        data.input_captions = (InputCaptions.parse(map['InputCaptions']) unless map['InputCaptions'].nil?)
        data.detected_properties = (DetectedProperties.parse(map['DetectedProperties']) unless map['DetectedProperties'].nil?)
        return data
      end
    end

    class DetectedProperties
      def self.parse(map)
        data = Types::DetectedProperties.new
        data.width = map['Width']
        data.height = map['Height']
        data.frame_rate = map['FrameRate']
        data.file_size = map['FileSize']
        data.duration_millis = map['DurationMillis']
        return data
      end
    end

    class InputCaptions
      def self.parse(map)
        data = Types::InputCaptions.new
        data.merge_policy = map['MergePolicy']
        data.caption_sources = (CaptionSources.parse(map['CaptionSources']) unless map['CaptionSources'].nil?)
        return data
      end
    end

    # Error Parser for LimitExceededException
    class LimitExceededException
      def self.parse(http_resp)
        data = Types::LimitExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for CreatePipeline
    class CreatePipeline
      def self.parse(http_resp)
        data = Types::CreatePipelineOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.pipeline = (Pipeline.parse(map['Pipeline']) unless map['Pipeline'].nil?)
        data.warnings = (Warnings.parse(map['Warnings']) unless map['Warnings'].nil?)
        data
      end
    end

    class Warnings
      def self.parse(list)
        data = []
        list.map do |value|
          data << Warning.parse(value) unless value.nil?
        end
        data
      end
    end

    class Warning
      def self.parse(map)
        data = Types::Warning.new
        data.code = map['Code']
        data.message = map['Message']
        return data
      end
    end

    class Pipeline
      def self.parse(map)
        data = Types::Pipeline.new
        data.id = map['Id']
        data.arn = map['Arn']
        data.name = map['Name']
        data.status = map['Status']
        data.input_bucket = map['InputBucket']
        data.output_bucket = map['OutputBucket']
        data.role = map['Role']
        data.aws_kms_key_arn = map['AwsKmsKeyArn']
        data.notifications = (Notifications.parse(map['Notifications']) unless map['Notifications'].nil?)
        data.content_config = (PipelineOutputConfig.parse(map['ContentConfig']) unless map['ContentConfig'].nil?)
        data.thumbnail_config = (PipelineOutputConfig.parse(map['ThumbnailConfig']) unless map['ThumbnailConfig'].nil?)
        return data
      end
    end

    class PipelineOutputConfig
      def self.parse(map)
        data = Types::PipelineOutputConfig.new
        data.bucket = map['Bucket']
        data.storage_class = map['StorageClass']
        data.permissions = (Permissions.parse(map['Permissions']) unless map['Permissions'].nil?)
        return data
      end
    end

    class Permissions
      def self.parse(list)
        data = []
        list.map do |value|
          data << Permission.parse(value) unless value.nil?
        end
        data
      end
    end

    class Permission
      def self.parse(map)
        data = Types::Permission.new
        data.grantee_type = map['GranteeType']
        data.grantee = map['Grantee']
        data.access = (AccessControls.parse(map['Access']) unless map['Access'].nil?)
        return data
      end
    end

    class AccessControls
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class Notifications
      def self.parse(map)
        data = Types::Notifications.new
        data.progressing = map['Progressing']
        data.completed = map['Completed']
        data.warning = map['Warning']
        data.error = map['Error']
        return data
      end
    end

    # Operation Parser for CreatePreset
    class CreatePreset
      def self.parse(http_resp)
        data = Types::CreatePresetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.preset = (Preset.parse(map['Preset']) unless map['Preset'].nil?)
        data.warning = map['Warning']
        data
      end
    end

    class Preset
      def self.parse(map)
        data = Types::Preset.new
        data.id = map['Id']
        data.arn = map['Arn']
        data.name = map['Name']
        data.description = map['Description']
        data.container = map['Container']
        data.audio = (AudioParameters.parse(map['Audio']) unless map['Audio'].nil?)
        data.video = (VideoParameters.parse(map['Video']) unless map['Video'].nil?)
        data.thumbnails = (Thumbnails.parse(map['Thumbnails']) unless map['Thumbnails'].nil?)
        data.type = map['Type']
        return data
      end
    end

    class Thumbnails
      def self.parse(map)
        data = Types::Thumbnails.new
        data.format = map['Format']
        data.interval = map['Interval']
        data.resolution = map['Resolution']
        data.aspect_ratio = map['AspectRatio']
        data.max_width = map['MaxWidth']
        data.max_height = map['MaxHeight']
        data.sizing_policy = map['SizingPolicy']
        data.padding_policy = map['PaddingPolicy']
        return data
      end
    end

    class VideoParameters
      def self.parse(map)
        data = Types::VideoParameters.new
        data.codec = map['Codec']
        data.codec_options = (CodecOptions.parse(map['CodecOptions']) unless map['CodecOptions'].nil?)
        data.keyframes_max_dist = map['KeyframesMaxDist']
        data.fixed_gop = map['FixedGOP']
        data.bit_rate = map['BitRate']
        data.frame_rate = map['FrameRate']
        data.max_frame_rate = map['MaxFrameRate']
        data.resolution = map['Resolution']
        data.aspect_ratio = map['AspectRatio']
        data.max_width = map['MaxWidth']
        data.max_height = map['MaxHeight']
        data.display_aspect_ratio = map['DisplayAspectRatio']
        data.sizing_policy = map['SizingPolicy']
        data.padding_policy = map['PaddingPolicy']
        data.watermarks = (PresetWatermarks.parse(map['Watermarks']) unless map['Watermarks'].nil?)
        return data
      end
    end

    class PresetWatermarks
      def self.parse(list)
        data = []
        list.map do |value|
          data << PresetWatermark.parse(value) unless value.nil?
        end
        data
      end
    end

    class PresetWatermark
      def self.parse(map)
        data = Types::PresetWatermark.new
        data.id = map['Id']
        data.max_width = map['MaxWidth']
        data.max_height = map['MaxHeight']
        data.sizing_policy = map['SizingPolicy']
        data.horizontal_align = map['HorizontalAlign']
        data.horizontal_offset = map['HorizontalOffset']
        data.vertical_align = map['VerticalAlign']
        data.vertical_offset = map['VerticalOffset']
        data.opacity = map['Opacity']
        data.target = map['Target']
        return data
      end
    end

    class CodecOptions
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class AudioParameters
      def self.parse(map)
        data = Types::AudioParameters.new
        data.codec = map['Codec']
        data.sample_rate = map['SampleRate']
        data.bit_rate = map['BitRate']
        data.channels = map['Channels']
        data.audio_packing_mode = map['AudioPackingMode']
        data.codec_options = (AudioCodecOptions.parse(map['CodecOptions']) unless map['CodecOptions'].nil?)
        return data
      end
    end

    class AudioCodecOptions
      def self.parse(map)
        data = Types::AudioCodecOptions.new
        data.profile = map['Profile']
        data.bit_depth = map['BitDepth']
        data.bit_order = map['BitOrder']
        data.signed = map['Signed']
        return data
      end
    end

    # Operation Parser for DeletePipeline
    class DeletePipeline
      def self.parse(http_resp)
        data = Types::DeletePipelineOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeletePreset
    class DeletePreset
      def self.parse(http_resp)
        data = Types::DeletePresetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for ListJobsByPipeline
    class ListJobsByPipeline
      def self.parse(http_resp)
        data = Types::ListJobsByPipelineOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.jobs = (Jobs.parse(map['Jobs']) unless map['Jobs'].nil?)
        data.next_page_token = map['NextPageToken']
        data
      end
    end

    class Jobs
      def self.parse(list)
        data = []
        list.map do |value|
          data << Job.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListJobsByStatus
    class ListJobsByStatus
      def self.parse(http_resp)
        data = Types::ListJobsByStatusOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.jobs = (Jobs.parse(map['Jobs']) unless map['Jobs'].nil?)
        data.next_page_token = map['NextPageToken']
        data
      end
    end

    # Operation Parser for ListPipelines
    class ListPipelines
      def self.parse(http_resp)
        data = Types::ListPipelinesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.pipelines = (Pipelines.parse(map['Pipelines']) unless map['Pipelines'].nil?)
        data.next_page_token = map['NextPageToken']
        data
      end
    end

    class Pipelines
      def self.parse(list)
        data = []
        list.map do |value|
          data << Pipeline.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListPresets
    class ListPresets
      def self.parse(http_resp)
        data = Types::ListPresetsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.presets = (Presets.parse(map['Presets']) unless map['Presets'].nil?)
        data.next_page_token = map['NextPageToken']
        data
      end
    end

    class Presets
      def self.parse(list)
        data = []
        list.map do |value|
          data << Preset.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ReadJob
    class ReadJob
      def self.parse(http_resp)
        data = Types::ReadJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.job = (Job.parse(map['Job']) unless map['Job'].nil?)
        data
      end
    end

    # Operation Parser for ReadPipeline
    class ReadPipeline
      def self.parse(http_resp)
        data = Types::ReadPipelineOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.pipeline = (Pipeline.parse(map['Pipeline']) unless map['Pipeline'].nil?)
        data.warnings = (Warnings.parse(map['Warnings']) unless map['Warnings'].nil?)
        data
      end
    end

    # Operation Parser for ReadPreset
    class ReadPreset
      def self.parse(http_resp)
        data = Types::ReadPresetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.preset = (Preset.parse(map['Preset']) unless map['Preset'].nil?)
        data
      end
    end

    # Operation Parser for TestRole
    class TestRole
      def self.parse(http_resp)
        data = Types::TestRoleOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.success = map['Success']
        data.messages = (ExceptionMessages.parse(map['Messages']) unless map['Messages'].nil?)
        data
      end
    end

    class ExceptionMessages
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for UpdatePipeline
    class UpdatePipeline
      def self.parse(http_resp)
        data = Types::UpdatePipelineOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.pipeline = (Pipeline.parse(map['Pipeline']) unless map['Pipeline'].nil?)
        data.warnings = (Warnings.parse(map['Warnings']) unless map['Warnings'].nil?)
        data
      end
    end

    # Operation Parser for UpdatePipelineNotifications
    class UpdatePipelineNotifications
      def self.parse(http_resp)
        data = Types::UpdatePipelineNotificationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.pipeline = (Pipeline.parse(map['Pipeline']) unless map['Pipeline'].nil?)
        data
      end
    end

    # Operation Parser for UpdatePipelineStatus
    class UpdatePipelineStatus
      def self.parse(http_resp)
        data = Types::UpdatePipelineStatusOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.pipeline = (Pipeline.parse(map['Pipeline']) unless map['Pipeline'].nil?)
        data
      end
    end
  end
end
