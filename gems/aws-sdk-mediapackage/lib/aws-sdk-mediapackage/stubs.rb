# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::MediaPackage
  module Stubs

    # Operation Stubber for ConfigureLogs
    class ConfigureLogs
      def self.default(visited=[])
        {
          arn: 'arn',
          description: 'description',
          egress_access_logs: EgressAccessLogs.default(visited),
          hls_ingest: HlsIngest.default(visited),
          id: 'id',
          ingress_access_logs: IngressAccessLogs.default(visited),
          tags: Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['egressAccessLogs'] = EgressAccessLogs.stub(stub[:egress_access_logs]) unless stub[:egress_access_logs].nil?
        data['hlsIngest'] = HlsIngest.stub(stub[:hls_ingest]) unless stub[:hls_ingest].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['ingressAccessLogs'] = IngressAccessLogs.stub(stub[:ingress_access_logs]) unless stub[:ingress_access_logs].nil?
        data['tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Stubber for Tags
    class Tags
      def self.default(visited=[])
        return nil if visited.include?('Tags')
        visited = visited + ['Tags']
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

    # Structure Stubber for IngressAccessLogs
    class IngressAccessLogs
      def self.default(visited=[])
        return nil if visited.include?('IngressAccessLogs')
        visited = visited + ['IngressAccessLogs']
        {
          log_group_name: 'log_group_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::IngressAccessLogs.new
        data = {}
        data['logGroupName'] = stub[:log_group_name] unless stub[:log_group_name].nil?
        data
      end
    end

    # Structure Stubber for HlsIngest
    class HlsIngest
      def self.default(visited=[])
        return nil if visited.include?('HlsIngest')
        visited = visited + ['HlsIngest']
        {
          ingest_endpoints: List____listOfIngestEndpoint.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::HlsIngest.new
        data = {}
        data['ingestEndpoints'] = List____listOfIngestEndpoint.stub(stub[:ingest_endpoints]) unless stub[:ingest_endpoints].nil?
        data
      end
    end

    # List Stubber for __listOfIngestEndpoint
    class List____listOfIngestEndpoint
      def self.default(visited=[])
        return nil if visited.include?('List____listOfIngestEndpoint')
        visited = visited + ['List____listOfIngestEndpoint']
        [
          IngestEndpoint.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << IngestEndpoint.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for IngestEndpoint
    class IngestEndpoint
      def self.default(visited=[])
        return nil if visited.include?('IngestEndpoint')
        visited = visited + ['IngestEndpoint']
        {
          id: 'id',
          password: 'password',
          url: 'url',
          username: 'username',
        }
      end

      def self.stub(stub)
        stub ||= Types::IngestEndpoint.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['password'] = stub[:password] unless stub[:password].nil?
        data['url'] = stub[:url] unless stub[:url].nil?
        data['username'] = stub[:username] unless stub[:username].nil?
        data
      end
    end

    # Structure Stubber for EgressAccessLogs
    class EgressAccessLogs
      def self.default(visited=[])
        return nil if visited.include?('EgressAccessLogs')
        visited = visited + ['EgressAccessLogs']
        {
          log_group_name: 'log_group_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::EgressAccessLogs.new
        data = {}
        data['logGroupName'] = stub[:log_group_name] unless stub[:log_group_name].nil?
        data
      end
    end

    # Operation Stubber for CreateChannel
    class CreateChannel
      def self.default(visited=[])
        {
          arn: 'arn',
          description: 'description',
          egress_access_logs: EgressAccessLogs.default(visited),
          hls_ingest: HlsIngest.default(visited),
          id: 'id',
          ingress_access_logs: IngressAccessLogs.default(visited),
          tags: Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['egressAccessLogs'] = EgressAccessLogs.stub(stub[:egress_access_logs]) unless stub[:egress_access_logs].nil?
        data['hlsIngest'] = HlsIngest.stub(stub[:hls_ingest]) unless stub[:hls_ingest].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['ingressAccessLogs'] = IngressAccessLogs.stub(stub[:ingress_access_logs]) unless stub[:ingress_access_logs].nil?
        data['tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateHarvestJob
    class CreateHarvestJob
      def self.default(visited=[])
        {
          arn: 'arn',
          channel_id: 'channel_id',
          created_at: 'created_at',
          end_time: 'end_time',
          id: 'id',
          origin_endpoint_id: 'origin_endpoint_id',
          s3_destination: S3Destination.default(visited),
          start_time: 'start_time',
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['channelId'] = stub[:channel_id] unless stub[:channel_id].nil?
        data['createdAt'] = stub[:created_at] unless stub[:created_at].nil?
        data['endTime'] = stub[:end_time] unless stub[:end_time].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['originEndpointId'] = stub[:origin_endpoint_id] unless stub[:origin_endpoint_id].nil?
        data['s3Destination'] = S3Destination.stub(stub[:s3_destination]) unless stub[:s3_destination].nil?
        data['startTime'] = stub[:start_time] unless stub[:start_time].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for S3Destination
    class S3Destination
      def self.default(visited=[])
        return nil if visited.include?('S3Destination')
        visited = visited + ['S3Destination']
        {
          bucket_name: 'bucket_name',
          manifest_key: 'manifest_key',
          role_arn: 'role_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3Destination.new
        data = {}
        data['bucketName'] = stub[:bucket_name] unless stub[:bucket_name].nil?
        data['manifestKey'] = stub[:manifest_key] unless stub[:manifest_key].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data
      end
    end

    # Operation Stubber for CreateOriginEndpoint
    class CreateOriginEndpoint
      def self.default(visited=[])
        {
          arn: 'arn',
          authorization: Authorization.default(visited),
          channel_id: 'channel_id',
          cmaf_package: CmafPackage.default(visited),
          dash_package: DashPackage.default(visited),
          description: 'description',
          hls_package: HlsPackage.default(visited),
          id: 'id',
          manifest_name: 'manifest_name',
          mss_package: MssPackage.default(visited),
          origination: 'origination',
          startover_window_seconds: 1,
          tags: Tags.default(visited),
          time_delay_seconds: 1,
          url: 'url',
          whitelist: List____listOf__string.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['authorization'] = Authorization.stub(stub[:authorization]) unless stub[:authorization].nil?
        data['channelId'] = stub[:channel_id] unless stub[:channel_id].nil?
        data['cmafPackage'] = CmafPackage.stub(stub[:cmaf_package]) unless stub[:cmaf_package].nil?
        data['dashPackage'] = DashPackage.stub(stub[:dash_package]) unless stub[:dash_package].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['hlsPackage'] = HlsPackage.stub(stub[:hls_package]) unless stub[:hls_package].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['manifestName'] = stub[:manifest_name] unless stub[:manifest_name].nil?
        data['mssPackage'] = MssPackage.stub(stub[:mss_package]) unless stub[:mss_package].nil?
        data['origination'] = stub[:origination] unless stub[:origination].nil?
        data['startoverWindowSeconds'] = stub[:startover_window_seconds] unless stub[:startover_window_seconds].nil?
        data['tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['timeDelaySeconds'] = stub[:time_delay_seconds] unless stub[:time_delay_seconds].nil?
        data['url'] = stub[:url] unless stub[:url].nil?
        data['whitelist'] = List____listOf__string.stub(stub[:whitelist]) unless stub[:whitelist].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
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

    # Structure Stubber for MssPackage
    class MssPackage
      def self.default(visited=[])
        return nil if visited.include?('MssPackage')
        visited = visited + ['MssPackage']
        {
          encryption: MssEncryption.default(visited),
          manifest_window_seconds: 1,
          segment_duration_seconds: 1,
          stream_selection: StreamSelection.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MssPackage.new
        data = {}
        data['encryption'] = MssEncryption.stub(stub[:encryption]) unless stub[:encryption].nil?
        data['manifestWindowSeconds'] = stub[:manifest_window_seconds] unless stub[:manifest_window_seconds].nil?
        data['segmentDurationSeconds'] = stub[:segment_duration_seconds] unless stub[:segment_duration_seconds].nil?
        data['streamSelection'] = StreamSelection.stub(stub[:stream_selection]) unless stub[:stream_selection].nil?
        data
      end
    end

    # Structure Stubber for StreamSelection
    class StreamSelection
      def self.default(visited=[])
        return nil if visited.include?('StreamSelection')
        visited = visited + ['StreamSelection']
        {
          max_video_bits_per_second: 1,
          min_video_bits_per_second: 1,
          stream_order: 'stream_order',
        }
      end

      def self.stub(stub)
        stub ||= Types::StreamSelection.new
        data = {}
        data['maxVideoBitsPerSecond'] = stub[:max_video_bits_per_second] unless stub[:max_video_bits_per_second].nil?
        data['minVideoBitsPerSecond'] = stub[:min_video_bits_per_second] unless stub[:min_video_bits_per_second].nil?
        data['streamOrder'] = stub[:stream_order] unless stub[:stream_order].nil?
        data
      end
    end

    # Structure Stubber for MssEncryption
    class MssEncryption
      def self.default(visited=[])
        return nil if visited.include?('MssEncryption')
        visited = visited + ['MssEncryption']
        {
          speke_key_provider: SpekeKeyProvider.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MssEncryption.new
        data = {}
        data['spekeKeyProvider'] = SpekeKeyProvider.stub(stub[:speke_key_provider]) unless stub[:speke_key_provider].nil?
        data
      end
    end

    # Structure Stubber for SpekeKeyProvider
    class SpekeKeyProvider
      def self.default(visited=[])
        return nil if visited.include?('SpekeKeyProvider')
        visited = visited + ['SpekeKeyProvider']
        {
          certificate_arn: 'certificate_arn',
          encryption_contract_configuration: EncryptionContractConfiguration.default(visited),
          resource_id: 'resource_id',
          role_arn: 'role_arn',
          system_ids: List____listOf__string.default(visited),
          url: 'url',
        }
      end

      def self.stub(stub)
        stub ||= Types::SpekeKeyProvider.new
        data = {}
        data['certificateArn'] = stub[:certificate_arn] unless stub[:certificate_arn].nil?
        data['encryptionContractConfiguration'] = EncryptionContractConfiguration.stub(stub[:encryption_contract_configuration]) unless stub[:encryption_contract_configuration].nil?
        data['resourceId'] = stub[:resource_id] unless stub[:resource_id].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['systemIds'] = List____listOf__string.stub(stub[:system_ids]) unless stub[:system_ids].nil?
        data['url'] = stub[:url] unless stub[:url].nil?
        data
      end
    end

    # Structure Stubber for EncryptionContractConfiguration
    class EncryptionContractConfiguration
      def self.default(visited=[])
        return nil if visited.include?('EncryptionContractConfiguration')
        visited = visited + ['EncryptionContractConfiguration']
        {
          preset_speke20_audio: 'preset_speke20_audio',
          preset_speke20_video: 'preset_speke20_video',
        }
      end

      def self.stub(stub)
        stub ||= Types::EncryptionContractConfiguration.new
        data = {}
        data['presetSpeke20Audio'] = stub[:preset_speke20_audio] unless stub[:preset_speke20_audio].nil?
        data['presetSpeke20Video'] = stub[:preset_speke20_video] unless stub[:preset_speke20_video].nil?
        data
      end
    end

    # Structure Stubber for HlsPackage
    class HlsPackage
      def self.default(visited=[])
        return nil if visited.include?('HlsPackage')
        visited = visited + ['HlsPackage']
        {
          ad_markers: 'ad_markers',
          ad_triggers: AdTriggers.default(visited),
          ads_on_delivery_restrictions: 'ads_on_delivery_restrictions',
          encryption: HlsEncryption.default(visited),
          include_dvb_subtitles: false,
          include_iframe_only_stream: false,
          playlist_type: 'playlist_type',
          playlist_window_seconds: 1,
          program_date_time_interval_seconds: 1,
          segment_duration_seconds: 1,
          stream_selection: StreamSelection.default(visited),
          use_audio_rendition_group: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::HlsPackage.new
        data = {}
        data['adMarkers'] = stub[:ad_markers] unless stub[:ad_markers].nil?
        data['adTriggers'] = AdTriggers.stub(stub[:ad_triggers]) unless stub[:ad_triggers].nil?
        data['adsOnDeliveryRestrictions'] = stub[:ads_on_delivery_restrictions] unless stub[:ads_on_delivery_restrictions].nil?
        data['encryption'] = HlsEncryption.stub(stub[:encryption]) unless stub[:encryption].nil?
        data['includeDvbSubtitles'] = stub[:include_dvb_subtitles] unless stub[:include_dvb_subtitles].nil?
        data['includeIframeOnlyStream'] = stub[:include_iframe_only_stream] unless stub[:include_iframe_only_stream].nil?
        data['playlistType'] = stub[:playlist_type] unless stub[:playlist_type].nil?
        data['playlistWindowSeconds'] = stub[:playlist_window_seconds] unless stub[:playlist_window_seconds].nil?
        data['programDateTimeIntervalSeconds'] = stub[:program_date_time_interval_seconds] unless stub[:program_date_time_interval_seconds].nil?
        data['segmentDurationSeconds'] = stub[:segment_duration_seconds] unless stub[:segment_duration_seconds].nil?
        data['streamSelection'] = StreamSelection.stub(stub[:stream_selection]) unless stub[:stream_selection].nil?
        data['useAudioRenditionGroup'] = stub[:use_audio_rendition_group] unless stub[:use_audio_rendition_group].nil?
        data
      end
    end

    # Structure Stubber for HlsEncryption
    class HlsEncryption
      def self.default(visited=[])
        return nil if visited.include?('HlsEncryption')
        visited = visited + ['HlsEncryption']
        {
          constant_initialization_vector: 'constant_initialization_vector',
          encryption_method: 'encryption_method',
          key_rotation_interval_seconds: 1,
          repeat_ext_x_key: false,
          speke_key_provider: SpekeKeyProvider.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::HlsEncryption.new
        data = {}
        data['constantInitializationVector'] = stub[:constant_initialization_vector] unless stub[:constant_initialization_vector].nil?
        data['encryptionMethod'] = stub[:encryption_method] unless stub[:encryption_method].nil?
        data['keyRotationIntervalSeconds'] = stub[:key_rotation_interval_seconds] unless stub[:key_rotation_interval_seconds].nil?
        data['repeatExtXKey'] = stub[:repeat_ext_x_key] unless stub[:repeat_ext_x_key].nil?
        data['spekeKeyProvider'] = SpekeKeyProvider.stub(stub[:speke_key_provider]) unless stub[:speke_key_provider].nil?
        data
      end
    end

    # List Stubber for AdTriggers
    class AdTriggers
      def self.default(visited=[])
        return nil if visited.include?('AdTriggers')
        visited = visited + ['AdTriggers']
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

    # Structure Stubber for DashPackage
    class DashPackage
      def self.default(visited=[])
        return nil if visited.include?('DashPackage')
        visited = visited + ['DashPackage']
        {
          ad_triggers: AdTriggers.default(visited),
          ads_on_delivery_restrictions: 'ads_on_delivery_restrictions',
          encryption: DashEncryption.default(visited),
          manifest_layout: 'manifest_layout',
          manifest_window_seconds: 1,
          min_buffer_time_seconds: 1,
          min_update_period_seconds: 1,
          period_triggers: List____listOf__PeriodTriggersElement.default(visited),
          profile: 'profile',
          segment_duration_seconds: 1,
          segment_template_format: 'segment_template_format',
          stream_selection: StreamSelection.default(visited),
          suggested_presentation_delay_seconds: 1,
          utc_timing: 'utc_timing',
          utc_timing_uri: 'utc_timing_uri',
        }
      end

      def self.stub(stub)
        stub ||= Types::DashPackage.new
        data = {}
        data['adTriggers'] = AdTriggers.stub(stub[:ad_triggers]) unless stub[:ad_triggers].nil?
        data['adsOnDeliveryRestrictions'] = stub[:ads_on_delivery_restrictions] unless stub[:ads_on_delivery_restrictions].nil?
        data['encryption'] = DashEncryption.stub(stub[:encryption]) unless stub[:encryption].nil?
        data['manifestLayout'] = stub[:manifest_layout] unless stub[:manifest_layout].nil?
        data['manifestWindowSeconds'] = stub[:manifest_window_seconds] unless stub[:manifest_window_seconds].nil?
        data['minBufferTimeSeconds'] = stub[:min_buffer_time_seconds] unless stub[:min_buffer_time_seconds].nil?
        data['minUpdatePeriodSeconds'] = stub[:min_update_period_seconds] unless stub[:min_update_period_seconds].nil?
        data['periodTriggers'] = List____listOf__PeriodTriggersElement.stub(stub[:period_triggers]) unless stub[:period_triggers].nil?
        data['profile'] = stub[:profile] unless stub[:profile].nil?
        data['segmentDurationSeconds'] = stub[:segment_duration_seconds] unless stub[:segment_duration_seconds].nil?
        data['segmentTemplateFormat'] = stub[:segment_template_format] unless stub[:segment_template_format].nil?
        data['streamSelection'] = StreamSelection.stub(stub[:stream_selection]) unless stub[:stream_selection].nil?
        data['suggestedPresentationDelaySeconds'] = stub[:suggested_presentation_delay_seconds] unless stub[:suggested_presentation_delay_seconds].nil?
        data['utcTiming'] = stub[:utc_timing] unless stub[:utc_timing].nil?
        data['utcTimingUri'] = stub[:utc_timing_uri] unless stub[:utc_timing_uri].nil?
        data
      end
    end

    # List Stubber for __listOf__PeriodTriggersElement
    class List____listOf__PeriodTriggersElement
      def self.default(visited=[])
        return nil if visited.include?('List____listOf__PeriodTriggersElement')
        visited = visited + ['List____listOf__PeriodTriggersElement']
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

    # Structure Stubber for DashEncryption
    class DashEncryption
      def self.default(visited=[])
        return nil if visited.include?('DashEncryption')
        visited = visited + ['DashEncryption']
        {
          key_rotation_interval_seconds: 1,
          speke_key_provider: SpekeKeyProvider.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DashEncryption.new
        data = {}
        data['keyRotationIntervalSeconds'] = stub[:key_rotation_interval_seconds] unless stub[:key_rotation_interval_seconds].nil?
        data['spekeKeyProvider'] = SpekeKeyProvider.stub(stub[:speke_key_provider]) unless stub[:speke_key_provider].nil?
        data
      end
    end

    # Structure Stubber for CmafPackage
    class CmafPackage
      def self.default(visited=[])
        return nil if visited.include?('CmafPackage')
        visited = visited + ['CmafPackage']
        {
          encryption: CmafEncryption.default(visited),
          hls_manifests: List____listOfHlsManifest.default(visited),
          segment_duration_seconds: 1,
          segment_prefix: 'segment_prefix',
          stream_selection: StreamSelection.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CmafPackage.new
        data = {}
        data['encryption'] = CmafEncryption.stub(stub[:encryption]) unless stub[:encryption].nil?
        data['hlsManifests'] = List____listOfHlsManifest.stub(stub[:hls_manifests]) unless stub[:hls_manifests].nil?
        data['segmentDurationSeconds'] = stub[:segment_duration_seconds] unless stub[:segment_duration_seconds].nil?
        data['segmentPrefix'] = stub[:segment_prefix] unless stub[:segment_prefix].nil?
        data['streamSelection'] = StreamSelection.stub(stub[:stream_selection]) unless stub[:stream_selection].nil?
        data
      end
    end

    # List Stubber for __listOfHlsManifest
    class List____listOfHlsManifest
      def self.default(visited=[])
        return nil if visited.include?('List____listOfHlsManifest')
        visited = visited + ['List____listOfHlsManifest']
        [
          HlsManifest.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << HlsManifest.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for HlsManifest
    class HlsManifest
      def self.default(visited=[])
        return nil if visited.include?('HlsManifest')
        visited = visited + ['HlsManifest']
        {
          ad_markers: 'ad_markers',
          id: 'id',
          include_iframe_only_stream: false,
          manifest_name: 'manifest_name',
          playlist_type: 'playlist_type',
          playlist_window_seconds: 1,
          program_date_time_interval_seconds: 1,
          url: 'url',
        }
      end

      def self.stub(stub)
        stub ||= Types::HlsManifest.new
        data = {}
        data['adMarkers'] = stub[:ad_markers] unless stub[:ad_markers].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['includeIframeOnlyStream'] = stub[:include_iframe_only_stream] unless stub[:include_iframe_only_stream].nil?
        data['manifestName'] = stub[:manifest_name] unless stub[:manifest_name].nil?
        data['playlistType'] = stub[:playlist_type] unless stub[:playlist_type].nil?
        data['playlistWindowSeconds'] = stub[:playlist_window_seconds] unless stub[:playlist_window_seconds].nil?
        data['programDateTimeIntervalSeconds'] = stub[:program_date_time_interval_seconds] unless stub[:program_date_time_interval_seconds].nil?
        data['url'] = stub[:url] unless stub[:url].nil?
        data
      end
    end

    # Structure Stubber for CmafEncryption
    class CmafEncryption
      def self.default(visited=[])
        return nil if visited.include?('CmafEncryption')
        visited = visited + ['CmafEncryption']
        {
          constant_initialization_vector: 'constant_initialization_vector',
          key_rotation_interval_seconds: 1,
          speke_key_provider: SpekeKeyProvider.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CmafEncryption.new
        data = {}
        data['constantInitializationVector'] = stub[:constant_initialization_vector] unless stub[:constant_initialization_vector].nil?
        data['keyRotationIntervalSeconds'] = stub[:key_rotation_interval_seconds] unless stub[:key_rotation_interval_seconds].nil?
        data['spekeKeyProvider'] = SpekeKeyProvider.stub(stub[:speke_key_provider]) unless stub[:speke_key_provider].nil?
        data
      end
    end

    # Structure Stubber for Authorization
    class Authorization
      def self.default(visited=[])
        return nil if visited.include?('Authorization')
        visited = visited + ['Authorization']
        {
          cdn_identifier_secret: 'cdn_identifier_secret',
          secrets_role_arn: 'secrets_role_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::Authorization.new
        data = {}
        data['cdnIdentifierSecret'] = stub[:cdn_identifier_secret] unless stub[:cdn_identifier_secret].nil?
        data['secretsRoleArn'] = stub[:secrets_role_arn] unless stub[:secrets_role_arn].nil?
        data
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
        http_resp.status = 202
      end
    end

    # Operation Stubber for DeleteOriginEndpoint
    class DeleteOriginEndpoint
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
      end
    end

    # Operation Stubber for DescribeChannel
    class DescribeChannel
      def self.default(visited=[])
        {
          arn: 'arn',
          description: 'description',
          egress_access_logs: EgressAccessLogs.default(visited),
          hls_ingest: HlsIngest.default(visited),
          id: 'id',
          ingress_access_logs: IngressAccessLogs.default(visited),
          tags: Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['egressAccessLogs'] = EgressAccessLogs.stub(stub[:egress_access_logs]) unless stub[:egress_access_logs].nil?
        data['hlsIngest'] = HlsIngest.stub(stub[:hls_ingest]) unless stub[:hls_ingest].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['ingressAccessLogs'] = IngressAccessLogs.stub(stub[:ingress_access_logs]) unless stub[:ingress_access_logs].nil?
        data['tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeHarvestJob
    class DescribeHarvestJob
      def self.default(visited=[])
        {
          arn: 'arn',
          channel_id: 'channel_id',
          created_at: 'created_at',
          end_time: 'end_time',
          id: 'id',
          origin_endpoint_id: 'origin_endpoint_id',
          s3_destination: S3Destination.default(visited),
          start_time: 'start_time',
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['channelId'] = stub[:channel_id] unless stub[:channel_id].nil?
        data['createdAt'] = stub[:created_at] unless stub[:created_at].nil?
        data['endTime'] = stub[:end_time] unless stub[:end_time].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['originEndpointId'] = stub[:origin_endpoint_id] unless stub[:origin_endpoint_id].nil?
        data['s3Destination'] = S3Destination.stub(stub[:s3_destination]) unless stub[:s3_destination].nil?
        data['startTime'] = stub[:start_time] unless stub[:start_time].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeOriginEndpoint
    class DescribeOriginEndpoint
      def self.default(visited=[])
        {
          arn: 'arn',
          authorization: Authorization.default(visited),
          channel_id: 'channel_id',
          cmaf_package: CmafPackage.default(visited),
          dash_package: DashPackage.default(visited),
          description: 'description',
          hls_package: HlsPackage.default(visited),
          id: 'id',
          manifest_name: 'manifest_name',
          mss_package: MssPackage.default(visited),
          origination: 'origination',
          startover_window_seconds: 1,
          tags: Tags.default(visited),
          time_delay_seconds: 1,
          url: 'url',
          whitelist: List____listOf__string.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['authorization'] = Authorization.stub(stub[:authorization]) unless stub[:authorization].nil?
        data['channelId'] = stub[:channel_id] unless stub[:channel_id].nil?
        data['cmafPackage'] = CmafPackage.stub(stub[:cmaf_package]) unless stub[:cmaf_package].nil?
        data['dashPackage'] = DashPackage.stub(stub[:dash_package]) unless stub[:dash_package].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['hlsPackage'] = HlsPackage.stub(stub[:hls_package]) unless stub[:hls_package].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['manifestName'] = stub[:manifest_name] unless stub[:manifest_name].nil?
        data['mssPackage'] = MssPackage.stub(stub[:mss_package]) unless stub[:mss_package].nil?
        data['origination'] = stub[:origination] unless stub[:origination].nil?
        data['startoverWindowSeconds'] = stub[:startover_window_seconds] unless stub[:startover_window_seconds].nil?
        data['tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['timeDelaySeconds'] = stub[:time_delay_seconds] unless stub[:time_delay_seconds].nil?
        data['url'] = stub[:url] unless stub[:url].nil?
        data['whitelist'] = List____listOf__string.stub(stub[:whitelist]) unless stub[:whitelist].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListChannels
    class ListChannels
      def self.default(visited=[])
        {
          channels: List____listOfChannel.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['channels'] = List____listOfChannel.stub(stub[:channels]) unless stub[:channels].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
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
          data << Channel.stub(element) unless element.nil?
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
          description: 'description',
          egress_access_logs: EgressAccessLogs.default(visited),
          hls_ingest: HlsIngest.default(visited),
          id: 'id',
          ingress_access_logs: IngressAccessLogs.default(visited),
          tags: Tags.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Channel.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['egressAccessLogs'] = EgressAccessLogs.stub(stub[:egress_access_logs]) unless stub[:egress_access_logs].nil?
        data['hlsIngest'] = HlsIngest.stub(stub[:hls_ingest]) unless stub[:hls_ingest].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['ingressAccessLogs'] = IngressAccessLogs.stub(stub[:ingress_access_logs]) unless stub[:ingress_access_logs].nil?
        data['tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for ListHarvestJobs
    class ListHarvestJobs
      def self.default(visited=[])
        {
          harvest_jobs: List____listOfHarvestJob.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['harvestJobs'] = List____listOfHarvestJob.stub(stub[:harvest_jobs]) unless stub[:harvest_jobs].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfHarvestJob
    class List____listOfHarvestJob
      def self.default(visited=[])
        return nil if visited.include?('List____listOfHarvestJob')
        visited = visited + ['List____listOfHarvestJob']
        [
          HarvestJob.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << HarvestJob.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for HarvestJob
    class HarvestJob
      def self.default(visited=[])
        return nil if visited.include?('HarvestJob')
        visited = visited + ['HarvestJob']
        {
          arn: 'arn',
          channel_id: 'channel_id',
          created_at: 'created_at',
          end_time: 'end_time',
          id: 'id',
          origin_endpoint_id: 'origin_endpoint_id',
          s3_destination: S3Destination.default(visited),
          start_time: 'start_time',
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::HarvestJob.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['channelId'] = stub[:channel_id] unless stub[:channel_id].nil?
        data['createdAt'] = stub[:created_at] unless stub[:created_at].nil?
        data['endTime'] = stub[:end_time] unless stub[:end_time].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['originEndpointId'] = stub[:origin_endpoint_id] unless stub[:origin_endpoint_id].nil?
        data['s3Destination'] = S3Destination.stub(stub[:s3_destination]) unless stub[:s3_destination].nil?
        data['startTime'] = stub[:start_time] unless stub[:start_time].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Operation Stubber for ListOriginEndpoints
    class ListOriginEndpoints
      def self.default(visited=[])
        {
          next_token: 'next_token',
          origin_endpoints: List____listOfOriginEndpoint.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['originEndpoints'] = List____listOfOriginEndpoint.stub(stub[:origin_endpoints]) unless stub[:origin_endpoints].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfOriginEndpoint
    class List____listOfOriginEndpoint
      def self.default(visited=[])
        return nil if visited.include?('List____listOfOriginEndpoint')
        visited = visited + ['List____listOfOriginEndpoint']
        [
          OriginEndpoint.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << OriginEndpoint.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for OriginEndpoint
    class OriginEndpoint
      def self.default(visited=[])
        return nil if visited.include?('OriginEndpoint')
        visited = visited + ['OriginEndpoint']
        {
          arn: 'arn',
          authorization: Authorization.default(visited),
          channel_id: 'channel_id',
          cmaf_package: CmafPackage.default(visited),
          dash_package: DashPackage.default(visited),
          description: 'description',
          hls_package: HlsPackage.default(visited),
          id: 'id',
          manifest_name: 'manifest_name',
          mss_package: MssPackage.default(visited),
          origination: 'origination',
          startover_window_seconds: 1,
          tags: Tags.default(visited),
          time_delay_seconds: 1,
          url: 'url',
          whitelist: List____listOf__string.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::OriginEndpoint.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['authorization'] = Authorization.stub(stub[:authorization]) unless stub[:authorization].nil?
        data['channelId'] = stub[:channel_id] unless stub[:channel_id].nil?
        data['cmafPackage'] = CmafPackage.stub(stub[:cmaf_package]) unless stub[:cmaf_package].nil?
        data['dashPackage'] = DashPackage.stub(stub[:dash_package]) unless stub[:dash_package].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['hlsPackage'] = HlsPackage.stub(stub[:hls_package]) unless stub[:hls_package].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['manifestName'] = stub[:manifest_name] unless stub[:manifest_name].nil?
        data['mssPackage'] = MssPackage.stub(stub[:mss_package]) unless stub[:mss_package].nil?
        data['origination'] = stub[:origination] unless stub[:origination].nil?
        data['startoverWindowSeconds'] = stub[:startover_window_seconds] unless stub[:startover_window_seconds].nil?
        data['tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['timeDelaySeconds'] = stub[:time_delay_seconds] unless stub[:time_delay_seconds].nil?
        data['url'] = stub[:url] unless stub[:url].nil?
        data['whitelist'] = List____listOf__string.stub(stub[:whitelist]) unless stub[:whitelist].nil?
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
        data['tags'] = Map____mapOf__string.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
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

    # Operation Stubber for RotateChannelCredentials
    class RotateChannelCredentials
      def self.default(visited=[])
        {
          arn: 'arn',
          description: 'description',
          egress_access_logs: EgressAccessLogs.default(visited),
          hls_ingest: HlsIngest.default(visited),
          id: 'id',
          ingress_access_logs: IngressAccessLogs.default(visited),
          tags: Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['egressAccessLogs'] = EgressAccessLogs.stub(stub[:egress_access_logs]) unless stub[:egress_access_logs].nil?
        data['hlsIngest'] = HlsIngest.stub(stub[:hls_ingest]) unless stub[:hls_ingest].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['ingressAccessLogs'] = IngressAccessLogs.stub(stub[:ingress_access_logs]) unless stub[:ingress_access_logs].nil?
        data['tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for RotateIngestEndpointCredentials
    class RotateIngestEndpointCredentials
      def self.default(visited=[])
        {
          arn: 'arn',
          description: 'description',
          egress_access_logs: EgressAccessLogs.default(visited),
          hls_ingest: HlsIngest.default(visited),
          id: 'id',
          ingress_access_logs: IngressAccessLogs.default(visited),
          tags: Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['egressAccessLogs'] = EgressAccessLogs.stub(stub[:egress_access_logs]) unless stub[:egress_access_logs].nil?
        data['hlsIngest'] = HlsIngest.stub(stub[:hls_ingest]) unless stub[:hls_ingest].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['ingressAccessLogs'] = IngressAccessLogs.stub(stub[:ingress_access_logs]) unless stub[:ingress_access_logs].nil?
        data['tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
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
          description: 'description',
          egress_access_logs: EgressAccessLogs.default(visited),
          hls_ingest: HlsIngest.default(visited),
          id: 'id',
          ingress_access_logs: IngressAccessLogs.default(visited),
          tags: Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['egressAccessLogs'] = EgressAccessLogs.stub(stub[:egress_access_logs]) unless stub[:egress_access_logs].nil?
        data['hlsIngest'] = HlsIngest.stub(stub[:hls_ingest]) unless stub[:hls_ingest].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['ingressAccessLogs'] = IngressAccessLogs.stub(stub[:ingress_access_logs]) unless stub[:ingress_access_logs].nil?
        data['tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateOriginEndpoint
    class UpdateOriginEndpoint
      def self.default(visited=[])
        {
          arn: 'arn',
          authorization: Authorization.default(visited),
          channel_id: 'channel_id',
          cmaf_package: CmafPackage.default(visited),
          dash_package: DashPackage.default(visited),
          description: 'description',
          hls_package: HlsPackage.default(visited),
          id: 'id',
          manifest_name: 'manifest_name',
          mss_package: MssPackage.default(visited),
          origination: 'origination',
          startover_window_seconds: 1,
          tags: Tags.default(visited),
          time_delay_seconds: 1,
          url: 'url',
          whitelist: List____listOf__string.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['authorization'] = Authorization.stub(stub[:authorization]) unless stub[:authorization].nil?
        data['channelId'] = stub[:channel_id] unless stub[:channel_id].nil?
        data['cmafPackage'] = CmafPackage.stub(stub[:cmaf_package]) unless stub[:cmaf_package].nil?
        data['dashPackage'] = DashPackage.stub(stub[:dash_package]) unless stub[:dash_package].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['hlsPackage'] = HlsPackage.stub(stub[:hls_package]) unless stub[:hls_package].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['manifestName'] = stub[:manifest_name] unless stub[:manifest_name].nil?
        data['mssPackage'] = MssPackage.stub(stub[:mss_package]) unless stub[:mss_package].nil?
        data['origination'] = stub[:origination] unless stub[:origination].nil?
        data['startoverWindowSeconds'] = stub[:startover_window_seconds] unless stub[:startover_window_seconds].nil?
        data['tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['timeDelaySeconds'] = stub[:time_delay_seconds] unless stub[:time_delay_seconds].nil?
        data['url'] = stub[:url] unless stub[:url].nil?
        data['whitelist'] = List____listOf__string.stub(stub[:whitelist]) unless stub[:whitelist].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
