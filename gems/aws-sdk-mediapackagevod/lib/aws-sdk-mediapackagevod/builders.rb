# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::MediaPackageVod
  module Builders

    # Operation Builder for ConfigureLogs
    class ConfigureLogs
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/packaging_groups/%<Id>s/configure_logs',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['egressAccessLogs'] = Builders::EgressAccessLogs.build(input[:egress_access_logs]) unless input[:egress_access_logs].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
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

    # Operation Builder for CreateAsset
    class CreateAsset
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/assets')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['id'] = input[:id] unless input[:id].nil?
        data['packagingGroupId'] = input[:packaging_group_id] unless input[:packaging_group_id].nil?
        data['resourceId'] = input[:resource_id] unless input[:resource_id].nil?
        data['sourceArn'] = input[:source_arn] unless input[:source_arn].nil?
        data['sourceRoleArn'] = input[:source_role_arn] unless input[:source_role_arn].nil?
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

    # Operation Builder for CreatePackagingConfiguration
    class CreatePackagingConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/packaging_configurations')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['cmafPackage'] = Builders::CmafPackage.build(input[:cmaf_package]) unless input[:cmaf_package].nil?
        data['dashPackage'] = Builders::DashPackage.build(input[:dash_package]) unless input[:dash_package].nil?
        data['hlsPackage'] = Builders::HlsPackage.build(input[:hls_package]) unless input[:hls_package].nil?
        data['id'] = input[:id] unless input[:id].nil?
        data['mssPackage'] = Builders::MssPackage.build(input[:mss_package]) unless input[:mss_package].nil?
        data['packagingGroupId'] = input[:packaging_group_id] unless input[:packaging_group_id].nil?
        data['tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for MssPackage
    class MssPackage
      def self.build(input)
        data = {}
        data['encryption'] = Builders::MssEncryption.build(input[:encryption]) unless input[:encryption].nil?
        data['mssManifests'] = Builders::List____listOfMssManifest.build(input[:mss_manifests]) unless input[:mss_manifests].nil?
        data['segmentDurationSeconds'] = input[:segment_duration_seconds] unless input[:segment_duration_seconds].nil?
        data
      end
    end

    # List Builder for __listOfMssManifest
    class List____listOfMssManifest
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::MssManifest.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for MssManifest
    class MssManifest
      def self.build(input)
        data = {}
        data['manifestName'] = input[:manifest_name] unless input[:manifest_name].nil?
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
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['systemIds'] = Builders::List____listOf__string.build(input[:system_ids]) unless input[:system_ids].nil?
        data['url'] = input[:url] unless input[:url].nil?
        data
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

    # Structure Builder for HlsPackage
    class HlsPackage
      def self.build(input)
        data = {}
        data['encryption'] = Builders::HlsEncryption.build(input[:encryption]) unless input[:encryption].nil?
        data['hlsManifests'] = Builders::List____listOfHlsManifest.build(input[:hls_manifests]) unless input[:hls_manifests].nil?
        data['includeDvbSubtitles'] = input[:include_dvb_subtitles] unless input[:include_dvb_subtitles].nil?
        data['segmentDurationSeconds'] = input[:segment_duration_seconds] unless input[:segment_duration_seconds].nil?
        data['useAudioRenditionGroup'] = input[:use_audio_rendition_group] unless input[:use_audio_rendition_group].nil?
        data
      end
    end

    # List Builder for __listOfHlsManifest
    class List____listOfHlsManifest
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::HlsManifest.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for HlsManifest
    class HlsManifest
      def self.build(input)
        data = {}
        data['adMarkers'] = input[:ad_markers] unless input[:ad_markers].nil?
        data['includeIframeOnlyStream'] = input[:include_iframe_only_stream] unless input[:include_iframe_only_stream].nil?
        data['manifestName'] = input[:manifest_name] unless input[:manifest_name].nil?
        data['programDateTimeIntervalSeconds'] = input[:program_date_time_interval_seconds] unless input[:program_date_time_interval_seconds].nil?
        data['repeatExtXKey'] = input[:repeat_ext_x_key] unless input[:repeat_ext_x_key].nil?
        data['streamSelection'] = Builders::StreamSelection.build(input[:stream_selection]) unless input[:stream_selection].nil?
        data
      end
    end

    # Structure Builder for HlsEncryption
    class HlsEncryption
      def self.build(input)
        data = {}
        data['constantInitializationVector'] = input[:constant_initialization_vector] unless input[:constant_initialization_vector].nil?
        data['encryptionMethod'] = input[:encryption_method] unless input[:encryption_method].nil?
        data['spekeKeyProvider'] = Builders::SpekeKeyProvider.build(input[:speke_key_provider]) unless input[:speke_key_provider].nil?
        data
      end
    end

    # Structure Builder for DashPackage
    class DashPackage
      def self.build(input)
        data = {}
        data['dashManifests'] = Builders::List____listOfDashManifest.build(input[:dash_manifests]) unless input[:dash_manifests].nil?
        data['encryption'] = Builders::DashEncryption.build(input[:encryption]) unless input[:encryption].nil?
        data['includeEncoderConfigurationInSegments'] = input[:include_encoder_configuration_in_segments] unless input[:include_encoder_configuration_in_segments].nil?
        data['periodTriggers'] = Builders::List____listOf__PeriodTriggersElement.build(input[:period_triggers]) unless input[:period_triggers].nil?
        data['segmentDurationSeconds'] = input[:segment_duration_seconds] unless input[:segment_duration_seconds].nil?
        data['segmentTemplateFormat'] = input[:segment_template_format] unless input[:segment_template_format].nil?
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
        data['spekeKeyProvider'] = Builders::SpekeKeyProvider.build(input[:speke_key_provider]) unless input[:speke_key_provider].nil?
        data
      end
    end

    # List Builder for __listOfDashManifest
    class List____listOfDashManifest
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::DashManifest.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DashManifest
    class DashManifest
      def self.build(input)
        data = {}
        data['manifestLayout'] = input[:manifest_layout] unless input[:manifest_layout].nil?
        data['manifestName'] = input[:manifest_name] unless input[:manifest_name].nil?
        data['minBufferTimeSeconds'] = input[:min_buffer_time_seconds] unless input[:min_buffer_time_seconds].nil?
        data['profile'] = input[:profile] unless input[:profile].nil?
        data['scteMarkersSource'] = input[:scte_markers_source] unless input[:scte_markers_source].nil?
        data['streamSelection'] = Builders::StreamSelection.build(input[:stream_selection]) unless input[:stream_selection].nil?
        data
      end
    end

    # Structure Builder for CmafPackage
    class CmafPackage
      def self.build(input)
        data = {}
        data['encryption'] = Builders::CmafEncryption.build(input[:encryption]) unless input[:encryption].nil?
        data['hlsManifests'] = Builders::List____listOfHlsManifest.build(input[:hls_manifests]) unless input[:hls_manifests].nil?
        data['includeEncoderConfigurationInSegments'] = input[:include_encoder_configuration_in_segments] unless input[:include_encoder_configuration_in_segments].nil?
        data['segmentDurationSeconds'] = input[:segment_duration_seconds] unless input[:segment_duration_seconds].nil?
        data
      end
    end

    # Structure Builder for CmafEncryption
    class CmafEncryption
      def self.build(input)
        data = {}
        data['constantInitializationVector'] = input[:constant_initialization_vector] unless input[:constant_initialization_vector].nil?
        data['spekeKeyProvider'] = Builders::SpekeKeyProvider.build(input[:speke_key_provider]) unless input[:speke_key_provider].nil?
        data
      end
    end

    # Operation Builder for CreatePackagingGroup
    class CreatePackagingGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/packaging_groups')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['authorization'] = Builders::Authorization.build(input[:authorization]) unless input[:authorization].nil?
        data['egressAccessLogs'] = Builders::EgressAccessLogs.build(input[:egress_access_logs]) unless input[:egress_access_logs].nil?
        data['id'] = input[:id] unless input[:id].nil?
        data['tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
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

    # Operation Builder for DeleteAsset
    class DeleteAsset
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/assets/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeletePackagingConfiguration
    class DeletePackagingConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/packaging_configurations/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeletePackagingGroup
    class DeletePackagingGroup
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/packaging_groups/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeAsset
    class DescribeAsset
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/assets/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribePackagingConfiguration
    class DescribePackagingConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/packaging_configurations/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribePackagingGroup
    class DescribePackagingGroup
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/packaging_groups/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListAssets
    class ListAssets
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/assets')
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['packagingGroupId'] = input[:packaging_group_id].to_s unless input[:packaging_group_id].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListPackagingConfigurations
    class ListPackagingConfigurations
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/packaging_configurations')
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['packagingGroupId'] = input[:packaging_group_id].to_s unless input[:packaging_group_id].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListPackagingGroups
    class ListPackagingGroups
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/packaging_groups')
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

    # Operation Builder for UpdatePackagingGroup
    class UpdatePackagingGroup
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/packaging_groups/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['authorization'] = Builders::Authorization.build(input[:authorization]) unless input[:authorization].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
