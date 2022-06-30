# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::ElasticTranscoder
  module Params

    module AccessControls
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module Artwork
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Artwork, context: context)
        type = Types::Artwork.new
        type.input_key = params[:input_key]
        type.max_width = params[:max_width]
        type.max_height = params[:max_height]
        type.sizing_policy = params[:sizing_policy]
        type.padding_policy = params[:padding_policy]
        type.album_art_format = params[:album_art_format]
        type.encryption = Encryption.build(params[:encryption], context: "#{context}[:encryption]") unless params[:encryption].nil?
        type
      end
    end

    module Artworks
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Artwork.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AudioCodecOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AudioCodecOptions, context: context)
        type = Types::AudioCodecOptions.new
        type.profile = params[:profile]
        type.bit_depth = params[:bit_depth]
        type.bit_order = params[:bit_order]
        type.signed = params[:signed]
        type
      end
    end

    module AudioParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AudioParameters, context: context)
        type = Types::AudioParameters.new
        type.codec = params[:codec]
        type.sample_rate = params[:sample_rate]
        type.bit_rate = params[:bit_rate]
        type.channels = params[:channels]
        type.audio_packing_mode = params[:audio_packing_mode]
        type.codec_options = AudioCodecOptions.build(params[:codec_options], context: "#{context}[:codec_options]") unless params[:codec_options].nil?
        type
      end
    end

    module CancelJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelJobInput, context: context)
        type = Types::CancelJobInput.new
        type.id = params[:id]
        type
      end
    end

    module CancelJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelJobOutput, context: context)
        type = Types::CancelJobOutput.new
        type
      end
    end

    module CaptionFormat
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CaptionFormat, context: context)
        type = Types::CaptionFormat.new
        type.format = params[:format]
        type.pattern = params[:pattern]
        type.encryption = Encryption.build(params[:encryption], context: "#{context}[:encryption]") unless params[:encryption].nil?
        type
      end
    end

    module CaptionFormats
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CaptionFormat.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CaptionSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CaptionSource, context: context)
        type = Types::CaptionSource.new
        type.key = params[:key]
        type.language = params[:language]
        type.time_offset = params[:time_offset]
        type.label = params[:label]
        type.encryption = Encryption.build(params[:encryption], context: "#{context}[:encryption]") unless params[:encryption].nil?
        type
      end
    end

    module CaptionSources
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CaptionSource.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Captions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Captions, context: context)
        type = Types::Captions.new
        type.merge_policy = params[:merge_policy]
        type.caption_sources = CaptionSources.build(params[:caption_sources], context: "#{context}[:caption_sources]") unless params[:caption_sources].nil?
        type.caption_formats = CaptionFormats.build(params[:caption_formats], context: "#{context}[:caption_formats]") unless params[:caption_formats].nil?
        type
      end
    end

    module Clip
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Clip, context: context)
        type = Types::Clip.new
        type.time_span = TimeSpan.build(params[:time_span], context: "#{context}[:time_span]") unless params[:time_span].nil?
        type
      end
    end

    module CodecOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module Composition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Clip.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CreateJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateJobInput, context: context)
        type = Types::CreateJobInput.new
        type.pipeline_id = params[:pipeline_id]
        type.input = JobInput.build(params[:input], context: "#{context}[:input]") unless params[:input].nil?
        type.inputs = JobInputs.build(params[:inputs], context: "#{context}[:inputs]") unless params[:inputs].nil?
        type.output = CreateJobOutput.build(params[:output], context: "#{context}[:output]") unless params[:output].nil?
        type.outputs = CreateJobOutputs.build(params[:outputs], context: "#{context}[:outputs]") unless params[:outputs].nil?
        type.output_key_prefix = params[:output_key_prefix]
        type.playlists = CreateJobPlaylists.build(params[:playlists], context: "#{context}[:playlists]") unless params[:playlists].nil?
        type.user_metadata = UserMetadata.build(params[:user_metadata], context: "#{context}[:user_metadata]") unless params[:user_metadata].nil?
        type
      end
    end

    module CreateJobOperationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateJobOperationOutput, context: context)
        type = Types::CreateJobOperationOutput.new
        type.job = Job.build(params[:job], context: "#{context}[:job]") unless params[:job].nil?
        type
      end
    end

    module CreateJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateJobOutput, context: context)
        type = Types::CreateJobOutput.new
        type.key = params[:key]
        type.thumbnail_pattern = params[:thumbnail_pattern]
        type.thumbnail_encryption = Encryption.build(params[:thumbnail_encryption], context: "#{context}[:thumbnail_encryption]") unless params[:thumbnail_encryption].nil?
        type.rotate = params[:rotate]
        type.preset_id = params[:preset_id]
        type.segment_duration = params[:segment_duration]
        type.watermarks = JobWatermarks.build(params[:watermarks], context: "#{context}[:watermarks]") unless params[:watermarks].nil?
        type.album_art = JobAlbumArt.build(params[:album_art], context: "#{context}[:album_art]") unless params[:album_art].nil?
        type.composition = Composition.build(params[:composition], context: "#{context}[:composition]") unless params[:composition].nil?
        type.captions = Captions.build(params[:captions], context: "#{context}[:captions]") unless params[:captions].nil?
        type.encryption = Encryption.build(params[:encryption], context: "#{context}[:encryption]") unless params[:encryption].nil?
        type
      end
    end

    module CreateJobOutputs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CreateJobOutput.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CreateJobPlaylist
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateJobPlaylist, context: context)
        type = Types::CreateJobPlaylist.new
        type.name = params[:name]
        type.format = params[:format]
        type.output_keys = OutputKeys.build(params[:output_keys], context: "#{context}[:output_keys]") unless params[:output_keys].nil?
        type.hls_content_protection = HlsContentProtection.build(params[:hls_content_protection], context: "#{context}[:hls_content_protection]") unless params[:hls_content_protection].nil?
        type.play_ready_drm = PlayReadyDrm.build(params[:play_ready_drm], context: "#{context}[:play_ready_drm]") unless params[:play_ready_drm].nil?
        type
      end
    end

    module CreateJobPlaylists
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CreateJobPlaylist.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CreatePipelineInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePipelineInput, context: context)
        type = Types::CreatePipelineInput.new
        type.name = params[:name]
        type.input_bucket = params[:input_bucket]
        type.output_bucket = params[:output_bucket]
        type.role = params[:role]
        type.aws_kms_key_arn = params[:aws_kms_key_arn]
        type.notifications = Notifications.build(params[:notifications], context: "#{context}[:notifications]") unless params[:notifications].nil?
        type.content_config = PipelineOutputConfig.build(params[:content_config], context: "#{context}[:content_config]") unless params[:content_config].nil?
        type.thumbnail_config = PipelineOutputConfig.build(params[:thumbnail_config], context: "#{context}[:thumbnail_config]") unless params[:thumbnail_config].nil?
        type
      end
    end

    module CreatePipelineOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePipelineOutput, context: context)
        type = Types::CreatePipelineOutput.new
        type.pipeline = Pipeline.build(params[:pipeline], context: "#{context}[:pipeline]") unless params[:pipeline].nil?
        type.warnings = Warnings.build(params[:warnings], context: "#{context}[:warnings]") unless params[:warnings].nil?
        type
      end
    end

    module CreatePresetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePresetInput, context: context)
        type = Types::CreatePresetInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.container = params[:container]
        type.video = VideoParameters.build(params[:video], context: "#{context}[:video]") unless params[:video].nil?
        type.audio = AudioParameters.build(params[:audio], context: "#{context}[:audio]") unless params[:audio].nil?
        type.thumbnails = Thumbnails.build(params[:thumbnails], context: "#{context}[:thumbnails]") unless params[:thumbnails].nil?
        type
      end
    end

    module CreatePresetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePresetOutput, context: context)
        type = Types::CreatePresetOutput.new
        type.preset = Preset.build(params[:preset], context: "#{context}[:preset]") unless params[:preset].nil?
        type.warning = params[:warning]
        type
      end
    end

    module DeletePipelineInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePipelineInput, context: context)
        type = Types::DeletePipelineInput.new
        type.id = params[:id]
        type
      end
    end

    module DeletePipelineOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePipelineOutput, context: context)
        type = Types::DeletePipelineOutput.new
        type
      end
    end

    module DeletePresetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePresetInput, context: context)
        type = Types::DeletePresetInput.new
        type.id = params[:id]
        type
      end
    end

    module DeletePresetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePresetOutput, context: context)
        type = Types::DeletePresetOutput.new
        type
      end
    end

    module DetectedProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetectedProperties, context: context)
        type = Types::DetectedProperties.new
        type.width = params[:width]
        type.height = params[:height]
        type.frame_rate = params[:frame_rate]
        type.file_size = params[:file_size]
        type.duration_millis = params[:duration_millis]
        type
      end
    end

    module Encryption
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Encryption, context: context)
        type = Types::Encryption.new
        type.mode = params[:mode]
        type.key = params[:key]
        type.key_md5 = params[:key_md5]
        type.initialization_vector = params[:initialization_vector]
        type
      end
    end

    module ExceptionMessages
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module HlsContentProtection
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HlsContentProtection, context: context)
        type = Types::HlsContentProtection.new
        type.member_method = params[:member_method]
        type.key = params[:key]
        type.key_md5 = params[:key_md5]
        type.initialization_vector = params[:initialization_vector]
        type.license_acquisition_url = params[:license_acquisition_url]
        type.key_storage_policy = params[:key_storage_policy]
        type
      end
    end

    module IncompatibleVersionException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IncompatibleVersionException, context: context)
        type = Types::IncompatibleVersionException.new
        type.message = params[:message]
        type
      end
    end

    module InputCaptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InputCaptions, context: context)
        type = Types::InputCaptions.new
        type.merge_policy = params[:merge_policy]
        type.caption_sources = CaptionSources.build(params[:caption_sources], context: "#{context}[:caption_sources]") unless params[:caption_sources].nil?
        type
      end
    end

    module InternalServiceException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServiceException, context: context)
        type = Types::InternalServiceException.new
        type.message = params[:message]
        type
      end
    end

    module Job
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Job, context: context)
        type = Types::Job.new
        type.id = params[:id]
        type.arn = params[:arn]
        type.pipeline_id = params[:pipeline_id]
        type.input = JobInput.build(params[:input], context: "#{context}[:input]") unless params[:input].nil?
        type.inputs = JobInputs.build(params[:inputs], context: "#{context}[:inputs]") unless params[:inputs].nil?
        type.output = JobOutput.build(params[:output], context: "#{context}[:output]") unless params[:output].nil?
        type.outputs = JobOutputs.build(params[:outputs], context: "#{context}[:outputs]") unless params[:outputs].nil?
        type.output_key_prefix = params[:output_key_prefix]
        type.playlists = Playlists.build(params[:playlists], context: "#{context}[:playlists]") unless params[:playlists].nil?
        type.status = params[:status]
        type.user_metadata = UserMetadata.build(params[:user_metadata], context: "#{context}[:user_metadata]") unless params[:user_metadata].nil?
        type.timing = Timing.build(params[:timing], context: "#{context}[:timing]") unless params[:timing].nil?
        type
      end
    end

    module JobAlbumArt
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobAlbumArt, context: context)
        type = Types::JobAlbumArt.new
        type.merge_policy = params[:merge_policy]
        type.artwork = Artworks.build(params[:artwork], context: "#{context}[:artwork]") unless params[:artwork].nil?
        type
      end
    end

    module JobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobInput, context: context)
        type = Types::JobInput.new
        type.key = params[:key]
        type.frame_rate = params[:frame_rate]
        type.resolution = params[:resolution]
        type.aspect_ratio = params[:aspect_ratio]
        type.interlaced = params[:interlaced]
        type.container = params[:container]
        type.encryption = Encryption.build(params[:encryption], context: "#{context}[:encryption]") unless params[:encryption].nil?
        type.time_span = TimeSpan.build(params[:time_span], context: "#{context}[:time_span]") unless params[:time_span].nil?
        type.input_captions = InputCaptions.build(params[:input_captions], context: "#{context}[:input_captions]") unless params[:input_captions].nil?
        type.detected_properties = DetectedProperties.build(params[:detected_properties], context: "#{context}[:detected_properties]") unless params[:detected_properties].nil?
        type
      end
    end

    module JobInputs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << JobInput.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module JobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobOutput, context: context)
        type = Types::JobOutput.new
        type.id = params[:id]
        type.key = params[:key]
        type.thumbnail_pattern = params[:thumbnail_pattern]
        type.thumbnail_encryption = Encryption.build(params[:thumbnail_encryption], context: "#{context}[:thumbnail_encryption]") unless params[:thumbnail_encryption].nil?
        type.rotate = params[:rotate]
        type.preset_id = params[:preset_id]
        type.segment_duration = params[:segment_duration]
        type.status = params[:status]
        type.status_detail = params[:status_detail]
        type.duration = params[:duration]
        type.width = params[:width]
        type.height = params[:height]
        type.frame_rate = params[:frame_rate]
        type.file_size = params[:file_size]
        type.duration_millis = params[:duration_millis]
        type.watermarks = JobWatermarks.build(params[:watermarks], context: "#{context}[:watermarks]") unless params[:watermarks].nil?
        type.album_art = JobAlbumArt.build(params[:album_art], context: "#{context}[:album_art]") unless params[:album_art].nil?
        type.composition = Composition.build(params[:composition], context: "#{context}[:composition]") unless params[:composition].nil?
        type.captions = Captions.build(params[:captions], context: "#{context}[:captions]") unless params[:captions].nil?
        type.encryption = Encryption.build(params[:encryption], context: "#{context}[:encryption]") unless params[:encryption].nil?
        type.applied_color_space_conversion = params[:applied_color_space_conversion]
        type
      end
    end

    module JobOutputs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << JobOutput.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module JobWatermark
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobWatermark, context: context)
        type = Types::JobWatermark.new
        type.preset_watermark_id = params[:preset_watermark_id]
        type.input_key = params[:input_key]
        type.encryption = Encryption.build(params[:encryption], context: "#{context}[:encryption]") unless params[:encryption].nil?
        type
      end
    end

    module JobWatermarks
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << JobWatermark.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Jobs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Job.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LimitExceededException, context: context)
        type = Types::LimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module ListJobsByPipelineInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListJobsByPipelineInput, context: context)
        type = Types::ListJobsByPipelineInput.new
        type.pipeline_id = params[:pipeline_id]
        type.ascending = params[:ascending]
        type.page_token = params[:page_token]
        type
      end
    end

    module ListJobsByPipelineOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListJobsByPipelineOutput, context: context)
        type = Types::ListJobsByPipelineOutput.new
        type.jobs = Jobs.build(params[:jobs], context: "#{context}[:jobs]") unless params[:jobs].nil?
        type.next_page_token = params[:next_page_token]
        type
      end
    end

    module ListJobsByStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListJobsByStatusInput, context: context)
        type = Types::ListJobsByStatusInput.new
        type.status = params[:status]
        type.ascending = params[:ascending]
        type.page_token = params[:page_token]
        type
      end
    end

    module ListJobsByStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListJobsByStatusOutput, context: context)
        type = Types::ListJobsByStatusOutput.new
        type.jobs = Jobs.build(params[:jobs], context: "#{context}[:jobs]") unless params[:jobs].nil?
        type.next_page_token = params[:next_page_token]
        type
      end
    end

    module ListPipelinesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPipelinesInput, context: context)
        type = Types::ListPipelinesInput.new
        type.ascending = params[:ascending]
        type.page_token = params[:page_token]
        type
      end
    end

    module ListPipelinesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPipelinesOutput, context: context)
        type = Types::ListPipelinesOutput.new
        type.pipelines = Pipelines.build(params[:pipelines], context: "#{context}[:pipelines]") unless params[:pipelines].nil?
        type.next_page_token = params[:next_page_token]
        type
      end
    end

    module ListPresetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPresetsInput, context: context)
        type = Types::ListPresetsInput.new
        type.ascending = params[:ascending]
        type.page_token = params[:page_token]
        type
      end
    end

    module ListPresetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPresetsOutput, context: context)
        type = Types::ListPresetsOutput.new
        type.presets = Presets.build(params[:presets], context: "#{context}[:presets]") unless params[:presets].nil?
        type.next_page_token = params[:next_page_token]
        type
      end
    end

    module Notifications
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Notifications, context: context)
        type = Types::Notifications.new
        type.progressing = params[:progressing]
        type.completed = params[:completed]
        type.warning = params[:warning]
        type.error = params[:error]
        type
      end
    end

    module OutputKeys
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Permission
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Permission, context: context)
        type = Types::Permission.new
        type.grantee_type = params[:grantee_type]
        type.grantee = params[:grantee]
        type.access = AccessControls.build(params[:access], context: "#{context}[:access]") unless params[:access].nil?
        type
      end
    end

    module Permissions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Permission.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Pipeline
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Pipeline, context: context)
        type = Types::Pipeline.new
        type.id = params[:id]
        type.arn = params[:arn]
        type.name = params[:name]
        type.status = params[:status]
        type.input_bucket = params[:input_bucket]
        type.output_bucket = params[:output_bucket]
        type.role = params[:role]
        type.aws_kms_key_arn = params[:aws_kms_key_arn]
        type.notifications = Notifications.build(params[:notifications], context: "#{context}[:notifications]") unless params[:notifications].nil?
        type.content_config = PipelineOutputConfig.build(params[:content_config], context: "#{context}[:content_config]") unless params[:content_config].nil?
        type.thumbnail_config = PipelineOutputConfig.build(params[:thumbnail_config], context: "#{context}[:thumbnail_config]") unless params[:thumbnail_config].nil?
        type
      end
    end

    module PipelineOutputConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PipelineOutputConfig, context: context)
        type = Types::PipelineOutputConfig.new
        type.bucket = params[:bucket]
        type.storage_class = params[:storage_class]
        type.permissions = Permissions.build(params[:permissions], context: "#{context}[:permissions]") unless params[:permissions].nil?
        type
      end
    end

    module Pipelines
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Pipeline.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PlayReadyDrm
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PlayReadyDrm, context: context)
        type = Types::PlayReadyDrm.new
        type.format = params[:format]
        type.key = params[:key]
        type.key_md5 = params[:key_md5]
        type.key_id = params[:key_id]
        type.initialization_vector = params[:initialization_vector]
        type.license_acquisition_url = params[:license_acquisition_url]
        type
      end
    end

    module Playlist
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Playlist, context: context)
        type = Types::Playlist.new
        type.name = params[:name]
        type.format = params[:format]
        type.output_keys = OutputKeys.build(params[:output_keys], context: "#{context}[:output_keys]") unless params[:output_keys].nil?
        type.hls_content_protection = HlsContentProtection.build(params[:hls_content_protection], context: "#{context}[:hls_content_protection]") unless params[:hls_content_protection].nil?
        type.play_ready_drm = PlayReadyDrm.build(params[:play_ready_drm], context: "#{context}[:play_ready_drm]") unless params[:play_ready_drm].nil?
        type.status = params[:status]
        type.status_detail = params[:status_detail]
        type
      end
    end

    module Playlists
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Playlist.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Preset
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Preset, context: context)
        type = Types::Preset.new
        type.id = params[:id]
        type.arn = params[:arn]
        type.name = params[:name]
        type.description = params[:description]
        type.container = params[:container]
        type.audio = AudioParameters.build(params[:audio], context: "#{context}[:audio]") unless params[:audio].nil?
        type.video = VideoParameters.build(params[:video], context: "#{context}[:video]") unless params[:video].nil?
        type.thumbnails = Thumbnails.build(params[:thumbnails], context: "#{context}[:thumbnails]") unless params[:thumbnails].nil?
        type.type = params[:type]
        type
      end
    end

    module PresetWatermark
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PresetWatermark, context: context)
        type = Types::PresetWatermark.new
        type.id = params[:id]
        type.max_width = params[:max_width]
        type.max_height = params[:max_height]
        type.sizing_policy = params[:sizing_policy]
        type.horizontal_align = params[:horizontal_align]
        type.horizontal_offset = params[:horizontal_offset]
        type.vertical_align = params[:vertical_align]
        type.vertical_offset = params[:vertical_offset]
        type.opacity = params[:opacity]
        type.target = params[:target]
        type
      end
    end

    module PresetWatermarks
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PresetWatermark.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Presets
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Preset.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ReadJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReadJobInput, context: context)
        type = Types::ReadJobInput.new
        type.id = params[:id]
        type
      end
    end

    module ReadJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReadJobOutput, context: context)
        type = Types::ReadJobOutput.new
        type.job = Job.build(params[:job], context: "#{context}[:job]") unless params[:job].nil?
        type
      end
    end

    module ReadPipelineInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReadPipelineInput, context: context)
        type = Types::ReadPipelineInput.new
        type.id = params[:id]
        type
      end
    end

    module ReadPipelineOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReadPipelineOutput, context: context)
        type = Types::ReadPipelineOutput.new
        type.pipeline = Pipeline.build(params[:pipeline], context: "#{context}[:pipeline]") unless params[:pipeline].nil?
        type.warnings = Warnings.build(params[:warnings], context: "#{context}[:warnings]") unless params[:warnings].nil?
        type
      end
    end

    module ReadPresetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReadPresetInput, context: context)
        type = Types::ReadPresetInput.new
        type.id = params[:id]
        type
      end
    end

    module ReadPresetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReadPresetOutput, context: context)
        type = Types::ReadPresetOutput.new
        type.preset = Preset.build(params[:preset], context: "#{context}[:preset]") unless params[:preset].nil?
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

    module SnsTopics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TestRoleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TestRoleInput, context: context)
        type = Types::TestRoleInput.new
        type.role = params[:role]
        type.input_bucket = params[:input_bucket]
        type.output_bucket = params[:output_bucket]
        type.topics = SnsTopics.build(params[:topics], context: "#{context}[:topics]") unless params[:topics].nil?
        type
      end
    end

    module TestRoleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TestRoleOutput, context: context)
        type = Types::TestRoleOutput.new
        type.success = params[:success]
        type.messages = ExceptionMessages.build(params[:messages], context: "#{context}[:messages]") unless params[:messages].nil?
        type
      end
    end

    module Thumbnails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Thumbnails, context: context)
        type = Types::Thumbnails.new
        type.format = params[:format]
        type.interval = params[:interval]
        type.resolution = params[:resolution]
        type.aspect_ratio = params[:aspect_ratio]
        type.max_width = params[:max_width]
        type.max_height = params[:max_height]
        type.sizing_policy = params[:sizing_policy]
        type.padding_policy = params[:padding_policy]
        type
      end
    end

    module TimeSpan
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TimeSpan, context: context)
        type = Types::TimeSpan.new
        type.start_time = params[:start_time]
        type.duration = params[:duration]
        type
      end
    end

    module Timing
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Timing, context: context)
        type = Types::Timing.new
        type.submit_time_millis = params[:submit_time_millis]
        type.start_time_millis = params[:start_time_millis]
        type.finish_time_millis = params[:finish_time_millis]
        type
      end
    end

    module UpdatePipelineInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePipelineInput, context: context)
        type = Types::UpdatePipelineInput.new
        type.id = params[:id]
        type.name = params[:name]
        type.input_bucket = params[:input_bucket]
        type.role = params[:role]
        type.aws_kms_key_arn = params[:aws_kms_key_arn]
        type.notifications = Notifications.build(params[:notifications], context: "#{context}[:notifications]") unless params[:notifications].nil?
        type.content_config = PipelineOutputConfig.build(params[:content_config], context: "#{context}[:content_config]") unless params[:content_config].nil?
        type.thumbnail_config = PipelineOutputConfig.build(params[:thumbnail_config], context: "#{context}[:thumbnail_config]") unless params[:thumbnail_config].nil?
        type
      end
    end

    module UpdatePipelineNotificationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePipelineNotificationsInput, context: context)
        type = Types::UpdatePipelineNotificationsInput.new
        type.id = params[:id]
        type.notifications = Notifications.build(params[:notifications], context: "#{context}[:notifications]") unless params[:notifications].nil?
        type
      end
    end

    module UpdatePipelineNotificationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePipelineNotificationsOutput, context: context)
        type = Types::UpdatePipelineNotificationsOutput.new
        type.pipeline = Pipeline.build(params[:pipeline], context: "#{context}[:pipeline]") unless params[:pipeline].nil?
        type
      end
    end

    module UpdatePipelineOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePipelineOutput, context: context)
        type = Types::UpdatePipelineOutput.new
        type.pipeline = Pipeline.build(params[:pipeline], context: "#{context}[:pipeline]") unless params[:pipeline].nil?
        type.warnings = Warnings.build(params[:warnings], context: "#{context}[:warnings]") unless params[:warnings].nil?
        type
      end
    end

    module UpdatePipelineStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePipelineStatusInput, context: context)
        type = Types::UpdatePipelineStatusInput.new
        type.id = params[:id]
        type.status = params[:status]
        type
      end
    end

    module UpdatePipelineStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePipelineStatusOutput, context: context)
        type = Types::UpdatePipelineStatusOutput.new
        type.pipeline = Pipeline.build(params[:pipeline], context: "#{context}[:pipeline]") unless params[:pipeline].nil?
        type
      end
    end

    module UserMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type
      end
    end

    module VideoParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VideoParameters, context: context)
        type = Types::VideoParameters.new
        type.codec = params[:codec]
        type.codec_options = CodecOptions.build(params[:codec_options], context: "#{context}[:codec_options]") unless params[:codec_options].nil?
        type.keyframes_max_dist = params[:keyframes_max_dist]
        type.fixed_gop = params[:fixed_gop]
        type.bit_rate = params[:bit_rate]
        type.frame_rate = params[:frame_rate]
        type.max_frame_rate = params[:max_frame_rate]
        type.resolution = params[:resolution]
        type.aspect_ratio = params[:aspect_ratio]
        type.max_width = params[:max_width]
        type.max_height = params[:max_height]
        type.display_aspect_ratio = params[:display_aspect_ratio]
        type.sizing_policy = params[:sizing_policy]
        type.padding_policy = params[:padding_policy]
        type.watermarks = PresetWatermarks.build(params[:watermarks], context: "#{context}[:watermarks]") unless params[:watermarks].nil?
        type
      end
    end

    module Warning
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Warning, context: context)
        type = Types::Warning.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module Warnings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Warning.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

  end
end
