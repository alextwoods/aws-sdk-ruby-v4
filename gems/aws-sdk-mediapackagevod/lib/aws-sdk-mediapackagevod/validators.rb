# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::MediaPackageVod
  module Validators

    class AssetShallow
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssetShallow, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:created_at], ::String, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:packaging_group_id], ::String, context: "#{context}[:packaging_group_id]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:source_arn], ::String, context: "#{context}[:source_arn]")
        Hearth::Validator.validate!(input[:source_role_arn], ::String, context: "#{context}[:source_role_arn]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class Authorization
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Authorization, context: context)
        Hearth::Validator.validate!(input[:cdn_identifier_secret], ::String, context: "#{context}[:cdn_identifier_secret]")
        Hearth::Validator.validate!(input[:secrets_role_arn], ::String, context: "#{context}[:secrets_role_arn]")
      end
    end

    class CmafEncryption
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CmafEncryption, context: context)
        Hearth::Validator.validate!(input[:constant_initialization_vector], ::String, context: "#{context}[:constant_initialization_vector]")
        SpekeKeyProvider.validate!(input[:speke_key_provider], context: "#{context}[:speke_key_provider]") unless input[:speke_key_provider].nil?
      end
    end

    class CmafPackage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CmafPackage, context: context)
        CmafEncryption.validate!(input[:encryption], context: "#{context}[:encryption]") unless input[:encryption].nil?
        List____listOfHlsManifest.validate!(input[:hls_manifests], context: "#{context}[:hls_manifests]") unless input[:hls_manifests].nil?
        Hearth::Validator.validate!(input[:include_encoder_configuration_in_segments], ::TrueClass, ::FalseClass, context: "#{context}[:include_encoder_configuration_in_segments]")
        Hearth::Validator.validate!(input[:segment_duration_seconds], ::Integer, context: "#{context}[:segment_duration_seconds]")
      end
    end

    class ConfigureLogsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfigureLogsInput, context: context)
        EgressAccessLogs.validate!(input[:egress_access_logs], context: "#{context}[:egress_access_logs]") unless input[:egress_access_logs].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class ConfigureLogsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfigureLogsOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Authorization.validate!(input[:authorization], context: "#{context}[:authorization]") unless input[:authorization].nil?
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        EgressAccessLogs.validate!(input[:egress_access_logs], context: "#{context}[:egress_access_logs]") unless input[:egress_access_logs].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateAssetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAssetInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:packaging_group_id], ::String, context: "#{context}[:packaging_group_id]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:source_arn], ::String, context: "#{context}[:source_arn]")
        Hearth::Validator.validate!(input[:source_role_arn], ::String, context: "#{context}[:source_role_arn]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateAssetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAssetOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:created_at], ::String, context: "#{context}[:created_at]")
        List____listOfEgressEndpoint.validate!(input[:egress_endpoints], context: "#{context}[:egress_endpoints]") unless input[:egress_endpoints].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:packaging_group_id], ::String, context: "#{context}[:packaging_group_id]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:source_arn], ::String, context: "#{context}[:source_arn]")
        Hearth::Validator.validate!(input[:source_role_arn], ::String, context: "#{context}[:source_role_arn]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreatePackagingConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePackagingConfigurationInput, context: context)
        CmafPackage.validate!(input[:cmaf_package], context: "#{context}[:cmaf_package]") unless input[:cmaf_package].nil?
        DashPackage.validate!(input[:dash_package], context: "#{context}[:dash_package]") unless input[:dash_package].nil?
        HlsPackage.validate!(input[:hls_package], context: "#{context}[:hls_package]") unless input[:hls_package].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        MssPackage.validate!(input[:mss_package], context: "#{context}[:mss_package]") unless input[:mss_package].nil?
        Hearth::Validator.validate!(input[:packaging_group_id], ::String, context: "#{context}[:packaging_group_id]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreatePackagingConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePackagingConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        CmafPackage.validate!(input[:cmaf_package], context: "#{context}[:cmaf_package]") unless input[:cmaf_package].nil?
        DashPackage.validate!(input[:dash_package], context: "#{context}[:dash_package]") unless input[:dash_package].nil?
        HlsPackage.validate!(input[:hls_package], context: "#{context}[:hls_package]") unless input[:hls_package].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        MssPackage.validate!(input[:mss_package], context: "#{context}[:mss_package]") unless input[:mss_package].nil?
        Hearth::Validator.validate!(input[:packaging_group_id], ::String, context: "#{context}[:packaging_group_id]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreatePackagingGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePackagingGroupInput, context: context)
        Authorization.validate!(input[:authorization], context: "#{context}[:authorization]") unless input[:authorization].nil?
        EgressAccessLogs.validate!(input[:egress_access_logs], context: "#{context}[:egress_access_logs]") unless input[:egress_access_logs].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreatePackagingGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePackagingGroupOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Authorization.validate!(input[:authorization], context: "#{context}[:authorization]") unless input[:authorization].nil?
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        EgressAccessLogs.validate!(input[:egress_access_logs], context: "#{context}[:egress_access_logs]") unless input[:egress_access_logs].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class DashEncryption
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DashEncryption, context: context)
        SpekeKeyProvider.validate!(input[:speke_key_provider], context: "#{context}[:speke_key_provider]") unless input[:speke_key_provider].nil?
      end
    end

    class DashManifest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DashManifest, context: context)
        Hearth::Validator.validate!(input[:manifest_layout], ::String, context: "#{context}[:manifest_layout]")
        Hearth::Validator.validate!(input[:manifest_name], ::String, context: "#{context}[:manifest_name]")
        Hearth::Validator.validate!(input[:min_buffer_time_seconds], ::Integer, context: "#{context}[:min_buffer_time_seconds]")
        Hearth::Validator.validate!(input[:profile], ::String, context: "#{context}[:profile]")
        Hearth::Validator.validate!(input[:scte_markers_source], ::String, context: "#{context}[:scte_markers_source]")
        StreamSelection.validate!(input[:stream_selection], context: "#{context}[:stream_selection]") unless input[:stream_selection].nil?
      end
    end

    class DashPackage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DashPackage, context: context)
        List____listOfDashManifest.validate!(input[:dash_manifests], context: "#{context}[:dash_manifests]") unless input[:dash_manifests].nil?
        DashEncryption.validate!(input[:encryption], context: "#{context}[:encryption]") unless input[:encryption].nil?
        Hearth::Validator.validate!(input[:include_encoder_configuration_in_segments], ::TrueClass, ::FalseClass, context: "#{context}[:include_encoder_configuration_in_segments]")
        List____listOf__PeriodTriggersElement.validate!(input[:period_triggers], context: "#{context}[:period_triggers]") unless input[:period_triggers].nil?
        Hearth::Validator.validate!(input[:segment_duration_seconds], ::Integer, context: "#{context}[:segment_duration_seconds]")
        Hearth::Validator.validate!(input[:segment_template_format], ::String, context: "#{context}[:segment_template_format]")
      end
    end

    class DeleteAssetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAssetInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class DeleteAssetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAssetOutput, context: context)
      end
    end

    class DeletePackagingConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePackagingConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class DeletePackagingConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePackagingConfigurationOutput, context: context)
      end
    end

    class DeletePackagingGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePackagingGroupInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class DeletePackagingGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePackagingGroupOutput, context: context)
      end
    end

    class DescribeAssetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAssetInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class DescribeAssetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAssetOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:created_at], ::String, context: "#{context}[:created_at]")
        List____listOfEgressEndpoint.validate!(input[:egress_endpoints], context: "#{context}[:egress_endpoints]") unless input[:egress_endpoints].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:packaging_group_id], ::String, context: "#{context}[:packaging_group_id]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:source_arn], ::String, context: "#{context}[:source_arn]")
        Hearth::Validator.validate!(input[:source_role_arn], ::String, context: "#{context}[:source_role_arn]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class DescribePackagingConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePackagingConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class DescribePackagingConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePackagingConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        CmafPackage.validate!(input[:cmaf_package], context: "#{context}[:cmaf_package]") unless input[:cmaf_package].nil?
        DashPackage.validate!(input[:dash_package], context: "#{context}[:dash_package]") unless input[:dash_package].nil?
        HlsPackage.validate!(input[:hls_package], context: "#{context}[:hls_package]") unless input[:hls_package].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        MssPackage.validate!(input[:mss_package], context: "#{context}[:mss_package]") unless input[:mss_package].nil?
        Hearth::Validator.validate!(input[:packaging_group_id], ::String, context: "#{context}[:packaging_group_id]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class DescribePackagingGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePackagingGroupInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class DescribePackagingGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePackagingGroupOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Authorization.validate!(input[:authorization], context: "#{context}[:authorization]") unless input[:authorization].nil?
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        EgressAccessLogs.validate!(input[:egress_access_logs], context: "#{context}[:egress_access_logs]") unless input[:egress_access_logs].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class EgressAccessLogs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EgressAccessLogs, context: context)
        Hearth::Validator.validate!(input[:log_group_name], ::String, context: "#{context}[:log_group_name]")
      end
    end

    class EgressEndpoint
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EgressEndpoint, context: context)
        Hearth::Validator.validate!(input[:packaging_configuration_id], ::String, context: "#{context}[:packaging_configuration_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
      end
    end

    class ForbiddenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ForbiddenException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class HlsEncryption
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HlsEncryption, context: context)
        Hearth::Validator.validate!(input[:constant_initialization_vector], ::String, context: "#{context}[:constant_initialization_vector]")
        Hearth::Validator.validate!(input[:encryption_method], ::String, context: "#{context}[:encryption_method]")
        SpekeKeyProvider.validate!(input[:speke_key_provider], context: "#{context}[:speke_key_provider]") unless input[:speke_key_provider].nil?
      end
    end

    class HlsManifest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HlsManifest, context: context)
        Hearth::Validator.validate!(input[:ad_markers], ::String, context: "#{context}[:ad_markers]")
        Hearth::Validator.validate!(input[:include_iframe_only_stream], ::TrueClass, ::FalseClass, context: "#{context}[:include_iframe_only_stream]")
        Hearth::Validator.validate!(input[:manifest_name], ::String, context: "#{context}[:manifest_name]")
        Hearth::Validator.validate!(input[:program_date_time_interval_seconds], ::Integer, context: "#{context}[:program_date_time_interval_seconds]")
        Hearth::Validator.validate!(input[:repeat_ext_x_key], ::TrueClass, ::FalseClass, context: "#{context}[:repeat_ext_x_key]")
        StreamSelection.validate!(input[:stream_selection], context: "#{context}[:stream_selection]") unless input[:stream_selection].nil?
      end
    end

    class HlsPackage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HlsPackage, context: context)
        HlsEncryption.validate!(input[:encryption], context: "#{context}[:encryption]") unless input[:encryption].nil?
        List____listOfHlsManifest.validate!(input[:hls_manifests], context: "#{context}[:hls_manifests]") unless input[:hls_manifests].nil?
        Hearth::Validator.validate!(input[:include_dvb_subtitles], ::TrueClass, ::FalseClass, context: "#{context}[:include_dvb_subtitles]")
        Hearth::Validator.validate!(input[:segment_duration_seconds], ::Integer, context: "#{context}[:segment_duration_seconds]")
        Hearth::Validator.validate!(input[:use_audio_rendition_group], ::TrueClass, ::FalseClass, context: "#{context}[:use_audio_rendition_group]")
      end
    end

    class InternalServerErrorException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerErrorException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListAssetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAssetsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:packaging_group_id], ::String, context: "#{context}[:packaging_group_id]")
      end
    end

    class ListAssetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAssetsOutput, context: context)
        List____listOfAssetShallow.validate!(input[:assets], context: "#{context}[:assets]") unless input[:assets].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPackagingConfigurationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPackagingConfigurationsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:packaging_group_id], ::String, context: "#{context}[:packaging_group_id]")
      end
    end

    class ListPackagingConfigurationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPackagingConfigurationsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        List____listOfPackagingConfiguration.validate!(input[:packaging_configurations], context: "#{context}[:packaging_configurations]") unless input[:packaging_configurations].nil?
      end
    end

    class ListPackagingGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPackagingGroupsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPackagingGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPackagingGroupsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        List____listOfPackagingGroup.validate!(input[:packaging_groups], context: "#{context}[:packaging_groups]") unless input[:packaging_groups].nil?
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        Map____mapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class MssEncryption
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MssEncryption, context: context)
        SpekeKeyProvider.validate!(input[:speke_key_provider], context: "#{context}[:speke_key_provider]") unless input[:speke_key_provider].nil?
      end
    end

    class MssManifest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MssManifest, context: context)
        Hearth::Validator.validate!(input[:manifest_name], ::String, context: "#{context}[:manifest_name]")
        StreamSelection.validate!(input[:stream_selection], context: "#{context}[:stream_selection]") unless input[:stream_selection].nil?
      end
    end

    class MssPackage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MssPackage, context: context)
        MssEncryption.validate!(input[:encryption], context: "#{context}[:encryption]") unless input[:encryption].nil?
        List____listOfMssManifest.validate!(input[:mss_manifests], context: "#{context}[:mss_manifests]") unless input[:mss_manifests].nil?
        Hearth::Validator.validate!(input[:segment_duration_seconds], ::Integer, context: "#{context}[:segment_duration_seconds]")
      end
    end

    class NotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PackagingConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PackagingConfiguration, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        CmafPackage.validate!(input[:cmaf_package], context: "#{context}[:cmaf_package]") unless input[:cmaf_package].nil?
        DashPackage.validate!(input[:dash_package], context: "#{context}[:dash_package]") unless input[:dash_package].nil?
        HlsPackage.validate!(input[:hls_package], context: "#{context}[:hls_package]") unless input[:hls_package].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        MssPackage.validate!(input[:mss_package], context: "#{context}[:mss_package]") unless input[:mss_package].nil?
        Hearth::Validator.validate!(input[:packaging_group_id], ::String, context: "#{context}[:packaging_group_id]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class PackagingGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PackagingGroup, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Authorization.validate!(input[:authorization], context: "#{context}[:authorization]") unless input[:authorization].nil?
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        EgressAccessLogs.validate!(input[:egress_access_logs], context: "#{context}[:egress_access_logs]") unless input[:egress_access_logs].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ServiceUnavailableException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceUnavailableException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SpekeKeyProvider
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SpekeKeyProvider, context: context)
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        List____listOf__string.validate!(input[:system_ids], context: "#{context}[:system_ids]") unless input[:system_ids].nil?
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
      end
    end

    class StreamSelection
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StreamSelection, context: context)
        Hearth::Validator.validate!(input[:max_video_bits_per_second], ::Integer, context: "#{context}[:max_video_bits_per_second]")
        Hearth::Validator.validate!(input[:min_video_bits_per_second], ::Integer, context: "#{context}[:min_video_bits_per_second]")
        Hearth::Validator.validate!(input[:stream_order], ::String, context: "#{context}[:stream_order]")
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Map____mapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class Tags
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class TooManyRequestsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyRequestsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UnprocessableEntityException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnprocessableEntityException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        List____listOf__string.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdatePackagingGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePackagingGroupInput, context: context)
        Authorization.validate!(input[:authorization], context: "#{context}[:authorization]") unless input[:authorization].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class UpdatePackagingGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePackagingGroupOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Authorization.validate!(input[:authorization], context: "#{context}[:authorization]") unless input[:authorization].nil?
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        EgressAccessLogs.validate!(input[:egress_access_logs], context: "#{context}[:egress_access_logs]") unless input[:egress_access_logs].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class List____listOfAssetShallow
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AssetShallow.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfDashManifest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DashManifest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfEgressEndpoint
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EgressEndpoint.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfHlsManifest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          HlsManifest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfMssManifest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MssManifest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfPackagingConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PackagingConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfPackagingGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PackagingGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOf__PeriodTriggersElement
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class List____listOf__string
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Map____mapOf__string
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

  end
end
