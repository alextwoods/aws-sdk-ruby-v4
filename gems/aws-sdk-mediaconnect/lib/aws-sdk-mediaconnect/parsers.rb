# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::MediaConnect
  module Parsers

    # Operation Parser for AddFlowMediaStreams
    class AddFlowMediaStreams
      def self.parse(http_resp)
        data = Types::AddFlowMediaStreamsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.flow_arn = map['flowArn']
        data.media_streams = (Parsers::List____listOfMediaStream.parse(map['mediaStreams']) unless map['mediaStreams'].nil?)
        data
      end
    end

    class List____listOfMediaStream
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::MediaStream.parse(value) unless value.nil?
        end
        data
      end
    end

    class MediaStream
      def self.parse(map)
        data = Types::MediaStream.new
        data.attributes = (Parsers::MediaStreamAttributes.parse(map['attributes']) unless map['attributes'].nil?)
        data.clock_rate = map['clockRate']
        data.description = map['description']
        data.fmt = map['fmt']
        data.media_stream_id = map['mediaStreamId']
        data.media_stream_name = map['mediaStreamName']
        data.media_stream_type = map['mediaStreamType']
        data.video_format = map['videoFormat']
        return data
      end
    end

    class MediaStreamAttributes
      def self.parse(map)
        data = Types::MediaStreamAttributes.new
        data.fmtp = (Parsers::Fmtp.parse(map['fmtp']) unless map['fmtp'].nil?)
        data.lang = map['lang']
        return data
      end
    end

    class Fmtp
      def self.parse(map)
        data = Types::Fmtp.new
        data.channel_order = map['channelOrder']
        data.colorimetry = map['colorimetry']
        data.exact_framerate = map['exactFramerate']
        data.par = map['par']
        data.range = map['range']
        data.scan_mode = map['scanMode']
        data.tcs = map['tcs']
        return data
      end
    end

    # Error Parser for BadRequestException
    class BadRequestException
      def self.parse(http_resp)
        data = Types::BadRequestException.new
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

    # Error Parser for ServiceUnavailableException
    class ServiceUnavailableException
      def self.parse(http_resp)
        data = Types::ServiceUnavailableException.new
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

    # Error Parser for ForbiddenException
    class ForbiddenException
      def self.parse(http_resp)
        data = Types::ForbiddenException.new
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

    # Operation Parser for AddFlowOutputs
    class AddFlowOutputs
      def self.parse(http_resp)
        data = Types::AddFlowOutputsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.flow_arn = map['flowArn']
        data.outputs = (Parsers::List____listOfOutput.parse(map['outputs']) unless map['outputs'].nil?)
        data
      end
    end

    class List____listOfOutput
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Output.parse(value) unless value.nil?
        end
        data
      end
    end

    class Output
      def self.parse(map)
        data = Types::Output.new
        data.data_transfer_subscriber_fee_percent = map['dataTransferSubscriberFeePercent']
        data.description = map['description']
        data.destination = map['destination']
        data.encryption = (Parsers::Encryption.parse(map['encryption']) unless map['encryption'].nil?)
        data.entitlement_arn = map['entitlementArn']
        data.listener_address = map['listenerAddress']
        data.media_live_input_arn = map['mediaLiveInputArn']
        data.media_stream_output_configurations = (Parsers::List____listOfMediaStreamOutputConfiguration.parse(map['mediaStreamOutputConfigurations']) unless map['mediaStreamOutputConfigurations'].nil?)
        data.name = map['name']
        data.output_arn = map['outputArn']
        data.port = map['port']
        data.transport = (Parsers::Transport.parse(map['transport']) unless map['transport'].nil?)
        data.vpc_interface_attachment = (Parsers::VpcInterfaceAttachment.parse(map['vpcInterfaceAttachment']) unless map['vpcInterfaceAttachment'].nil?)
        return data
      end
    end

    class VpcInterfaceAttachment
      def self.parse(map)
        data = Types::VpcInterfaceAttachment.new
        data.vpc_interface_name = map['vpcInterfaceName']
        return data
      end
    end

    class Transport
      def self.parse(map)
        data = Types::Transport.new
        data.cidr_allow_list = (Parsers::List____listOf__string.parse(map['cidrAllowList']) unless map['cidrAllowList'].nil?)
        data.max_bitrate = map['maxBitrate']
        data.max_latency = map['maxLatency']
        data.max_sync_buffer = map['maxSyncBuffer']
        data.min_latency = map['minLatency']
        data.protocol = map['protocol']
        data.remote_id = map['remoteId']
        data.sender_control_port = map['senderControlPort']
        data.sender_ip_address = map['senderIpAddress']
        data.smoothing_latency = map['smoothingLatency']
        data.stream_id = map['streamId']
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

    class List____listOfMediaStreamOutputConfiguration
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::MediaStreamOutputConfiguration.parse(value) unless value.nil?
        end
        data
      end
    end

    class MediaStreamOutputConfiguration
      def self.parse(map)
        data = Types::MediaStreamOutputConfiguration.new
        data.destination_configurations = (Parsers::List____listOfDestinationConfiguration.parse(map['destinationConfigurations']) unless map['destinationConfigurations'].nil?)
        data.encoding_name = map['encodingName']
        data.encoding_parameters = (Parsers::EncodingParameters.parse(map['encodingParameters']) unless map['encodingParameters'].nil?)
        data.media_stream_name = map['mediaStreamName']
        return data
      end
    end

    class EncodingParameters
      def self.parse(map)
        data = Types::EncodingParameters.new
        data.compression_factor = Hearth::NumberHelper.deserialize(map['compressionFactor'])
        data.encoder_profile = map['encoderProfile']
        return data
      end
    end

    class List____listOfDestinationConfiguration
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::DestinationConfiguration.parse(value) unless value.nil?
        end
        data
      end
    end

    class DestinationConfiguration
      def self.parse(map)
        data = Types::DestinationConfiguration.new
        data.destination_ip = map['destinationIp']
        data.destination_port = map['destinationPort']
        data.interface = (Parsers::Interface.parse(map['interface']) unless map['interface'].nil?)
        data.outbound_ip = map['outboundIp']
        return data
      end
    end

    class Interface
      def self.parse(map)
        data = Types::Interface.new
        data.name = map['name']
        return data
      end
    end

    class Encryption
      def self.parse(map)
        data = Types::Encryption.new
        data.algorithm = map['algorithm']
        data.constant_initialization_vector = map['constantInitializationVector']
        data.device_id = map['deviceId']
        data.key_type = map['keyType']
        data.region = map['region']
        data.resource_id = map['resourceId']
        data.role_arn = map['roleArn']
        data.secret_arn = map['secretArn']
        data.url = map['url']
        return data
      end
    end

    # Error Parser for AddFlowOutputs420Exception
    class AddFlowOutputs420Exception
      def self.parse(http_resp)
        data = Types::AddFlowOutputs420Exception.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for AddFlowSources
    class AddFlowSources
      def self.parse(http_resp)
        data = Types::AddFlowSourcesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.flow_arn = map['flowArn']
        data.sources = (Parsers::List____listOfSource.parse(map['sources']) unless map['sources'].nil?)
        data
      end
    end

    class List____listOfSource
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Source.parse(value) unless value.nil?
        end
        data
      end
    end

    class Source
      def self.parse(map)
        data = Types::Source.new
        data.data_transfer_subscriber_fee_percent = map['dataTransferSubscriberFeePercent']
        data.decryption = (Parsers::Encryption.parse(map['decryption']) unless map['decryption'].nil?)
        data.description = map['description']
        data.entitlement_arn = map['entitlementArn']
        data.ingest_ip = map['ingestIp']
        data.ingest_port = map['ingestPort']
        data.media_stream_source_configurations = (Parsers::List____listOfMediaStreamSourceConfiguration.parse(map['mediaStreamSourceConfigurations']) unless map['mediaStreamSourceConfigurations'].nil?)
        data.name = map['name']
        data.sender_control_port = map['senderControlPort']
        data.sender_ip_address = map['senderIpAddress']
        data.source_arn = map['sourceArn']
        data.transport = (Parsers::Transport.parse(map['transport']) unless map['transport'].nil?)
        data.vpc_interface_name = map['vpcInterfaceName']
        data.whitelist_cidr = map['whitelistCidr']
        return data
      end
    end

    class List____listOfMediaStreamSourceConfiguration
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::MediaStreamSourceConfiguration.parse(value) unless value.nil?
        end
        data
      end
    end

    class MediaStreamSourceConfiguration
      def self.parse(map)
        data = Types::MediaStreamSourceConfiguration.new
        data.encoding_name = map['encodingName']
        data.input_configurations = (Parsers::List____listOfInputConfiguration.parse(map['inputConfigurations']) unless map['inputConfigurations'].nil?)
        data.media_stream_name = map['mediaStreamName']
        return data
      end
    end

    class List____listOfInputConfiguration
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::InputConfiguration.parse(value) unless value.nil?
        end
        data
      end
    end

    class InputConfiguration
      def self.parse(map)
        data = Types::InputConfiguration.new
        data.input_ip = map['inputIp']
        data.input_port = map['inputPort']
        data.interface = (Parsers::Interface.parse(map['interface']) unless map['interface'].nil?)
        return data
      end
    end

    # Operation Parser for AddFlowVpcInterfaces
    class AddFlowVpcInterfaces
      def self.parse(http_resp)
        data = Types::AddFlowVpcInterfacesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.flow_arn = map['flowArn']
        data.vpc_interfaces = (Parsers::List____listOfVpcInterface.parse(map['vpcInterfaces']) unless map['vpcInterfaces'].nil?)
        data
      end
    end

    class List____listOfVpcInterface
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::VpcInterface.parse(value) unless value.nil?
        end
        data
      end
    end

    class VpcInterface
      def self.parse(map)
        data = Types::VpcInterface.new
        data.name = map['name']
        data.network_interface_ids = (Parsers::List____listOf__string.parse(map['networkInterfaceIds']) unless map['networkInterfaceIds'].nil?)
        data.network_interface_type = map['networkInterfaceType']
        data.role_arn = map['roleArn']
        data.security_group_ids = (Parsers::List____listOf__string.parse(map['securityGroupIds']) unless map['securityGroupIds'].nil?)
        data.subnet_id = map['subnetId']
        return data
      end
    end

    # Operation Parser for CreateFlow
    class CreateFlow
      def self.parse(http_resp)
        data = Types::CreateFlowOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.flow = (Parsers::Flow.parse(map['flow']) unless map['flow'].nil?)
        data
      end
    end

    class Flow
      def self.parse(map)
        data = Types::Flow.new
        data.availability_zone = map['availabilityZone']
        data.description = map['description']
        data.egress_ip = map['egressIp']
        data.entitlements = (Parsers::List____listOfEntitlement.parse(map['entitlements']) unless map['entitlements'].nil?)
        data.flow_arn = map['flowArn']
        data.media_streams = (Parsers::List____listOfMediaStream.parse(map['mediaStreams']) unless map['mediaStreams'].nil?)
        data.name = map['name']
        data.outputs = (Parsers::List____listOfOutput.parse(map['outputs']) unless map['outputs'].nil?)
        data.source = (Parsers::Source.parse(map['source']) unless map['source'].nil?)
        data.source_failover_config = (Parsers::FailoverConfig.parse(map['sourceFailoverConfig']) unless map['sourceFailoverConfig'].nil?)
        data.sources = (Parsers::List____listOfSource.parse(map['sources']) unless map['sources'].nil?)
        data.status = map['status']
        data.vpc_interfaces = (Parsers::List____listOfVpcInterface.parse(map['vpcInterfaces']) unless map['vpcInterfaces'].nil?)
        data.maintenance = (Parsers::Maintenance.parse(map['maintenance']) unless map['maintenance'].nil?)
        return data
      end
    end

    class Maintenance
      def self.parse(map)
        data = Types::Maintenance.new
        data.maintenance_day = map['maintenanceDay']
        data.maintenance_deadline = map['maintenanceDeadline']
        data.maintenance_scheduled_date = map['maintenanceScheduledDate']
        data.maintenance_start_hour = map['maintenanceStartHour']
        return data
      end
    end

    class FailoverConfig
      def self.parse(map)
        data = Types::FailoverConfig.new
        data.failover_mode = map['failoverMode']
        data.recovery_window = map['recoveryWindow']
        data.source_priority = (Parsers::SourcePriority.parse(map['sourcePriority']) unless map['sourcePriority'].nil?)
        data.state = map['state']
        return data
      end
    end

    class SourcePriority
      def self.parse(map)
        data = Types::SourcePriority.new
        data.primary_source = map['primarySource']
        return data
      end
    end

    class List____listOfEntitlement
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Entitlement.parse(value) unless value.nil?
        end
        data
      end
    end

    class Entitlement
      def self.parse(map)
        data = Types::Entitlement.new
        data.data_transfer_subscriber_fee_percent = map['dataTransferSubscriberFeePercent']
        data.description = map['description']
        data.encryption = (Parsers::Encryption.parse(map['encryption']) unless map['encryption'].nil?)
        data.entitlement_arn = map['entitlementArn']
        data.entitlement_status = map['entitlementStatus']
        data.name = map['name']
        data.subscribers = (Parsers::List____listOf__string.parse(map['subscribers']) unless map['subscribers'].nil?)
        return data
      end
    end

    # Error Parser for CreateFlow420Exception
    class CreateFlow420Exception
      def self.parse(http_resp)
        data = Types::CreateFlow420Exception.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for DeleteFlow
    class DeleteFlow
      def self.parse(http_resp)
        data = Types::DeleteFlowOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.flow_arn = map['flowArn']
        data.status = map['status']
        data
      end
    end

    # Operation Parser for DescribeFlow
    class DescribeFlow
      def self.parse(http_resp)
        data = Types::DescribeFlowOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.flow = (Parsers::Flow.parse(map['flow']) unless map['flow'].nil?)
        data.messages = (Parsers::Messages.parse(map['messages']) unless map['messages'].nil?)
        data
      end
    end

    class Messages
      def self.parse(map)
        data = Types::Messages.new
        data.errors = (Parsers::List____listOf__string.parse(map['errors']) unless map['errors'].nil?)
        return data
      end
    end

    # Operation Parser for DescribeOffering
    class DescribeOffering
      def self.parse(http_resp)
        data = Types::DescribeOfferingOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.offering = (Parsers::Offering.parse(map['offering']) unless map['offering'].nil?)
        data
      end
    end

    class Offering
      def self.parse(map)
        data = Types::Offering.new
        data.currency_code = map['currencyCode']
        data.duration = map['duration']
        data.duration_units = map['durationUnits']
        data.offering_arn = map['offeringArn']
        data.offering_description = map['offeringDescription']
        data.price_per_unit = map['pricePerUnit']
        data.price_units = map['priceUnits']
        data.resource_specification = (Parsers::ResourceSpecification.parse(map['resourceSpecification']) unless map['resourceSpecification'].nil?)
        return data
      end
    end

    class ResourceSpecification
      def self.parse(map)
        data = Types::ResourceSpecification.new
        data.reserved_bitrate = map['reservedBitrate']
        data.resource_type = map['resourceType']
        return data
      end
    end

    # Operation Parser for DescribeReservation
    class DescribeReservation
      def self.parse(http_resp)
        data = Types::DescribeReservationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.reservation = (Parsers::Reservation.parse(map['reservation']) unless map['reservation'].nil?)
        data
      end
    end

    class Reservation
      def self.parse(map)
        data = Types::Reservation.new
        data.currency_code = map['currencyCode']
        data.duration = map['duration']
        data.duration_units = map['durationUnits']
        data.end = map['end']
        data.offering_arn = map['offeringArn']
        data.offering_description = map['offeringDescription']
        data.price_per_unit = map['pricePerUnit']
        data.price_units = map['priceUnits']
        data.reservation_arn = map['reservationArn']
        data.reservation_name = map['reservationName']
        data.reservation_state = map['reservationState']
        data.resource_specification = (Parsers::ResourceSpecification.parse(map['resourceSpecification']) unless map['resourceSpecification'].nil?)
        data.start = map['start']
        return data
      end
    end

    # Operation Parser for GrantFlowEntitlements
    class GrantFlowEntitlements
      def self.parse(http_resp)
        data = Types::GrantFlowEntitlementsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.entitlements = (Parsers::List____listOfEntitlement.parse(map['entitlements']) unless map['entitlements'].nil?)
        data.flow_arn = map['flowArn']
        data
      end
    end

    # Error Parser for GrantFlowEntitlements420Exception
    class GrantFlowEntitlements420Exception
      def self.parse(http_resp)
        data = Types::GrantFlowEntitlements420Exception.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for ListEntitlements
    class ListEntitlements
      def self.parse(http_resp)
        data = Types::ListEntitlementsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.entitlements = (Parsers::List____listOfListedEntitlement.parse(map['entitlements']) unless map['entitlements'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class List____listOfListedEntitlement
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ListedEntitlement.parse(value) unless value.nil?
        end
        data
      end
    end

    class ListedEntitlement
      def self.parse(map)
        data = Types::ListedEntitlement.new
        data.data_transfer_subscriber_fee_percent = map['dataTransferSubscriberFeePercent']
        data.entitlement_arn = map['entitlementArn']
        data.entitlement_name = map['entitlementName']
        return data
      end
    end

    # Operation Parser for ListFlows
    class ListFlows
      def self.parse(http_resp)
        data = Types::ListFlowsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.flows = (Parsers::List____listOfListedFlow.parse(map['flows']) unless map['flows'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class List____listOfListedFlow
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ListedFlow.parse(value) unless value.nil?
        end
        data
      end
    end

    class ListedFlow
      def self.parse(map)
        data = Types::ListedFlow.new
        data.availability_zone = map['availabilityZone']
        data.description = map['description']
        data.flow_arn = map['flowArn']
        data.name = map['name']
        data.source_type = map['sourceType']
        data.status = map['status']
        data.maintenance = (Parsers::Maintenance.parse(map['maintenance']) unless map['maintenance'].nil?)
        return data
      end
    end

    # Operation Parser for ListOfferings
    class ListOfferings
      def self.parse(http_resp)
        data = Types::ListOfferingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['nextToken']
        data.offerings = (Parsers::List____listOfOffering.parse(map['offerings']) unless map['offerings'].nil?)
        data
      end
    end

    class List____listOfOffering
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Offering.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListReservations
    class ListReservations
      def self.parse(http_resp)
        data = Types::ListReservationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['nextToken']
        data.reservations = (Parsers::List____listOfReservation.parse(map['reservations']) unless map['reservations'].nil?)
        data
      end
    end

    class List____listOfReservation
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Reservation.parse(value) unless value.nil?
        end
        data
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

    # Operation Parser for PurchaseOffering
    class PurchaseOffering
      def self.parse(http_resp)
        data = Types::PurchaseOfferingOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.reservation = (Parsers::Reservation.parse(map['reservation']) unless map['reservation'].nil?)
        data
      end
    end

    # Operation Parser for RemoveFlowMediaStream
    class RemoveFlowMediaStream
      def self.parse(http_resp)
        data = Types::RemoveFlowMediaStreamOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.flow_arn = map['flowArn']
        data.media_stream_name = map['mediaStreamName']
        data
      end
    end

    # Operation Parser for RemoveFlowOutput
    class RemoveFlowOutput
      def self.parse(http_resp)
        data = Types::RemoveFlowOutputOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.flow_arn = map['flowArn']
        data.output_arn = map['outputArn']
        data
      end
    end

    # Operation Parser for RemoveFlowSource
    class RemoveFlowSource
      def self.parse(http_resp)
        data = Types::RemoveFlowSourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.flow_arn = map['flowArn']
        data.source_arn = map['sourceArn']
        data
      end
    end

    # Operation Parser for RemoveFlowVpcInterface
    class RemoveFlowVpcInterface
      def self.parse(http_resp)
        data = Types::RemoveFlowVpcInterfaceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.flow_arn = map['flowArn']
        data.non_deleted_network_interface_ids = (Parsers::List____listOf__string.parse(map['nonDeletedNetworkInterfaceIds']) unless map['nonDeletedNetworkInterfaceIds'].nil?)
        data.vpc_interface_name = map['vpcInterfaceName']
        data
      end
    end

    # Operation Parser for RevokeFlowEntitlement
    class RevokeFlowEntitlement
      def self.parse(http_resp)
        data = Types::RevokeFlowEntitlementOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.entitlement_arn = map['entitlementArn']
        data.flow_arn = map['flowArn']
        data
      end
    end

    # Operation Parser for StartFlow
    class StartFlow
      def self.parse(http_resp)
        data = Types::StartFlowOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.flow_arn = map['flowArn']
        data.status = map['status']
        data
      end
    end

    # Operation Parser for StopFlow
    class StopFlow
      def self.parse(http_resp)
        data = Types::StopFlowOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.flow_arn = map['flowArn']
        data.status = map['status']
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

    # Operation Parser for UpdateFlow
    class UpdateFlow
      def self.parse(http_resp)
        data = Types::UpdateFlowOperationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.flow = (Parsers::Flow.parse(map['flow']) unless map['flow'].nil?)
        data
      end
    end

    # Operation Parser for UpdateFlowEntitlement
    class UpdateFlowEntitlement
      def self.parse(http_resp)
        data = Types::UpdateFlowEntitlementOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.entitlement = (Parsers::Entitlement.parse(map['entitlement']) unless map['entitlement'].nil?)
        data.flow_arn = map['flowArn']
        data
      end
    end

    # Operation Parser for UpdateFlowMediaStream
    class UpdateFlowMediaStream
      def self.parse(http_resp)
        data = Types::UpdateFlowMediaStreamOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.flow_arn = map['flowArn']
        data.media_stream = (Parsers::MediaStream.parse(map['mediaStream']) unless map['mediaStream'].nil?)
        data
      end
    end

    # Operation Parser for UpdateFlowOutput
    class UpdateFlowOutput
      def self.parse(http_resp)
        data = Types::UpdateFlowOutputOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.flow_arn = map['flowArn']
        data.output = (Parsers::Output.parse(map['output']) unless map['output'].nil?)
        data
      end
    end

    # Operation Parser for UpdateFlowSource
    class UpdateFlowSource
      def self.parse(http_resp)
        data = Types::UpdateFlowSourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.flow_arn = map['flowArn']
        data.source = (Parsers::Source.parse(map['source']) unless map['source'].nil?)
        data
      end
    end
  end
end
