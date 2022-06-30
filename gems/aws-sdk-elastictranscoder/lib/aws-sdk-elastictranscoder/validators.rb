# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ElasticTranscoder
  module Validators

    class AccessControls
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Artwork
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Artwork, context: context)
        Hearth::Validator.validate!(input[:input_key], ::String, context: "#{context}[:input_key]")
        Hearth::Validator.validate!(input[:max_width], ::String, context: "#{context}[:max_width]")
        Hearth::Validator.validate!(input[:max_height], ::String, context: "#{context}[:max_height]")
        Hearth::Validator.validate!(input[:sizing_policy], ::String, context: "#{context}[:sizing_policy]")
        Hearth::Validator.validate!(input[:padding_policy], ::String, context: "#{context}[:padding_policy]")
        Hearth::Validator.validate!(input[:album_art_format], ::String, context: "#{context}[:album_art_format]")
        Validators::Encryption.validate!(input[:encryption], context: "#{context}[:encryption]") unless input[:encryption].nil?
      end
    end

    class Artworks
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Artwork.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AudioCodecOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AudioCodecOptions, context: context)
        Hearth::Validator.validate!(input[:profile], ::String, context: "#{context}[:profile]")
        Hearth::Validator.validate!(input[:bit_depth], ::String, context: "#{context}[:bit_depth]")
        Hearth::Validator.validate!(input[:bit_order], ::String, context: "#{context}[:bit_order]")
        Hearth::Validator.validate!(input[:signed], ::String, context: "#{context}[:signed]")
      end
    end

    class AudioParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AudioParameters, context: context)
        Hearth::Validator.validate!(input[:codec], ::String, context: "#{context}[:codec]")
        Hearth::Validator.validate!(input[:sample_rate], ::String, context: "#{context}[:sample_rate]")
        Hearth::Validator.validate!(input[:bit_rate], ::String, context: "#{context}[:bit_rate]")
        Hearth::Validator.validate!(input[:channels], ::String, context: "#{context}[:channels]")
        Hearth::Validator.validate!(input[:audio_packing_mode], ::String, context: "#{context}[:audio_packing_mode]")
        Validators::AudioCodecOptions.validate!(input[:codec_options], context: "#{context}[:codec_options]") unless input[:codec_options].nil?
      end
    end

    class CancelJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelJobInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class CancelJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelJobOutput, context: context)
      end
    end

    class CaptionFormat
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CaptionFormat, context: context)
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        Hearth::Validator.validate!(input[:pattern], ::String, context: "#{context}[:pattern]")
        Validators::Encryption.validate!(input[:encryption], context: "#{context}[:encryption]") unless input[:encryption].nil?
      end
    end

    class CaptionFormats
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::CaptionFormat.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CaptionSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CaptionSource, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:language], ::String, context: "#{context}[:language]")
        Hearth::Validator.validate!(input[:time_offset], ::String, context: "#{context}[:time_offset]")
        Hearth::Validator.validate!(input[:label], ::String, context: "#{context}[:label]")
        Validators::Encryption.validate!(input[:encryption], context: "#{context}[:encryption]") unless input[:encryption].nil?
      end
    end

    class CaptionSources
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::CaptionSource.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Captions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Captions, context: context)
        Hearth::Validator.validate!(input[:merge_policy], ::String, context: "#{context}[:merge_policy]")
        Validators::CaptionSources.validate!(input[:caption_sources], context: "#{context}[:caption_sources]") unless input[:caption_sources].nil?
        Validators::CaptionFormats.validate!(input[:caption_formats], context: "#{context}[:caption_formats]") unless input[:caption_formats].nil?
      end
    end

    class Clip
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Clip, context: context)
        Validators::TimeSpan.validate!(input[:time_span], context: "#{context}[:time_span]") unless input[:time_span].nil?
      end
    end

    class CodecOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class Composition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Clip.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CreateJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateJobInput, context: context)
        Hearth::Validator.validate!(input[:pipeline_id], ::String, context: "#{context}[:pipeline_id]")
        Validators::JobInput.validate!(input[:input], context: "#{context}[:input]") unless input[:input].nil?
        Validators::JobInputs.validate!(input[:inputs], context: "#{context}[:inputs]") unless input[:inputs].nil?
        Validators::CreateJobOutput.validate!(input[:output], context: "#{context}[:output]") unless input[:output].nil?
        Validators::CreateJobOutputs.validate!(input[:outputs], context: "#{context}[:outputs]") unless input[:outputs].nil?
        Hearth::Validator.validate!(input[:output_key_prefix], ::String, context: "#{context}[:output_key_prefix]")
        Validators::CreateJobPlaylists.validate!(input[:playlists], context: "#{context}[:playlists]") unless input[:playlists].nil?
        Validators::UserMetadata.validate!(input[:user_metadata], context: "#{context}[:user_metadata]") unless input[:user_metadata].nil?
      end
    end

    class CreateJobOperationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateJobOperationOutput, context: context)
        Validators::Job.validate!(input[:job], context: "#{context}[:job]") unless input[:job].nil?
      end
    end

    class CreateJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateJobOutput, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:thumbnail_pattern], ::String, context: "#{context}[:thumbnail_pattern]")
        Validators::Encryption.validate!(input[:thumbnail_encryption], context: "#{context}[:thumbnail_encryption]") unless input[:thumbnail_encryption].nil?
        Hearth::Validator.validate!(input[:rotate], ::String, context: "#{context}[:rotate]")
        Hearth::Validator.validate!(input[:preset_id], ::String, context: "#{context}[:preset_id]")
        Hearth::Validator.validate!(input[:segment_duration], ::String, context: "#{context}[:segment_duration]")
        Validators::JobWatermarks.validate!(input[:watermarks], context: "#{context}[:watermarks]") unless input[:watermarks].nil?
        Validators::JobAlbumArt.validate!(input[:album_art], context: "#{context}[:album_art]") unless input[:album_art].nil?
        Validators::Composition.validate!(input[:composition], context: "#{context}[:composition]") unless input[:composition].nil?
        Validators::Captions.validate!(input[:captions], context: "#{context}[:captions]") unless input[:captions].nil?
        Validators::Encryption.validate!(input[:encryption], context: "#{context}[:encryption]") unless input[:encryption].nil?
      end
    end

    class CreateJobOutputs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::CreateJobOutput.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CreateJobPlaylist
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateJobPlaylist, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        Validators::OutputKeys.validate!(input[:output_keys], context: "#{context}[:output_keys]") unless input[:output_keys].nil?
        Validators::HlsContentProtection.validate!(input[:hls_content_protection], context: "#{context}[:hls_content_protection]") unless input[:hls_content_protection].nil?
        Validators::PlayReadyDrm.validate!(input[:play_ready_drm], context: "#{context}[:play_ready_drm]") unless input[:play_ready_drm].nil?
      end
    end

    class CreateJobPlaylists
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::CreateJobPlaylist.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CreatePipelineInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePipelineInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:input_bucket], ::String, context: "#{context}[:input_bucket]")
        Hearth::Validator.validate!(input[:output_bucket], ::String, context: "#{context}[:output_bucket]")
        Hearth::Validator.validate!(input[:role], ::String, context: "#{context}[:role]")
        Hearth::Validator.validate!(input[:aws_kms_key_arn], ::String, context: "#{context}[:aws_kms_key_arn]")
        Validators::Notifications.validate!(input[:notifications], context: "#{context}[:notifications]") unless input[:notifications].nil?
        Validators::PipelineOutputConfig.validate!(input[:content_config], context: "#{context}[:content_config]") unless input[:content_config].nil?
        Validators::PipelineOutputConfig.validate!(input[:thumbnail_config], context: "#{context}[:thumbnail_config]") unless input[:thumbnail_config].nil?
      end
    end

    class CreatePipelineOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePipelineOutput, context: context)
        Validators::Pipeline.validate!(input[:pipeline], context: "#{context}[:pipeline]") unless input[:pipeline].nil?
        Validators::Warnings.validate!(input[:warnings], context: "#{context}[:warnings]") unless input[:warnings].nil?
      end
    end

    class CreatePresetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePresetInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:container], ::String, context: "#{context}[:container]")
        Validators::VideoParameters.validate!(input[:video], context: "#{context}[:video]") unless input[:video].nil?
        Validators::AudioParameters.validate!(input[:audio], context: "#{context}[:audio]") unless input[:audio].nil?
        Validators::Thumbnails.validate!(input[:thumbnails], context: "#{context}[:thumbnails]") unless input[:thumbnails].nil?
      end
    end

    class CreatePresetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePresetOutput, context: context)
        Validators::Preset.validate!(input[:preset], context: "#{context}[:preset]") unless input[:preset].nil?
        Hearth::Validator.validate!(input[:warning], ::String, context: "#{context}[:warning]")
      end
    end

    class DeletePipelineInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePipelineInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class DeletePipelineOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePipelineOutput, context: context)
      end
    end

    class DeletePresetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePresetInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class DeletePresetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePresetOutput, context: context)
      end
    end

    class DetectedProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetectedProperties, context: context)
        Hearth::Validator.validate!(input[:width], ::Integer, context: "#{context}[:width]")
        Hearth::Validator.validate!(input[:height], ::Integer, context: "#{context}[:height]")
        Hearth::Validator.validate!(input[:frame_rate], ::String, context: "#{context}[:frame_rate]")
        Hearth::Validator.validate!(input[:file_size], ::Integer, context: "#{context}[:file_size]")
        Hearth::Validator.validate!(input[:duration_millis], ::Integer, context: "#{context}[:duration_millis]")
      end
    end

    class Encryption
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Encryption, context: context)
        Hearth::Validator.validate!(input[:mode], ::String, context: "#{context}[:mode]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:key_md5], ::String, context: "#{context}[:key_md5]")
        Hearth::Validator.validate!(input[:initialization_vector], ::String, context: "#{context}[:initialization_vector]")
      end
    end

    class ExceptionMessages
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class HlsContentProtection
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HlsContentProtection, context: context)
        Hearth::Validator.validate!(input[:member_method], ::String, context: "#{context}[:member_method]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:key_md5], ::String, context: "#{context}[:key_md5]")
        Hearth::Validator.validate!(input[:initialization_vector], ::String, context: "#{context}[:initialization_vector]")
        Hearth::Validator.validate!(input[:license_acquisition_url], ::String, context: "#{context}[:license_acquisition_url]")
        Hearth::Validator.validate!(input[:key_storage_policy], ::String, context: "#{context}[:key_storage_policy]")
      end
    end

    class IncompatibleVersionException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IncompatibleVersionException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InputCaptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InputCaptions, context: context)
        Hearth::Validator.validate!(input[:merge_policy], ::String, context: "#{context}[:merge_policy]")
        Validators::CaptionSources.validate!(input[:caption_sources], context: "#{context}[:caption_sources]") unless input[:caption_sources].nil?
      end
    end

    class InternalServiceException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServiceException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Job
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Job, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:pipeline_id], ::String, context: "#{context}[:pipeline_id]")
        Validators::JobInput.validate!(input[:input], context: "#{context}[:input]") unless input[:input].nil?
        Validators::JobInputs.validate!(input[:inputs], context: "#{context}[:inputs]") unless input[:inputs].nil?
        Validators::JobOutput.validate!(input[:output], context: "#{context}[:output]") unless input[:output].nil?
        Validators::JobOutputs.validate!(input[:outputs], context: "#{context}[:outputs]") unless input[:outputs].nil?
        Hearth::Validator.validate!(input[:output_key_prefix], ::String, context: "#{context}[:output_key_prefix]")
        Validators::Playlists.validate!(input[:playlists], context: "#{context}[:playlists]") unless input[:playlists].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Validators::UserMetadata.validate!(input[:user_metadata], context: "#{context}[:user_metadata]") unless input[:user_metadata].nil?
        Validators::Timing.validate!(input[:timing], context: "#{context}[:timing]") unless input[:timing].nil?
      end
    end

    class JobAlbumArt
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobAlbumArt, context: context)
        Hearth::Validator.validate!(input[:merge_policy], ::String, context: "#{context}[:merge_policy]")
        Validators::Artworks.validate!(input[:artwork], context: "#{context}[:artwork]") unless input[:artwork].nil?
      end
    end

    class JobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobInput, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:frame_rate], ::String, context: "#{context}[:frame_rate]")
        Hearth::Validator.validate!(input[:resolution], ::String, context: "#{context}[:resolution]")
        Hearth::Validator.validate!(input[:aspect_ratio], ::String, context: "#{context}[:aspect_ratio]")
        Hearth::Validator.validate!(input[:interlaced], ::String, context: "#{context}[:interlaced]")
        Hearth::Validator.validate!(input[:container], ::String, context: "#{context}[:container]")
        Validators::Encryption.validate!(input[:encryption], context: "#{context}[:encryption]") unless input[:encryption].nil?
        Validators::TimeSpan.validate!(input[:time_span], context: "#{context}[:time_span]") unless input[:time_span].nil?
        Validators::InputCaptions.validate!(input[:input_captions], context: "#{context}[:input_captions]") unless input[:input_captions].nil?
        Validators::DetectedProperties.validate!(input[:detected_properties], context: "#{context}[:detected_properties]") unless input[:detected_properties].nil?
      end
    end

    class JobInputs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::JobInput.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class JobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:thumbnail_pattern], ::String, context: "#{context}[:thumbnail_pattern]")
        Validators::Encryption.validate!(input[:thumbnail_encryption], context: "#{context}[:thumbnail_encryption]") unless input[:thumbnail_encryption].nil?
        Hearth::Validator.validate!(input[:rotate], ::String, context: "#{context}[:rotate]")
        Hearth::Validator.validate!(input[:preset_id], ::String, context: "#{context}[:preset_id]")
        Hearth::Validator.validate!(input[:segment_duration], ::String, context: "#{context}[:segment_duration]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_detail], ::String, context: "#{context}[:status_detail]")
        Hearth::Validator.validate!(input[:duration], ::Integer, context: "#{context}[:duration]")
        Hearth::Validator.validate!(input[:width], ::Integer, context: "#{context}[:width]")
        Hearth::Validator.validate!(input[:height], ::Integer, context: "#{context}[:height]")
        Hearth::Validator.validate!(input[:frame_rate], ::String, context: "#{context}[:frame_rate]")
        Hearth::Validator.validate!(input[:file_size], ::Integer, context: "#{context}[:file_size]")
        Hearth::Validator.validate!(input[:duration_millis], ::Integer, context: "#{context}[:duration_millis]")
        Validators::JobWatermarks.validate!(input[:watermarks], context: "#{context}[:watermarks]") unless input[:watermarks].nil?
        Validators::JobAlbumArt.validate!(input[:album_art], context: "#{context}[:album_art]") unless input[:album_art].nil?
        Validators::Composition.validate!(input[:composition], context: "#{context}[:composition]") unless input[:composition].nil?
        Validators::Captions.validate!(input[:captions], context: "#{context}[:captions]") unless input[:captions].nil?
        Validators::Encryption.validate!(input[:encryption], context: "#{context}[:encryption]") unless input[:encryption].nil?
        Hearth::Validator.validate!(input[:applied_color_space_conversion], ::String, context: "#{context}[:applied_color_space_conversion]")
      end
    end

    class JobOutputs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::JobOutput.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class JobWatermark
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobWatermark, context: context)
        Hearth::Validator.validate!(input[:preset_watermark_id], ::String, context: "#{context}[:preset_watermark_id]")
        Hearth::Validator.validate!(input[:input_key], ::String, context: "#{context}[:input_key]")
        Validators::Encryption.validate!(input[:encryption], context: "#{context}[:encryption]") unless input[:encryption].nil?
      end
    end

    class JobWatermarks
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::JobWatermark.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Jobs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Job.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListJobsByPipelineInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListJobsByPipelineInput, context: context)
        Hearth::Validator.validate!(input[:pipeline_id], ::String, context: "#{context}[:pipeline_id]")
        Hearth::Validator.validate!(input[:ascending], ::String, context: "#{context}[:ascending]")
        Hearth::Validator.validate!(input[:page_token], ::String, context: "#{context}[:page_token]")
      end
    end

    class ListJobsByPipelineOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListJobsByPipelineOutput, context: context)
        Validators::Jobs.validate!(input[:jobs], context: "#{context}[:jobs]") unless input[:jobs].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
      end
    end

    class ListJobsByStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListJobsByStatusInput, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:ascending], ::String, context: "#{context}[:ascending]")
        Hearth::Validator.validate!(input[:page_token], ::String, context: "#{context}[:page_token]")
      end
    end

    class ListJobsByStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListJobsByStatusOutput, context: context)
        Validators::Jobs.validate!(input[:jobs], context: "#{context}[:jobs]") unless input[:jobs].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
      end
    end

    class ListPipelinesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPipelinesInput, context: context)
        Hearth::Validator.validate!(input[:ascending], ::String, context: "#{context}[:ascending]")
        Hearth::Validator.validate!(input[:page_token], ::String, context: "#{context}[:page_token]")
      end
    end

    class ListPipelinesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPipelinesOutput, context: context)
        Validators::Pipelines.validate!(input[:pipelines], context: "#{context}[:pipelines]") unless input[:pipelines].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
      end
    end

    class ListPresetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPresetsInput, context: context)
        Hearth::Validator.validate!(input[:ascending], ::String, context: "#{context}[:ascending]")
        Hearth::Validator.validate!(input[:page_token], ::String, context: "#{context}[:page_token]")
      end
    end

    class ListPresetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPresetsOutput, context: context)
        Validators::Presets.validate!(input[:presets], context: "#{context}[:presets]") unless input[:presets].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
      end
    end

    class Notifications
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Notifications, context: context)
        Hearth::Validator.validate!(input[:progressing], ::String, context: "#{context}[:progressing]")
        Hearth::Validator.validate!(input[:completed], ::String, context: "#{context}[:completed]")
        Hearth::Validator.validate!(input[:warning], ::String, context: "#{context}[:warning]")
        Hearth::Validator.validate!(input[:error], ::String, context: "#{context}[:error]")
      end
    end

    class OutputKeys
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Permission
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Permission, context: context)
        Hearth::Validator.validate!(input[:grantee_type], ::String, context: "#{context}[:grantee_type]")
        Hearth::Validator.validate!(input[:grantee], ::String, context: "#{context}[:grantee]")
        Validators::AccessControls.validate!(input[:access], context: "#{context}[:access]") unless input[:access].nil?
      end
    end

    class Permissions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Permission.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Pipeline
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Pipeline, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:input_bucket], ::String, context: "#{context}[:input_bucket]")
        Hearth::Validator.validate!(input[:output_bucket], ::String, context: "#{context}[:output_bucket]")
        Hearth::Validator.validate!(input[:role], ::String, context: "#{context}[:role]")
        Hearth::Validator.validate!(input[:aws_kms_key_arn], ::String, context: "#{context}[:aws_kms_key_arn]")
        Validators::Notifications.validate!(input[:notifications], context: "#{context}[:notifications]") unless input[:notifications].nil?
        Validators::PipelineOutputConfig.validate!(input[:content_config], context: "#{context}[:content_config]") unless input[:content_config].nil?
        Validators::PipelineOutputConfig.validate!(input[:thumbnail_config], context: "#{context}[:thumbnail_config]") unless input[:thumbnail_config].nil?
      end
    end

    class PipelineOutputConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PipelineOutputConfig, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:storage_class], ::String, context: "#{context}[:storage_class]")
        Validators::Permissions.validate!(input[:permissions], context: "#{context}[:permissions]") unless input[:permissions].nil?
      end
    end

    class Pipelines
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Pipeline.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PlayReadyDrm
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PlayReadyDrm, context: context)
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:key_md5], ::String, context: "#{context}[:key_md5]")
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate!(input[:initialization_vector], ::String, context: "#{context}[:initialization_vector]")
        Hearth::Validator.validate!(input[:license_acquisition_url], ::String, context: "#{context}[:license_acquisition_url]")
      end
    end

    class Playlist
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Playlist, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        Validators::OutputKeys.validate!(input[:output_keys], context: "#{context}[:output_keys]") unless input[:output_keys].nil?
        Validators::HlsContentProtection.validate!(input[:hls_content_protection], context: "#{context}[:hls_content_protection]") unless input[:hls_content_protection].nil?
        Validators::PlayReadyDrm.validate!(input[:play_ready_drm], context: "#{context}[:play_ready_drm]") unless input[:play_ready_drm].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_detail], ::String, context: "#{context}[:status_detail]")
      end
    end

    class Playlists
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Playlist.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Preset
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Preset, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:container], ::String, context: "#{context}[:container]")
        Validators::AudioParameters.validate!(input[:audio], context: "#{context}[:audio]") unless input[:audio].nil?
        Validators::VideoParameters.validate!(input[:video], context: "#{context}[:video]") unless input[:video].nil?
        Validators::Thumbnails.validate!(input[:thumbnails], context: "#{context}[:thumbnails]") unless input[:thumbnails].nil?
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class PresetWatermark
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PresetWatermark, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:max_width], ::String, context: "#{context}[:max_width]")
        Hearth::Validator.validate!(input[:max_height], ::String, context: "#{context}[:max_height]")
        Hearth::Validator.validate!(input[:sizing_policy], ::String, context: "#{context}[:sizing_policy]")
        Hearth::Validator.validate!(input[:horizontal_align], ::String, context: "#{context}[:horizontal_align]")
        Hearth::Validator.validate!(input[:horizontal_offset], ::String, context: "#{context}[:horizontal_offset]")
        Hearth::Validator.validate!(input[:vertical_align], ::String, context: "#{context}[:vertical_align]")
        Hearth::Validator.validate!(input[:vertical_offset], ::String, context: "#{context}[:vertical_offset]")
        Hearth::Validator.validate!(input[:opacity], ::String, context: "#{context}[:opacity]")
        Hearth::Validator.validate!(input[:target], ::String, context: "#{context}[:target]")
      end
    end

    class PresetWatermarks
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PresetWatermark.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Presets
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Preset.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReadJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReadJobInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class ReadJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReadJobOutput, context: context)
        Validators::Job.validate!(input[:job], context: "#{context}[:job]") unless input[:job].nil?
      end
    end

    class ReadPipelineInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReadPipelineInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class ReadPipelineOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReadPipelineOutput, context: context)
        Validators::Pipeline.validate!(input[:pipeline], context: "#{context}[:pipeline]") unless input[:pipeline].nil?
        Validators::Warnings.validate!(input[:warnings], context: "#{context}[:warnings]") unless input[:warnings].nil?
      end
    end

    class ReadPresetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReadPresetInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class ReadPresetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReadPresetOutput, context: context)
        Validators::Preset.validate!(input[:preset], context: "#{context}[:preset]") unless input[:preset].nil?
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

    class SnsTopics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TestRoleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TestRoleInput, context: context)
        Hearth::Validator.validate!(input[:role], ::String, context: "#{context}[:role]")
        Hearth::Validator.validate!(input[:input_bucket], ::String, context: "#{context}[:input_bucket]")
        Hearth::Validator.validate!(input[:output_bucket], ::String, context: "#{context}[:output_bucket]")
        Validators::SnsTopics.validate!(input[:topics], context: "#{context}[:topics]") unless input[:topics].nil?
      end
    end

    class TestRoleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TestRoleOutput, context: context)
        Hearth::Validator.validate!(input[:success], ::String, context: "#{context}[:success]")
        Validators::ExceptionMessages.validate!(input[:messages], context: "#{context}[:messages]") unless input[:messages].nil?
      end
    end

    class Thumbnails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Thumbnails, context: context)
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        Hearth::Validator.validate!(input[:interval], ::String, context: "#{context}[:interval]")
        Hearth::Validator.validate!(input[:resolution], ::String, context: "#{context}[:resolution]")
        Hearth::Validator.validate!(input[:aspect_ratio], ::String, context: "#{context}[:aspect_ratio]")
        Hearth::Validator.validate!(input[:max_width], ::String, context: "#{context}[:max_width]")
        Hearth::Validator.validate!(input[:max_height], ::String, context: "#{context}[:max_height]")
        Hearth::Validator.validate!(input[:sizing_policy], ::String, context: "#{context}[:sizing_policy]")
        Hearth::Validator.validate!(input[:padding_policy], ::String, context: "#{context}[:padding_policy]")
      end
    end

    class TimeSpan
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TimeSpan, context: context)
        Hearth::Validator.validate!(input[:start_time], ::String, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:duration], ::String, context: "#{context}[:duration]")
      end
    end

    class Timing
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Timing, context: context)
        Hearth::Validator.validate!(input[:submit_time_millis], ::Integer, context: "#{context}[:submit_time_millis]")
        Hearth::Validator.validate!(input[:start_time_millis], ::Integer, context: "#{context}[:start_time_millis]")
        Hearth::Validator.validate!(input[:finish_time_millis], ::Integer, context: "#{context}[:finish_time_millis]")
      end
    end

    class UpdatePipelineInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePipelineInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:input_bucket], ::String, context: "#{context}[:input_bucket]")
        Hearth::Validator.validate!(input[:role], ::String, context: "#{context}[:role]")
        Hearth::Validator.validate!(input[:aws_kms_key_arn], ::String, context: "#{context}[:aws_kms_key_arn]")
        Validators::Notifications.validate!(input[:notifications], context: "#{context}[:notifications]") unless input[:notifications].nil?
        Validators::PipelineOutputConfig.validate!(input[:content_config], context: "#{context}[:content_config]") unless input[:content_config].nil?
        Validators::PipelineOutputConfig.validate!(input[:thumbnail_config], context: "#{context}[:thumbnail_config]") unless input[:thumbnail_config].nil?
      end
    end

    class UpdatePipelineNotificationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePipelineNotificationsInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Validators::Notifications.validate!(input[:notifications], context: "#{context}[:notifications]") unless input[:notifications].nil?
      end
    end

    class UpdatePipelineNotificationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePipelineNotificationsOutput, context: context)
        Validators::Pipeline.validate!(input[:pipeline], context: "#{context}[:pipeline]") unless input[:pipeline].nil?
      end
    end

    class UpdatePipelineOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePipelineOutput, context: context)
        Validators::Pipeline.validate!(input[:pipeline], context: "#{context}[:pipeline]") unless input[:pipeline].nil?
        Validators::Warnings.validate!(input[:warnings], context: "#{context}[:warnings]") unless input[:warnings].nil?
      end
    end

    class UpdatePipelineStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePipelineStatusInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class UpdatePipelineStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePipelineStatusOutput, context: context)
        Validators::Pipeline.validate!(input[:pipeline], context: "#{context}[:pipeline]") unless input[:pipeline].nil?
      end
    end

    class UserMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class VideoParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VideoParameters, context: context)
        Hearth::Validator.validate!(input[:codec], ::String, context: "#{context}[:codec]")
        Validators::CodecOptions.validate!(input[:codec_options], context: "#{context}[:codec_options]") unless input[:codec_options].nil?
        Hearth::Validator.validate!(input[:keyframes_max_dist], ::String, context: "#{context}[:keyframes_max_dist]")
        Hearth::Validator.validate!(input[:fixed_gop], ::String, context: "#{context}[:fixed_gop]")
        Hearth::Validator.validate!(input[:bit_rate], ::String, context: "#{context}[:bit_rate]")
        Hearth::Validator.validate!(input[:frame_rate], ::String, context: "#{context}[:frame_rate]")
        Hearth::Validator.validate!(input[:max_frame_rate], ::String, context: "#{context}[:max_frame_rate]")
        Hearth::Validator.validate!(input[:resolution], ::String, context: "#{context}[:resolution]")
        Hearth::Validator.validate!(input[:aspect_ratio], ::String, context: "#{context}[:aspect_ratio]")
        Hearth::Validator.validate!(input[:max_width], ::String, context: "#{context}[:max_width]")
        Hearth::Validator.validate!(input[:max_height], ::String, context: "#{context}[:max_height]")
        Hearth::Validator.validate!(input[:display_aspect_ratio], ::String, context: "#{context}[:display_aspect_ratio]")
        Hearth::Validator.validate!(input[:sizing_policy], ::String, context: "#{context}[:sizing_policy]")
        Hearth::Validator.validate!(input[:padding_policy], ::String, context: "#{context}[:padding_policy]")
        Validators::PresetWatermarks.validate!(input[:watermarks], context: "#{context}[:watermarks]") unless input[:watermarks].nil?
      end
    end

    class Warning
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Warning, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Warnings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Warning.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

  end
end
