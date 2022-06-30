# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::MediaPackageVod
  module Params

    module AssetShallow
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssetShallow, context: context)
        type = Types::AssetShallow.new
        type.arn = params[:arn]
        type.created_at = params[:created_at]
        type.id = params[:id]
        type.packaging_group_id = params[:packaging_group_id]
        type.resource_id = params[:resource_id]
        type.source_arn = params[:source_arn]
        type.source_role_arn = params[:source_role_arn]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module Authorization
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Authorization, context: context)
        type = Types::Authorization.new
        type.cdn_identifier_secret = params[:cdn_identifier_secret]
        type.secrets_role_arn = params[:secrets_role_arn]
        type
      end
    end

    module CmafEncryption
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CmafEncryption, context: context)
        type = Types::CmafEncryption.new
        type.constant_initialization_vector = params[:constant_initialization_vector]
        type.speke_key_provider = SpekeKeyProvider.build(params[:speke_key_provider], context: "#{context}[:speke_key_provider]") unless params[:speke_key_provider].nil?
        type
      end
    end

    module CmafPackage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CmafPackage, context: context)
        type = Types::CmafPackage.new
        type.encryption = CmafEncryption.build(params[:encryption], context: "#{context}[:encryption]") unless params[:encryption].nil?
        type.hls_manifests = List____listOfHlsManifest.build(params[:hls_manifests], context: "#{context}[:hls_manifests]") unless params[:hls_manifests].nil?
        type.include_encoder_configuration_in_segments = params[:include_encoder_configuration_in_segments]
        type.segment_duration_seconds = params[:segment_duration_seconds]
        type
      end
    end

    module ConfigureLogsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfigureLogsInput, context: context)
        type = Types::ConfigureLogsInput.new
        type.egress_access_logs = EgressAccessLogs.build(params[:egress_access_logs], context: "#{context}[:egress_access_logs]") unless params[:egress_access_logs].nil?
        type.id = params[:id]
        type
      end
    end

    module ConfigureLogsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfigureLogsOutput, context: context)
        type = Types::ConfigureLogsOutput.new
        type.arn = params[:arn]
        type.authorization = Authorization.build(params[:authorization], context: "#{context}[:authorization]") unless params[:authorization].nil?
        type.domain_name = params[:domain_name]
        type.egress_access_logs = EgressAccessLogs.build(params[:egress_access_logs], context: "#{context}[:egress_access_logs]") unless params[:egress_access_logs].nil?
        type.id = params[:id]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateAssetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAssetInput, context: context)
        type = Types::CreateAssetInput.new
        type.id = params[:id]
        type.packaging_group_id = params[:packaging_group_id]
        type.resource_id = params[:resource_id]
        type.source_arn = params[:source_arn]
        type.source_role_arn = params[:source_role_arn]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateAssetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAssetOutput, context: context)
        type = Types::CreateAssetOutput.new
        type.arn = params[:arn]
        type.created_at = params[:created_at]
        type.egress_endpoints = List____listOfEgressEndpoint.build(params[:egress_endpoints], context: "#{context}[:egress_endpoints]") unless params[:egress_endpoints].nil?
        type.id = params[:id]
        type.packaging_group_id = params[:packaging_group_id]
        type.resource_id = params[:resource_id]
        type.source_arn = params[:source_arn]
        type.source_role_arn = params[:source_role_arn]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreatePackagingConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePackagingConfigurationInput, context: context)
        type = Types::CreatePackagingConfigurationInput.new
        type.cmaf_package = CmafPackage.build(params[:cmaf_package], context: "#{context}[:cmaf_package]") unless params[:cmaf_package].nil?
        type.dash_package = DashPackage.build(params[:dash_package], context: "#{context}[:dash_package]") unless params[:dash_package].nil?
        type.hls_package = HlsPackage.build(params[:hls_package], context: "#{context}[:hls_package]") unless params[:hls_package].nil?
        type.id = params[:id]
        type.mss_package = MssPackage.build(params[:mss_package], context: "#{context}[:mss_package]") unless params[:mss_package].nil?
        type.packaging_group_id = params[:packaging_group_id]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreatePackagingConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePackagingConfigurationOutput, context: context)
        type = Types::CreatePackagingConfigurationOutput.new
        type.arn = params[:arn]
        type.cmaf_package = CmafPackage.build(params[:cmaf_package], context: "#{context}[:cmaf_package]") unless params[:cmaf_package].nil?
        type.dash_package = DashPackage.build(params[:dash_package], context: "#{context}[:dash_package]") unless params[:dash_package].nil?
        type.hls_package = HlsPackage.build(params[:hls_package], context: "#{context}[:hls_package]") unless params[:hls_package].nil?
        type.id = params[:id]
        type.mss_package = MssPackage.build(params[:mss_package], context: "#{context}[:mss_package]") unless params[:mss_package].nil?
        type.packaging_group_id = params[:packaging_group_id]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreatePackagingGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePackagingGroupInput, context: context)
        type = Types::CreatePackagingGroupInput.new
        type.authorization = Authorization.build(params[:authorization], context: "#{context}[:authorization]") unless params[:authorization].nil?
        type.egress_access_logs = EgressAccessLogs.build(params[:egress_access_logs], context: "#{context}[:egress_access_logs]") unless params[:egress_access_logs].nil?
        type.id = params[:id]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreatePackagingGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePackagingGroupOutput, context: context)
        type = Types::CreatePackagingGroupOutput.new
        type.arn = params[:arn]
        type.authorization = Authorization.build(params[:authorization], context: "#{context}[:authorization]") unless params[:authorization].nil?
        type.domain_name = params[:domain_name]
        type.egress_access_logs = EgressAccessLogs.build(params[:egress_access_logs], context: "#{context}[:egress_access_logs]") unless params[:egress_access_logs].nil?
        type.id = params[:id]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module DashEncryption
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DashEncryption, context: context)
        type = Types::DashEncryption.new
        type.speke_key_provider = SpekeKeyProvider.build(params[:speke_key_provider], context: "#{context}[:speke_key_provider]") unless params[:speke_key_provider].nil?
        type
      end
    end

    module DashManifest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DashManifest, context: context)
        type = Types::DashManifest.new
        type.manifest_layout = params[:manifest_layout]
        type.manifest_name = params[:manifest_name]
        type.min_buffer_time_seconds = params[:min_buffer_time_seconds]
        type.profile = params[:profile]
        type.scte_markers_source = params[:scte_markers_source]
        type.stream_selection = StreamSelection.build(params[:stream_selection], context: "#{context}[:stream_selection]") unless params[:stream_selection].nil?
        type
      end
    end

    module DashPackage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DashPackage, context: context)
        type = Types::DashPackage.new
        type.dash_manifests = List____listOfDashManifest.build(params[:dash_manifests], context: "#{context}[:dash_manifests]") unless params[:dash_manifests].nil?
        type.encryption = DashEncryption.build(params[:encryption], context: "#{context}[:encryption]") unless params[:encryption].nil?
        type.include_encoder_configuration_in_segments = params[:include_encoder_configuration_in_segments]
        type.period_triggers = List____listOf__PeriodTriggersElement.build(params[:period_triggers], context: "#{context}[:period_triggers]") unless params[:period_triggers].nil?
        type.segment_duration_seconds = params[:segment_duration_seconds]
        type.segment_template_format = params[:segment_template_format]
        type
      end
    end

    module DeleteAssetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAssetInput, context: context)
        type = Types::DeleteAssetInput.new
        type.id = params[:id]
        type
      end
    end

    module DeleteAssetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAssetOutput, context: context)
        type = Types::DeleteAssetOutput.new
        type
      end
    end

    module DeletePackagingConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePackagingConfigurationInput, context: context)
        type = Types::DeletePackagingConfigurationInput.new
        type.id = params[:id]
        type
      end
    end

    module DeletePackagingConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePackagingConfigurationOutput, context: context)
        type = Types::DeletePackagingConfigurationOutput.new
        type
      end
    end

    module DeletePackagingGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePackagingGroupInput, context: context)
        type = Types::DeletePackagingGroupInput.new
        type.id = params[:id]
        type
      end
    end

    module DeletePackagingGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePackagingGroupOutput, context: context)
        type = Types::DeletePackagingGroupOutput.new
        type
      end
    end

    module DescribeAssetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAssetInput, context: context)
        type = Types::DescribeAssetInput.new
        type.id = params[:id]
        type
      end
    end

    module DescribeAssetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAssetOutput, context: context)
        type = Types::DescribeAssetOutput.new
        type.arn = params[:arn]
        type.created_at = params[:created_at]
        type.egress_endpoints = List____listOfEgressEndpoint.build(params[:egress_endpoints], context: "#{context}[:egress_endpoints]") unless params[:egress_endpoints].nil?
        type.id = params[:id]
        type.packaging_group_id = params[:packaging_group_id]
        type.resource_id = params[:resource_id]
        type.source_arn = params[:source_arn]
        type.source_role_arn = params[:source_role_arn]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module DescribePackagingConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePackagingConfigurationInput, context: context)
        type = Types::DescribePackagingConfigurationInput.new
        type.id = params[:id]
        type
      end
    end

    module DescribePackagingConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePackagingConfigurationOutput, context: context)
        type = Types::DescribePackagingConfigurationOutput.new
        type.arn = params[:arn]
        type.cmaf_package = CmafPackage.build(params[:cmaf_package], context: "#{context}[:cmaf_package]") unless params[:cmaf_package].nil?
        type.dash_package = DashPackage.build(params[:dash_package], context: "#{context}[:dash_package]") unless params[:dash_package].nil?
        type.hls_package = HlsPackage.build(params[:hls_package], context: "#{context}[:hls_package]") unless params[:hls_package].nil?
        type.id = params[:id]
        type.mss_package = MssPackage.build(params[:mss_package], context: "#{context}[:mss_package]") unless params[:mss_package].nil?
        type.packaging_group_id = params[:packaging_group_id]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module DescribePackagingGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePackagingGroupInput, context: context)
        type = Types::DescribePackagingGroupInput.new
        type.id = params[:id]
        type
      end
    end

    module DescribePackagingGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePackagingGroupOutput, context: context)
        type = Types::DescribePackagingGroupOutput.new
        type.arn = params[:arn]
        type.authorization = Authorization.build(params[:authorization], context: "#{context}[:authorization]") unless params[:authorization].nil?
        type.domain_name = params[:domain_name]
        type.egress_access_logs = EgressAccessLogs.build(params[:egress_access_logs], context: "#{context}[:egress_access_logs]") unless params[:egress_access_logs].nil?
        type.id = params[:id]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module EgressAccessLogs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EgressAccessLogs, context: context)
        type = Types::EgressAccessLogs.new
        type.log_group_name = params[:log_group_name]
        type
      end
    end

    module EgressEndpoint
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EgressEndpoint, context: context)
        type = Types::EgressEndpoint.new
        type.packaging_configuration_id = params[:packaging_configuration_id]
        type.status = params[:status]
        type.url = params[:url]
        type
      end
    end

    module ForbiddenException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ForbiddenException, context: context)
        type = Types::ForbiddenException.new
        type.message = params[:message]
        type
      end
    end

    module HlsEncryption
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HlsEncryption, context: context)
        type = Types::HlsEncryption.new
        type.constant_initialization_vector = params[:constant_initialization_vector]
        type.encryption_method = params[:encryption_method]
        type.speke_key_provider = SpekeKeyProvider.build(params[:speke_key_provider], context: "#{context}[:speke_key_provider]") unless params[:speke_key_provider].nil?
        type
      end
    end

    module HlsManifest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HlsManifest, context: context)
        type = Types::HlsManifest.new
        type.ad_markers = params[:ad_markers]
        type.include_iframe_only_stream = params[:include_iframe_only_stream]
        type.manifest_name = params[:manifest_name]
        type.program_date_time_interval_seconds = params[:program_date_time_interval_seconds]
        type.repeat_ext_x_key = params[:repeat_ext_x_key]
        type.stream_selection = StreamSelection.build(params[:stream_selection], context: "#{context}[:stream_selection]") unless params[:stream_selection].nil?
        type
      end
    end

    module HlsPackage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HlsPackage, context: context)
        type = Types::HlsPackage.new
        type.encryption = HlsEncryption.build(params[:encryption], context: "#{context}[:encryption]") unless params[:encryption].nil?
        type.hls_manifests = List____listOfHlsManifest.build(params[:hls_manifests], context: "#{context}[:hls_manifests]") unless params[:hls_manifests].nil?
        type.include_dvb_subtitles = params[:include_dvb_subtitles]
        type.segment_duration_seconds = params[:segment_duration_seconds]
        type.use_audio_rendition_group = params[:use_audio_rendition_group]
        type
      end
    end

    module InternalServerErrorException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerErrorException, context: context)
        type = Types::InternalServerErrorException.new
        type.message = params[:message]
        type
      end
    end

    module ListAssetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAssetsInput, context: context)
        type = Types::ListAssetsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.packaging_group_id = params[:packaging_group_id]
        type
      end
    end

    module ListAssetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAssetsOutput, context: context)
        type = Types::ListAssetsOutput.new
        type.assets = List____listOfAssetShallow.build(params[:assets], context: "#{context}[:assets]") unless params[:assets].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPackagingConfigurationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPackagingConfigurationsInput, context: context)
        type = Types::ListPackagingConfigurationsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.packaging_group_id = params[:packaging_group_id]
        type
      end
    end

    module ListPackagingConfigurationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPackagingConfigurationsOutput, context: context)
        type = Types::ListPackagingConfigurationsOutput.new
        type.next_token = params[:next_token]
        type.packaging_configurations = List____listOfPackagingConfiguration.build(params[:packaging_configurations], context: "#{context}[:packaging_configurations]") unless params[:packaging_configurations].nil?
        type
      end
    end

    module ListPackagingGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPackagingGroupsInput, context: context)
        type = Types::ListPackagingGroupsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPackagingGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPackagingGroupsOutput, context: context)
        type = Types::ListPackagingGroupsOutput.new
        type.next_token = params[:next_token]
        type.packaging_groups = List____listOfPackagingGroup.build(params[:packaging_groups], context: "#{context}[:packaging_groups]") unless params[:packaging_groups].nil?
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = Map____mapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module MssEncryption
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MssEncryption, context: context)
        type = Types::MssEncryption.new
        type.speke_key_provider = SpekeKeyProvider.build(params[:speke_key_provider], context: "#{context}[:speke_key_provider]") unless params[:speke_key_provider].nil?
        type
      end
    end

    module MssManifest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MssManifest, context: context)
        type = Types::MssManifest.new
        type.manifest_name = params[:manifest_name]
        type.stream_selection = StreamSelection.build(params[:stream_selection], context: "#{context}[:stream_selection]") unless params[:stream_selection].nil?
        type
      end
    end

    module MssPackage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MssPackage, context: context)
        type = Types::MssPackage.new
        type.encryption = MssEncryption.build(params[:encryption], context: "#{context}[:encryption]") unless params[:encryption].nil?
        type.mss_manifests = List____listOfMssManifest.build(params[:mss_manifests], context: "#{context}[:mss_manifests]") unless params[:mss_manifests].nil?
        type.segment_duration_seconds = params[:segment_duration_seconds]
        type
      end
    end

    module NotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotFoundException, context: context)
        type = Types::NotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module PackagingConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PackagingConfiguration, context: context)
        type = Types::PackagingConfiguration.new
        type.arn = params[:arn]
        type.cmaf_package = CmafPackage.build(params[:cmaf_package], context: "#{context}[:cmaf_package]") unless params[:cmaf_package].nil?
        type.dash_package = DashPackage.build(params[:dash_package], context: "#{context}[:dash_package]") unless params[:dash_package].nil?
        type.hls_package = HlsPackage.build(params[:hls_package], context: "#{context}[:hls_package]") unless params[:hls_package].nil?
        type.id = params[:id]
        type.mss_package = MssPackage.build(params[:mss_package], context: "#{context}[:mss_package]") unless params[:mss_package].nil?
        type.packaging_group_id = params[:packaging_group_id]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module PackagingGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PackagingGroup, context: context)
        type = Types::PackagingGroup.new
        type.arn = params[:arn]
        type.authorization = Authorization.build(params[:authorization], context: "#{context}[:authorization]") unless params[:authorization].nil?
        type.domain_name = params[:domain_name]
        type.egress_access_logs = EgressAccessLogs.build(params[:egress_access_logs], context: "#{context}[:egress_access_logs]") unless params[:egress_access_logs].nil?
        type.id = params[:id]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ServiceUnavailableException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceUnavailableException, context: context)
        type = Types::ServiceUnavailableException.new
        type.message = params[:message]
        type
      end
    end

    module SpekeKeyProvider
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SpekeKeyProvider, context: context)
        type = Types::SpekeKeyProvider.new
        type.role_arn = params[:role_arn]
        type.system_ids = List____listOf__string.build(params[:system_ids], context: "#{context}[:system_ids]") unless params[:system_ids].nil?
        type.url = params[:url]
        type
      end
    end

    module StreamSelection
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StreamSelection, context: context)
        type = Types::StreamSelection.new
        type.max_video_bits_per_second = params[:max_video_bits_per_second]
        type.min_video_bits_per_second = params[:min_video_bits_per_second]
        type.stream_order = params[:stream_order]
        type
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = Map____mapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceOutput, context: context)
        type = Types::TagResourceOutput.new
        type
      end
    end

    module Tags
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module TooManyRequestsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyRequestsException, context: context)
        type = Types::TooManyRequestsException.new
        type.message = params[:message]
        type
      end
    end

    module UnprocessableEntityException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnprocessableEntityException, context: context)
        type = Types::UnprocessableEntityException.new
        type.message = params[:message]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = List____listOf__string.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceOutput, context: context)
        type = Types::UntagResourceOutput.new
        type
      end
    end

    module UpdatePackagingGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePackagingGroupInput, context: context)
        type = Types::UpdatePackagingGroupInput.new
        type.authorization = Authorization.build(params[:authorization], context: "#{context}[:authorization]") unless params[:authorization].nil?
        type.id = params[:id]
        type
      end
    end

    module UpdatePackagingGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePackagingGroupOutput, context: context)
        type = Types::UpdatePackagingGroupOutput.new
        type.arn = params[:arn]
        type.authorization = Authorization.build(params[:authorization], context: "#{context}[:authorization]") unless params[:authorization].nil?
        type.domain_name = params[:domain_name]
        type.egress_access_logs = EgressAccessLogs.build(params[:egress_access_logs], context: "#{context}[:egress_access_logs]") unless params[:egress_access_logs].nil?
        type.id = params[:id]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module List____listOfAssetShallow
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AssetShallow.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfDashManifest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DashManifest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfEgressEndpoint
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EgressEndpoint.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfHlsManifest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << HlsManifest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfMssManifest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MssManifest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfPackagingConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PackagingConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfPackagingGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PackagingGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOf__PeriodTriggersElement
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module List____listOf__string
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Map____mapOf__string
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

  end
end
