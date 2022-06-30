# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::MediaTailor
  module Parsers

    # Operation Parser for ConfigureLogsForPlaybackConfiguration
    class ConfigureLogsForPlaybackConfiguration
      def self.parse(http_resp)
        data = Types::ConfigureLogsForPlaybackConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.percent_enabled = map['PercentEnabled']
        data.playback_configuration_name = map['PlaybackConfigurationName']
        data
      end
    end

    # Operation Parser for CreateChannel
    class CreateChannel
      def self.parse(http_resp)
        data = Types::CreateChannelOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.channel_name = map['ChannelName']
        data.channel_state = map['ChannelState']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.filler_slate = (Parsers::SlateSource.parse(map['FillerSlate']) unless map['FillerSlate'].nil?)
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.outputs = (Parsers::ResponseOutputs.parse(map['Outputs']) unless map['Outputs'].nil?)
        data.playback_mode = map['PlaybackMode']
        data.tags = (Parsers::Map____mapOf__string.parse(map['tags']) unless map['tags'].nil?)
        data.tier = map['Tier']
        data
      end
    end

    class Map____mapOf__string
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class ResponseOutputs
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ResponseOutputItem.parse(value) unless value.nil?
        end
        data
      end
    end

    class ResponseOutputItem
      def self.parse(map)
        data = Types::ResponseOutputItem.new
        data.dash_playlist_settings = (Parsers::DashPlaylistSettings.parse(map['DashPlaylistSettings']) unless map['DashPlaylistSettings'].nil?)
        data.hls_playlist_settings = (Parsers::HlsPlaylistSettings.parse(map['HlsPlaylistSettings']) unless map['HlsPlaylistSettings'].nil?)
        data.manifest_name = map['ManifestName']
        data.playback_url = map['PlaybackUrl']
        data.source_group = map['SourceGroup']
        return data
      end
    end

    class HlsPlaylistSettings
      def self.parse(map)
        data = Types::HlsPlaylistSettings.new
        data.manifest_window_seconds = map['ManifestWindowSeconds']
        return data
      end
    end

    class DashPlaylistSettings
      def self.parse(map)
        data = Types::DashPlaylistSettings.new
        data.manifest_window_seconds = map['ManifestWindowSeconds']
        data.min_buffer_time_seconds = map['MinBufferTimeSeconds']
        data.min_update_period_seconds = map['MinUpdatePeriodSeconds']
        data.suggested_presentation_delay_seconds = map['SuggestedPresentationDelaySeconds']
        return data
      end
    end

    class SlateSource
      def self.parse(map)
        data = Types::SlateSource.new
        data.source_location_name = map['SourceLocationName']
        data.vod_source_name = map['VodSourceName']
        return data
      end
    end

    # Operation Parser for CreateLiveSource
    class CreateLiveSource
      def self.parse(http_resp)
        data = Types::CreateLiveSourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.http_package_configurations = (Parsers::HttpPackageConfigurations.parse(map['HttpPackageConfigurations']) unless map['HttpPackageConfigurations'].nil?)
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.live_source_name = map['LiveSourceName']
        data.source_location_name = map['SourceLocationName']
        data.tags = (Parsers::Map____mapOf__string.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    class HttpPackageConfigurations
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::HttpPackageConfiguration.parse(value) unless value.nil?
        end
        data
      end
    end

    class HttpPackageConfiguration
      def self.parse(map)
        data = Types::HttpPackageConfiguration.new
        data.path = map['Path']
        data.source_group = map['SourceGroup']
        data.type = map['Type']
        return data
      end
    end

    # Operation Parser for CreatePrefetchSchedule
    class CreatePrefetchSchedule
      def self.parse(http_resp)
        data = Types::CreatePrefetchScheduleOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.consumption = (Parsers::PrefetchConsumption.parse(map['Consumption']) unless map['Consumption'].nil?)
        data.name = map['Name']
        data.playback_configuration_name = map['PlaybackConfigurationName']
        data.retrieval = (Parsers::PrefetchRetrieval.parse(map['Retrieval']) unless map['Retrieval'].nil?)
        data.stream_id = map['StreamId']
        data
      end
    end

    class PrefetchRetrieval
      def self.parse(map)
        data = Types::PrefetchRetrieval.new
        data.dynamic_variables = (Parsers::Map____mapOf__string.parse(map['DynamicVariables']) unless map['DynamicVariables'].nil?)
        data.end_time = Time.at(map['EndTime'].to_i) if map['EndTime']
        data.start_time = Time.at(map['StartTime'].to_i) if map['StartTime']
        return data
      end
    end

    class PrefetchConsumption
      def self.parse(map)
        data = Types::PrefetchConsumption.new
        data.avail_matching_criteria = (Parsers::List____listOfAvailMatchingCriteria.parse(map['AvailMatchingCriteria']) unless map['AvailMatchingCriteria'].nil?)
        data.end_time = Time.at(map['EndTime'].to_i) if map['EndTime']
        data.start_time = Time.at(map['StartTime'].to_i) if map['StartTime']
        return data
      end
    end

    class List____listOfAvailMatchingCriteria
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AvailMatchingCriteria.parse(value) unless value.nil?
        end
        data
      end
    end

    class AvailMatchingCriteria
      def self.parse(map)
        data = Types::AvailMatchingCriteria.new
        data.dynamic_variable = map['DynamicVariable']
        data.operator = map['Operator']
        return data
      end
    end

    # Operation Parser for CreateProgram
    class CreateProgram
      def self.parse(http_resp)
        data = Types::CreateProgramOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.ad_breaks = (Parsers::List____listOfAdBreak.parse(map['AdBreaks']) unless map['AdBreaks'].nil?)
        data.arn = map['Arn']
        data.channel_name = map['ChannelName']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.live_source_name = map['LiveSourceName']
        data.program_name = map['ProgramName']
        data.scheduled_start_time = Time.at(map['ScheduledStartTime'].to_i) if map['ScheduledStartTime']
        data.source_location_name = map['SourceLocationName']
        data.vod_source_name = map['VodSourceName']
        data
      end
    end

    class List____listOfAdBreak
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AdBreak.parse(value) unless value.nil?
        end
        data
      end
    end

    class AdBreak
      def self.parse(map)
        data = Types::AdBreak.new
        data.message_type = map['MessageType']
        data.offset_millis = map['OffsetMillis']
        data.slate = (Parsers::SlateSource.parse(map['Slate']) unless map['Slate'].nil?)
        data.splice_insert_message = (Parsers::SpliceInsertMessage.parse(map['SpliceInsertMessage']) unless map['SpliceInsertMessage'].nil?)
        return data
      end
    end

    class SpliceInsertMessage
      def self.parse(map)
        data = Types::SpliceInsertMessage.new
        data.avail_num = map['AvailNum']
        data.avails_expected = map['AvailsExpected']
        data.splice_event_id = map['SpliceEventId']
        data.unique_program_id = map['UniqueProgramId']
        return data
      end
    end

    # Operation Parser for CreateSourceLocation
    class CreateSourceLocation
      def self.parse(http_resp)
        data = Types::CreateSourceLocationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.access_configuration = (Parsers::AccessConfiguration.parse(map['AccessConfiguration']) unless map['AccessConfiguration'].nil?)
        data.arn = map['Arn']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.default_segment_delivery_configuration = (Parsers::DefaultSegmentDeliveryConfiguration.parse(map['DefaultSegmentDeliveryConfiguration']) unless map['DefaultSegmentDeliveryConfiguration'].nil?)
        data.http_configuration = (Parsers::HttpConfiguration.parse(map['HttpConfiguration']) unless map['HttpConfiguration'].nil?)
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.segment_delivery_configurations = (Parsers::List____listOfSegmentDeliveryConfiguration.parse(map['SegmentDeliveryConfigurations']) unless map['SegmentDeliveryConfigurations'].nil?)
        data.source_location_name = map['SourceLocationName']
        data.tags = (Parsers::Map____mapOf__string.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    class List____listOfSegmentDeliveryConfiguration
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::SegmentDeliveryConfiguration.parse(value) unless value.nil?
        end
        data
      end
    end

    class SegmentDeliveryConfiguration
      def self.parse(map)
        data = Types::SegmentDeliveryConfiguration.new
        data.base_url = map['BaseUrl']
        data.name = map['Name']
        return data
      end
    end

    class HttpConfiguration
      def self.parse(map)
        data = Types::HttpConfiguration.new
        data.base_url = map['BaseUrl']
        return data
      end
    end

    class DefaultSegmentDeliveryConfiguration
      def self.parse(map)
        data = Types::DefaultSegmentDeliveryConfiguration.new
        data.base_url = map['BaseUrl']
        return data
      end
    end

    class AccessConfiguration
      def self.parse(map)
        data = Types::AccessConfiguration.new
        data.access_type = map['AccessType']
        data.secrets_manager_access_token_configuration = (Parsers::SecretsManagerAccessTokenConfiguration.parse(map['SecretsManagerAccessTokenConfiguration']) unless map['SecretsManagerAccessTokenConfiguration'].nil?)
        return data
      end
    end

    class SecretsManagerAccessTokenConfiguration
      def self.parse(map)
        data = Types::SecretsManagerAccessTokenConfiguration.new
        data.header_name = map['HeaderName']
        data.secret_arn = map['SecretArn']
        data.secret_string_key = map['SecretStringKey']
        return data
      end
    end

    # Operation Parser for CreateVodSource
    class CreateVodSource
      def self.parse(http_resp)
        data = Types::CreateVodSourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.http_package_configurations = (Parsers::HttpPackageConfigurations.parse(map['HttpPackageConfigurations']) unless map['HttpPackageConfigurations'].nil?)
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.source_location_name = map['SourceLocationName']
        data.tags = (Parsers::Map____mapOf__string.parse(map['tags']) unless map['tags'].nil?)
        data.vod_source_name = map['VodSourceName']
        data
      end
    end

    # Operation Parser for DeleteChannel
    class DeleteChannel
      def self.parse(http_resp)
        data = Types::DeleteChannelOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteChannelPolicy
    class DeleteChannelPolicy
      def self.parse(http_resp)
        data = Types::DeleteChannelPolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteLiveSource
    class DeleteLiveSource
      def self.parse(http_resp)
        data = Types::DeleteLiveSourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeletePlaybackConfiguration
    class DeletePlaybackConfiguration
      def self.parse(http_resp)
        data = Types::DeletePlaybackConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeletePrefetchSchedule
    class DeletePrefetchSchedule
      def self.parse(http_resp)
        data = Types::DeletePrefetchScheduleOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteProgram
    class DeleteProgram
      def self.parse(http_resp)
        data = Types::DeleteProgramOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteSourceLocation
    class DeleteSourceLocation
      def self.parse(http_resp)
        data = Types::DeleteSourceLocationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteVodSource
    class DeleteVodSource
      def self.parse(http_resp)
        data = Types::DeleteVodSourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DescribeChannel
    class DescribeChannel
      def self.parse(http_resp)
        data = Types::DescribeChannelOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.channel_name = map['ChannelName']
        data.channel_state = map['ChannelState']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.filler_slate = (Parsers::SlateSource.parse(map['FillerSlate']) unless map['FillerSlate'].nil?)
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.outputs = (Parsers::ResponseOutputs.parse(map['Outputs']) unless map['Outputs'].nil?)
        data.playback_mode = map['PlaybackMode']
        data.tags = (Parsers::Map____mapOf__string.parse(map['tags']) unless map['tags'].nil?)
        data.tier = map['Tier']
        data
      end
    end

    # Operation Parser for DescribeLiveSource
    class DescribeLiveSource
      def self.parse(http_resp)
        data = Types::DescribeLiveSourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.http_package_configurations = (Parsers::HttpPackageConfigurations.parse(map['HttpPackageConfigurations']) unless map['HttpPackageConfigurations'].nil?)
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.live_source_name = map['LiveSourceName']
        data.source_location_name = map['SourceLocationName']
        data.tags = (Parsers::Map____mapOf__string.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for DescribeProgram
    class DescribeProgram
      def self.parse(http_resp)
        data = Types::DescribeProgramOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.ad_breaks = (Parsers::List____listOfAdBreak.parse(map['AdBreaks']) unless map['AdBreaks'].nil?)
        data.arn = map['Arn']
        data.channel_name = map['ChannelName']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.live_source_name = map['LiveSourceName']
        data.program_name = map['ProgramName']
        data.scheduled_start_time = Time.at(map['ScheduledStartTime'].to_i) if map['ScheduledStartTime']
        data.source_location_name = map['SourceLocationName']
        data.vod_source_name = map['VodSourceName']
        data
      end
    end

    # Operation Parser for DescribeSourceLocation
    class DescribeSourceLocation
      def self.parse(http_resp)
        data = Types::DescribeSourceLocationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.access_configuration = (Parsers::AccessConfiguration.parse(map['AccessConfiguration']) unless map['AccessConfiguration'].nil?)
        data.arn = map['Arn']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.default_segment_delivery_configuration = (Parsers::DefaultSegmentDeliveryConfiguration.parse(map['DefaultSegmentDeliveryConfiguration']) unless map['DefaultSegmentDeliveryConfiguration'].nil?)
        data.http_configuration = (Parsers::HttpConfiguration.parse(map['HttpConfiguration']) unless map['HttpConfiguration'].nil?)
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.segment_delivery_configurations = (Parsers::List____listOfSegmentDeliveryConfiguration.parse(map['SegmentDeliveryConfigurations']) unless map['SegmentDeliveryConfigurations'].nil?)
        data.source_location_name = map['SourceLocationName']
        data.tags = (Parsers::Map____mapOf__string.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for DescribeVodSource
    class DescribeVodSource
      def self.parse(http_resp)
        data = Types::DescribeVodSourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.http_package_configurations = (Parsers::HttpPackageConfigurations.parse(map['HttpPackageConfigurations']) unless map['HttpPackageConfigurations'].nil?)
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.source_location_name = map['SourceLocationName']
        data.tags = (Parsers::Map____mapOf__string.parse(map['tags']) unless map['tags'].nil?)
        data.vod_source_name = map['VodSourceName']
        data
      end
    end

    # Operation Parser for GetChannelPolicy
    class GetChannelPolicy
      def self.parse(http_resp)
        data = Types::GetChannelPolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.policy = map['Policy']
        data
      end
    end

    # Operation Parser for GetChannelSchedule
    class GetChannelSchedule
      def self.parse(http_resp)
        data = Types::GetChannelScheduleOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.items = (Parsers::List____listOfScheduleEntry.parse(map['Items']) unless map['Items'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class List____listOfScheduleEntry
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ScheduleEntry.parse(value) unless value.nil?
        end
        data
      end
    end

    class ScheduleEntry
      def self.parse(map)
        data = Types::ScheduleEntry.new
        data.approximate_duration_seconds = map['ApproximateDurationSeconds']
        data.approximate_start_time = Time.at(map['ApproximateStartTime'].to_i) if map['ApproximateStartTime']
        data.arn = map['Arn']
        data.channel_name = map['ChannelName']
        data.live_source_name = map['LiveSourceName']
        data.program_name = map['ProgramName']
        data.schedule_ad_breaks = (Parsers::List____listOfScheduleAdBreak.parse(map['ScheduleAdBreaks']) unless map['ScheduleAdBreaks'].nil?)
        data.schedule_entry_type = map['ScheduleEntryType']
        data.source_location_name = map['SourceLocationName']
        data.vod_source_name = map['VodSourceName']
        return data
      end
    end

    class List____listOfScheduleAdBreak
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ScheduleAdBreak.parse(value) unless value.nil?
        end
        data
      end
    end

    class ScheduleAdBreak
      def self.parse(map)
        data = Types::ScheduleAdBreak.new
        data.approximate_duration_seconds = map['ApproximateDurationSeconds']
        data.approximate_start_time = Time.at(map['ApproximateStartTime'].to_i) if map['ApproximateStartTime']
        data.source_location_name = map['SourceLocationName']
        data.vod_source_name = map['VodSourceName']
        return data
      end
    end

    # Operation Parser for GetPlaybackConfiguration
    class GetPlaybackConfiguration
      def self.parse(http_resp)
        data = Types::GetPlaybackConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.ad_decision_server_url = map['AdDecisionServerUrl']
        data.avail_suppression = (Parsers::AvailSuppression.parse(map['AvailSuppression']) unless map['AvailSuppression'].nil?)
        data.bumper = (Parsers::Bumper.parse(map['Bumper']) unless map['Bumper'].nil?)
        data.cdn_configuration = (Parsers::CdnConfiguration.parse(map['CdnConfiguration']) unless map['CdnConfiguration'].nil?)
        data.configuration_aliases = (Parsers::ConfigurationAliasesResponse.parse(map['ConfigurationAliases']) unless map['ConfigurationAliases'].nil?)
        data.dash_configuration = (Parsers::DashConfiguration.parse(map['DashConfiguration']) unless map['DashConfiguration'].nil?)
        data.hls_configuration = (Parsers::HlsConfiguration.parse(map['HlsConfiguration']) unless map['HlsConfiguration'].nil?)
        data.live_pre_roll_configuration = (Parsers::LivePreRollConfiguration.parse(map['LivePreRollConfiguration']) unless map['LivePreRollConfiguration'].nil?)
        data.log_configuration = (Parsers::LogConfiguration.parse(map['LogConfiguration']) unless map['LogConfiguration'].nil?)
        data.manifest_processing_rules = (Parsers::ManifestProcessingRules.parse(map['ManifestProcessingRules']) unless map['ManifestProcessingRules'].nil?)
        data.name = map['Name']
        data.personalization_threshold_seconds = map['PersonalizationThresholdSeconds']
        data.playback_configuration_arn = map['PlaybackConfigurationArn']
        data.playback_endpoint_prefix = map['PlaybackEndpointPrefix']
        data.session_initialization_endpoint_prefix = map['SessionInitializationEndpointPrefix']
        data.slate_ad_url = map['SlateAdUrl']
        data.tags = (Parsers::Map____mapOf__string.parse(map['tags']) unless map['tags'].nil?)
        data.transcode_profile_name = map['TranscodeProfileName']
        data.video_content_source_url = map['VideoContentSourceUrl']
        data
      end
    end

    class ManifestProcessingRules
      def self.parse(map)
        data = Types::ManifestProcessingRules.new
        data.ad_marker_passthrough = (Parsers::AdMarkerPassthrough.parse(map['AdMarkerPassthrough']) unless map['AdMarkerPassthrough'].nil?)
        return data
      end
    end

    class AdMarkerPassthrough
      def self.parse(map)
        data = Types::AdMarkerPassthrough.new
        data.enabled = map['Enabled']
        return data
      end
    end

    class LogConfiguration
      def self.parse(map)
        data = Types::LogConfiguration.new
        data.percent_enabled = map['PercentEnabled']
        return data
      end
    end

    class LivePreRollConfiguration
      def self.parse(map)
        data = Types::LivePreRollConfiguration.new
        data.ad_decision_server_url = map['AdDecisionServerUrl']
        data.max_duration_seconds = map['MaxDurationSeconds']
        return data
      end
    end

    class HlsConfiguration
      def self.parse(map)
        data = Types::HlsConfiguration.new
        data.manifest_endpoint_prefix = map['ManifestEndpointPrefix']
        return data
      end
    end

    class DashConfiguration
      def self.parse(map)
        data = Types::DashConfiguration.new
        data.manifest_endpoint_prefix = map['ManifestEndpointPrefix']
        data.mpd_location = map['MpdLocation']
        data.origin_manifest_type = map['OriginManifestType']
        return data
      end
    end

    class ConfigurationAliasesResponse
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::Map____mapOf__string.parse(value) unless value.nil?
        end
        data
      end
    end

    class CdnConfiguration
      def self.parse(map)
        data = Types::CdnConfiguration.new
        data.ad_segment_url_prefix = map['AdSegmentUrlPrefix']
        data.content_segment_url_prefix = map['ContentSegmentUrlPrefix']
        return data
      end
    end

    class Bumper
      def self.parse(map)
        data = Types::Bumper.new
        data.end_url = map['EndUrl']
        data.start_url = map['StartUrl']
        return data
      end
    end

    class AvailSuppression
      def self.parse(map)
        data = Types::AvailSuppression.new
        data.mode = map['Mode']
        data.value = map['Value']
        return data
      end
    end

    # Operation Parser for GetPrefetchSchedule
    class GetPrefetchSchedule
      def self.parse(http_resp)
        data = Types::GetPrefetchScheduleOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.consumption = (Parsers::PrefetchConsumption.parse(map['Consumption']) unless map['Consumption'].nil?)
        data.name = map['Name']
        data.playback_configuration_name = map['PlaybackConfigurationName']
        data.retrieval = (Parsers::PrefetchRetrieval.parse(map['Retrieval']) unless map['Retrieval'].nil?)
        data.stream_id = map['StreamId']
        data
      end
    end

    # Operation Parser for ListAlerts
    class ListAlerts
      def self.parse(http_resp)
        data = Types::ListAlertsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.items = (Parsers::List____listOfAlert.parse(map['Items']) unless map['Items'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class List____listOfAlert
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Alert.parse(value) unless value.nil?
        end
        data
      end
    end

    class Alert
      def self.parse(map)
        data = Types::Alert.new
        data.alert_code = map['AlertCode']
        data.alert_message = map['AlertMessage']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.related_resource_arns = (Parsers::List____listOf__string.parse(map['RelatedResourceArns']) unless map['RelatedResourceArns'].nil?)
        data.resource_arn = map['ResourceArn']
        return data
      end
    end

    class List____listOf__string
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListChannels
    class ListChannels
      def self.parse(http_resp)
        data = Types::ListChannelsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.items = (Parsers::List____listOfChannel.parse(map['Items']) unless map['Items'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class List____listOfChannel
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Channel.parse(value) unless value.nil?
        end
        data
      end
    end

    class Channel
      def self.parse(map)
        data = Types::Channel.new
        data.arn = map['Arn']
        data.channel_name = map['ChannelName']
        data.channel_state = map['ChannelState']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.filler_slate = (Parsers::SlateSource.parse(map['FillerSlate']) unless map['FillerSlate'].nil?)
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.outputs = (Parsers::ResponseOutputs.parse(map['Outputs']) unless map['Outputs'].nil?)
        data.playback_mode = map['PlaybackMode']
        data.tags = (Parsers::Map____mapOf__string.parse(map['tags']) unless map['tags'].nil?)
        data.tier = map['Tier']
        return data
      end
    end

    # Operation Parser for ListLiveSources
    class ListLiveSources
      def self.parse(http_resp)
        data = Types::ListLiveSourcesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.items = (Parsers::List____listOfLiveSource.parse(map['Items']) unless map['Items'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class List____listOfLiveSource
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::LiveSource.parse(value) unless value.nil?
        end
        data
      end
    end

    class LiveSource
      def self.parse(map)
        data = Types::LiveSource.new
        data.arn = map['Arn']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.http_package_configurations = (Parsers::HttpPackageConfigurations.parse(map['HttpPackageConfigurations']) unless map['HttpPackageConfigurations'].nil?)
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.live_source_name = map['LiveSourceName']
        data.source_location_name = map['SourceLocationName']
        data.tags = (Parsers::Map____mapOf__string.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    # Operation Parser for ListPlaybackConfigurations
    class ListPlaybackConfigurations
      def self.parse(http_resp)
        data = Types::ListPlaybackConfigurationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.items = (Parsers::List____listOfPlaybackConfiguration.parse(map['Items']) unless map['Items'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class List____listOfPlaybackConfiguration
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::PlaybackConfiguration.parse(value) unless value.nil?
        end
        data
      end
    end

    class PlaybackConfiguration
      def self.parse(map)
        data = Types::PlaybackConfiguration.new
        data.ad_decision_server_url = map['AdDecisionServerUrl']
        data.avail_suppression = (Parsers::AvailSuppression.parse(map['AvailSuppression']) unless map['AvailSuppression'].nil?)
        data.bumper = (Parsers::Bumper.parse(map['Bumper']) unless map['Bumper'].nil?)
        data.cdn_configuration = (Parsers::CdnConfiguration.parse(map['CdnConfiguration']) unless map['CdnConfiguration'].nil?)
        data.configuration_aliases = (Parsers::ConfigurationAliasesResponse.parse(map['ConfigurationAliases']) unless map['ConfigurationAliases'].nil?)
        data.dash_configuration = (Parsers::DashConfiguration.parse(map['DashConfiguration']) unless map['DashConfiguration'].nil?)
        data.hls_configuration = (Parsers::HlsConfiguration.parse(map['HlsConfiguration']) unless map['HlsConfiguration'].nil?)
        data.live_pre_roll_configuration = (Parsers::LivePreRollConfiguration.parse(map['LivePreRollConfiguration']) unless map['LivePreRollConfiguration'].nil?)
        data.log_configuration = (Parsers::LogConfiguration.parse(map['LogConfiguration']) unless map['LogConfiguration'].nil?)
        data.manifest_processing_rules = (Parsers::ManifestProcessingRules.parse(map['ManifestProcessingRules']) unless map['ManifestProcessingRules'].nil?)
        data.name = map['Name']
        data.personalization_threshold_seconds = map['PersonalizationThresholdSeconds']
        data.playback_configuration_arn = map['PlaybackConfigurationArn']
        data.playback_endpoint_prefix = map['PlaybackEndpointPrefix']
        data.session_initialization_endpoint_prefix = map['SessionInitializationEndpointPrefix']
        data.slate_ad_url = map['SlateAdUrl']
        data.tags = (Parsers::Map____mapOf__string.parse(map['tags']) unless map['tags'].nil?)
        data.transcode_profile_name = map['TranscodeProfileName']
        data.video_content_source_url = map['VideoContentSourceUrl']
        return data
      end
    end

    # Operation Parser for ListPrefetchSchedules
    class ListPrefetchSchedules
      def self.parse(http_resp)
        data = Types::ListPrefetchSchedulesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.items = (Parsers::List____listOfPrefetchSchedule.parse(map['Items']) unless map['Items'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class List____listOfPrefetchSchedule
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::PrefetchSchedule.parse(value) unless value.nil?
        end
        data
      end
    end

    class PrefetchSchedule
      def self.parse(map)
        data = Types::PrefetchSchedule.new
        data.arn = map['Arn']
        data.consumption = (Parsers::PrefetchConsumption.parse(map['Consumption']) unless map['Consumption'].nil?)
        data.name = map['Name']
        data.playback_configuration_name = map['PlaybackConfigurationName']
        data.retrieval = (Parsers::PrefetchRetrieval.parse(map['Retrieval']) unless map['Retrieval'].nil?)
        data.stream_id = map['StreamId']
        return data
      end
    end

    # Operation Parser for ListSourceLocations
    class ListSourceLocations
      def self.parse(http_resp)
        data = Types::ListSourceLocationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.items = (Parsers::List____listOfSourceLocation.parse(map['Items']) unless map['Items'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class List____listOfSourceLocation
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::SourceLocation.parse(value) unless value.nil?
        end
        data
      end
    end

    class SourceLocation
      def self.parse(map)
        data = Types::SourceLocation.new
        data.access_configuration = (Parsers::AccessConfiguration.parse(map['AccessConfiguration']) unless map['AccessConfiguration'].nil?)
        data.arn = map['Arn']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.default_segment_delivery_configuration = (Parsers::DefaultSegmentDeliveryConfiguration.parse(map['DefaultSegmentDeliveryConfiguration']) unless map['DefaultSegmentDeliveryConfiguration'].nil?)
        data.http_configuration = (Parsers::HttpConfiguration.parse(map['HttpConfiguration']) unless map['HttpConfiguration'].nil?)
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.segment_delivery_configurations = (Parsers::List____listOfSegmentDeliveryConfiguration.parse(map['SegmentDeliveryConfigurations']) unless map['SegmentDeliveryConfigurations'].nil?)
        data.source_location_name = map['SourceLocationName']
        data.tags = (Parsers::Map____mapOf__string.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (Parsers::Map____mapOf__string.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Error Parser for BadRequestException
    class BadRequestException
      def self.parse(http_resp)
        data = Types::BadRequestException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for ListVodSources
    class ListVodSources
      def self.parse(http_resp)
        data = Types::ListVodSourcesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.items = (Parsers::List____listOfVodSource.parse(map['Items']) unless map['Items'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class List____listOfVodSource
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::VodSource.parse(value) unless value.nil?
        end
        data
      end
    end

    class VodSource
      def self.parse(map)
        data = Types::VodSource.new
        data.arn = map['Arn']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.http_package_configurations = (Parsers::HttpPackageConfigurations.parse(map['HttpPackageConfigurations']) unless map['HttpPackageConfigurations'].nil?)
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.source_location_name = map['SourceLocationName']
        data.tags = (Parsers::Map____mapOf__string.parse(map['tags']) unless map['tags'].nil?)
        data.vod_source_name = map['VodSourceName']
        return data
      end
    end

    # Operation Parser for PutChannelPolicy
    class PutChannelPolicy
      def self.parse(http_resp)
        data = Types::PutChannelPolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for PutPlaybackConfiguration
    class PutPlaybackConfiguration
      def self.parse(http_resp)
        data = Types::PutPlaybackConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.ad_decision_server_url = map['AdDecisionServerUrl']
        data.avail_suppression = (Parsers::AvailSuppression.parse(map['AvailSuppression']) unless map['AvailSuppression'].nil?)
        data.bumper = (Parsers::Bumper.parse(map['Bumper']) unless map['Bumper'].nil?)
        data.cdn_configuration = (Parsers::CdnConfiguration.parse(map['CdnConfiguration']) unless map['CdnConfiguration'].nil?)
        data.configuration_aliases = (Parsers::ConfigurationAliasesResponse.parse(map['ConfigurationAliases']) unless map['ConfigurationAliases'].nil?)
        data.dash_configuration = (Parsers::DashConfiguration.parse(map['DashConfiguration']) unless map['DashConfiguration'].nil?)
        data.hls_configuration = (Parsers::HlsConfiguration.parse(map['HlsConfiguration']) unless map['HlsConfiguration'].nil?)
        data.live_pre_roll_configuration = (Parsers::LivePreRollConfiguration.parse(map['LivePreRollConfiguration']) unless map['LivePreRollConfiguration'].nil?)
        data.log_configuration = (Parsers::LogConfiguration.parse(map['LogConfiguration']) unless map['LogConfiguration'].nil?)
        data.manifest_processing_rules = (Parsers::ManifestProcessingRules.parse(map['ManifestProcessingRules']) unless map['ManifestProcessingRules'].nil?)
        data.name = map['Name']
        data.personalization_threshold_seconds = map['PersonalizationThresholdSeconds']
        data.playback_configuration_arn = map['PlaybackConfigurationArn']
        data.playback_endpoint_prefix = map['PlaybackEndpointPrefix']
        data.session_initialization_endpoint_prefix = map['SessionInitializationEndpointPrefix']
        data.slate_ad_url = map['SlateAdUrl']
        data.tags = (Parsers::Map____mapOf__string.parse(map['tags']) unless map['tags'].nil?)
        data.transcode_profile_name = map['TranscodeProfileName']
        data.video_content_source_url = map['VideoContentSourceUrl']
        data
      end
    end

    # Operation Parser for StartChannel
    class StartChannel
      def self.parse(http_resp)
        data = Types::StartChannelOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for StopChannel
    class StopChannel
      def self.parse(http_resp)
        data = Types::StopChannelOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateChannel
    class UpdateChannel
      def self.parse(http_resp)
        data = Types::UpdateChannelOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.channel_name = map['ChannelName']
        data.channel_state = map['ChannelState']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.filler_slate = (Parsers::SlateSource.parse(map['FillerSlate']) unless map['FillerSlate'].nil?)
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.outputs = (Parsers::ResponseOutputs.parse(map['Outputs']) unless map['Outputs'].nil?)
        data.playback_mode = map['PlaybackMode']
        data.tags = (Parsers::Map____mapOf__string.parse(map['tags']) unless map['tags'].nil?)
        data.tier = map['Tier']
        data
      end
    end

    # Operation Parser for UpdateLiveSource
    class UpdateLiveSource
      def self.parse(http_resp)
        data = Types::UpdateLiveSourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.http_package_configurations = (Parsers::HttpPackageConfigurations.parse(map['HttpPackageConfigurations']) unless map['HttpPackageConfigurations'].nil?)
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.live_source_name = map['LiveSourceName']
        data.source_location_name = map['SourceLocationName']
        data.tags = (Parsers::Map____mapOf__string.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for UpdateSourceLocation
    class UpdateSourceLocation
      def self.parse(http_resp)
        data = Types::UpdateSourceLocationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.access_configuration = (Parsers::AccessConfiguration.parse(map['AccessConfiguration']) unless map['AccessConfiguration'].nil?)
        data.arn = map['Arn']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.default_segment_delivery_configuration = (Parsers::DefaultSegmentDeliveryConfiguration.parse(map['DefaultSegmentDeliveryConfiguration']) unless map['DefaultSegmentDeliveryConfiguration'].nil?)
        data.http_configuration = (Parsers::HttpConfiguration.parse(map['HttpConfiguration']) unless map['HttpConfiguration'].nil?)
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.segment_delivery_configurations = (Parsers::List____listOfSegmentDeliveryConfiguration.parse(map['SegmentDeliveryConfigurations']) unless map['SegmentDeliveryConfigurations'].nil?)
        data.source_location_name = map['SourceLocationName']
        data.tags = (Parsers::Map____mapOf__string.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for UpdateVodSource
    class UpdateVodSource
      def self.parse(http_resp)
        data = Types::UpdateVodSourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.http_package_configurations = (Parsers::HttpPackageConfigurations.parse(map['HttpPackageConfigurations']) unless map['HttpPackageConfigurations'].nil?)
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.source_location_name = map['SourceLocationName']
        data.tags = (Parsers::Map____mapOf__string.parse(map['tags']) unless map['tags'].nil?)
        data.vod_source_name = map['VodSourceName']
        data
      end
    end
  end
end
