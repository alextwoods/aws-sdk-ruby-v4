# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::MediaPackage
  module Builders

    # Operation Builder for ConfigureLogs
    class ConfigureLogs
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/channels/%<Id>s/configure_logs',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['egressAccessLogs'] = Builders::EgressAccessLogs.build(input[:egress_access_logs]) unless input[:egress_access_logs].nil?
        data['ingressAccessLogs'] = Builders::IngressAccessLogs.build(input[:ingress_access_logs]) unless input[:ingress_access_logs].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for IngressAccessLogs
    class IngressAccessLogs
      def self.build(input)
        data = {}
        data['logGroupName'] = input[:log_group_name] unless input[:log_group_name].nil?
        data
      end
    end

    # Structure Builder for EgressAccessLogs
    class EgressAccessLogs
      def self.build(input)
        data = {}
        data['logGroupName'] = input[:log_group_name] unless input[:log_group_name].nil?
        data
      end
    end

    # Operation Builder for CreateChannel
    class CreateChannel
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/channels')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['description'] = input[:description] unless input[:description].nil?
        data['id'] = input[:id] unless input[:id].nil?
        data['tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for Tags
    class Tags
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for CreateHarvestJob
    class CreateHarvestJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/harvest_jobs')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['endTime'] = input[:end_time] unless input[:end_time].nil?
        data['id'] = input[:id] unless input[:id].nil?
        data['originEndpointId'] = input[:origin_endpoint_id] unless input[:origin_endpoint_id].nil?
        data['s3Destination'] = Builders::S3Destination.build(input[:s3_destination]) unless input[:s3_destination].nil?
        data['startTime'] = input[:start_time] unless input[:start_time].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for S3Destination
    class S3Destination
      def self.build(input)
        data = {}
        data['bucketName'] = input[:bucket_name] unless input[:bucket_name].nil?
        data['manifestKey'] = input[:manifest_key] unless input[:manifest_key].nil?
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data
      end
    end

    # Operation Builder for CreateOriginEndpoint
    class CreateOriginEndpoint
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/origin_endpoints')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['authorization'] = Builders::Authorization.build(input[:authorization]) unless input[:authorization].nil?
        data['channelId'] = input[:channel_id] unless input[:channel_id].nil?
        data['cmafPackage'] = Builders::CmafPackageCreateOrUpdateParameters.build(input[:cmaf_package]) unless input[:cmaf_package].nil?
        data['dashPackage'] = Builders::DashPackage.build(input[:dash_package]) unless input[:dash_package].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['hlsPackage'] = Builders::HlsPackage.build(input[:hls_package]) unless input[:hls_package].nil?
        data['id'] = input[:id] unless input[:id].nil?
        data['manifestName'] = input[:manifest_name] unless input[:manifest_name].nil?
        data['mssPackage'] = Builders::MssPackage.build(input[:mss_package]) unless input[:mss_package].nil?
        data['origination'] = input[:origination] unless input[:origination].nil?
        data['startoverWindowSeconds'] = input[:startover_window_seconds] unless input[:startover_window_seconds].nil?
        data['tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        data['timeDelaySeconds'] = input[:time_delay_seconds] unless input[:time_delay_seconds].nil?
        data['whitelist'] = Builders::List____listOf__string.build(input[:whitelist]) unless input[:whitelist].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
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

    # Structure Builder for MssPackage
    class MssPackage
      def self.build(input)
        data = {}
        data['encryption'] = Builders::MssEncryption.build(input[:encryption]) unless input[:encryption].nil?
        data['manifestWindowSeconds'] = input[:manifest_window_seconds] unless input[:manifest_window_seconds].nil?
        data['segmentDurationSeconds'] = input[:segment_duration_seconds] unless input[:segment_duration_seconds].nil?
        data['streamSelection'] = Builders::StreamSelection.build(input[:stream_selection]) unless input[:stream_selection].nil?
        data
      end
    end

    # Structure Builder for StreamSelection
    class StreamSelection
      def self.build(input)
        data = {}
        data['maxVideoBitsPerSecond'] = input[:max_video_bits_per_second] unless input[:max_video_bits_per_second].nil?
        data['minVideoBitsPerSecond'] = input[:min_video_bits_per_second] unless input[:min_video_bits_per_second].nil?
        data['streamOrder'] = input[:stream_order] unless input[:stream_order].nil?
        data
      end
    end

    # Structure Builder for MssEncryption
    class MssEncryption
      def self.build(input)
        data = {}
        data['spekeKeyProvider'] = Builders::SpekeKeyProvider.build(input[:speke_key_provider]) unless input[:speke_key_provider].nil?
        data
      end
    end

    # Structure Builder for SpekeKeyProvider
    class SpekeKeyProvider
      def self.build(input)
        data = {}
        data['certificateArn'] = input[:certificate_arn] unless input[:certificate_arn].nil?
        data['encryptionContractConfiguration'] = Builders::EncryptionContractConfiguration.build(input[:encryption_contract_configuration]) unless input[:encryption_contract_configuration].nil?
        data['resourceId'] = input[:resource_id] unless input[:resource_id].nil?
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['systemIds'] = Builders::List____listOf__string.build(input[:system_ids]) unless input[:system_ids].nil?
        data['url'] = input[:url] unless input[:url].nil?
        data
      end
    end

    # Structure Builder for EncryptionContractConfiguration
    class EncryptionContractConfiguration
      def self.build(input)
        data = {}
        data['presetSpeke20Audio'] = input[:preset_speke20_audio] unless input[:preset_speke20_audio].nil?
        data['presetSpeke20Video'] = input[:preset_speke20_video] unless input[:preset_speke20_video].nil?
        data
      end
    end

    # Structure Builder for HlsPackage
    class HlsPackage
      def self.build(input)
        data = {}
        data['adMarkers'] = input[:ad_markers] unless input[:ad_markers].nil?
        data['adTriggers'] = Builders::AdTriggers.build(input[:ad_triggers]) unless input[:ad_triggers].nil?
        data['adsOnDeliveryRestrictions'] = input[:ads_on_delivery_restrictions] unless input[:ads_on_delivery_restrictions].nil?
        data['encryption'] = Builders::HlsEncryption.build(input[:encryption]) unless input[:encryption].nil?
        data['includeDvbSubtitles'] = input[:include_dvb_subtitles] unless input[:include_dvb_subtitles].nil?
        data['includeIframeOnlyStream'] = input[:include_iframe_only_stream] unless input[:include_iframe_only_stream].nil?
        data['playlistType'] = input[:playlist_type] unless input[:playlist_type].nil?
        data['playlistWindowSeconds'] = input[:playlist_window_seconds] unless input[:playlist_window_seconds].nil?
        data['programDateTimeIntervalSeconds'] = input[:program_date_time_interval_seconds] unless input[:program_date_time_interval_seconds].nil?
        data['segmentDurationSeconds'] = input[:segment_duration_seconds] unless input[:segment_duration_seconds].nil?
        data['streamSelection'] = Builders::StreamSelection.build(input[:stream_selection]) unless input[:stream_selection].nil?
        data['useAudioRenditionGroup'] = input[:use_audio_rendition_group] unless input[:use_audio_rendition_group].nil?
        data
      end
    end

    # Structure Builder for HlsEncryption
    class HlsEncryption
      def self.build(input)
        data = {}
        data['constantInitializationVector'] = input[:constant_initialization_vector] unless input[:constant_initialization_vector].nil?
        data['encryptionMethod'] = input[:encryption_method] unless input[:encryption_method].nil?
        data['keyRotationIntervalSeconds'] = input[:key_rotation_interval_seconds] unless input[:key_rotation_interval_seconds].nil?
        data['repeatExtXKey'] = input[:repeat_ext_x_key] unless input[:repeat_ext_x_key].nil?
        data['spekeKeyProvider'] = Builders::SpekeKeyProvider.build(input[:speke_key_provider]) unless input[:speke_key_provider].nil?
        data
      end
    end

    # List Builder for AdTriggers
    class AdTriggers
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DashPackage
    class DashPackage
      def self.build(input)
        data = {}
        data['adTriggers'] = Builders::AdTriggers.build(input[:ad_triggers]) unless input[:ad_triggers].nil?
        data['adsOnDeliveryRestrictions'] = input[:ads_on_delivery_restrictions] unless input[:ads_on_delivery_restrictions].nil?
        data['encryption'] = Builders::DashEncryption.build(input[:encryption]) unless input[:encryption].nil?
        data['manifestLayout'] = input[:manifest_layout] unless input[:manifest_layout].nil?
        data['manifestWindowSeconds'] = input[:manifest_window_seconds] unless input[:manifest_window_seconds].nil?
        data['minBufferTimeSeconds'] = input[:min_buffer_time_seconds] unless input[:min_buffer_time_seconds].nil?
        data['minUpdatePeriodSeconds'] = input[:min_update_period_seconds] unless input[:min_update_period_seconds].nil?
        data['periodTriggers'] = Builders::List____listOf__PeriodTriggersElement.build(input[:period_triggers]) unless input[:period_triggers].nil?
        data['profile'] = input[:profile] unless input[:profile].nil?
        data['segmentDurationSeconds'] = input[:segment_duration_seconds] unless input[:segment_duration_seconds].nil?
        data['segmentTemplateFormat'] = input[:segment_template_format] unless input[:segment_template_format].nil?
        data['streamSelection'] = Builders::StreamSelection.build(input[:stream_selection]) unless input[:stream_selection].nil?
        data['suggestedPresentationDelaySeconds'] = input[:suggested_presentation_delay_seconds] unless input[:suggested_presentation_delay_seconds].nil?
        data['utcTiming'] = input[:utc_timing] unless input[:utc_timing].nil?
        data['utcTimingUri'] = input[:utc_timing_uri] unless input[:utc_timing_uri].nil?
        data
      end
    end

    # List Builder for __listOf__PeriodTriggersElement
    class List____listOf__PeriodTriggersElement
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DashEncryption
    class DashEncryption
      def self.build(input)
        data = {}
        data['keyRotationIntervalSeconds'] = input[:key_rotation_interval_seconds] unless input[:key_rotation_interval_seconds].nil?
        data['spekeKeyProvider'] = Builders::SpekeKeyProvider.build(input[:speke_key_provider]) unless input[:speke_key_provider].nil?
        data
      end
    end

    # Structure Builder for CmafPackageCreateOrUpdateParameters
    class CmafPackageCreateOrUpdateParameters
      def self.build(input)
        data = {}
        data['encryption'] = Builders::CmafEncryption.build(input[:encryption]) unless input[:encryption].nil?
        data['hlsManifests'] = Builders::List____listOfHlsManifestCreateOrUpdateParameters.build(input[:hls_manifests]) unless input[:hls_manifests].nil?
        data['segmentDurationSeconds'] = input[:segment_duration_seconds] unless input[:segment_duration_seconds].nil?
        data['segmentPrefix'] = input[:segment_prefix] unless input[:segment_prefix].nil?
        data['streamSelection'] = Builders::StreamSelection.build(input[:stream_selection]) unless input[:stream_selection].nil?
        data
      end
    end

    # List Builder for __listOfHlsManifestCreateOrUpdateParameters
    class List____listOfHlsManifestCreateOrUpdateParameters
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::HlsManifestCreateOrUpdateParameters.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for HlsManifestCreateOrUpdateParameters
    class HlsManifestCreateOrUpdateParameters
      def self.build(input)
        data = {}
        data['adMarkers'] = input[:ad_markers] unless input[:ad_markers].nil?
        data['adTriggers'] = Builders::AdTriggers.build(input[:ad_triggers]) unless input[:ad_triggers].nil?
        data['adsOnDeliveryRestrictions'] = input[:ads_on_delivery_restrictions] unless input[:ads_on_delivery_restrictions].nil?
        data['id'] = input[:id] unless input[:id].nil?
        data['includeIframeOnlyStream'] = input[:include_iframe_only_stream] unless input[:include_iframe_only_stream].nil?
        data['manifestName'] = input[:manifest_name] unless input[:manifest_name].nil?
        data['playlistType'] = input[:playlist_type] unless input[:playlist_type].nil?
        data['playlistWindowSeconds'] = input[:playlist_window_seconds] unless input[:playlist_window_seconds].nil?
        data['programDateTimeIntervalSeconds'] = input[:program_date_time_interval_seconds] unless input[:program_date_time_interval_seconds].nil?
        data
      end
    end

    # Structure Builder for CmafEncryption
    class CmafEncryption
      def self.build(input)
        data = {}
        data['constantInitializationVector'] = input[:constant_initialization_vector] unless input[:constant_initialization_vector].nil?
        data['keyRotationIntervalSeconds'] = input[:key_rotation_interval_seconds] unless input[:key_rotation_interval_seconds].nil?
        data['spekeKeyProvider'] = Builders::SpekeKeyProvider.build(input[:speke_key_provider]) unless input[:speke_key_provider].nil?
        data
      end
    end

    # Structure Builder for Authorization
    class Authorization
      def self.build(input)
        data = {}
        data['cdnIdentifierSecret'] = input[:cdn_identifier_secret] unless input[:cdn_identifier_secret].nil?
        data['secretsRoleArn'] = input[:secrets_role_arn] unless input[:secrets_role_arn].nil?
        data
      end
    end

    # Operation Builder for DeleteChannel
    class DeleteChannel
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/channels/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteOriginEndpoint
    class DeleteOriginEndpoint
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/origin_endpoints/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
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
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/channels/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeHarvestJob
    class DescribeHarvestJob
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/harvest_jobs/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeOriginEndpoint
    class DescribeOriginEndpoint
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/origin_endpoints/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
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

    # Operation Builder for ListHarvestJobs
    class ListHarvestJobs
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/harvest_jobs')
        params = Hearth::Query::ParamList.new
        params['includeChannelId'] = input[:include_channel_id].to_s unless input[:include_channel_id].nil?
        params['includeStatus'] = input[:include_status].to_s unless input[:include_status].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListOriginEndpoints
    class ListOriginEndpoints
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/origin_endpoints')
        params = Hearth::Query::ParamList.new
        params['channelId'] = input[:channel_id].to_s unless input[:channel_id].nil?
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

    # Operation Builder for RotateChannelCredentials
    class RotateChannelCredentials
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/channels/%<Id>s/credentials',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for RotateIngestEndpointCredentials
    class RotateIngestEndpointCredentials
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        if input[:ingest_endpoint_id].to_s.empty?
          raise ArgumentError, "HTTP label :ingest_endpoint_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/channels/%<Id>s/ingest_endpoints/%<IngestEndpointId>s/credentials',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s),
            IngestEndpointId: Hearth::HTTP.uri_escape(input[:ingest_endpoint_id].to_s)
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

    # Operation Builder for UpdateChannel
    class UpdateChannel
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/channels/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['description'] = input[:description] unless input[:description].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateOriginEndpoint
    class UpdateOriginEndpoint
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/origin_endpoints/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['authorization'] = Builders::Authorization.build(input[:authorization]) unless input[:authorization].nil?
        data['cmafPackage'] = Builders::CmafPackageCreateOrUpdateParameters.build(input[:cmaf_package]) unless input[:cmaf_package].nil?
        data['dashPackage'] = Builders::DashPackage.build(input[:dash_package]) unless input[:dash_package].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['hlsPackage'] = Builders::HlsPackage.build(input[:hls_package]) unless input[:hls_package].nil?
        data['manifestName'] = input[:manifest_name] unless input[:manifest_name].nil?
        data['mssPackage'] = Builders::MssPackage.build(input[:mss_package]) unless input[:mss_package].nil?
        data['origination'] = input[:origination] unless input[:origination].nil?
        data['startoverWindowSeconds'] = input[:startover_window_seconds] unless input[:startover_window_seconds].nil?
        data['timeDelaySeconds'] = input[:time_delay_seconds] unless input[:time_delay_seconds].nil?
        data['whitelist'] = Builders::List____listOf__string.build(input[:whitelist]) unless input[:whitelist].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
