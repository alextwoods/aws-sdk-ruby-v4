# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::MediaConnect
  module Params

    module AddFlowMediaStreamsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddFlowMediaStreamsInput, context: context)
        type = Types::AddFlowMediaStreamsInput.new
        type.flow_arn = params[:flow_arn]
        type.media_streams = List____listOfAddMediaStreamRequest.build(params[:media_streams], context: "#{context}[:media_streams]") unless params[:media_streams].nil?
        type
      end
    end

    module AddFlowMediaStreamsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddFlowMediaStreamsOutput, context: context)
        type = Types::AddFlowMediaStreamsOutput.new
        type.flow_arn = params[:flow_arn]
        type.media_streams = List____listOfMediaStream.build(params[:media_streams], context: "#{context}[:media_streams]") unless params[:media_streams].nil?
        type
      end
    end

    module AddFlowOutputs420Exception
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddFlowOutputs420Exception, context: context)
        type = Types::AddFlowOutputs420Exception.new
        type.message = params[:message]
        type
      end
    end

    module AddFlowOutputsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddFlowOutputsInput, context: context)
        type = Types::AddFlowOutputsInput.new
        type.flow_arn = params[:flow_arn]
        type.outputs = List____listOfAddOutputRequest.build(params[:outputs], context: "#{context}[:outputs]") unless params[:outputs].nil?
        type
      end
    end

    module AddFlowOutputsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddFlowOutputsOutput, context: context)
        type = Types::AddFlowOutputsOutput.new
        type.flow_arn = params[:flow_arn]
        type.outputs = List____listOfOutput.build(params[:outputs], context: "#{context}[:outputs]") unless params[:outputs].nil?
        type
      end
    end

    module AddFlowSourcesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddFlowSourcesInput, context: context)
        type = Types::AddFlowSourcesInput.new
        type.flow_arn = params[:flow_arn]
        type.sources = List____listOfSetSourceRequest.build(params[:sources], context: "#{context}[:sources]") unless params[:sources].nil?
        type
      end
    end

    module AddFlowSourcesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddFlowSourcesOutput, context: context)
        type = Types::AddFlowSourcesOutput.new
        type.flow_arn = params[:flow_arn]
        type.sources = List____listOfSource.build(params[:sources], context: "#{context}[:sources]") unless params[:sources].nil?
        type
      end
    end

    module AddFlowVpcInterfacesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddFlowVpcInterfacesInput, context: context)
        type = Types::AddFlowVpcInterfacesInput.new
        type.flow_arn = params[:flow_arn]
        type.vpc_interfaces = List____listOfVpcInterfaceRequest.build(params[:vpc_interfaces], context: "#{context}[:vpc_interfaces]") unless params[:vpc_interfaces].nil?
        type
      end
    end

    module AddFlowVpcInterfacesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddFlowVpcInterfacesOutput, context: context)
        type = Types::AddFlowVpcInterfacesOutput.new
        type.flow_arn = params[:flow_arn]
        type.vpc_interfaces = List____listOfVpcInterface.build(params[:vpc_interfaces], context: "#{context}[:vpc_interfaces]") unless params[:vpc_interfaces].nil?
        type
      end
    end

    module AddMaintenance
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddMaintenance, context: context)
        type = Types::AddMaintenance.new
        type.maintenance_day = params[:maintenance_day]
        type.maintenance_start_hour = params[:maintenance_start_hour]
        type
      end
    end

    module AddMediaStreamRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddMediaStreamRequest, context: context)
        type = Types::AddMediaStreamRequest.new
        type.attributes = MediaStreamAttributesRequest.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type.clock_rate = params[:clock_rate]
        type.description = params[:description]
        type.media_stream_id = params[:media_stream_id]
        type.media_stream_name = params[:media_stream_name]
        type.media_stream_type = params[:media_stream_type]
        type.video_format = params[:video_format]
        type
      end
    end

    module AddOutputRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddOutputRequest, context: context)
        type = Types::AddOutputRequest.new
        type.cidr_allow_list = List____listOf__string.build(params[:cidr_allow_list], context: "#{context}[:cidr_allow_list]") unless params[:cidr_allow_list].nil?
        type.description = params[:description]
        type.destination = params[:destination]
        type.encryption = Encryption.build(params[:encryption], context: "#{context}[:encryption]") unless params[:encryption].nil?
        type.max_latency = params[:max_latency]
        type.media_stream_output_configurations = List____listOfMediaStreamOutputConfigurationRequest.build(params[:media_stream_output_configurations], context: "#{context}[:media_stream_output_configurations]") unless params[:media_stream_output_configurations].nil?
        type.min_latency = params[:min_latency]
        type.name = params[:name]
        type.port = params[:port]
        type.protocol = params[:protocol]
        type.remote_id = params[:remote_id]
        type.sender_control_port = params[:sender_control_port]
        type.smoothing_latency = params[:smoothing_latency]
        type.stream_id = params[:stream_id]
        type.vpc_interface_attachment = VpcInterfaceAttachment.build(params[:vpc_interface_attachment], context: "#{context}[:vpc_interface_attachment]") unless params[:vpc_interface_attachment].nil?
        type
      end
    end

    module BadRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BadRequestException, context: context)
        type = Types::BadRequestException.new
        type.message = params[:message]
        type
      end
    end

    module CreateFlow420Exception
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFlow420Exception, context: context)
        type = Types::CreateFlow420Exception.new
        type.message = params[:message]
        type
      end
    end

    module CreateFlowInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFlowInput, context: context)
        type = Types::CreateFlowInput.new
        type.availability_zone = params[:availability_zone]
        type.entitlements = List____listOfGrantEntitlementRequest.build(params[:entitlements], context: "#{context}[:entitlements]") unless params[:entitlements].nil?
        type.media_streams = List____listOfAddMediaStreamRequest.build(params[:media_streams], context: "#{context}[:media_streams]") unless params[:media_streams].nil?
        type.name = params[:name]
        type.outputs = List____listOfAddOutputRequest.build(params[:outputs], context: "#{context}[:outputs]") unless params[:outputs].nil?
        type.source = SetSourceRequest.build(params[:source], context: "#{context}[:source]") unless params[:source].nil?
        type.source_failover_config = FailoverConfig.build(params[:source_failover_config], context: "#{context}[:source_failover_config]") unless params[:source_failover_config].nil?
        type.sources = List____listOfSetSourceRequest.build(params[:sources], context: "#{context}[:sources]") unless params[:sources].nil?
        type.vpc_interfaces = List____listOfVpcInterfaceRequest.build(params[:vpc_interfaces], context: "#{context}[:vpc_interfaces]") unless params[:vpc_interfaces].nil?
        type.maintenance = AddMaintenance.build(params[:maintenance], context: "#{context}[:maintenance]") unless params[:maintenance].nil?
        type
      end
    end

    module CreateFlowOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFlowOutput, context: context)
        type = Types::CreateFlowOutput.new
        type.flow = Flow.build(params[:flow], context: "#{context}[:flow]") unless params[:flow].nil?
        type
      end
    end

    module DeleteFlowInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFlowInput, context: context)
        type = Types::DeleteFlowInput.new
        type.flow_arn = params[:flow_arn]
        type
      end
    end

    module DeleteFlowOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFlowOutput, context: context)
        type = Types::DeleteFlowOutput.new
        type.flow_arn = params[:flow_arn]
        type.status = params[:status]
        type
      end
    end

    module DescribeFlowInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFlowInput, context: context)
        type = Types::DescribeFlowInput.new
        type.flow_arn = params[:flow_arn]
        type
      end
    end

    module DescribeFlowOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFlowOutput, context: context)
        type = Types::DescribeFlowOutput.new
        type.flow = Flow.build(params[:flow], context: "#{context}[:flow]") unless params[:flow].nil?
        type.messages = Messages.build(params[:messages], context: "#{context}[:messages]") unless params[:messages].nil?
        type
      end
    end

    module DescribeOfferingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeOfferingInput, context: context)
        type = Types::DescribeOfferingInput.new
        type.offering_arn = params[:offering_arn]
        type
      end
    end

    module DescribeOfferingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeOfferingOutput, context: context)
        type = Types::DescribeOfferingOutput.new
        type.offering = Offering.build(params[:offering], context: "#{context}[:offering]") unless params[:offering].nil?
        type
      end
    end

    module DescribeReservationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeReservationInput, context: context)
        type = Types::DescribeReservationInput.new
        type.reservation_arn = params[:reservation_arn]
        type
      end
    end

    module DescribeReservationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeReservationOutput, context: context)
        type = Types::DescribeReservationOutput.new
        type.reservation = Reservation.build(params[:reservation], context: "#{context}[:reservation]") unless params[:reservation].nil?
        type
      end
    end

    module DestinationConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DestinationConfiguration, context: context)
        type = Types::DestinationConfiguration.new
        type.destination_ip = params[:destination_ip]
        type.destination_port = params[:destination_port]
        type.interface = Interface.build(params[:interface], context: "#{context}[:interface]") unless params[:interface].nil?
        type.outbound_ip = params[:outbound_ip]
        type
      end
    end

    module DestinationConfigurationRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DestinationConfigurationRequest, context: context)
        type = Types::DestinationConfigurationRequest.new
        type.destination_ip = params[:destination_ip]
        type.destination_port = params[:destination_port]
        type.interface = InterfaceRequest.build(params[:interface], context: "#{context}[:interface]") unless params[:interface].nil?
        type
      end
    end

    module EncodingParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EncodingParameters, context: context)
        type = Types::EncodingParameters.new
        type.compression_factor = params[:compression_factor]
        type.encoder_profile = params[:encoder_profile]
        type
      end
    end

    module EncodingParametersRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EncodingParametersRequest, context: context)
        type = Types::EncodingParametersRequest.new
        type.compression_factor = params[:compression_factor]
        type.encoder_profile = params[:encoder_profile]
        type
      end
    end

    module Encryption
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Encryption, context: context)
        type = Types::Encryption.new
        type.algorithm = params[:algorithm]
        type.constant_initialization_vector = params[:constant_initialization_vector]
        type.device_id = params[:device_id]
        type.key_type = params[:key_type]
        type.region = params[:region]
        type.resource_id = params[:resource_id]
        type.role_arn = params[:role_arn]
        type.secret_arn = params[:secret_arn]
        type.url = params[:url]
        type
      end
    end

    module Entitlement
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Entitlement, context: context)
        type = Types::Entitlement.new
        type.data_transfer_subscriber_fee_percent = params[:data_transfer_subscriber_fee_percent]
        type.description = params[:description]
        type.encryption = Encryption.build(params[:encryption], context: "#{context}[:encryption]") unless params[:encryption].nil?
        type.entitlement_arn = params[:entitlement_arn]
        type.entitlement_status = params[:entitlement_status]
        type.name = params[:name]
        type.subscribers = List____listOf__string.build(params[:subscribers], context: "#{context}[:subscribers]") unless params[:subscribers].nil?
        type
      end
    end

    module FailoverConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FailoverConfig, context: context)
        type = Types::FailoverConfig.new
        type.failover_mode = params[:failover_mode]
        type.recovery_window = params[:recovery_window]
        type.source_priority = SourcePriority.build(params[:source_priority], context: "#{context}[:source_priority]") unless params[:source_priority].nil?
        type.state = params[:state]
        type
      end
    end

    module Flow
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Flow, context: context)
        type = Types::Flow.new
        type.availability_zone = params[:availability_zone]
        type.description = params[:description]
        type.egress_ip = params[:egress_ip]
        type.entitlements = List____listOfEntitlement.build(params[:entitlements], context: "#{context}[:entitlements]") unless params[:entitlements].nil?
        type.flow_arn = params[:flow_arn]
        type.media_streams = List____listOfMediaStream.build(params[:media_streams], context: "#{context}[:media_streams]") unless params[:media_streams].nil?
        type.name = params[:name]
        type.outputs = List____listOfOutput.build(params[:outputs], context: "#{context}[:outputs]") unless params[:outputs].nil?
        type.source = Source.build(params[:source], context: "#{context}[:source]") unless params[:source].nil?
        type.source_failover_config = FailoverConfig.build(params[:source_failover_config], context: "#{context}[:source_failover_config]") unless params[:source_failover_config].nil?
        type.sources = List____listOfSource.build(params[:sources], context: "#{context}[:sources]") unless params[:sources].nil?
        type.status = params[:status]
        type.vpc_interfaces = List____listOfVpcInterface.build(params[:vpc_interfaces], context: "#{context}[:vpc_interfaces]") unless params[:vpc_interfaces].nil?
        type.maintenance = Maintenance.build(params[:maintenance], context: "#{context}[:maintenance]") unless params[:maintenance].nil?
        type
      end
    end

    module Fmtp
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Fmtp, context: context)
        type = Types::Fmtp.new
        type.channel_order = params[:channel_order]
        type.colorimetry = params[:colorimetry]
        type.exact_framerate = params[:exact_framerate]
        type.par = params[:par]
        type.range = params[:range]
        type.scan_mode = params[:scan_mode]
        type.tcs = params[:tcs]
        type
      end
    end

    module FmtpRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FmtpRequest, context: context)
        type = Types::FmtpRequest.new
        type.channel_order = params[:channel_order]
        type.colorimetry = params[:colorimetry]
        type.exact_framerate = params[:exact_framerate]
        type.par = params[:par]
        type.range = params[:range]
        type.scan_mode = params[:scan_mode]
        type.tcs = params[:tcs]
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

    module GrantEntitlementRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GrantEntitlementRequest, context: context)
        type = Types::GrantEntitlementRequest.new
        type.data_transfer_subscriber_fee_percent = params[:data_transfer_subscriber_fee_percent]
        type.description = params[:description]
        type.encryption = Encryption.build(params[:encryption], context: "#{context}[:encryption]") unless params[:encryption].nil?
        type.entitlement_status = params[:entitlement_status]
        type.name = params[:name]
        type.subscribers = List____listOf__string.build(params[:subscribers], context: "#{context}[:subscribers]") unless params[:subscribers].nil?
        type
      end
    end

    module GrantFlowEntitlements420Exception
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GrantFlowEntitlements420Exception, context: context)
        type = Types::GrantFlowEntitlements420Exception.new
        type.message = params[:message]
        type
      end
    end

    module GrantFlowEntitlementsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GrantFlowEntitlementsInput, context: context)
        type = Types::GrantFlowEntitlementsInput.new
        type.entitlements = List____listOfGrantEntitlementRequest.build(params[:entitlements], context: "#{context}[:entitlements]") unless params[:entitlements].nil?
        type.flow_arn = params[:flow_arn]
        type
      end
    end

    module GrantFlowEntitlementsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GrantFlowEntitlementsOutput, context: context)
        type = Types::GrantFlowEntitlementsOutput.new
        type.entitlements = List____listOfEntitlement.build(params[:entitlements], context: "#{context}[:entitlements]") unless params[:entitlements].nil?
        type.flow_arn = params[:flow_arn]
        type
      end
    end

    module InputConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InputConfiguration, context: context)
        type = Types::InputConfiguration.new
        type.input_ip = params[:input_ip]
        type.input_port = params[:input_port]
        type.interface = Interface.build(params[:interface], context: "#{context}[:interface]") unless params[:interface].nil?
        type
      end
    end

    module InputConfigurationRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InputConfigurationRequest, context: context)
        type = Types::InputConfigurationRequest.new
        type.input_port = params[:input_port]
        type.interface = InterfaceRequest.build(params[:interface], context: "#{context}[:interface]") unless params[:interface].nil?
        type
      end
    end

    module Interface
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Interface, context: context)
        type = Types::Interface.new
        type.name = params[:name]
        type
      end
    end

    module InterfaceRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InterfaceRequest, context: context)
        type = Types::InterfaceRequest.new
        type.name = params[:name]
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

    module ListEntitlementsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEntitlementsInput, context: context)
        type = Types::ListEntitlementsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListEntitlementsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEntitlementsOutput, context: context)
        type = Types::ListEntitlementsOutput.new
        type.entitlements = List____listOfListedEntitlement.build(params[:entitlements], context: "#{context}[:entitlements]") unless params[:entitlements].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListFlowsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFlowsInput, context: context)
        type = Types::ListFlowsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListFlowsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFlowsOutput, context: context)
        type = Types::ListFlowsOutput.new
        type.flows = List____listOfListedFlow.build(params[:flows], context: "#{context}[:flows]") unless params[:flows].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListOfferingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListOfferingsInput, context: context)
        type = Types::ListOfferingsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListOfferingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListOfferingsOutput, context: context)
        type = Types::ListOfferingsOutput.new
        type.next_token = params[:next_token]
        type.offerings = List____listOfOffering.build(params[:offerings], context: "#{context}[:offerings]") unless params[:offerings].nil?
        type
      end
    end

    module ListReservationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListReservationsInput, context: context)
        type = Types::ListReservationsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListReservationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListReservationsOutput, context: context)
        type = Types::ListReservationsOutput.new
        type.next_token = params[:next_token]
        type.reservations = List____listOfReservation.build(params[:reservations], context: "#{context}[:reservations]") unless params[:reservations].nil?
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

    module ListedEntitlement
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListedEntitlement, context: context)
        type = Types::ListedEntitlement.new
        type.data_transfer_subscriber_fee_percent = params[:data_transfer_subscriber_fee_percent]
        type.entitlement_arn = params[:entitlement_arn]
        type.entitlement_name = params[:entitlement_name]
        type
      end
    end

    module ListedFlow
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListedFlow, context: context)
        type = Types::ListedFlow.new
        type.availability_zone = params[:availability_zone]
        type.description = params[:description]
        type.flow_arn = params[:flow_arn]
        type.name = params[:name]
        type.source_type = params[:source_type]
        type.status = params[:status]
        type.maintenance = Maintenance.build(params[:maintenance], context: "#{context}[:maintenance]") unless params[:maintenance].nil?
        type
      end
    end

    module Maintenance
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Maintenance, context: context)
        type = Types::Maintenance.new
        type.maintenance_day = params[:maintenance_day]
        type.maintenance_deadline = params[:maintenance_deadline]
        type.maintenance_scheduled_date = params[:maintenance_scheduled_date]
        type.maintenance_start_hour = params[:maintenance_start_hour]
        type
      end
    end

    module MediaStream
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MediaStream, context: context)
        type = Types::MediaStream.new
        type.attributes = MediaStreamAttributes.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type.clock_rate = params[:clock_rate]
        type.description = params[:description]
        type.fmt = params[:fmt]
        type.media_stream_id = params[:media_stream_id]
        type.media_stream_name = params[:media_stream_name]
        type.media_stream_type = params[:media_stream_type]
        type.video_format = params[:video_format]
        type
      end
    end

    module MediaStreamAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MediaStreamAttributes, context: context)
        type = Types::MediaStreamAttributes.new
        type.fmtp = Fmtp.build(params[:fmtp], context: "#{context}[:fmtp]") unless params[:fmtp].nil?
        type.lang = params[:lang]
        type
      end
    end

    module MediaStreamAttributesRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MediaStreamAttributesRequest, context: context)
        type = Types::MediaStreamAttributesRequest.new
        type.fmtp = FmtpRequest.build(params[:fmtp], context: "#{context}[:fmtp]") unless params[:fmtp].nil?
        type.lang = params[:lang]
        type
      end
    end

    module MediaStreamOutputConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MediaStreamOutputConfiguration, context: context)
        type = Types::MediaStreamOutputConfiguration.new
        type.destination_configurations = List____listOfDestinationConfiguration.build(params[:destination_configurations], context: "#{context}[:destination_configurations]") unless params[:destination_configurations].nil?
        type.encoding_name = params[:encoding_name]
        type.encoding_parameters = EncodingParameters.build(params[:encoding_parameters], context: "#{context}[:encoding_parameters]") unless params[:encoding_parameters].nil?
        type.media_stream_name = params[:media_stream_name]
        type
      end
    end

    module MediaStreamOutputConfigurationRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MediaStreamOutputConfigurationRequest, context: context)
        type = Types::MediaStreamOutputConfigurationRequest.new
        type.destination_configurations = List____listOfDestinationConfigurationRequest.build(params[:destination_configurations], context: "#{context}[:destination_configurations]") unless params[:destination_configurations].nil?
        type.encoding_name = params[:encoding_name]
        type.encoding_parameters = EncodingParametersRequest.build(params[:encoding_parameters], context: "#{context}[:encoding_parameters]") unless params[:encoding_parameters].nil?
        type.media_stream_name = params[:media_stream_name]
        type
      end
    end

    module MediaStreamSourceConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MediaStreamSourceConfiguration, context: context)
        type = Types::MediaStreamSourceConfiguration.new
        type.encoding_name = params[:encoding_name]
        type.input_configurations = List____listOfInputConfiguration.build(params[:input_configurations], context: "#{context}[:input_configurations]") unless params[:input_configurations].nil?
        type.media_stream_name = params[:media_stream_name]
        type
      end
    end

    module MediaStreamSourceConfigurationRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MediaStreamSourceConfigurationRequest, context: context)
        type = Types::MediaStreamSourceConfigurationRequest.new
        type.encoding_name = params[:encoding_name]
        type.input_configurations = List____listOfInputConfigurationRequest.build(params[:input_configurations], context: "#{context}[:input_configurations]") unless params[:input_configurations].nil?
        type.media_stream_name = params[:media_stream_name]
        type
      end
    end

    module Messages
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Messages, context: context)
        type = Types::Messages.new
        type.errors = List____listOf__string.build(params[:errors], context: "#{context}[:errors]") unless params[:errors].nil?
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

    module Offering
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Offering, context: context)
        type = Types::Offering.new
        type.currency_code = params[:currency_code]
        type.duration = params[:duration]
        type.duration_units = params[:duration_units]
        type.offering_arn = params[:offering_arn]
        type.offering_description = params[:offering_description]
        type.price_per_unit = params[:price_per_unit]
        type.price_units = params[:price_units]
        type.resource_specification = ResourceSpecification.build(params[:resource_specification], context: "#{context}[:resource_specification]") unless params[:resource_specification].nil?
        type
      end
    end

    module Output
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Output, context: context)
        type = Types::Output.new
        type.data_transfer_subscriber_fee_percent = params[:data_transfer_subscriber_fee_percent]
        type.description = params[:description]
        type.destination = params[:destination]
        type.encryption = Encryption.build(params[:encryption], context: "#{context}[:encryption]") unless params[:encryption].nil?
        type.entitlement_arn = params[:entitlement_arn]
        type.listener_address = params[:listener_address]
        type.media_live_input_arn = params[:media_live_input_arn]
        type.media_stream_output_configurations = List____listOfMediaStreamOutputConfiguration.build(params[:media_stream_output_configurations], context: "#{context}[:media_stream_output_configurations]") unless params[:media_stream_output_configurations].nil?
        type.name = params[:name]
        type.output_arn = params[:output_arn]
        type.port = params[:port]
        type.transport = Transport.build(params[:transport], context: "#{context}[:transport]") unless params[:transport].nil?
        type.vpc_interface_attachment = VpcInterfaceAttachment.build(params[:vpc_interface_attachment], context: "#{context}[:vpc_interface_attachment]") unless params[:vpc_interface_attachment].nil?
        type
      end
    end

    module PurchaseOfferingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PurchaseOfferingInput, context: context)
        type = Types::PurchaseOfferingInput.new
        type.offering_arn = params[:offering_arn]
        type.reservation_name = params[:reservation_name]
        type.start = params[:start]
        type
      end
    end

    module PurchaseOfferingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PurchaseOfferingOutput, context: context)
        type = Types::PurchaseOfferingOutput.new
        type.reservation = Reservation.build(params[:reservation], context: "#{context}[:reservation]") unless params[:reservation].nil?
        type
      end
    end

    module RemoveFlowMediaStreamInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveFlowMediaStreamInput, context: context)
        type = Types::RemoveFlowMediaStreamInput.new
        type.flow_arn = params[:flow_arn]
        type.media_stream_name = params[:media_stream_name]
        type
      end
    end

    module RemoveFlowMediaStreamOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveFlowMediaStreamOutput, context: context)
        type = Types::RemoveFlowMediaStreamOutput.new
        type.flow_arn = params[:flow_arn]
        type.media_stream_name = params[:media_stream_name]
        type
      end
    end

    module RemoveFlowOutputInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveFlowOutputInput, context: context)
        type = Types::RemoveFlowOutputInput.new
        type.flow_arn = params[:flow_arn]
        type.output_arn = params[:output_arn]
        type
      end
    end

    module RemoveFlowOutputOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveFlowOutputOutput, context: context)
        type = Types::RemoveFlowOutputOutput.new
        type.flow_arn = params[:flow_arn]
        type.output_arn = params[:output_arn]
        type
      end
    end

    module RemoveFlowSourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveFlowSourceInput, context: context)
        type = Types::RemoveFlowSourceInput.new
        type.flow_arn = params[:flow_arn]
        type.source_arn = params[:source_arn]
        type
      end
    end

    module RemoveFlowSourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveFlowSourceOutput, context: context)
        type = Types::RemoveFlowSourceOutput.new
        type.flow_arn = params[:flow_arn]
        type.source_arn = params[:source_arn]
        type
      end
    end

    module RemoveFlowVpcInterfaceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveFlowVpcInterfaceInput, context: context)
        type = Types::RemoveFlowVpcInterfaceInput.new
        type.flow_arn = params[:flow_arn]
        type.vpc_interface_name = params[:vpc_interface_name]
        type
      end
    end

    module RemoveFlowVpcInterfaceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveFlowVpcInterfaceOutput, context: context)
        type = Types::RemoveFlowVpcInterfaceOutput.new
        type.flow_arn = params[:flow_arn]
        type.non_deleted_network_interface_ids = List____listOf__string.build(params[:non_deleted_network_interface_ids], context: "#{context}[:non_deleted_network_interface_ids]") unless params[:non_deleted_network_interface_ids].nil?
        type.vpc_interface_name = params[:vpc_interface_name]
        type
      end
    end

    module Reservation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Reservation, context: context)
        type = Types::Reservation.new
        type.currency_code = params[:currency_code]
        type.duration = params[:duration]
        type.duration_units = params[:duration_units]
        type.end = params[:end]
        type.offering_arn = params[:offering_arn]
        type.offering_description = params[:offering_description]
        type.price_per_unit = params[:price_per_unit]
        type.price_units = params[:price_units]
        type.reservation_arn = params[:reservation_arn]
        type.reservation_name = params[:reservation_name]
        type.reservation_state = params[:reservation_state]
        type.resource_specification = ResourceSpecification.build(params[:resource_specification], context: "#{context}[:resource_specification]") unless params[:resource_specification].nil?
        type.start = params[:start]
        type
      end
    end

    module ResourceSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceSpecification, context: context)
        type = Types::ResourceSpecification.new
        type.reserved_bitrate = params[:reserved_bitrate]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module RevokeFlowEntitlementInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RevokeFlowEntitlementInput, context: context)
        type = Types::RevokeFlowEntitlementInput.new
        type.entitlement_arn = params[:entitlement_arn]
        type.flow_arn = params[:flow_arn]
        type
      end
    end

    module RevokeFlowEntitlementOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RevokeFlowEntitlementOutput, context: context)
        type = Types::RevokeFlowEntitlementOutput.new
        type.entitlement_arn = params[:entitlement_arn]
        type.flow_arn = params[:flow_arn]
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

    module SetSourceRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetSourceRequest, context: context)
        type = Types::SetSourceRequest.new
        type.decryption = Encryption.build(params[:decryption], context: "#{context}[:decryption]") unless params[:decryption].nil?
        type.description = params[:description]
        type.entitlement_arn = params[:entitlement_arn]
        type.ingest_port = params[:ingest_port]
        type.max_bitrate = params[:max_bitrate]
        type.max_latency = params[:max_latency]
        type.max_sync_buffer = params[:max_sync_buffer]
        type.media_stream_source_configurations = List____listOfMediaStreamSourceConfigurationRequest.build(params[:media_stream_source_configurations], context: "#{context}[:media_stream_source_configurations]") unless params[:media_stream_source_configurations].nil?
        type.min_latency = params[:min_latency]
        type.name = params[:name]
        type.protocol = params[:protocol]
        type.sender_control_port = params[:sender_control_port]
        type.sender_ip_address = params[:sender_ip_address]
        type.stream_id = params[:stream_id]
        type.vpc_interface_name = params[:vpc_interface_name]
        type.whitelist_cidr = params[:whitelist_cidr]
        type
      end
    end

    module Source
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Source, context: context)
        type = Types::Source.new
        type.data_transfer_subscriber_fee_percent = params[:data_transfer_subscriber_fee_percent]
        type.decryption = Encryption.build(params[:decryption], context: "#{context}[:decryption]") unless params[:decryption].nil?
        type.description = params[:description]
        type.entitlement_arn = params[:entitlement_arn]
        type.ingest_ip = params[:ingest_ip]
        type.ingest_port = params[:ingest_port]
        type.media_stream_source_configurations = List____listOfMediaStreamSourceConfiguration.build(params[:media_stream_source_configurations], context: "#{context}[:media_stream_source_configurations]") unless params[:media_stream_source_configurations].nil?
        type.name = params[:name]
        type.sender_control_port = params[:sender_control_port]
        type.sender_ip_address = params[:sender_ip_address]
        type.source_arn = params[:source_arn]
        type.transport = Transport.build(params[:transport], context: "#{context}[:transport]") unless params[:transport].nil?
        type.vpc_interface_name = params[:vpc_interface_name]
        type.whitelist_cidr = params[:whitelist_cidr]
        type
      end
    end

    module SourcePriority
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SourcePriority, context: context)
        type = Types::SourcePriority.new
        type.primary_source = params[:primary_source]
        type
      end
    end

    module StartFlowInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartFlowInput, context: context)
        type = Types::StartFlowInput.new
        type.flow_arn = params[:flow_arn]
        type
      end
    end

    module StartFlowOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartFlowOutput, context: context)
        type = Types::StartFlowOutput.new
        type.flow_arn = params[:flow_arn]
        type.status = params[:status]
        type
      end
    end

    module StopFlowInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopFlowInput, context: context)
        type = Types::StopFlowInput.new
        type.flow_arn = params[:flow_arn]
        type
      end
    end

    module StopFlowOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopFlowOutput, context: context)
        type = Types::StopFlowOutput.new
        type.flow_arn = params[:flow_arn]
        type.status = params[:status]
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

    module TooManyRequestsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyRequestsException, context: context)
        type = Types::TooManyRequestsException.new
        type.message = params[:message]
        type
      end
    end

    module Transport
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Transport, context: context)
        type = Types::Transport.new
        type.cidr_allow_list = List____listOf__string.build(params[:cidr_allow_list], context: "#{context}[:cidr_allow_list]") unless params[:cidr_allow_list].nil?
        type.max_bitrate = params[:max_bitrate]
        type.max_latency = params[:max_latency]
        type.max_sync_buffer = params[:max_sync_buffer]
        type.min_latency = params[:min_latency]
        type.protocol = params[:protocol]
        type.remote_id = params[:remote_id]
        type.sender_control_port = params[:sender_control_port]
        type.sender_ip_address = params[:sender_ip_address]
        type.smoothing_latency = params[:smoothing_latency]
        type.stream_id = params[:stream_id]
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

    module UpdateEncryption
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateEncryption, context: context)
        type = Types::UpdateEncryption.new
        type.algorithm = params[:algorithm]
        type.constant_initialization_vector = params[:constant_initialization_vector]
        type.device_id = params[:device_id]
        type.key_type = params[:key_type]
        type.region = params[:region]
        type.resource_id = params[:resource_id]
        type.role_arn = params[:role_arn]
        type.secret_arn = params[:secret_arn]
        type.url = params[:url]
        type
      end
    end

    module UpdateFailoverConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFailoverConfig, context: context)
        type = Types::UpdateFailoverConfig.new
        type.failover_mode = params[:failover_mode]
        type.recovery_window = params[:recovery_window]
        type.source_priority = SourcePriority.build(params[:source_priority], context: "#{context}[:source_priority]") unless params[:source_priority].nil?
        type.state = params[:state]
        type
      end
    end

    module UpdateFlowEntitlementInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFlowEntitlementInput, context: context)
        type = Types::UpdateFlowEntitlementInput.new
        type.description = params[:description]
        type.encryption = UpdateEncryption.build(params[:encryption], context: "#{context}[:encryption]") unless params[:encryption].nil?
        type.entitlement_arn = params[:entitlement_arn]
        type.entitlement_status = params[:entitlement_status]
        type.flow_arn = params[:flow_arn]
        type.subscribers = List____listOf__string.build(params[:subscribers], context: "#{context}[:subscribers]") unless params[:subscribers].nil?
        type
      end
    end

    module UpdateFlowEntitlementOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFlowEntitlementOutput, context: context)
        type = Types::UpdateFlowEntitlementOutput.new
        type.entitlement = Entitlement.build(params[:entitlement], context: "#{context}[:entitlement]") unless params[:entitlement].nil?
        type.flow_arn = params[:flow_arn]
        type
      end
    end

    module UpdateFlowInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFlowInput, context: context)
        type = Types::UpdateFlowInput.new
        type.flow_arn = params[:flow_arn]
        type.source_failover_config = UpdateFailoverConfig.build(params[:source_failover_config], context: "#{context}[:source_failover_config]") unless params[:source_failover_config].nil?
        type.maintenance = UpdateMaintenance.build(params[:maintenance], context: "#{context}[:maintenance]") unless params[:maintenance].nil?
        type
      end
    end

    module UpdateFlowMediaStreamInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFlowMediaStreamInput, context: context)
        type = Types::UpdateFlowMediaStreamInput.new
        type.attributes = MediaStreamAttributesRequest.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type.clock_rate = params[:clock_rate]
        type.description = params[:description]
        type.flow_arn = params[:flow_arn]
        type.media_stream_name = params[:media_stream_name]
        type.media_stream_type = params[:media_stream_type]
        type.video_format = params[:video_format]
        type
      end
    end

    module UpdateFlowMediaStreamOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFlowMediaStreamOutput, context: context)
        type = Types::UpdateFlowMediaStreamOutput.new
        type.flow_arn = params[:flow_arn]
        type.media_stream = MediaStream.build(params[:media_stream], context: "#{context}[:media_stream]") unless params[:media_stream].nil?
        type
      end
    end

    module UpdateFlowOperationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFlowOperationOutput, context: context)
        type = Types::UpdateFlowOperationOutput.new
        type.flow = Flow.build(params[:flow], context: "#{context}[:flow]") unless params[:flow].nil?
        type
      end
    end

    module UpdateFlowOutputInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFlowOutputInput, context: context)
        type = Types::UpdateFlowOutputInput.new
        type.cidr_allow_list = List____listOf__string.build(params[:cidr_allow_list], context: "#{context}[:cidr_allow_list]") unless params[:cidr_allow_list].nil?
        type.description = params[:description]
        type.destination = params[:destination]
        type.encryption = UpdateEncryption.build(params[:encryption], context: "#{context}[:encryption]") unless params[:encryption].nil?
        type.flow_arn = params[:flow_arn]
        type.max_latency = params[:max_latency]
        type.media_stream_output_configurations = List____listOfMediaStreamOutputConfigurationRequest.build(params[:media_stream_output_configurations], context: "#{context}[:media_stream_output_configurations]") unless params[:media_stream_output_configurations].nil?
        type.min_latency = params[:min_latency]
        type.output_arn = params[:output_arn]
        type.port = params[:port]
        type.protocol = params[:protocol]
        type.remote_id = params[:remote_id]
        type.sender_control_port = params[:sender_control_port]
        type.sender_ip_address = params[:sender_ip_address]
        type.smoothing_latency = params[:smoothing_latency]
        type.stream_id = params[:stream_id]
        type.vpc_interface_attachment = VpcInterfaceAttachment.build(params[:vpc_interface_attachment], context: "#{context}[:vpc_interface_attachment]") unless params[:vpc_interface_attachment].nil?
        type
      end
    end

    module UpdateFlowOutputOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFlowOutputOutput, context: context)
        type = Types::UpdateFlowOutputOutput.new
        type.flow_arn = params[:flow_arn]
        type.output = Output.build(params[:output], context: "#{context}[:output]") unless params[:output].nil?
        type
      end
    end

    module UpdateFlowSourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFlowSourceInput, context: context)
        type = Types::UpdateFlowSourceInput.new
        type.decryption = UpdateEncryption.build(params[:decryption], context: "#{context}[:decryption]") unless params[:decryption].nil?
        type.description = params[:description]
        type.entitlement_arn = params[:entitlement_arn]
        type.flow_arn = params[:flow_arn]
        type.ingest_port = params[:ingest_port]
        type.max_bitrate = params[:max_bitrate]
        type.max_latency = params[:max_latency]
        type.max_sync_buffer = params[:max_sync_buffer]
        type.media_stream_source_configurations = List____listOfMediaStreamSourceConfigurationRequest.build(params[:media_stream_source_configurations], context: "#{context}[:media_stream_source_configurations]") unless params[:media_stream_source_configurations].nil?
        type.min_latency = params[:min_latency]
        type.protocol = params[:protocol]
        type.sender_control_port = params[:sender_control_port]
        type.sender_ip_address = params[:sender_ip_address]
        type.source_arn = params[:source_arn]
        type.stream_id = params[:stream_id]
        type.vpc_interface_name = params[:vpc_interface_name]
        type.whitelist_cidr = params[:whitelist_cidr]
        type
      end
    end

    module UpdateFlowSourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFlowSourceOutput, context: context)
        type = Types::UpdateFlowSourceOutput.new
        type.flow_arn = params[:flow_arn]
        type.source = Source.build(params[:source], context: "#{context}[:source]") unless params[:source].nil?
        type
      end
    end

    module UpdateMaintenance
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateMaintenance, context: context)
        type = Types::UpdateMaintenance.new
        type.maintenance_day = params[:maintenance_day]
        type.maintenance_scheduled_date = params[:maintenance_scheduled_date]
        type.maintenance_start_hour = params[:maintenance_start_hour]
        type
      end
    end

    module VpcInterface
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VpcInterface, context: context)
        type = Types::VpcInterface.new
        type.name = params[:name]
        type.network_interface_ids = List____listOf__string.build(params[:network_interface_ids], context: "#{context}[:network_interface_ids]") unless params[:network_interface_ids].nil?
        type.network_interface_type = params[:network_interface_type]
        type.role_arn = params[:role_arn]
        type.security_group_ids = List____listOf__string.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type.subnet_id = params[:subnet_id]
        type
      end
    end

    module VpcInterfaceAttachment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VpcInterfaceAttachment, context: context)
        type = Types::VpcInterfaceAttachment.new
        type.vpc_interface_name = params[:vpc_interface_name]
        type
      end
    end

    module VpcInterfaceRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VpcInterfaceRequest, context: context)
        type = Types::VpcInterfaceRequest.new
        type.name = params[:name]
        type.network_interface_type = params[:network_interface_type]
        type.role_arn = params[:role_arn]
        type.security_group_ids = List____listOf__string.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type.subnet_id = params[:subnet_id]
        type
      end
    end

    module List____listOfAddMediaStreamRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AddMediaStreamRequest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfAddOutputRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AddOutputRequest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfDestinationConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DestinationConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfDestinationConfigurationRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DestinationConfigurationRequest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfEntitlement
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Entitlement.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfGrantEntitlementRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GrantEntitlementRequest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfInputConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InputConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfInputConfigurationRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InputConfigurationRequest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfListedEntitlement
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ListedEntitlement.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfListedFlow
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ListedFlow.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfMediaStream
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MediaStream.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfMediaStreamOutputConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MediaStreamOutputConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfMediaStreamOutputConfigurationRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MediaStreamOutputConfigurationRequest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfMediaStreamSourceConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MediaStreamSourceConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfMediaStreamSourceConfigurationRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MediaStreamSourceConfigurationRequest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfOffering
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Offering.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Output.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfReservation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Reservation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfSetSourceRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SetSourceRequest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Source.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfVpcInterface
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << VpcInterface.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfVpcInterfaceRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << VpcInterfaceRequest.build(element, context: "#{context}[#{index}]") unless element.nil?
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
