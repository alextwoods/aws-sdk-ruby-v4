# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::MediaTailor
  module Builders

    # Operation Builder for ConfigureLogsForPlaybackConfiguration
    class ConfigureLogsForPlaybackConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/configureLogs/playbackConfiguration')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['PercentEnabled'] = input[:percent_enabled] unless input[:percent_enabled].nil?
        data['PlaybackConfigurationName'] = input[:playback_configuration_name] unless input[:playback_configuration_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateChannel
    class CreateChannel
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:channel_name].to_s.empty?
          raise ArgumentError, "HTTP label :channel_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/channel/%<ChannelName>s',
            ChannelName: Hearth::HTTP.uri_escape(input[:channel_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['FillerSlate'] = Builders::SlateSource.build(input[:filler_slate]) unless input[:filler_slate].nil?
        data['Outputs'] = Builders::RequestOutputs.build(input[:outputs]) unless input[:outputs].nil?
        data['PlaybackMode'] = input[:playback_mode] unless input[:playback_mode].nil?
        data['tags'] = Builders::Map____mapOf__string.build(input[:tags]) unless input[:tags].nil?
        data['Tier'] = input[:tier] unless input[:tier].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for __mapOf__string
    class Map____mapOf__string
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Builder for RequestOutputs
    class RequestOutputs
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::RequestOutputItem.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for RequestOutputItem
    class RequestOutputItem
      def self.build(input)
        data = {}
        data['DashPlaylistSettings'] = Builders::DashPlaylistSettings.build(input[:dash_playlist_settings]) unless input[:dash_playlist_settings].nil?
        data['HlsPlaylistSettings'] = Builders::HlsPlaylistSettings.build(input[:hls_playlist_settings]) unless input[:hls_playlist_settings].nil?
        data['ManifestName'] = input[:manifest_name] unless input[:manifest_name].nil?
        data['SourceGroup'] = input[:source_group] unless input[:source_group].nil?
        data
      end
    end

    # Structure Builder for HlsPlaylistSettings
    class HlsPlaylistSettings
      def self.build(input)
        data = {}
        data['ManifestWindowSeconds'] = input[:manifest_window_seconds] unless input[:manifest_window_seconds].nil?
        data
      end
    end

    # Structure Builder for DashPlaylistSettings
    class DashPlaylistSettings
      def self.build(input)
        data = {}
        data['ManifestWindowSeconds'] = input[:manifest_window_seconds] unless input[:manifest_window_seconds].nil?
        data['MinBufferTimeSeconds'] = input[:min_buffer_time_seconds] unless input[:min_buffer_time_seconds].nil?
        data['MinUpdatePeriodSeconds'] = input[:min_update_period_seconds] unless input[:min_update_period_seconds].nil?
        data['SuggestedPresentationDelaySeconds'] = input[:suggested_presentation_delay_seconds] unless input[:suggested_presentation_delay_seconds].nil?
        data
      end
    end

    # Structure Builder for SlateSource
    class SlateSource
      def self.build(input)
        data = {}
        data['SourceLocationName'] = input[:source_location_name] unless input[:source_location_name].nil?
        data['VodSourceName'] = input[:vod_source_name] unless input[:vod_source_name].nil?
        data
      end
    end

    # Operation Builder for CreateLiveSource
    class CreateLiveSource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:live_source_name].to_s.empty?
          raise ArgumentError, "HTTP label :live_source_name cannot be nil or empty."
        end
        if input[:source_location_name].to_s.empty?
          raise ArgumentError, "HTTP label :source_location_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/sourceLocation/%<SourceLocationName>s/liveSource/%<LiveSourceName>s',
            LiveSourceName: Hearth::HTTP.uri_escape(input[:live_source_name].to_s),
            SourceLocationName: Hearth::HTTP.uri_escape(input[:source_location_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['HttpPackageConfigurations'] = Builders::HttpPackageConfigurations.build(input[:http_package_configurations]) unless input[:http_package_configurations].nil?
        data['tags'] = Builders::Map____mapOf__string.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for HttpPackageConfigurations
    class HttpPackageConfigurations
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::HttpPackageConfiguration.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for HttpPackageConfiguration
    class HttpPackageConfiguration
      def self.build(input)
        data = {}
        data['Path'] = input[:path] unless input[:path].nil?
        data['SourceGroup'] = input[:source_group] unless input[:source_group].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # Operation Builder for CreatePrefetchSchedule
    class CreatePrefetchSchedule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        if input[:playback_configuration_name].to_s.empty?
          raise ArgumentError, "HTTP label :playback_configuration_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/prefetchSchedule/%<PlaybackConfigurationName>s/%<Name>s',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s),
            PlaybackConfigurationName: Hearth::HTTP.uri_escape(input[:playback_configuration_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Consumption'] = Builders::PrefetchConsumption.build(input[:consumption]) unless input[:consumption].nil?
        data['Retrieval'] = Builders::PrefetchRetrieval.build(input[:retrieval]) unless input[:retrieval].nil?
        data['StreamId'] = input[:stream_id] unless input[:stream_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for PrefetchRetrieval
    class PrefetchRetrieval
      def self.build(input)
        data = {}
        data['DynamicVariables'] = Builders::Map____mapOf__string.build(input[:dynamic_variables]) unless input[:dynamic_variables].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:end_time]).to_i unless input[:end_time].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:start_time]).to_i unless input[:start_time].nil?
        data
      end
    end

    # Structure Builder for PrefetchConsumption
    class PrefetchConsumption
      def self.build(input)
        data = {}
        data['AvailMatchingCriteria'] = Builders::List____listOfAvailMatchingCriteria.build(input[:avail_matching_criteria]) unless input[:avail_matching_criteria].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:end_time]).to_i unless input[:end_time].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:start_time]).to_i unless input[:start_time].nil?
        data
      end
    end

    # List Builder for __listOfAvailMatchingCriteria
    class List____listOfAvailMatchingCriteria
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AvailMatchingCriteria.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AvailMatchingCriteria
    class AvailMatchingCriteria
      def self.build(input)
        data = {}
        data['DynamicVariable'] = input[:dynamic_variable] unless input[:dynamic_variable].nil?
        data['Operator'] = input[:operator] unless input[:operator].nil?
        data
      end
    end

    # Operation Builder for CreateProgram
    class CreateProgram
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:channel_name].to_s.empty?
          raise ArgumentError, "HTTP label :channel_name cannot be nil or empty."
        end
        if input[:program_name].to_s.empty?
          raise ArgumentError, "HTTP label :program_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/channel/%<ChannelName>s/program/%<ProgramName>s',
            ChannelName: Hearth::HTTP.uri_escape(input[:channel_name].to_s),
            ProgramName: Hearth::HTTP.uri_escape(input[:program_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['AdBreaks'] = Builders::List____listOfAdBreak.build(input[:ad_breaks]) unless input[:ad_breaks].nil?
        data['LiveSourceName'] = input[:live_source_name] unless input[:live_source_name].nil?
        data['ScheduleConfiguration'] = Builders::ScheduleConfiguration.build(input[:schedule_configuration]) unless input[:schedule_configuration].nil?
        data['SourceLocationName'] = input[:source_location_name] unless input[:source_location_name].nil?
        data['VodSourceName'] = input[:vod_source_name] unless input[:vod_source_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ScheduleConfiguration
    class ScheduleConfiguration
      def self.build(input)
        data = {}
        data['Transition'] = Builders::Transition.build(input[:transition]) unless input[:transition].nil?
        data
      end
    end

    # Structure Builder for Transition
    class Transition
      def self.build(input)
        data = {}
        data['DurationMillis'] = input[:duration_millis] unless input[:duration_millis].nil?
        data['RelativePosition'] = input[:relative_position] unless input[:relative_position].nil?
        data['RelativeProgram'] = input[:relative_program] unless input[:relative_program].nil?
        data['ScheduledStartTimeMillis'] = input[:scheduled_start_time_millis] unless input[:scheduled_start_time_millis].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # List Builder for __listOfAdBreak
    class List____listOfAdBreak
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AdBreak.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AdBreak
    class AdBreak
      def self.build(input)
        data = {}
        data['MessageType'] = input[:message_type] unless input[:message_type].nil?
        data['OffsetMillis'] = input[:offset_millis] unless input[:offset_millis].nil?
        data['Slate'] = Builders::SlateSource.build(input[:slate]) unless input[:slate].nil?
        data['SpliceInsertMessage'] = Builders::SpliceInsertMessage.build(input[:splice_insert_message]) unless input[:splice_insert_message].nil?
        data
      end
    end

    # Structure Builder for SpliceInsertMessage
    class SpliceInsertMessage
      def self.build(input)
        data = {}
        data['AvailNum'] = input[:avail_num] unless input[:avail_num].nil?
        data['AvailsExpected'] = input[:avails_expected] unless input[:avails_expected].nil?
        data['SpliceEventId'] = input[:splice_event_id] unless input[:splice_event_id].nil?
        data['UniqueProgramId'] = input[:unique_program_id] unless input[:unique_program_id].nil?
        data
      end
    end

    # Operation Builder for CreateSourceLocation
    class CreateSourceLocation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:source_location_name].to_s.empty?
          raise ArgumentError, "HTTP label :source_location_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/sourceLocation/%<SourceLocationName>s',
            SourceLocationName: Hearth::HTTP.uri_escape(input[:source_location_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['AccessConfiguration'] = Builders::AccessConfiguration.build(input[:access_configuration]) unless input[:access_configuration].nil?
        data['DefaultSegmentDeliveryConfiguration'] = Builders::DefaultSegmentDeliveryConfiguration.build(input[:default_segment_delivery_configuration]) unless input[:default_segment_delivery_configuration].nil?
        data['HttpConfiguration'] = Builders::HttpConfiguration.build(input[:http_configuration]) unless input[:http_configuration].nil?
        data['SegmentDeliveryConfigurations'] = Builders::List____listOfSegmentDeliveryConfiguration.build(input[:segment_delivery_configurations]) unless input[:segment_delivery_configurations].nil?
        data['tags'] = Builders::Map____mapOf__string.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for __listOfSegmentDeliveryConfiguration
    class List____listOfSegmentDeliveryConfiguration
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::SegmentDeliveryConfiguration.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SegmentDeliveryConfiguration
    class SegmentDeliveryConfiguration
      def self.build(input)
        data = {}
        data['BaseUrl'] = input[:base_url] unless input[:base_url].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data
      end
    end

    # Structure Builder for HttpConfiguration
    class HttpConfiguration
      def self.build(input)
        data = {}
        data['BaseUrl'] = input[:base_url] unless input[:base_url].nil?
        data
      end
    end

    # Structure Builder for DefaultSegmentDeliveryConfiguration
    class DefaultSegmentDeliveryConfiguration
      def self.build(input)
        data = {}
        data['BaseUrl'] = input[:base_url] unless input[:base_url].nil?
        data
      end
    end

    # Structure Builder for AccessConfiguration
    class AccessConfiguration
      def self.build(input)
        data = {}
        data['AccessType'] = input[:access_type] unless input[:access_type].nil?
        data['SecretsManagerAccessTokenConfiguration'] = Builders::SecretsManagerAccessTokenConfiguration.build(input[:secrets_manager_access_token_configuration]) unless input[:secrets_manager_access_token_configuration].nil?
        data
      end
    end

    # Structure Builder for SecretsManagerAccessTokenConfiguration
    class SecretsManagerAccessTokenConfiguration
      def self.build(input)
        data = {}
        data['HeaderName'] = input[:header_name] unless input[:header_name].nil?
        data['SecretArn'] = input[:secret_arn] unless input[:secret_arn].nil?
        data['SecretStringKey'] = input[:secret_string_key] unless input[:secret_string_key].nil?
        data
      end
    end

    # Operation Builder for CreateVodSource
    class CreateVodSource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:source_location_name].to_s.empty?
          raise ArgumentError, "HTTP label :source_location_name cannot be nil or empty."
        end
        if input[:vod_source_name].to_s.empty?
          raise ArgumentError, "HTTP label :vod_source_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/sourceLocation/%<SourceLocationName>s/vodSource/%<VodSourceName>s',
            SourceLocationName: Hearth::HTTP.uri_escape(input[:source_location_name].to_s),
            VodSourceName: Hearth::HTTP.uri_escape(input[:vod_source_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['HttpPackageConfigurations'] = Builders::HttpPackageConfigurations.build(input[:http_package_configurations]) unless input[:http_package_configurations].nil?
        data['tags'] = Builders::Map____mapOf__string.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteChannel
    class DeleteChannel
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:channel_name].to_s.empty?
          raise ArgumentError, "HTTP label :channel_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/channel/%<ChannelName>s',
            ChannelName: Hearth::HTTP.uri_escape(input[:channel_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteChannelPolicy
    class DeleteChannelPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:channel_name].to_s.empty?
          raise ArgumentError, "HTTP label :channel_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/channel/%<ChannelName>s/policy',
            ChannelName: Hearth::HTTP.uri_escape(input[:channel_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteLiveSource
    class DeleteLiveSource
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:live_source_name].to_s.empty?
          raise ArgumentError, "HTTP label :live_source_name cannot be nil or empty."
        end
        if input[:source_location_name].to_s.empty?
          raise ArgumentError, "HTTP label :source_location_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/sourceLocation/%<SourceLocationName>s/liveSource/%<LiveSourceName>s',
            LiveSourceName: Hearth::HTTP.uri_escape(input[:live_source_name].to_s),
            SourceLocationName: Hearth::HTTP.uri_escape(input[:source_location_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeletePlaybackConfiguration
    class DeletePlaybackConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/playbackConfiguration/%<Name>s',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeletePrefetchSchedule
    class DeletePrefetchSchedule
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        if input[:playback_configuration_name].to_s.empty?
          raise ArgumentError, "HTTP label :playback_configuration_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/prefetchSchedule/%<PlaybackConfigurationName>s/%<Name>s',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s),
            PlaybackConfigurationName: Hearth::HTTP.uri_escape(input[:playback_configuration_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteProgram
    class DeleteProgram
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:channel_name].to_s.empty?
          raise ArgumentError, "HTTP label :channel_name cannot be nil or empty."
        end
        if input[:program_name].to_s.empty?
          raise ArgumentError, "HTTP label :program_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/channel/%<ChannelName>s/program/%<ProgramName>s',
            ChannelName: Hearth::HTTP.uri_escape(input[:channel_name].to_s),
            ProgramName: Hearth::HTTP.uri_escape(input[:program_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteSourceLocation
    class DeleteSourceLocation
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:source_location_name].to_s.empty?
          raise ArgumentError, "HTTP label :source_location_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/sourceLocation/%<SourceLocationName>s',
            SourceLocationName: Hearth::HTTP.uri_escape(input[:source_location_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteVodSource
    class DeleteVodSource
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:source_location_name].to_s.empty?
          raise ArgumentError, "HTTP label :source_location_name cannot be nil or empty."
        end
        if input[:vod_source_name].to_s.empty?
          raise ArgumentError, "HTTP label :vod_source_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/sourceLocation/%<SourceLocationName>s/vodSource/%<VodSourceName>s',
            SourceLocationName: Hearth::HTTP.uri_escape(input[:source_location_name].to_s),
            VodSourceName: Hearth::HTTP.uri_escape(input[:vod_source_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeChannel
    class DescribeChannel
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:channel_name].to_s.empty?
          raise ArgumentError, "HTTP label :channel_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/channel/%<ChannelName>s',
            ChannelName: Hearth::HTTP.uri_escape(input[:channel_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeLiveSource
    class DescribeLiveSource
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:live_source_name].to_s.empty?
          raise ArgumentError, "HTTP label :live_source_name cannot be nil or empty."
        end
        if input[:source_location_name].to_s.empty?
          raise ArgumentError, "HTTP label :source_location_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/sourceLocation/%<SourceLocationName>s/liveSource/%<LiveSourceName>s',
            LiveSourceName: Hearth::HTTP.uri_escape(input[:live_source_name].to_s),
            SourceLocationName: Hearth::HTTP.uri_escape(input[:source_location_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeProgram
    class DescribeProgram
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:channel_name].to_s.empty?
          raise ArgumentError, "HTTP label :channel_name cannot be nil or empty."
        end
        if input[:program_name].to_s.empty?
          raise ArgumentError, "HTTP label :program_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/channel/%<ChannelName>s/program/%<ProgramName>s',
            ChannelName: Hearth::HTTP.uri_escape(input[:channel_name].to_s),
            ProgramName: Hearth::HTTP.uri_escape(input[:program_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeSourceLocation
    class DescribeSourceLocation
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:source_location_name].to_s.empty?
          raise ArgumentError, "HTTP label :source_location_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/sourceLocation/%<SourceLocationName>s',
            SourceLocationName: Hearth::HTTP.uri_escape(input[:source_location_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeVodSource
    class DescribeVodSource
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:source_location_name].to_s.empty?
          raise ArgumentError, "HTTP label :source_location_name cannot be nil or empty."
        end
        if input[:vod_source_name].to_s.empty?
          raise ArgumentError, "HTTP label :vod_source_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/sourceLocation/%<SourceLocationName>s/vodSource/%<VodSourceName>s',
            SourceLocationName: Hearth::HTTP.uri_escape(input[:source_location_name].to_s),
            VodSourceName: Hearth::HTTP.uri_escape(input[:vod_source_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetChannelPolicy
    class GetChannelPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:channel_name].to_s.empty?
          raise ArgumentError, "HTTP label :channel_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/channel/%<ChannelName>s/policy',
            ChannelName: Hearth::HTTP.uri_escape(input[:channel_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetChannelSchedule
    class GetChannelSchedule
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:channel_name].to_s.empty?
          raise ArgumentError, "HTTP label :channel_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/channel/%<ChannelName>s/schedule',
            ChannelName: Hearth::HTTP.uri_escape(input[:channel_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['durationMinutes'] = input[:duration_minutes].to_s unless input[:duration_minutes].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetPlaybackConfiguration
    class GetPlaybackConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/playbackConfiguration/%<Name>s',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetPrefetchSchedule
    class GetPrefetchSchedule
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        if input[:playback_configuration_name].to_s.empty?
          raise ArgumentError, "HTTP label :playback_configuration_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/prefetchSchedule/%<PlaybackConfigurationName>s/%<Name>s',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s),
            PlaybackConfigurationName: Hearth::HTTP.uri_escape(input[:playback_configuration_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListAlerts
    class ListAlerts
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/alerts')
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['resourceArn'] = input[:resource_arn].to_s unless input[:resource_arn].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListChannels
    class ListChannels
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/channels')
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListLiveSources
    class ListLiveSources
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:source_location_name].to_s.empty?
          raise ArgumentError, "HTTP label :source_location_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/sourceLocation/%<SourceLocationName>s/liveSources',
            SourceLocationName: Hearth::HTTP.uri_escape(input[:source_location_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListPlaybackConfigurations
    class ListPlaybackConfigurations
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/playbackConfigurations')
        params = Hearth::Query::ParamList.new
        params['MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListPrefetchSchedules
    class ListPrefetchSchedules
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:playback_configuration_name].to_s.empty?
          raise ArgumentError, "HTTP label :playback_configuration_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/prefetchSchedule/%<PlaybackConfigurationName>s',
            PlaybackConfigurationName: Hearth::HTTP.uri_escape(input[:playback_configuration_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['StreamId'] = input[:stream_id] unless input[:stream_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListSourceLocations
    class ListSourceLocations
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/sourceLocations')
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListVodSources
    class ListVodSources
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:source_location_name].to_s.empty?
          raise ArgumentError, "HTTP label :source_location_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/sourceLocation/%<SourceLocationName>s/vodSources',
            SourceLocationName: Hearth::HTTP.uri_escape(input[:source_location_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for PutChannelPolicy
    class PutChannelPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:channel_name].to_s.empty?
          raise ArgumentError, "HTTP label :channel_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/channel/%<ChannelName>s/policy',
            ChannelName: Hearth::HTTP.uri_escape(input[:channel_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Policy'] = input[:policy] unless input[:policy].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutPlaybackConfiguration
    class PutPlaybackConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/playbackConfiguration')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['AdDecisionServerUrl'] = input[:ad_decision_server_url] unless input[:ad_decision_server_url].nil?
        data['AvailSuppression'] = Builders::AvailSuppression.build(input[:avail_suppression]) unless input[:avail_suppression].nil?
        data['Bumper'] = Builders::Bumper.build(input[:bumper]) unless input[:bumper].nil?
        data['CdnConfiguration'] = Builders::CdnConfiguration.build(input[:cdn_configuration]) unless input[:cdn_configuration].nil?
        data['ConfigurationAliases'] = Builders::ConfigurationAliasesRequest.build(input[:configuration_aliases]) unless input[:configuration_aliases].nil?
        data['DashConfiguration'] = Builders::DashConfigurationForPut.build(input[:dash_configuration]) unless input[:dash_configuration].nil?
        data['LivePreRollConfiguration'] = Builders::LivePreRollConfiguration.build(input[:live_pre_roll_configuration]) unless input[:live_pre_roll_configuration].nil?
        data['ManifestProcessingRules'] = Builders::ManifestProcessingRules.build(input[:manifest_processing_rules]) unless input[:manifest_processing_rules].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['PersonalizationThresholdSeconds'] = input[:personalization_threshold_seconds] unless input[:personalization_threshold_seconds].nil?
        data['SlateAdUrl'] = input[:slate_ad_url] unless input[:slate_ad_url].nil?
        data['tags'] = Builders::Map____mapOf__string.build(input[:tags]) unless input[:tags].nil?
        data['TranscodeProfileName'] = input[:transcode_profile_name] unless input[:transcode_profile_name].nil?
        data['VideoContentSourceUrl'] = input[:video_content_source_url] unless input[:video_content_source_url].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ManifestProcessingRules
    class ManifestProcessingRules
      def self.build(input)
        data = {}
        data['AdMarkerPassthrough'] = Builders::AdMarkerPassthrough.build(input[:ad_marker_passthrough]) unless input[:ad_marker_passthrough].nil?
        data
      end
    end

    # Structure Builder for AdMarkerPassthrough
    class AdMarkerPassthrough
      def self.build(input)
        data = {}
        data['Enabled'] = input[:enabled] unless input[:enabled].nil?
        data
      end
    end

    # Structure Builder for LivePreRollConfiguration
    class LivePreRollConfiguration
      def self.build(input)
        data = {}
        data['AdDecisionServerUrl'] = input[:ad_decision_server_url] unless input[:ad_decision_server_url].nil?
        data['MaxDurationSeconds'] = input[:max_duration_seconds] unless input[:max_duration_seconds].nil?
        data
      end
    end

    # Structure Builder for DashConfigurationForPut
    class DashConfigurationForPut
      def self.build(input)
        data = {}
        data['MpdLocation'] = input[:mpd_location] unless input[:mpd_location].nil?
        data['OriginManifestType'] = input[:origin_manifest_type] unless input[:origin_manifest_type].nil?
        data
      end
    end

    # Map Builder for ConfigurationAliasesRequest
    class ConfigurationAliasesRequest
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::Map____mapOf__string.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for CdnConfiguration
    class CdnConfiguration
      def self.build(input)
        data = {}
        data['AdSegmentUrlPrefix'] = input[:ad_segment_url_prefix] unless input[:ad_segment_url_prefix].nil?
        data['ContentSegmentUrlPrefix'] = input[:content_segment_url_prefix] unless input[:content_segment_url_prefix].nil?
        data
      end
    end

    # Structure Builder for Bumper
    class Bumper
      def self.build(input)
        data = {}
        data['EndUrl'] = input[:end_url] unless input[:end_url].nil?
        data['StartUrl'] = input[:start_url] unless input[:start_url].nil?
        data
      end
    end

    # Structure Builder for AvailSuppression
    class AvailSuppression
      def self.build(input)
        data = {}
        data['Mode'] = input[:mode] unless input[:mode].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for StartChannel
    class StartChannel
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:channel_name].to_s.empty?
          raise ArgumentError, "HTTP label :channel_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/channel/%<ChannelName>s/start',
            ChannelName: Hearth::HTTP.uri_escape(input[:channel_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for StopChannel
    class StopChannel
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:channel_name].to_s.empty?
          raise ArgumentError, "HTTP label :channel_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/channel/%<ChannelName>s/stop',
            ChannelName: Hearth::HTTP.uri_escape(input[:channel_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['tags'] = Builders::Map____mapOf__string.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        unless input[:tag_keys].nil? || input[:tag_keys].empty?
          params['tagKeys'] = input[:tag_keys].map do |value|
            value.to_s unless value.nil?
          end
        end
        http_req.append_query_params(params)
      end
    end

    # List Builder for __listOf__string
    class List____listOf__string
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateChannel
    class UpdateChannel
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:channel_name].to_s.empty?
          raise ArgumentError, "HTTP label :channel_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/channel/%<ChannelName>s',
            ChannelName: Hearth::HTTP.uri_escape(input[:channel_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['FillerSlate'] = Builders::SlateSource.build(input[:filler_slate]) unless input[:filler_slate].nil?
        data['Outputs'] = Builders::RequestOutputs.build(input[:outputs]) unless input[:outputs].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateLiveSource
    class UpdateLiveSource
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:live_source_name].to_s.empty?
          raise ArgumentError, "HTTP label :live_source_name cannot be nil or empty."
        end
        if input[:source_location_name].to_s.empty?
          raise ArgumentError, "HTTP label :source_location_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/sourceLocation/%<SourceLocationName>s/liveSource/%<LiveSourceName>s',
            LiveSourceName: Hearth::HTTP.uri_escape(input[:live_source_name].to_s),
            SourceLocationName: Hearth::HTTP.uri_escape(input[:source_location_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['HttpPackageConfigurations'] = Builders::HttpPackageConfigurations.build(input[:http_package_configurations]) unless input[:http_package_configurations].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateSourceLocation
    class UpdateSourceLocation
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:source_location_name].to_s.empty?
          raise ArgumentError, "HTTP label :source_location_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/sourceLocation/%<SourceLocationName>s',
            SourceLocationName: Hearth::HTTP.uri_escape(input[:source_location_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['AccessConfiguration'] = Builders::AccessConfiguration.build(input[:access_configuration]) unless input[:access_configuration].nil?
        data['DefaultSegmentDeliveryConfiguration'] = Builders::DefaultSegmentDeliveryConfiguration.build(input[:default_segment_delivery_configuration]) unless input[:default_segment_delivery_configuration].nil?
        data['HttpConfiguration'] = Builders::HttpConfiguration.build(input[:http_configuration]) unless input[:http_configuration].nil?
        data['SegmentDeliveryConfigurations'] = Builders::List____listOfSegmentDeliveryConfiguration.build(input[:segment_delivery_configurations]) unless input[:segment_delivery_configurations].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateVodSource
    class UpdateVodSource
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:source_location_name].to_s.empty?
          raise ArgumentError, "HTTP label :source_location_name cannot be nil or empty."
        end
        if input[:vod_source_name].to_s.empty?
          raise ArgumentError, "HTTP label :vod_source_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/sourceLocation/%<SourceLocationName>s/vodSource/%<VodSourceName>s',
            SourceLocationName: Hearth::HTTP.uri_escape(input[:source_location_name].to_s),
            VodSourceName: Hearth::HTTP.uri_escape(input[:vod_source_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['HttpPackageConfigurations'] = Builders::HttpPackageConfigurations.build(input[:http_package_configurations]) unless input[:http_package_configurations].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
