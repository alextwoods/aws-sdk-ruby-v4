# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::KinesisVideoArchivedMedia
  module Builders

    # Operation Builder for GetClip
    class GetClip
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/getClip')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['StreamName'] = input[:stream_name] unless input[:stream_name].nil?
        data['StreamARN'] = input[:stream_arn] unless input[:stream_arn].nil?
        data['ClipFragmentSelector'] = Builders::ClipFragmentSelector.build(input[:clip_fragment_selector]) unless input[:clip_fragment_selector].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ClipFragmentSelector
    class ClipFragmentSelector
      def self.build(input)
        data = {}
        data['FragmentSelectorType'] = input[:fragment_selector_type] unless input[:fragment_selector_type].nil?
        data['TimestampRange'] = Builders::ClipTimestampRange.build(input[:timestamp_range]) unless input[:timestamp_range].nil?
        data
      end
    end

    # Structure Builder for ClipTimestampRange
    class ClipTimestampRange
      def self.build(input)
        data = {}
        data['StartTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(input[:start_timestamp]).to_i unless input[:start_timestamp].nil?
        data['EndTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(input[:end_timestamp]).to_i unless input[:end_timestamp].nil?
        data
      end
    end

    # Operation Builder for GetDASHStreamingSessionURL
    class GetDASHStreamingSessionURL
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/getDASHStreamingSessionURL')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['StreamName'] = input[:stream_name] unless input[:stream_name].nil?
        data['StreamARN'] = input[:stream_arn] unless input[:stream_arn].nil?
        data['PlaybackMode'] = input[:playback_mode] unless input[:playback_mode].nil?
        data['DisplayFragmentTimestamp'] = input[:display_fragment_timestamp] unless input[:display_fragment_timestamp].nil?
        data['DisplayFragmentNumber'] = input[:display_fragment_number] unless input[:display_fragment_number].nil?
        data['DASHFragmentSelector'] = Builders::DASHFragmentSelector.build(input[:dash_fragment_selector]) unless input[:dash_fragment_selector].nil?
        data['Expires'] = input[:expires] unless input[:expires].nil?
        data['MaxManifestFragmentResults'] = input[:max_manifest_fragment_results] unless input[:max_manifest_fragment_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for DASHFragmentSelector
    class DASHFragmentSelector
      def self.build(input)
        data = {}
        data['FragmentSelectorType'] = input[:fragment_selector_type] unless input[:fragment_selector_type].nil?
        data['TimestampRange'] = Builders::DASHTimestampRange.build(input[:timestamp_range]) unless input[:timestamp_range].nil?
        data
      end
    end

    # Structure Builder for DASHTimestampRange
    class DASHTimestampRange
      def self.build(input)
        data = {}
        data['StartTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(input[:start_timestamp]).to_i unless input[:start_timestamp].nil?
        data['EndTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(input[:end_timestamp]).to_i unless input[:end_timestamp].nil?
        data
      end
    end

    # Operation Builder for GetHLSStreamingSessionURL
    class GetHLSStreamingSessionURL
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/getHLSStreamingSessionURL')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['StreamName'] = input[:stream_name] unless input[:stream_name].nil?
        data['StreamARN'] = input[:stream_arn] unless input[:stream_arn].nil?
        data['PlaybackMode'] = input[:playback_mode] unless input[:playback_mode].nil?
        data['HLSFragmentSelector'] = Builders::HLSFragmentSelector.build(input[:hls_fragment_selector]) unless input[:hls_fragment_selector].nil?
        data['ContainerFormat'] = input[:container_format] unless input[:container_format].nil?
        data['DiscontinuityMode'] = input[:discontinuity_mode] unless input[:discontinuity_mode].nil?
        data['DisplayFragmentTimestamp'] = input[:display_fragment_timestamp] unless input[:display_fragment_timestamp].nil?
        data['Expires'] = input[:expires] unless input[:expires].nil?
        data['MaxMediaPlaylistFragmentResults'] = input[:max_media_playlist_fragment_results] unless input[:max_media_playlist_fragment_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for HLSFragmentSelector
    class HLSFragmentSelector
      def self.build(input)
        data = {}
        data['FragmentSelectorType'] = input[:fragment_selector_type] unless input[:fragment_selector_type].nil?
        data['TimestampRange'] = Builders::HLSTimestampRange.build(input[:timestamp_range]) unless input[:timestamp_range].nil?
        data
      end
    end

    # Structure Builder for HLSTimestampRange
    class HLSTimestampRange
      def self.build(input)
        data = {}
        data['StartTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(input[:start_timestamp]).to_i unless input[:start_timestamp].nil?
        data['EndTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(input[:end_timestamp]).to_i unless input[:end_timestamp].nil?
        data
      end
    end

    # Operation Builder for GetImages
    class GetImages
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/getImages')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['StreamName'] = input[:stream_name] unless input[:stream_name].nil?
        data['StreamARN'] = input[:stream_arn] unless input[:stream_arn].nil?
        data['ImageSelectorType'] = input[:image_selector_type] unless input[:image_selector_type].nil?
        data['StartTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(input[:start_timestamp]).to_i unless input[:start_timestamp].nil?
        data['EndTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(input[:end_timestamp]).to_i unless input[:end_timestamp].nil?
        data['SamplingInterval'] = input[:sampling_interval] unless input[:sampling_interval].nil?
        data['Format'] = input[:format] unless input[:format].nil?
        data['FormatConfig'] = Builders::FormatConfig.build(input[:format_config]) unless input[:format_config].nil?
        data['WidthPixels'] = input[:width_pixels] unless input[:width_pixels].nil?
        data['HeightPixels'] = input[:height_pixels] unless input[:height_pixels].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for FormatConfig
    class FormatConfig
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for GetMediaForFragmentList
    class GetMediaForFragmentList
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/getMediaForFragmentList')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['StreamName'] = input[:stream_name] unless input[:stream_name].nil?
        data['StreamARN'] = input[:stream_arn] unless input[:stream_arn].nil?
        data['Fragments'] = Builders::FragmentNumberList.build(input[:fragments]) unless input[:fragments].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for FragmentNumberList
    class FragmentNumberList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListFragments
    class ListFragments
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/listFragments')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['StreamName'] = input[:stream_name] unless input[:stream_name].nil?
        data['StreamARN'] = input[:stream_arn] unless input[:stream_arn].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['FragmentSelector'] = Builders::FragmentSelector.build(input[:fragment_selector]) unless input[:fragment_selector].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for FragmentSelector
    class FragmentSelector
      def self.build(input)
        data = {}
        data['FragmentSelectorType'] = input[:fragment_selector_type] unless input[:fragment_selector_type].nil?
        data['TimestampRange'] = Builders::TimestampRange.build(input[:timestamp_range]) unless input[:timestamp_range].nil?
        data
      end
    end

    # Structure Builder for TimestampRange
    class TimestampRange
      def self.build(input)
        data = {}
        data['StartTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(input[:start_timestamp]).to_i unless input[:start_timestamp].nil?
        data['EndTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(input[:end_timestamp]).to_i unless input[:end_timestamp].nil?
        data
      end
    end
  end
end
