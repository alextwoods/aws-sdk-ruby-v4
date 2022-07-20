# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::MediaTailor
  module Stubs

    # Operation Stubber for ConfigureLogsForPlaybackConfiguration
    class ConfigureLogsForPlaybackConfiguration
      def self.default(visited=[])
        {
          percent_enabled: 1,
          playback_configuration_name: 'playback_configuration_name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['PercentEnabled'] = stub[:percent_enabled] unless stub[:percent_enabled].nil?
        data['PlaybackConfigurationName'] = stub[:playback_configuration_name] unless stub[:playback_configuration_name].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateChannel
    class CreateChannel
      def self.default(visited=[])
        {
          arn: 'arn',
          channel_name: 'channel_name',
          channel_state: 'channel_state',
          creation_time: Time.now,
          filler_slate: SlateSource.default(visited),
          last_modified_time: Time.now,
          outputs: ResponseOutputs.default(visited),
          playback_mode: 'playback_mode',
          tags: Map____mapOf__string.default(visited),
          tier: 'tier',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['ChannelName'] = stub[:channel_name] unless stub[:channel_name].nil?
        data['ChannelState'] = stub[:channel_state] unless stub[:channel_state].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['FillerSlate'] = Stubs::SlateSource.stub(stub[:filler_slate]) unless stub[:filler_slate].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['Outputs'] = Stubs::ResponseOutputs.stub(stub[:outputs]) unless stub[:outputs].nil?
        data['PlaybackMode'] = stub[:playback_mode] unless stub[:playback_mode].nil?
        data['tags'] = Stubs::Map____mapOf__string.stub(stub[:tags]) unless stub[:tags].nil?
        data['Tier'] = stub[:tier] unless stub[:tier].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Stubber for __mapOf__string
    class Map____mapOf__string
      def self.default(visited=[])
        return nil if visited.include?('Map____mapOf__string')
        visited = visited + ['Map____mapOf__string']
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

    # List Stubber for ResponseOutputs
    class ResponseOutputs
      def self.default(visited=[])
        return nil if visited.include?('ResponseOutputs')
        visited = visited + ['ResponseOutputs']
        [
          ResponseOutputItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ResponseOutputItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ResponseOutputItem
    class ResponseOutputItem
      def self.default(visited=[])
        return nil if visited.include?('ResponseOutputItem')
        visited = visited + ['ResponseOutputItem']
        {
          dash_playlist_settings: DashPlaylistSettings.default(visited),
          hls_playlist_settings: HlsPlaylistSettings.default(visited),
          manifest_name: 'manifest_name',
          playback_url: 'playback_url',
          source_group: 'source_group',
        }
      end

      def self.stub(stub)
        stub ||= Types::ResponseOutputItem.new
        data = {}
        data['DashPlaylistSettings'] = Stubs::DashPlaylistSettings.stub(stub[:dash_playlist_settings]) unless stub[:dash_playlist_settings].nil?
        data['HlsPlaylistSettings'] = Stubs::HlsPlaylistSettings.stub(stub[:hls_playlist_settings]) unless stub[:hls_playlist_settings].nil?
        data['ManifestName'] = stub[:manifest_name] unless stub[:manifest_name].nil?
        data['PlaybackUrl'] = stub[:playback_url] unless stub[:playback_url].nil?
        data['SourceGroup'] = stub[:source_group] unless stub[:source_group].nil?
        data
      end
    end

    # Structure Stubber for HlsPlaylistSettings
    class HlsPlaylistSettings
      def self.default(visited=[])
        return nil if visited.include?('HlsPlaylistSettings')
        visited = visited + ['HlsPlaylistSettings']
        {
          manifest_window_seconds: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::HlsPlaylistSettings.new
        data = {}
        data['ManifestWindowSeconds'] = stub[:manifest_window_seconds] unless stub[:manifest_window_seconds].nil?
        data
      end
    end

    # Structure Stubber for DashPlaylistSettings
    class DashPlaylistSettings
      def self.default(visited=[])
        return nil if visited.include?('DashPlaylistSettings')
        visited = visited + ['DashPlaylistSettings']
        {
          manifest_window_seconds: 1,
          min_buffer_time_seconds: 1,
          min_update_period_seconds: 1,
          suggested_presentation_delay_seconds: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::DashPlaylistSettings.new
        data = {}
        data['ManifestWindowSeconds'] = stub[:manifest_window_seconds] unless stub[:manifest_window_seconds].nil?
        data['MinBufferTimeSeconds'] = stub[:min_buffer_time_seconds] unless stub[:min_buffer_time_seconds].nil?
        data['MinUpdatePeriodSeconds'] = stub[:min_update_period_seconds] unless stub[:min_update_period_seconds].nil?
        data['SuggestedPresentationDelaySeconds'] = stub[:suggested_presentation_delay_seconds] unless stub[:suggested_presentation_delay_seconds].nil?
        data
      end
    end

    # Structure Stubber for SlateSource
    class SlateSource
      def self.default(visited=[])
        return nil if visited.include?('SlateSource')
        visited = visited + ['SlateSource']
        {
          source_location_name: 'source_location_name',
          vod_source_name: 'vod_source_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::SlateSource.new
        data = {}
        data['SourceLocationName'] = stub[:source_location_name] unless stub[:source_location_name].nil?
        data['VodSourceName'] = stub[:vod_source_name] unless stub[:vod_source_name].nil?
        data
      end
    end

    # Operation Stubber for CreateLiveSource
    class CreateLiveSource
      def self.default(visited=[])
        {
          arn: 'arn',
          creation_time: Time.now,
          http_package_configurations: HttpPackageConfigurations.default(visited),
          last_modified_time: Time.now,
          live_source_name: 'live_source_name',
          source_location_name: 'source_location_name',
          tags: Map____mapOf__string.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['HttpPackageConfigurations'] = Stubs::HttpPackageConfigurations.stub(stub[:http_package_configurations]) unless stub[:http_package_configurations].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['LiveSourceName'] = stub[:live_source_name] unless stub[:live_source_name].nil?
        data['SourceLocationName'] = stub[:source_location_name] unless stub[:source_location_name].nil?
        data['tags'] = Stubs::Map____mapOf__string.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for HttpPackageConfigurations
    class HttpPackageConfigurations
      def self.default(visited=[])
        return nil if visited.include?('HttpPackageConfigurations')
        visited = visited + ['HttpPackageConfigurations']
        [
          HttpPackageConfiguration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::HttpPackageConfiguration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for HttpPackageConfiguration
    class HttpPackageConfiguration
      def self.default(visited=[])
        return nil if visited.include?('HttpPackageConfiguration')
        visited = visited + ['HttpPackageConfiguration']
        {
          path: 'path',
          source_group: 'source_group',
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::HttpPackageConfiguration.new
        data = {}
        data['Path'] = stub[:path] unless stub[:path].nil?
        data['SourceGroup'] = stub[:source_group] unless stub[:source_group].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Operation Stubber for CreatePrefetchSchedule
    class CreatePrefetchSchedule
      def self.default(visited=[])
        {
          arn: 'arn',
          consumption: PrefetchConsumption.default(visited),
          name: 'name',
          playback_configuration_name: 'playback_configuration_name',
          retrieval: PrefetchRetrieval.default(visited),
          stream_id: 'stream_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Consumption'] = Stubs::PrefetchConsumption.stub(stub[:consumption]) unless stub[:consumption].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['PlaybackConfigurationName'] = stub[:playback_configuration_name] unless stub[:playback_configuration_name].nil?
        data['Retrieval'] = Stubs::PrefetchRetrieval.stub(stub[:retrieval]) unless stub[:retrieval].nil?
        data['StreamId'] = stub[:stream_id] unless stub[:stream_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for PrefetchRetrieval
    class PrefetchRetrieval
      def self.default(visited=[])
        return nil if visited.include?('PrefetchRetrieval')
        visited = visited + ['PrefetchRetrieval']
        {
          dynamic_variables: Map____mapOf__string.default(visited),
          end_time: Time.now,
          start_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::PrefetchRetrieval.new
        data = {}
        data['DynamicVariables'] = Stubs::Map____mapOf__string.stub(stub[:dynamic_variables]) unless stub[:dynamic_variables].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data
      end
    end

    # Structure Stubber for PrefetchConsumption
    class PrefetchConsumption
      def self.default(visited=[])
        return nil if visited.include?('PrefetchConsumption')
        visited = visited + ['PrefetchConsumption']
        {
          avail_matching_criteria: List____listOfAvailMatchingCriteria.default(visited),
          end_time: Time.now,
          start_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::PrefetchConsumption.new
        data = {}
        data['AvailMatchingCriteria'] = Stubs::List____listOfAvailMatchingCriteria.stub(stub[:avail_matching_criteria]) unless stub[:avail_matching_criteria].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data
      end
    end

    # List Stubber for __listOfAvailMatchingCriteria
    class List____listOfAvailMatchingCriteria
      def self.default(visited=[])
        return nil if visited.include?('List____listOfAvailMatchingCriteria')
        visited = visited + ['List____listOfAvailMatchingCriteria']
        [
          AvailMatchingCriteria.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AvailMatchingCriteria.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AvailMatchingCriteria
    class AvailMatchingCriteria
      def self.default(visited=[])
        return nil if visited.include?('AvailMatchingCriteria')
        visited = visited + ['AvailMatchingCriteria']
        {
          dynamic_variable: 'dynamic_variable',
          operator: 'operator',
        }
      end

      def self.stub(stub)
        stub ||= Types::AvailMatchingCriteria.new
        data = {}
        data['DynamicVariable'] = stub[:dynamic_variable] unless stub[:dynamic_variable].nil?
        data['Operator'] = stub[:operator] unless stub[:operator].nil?
        data
      end
    end

    # Operation Stubber for CreateProgram
    class CreateProgram
      def self.default(visited=[])
        {
          ad_breaks: List____listOfAdBreak.default(visited),
          arn: 'arn',
          channel_name: 'channel_name',
          creation_time: Time.now,
          live_source_name: 'live_source_name',
          program_name: 'program_name',
          scheduled_start_time: Time.now,
          source_location_name: 'source_location_name',
          vod_source_name: 'vod_source_name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AdBreaks'] = Stubs::List____listOfAdBreak.stub(stub[:ad_breaks]) unless stub[:ad_breaks].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['ChannelName'] = stub[:channel_name] unless stub[:channel_name].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LiveSourceName'] = stub[:live_source_name] unless stub[:live_source_name].nil?
        data['ProgramName'] = stub[:program_name] unless stub[:program_name].nil?
        data['ScheduledStartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:scheduled_start_time]).to_i unless stub[:scheduled_start_time].nil?
        data['SourceLocationName'] = stub[:source_location_name] unless stub[:source_location_name].nil?
        data['VodSourceName'] = stub[:vod_source_name] unless stub[:vod_source_name].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfAdBreak
    class List____listOfAdBreak
      def self.default(visited=[])
        return nil if visited.include?('List____listOfAdBreak')
        visited = visited + ['List____listOfAdBreak']
        [
          AdBreak.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AdBreak.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AdBreak
    class AdBreak
      def self.default(visited=[])
        return nil if visited.include?('AdBreak')
        visited = visited + ['AdBreak']
        {
          message_type: 'message_type',
          offset_millis: 1,
          slate: SlateSource.default(visited),
          splice_insert_message: SpliceInsertMessage.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AdBreak.new
        data = {}
        data['MessageType'] = stub[:message_type] unless stub[:message_type].nil?
        data['OffsetMillis'] = stub[:offset_millis] unless stub[:offset_millis].nil?
        data['Slate'] = Stubs::SlateSource.stub(stub[:slate]) unless stub[:slate].nil?
        data['SpliceInsertMessage'] = Stubs::SpliceInsertMessage.stub(stub[:splice_insert_message]) unless stub[:splice_insert_message].nil?
        data
      end
    end

    # Structure Stubber for SpliceInsertMessage
    class SpliceInsertMessage
      def self.default(visited=[])
        return nil if visited.include?('SpliceInsertMessage')
        visited = visited + ['SpliceInsertMessage']
        {
          avail_num: 1,
          avails_expected: 1,
          splice_event_id: 1,
          unique_program_id: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::SpliceInsertMessage.new
        data = {}
        data['AvailNum'] = stub[:avail_num] unless stub[:avail_num].nil?
        data['AvailsExpected'] = stub[:avails_expected] unless stub[:avails_expected].nil?
        data['SpliceEventId'] = stub[:splice_event_id] unless stub[:splice_event_id].nil?
        data['UniqueProgramId'] = stub[:unique_program_id] unless stub[:unique_program_id].nil?
        data
      end
    end

    # Operation Stubber for CreateSourceLocation
    class CreateSourceLocation
      def self.default(visited=[])
        {
          access_configuration: AccessConfiguration.default(visited),
          arn: 'arn',
          creation_time: Time.now,
          default_segment_delivery_configuration: DefaultSegmentDeliveryConfiguration.default(visited),
          http_configuration: HttpConfiguration.default(visited),
          last_modified_time: Time.now,
          segment_delivery_configurations: List____listOfSegmentDeliveryConfiguration.default(visited),
          source_location_name: 'source_location_name',
          tags: Map____mapOf__string.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AccessConfiguration'] = Stubs::AccessConfiguration.stub(stub[:access_configuration]) unless stub[:access_configuration].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['DefaultSegmentDeliveryConfiguration'] = Stubs::DefaultSegmentDeliveryConfiguration.stub(stub[:default_segment_delivery_configuration]) unless stub[:default_segment_delivery_configuration].nil?
        data['HttpConfiguration'] = Stubs::HttpConfiguration.stub(stub[:http_configuration]) unless stub[:http_configuration].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['SegmentDeliveryConfigurations'] = Stubs::List____listOfSegmentDeliveryConfiguration.stub(stub[:segment_delivery_configurations]) unless stub[:segment_delivery_configurations].nil?
        data['SourceLocationName'] = stub[:source_location_name] unless stub[:source_location_name].nil?
        data['tags'] = Stubs::Map____mapOf__string.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfSegmentDeliveryConfiguration
    class List____listOfSegmentDeliveryConfiguration
      def self.default(visited=[])
        return nil if visited.include?('List____listOfSegmentDeliveryConfiguration')
        visited = visited + ['List____listOfSegmentDeliveryConfiguration']
        [
          SegmentDeliveryConfiguration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SegmentDeliveryConfiguration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SegmentDeliveryConfiguration
    class SegmentDeliveryConfiguration
      def self.default(visited=[])
        return nil if visited.include?('SegmentDeliveryConfiguration')
        visited = visited + ['SegmentDeliveryConfiguration']
        {
          base_url: 'base_url',
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::SegmentDeliveryConfiguration.new
        data = {}
        data['BaseUrl'] = stub[:base_url] unless stub[:base_url].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Structure Stubber for HttpConfiguration
    class HttpConfiguration
      def self.default(visited=[])
        return nil if visited.include?('HttpConfiguration')
        visited = visited + ['HttpConfiguration']
        {
          base_url: 'base_url',
        }
      end

      def self.stub(stub)
        stub ||= Types::HttpConfiguration.new
        data = {}
        data['BaseUrl'] = stub[:base_url] unless stub[:base_url].nil?
        data
      end
    end

    # Structure Stubber for DefaultSegmentDeliveryConfiguration
    class DefaultSegmentDeliveryConfiguration
      def self.default(visited=[])
        return nil if visited.include?('DefaultSegmentDeliveryConfiguration')
        visited = visited + ['DefaultSegmentDeliveryConfiguration']
        {
          base_url: 'base_url',
        }
      end

      def self.stub(stub)
        stub ||= Types::DefaultSegmentDeliveryConfiguration.new
        data = {}
        data['BaseUrl'] = stub[:base_url] unless stub[:base_url].nil?
        data
      end
    end

    # Structure Stubber for AccessConfiguration
    class AccessConfiguration
      def self.default(visited=[])
        return nil if visited.include?('AccessConfiguration')
        visited = visited + ['AccessConfiguration']
        {
          access_type: 'access_type',
          secrets_manager_access_token_configuration: SecretsManagerAccessTokenConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AccessConfiguration.new
        data = {}
        data['AccessType'] = stub[:access_type] unless stub[:access_type].nil?
        data['SecretsManagerAccessTokenConfiguration'] = Stubs::SecretsManagerAccessTokenConfiguration.stub(stub[:secrets_manager_access_token_configuration]) unless stub[:secrets_manager_access_token_configuration].nil?
        data
      end
    end

    # Structure Stubber for SecretsManagerAccessTokenConfiguration
    class SecretsManagerAccessTokenConfiguration
      def self.default(visited=[])
        return nil if visited.include?('SecretsManagerAccessTokenConfiguration')
        visited = visited + ['SecretsManagerAccessTokenConfiguration']
        {
          header_name: 'header_name',
          secret_arn: 'secret_arn',
          secret_string_key: 'secret_string_key',
        }
      end

      def self.stub(stub)
        stub ||= Types::SecretsManagerAccessTokenConfiguration.new
        data = {}
        data['HeaderName'] = stub[:header_name] unless stub[:header_name].nil?
        data['SecretArn'] = stub[:secret_arn] unless stub[:secret_arn].nil?
        data['SecretStringKey'] = stub[:secret_string_key] unless stub[:secret_string_key].nil?
        data
      end
    end

    # Operation Stubber for CreateVodSource
    class CreateVodSource
      def self.default(visited=[])
        {
          arn: 'arn',
          creation_time: Time.now,
          http_package_configurations: HttpPackageConfigurations.default(visited),
          last_modified_time: Time.now,
          source_location_name: 'source_location_name',
          tags: Map____mapOf__string.default(visited),
          vod_source_name: 'vod_source_name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['HttpPackageConfigurations'] = Stubs::HttpPackageConfigurations.stub(stub[:http_package_configurations]) unless stub[:http_package_configurations].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['SourceLocationName'] = stub[:source_location_name] unless stub[:source_location_name].nil?
        data['tags'] = Stubs::Map____mapOf__string.stub(stub[:tags]) unless stub[:tags].nil?
        data['VodSourceName'] = stub[:vod_source_name] unless stub[:vod_source_name].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteChannel
    class DeleteChannel
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteChannelPolicy
    class DeleteChannelPolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteLiveSource
    class DeleteLiveSource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeletePlaybackConfiguration
    class DeletePlaybackConfiguration
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeletePrefetchSchedule
    class DeletePrefetchSchedule
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteProgram
    class DeleteProgram
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteSourceLocation
    class DeleteSourceLocation
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteVodSource
    class DeleteVodSource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeChannel
    class DescribeChannel
      def self.default(visited=[])
        {
          arn: 'arn',
          channel_name: 'channel_name',
          channel_state: 'channel_state',
          creation_time: Time.now,
          filler_slate: SlateSource.default(visited),
          last_modified_time: Time.now,
          outputs: ResponseOutputs.default(visited),
          playback_mode: 'playback_mode',
          tags: Map____mapOf__string.default(visited),
          tier: 'tier',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['ChannelName'] = stub[:channel_name] unless stub[:channel_name].nil?
        data['ChannelState'] = stub[:channel_state] unless stub[:channel_state].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['FillerSlate'] = Stubs::SlateSource.stub(stub[:filler_slate]) unless stub[:filler_slate].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['Outputs'] = Stubs::ResponseOutputs.stub(stub[:outputs]) unless stub[:outputs].nil?
        data['PlaybackMode'] = stub[:playback_mode] unless stub[:playback_mode].nil?
        data['tags'] = Stubs::Map____mapOf__string.stub(stub[:tags]) unless stub[:tags].nil?
        data['Tier'] = stub[:tier] unless stub[:tier].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeLiveSource
    class DescribeLiveSource
      def self.default(visited=[])
        {
          arn: 'arn',
          creation_time: Time.now,
          http_package_configurations: HttpPackageConfigurations.default(visited),
          last_modified_time: Time.now,
          live_source_name: 'live_source_name',
          source_location_name: 'source_location_name',
          tags: Map____mapOf__string.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['HttpPackageConfigurations'] = Stubs::HttpPackageConfigurations.stub(stub[:http_package_configurations]) unless stub[:http_package_configurations].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['LiveSourceName'] = stub[:live_source_name] unless stub[:live_source_name].nil?
        data['SourceLocationName'] = stub[:source_location_name] unless stub[:source_location_name].nil?
        data['tags'] = Stubs::Map____mapOf__string.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeProgram
    class DescribeProgram
      def self.default(visited=[])
        {
          ad_breaks: List____listOfAdBreak.default(visited),
          arn: 'arn',
          channel_name: 'channel_name',
          creation_time: Time.now,
          live_source_name: 'live_source_name',
          program_name: 'program_name',
          scheduled_start_time: Time.now,
          source_location_name: 'source_location_name',
          vod_source_name: 'vod_source_name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AdBreaks'] = Stubs::List____listOfAdBreak.stub(stub[:ad_breaks]) unless stub[:ad_breaks].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['ChannelName'] = stub[:channel_name] unless stub[:channel_name].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LiveSourceName'] = stub[:live_source_name] unless stub[:live_source_name].nil?
        data['ProgramName'] = stub[:program_name] unless stub[:program_name].nil?
        data['ScheduledStartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:scheduled_start_time]).to_i unless stub[:scheduled_start_time].nil?
        data['SourceLocationName'] = stub[:source_location_name] unless stub[:source_location_name].nil?
        data['VodSourceName'] = stub[:vod_source_name] unless stub[:vod_source_name].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeSourceLocation
    class DescribeSourceLocation
      def self.default(visited=[])
        {
          access_configuration: AccessConfiguration.default(visited),
          arn: 'arn',
          creation_time: Time.now,
          default_segment_delivery_configuration: DefaultSegmentDeliveryConfiguration.default(visited),
          http_configuration: HttpConfiguration.default(visited),
          last_modified_time: Time.now,
          segment_delivery_configurations: List____listOfSegmentDeliveryConfiguration.default(visited),
          source_location_name: 'source_location_name',
          tags: Map____mapOf__string.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AccessConfiguration'] = Stubs::AccessConfiguration.stub(stub[:access_configuration]) unless stub[:access_configuration].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['DefaultSegmentDeliveryConfiguration'] = Stubs::DefaultSegmentDeliveryConfiguration.stub(stub[:default_segment_delivery_configuration]) unless stub[:default_segment_delivery_configuration].nil?
        data['HttpConfiguration'] = Stubs::HttpConfiguration.stub(stub[:http_configuration]) unless stub[:http_configuration].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['SegmentDeliveryConfigurations'] = Stubs::List____listOfSegmentDeliveryConfiguration.stub(stub[:segment_delivery_configurations]) unless stub[:segment_delivery_configurations].nil?
        data['SourceLocationName'] = stub[:source_location_name] unless stub[:source_location_name].nil?
        data['tags'] = Stubs::Map____mapOf__string.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeVodSource
    class DescribeVodSource
      def self.default(visited=[])
        {
          arn: 'arn',
          creation_time: Time.now,
          http_package_configurations: HttpPackageConfigurations.default(visited),
          last_modified_time: Time.now,
          source_location_name: 'source_location_name',
          tags: Map____mapOf__string.default(visited),
          vod_source_name: 'vod_source_name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['HttpPackageConfigurations'] = Stubs::HttpPackageConfigurations.stub(stub[:http_package_configurations]) unless stub[:http_package_configurations].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['SourceLocationName'] = stub[:source_location_name] unless stub[:source_location_name].nil?
        data['tags'] = Stubs::Map____mapOf__string.stub(stub[:tags]) unless stub[:tags].nil?
        data['VodSourceName'] = stub[:vod_source_name] unless stub[:vod_source_name].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetChannelPolicy
    class GetChannelPolicy
      def self.default(visited=[])
        {
          policy: 'policy',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Policy'] = stub[:policy] unless stub[:policy].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetChannelSchedule
    class GetChannelSchedule
      def self.default(visited=[])
        {
          items: List____listOfScheduleEntry.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Items'] = Stubs::List____listOfScheduleEntry.stub(stub[:items]) unless stub[:items].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfScheduleEntry
    class List____listOfScheduleEntry
      def self.default(visited=[])
        return nil if visited.include?('List____listOfScheduleEntry')
        visited = visited + ['List____listOfScheduleEntry']
        [
          ScheduleEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ScheduleEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ScheduleEntry
    class ScheduleEntry
      def self.default(visited=[])
        return nil if visited.include?('ScheduleEntry')
        visited = visited + ['ScheduleEntry']
        {
          approximate_duration_seconds: 1,
          approximate_start_time: Time.now,
          arn: 'arn',
          channel_name: 'channel_name',
          live_source_name: 'live_source_name',
          program_name: 'program_name',
          schedule_ad_breaks: List____listOfScheduleAdBreak.default(visited),
          schedule_entry_type: 'schedule_entry_type',
          source_location_name: 'source_location_name',
          vod_source_name: 'vod_source_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::ScheduleEntry.new
        data = {}
        data['ApproximateDurationSeconds'] = stub[:approximate_duration_seconds] unless stub[:approximate_duration_seconds].nil?
        data['ApproximateStartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:approximate_start_time]).to_i unless stub[:approximate_start_time].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['ChannelName'] = stub[:channel_name] unless stub[:channel_name].nil?
        data['LiveSourceName'] = stub[:live_source_name] unless stub[:live_source_name].nil?
        data['ProgramName'] = stub[:program_name] unless stub[:program_name].nil?
        data['ScheduleAdBreaks'] = Stubs::List____listOfScheduleAdBreak.stub(stub[:schedule_ad_breaks]) unless stub[:schedule_ad_breaks].nil?
        data['ScheduleEntryType'] = stub[:schedule_entry_type] unless stub[:schedule_entry_type].nil?
        data['SourceLocationName'] = stub[:source_location_name] unless stub[:source_location_name].nil?
        data['VodSourceName'] = stub[:vod_source_name] unless stub[:vod_source_name].nil?
        data
      end
    end

    # List Stubber for __listOfScheduleAdBreak
    class List____listOfScheduleAdBreak
      def self.default(visited=[])
        return nil if visited.include?('List____listOfScheduleAdBreak')
        visited = visited + ['List____listOfScheduleAdBreak']
        [
          ScheduleAdBreak.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ScheduleAdBreak.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ScheduleAdBreak
    class ScheduleAdBreak
      def self.default(visited=[])
        return nil if visited.include?('ScheduleAdBreak')
        visited = visited + ['ScheduleAdBreak']
        {
          approximate_duration_seconds: 1,
          approximate_start_time: Time.now,
          source_location_name: 'source_location_name',
          vod_source_name: 'vod_source_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::ScheduleAdBreak.new
        data = {}
        data['ApproximateDurationSeconds'] = stub[:approximate_duration_seconds] unless stub[:approximate_duration_seconds].nil?
        data['ApproximateStartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:approximate_start_time]).to_i unless stub[:approximate_start_time].nil?
        data['SourceLocationName'] = stub[:source_location_name] unless stub[:source_location_name].nil?
        data['VodSourceName'] = stub[:vod_source_name] unless stub[:vod_source_name].nil?
        data
      end
    end

    # Operation Stubber for GetPlaybackConfiguration
    class GetPlaybackConfiguration
      def self.default(visited=[])
        {
          ad_decision_server_url: 'ad_decision_server_url',
          avail_suppression: AvailSuppression.default(visited),
          bumper: Bumper.default(visited),
          cdn_configuration: CdnConfiguration.default(visited),
          configuration_aliases: ConfigurationAliasesResponse.default(visited),
          dash_configuration: DashConfiguration.default(visited),
          hls_configuration: HlsConfiguration.default(visited),
          live_pre_roll_configuration: LivePreRollConfiguration.default(visited),
          log_configuration: LogConfiguration.default(visited),
          manifest_processing_rules: ManifestProcessingRules.default(visited),
          name: 'name',
          personalization_threshold_seconds: 1,
          playback_configuration_arn: 'playback_configuration_arn',
          playback_endpoint_prefix: 'playback_endpoint_prefix',
          session_initialization_endpoint_prefix: 'session_initialization_endpoint_prefix',
          slate_ad_url: 'slate_ad_url',
          tags: Map____mapOf__string.default(visited),
          transcode_profile_name: 'transcode_profile_name',
          video_content_source_url: 'video_content_source_url',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AdDecisionServerUrl'] = stub[:ad_decision_server_url] unless stub[:ad_decision_server_url].nil?
        data['AvailSuppression'] = Stubs::AvailSuppression.stub(stub[:avail_suppression]) unless stub[:avail_suppression].nil?
        data['Bumper'] = Stubs::Bumper.stub(stub[:bumper]) unless stub[:bumper].nil?
        data['CdnConfiguration'] = Stubs::CdnConfiguration.stub(stub[:cdn_configuration]) unless stub[:cdn_configuration].nil?
        data['ConfigurationAliases'] = Stubs::ConfigurationAliasesResponse.stub(stub[:configuration_aliases]) unless stub[:configuration_aliases].nil?
        data['DashConfiguration'] = Stubs::DashConfiguration.stub(stub[:dash_configuration]) unless stub[:dash_configuration].nil?
        data['HlsConfiguration'] = Stubs::HlsConfiguration.stub(stub[:hls_configuration]) unless stub[:hls_configuration].nil?
        data['LivePreRollConfiguration'] = Stubs::LivePreRollConfiguration.stub(stub[:live_pre_roll_configuration]) unless stub[:live_pre_roll_configuration].nil?
        data['LogConfiguration'] = Stubs::LogConfiguration.stub(stub[:log_configuration]) unless stub[:log_configuration].nil?
        data['ManifestProcessingRules'] = Stubs::ManifestProcessingRules.stub(stub[:manifest_processing_rules]) unless stub[:manifest_processing_rules].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['PersonalizationThresholdSeconds'] = stub[:personalization_threshold_seconds] unless stub[:personalization_threshold_seconds].nil?
        data['PlaybackConfigurationArn'] = stub[:playback_configuration_arn] unless stub[:playback_configuration_arn].nil?
        data['PlaybackEndpointPrefix'] = stub[:playback_endpoint_prefix] unless stub[:playback_endpoint_prefix].nil?
        data['SessionInitializationEndpointPrefix'] = stub[:session_initialization_endpoint_prefix] unless stub[:session_initialization_endpoint_prefix].nil?
        data['SlateAdUrl'] = stub[:slate_ad_url] unless stub[:slate_ad_url].nil?
        data['tags'] = Stubs::Map____mapOf__string.stub(stub[:tags]) unless stub[:tags].nil?
        data['TranscodeProfileName'] = stub[:transcode_profile_name] unless stub[:transcode_profile_name].nil?
        data['VideoContentSourceUrl'] = stub[:video_content_source_url] unless stub[:video_content_source_url].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ManifestProcessingRules
    class ManifestProcessingRules
      def self.default(visited=[])
        return nil if visited.include?('ManifestProcessingRules')
        visited = visited + ['ManifestProcessingRules']
        {
          ad_marker_passthrough: AdMarkerPassthrough.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ManifestProcessingRules.new
        data = {}
        data['AdMarkerPassthrough'] = Stubs::AdMarkerPassthrough.stub(stub[:ad_marker_passthrough]) unless stub[:ad_marker_passthrough].nil?
        data
      end
    end

    # Structure Stubber for AdMarkerPassthrough
    class AdMarkerPassthrough
      def self.default(visited=[])
        return nil if visited.include?('AdMarkerPassthrough')
        visited = visited + ['AdMarkerPassthrough']
        {
          enabled: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::AdMarkerPassthrough.new
        data = {}
        data['Enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data
      end
    end

    # Structure Stubber for LogConfiguration
    class LogConfiguration
      def self.default(visited=[])
        return nil if visited.include?('LogConfiguration')
        visited = visited + ['LogConfiguration']
        {
          percent_enabled: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::LogConfiguration.new
        data = {}
        data['PercentEnabled'] = stub[:percent_enabled] unless stub[:percent_enabled].nil?
        data
      end
    end

    # Structure Stubber for LivePreRollConfiguration
    class LivePreRollConfiguration
      def self.default(visited=[])
        return nil if visited.include?('LivePreRollConfiguration')
        visited = visited + ['LivePreRollConfiguration']
        {
          ad_decision_server_url: 'ad_decision_server_url',
          max_duration_seconds: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::LivePreRollConfiguration.new
        data = {}
        data['AdDecisionServerUrl'] = stub[:ad_decision_server_url] unless stub[:ad_decision_server_url].nil?
        data['MaxDurationSeconds'] = stub[:max_duration_seconds] unless stub[:max_duration_seconds].nil?
        data
      end
    end

    # Structure Stubber for HlsConfiguration
    class HlsConfiguration
      def self.default(visited=[])
        return nil if visited.include?('HlsConfiguration')
        visited = visited + ['HlsConfiguration']
        {
          manifest_endpoint_prefix: 'manifest_endpoint_prefix',
        }
      end

      def self.stub(stub)
        stub ||= Types::HlsConfiguration.new
        data = {}
        data['ManifestEndpointPrefix'] = stub[:manifest_endpoint_prefix] unless stub[:manifest_endpoint_prefix].nil?
        data
      end
    end

    # Structure Stubber for DashConfiguration
    class DashConfiguration
      def self.default(visited=[])
        return nil if visited.include?('DashConfiguration')
        visited = visited + ['DashConfiguration']
        {
          manifest_endpoint_prefix: 'manifest_endpoint_prefix',
          mpd_location: 'mpd_location',
          origin_manifest_type: 'origin_manifest_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::DashConfiguration.new
        data = {}
        data['ManifestEndpointPrefix'] = stub[:manifest_endpoint_prefix] unless stub[:manifest_endpoint_prefix].nil?
        data['MpdLocation'] = stub[:mpd_location] unless stub[:mpd_location].nil?
        data['OriginManifestType'] = stub[:origin_manifest_type] unless stub[:origin_manifest_type].nil?
        data
      end
    end

    # Map Stubber for ConfigurationAliasesResponse
    class ConfigurationAliasesResponse
      def self.default(visited=[])
        return nil if visited.include?('ConfigurationAliasesResponse')
        visited = visited + ['ConfigurationAliasesResponse']
        {
          test_key: Map____mapOf__string.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::Map____mapOf__string.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for CdnConfiguration
    class CdnConfiguration
      def self.default(visited=[])
        return nil if visited.include?('CdnConfiguration')
        visited = visited + ['CdnConfiguration']
        {
          ad_segment_url_prefix: 'ad_segment_url_prefix',
          content_segment_url_prefix: 'content_segment_url_prefix',
        }
      end

      def self.stub(stub)
        stub ||= Types::CdnConfiguration.new
        data = {}
        data['AdSegmentUrlPrefix'] = stub[:ad_segment_url_prefix] unless stub[:ad_segment_url_prefix].nil?
        data['ContentSegmentUrlPrefix'] = stub[:content_segment_url_prefix] unless stub[:content_segment_url_prefix].nil?
        data
      end
    end

    # Structure Stubber for Bumper
    class Bumper
      def self.default(visited=[])
        return nil if visited.include?('Bumper')
        visited = visited + ['Bumper']
        {
          end_url: 'end_url',
          start_url: 'start_url',
        }
      end

      def self.stub(stub)
        stub ||= Types::Bumper.new
        data = {}
        data['EndUrl'] = stub[:end_url] unless stub[:end_url].nil?
        data['StartUrl'] = stub[:start_url] unless stub[:start_url].nil?
        data
      end
    end

    # Structure Stubber for AvailSuppression
    class AvailSuppression
      def self.default(visited=[])
        return nil if visited.include?('AvailSuppression')
        visited = visited + ['AvailSuppression']
        {
          mode: 'mode',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::AvailSuppression.new
        data = {}
        data['Mode'] = stub[:mode] unless stub[:mode].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for GetPrefetchSchedule
    class GetPrefetchSchedule
      def self.default(visited=[])
        {
          arn: 'arn',
          consumption: PrefetchConsumption.default(visited),
          name: 'name',
          playback_configuration_name: 'playback_configuration_name',
          retrieval: PrefetchRetrieval.default(visited),
          stream_id: 'stream_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Consumption'] = Stubs::PrefetchConsumption.stub(stub[:consumption]) unless stub[:consumption].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['PlaybackConfigurationName'] = stub[:playback_configuration_name] unless stub[:playback_configuration_name].nil?
        data['Retrieval'] = Stubs::PrefetchRetrieval.stub(stub[:retrieval]) unless stub[:retrieval].nil?
        data['StreamId'] = stub[:stream_id] unless stub[:stream_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListAlerts
    class ListAlerts
      def self.default(visited=[])
        {
          items: List____listOfAlert.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Items'] = Stubs::List____listOfAlert.stub(stub[:items]) unless stub[:items].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfAlert
    class List____listOfAlert
      def self.default(visited=[])
        return nil if visited.include?('List____listOfAlert')
        visited = visited + ['List____listOfAlert']
        [
          Alert.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Alert.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Alert
    class Alert
      def self.default(visited=[])
        return nil if visited.include?('Alert')
        visited = visited + ['Alert']
        {
          alert_code: 'alert_code',
          alert_message: 'alert_message',
          last_modified_time: Time.now,
          related_resource_arns: List____listOf__string.default(visited),
          resource_arn: 'resource_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::Alert.new
        data = {}
        data['AlertCode'] = stub[:alert_code] unless stub[:alert_code].nil?
        data['AlertMessage'] = stub[:alert_message] unless stub[:alert_message].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['RelatedResourceArns'] = Stubs::List____listOf__string.stub(stub[:related_resource_arns]) unless stub[:related_resource_arns].nil?
        data['ResourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data
      end
    end

    # List Stubber for __listOf__string
    class List____listOf__string
      def self.default(visited=[])
        return nil if visited.include?('List____listOf__string')
        visited = visited + ['List____listOf__string']
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

    # Operation Stubber for ListChannels
    class ListChannels
      def self.default(visited=[])
        {
          items: List____listOfChannel.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Items'] = Stubs::List____listOfChannel.stub(stub[:items]) unless stub[:items].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfChannel
    class List____listOfChannel
      def self.default(visited=[])
        return nil if visited.include?('List____listOfChannel')
        visited = visited + ['List____listOfChannel']
        [
          Channel.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Channel.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Channel
    class Channel
      def self.default(visited=[])
        return nil if visited.include?('Channel')
        visited = visited + ['Channel']
        {
          arn: 'arn',
          channel_name: 'channel_name',
          channel_state: 'channel_state',
          creation_time: Time.now,
          filler_slate: SlateSource.default(visited),
          last_modified_time: Time.now,
          outputs: ResponseOutputs.default(visited),
          playback_mode: 'playback_mode',
          tags: Map____mapOf__string.default(visited),
          tier: 'tier',
        }
      end

      def self.stub(stub)
        stub ||= Types::Channel.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['ChannelName'] = stub[:channel_name] unless stub[:channel_name].nil?
        data['ChannelState'] = stub[:channel_state] unless stub[:channel_state].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['FillerSlate'] = Stubs::SlateSource.stub(stub[:filler_slate]) unless stub[:filler_slate].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['Outputs'] = Stubs::ResponseOutputs.stub(stub[:outputs]) unless stub[:outputs].nil?
        data['PlaybackMode'] = stub[:playback_mode] unless stub[:playback_mode].nil?
        data['tags'] = Stubs::Map____mapOf__string.stub(stub[:tags]) unless stub[:tags].nil?
        data['Tier'] = stub[:tier] unless stub[:tier].nil?
        data
      end
    end

    # Operation Stubber for ListLiveSources
    class ListLiveSources
      def self.default(visited=[])
        {
          items: List____listOfLiveSource.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Items'] = Stubs::List____listOfLiveSource.stub(stub[:items]) unless stub[:items].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfLiveSource
    class List____listOfLiveSource
      def self.default(visited=[])
        return nil if visited.include?('List____listOfLiveSource')
        visited = visited + ['List____listOfLiveSource']
        [
          LiveSource.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::LiveSource.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for LiveSource
    class LiveSource
      def self.default(visited=[])
        return nil if visited.include?('LiveSource')
        visited = visited + ['LiveSource']
        {
          arn: 'arn',
          creation_time: Time.now,
          http_package_configurations: HttpPackageConfigurations.default(visited),
          last_modified_time: Time.now,
          live_source_name: 'live_source_name',
          source_location_name: 'source_location_name',
          tags: Map____mapOf__string.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LiveSource.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['HttpPackageConfigurations'] = Stubs::HttpPackageConfigurations.stub(stub[:http_package_configurations]) unless stub[:http_package_configurations].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['LiveSourceName'] = stub[:live_source_name] unless stub[:live_source_name].nil?
        data['SourceLocationName'] = stub[:source_location_name] unless stub[:source_location_name].nil?
        data['tags'] = Stubs::Map____mapOf__string.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for ListPlaybackConfigurations
    class ListPlaybackConfigurations
      def self.default(visited=[])
        {
          items: List____listOfPlaybackConfiguration.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Items'] = Stubs::List____listOfPlaybackConfiguration.stub(stub[:items]) unless stub[:items].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfPlaybackConfiguration
    class List____listOfPlaybackConfiguration
      def self.default(visited=[])
        return nil if visited.include?('List____listOfPlaybackConfiguration')
        visited = visited + ['List____listOfPlaybackConfiguration']
        [
          PlaybackConfiguration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PlaybackConfiguration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PlaybackConfiguration
    class PlaybackConfiguration
      def self.default(visited=[])
        return nil if visited.include?('PlaybackConfiguration')
        visited = visited + ['PlaybackConfiguration']
        {
          ad_decision_server_url: 'ad_decision_server_url',
          avail_suppression: AvailSuppression.default(visited),
          bumper: Bumper.default(visited),
          cdn_configuration: CdnConfiguration.default(visited),
          configuration_aliases: ConfigurationAliasesResponse.default(visited),
          dash_configuration: DashConfiguration.default(visited),
          hls_configuration: HlsConfiguration.default(visited),
          live_pre_roll_configuration: LivePreRollConfiguration.default(visited),
          log_configuration: LogConfiguration.default(visited),
          manifest_processing_rules: ManifestProcessingRules.default(visited),
          name: 'name',
          personalization_threshold_seconds: 1,
          playback_configuration_arn: 'playback_configuration_arn',
          playback_endpoint_prefix: 'playback_endpoint_prefix',
          session_initialization_endpoint_prefix: 'session_initialization_endpoint_prefix',
          slate_ad_url: 'slate_ad_url',
          tags: Map____mapOf__string.default(visited),
          transcode_profile_name: 'transcode_profile_name',
          video_content_source_url: 'video_content_source_url',
        }
      end

      def self.stub(stub)
        stub ||= Types::PlaybackConfiguration.new
        data = {}
        data['AdDecisionServerUrl'] = stub[:ad_decision_server_url] unless stub[:ad_decision_server_url].nil?
        data['AvailSuppression'] = Stubs::AvailSuppression.stub(stub[:avail_suppression]) unless stub[:avail_suppression].nil?
        data['Bumper'] = Stubs::Bumper.stub(stub[:bumper]) unless stub[:bumper].nil?
        data['CdnConfiguration'] = Stubs::CdnConfiguration.stub(stub[:cdn_configuration]) unless stub[:cdn_configuration].nil?
        data['ConfigurationAliases'] = Stubs::ConfigurationAliasesResponse.stub(stub[:configuration_aliases]) unless stub[:configuration_aliases].nil?
        data['DashConfiguration'] = Stubs::DashConfiguration.stub(stub[:dash_configuration]) unless stub[:dash_configuration].nil?
        data['HlsConfiguration'] = Stubs::HlsConfiguration.stub(stub[:hls_configuration]) unless stub[:hls_configuration].nil?
        data['LivePreRollConfiguration'] = Stubs::LivePreRollConfiguration.stub(stub[:live_pre_roll_configuration]) unless stub[:live_pre_roll_configuration].nil?
        data['LogConfiguration'] = Stubs::LogConfiguration.stub(stub[:log_configuration]) unless stub[:log_configuration].nil?
        data['ManifestProcessingRules'] = Stubs::ManifestProcessingRules.stub(stub[:manifest_processing_rules]) unless stub[:manifest_processing_rules].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['PersonalizationThresholdSeconds'] = stub[:personalization_threshold_seconds] unless stub[:personalization_threshold_seconds].nil?
        data['PlaybackConfigurationArn'] = stub[:playback_configuration_arn] unless stub[:playback_configuration_arn].nil?
        data['PlaybackEndpointPrefix'] = stub[:playback_endpoint_prefix] unless stub[:playback_endpoint_prefix].nil?
        data['SessionInitializationEndpointPrefix'] = stub[:session_initialization_endpoint_prefix] unless stub[:session_initialization_endpoint_prefix].nil?
        data['SlateAdUrl'] = stub[:slate_ad_url] unless stub[:slate_ad_url].nil?
        data['tags'] = Stubs::Map____mapOf__string.stub(stub[:tags]) unless stub[:tags].nil?
        data['TranscodeProfileName'] = stub[:transcode_profile_name] unless stub[:transcode_profile_name].nil?
        data['VideoContentSourceUrl'] = stub[:video_content_source_url] unless stub[:video_content_source_url].nil?
        data
      end
    end

    # Operation Stubber for ListPrefetchSchedules
    class ListPrefetchSchedules
      def self.default(visited=[])
        {
          items: List____listOfPrefetchSchedule.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Items'] = Stubs::List____listOfPrefetchSchedule.stub(stub[:items]) unless stub[:items].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfPrefetchSchedule
    class List____listOfPrefetchSchedule
      def self.default(visited=[])
        return nil if visited.include?('List____listOfPrefetchSchedule')
        visited = visited + ['List____listOfPrefetchSchedule']
        [
          PrefetchSchedule.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PrefetchSchedule.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PrefetchSchedule
    class PrefetchSchedule
      def self.default(visited=[])
        return nil if visited.include?('PrefetchSchedule')
        visited = visited + ['PrefetchSchedule']
        {
          arn: 'arn',
          consumption: PrefetchConsumption.default(visited),
          name: 'name',
          playback_configuration_name: 'playback_configuration_name',
          retrieval: PrefetchRetrieval.default(visited),
          stream_id: 'stream_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::PrefetchSchedule.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Consumption'] = Stubs::PrefetchConsumption.stub(stub[:consumption]) unless stub[:consumption].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['PlaybackConfigurationName'] = stub[:playback_configuration_name] unless stub[:playback_configuration_name].nil?
        data['Retrieval'] = Stubs::PrefetchRetrieval.stub(stub[:retrieval]) unless stub[:retrieval].nil?
        data['StreamId'] = stub[:stream_id] unless stub[:stream_id].nil?
        data
      end
    end

    # Operation Stubber for ListSourceLocations
    class ListSourceLocations
      def self.default(visited=[])
        {
          items: List____listOfSourceLocation.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Items'] = Stubs::List____listOfSourceLocation.stub(stub[:items]) unless stub[:items].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfSourceLocation
    class List____listOfSourceLocation
      def self.default(visited=[])
        return nil if visited.include?('List____listOfSourceLocation')
        visited = visited + ['List____listOfSourceLocation']
        [
          SourceLocation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SourceLocation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SourceLocation
    class SourceLocation
      def self.default(visited=[])
        return nil if visited.include?('SourceLocation')
        visited = visited + ['SourceLocation']
        {
          access_configuration: AccessConfiguration.default(visited),
          arn: 'arn',
          creation_time: Time.now,
          default_segment_delivery_configuration: DefaultSegmentDeliveryConfiguration.default(visited),
          http_configuration: HttpConfiguration.default(visited),
          last_modified_time: Time.now,
          segment_delivery_configurations: List____listOfSegmentDeliveryConfiguration.default(visited),
          source_location_name: 'source_location_name',
          tags: Map____mapOf__string.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SourceLocation.new
        data = {}
        data['AccessConfiguration'] = Stubs::AccessConfiguration.stub(stub[:access_configuration]) unless stub[:access_configuration].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['DefaultSegmentDeliveryConfiguration'] = Stubs::DefaultSegmentDeliveryConfiguration.stub(stub[:default_segment_delivery_configuration]) unless stub[:default_segment_delivery_configuration].nil?
        data['HttpConfiguration'] = Stubs::HttpConfiguration.stub(stub[:http_configuration]) unless stub[:http_configuration].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['SegmentDeliveryConfigurations'] = Stubs::List____listOfSegmentDeliveryConfiguration.stub(stub[:segment_delivery_configurations]) unless stub[:segment_delivery_configurations].nil?
        data['SourceLocationName'] = stub[:source_location_name] unless stub[:source_location_name].nil?
        data['tags'] = Stubs::Map____mapOf__string.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: Map____mapOf__string.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['tags'] = Stubs::Map____mapOf__string.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListVodSources
    class ListVodSources
      def self.default(visited=[])
        {
          items: List____listOfVodSource.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Items'] = Stubs::List____listOfVodSource.stub(stub[:items]) unless stub[:items].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfVodSource
    class List____listOfVodSource
      def self.default(visited=[])
        return nil if visited.include?('List____listOfVodSource')
        visited = visited + ['List____listOfVodSource']
        [
          VodSource.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::VodSource.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for VodSource
    class VodSource
      def self.default(visited=[])
        return nil if visited.include?('VodSource')
        visited = visited + ['VodSource']
        {
          arn: 'arn',
          creation_time: Time.now,
          http_package_configurations: HttpPackageConfigurations.default(visited),
          last_modified_time: Time.now,
          source_location_name: 'source_location_name',
          tags: Map____mapOf__string.default(visited),
          vod_source_name: 'vod_source_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::VodSource.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['HttpPackageConfigurations'] = Stubs::HttpPackageConfigurations.stub(stub[:http_package_configurations]) unless stub[:http_package_configurations].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['SourceLocationName'] = stub[:source_location_name] unless stub[:source_location_name].nil?
        data['tags'] = Stubs::Map____mapOf__string.stub(stub[:tags]) unless stub[:tags].nil?
        data['VodSourceName'] = stub[:vod_source_name] unless stub[:vod_source_name].nil?
        data
      end
    end

    # Operation Stubber for PutChannelPolicy
    class PutChannelPolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutPlaybackConfiguration
    class PutPlaybackConfiguration
      def self.default(visited=[])
        {
          ad_decision_server_url: 'ad_decision_server_url',
          avail_suppression: AvailSuppression.default(visited),
          bumper: Bumper.default(visited),
          cdn_configuration: CdnConfiguration.default(visited),
          configuration_aliases: ConfigurationAliasesResponse.default(visited),
          dash_configuration: DashConfiguration.default(visited),
          hls_configuration: HlsConfiguration.default(visited),
          live_pre_roll_configuration: LivePreRollConfiguration.default(visited),
          log_configuration: LogConfiguration.default(visited),
          manifest_processing_rules: ManifestProcessingRules.default(visited),
          name: 'name',
          personalization_threshold_seconds: 1,
          playback_configuration_arn: 'playback_configuration_arn',
          playback_endpoint_prefix: 'playback_endpoint_prefix',
          session_initialization_endpoint_prefix: 'session_initialization_endpoint_prefix',
          slate_ad_url: 'slate_ad_url',
          tags: Map____mapOf__string.default(visited),
          transcode_profile_name: 'transcode_profile_name',
          video_content_source_url: 'video_content_source_url',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AdDecisionServerUrl'] = stub[:ad_decision_server_url] unless stub[:ad_decision_server_url].nil?
        data['AvailSuppression'] = Stubs::AvailSuppression.stub(stub[:avail_suppression]) unless stub[:avail_suppression].nil?
        data['Bumper'] = Stubs::Bumper.stub(stub[:bumper]) unless stub[:bumper].nil?
        data['CdnConfiguration'] = Stubs::CdnConfiguration.stub(stub[:cdn_configuration]) unless stub[:cdn_configuration].nil?
        data['ConfigurationAliases'] = Stubs::ConfigurationAliasesResponse.stub(stub[:configuration_aliases]) unless stub[:configuration_aliases].nil?
        data['DashConfiguration'] = Stubs::DashConfiguration.stub(stub[:dash_configuration]) unless stub[:dash_configuration].nil?
        data['HlsConfiguration'] = Stubs::HlsConfiguration.stub(stub[:hls_configuration]) unless stub[:hls_configuration].nil?
        data['LivePreRollConfiguration'] = Stubs::LivePreRollConfiguration.stub(stub[:live_pre_roll_configuration]) unless stub[:live_pre_roll_configuration].nil?
        data['LogConfiguration'] = Stubs::LogConfiguration.stub(stub[:log_configuration]) unless stub[:log_configuration].nil?
        data['ManifestProcessingRules'] = Stubs::ManifestProcessingRules.stub(stub[:manifest_processing_rules]) unless stub[:manifest_processing_rules].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['PersonalizationThresholdSeconds'] = stub[:personalization_threshold_seconds] unless stub[:personalization_threshold_seconds].nil?
        data['PlaybackConfigurationArn'] = stub[:playback_configuration_arn] unless stub[:playback_configuration_arn].nil?
        data['PlaybackEndpointPrefix'] = stub[:playback_endpoint_prefix] unless stub[:playback_endpoint_prefix].nil?
        data['SessionInitializationEndpointPrefix'] = stub[:session_initialization_endpoint_prefix] unless stub[:session_initialization_endpoint_prefix].nil?
        data['SlateAdUrl'] = stub[:slate_ad_url] unless stub[:slate_ad_url].nil?
        data['tags'] = Stubs::Map____mapOf__string.stub(stub[:tags]) unless stub[:tags].nil?
        data['TranscodeProfileName'] = stub[:transcode_profile_name] unless stub[:transcode_profile_name].nil?
        data['VideoContentSourceUrl'] = stub[:video_content_source_url] unless stub[:video_content_source_url].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StartChannel
    class StartChannel
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopChannel
    class StopChannel
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for UntagResource
    class UntagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for UpdateChannel
    class UpdateChannel
      def self.default(visited=[])
        {
          arn: 'arn',
          channel_name: 'channel_name',
          channel_state: 'channel_state',
          creation_time: Time.now,
          filler_slate: SlateSource.default(visited),
          last_modified_time: Time.now,
          outputs: ResponseOutputs.default(visited),
          playback_mode: 'playback_mode',
          tags: Map____mapOf__string.default(visited),
          tier: 'tier',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['ChannelName'] = stub[:channel_name] unless stub[:channel_name].nil?
        data['ChannelState'] = stub[:channel_state] unless stub[:channel_state].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['FillerSlate'] = Stubs::SlateSource.stub(stub[:filler_slate]) unless stub[:filler_slate].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['Outputs'] = Stubs::ResponseOutputs.stub(stub[:outputs]) unless stub[:outputs].nil?
        data['PlaybackMode'] = stub[:playback_mode] unless stub[:playback_mode].nil?
        data['tags'] = Stubs::Map____mapOf__string.stub(stub[:tags]) unless stub[:tags].nil?
        data['Tier'] = stub[:tier] unless stub[:tier].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateLiveSource
    class UpdateLiveSource
      def self.default(visited=[])
        {
          arn: 'arn',
          creation_time: Time.now,
          http_package_configurations: HttpPackageConfigurations.default(visited),
          last_modified_time: Time.now,
          live_source_name: 'live_source_name',
          source_location_name: 'source_location_name',
          tags: Map____mapOf__string.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['HttpPackageConfigurations'] = Stubs::HttpPackageConfigurations.stub(stub[:http_package_configurations]) unless stub[:http_package_configurations].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['LiveSourceName'] = stub[:live_source_name] unless stub[:live_source_name].nil?
        data['SourceLocationName'] = stub[:source_location_name] unless stub[:source_location_name].nil?
        data['tags'] = Stubs::Map____mapOf__string.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateSourceLocation
    class UpdateSourceLocation
      def self.default(visited=[])
        {
          access_configuration: AccessConfiguration.default(visited),
          arn: 'arn',
          creation_time: Time.now,
          default_segment_delivery_configuration: DefaultSegmentDeliveryConfiguration.default(visited),
          http_configuration: HttpConfiguration.default(visited),
          last_modified_time: Time.now,
          segment_delivery_configurations: List____listOfSegmentDeliveryConfiguration.default(visited),
          source_location_name: 'source_location_name',
          tags: Map____mapOf__string.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AccessConfiguration'] = Stubs::AccessConfiguration.stub(stub[:access_configuration]) unless stub[:access_configuration].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['DefaultSegmentDeliveryConfiguration'] = Stubs::DefaultSegmentDeliveryConfiguration.stub(stub[:default_segment_delivery_configuration]) unless stub[:default_segment_delivery_configuration].nil?
        data['HttpConfiguration'] = Stubs::HttpConfiguration.stub(stub[:http_configuration]) unless stub[:http_configuration].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['SegmentDeliveryConfigurations'] = Stubs::List____listOfSegmentDeliveryConfiguration.stub(stub[:segment_delivery_configurations]) unless stub[:segment_delivery_configurations].nil?
        data['SourceLocationName'] = stub[:source_location_name] unless stub[:source_location_name].nil?
        data['tags'] = Stubs::Map____mapOf__string.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateVodSource
    class UpdateVodSource
      def self.default(visited=[])
        {
          arn: 'arn',
          creation_time: Time.now,
          http_package_configurations: HttpPackageConfigurations.default(visited),
          last_modified_time: Time.now,
          source_location_name: 'source_location_name',
          tags: Map____mapOf__string.default(visited),
          vod_source_name: 'vod_source_name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['HttpPackageConfigurations'] = Stubs::HttpPackageConfigurations.stub(stub[:http_package_configurations]) unless stub[:http_package_configurations].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['SourceLocationName'] = stub[:source_location_name] unless stub[:source_location_name].nil?
        data['tags'] = Stubs::Map____mapOf__string.stub(stub[:tags]) unless stub[:tags].nil?
        data['VodSourceName'] = stub[:vod_source_name] unless stub[:vod_source_name].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
