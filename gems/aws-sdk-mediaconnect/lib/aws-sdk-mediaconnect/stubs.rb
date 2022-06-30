# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::MediaConnect
  module Stubs

    # Operation Stubber for AddFlowMediaStreams
    class AddFlowMediaStreams
      def self.default(visited=[])
        {
          flow_arn: 'flow_arn',
          media_streams: Stubs::List____listOfMediaStream.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['flowArn'] = stub[:flow_arn] unless stub[:flow_arn].nil?
        data['mediaStreams'] = Stubs::List____listOfMediaStream.stub(stub[:media_streams]) unless stub[:media_streams].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfMediaStream
    class List____listOfMediaStream
      def self.default(visited=[])
        return nil if visited.include?('List____listOfMediaStream')
        visited = visited + ['List____listOfMediaStream']
        [
          Stubs::MediaStream.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::MediaStream.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MediaStream
    class MediaStream
      def self.default(visited=[])
        return nil if visited.include?('MediaStream')
        visited = visited + ['MediaStream']
        {
          attributes: Stubs::MediaStreamAttributes.default(visited),
          clock_rate: 1,
          description: 'description',
          fmt: 1,
          media_stream_id: 1,
          media_stream_name: 'media_stream_name',
          media_stream_type: 'media_stream_type',
          video_format: 'video_format',
        }
      end

      def self.stub(stub)
        stub ||= Types::MediaStream.new
        data = {}
        data['attributes'] = Stubs::MediaStreamAttributes.stub(stub[:attributes]) unless stub[:attributes].nil?
        data['clockRate'] = stub[:clock_rate] unless stub[:clock_rate].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['fmt'] = stub[:fmt] unless stub[:fmt].nil?
        data['mediaStreamId'] = stub[:media_stream_id] unless stub[:media_stream_id].nil?
        data['mediaStreamName'] = stub[:media_stream_name] unless stub[:media_stream_name].nil?
        data['mediaStreamType'] = stub[:media_stream_type] unless stub[:media_stream_type].nil?
        data['videoFormat'] = stub[:video_format] unless stub[:video_format].nil?
        data
      end
    end

    # Structure Stubber for MediaStreamAttributes
    class MediaStreamAttributes
      def self.default(visited=[])
        return nil if visited.include?('MediaStreamAttributes')
        visited = visited + ['MediaStreamAttributes']
        {
          fmtp: Stubs::Fmtp.default(visited),
          lang: 'lang',
        }
      end

      def self.stub(stub)
        stub ||= Types::MediaStreamAttributes.new
        data = {}
        data['fmtp'] = Stubs::Fmtp.stub(stub[:fmtp]) unless stub[:fmtp].nil?
        data['lang'] = stub[:lang] unless stub[:lang].nil?
        data
      end
    end

    # Structure Stubber for Fmtp
    class Fmtp
      def self.default(visited=[])
        return nil if visited.include?('Fmtp')
        visited = visited + ['Fmtp']
        {
          channel_order: 'channel_order',
          colorimetry: 'colorimetry',
          exact_framerate: 'exact_framerate',
          par: 'par',
          range: 'range',
          scan_mode: 'scan_mode',
          tcs: 'tcs',
        }
      end

      def self.stub(stub)
        stub ||= Types::Fmtp.new
        data = {}
        data['channelOrder'] = stub[:channel_order] unless stub[:channel_order].nil?
        data['colorimetry'] = stub[:colorimetry] unless stub[:colorimetry].nil?
        data['exactFramerate'] = stub[:exact_framerate] unless stub[:exact_framerate].nil?
        data['par'] = stub[:par] unless stub[:par].nil?
        data['range'] = stub[:range] unless stub[:range].nil?
        data['scanMode'] = stub[:scan_mode] unless stub[:scan_mode].nil?
        data['tcs'] = stub[:tcs] unless stub[:tcs].nil?
        data
      end
    end

    # Operation Stubber for AddFlowOutputs
    class AddFlowOutputs
      def self.default(visited=[])
        {
          flow_arn: 'flow_arn',
          outputs: Stubs::List____listOfOutput.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['flowArn'] = stub[:flow_arn] unless stub[:flow_arn].nil?
        data['outputs'] = Stubs::List____listOfOutput.stub(stub[:outputs]) unless stub[:outputs].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfOutput
    class List____listOfOutput
      def self.default(visited=[])
        return nil if visited.include?('List____listOfOutput')
        visited = visited + ['List____listOfOutput']
        [
          Stubs::Output.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Output.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Output
    class Output
      def self.default(visited=[])
        return nil if visited.include?('Output')
        visited = visited + ['Output']
        {
          data_transfer_subscriber_fee_percent: 1,
          description: 'description',
          destination: 'destination',
          encryption: Stubs::Encryption.default(visited),
          entitlement_arn: 'entitlement_arn',
          listener_address: 'listener_address',
          media_live_input_arn: 'media_live_input_arn',
          media_stream_output_configurations: Stubs::List____listOfMediaStreamOutputConfiguration.default(visited),
          name: 'name',
          output_arn: 'output_arn',
          port: 1,
          transport: Stubs::Transport.default(visited),
          vpc_interface_attachment: Stubs::VpcInterfaceAttachment.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Output.new
        data = {}
        data['dataTransferSubscriberFeePercent'] = stub[:data_transfer_subscriber_fee_percent] unless stub[:data_transfer_subscriber_fee_percent].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['destination'] = stub[:destination] unless stub[:destination].nil?
        data['encryption'] = Stubs::Encryption.stub(stub[:encryption]) unless stub[:encryption].nil?
        data['entitlementArn'] = stub[:entitlement_arn] unless stub[:entitlement_arn].nil?
        data['listenerAddress'] = stub[:listener_address] unless stub[:listener_address].nil?
        data['mediaLiveInputArn'] = stub[:media_live_input_arn] unless stub[:media_live_input_arn].nil?
        data['mediaStreamOutputConfigurations'] = Stubs::List____listOfMediaStreamOutputConfiguration.stub(stub[:media_stream_output_configurations]) unless stub[:media_stream_output_configurations].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['outputArn'] = stub[:output_arn] unless stub[:output_arn].nil?
        data['port'] = stub[:port] unless stub[:port].nil?
        data['transport'] = Stubs::Transport.stub(stub[:transport]) unless stub[:transport].nil?
        data['vpcInterfaceAttachment'] = Stubs::VpcInterfaceAttachment.stub(stub[:vpc_interface_attachment]) unless stub[:vpc_interface_attachment].nil?
        data
      end
    end

    # Structure Stubber for VpcInterfaceAttachment
    class VpcInterfaceAttachment
      def self.default(visited=[])
        return nil if visited.include?('VpcInterfaceAttachment')
        visited = visited + ['VpcInterfaceAttachment']
        {
          vpc_interface_name: 'vpc_interface_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::VpcInterfaceAttachment.new
        data = {}
        data['vpcInterfaceName'] = stub[:vpc_interface_name] unless stub[:vpc_interface_name].nil?
        data
      end
    end

    # Structure Stubber for Transport
    class Transport
      def self.default(visited=[])
        return nil if visited.include?('Transport')
        visited = visited + ['Transport']
        {
          cidr_allow_list: Stubs::List____listOf__string.default(visited),
          max_bitrate: 1,
          max_latency: 1,
          max_sync_buffer: 1,
          min_latency: 1,
          protocol: 'protocol',
          remote_id: 'remote_id',
          sender_control_port: 1,
          sender_ip_address: 'sender_ip_address',
          smoothing_latency: 1,
          stream_id: 'stream_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::Transport.new
        data = {}
        data['cidrAllowList'] = Stubs::List____listOf__string.stub(stub[:cidr_allow_list]) unless stub[:cidr_allow_list].nil?
        data['maxBitrate'] = stub[:max_bitrate] unless stub[:max_bitrate].nil?
        data['maxLatency'] = stub[:max_latency] unless stub[:max_latency].nil?
        data['maxSyncBuffer'] = stub[:max_sync_buffer] unless stub[:max_sync_buffer].nil?
        data['minLatency'] = stub[:min_latency] unless stub[:min_latency].nil?
        data['protocol'] = stub[:protocol] unless stub[:protocol].nil?
        data['remoteId'] = stub[:remote_id] unless stub[:remote_id].nil?
        data['senderControlPort'] = stub[:sender_control_port] unless stub[:sender_control_port].nil?
        data['senderIpAddress'] = stub[:sender_ip_address] unless stub[:sender_ip_address].nil?
        data['smoothingLatency'] = stub[:smoothing_latency] unless stub[:smoothing_latency].nil?
        data['streamId'] = stub[:stream_id] unless stub[:stream_id].nil?
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

    # List Stubber for __listOfMediaStreamOutputConfiguration
    class List____listOfMediaStreamOutputConfiguration
      def self.default(visited=[])
        return nil if visited.include?('List____listOfMediaStreamOutputConfiguration')
        visited = visited + ['List____listOfMediaStreamOutputConfiguration']
        [
          Stubs::MediaStreamOutputConfiguration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::MediaStreamOutputConfiguration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MediaStreamOutputConfiguration
    class MediaStreamOutputConfiguration
      def self.default(visited=[])
        return nil if visited.include?('MediaStreamOutputConfiguration')
        visited = visited + ['MediaStreamOutputConfiguration']
        {
          destination_configurations: Stubs::List____listOfDestinationConfiguration.default(visited),
          encoding_name: 'encoding_name',
          encoding_parameters: Stubs::EncodingParameters.default(visited),
          media_stream_name: 'media_stream_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::MediaStreamOutputConfiguration.new
        data = {}
        data['destinationConfigurations'] = Stubs::List____listOfDestinationConfiguration.stub(stub[:destination_configurations]) unless stub[:destination_configurations].nil?
        data['encodingName'] = stub[:encoding_name] unless stub[:encoding_name].nil?
        data['encodingParameters'] = Stubs::EncodingParameters.stub(stub[:encoding_parameters]) unless stub[:encoding_parameters].nil?
        data['mediaStreamName'] = stub[:media_stream_name] unless stub[:media_stream_name].nil?
        data
      end
    end

    # Structure Stubber for EncodingParameters
    class EncodingParameters
      def self.default(visited=[])
        return nil if visited.include?('EncodingParameters')
        visited = visited + ['EncodingParameters']
        {
          compression_factor: 1.0,
          encoder_profile: 'encoder_profile',
        }
      end

      def self.stub(stub)
        stub ||= Types::EncodingParameters.new
        data = {}
        data['compressionFactor'] = Hearth::NumberHelper.serialize(stub[:compression_factor])
        data['encoderProfile'] = stub[:encoder_profile] unless stub[:encoder_profile].nil?
        data
      end
    end

    # List Stubber for __listOfDestinationConfiguration
    class List____listOfDestinationConfiguration
      def self.default(visited=[])
        return nil if visited.include?('List____listOfDestinationConfiguration')
        visited = visited + ['List____listOfDestinationConfiguration']
        [
          Stubs::DestinationConfiguration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DestinationConfiguration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DestinationConfiguration
    class DestinationConfiguration
      def self.default(visited=[])
        return nil if visited.include?('DestinationConfiguration')
        visited = visited + ['DestinationConfiguration']
        {
          destination_ip: 'destination_ip',
          destination_port: 1,
          interface: Stubs::Interface.default(visited),
          outbound_ip: 'outbound_ip',
        }
      end

      def self.stub(stub)
        stub ||= Types::DestinationConfiguration.new
        data = {}
        data['destinationIp'] = stub[:destination_ip] unless stub[:destination_ip].nil?
        data['destinationPort'] = stub[:destination_port] unless stub[:destination_port].nil?
        data['interface'] = Stubs::Interface.stub(stub[:interface]) unless stub[:interface].nil?
        data['outboundIp'] = stub[:outbound_ip] unless stub[:outbound_ip].nil?
        data
      end
    end

    # Structure Stubber for Interface
    class Interface
      def self.default(visited=[])
        return nil if visited.include?('Interface')
        visited = visited + ['Interface']
        {
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::Interface.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Structure Stubber for Encryption
    class Encryption
      def self.default(visited=[])
        return nil if visited.include?('Encryption')
        visited = visited + ['Encryption']
        {
          algorithm: 'algorithm',
          constant_initialization_vector: 'constant_initialization_vector',
          device_id: 'device_id',
          key_type: 'key_type',
          region: 'region',
          resource_id: 'resource_id',
          role_arn: 'role_arn',
          secret_arn: 'secret_arn',
          url: 'url',
        }
      end

      def self.stub(stub)
        stub ||= Types::Encryption.new
        data = {}
        data['algorithm'] = stub[:algorithm] unless stub[:algorithm].nil?
        data['constantInitializationVector'] = stub[:constant_initialization_vector] unless stub[:constant_initialization_vector].nil?
        data['deviceId'] = stub[:device_id] unless stub[:device_id].nil?
        data['keyType'] = stub[:key_type] unless stub[:key_type].nil?
        data['region'] = stub[:region] unless stub[:region].nil?
        data['resourceId'] = stub[:resource_id] unless stub[:resource_id].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['secretArn'] = stub[:secret_arn] unless stub[:secret_arn].nil?
        data['url'] = stub[:url] unless stub[:url].nil?
        data
      end
    end

    # Operation Stubber for AddFlowSources
    class AddFlowSources
      def self.default(visited=[])
        {
          flow_arn: 'flow_arn',
          sources: Stubs::List____listOfSource.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['flowArn'] = stub[:flow_arn] unless stub[:flow_arn].nil?
        data['sources'] = Stubs::List____listOfSource.stub(stub[:sources]) unless stub[:sources].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfSource
    class List____listOfSource
      def self.default(visited=[])
        return nil if visited.include?('List____listOfSource')
        visited = visited + ['List____listOfSource']
        [
          Stubs::Source.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Source.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Source
    class Source
      def self.default(visited=[])
        return nil if visited.include?('Source')
        visited = visited + ['Source']
        {
          data_transfer_subscriber_fee_percent: 1,
          decryption: Stubs::Encryption.default(visited),
          description: 'description',
          entitlement_arn: 'entitlement_arn',
          ingest_ip: 'ingest_ip',
          ingest_port: 1,
          media_stream_source_configurations: Stubs::List____listOfMediaStreamSourceConfiguration.default(visited),
          name: 'name',
          sender_control_port: 1,
          sender_ip_address: 'sender_ip_address',
          source_arn: 'source_arn',
          transport: Stubs::Transport.default(visited),
          vpc_interface_name: 'vpc_interface_name',
          whitelist_cidr: 'whitelist_cidr',
        }
      end

      def self.stub(stub)
        stub ||= Types::Source.new
        data = {}
        data['dataTransferSubscriberFeePercent'] = stub[:data_transfer_subscriber_fee_percent] unless stub[:data_transfer_subscriber_fee_percent].nil?
        data['decryption'] = Stubs::Encryption.stub(stub[:decryption]) unless stub[:decryption].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['entitlementArn'] = stub[:entitlement_arn] unless stub[:entitlement_arn].nil?
        data['ingestIp'] = stub[:ingest_ip] unless stub[:ingest_ip].nil?
        data['ingestPort'] = stub[:ingest_port] unless stub[:ingest_port].nil?
        data['mediaStreamSourceConfigurations'] = Stubs::List____listOfMediaStreamSourceConfiguration.stub(stub[:media_stream_source_configurations]) unless stub[:media_stream_source_configurations].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['senderControlPort'] = stub[:sender_control_port] unless stub[:sender_control_port].nil?
        data['senderIpAddress'] = stub[:sender_ip_address] unless stub[:sender_ip_address].nil?
        data['sourceArn'] = stub[:source_arn] unless stub[:source_arn].nil?
        data['transport'] = Stubs::Transport.stub(stub[:transport]) unless stub[:transport].nil?
        data['vpcInterfaceName'] = stub[:vpc_interface_name] unless stub[:vpc_interface_name].nil?
        data['whitelistCidr'] = stub[:whitelist_cidr] unless stub[:whitelist_cidr].nil?
        data
      end
    end

    # List Stubber for __listOfMediaStreamSourceConfiguration
    class List____listOfMediaStreamSourceConfiguration
      def self.default(visited=[])
        return nil if visited.include?('List____listOfMediaStreamSourceConfiguration')
        visited = visited + ['List____listOfMediaStreamSourceConfiguration']
        [
          Stubs::MediaStreamSourceConfiguration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::MediaStreamSourceConfiguration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MediaStreamSourceConfiguration
    class MediaStreamSourceConfiguration
      def self.default(visited=[])
        return nil if visited.include?('MediaStreamSourceConfiguration')
        visited = visited + ['MediaStreamSourceConfiguration']
        {
          encoding_name: 'encoding_name',
          input_configurations: Stubs::List____listOfInputConfiguration.default(visited),
          media_stream_name: 'media_stream_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::MediaStreamSourceConfiguration.new
        data = {}
        data['encodingName'] = stub[:encoding_name] unless stub[:encoding_name].nil?
        data['inputConfigurations'] = Stubs::List____listOfInputConfiguration.stub(stub[:input_configurations]) unless stub[:input_configurations].nil?
        data['mediaStreamName'] = stub[:media_stream_name] unless stub[:media_stream_name].nil?
        data
      end
    end

    # List Stubber for __listOfInputConfiguration
    class List____listOfInputConfiguration
      def self.default(visited=[])
        return nil if visited.include?('List____listOfInputConfiguration')
        visited = visited + ['List____listOfInputConfiguration']
        [
          Stubs::InputConfiguration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::InputConfiguration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for InputConfiguration
    class InputConfiguration
      def self.default(visited=[])
        return nil if visited.include?('InputConfiguration')
        visited = visited + ['InputConfiguration']
        {
          input_ip: 'input_ip',
          input_port: 1,
          interface: Stubs::Interface.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::InputConfiguration.new
        data = {}
        data['inputIp'] = stub[:input_ip] unless stub[:input_ip].nil?
        data['inputPort'] = stub[:input_port] unless stub[:input_port].nil?
        data['interface'] = Stubs::Interface.stub(stub[:interface]) unless stub[:interface].nil?
        data
      end
    end

    # Operation Stubber for AddFlowVpcInterfaces
    class AddFlowVpcInterfaces
      def self.default(visited=[])
        {
          flow_arn: 'flow_arn',
          vpc_interfaces: Stubs::List____listOfVpcInterface.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['flowArn'] = stub[:flow_arn] unless stub[:flow_arn].nil?
        data['vpcInterfaces'] = Stubs::List____listOfVpcInterface.stub(stub[:vpc_interfaces]) unless stub[:vpc_interfaces].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfVpcInterface
    class List____listOfVpcInterface
      def self.default(visited=[])
        return nil if visited.include?('List____listOfVpcInterface')
        visited = visited + ['List____listOfVpcInterface']
        [
          Stubs::VpcInterface.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::VpcInterface.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for VpcInterface
    class VpcInterface
      def self.default(visited=[])
        return nil if visited.include?('VpcInterface')
        visited = visited + ['VpcInterface']
        {
          name: 'name',
          network_interface_ids: Stubs::List____listOf__string.default(visited),
          network_interface_type: 'network_interface_type',
          role_arn: 'role_arn',
          security_group_ids: Stubs::List____listOf__string.default(visited),
          subnet_id: 'subnet_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::VpcInterface.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['networkInterfaceIds'] = Stubs::List____listOf__string.stub(stub[:network_interface_ids]) unless stub[:network_interface_ids].nil?
        data['networkInterfaceType'] = stub[:network_interface_type] unless stub[:network_interface_type].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['securityGroupIds'] = Stubs::List____listOf__string.stub(stub[:security_group_ids]) unless stub[:security_group_ids].nil?
        data['subnetId'] = stub[:subnet_id] unless stub[:subnet_id].nil?
        data
      end
    end

    # Operation Stubber for CreateFlow
    class CreateFlow
      def self.default(visited=[])
        {
          flow: Stubs::Flow.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['flow'] = Stubs::Flow.stub(stub[:flow]) unless stub[:flow].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Flow
    class Flow
      def self.default(visited=[])
        return nil if visited.include?('Flow')
        visited = visited + ['Flow']
        {
          availability_zone: 'availability_zone',
          description: 'description',
          egress_ip: 'egress_ip',
          entitlements: Stubs::List____listOfEntitlement.default(visited),
          flow_arn: 'flow_arn',
          media_streams: Stubs::List____listOfMediaStream.default(visited),
          name: 'name',
          outputs: Stubs::List____listOfOutput.default(visited),
          source: Stubs::Source.default(visited),
          source_failover_config: Stubs::FailoverConfig.default(visited),
          sources: Stubs::List____listOfSource.default(visited),
          status: 'status',
          vpc_interfaces: Stubs::List____listOfVpcInterface.default(visited),
          maintenance: Stubs::Maintenance.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Flow.new
        data = {}
        data['availabilityZone'] = stub[:availability_zone] unless stub[:availability_zone].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['egressIp'] = stub[:egress_ip] unless stub[:egress_ip].nil?
        data['entitlements'] = Stubs::List____listOfEntitlement.stub(stub[:entitlements]) unless stub[:entitlements].nil?
        data['flowArn'] = stub[:flow_arn] unless stub[:flow_arn].nil?
        data['mediaStreams'] = Stubs::List____listOfMediaStream.stub(stub[:media_streams]) unless stub[:media_streams].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['outputs'] = Stubs::List____listOfOutput.stub(stub[:outputs]) unless stub[:outputs].nil?
        data['source'] = Stubs::Source.stub(stub[:source]) unless stub[:source].nil?
        data['sourceFailoverConfig'] = Stubs::FailoverConfig.stub(stub[:source_failover_config]) unless stub[:source_failover_config].nil?
        data['sources'] = Stubs::List____listOfSource.stub(stub[:sources]) unless stub[:sources].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['vpcInterfaces'] = Stubs::List____listOfVpcInterface.stub(stub[:vpc_interfaces]) unless stub[:vpc_interfaces].nil?
        data['maintenance'] = Stubs::Maintenance.stub(stub[:maintenance]) unless stub[:maintenance].nil?
        data
      end
    end

    # Structure Stubber for Maintenance
    class Maintenance
      def self.default(visited=[])
        return nil if visited.include?('Maintenance')
        visited = visited + ['Maintenance']
        {
          maintenance_day: 'maintenance_day',
          maintenance_deadline: 'maintenance_deadline',
          maintenance_scheduled_date: 'maintenance_scheduled_date',
          maintenance_start_hour: 'maintenance_start_hour',
        }
      end

      def self.stub(stub)
        stub ||= Types::Maintenance.new
        data = {}
        data['maintenanceDay'] = stub[:maintenance_day] unless stub[:maintenance_day].nil?
        data['maintenanceDeadline'] = stub[:maintenance_deadline] unless stub[:maintenance_deadline].nil?
        data['maintenanceScheduledDate'] = stub[:maintenance_scheduled_date] unless stub[:maintenance_scheduled_date].nil?
        data['maintenanceStartHour'] = stub[:maintenance_start_hour] unless stub[:maintenance_start_hour].nil?
        data
      end
    end

    # Structure Stubber for FailoverConfig
    class FailoverConfig
      def self.default(visited=[])
        return nil if visited.include?('FailoverConfig')
        visited = visited + ['FailoverConfig']
        {
          failover_mode: 'failover_mode',
          recovery_window: 1,
          source_priority: Stubs::SourcePriority.default(visited),
          state: 'state',
        }
      end

      def self.stub(stub)
        stub ||= Types::FailoverConfig.new
        data = {}
        data['failoverMode'] = stub[:failover_mode] unless stub[:failover_mode].nil?
        data['recoveryWindow'] = stub[:recovery_window] unless stub[:recovery_window].nil?
        data['sourcePriority'] = Stubs::SourcePriority.stub(stub[:source_priority]) unless stub[:source_priority].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data
      end
    end

    # Structure Stubber for SourcePriority
    class SourcePriority
      def self.default(visited=[])
        return nil if visited.include?('SourcePriority')
        visited = visited + ['SourcePriority']
        {
          primary_source: 'primary_source',
        }
      end

      def self.stub(stub)
        stub ||= Types::SourcePriority.new
        data = {}
        data['primarySource'] = stub[:primary_source] unless stub[:primary_source].nil?
        data
      end
    end

    # List Stubber for __listOfEntitlement
    class List____listOfEntitlement
      def self.default(visited=[])
        return nil if visited.include?('List____listOfEntitlement')
        visited = visited + ['List____listOfEntitlement']
        [
          Stubs::Entitlement.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Entitlement.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Entitlement
    class Entitlement
      def self.default(visited=[])
        return nil if visited.include?('Entitlement')
        visited = visited + ['Entitlement']
        {
          data_transfer_subscriber_fee_percent: 1,
          description: 'description',
          encryption: Stubs::Encryption.default(visited),
          entitlement_arn: 'entitlement_arn',
          entitlement_status: 'entitlement_status',
          name: 'name',
          subscribers: Stubs::List____listOf__string.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Entitlement.new
        data = {}
        data['dataTransferSubscriberFeePercent'] = stub[:data_transfer_subscriber_fee_percent] unless stub[:data_transfer_subscriber_fee_percent].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['encryption'] = Stubs::Encryption.stub(stub[:encryption]) unless stub[:encryption].nil?
        data['entitlementArn'] = stub[:entitlement_arn] unless stub[:entitlement_arn].nil?
        data['entitlementStatus'] = stub[:entitlement_status] unless stub[:entitlement_status].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['subscribers'] = Stubs::List____listOf__string.stub(stub[:subscribers]) unless stub[:subscribers].nil?
        data
      end
    end

    # Operation Stubber for DeleteFlow
    class DeleteFlow
      def self.default(visited=[])
        {
          flow_arn: 'flow_arn',
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['flowArn'] = stub[:flow_arn] unless stub[:flow_arn].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeFlow
    class DescribeFlow
      def self.default(visited=[])
        {
          flow: Stubs::Flow.default(visited),
          messages: Stubs::Messages.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['flow'] = Stubs::Flow.stub(stub[:flow]) unless stub[:flow].nil?
        data['messages'] = Stubs::Messages.stub(stub[:messages]) unless stub[:messages].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Messages
    class Messages
      def self.default(visited=[])
        return nil if visited.include?('Messages')
        visited = visited + ['Messages']
        {
          errors: Stubs::List____listOf__string.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Messages.new
        data = {}
        data['errors'] = Stubs::List____listOf__string.stub(stub[:errors]) unless stub[:errors].nil?
        data
      end
    end

    # Operation Stubber for DescribeOffering
    class DescribeOffering
      def self.default(visited=[])
        {
          offering: Stubs::Offering.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['offering'] = Stubs::Offering.stub(stub[:offering]) unless stub[:offering].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Offering
    class Offering
      def self.default(visited=[])
        return nil if visited.include?('Offering')
        visited = visited + ['Offering']
        {
          currency_code: 'currency_code',
          duration: 1,
          duration_units: 'duration_units',
          offering_arn: 'offering_arn',
          offering_description: 'offering_description',
          price_per_unit: 'price_per_unit',
          price_units: 'price_units',
          resource_specification: Stubs::ResourceSpecification.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Offering.new
        data = {}
        data['currencyCode'] = stub[:currency_code] unless stub[:currency_code].nil?
        data['duration'] = stub[:duration] unless stub[:duration].nil?
        data['durationUnits'] = stub[:duration_units] unless stub[:duration_units].nil?
        data['offeringArn'] = stub[:offering_arn] unless stub[:offering_arn].nil?
        data['offeringDescription'] = stub[:offering_description] unless stub[:offering_description].nil?
        data['pricePerUnit'] = stub[:price_per_unit] unless stub[:price_per_unit].nil?
        data['priceUnits'] = stub[:price_units] unless stub[:price_units].nil?
        data['resourceSpecification'] = Stubs::ResourceSpecification.stub(stub[:resource_specification]) unless stub[:resource_specification].nil?
        data
      end
    end

    # Structure Stubber for ResourceSpecification
    class ResourceSpecification
      def self.default(visited=[])
        return nil if visited.include?('ResourceSpecification')
        visited = visited + ['ResourceSpecification']
        {
          reserved_bitrate: 1,
          resource_type: 'resource_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceSpecification.new
        data = {}
        data['reservedBitrate'] = stub[:reserved_bitrate] unless stub[:reserved_bitrate].nil?
        data['resourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data
      end
    end

    # Operation Stubber for DescribeReservation
    class DescribeReservation
      def self.default(visited=[])
        {
          reservation: Stubs::Reservation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['reservation'] = Stubs::Reservation.stub(stub[:reservation]) unless stub[:reservation].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Reservation
    class Reservation
      def self.default(visited=[])
        return nil if visited.include?('Reservation')
        visited = visited + ['Reservation']
        {
          currency_code: 'currency_code',
          duration: 1,
          duration_units: 'duration_units',
          end: 'end',
          offering_arn: 'offering_arn',
          offering_description: 'offering_description',
          price_per_unit: 'price_per_unit',
          price_units: 'price_units',
          reservation_arn: 'reservation_arn',
          reservation_name: 'reservation_name',
          reservation_state: 'reservation_state',
          resource_specification: Stubs::ResourceSpecification.default(visited),
          start: 'start',
        }
      end

      def self.stub(stub)
        stub ||= Types::Reservation.new
        data = {}
        data['currencyCode'] = stub[:currency_code] unless stub[:currency_code].nil?
        data['duration'] = stub[:duration] unless stub[:duration].nil?
        data['durationUnits'] = stub[:duration_units] unless stub[:duration_units].nil?
        data['end'] = stub[:end] unless stub[:end].nil?
        data['offeringArn'] = stub[:offering_arn] unless stub[:offering_arn].nil?
        data['offeringDescription'] = stub[:offering_description] unless stub[:offering_description].nil?
        data['pricePerUnit'] = stub[:price_per_unit] unless stub[:price_per_unit].nil?
        data['priceUnits'] = stub[:price_units] unless stub[:price_units].nil?
        data['reservationArn'] = stub[:reservation_arn] unless stub[:reservation_arn].nil?
        data['reservationName'] = stub[:reservation_name] unless stub[:reservation_name].nil?
        data['reservationState'] = stub[:reservation_state] unless stub[:reservation_state].nil?
        data['resourceSpecification'] = Stubs::ResourceSpecification.stub(stub[:resource_specification]) unless stub[:resource_specification].nil?
        data['start'] = stub[:start] unless stub[:start].nil?
        data
      end
    end

    # Operation Stubber for GrantFlowEntitlements
    class GrantFlowEntitlements
      def self.default(visited=[])
        {
          entitlements: Stubs::List____listOfEntitlement.default(visited),
          flow_arn: 'flow_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['entitlements'] = Stubs::List____listOfEntitlement.stub(stub[:entitlements]) unless stub[:entitlements].nil?
        data['flowArn'] = stub[:flow_arn] unless stub[:flow_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListEntitlements
    class ListEntitlements
      def self.default(visited=[])
        {
          entitlements: Stubs::List____listOfListedEntitlement.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['entitlements'] = Stubs::List____listOfListedEntitlement.stub(stub[:entitlements]) unless stub[:entitlements].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfListedEntitlement
    class List____listOfListedEntitlement
      def self.default(visited=[])
        return nil if visited.include?('List____listOfListedEntitlement')
        visited = visited + ['List____listOfListedEntitlement']
        [
          Stubs::ListedEntitlement.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ListedEntitlement.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ListedEntitlement
    class ListedEntitlement
      def self.default(visited=[])
        return nil if visited.include?('ListedEntitlement')
        visited = visited + ['ListedEntitlement']
        {
          data_transfer_subscriber_fee_percent: 1,
          entitlement_arn: 'entitlement_arn',
          entitlement_name: 'entitlement_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::ListedEntitlement.new
        data = {}
        data['dataTransferSubscriberFeePercent'] = stub[:data_transfer_subscriber_fee_percent] unless stub[:data_transfer_subscriber_fee_percent].nil?
        data['entitlementArn'] = stub[:entitlement_arn] unless stub[:entitlement_arn].nil?
        data['entitlementName'] = stub[:entitlement_name] unless stub[:entitlement_name].nil?
        data
      end
    end

    # Operation Stubber for ListFlows
    class ListFlows
      def self.default(visited=[])
        {
          flows: Stubs::List____listOfListedFlow.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['flows'] = Stubs::List____listOfListedFlow.stub(stub[:flows]) unless stub[:flows].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfListedFlow
    class List____listOfListedFlow
      def self.default(visited=[])
        return nil if visited.include?('List____listOfListedFlow')
        visited = visited + ['List____listOfListedFlow']
        [
          Stubs::ListedFlow.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ListedFlow.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ListedFlow
    class ListedFlow
      def self.default(visited=[])
        return nil if visited.include?('ListedFlow')
        visited = visited + ['ListedFlow']
        {
          availability_zone: 'availability_zone',
          description: 'description',
          flow_arn: 'flow_arn',
          name: 'name',
          source_type: 'source_type',
          status: 'status',
          maintenance: Stubs::Maintenance.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ListedFlow.new
        data = {}
        data['availabilityZone'] = stub[:availability_zone] unless stub[:availability_zone].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['flowArn'] = stub[:flow_arn] unless stub[:flow_arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['sourceType'] = stub[:source_type] unless stub[:source_type].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['maintenance'] = Stubs::Maintenance.stub(stub[:maintenance]) unless stub[:maintenance].nil?
        data
      end
    end

    # Operation Stubber for ListOfferings
    class ListOfferings
      def self.default(visited=[])
        {
          next_token: 'next_token',
          offerings: Stubs::List____listOfOffering.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['offerings'] = Stubs::List____listOfOffering.stub(stub[:offerings]) unless stub[:offerings].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfOffering
    class List____listOfOffering
      def self.default(visited=[])
        return nil if visited.include?('List____listOfOffering')
        visited = visited + ['List____listOfOffering']
        [
          Stubs::Offering.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Offering.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListReservations
    class ListReservations
      def self.default(visited=[])
        {
          next_token: 'next_token',
          reservations: Stubs::List____listOfReservation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['reservations'] = Stubs::List____listOfReservation.stub(stub[:reservations]) unless stub[:reservations].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfReservation
    class List____listOfReservation
      def self.default(visited=[])
        return nil if visited.include?('List____listOfReservation')
        visited = visited + ['List____listOfReservation']
        [
          Stubs::Reservation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Reservation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: Stubs::Map____mapOf__string.default(visited),
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

    # Operation Stubber for PurchaseOffering
    class PurchaseOffering
      def self.default(visited=[])
        {
          reservation: Stubs::Reservation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['reservation'] = Stubs::Reservation.stub(stub[:reservation]) unless stub[:reservation].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for RemoveFlowMediaStream
    class RemoveFlowMediaStream
      def self.default(visited=[])
        {
          flow_arn: 'flow_arn',
          media_stream_name: 'media_stream_name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['flowArn'] = stub[:flow_arn] unless stub[:flow_arn].nil?
        data['mediaStreamName'] = stub[:media_stream_name] unless stub[:media_stream_name].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for RemoveFlowOutput
    class RemoveFlowOutput
      def self.default(visited=[])
        {
          flow_arn: 'flow_arn',
          output_arn: 'output_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['flowArn'] = stub[:flow_arn] unless stub[:flow_arn].nil?
        data['outputArn'] = stub[:output_arn] unless stub[:output_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for RemoveFlowSource
    class RemoveFlowSource
      def self.default(visited=[])
        {
          flow_arn: 'flow_arn',
          source_arn: 'source_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['flowArn'] = stub[:flow_arn] unless stub[:flow_arn].nil?
        data['sourceArn'] = stub[:source_arn] unless stub[:source_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for RemoveFlowVpcInterface
    class RemoveFlowVpcInterface
      def self.default(visited=[])
        {
          flow_arn: 'flow_arn',
          non_deleted_network_interface_ids: Stubs::List____listOf__string.default(visited),
          vpc_interface_name: 'vpc_interface_name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['flowArn'] = stub[:flow_arn] unless stub[:flow_arn].nil?
        data['nonDeletedNetworkInterfaceIds'] = Stubs::List____listOf__string.stub(stub[:non_deleted_network_interface_ids]) unless stub[:non_deleted_network_interface_ids].nil?
        data['vpcInterfaceName'] = stub[:vpc_interface_name] unless stub[:vpc_interface_name].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for RevokeFlowEntitlement
    class RevokeFlowEntitlement
      def self.default(visited=[])
        {
          entitlement_arn: 'entitlement_arn',
          flow_arn: 'flow_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['entitlementArn'] = stub[:entitlement_arn] unless stub[:entitlement_arn].nil?
        data['flowArn'] = stub[:flow_arn] unless stub[:flow_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StartFlow
    class StartFlow
      def self.default(visited=[])
        {
          flow_arn: 'flow_arn',
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['flowArn'] = stub[:flow_arn] unless stub[:flow_arn].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StopFlow
    class StopFlow
      def self.default(visited=[])
        {
          flow_arn: 'flow_arn',
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['flowArn'] = stub[:flow_arn] unless stub[:flow_arn].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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

    # Operation Stubber for UpdateFlow
    class UpdateFlow
      def self.default(visited=[])
        {
          flow: Stubs::Flow.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['flow'] = Stubs::Flow.stub(stub[:flow]) unless stub[:flow].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateFlowEntitlement
    class UpdateFlowEntitlement
      def self.default(visited=[])
        {
          entitlement: Stubs::Entitlement.default(visited),
          flow_arn: 'flow_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['entitlement'] = Stubs::Entitlement.stub(stub[:entitlement]) unless stub[:entitlement].nil?
        data['flowArn'] = stub[:flow_arn] unless stub[:flow_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateFlowMediaStream
    class UpdateFlowMediaStream
      def self.default(visited=[])
        {
          flow_arn: 'flow_arn',
          media_stream: Stubs::MediaStream.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['flowArn'] = stub[:flow_arn] unless stub[:flow_arn].nil?
        data['mediaStream'] = Stubs::MediaStream.stub(stub[:media_stream]) unless stub[:media_stream].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateFlowOutput
    class UpdateFlowOutput
      def self.default(visited=[])
        {
          flow_arn: 'flow_arn',
          output: Stubs::Output.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['flowArn'] = stub[:flow_arn] unless stub[:flow_arn].nil?
        data['output'] = Stubs::Output.stub(stub[:output]) unless stub[:output].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateFlowSource
    class UpdateFlowSource
      def self.default(visited=[])
        {
          flow_arn: 'flow_arn',
          source: Stubs::Source.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['flowArn'] = stub[:flow_arn] unless stub[:flow_arn].nil?
        data['source'] = Stubs::Source.stub(stub[:source]) unless stub[:source].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
