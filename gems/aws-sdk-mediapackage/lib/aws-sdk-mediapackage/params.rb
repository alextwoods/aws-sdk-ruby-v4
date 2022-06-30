# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::MediaPackage
  module Params

    module AdTriggers
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
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

    module Channel
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Channel, context: context)
        type = Types::Channel.new
        type.arn = params[:arn]
        type.description = params[:description]
        type.egress_access_logs = EgressAccessLogs.build(params[:egress_access_logs], context: "#{context}[:egress_access_logs]") unless params[:egress_access_logs].nil?
        type.hls_ingest = HlsIngest.build(params[:hls_ingest], context: "#{context}[:hls_ingest]") unless params[:hls_ingest].nil?
        type.id = params[:id]
        type.ingress_access_logs = IngressAccessLogs.build(params[:ingress_access_logs], context: "#{context}[:ingress_access_logs]") unless params[:ingress_access_logs].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CmafEncryption
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CmafEncryption, context: context)
        type = Types::CmafEncryption.new
        type.constant_initialization_vector = params[:constant_initialization_vector]
        type.key_rotation_interval_seconds = params[:key_rotation_interval_seconds]
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
        type.segment_duration_seconds = params[:segment_duration_seconds]
        type.segment_prefix = params[:segment_prefix]
        type.stream_selection = StreamSelection.build(params[:stream_selection], context: "#{context}[:stream_selection]") unless params[:stream_selection].nil?
        type
      end
    end

    module CmafPackageCreateOrUpdateParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CmafPackageCreateOrUpdateParameters, context: context)
        type = Types::CmafPackageCreateOrUpdateParameters.new
        type.encryption = CmafEncryption.build(params[:encryption], context: "#{context}[:encryption]") unless params[:encryption].nil?
        type.hls_manifests = List____listOfHlsManifestCreateOrUpdateParameters.build(params[:hls_manifests], context: "#{context}[:hls_manifests]") unless params[:hls_manifests].nil?
        type.segment_duration_seconds = params[:segment_duration_seconds]
        type.segment_prefix = params[:segment_prefix]
        type.stream_selection = StreamSelection.build(params[:stream_selection], context: "#{context}[:stream_selection]") unless params[:stream_selection].nil?
        type
      end
    end

    module ConfigureLogsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfigureLogsInput, context: context)
        type = Types::ConfigureLogsInput.new
        type.egress_access_logs = EgressAccessLogs.build(params[:egress_access_logs], context: "#{context}[:egress_access_logs]") unless params[:egress_access_logs].nil?
        type.id = params[:id]
        type.ingress_access_logs = IngressAccessLogs.build(params[:ingress_access_logs], context: "#{context}[:ingress_access_logs]") unless params[:ingress_access_logs].nil?
        type
      end
    end

    module ConfigureLogsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfigureLogsOutput, context: context)
        type = Types::ConfigureLogsOutput.new
        type.arn = params[:arn]
        type.description = params[:description]
        type.egress_access_logs = EgressAccessLogs.build(params[:egress_access_logs], context: "#{context}[:egress_access_logs]") unless params[:egress_access_logs].nil?
        type.hls_ingest = HlsIngest.build(params[:hls_ingest], context: "#{context}[:hls_ingest]") unless params[:hls_ingest].nil?
        type.id = params[:id]
        type.ingress_access_logs = IngressAccessLogs.build(params[:ingress_access_logs], context: "#{context}[:ingress_access_logs]") unless params[:ingress_access_logs].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateChannelInput, context: context)
        type = Types::CreateChannelInput.new
        type.description = params[:description]
        type.id = params[:id]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateChannelOutput, context: context)
        type = Types::CreateChannelOutput.new
        type.arn = params[:arn]
        type.description = params[:description]
        type.egress_access_logs = EgressAccessLogs.build(params[:egress_access_logs], context: "#{context}[:egress_access_logs]") unless params[:egress_access_logs].nil?
        type.hls_ingest = HlsIngest.build(params[:hls_ingest], context: "#{context}[:hls_ingest]") unless params[:hls_ingest].nil?
        type.id = params[:id]
        type.ingress_access_logs = IngressAccessLogs.build(params[:ingress_access_logs], context: "#{context}[:ingress_access_logs]") unless params[:ingress_access_logs].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateHarvestJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateHarvestJobInput, context: context)
        type = Types::CreateHarvestJobInput.new
        type.end_time = params[:end_time]
        type.id = params[:id]
        type.origin_endpoint_id = params[:origin_endpoint_id]
        type.s3_destination = S3Destination.build(params[:s3_destination], context: "#{context}[:s3_destination]") unless params[:s3_destination].nil?
        type.start_time = params[:start_time]
        type
      end
    end

    module CreateHarvestJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateHarvestJobOutput, context: context)
        type = Types::CreateHarvestJobOutput.new
        type.arn = params[:arn]
        type.channel_id = params[:channel_id]
        type.created_at = params[:created_at]
        type.end_time = params[:end_time]
        type.id = params[:id]
        type.origin_endpoint_id = params[:origin_endpoint_id]
        type.s3_destination = S3Destination.build(params[:s3_destination], context: "#{context}[:s3_destination]") unless params[:s3_destination].nil?
        type.start_time = params[:start_time]
        type.status = params[:status]
        type
      end
    end

    module CreateOriginEndpointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateOriginEndpointInput, context: context)
        type = Types::CreateOriginEndpointInput.new
        type.authorization = Authorization.build(params[:authorization], context: "#{context}[:authorization]") unless params[:authorization].nil?
        type.channel_id = params[:channel_id]
        type.cmaf_package = CmafPackageCreateOrUpdateParameters.build(params[:cmaf_package], context: "#{context}[:cmaf_package]") unless params[:cmaf_package].nil?
        type.dash_package = DashPackage.build(params[:dash_package], context: "#{context}[:dash_package]") unless params[:dash_package].nil?
        type.description = params[:description]
        type.hls_package = HlsPackage.build(params[:hls_package], context: "#{context}[:hls_package]") unless params[:hls_package].nil?
        type.id = params[:id]
        type.manifest_name = params[:manifest_name]
        type.mss_package = MssPackage.build(params[:mss_package], context: "#{context}[:mss_package]") unless params[:mss_package].nil?
        type.origination = params[:origination]
        type.startover_window_seconds = params[:startover_window_seconds]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.time_delay_seconds = params[:time_delay_seconds]
        type.whitelist = List____listOf__string.build(params[:whitelist], context: "#{context}[:whitelist]") unless params[:whitelist].nil?
        type
      end
    end

    module CreateOriginEndpointOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateOriginEndpointOutput, context: context)
        type = Types::CreateOriginEndpointOutput.new
        type.arn = params[:arn]
        type.authorization = Authorization.build(params[:authorization], context: "#{context}[:authorization]") unless params[:authorization].nil?
        type.channel_id = params[:channel_id]
        type.cmaf_package = CmafPackage.build(params[:cmaf_package], context: "#{context}[:cmaf_package]") unless params[:cmaf_package].nil?
        type.dash_package = DashPackage.build(params[:dash_package], context: "#{context}[:dash_package]") unless params[:dash_package].nil?
        type.description = params[:description]
        type.hls_package = HlsPackage.build(params[:hls_package], context: "#{context}[:hls_package]") unless params[:hls_package].nil?
        type.id = params[:id]
        type.manifest_name = params[:manifest_name]
        type.mss_package = MssPackage.build(params[:mss_package], context: "#{context}[:mss_package]") unless params[:mss_package].nil?
        type.origination = params[:origination]
        type.startover_window_seconds = params[:startover_window_seconds]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.time_delay_seconds = params[:time_delay_seconds]
        type.url = params[:url]
        type.whitelist = List____listOf__string.build(params[:whitelist], context: "#{context}[:whitelist]") unless params[:whitelist].nil?
        type
      end
    end

    module DashEncryption
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DashEncryption, context: context)
        type = Types::DashEncryption.new
        type.key_rotation_interval_seconds = params[:key_rotation_interval_seconds]
        type.speke_key_provider = SpekeKeyProvider.build(params[:speke_key_provider], context: "#{context}[:speke_key_provider]") unless params[:speke_key_provider].nil?
        type
      end
    end

    module DashPackage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DashPackage, context: context)
        type = Types::DashPackage.new
        type.ad_triggers = AdTriggers.build(params[:ad_triggers], context: "#{context}[:ad_triggers]") unless params[:ad_triggers].nil?
        type.ads_on_delivery_restrictions = params[:ads_on_delivery_restrictions]
        type.encryption = DashEncryption.build(params[:encryption], context: "#{context}[:encryption]") unless params[:encryption].nil?
        type.manifest_layout = params[:manifest_layout]
        type.manifest_window_seconds = params[:manifest_window_seconds]
        type.min_buffer_time_seconds = params[:min_buffer_time_seconds]
        type.min_update_period_seconds = params[:min_update_period_seconds]
        type.period_triggers = List____listOf__PeriodTriggersElement.build(params[:period_triggers], context: "#{context}[:period_triggers]") unless params[:period_triggers].nil?
        type.profile = params[:profile]
        type.segment_duration_seconds = params[:segment_duration_seconds]
        type.segment_template_format = params[:segment_template_format]
        type.stream_selection = StreamSelection.build(params[:stream_selection], context: "#{context}[:stream_selection]") unless params[:stream_selection].nil?
        type.suggested_presentation_delay_seconds = params[:suggested_presentation_delay_seconds]
        type.utc_timing = params[:utc_timing]
        type.utc_timing_uri = params[:utc_timing_uri]
        type
      end
    end

    module DeleteChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteChannelInput, context: context)
        type = Types::DeleteChannelInput.new
        type.id = params[:id]
        type
      end
    end

    module DeleteChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteChannelOutput, context: context)
        type = Types::DeleteChannelOutput.new
        type
      end
    end

    module DeleteOriginEndpointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteOriginEndpointInput, context: context)
        type = Types::DeleteOriginEndpointInput.new
        type.id = params[:id]
        type
      end
    end

    module DeleteOriginEndpointOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteOriginEndpointOutput, context: context)
        type = Types::DeleteOriginEndpointOutput.new
        type
      end
    end

    module DescribeChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeChannelInput, context: context)
        type = Types::DescribeChannelInput.new
        type.id = params[:id]
        type
      end
    end

    module DescribeChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeChannelOutput, context: context)
        type = Types::DescribeChannelOutput.new
        type.arn = params[:arn]
        type.description = params[:description]
        type.egress_access_logs = EgressAccessLogs.build(params[:egress_access_logs], context: "#{context}[:egress_access_logs]") unless params[:egress_access_logs].nil?
        type.hls_ingest = HlsIngest.build(params[:hls_ingest], context: "#{context}[:hls_ingest]") unless params[:hls_ingest].nil?
        type.id = params[:id]
        type.ingress_access_logs = IngressAccessLogs.build(params[:ingress_access_logs], context: "#{context}[:ingress_access_logs]") unless params[:ingress_access_logs].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module DescribeHarvestJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeHarvestJobInput, context: context)
        type = Types::DescribeHarvestJobInput.new
        type.id = params[:id]
        type
      end
    end

    module DescribeHarvestJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeHarvestJobOutput, context: context)
        type = Types::DescribeHarvestJobOutput.new
        type.arn = params[:arn]
        type.channel_id = params[:channel_id]
        type.created_at = params[:created_at]
        type.end_time = params[:end_time]
        type.id = params[:id]
        type.origin_endpoint_id = params[:origin_endpoint_id]
        type.s3_destination = S3Destination.build(params[:s3_destination], context: "#{context}[:s3_destination]") unless params[:s3_destination].nil?
        type.start_time = params[:start_time]
        type.status = params[:status]
        type
      end
    end

    module DescribeOriginEndpointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeOriginEndpointInput, context: context)
        type = Types::DescribeOriginEndpointInput.new
        type.id = params[:id]
        type
      end
    end

    module DescribeOriginEndpointOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeOriginEndpointOutput, context: context)
        type = Types::DescribeOriginEndpointOutput.new
        type.arn = params[:arn]
        type.authorization = Authorization.build(params[:authorization], context: "#{context}[:authorization]") unless params[:authorization].nil?
        type.channel_id = params[:channel_id]
        type.cmaf_package = CmafPackage.build(params[:cmaf_package], context: "#{context}[:cmaf_package]") unless params[:cmaf_package].nil?
        type.dash_package = DashPackage.build(params[:dash_package], context: "#{context}[:dash_package]") unless params[:dash_package].nil?
        type.description = params[:description]
        type.hls_package = HlsPackage.build(params[:hls_package], context: "#{context}[:hls_package]") unless params[:hls_package].nil?
        type.id = params[:id]
        type.manifest_name = params[:manifest_name]
        type.mss_package = MssPackage.build(params[:mss_package], context: "#{context}[:mss_package]") unless params[:mss_package].nil?
        type.origination = params[:origination]
        type.startover_window_seconds = params[:startover_window_seconds]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.time_delay_seconds = params[:time_delay_seconds]
        type.url = params[:url]
        type.whitelist = List____listOf__string.build(params[:whitelist], context: "#{context}[:whitelist]") unless params[:whitelist].nil?
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

    module EncryptionContractConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EncryptionContractConfiguration, context: context)
        type = Types::EncryptionContractConfiguration.new
        type.preset_speke20_audio = params[:preset_speke20_audio]
        type.preset_speke20_video = params[:preset_speke20_video]
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

    module HarvestJob
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HarvestJob, context: context)
        type = Types::HarvestJob.new
        type.arn = params[:arn]
        type.channel_id = params[:channel_id]
        type.created_at = params[:created_at]
        type.end_time = params[:end_time]
        type.id = params[:id]
        type.origin_endpoint_id = params[:origin_endpoint_id]
        type.s3_destination = S3Destination.build(params[:s3_destination], context: "#{context}[:s3_destination]") unless params[:s3_destination].nil?
        type.start_time = params[:start_time]
        type.status = params[:status]
        type
      end
    end

    module HlsEncryption
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HlsEncryption, context: context)
        type = Types::HlsEncryption.new
        type.constant_initialization_vector = params[:constant_initialization_vector]
        type.encryption_method = params[:encryption_method]
        type.key_rotation_interval_seconds = params[:key_rotation_interval_seconds]
        type.repeat_ext_x_key = params[:repeat_ext_x_key]
        type.speke_key_provider = SpekeKeyProvider.build(params[:speke_key_provider], context: "#{context}[:speke_key_provider]") unless params[:speke_key_provider].nil?
        type
      end
    end

    module HlsIngest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HlsIngest, context: context)
        type = Types::HlsIngest.new
        type.ingest_endpoints = List____listOfIngestEndpoint.build(params[:ingest_endpoints], context: "#{context}[:ingest_endpoints]") unless params[:ingest_endpoints].nil?
        type
      end
    end

    module HlsManifest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HlsManifest, context: context)
        type = Types::HlsManifest.new
        type.ad_markers = params[:ad_markers]
        type.id = params[:id]
        type.include_iframe_only_stream = params[:include_iframe_only_stream]
        type.manifest_name = params[:manifest_name]
        type.playlist_type = params[:playlist_type]
        type.playlist_window_seconds = params[:playlist_window_seconds]
        type.program_date_time_interval_seconds = params[:program_date_time_interval_seconds]
        type.url = params[:url]
        type
      end
    end

    module HlsManifestCreateOrUpdateParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HlsManifestCreateOrUpdateParameters, context: context)
        type = Types::HlsManifestCreateOrUpdateParameters.new
        type.ad_markers = params[:ad_markers]
        type.ad_triggers = AdTriggers.build(params[:ad_triggers], context: "#{context}[:ad_triggers]") unless params[:ad_triggers].nil?
        type.ads_on_delivery_restrictions = params[:ads_on_delivery_restrictions]
        type.id = params[:id]
        type.include_iframe_only_stream = params[:include_iframe_only_stream]
        type.manifest_name = params[:manifest_name]
        type.playlist_type = params[:playlist_type]
        type.playlist_window_seconds = params[:playlist_window_seconds]
        type.program_date_time_interval_seconds = params[:program_date_time_interval_seconds]
        type
      end
    end

    module HlsPackage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HlsPackage, context: context)
        type = Types::HlsPackage.new
        type.ad_markers = params[:ad_markers]
        type.ad_triggers = AdTriggers.build(params[:ad_triggers], context: "#{context}[:ad_triggers]") unless params[:ad_triggers].nil?
        type.ads_on_delivery_restrictions = params[:ads_on_delivery_restrictions]
        type.encryption = HlsEncryption.build(params[:encryption], context: "#{context}[:encryption]") unless params[:encryption].nil?
        type.include_dvb_subtitles = params[:include_dvb_subtitles]
        type.include_iframe_only_stream = params[:include_iframe_only_stream]
        type.playlist_type = params[:playlist_type]
        type.playlist_window_seconds = params[:playlist_window_seconds]
        type.program_date_time_interval_seconds = params[:program_date_time_interval_seconds]
        type.segment_duration_seconds = params[:segment_duration_seconds]
        type.stream_selection = StreamSelection.build(params[:stream_selection], context: "#{context}[:stream_selection]") unless params[:stream_selection].nil?
        type.use_audio_rendition_group = params[:use_audio_rendition_group]
        type
      end
    end

    module IngestEndpoint
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IngestEndpoint, context: context)
        type = Types::IngestEndpoint.new
        type.id = params[:id]
        type.password = params[:password]
        type.url = params[:url]
        type.username = params[:username]
        type
      end
    end

    module IngressAccessLogs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IngressAccessLogs, context: context)
        type = Types::IngressAccessLogs.new
        type.log_group_name = params[:log_group_name]
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

    module ListChannelsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListChannelsInput, context: context)
        type = Types::ListChannelsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListChannelsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListChannelsOutput, context: context)
        type = Types::ListChannelsOutput.new
        type.channels = List____listOfChannel.build(params[:channels], context: "#{context}[:channels]") unless params[:channels].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListHarvestJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListHarvestJobsInput, context: context)
        type = Types::ListHarvestJobsInput.new
        type.include_channel_id = params[:include_channel_id]
        type.include_status = params[:include_status]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListHarvestJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListHarvestJobsOutput, context: context)
        type = Types::ListHarvestJobsOutput.new
        type.harvest_jobs = List____listOfHarvestJob.build(params[:harvest_jobs], context: "#{context}[:harvest_jobs]") unless params[:harvest_jobs].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListOriginEndpointsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListOriginEndpointsInput, context: context)
        type = Types::ListOriginEndpointsInput.new
        type.channel_id = params[:channel_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListOriginEndpointsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListOriginEndpointsOutput, context: context)
        type = Types::ListOriginEndpointsOutput.new
        type.next_token = params[:next_token]
        type.origin_endpoints = List____listOfOriginEndpoint.build(params[:origin_endpoints], context: "#{context}[:origin_endpoints]") unless params[:origin_endpoints].nil?
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

    module MssPackage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MssPackage, context: context)
        type = Types::MssPackage.new
        type.encryption = MssEncryption.build(params[:encryption], context: "#{context}[:encryption]") unless params[:encryption].nil?
        type.manifest_window_seconds = params[:manifest_window_seconds]
        type.segment_duration_seconds = params[:segment_duration_seconds]
        type.stream_selection = StreamSelection.build(params[:stream_selection], context: "#{context}[:stream_selection]") unless params[:stream_selection].nil?
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

    module OriginEndpoint
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OriginEndpoint, context: context)
        type = Types::OriginEndpoint.new
        type.arn = params[:arn]
        type.authorization = Authorization.build(params[:authorization], context: "#{context}[:authorization]") unless params[:authorization].nil?
        type.channel_id = params[:channel_id]
        type.cmaf_package = CmafPackage.build(params[:cmaf_package], context: "#{context}[:cmaf_package]") unless params[:cmaf_package].nil?
        type.dash_package = DashPackage.build(params[:dash_package], context: "#{context}[:dash_package]") unless params[:dash_package].nil?
        type.description = params[:description]
        type.hls_package = HlsPackage.build(params[:hls_package], context: "#{context}[:hls_package]") unless params[:hls_package].nil?
        type.id = params[:id]
        type.manifest_name = params[:manifest_name]
        type.mss_package = MssPackage.build(params[:mss_package], context: "#{context}[:mss_package]") unless params[:mss_package].nil?
        type.origination = params[:origination]
        type.startover_window_seconds = params[:startover_window_seconds]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.time_delay_seconds = params[:time_delay_seconds]
        type.url = params[:url]
        type.whitelist = List____listOf__string.build(params[:whitelist], context: "#{context}[:whitelist]") unless params[:whitelist].nil?
        type
      end
    end

    module RotateChannelCredentialsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RotateChannelCredentialsInput, context: context)
        type = Types::RotateChannelCredentialsInput.new
        type.id = params[:id]
        type
      end
    end

    module RotateChannelCredentialsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RotateChannelCredentialsOutput, context: context)
        type = Types::RotateChannelCredentialsOutput.new
        type.arn = params[:arn]
        type.description = params[:description]
        type.egress_access_logs = EgressAccessLogs.build(params[:egress_access_logs], context: "#{context}[:egress_access_logs]") unless params[:egress_access_logs].nil?
        type.hls_ingest = HlsIngest.build(params[:hls_ingest], context: "#{context}[:hls_ingest]") unless params[:hls_ingest].nil?
        type.id = params[:id]
        type.ingress_access_logs = IngressAccessLogs.build(params[:ingress_access_logs], context: "#{context}[:ingress_access_logs]") unless params[:ingress_access_logs].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module RotateIngestEndpointCredentialsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RotateIngestEndpointCredentialsInput, context: context)
        type = Types::RotateIngestEndpointCredentialsInput.new
        type.id = params[:id]
        type.ingest_endpoint_id = params[:ingest_endpoint_id]
        type
      end
    end

    module RotateIngestEndpointCredentialsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RotateIngestEndpointCredentialsOutput, context: context)
        type = Types::RotateIngestEndpointCredentialsOutput.new
        type.arn = params[:arn]
        type.description = params[:description]
        type.egress_access_logs = EgressAccessLogs.build(params[:egress_access_logs], context: "#{context}[:egress_access_logs]") unless params[:egress_access_logs].nil?
        type.hls_ingest = HlsIngest.build(params[:hls_ingest], context: "#{context}[:hls_ingest]") unless params[:hls_ingest].nil?
        type.id = params[:id]
        type.ingress_access_logs = IngressAccessLogs.build(params[:ingress_access_logs], context: "#{context}[:ingress_access_logs]") unless params[:ingress_access_logs].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module S3Destination
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3Destination, context: context)
        type = Types::S3Destination.new
        type.bucket_name = params[:bucket_name]
        type.manifest_key = params[:manifest_key]
        type.role_arn = params[:role_arn]
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
        type.certificate_arn = params[:certificate_arn]
        type.encryption_contract_configuration = EncryptionContractConfiguration.build(params[:encryption_contract_configuration], context: "#{context}[:encryption_contract_configuration]") unless params[:encryption_contract_configuration].nil?
        type.resource_id = params[:resource_id]
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

    module UpdateChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateChannelInput, context: context)
        type = Types::UpdateChannelInput.new
        type.description = params[:description]
        type.id = params[:id]
        type
      end
    end

    module UpdateChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateChannelOutput, context: context)
        type = Types::UpdateChannelOutput.new
        type.arn = params[:arn]
        type.description = params[:description]
        type.egress_access_logs = EgressAccessLogs.build(params[:egress_access_logs], context: "#{context}[:egress_access_logs]") unless params[:egress_access_logs].nil?
        type.hls_ingest = HlsIngest.build(params[:hls_ingest], context: "#{context}[:hls_ingest]") unless params[:hls_ingest].nil?
        type.id = params[:id]
        type.ingress_access_logs = IngressAccessLogs.build(params[:ingress_access_logs], context: "#{context}[:ingress_access_logs]") unless params[:ingress_access_logs].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module UpdateOriginEndpointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateOriginEndpointInput, context: context)
        type = Types::UpdateOriginEndpointInput.new
        type.authorization = Authorization.build(params[:authorization], context: "#{context}[:authorization]") unless params[:authorization].nil?
        type.cmaf_package = CmafPackageCreateOrUpdateParameters.build(params[:cmaf_package], context: "#{context}[:cmaf_package]") unless params[:cmaf_package].nil?
        type.dash_package = DashPackage.build(params[:dash_package], context: "#{context}[:dash_package]") unless params[:dash_package].nil?
        type.description = params[:description]
        type.hls_package = HlsPackage.build(params[:hls_package], context: "#{context}[:hls_package]") unless params[:hls_package].nil?
        type.id = params[:id]
        type.manifest_name = params[:manifest_name]
        type.mss_package = MssPackage.build(params[:mss_package], context: "#{context}[:mss_package]") unless params[:mss_package].nil?
        type.origination = params[:origination]
        type.startover_window_seconds = params[:startover_window_seconds]
        type.time_delay_seconds = params[:time_delay_seconds]
        type.whitelist = List____listOf__string.build(params[:whitelist], context: "#{context}[:whitelist]") unless params[:whitelist].nil?
        type
      end
    end

    module UpdateOriginEndpointOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateOriginEndpointOutput, context: context)
        type = Types::UpdateOriginEndpointOutput.new
        type.arn = params[:arn]
        type.authorization = Authorization.build(params[:authorization], context: "#{context}[:authorization]") unless params[:authorization].nil?
        type.channel_id = params[:channel_id]
        type.cmaf_package = CmafPackage.build(params[:cmaf_package], context: "#{context}[:cmaf_package]") unless params[:cmaf_package].nil?
        type.dash_package = DashPackage.build(params[:dash_package], context: "#{context}[:dash_package]") unless params[:dash_package].nil?
        type.description = params[:description]
        type.hls_package = HlsPackage.build(params[:hls_package], context: "#{context}[:hls_package]") unless params[:hls_package].nil?
        type.id = params[:id]
        type.manifest_name = params[:manifest_name]
        type.mss_package = MssPackage.build(params[:mss_package], context: "#{context}[:mss_package]") unless params[:mss_package].nil?
        type.origination = params[:origination]
        type.startover_window_seconds = params[:startover_window_seconds]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.time_delay_seconds = params[:time_delay_seconds]
        type.url = params[:url]
        type.whitelist = List____listOf__string.build(params[:whitelist], context: "#{context}[:whitelist]") unless params[:whitelist].nil?
        type
      end
    end

    module List____listOfChannel
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Channel.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfHarvestJob
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << HarvestJob.build(element, context: "#{context}[#{index}]") unless element.nil?
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

    module List____listOfHlsManifestCreateOrUpdateParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << HlsManifestCreateOrUpdateParameters.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfIngestEndpoint
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << IngestEndpoint.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfOriginEndpoint
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OriginEndpoint.build(element, context: "#{context}[#{index}]") unless element.nil?
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
