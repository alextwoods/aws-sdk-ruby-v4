# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::MediaPackage
  module Parsers

    # Operation Parser for ConfigureLogs
    class ConfigureLogs
      def self.parse(http_resp)
        data = Types::ConfigureLogsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.description = map['description']
        data.egress_access_logs = (Parsers::EgressAccessLogs.parse(map['egressAccessLogs']) unless map['egressAccessLogs'].nil?)
        data.hls_ingest = (Parsers::HlsIngest.parse(map['hlsIngest']) unless map['hlsIngest'].nil?)
        data.id = map['id']
        data.ingress_access_logs = (Parsers::IngressAccessLogs.parse(map['ingressAccessLogs']) unless map['ingressAccessLogs'].nil?)
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    class Tags
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class IngressAccessLogs
      def self.parse(map)
        data = Types::IngressAccessLogs.new
        data.log_group_name = map['logGroupName']
        return data
      end
    end

    class HlsIngest
      def self.parse(map)
        data = Types::HlsIngest.new
        data.ingest_endpoints = (Parsers::List____listOfIngestEndpoint.parse(map['ingestEndpoints']) unless map['ingestEndpoints'].nil?)
        return data
      end
    end

    class List____listOfIngestEndpoint
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::IngestEndpoint.parse(value) unless value.nil?
        end
        data
      end
    end

    class IngestEndpoint
      def self.parse(map)
        data = Types::IngestEndpoint.new
        data.id = map['id']
        data.password = map['password']
        data.url = map['url']
        data.username = map['username']
        return data
      end
    end

    class EgressAccessLogs
      def self.parse(map)
        data = Types::EgressAccessLogs.new
        data.log_group_name = map['logGroupName']
        return data
      end
    end

    # Error Parser for ServiceUnavailableException
    class ServiceUnavailableException
      def self.parse(http_resp)
        data = Types::ServiceUnavailableException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for TooManyRequestsException
    class TooManyRequestsException
      def self.parse(http_resp)
        data = Types::TooManyRequestsException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for InternalServerErrorException
    class InternalServerErrorException
      def self.parse(http_resp)
        data = Types::InternalServerErrorException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for UnprocessableEntityException
    class UnprocessableEntityException
      def self.parse(http_resp)
        data = Types::UnprocessableEntityException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ForbiddenException
    class ForbiddenException
      def self.parse(http_resp)
        data = Types::ForbiddenException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for NotFoundException
    class NotFoundException
      def self.parse(http_resp)
        data = Types::NotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for CreateChannel
    class CreateChannel
      def self.parse(http_resp)
        data = Types::CreateChannelOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.description = map['description']
        data.egress_access_logs = (Parsers::EgressAccessLogs.parse(map['egressAccessLogs']) unless map['egressAccessLogs'].nil?)
        data.hls_ingest = (Parsers::HlsIngest.parse(map['hlsIngest']) unless map['hlsIngest'].nil?)
        data.id = map['id']
        data.ingress_access_logs = (Parsers::IngressAccessLogs.parse(map['ingressAccessLogs']) unless map['ingressAccessLogs'].nil?)
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for CreateHarvestJob
    class CreateHarvestJob
      def self.parse(http_resp)
        data = Types::CreateHarvestJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.channel_id = map['channelId']
        data.created_at = map['createdAt']
        data.end_time = map['endTime']
        data.id = map['id']
        data.origin_endpoint_id = map['originEndpointId']
        data.s3_destination = (Parsers::S3Destination.parse(map['s3Destination']) unless map['s3Destination'].nil?)
        data.start_time = map['startTime']
        data.status = map['status']
        data
      end
    end

    class S3Destination
      def self.parse(map)
        data = Types::S3Destination.new
        data.bucket_name = map['bucketName']
        data.manifest_key = map['manifestKey']
        data.role_arn = map['roleArn']
        return data
      end
    end

    # Operation Parser for CreateOriginEndpoint
    class CreateOriginEndpoint
      def self.parse(http_resp)
        data = Types::CreateOriginEndpointOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.authorization = (Parsers::Authorization.parse(map['authorization']) unless map['authorization'].nil?)
        data.channel_id = map['channelId']
        data.cmaf_package = (Parsers::CmafPackage.parse(map['cmafPackage']) unless map['cmafPackage'].nil?)
        data.dash_package = (Parsers::DashPackage.parse(map['dashPackage']) unless map['dashPackage'].nil?)
        data.description = map['description']
        data.hls_package = (Parsers::HlsPackage.parse(map['hlsPackage']) unless map['hlsPackage'].nil?)
        data.id = map['id']
        data.manifest_name = map['manifestName']
        data.mss_package = (Parsers::MssPackage.parse(map['mssPackage']) unless map['mssPackage'].nil?)
        data.origination = map['origination']
        data.startover_window_seconds = map['startoverWindowSeconds']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data.time_delay_seconds = map['timeDelaySeconds']
        data.url = map['url']
        data.whitelist = (Parsers::List____listOf__string.parse(map['whitelist']) unless map['whitelist'].nil?)
        data
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

    class MssPackage
      def self.parse(map)
        data = Types::MssPackage.new
        data.encryption = (Parsers::MssEncryption.parse(map['encryption']) unless map['encryption'].nil?)
        data.manifest_window_seconds = map['manifestWindowSeconds']
        data.segment_duration_seconds = map['segmentDurationSeconds']
        data.stream_selection = (Parsers::StreamSelection.parse(map['streamSelection']) unless map['streamSelection'].nil?)
        return data
      end
    end

    class StreamSelection
      def self.parse(map)
        data = Types::StreamSelection.new
        data.max_video_bits_per_second = map['maxVideoBitsPerSecond']
        data.min_video_bits_per_second = map['minVideoBitsPerSecond']
        data.stream_order = map['streamOrder']
        return data
      end
    end

    class MssEncryption
      def self.parse(map)
        data = Types::MssEncryption.new
        data.speke_key_provider = (Parsers::SpekeKeyProvider.parse(map['spekeKeyProvider']) unless map['spekeKeyProvider'].nil?)
        return data
      end
    end

    class SpekeKeyProvider
      def self.parse(map)
        data = Types::SpekeKeyProvider.new
        data.certificate_arn = map['certificateArn']
        data.encryption_contract_configuration = (Parsers::EncryptionContractConfiguration.parse(map['encryptionContractConfiguration']) unless map['encryptionContractConfiguration'].nil?)
        data.resource_id = map['resourceId']
        data.role_arn = map['roleArn']
        data.system_ids = (Parsers::List____listOf__string.parse(map['systemIds']) unless map['systemIds'].nil?)
        data.url = map['url']
        return data
      end
    end

    class EncryptionContractConfiguration
      def self.parse(map)
        data = Types::EncryptionContractConfiguration.new
        data.preset_speke20_audio = map['presetSpeke20Audio']
        data.preset_speke20_video = map['presetSpeke20Video']
        return data
      end
    end

    class HlsPackage
      def self.parse(map)
        data = Types::HlsPackage.new
        data.ad_markers = map['adMarkers']
        data.ad_triggers = (Parsers::AdTriggers.parse(map['adTriggers']) unless map['adTriggers'].nil?)
        data.ads_on_delivery_restrictions = map['adsOnDeliveryRestrictions']
        data.encryption = (Parsers::HlsEncryption.parse(map['encryption']) unless map['encryption'].nil?)
        data.include_dvb_subtitles = map['includeDvbSubtitles']
        data.include_iframe_only_stream = map['includeIframeOnlyStream']
        data.playlist_type = map['playlistType']
        data.playlist_window_seconds = map['playlistWindowSeconds']
        data.program_date_time_interval_seconds = map['programDateTimeIntervalSeconds']
        data.segment_duration_seconds = map['segmentDurationSeconds']
        data.stream_selection = (Parsers::StreamSelection.parse(map['streamSelection']) unless map['streamSelection'].nil?)
        data.use_audio_rendition_group = map['useAudioRenditionGroup']
        return data
      end
    end

    class HlsEncryption
      def self.parse(map)
        data = Types::HlsEncryption.new
        data.constant_initialization_vector = map['constantInitializationVector']
        data.encryption_method = map['encryptionMethod']
        data.key_rotation_interval_seconds = map['keyRotationIntervalSeconds']
        data.repeat_ext_x_key = map['repeatExtXKey']
        data.speke_key_provider = (Parsers::SpekeKeyProvider.parse(map['spekeKeyProvider']) unless map['spekeKeyProvider'].nil?)
        return data
      end
    end

    class AdTriggers
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class DashPackage
      def self.parse(map)
        data = Types::DashPackage.new
        data.ad_triggers = (Parsers::AdTriggers.parse(map['adTriggers']) unless map['adTriggers'].nil?)
        data.ads_on_delivery_restrictions = map['adsOnDeliveryRestrictions']
        data.encryption = (Parsers::DashEncryption.parse(map['encryption']) unless map['encryption'].nil?)
        data.manifest_layout = map['manifestLayout']
        data.manifest_window_seconds = map['manifestWindowSeconds']
        data.min_buffer_time_seconds = map['minBufferTimeSeconds']
        data.min_update_period_seconds = map['minUpdatePeriodSeconds']
        data.period_triggers = (Parsers::List____listOf__PeriodTriggersElement.parse(map['periodTriggers']) unless map['periodTriggers'].nil?)
        data.profile = map['profile']
        data.segment_duration_seconds = map['segmentDurationSeconds']
        data.segment_template_format = map['segmentTemplateFormat']
        data.stream_selection = (Parsers::StreamSelection.parse(map['streamSelection']) unless map['streamSelection'].nil?)
        data.suggested_presentation_delay_seconds = map['suggestedPresentationDelaySeconds']
        data.utc_timing = map['utcTiming']
        data.utc_timing_uri = map['utcTimingUri']
        return data
      end
    end

    class List____listOf__PeriodTriggersElement
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class DashEncryption
      def self.parse(map)
        data = Types::DashEncryption.new
        data.key_rotation_interval_seconds = map['keyRotationIntervalSeconds']
        data.speke_key_provider = (Parsers::SpekeKeyProvider.parse(map['spekeKeyProvider']) unless map['spekeKeyProvider'].nil?)
        return data
      end
    end

    class CmafPackage
      def self.parse(map)
        data = Types::CmafPackage.new
        data.encryption = (Parsers::CmafEncryption.parse(map['encryption']) unless map['encryption'].nil?)
        data.hls_manifests = (Parsers::List____listOfHlsManifest.parse(map['hlsManifests']) unless map['hlsManifests'].nil?)
        data.segment_duration_seconds = map['segmentDurationSeconds']
        data.segment_prefix = map['segmentPrefix']
        data.stream_selection = (Parsers::StreamSelection.parse(map['streamSelection']) unless map['streamSelection'].nil?)
        return data
      end
    end

    class List____listOfHlsManifest
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::HlsManifest.parse(value) unless value.nil?
        end
        data
      end
    end

    class HlsManifest
      def self.parse(map)
        data = Types::HlsManifest.new
        data.ad_markers = map['adMarkers']
        data.id = map['id']
        data.include_iframe_only_stream = map['includeIframeOnlyStream']
        data.manifest_name = map['manifestName']
        data.playlist_type = map['playlistType']
        data.playlist_window_seconds = map['playlistWindowSeconds']
        data.program_date_time_interval_seconds = map['programDateTimeIntervalSeconds']
        data.url = map['url']
        return data
      end
    end

    class CmafEncryption
      def self.parse(map)
        data = Types::CmafEncryption.new
        data.constant_initialization_vector = map['constantInitializationVector']
        data.key_rotation_interval_seconds = map['keyRotationIntervalSeconds']
        data.speke_key_provider = (Parsers::SpekeKeyProvider.parse(map['spekeKeyProvider']) unless map['spekeKeyProvider'].nil?)
        return data
      end
    end

    class Authorization
      def self.parse(map)
        data = Types::Authorization.new
        data.cdn_identifier_secret = map['cdnIdentifierSecret']
        data.secrets_role_arn = map['secretsRoleArn']
        return data
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

    # Operation Parser for DeleteOriginEndpoint
    class DeleteOriginEndpoint
      def self.parse(http_resp)
        data = Types::DeleteOriginEndpointOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DescribeChannel
    class DescribeChannel
      def self.parse(http_resp)
        data = Types::DescribeChannelOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.description = map['description']
        data.egress_access_logs = (Parsers::EgressAccessLogs.parse(map['egressAccessLogs']) unless map['egressAccessLogs'].nil?)
        data.hls_ingest = (Parsers::HlsIngest.parse(map['hlsIngest']) unless map['hlsIngest'].nil?)
        data.id = map['id']
        data.ingress_access_logs = (Parsers::IngressAccessLogs.parse(map['ingressAccessLogs']) unless map['ingressAccessLogs'].nil?)
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for DescribeHarvestJob
    class DescribeHarvestJob
      def self.parse(http_resp)
        data = Types::DescribeHarvestJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.channel_id = map['channelId']
        data.created_at = map['createdAt']
        data.end_time = map['endTime']
        data.id = map['id']
        data.origin_endpoint_id = map['originEndpointId']
        data.s3_destination = (Parsers::S3Destination.parse(map['s3Destination']) unless map['s3Destination'].nil?)
        data.start_time = map['startTime']
        data.status = map['status']
        data
      end
    end

    # Operation Parser for DescribeOriginEndpoint
    class DescribeOriginEndpoint
      def self.parse(http_resp)
        data = Types::DescribeOriginEndpointOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.authorization = (Parsers::Authorization.parse(map['authorization']) unless map['authorization'].nil?)
        data.channel_id = map['channelId']
        data.cmaf_package = (Parsers::CmafPackage.parse(map['cmafPackage']) unless map['cmafPackage'].nil?)
        data.dash_package = (Parsers::DashPackage.parse(map['dashPackage']) unless map['dashPackage'].nil?)
        data.description = map['description']
        data.hls_package = (Parsers::HlsPackage.parse(map['hlsPackage']) unless map['hlsPackage'].nil?)
        data.id = map['id']
        data.manifest_name = map['manifestName']
        data.mss_package = (Parsers::MssPackage.parse(map['mssPackage']) unless map['mssPackage'].nil?)
        data.origination = map['origination']
        data.startover_window_seconds = map['startoverWindowSeconds']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data.time_delay_seconds = map['timeDelaySeconds']
        data.url = map['url']
        data.whitelist = (Parsers::List____listOf__string.parse(map['whitelist']) unless map['whitelist'].nil?)
        data
      end
    end

    # Operation Parser for ListChannels
    class ListChannels
      def self.parse(http_resp)
        data = Types::ListChannelsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.channels = (Parsers::List____listOfChannel.parse(map['channels']) unless map['channels'].nil?)
        data.next_token = map['nextToken']
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
        data.arn = map['arn']
        data.description = map['description']
        data.egress_access_logs = (Parsers::EgressAccessLogs.parse(map['egressAccessLogs']) unless map['egressAccessLogs'].nil?)
        data.hls_ingest = (Parsers::HlsIngest.parse(map['hlsIngest']) unless map['hlsIngest'].nil?)
        data.id = map['id']
        data.ingress_access_logs = (Parsers::IngressAccessLogs.parse(map['ingressAccessLogs']) unless map['ingressAccessLogs'].nil?)
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    # Operation Parser for ListHarvestJobs
    class ListHarvestJobs
      def self.parse(http_resp)
        data = Types::ListHarvestJobsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.harvest_jobs = (Parsers::List____listOfHarvestJob.parse(map['harvestJobs']) unless map['harvestJobs'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class List____listOfHarvestJob
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::HarvestJob.parse(value) unless value.nil?
        end
        data
      end
    end

    class HarvestJob
      def self.parse(map)
        data = Types::HarvestJob.new
        data.arn = map['arn']
        data.channel_id = map['channelId']
        data.created_at = map['createdAt']
        data.end_time = map['endTime']
        data.id = map['id']
        data.origin_endpoint_id = map['originEndpointId']
        data.s3_destination = (Parsers::S3Destination.parse(map['s3Destination']) unless map['s3Destination'].nil?)
        data.start_time = map['startTime']
        data.status = map['status']
        return data
      end
    end

    # Operation Parser for ListOriginEndpoints
    class ListOriginEndpoints
      def self.parse(http_resp)
        data = Types::ListOriginEndpointsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['nextToken']
        data.origin_endpoints = (Parsers::List____listOfOriginEndpoint.parse(map['originEndpoints']) unless map['originEndpoints'].nil?)
        data
      end
    end

    class List____listOfOriginEndpoint
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::OriginEndpoint.parse(value) unless value.nil?
        end
        data
      end
    end

    class OriginEndpoint
      def self.parse(map)
        data = Types::OriginEndpoint.new
        data.arn = map['arn']
        data.authorization = (Parsers::Authorization.parse(map['authorization']) unless map['authorization'].nil?)
        data.channel_id = map['channelId']
        data.cmaf_package = (Parsers::CmafPackage.parse(map['cmafPackage']) unless map['cmafPackage'].nil?)
        data.dash_package = (Parsers::DashPackage.parse(map['dashPackage']) unless map['dashPackage'].nil?)
        data.description = map['description']
        data.hls_package = (Parsers::HlsPackage.parse(map['hlsPackage']) unless map['hlsPackage'].nil?)
        data.id = map['id']
        data.manifest_name = map['manifestName']
        data.mss_package = (Parsers::MssPackage.parse(map['mssPackage']) unless map['mssPackage'].nil?)
        data.origination = map['origination']
        data.startover_window_seconds = map['startoverWindowSeconds']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data.time_delay_seconds = map['timeDelaySeconds']
        data.url = map['url']
        data.whitelist = (Parsers::List____listOf__string.parse(map['whitelist']) unless map['whitelist'].nil?)
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

    class Map____mapOf__string
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for RotateChannelCredentials
    class RotateChannelCredentials
      def self.parse(http_resp)
        data = Types::RotateChannelCredentialsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.description = map['description']
        data.egress_access_logs = (Parsers::EgressAccessLogs.parse(map['egressAccessLogs']) unless map['egressAccessLogs'].nil?)
        data.hls_ingest = (Parsers::HlsIngest.parse(map['hlsIngest']) unless map['hlsIngest'].nil?)
        data.id = map['id']
        data.ingress_access_logs = (Parsers::IngressAccessLogs.parse(map['ingressAccessLogs']) unless map['ingressAccessLogs'].nil?)
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for RotateIngestEndpointCredentials
    class RotateIngestEndpointCredentials
      def self.parse(http_resp)
        data = Types::RotateIngestEndpointCredentialsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.description = map['description']
        data.egress_access_logs = (Parsers::EgressAccessLogs.parse(map['egressAccessLogs']) unless map['egressAccessLogs'].nil?)
        data.hls_ingest = (Parsers::HlsIngest.parse(map['hlsIngest']) unless map['hlsIngest'].nil?)
        data.id = map['id']
        data.ingress_access_logs = (Parsers::IngressAccessLogs.parse(map['ingressAccessLogs']) unless map['ingressAccessLogs'].nil?)
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
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
        data.arn = map['arn']
        data.description = map['description']
        data.egress_access_logs = (Parsers::EgressAccessLogs.parse(map['egressAccessLogs']) unless map['egressAccessLogs'].nil?)
        data.hls_ingest = (Parsers::HlsIngest.parse(map['hlsIngest']) unless map['hlsIngest'].nil?)
        data.id = map['id']
        data.ingress_access_logs = (Parsers::IngressAccessLogs.parse(map['ingressAccessLogs']) unless map['ingressAccessLogs'].nil?)
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for UpdateOriginEndpoint
    class UpdateOriginEndpoint
      def self.parse(http_resp)
        data = Types::UpdateOriginEndpointOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.authorization = (Parsers::Authorization.parse(map['authorization']) unless map['authorization'].nil?)
        data.channel_id = map['channelId']
        data.cmaf_package = (Parsers::CmafPackage.parse(map['cmafPackage']) unless map['cmafPackage'].nil?)
        data.dash_package = (Parsers::DashPackage.parse(map['dashPackage']) unless map['dashPackage'].nil?)
        data.description = map['description']
        data.hls_package = (Parsers::HlsPackage.parse(map['hlsPackage']) unless map['hlsPackage'].nil?)
        data.id = map['id']
        data.manifest_name = map['manifestName']
        data.mss_package = (Parsers::MssPackage.parse(map['mssPackage']) unless map['mssPackage'].nil?)
        data.origination = map['origination']
        data.startover_window_seconds = map['startoverWindowSeconds']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data.time_delay_seconds = map['timeDelaySeconds']
        data.url = map['url']
        data.whitelist = (Parsers::List____listOf__string.parse(map['whitelist']) unless map['whitelist'].nil?)
        data
      end
    end
  end
end
