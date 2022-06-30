# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::MediaPackage
  module Validators

    class AdTriggers
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Authorization
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Authorization, context: context)
        Hearth::Validator.validate!(input[:cdn_identifier_secret], ::String, context: "#{context}[:cdn_identifier_secret]")
        Hearth::Validator.validate!(input[:secrets_role_arn], ::String, context: "#{context}[:secrets_role_arn]")
      end
    end

    class Channel
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Channel, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::EgressAccessLogs.validate!(input[:egress_access_logs], context: "#{context}[:egress_access_logs]") unless input[:egress_access_logs].nil?
        Validators::HlsIngest.validate!(input[:hls_ingest], context: "#{context}[:hls_ingest]") unless input[:hls_ingest].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Validators::IngressAccessLogs.validate!(input[:ingress_access_logs], context: "#{context}[:ingress_access_logs]") unless input[:ingress_access_logs].nil?
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CmafEncryption
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CmafEncryption, context: context)
        Hearth::Validator.validate!(input[:constant_initialization_vector], ::String, context: "#{context}[:constant_initialization_vector]")
        Hearth::Validator.validate!(input[:key_rotation_interval_seconds], ::Integer, context: "#{context}[:key_rotation_interval_seconds]")
        Validators::SpekeKeyProvider.validate!(input[:speke_key_provider], context: "#{context}[:speke_key_provider]") unless input[:speke_key_provider].nil?
      end
    end

    class CmafPackage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CmafPackage, context: context)
        Validators::CmafEncryption.validate!(input[:encryption], context: "#{context}[:encryption]") unless input[:encryption].nil?
        Validators::List____listOfHlsManifest.validate!(input[:hls_manifests], context: "#{context}[:hls_manifests]") unless input[:hls_manifests].nil?
        Hearth::Validator.validate!(input[:segment_duration_seconds], ::Integer, context: "#{context}[:segment_duration_seconds]")
        Hearth::Validator.validate!(input[:segment_prefix], ::String, context: "#{context}[:segment_prefix]")
        Validators::StreamSelection.validate!(input[:stream_selection], context: "#{context}[:stream_selection]") unless input[:stream_selection].nil?
      end
    end

    class CmafPackageCreateOrUpdateParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CmafPackageCreateOrUpdateParameters, context: context)
        Validators::CmafEncryption.validate!(input[:encryption], context: "#{context}[:encryption]") unless input[:encryption].nil?
        Validators::List____listOfHlsManifestCreateOrUpdateParameters.validate!(input[:hls_manifests], context: "#{context}[:hls_manifests]") unless input[:hls_manifests].nil?
        Hearth::Validator.validate!(input[:segment_duration_seconds], ::Integer, context: "#{context}[:segment_duration_seconds]")
        Hearth::Validator.validate!(input[:segment_prefix], ::String, context: "#{context}[:segment_prefix]")
        Validators::StreamSelection.validate!(input[:stream_selection], context: "#{context}[:stream_selection]") unless input[:stream_selection].nil?
      end
    end

    class ConfigureLogsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfigureLogsInput, context: context)
        Validators::EgressAccessLogs.validate!(input[:egress_access_logs], context: "#{context}[:egress_access_logs]") unless input[:egress_access_logs].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Validators::IngressAccessLogs.validate!(input[:ingress_access_logs], context: "#{context}[:ingress_access_logs]") unless input[:ingress_access_logs].nil?
      end
    end

    class ConfigureLogsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfigureLogsOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::EgressAccessLogs.validate!(input[:egress_access_logs], context: "#{context}[:egress_access_logs]") unless input[:egress_access_logs].nil?
        Validators::HlsIngest.validate!(input[:hls_ingest], context: "#{context}[:hls_ingest]") unless input[:hls_ingest].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Validators::IngressAccessLogs.validate!(input[:ingress_access_logs], context: "#{context}[:ingress_access_logs]") unless input[:ingress_access_logs].nil?
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateChannelInput, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateChannelOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::EgressAccessLogs.validate!(input[:egress_access_logs], context: "#{context}[:egress_access_logs]") unless input[:egress_access_logs].nil?
        Validators::HlsIngest.validate!(input[:hls_ingest], context: "#{context}[:hls_ingest]") unless input[:hls_ingest].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Validators::IngressAccessLogs.validate!(input[:ingress_access_logs], context: "#{context}[:ingress_access_logs]") unless input[:ingress_access_logs].nil?
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateHarvestJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateHarvestJobInput, context: context)
        Hearth::Validator.validate!(input[:end_time], ::String, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:origin_endpoint_id], ::String, context: "#{context}[:origin_endpoint_id]")
        Validators::S3Destination.validate!(input[:s3_destination], context: "#{context}[:s3_destination]") unless input[:s3_destination].nil?
        Hearth::Validator.validate!(input[:start_time], ::String, context: "#{context}[:start_time]")
      end
    end

    class CreateHarvestJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateHarvestJobOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:channel_id], ::String, context: "#{context}[:channel_id]")
        Hearth::Validator.validate!(input[:created_at], ::String, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:end_time], ::String, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:origin_endpoint_id], ::String, context: "#{context}[:origin_endpoint_id]")
        Validators::S3Destination.validate!(input[:s3_destination], context: "#{context}[:s3_destination]") unless input[:s3_destination].nil?
        Hearth::Validator.validate!(input[:start_time], ::String, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class CreateOriginEndpointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateOriginEndpointInput, context: context)
        Validators::Authorization.validate!(input[:authorization], context: "#{context}[:authorization]") unless input[:authorization].nil?
        Hearth::Validator.validate!(input[:channel_id], ::String, context: "#{context}[:channel_id]")
        Validators::CmafPackageCreateOrUpdateParameters.validate!(input[:cmaf_package], context: "#{context}[:cmaf_package]") unless input[:cmaf_package].nil?
        Validators::DashPackage.validate!(input[:dash_package], context: "#{context}[:dash_package]") unless input[:dash_package].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::HlsPackage.validate!(input[:hls_package], context: "#{context}[:hls_package]") unless input[:hls_package].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:manifest_name], ::String, context: "#{context}[:manifest_name]")
        Validators::MssPackage.validate!(input[:mss_package], context: "#{context}[:mss_package]") unless input[:mss_package].nil?
        Hearth::Validator.validate!(input[:origination], ::String, context: "#{context}[:origination]")
        Hearth::Validator.validate!(input[:startover_window_seconds], ::Integer, context: "#{context}[:startover_window_seconds]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:time_delay_seconds], ::Integer, context: "#{context}[:time_delay_seconds]")
        Validators::List____listOf__string.validate!(input[:whitelist], context: "#{context}[:whitelist]") unless input[:whitelist].nil?
      end
    end

    class CreateOriginEndpointOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateOriginEndpointOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Validators::Authorization.validate!(input[:authorization], context: "#{context}[:authorization]") unless input[:authorization].nil?
        Hearth::Validator.validate!(input[:channel_id], ::String, context: "#{context}[:channel_id]")
        Validators::CmafPackage.validate!(input[:cmaf_package], context: "#{context}[:cmaf_package]") unless input[:cmaf_package].nil?
        Validators::DashPackage.validate!(input[:dash_package], context: "#{context}[:dash_package]") unless input[:dash_package].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::HlsPackage.validate!(input[:hls_package], context: "#{context}[:hls_package]") unless input[:hls_package].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:manifest_name], ::String, context: "#{context}[:manifest_name]")
        Validators::MssPackage.validate!(input[:mss_package], context: "#{context}[:mss_package]") unless input[:mss_package].nil?
        Hearth::Validator.validate!(input[:origination], ::String, context: "#{context}[:origination]")
        Hearth::Validator.validate!(input[:startover_window_seconds], ::Integer, context: "#{context}[:startover_window_seconds]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:time_delay_seconds], ::Integer, context: "#{context}[:time_delay_seconds]")
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
        Validators::List____listOf__string.validate!(input[:whitelist], context: "#{context}[:whitelist]") unless input[:whitelist].nil?
      end
    end

    class DashEncryption
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DashEncryption, context: context)
        Hearth::Validator.validate!(input[:key_rotation_interval_seconds], ::Integer, context: "#{context}[:key_rotation_interval_seconds]")
        Validators::SpekeKeyProvider.validate!(input[:speke_key_provider], context: "#{context}[:speke_key_provider]") unless input[:speke_key_provider].nil?
      end
    end

    class DashPackage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DashPackage, context: context)
        Validators::AdTriggers.validate!(input[:ad_triggers], context: "#{context}[:ad_triggers]") unless input[:ad_triggers].nil?
        Hearth::Validator.validate!(input[:ads_on_delivery_restrictions], ::String, context: "#{context}[:ads_on_delivery_restrictions]")
        Validators::DashEncryption.validate!(input[:encryption], context: "#{context}[:encryption]") unless input[:encryption].nil?
        Hearth::Validator.validate!(input[:manifest_layout], ::String, context: "#{context}[:manifest_layout]")
        Hearth::Validator.validate!(input[:manifest_window_seconds], ::Integer, context: "#{context}[:manifest_window_seconds]")
        Hearth::Validator.validate!(input[:min_buffer_time_seconds], ::Integer, context: "#{context}[:min_buffer_time_seconds]")
        Hearth::Validator.validate!(input[:min_update_period_seconds], ::Integer, context: "#{context}[:min_update_period_seconds]")
        Validators::List____listOf__PeriodTriggersElement.validate!(input[:period_triggers], context: "#{context}[:period_triggers]") unless input[:period_triggers].nil?
        Hearth::Validator.validate!(input[:profile], ::String, context: "#{context}[:profile]")
        Hearth::Validator.validate!(input[:segment_duration_seconds], ::Integer, context: "#{context}[:segment_duration_seconds]")
        Hearth::Validator.validate!(input[:segment_template_format], ::String, context: "#{context}[:segment_template_format]")
        Validators::StreamSelection.validate!(input[:stream_selection], context: "#{context}[:stream_selection]") unless input[:stream_selection].nil?
        Hearth::Validator.validate!(input[:suggested_presentation_delay_seconds], ::Integer, context: "#{context}[:suggested_presentation_delay_seconds]")
        Hearth::Validator.validate!(input[:utc_timing], ::String, context: "#{context}[:utc_timing]")
        Hearth::Validator.validate!(input[:utc_timing_uri], ::String, context: "#{context}[:utc_timing_uri]")
      end
    end

    class DeleteChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteChannelInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class DeleteChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteChannelOutput, context: context)
      end
    end

    class DeleteOriginEndpointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteOriginEndpointInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class DeleteOriginEndpointOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteOriginEndpointOutput, context: context)
      end
    end

    class DescribeChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeChannelInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class DescribeChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeChannelOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::EgressAccessLogs.validate!(input[:egress_access_logs], context: "#{context}[:egress_access_logs]") unless input[:egress_access_logs].nil?
        Validators::HlsIngest.validate!(input[:hls_ingest], context: "#{context}[:hls_ingest]") unless input[:hls_ingest].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Validators::IngressAccessLogs.validate!(input[:ingress_access_logs], context: "#{context}[:ingress_access_logs]") unless input[:ingress_access_logs].nil?
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class DescribeHarvestJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeHarvestJobInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class DescribeHarvestJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeHarvestJobOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:channel_id], ::String, context: "#{context}[:channel_id]")
        Hearth::Validator.validate!(input[:created_at], ::String, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:end_time], ::String, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:origin_endpoint_id], ::String, context: "#{context}[:origin_endpoint_id]")
        Validators::S3Destination.validate!(input[:s3_destination], context: "#{context}[:s3_destination]") unless input[:s3_destination].nil?
        Hearth::Validator.validate!(input[:start_time], ::String, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class DescribeOriginEndpointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeOriginEndpointInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class DescribeOriginEndpointOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeOriginEndpointOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Validators::Authorization.validate!(input[:authorization], context: "#{context}[:authorization]") unless input[:authorization].nil?
        Hearth::Validator.validate!(input[:channel_id], ::String, context: "#{context}[:channel_id]")
        Validators::CmafPackage.validate!(input[:cmaf_package], context: "#{context}[:cmaf_package]") unless input[:cmaf_package].nil?
        Validators::DashPackage.validate!(input[:dash_package], context: "#{context}[:dash_package]") unless input[:dash_package].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::HlsPackage.validate!(input[:hls_package], context: "#{context}[:hls_package]") unless input[:hls_package].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:manifest_name], ::String, context: "#{context}[:manifest_name]")
        Validators::MssPackage.validate!(input[:mss_package], context: "#{context}[:mss_package]") unless input[:mss_package].nil?
        Hearth::Validator.validate!(input[:origination], ::String, context: "#{context}[:origination]")
        Hearth::Validator.validate!(input[:startover_window_seconds], ::Integer, context: "#{context}[:startover_window_seconds]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:time_delay_seconds], ::Integer, context: "#{context}[:time_delay_seconds]")
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
        Validators::List____listOf__string.validate!(input[:whitelist], context: "#{context}[:whitelist]") unless input[:whitelist].nil?
      end
    end

    class EgressAccessLogs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EgressAccessLogs, context: context)
        Hearth::Validator.validate!(input[:log_group_name], ::String, context: "#{context}[:log_group_name]")
      end
    end

    class EncryptionContractConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EncryptionContractConfiguration, context: context)
        Hearth::Validator.validate!(input[:preset_speke20_audio], ::String, context: "#{context}[:preset_speke20_audio]")
        Hearth::Validator.validate!(input[:preset_speke20_video], ::String, context: "#{context}[:preset_speke20_video]")
      end
    end

    class ForbiddenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ForbiddenException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class HarvestJob
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HarvestJob, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:channel_id], ::String, context: "#{context}[:channel_id]")
        Hearth::Validator.validate!(input[:created_at], ::String, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:end_time], ::String, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:origin_endpoint_id], ::String, context: "#{context}[:origin_endpoint_id]")
        Validators::S3Destination.validate!(input[:s3_destination], context: "#{context}[:s3_destination]") unless input[:s3_destination].nil?
        Hearth::Validator.validate!(input[:start_time], ::String, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class HlsEncryption
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HlsEncryption, context: context)
        Hearth::Validator.validate!(input[:constant_initialization_vector], ::String, context: "#{context}[:constant_initialization_vector]")
        Hearth::Validator.validate!(input[:encryption_method], ::String, context: "#{context}[:encryption_method]")
        Hearth::Validator.validate!(input[:key_rotation_interval_seconds], ::Integer, context: "#{context}[:key_rotation_interval_seconds]")
        Hearth::Validator.validate!(input[:repeat_ext_x_key], ::TrueClass, ::FalseClass, context: "#{context}[:repeat_ext_x_key]")
        Validators::SpekeKeyProvider.validate!(input[:speke_key_provider], context: "#{context}[:speke_key_provider]") unless input[:speke_key_provider].nil?
      end
    end

    class HlsIngest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HlsIngest, context: context)
        Validators::List____listOfIngestEndpoint.validate!(input[:ingest_endpoints], context: "#{context}[:ingest_endpoints]") unless input[:ingest_endpoints].nil?
      end
    end

    class HlsManifest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HlsManifest, context: context)
        Hearth::Validator.validate!(input[:ad_markers], ::String, context: "#{context}[:ad_markers]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:include_iframe_only_stream], ::TrueClass, ::FalseClass, context: "#{context}[:include_iframe_only_stream]")
        Hearth::Validator.validate!(input[:manifest_name], ::String, context: "#{context}[:manifest_name]")
        Hearth::Validator.validate!(input[:playlist_type], ::String, context: "#{context}[:playlist_type]")
        Hearth::Validator.validate!(input[:playlist_window_seconds], ::Integer, context: "#{context}[:playlist_window_seconds]")
        Hearth::Validator.validate!(input[:program_date_time_interval_seconds], ::Integer, context: "#{context}[:program_date_time_interval_seconds]")
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
      end
    end

    class HlsManifestCreateOrUpdateParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HlsManifestCreateOrUpdateParameters, context: context)
        Hearth::Validator.validate!(input[:ad_markers], ::String, context: "#{context}[:ad_markers]")
        Validators::AdTriggers.validate!(input[:ad_triggers], context: "#{context}[:ad_triggers]") unless input[:ad_triggers].nil?
        Hearth::Validator.validate!(input[:ads_on_delivery_restrictions], ::String, context: "#{context}[:ads_on_delivery_restrictions]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:include_iframe_only_stream], ::TrueClass, ::FalseClass, context: "#{context}[:include_iframe_only_stream]")
        Hearth::Validator.validate!(input[:manifest_name], ::String, context: "#{context}[:manifest_name]")
        Hearth::Validator.validate!(input[:playlist_type], ::String, context: "#{context}[:playlist_type]")
        Hearth::Validator.validate!(input[:playlist_window_seconds], ::Integer, context: "#{context}[:playlist_window_seconds]")
        Hearth::Validator.validate!(input[:program_date_time_interval_seconds], ::Integer, context: "#{context}[:program_date_time_interval_seconds]")
      end
    end

    class HlsPackage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HlsPackage, context: context)
        Hearth::Validator.validate!(input[:ad_markers], ::String, context: "#{context}[:ad_markers]")
        Validators::AdTriggers.validate!(input[:ad_triggers], context: "#{context}[:ad_triggers]") unless input[:ad_triggers].nil?
        Hearth::Validator.validate!(input[:ads_on_delivery_restrictions], ::String, context: "#{context}[:ads_on_delivery_restrictions]")
        Validators::HlsEncryption.validate!(input[:encryption], context: "#{context}[:encryption]") unless input[:encryption].nil?
        Hearth::Validator.validate!(input[:include_dvb_subtitles], ::TrueClass, ::FalseClass, context: "#{context}[:include_dvb_subtitles]")
        Hearth::Validator.validate!(input[:include_iframe_only_stream], ::TrueClass, ::FalseClass, context: "#{context}[:include_iframe_only_stream]")
        Hearth::Validator.validate!(input[:playlist_type], ::String, context: "#{context}[:playlist_type]")
        Hearth::Validator.validate!(input[:playlist_window_seconds], ::Integer, context: "#{context}[:playlist_window_seconds]")
        Hearth::Validator.validate!(input[:program_date_time_interval_seconds], ::Integer, context: "#{context}[:program_date_time_interval_seconds]")
        Hearth::Validator.validate!(input[:segment_duration_seconds], ::Integer, context: "#{context}[:segment_duration_seconds]")
        Validators::StreamSelection.validate!(input[:stream_selection], context: "#{context}[:stream_selection]") unless input[:stream_selection].nil?
        Hearth::Validator.validate!(input[:use_audio_rendition_group], ::TrueClass, ::FalseClass, context: "#{context}[:use_audio_rendition_group]")
      end
    end

    class IngestEndpoint
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IngestEndpoint, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:password], ::String, context: "#{context}[:password]")
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
      end
    end

    class IngressAccessLogs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IngressAccessLogs, context: context)
        Hearth::Validator.validate!(input[:log_group_name], ::String, context: "#{context}[:log_group_name]")
      end
    end

    class InternalServerErrorException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerErrorException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListChannelsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListChannelsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListChannelsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListChannelsOutput, context: context)
        Validators::List____listOfChannel.validate!(input[:channels], context: "#{context}[:channels]") unless input[:channels].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListHarvestJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListHarvestJobsInput, context: context)
        Hearth::Validator.validate!(input[:include_channel_id], ::String, context: "#{context}[:include_channel_id]")
        Hearth::Validator.validate!(input[:include_status], ::String, context: "#{context}[:include_status]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListHarvestJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListHarvestJobsOutput, context: context)
        Validators::List____listOfHarvestJob.validate!(input[:harvest_jobs], context: "#{context}[:harvest_jobs]") unless input[:harvest_jobs].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListOriginEndpointsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListOriginEndpointsInput, context: context)
        Hearth::Validator.validate!(input[:channel_id], ::String, context: "#{context}[:channel_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListOriginEndpointsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListOriginEndpointsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::List____listOfOriginEndpoint.validate!(input[:origin_endpoints], context: "#{context}[:origin_endpoints]") unless input[:origin_endpoints].nil?
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
        Validators::Map____mapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class MssEncryption
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MssEncryption, context: context)
        Validators::SpekeKeyProvider.validate!(input[:speke_key_provider], context: "#{context}[:speke_key_provider]") unless input[:speke_key_provider].nil?
      end
    end

    class MssPackage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MssPackage, context: context)
        Validators::MssEncryption.validate!(input[:encryption], context: "#{context}[:encryption]") unless input[:encryption].nil?
        Hearth::Validator.validate!(input[:manifest_window_seconds], ::Integer, context: "#{context}[:manifest_window_seconds]")
        Hearth::Validator.validate!(input[:segment_duration_seconds], ::Integer, context: "#{context}[:segment_duration_seconds]")
        Validators::StreamSelection.validate!(input[:stream_selection], context: "#{context}[:stream_selection]") unless input[:stream_selection].nil?
      end
    end

    class NotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class OriginEndpoint
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OriginEndpoint, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Validators::Authorization.validate!(input[:authorization], context: "#{context}[:authorization]") unless input[:authorization].nil?
        Hearth::Validator.validate!(input[:channel_id], ::String, context: "#{context}[:channel_id]")
        Validators::CmafPackage.validate!(input[:cmaf_package], context: "#{context}[:cmaf_package]") unless input[:cmaf_package].nil?
        Validators::DashPackage.validate!(input[:dash_package], context: "#{context}[:dash_package]") unless input[:dash_package].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::HlsPackage.validate!(input[:hls_package], context: "#{context}[:hls_package]") unless input[:hls_package].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:manifest_name], ::String, context: "#{context}[:manifest_name]")
        Validators::MssPackage.validate!(input[:mss_package], context: "#{context}[:mss_package]") unless input[:mss_package].nil?
        Hearth::Validator.validate!(input[:origination], ::String, context: "#{context}[:origination]")
        Hearth::Validator.validate!(input[:startover_window_seconds], ::Integer, context: "#{context}[:startover_window_seconds]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:time_delay_seconds], ::Integer, context: "#{context}[:time_delay_seconds]")
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
        Validators::List____listOf__string.validate!(input[:whitelist], context: "#{context}[:whitelist]") unless input[:whitelist].nil?
      end
    end

    class RotateChannelCredentialsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RotateChannelCredentialsInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class RotateChannelCredentialsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RotateChannelCredentialsOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::EgressAccessLogs.validate!(input[:egress_access_logs], context: "#{context}[:egress_access_logs]") unless input[:egress_access_logs].nil?
        Validators::HlsIngest.validate!(input[:hls_ingest], context: "#{context}[:hls_ingest]") unless input[:hls_ingest].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Validators::IngressAccessLogs.validate!(input[:ingress_access_logs], context: "#{context}[:ingress_access_logs]") unless input[:ingress_access_logs].nil?
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class RotateIngestEndpointCredentialsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RotateIngestEndpointCredentialsInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:ingest_endpoint_id], ::String, context: "#{context}[:ingest_endpoint_id]")
      end
    end

    class RotateIngestEndpointCredentialsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RotateIngestEndpointCredentialsOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::EgressAccessLogs.validate!(input[:egress_access_logs], context: "#{context}[:egress_access_logs]") unless input[:egress_access_logs].nil?
        Validators::HlsIngest.validate!(input[:hls_ingest], context: "#{context}[:hls_ingest]") unless input[:hls_ingest].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Validators::IngressAccessLogs.validate!(input[:ingress_access_logs], context: "#{context}[:ingress_access_logs]") unless input[:ingress_access_logs].nil?
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class S3Destination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3Destination, context: context)
        Hearth::Validator.validate!(input[:bucket_name], ::String, context: "#{context}[:bucket_name]")
        Hearth::Validator.validate!(input[:manifest_key], ::String, context: "#{context}[:manifest_key]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
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
        Hearth::Validator.validate!(input[:certificate_arn], ::String, context: "#{context}[:certificate_arn]")
        Validators::EncryptionContractConfiguration.validate!(input[:encryption_contract_configuration], context: "#{context}[:encryption_contract_configuration]") unless input[:encryption_contract_configuration].nil?
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Validators::List____listOf__string.validate!(input[:system_ids], context: "#{context}[:system_ids]") unless input[:system_ids].nil?
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
        Validators::Map____mapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
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
        Validators::List____listOf__string.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateChannelInput, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class UpdateChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateChannelOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::EgressAccessLogs.validate!(input[:egress_access_logs], context: "#{context}[:egress_access_logs]") unless input[:egress_access_logs].nil?
        Validators::HlsIngest.validate!(input[:hls_ingest], context: "#{context}[:hls_ingest]") unless input[:hls_ingest].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Validators::IngressAccessLogs.validate!(input[:ingress_access_logs], context: "#{context}[:ingress_access_logs]") unless input[:ingress_access_logs].nil?
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class UpdateOriginEndpointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateOriginEndpointInput, context: context)
        Validators::Authorization.validate!(input[:authorization], context: "#{context}[:authorization]") unless input[:authorization].nil?
        Validators::CmafPackageCreateOrUpdateParameters.validate!(input[:cmaf_package], context: "#{context}[:cmaf_package]") unless input[:cmaf_package].nil?
        Validators::DashPackage.validate!(input[:dash_package], context: "#{context}[:dash_package]") unless input[:dash_package].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::HlsPackage.validate!(input[:hls_package], context: "#{context}[:hls_package]") unless input[:hls_package].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:manifest_name], ::String, context: "#{context}[:manifest_name]")
        Validators::MssPackage.validate!(input[:mss_package], context: "#{context}[:mss_package]") unless input[:mss_package].nil?
        Hearth::Validator.validate!(input[:origination], ::String, context: "#{context}[:origination]")
        Hearth::Validator.validate!(input[:startover_window_seconds], ::Integer, context: "#{context}[:startover_window_seconds]")
        Hearth::Validator.validate!(input[:time_delay_seconds], ::Integer, context: "#{context}[:time_delay_seconds]")
        Validators::List____listOf__string.validate!(input[:whitelist], context: "#{context}[:whitelist]") unless input[:whitelist].nil?
      end
    end

    class UpdateOriginEndpointOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateOriginEndpointOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Validators::Authorization.validate!(input[:authorization], context: "#{context}[:authorization]") unless input[:authorization].nil?
        Hearth::Validator.validate!(input[:channel_id], ::String, context: "#{context}[:channel_id]")
        Validators::CmafPackage.validate!(input[:cmaf_package], context: "#{context}[:cmaf_package]") unless input[:cmaf_package].nil?
        Validators::DashPackage.validate!(input[:dash_package], context: "#{context}[:dash_package]") unless input[:dash_package].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::HlsPackage.validate!(input[:hls_package], context: "#{context}[:hls_package]") unless input[:hls_package].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:manifest_name], ::String, context: "#{context}[:manifest_name]")
        Validators::MssPackage.validate!(input[:mss_package], context: "#{context}[:mss_package]") unless input[:mss_package].nil?
        Hearth::Validator.validate!(input[:origination], ::String, context: "#{context}[:origination]")
        Hearth::Validator.validate!(input[:startover_window_seconds], ::Integer, context: "#{context}[:startover_window_seconds]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:time_delay_seconds], ::Integer, context: "#{context}[:time_delay_seconds]")
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
        Validators::List____listOf__string.validate!(input[:whitelist], context: "#{context}[:whitelist]") unless input[:whitelist].nil?
      end
    end

    class List____listOfChannel
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Channel.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfHarvestJob
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::HarvestJob.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfHlsManifest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::HlsManifest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfHlsManifestCreateOrUpdateParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::HlsManifestCreateOrUpdateParameters.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfIngestEndpoint
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::IngestEndpoint.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfOriginEndpoint
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::OriginEndpoint.validate!(element, context: "#{context}[#{index}]") unless element.nil?
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
