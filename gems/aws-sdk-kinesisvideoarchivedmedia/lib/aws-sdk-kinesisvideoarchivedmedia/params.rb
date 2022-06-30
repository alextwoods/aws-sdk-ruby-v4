# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::KinesisVideoArchivedMedia
  module Params

    module ClientLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClientLimitExceededException, context: context)
        type = Types::ClientLimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module ClipFragmentSelector
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClipFragmentSelector, context: context)
        type = Types::ClipFragmentSelector.new
        type.fragment_selector_type = params[:fragment_selector_type]
        type.timestamp_range = ClipTimestampRange.build(params[:timestamp_range], context: "#{context}[:timestamp_range]") unless params[:timestamp_range].nil?
        type
      end
    end

    module ClipTimestampRange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClipTimestampRange, context: context)
        type = Types::ClipTimestampRange.new
        type.start_timestamp = params[:start_timestamp]
        type.end_timestamp = params[:end_timestamp]
        type
      end
    end

    module DASHFragmentSelector
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DASHFragmentSelector, context: context)
        type = Types::DASHFragmentSelector.new
        type.fragment_selector_type = params[:fragment_selector_type]
        type.timestamp_range = DASHTimestampRange.build(params[:timestamp_range], context: "#{context}[:timestamp_range]") unless params[:timestamp_range].nil?
        type
      end
    end

    module DASHTimestampRange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DASHTimestampRange, context: context)
        type = Types::DASHTimestampRange.new
        type.start_timestamp = params[:start_timestamp]
        type.end_timestamp = params[:end_timestamp]
        type
      end
    end

    module FormatConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module Fragment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Fragment, context: context)
        type = Types::Fragment.new
        type.fragment_number = params[:fragment_number]
        type.fragment_size_in_bytes = params[:fragment_size_in_bytes]
        type.producer_timestamp = params[:producer_timestamp]
        type.server_timestamp = params[:server_timestamp]
        type.fragment_length_in_milliseconds = params[:fragment_length_in_milliseconds]
        type
      end
    end

    module FragmentList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Fragment.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FragmentNumberList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module FragmentSelector
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FragmentSelector, context: context)
        type = Types::FragmentSelector.new
        type.fragment_selector_type = params[:fragment_selector_type]
        type.timestamp_range = TimestampRange.build(params[:timestamp_range], context: "#{context}[:timestamp_range]") unless params[:timestamp_range].nil?
        type
      end
    end

    module GetClipInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetClipInput, context: context)
        type = Types::GetClipInput.new
        type.stream_name = params[:stream_name]
        type.stream_arn = params[:stream_arn]
        type.clip_fragment_selector = ClipFragmentSelector.build(params[:clip_fragment_selector], context: "#{context}[:clip_fragment_selector]") unless params[:clip_fragment_selector].nil?
        type
      end
    end

    module GetClipOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetClipOutput, context: context)
        type = Types::GetClipOutput.new
        type.content_type = params[:content_type]
        io = params[:payload] || StringIO.new
        unless io.respond_to?(:read) || io.respond_to?(:readpartial)
          io = StringIO.new(io)
        end
        type.payload = io
        type
      end
    end

    module GetDASHStreamingSessionURLInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDASHStreamingSessionURLInput, context: context)
        type = Types::GetDASHStreamingSessionURLInput.new
        type.stream_name = params[:stream_name]
        type.stream_arn = params[:stream_arn]
        type.playback_mode = params[:playback_mode]
        type.display_fragment_timestamp = params[:display_fragment_timestamp]
        type.display_fragment_number = params[:display_fragment_number]
        type.dash_fragment_selector = DASHFragmentSelector.build(params[:dash_fragment_selector], context: "#{context}[:dash_fragment_selector]") unless params[:dash_fragment_selector].nil?
        type.expires = params[:expires]
        type.max_manifest_fragment_results = params[:max_manifest_fragment_results]
        type
      end
    end

    module GetDASHStreamingSessionURLOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDASHStreamingSessionURLOutput, context: context)
        type = Types::GetDASHStreamingSessionURLOutput.new
        type.dash_streaming_session_url = params[:dash_streaming_session_url]
        type
      end
    end

    module GetHLSStreamingSessionURLInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetHLSStreamingSessionURLInput, context: context)
        type = Types::GetHLSStreamingSessionURLInput.new
        type.stream_name = params[:stream_name]
        type.stream_arn = params[:stream_arn]
        type.playback_mode = params[:playback_mode]
        type.hls_fragment_selector = HLSFragmentSelector.build(params[:hls_fragment_selector], context: "#{context}[:hls_fragment_selector]") unless params[:hls_fragment_selector].nil?
        type.container_format = params[:container_format]
        type.discontinuity_mode = params[:discontinuity_mode]
        type.display_fragment_timestamp = params[:display_fragment_timestamp]
        type.expires = params[:expires]
        type.max_media_playlist_fragment_results = params[:max_media_playlist_fragment_results]
        type
      end
    end

    module GetHLSStreamingSessionURLOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetHLSStreamingSessionURLOutput, context: context)
        type = Types::GetHLSStreamingSessionURLOutput.new
        type.hls_streaming_session_url = params[:hls_streaming_session_url]
        type
      end
    end

    module GetImagesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetImagesInput, context: context)
        type = Types::GetImagesInput.new
        type.stream_name = params[:stream_name]
        type.stream_arn = params[:stream_arn]
        type.image_selector_type = params[:image_selector_type]
        type.start_timestamp = params[:start_timestamp]
        type.end_timestamp = params[:end_timestamp]
        type.sampling_interval = params[:sampling_interval]
        type.format = params[:format]
        type.format_config = FormatConfig.build(params[:format_config], context: "#{context}[:format_config]") unless params[:format_config].nil?
        type.width_pixels = params[:width_pixels]
        type.height_pixels = params[:height_pixels]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetImagesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetImagesOutput, context: context)
        type = Types::GetImagesOutput.new
        type.images = Images.build(params[:images], context: "#{context}[:images]") unless params[:images].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetMediaForFragmentListInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMediaForFragmentListInput, context: context)
        type = Types::GetMediaForFragmentListInput.new
        type.stream_name = params[:stream_name]
        type.stream_arn = params[:stream_arn]
        type.fragments = FragmentNumberList.build(params[:fragments], context: "#{context}[:fragments]") unless params[:fragments].nil?
        type
      end
    end

    module GetMediaForFragmentListOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMediaForFragmentListOutput, context: context)
        type = Types::GetMediaForFragmentListOutput.new
        type.content_type = params[:content_type]
        io = params[:payload] || StringIO.new
        unless io.respond_to?(:read) || io.respond_to?(:readpartial)
          io = StringIO.new(io)
        end
        type.payload = io
        type
      end
    end

    module HLSFragmentSelector
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HLSFragmentSelector, context: context)
        type = Types::HLSFragmentSelector.new
        type.fragment_selector_type = params[:fragment_selector_type]
        type.timestamp_range = HLSTimestampRange.build(params[:timestamp_range], context: "#{context}[:timestamp_range]") unless params[:timestamp_range].nil?
        type
      end
    end

    module HLSTimestampRange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HLSTimestampRange, context: context)
        type = Types::HLSTimestampRange.new
        type.start_timestamp = params[:start_timestamp]
        type.end_timestamp = params[:end_timestamp]
        type
      end
    end

    module Image
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Image, context: context)
        type = Types::Image.new
        type.time_stamp = params[:time_stamp]
        type.error = params[:error]
        type.image_content = params[:image_content]
        type
      end
    end

    module Images
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Image.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InvalidArgumentException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidArgumentException, context: context)
        type = Types::InvalidArgumentException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidCodecPrivateDataException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidCodecPrivateDataException, context: context)
        type = Types::InvalidCodecPrivateDataException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidMediaFrameException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidMediaFrameException, context: context)
        type = Types::InvalidMediaFrameException.new
        type.message = params[:message]
        type
      end
    end

    module ListFragmentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFragmentsInput, context: context)
        type = Types::ListFragmentsInput.new
        type.stream_name = params[:stream_name]
        type.stream_arn = params[:stream_arn]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.fragment_selector = FragmentSelector.build(params[:fragment_selector], context: "#{context}[:fragment_selector]") unless params[:fragment_selector].nil?
        type
      end
    end

    module ListFragmentsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFragmentsOutput, context: context)
        type = Types::ListFragmentsOutput.new
        type.fragments = FragmentList.build(params[:fragments], context: "#{context}[:fragments]") unless params[:fragments].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module MissingCodecPrivateDataException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MissingCodecPrivateDataException, context: context)
        type = Types::MissingCodecPrivateDataException.new
        type.message = params[:message]
        type
      end
    end

    module NoDataRetentionException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NoDataRetentionException, context: context)
        type = Types::NoDataRetentionException.new
        type.message = params[:message]
        type
      end
    end

    module NotAuthorizedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotAuthorizedException, context: context)
        type = Types::NotAuthorizedException.new
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

    module TimestampRange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TimestampRange, context: context)
        type = Types::TimestampRange.new
        type.start_timestamp = params[:start_timestamp]
        type.end_timestamp = params[:end_timestamp]
        type
      end
    end

    module UnsupportedStreamMediaTypeException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnsupportedStreamMediaTypeException, context: context)
        type = Types::UnsupportedStreamMediaTypeException.new
        type.message = params[:message]
        type
      end
    end

  end
end
