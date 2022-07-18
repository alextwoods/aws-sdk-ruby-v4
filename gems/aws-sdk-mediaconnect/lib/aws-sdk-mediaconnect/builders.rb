# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::MediaConnect
  module Builders

    # Operation Builder for AddFlowMediaStreams
    class AddFlowMediaStreams
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:flow_arn].to_s.empty?
          raise ArgumentError, "HTTP label :flow_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/flows/%<FlowArn>s/mediaStreams',
            FlowArn: Hearth::HTTP.uri_escape(input[:flow_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['mediaStreams'] = Builders::List____listOfAddMediaStreamRequest.build(input[:media_streams]) unless input[:media_streams].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for __listOfAddMediaStreamRequest
    class List____listOfAddMediaStreamRequest
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AddMediaStreamRequest.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AddMediaStreamRequest
    class AddMediaStreamRequest
      def self.build(input)
        data = {}
        data['attributes'] = Builders::MediaStreamAttributesRequest.build(input[:attributes]) unless input[:attributes].nil?
        data['clockRate'] = input[:clock_rate] unless input[:clock_rate].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['mediaStreamId'] = input[:media_stream_id] unless input[:media_stream_id].nil?
        data['mediaStreamName'] = input[:media_stream_name] unless input[:media_stream_name].nil?
        data['mediaStreamType'] = input[:media_stream_type] unless input[:media_stream_type].nil?
        data['videoFormat'] = input[:video_format] unless input[:video_format].nil?
        data
      end
    end

    # Structure Builder for MediaStreamAttributesRequest
    class MediaStreamAttributesRequest
      def self.build(input)
        data = {}
        data['fmtp'] = Builders::FmtpRequest.build(input[:fmtp]) unless input[:fmtp].nil?
        data['lang'] = input[:lang] unless input[:lang].nil?
        data
      end
    end

    # Structure Builder for FmtpRequest
    class FmtpRequest
      def self.build(input)
        data = {}
        data['channelOrder'] = input[:channel_order] unless input[:channel_order].nil?
        data['colorimetry'] = input[:colorimetry] unless input[:colorimetry].nil?
        data['exactFramerate'] = input[:exact_framerate] unless input[:exact_framerate].nil?
        data['par'] = input[:par] unless input[:par].nil?
        data['range'] = input[:range] unless input[:range].nil?
        data['scanMode'] = input[:scan_mode] unless input[:scan_mode].nil?
        data['tcs'] = input[:tcs] unless input[:tcs].nil?
        data
      end
    end

    # Operation Builder for AddFlowOutputs
    class AddFlowOutputs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:flow_arn].to_s.empty?
          raise ArgumentError, "HTTP label :flow_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/flows/%<FlowArn>s/outputs',
            FlowArn: Hearth::HTTP.uri_escape(input[:flow_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['outputs'] = Builders::List____listOfAddOutputRequest.build(input[:outputs]) unless input[:outputs].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for __listOfAddOutputRequest
    class List____listOfAddOutputRequest
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AddOutputRequest.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AddOutputRequest
    class AddOutputRequest
      def self.build(input)
        data = {}
        data['cidrAllowList'] = Builders::List____listOf__string.build(input[:cidr_allow_list]) unless input[:cidr_allow_list].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['destination'] = input[:destination] unless input[:destination].nil?
        data['encryption'] = Builders::Encryption.build(input[:encryption]) unless input[:encryption].nil?
        data['maxLatency'] = input[:max_latency] unless input[:max_latency].nil?
        data['mediaStreamOutputConfigurations'] = Builders::List____listOfMediaStreamOutputConfigurationRequest.build(input[:media_stream_output_configurations]) unless input[:media_stream_output_configurations].nil?
        data['minLatency'] = input[:min_latency] unless input[:min_latency].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['port'] = input[:port] unless input[:port].nil?
        data['protocol'] = input[:protocol] unless input[:protocol].nil?
        data['remoteId'] = input[:remote_id] unless input[:remote_id].nil?
        data['senderControlPort'] = input[:sender_control_port] unless input[:sender_control_port].nil?
        data['smoothingLatency'] = input[:smoothing_latency] unless input[:smoothing_latency].nil?
        data['streamId'] = input[:stream_id] unless input[:stream_id].nil?
        data['vpcInterfaceAttachment'] = Builders::VpcInterfaceAttachment.build(input[:vpc_interface_attachment]) unless input[:vpc_interface_attachment].nil?
        data
      end
    end

    # Structure Builder for VpcInterfaceAttachment
    class VpcInterfaceAttachment
      def self.build(input)
        data = {}
        data['vpcInterfaceName'] = input[:vpc_interface_name] unless input[:vpc_interface_name].nil?
        data
      end
    end

    # List Builder for __listOfMediaStreamOutputConfigurationRequest
    class List____listOfMediaStreamOutputConfigurationRequest
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::MediaStreamOutputConfigurationRequest.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for MediaStreamOutputConfigurationRequest
    class MediaStreamOutputConfigurationRequest
      def self.build(input)
        data = {}
        data['destinationConfigurations'] = Builders::List____listOfDestinationConfigurationRequest.build(input[:destination_configurations]) unless input[:destination_configurations].nil?
        data['encodingName'] = input[:encoding_name] unless input[:encoding_name].nil?
        data['encodingParameters'] = Builders::EncodingParametersRequest.build(input[:encoding_parameters]) unless input[:encoding_parameters].nil?
        data['mediaStreamName'] = input[:media_stream_name] unless input[:media_stream_name].nil?
        data
      end
    end

    # Structure Builder for EncodingParametersRequest
    class EncodingParametersRequest
      def self.build(input)
        data = {}
        data['compressionFactor'] = Hearth::NumberHelper.serialize(input[:compression_factor]) unless input[:compression_factor].nil?
        data['encoderProfile'] = input[:encoder_profile] unless input[:encoder_profile].nil?
        data
      end
    end

    # List Builder for __listOfDestinationConfigurationRequest
    class List____listOfDestinationConfigurationRequest
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::DestinationConfigurationRequest.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DestinationConfigurationRequest
    class DestinationConfigurationRequest
      def self.build(input)
        data = {}
        data['destinationIp'] = input[:destination_ip] unless input[:destination_ip].nil?
        data['destinationPort'] = input[:destination_port] unless input[:destination_port].nil?
        data['interface'] = Builders::InterfaceRequest.build(input[:interface]) unless input[:interface].nil?
        data
      end
    end

    # Structure Builder for InterfaceRequest
    class InterfaceRequest
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data
      end
    end

    # Structure Builder for Encryption
    class Encryption
      def self.build(input)
        data = {}
        data['algorithm'] = input[:algorithm] unless input[:algorithm].nil?
        data['constantInitializationVector'] = input[:constant_initialization_vector] unless input[:constant_initialization_vector].nil?
        data['deviceId'] = input[:device_id] unless input[:device_id].nil?
        data['keyType'] = input[:key_type] unless input[:key_type].nil?
        data['region'] = input[:region] unless input[:region].nil?
        data['resourceId'] = input[:resource_id] unless input[:resource_id].nil?
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['secretArn'] = input[:secret_arn] unless input[:secret_arn].nil?
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

    # Operation Builder for AddFlowSources
    class AddFlowSources
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:flow_arn].to_s.empty?
          raise ArgumentError, "HTTP label :flow_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/flows/%<FlowArn>s/source',
            FlowArn: Hearth::HTTP.uri_escape(input[:flow_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['sources'] = Builders::List____listOfSetSourceRequest.build(input[:sources]) unless input[:sources].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for __listOfSetSourceRequest
    class List____listOfSetSourceRequest
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::SetSourceRequest.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SetSourceRequest
    class SetSourceRequest
      def self.build(input)
        data = {}
        data['decryption'] = Builders::Encryption.build(input[:decryption]) unless input[:decryption].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['entitlementArn'] = input[:entitlement_arn] unless input[:entitlement_arn].nil?
        data['ingestPort'] = input[:ingest_port] unless input[:ingest_port].nil?
        data['maxBitrate'] = input[:max_bitrate] unless input[:max_bitrate].nil?
        data['maxLatency'] = input[:max_latency] unless input[:max_latency].nil?
        data['maxSyncBuffer'] = input[:max_sync_buffer] unless input[:max_sync_buffer].nil?
        data['mediaStreamSourceConfigurations'] = Builders::List____listOfMediaStreamSourceConfigurationRequest.build(input[:media_stream_source_configurations]) unless input[:media_stream_source_configurations].nil?
        data['minLatency'] = input[:min_latency] unless input[:min_latency].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['protocol'] = input[:protocol] unless input[:protocol].nil?
        data['senderControlPort'] = input[:sender_control_port] unless input[:sender_control_port].nil?
        data['senderIpAddress'] = input[:sender_ip_address] unless input[:sender_ip_address].nil?
        data['streamId'] = input[:stream_id] unless input[:stream_id].nil?
        data['vpcInterfaceName'] = input[:vpc_interface_name] unless input[:vpc_interface_name].nil?
        data['whitelistCidr'] = input[:whitelist_cidr] unless input[:whitelist_cidr].nil?
        data
      end
    end

    # List Builder for __listOfMediaStreamSourceConfigurationRequest
    class List____listOfMediaStreamSourceConfigurationRequest
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::MediaStreamSourceConfigurationRequest.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for MediaStreamSourceConfigurationRequest
    class MediaStreamSourceConfigurationRequest
      def self.build(input)
        data = {}
        data['encodingName'] = input[:encoding_name] unless input[:encoding_name].nil?
        data['inputConfigurations'] = Builders::List____listOfInputConfigurationRequest.build(input[:input_configurations]) unless input[:input_configurations].nil?
        data['mediaStreamName'] = input[:media_stream_name] unless input[:media_stream_name].nil?
        data
      end
    end

    # List Builder for __listOfInputConfigurationRequest
    class List____listOfInputConfigurationRequest
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::InputConfigurationRequest.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for InputConfigurationRequest
    class InputConfigurationRequest
      def self.build(input)
        data = {}
        data['inputPort'] = input[:input_port] unless input[:input_port].nil?
        data['interface'] = Builders::InterfaceRequest.build(input[:interface]) unless input[:interface].nil?
        data
      end
    end

    # Operation Builder for AddFlowVpcInterfaces
    class AddFlowVpcInterfaces
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:flow_arn].to_s.empty?
          raise ArgumentError, "HTTP label :flow_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/flows/%<FlowArn>s/vpcInterfaces',
            FlowArn: Hearth::HTTP.uri_escape(input[:flow_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['vpcInterfaces'] = Builders::List____listOfVpcInterfaceRequest.build(input[:vpc_interfaces]) unless input[:vpc_interfaces].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for __listOfVpcInterfaceRequest
    class List____listOfVpcInterfaceRequest
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::VpcInterfaceRequest.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for VpcInterfaceRequest
    class VpcInterfaceRequest
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['networkInterfaceType'] = input[:network_interface_type] unless input[:network_interface_type].nil?
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['securityGroupIds'] = Builders::List____listOf__string.build(input[:security_group_ids]) unless input[:security_group_ids].nil?
        data['subnetId'] = input[:subnet_id] unless input[:subnet_id].nil?
        data
      end
    end

    # Operation Builder for CreateFlow
    class CreateFlow
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v1/flows')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['availabilityZone'] = input[:availability_zone] unless input[:availability_zone].nil?
        data['entitlements'] = Builders::List____listOfGrantEntitlementRequest.build(input[:entitlements]) unless input[:entitlements].nil?
        data['mediaStreams'] = Builders::List____listOfAddMediaStreamRequest.build(input[:media_streams]) unless input[:media_streams].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['outputs'] = Builders::List____listOfAddOutputRequest.build(input[:outputs]) unless input[:outputs].nil?
        data['source'] = Builders::SetSourceRequest.build(input[:source]) unless input[:source].nil?
        data['sourceFailoverConfig'] = Builders::FailoverConfig.build(input[:source_failover_config]) unless input[:source_failover_config].nil?
        data['sources'] = Builders::List____listOfSetSourceRequest.build(input[:sources]) unless input[:sources].nil?
        data['vpcInterfaces'] = Builders::List____listOfVpcInterfaceRequest.build(input[:vpc_interfaces]) unless input[:vpc_interfaces].nil?
        data['maintenance'] = Builders::AddMaintenance.build(input[:maintenance]) unless input[:maintenance].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for AddMaintenance
    class AddMaintenance
      def self.build(input)
        data = {}
        data['maintenanceDay'] = input[:maintenance_day] unless input[:maintenance_day].nil?
        data['maintenanceStartHour'] = input[:maintenance_start_hour] unless input[:maintenance_start_hour].nil?
        data
      end
    end

    # Structure Builder for FailoverConfig
    class FailoverConfig
      def self.build(input)
        data = {}
        data['failoverMode'] = input[:failover_mode] unless input[:failover_mode].nil?
        data['recoveryWindow'] = input[:recovery_window] unless input[:recovery_window].nil?
        data['sourcePriority'] = Builders::SourcePriority.build(input[:source_priority]) unless input[:source_priority].nil?
        data['state'] = input[:state] unless input[:state].nil?
        data
      end
    end

    # Structure Builder for SourcePriority
    class SourcePriority
      def self.build(input)
        data = {}
        data['primarySource'] = input[:primary_source] unless input[:primary_source].nil?
        data
      end
    end

    # List Builder for __listOfGrantEntitlementRequest
    class List____listOfGrantEntitlementRequest
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::GrantEntitlementRequest.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for GrantEntitlementRequest
    class GrantEntitlementRequest
      def self.build(input)
        data = {}
        data['dataTransferSubscriberFeePercent'] = input[:data_transfer_subscriber_fee_percent] unless input[:data_transfer_subscriber_fee_percent].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['encryption'] = Builders::Encryption.build(input[:encryption]) unless input[:encryption].nil?
        data['entitlementStatus'] = input[:entitlement_status] unless input[:entitlement_status].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['subscribers'] = Builders::List____listOf__string.build(input[:subscribers]) unless input[:subscribers].nil?
        data
      end
    end

    # Operation Builder for DeleteFlow
    class DeleteFlow
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:flow_arn].to_s.empty?
          raise ArgumentError, "HTTP label :flow_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/flows/%<FlowArn>s',
            FlowArn: Hearth::HTTP.uri_escape(input[:flow_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeFlow
    class DescribeFlow
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:flow_arn].to_s.empty?
          raise ArgumentError, "HTTP label :flow_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/flows/%<FlowArn>s',
            FlowArn: Hearth::HTTP.uri_escape(input[:flow_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeOffering
    class DescribeOffering
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:offering_arn].to_s.empty?
          raise ArgumentError, "HTTP label :offering_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/offerings/%<OfferingArn>s',
            OfferingArn: Hearth::HTTP.uri_escape(input[:offering_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeReservation
    class DescribeReservation
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:reservation_arn].to_s.empty?
          raise ArgumentError, "HTTP label :reservation_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/reservations/%<ReservationArn>s',
            ReservationArn: Hearth::HTTP.uri_escape(input[:reservation_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GrantFlowEntitlements
    class GrantFlowEntitlements
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:flow_arn].to_s.empty?
          raise ArgumentError, "HTTP label :flow_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/flows/%<FlowArn>s/entitlements',
            FlowArn: Hearth::HTTP.uri_escape(input[:flow_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['entitlements'] = Builders::List____listOfGrantEntitlementRequest.build(input[:entitlements]) unless input[:entitlements].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListEntitlements
    class ListEntitlements
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/v1/entitlements')
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListFlows
    class ListFlows
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/v1/flows')
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListOfferings
    class ListOfferings
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/v1/offerings')
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListReservations
    class ListReservations
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/v1/reservations')
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

    # Operation Builder for PurchaseOffering
    class PurchaseOffering
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:offering_arn].to_s.empty?
          raise ArgumentError, "HTTP label :offering_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/offerings/%<OfferingArn>s',
            OfferingArn: Hearth::HTTP.uri_escape(input[:offering_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['reservationName'] = input[:reservation_name] unless input[:reservation_name].nil?
        data['start'] = input[:start] unless input[:start].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RemoveFlowMediaStream
    class RemoveFlowMediaStream
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:flow_arn].to_s.empty?
          raise ArgumentError, "HTTP label :flow_arn cannot be nil or empty."
        end
        if input[:media_stream_name].to_s.empty?
          raise ArgumentError, "HTTP label :media_stream_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/flows/%<FlowArn>s/mediaStreams/%<MediaStreamName>s',
            FlowArn: Hearth::HTTP.uri_escape(input[:flow_arn].to_s),
            MediaStreamName: Hearth::HTTP.uri_escape(input[:media_stream_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for RemoveFlowOutput
    class RemoveFlowOutput
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:flow_arn].to_s.empty?
          raise ArgumentError, "HTTP label :flow_arn cannot be nil or empty."
        end
        if input[:output_arn].to_s.empty?
          raise ArgumentError, "HTTP label :output_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/flows/%<FlowArn>s/outputs/%<OutputArn>s',
            FlowArn: Hearth::HTTP.uri_escape(input[:flow_arn].to_s),
            OutputArn: Hearth::HTTP.uri_escape(input[:output_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for RemoveFlowSource
    class RemoveFlowSource
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:flow_arn].to_s.empty?
          raise ArgumentError, "HTTP label :flow_arn cannot be nil or empty."
        end
        if input[:source_arn].to_s.empty?
          raise ArgumentError, "HTTP label :source_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/flows/%<FlowArn>s/source/%<SourceArn>s',
            FlowArn: Hearth::HTTP.uri_escape(input[:flow_arn].to_s),
            SourceArn: Hearth::HTTP.uri_escape(input[:source_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for RemoveFlowVpcInterface
    class RemoveFlowVpcInterface
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:flow_arn].to_s.empty?
          raise ArgumentError, "HTTP label :flow_arn cannot be nil or empty."
        end
        if input[:vpc_interface_name].to_s.empty?
          raise ArgumentError, "HTTP label :vpc_interface_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/flows/%<FlowArn>s/vpcInterfaces/%<VpcInterfaceName>s',
            FlowArn: Hearth::HTTP.uri_escape(input[:flow_arn].to_s),
            VpcInterfaceName: Hearth::HTTP.uri_escape(input[:vpc_interface_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for RevokeFlowEntitlement
    class RevokeFlowEntitlement
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:entitlement_arn].to_s.empty?
          raise ArgumentError, "HTTP label :entitlement_arn cannot be nil or empty."
        end
        if input[:flow_arn].to_s.empty?
          raise ArgumentError, "HTTP label :flow_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/flows/%<FlowArn>s/entitlements/%<EntitlementArn>s',
            EntitlementArn: Hearth::HTTP.uri_escape(input[:entitlement_arn].to_s),
            FlowArn: Hearth::HTTP.uri_escape(input[:flow_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for StartFlow
    class StartFlow
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:flow_arn].to_s.empty?
          raise ArgumentError, "HTTP label :flow_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/flows/start/%<FlowArn>s',
            FlowArn: Hearth::HTTP.uri_escape(input[:flow_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for StopFlow
    class StopFlow
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:flow_arn].to_s.empty?
          raise ArgumentError, "HTTP label :flow_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/flows/stop/%<FlowArn>s',
            FlowArn: Hearth::HTTP.uri_escape(input[:flow_arn].to_s)
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

    # Operation Builder for UpdateFlow
    class UpdateFlow
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:flow_arn].to_s.empty?
          raise ArgumentError, "HTTP label :flow_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/flows/%<FlowArn>s',
            FlowArn: Hearth::HTTP.uri_escape(input[:flow_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['sourceFailoverConfig'] = Builders::UpdateFailoverConfig.build(input[:source_failover_config]) unless input[:source_failover_config].nil?
        data['maintenance'] = Builders::UpdateMaintenance.build(input[:maintenance]) unless input[:maintenance].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for UpdateMaintenance
    class UpdateMaintenance
      def self.build(input)
        data = {}
        data['maintenanceDay'] = input[:maintenance_day] unless input[:maintenance_day].nil?
        data['maintenanceScheduledDate'] = input[:maintenance_scheduled_date] unless input[:maintenance_scheduled_date].nil?
        data['maintenanceStartHour'] = input[:maintenance_start_hour] unless input[:maintenance_start_hour].nil?
        data
      end
    end

    # Structure Builder for UpdateFailoverConfig
    class UpdateFailoverConfig
      def self.build(input)
        data = {}
        data['failoverMode'] = input[:failover_mode] unless input[:failover_mode].nil?
        data['recoveryWindow'] = input[:recovery_window] unless input[:recovery_window].nil?
        data['sourcePriority'] = Builders::SourcePriority.build(input[:source_priority]) unless input[:source_priority].nil?
        data['state'] = input[:state] unless input[:state].nil?
        data
      end
    end

    # Operation Builder for UpdateFlowEntitlement
    class UpdateFlowEntitlement
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:entitlement_arn].to_s.empty?
          raise ArgumentError, "HTTP label :entitlement_arn cannot be nil or empty."
        end
        if input[:flow_arn].to_s.empty?
          raise ArgumentError, "HTTP label :flow_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/flows/%<FlowArn>s/entitlements/%<EntitlementArn>s',
            EntitlementArn: Hearth::HTTP.uri_escape(input[:entitlement_arn].to_s),
            FlowArn: Hearth::HTTP.uri_escape(input[:flow_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['description'] = input[:description] unless input[:description].nil?
        data['encryption'] = Builders::UpdateEncryption.build(input[:encryption]) unless input[:encryption].nil?
        data['entitlementStatus'] = input[:entitlement_status] unless input[:entitlement_status].nil?
        data['subscribers'] = Builders::List____listOf__string.build(input[:subscribers]) unless input[:subscribers].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for UpdateEncryption
    class UpdateEncryption
      def self.build(input)
        data = {}
        data['algorithm'] = input[:algorithm] unless input[:algorithm].nil?
        data['constantInitializationVector'] = input[:constant_initialization_vector] unless input[:constant_initialization_vector].nil?
        data['deviceId'] = input[:device_id] unless input[:device_id].nil?
        data['keyType'] = input[:key_type] unless input[:key_type].nil?
        data['region'] = input[:region] unless input[:region].nil?
        data['resourceId'] = input[:resource_id] unless input[:resource_id].nil?
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['secretArn'] = input[:secret_arn] unless input[:secret_arn].nil?
        data['url'] = input[:url] unless input[:url].nil?
        data
      end
    end

    # Operation Builder for UpdateFlowMediaStream
    class UpdateFlowMediaStream
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:flow_arn].to_s.empty?
          raise ArgumentError, "HTTP label :flow_arn cannot be nil or empty."
        end
        if input[:media_stream_name].to_s.empty?
          raise ArgumentError, "HTTP label :media_stream_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/flows/%<FlowArn>s/mediaStreams/%<MediaStreamName>s',
            FlowArn: Hearth::HTTP.uri_escape(input[:flow_arn].to_s),
            MediaStreamName: Hearth::HTTP.uri_escape(input[:media_stream_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['attributes'] = Builders::MediaStreamAttributesRequest.build(input[:attributes]) unless input[:attributes].nil?
        data['clockRate'] = input[:clock_rate] unless input[:clock_rate].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['mediaStreamType'] = input[:media_stream_type] unless input[:media_stream_type].nil?
        data['videoFormat'] = input[:video_format] unless input[:video_format].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateFlowOutput
    class UpdateFlowOutput
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:flow_arn].to_s.empty?
          raise ArgumentError, "HTTP label :flow_arn cannot be nil or empty."
        end
        if input[:output_arn].to_s.empty?
          raise ArgumentError, "HTTP label :output_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/flows/%<FlowArn>s/outputs/%<OutputArn>s',
            FlowArn: Hearth::HTTP.uri_escape(input[:flow_arn].to_s),
            OutputArn: Hearth::HTTP.uri_escape(input[:output_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['cidrAllowList'] = Builders::List____listOf__string.build(input[:cidr_allow_list]) unless input[:cidr_allow_list].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['destination'] = input[:destination] unless input[:destination].nil?
        data['encryption'] = Builders::UpdateEncryption.build(input[:encryption]) unless input[:encryption].nil?
        data['maxLatency'] = input[:max_latency] unless input[:max_latency].nil?
        data['mediaStreamOutputConfigurations'] = Builders::List____listOfMediaStreamOutputConfigurationRequest.build(input[:media_stream_output_configurations]) unless input[:media_stream_output_configurations].nil?
        data['minLatency'] = input[:min_latency] unless input[:min_latency].nil?
        data['port'] = input[:port] unless input[:port].nil?
        data['protocol'] = input[:protocol] unless input[:protocol].nil?
        data['remoteId'] = input[:remote_id] unless input[:remote_id].nil?
        data['senderControlPort'] = input[:sender_control_port] unless input[:sender_control_port].nil?
        data['senderIpAddress'] = input[:sender_ip_address] unless input[:sender_ip_address].nil?
        data['smoothingLatency'] = input[:smoothing_latency] unless input[:smoothing_latency].nil?
        data['streamId'] = input[:stream_id] unless input[:stream_id].nil?
        data['vpcInterfaceAttachment'] = Builders::VpcInterfaceAttachment.build(input[:vpc_interface_attachment]) unless input[:vpc_interface_attachment].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateFlowSource
    class UpdateFlowSource
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:flow_arn].to_s.empty?
          raise ArgumentError, "HTTP label :flow_arn cannot be nil or empty."
        end
        if input[:source_arn].to_s.empty?
          raise ArgumentError, "HTTP label :source_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/flows/%<FlowArn>s/source/%<SourceArn>s',
            FlowArn: Hearth::HTTP.uri_escape(input[:flow_arn].to_s),
            SourceArn: Hearth::HTTP.uri_escape(input[:source_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['decryption'] = Builders::UpdateEncryption.build(input[:decryption]) unless input[:decryption].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['entitlementArn'] = input[:entitlement_arn] unless input[:entitlement_arn].nil?
        data['ingestPort'] = input[:ingest_port] unless input[:ingest_port].nil?
        data['maxBitrate'] = input[:max_bitrate] unless input[:max_bitrate].nil?
        data['maxLatency'] = input[:max_latency] unless input[:max_latency].nil?
        data['maxSyncBuffer'] = input[:max_sync_buffer] unless input[:max_sync_buffer].nil?
        data['mediaStreamSourceConfigurations'] = Builders::List____listOfMediaStreamSourceConfigurationRequest.build(input[:media_stream_source_configurations]) unless input[:media_stream_source_configurations].nil?
        data['minLatency'] = input[:min_latency] unless input[:min_latency].nil?
        data['protocol'] = input[:protocol] unless input[:protocol].nil?
        data['senderControlPort'] = input[:sender_control_port] unless input[:sender_control_port].nil?
        data['senderIpAddress'] = input[:sender_ip_address] unless input[:sender_ip_address].nil?
        data['streamId'] = input[:stream_id] unless input[:stream_id].nil?
        data['vpcInterfaceName'] = input[:vpc_interface_name] unless input[:vpc_interface_name].nil?
        data['whitelistCidr'] = input[:whitelist_cidr] unless input[:whitelist_cidr].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
