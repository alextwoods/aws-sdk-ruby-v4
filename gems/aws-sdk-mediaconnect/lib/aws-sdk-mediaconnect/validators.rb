# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::MediaConnect
  module Validators

    class AddFlowMediaStreamsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddFlowMediaStreamsInput, context: context)
        Hearth::Validator.validate!(input[:flow_arn], ::String, context: "#{context}[:flow_arn]")
        List____listOfAddMediaStreamRequest.validate!(input[:media_streams], context: "#{context}[:media_streams]") unless input[:media_streams].nil?
      end
    end

    class AddFlowMediaStreamsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddFlowMediaStreamsOutput, context: context)
        Hearth::Validator.validate!(input[:flow_arn], ::String, context: "#{context}[:flow_arn]")
        List____listOfMediaStream.validate!(input[:media_streams], context: "#{context}[:media_streams]") unless input[:media_streams].nil?
      end
    end

    class AddFlowOutputs420Exception
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddFlowOutputs420Exception, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AddFlowOutputsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddFlowOutputsInput, context: context)
        Hearth::Validator.validate!(input[:flow_arn], ::String, context: "#{context}[:flow_arn]")
        List____listOfAddOutputRequest.validate!(input[:outputs], context: "#{context}[:outputs]") unless input[:outputs].nil?
      end
    end

    class AddFlowOutputsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddFlowOutputsOutput, context: context)
        Hearth::Validator.validate!(input[:flow_arn], ::String, context: "#{context}[:flow_arn]")
        List____listOfOutput.validate!(input[:outputs], context: "#{context}[:outputs]") unless input[:outputs].nil?
      end
    end

    class AddFlowSourcesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddFlowSourcesInput, context: context)
        Hearth::Validator.validate!(input[:flow_arn], ::String, context: "#{context}[:flow_arn]")
        List____listOfSetSourceRequest.validate!(input[:sources], context: "#{context}[:sources]") unless input[:sources].nil?
      end
    end

    class AddFlowSourcesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddFlowSourcesOutput, context: context)
        Hearth::Validator.validate!(input[:flow_arn], ::String, context: "#{context}[:flow_arn]")
        List____listOfSource.validate!(input[:sources], context: "#{context}[:sources]") unless input[:sources].nil?
      end
    end

    class AddFlowVpcInterfacesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddFlowVpcInterfacesInput, context: context)
        Hearth::Validator.validate!(input[:flow_arn], ::String, context: "#{context}[:flow_arn]")
        List____listOfVpcInterfaceRequest.validate!(input[:vpc_interfaces], context: "#{context}[:vpc_interfaces]") unless input[:vpc_interfaces].nil?
      end
    end

    class AddFlowVpcInterfacesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddFlowVpcInterfacesOutput, context: context)
        Hearth::Validator.validate!(input[:flow_arn], ::String, context: "#{context}[:flow_arn]")
        List____listOfVpcInterface.validate!(input[:vpc_interfaces], context: "#{context}[:vpc_interfaces]") unless input[:vpc_interfaces].nil?
      end
    end

    class AddMaintenance
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddMaintenance, context: context)
        Hearth::Validator.validate!(input[:maintenance_day], ::String, context: "#{context}[:maintenance_day]")
        Hearth::Validator.validate!(input[:maintenance_start_hour], ::String, context: "#{context}[:maintenance_start_hour]")
      end
    end

    class AddMediaStreamRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddMediaStreamRequest, context: context)
        MediaStreamAttributesRequest.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
        Hearth::Validator.validate!(input[:clock_rate], ::Integer, context: "#{context}[:clock_rate]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:media_stream_id], ::Integer, context: "#{context}[:media_stream_id]")
        Hearth::Validator.validate!(input[:media_stream_name], ::String, context: "#{context}[:media_stream_name]")
        Hearth::Validator.validate!(input[:media_stream_type], ::String, context: "#{context}[:media_stream_type]")
        Hearth::Validator.validate!(input[:video_format], ::String, context: "#{context}[:video_format]")
      end
    end

    class AddOutputRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddOutputRequest, context: context)
        List____listOf__string.validate!(input[:cidr_allow_list], context: "#{context}[:cidr_allow_list]") unless input[:cidr_allow_list].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:destination], ::String, context: "#{context}[:destination]")
        Encryption.validate!(input[:encryption], context: "#{context}[:encryption]") unless input[:encryption].nil?
        Hearth::Validator.validate!(input[:max_latency], ::Integer, context: "#{context}[:max_latency]")
        List____listOfMediaStreamOutputConfigurationRequest.validate!(input[:media_stream_output_configurations], context: "#{context}[:media_stream_output_configurations]") unless input[:media_stream_output_configurations].nil?
        Hearth::Validator.validate!(input[:min_latency], ::Integer, context: "#{context}[:min_latency]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:protocol], ::String, context: "#{context}[:protocol]")
        Hearth::Validator.validate!(input[:remote_id], ::String, context: "#{context}[:remote_id]")
        Hearth::Validator.validate!(input[:sender_control_port], ::Integer, context: "#{context}[:sender_control_port]")
        Hearth::Validator.validate!(input[:smoothing_latency], ::Integer, context: "#{context}[:smoothing_latency]")
        Hearth::Validator.validate!(input[:stream_id], ::String, context: "#{context}[:stream_id]")
        VpcInterfaceAttachment.validate!(input[:vpc_interface_attachment], context: "#{context}[:vpc_interface_attachment]") unless input[:vpc_interface_attachment].nil?
      end
    end

    class BadRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BadRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CreateFlow420Exception
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFlow420Exception, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CreateFlowInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFlowInput, context: context)
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        List____listOfGrantEntitlementRequest.validate!(input[:entitlements], context: "#{context}[:entitlements]") unless input[:entitlements].nil?
        List____listOfAddMediaStreamRequest.validate!(input[:media_streams], context: "#{context}[:media_streams]") unless input[:media_streams].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        List____listOfAddOutputRequest.validate!(input[:outputs], context: "#{context}[:outputs]") unless input[:outputs].nil?
        SetSourceRequest.validate!(input[:source], context: "#{context}[:source]") unless input[:source].nil?
        FailoverConfig.validate!(input[:source_failover_config], context: "#{context}[:source_failover_config]") unless input[:source_failover_config].nil?
        List____listOfSetSourceRequest.validate!(input[:sources], context: "#{context}[:sources]") unless input[:sources].nil?
        List____listOfVpcInterfaceRequest.validate!(input[:vpc_interfaces], context: "#{context}[:vpc_interfaces]") unless input[:vpc_interfaces].nil?
        AddMaintenance.validate!(input[:maintenance], context: "#{context}[:maintenance]") unless input[:maintenance].nil?
      end
    end

    class CreateFlowOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFlowOutput, context: context)
        Flow.validate!(input[:flow], context: "#{context}[:flow]") unless input[:flow].nil?
      end
    end

    class DeleteFlowInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFlowInput, context: context)
        Hearth::Validator.validate!(input[:flow_arn], ::String, context: "#{context}[:flow_arn]")
      end
    end

    class DeleteFlowOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFlowOutput, context: context)
        Hearth::Validator.validate!(input[:flow_arn], ::String, context: "#{context}[:flow_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class DescribeFlowInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFlowInput, context: context)
        Hearth::Validator.validate!(input[:flow_arn], ::String, context: "#{context}[:flow_arn]")
      end
    end

    class DescribeFlowOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFlowOutput, context: context)
        Flow.validate!(input[:flow], context: "#{context}[:flow]") unless input[:flow].nil?
        Messages.validate!(input[:messages], context: "#{context}[:messages]") unless input[:messages].nil?
      end
    end

    class DescribeOfferingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeOfferingInput, context: context)
        Hearth::Validator.validate!(input[:offering_arn], ::String, context: "#{context}[:offering_arn]")
      end
    end

    class DescribeOfferingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeOfferingOutput, context: context)
        Offering.validate!(input[:offering], context: "#{context}[:offering]") unless input[:offering].nil?
      end
    end

    class DescribeReservationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeReservationInput, context: context)
        Hearth::Validator.validate!(input[:reservation_arn], ::String, context: "#{context}[:reservation_arn]")
      end
    end

    class DescribeReservationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeReservationOutput, context: context)
        Reservation.validate!(input[:reservation], context: "#{context}[:reservation]") unless input[:reservation].nil?
      end
    end

    class DestinationConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DestinationConfiguration, context: context)
        Hearth::Validator.validate!(input[:destination_ip], ::String, context: "#{context}[:destination_ip]")
        Hearth::Validator.validate!(input[:destination_port], ::Integer, context: "#{context}[:destination_port]")
        Interface.validate!(input[:interface], context: "#{context}[:interface]") unless input[:interface].nil?
        Hearth::Validator.validate!(input[:outbound_ip], ::String, context: "#{context}[:outbound_ip]")
      end
    end

    class DestinationConfigurationRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DestinationConfigurationRequest, context: context)
        Hearth::Validator.validate!(input[:destination_ip], ::String, context: "#{context}[:destination_ip]")
        Hearth::Validator.validate!(input[:destination_port], ::Integer, context: "#{context}[:destination_port]")
        InterfaceRequest.validate!(input[:interface], context: "#{context}[:interface]") unless input[:interface].nil?
      end
    end

    class EncodingParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EncodingParameters, context: context)
        Hearth::Validator.validate!(input[:compression_factor], ::Float, context: "#{context}[:compression_factor]")
        Hearth::Validator.validate!(input[:encoder_profile], ::String, context: "#{context}[:encoder_profile]")
      end
    end

    class EncodingParametersRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EncodingParametersRequest, context: context)
        Hearth::Validator.validate!(input[:compression_factor], ::Float, context: "#{context}[:compression_factor]")
        Hearth::Validator.validate!(input[:encoder_profile], ::String, context: "#{context}[:encoder_profile]")
      end
    end

    class Encryption
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Encryption, context: context)
        Hearth::Validator.validate!(input[:algorithm], ::String, context: "#{context}[:algorithm]")
        Hearth::Validator.validate!(input[:constant_initialization_vector], ::String, context: "#{context}[:constant_initialization_vector]")
        Hearth::Validator.validate!(input[:device_id], ::String, context: "#{context}[:device_id]")
        Hearth::Validator.validate!(input[:key_type], ::String, context: "#{context}[:key_type]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:secret_arn], ::String, context: "#{context}[:secret_arn]")
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
      end
    end

    class Entitlement
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Entitlement, context: context)
        Hearth::Validator.validate!(input[:data_transfer_subscriber_fee_percent], ::Integer, context: "#{context}[:data_transfer_subscriber_fee_percent]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Encryption.validate!(input[:encryption], context: "#{context}[:encryption]") unless input[:encryption].nil?
        Hearth::Validator.validate!(input[:entitlement_arn], ::String, context: "#{context}[:entitlement_arn]")
        Hearth::Validator.validate!(input[:entitlement_status], ::String, context: "#{context}[:entitlement_status]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        List____listOf__string.validate!(input[:subscribers], context: "#{context}[:subscribers]") unless input[:subscribers].nil?
      end
    end

    class FailoverConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FailoverConfig, context: context)
        Hearth::Validator.validate!(input[:failover_mode], ::String, context: "#{context}[:failover_mode]")
        Hearth::Validator.validate!(input[:recovery_window], ::Integer, context: "#{context}[:recovery_window]")
        SourcePriority.validate!(input[:source_priority], context: "#{context}[:source_priority]") unless input[:source_priority].nil?
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
      end
    end

    class Flow
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Flow, context: context)
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:egress_ip], ::String, context: "#{context}[:egress_ip]")
        List____listOfEntitlement.validate!(input[:entitlements], context: "#{context}[:entitlements]") unless input[:entitlements].nil?
        Hearth::Validator.validate!(input[:flow_arn], ::String, context: "#{context}[:flow_arn]")
        List____listOfMediaStream.validate!(input[:media_streams], context: "#{context}[:media_streams]") unless input[:media_streams].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        List____listOfOutput.validate!(input[:outputs], context: "#{context}[:outputs]") unless input[:outputs].nil?
        Source.validate!(input[:source], context: "#{context}[:source]") unless input[:source].nil?
        FailoverConfig.validate!(input[:source_failover_config], context: "#{context}[:source_failover_config]") unless input[:source_failover_config].nil?
        List____listOfSource.validate!(input[:sources], context: "#{context}[:sources]") unless input[:sources].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        List____listOfVpcInterface.validate!(input[:vpc_interfaces], context: "#{context}[:vpc_interfaces]") unless input[:vpc_interfaces].nil?
        Maintenance.validate!(input[:maintenance], context: "#{context}[:maintenance]") unless input[:maintenance].nil?
      end
    end

    class Fmtp
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Fmtp, context: context)
        Hearth::Validator.validate!(input[:channel_order], ::String, context: "#{context}[:channel_order]")
        Hearth::Validator.validate!(input[:colorimetry], ::String, context: "#{context}[:colorimetry]")
        Hearth::Validator.validate!(input[:exact_framerate], ::String, context: "#{context}[:exact_framerate]")
        Hearth::Validator.validate!(input[:par], ::String, context: "#{context}[:par]")
        Hearth::Validator.validate!(input[:range], ::String, context: "#{context}[:range]")
        Hearth::Validator.validate!(input[:scan_mode], ::String, context: "#{context}[:scan_mode]")
        Hearth::Validator.validate!(input[:tcs], ::String, context: "#{context}[:tcs]")
      end
    end

    class FmtpRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FmtpRequest, context: context)
        Hearth::Validator.validate!(input[:channel_order], ::String, context: "#{context}[:channel_order]")
        Hearth::Validator.validate!(input[:colorimetry], ::String, context: "#{context}[:colorimetry]")
        Hearth::Validator.validate!(input[:exact_framerate], ::String, context: "#{context}[:exact_framerate]")
        Hearth::Validator.validate!(input[:par], ::String, context: "#{context}[:par]")
        Hearth::Validator.validate!(input[:range], ::String, context: "#{context}[:range]")
        Hearth::Validator.validate!(input[:scan_mode], ::String, context: "#{context}[:scan_mode]")
        Hearth::Validator.validate!(input[:tcs], ::String, context: "#{context}[:tcs]")
      end
    end

    class ForbiddenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ForbiddenException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class GrantEntitlementRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GrantEntitlementRequest, context: context)
        Hearth::Validator.validate!(input[:data_transfer_subscriber_fee_percent], ::Integer, context: "#{context}[:data_transfer_subscriber_fee_percent]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Encryption.validate!(input[:encryption], context: "#{context}[:encryption]") unless input[:encryption].nil?
        Hearth::Validator.validate!(input[:entitlement_status], ::String, context: "#{context}[:entitlement_status]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        List____listOf__string.validate!(input[:subscribers], context: "#{context}[:subscribers]") unless input[:subscribers].nil?
      end
    end

    class GrantFlowEntitlements420Exception
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GrantFlowEntitlements420Exception, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class GrantFlowEntitlementsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GrantFlowEntitlementsInput, context: context)
        List____listOfGrantEntitlementRequest.validate!(input[:entitlements], context: "#{context}[:entitlements]") unless input[:entitlements].nil?
        Hearth::Validator.validate!(input[:flow_arn], ::String, context: "#{context}[:flow_arn]")
      end
    end

    class GrantFlowEntitlementsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GrantFlowEntitlementsOutput, context: context)
        List____listOfEntitlement.validate!(input[:entitlements], context: "#{context}[:entitlements]") unless input[:entitlements].nil?
        Hearth::Validator.validate!(input[:flow_arn], ::String, context: "#{context}[:flow_arn]")
      end
    end

    class InputConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InputConfiguration, context: context)
        Hearth::Validator.validate!(input[:input_ip], ::String, context: "#{context}[:input_ip]")
        Hearth::Validator.validate!(input[:input_port], ::Integer, context: "#{context}[:input_port]")
        Interface.validate!(input[:interface], context: "#{context}[:interface]") unless input[:interface].nil?
      end
    end

    class InputConfigurationRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InputConfigurationRequest, context: context)
        Hearth::Validator.validate!(input[:input_port], ::Integer, context: "#{context}[:input_port]")
        InterfaceRequest.validate!(input[:interface], context: "#{context}[:interface]") unless input[:interface].nil?
      end
    end

    class Interface
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Interface, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class InterfaceRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InterfaceRequest, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class InternalServerErrorException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerErrorException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListEntitlementsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEntitlementsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListEntitlementsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEntitlementsOutput, context: context)
        List____listOfListedEntitlement.validate!(input[:entitlements], context: "#{context}[:entitlements]") unless input[:entitlements].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListFlowsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFlowsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListFlowsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFlowsOutput, context: context)
        List____listOfListedFlow.validate!(input[:flows], context: "#{context}[:flows]") unless input[:flows].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListOfferingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListOfferingsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListOfferingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListOfferingsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        List____listOfOffering.validate!(input[:offerings], context: "#{context}[:offerings]") unless input[:offerings].nil?
      end
    end

    class ListReservationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListReservationsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListReservationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListReservationsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        List____listOfReservation.validate!(input[:reservations], context: "#{context}[:reservations]") unless input[:reservations].nil?
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

    class ListedEntitlement
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListedEntitlement, context: context)
        Hearth::Validator.validate!(input[:data_transfer_subscriber_fee_percent], ::Integer, context: "#{context}[:data_transfer_subscriber_fee_percent]")
        Hearth::Validator.validate!(input[:entitlement_arn], ::String, context: "#{context}[:entitlement_arn]")
        Hearth::Validator.validate!(input[:entitlement_name], ::String, context: "#{context}[:entitlement_name]")
      end
    end

    class ListedFlow
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListedFlow, context: context)
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:flow_arn], ::String, context: "#{context}[:flow_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:source_type], ::String, context: "#{context}[:source_type]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Maintenance.validate!(input[:maintenance], context: "#{context}[:maintenance]") unless input[:maintenance].nil?
      end
    end

    class Maintenance
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Maintenance, context: context)
        Hearth::Validator.validate!(input[:maintenance_day], ::String, context: "#{context}[:maintenance_day]")
        Hearth::Validator.validate!(input[:maintenance_deadline], ::String, context: "#{context}[:maintenance_deadline]")
        Hearth::Validator.validate!(input[:maintenance_scheduled_date], ::String, context: "#{context}[:maintenance_scheduled_date]")
        Hearth::Validator.validate!(input[:maintenance_start_hour], ::String, context: "#{context}[:maintenance_start_hour]")
      end
    end

    class MediaStream
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MediaStream, context: context)
        MediaStreamAttributes.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
        Hearth::Validator.validate!(input[:clock_rate], ::Integer, context: "#{context}[:clock_rate]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:fmt], ::Integer, context: "#{context}[:fmt]")
        Hearth::Validator.validate!(input[:media_stream_id], ::Integer, context: "#{context}[:media_stream_id]")
        Hearth::Validator.validate!(input[:media_stream_name], ::String, context: "#{context}[:media_stream_name]")
        Hearth::Validator.validate!(input[:media_stream_type], ::String, context: "#{context}[:media_stream_type]")
        Hearth::Validator.validate!(input[:video_format], ::String, context: "#{context}[:video_format]")
      end
    end

    class MediaStreamAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MediaStreamAttributes, context: context)
        Fmtp.validate!(input[:fmtp], context: "#{context}[:fmtp]") unless input[:fmtp].nil?
        Hearth::Validator.validate!(input[:lang], ::String, context: "#{context}[:lang]")
      end
    end

    class MediaStreamAttributesRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MediaStreamAttributesRequest, context: context)
        FmtpRequest.validate!(input[:fmtp], context: "#{context}[:fmtp]") unless input[:fmtp].nil?
        Hearth::Validator.validate!(input[:lang], ::String, context: "#{context}[:lang]")
      end
    end

    class MediaStreamOutputConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MediaStreamOutputConfiguration, context: context)
        List____listOfDestinationConfiguration.validate!(input[:destination_configurations], context: "#{context}[:destination_configurations]") unless input[:destination_configurations].nil?
        Hearth::Validator.validate!(input[:encoding_name], ::String, context: "#{context}[:encoding_name]")
        EncodingParameters.validate!(input[:encoding_parameters], context: "#{context}[:encoding_parameters]") unless input[:encoding_parameters].nil?
        Hearth::Validator.validate!(input[:media_stream_name], ::String, context: "#{context}[:media_stream_name]")
      end
    end

    class MediaStreamOutputConfigurationRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MediaStreamOutputConfigurationRequest, context: context)
        List____listOfDestinationConfigurationRequest.validate!(input[:destination_configurations], context: "#{context}[:destination_configurations]") unless input[:destination_configurations].nil?
        Hearth::Validator.validate!(input[:encoding_name], ::String, context: "#{context}[:encoding_name]")
        EncodingParametersRequest.validate!(input[:encoding_parameters], context: "#{context}[:encoding_parameters]") unless input[:encoding_parameters].nil?
        Hearth::Validator.validate!(input[:media_stream_name], ::String, context: "#{context}[:media_stream_name]")
      end
    end

    class MediaStreamSourceConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MediaStreamSourceConfiguration, context: context)
        Hearth::Validator.validate!(input[:encoding_name], ::String, context: "#{context}[:encoding_name]")
        List____listOfInputConfiguration.validate!(input[:input_configurations], context: "#{context}[:input_configurations]") unless input[:input_configurations].nil?
        Hearth::Validator.validate!(input[:media_stream_name], ::String, context: "#{context}[:media_stream_name]")
      end
    end

    class MediaStreamSourceConfigurationRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MediaStreamSourceConfigurationRequest, context: context)
        Hearth::Validator.validate!(input[:encoding_name], ::String, context: "#{context}[:encoding_name]")
        List____listOfInputConfigurationRequest.validate!(input[:input_configurations], context: "#{context}[:input_configurations]") unless input[:input_configurations].nil?
        Hearth::Validator.validate!(input[:media_stream_name], ::String, context: "#{context}[:media_stream_name]")
      end
    end

    class Messages
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Messages, context: context)
        List____listOf__string.validate!(input[:errors], context: "#{context}[:errors]") unless input[:errors].nil?
      end
    end

    class NotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Offering
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Offering, context: context)
        Hearth::Validator.validate!(input[:currency_code], ::String, context: "#{context}[:currency_code]")
        Hearth::Validator.validate!(input[:duration], ::Integer, context: "#{context}[:duration]")
        Hearth::Validator.validate!(input[:duration_units], ::String, context: "#{context}[:duration_units]")
        Hearth::Validator.validate!(input[:offering_arn], ::String, context: "#{context}[:offering_arn]")
        Hearth::Validator.validate!(input[:offering_description], ::String, context: "#{context}[:offering_description]")
        Hearth::Validator.validate!(input[:price_per_unit], ::String, context: "#{context}[:price_per_unit]")
        Hearth::Validator.validate!(input[:price_units], ::String, context: "#{context}[:price_units]")
        ResourceSpecification.validate!(input[:resource_specification], context: "#{context}[:resource_specification]") unless input[:resource_specification].nil?
      end
    end

    class Output
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Output, context: context)
        Hearth::Validator.validate!(input[:data_transfer_subscriber_fee_percent], ::Integer, context: "#{context}[:data_transfer_subscriber_fee_percent]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:destination], ::String, context: "#{context}[:destination]")
        Encryption.validate!(input[:encryption], context: "#{context}[:encryption]") unless input[:encryption].nil?
        Hearth::Validator.validate!(input[:entitlement_arn], ::String, context: "#{context}[:entitlement_arn]")
        Hearth::Validator.validate!(input[:listener_address], ::String, context: "#{context}[:listener_address]")
        Hearth::Validator.validate!(input[:media_live_input_arn], ::String, context: "#{context}[:media_live_input_arn]")
        List____listOfMediaStreamOutputConfiguration.validate!(input[:media_stream_output_configurations], context: "#{context}[:media_stream_output_configurations]") unless input[:media_stream_output_configurations].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:output_arn], ::String, context: "#{context}[:output_arn]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Transport.validate!(input[:transport], context: "#{context}[:transport]") unless input[:transport].nil?
        VpcInterfaceAttachment.validate!(input[:vpc_interface_attachment], context: "#{context}[:vpc_interface_attachment]") unless input[:vpc_interface_attachment].nil?
      end
    end

    class PurchaseOfferingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PurchaseOfferingInput, context: context)
        Hearth::Validator.validate!(input[:offering_arn], ::String, context: "#{context}[:offering_arn]")
        Hearth::Validator.validate!(input[:reservation_name], ::String, context: "#{context}[:reservation_name]")
        Hearth::Validator.validate!(input[:start], ::String, context: "#{context}[:start]")
      end
    end

    class PurchaseOfferingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PurchaseOfferingOutput, context: context)
        Reservation.validate!(input[:reservation], context: "#{context}[:reservation]") unless input[:reservation].nil?
      end
    end

    class RemoveFlowMediaStreamInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveFlowMediaStreamInput, context: context)
        Hearth::Validator.validate!(input[:flow_arn], ::String, context: "#{context}[:flow_arn]")
        Hearth::Validator.validate!(input[:media_stream_name], ::String, context: "#{context}[:media_stream_name]")
      end
    end

    class RemoveFlowMediaStreamOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveFlowMediaStreamOutput, context: context)
        Hearth::Validator.validate!(input[:flow_arn], ::String, context: "#{context}[:flow_arn]")
        Hearth::Validator.validate!(input[:media_stream_name], ::String, context: "#{context}[:media_stream_name]")
      end
    end

    class RemoveFlowOutputInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveFlowOutputInput, context: context)
        Hearth::Validator.validate!(input[:flow_arn], ::String, context: "#{context}[:flow_arn]")
        Hearth::Validator.validate!(input[:output_arn], ::String, context: "#{context}[:output_arn]")
      end
    end

    class RemoveFlowOutputOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveFlowOutputOutput, context: context)
        Hearth::Validator.validate!(input[:flow_arn], ::String, context: "#{context}[:flow_arn]")
        Hearth::Validator.validate!(input[:output_arn], ::String, context: "#{context}[:output_arn]")
      end
    end

    class RemoveFlowSourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveFlowSourceInput, context: context)
        Hearth::Validator.validate!(input[:flow_arn], ::String, context: "#{context}[:flow_arn]")
        Hearth::Validator.validate!(input[:source_arn], ::String, context: "#{context}[:source_arn]")
      end
    end

    class RemoveFlowSourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveFlowSourceOutput, context: context)
        Hearth::Validator.validate!(input[:flow_arn], ::String, context: "#{context}[:flow_arn]")
        Hearth::Validator.validate!(input[:source_arn], ::String, context: "#{context}[:source_arn]")
      end
    end

    class RemoveFlowVpcInterfaceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveFlowVpcInterfaceInput, context: context)
        Hearth::Validator.validate!(input[:flow_arn], ::String, context: "#{context}[:flow_arn]")
        Hearth::Validator.validate!(input[:vpc_interface_name], ::String, context: "#{context}[:vpc_interface_name]")
      end
    end

    class RemoveFlowVpcInterfaceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveFlowVpcInterfaceOutput, context: context)
        Hearth::Validator.validate!(input[:flow_arn], ::String, context: "#{context}[:flow_arn]")
        List____listOf__string.validate!(input[:non_deleted_network_interface_ids], context: "#{context}[:non_deleted_network_interface_ids]") unless input[:non_deleted_network_interface_ids].nil?
        Hearth::Validator.validate!(input[:vpc_interface_name], ::String, context: "#{context}[:vpc_interface_name]")
      end
    end

    class Reservation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Reservation, context: context)
        Hearth::Validator.validate!(input[:currency_code], ::String, context: "#{context}[:currency_code]")
        Hearth::Validator.validate!(input[:duration], ::Integer, context: "#{context}[:duration]")
        Hearth::Validator.validate!(input[:duration_units], ::String, context: "#{context}[:duration_units]")
        Hearth::Validator.validate!(input[:end], ::String, context: "#{context}[:end]")
        Hearth::Validator.validate!(input[:offering_arn], ::String, context: "#{context}[:offering_arn]")
        Hearth::Validator.validate!(input[:offering_description], ::String, context: "#{context}[:offering_description]")
        Hearth::Validator.validate!(input[:price_per_unit], ::String, context: "#{context}[:price_per_unit]")
        Hearth::Validator.validate!(input[:price_units], ::String, context: "#{context}[:price_units]")
        Hearth::Validator.validate!(input[:reservation_arn], ::String, context: "#{context}[:reservation_arn]")
        Hearth::Validator.validate!(input[:reservation_name], ::String, context: "#{context}[:reservation_name]")
        Hearth::Validator.validate!(input[:reservation_state], ::String, context: "#{context}[:reservation_state]")
        ResourceSpecification.validate!(input[:resource_specification], context: "#{context}[:resource_specification]") unless input[:resource_specification].nil?
        Hearth::Validator.validate!(input[:start], ::String, context: "#{context}[:start]")
      end
    end

    class ResourceSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceSpecification, context: context)
        Hearth::Validator.validate!(input[:reserved_bitrate], ::Integer, context: "#{context}[:reserved_bitrate]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class RevokeFlowEntitlementInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RevokeFlowEntitlementInput, context: context)
        Hearth::Validator.validate!(input[:entitlement_arn], ::String, context: "#{context}[:entitlement_arn]")
        Hearth::Validator.validate!(input[:flow_arn], ::String, context: "#{context}[:flow_arn]")
      end
    end

    class RevokeFlowEntitlementOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RevokeFlowEntitlementOutput, context: context)
        Hearth::Validator.validate!(input[:entitlement_arn], ::String, context: "#{context}[:entitlement_arn]")
        Hearth::Validator.validate!(input[:flow_arn], ::String, context: "#{context}[:flow_arn]")
      end
    end

    class ServiceUnavailableException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceUnavailableException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SetSourceRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetSourceRequest, context: context)
        Encryption.validate!(input[:decryption], context: "#{context}[:decryption]") unless input[:decryption].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:entitlement_arn], ::String, context: "#{context}[:entitlement_arn]")
        Hearth::Validator.validate!(input[:ingest_port], ::Integer, context: "#{context}[:ingest_port]")
        Hearth::Validator.validate!(input[:max_bitrate], ::Integer, context: "#{context}[:max_bitrate]")
        Hearth::Validator.validate!(input[:max_latency], ::Integer, context: "#{context}[:max_latency]")
        Hearth::Validator.validate!(input[:max_sync_buffer], ::Integer, context: "#{context}[:max_sync_buffer]")
        List____listOfMediaStreamSourceConfigurationRequest.validate!(input[:media_stream_source_configurations], context: "#{context}[:media_stream_source_configurations]") unless input[:media_stream_source_configurations].nil?
        Hearth::Validator.validate!(input[:min_latency], ::Integer, context: "#{context}[:min_latency]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:protocol], ::String, context: "#{context}[:protocol]")
        Hearth::Validator.validate!(input[:sender_control_port], ::Integer, context: "#{context}[:sender_control_port]")
        Hearth::Validator.validate!(input[:sender_ip_address], ::String, context: "#{context}[:sender_ip_address]")
        Hearth::Validator.validate!(input[:stream_id], ::String, context: "#{context}[:stream_id]")
        Hearth::Validator.validate!(input[:vpc_interface_name], ::String, context: "#{context}[:vpc_interface_name]")
        Hearth::Validator.validate!(input[:whitelist_cidr], ::String, context: "#{context}[:whitelist_cidr]")
      end
    end

    class Source
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Source, context: context)
        Hearth::Validator.validate!(input[:data_transfer_subscriber_fee_percent], ::Integer, context: "#{context}[:data_transfer_subscriber_fee_percent]")
        Encryption.validate!(input[:decryption], context: "#{context}[:decryption]") unless input[:decryption].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:entitlement_arn], ::String, context: "#{context}[:entitlement_arn]")
        Hearth::Validator.validate!(input[:ingest_ip], ::String, context: "#{context}[:ingest_ip]")
        Hearth::Validator.validate!(input[:ingest_port], ::Integer, context: "#{context}[:ingest_port]")
        List____listOfMediaStreamSourceConfiguration.validate!(input[:media_stream_source_configurations], context: "#{context}[:media_stream_source_configurations]") unless input[:media_stream_source_configurations].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:sender_control_port], ::Integer, context: "#{context}[:sender_control_port]")
        Hearth::Validator.validate!(input[:sender_ip_address], ::String, context: "#{context}[:sender_ip_address]")
        Hearth::Validator.validate!(input[:source_arn], ::String, context: "#{context}[:source_arn]")
        Transport.validate!(input[:transport], context: "#{context}[:transport]") unless input[:transport].nil?
        Hearth::Validator.validate!(input[:vpc_interface_name], ::String, context: "#{context}[:vpc_interface_name]")
        Hearth::Validator.validate!(input[:whitelist_cidr], ::String, context: "#{context}[:whitelist_cidr]")
      end
    end

    class SourcePriority
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SourcePriority, context: context)
        Hearth::Validator.validate!(input[:primary_source], ::String, context: "#{context}[:primary_source]")
      end
    end

    class StartFlowInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartFlowInput, context: context)
        Hearth::Validator.validate!(input[:flow_arn], ::String, context: "#{context}[:flow_arn]")
      end
    end

    class StartFlowOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartFlowOutput, context: context)
        Hearth::Validator.validate!(input[:flow_arn], ::String, context: "#{context}[:flow_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class StopFlowInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopFlowInput, context: context)
        Hearth::Validator.validate!(input[:flow_arn], ::String, context: "#{context}[:flow_arn]")
      end
    end

    class StopFlowOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopFlowOutput, context: context)
        Hearth::Validator.validate!(input[:flow_arn], ::String, context: "#{context}[:flow_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
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

    class TooManyRequestsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyRequestsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Transport
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Transport, context: context)
        List____listOf__string.validate!(input[:cidr_allow_list], context: "#{context}[:cidr_allow_list]") unless input[:cidr_allow_list].nil?
        Hearth::Validator.validate!(input[:max_bitrate], ::Integer, context: "#{context}[:max_bitrate]")
        Hearth::Validator.validate!(input[:max_latency], ::Integer, context: "#{context}[:max_latency]")
        Hearth::Validator.validate!(input[:max_sync_buffer], ::Integer, context: "#{context}[:max_sync_buffer]")
        Hearth::Validator.validate!(input[:min_latency], ::Integer, context: "#{context}[:min_latency]")
        Hearth::Validator.validate!(input[:protocol], ::String, context: "#{context}[:protocol]")
        Hearth::Validator.validate!(input[:remote_id], ::String, context: "#{context}[:remote_id]")
        Hearth::Validator.validate!(input[:sender_control_port], ::Integer, context: "#{context}[:sender_control_port]")
        Hearth::Validator.validate!(input[:sender_ip_address], ::String, context: "#{context}[:sender_ip_address]")
        Hearth::Validator.validate!(input[:smoothing_latency], ::Integer, context: "#{context}[:smoothing_latency]")
        Hearth::Validator.validate!(input[:stream_id], ::String, context: "#{context}[:stream_id]")
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

    class UpdateEncryption
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateEncryption, context: context)
        Hearth::Validator.validate!(input[:algorithm], ::String, context: "#{context}[:algorithm]")
        Hearth::Validator.validate!(input[:constant_initialization_vector], ::String, context: "#{context}[:constant_initialization_vector]")
        Hearth::Validator.validate!(input[:device_id], ::String, context: "#{context}[:device_id]")
        Hearth::Validator.validate!(input[:key_type], ::String, context: "#{context}[:key_type]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:secret_arn], ::String, context: "#{context}[:secret_arn]")
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
      end
    end

    class UpdateFailoverConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFailoverConfig, context: context)
        Hearth::Validator.validate!(input[:failover_mode], ::String, context: "#{context}[:failover_mode]")
        Hearth::Validator.validate!(input[:recovery_window], ::Integer, context: "#{context}[:recovery_window]")
        SourcePriority.validate!(input[:source_priority], context: "#{context}[:source_priority]") unless input[:source_priority].nil?
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
      end
    end

    class UpdateFlowEntitlementInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFlowEntitlementInput, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        UpdateEncryption.validate!(input[:encryption], context: "#{context}[:encryption]") unless input[:encryption].nil?
        Hearth::Validator.validate!(input[:entitlement_arn], ::String, context: "#{context}[:entitlement_arn]")
        Hearth::Validator.validate!(input[:entitlement_status], ::String, context: "#{context}[:entitlement_status]")
        Hearth::Validator.validate!(input[:flow_arn], ::String, context: "#{context}[:flow_arn]")
        List____listOf__string.validate!(input[:subscribers], context: "#{context}[:subscribers]") unless input[:subscribers].nil?
      end
    end

    class UpdateFlowEntitlementOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFlowEntitlementOutput, context: context)
        Entitlement.validate!(input[:entitlement], context: "#{context}[:entitlement]") unless input[:entitlement].nil?
        Hearth::Validator.validate!(input[:flow_arn], ::String, context: "#{context}[:flow_arn]")
      end
    end

    class UpdateFlowInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFlowInput, context: context)
        Hearth::Validator.validate!(input[:flow_arn], ::String, context: "#{context}[:flow_arn]")
        UpdateFailoverConfig.validate!(input[:source_failover_config], context: "#{context}[:source_failover_config]") unless input[:source_failover_config].nil?
        UpdateMaintenance.validate!(input[:maintenance], context: "#{context}[:maintenance]") unless input[:maintenance].nil?
      end
    end

    class UpdateFlowMediaStreamInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFlowMediaStreamInput, context: context)
        MediaStreamAttributesRequest.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
        Hearth::Validator.validate!(input[:clock_rate], ::Integer, context: "#{context}[:clock_rate]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:flow_arn], ::String, context: "#{context}[:flow_arn]")
        Hearth::Validator.validate!(input[:media_stream_name], ::String, context: "#{context}[:media_stream_name]")
        Hearth::Validator.validate!(input[:media_stream_type], ::String, context: "#{context}[:media_stream_type]")
        Hearth::Validator.validate!(input[:video_format], ::String, context: "#{context}[:video_format]")
      end
    end

    class UpdateFlowMediaStreamOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFlowMediaStreamOutput, context: context)
        Hearth::Validator.validate!(input[:flow_arn], ::String, context: "#{context}[:flow_arn]")
        MediaStream.validate!(input[:media_stream], context: "#{context}[:media_stream]") unless input[:media_stream].nil?
      end
    end

    class UpdateFlowOperationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFlowOperationOutput, context: context)
        Flow.validate!(input[:flow], context: "#{context}[:flow]") unless input[:flow].nil?
      end
    end

    class UpdateFlowOutputInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFlowOutputInput, context: context)
        List____listOf__string.validate!(input[:cidr_allow_list], context: "#{context}[:cidr_allow_list]") unless input[:cidr_allow_list].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:destination], ::String, context: "#{context}[:destination]")
        UpdateEncryption.validate!(input[:encryption], context: "#{context}[:encryption]") unless input[:encryption].nil?
        Hearth::Validator.validate!(input[:flow_arn], ::String, context: "#{context}[:flow_arn]")
        Hearth::Validator.validate!(input[:max_latency], ::Integer, context: "#{context}[:max_latency]")
        List____listOfMediaStreamOutputConfigurationRequest.validate!(input[:media_stream_output_configurations], context: "#{context}[:media_stream_output_configurations]") unless input[:media_stream_output_configurations].nil?
        Hearth::Validator.validate!(input[:min_latency], ::Integer, context: "#{context}[:min_latency]")
        Hearth::Validator.validate!(input[:output_arn], ::String, context: "#{context}[:output_arn]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:protocol], ::String, context: "#{context}[:protocol]")
        Hearth::Validator.validate!(input[:remote_id], ::String, context: "#{context}[:remote_id]")
        Hearth::Validator.validate!(input[:sender_control_port], ::Integer, context: "#{context}[:sender_control_port]")
        Hearth::Validator.validate!(input[:sender_ip_address], ::String, context: "#{context}[:sender_ip_address]")
        Hearth::Validator.validate!(input[:smoothing_latency], ::Integer, context: "#{context}[:smoothing_latency]")
        Hearth::Validator.validate!(input[:stream_id], ::String, context: "#{context}[:stream_id]")
        VpcInterfaceAttachment.validate!(input[:vpc_interface_attachment], context: "#{context}[:vpc_interface_attachment]") unless input[:vpc_interface_attachment].nil?
      end
    end

    class UpdateFlowOutputOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFlowOutputOutput, context: context)
        Hearth::Validator.validate!(input[:flow_arn], ::String, context: "#{context}[:flow_arn]")
        Output.validate!(input[:output], context: "#{context}[:output]") unless input[:output].nil?
      end
    end

    class UpdateFlowSourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFlowSourceInput, context: context)
        UpdateEncryption.validate!(input[:decryption], context: "#{context}[:decryption]") unless input[:decryption].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:entitlement_arn], ::String, context: "#{context}[:entitlement_arn]")
        Hearth::Validator.validate!(input[:flow_arn], ::String, context: "#{context}[:flow_arn]")
        Hearth::Validator.validate!(input[:ingest_port], ::Integer, context: "#{context}[:ingest_port]")
        Hearth::Validator.validate!(input[:max_bitrate], ::Integer, context: "#{context}[:max_bitrate]")
        Hearth::Validator.validate!(input[:max_latency], ::Integer, context: "#{context}[:max_latency]")
        Hearth::Validator.validate!(input[:max_sync_buffer], ::Integer, context: "#{context}[:max_sync_buffer]")
        List____listOfMediaStreamSourceConfigurationRequest.validate!(input[:media_stream_source_configurations], context: "#{context}[:media_stream_source_configurations]") unless input[:media_stream_source_configurations].nil?
        Hearth::Validator.validate!(input[:min_latency], ::Integer, context: "#{context}[:min_latency]")
        Hearth::Validator.validate!(input[:protocol], ::String, context: "#{context}[:protocol]")
        Hearth::Validator.validate!(input[:sender_control_port], ::Integer, context: "#{context}[:sender_control_port]")
        Hearth::Validator.validate!(input[:sender_ip_address], ::String, context: "#{context}[:sender_ip_address]")
        Hearth::Validator.validate!(input[:source_arn], ::String, context: "#{context}[:source_arn]")
        Hearth::Validator.validate!(input[:stream_id], ::String, context: "#{context}[:stream_id]")
        Hearth::Validator.validate!(input[:vpc_interface_name], ::String, context: "#{context}[:vpc_interface_name]")
        Hearth::Validator.validate!(input[:whitelist_cidr], ::String, context: "#{context}[:whitelist_cidr]")
      end
    end

    class UpdateFlowSourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFlowSourceOutput, context: context)
        Hearth::Validator.validate!(input[:flow_arn], ::String, context: "#{context}[:flow_arn]")
        Source.validate!(input[:source], context: "#{context}[:source]") unless input[:source].nil?
      end
    end

    class UpdateMaintenance
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateMaintenance, context: context)
        Hearth::Validator.validate!(input[:maintenance_day], ::String, context: "#{context}[:maintenance_day]")
        Hearth::Validator.validate!(input[:maintenance_scheduled_date], ::String, context: "#{context}[:maintenance_scheduled_date]")
        Hearth::Validator.validate!(input[:maintenance_start_hour], ::String, context: "#{context}[:maintenance_start_hour]")
      end
    end

    class VpcInterface
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VpcInterface, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        List____listOf__string.validate!(input[:network_interface_ids], context: "#{context}[:network_interface_ids]") unless input[:network_interface_ids].nil?
        Hearth::Validator.validate!(input[:network_interface_type], ::String, context: "#{context}[:network_interface_type]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        List____listOf__string.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
        Hearth::Validator.validate!(input[:subnet_id], ::String, context: "#{context}[:subnet_id]")
      end
    end

    class VpcInterfaceAttachment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VpcInterfaceAttachment, context: context)
        Hearth::Validator.validate!(input[:vpc_interface_name], ::String, context: "#{context}[:vpc_interface_name]")
      end
    end

    class VpcInterfaceRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VpcInterfaceRequest, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:network_interface_type], ::String, context: "#{context}[:network_interface_type]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        List____listOf__string.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
        Hearth::Validator.validate!(input[:subnet_id], ::String, context: "#{context}[:subnet_id]")
      end
    end

    class List____listOfAddMediaStreamRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AddMediaStreamRequest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfAddOutputRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AddOutputRequest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfDestinationConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DestinationConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfDestinationConfigurationRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DestinationConfigurationRequest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfEntitlement
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Entitlement.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfGrantEntitlementRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          GrantEntitlementRequest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfInputConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InputConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfInputConfigurationRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InputConfigurationRequest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfListedEntitlement
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ListedEntitlement.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfListedFlow
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ListedFlow.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfMediaStream
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MediaStream.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfMediaStreamOutputConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MediaStreamOutputConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfMediaStreamOutputConfigurationRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MediaStreamOutputConfigurationRequest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfMediaStreamSourceConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MediaStreamSourceConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfMediaStreamSourceConfigurationRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MediaStreamSourceConfigurationRequest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfOffering
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Offering.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Output.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfReservation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Reservation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfSetSourceRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SetSourceRequest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Source.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfVpcInterface
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          VpcInterface.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfVpcInterfaceRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          VpcInterfaceRequest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
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
