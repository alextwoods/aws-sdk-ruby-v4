# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::MediaPackageVod
  module Parsers

    # Operation Parser for ConfigureLogs
    class ConfigureLogs
      def self.parse(http_resp)
        data = Types::ConfigureLogsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.authorization = (Authorization.parse(map['authorization']) unless map['authorization'].nil?)
        data.domain_name = map['domainName']
        data.egress_access_logs = (EgressAccessLogs.parse(map['egressAccessLogs']) unless map['egressAccessLogs'].nil?)
        data.id = map['id']
        data.tags = (Tags.parse(map['tags']) unless map['tags'].nil?)
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

    class EgressAccessLogs
      def self.parse(map)
        data = Types::EgressAccessLogs.new
        data.log_group_name = map['logGroupName']
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

    # Error Parser for ForbiddenException
    class ForbiddenException
      def self.parse(http_resp)
        data = Types::ForbiddenException.new
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

    # Error Parser for NotFoundException
    class NotFoundException
      def self.parse(http_resp)
        data = Types::NotFoundException.new
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

    # Operation Parser for CreateAsset
    class CreateAsset
      def self.parse(http_resp)
        data = Types::CreateAssetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.created_at = map['createdAt']
        data.egress_endpoints = (List____listOfEgressEndpoint.parse(map['egressEndpoints']) unless map['egressEndpoints'].nil?)
        data.id = map['id']
        data.packaging_group_id = map['packagingGroupId']
        data.resource_id = map['resourceId']
        data.source_arn = map['sourceArn']
        data.source_role_arn = map['sourceRoleArn']
        data.tags = (Tags.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    class List____listOfEgressEndpoint
      def self.parse(list)
        data = []
        list.map do |value|
          data << EgressEndpoint.parse(value) unless value.nil?
        end
        data
      end
    end

    class EgressEndpoint
      def self.parse(map)
        data = Types::EgressEndpoint.new
        data.packaging_configuration_id = map['packagingConfigurationId']
        data.status = map['status']
        data.url = map['url']
        return data
      end
    end

    # Operation Parser for CreatePackagingConfiguration
    class CreatePackagingConfiguration
      def self.parse(http_resp)
        data = Types::CreatePackagingConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.cmaf_package = (CmafPackage.parse(map['cmafPackage']) unless map['cmafPackage'].nil?)
        data.dash_package = (DashPackage.parse(map['dashPackage']) unless map['dashPackage'].nil?)
        data.hls_package = (HlsPackage.parse(map['hlsPackage']) unless map['hlsPackage'].nil?)
        data.id = map['id']
        data.mss_package = (MssPackage.parse(map['mssPackage']) unless map['mssPackage'].nil?)
        data.packaging_group_id = map['packagingGroupId']
        data.tags = (Tags.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    class MssPackage
      def self.parse(map)
        data = Types::MssPackage.new
        data.encryption = (MssEncryption.parse(map['encryption']) unless map['encryption'].nil?)
        data.mss_manifests = (List____listOfMssManifest.parse(map['mssManifests']) unless map['mssManifests'].nil?)
        data.segment_duration_seconds = map['segmentDurationSeconds']
        return data
      end
    end

    class List____listOfMssManifest
      def self.parse(list)
        data = []
        list.map do |value|
          data << MssManifest.parse(value) unless value.nil?
        end
        data
      end
    end

    class MssManifest
      def self.parse(map)
        data = Types::MssManifest.new
        data.manifest_name = map['manifestName']
        data.stream_selection = (StreamSelection.parse(map['streamSelection']) unless map['streamSelection'].nil?)
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
        data.speke_key_provider = (SpekeKeyProvider.parse(map['spekeKeyProvider']) unless map['spekeKeyProvider'].nil?)
        return data
      end
    end

    class SpekeKeyProvider
      def self.parse(map)
        data = Types::SpekeKeyProvider.new
        data.role_arn = map['roleArn']
        data.system_ids = (List____listOf__string.parse(map['systemIds']) unless map['systemIds'].nil?)
        data.url = map['url']
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

    class HlsPackage
      def self.parse(map)
        data = Types::HlsPackage.new
        data.encryption = (HlsEncryption.parse(map['encryption']) unless map['encryption'].nil?)
        data.hls_manifests = (List____listOfHlsManifest.parse(map['hlsManifests']) unless map['hlsManifests'].nil?)
        data.include_dvb_subtitles = map['includeDvbSubtitles']
        data.segment_duration_seconds = map['segmentDurationSeconds']
        data.use_audio_rendition_group = map['useAudioRenditionGroup']
        return data
      end
    end

    class List____listOfHlsManifest
      def self.parse(list)
        data = []
        list.map do |value|
          data << HlsManifest.parse(value) unless value.nil?
        end
        data
      end
    end

    class HlsManifest
      def self.parse(map)
        data = Types::HlsManifest.new
        data.ad_markers = map['adMarkers']
        data.include_iframe_only_stream = map['includeIframeOnlyStream']
        data.manifest_name = map['manifestName']
        data.program_date_time_interval_seconds = map['programDateTimeIntervalSeconds']
        data.repeat_ext_x_key = map['repeatExtXKey']
        data.stream_selection = (StreamSelection.parse(map['streamSelection']) unless map['streamSelection'].nil?)
        return data
      end
    end

    class HlsEncryption
      def self.parse(map)
        data = Types::HlsEncryption.new
        data.constant_initialization_vector = map['constantInitializationVector']
        data.encryption_method = map['encryptionMethod']
        data.speke_key_provider = (SpekeKeyProvider.parse(map['spekeKeyProvider']) unless map['spekeKeyProvider'].nil?)
        return data
      end
    end

    class DashPackage
      def self.parse(map)
        data = Types::DashPackage.new
        data.dash_manifests = (List____listOfDashManifest.parse(map['dashManifests']) unless map['dashManifests'].nil?)
        data.encryption = (DashEncryption.parse(map['encryption']) unless map['encryption'].nil?)
        data.include_encoder_configuration_in_segments = map['includeEncoderConfigurationInSegments']
        data.period_triggers = (List____listOf__PeriodTriggersElement.parse(map['periodTriggers']) unless map['periodTriggers'].nil?)
        data.segment_duration_seconds = map['segmentDurationSeconds']
        data.segment_template_format = map['segmentTemplateFormat']
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
        data.speke_key_provider = (SpekeKeyProvider.parse(map['spekeKeyProvider']) unless map['spekeKeyProvider'].nil?)
        return data
      end
    end

    class List____listOfDashManifest
      def self.parse(list)
        data = []
        list.map do |value|
          data << DashManifest.parse(value) unless value.nil?
        end
        data
      end
    end

    class DashManifest
      def self.parse(map)
        data = Types::DashManifest.new
        data.manifest_layout = map['manifestLayout']
        data.manifest_name = map['manifestName']
        data.min_buffer_time_seconds = map['minBufferTimeSeconds']
        data.profile = map['profile']
        data.scte_markers_source = map['scteMarkersSource']
        data.stream_selection = (StreamSelection.parse(map['streamSelection']) unless map['streamSelection'].nil?)
        return data
      end
    end

    class CmafPackage
      def self.parse(map)
        data = Types::CmafPackage.new
        data.encryption = (CmafEncryption.parse(map['encryption']) unless map['encryption'].nil?)
        data.hls_manifests = (List____listOfHlsManifest.parse(map['hlsManifests']) unless map['hlsManifests'].nil?)
        data.include_encoder_configuration_in_segments = map['includeEncoderConfigurationInSegments']
        data.segment_duration_seconds = map['segmentDurationSeconds']
        return data
      end
    end

    class CmafEncryption
      def self.parse(map)
        data = Types::CmafEncryption.new
        data.constant_initialization_vector = map['constantInitializationVector']
        data.speke_key_provider = (SpekeKeyProvider.parse(map['spekeKeyProvider']) unless map['spekeKeyProvider'].nil?)
        return data
      end
    end

    # Operation Parser for CreatePackagingGroup
    class CreatePackagingGroup
      def self.parse(http_resp)
        data = Types::CreatePackagingGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.authorization = (Authorization.parse(map['authorization']) unless map['authorization'].nil?)
        data.domain_name = map['domainName']
        data.egress_access_logs = (EgressAccessLogs.parse(map['egressAccessLogs']) unless map['egressAccessLogs'].nil?)
        data.id = map['id']
        data.tags = (Tags.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for DeleteAsset
    class DeleteAsset
      def self.parse(http_resp)
        data = Types::DeleteAssetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeletePackagingConfiguration
    class DeletePackagingConfiguration
      def self.parse(http_resp)
        data = Types::DeletePackagingConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeletePackagingGroup
    class DeletePackagingGroup
      def self.parse(http_resp)
        data = Types::DeletePackagingGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DescribeAsset
    class DescribeAsset
      def self.parse(http_resp)
        data = Types::DescribeAssetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.created_at = map['createdAt']
        data.egress_endpoints = (List____listOfEgressEndpoint.parse(map['egressEndpoints']) unless map['egressEndpoints'].nil?)
        data.id = map['id']
        data.packaging_group_id = map['packagingGroupId']
        data.resource_id = map['resourceId']
        data.source_arn = map['sourceArn']
        data.source_role_arn = map['sourceRoleArn']
        data.tags = (Tags.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for DescribePackagingConfiguration
    class DescribePackagingConfiguration
      def self.parse(http_resp)
        data = Types::DescribePackagingConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.cmaf_package = (CmafPackage.parse(map['cmafPackage']) unless map['cmafPackage'].nil?)
        data.dash_package = (DashPackage.parse(map['dashPackage']) unless map['dashPackage'].nil?)
        data.hls_package = (HlsPackage.parse(map['hlsPackage']) unless map['hlsPackage'].nil?)
        data.id = map['id']
        data.mss_package = (MssPackage.parse(map['mssPackage']) unless map['mssPackage'].nil?)
        data.packaging_group_id = map['packagingGroupId']
        data.tags = (Tags.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for DescribePackagingGroup
    class DescribePackagingGroup
      def self.parse(http_resp)
        data = Types::DescribePackagingGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.authorization = (Authorization.parse(map['authorization']) unless map['authorization'].nil?)
        data.domain_name = map['domainName']
        data.egress_access_logs = (EgressAccessLogs.parse(map['egressAccessLogs']) unless map['egressAccessLogs'].nil?)
        data.id = map['id']
        data.tags = (Tags.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for ListAssets
    class ListAssets
      def self.parse(http_resp)
        data = Types::ListAssetsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.assets = (List____listOfAssetShallow.parse(map['assets']) unless map['assets'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class List____listOfAssetShallow
      def self.parse(list)
        data = []
        list.map do |value|
          data << AssetShallow.parse(value) unless value.nil?
        end
        data
      end
    end

    class AssetShallow
      def self.parse(map)
        data = Types::AssetShallow.new
        data.arn = map['arn']
        data.created_at = map['createdAt']
        data.id = map['id']
        data.packaging_group_id = map['packagingGroupId']
        data.resource_id = map['resourceId']
        data.source_arn = map['sourceArn']
        data.source_role_arn = map['sourceRoleArn']
        data.tags = (Tags.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    # Operation Parser for ListPackagingConfigurations
    class ListPackagingConfigurations
      def self.parse(http_resp)
        data = Types::ListPackagingConfigurationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['nextToken']
        data.packaging_configurations = (List____listOfPackagingConfiguration.parse(map['packagingConfigurations']) unless map['packagingConfigurations'].nil?)
        data
      end
    end

    class List____listOfPackagingConfiguration
      def self.parse(list)
        data = []
        list.map do |value|
          data << PackagingConfiguration.parse(value) unless value.nil?
        end
        data
      end
    end

    class PackagingConfiguration
      def self.parse(map)
        data = Types::PackagingConfiguration.new
        data.arn = map['arn']
        data.cmaf_package = (CmafPackage.parse(map['cmafPackage']) unless map['cmafPackage'].nil?)
        data.dash_package = (DashPackage.parse(map['dashPackage']) unless map['dashPackage'].nil?)
        data.hls_package = (HlsPackage.parse(map['hlsPackage']) unless map['hlsPackage'].nil?)
        data.id = map['id']
        data.mss_package = (MssPackage.parse(map['mssPackage']) unless map['mssPackage'].nil?)
        data.packaging_group_id = map['packagingGroupId']
        data.tags = (Tags.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    # Operation Parser for ListPackagingGroups
    class ListPackagingGroups
      def self.parse(http_resp)
        data = Types::ListPackagingGroupsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['nextToken']
        data.packaging_groups = (List____listOfPackagingGroup.parse(map['packagingGroups']) unless map['packagingGroups'].nil?)
        data
      end
    end

    class List____listOfPackagingGroup
      def self.parse(list)
        data = []
        list.map do |value|
          data << PackagingGroup.parse(value) unless value.nil?
        end
        data
      end
    end

    class PackagingGroup
      def self.parse(map)
        data = Types::PackagingGroup.new
        data.arn = map['arn']
        data.authorization = (Authorization.parse(map['authorization']) unless map['authorization'].nil?)
        data.domain_name = map['domainName']
        data.egress_access_logs = (EgressAccessLogs.parse(map['egressAccessLogs']) unless map['egressAccessLogs'].nil?)
        data.id = map['id']
        data.tags = (Tags.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (Map____mapOf__string.parse(map['tags']) unless map['tags'].nil?)
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

    # Operation Parser for UpdatePackagingGroup
    class UpdatePackagingGroup
      def self.parse(http_resp)
        data = Types::UpdatePackagingGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.authorization = (Authorization.parse(map['authorization']) unless map['authorization'].nil?)
        data.domain_name = map['domainName']
        data.egress_access_logs = (EgressAccessLogs.parse(map['egressAccessLogs']) unless map['egressAccessLogs'].nil?)
        data.id = map['id']
        data.tags = (Tags.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end
  end
end
