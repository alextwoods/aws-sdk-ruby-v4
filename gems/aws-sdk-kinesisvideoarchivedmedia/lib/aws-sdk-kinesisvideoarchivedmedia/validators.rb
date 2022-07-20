# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::KinesisVideoArchivedMedia
  module Validators

    class ClientLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClientLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ClipFragmentSelector
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClipFragmentSelector, context: context)
        Hearth::Validator.validate!(input[:fragment_selector_type], ::String, context: "#{context}[:fragment_selector_type]")
        ClipTimestampRange.validate!(input[:timestamp_range], context: "#{context}[:timestamp_range]") unless input[:timestamp_range].nil?
      end
    end

    class ClipTimestampRange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClipTimestampRange, context: context)
        Hearth::Validator.validate!(input[:start_timestamp], ::Time, context: "#{context}[:start_timestamp]")
        Hearth::Validator.validate!(input[:end_timestamp], ::Time, context: "#{context}[:end_timestamp]")
      end
    end

    class DASHFragmentSelector
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DASHFragmentSelector, context: context)
        Hearth::Validator.validate!(input[:fragment_selector_type], ::String, context: "#{context}[:fragment_selector_type]")
        DASHTimestampRange.validate!(input[:timestamp_range], context: "#{context}[:timestamp_range]") unless input[:timestamp_range].nil?
      end
    end

    class DASHTimestampRange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DASHTimestampRange, context: context)
        Hearth::Validator.validate!(input[:start_timestamp], ::Time, context: "#{context}[:start_timestamp]")
        Hearth::Validator.validate!(input[:end_timestamp], ::Time, context: "#{context}[:end_timestamp]")
      end
    end

    class FormatConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class Fragment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Fragment, context: context)
        Hearth::Validator.validate!(input[:fragment_number], ::String, context: "#{context}[:fragment_number]")
        Hearth::Validator.validate!(input[:fragment_size_in_bytes], ::Integer, context: "#{context}[:fragment_size_in_bytes]")
        Hearth::Validator.validate!(input[:producer_timestamp], ::Time, context: "#{context}[:producer_timestamp]")
        Hearth::Validator.validate!(input[:server_timestamp], ::Time, context: "#{context}[:server_timestamp]")
        Hearth::Validator.validate!(input[:fragment_length_in_milliseconds], ::Integer, context: "#{context}[:fragment_length_in_milliseconds]")
      end
    end

    class FragmentList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Fragment.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FragmentNumberList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class FragmentSelector
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FragmentSelector, context: context)
        Hearth::Validator.validate!(input[:fragment_selector_type], ::String, context: "#{context}[:fragment_selector_type]")
        TimestampRange.validate!(input[:timestamp_range], context: "#{context}[:timestamp_range]") unless input[:timestamp_range].nil?
      end
    end

    class GetClipInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetClipInput, context: context)
        Hearth::Validator.validate!(input[:stream_name], ::String, context: "#{context}[:stream_name]")
        Hearth::Validator.validate!(input[:stream_arn], ::String, context: "#{context}[:stream_arn]")
        ClipFragmentSelector.validate!(input[:clip_fragment_selector], context: "#{context}[:clip_fragment_selector]") unless input[:clip_fragment_selector].nil?
      end
    end

    class GetClipOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetClipOutput, context: context)
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
        unless input[:payload].respond_to?(:read) || input[:payload].respond_to?(:readpartial)
          raise ArgumentError, "Expected #{context} to be an IO like object, got #{input[:payload].class}"
        end
      end
    end

    class GetDASHStreamingSessionURLInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDASHStreamingSessionURLInput, context: context)
        Hearth::Validator.validate!(input[:stream_name], ::String, context: "#{context}[:stream_name]")
        Hearth::Validator.validate!(input[:stream_arn], ::String, context: "#{context}[:stream_arn]")
        Hearth::Validator.validate!(input[:playback_mode], ::String, context: "#{context}[:playback_mode]")
        Hearth::Validator.validate!(input[:display_fragment_timestamp], ::String, context: "#{context}[:display_fragment_timestamp]")
        Hearth::Validator.validate!(input[:display_fragment_number], ::String, context: "#{context}[:display_fragment_number]")
        DASHFragmentSelector.validate!(input[:dash_fragment_selector], context: "#{context}[:dash_fragment_selector]") unless input[:dash_fragment_selector].nil?
        Hearth::Validator.validate!(input[:expires], ::Integer, context: "#{context}[:expires]")
        Hearth::Validator.validate!(input[:max_manifest_fragment_results], ::Integer, context: "#{context}[:max_manifest_fragment_results]")
      end
    end

    class GetDASHStreamingSessionURLOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDASHStreamingSessionURLOutput, context: context)
        Hearth::Validator.validate!(input[:dash_streaming_session_url], ::String, context: "#{context}[:dash_streaming_session_url]")
      end
    end

    class GetHLSStreamingSessionURLInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetHLSStreamingSessionURLInput, context: context)
        Hearth::Validator.validate!(input[:stream_name], ::String, context: "#{context}[:stream_name]")
        Hearth::Validator.validate!(input[:stream_arn], ::String, context: "#{context}[:stream_arn]")
        Hearth::Validator.validate!(input[:playback_mode], ::String, context: "#{context}[:playback_mode]")
        HLSFragmentSelector.validate!(input[:hls_fragment_selector], context: "#{context}[:hls_fragment_selector]") unless input[:hls_fragment_selector].nil?
        Hearth::Validator.validate!(input[:container_format], ::String, context: "#{context}[:container_format]")
        Hearth::Validator.validate!(input[:discontinuity_mode], ::String, context: "#{context}[:discontinuity_mode]")
        Hearth::Validator.validate!(input[:display_fragment_timestamp], ::String, context: "#{context}[:display_fragment_timestamp]")
        Hearth::Validator.validate!(input[:expires], ::Integer, context: "#{context}[:expires]")
        Hearth::Validator.validate!(input[:max_media_playlist_fragment_results], ::Integer, context: "#{context}[:max_media_playlist_fragment_results]")
      end
    end

    class GetHLSStreamingSessionURLOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetHLSStreamingSessionURLOutput, context: context)
        Hearth::Validator.validate!(input[:hls_streaming_session_url], ::String, context: "#{context}[:hls_streaming_session_url]")
      end
    end

    class GetImagesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetImagesInput, context: context)
        Hearth::Validator.validate!(input[:stream_name], ::String, context: "#{context}[:stream_name]")
        Hearth::Validator.validate!(input[:stream_arn], ::String, context: "#{context}[:stream_arn]")
        Hearth::Validator.validate!(input[:image_selector_type], ::String, context: "#{context}[:image_selector_type]")
        Hearth::Validator.validate!(input[:start_timestamp], ::Time, context: "#{context}[:start_timestamp]")
        Hearth::Validator.validate!(input[:end_timestamp], ::Time, context: "#{context}[:end_timestamp]")
        Hearth::Validator.validate!(input[:sampling_interval], ::Integer, context: "#{context}[:sampling_interval]")
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        FormatConfig.validate!(input[:format_config], context: "#{context}[:format_config]") unless input[:format_config].nil?
        Hearth::Validator.validate!(input[:width_pixels], ::Integer, context: "#{context}[:width_pixels]")
        Hearth::Validator.validate!(input[:height_pixels], ::Integer, context: "#{context}[:height_pixels]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetImagesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetImagesOutput, context: context)
        Images.validate!(input[:images], context: "#{context}[:images]") unless input[:images].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetMediaForFragmentListInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMediaForFragmentListInput, context: context)
        Hearth::Validator.validate!(input[:stream_name], ::String, context: "#{context}[:stream_name]")
        Hearth::Validator.validate!(input[:stream_arn], ::String, context: "#{context}[:stream_arn]")
        FragmentNumberList.validate!(input[:fragments], context: "#{context}[:fragments]") unless input[:fragments].nil?
      end
    end

    class GetMediaForFragmentListOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMediaForFragmentListOutput, context: context)
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
        unless input[:payload].respond_to?(:read) || input[:payload].respond_to?(:readpartial)
          raise ArgumentError, "Expected #{context} to be an IO like object, got #{input[:payload].class}"
        end
      end
    end

    class HLSFragmentSelector
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HLSFragmentSelector, context: context)
        Hearth::Validator.validate!(input[:fragment_selector_type], ::String, context: "#{context}[:fragment_selector_type]")
        HLSTimestampRange.validate!(input[:timestamp_range], context: "#{context}[:timestamp_range]") unless input[:timestamp_range].nil?
      end
    end

    class HLSTimestampRange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HLSTimestampRange, context: context)
        Hearth::Validator.validate!(input[:start_timestamp], ::Time, context: "#{context}[:start_timestamp]")
        Hearth::Validator.validate!(input[:end_timestamp], ::Time, context: "#{context}[:end_timestamp]")
      end
    end

    class Image
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Image, context: context)
        Hearth::Validator.validate!(input[:time_stamp], ::Time, context: "#{context}[:time_stamp]")
        Hearth::Validator.validate!(input[:error], ::String, context: "#{context}[:error]")
        Hearth::Validator.validate!(input[:image_content], ::String, context: "#{context}[:image_content]")
      end
    end

    class Images
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Image.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InvalidArgumentException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidArgumentException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidCodecPrivateDataException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidCodecPrivateDataException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidMediaFrameException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidMediaFrameException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListFragmentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFragmentsInput, context: context)
        Hearth::Validator.validate!(input[:stream_name], ::String, context: "#{context}[:stream_name]")
        Hearth::Validator.validate!(input[:stream_arn], ::String, context: "#{context}[:stream_arn]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        FragmentSelector.validate!(input[:fragment_selector], context: "#{context}[:fragment_selector]") unless input[:fragment_selector].nil?
      end
    end

    class ListFragmentsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFragmentsOutput, context: context)
        FragmentList.validate!(input[:fragments], context: "#{context}[:fragments]") unless input[:fragments].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class MissingCodecPrivateDataException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MissingCodecPrivateDataException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NoDataRetentionException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NoDataRetentionException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NotAuthorizedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotAuthorizedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TimestampRange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TimestampRange, context: context)
        Hearth::Validator.validate!(input[:start_timestamp], ::Time, context: "#{context}[:start_timestamp]")
        Hearth::Validator.validate!(input[:end_timestamp], ::Time, context: "#{context}[:end_timestamp]")
      end
    end

    class UnsupportedStreamMediaTypeException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnsupportedStreamMediaTypeException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

  end
end
