# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::NetworkManager
  module Validators

    class AWSLocation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AWSLocation, context: context)
        Hearth::Validator.validate!(input[:zone], ::String, context: "#{context}[:zone]")
        Hearth::Validator.validate!(input[:subnet_arn], ::String, context: "#{context}[:subnet_arn]")
      end
    end

    class AcceptAttachmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AcceptAttachmentInput, context: context)
        Hearth::Validator.validate!(input[:attachment_id], ::String, context: "#{context}[:attachment_id]")
      end
    end

    class AcceptAttachmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AcceptAttachmentOutput, context: context)
        Validators::Attachment.validate!(input[:attachment], context: "#{context}[:attachment]") unless input[:attachment].nil?
      end
    end

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AccountStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccountStatus, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:slr_deployment_status], ::String, context: "#{context}[:slr_deployment_status]")
      end
    end

    class AccountStatusList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AccountStatus.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AssociateConnectPeerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateConnectPeerInput, context: context)
        Hearth::Validator.validate!(input[:global_network_id], ::String, context: "#{context}[:global_network_id]")
        Hearth::Validator.validate!(input[:connect_peer_id], ::String, context: "#{context}[:connect_peer_id]")
        Hearth::Validator.validate!(input[:device_id], ::String, context: "#{context}[:device_id]")
        Hearth::Validator.validate!(input[:link_id], ::String, context: "#{context}[:link_id]")
      end
    end

    class AssociateConnectPeerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateConnectPeerOutput, context: context)
        Validators::ConnectPeerAssociation.validate!(input[:connect_peer_association], context: "#{context}[:connect_peer_association]") unless input[:connect_peer_association].nil?
      end
    end

    class AssociateCustomerGatewayInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateCustomerGatewayInput, context: context)
        Hearth::Validator.validate!(input[:customer_gateway_arn], ::String, context: "#{context}[:customer_gateway_arn]")
        Hearth::Validator.validate!(input[:global_network_id], ::String, context: "#{context}[:global_network_id]")
        Hearth::Validator.validate!(input[:device_id], ::String, context: "#{context}[:device_id]")
        Hearth::Validator.validate!(input[:link_id], ::String, context: "#{context}[:link_id]")
      end
    end

    class AssociateCustomerGatewayOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateCustomerGatewayOutput, context: context)
        Validators::CustomerGatewayAssociation.validate!(input[:customer_gateway_association], context: "#{context}[:customer_gateway_association]") unless input[:customer_gateway_association].nil?
      end
    end

    class AssociateLinkInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateLinkInput, context: context)
        Hearth::Validator.validate!(input[:global_network_id], ::String, context: "#{context}[:global_network_id]")
        Hearth::Validator.validate!(input[:device_id], ::String, context: "#{context}[:device_id]")
        Hearth::Validator.validate!(input[:link_id], ::String, context: "#{context}[:link_id]")
      end
    end

    class AssociateLinkOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateLinkOutput, context: context)
        Validators::LinkAssociation.validate!(input[:link_association], context: "#{context}[:link_association]") unless input[:link_association].nil?
      end
    end

    class AssociateTransitGatewayConnectPeerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateTransitGatewayConnectPeerInput, context: context)
        Hearth::Validator.validate!(input[:global_network_id], ::String, context: "#{context}[:global_network_id]")
        Hearth::Validator.validate!(input[:transit_gateway_connect_peer_arn], ::String, context: "#{context}[:transit_gateway_connect_peer_arn]")
        Hearth::Validator.validate!(input[:device_id], ::String, context: "#{context}[:device_id]")
        Hearth::Validator.validate!(input[:link_id], ::String, context: "#{context}[:link_id]")
      end
    end

    class AssociateTransitGatewayConnectPeerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateTransitGatewayConnectPeerOutput, context: context)
        Validators::TransitGatewayConnectPeerAssociation.validate!(input[:transit_gateway_connect_peer_association], context: "#{context}[:transit_gateway_connect_peer_association]") unless input[:transit_gateway_connect_peer_association].nil?
      end
    end

    class Attachment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Attachment, context: context)
        Hearth::Validator.validate!(input[:core_network_id], ::String, context: "#{context}[:core_network_id]")
        Hearth::Validator.validate!(input[:core_network_arn], ::String, context: "#{context}[:core_network_arn]")
        Hearth::Validator.validate!(input[:attachment_id], ::String, context: "#{context}[:attachment_id]")
        Hearth::Validator.validate!(input[:owner_account_id], ::String, context: "#{context}[:owner_account_id]")
        Hearth::Validator.validate!(input[:attachment_type], ::String, context: "#{context}[:attachment_type]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:edge_location], ::String, context: "#{context}[:edge_location]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:attachment_policy_rule_number], ::Integer, context: "#{context}[:attachment_policy_rule_number]")
        Hearth::Validator.validate!(input[:segment_name], ::String, context: "#{context}[:segment_name]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::ProposedSegmentChange.validate!(input[:proposed_segment_change], context: "#{context}[:proposed_segment_change]") unless input[:proposed_segment_change].nil?
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
      end
    end

    class AttachmentList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Attachment.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Bandwidth
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Bandwidth, context: context)
        Hearth::Validator.validate!(input[:upload_speed], ::Integer, context: "#{context}[:upload_speed]")
        Hearth::Validator.validate!(input[:download_speed], ::Integer, context: "#{context}[:download_speed]")
      end
    end

    class BgpOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BgpOptions, context: context)
        Hearth::Validator.validate!(input[:peer_asn], ::Integer, context: "#{context}[:peer_asn]")
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class ConnectAttachment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConnectAttachment, context: context)
        Validators::Attachment.validate!(input[:attachment], context: "#{context}[:attachment]") unless input[:attachment].nil?
        Hearth::Validator.validate!(input[:transport_attachment_id], ::String, context: "#{context}[:transport_attachment_id]")
        Validators::ConnectAttachmentOptions.validate!(input[:options], context: "#{context}[:options]") unless input[:options].nil?
      end
    end

    class ConnectAttachmentOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConnectAttachmentOptions, context: context)
        Hearth::Validator.validate!(input[:protocol], ::String, context: "#{context}[:protocol]")
      end
    end

    class ConnectPeer
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConnectPeer, context: context)
        Hearth::Validator.validate!(input[:core_network_id], ::String, context: "#{context}[:core_network_id]")
        Hearth::Validator.validate!(input[:connect_attachment_id], ::String, context: "#{context}[:connect_attachment_id]")
        Hearth::Validator.validate!(input[:connect_peer_id], ::String, context: "#{context}[:connect_peer_id]")
        Hearth::Validator.validate!(input[:edge_location], ::String, context: "#{context}[:edge_location]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Validators::ConnectPeerConfiguration.validate!(input[:configuration], context: "#{context}[:configuration]") unless input[:configuration].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ConnectPeerAssociation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConnectPeerAssociation, context: context)
        Hearth::Validator.validate!(input[:connect_peer_id], ::String, context: "#{context}[:connect_peer_id]")
        Hearth::Validator.validate!(input[:global_network_id], ::String, context: "#{context}[:global_network_id]")
        Hearth::Validator.validate!(input[:device_id], ::String, context: "#{context}[:device_id]")
        Hearth::Validator.validate!(input[:link_id], ::String, context: "#{context}[:link_id]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
      end
    end

    class ConnectPeerAssociationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ConnectPeerAssociation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConnectPeerBgpConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConnectPeerBgpConfiguration, context: context)
        Hearth::Validator.validate!(input[:core_network_asn], ::Integer, context: "#{context}[:core_network_asn]")
        Hearth::Validator.validate!(input[:peer_asn], ::Integer, context: "#{context}[:peer_asn]")
        Hearth::Validator.validate!(input[:core_network_address], ::String, context: "#{context}[:core_network_address]")
        Hearth::Validator.validate!(input[:peer_address], ::String, context: "#{context}[:peer_address]")
      end
    end

    class ConnectPeerBgpConfigurationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ConnectPeerBgpConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConnectPeerConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConnectPeerConfiguration, context: context)
        Hearth::Validator.validate!(input[:core_network_address], ::String, context: "#{context}[:core_network_address]")
        Hearth::Validator.validate!(input[:peer_address], ::String, context: "#{context}[:peer_address]")
        Validators::ConstrainedStringList.validate!(input[:inside_cidr_blocks], context: "#{context}[:inside_cidr_blocks]") unless input[:inside_cidr_blocks].nil?
        Hearth::Validator.validate!(input[:protocol], ::String, context: "#{context}[:protocol]")
        Validators::ConnectPeerBgpConfigurationList.validate!(input[:bgp_configurations], context: "#{context}[:bgp_configurations]") unless input[:bgp_configurations].nil?
      end
    end

    class ConnectPeerIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ConnectPeerSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConnectPeerSummary, context: context)
        Hearth::Validator.validate!(input[:core_network_id], ::String, context: "#{context}[:core_network_id]")
        Hearth::Validator.validate!(input[:connect_attachment_id], ::String, context: "#{context}[:connect_attachment_id]")
        Hearth::Validator.validate!(input[:connect_peer_id], ::String, context: "#{context}[:connect_peer_id]")
        Hearth::Validator.validate!(input[:edge_location], ::String, context: "#{context}[:edge_location]")
        Hearth::Validator.validate!(input[:connect_peer_state], ::String, context: "#{context}[:connect_peer_state]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ConnectPeerSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ConnectPeerSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Connection
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Connection, context: context)
        Hearth::Validator.validate!(input[:connection_id], ::String, context: "#{context}[:connection_id]")
        Hearth::Validator.validate!(input[:connection_arn], ::String, context: "#{context}[:connection_arn]")
        Hearth::Validator.validate!(input[:global_network_id], ::String, context: "#{context}[:global_network_id]")
        Hearth::Validator.validate!(input[:device_id], ::String, context: "#{context}[:device_id]")
        Hearth::Validator.validate!(input[:connected_device_id], ::String, context: "#{context}[:connected_device_id]")
        Hearth::Validator.validate!(input[:link_id], ::String, context: "#{context}[:link_id]")
        Hearth::Validator.validate!(input[:connected_link_id], ::String, context: "#{context}[:connected_link_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ConnectionHealth
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConnectionHealth, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:timestamp], ::Time, context: "#{context}[:timestamp]")
      end
    end

    class ConnectionIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ConnectionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Connection.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConstrainedStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CoreNetwork
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CoreNetwork, context: context)
        Hearth::Validator.validate!(input[:global_network_id], ::String, context: "#{context}[:global_network_id]")
        Hearth::Validator.validate!(input[:core_network_id], ::String, context: "#{context}[:core_network_id]")
        Hearth::Validator.validate!(input[:core_network_arn], ::String, context: "#{context}[:core_network_arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Validators::CoreNetworkSegmentList.validate!(input[:segments], context: "#{context}[:segments]") unless input[:segments].nil?
        Validators::CoreNetworkEdgeList.validate!(input[:edges], context: "#{context}[:edges]") unless input[:edges].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CoreNetworkChange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CoreNetworkChange, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
        Hearth::Validator.validate!(input[:identifier], ::String, context: "#{context}[:identifier]")
        Validators::CoreNetworkChangeValues.validate!(input[:previous_values], context: "#{context}[:previous_values]") unless input[:previous_values].nil?
        Validators::CoreNetworkChangeValues.validate!(input[:new_values], context: "#{context}[:new_values]") unless input[:new_values].nil?
      end
    end

    class CoreNetworkChangeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::CoreNetworkChange.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CoreNetworkChangeValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CoreNetworkChangeValues, context: context)
        Hearth::Validator.validate!(input[:segment_name], ::String, context: "#{context}[:segment_name]")
        Validators::ExternalRegionCodeList.validate!(input[:edge_locations], context: "#{context}[:edge_locations]") unless input[:edge_locations].nil?
        Hearth::Validator.validate!(input[:asn], ::Integer, context: "#{context}[:asn]")
        Hearth::Validator.validate!(input[:cidr], ::String, context: "#{context}[:cidr]")
        Hearth::Validator.validate!(input[:destination_identifier], ::String, context: "#{context}[:destination_identifier]")
        Validators::ConstrainedStringList.validate!(input[:inside_cidr_blocks], context: "#{context}[:inside_cidr_blocks]") unless input[:inside_cidr_blocks].nil?
        Validators::ConstrainedStringList.validate!(input[:shared_segments], context: "#{context}[:shared_segments]") unless input[:shared_segments].nil?
      end
    end

    class CoreNetworkEdge
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CoreNetworkEdge, context: context)
        Hearth::Validator.validate!(input[:edge_location], ::String, context: "#{context}[:edge_location]")
        Hearth::Validator.validate!(input[:asn], ::Integer, context: "#{context}[:asn]")
        Validators::ConstrainedStringList.validate!(input[:inside_cidr_blocks], context: "#{context}[:inside_cidr_blocks]") unless input[:inside_cidr_blocks].nil?
      end
    end

    class CoreNetworkEdgeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::CoreNetworkEdge.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CoreNetworkPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CoreNetworkPolicy, context: context)
        Hearth::Validator.validate!(input[:core_network_id], ::String, context: "#{context}[:core_network_id]")
        Hearth::Validator.validate!(input[:policy_version_id], ::Integer, context: "#{context}[:policy_version_id]")
        Hearth::Validator.validate!(input[:alias], ::String, context: "#{context}[:alias]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:change_set_state], ::String, context: "#{context}[:change_set_state]")
        Validators::CoreNetworkPolicyErrorList.validate!(input[:policy_errors], context: "#{context}[:policy_errors]") unless input[:policy_errors].nil?
        Hearth::Validator.validate!(input[:policy_document], ::String, context: "#{context}[:policy_document]")
      end
    end

    class CoreNetworkPolicyError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CoreNetworkPolicyError, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
      end
    end

    class CoreNetworkPolicyErrorList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::CoreNetworkPolicyError.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CoreNetworkPolicyException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CoreNetworkPolicyException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Validators::CoreNetworkPolicyErrorList.validate!(input[:errors], context: "#{context}[:errors]") unless input[:errors].nil?
      end
    end

    class CoreNetworkPolicyVersion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CoreNetworkPolicyVersion, context: context)
        Hearth::Validator.validate!(input[:core_network_id], ::String, context: "#{context}[:core_network_id]")
        Hearth::Validator.validate!(input[:policy_version_id], ::Integer, context: "#{context}[:policy_version_id]")
        Hearth::Validator.validate!(input[:alias], ::String, context: "#{context}[:alias]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:change_set_state], ::String, context: "#{context}[:change_set_state]")
      end
    end

    class CoreNetworkPolicyVersionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::CoreNetworkPolicyVersion.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CoreNetworkSegment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CoreNetworkSegment, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::ExternalRegionCodeList.validate!(input[:edge_locations], context: "#{context}[:edge_locations]") unless input[:edge_locations].nil?
        Validators::ConstrainedStringList.validate!(input[:shared_segments], context: "#{context}[:shared_segments]") unless input[:shared_segments].nil?
      end
    end

    class CoreNetworkSegmentEdgeIdentifier
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CoreNetworkSegmentEdgeIdentifier, context: context)
        Hearth::Validator.validate!(input[:core_network_id], ::String, context: "#{context}[:core_network_id]")
        Hearth::Validator.validate!(input[:segment_name], ::String, context: "#{context}[:segment_name]")
        Hearth::Validator.validate!(input[:edge_location], ::String, context: "#{context}[:edge_location]")
      end
    end

    class CoreNetworkSegmentList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::CoreNetworkSegment.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CoreNetworkSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CoreNetworkSummary, context: context)
        Hearth::Validator.validate!(input[:core_network_id], ::String, context: "#{context}[:core_network_id]")
        Hearth::Validator.validate!(input[:core_network_arn], ::String, context: "#{context}[:core_network_arn]")
        Hearth::Validator.validate!(input[:global_network_id], ::String, context: "#{context}[:global_network_id]")
        Hearth::Validator.validate!(input[:owner_account_id], ::String, context: "#{context}[:owner_account_id]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CoreNetworkSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::CoreNetworkSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CreateConnectAttachmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateConnectAttachmentInput, context: context)
        Hearth::Validator.validate!(input[:core_network_id], ::String, context: "#{context}[:core_network_id]")
        Hearth::Validator.validate!(input[:edge_location], ::String, context: "#{context}[:edge_location]")
        Hearth::Validator.validate!(input[:transport_attachment_id], ::String, context: "#{context}[:transport_attachment_id]")
        Validators::ConnectAttachmentOptions.validate!(input[:options], context: "#{context}[:options]") unless input[:options].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class CreateConnectAttachmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateConnectAttachmentOutput, context: context)
        Validators::ConnectAttachment.validate!(input[:connect_attachment], context: "#{context}[:connect_attachment]") unless input[:connect_attachment].nil?
      end
    end

    class CreateConnectPeerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateConnectPeerInput, context: context)
        Hearth::Validator.validate!(input[:connect_attachment_id], ::String, context: "#{context}[:connect_attachment_id]")
        Hearth::Validator.validate!(input[:core_network_address], ::String, context: "#{context}[:core_network_address]")
        Hearth::Validator.validate!(input[:peer_address], ::String, context: "#{context}[:peer_address]")
        Validators::BgpOptions.validate!(input[:bgp_options], context: "#{context}[:bgp_options]") unless input[:bgp_options].nil?
        Validators::ConstrainedStringList.validate!(input[:inside_cidr_blocks], context: "#{context}[:inside_cidr_blocks]") unless input[:inside_cidr_blocks].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class CreateConnectPeerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateConnectPeerOutput, context: context)
        Validators::ConnectPeer.validate!(input[:connect_peer], context: "#{context}[:connect_peer]") unless input[:connect_peer].nil?
      end
    end

    class CreateConnectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateConnectionInput, context: context)
        Hearth::Validator.validate!(input[:global_network_id], ::String, context: "#{context}[:global_network_id]")
        Hearth::Validator.validate!(input[:device_id], ::String, context: "#{context}[:device_id]")
        Hearth::Validator.validate!(input[:connected_device_id], ::String, context: "#{context}[:connected_device_id]")
        Hearth::Validator.validate!(input[:link_id], ::String, context: "#{context}[:link_id]")
        Hearth::Validator.validate!(input[:connected_link_id], ::String, context: "#{context}[:connected_link_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateConnectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateConnectionOutput, context: context)
        Validators::Connection.validate!(input[:connection], context: "#{context}[:connection]") unless input[:connection].nil?
      end
    end

    class CreateCoreNetworkInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCoreNetworkInput, context: context)
        Hearth::Validator.validate!(input[:global_network_id], ::String, context: "#{context}[:global_network_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:policy_document], ::String, context: "#{context}[:policy_document]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class CreateCoreNetworkOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCoreNetworkOutput, context: context)
        Validators::CoreNetwork.validate!(input[:core_network], context: "#{context}[:core_network]") unless input[:core_network].nil?
      end
    end

    class CreateDeviceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDeviceInput, context: context)
        Hearth::Validator.validate!(input[:global_network_id], ::String, context: "#{context}[:global_network_id]")
        Validators::AWSLocation.validate!(input[:aws_location], context: "#{context}[:aws_location]") unless input[:aws_location].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:vendor], ::String, context: "#{context}[:vendor]")
        Hearth::Validator.validate!(input[:model], ::String, context: "#{context}[:model]")
        Hearth::Validator.validate!(input[:serial_number], ::String, context: "#{context}[:serial_number]")
        Validators::Location.validate!(input[:location], context: "#{context}[:location]") unless input[:location].nil?
        Hearth::Validator.validate!(input[:site_id], ::String, context: "#{context}[:site_id]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateDeviceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDeviceOutput, context: context)
        Validators::Device.validate!(input[:device], context: "#{context}[:device]") unless input[:device].nil?
      end
    end

    class CreateGlobalNetworkInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateGlobalNetworkInput, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateGlobalNetworkOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateGlobalNetworkOutput, context: context)
        Validators::GlobalNetwork.validate!(input[:global_network], context: "#{context}[:global_network]") unless input[:global_network].nil?
      end
    end

    class CreateLinkInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLinkInput, context: context)
        Hearth::Validator.validate!(input[:global_network_id], ::String, context: "#{context}[:global_network_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Validators::Bandwidth.validate!(input[:bandwidth], context: "#{context}[:bandwidth]") unless input[:bandwidth].nil?
        Hearth::Validator.validate!(input[:provider], ::String, context: "#{context}[:provider]")
        Hearth::Validator.validate!(input[:site_id], ::String, context: "#{context}[:site_id]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateLinkOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLinkOutput, context: context)
        Validators::Link.validate!(input[:link], context: "#{context}[:link]") unless input[:link].nil?
      end
    end

    class CreateSiteInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSiteInput, context: context)
        Hearth::Validator.validate!(input[:global_network_id], ::String, context: "#{context}[:global_network_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::Location.validate!(input[:location], context: "#{context}[:location]") unless input[:location].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateSiteOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSiteOutput, context: context)
        Validators::Site.validate!(input[:site], context: "#{context}[:site]") unless input[:site].nil?
      end
    end

    class CreateSiteToSiteVpnAttachmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSiteToSiteVpnAttachmentInput, context: context)
        Hearth::Validator.validate!(input[:core_network_id], ::String, context: "#{context}[:core_network_id]")
        Hearth::Validator.validate!(input[:vpn_connection_arn], ::String, context: "#{context}[:vpn_connection_arn]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class CreateSiteToSiteVpnAttachmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSiteToSiteVpnAttachmentOutput, context: context)
        Validators::SiteToSiteVpnAttachment.validate!(input[:site_to_site_vpn_attachment], context: "#{context}[:site_to_site_vpn_attachment]") unless input[:site_to_site_vpn_attachment].nil?
      end
    end

    class CreateVpcAttachmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateVpcAttachmentInput, context: context)
        Hearth::Validator.validate!(input[:core_network_id], ::String, context: "#{context}[:core_network_id]")
        Hearth::Validator.validate!(input[:vpc_arn], ::String, context: "#{context}[:vpc_arn]")
        Validators::SubnetArnList.validate!(input[:subnet_arns], context: "#{context}[:subnet_arns]") unless input[:subnet_arns].nil?
        Validators::VpcOptions.validate!(input[:options], context: "#{context}[:options]") unless input[:options].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class CreateVpcAttachmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateVpcAttachmentOutput, context: context)
        Validators::VpcAttachment.validate!(input[:vpc_attachment], context: "#{context}[:vpc_attachment]") unless input[:vpc_attachment].nil?
      end
    end

    class CustomerGatewayArnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CustomerGatewayAssociation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomerGatewayAssociation, context: context)
        Hearth::Validator.validate!(input[:customer_gateway_arn], ::String, context: "#{context}[:customer_gateway_arn]")
        Hearth::Validator.validate!(input[:global_network_id], ::String, context: "#{context}[:global_network_id]")
        Hearth::Validator.validate!(input[:device_id], ::String, context: "#{context}[:device_id]")
        Hearth::Validator.validate!(input[:link_id], ::String, context: "#{context}[:link_id]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
      end
    end

    class CustomerGatewayAssociationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::CustomerGatewayAssociation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeleteAttachmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAttachmentInput, context: context)
        Hearth::Validator.validate!(input[:attachment_id], ::String, context: "#{context}[:attachment_id]")
      end
    end

    class DeleteAttachmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAttachmentOutput, context: context)
        Validators::Attachment.validate!(input[:attachment], context: "#{context}[:attachment]") unless input[:attachment].nil?
      end
    end

    class DeleteConnectPeerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteConnectPeerInput, context: context)
        Hearth::Validator.validate!(input[:connect_peer_id], ::String, context: "#{context}[:connect_peer_id]")
      end
    end

    class DeleteConnectPeerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteConnectPeerOutput, context: context)
        Validators::ConnectPeer.validate!(input[:connect_peer], context: "#{context}[:connect_peer]") unless input[:connect_peer].nil?
      end
    end

    class DeleteConnectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteConnectionInput, context: context)
        Hearth::Validator.validate!(input[:global_network_id], ::String, context: "#{context}[:global_network_id]")
        Hearth::Validator.validate!(input[:connection_id], ::String, context: "#{context}[:connection_id]")
      end
    end

    class DeleteConnectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteConnectionOutput, context: context)
        Validators::Connection.validate!(input[:connection], context: "#{context}[:connection]") unless input[:connection].nil?
      end
    end

    class DeleteCoreNetworkInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCoreNetworkInput, context: context)
        Hearth::Validator.validate!(input[:core_network_id], ::String, context: "#{context}[:core_network_id]")
      end
    end

    class DeleteCoreNetworkOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCoreNetworkOutput, context: context)
        Validators::CoreNetwork.validate!(input[:core_network], context: "#{context}[:core_network]") unless input[:core_network].nil?
      end
    end

    class DeleteCoreNetworkPolicyVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCoreNetworkPolicyVersionInput, context: context)
        Hearth::Validator.validate!(input[:core_network_id], ::String, context: "#{context}[:core_network_id]")
        Hearth::Validator.validate!(input[:policy_version_id], ::Integer, context: "#{context}[:policy_version_id]")
      end
    end

    class DeleteCoreNetworkPolicyVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCoreNetworkPolicyVersionOutput, context: context)
        Validators::CoreNetworkPolicy.validate!(input[:core_network_policy], context: "#{context}[:core_network_policy]") unless input[:core_network_policy].nil?
      end
    end

    class DeleteDeviceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDeviceInput, context: context)
        Hearth::Validator.validate!(input[:global_network_id], ::String, context: "#{context}[:global_network_id]")
        Hearth::Validator.validate!(input[:device_id], ::String, context: "#{context}[:device_id]")
      end
    end

    class DeleteDeviceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDeviceOutput, context: context)
        Validators::Device.validate!(input[:device], context: "#{context}[:device]") unless input[:device].nil?
      end
    end

    class DeleteGlobalNetworkInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteGlobalNetworkInput, context: context)
        Hearth::Validator.validate!(input[:global_network_id], ::String, context: "#{context}[:global_network_id]")
      end
    end

    class DeleteGlobalNetworkOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteGlobalNetworkOutput, context: context)
        Validators::GlobalNetwork.validate!(input[:global_network], context: "#{context}[:global_network]") unless input[:global_network].nil?
      end
    end

    class DeleteLinkInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLinkInput, context: context)
        Hearth::Validator.validate!(input[:global_network_id], ::String, context: "#{context}[:global_network_id]")
        Hearth::Validator.validate!(input[:link_id], ::String, context: "#{context}[:link_id]")
      end
    end

    class DeleteLinkOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLinkOutput, context: context)
        Validators::Link.validate!(input[:link], context: "#{context}[:link]") unless input[:link].nil?
      end
    end

    class DeleteResourcePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteResourcePolicyInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class DeleteResourcePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteResourcePolicyOutput, context: context)
      end
    end

    class DeleteSiteInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSiteInput, context: context)
        Hearth::Validator.validate!(input[:global_network_id], ::String, context: "#{context}[:global_network_id]")
        Hearth::Validator.validate!(input[:site_id], ::String, context: "#{context}[:site_id]")
      end
    end

    class DeleteSiteOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSiteOutput, context: context)
        Validators::Site.validate!(input[:site], context: "#{context}[:site]") unless input[:site].nil?
      end
    end

    class DeregisterTransitGatewayInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterTransitGatewayInput, context: context)
        Hearth::Validator.validate!(input[:global_network_id], ::String, context: "#{context}[:global_network_id]")
        Hearth::Validator.validate!(input[:transit_gateway_arn], ::String, context: "#{context}[:transit_gateway_arn]")
      end
    end

    class DeregisterTransitGatewayOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterTransitGatewayOutput, context: context)
        Validators::TransitGatewayRegistration.validate!(input[:transit_gateway_registration], context: "#{context}[:transit_gateway_registration]") unless input[:transit_gateway_registration].nil?
      end
    end

    class DescribeGlobalNetworksInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeGlobalNetworksInput, context: context)
        Validators::GlobalNetworkIdList.validate!(input[:global_network_ids], context: "#{context}[:global_network_ids]") unless input[:global_network_ids].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeGlobalNetworksOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeGlobalNetworksOutput, context: context)
        Validators::GlobalNetworkList.validate!(input[:global_networks], context: "#{context}[:global_networks]") unless input[:global_networks].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class Device
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Device, context: context)
        Hearth::Validator.validate!(input[:device_id], ::String, context: "#{context}[:device_id]")
        Hearth::Validator.validate!(input[:device_arn], ::String, context: "#{context}[:device_arn]")
        Hearth::Validator.validate!(input[:global_network_id], ::String, context: "#{context}[:global_network_id]")
        Validators::AWSLocation.validate!(input[:aws_location], context: "#{context}[:aws_location]") unless input[:aws_location].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:vendor], ::String, context: "#{context}[:vendor]")
        Hearth::Validator.validate!(input[:model], ::String, context: "#{context}[:model]")
        Hearth::Validator.validate!(input[:serial_number], ::String, context: "#{context}[:serial_number]")
        Validators::Location.validate!(input[:location], context: "#{context}[:location]") unless input[:location].nil?
        Hearth::Validator.validate!(input[:site_id], ::String, context: "#{context}[:site_id]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class DeviceIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DeviceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Device.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DisassociateConnectPeerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateConnectPeerInput, context: context)
        Hearth::Validator.validate!(input[:global_network_id], ::String, context: "#{context}[:global_network_id]")
        Hearth::Validator.validate!(input[:connect_peer_id], ::String, context: "#{context}[:connect_peer_id]")
      end
    end

    class DisassociateConnectPeerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateConnectPeerOutput, context: context)
        Validators::ConnectPeerAssociation.validate!(input[:connect_peer_association], context: "#{context}[:connect_peer_association]") unless input[:connect_peer_association].nil?
      end
    end

    class DisassociateCustomerGatewayInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateCustomerGatewayInput, context: context)
        Hearth::Validator.validate!(input[:global_network_id], ::String, context: "#{context}[:global_network_id]")
        Hearth::Validator.validate!(input[:customer_gateway_arn], ::String, context: "#{context}[:customer_gateway_arn]")
      end
    end

    class DisassociateCustomerGatewayOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateCustomerGatewayOutput, context: context)
        Validators::CustomerGatewayAssociation.validate!(input[:customer_gateway_association], context: "#{context}[:customer_gateway_association]") unless input[:customer_gateway_association].nil?
      end
    end

    class DisassociateLinkInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateLinkInput, context: context)
        Hearth::Validator.validate!(input[:global_network_id], ::String, context: "#{context}[:global_network_id]")
        Hearth::Validator.validate!(input[:device_id], ::String, context: "#{context}[:device_id]")
        Hearth::Validator.validate!(input[:link_id], ::String, context: "#{context}[:link_id]")
      end
    end

    class DisassociateLinkOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateLinkOutput, context: context)
        Validators::LinkAssociation.validate!(input[:link_association], context: "#{context}[:link_association]") unless input[:link_association].nil?
      end
    end

    class DisassociateTransitGatewayConnectPeerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateTransitGatewayConnectPeerInput, context: context)
        Hearth::Validator.validate!(input[:global_network_id], ::String, context: "#{context}[:global_network_id]")
        Hearth::Validator.validate!(input[:transit_gateway_connect_peer_arn], ::String, context: "#{context}[:transit_gateway_connect_peer_arn]")
      end
    end

    class DisassociateTransitGatewayConnectPeerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateTransitGatewayConnectPeerOutput, context: context)
        Validators::TransitGatewayConnectPeerAssociation.validate!(input[:transit_gateway_connect_peer_association], context: "#{context}[:transit_gateway_connect_peer_association]") unless input[:transit_gateway_connect_peer_association].nil?
      end
    end

    class ExceptionContextMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class ExecuteCoreNetworkChangeSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExecuteCoreNetworkChangeSetInput, context: context)
        Hearth::Validator.validate!(input[:core_network_id], ::String, context: "#{context}[:core_network_id]")
        Hearth::Validator.validate!(input[:policy_version_id], ::Integer, context: "#{context}[:policy_version_id]")
      end
    end

    class ExecuteCoreNetworkChangeSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExecuteCoreNetworkChangeSetOutput, context: context)
      end
    end

    class ExternalRegionCodeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class FilterMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::FilterValues.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class FilterValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class GetConnectAttachmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetConnectAttachmentInput, context: context)
        Hearth::Validator.validate!(input[:attachment_id], ::String, context: "#{context}[:attachment_id]")
      end
    end

    class GetConnectAttachmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetConnectAttachmentOutput, context: context)
        Validators::ConnectAttachment.validate!(input[:connect_attachment], context: "#{context}[:connect_attachment]") unless input[:connect_attachment].nil?
      end
    end

    class GetConnectPeerAssociationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetConnectPeerAssociationsInput, context: context)
        Hearth::Validator.validate!(input[:global_network_id], ::String, context: "#{context}[:global_network_id]")
        Validators::ConnectPeerIdList.validate!(input[:connect_peer_ids], context: "#{context}[:connect_peer_ids]") unless input[:connect_peer_ids].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetConnectPeerAssociationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetConnectPeerAssociationsOutput, context: context)
        Validators::ConnectPeerAssociationList.validate!(input[:connect_peer_associations], context: "#{context}[:connect_peer_associations]") unless input[:connect_peer_associations].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetConnectPeerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetConnectPeerInput, context: context)
        Hearth::Validator.validate!(input[:connect_peer_id], ::String, context: "#{context}[:connect_peer_id]")
      end
    end

    class GetConnectPeerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetConnectPeerOutput, context: context)
        Validators::ConnectPeer.validate!(input[:connect_peer], context: "#{context}[:connect_peer]") unless input[:connect_peer].nil?
      end
    end

    class GetConnectionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetConnectionsInput, context: context)
        Hearth::Validator.validate!(input[:global_network_id], ::String, context: "#{context}[:global_network_id]")
        Validators::ConnectionIdList.validate!(input[:connection_ids], context: "#{context}[:connection_ids]") unless input[:connection_ids].nil?
        Hearth::Validator.validate!(input[:device_id], ::String, context: "#{context}[:device_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetConnectionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetConnectionsOutput, context: context)
        Validators::ConnectionList.validate!(input[:connections], context: "#{context}[:connections]") unless input[:connections].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetCoreNetworkChangeSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCoreNetworkChangeSetInput, context: context)
        Hearth::Validator.validate!(input[:core_network_id], ::String, context: "#{context}[:core_network_id]")
        Hearth::Validator.validate!(input[:policy_version_id], ::Integer, context: "#{context}[:policy_version_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetCoreNetworkChangeSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCoreNetworkChangeSetOutput, context: context)
        Validators::CoreNetworkChangeList.validate!(input[:core_network_changes], context: "#{context}[:core_network_changes]") unless input[:core_network_changes].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetCoreNetworkInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCoreNetworkInput, context: context)
        Hearth::Validator.validate!(input[:core_network_id], ::String, context: "#{context}[:core_network_id]")
      end
    end

    class GetCoreNetworkOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCoreNetworkOutput, context: context)
        Validators::CoreNetwork.validate!(input[:core_network], context: "#{context}[:core_network]") unless input[:core_network].nil?
      end
    end

    class GetCoreNetworkPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCoreNetworkPolicyInput, context: context)
        Hearth::Validator.validate!(input[:core_network_id], ::String, context: "#{context}[:core_network_id]")
        Hearth::Validator.validate!(input[:policy_version_id], ::Integer, context: "#{context}[:policy_version_id]")
        Hearth::Validator.validate!(input[:alias], ::String, context: "#{context}[:alias]")
      end
    end

    class GetCoreNetworkPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCoreNetworkPolicyOutput, context: context)
        Validators::CoreNetworkPolicy.validate!(input[:core_network_policy], context: "#{context}[:core_network_policy]") unless input[:core_network_policy].nil?
      end
    end

    class GetCustomerGatewayAssociationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCustomerGatewayAssociationsInput, context: context)
        Hearth::Validator.validate!(input[:global_network_id], ::String, context: "#{context}[:global_network_id]")
        Validators::CustomerGatewayArnList.validate!(input[:customer_gateway_arns], context: "#{context}[:customer_gateway_arns]") unless input[:customer_gateway_arns].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetCustomerGatewayAssociationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCustomerGatewayAssociationsOutput, context: context)
        Validators::CustomerGatewayAssociationList.validate!(input[:customer_gateway_associations], context: "#{context}[:customer_gateway_associations]") unless input[:customer_gateway_associations].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetDevicesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDevicesInput, context: context)
        Hearth::Validator.validate!(input[:global_network_id], ::String, context: "#{context}[:global_network_id]")
        Validators::DeviceIdList.validate!(input[:device_ids], context: "#{context}[:device_ids]") unless input[:device_ids].nil?
        Hearth::Validator.validate!(input[:site_id], ::String, context: "#{context}[:site_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetDevicesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDevicesOutput, context: context)
        Validators::DeviceList.validate!(input[:devices], context: "#{context}[:devices]") unless input[:devices].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetLinkAssociationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLinkAssociationsInput, context: context)
        Hearth::Validator.validate!(input[:global_network_id], ::String, context: "#{context}[:global_network_id]")
        Hearth::Validator.validate!(input[:device_id], ::String, context: "#{context}[:device_id]")
        Hearth::Validator.validate!(input[:link_id], ::String, context: "#{context}[:link_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetLinkAssociationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLinkAssociationsOutput, context: context)
        Validators::LinkAssociationList.validate!(input[:link_associations], context: "#{context}[:link_associations]") unless input[:link_associations].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetLinksInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLinksInput, context: context)
        Hearth::Validator.validate!(input[:global_network_id], ::String, context: "#{context}[:global_network_id]")
        Validators::LinkIdList.validate!(input[:link_ids], context: "#{context}[:link_ids]") unless input[:link_ids].nil?
        Hearth::Validator.validate!(input[:site_id], ::String, context: "#{context}[:site_id]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:provider], ::String, context: "#{context}[:provider]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetLinksOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLinksOutput, context: context)
        Validators::LinkList.validate!(input[:links], context: "#{context}[:links]") unless input[:links].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetNetworkResourceCountsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetNetworkResourceCountsInput, context: context)
        Hearth::Validator.validate!(input[:global_network_id], ::String, context: "#{context}[:global_network_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetNetworkResourceCountsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetNetworkResourceCountsOutput, context: context)
        Validators::NetworkResourceCountList.validate!(input[:network_resource_counts], context: "#{context}[:network_resource_counts]") unless input[:network_resource_counts].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetNetworkResourceRelationshipsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetNetworkResourceRelationshipsInput, context: context)
        Hearth::Validator.validate!(input[:global_network_id], ::String, context: "#{context}[:global_network_id]")
        Hearth::Validator.validate!(input[:core_network_id], ::String, context: "#{context}[:core_network_id]")
        Hearth::Validator.validate!(input[:registered_gateway_arn], ::String, context: "#{context}[:registered_gateway_arn]")
        Hearth::Validator.validate!(input[:aws_region], ::String, context: "#{context}[:aws_region]")
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetNetworkResourceRelationshipsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetNetworkResourceRelationshipsOutput, context: context)
        Validators::RelationshipList.validate!(input[:relationships], context: "#{context}[:relationships]") unless input[:relationships].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetNetworkResourcesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetNetworkResourcesInput, context: context)
        Hearth::Validator.validate!(input[:global_network_id], ::String, context: "#{context}[:global_network_id]")
        Hearth::Validator.validate!(input[:core_network_id], ::String, context: "#{context}[:core_network_id]")
        Hearth::Validator.validate!(input[:registered_gateway_arn], ::String, context: "#{context}[:registered_gateway_arn]")
        Hearth::Validator.validate!(input[:aws_region], ::String, context: "#{context}[:aws_region]")
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetNetworkResourcesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetNetworkResourcesOutput, context: context)
        Validators::NetworkResourceList.validate!(input[:network_resources], context: "#{context}[:network_resources]") unless input[:network_resources].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetNetworkRoutesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetNetworkRoutesInput, context: context)
        Hearth::Validator.validate!(input[:global_network_id], ::String, context: "#{context}[:global_network_id]")
        Validators::RouteTableIdentifier.validate!(input[:route_table_identifier], context: "#{context}[:route_table_identifier]") unless input[:route_table_identifier].nil?
        Validators::ConstrainedStringList.validate!(input[:exact_cidr_matches], context: "#{context}[:exact_cidr_matches]") unless input[:exact_cidr_matches].nil?
        Validators::ConstrainedStringList.validate!(input[:longest_prefix_matches], context: "#{context}[:longest_prefix_matches]") unless input[:longest_prefix_matches].nil?
        Validators::ConstrainedStringList.validate!(input[:subnet_of_matches], context: "#{context}[:subnet_of_matches]") unless input[:subnet_of_matches].nil?
        Validators::ConstrainedStringList.validate!(input[:supernet_of_matches], context: "#{context}[:supernet_of_matches]") unless input[:supernet_of_matches].nil?
        Validators::ConstrainedStringList.validate!(input[:prefix_list_ids], context: "#{context}[:prefix_list_ids]") unless input[:prefix_list_ids].nil?
        Validators::RouteStateList.validate!(input[:states], context: "#{context}[:states]") unless input[:states].nil?
        Validators::RouteTypeList.validate!(input[:types], context: "#{context}[:types]") unless input[:types].nil?
        Validators::FilterMap.validate!(input[:destination_filters], context: "#{context}[:destination_filters]") unless input[:destination_filters].nil?
      end
    end

    class GetNetworkRoutesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetNetworkRoutesOutput, context: context)
        Hearth::Validator.validate!(input[:route_table_arn], ::String, context: "#{context}[:route_table_arn]")
        Validators::CoreNetworkSegmentEdgeIdentifier.validate!(input[:core_network_segment_edge], context: "#{context}[:core_network_segment_edge]") unless input[:core_network_segment_edge].nil?
        Hearth::Validator.validate!(input[:route_table_type], ::String, context: "#{context}[:route_table_type]")
        Hearth::Validator.validate!(input[:route_table_timestamp], ::Time, context: "#{context}[:route_table_timestamp]")
        Validators::NetworkRouteList.validate!(input[:network_routes], context: "#{context}[:network_routes]") unless input[:network_routes].nil?
      end
    end

    class GetNetworkTelemetryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetNetworkTelemetryInput, context: context)
        Hearth::Validator.validate!(input[:global_network_id], ::String, context: "#{context}[:global_network_id]")
        Hearth::Validator.validate!(input[:core_network_id], ::String, context: "#{context}[:core_network_id]")
        Hearth::Validator.validate!(input[:registered_gateway_arn], ::String, context: "#{context}[:registered_gateway_arn]")
        Hearth::Validator.validate!(input[:aws_region], ::String, context: "#{context}[:aws_region]")
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetNetworkTelemetryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetNetworkTelemetryOutput, context: context)
        Validators::NetworkTelemetryList.validate!(input[:network_telemetry], context: "#{context}[:network_telemetry]") unless input[:network_telemetry].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetResourcePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResourcePolicyInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class GetResourcePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResourcePolicyOutput, context: context)
        Hearth::Validator.validate!(input[:policy_document], ::String, context: "#{context}[:policy_document]")
      end
    end

    class GetRouteAnalysisInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRouteAnalysisInput, context: context)
        Hearth::Validator.validate!(input[:global_network_id], ::String, context: "#{context}[:global_network_id]")
        Hearth::Validator.validate!(input[:route_analysis_id], ::String, context: "#{context}[:route_analysis_id]")
      end
    end

    class GetRouteAnalysisOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRouteAnalysisOutput, context: context)
        Validators::RouteAnalysis.validate!(input[:route_analysis], context: "#{context}[:route_analysis]") unless input[:route_analysis].nil?
      end
    end

    class GetSiteToSiteVpnAttachmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSiteToSiteVpnAttachmentInput, context: context)
        Hearth::Validator.validate!(input[:attachment_id], ::String, context: "#{context}[:attachment_id]")
      end
    end

    class GetSiteToSiteVpnAttachmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSiteToSiteVpnAttachmentOutput, context: context)
        Validators::SiteToSiteVpnAttachment.validate!(input[:site_to_site_vpn_attachment], context: "#{context}[:site_to_site_vpn_attachment]") unless input[:site_to_site_vpn_attachment].nil?
      end
    end

    class GetSitesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSitesInput, context: context)
        Hearth::Validator.validate!(input[:global_network_id], ::String, context: "#{context}[:global_network_id]")
        Validators::SiteIdList.validate!(input[:site_ids], context: "#{context}[:site_ids]") unless input[:site_ids].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetSitesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSitesOutput, context: context)
        Validators::SiteList.validate!(input[:sites], context: "#{context}[:sites]") unless input[:sites].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetTransitGatewayConnectPeerAssociationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTransitGatewayConnectPeerAssociationsInput, context: context)
        Hearth::Validator.validate!(input[:global_network_id], ::String, context: "#{context}[:global_network_id]")
        Validators::TransitGatewayConnectPeerArnList.validate!(input[:transit_gateway_connect_peer_arns], context: "#{context}[:transit_gateway_connect_peer_arns]") unless input[:transit_gateway_connect_peer_arns].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetTransitGatewayConnectPeerAssociationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTransitGatewayConnectPeerAssociationsOutput, context: context)
        Validators::TransitGatewayConnectPeerAssociationList.validate!(input[:transit_gateway_connect_peer_associations], context: "#{context}[:transit_gateway_connect_peer_associations]") unless input[:transit_gateway_connect_peer_associations].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetTransitGatewayRegistrationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTransitGatewayRegistrationsInput, context: context)
        Hearth::Validator.validate!(input[:global_network_id], ::String, context: "#{context}[:global_network_id]")
        Validators::TransitGatewayArnList.validate!(input[:transit_gateway_arns], context: "#{context}[:transit_gateway_arns]") unless input[:transit_gateway_arns].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetTransitGatewayRegistrationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTransitGatewayRegistrationsOutput, context: context)
        Validators::TransitGatewayRegistrationList.validate!(input[:transit_gateway_registrations], context: "#{context}[:transit_gateway_registrations]") unless input[:transit_gateway_registrations].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetVpcAttachmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetVpcAttachmentInput, context: context)
        Hearth::Validator.validate!(input[:attachment_id], ::String, context: "#{context}[:attachment_id]")
      end
    end

    class GetVpcAttachmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetVpcAttachmentOutput, context: context)
        Validators::VpcAttachment.validate!(input[:vpc_attachment], context: "#{context}[:vpc_attachment]") unless input[:vpc_attachment].nil?
      end
    end

    class GlobalNetwork
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GlobalNetwork, context: context)
        Hearth::Validator.validate!(input[:global_network_id], ::String, context: "#{context}[:global_network_id]")
        Hearth::Validator.validate!(input[:global_network_arn], ::String, context: "#{context}[:global_network_arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class GlobalNetworkIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class GlobalNetworkList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::GlobalNetwork.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:retry_after_seconds], ::Integer, context: "#{context}[:retry_after_seconds]")
      end
    end

    class Link
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Link, context: context)
        Hearth::Validator.validate!(input[:link_id], ::String, context: "#{context}[:link_id]")
        Hearth::Validator.validate!(input[:link_arn], ::String, context: "#{context}[:link_arn]")
        Hearth::Validator.validate!(input[:global_network_id], ::String, context: "#{context}[:global_network_id]")
        Hearth::Validator.validate!(input[:site_id], ::String, context: "#{context}[:site_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Validators::Bandwidth.validate!(input[:bandwidth], context: "#{context}[:bandwidth]") unless input[:bandwidth].nil?
        Hearth::Validator.validate!(input[:provider], ::String, context: "#{context}[:provider]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class LinkAssociation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LinkAssociation, context: context)
        Hearth::Validator.validate!(input[:global_network_id], ::String, context: "#{context}[:global_network_id]")
        Hearth::Validator.validate!(input[:device_id], ::String, context: "#{context}[:device_id]")
        Hearth::Validator.validate!(input[:link_id], ::String, context: "#{context}[:link_id]")
        Hearth::Validator.validate!(input[:link_association_state], ::String, context: "#{context}[:link_association_state]")
      end
    end

    class LinkAssociationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::LinkAssociation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LinkIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class LinkList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Link.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListAttachmentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAttachmentsInput, context: context)
        Hearth::Validator.validate!(input[:core_network_id], ::String, context: "#{context}[:core_network_id]")
        Hearth::Validator.validate!(input[:attachment_type], ::String, context: "#{context}[:attachment_type]")
        Hearth::Validator.validate!(input[:edge_location], ::String, context: "#{context}[:edge_location]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAttachmentsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAttachmentsOutput, context: context)
        Validators::AttachmentList.validate!(input[:attachments], context: "#{context}[:attachments]") unless input[:attachments].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListConnectPeersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListConnectPeersInput, context: context)
        Hearth::Validator.validate!(input[:core_network_id], ::String, context: "#{context}[:core_network_id]")
        Hearth::Validator.validate!(input[:connect_attachment_id], ::String, context: "#{context}[:connect_attachment_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListConnectPeersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListConnectPeersOutput, context: context)
        Validators::ConnectPeerSummaryList.validate!(input[:connect_peers], context: "#{context}[:connect_peers]") unless input[:connect_peers].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListCoreNetworkPolicyVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCoreNetworkPolicyVersionsInput, context: context)
        Hearth::Validator.validate!(input[:core_network_id], ::String, context: "#{context}[:core_network_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListCoreNetworkPolicyVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCoreNetworkPolicyVersionsOutput, context: context)
        Validators::CoreNetworkPolicyVersionList.validate!(input[:core_network_policy_versions], context: "#{context}[:core_network_policy_versions]") unless input[:core_network_policy_versions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListCoreNetworksInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCoreNetworksInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListCoreNetworksOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCoreNetworksOutput, context: context)
        Validators::CoreNetworkSummaryList.validate!(input[:core_networks], context: "#{context}[:core_networks]") unless input[:core_networks].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListOrganizationServiceAccessStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListOrganizationServiceAccessStatusInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListOrganizationServiceAccessStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListOrganizationServiceAccessStatusOutput, context: context)
        Validators::OrganizationStatus.validate!(input[:organization_status], context: "#{context}[:organization_status]") unless input[:organization_status].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
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
        Validators::TagList.validate!(input[:tag_list], context: "#{context}[:tag_list]") unless input[:tag_list].nil?
      end
    end

    class Location
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Location, context: context)
        Hearth::Validator.validate!(input[:address], ::String, context: "#{context}[:address]")
        Hearth::Validator.validate!(input[:latitude], ::String, context: "#{context}[:latitude]")
        Hearth::Validator.validate!(input[:longitude], ::String, context: "#{context}[:longitude]")
      end
    end

    class NetworkResource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NetworkResource, context: context)
        Hearth::Validator.validate!(input[:registered_gateway_arn], ::String, context: "#{context}[:registered_gateway_arn]")
        Hearth::Validator.validate!(input[:core_network_id], ::String, context: "#{context}[:core_network_id]")
        Hearth::Validator.validate!(input[:aws_region], ::String, context: "#{context}[:aws_region]")
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:definition], ::String, context: "#{context}[:definition]")
        Hearth::Validator.validate!(input[:definition_timestamp], ::Time, context: "#{context}[:definition_timestamp]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::NetworkResourceMetadataMap.validate!(input[:metadata], context: "#{context}[:metadata]") unless input[:metadata].nil?
      end
    end

    class NetworkResourceCount
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NetworkResourceCount, context: context)
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:count], ::Integer, context: "#{context}[:count]")
      end
    end

    class NetworkResourceCountList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::NetworkResourceCount.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class NetworkResourceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::NetworkResource.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class NetworkResourceMetadataMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class NetworkResourceSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NetworkResourceSummary, context: context)
        Hearth::Validator.validate!(input[:registered_gateway_arn], ::String, context: "#{context}[:registered_gateway_arn]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:definition], ::String, context: "#{context}[:definition]")
        Hearth::Validator.validate!(input[:name_tag], ::String, context: "#{context}[:name_tag]")
        Hearth::Validator.validate!(input[:is_middlebox], ::TrueClass, ::FalseClass, context: "#{context}[:is_middlebox]")
      end
    end

    class NetworkRoute
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NetworkRoute, context: context)
        Hearth::Validator.validate!(input[:destination_cidr_block], ::String, context: "#{context}[:destination_cidr_block]")
        Validators::NetworkRouteDestinationList.validate!(input[:destinations], context: "#{context}[:destinations]") unless input[:destinations].nil?
        Hearth::Validator.validate!(input[:prefix_list_id], ::String, context: "#{context}[:prefix_list_id]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class NetworkRouteDestination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NetworkRouteDestination, context: context)
        Hearth::Validator.validate!(input[:core_network_attachment_id], ::String, context: "#{context}[:core_network_attachment_id]")
        Hearth::Validator.validate!(input[:transit_gateway_attachment_id], ::String, context: "#{context}[:transit_gateway_attachment_id]")
        Hearth::Validator.validate!(input[:segment_name], ::String, context: "#{context}[:segment_name]")
        Hearth::Validator.validate!(input[:edge_location], ::String, context: "#{context}[:edge_location]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
      end
    end

    class NetworkRouteDestinationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::NetworkRouteDestination.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class NetworkRouteList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::NetworkRoute.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class NetworkTelemetry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NetworkTelemetry, context: context)
        Hearth::Validator.validate!(input[:registered_gateway_arn], ::String, context: "#{context}[:registered_gateway_arn]")
        Hearth::Validator.validate!(input[:core_network_id], ::String, context: "#{context}[:core_network_id]")
        Hearth::Validator.validate!(input[:aws_region], ::String, context: "#{context}[:aws_region]")
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:address], ::String, context: "#{context}[:address]")
        Validators::ConnectionHealth.validate!(input[:health], context: "#{context}[:health]") unless input[:health].nil?
      end
    end

    class NetworkTelemetryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::NetworkTelemetry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OrganizationStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OrganizationStatus, context: context)
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
        Hearth::Validator.validate!(input[:organization_aws_service_access_status], ::String, context: "#{context}[:organization_aws_service_access_status]")
        Hearth::Validator.validate!(input[:slr_deployment_status], ::String, context: "#{context}[:slr_deployment_status]")
        Validators::AccountStatusList.validate!(input[:account_status_list], context: "#{context}[:account_status_list]") unless input[:account_status_list].nil?
      end
    end

    class PathComponent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PathComponent, context: context)
        Hearth::Validator.validate!(input[:sequence], ::Integer, context: "#{context}[:sequence]")
        Validators::NetworkResourceSummary.validate!(input[:resource], context: "#{context}[:resource]") unless input[:resource].nil?
        Hearth::Validator.validate!(input[:destination_cidr_block], ::String, context: "#{context}[:destination_cidr_block]")
      end
    end

    class PathComponentList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PathComponent.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ProposedSegmentChange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProposedSegmentChange, context: context)
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:attachment_policy_rule_number], ::Integer, context: "#{context}[:attachment_policy_rule_number]")
        Hearth::Validator.validate!(input[:segment_name], ::String, context: "#{context}[:segment_name]")
      end
    end

    class PutCoreNetworkPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutCoreNetworkPolicyInput, context: context)
        Hearth::Validator.validate!(input[:core_network_id], ::String, context: "#{context}[:core_network_id]")
        Hearth::Validator.validate!(input[:policy_document], ::String, context: "#{context}[:policy_document]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:latest_version_id], ::Integer, context: "#{context}[:latest_version_id]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class PutCoreNetworkPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutCoreNetworkPolicyOutput, context: context)
        Validators::CoreNetworkPolicy.validate!(input[:core_network_policy], context: "#{context}[:core_network_policy]") unless input[:core_network_policy].nil?
      end
    end

    class PutResourcePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutResourcePolicyInput, context: context)
        Hearth::Validator.validate!(input[:policy_document], ::String, context: "#{context}[:policy_document]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class PutResourcePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutResourcePolicyOutput, context: context)
      end
    end

    class ReasonContextMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class RegisterTransitGatewayInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterTransitGatewayInput, context: context)
        Hearth::Validator.validate!(input[:global_network_id], ::String, context: "#{context}[:global_network_id]")
        Hearth::Validator.validate!(input[:transit_gateway_arn], ::String, context: "#{context}[:transit_gateway_arn]")
      end
    end

    class RegisterTransitGatewayOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterTransitGatewayOutput, context: context)
        Validators::TransitGatewayRegistration.validate!(input[:transit_gateway_registration], context: "#{context}[:transit_gateway_registration]") unless input[:transit_gateway_registration].nil?
      end
    end

    class RejectAttachmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RejectAttachmentInput, context: context)
        Hearth::Validator.validate!(input[:attachment_id], ::String, context: "#{context}[:attachment_id]")
      end
    end

    class RejectAttachmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RejectAttachmentOutput, context: context)
        Validators::Attachment.validate!(input[:attachment], context: "#{context}[:attachment]") unless input[:attachment].nil?
      end
    end

    class Relationship
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Relationship, context: context)
        Hearth::Validator.validate!(input[:from], ::String, context: "#{context}[:from]")
        Hearth::Validator.validate!(input[:to], ::String, context: "#{context}[:to]")
      end
    end

    class RelationshipList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Relationship.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Validators::ExceptionContextMap.validate!(input[:context], context: "#{context}[:context]") unless input[:context].nil?
      end
    end

    class RestoreCoreNetworkPolicyVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RestoreCoreNetworkPolicyVersionInput, context: context)
        Hearth::Validator.validate!(input[:core_network_id], ::String, context: "#{context}[:core_network_id]")
        Hearth::Validator.validate!(input[:policy_version_id], ::Integer, context: "#{context}[:policy_version_id]")
      end
    end

    class RestoreCoreNetworkPolicyVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RestoreCoreNetworkPolicyVersionOutput, context: context)
        Validators::CoreNetworkPolicy.validate!(input[:core_network_policy], context: "#{context}[:core_network_policy]") unless input[:core_network_policy].nil?
      end
    end

    class RouteAnalysis
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RouteAnalysis, context: context)
        Hearth::Validator.validate!(input[:global_network_id], ::String, context: "#{context}[:global_network_id]")
        Hearth::Validator.validate!(input[:owner_account_id], ::String, context: "#{context}[:owner_account_id]")
        Hearth::Validator.validate!(input[:route_analysis_id], ::String, context: "#{context}[:route_analysis_id]")
        Hearth::Validator.validate!(input[:start_timestamp], ::Time, context: "#{context}[:start_timestamp]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Validators::RouteAnalysisEndpointOptions.validate!(input[:source], context: "#{context}[:source]") unless input[:source].nil?
        Validators::RouteAnalysisEndpointOptions.validate!(input[:destination], context: "#{context}[:destination]") unless input[:destination].nil?
        Hearth::Validator.validate!(input[:include_return_path], ::TrueClass, ::FalseClass, context: "#{context}[:include_return_path]")
        Hearth::Validator.validate!(input[:use_middleboxes], ::TrueClass, ::FalseClass, context: "#{context}[:use_middleboxes]")
        Validators::RouteAnalysisPath.validate!(input[:forward_path], context: "#{context}[:forward_path]") unless input[:forward_path].nil?
        Validators::RouteAnalysisPath.validate!(input[:return_path], context: "#{context}[:return_path]") unless input[:return_path].nil?
      end
    end

    class RouteAnalysisCompletion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RouteAnalysisCompletion, context: context)
        Hearth::Validator.validate!(input[:result_code], ::String, context: "#{context}[:result_code]")
        Hearth::Validator.validate!(input[:reason_code], ::String, context: "#{context}[:reason_code]")
        Validators::ReasonContextMap.validate!(input[:reason_context], context: "#{context}[:reason_context]") unless input[:reason_context].nil?
      end
    end

    class RouteAnalysisEndpointOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RouteAnalysisEndpointOptions, context: context)
        Hearth::Validator.validate!(input[:transit_gateway_attachment_arn], ::String, context: "#{context}[:transit_gateway_attachment_arn]")
        Hearth::Validator.validate!(input[:transit_gateway_arn], ::String, context: "#{context}[:transit_gateway_arn]")
        Hearth::Validator.validate!(input[:ip_address], ::String, context: "#{context}[:ip_address]")
      end
    end

    class RouteAnalysisEndpointOptionsSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RouteAnalysisEndpointOptionsSpecification, context: context)
        Hearth::Validator.validate!(input[:transit_gateway_attachment_arn], ::String, context: "#{context}[:transit_gateway_attachment_arn]")
        Hearth::Validator.validate!(input[:ip_address], ::String, context: "#{context}[:ip_address]")
      end
    end

    class RouteAnalysisPath
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RouteAnalysisPath, context: context)
        Validators::RouteAnalysisCompletion.validate!(input[:completion_status], context: "#{context}[:completion_status]") unless input[:completion_status].nil?
        Validators::PathComponentList.validate!(input[:path], context: "#{context}[:path]") unless input[:path].nil?
      end
    end

    class RouteStateList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class RouteTableIdentifier
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RouteTableIdentifier, context: context)
        Hearth::Validator.validate!(input[:transit_gateway_route_table_arn], ::String, context: "#{context}[:transit_gateway_route_table_arn]")
        Validators::CoreNetworkSegmentEdgeIdentifier.validate!(input[:core_network_segment_edge], context: "#{context}[:core_network_segment_edge]") unless input[:core_network_segment_edge].nil?
      end
    end

    class RouteTypeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ServiceQuotaExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceQuotaExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:limit_code], ::String, context: "#{context}[:limit_code]")
        Hearth::Validator.validate!(input[:service_code], ::String, context: "#{context}[:service_code]")
      end
    end

    class Site
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Site, context: context)
        Hearth::Validator.validate!(input[:site_id], ::String, context: "#{context}[:site_id]")
        Hearth::Validator.validate!(input[:site_arn], ::String, context: "#{context}[:site_arn]")
        Hearth::Validator.validate!(input[:global_network_id], ::String, context: "#{context}[:global_network_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::Location.validate!(input[:location], context: "#{context}[:location]") unless input[:location].nil?
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class SiteIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SiteList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Site.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SiteToSiteVpnAttachment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SiteToSiteVpnAttachment, context: context)
        Validators::Attachment.validate!(input[:attachment], context: "#{context}[:attachment]") unless input[:attachment].nil?
        Hearth::Validator.validate!(input[:vpn_connection_arn], ::String, context: "#{context}[:vpn_connection_arn]")
      end
    end

    class StartOrganizationServiceAccessUpdateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartOrganizationServiceAccessUpdateInput, context: context)
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
      end
    end

    class StartOrganizationServiceAccessUpdateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartOrganizationServiceAccessUpdateOutput, context: context)
        Validators::OrganizationStatus.validate!(input[:organization_status], context: "#{context}[:organization_status]") unless input[:organization_status].nil?
      end
    end

    class StartRouteAnalysisInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartRouteAnalysisInput, context: context)
        Hearth::Validator.validate!(input[:global_network_id], ::String, context: "#{context}[:global_network_id]")
        Validators::RouteAnalysisEndpointOptionsSpecification.validate!(input[:source], context: "#{context}[:source]") unless input[:source].nil?
        Validators::RouteAnalysisEndpointOptionsSpecification.validate!(input[:destination], context: "#{context}[:destination]") unless input[:destination].nil?
        Hearth::Validator.validate!(input[:include_return_path], ::TrueClass, ::FalseClass, context: "#{context}[:include_return_path]")
        Hearth::Validator.validate!(input[:use_middleboxes], ::TrueClass, ::FalseClass, context: "#{context}[:use_middleboxes]")
      end
    end

    class StartRouteAnalysisOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartRouteAnalysisOutput, context: context)
        Validators::RouteAnalysis.validate!(input[:route_analysis], context: "#{context}[:route_analysis]") unless input[:route_analysis].nil?
      end
    end

    class SubnetArnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class TagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:retry_after_seconds], ::Integer, context: "#{context}[:retry_after_seconds]")
      end
    end

    class TransitGatewayArnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TransitGatewayConnectPeerArnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TransitGatewayConnectPeerAssociation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TransitGatewayConnectPeerAssociation, context: context)
        Hearth::Validator.validate!(input[:transit_gateway_connect_peer_arn], ::String, context: "#{context}[:transit_gateway_connect_peer_arn]")
        Hearth::Validator.validate!(input[:global_network_id], ::String, context: "#{context}[:global_network_id]")
        Hearth::Validator.validate!(input[:device_id], ::String, context: "#{context}[:device_id]")
        Hearth::Validator.validate!(input[:link_id], ::String, context: "#{context}[:link_id]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
      end
    end

    class TransitGatewayConnectPeerAssociationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::TransitGatewayConnectPeerAssociation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TransitGatewayRegistration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TransitGatewayRegistration, context: context)
        Hearth::Validator.validate!(input[:global_network_id], ::String, context: "#{context}[:global_network_id]")
        Hearth::Validator.validate!(input[:transit_gateway_arn], ::String, context: "#{context}[:transit_gateway_arn]")
        Validators::TransitGatewayRegistrationStateReason.validate!(input[:state], context: "#{context}[:state]") unless input[:state].nil?
      end
    end

    class TransitGatewayRegistrationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::TransitGatewayRegistration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TransitGatewayRegistrationStateReason
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TransitGatewayRegistrationStateReason, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateConnectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateConnectionInput, context: context)
        Hearth::Validator.validate!(input[:global_network_id], ::String, context: "#{context}[:global_network_id]")
        Hearth::Validator.validate!(input[:connection_id], ::String, context: "#{context}[:connection_id]")
        Hearth::Validator.validate!(input[:link_id], ::String, context: "#{context}[:link_id]")
        Hearth::Validator.validate!(input[:connected_link_id], ::String, context: "#{context}[:connected_link_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class UpdateConnectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateConnectionOutput, context: context)
        Validators::Connection.validate!(input[:connection], context: "#{context}[:connection]") unless input[:connection].nil?
      end
    end

    class UpdateCoreNetworkInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateCoreNetworkInput, context: context)
        Hearth::Validator.validate!(input[:core_network_id], ::String, context: "#{context}[:core_network_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class UpdateCoreNetworkOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateCoreNetworkOutput, context: context)
        Validators::CoreNetwork.validate!(input[:core_network], context: "#{context}[:core_network]") unless input[:core_network].nil?
      end
    end

    class UpdateDeviceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDeviceInput, context: context)
        Hearth::Validator.validate!(input[:global_network_id], ::String, context: "#{context}[:global_network_id]")
        Hearth::Validator.validate!(input[:device_id], ::String, context: "#{context}[:device_id]")
        Validators::AWSLocation.validate!(input[:aws_location], context: "#{context}[:aws_location]") unless input[:aws_location].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:vendor], ::String, context: "#{context}[:vendor]")
        Hearth::Validator.validate!(input[:model], ::String, context: "#{context}[:model]")
        Hearth::Validator.validate!(input[:serial_number], ::String, context: "#{context}[:serial_number]")
        Validators::Location.validate!(input[:location], context: "#{context}[:location]") unless input[:location].nil?
        Hearth::Validator.validate!(input[:site_id], ::String, context: "#{context}[:site_id]")
      end
    end

    class UpdateDeviceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDeviceOutput, context: context)
        Validators::Device.validate!(input[:device], context: "#{context}[:device]") unless input[:device].nil?
      end
    end

    class UpdateGlobalNetworkInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateGlobalNetworkInput, context: context)
        Hearth::Validator.validate!(input[:global_network_id], ::String, context: "#{context}[:global_network_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class UpdateGlobalNetworkOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateGlobalNetworkOutput, context: context)
        Validators::GlobalNetwork.validate!(input[:global_network], context: "#{context}[:global_network]") unless input[:global_network].nil?
      end
    end

    class UpdateLinkInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateLinkInput, context: context)
        Hearth::Validator.validate!(input[:global_network_id], ::String, context: "#{context}[:global_network_id]")
        Hearth::Validator.validate!(input[:link_id], ::String, context: "#{context}[:link_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Validators::Bandwidth.validate!(input[:bandwidth], context: "#{context}[:bandwidth]") unless input[:bandwidth].nil?
        Hearth::Validator.validate!(input[:provider], ::String, context: "#{context}[:provider]")
      end
    end

    class UpdateLinkOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateLinkOutput, context: context)
        Validators::Link.validate!(input[:link], context: "#{context}[:link]") unless input[:link].nil?
      end
    end

    class UpdateNetworkResourceMetadataInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateNetworkResourceMetadataInput, context: context)
        Hearth::Validator.validate!(input[:global_network_id], ::String, context: "#{context}[:global_network_id]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::NetworkResourceMetadataMap.validate!(input[:metadata], context: "#{context}[:metadata]") unless input[:metadata].nil?
      end
    end

    class UpdateNetworkResourceMetadataOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateNetworkResourceMetadataOutput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::NetworkResourceMetadataMap.validate!(input[:metadata], context: "#{context}[:metadata]") unless input[:metadata].nil?
      end
    end

    class UpdateSiteInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSiteInput, context: context)
        Hearth::Validator.validate!(input[:global_network_id], ::String, context: "#{context}[:global_network_id]")
        Hearth::Validator.validate!(input[:site_id], ::String, context: "#{context}[:site_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::Location.validate!(input[:location], context: "#{context}[:location]") unless input[:location].nil?
      end
    end

    class UpdateSiteOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSiteOutput, context: context)
        Validators::Site.validate!(input[:site], context: "#{context}[:site]") unless input[:site].nil?
      end
    end

    class UpdateVpcAttachmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateVpcAttachmentInput, context: context)
        Hearth::Validator.validate!(input[:attachment_id], ::String, context: "#{context}[:attachment_id]")
        Validators::SubnetArnList.validate!(input[:add_subnet_arns], context: "#{context}[:add_subnet_arns]") unless input[:add_subnet_arns].nil?
        Validators::SubnetArnList.validate!(input[:remove_subnet_arns], context: "#{context}[:remove_subnet_arns]") unless input[:remove_subnet_arns].nil?
        Validators::VpcOptions.validate!(input[:options], context: "#{context}[:options]") unless input[:options].nil?
      end
    end

    class UpdateVpcAttachmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateVpcAttachmentOutput, context: context)
        Validators::VpcAttachment.validate!(input[:vpc_attachment], context: "#{context}[:vpc_attachment]") unless input[:vpc_attachment].nil?
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
        Validators::ValidationExceptionFieldList.validate!(input[:fields], context: "#{context}[:fields]") unless input[:fields].nil?
      end
    end

    class ValidationExceptionField
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationExceptionField, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ValidationExceptionFieldList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ValidationExceptionField.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class VpcAttachment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VpcAttachment, context: context)
        Validators::Attachment.validate!(input[:attachment], context: "#{context}[:attachment]") unless input[:attachment].nil?
        Validators::SubnetArnList.validate!(input[:subnet_arns], context: "#{context}[:subnet_arns]") unless input[:subnet_arns].nil?
        Validators::VpcOptions.validate!(input[:options], context: "#{context}[:options]") unless input[:options].nil?
      end
    end

    class VpcOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VpcOptions, context: context)
        Hearth::Validator.validate!(input[:ipv6_support], ::TrueClass, ::FalseClass, context: "#{context}[:ipv6_support]")
      end
    end

  end
end
