# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::ElasticTranscoder
  module Builders

    # Operation Builder for CancelJob
    class CancelJob
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2012-09-25/jobs/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for CreateJob
    class CreateJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/2012-09-25/jobs')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['PipelineId'] = input[:pipeline_id] unless input[:pipeline_id].nil?
        data['Input'] = Builders::JobInput.build(input[:input]) unless input[:input].nil?
        data['Inputs'] = Builders::JobInputs.build(input[:inputs]) unless input[:inputs].nil?
        data['Output'] = Builders::CreateJobOutput.build(input[:output]) unless input[:output].nil?
        data['Outputs'] = Builders::CreateJobOutputs.build(input[:outputs]) unless input[:outputs].nil?
        data['OutputKeyPrefix'] = input[:output_key_prefix] unless input[:output_key_prefix].nil?
        data['Playlists'] = Builders::CreateJobPlaylists.build(input[:playlists]) unless input[:playlists].nil?
        data['UserMetadata'] = Builders::UserMetadata.build(input[:user_metadata]) unless input[:user_metadata].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for UserMetadata
    class UserMetadata
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Builder for CreateJobPlaylists
    class CreateJobPlaylists
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::CreateJobPlaylist.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CreateJobPlaylist
    class CreateJobPlaylist
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Format'] = input[:format] unless input[:format].nil?
        data['OutputKeys'] = Builders::OutputKeys.build(input[:output_keys]) unless input[:output_keys].nil?
        data['HlsContentProtection'] = Builders::HlsContentProtection.build(input[:hls_content_protection]) unless input[:hls_content_protection].nil?
        data['PlayReadyDrm'] = Builders::PlayReadyDrm.build(input[:play_ready_drm]) unless input[:play_ready_drm].nil?
        data
      end
    end

    # Structure Builder for PlayReadyDrm
    class PlayReadyDrm
      def self.build(input)
        data = {}
        data['Format'] = input[:format] unless input[:format].nil?
        data['Key'] = input[:key] unless input[:key].nil?
        data['KeyMd5'] = input[:key_md5] unless input[:key_md5].nil?
        data['KeyId'] = input[:key_id] unless input[:key_id].nil?
        data['InitializationVector'] = input[:initialization_vector] unless input[:initialization_vector].nil?
        data['LicenseAcquisitionUrl'] = input[:license_acquisition_url] unless input[:license_acquisition_url].nil?
        data
      end
    end

    # Structure Builder for HlsContentProtection
    class HlsContentProtection
      def self.build(input)
        data = {}
        data['Method'] = input[:member_method] unless input[:member_method].nil?
        data['Key'] = input[:key] unless input[:key].nil?
        data['KeyMd5'] = input[:key_md5] unless input[:key_md5].nil?
        data['InitializationVector'] = input[:initialization_vector] unless input[:initialization_vector].nil?
        data['LicenseAcquisitionUrl'] = input[:license_acquisition_url] unless input[:license_acquisition_url].nil?
        data['KeyStoragePolicy'] = input[:key_storage_policy] unless input[:key_storage_policy].nil?
        data
      end
    end

    # List Builder for OutputKeys
    class OutputKeys
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for CreateJobOutputs
    class CreateJobOutputs
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::CreateJobOutput.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CreateJobOutput
    class CreateJobOutput
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['ThumbnailPattern'] = input[:thumbnail_pattern] unless input[:thumbnail_pattern].nil?
        data['ThumbnailEncryption'] = Builders::Encryption.build(input[:thumbnail_encryption]) unless input[:thumbnail_encryption].nil?
        data['Rotate'] = input[:rotate] unless input[:rotate].nil?
        data['PresetId'] = input[:preset_id] unless input[:preset_id].nil?
        data['SegmentDuration'] = input[:segment_duration] unless input[:segment_duration].nil?
        data['Watermarks'] = Builders::JobWatermarks.build(input[:watermarks]) unless input[:watermarks].nil?
        data['AlbumArt'] = Builders::JobAlbumArt.build(input[:album_art]) unless input[:album_art].nil?
        data['Composition'] = Builders::Composition.build(input[:composition]) unless input[:composition].nil?
        data['Captions'] = Builders::Captions.build(input[:captions]) unless input[:captions].nil?
        data['Encryption'] = Builders::Encryption.build(input[:encryption]) unless input[:encryption].nil?
        data
      end
    end

    # Structure Builder for Encryption
    class Encryption
      def self.build(input)
        data = {}
        data['Mode'] = input[:mode] unless input[:mode].nil?
        data['Key'] = input[:key] unless input[:key].nil?
        data['KeyMd5'] = input[:key_md5] unless input[:key_md5].nil?
        data['InitializationVector'] = input[:initialization_vector] unless input[:initialization_vector].nil?
        data
      end
    end

    # Structure Builder for Captions
    class Captions
      def self.build(input)
        data = {}
        data['MergePolicy'] = input[:merge_policy] unless input[:merge_policy].nil?
        data['CaptionSources'] = Builders::CaptionSources.build(input[:caption_sources]) unless input[:caption_sources].nil?
        data['CaptionFormats'] = Builders::CaptionFormats.build(input[:caption_formats]) unless input[:caption_formats].nil?
        data
      end
    end

    # List Builder for CaptionFormats
    class CaptionFormats
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::CaptionFormat.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CaptionFormat
    class CaptionFormat
      def self.build(input)
        data = {}
        data['Format'] = input[:format] unless input[:format].nil?
        data['Pattern'] = input[:pattern] unless input[:pattern].nil?
        data['Encryption'] = Builders::Encryption.build(input[:encryption]) unless input[:encryption].nil?
        data
      end
    end

    # List Builder for CaptionSources
    class CaptionSources
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::CaptionSource.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CaptionSource
    class CaptionSource
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Language'] = input[:language] unless input[:language].nil?
        data['TimeOffset'] = input[:time_offset] unless input[:time_offset].nil?
        data['Label'] = input[:label] unless input[:label].nil?
        data['Encryption'] = Builders::Encryption.build(input[:encryption]) unless input[:encryption].nil?
        data
      end
    end

    # List Builder for Composition
    class Composition
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Clip.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Clip
    class Clip
      def self.build(input)
        data = {}
        data['TimeSpan'] = Builders::TimeSpan.build(input[:time_span]) unless input[:time_span].nil?
        data
      end
    end

    # Structure Builder for TimeSpan
    class TimeSpan
      def self.build(input)
        data = {}
        data['StartTime'] = input[:start_time] unless input[:start_time].nil?
        data['Duration'] = input[:duration] unless input[:duration].nil?
        data
      end
    end

    # Structure Builder for JobAlbumArt
    class JobAlbumArt
      def self.build(input)
        data = {}
        data['MergePolicy'] = input[:merge_policy] unless input[:merge_policy].nil?
        data['Artwork'] = Builders::Artworks.build(input[:artwork]) unless input[:artwork].nil?
        data
      end
    end

    # List Builder for Artworks
    class Artworks
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Artwork.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Artwork
    class Artwork
      def self.build(input)
        data = {}
        data['InputKey'] = input[:input_key] unless input[:input_key].nil?
        data['MaxWidth'] = input[:max_width] unless input[:max_width].nil?
        data['MaxHeight'] = input[:max_height] unless input[:max_height].nil?
        data['SizingPolicy'] = input[:sizing_policy] unless input[:sizing_policy].nil?
        data['PaddingPolicy'] = input[:padding_policy] unless input[:padding_policy].nil?
        data['AlbumArtFormat'] = input[:album_art_format] unless input[:album_art_format].nil?
        data['Encryption'] = Builders::Encryption.build(input[:encryption]) unless input[:encryption].nil?
        data
      end
    end

    # List Builder for JobWatermarks
    class JobWatermarks
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::JobWatermark.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for JobWatermark
    class JobWatermark
      def self.build(input)
        data = {}
        data['PresetWatermarkId'] = input[:preset_watermark_id] unless input[:preset_watermark_id].nil?
        data['InputKey'] = input[:input_key] unless input[:input_key].nil?
        data['Encryption'] = Builders::Encryption.build(input[:encryption]) unless input[:encryption].nil?
        data
      end
    end

    # List Builder for JobInputs
    class JobInputs
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::JobInput.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for JobInput
    class JobInput
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['FrameRate'] = input[:frame_rate] unless input[:frame_rate].nil?
        data['Resolution'] = input[:resolution] unless input[:resolution].nil?
        data['AspectRatio'] = input[:aspect_ratio] unless input[:aspect_ratio].nil?
        data['Interlaced'] = input[:interlaced] unless input[:interlaced].nil?
        data['Container'] = input[:container] unless input[:container].nil?
        data['Encryption'] = Builders::Encryption.build(input[:encryption]) unless input[:encryption].nil?
        data['TimeSpan'] = Builders::TimeSpan.build(input[:time_span]) unless input[:time_span].nil?
        data['InputCaptions'] = Builders::InputCaptions.build(input[:input_captions]) unless input[:input_captions].nil?
        data['DetectedProperties'] = Builders::DetectedProperties.build(input[:detected_properties]) unless input[:detected_properties].nil?
        data
      end
    end

    # Structure Builder for DetectedProperties
    class DetectedProperties
      def self.build(input)
        data = {}
        data['Width'] = input[:width] unless input[:width].nil?
        data['Height'] = input[:height] unless input[:height].nil?
        data['FrameRate'] = input[:frame_rate] unless input[:frame_rate].nil?
        data['FileSize'] = input[:file_size] unless input[:file_size].nil?
        data['DurationMillis'] = input[:duration_millis] unless input[:duration_millis].nil?
        data
      end
    end

    # Structure Builder for InputCaptions
    class InputCaptions
      def self.build(input)
        data = {}
        data['MergePolicy'] = input[:merge_policy] unless input[:merge_policy].nil?
        data['CaptionSources'] = Builders::CaptionSources.build(input[:caption_sources]) unless input[:caption_sources].nil?
        data
      end
    end

    # Operation Builder for CreatePipeline
    class CreatePipeline
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/2012-09-25/pipelines')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['InputBucket'] = input[:input_bucket] unless input[:input_bucket].nil?
        data['OutputBucket'] = input[:output_bucket] unless input[:output_bucket].nil?
        data['Role'] = input[:role] unless input[:role].nil?
        data['AwsKmsKeyArn'] = input[:aws_kms_key_arn] unless input[:aws_kms_key_arn].nil?
        data['Notifications'] = Builders::Notifications.build(input[:notifications]) unless input[:notifications].nil?
        data['ContentConfig'] = Builders::PipelineOutputConfig.build(input[:content_config]) unless input[:content_config].nil?
        data['ThumbnailConfig'] = Builders::PipelineOutputConfig.build(input[:thumbnail_config]) unless input[:thumbnail_config].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for PipelineOutputConfig
    class PipelineOutputConfig
      def self.build(input)
        data = {}
        data['Bucket'] = input[:bucket] unless input[:bucket].nil?
        data['StorageClass'] = input[:storage_class] unless input[:storage_class].nil?
        data['Permissions'] = Builders::Permissions.build(input[:permissions]) unless input[:permissions].nil?
        data
      end
    end

    # List Builder for Permissions
    class Permissions
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Permission.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Permission
    class Permission
      def self.build(input)
        data = {}
        data['GranteeType'] = input[:grantee_type] unless input[:grantee_type].nil?
        data['Grantee'] = input[:grantee] unless input[:grantee].nil?
        data['Access'] = Builders::AccessControls.build(input[:access]) unless input[:access].nil?
        data
      end
    end

    # List Builder for AccessControls
    class AccessControls
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Notifications
    class Notifications
      def self.build(input)
        data = {}
        data['Progressing'] = input[:progressing] unless input[:progressing].nil?
        data['Completed'] = input[:completed] unless input[:completed].nil?
        data['Warning'] = input[:warning] unless input[:warning].nil?
        data['Error'] = input[:error] unless input[:error].nil?
        data
      end
    end

    # Operation Builder for CreatePreset
    class CreatePreset
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/2012-09-25/presets')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Container'] = input[:container] unless input[:container].nil?
        data['Video'] = Builders::VideoParameters.build(input[:video]) unless input[:video].nil?
        data['Audio'] = Builders::AudioParameters.build(input[:audio]) unless input[:audio].nil?
        data['Thumbnails'] = Builders::Thumbnails.build(input[:thumbnails]) unless input[:thumbnails].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for Thumbnails
    class Thumbnails
      def self.build(input)
        data = {}
        data['Format'] = input[:format] unless input[:format].nil?
        data['Interval'] = input[:interval] unless input[:interval].nil?
        data['Resolution'] = input[:resolution] unless input[:resolution].nil?
        data['AspectRatio'] = input[:aspect_ratio] unless input[:aspect_ratio].nil?
        data['MaxWidth'] = input[:max_width] unless input[:max_width].nil?
        data['MaxHeight'] = input[:max_height] unless input[:max_height].nil?
        data['SizingPolicy'] = input[:sizing_policy] unless input[:sizing_policy].nil?
        data['PaddingPolicy'] = input[:padding_policy] unless input[:padding_policy].nil?
        data
      end
    end

    # Structure Builder for AudioParameters
    class AudioParameters
      def self.build(input)
        data = {}
        data['Codec'] = input[:codec] unless input[:codec].nil?
        data['SampleRate'] = input[:sample_rate] unless input[:sample_rate].nil?
        data['BitRate'] = input[:bit_rate] unless input[:bit_rate].nil?
        data['Channels'] = input[:channels] unless input[:channels].nil?
        data['AudioPackingMode'] = input[:audio_packing_mode] unless input[:audio_packing_mode].nil?
        data['CodecOptions'] = Builders::AudioCodecOptions.build(input[:codec_options]) unless input[:codec_options].nil?
        data
      end
    end

    # Structure Builder for AudioCodecOptions
    class AudioCodecOptions
      def self.build(input)
        data = {}
        data['Profile'] = input[:profile] unless input[:profile].nil?
        data['BitDepth'] = input[:bit_depth] unless input[:bit_depth].nil?
        data['BitOrder'] = input[:bit_order] unless input[:bit_order].nil?
        data['Signed'] = input[:signed] unless input[:signed].nil?
        data
      end
    end

    # Structure Builder for VideoParameters
    class VideoParameters
      def self.build(input)
        data = {}
        data['Codec'] = input[:codec] unless input[:codec].nil?
        data['CodecOptions'] = Builders::CodecOptions.build(input[:codec_options]) unless input[:codec_options].nil?
        data['KeyframesMaxDist'] = input[:keyframes_max_dist] unless input[:keyframes_max_dist].nil?
        data['FixedGOP'] = input[:fixed_gop] unless input[:fixed_gop].nil?
        data['BitRate'] = input[:bit_rate] unless input[:bit_rate].nil?
        data['FrameRate'] = input[:frame_rate] unless input[:frame_rate].nil?
        data['MaxFrameRate'] = input[:max_frame_rate] unless input[:max_frame_rate].nil?
        data['Resolution'] = input[:resolution] unless input[:resolution].nil?
        data['AspectRatio'] = input[:aspect_ratio] unless input[:aspect_ratio].nil?
        data['MaxWidth'] = input[:max_width] unless input[:max_width].nil?
        data['MaxHeight'] = input[:max_height] unless input[:max_height].nil?
        data['DisplayAspectRatio'] = input[:display_aspect_ratio] unless input[:display_aspect_ratio].nil?
        data['SizingPolicy'] = input[:sizing_policy] unless input[:sizing_policy].nil?
        data['PaddingPolicy'] = input[:padding_policy] unless input[:padding_policy].nil?
        data['Watermarks'] = Builders::PresetWatermarks.build(input[:watermarks]) unless input[:watermarks].nil?
        data
      end
    end

    # List Builder for PresetWatermarks
    class PresetWatermarks
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::PresetWatermark.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for PresetWatermark
    class PresetWatermark
      def self.build(input)
        data = {}
        data['Id'] = input[:id] unless input[:id].nil?
        data['MaxWidth'] = input[:max_width] unless input[:max_width].nil?
        data['MaxHeight'] = input[:max_height] unless input[:max_height].nil?
        data['SizingPolicy'] = input[:sizing_policy] unless input[:sizing_policy].nil?
        data['HorizontalAlign'] = input[:horizontal_align] unless input[:horizontal_align].nil?
        data['HorizontalOffset'] = input[:horizontal_offset] unless input[:horizontal_offset].nil?
        data['VerticalAlign'] = input[:vertical_align] unless input[:vertical_align].nil?
        data['VerticalOffset'] = input[:vertical_offset] unless input[:vertical_offset].nil?
        data['Opacity'] = input[:opacity] unless input[:opacity].nil?
        data['Target'] = input[:target] unless input[:target].nil?
        data
      end
    end

    # Map Builder for CodecOptions
    class CodecOptions
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for DeletePipeline
    class DeletePipeline
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2012-09-25/pipelines/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeletePreset
    class DeletePreset
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2012-09-25/presets/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListJobsByPipeline
    class ListJobsByPipeline
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:pipeline_id].to_s.empty?
          raise ArgumentError, "HTTP label :pipeline_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2012-09-25/jobsByPipeline/%<PipelineId>s',
            PipelineId: Hearth::HTTP.uri_escape(input[:pipeline_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['Ascending'] = input[:ascending].to_s unless input[:ascending].nil?
        params['PageToken'] = input[:page_token].to_s unless input[:page_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListJobsByStatus
    class ListJobsByStatus
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:status].to_s.empty?
          raise ArgumentError, "HTTP label :status cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2012-09-25/jobsByStatus/%<Status>s',
            Status: Hearth::HTTP.uri_escape(input[:status].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['Ascending'] = input[:ascending].to_s unless input[:ascending].nil?
        params['PageToken'] = input[:page_token].to_s unless input[:page_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListPipelines
    class ListPipelines
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/2012-09-25/pipelines')
        params = Hearth::Query::ParamList.new
        params['Ascending'] = input[:ascending].to_s unless input[:ascending].nil?
        params['PageToken'] = input[:page_token].to_s unless input[:page_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListPresets
    class ListPresets
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/2012-09-25/presets')
        params = Hearth::Query::ParamList.new
        params['Ascending'] = input[:ascending].to_s unless input[:ascending].nil?
        params['PageToken'] = input[:page_token].to_s unless input[:page_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ReadJob
    class ReadJob
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2012-09-25/jobs/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ReadPipeline
    class ReadPipeline
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2012-09-25/pipelines/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ReadPreset
    class ReadPreset
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2012-09-25/presets/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for TestRole
    class TestRole
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/2012-09-25/roleTests')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Role'] = input[:role] unless input[:role].nil?
        data['InputBucket'] = input[:input_bucket] unless input[:input_bucket].nil?
        data['OutputBucket'] = input[:output_bucket] unless input[:output_bucket].nil?
        data['Topics'] = Builders::SnsTopics.build(input[:topics]) unless input[:topics].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for SnsTopics
    class SnsTopics
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdatePipeline
    class UpdatePipeline
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2012-09-25/pipelines/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['InputBucket'] = input[:input_bucket] unless input[:input_bucket].nil?
        data['Role'] = input[:role] unless input[:role].nil?
        data['AwsKmsKeyArn'] = input[:aws_kms_key_arn] unless input[:aws_kms_key_arn].nil?
        data['Notifications'] = Builders::Notifications.build(input[:notifications]) unless input[:notifications].nil?
        data['ContentConfig'] = Builders::PipelineOutputConfig.build(input[:content_config]) unless input[:content_config].nil?
        data['ThumbnailConfig'] = Builders::PipelineOutputConfig.build(input[:thumbnail_config]) unless input[:thumbnail_config].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdatePipelineNotifications
    class UpdatePipelineNotifications
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2012-09-25/pipelines/%<Id>s/notifications',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Notifications'] = Builders::Notifications.build(input[:notifications]) unless input[:notifications].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdatePipelineStatus
    class UpdatePipelineStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2012-09-25/pipelines/%<Id>s/status',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Status'] = input[:status] unless input[:status].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
