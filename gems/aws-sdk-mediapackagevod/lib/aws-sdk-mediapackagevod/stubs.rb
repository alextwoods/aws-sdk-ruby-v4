# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::MediaPackageVod
  module Stubs

    # Operation Stubber for ConfigureLogs
    class ConfigureLogs
      def self.default(visited=[])
        {
          arn: 'arn',
          authorization: Authorization.default(visited),
          domain_name: 'domain_name',
          egress_access_logs: EgressAccessLogs.default(visited),
          id: 'id',
          tags: Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['authorization'] = Stubs::Authorization.stub(stub[:authorization]) unless stub[:authorization].nil?
        data['domainName'] = stub[:domain_name] unless stub[:domain_name].nil?
        data['egressAccessLogs'] = Stubs::EgressAccessLogs.stub(stub[:egress_access_logs]) unless stub[:egress_access_logs].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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

    # Operation Stubber for CreateAsset
    class CreateAsset
      def self.default(visited=[])
        {
          arn: 'arn',
          created_at: 'created_at',
          egress_endpoints: List____listOfEgressEndpoint.default(visited),
          id: 'id',
          packaging_group_id: 'packaging_group_id',
          resource_id: 'resource_id',
          source_arn: 'source_arn',
          source_role_arn: 'source_role_arn',
          tags: Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['createdAt'] = stub[:created_at] unless stub[:created_at].nil?
        data['egressEndpoints'] = Stubs::List____listOfEgressEndpoint.stub(stub[:egress_endpoints]) unless stub[:egress_endpoints].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['packagingGroupId'] = stub[:packaging_group_id] unless stub[:packaging_group_id].nil?
        data['resourceId'] = stub[:resource_id] unless stub[:resource_id].nil?
        data['sourceArn'] = stub[:source_arn] unless stub[:source_arn].nil?
        data['sourceRoleArn'] = stub[:source_role_arn] unless stub[:source_role_arn].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfEgressEndpoint
    class List____listOfEgressEndpoint
      def self.default(visited=[])
        return nil if visited.include?('List____listOfEgressEndpoint')
        visited = visited + ['List____listOfEgressEndpoint']
        [
          EgressEndpoint.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::EgressEndpoint.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EgressEndpoint
    class EgressEndpoint
      def self.default(visited=[])
        return nil if visited.include?('EgressEndpoint')
        visited = visited + ['EgressEndpoint']
        {
          packaging_configuration_id: 'packaging_configuration_id',
          status: 'status',
          url: 'url',
        }
      end

      def self.stub(stub)
        stub ||= Types::EgressEndpoint.new
        data = {}
        data['packagingConfigurationId'] = stub[:packaging_configuration_id] unless stub[:packaging_configuration_id].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['url'] = stub[:url] unless stub[:url].nil?
        data
      end
    end

    # Operation Stubber for CreatePackagingConfiguration
    class CreatePackagingConfiguration
      def self.default(visited=[])
        {
          arn: 'arn',
          cmaf_package: CmafPackage.default(visited),
          dash_package: DashPackage.default(visited),
          hls_package: HlsPackage.default(visited),
          id: 'id',
          mss_package: MssPackage.default(visited),
          packaging_group_id: 'packaging_group_id',
          tags: Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['cmafPackage'] = Stubs::CmafPackage.stub(stub[:cmaf_package]) unless stub[:cmaf_package].nil?
        data['dashPackage'] = Stubs::DashPackage.stub(stub[:dash_package]) unless stub[:dash_package].nil?
        data['hlsPackage'] = Stubs::HlsPackage.stub(stub[:hls_package]) unless stub[:hls_package].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['mssPackage'] = Stubs::MssPackage.stub(stub[:mss_package]) unless stub[:mss_package].nil?
        data['packagingGroupId'] = stub[:packaging_group_id] unless stub[:packaging_group_id].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for MssPackage
    class MssPackage
      def self.default(visited=[])
        return nil if visited.include?('MssPackage')
        visited = visited + ['MssPackage']
        {
          encryption: MssEncryption.default(visited),
          mss_manifests: List____listOfMssManifest.default(visited),
          segment_duration_seconds: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::MssPackage.new
        data = {}
        data['encryption'] = Stubs::MssEncryption.stub(stub[:encryption]) unless stub[:encryption].nil?
        data['mssManifests'] = Stubs::List____listOfMssManifest.stub(stub[:mss_manifests]) unless stub[:mss_manifests].nil?
        data['segmentDurationSeconds'] = stub[:segment_duration_seconds] unless stub[:segment_duration_seconds].nil?
        data
      end
    end

    # List Stubber for __listOfMssManifest
    class List____listOfMssManifest
      def self.default(visited=[])
        return nil if visited.include?('List____listOfMssManifest')
        visited = visited + ['List____listOfMssManifest']
        [
          MssManifest.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::MssManifest.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MssManifest
    class MssManifest
      def self.default(visited=[])
        return nil if visited.include?('MssManifest')
        visited = visited + ['MssManifest']
        {
          manifest_name: 'manifest_name',
          stream_selection: StreamSelection.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MssManifest.new
        data = {}
        data['manifestName'] = stub[:manifest_name] unless stub[:manifest_name].nil?
        data['streamSelection'] = Stubs::StreamSelection.stub(stub[:stream_selection]) unless stub[:stream_selection].nil?
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
        data['spekeKeyProvider'] = Stubs::SpekeKeyProvider.stub(stub[:speke_key_provider]) unless stub[:speke_key_provider].nil?
        data
      end
    end

    # Structure Stubber for SpekeKeyProvider
    class SpekeKeyProvider
      def self.default(visited=[])
        return nil if visited.include?('SpekeKeyProvider')
        visited = visited + ['SpekeKeyProvider']
        {
          role_arn: 'role_arn',
          system_ids: List____listOf__string.default(visited),
          url: 'url',
        }
      end

      def self.stub(stub)
        stub ||= Types::SpekeKeyProvider.new
        data = {}
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['systemIds'] = Stubs::List____listOf__string.stub(stub[:system_ids]) unless stub[:system_ids].nil?
        data['url'] = stub[:url] unless stub[:url].nil?
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

    # Structure Stubber for HlsPackage
    class HlsPackage
      def self.default(visited=[])
        return nil if visited.include?('HlsPackage')
        visited = visited + ['HlsPackage']
        {
          encryption: HlsEncryption.default(visited),
          hls_manifests: List____listOfHlsManifest.default(visited),
          include_dvb_subtitles: false,
          segment_duration_seconds: 1,
          use_audio_rendition_group: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::HlsPackage.new
        data = {}
        data['encryption'] = Stubs::HlsEncryption.stub(stub[:encryption]) unless stub[:encryption].nil?
        data['hlsManifests'] = Stubs::List____listOfHlsManifest.stub(stub[:hls_manifests]) unless stub[:hls_manifests].nil?
        data['includeDvbSubtitles'] = stub[:include_dvb_subtitles] unless stub[:include_dvb_subtitles].nil?
        data['segmentDurationSeconds'] = stub[:segment_duration_seconds] unless stub[:segment_duration_seconds].nil?
        data['useAudioRenditionGroup'] = stub[:use_audio_rendition_group] unless stub[:use_audio_rendition_group].nil?
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
          data << Stubs::HlsManifest.stub(element) unless element.nil?
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
          include_iframe_only_stream: false,
          manifest_name: 'manifest_name',
          program_date_time_interval_seconds: 1,
          repeat_ext_x_key: false,
          stream_selection: StreamSelection.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::HlsManifest.new
        data = {}
        data['adMarkers'] = stub[:ad_markers] unless stub[:ad_markers].nil?
        data['includeIframeOnlyStream'] = stub[:include_iframe_only_stream] unless stub[:include_iframe_only_stream].nil?
        data['manifestName'] = stub[:manifest_name] unless stub[:manifest_name].nil?
        data['programDateTimeIntervalSeconds'] = stub[:program_date_time_interval_seconds] unless stub[:program_date_time_interval_seconds].nil?
        data['repeatExtXKey'] = stub[:repeat_ext_x_key] unless stub[:repeat_ext_x_key].nil?
        data['streamSelection'] = Stubs::StreamSelection.stub(stub[:stream_selection]) unless stub[:stream_selection].nil?
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
          speke_key_provider: SpekeKeyProvider.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::HlsEncryption.new
        data = {}
        data['constantInitializationVector'] = stub[:constant_initialization_vector] unless stub[:constant_initialization_vector].nil?
        data['encryptionMethod'] = stub[:encryption_method] unless stub[:encryption_method].nil?
        data['spekeKeyProvider'] = Stubs::SpekeKeyProvider.stub(stub[:speke_key_provider]) unless stub[:speke_key_provider].nil?
        data
      end
    end

    # Structure Stubber for DashPackage
    class DashPackage
      def self.default(visited=[])
        return nil if visited.include?('DashPackage')
        visited = visited + ['DashPackage']
        {
          dash_manifests: List____listOfDashManifest.default(visited),
          encryption: DashEncryption.default(visited),
          include_encoder_configuration_in_segments: false,
          period_triggers: List____listOf__PeriodTriggersElement.default(visited),
          segment_duration_seconds: 1,
          segment_template_format: 'segment_template_format',
        }
      end

      def self.stub(stub)
        stub ||= Types::DashPackage.new
        data = {}
        data['dashManifests'] = Stubs::List____listOfDashManifest.stub(stub[:dash_manifests]) unless stub[:dash_manifests].nil?
        data['encryption'] = Stubs::DashEncryption.stub(stub[:encryption]) unless stub[:encryption].nil?
        data['includeEncoderConfigurationInSegments'] = stub[:include_encoder_configuration_in_segments] unless stub[:include_encoder_configuration_in_segments].nil?
        data['periodTriggers'] = Stubs::List____listOf__PeriodTriggersElement.stub(stub[:period_triggers]) unless stub[:period_triggers].nil?
        data['segmentDurationSeconds'] = stub[:segment_duration_seconds] unless stub[:segment_duration_seconds].nil?
        data['segmentTemplateFormat'] = stub[:segment_template_format] unless stub[:segment_template_format].nil?
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
          speke_key_provider: SpekeKeyProvider.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DashEncryption.new
        data = {}
        data['spekeKeyProvider'] = Stubs::SpekeKeyProvider.stub(stub[:speke_key_provider]) unless stub[:speke_key_provider].nil?
        data
      end
    end

    # List Stubber for __listOfDashManifest
    class List____listOfDashManifest
      def self.default(visited=[])
        return nil if visited.include?('List____listOfDashManifest')
        visited = visited + ['List____listOfDashManifest']
        [
          DashManifest.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DashManifest.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DashManifest
    class DashManifest
      def self.default(visited=[])
        return nil if visited.include?('DashManifest')
        visited = visited + ['DashManifest']
        {
          manifest_layout: 'manifest_layout',
          manifest_name: 'manifest_name',
          min_buffer_time_seconds: 1,
          profile: 'profile',
          scte_markers_source: 'scte_markers_source',
          stream_selection: StreamSelection.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DashManifest.new
        data = {}
        data['manifestLayout'] = stub[:manifest_layout] unless stub[:manifest_layout].nil?
        data['manifestName'] = stub[:manifest_name] unless stub[:manifest_name].nil?
        data['minBufferTimeSeconds'] = stub[:min_buffer_time_seconds] unless stub[:min_buffer_time_seconds].nil?
        data['profile'] = stub[:profile] unless stub[:profile].nil?
        data['scteMarkersSource'] = stub[:scte_markers_source] unless stub[:scte_markers_source].nil?
        data['streamSelection'] = Stubs::StreamSelection.stub(stub[:stream_selection]) unless stub[:stream_selection].nil?
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
          include_encoder_configuration_in_segments: false,
          segment_duration_seconds: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::CmafPackage.new
        data = {}
        data['encryption'] = Stubs::CmafEncryption.stub(stub[:encryption]) unless stub[:encryption].nil?
        data['hlsManifests'] = Stubs::List____listOfHlsManifest.stub(stub[:hls_manifests]) unless stub[:hls_manifests].nil?
        data['includeEncoderConfigurationInSegments'] = stub[:include_encoder_configuration_in_segments] unless stub[:include_encoder_configuration_in_segments].nil?
        data['segmentDurationSeconds'] = stub[:segment_duration_seconds] unless stub[:segment_duration_seconds].nil?
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
          speke_key_provider: SpekeKeyProvider.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CmafEncryption.new
        data = {}
        data['constantInitializationVector'] = stub[:constant_initialization_vector] unless stub[:constant_initialization_vector].nil?
        data['spekeKeyProvider'] = Stubs::SpekeKeyProvider.stub(stub[:speke_key_provider]) unless stub[:speke_key_provider].nil?
        data
      end
    end

    # Operation Stubber for CreatePackagingGroup
    class CreatePackagingGroup
      def self.default(visited=[])
        {
          arn: 'arn',
          authorization: Authorization.default(visited),
          domain_name: 'domain_name',
          egress_access_logs: EgressAccessLogs.default(visited),
          id: 'id',
          tags: Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['authorization'] = Stubs::Authorization.stub(stub[:authorization]) unless stub[:authorization].nil?
        data['domainName'] = stub[:domain_name] unless stub[:domain_name].nil?
        data['egressAccessLogs'] = Stubs::EgressAccessLogs.stub(stub[:egress_access_logs]) unless stub[:egress_access_logs].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteAsset
    class DeleteAsset
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
      end
    end

    # Operation Stubber for DeletePackagingConfiguration
    class DeletePackagingConfiguration
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
      end
    end

    # Operation Stubber for DeletePackagingGroup
    class DeletePackagingGroup
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
      end
    end

    # Operation Stubber for DescribeAsset
    class DescribeAsset
      def self.default(visited=[])
        {
          arn: 'arn',
          created_at: 'created_at',
          egress_endpoints: List____listOfEgressEndpoint.default(visited),
          id: 'id',
          packaging_group_id: 'packaging_group_id',
          resource_id: 'resource_id',
          source_arn: 'source_arn',
          source_role_arn: 'source_role_arn',
          tags: Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['createdAt'] = stub[:created_at] unless stub[:created_at].nil?
        data['egressEndpoints'] = Stubs::List____listOfEgressEndpoint.stub(stub[:egress_endpoints]) unless stub[:egress_endpoints].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['packagingGroupId'] = stub[:packaging_group_id] unless stub[:packaging_group_id].nil?
        data['resourceId'] = stub[:resource_id] unless stub[:resource_id].nil?
        data['sourceArn'] = stub[:source_arn] unless stub[:source_arn].nil?
        data['sourceRoleArn'] = stub[:source_role_arn] unless stub[:source_role_arn].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribePackagingConfiguration
    class DescribePackagingConfiguration
      def self.default(visited=[])
        {
          arn: 'arn',
          cmaf_package: CmafPackage.default(visited),
          dash_package: DashPackage.default(visited),
          hls_package: HlsPackage.default(visited),
          id: 'id',
          mss_package: MssPackage.default(visited),
          packaging_group_id: 'packaging_group_id',
          tags: Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['cmafPackage'] = Stubs::CmafPackage.stub(stub[:cmaf_package]) unless stub[:cmaf_package].nil?
        data['dashPackage'] = Stubs::DashPackage.stub(stub[:dash_package]) unless stub[:dash_package].nil?
        data['hlsPackage'] = Stubs::HlsPackage.stub(stub[:hls_package]) unless stub[:hls_package].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['mssPackage'] = Stubs::MssPackage.stub(stub[:mss_package]) unless stub[:mss_package].nil?
        data['packagingGroupId'] = stub[:packaging_group_id] unless stub[:packaging_group_id].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribePackagingGroup
    class DescribePackagingGroup
      def self.default(visited=[])
        {
          arn: 'arn',
          authorization: Authorization.default(visited),
          domain_name: 'domain_name',
          egress_access_logs: EgressAccessLogs.default(visited),
          id: 'id',
          tags: Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['authorization'] = Stubs::Authorization.stub(stub[:authorization]) unless stub[:authorization].nil?
        data['domainName'] = stub[:domain_name] unless stub[:domain_name].nil?
        data['egressAccessLogs'] = Stubs::EgressAccessLogs.stub(stub[:egress_access_logs]) unless stub[:egress_access_logs].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListAssets
    class ListAssets
      def self.default(visited=[])
        {
          assets: List____listOfAssetShallow.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['assets'] = Stubs::List____listOfAssetShallow.stub(stub[:assets]) unless stub[:assets].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfAssetShallow
    class List____listOfAssetShallow
      def self.default(visited=[])
        return nil if visited.include?('List____listOfAssetShallow')
        visited = visited + ['List____listOfAssetShallow']
        [
          AssetShallow.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AssetShallow.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AssetShallow
    class AssetShallow
      def self.default(visited=[])
        return nil if visited.include?('AssetShallow')
        visited = visited + ['AssetShallow']
        {
          arn: 'arn',
          created_at: 'created_at',
          id: 'id',
          packaging_group_id: 'packaging_group_id',
          resource_id: 'resource_id',
          source_arn: 'source_arn',
          source_role_arn: 'source_role_arn',
          tags: Tags.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AssetShallow.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['createdAt'] = stub[:created_at] unless stub[:created_at].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['packagingGroupId'] = stub[:packaging_group_id] unless stub[:packaging_group_id].nil?
        data['resourceId'] = stub[:resource_id] unless stub[:resource_id].nil?
        data['sourceArn'] = stub[:source_arn] unless stub[:source_arn].nil?
        data['sourceRoleArn'] = stub[:source_role_arn] unless stub[:source_role_arn].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for ListPackagingConfigurations
    class ListPackagingConfigurations
      def self.default(visited=[])
        {
          next_token: 'next_token',
          packaging_configurations: List____listOfPackagingConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['packagingConfigurations'] = Stubs::List____listOfPackagingConfiguration.stub(stub[:packaging_configurations]) unless stub[:packaging_configurations].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfPackagingConfiguration
    class List____listOfPackagingConfiguration
      def self.default(visited=[])
        return nil if visited.include?('List____listOfPackagingConfiguration')
        visited = visited + ['List____listOfPackagingConfiguration']
        [
          PackagingConfiguration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PackagingConfiguration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PackagingConfiguration
    class PackagingConfiguration
      def self.default(visited=[])
        return nil if visited.include?('PackagingConfiguration')
        visited = visited + ['PackagingConfiguration']
        {
          arn: 'arn',
          cmaf_package: CmafPackage.default(visited),
          dash_package: DashPackage.default(visited),
          hls_package: HlsPackage.default(visited),
          id: 'id',
          mss_package: MssPackage.default(visited),
          packaging_group_id: 'packaging_group_id',
          tags: Tags.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PackagingConfiguration.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['cmafPackage'] = Stubs::CmafPackage.stub(stub[:cmaf_package]) unless stub[:cmaf_package].nil?
        data['dashPackage'] = Stubs::DashPackage.stub(stub[:dash_package]) unless stub[:dash_package].nil?
        data['hlsPackage'] = Stubs::HlsPackage.stub(stub[:hls_package]) unless stub[:hls_package].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['mssPackage'] = Stubs::MssPackage.stub(stub[:mss_package]) unless stub[:mss_package].nil?
        data['packagingGroupId'] = stub[:packaging_group_id] unless stub[:packaging_group_id].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for ListPackagingGroups
    class ListPackagingGroups
      def self.default(visited=[])
        {
          next_token: 'next_token',
          packaging_groups: List____listOfPackagingGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['packagingGroups'] = Stubs::List____listOfPackagingGroup.stub(stub[:packaging_groups]) unless stub[:packaging_groups].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfPackagingGroup
    class List____listOfPackagingGroup
      def self.default(visited=[])
        return nil if visited.include?('List____listOfPackagingGroup')
        visited = visited + ['List____listOfPackagingGroup']
        [
          PackagingGroup.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PackagingGroup.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PackagingGroup
    class PackagingGroup
      def self.default(visited=[])
        return nil if visited.include?('PackagingGroup')
        visited = visited + ['PackagingGroup']
        {
          arn: 'arn',
          authorization: Authorization.default(visited),
          domain_name: 'domain_name',
          egress_access_logs: EgressAccessLogs.default(visited),
          id: 'id',
          tags: Tags.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PackagingGroup.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['authorization'] = Stubs::Authorization.stub(stub[:authorization]) unless stub[:authorization].nil?
        data['domainName'] = stub[:domain_name] unless stub[:domain_name].nil?
        data['egressAccessLogs'] = Stubs::EgressAccessLogs.stub(stub[:egress_access_logs]) unless stub[:egress_access_logs].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
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

    # Operation Stubber for UpdatePackagingGroup
    class UpdatePackagingGroup
      def self.default(visited=[])
        {
          arn: 'arn',
          authorization: Authorization.default(visited),
          domain_name: 'domain_name',
          egress_access_logs: EgressAccessLogs.default(visited),
          id: 'id',
          tags: Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['authorization'] = Stubs::Authorization.stub(stub[:authorization]) unless stub[:authorization].nil?
        data['domainName'] = stub[:domain_name] unless stub[:domain_name].nil?
        data['egressAccessLogs'] = Stubs::EgressAccessLogs.stub(stub[:egress_access_logs]) unless stub[:egress_access_logs].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
