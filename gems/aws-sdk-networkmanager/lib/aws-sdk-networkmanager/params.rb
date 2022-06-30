# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::NetworkManager
  module Params

    module AWSLocation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AWSLocation, context: context)
        type = Types::AWSLocation.new
        type.zone = params[:zone]
        type.subnet_arn = params[:subnet_arn]
        type
      end
    end

    module AcceptAttachmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AcceptAttachmentInput, context: context)
        type = Types::AcceptAttachmentInput.new
        type.attachment_id = params[:attachment_id]
        type
      end
    end

    module AcceptAttachmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AcceptAttachmentOutput, context: context)
        type = Types::AcceptAttachmentOutput.new
        type.attachment = Attachment.build(params[:attachment], context: "#{context}[:attachment]") unless params[:attachment].nil?
        type
      end
    end

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module AccountStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccountStatus, context: context)
        type = Types::AccountStatus.new
        type.account_id = params[:account_id]
        type.slr_deployment_status = params[:slr_deployment_status]
        type
      end
    end

    module AccountStatusList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AccountStatus.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AssociateConnectPeerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateConnectPeerInput, context: context)
        type = Types::AssociateConnectPeerInput.new
        type.global_network_id = params[:global_network_id]
        type.connect_peer_id = params[:connect_peer_id]
        type.device_id = params[:device_id]
        type.link_id = params[:link_id]
        type
      end
    end

    module AssociateConnectPeerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateConnectPeerOutput, context: context)
        type = Types::AssociateConnectPeerOutput.new
        type.connect_peer_association = ConnectPeerAssociation.build(params[:connect_peer_association], context: "#{context}[:connect_peer_association]") unless params[:connect_peer_association].nil?
        type
      end
    end

    module AssociateCustomerGatewayInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateCustomerGatewayInput, context: context)
        type = Types::AssociateCustomerGatewayInput.new
        type.customer_gateway_arn = params[:customer_gateway_arn]
        type.global_network_id = params[:global_network_id]
        type.device_id = params[:device_id]
        type.link_id = params[:link_id]
        type
      end
    end

    module AssociateCustomerGatewayOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateCustomerGatewayOutput, context: context)
        type = Types::AssociateCustomerGatewayOutput.new
        type.customer_gateway_association = CustomerGatewayAssociation.build(params[:customer_gateway_association], context: "#{context}[:customer_gateway_association]") unless params[:customer_gateway_association].nil?
        type
      end
    end

    module AssociateLinkInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateLinkInput, context: context)
        type = Types::AssociateLinkInput.new
        type.global_network_id = params[:global_network_id]
        type.device_id = params[:device_id]
        type.link_id = params[:link_id]
        type
      end
    end

    module AssociateLinkOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateLinkOutput, context: context)
        type = Types::AssociateLinkOutput.new
        type.link_association = LinkAssociation.build(params[:link_association], context: "#{context}[:link_association]") unless params[:link_association].nil?
        type
      end
    end

    module AssociateTransitGatewayConnectPeerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateTransitGatewayConnectPeerInput, context: context)
        type = Types::AssociateTransitGatewayConnectPeerInput.new
        type.global_network_id = params[:global_network_id]
        type.transit_gateway_connect_peer_arn = params[:transit_gateway_connect_peer_arn]
        type.device_id = params[:device_id]
        type.link_id = params[:link_id]
        type
      end
    end

    module AssociateTransitGatewayConnectPeerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateTransitGatewayConnectPeerOutput, context: context)
        type = Types::AssociateTransitGatewayConnectPeerOutput.new
        type.transit_gateway_connect_peer_association = TransitGatewayConnectPeerAssociation.build(params[:transit_gateway_connect_peer_association], context: "#{context}[:transit_gateway_connect_peer_association]") unless params[:transit_gateway_connect_peer_association].nil?
        type
      end
    end

    module Attachment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Attachment, context: context)
        type = Types::Attachment.new
        type.core_network_id = params[:core_network_id]
        type.core_network_arn = params[:core_network_arn]
        type.attachment_id = params[:attachment_id]
        type.owner_account_id = params[:owner_account_id]
        type.attachment_type = params[:attachment_type]
        type.state = params[:state]
        type.edge_location = params[:edge_location]
        type.resource_arn = params[:resource_arn]
        type.attachment_policy_rule_number = params[:attachment_policy_rule_number]
        type.segment_name = params[:segment_name]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.proposed_segment_change = ProposedSegmentChange.build(params[:proposed_segment_change], context: "#{context}[:proposed_segment_change]") unless params[:proposed_segment_change].nil?
        type.created_at = params[:created_at]
        type.updated_at = params[:updated_at]
        type
      end
    end

    module AttachmentList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Attachment.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Bandwidth
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Bandwidth, context: context)
        type = Types::Bandwidth.new
        type.upload_speed = params[:upload_speed]
        type.download_speed = params[:download_speed]
        type
      end
    end

    module BgpOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BgpOptions, context: context)
        type = Types::BgpOptions.new
        type.peer_asn = params[:peer_asn]
        type
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.message = params[:message]
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module ConnectAttachment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConnectAttachment, context: context)
        type = Types::ConnectAttachment.new
        type.attachment = Attachment.build(params[:attachment], context: "#{context}[:attachment]") unless params[:attachment].nil?
        type.transport_attachment_id = params[:transport_attachment_id]
        type.options = ConnectAttachmentOptions.build(params[:options], context: "#{context}[:options]") unless params[:options].nil?
        type
      end
    end

    module ConnectAttachmentOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConnectAttachmentOptions, context: context)
        type = Types::ConnectAttachmentOptions.new
        type.protocol = params[:protocol]
        type
      end
    end

    module ConnectPeer
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConnectPeer, context: context)
        type = Types::ConnectPeer.new
        type.core_network_id = params[:core_network_id]
        type.connect_attachment_id = params[:connect_attachment_id]
        type.connect_peer_id = params[:connect_peer_id]
        type.edge_location = params[:edge_location]
        type.state = params[:state]
        type.created_at = params[:created_at]
        type.configuration = ConnectPeerConfiguration.build(params[:configuration], context: "#{context}[:configuration]") unless params[:configuration].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ConnectPeerAssociation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConnectPeerAssociation, context: context)
        type = Types::ConnectPeerAssociation.new
        type.connect_peer_id = params[:connect_peer_id]
        type.global_network_id = params[:global_network_id]
        type.device_id = params[:device_id]
        type.link_id = params[:link_id]
        type.state = params[:state]
        type
      end
    end

    module ConnectPeerAssociationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ConnectPeerAssociation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ConnectPeerBgpConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConnectPeerBgpConfiguration, context: context)
        type = Types::ConnectPeerBgpConfiguration.new
        type.core_network_asn = params[:core_network_asn]
        type.peer_asn = params[:peer_asn]
        type.core_network_address = params[:core_network_address]
        type.peer_address = params[:peer_address]
        type
      end
    end

    module ConnectPeerBgpConfigurationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ConnectPeerBgpConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ConnectPeerConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConnectPeerConfiguration, context: context)
        type = Types::ConnectPeerConfiguration.new
        type.core_network_address = params[:core_network_address]
        type.peer_address = params[:peer_address]
        type.inside_cidr_blocks = ConstrainedStringList.build(params[:inside_cidr_blocks], context: "#{context}[:inside_cidr_blocks]") unless params[:inside_cidr_blocks].nil?
        type.protocol = params[:protocol]
        type.bgp_configurations = ConnectPeerBgpConfigurationList.build(params[:bgp_configurations], context: "#{context}[:bgp_configurations]") unless params[:bgp_configurations].nil?
        type
      end
    end

    module ConnectPeerIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ConnectPeerSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConnectPeerSummary, context: context)
        type = Types::ConnectPeerSummary.new
        type.core_network_id = params[:core_network_id]
        type.connect_attachment_id = params[:connect_attachment_id]
        type.connect_peer_id = params[:connect_peer_id]
        type.edge_location = params[:edge_location]
        type.connect_peer_state = params[:connect_peer_state]
        type.created_at = params[:created_at]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ConnectPeerSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ConnectPeerSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Connection
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Connection, context: context)
        type = Types::Connection.new
        type.connection_id = params[:connection_id]
        type.connection_arn = params[:connection_arn]
        type.global_network_id = params[:global_network_id]
        type.device_id = params[:device_id]
        type.connected_device_id = params[:connected_device_id]
        type.link_id = params[:link_id]
        type.connected_link_id = params[:connected_link_id]
        type.description = params[:description]
        type.created_at = params[:created_at]
        type.state = params[:state]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ConnectionHealth
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConnectionHealth, context: context)
        type = Types::ConnectionHealth.new
        type.type = params[:type]
        type.status = params[:status]
        type.timestamp = params[:timestamp]
        type
      end
    end

    module ConnectionIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ConnectionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Connection.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ConstrainedStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CoreNetwork
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CoreNetwork, context: context)
        type = Types::CoreNetwork.new
        type.global_network_id = params[:global_network_id]
        type.core_network_id = params[:core_network_id]
        type.core_network_arn = params[:core_network_arn]
        type.description = params[:description]
        type.created_at = params[:created_at]
        type.state = params[:state]
        type.segments = CoreNetworkSegmentList.build(params[:segments], context: "#{context}[:segments]") unless params[:segments].nil?
        type.edges = CoreNetworkEdgeList.build(params[:edges], context: "#{context}[:edges]") unless params[:edges].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CoreNetworkChange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CoreNetworkChange, context: context)
        type = Types::CoreNetworkChange.new
        type.type = params[:type]
        type.action = params[:action]
        type.identifier = params[:identifier]
        type.previous_values = CoreNetworkChangeValues.build(params[:previous_values], context: "#{context}[:previous_values]") unless params[:previous_values].nil?
        type.new_values = CoreNetworkChangeValues.build(params[:new_values], context: "#{context}[:new_values]") unless params[:new_values].nil?
        type
      end
    end

    module CoreNetworkChangeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CoreNetworkChange.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CoreNetworkChangeValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CoreNetworkChangeValues, context: context)
        type = Types::CoreNetworkChangeValues.new
        type.segment_name = params[:segment_name]
        type.edge_locations = ExternalRegionCodeList.build(params[:edge_locations], context: "#{context}[:edge_locations]") unless params[:edge_locations].nil?
        type.asn = params[:asn]
        type.cidr = params[:cidr]
        type.destination_identifier = params[:destination_identifier]
        type.inside_cidr_blocks = ConstrainedStringList.build(params[:inside_cidr_blocks], context: "#{context}[:inside_cidr_blocks]") unless params[:inside_cidr_blocks].nil?
        type.shared_segments = ConstrainedStringList.build(params[:shared_segments], context: "#{context}[:shared_segments]") unless params[:shared_segments].nil?
        type
      end
    end

    module CoreNetworkEdge
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CoreNetworkEdge, context: context)
        type = Types::CoreNetworkEdge.new
        type.edge_location = params[:edge_location]
        type.asn = params[:asn]
        type.inside_cidr_blocks = ConstrainedStringList.build(params[:inside_cidr_blocks], context: "#{context}[:inside_cidr_blocks]") unless params[:inside_cidr_blocks].nil?
        type
      end
    end

    module CoreNetworkEdgeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CoreNetworkEdge.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CoreNetworkPolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CoreNetworkPolicy, context: context)
        type = Types::CoreNetworkPolicy.new
        type.core_network_id = params[:core_network_id]
        type.policy_version_id = params[:policy_version_id]
        type.alias = params[:alias]
        type.description = params[:description]
        type.created_at = params[:created_at]
        type.change_set_state = params[:change_set_state]
        type.policy_errors = CoreNetworkPolicyErrorList.build(params[:policy_errors], context: "#{context}[:policy_errors]") unless params[:policy_errors].nil?
        type.policy_document = params[:policy_document]
        type
      end
    end

    module CoreNetworkPolicyError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CoreNetworkPolicyError, context: context)
        type = Types::CoreNetworkPolicyError.new
        type.error_code = params[:error_code]
        type.message = params[:message]
        type.path = params[:path]
        type
      end
    end

    module CoreNetworkPolicyErrorList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CoreNetworkPolicyError.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CoreNetworkPolicyException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CoreNetworkPolicyException, context: context)
        type = Types::CoreNetworkPolicyException.new
        type.message = params[:message]
        type.errors = CoreNetworkPolicyErrorList.build(params[:errors], context: "#{context}[:errors]") unless params[:errors].nil?
        type
      end
    end

    module CoreNetworkPolicyVersion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CoreNetworkPolicyVersion, context: context)
        type = Types::CoreNetworkPolicyVersion.new
        type.core_network_id = params[:core_network_id]
        type.policy_version_id = params[:policy_version_id]
        type.alias = params[:alias]
        type.description = params[:description]
        type.created_at = params[:created_at]
        type.change_set_state = params[:change_set_state]
        type
      end
    end

    module CoreNetworkPolicyVersionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CoreNetworkPolicyVersion.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CoreNetworkSegment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CoreNetworkSegment, context: context)
        type = Types::CoreNetworkSegment.new
        type.name = params[:name]
        type.edge_locations = ExternalRegionCodeList.build(params[:edge_locations], context: "#{context}[:edge_locations]") unless params[:edge_locations].nil?
        type.shared_segments = ConstrainedStringList.build(params[:shared_segments], context: "#{context}[:shared_segments]") unless params[:shared_segments].nil?
        type
      end
    end

    module CoreNetworkSegmentEdgeIdentifier
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CoreNetworkSegmentEdgeIdentifier, context: context)
        type = Types::CoreNetworkSegmentEdgeIdentifier.new
        type.core_network_id = params[:core_network_id]
        type.segment_name = params[:segment_name]
        type.edge_location = params[:edge_location]
        type
      end
    end

    module CoreNetworkSegmentList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CoreNetworkSegment.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CoreNetworkSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CoreNetworkSummary, context: context)
        type = Types::CoreNetworkSummary.new
        type.core_network_id = params[:core_network_id]
        type.core_network_arn = params[:core_network_arn]
        type.global_network_id = params[:global_network_id]
        type.owner_account_id = params[:owner_account_id]
        type.state = params[:state]
        type.description = params[:description]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CoreNetworkSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CoreNetworkSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CreateConnectAttachmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateConnectAttachmentInput, context: context)
        type = Types::CreateConnectAttachmentInput.new
        type.core_network_id = params[:core_network_id]
        type.edge_location = params[:edge_location]
        type.transport_attachment_id = params[:transport_attachment_id]
        type.options = ConnectAttachmentOptions.build(params[:options], context: "#{context}[:options]") unless params[:options].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module CreateConnectAttachmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateConnectAttachmentOutput, context: context)
        type = Types::CreateConnectAttachmentOutput.new
        type.connect_attachment = ConnectAttachment.build(params[:connect_attachment], context: "#{context}[:connect_attachment]") unless params[:connect_attachment].nil?
        type
      end
    end

    module CreateConnectPeerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateConnectPeerInput, context: context)
        type = Types::CreateConnectPeerInput.new
        type.connect_attachment_id = params[:connect_attachment_id]
        type.core_network_address = params[:core_network_address]
        type.peer_address = params[:peer_address]
        type.bgp_options = BgpOptions.build(params[:bgp_options], context: "#{context}[:bgp_options]") unless params[:bgp_options].nil?
        type.inside_cidr_blocks = ConstrainedStringList.build(params[:inside_cidr_blocks], context: "#{context}[:inside_cidr_blocks]") unless params[:inside_cidr_blocks].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module CreateConnectPeerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateConnectPeerOutput, context: context)
        type = Types::CreateConnectPeerOutput.new
        type.connect_peer = ConnectPeer.build(params[:connect_peer], context: "#{context}[:connect_peer]") unless params[:connect_peer].nil?
        type
      end
    end

    module CreateConnectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateConnectionInput, context: context)
        type = Types::CreateConnectionInput.new
        type.global_network_id = params[:global_network_id]
        type.device_id = params[:device_id]
        type.connected_device_id = params[:connected_device_id]
        type.link_id = params[:link_id]
        type.connected_link_id = params[:connected_link_id]
        type.description = params[:description]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateConnectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateConnectionOutput, context: context)
        type = Types::CreateConnectionOutput.new
        type.connection = Connection.build(params[:connection], context: "#{context}[:connection]") unless params[:connection].nil?
        type
      end
    end

    module CreateCoreNetworkInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCoreNetworkInput, context: context)
        type = Types::CreateCoreNetworkInput.new
        type.global_network_id = params[:global_network_id]
        type.description = params[:description]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.policy_document = params[:policy_document]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module CreateCoreNetworkOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCoreNetworkOutput, context: context)
        type = Types::CreateCoreNetworkOutput.new
        type.core_network = CoreNetwork.build(params[:core_network], context: "#{context}[:core_network]") unless params[:core_network].nil?
        type
      end
    end

    module CreateDeviceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDeviceInput, context: context)
        type = Types::CreateDeviceInput.new
        type.global_network_id = params[:global_network_id]
        type.aws_location = AWSLocation.build(params[:aws_location], context: "#{context}[:aws_location]") unless params[:aws_location].nil?
        type.description = params[:description]
        type.type = params[:type]
        type.vendor = params[:vendor]
        type.model = params[:model]
        type.serial_number = params[:serial_number]
        type.location = Location.build(params[:location], context: "#{context}[:location]") unless params[:location].nil?
        type.site_id = params[:site_id]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateDeviceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDeviceOutput, context: context)
        type = Types::CreateDeviceOutput.new
        type.device = Device.build(params[:device], context: "#{context}[:device]") unless params[:device].nil?
        type
      end
    end

    module CreateGlobalNetworkInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateGlobalNetworkInput, context: context)
        type = Types::CreateGlobalNetworkInput.new
        type.description = params[:description]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateGlobalNetworkOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateGlobalNetworkOutput, context: context)
        type = Types::CreateGlobalNetworkOutput.new
        type.global_network = GlobalNetwork.build(params[:global_network], context: "#{context}[:global_network]") unless params[:global_network].nil?
        type
      end
    end

    module CreateLinkInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLinkInput, context: context)
        type = Types::CreateLinkInput.new
        type.global_network_id = params[:global_network_id]
        type.description = params[:description]
        type.type = params[:type]
        type.bandwidth = Bandwidth.build(params[:bandwidth], context: "#{context}[:bandwidth]") unless params[:bandwidth].nil?
        type.provider = params[:provider]
        type.site_id = params[:site_id]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateLinkOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLinkOutput, context: context)
        type = Types::CreateLinkOutput.new
        type.link = Link.build(params[:link], context: "#{context}[:link]") unless params[:link].nil?
        type
      end
    end

    module CreateSiteInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSiteInput, context: context)
        type = Types::CreateSiteInput.new
        type.global_network_id = params[:global_network_id]
        type.description = params[:description]
        type.location = Location.build(params[:location], context: "#{context}[:location]") unless params[:location].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateSiteOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSiteOutput, context: context)
        type = Types::CreateSiteOutput.new
        type.site = Site.build(params[:site], context: "#{context}[:site]") unless params[:site].nil?
        type
      end
    end

    module CreateSiteToSiteVpnAttachmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSiteToSiteVpnAttachmentInput, context: context)
        type = Types::CreateSiteToSiteVpnAttachmentInput.new
        type.core_network_id = params[:core_network_id]
        type.vpn_connection_arn = params[:vpn_connection_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module CreateSiteToSiteVpnAttachmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSiteToSiteVpnAttachmentOutput, context: context)
        type = Types::CreateSiteToSiteVpnAttachmentOutput.new
        type.site_to_site_vpn_attachment = SiteToSiteVpnAttachment.build(params[:site_to_site_vpn_attachment], context: "#{context}[:site_to_site_vpn_attachment]") unless params[:site_to_site_vpn_attachment].nil?
        type
      end
    end

    module CreateVpcAttachmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateVpcAttachmentInput, context: context)
        type = Types::CreateVpcAttachmentInput.new
        type.core_network_id = params[:core_network_id]
        type.vpc_arn = params[:vpc_arn]
        type.subnet_arns = SubnetArnList.build(params[:subnet_arns], context: "#{context}[:subnet_arns]") unless params[:subnet_arns].nil?
        type.options = VpcOptions.build(params[:options], context: "#{context}[:options]") unless params[:options].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module CreateVpcAttachmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateVpcAttachmentOutput, context: context)
        type = Types::CreateVpcAttachmentOutput.new
        type.vpc_attachment = VpcAttachment.build(params[:vpc_attachment], context: "#{context}[:vpc_attachment]") unless params[:vpc_attachment].nil?
        type
      end
    end

    module CustomerGatewayArnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CustomerGatewayAssociation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomerGatewayAssociation, context: context)
        type = Types::CustomerGatewayAssociation.new
        type.customer_gateway_arn = params[:customer_gateway_arn]
        type.global_network_id = params[:global_network_id]
        type.device_id = params[:device_id]
        type.link_id = params[:link_id]
        type.state = params[:state]
        type
      end
    end

    module CustomerGatewayAssociationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CustomerGatewayAssociation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DeleteAttachmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAttachmentInput, context: context)
        type = Types::DeleteAttachmentInput.new
        type.attachment_id = params[:attachment_id]
        type
      end
    end

    module DeleteAttachmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAttachmentOutput, context: context)
        type = Types::DeleteAttachmentOutput.new
        type.attachment = Attachment.build(params[:attachment], context: "#{context}[:attachment]") unless params[:attachment].nil?
        type
      end
    end

    module DeleteConnectPeerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteConnectPeerInput, context: context)
        type = Types::DeleteConnectPeerInput.new
        type.connect_peer_id = params[:connect_peer_id]
        type
      end
    end

    module DeleteConnectPeerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteConnectPeerOutput, context: context)
        type = Types::DeleteConnectPeerOutput.new
        type.connect_peer = ConnectPeer.build(params[:connect_peer], context: "#{context}[:connect_peer]") unless params[:connect_peer].nil?
        type
      end
    end

    module DeleteConnectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteConnectionInput, context: context)
        type = Types::DeleteConnectionInput.new
        type.global_network_id = params[:global_network_id]
        type.connection_id = params[:connection_id]
        type
      end
    end

    module DeleteConnectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteConnectionOutput, context: context)
        type = Types::DeleteConnectionOutput.new
        type.connection = Connection.build(params[:connection], context: "#{context}[:connection]") unless params[:connection].nil?
        type
      end
    end

    module DeleteCoreNetworkInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCoreNetworkInput, context: context)
        type = Types::DeleteCoreNetworkInput.new
        type.core_network_id = params[:core_network_id]
        type
      end
    end

    module DeleteCoreNetworkOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCoreNetworkOutput, context: context)
        type = Types::DeleteCoreNetworkOutput.new
        type.core_network = CoreNetwork.build(params[:core_network], context: "#{context}[:core_network]") unless params[:core_network].nil?
        type
      end
    end

    module DeleteCoreNetworkPolicyVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCoreNetworkPolicyVersionInput, context: context)
        type = Types::DeleteCoreNetworkPolicyVersionInput.new
        type.core_network_id = params[:core_network_id]
        type.policy_version_id = params[:policy_version_id]
        type
      end
    end

    module DeleteCoreNetworkPolicyVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCoreNetworkPolicyVersionOutput, context: context)
        type = Types::DeleteCoreNetworkPolicyVersionOutput.new
        type.core_network_policy = CoreNetworkPolicy.build(params[:core_network_policy], context: "#{context}[:core_network_policy]") unless params[:core_network_policy].nil?
        type
      end
    end

    module DeleteDeviceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDeviceInput, context: context)
        type = Types::DeleteDeviceInput.new
        type.global_network_id = params[:global_network_id]
        type.device_id = params[:device_id]
        type
      end
    end

    module DeleteDeviceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDeviceOutput, context: context)
        type = Types::DeleteDeviceOutput.new
        type.device = Device.build(params[:device], context: "#{context}[:device]") unless params[:device].nil?
        type
      end
    end

    module DeleteGlobalNetworkInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteGlobalNetworkInput, context: context)
        type = Types::DeleteGlobalNetworkInput.new
        type.global_network_id = params[:global_network_id]
        type
      end
    end

    module DeleteGlobalNetworkOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteGlobalNetworkOutput, context: context)
        type = Types::DeleteGlobalNetworkOutput.new
        type.global_network = GlobalNetwork.build(params[:global_network], context: "#{context}[:global_network]") unless params[:global_network].nil?
        type
      end
    end

    module DeleteLinkInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLinkInput, context: context)
        type = Types::DeleteLinkInput.new
        type.global_network_id = params[:global_network_id]
        type.link_id = params[:link_id]
        type
      end
    end

    module DeleteLinkOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLinkOutput, context: context)
        type = Types::DeleteLinkOutput.new
        type.link = Link.build(params[:link], context: "#{context}[:link]") unless params[:link].nil?
        type
      end
    end

    module DeleteResourcePolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteResourcePolicyInput, context: context)
        type = Types::DeleteResourcePolicyInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module DeleteResourcePolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteResourcePolicyOutput, context: context)
        type = Types::DeleteResourcePolicyOutput.new
        type
      end
    end

    module DeleteSiteInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSiteInput, context: context)
        type = Types::DeleteSiteInput.new
        type.global_network_id = params[:global_network_id]
        type.site_id = params[:site_id]
        type
      end
    end

    module DeleteSiteOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSiteOutput, context: context)
        type = Types::DeleteSiteOutput.new
        type.site = Site.build(params[:site], context: "#{context}[:site]") unless params[:site].nil?
        type
      end
    end

    module DeregisterTransitGatewayInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterTransitGatewayInput, context: context)
        type = Types::DeregisterTransitGatewayInput.new
        type.global_network_id = params[:global_network_id]
        type.transit_gateway_arn = params[:transit_gateway_arn]
        type
      end
    end

    module DeregisterTransitGatewayOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterTransitGatewayOutput, context: context)
        type = Types::DeregisterTransitGatewayOutput.new
        type.transit_gateway_registration = TransitGatewayRegistration.build(params[:transit_gateway_registration], context: "#{context}[:transit_gateway_registration]") unless params[:transit_gateway_registration].nil?
        type
      end
    end

    module DescribeGlobalNetworksInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeGlobalNetworksInput, context: context)
        type = Types::DescribeGlobalNetworksInput.new
        type.global_network_ids = GlobalNetworkIdList.build(params[:global_network_ids], context: "#{context}[:global_network_ids]") unless params[:global_network_ids].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeGlobalNetworksOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeGlobalNetworksOutput, context: context)
        type = Types::DescribeGlobalNetworksOutput.new
        type.global_networks = GlobalNetworkList.build(params[:global_networks], context: "#{context}[:global_networks]") unless params[:global_networks].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module Device
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Device, context: context)
        type = Types::Device.new
        type.device_id = params[:device_id]
        type.device_arn = params[:device_arn]
        type.global_network_id = params[:global_network_id]
        type.aws_location = AWSLocation.build(params[:aws_location], context: "#{context}[:aws_location]") unless params[:aws_location].nil?
        type.description = params[:description]
        type.type = params[:type]
        type.vendor = params[:vendor]
        type.model = params[:model]
        type.serial_number = params[:serial_number]
        type.location = Location.build(params[:location], context: "#{context}[:location]") unless params[:location].nil?
        type.site_id = params[:site_id]
        type.created_at = params[:created_at]
        type.state = params[:state]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module DeviceIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DeviceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Device.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DisassociateConnectPeerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateConnectPeerInput, context: context)
        type = Types::DisassociateConnectPeerInput.new
        type.global_network_id = params[:global_network_id]
        type.connect_peer_id = params[:connect_peer_id]
        type
      end
    end

    module DisassociateConnectPeerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateConnectPeerOutput, context: context)
        type = Types::DisassociateConnectPeerOutput.new
        type.connect_peer_association = ConnectPeerAssociation.build(params[:connect_peer_association], context: "#{context}[:connect_peer_association]") unless params[:connect_peer_association].nil?
        type
      end
    end

    module DisassociateCustomerGatewayInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateCustomerGatewayInput, context: context)
        type = Types::DisassociateCustomerGatewayInput.new
        type.global_network_id = params[:global_network_id]
        type.customer_gateway_arn = params[:customer_gateway_arn]
        type
      end
    end

    module DisassociateCustomerGatewayOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateCustomerGatewayOutput, context: context)
        type = Types::DisassociateCustomerGatewayOutput.new
        type.customer_gateway_association = CustomerGatewayAssociation.build(params[:customer_gateway_association], context: "#{context}[:customer_gateway_association]") unless params[:customer_gateway_association].nil?
        type
      end
    end

    module DisassociateLinkInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateLinkInput, context: context)
        type = Types::DisassociateLinkInput.new
        type.global_network_id = params[:global_network_id]
        type.device_id = params[:device_id]
        type.link_id = params[:link_id]
        type
      end
    end

    module DisassociateLinkOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateLinkOutput, context: context)
        type = Types::DisassociateLinkOutput.new
        type.link_association = LinkAssociation.build(params[:link_association], context: "#{context}[:link_association]") unless params[:link_association].nil?
        type
      end
    end

    module DisassociateTransitGatewayConnectPeerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateTransitGatewayConnectPeerInput, context: context)
        type = Types::DisassociateTransitGatewayConnectPeerInput.new
        type.global_network_id = params[:global_network_id]
        type.transit_gateway_connect_peer_arn = params[:transit_gateway_connect_peer_arn]
        type
      end
    end

    module DisassociateTransitGatewayConnectPeerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateTransitGatewayConnectPeerOutput, context: context)
        type = Types::DisassociateTransitGatewayConnectPeerOutput.new
        type.transit_gateway_connect_peer_association = TransitGatewayConnectPeerAssociation.build(params[:transit_gateway_connect_peer_association], context: "#{context}[:transit_gateway_connect_peer_association]") unless params[:transit_gateway_connect_peer_association].nil?
        type
      end
    end

    module ExceptionContextMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module ExecuteCoreNetworkChangeSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExecuteCoreNetworkChangeSetInput, context: context)
        type = Types::ExecuteCoreNetworkChangeSetInput.new
        type.core_network_id = params[:core_network_id]
        type.policy_version_id = params[:policy_version_id]
        type
      end
    end

    module ExecuteCoreNetworkChangeSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExecuteCoreNetworkChangeSetOutput, context: context)
        type = Types::ExecuteCoreNetworkChangeSetOutput.new
        type
      end
    end

    module ExternalRegionCodeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module FilterMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = FilterValues.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module FilterValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module GetConnectAttachmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetConnectAttachmentInput, context: context)
        type = Types::GetConnectAttachmentInput.new
        type.attachment_id = params[:attachment_id]
        type
      end
    end

    module GetConnectAttachmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetConnectAttachmentOutput, context: context)
        type = Types::GetConnectAttachmentOutput.new
        type.connect_attachment = ConnectAttachment.build(params[:connect_attachment], context: "#{context}[:connect_attachment]") unless params[:connect_attachment].nil?
        type
      end
    end

    module GetConnectPeerAssociationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetConnectPeerAssociationsInput, context: context)
        type = Types::GetConnectPeerAssociationsInput.new
        type.global_network_id = params[:global_network_id]
        type.connect_peer_ids = ConnectPeerIdList.build(params[:connect_peer_ids], context: "#{context}[:connect_peer_ids]") unless params[:connect_peer_ids].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetConnectPeerAssociationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetConnectPeerAssociationsOutput, context: context)
        type = Types::GetConnectPeerAssociationsOutput.new
        type.connect_peer_associations = ConnectPeerAssociationList.build(params[:connect_peer_associations], context: "#{context}[:connect_peer_associations]") unless params[:connect_peer_associations].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetConnectPeerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetConnectPeerInput, context: context)
        type = Types::GetConnectPeerInput.new
        type.connect_peer_id = params[:connect_peer_id]
        type
      end
    end

    module GetConnectPeerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetConnectPeerOutput, context: context)
        type = Types::GetConnectPeerOutput.new
        type.connect_peer = ConnectPeer.build(params[:connect_peer], context: "#{context}[:connect_peer]") unless params[:connect_peer].nil?
        type
      end
    end

    module GetConnectionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetConnectionsInput, context: context)
        type = Types::GetConnectionsInput.new
        type.global_network_id = params[:global_network_id]
        type.connection_ids = ConnectionIdList.build(params[:connection_ids], context: "#{context}[:connection_ids]") unless params[:connection_ids].nil?
        type.device_id = params[:device_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetConnectionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetConnectionsOutput, context: context)
        type = Types::GetConnectionsOutput.new
        type.connections = ConnectionList.build(params[:connections], context: "#{context}[:connections]") unless params[:connections].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetCoreNetworkChangeSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCoreNetworkChangeSetInput, context: context)
        type = Types::GetCoreNetworkChangeSetInput.new
        type.core_network_id = params[:core_network_id]
        type.policy_version_id = params[:policy_version_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetCoreNetworkChangeSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCoreNetworkChangeSetOutput, context: context)
        type = Types::GetCoreNetworkChangeSetOutput.new
        type.core_network_changes = CoreNetworkChangeList.build(params[:core_network_changes], context: "#{context}[:core_network_changes]") unless params[:core_network_changes].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetCoreNetworkInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCoreNetworkInput, context: context)
        type = Types::GetCoreNetworkInput.new
        type.core_network_id = params[:core_network_id]
        type
      end
    end

    module GetCoreNetworkOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCoreNetworkOutput, context: context)
        type = Types::GetCoreNetworkOutput.new
        type.core_network = CoreNetwork.build(params[:core_network], context: "#{context}[:core_network]") unless params[:core_network].nil?
        type
      end
    end

    module GetCoreNetworkPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCoreNetworkPolicyInput, context: context)
        type = Types::GetCoreNetworkPolicyInput.new
        type.core_network_id = params[:core_network_id]
        type.policy_version_id = params[:policy_version_id]
        type.alias = params[:alias]
        type
      end
    end

    module GetCoreNetworkPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCoreNetworkPolicyOutput, context: context)
        type = Types::GetCoreNetworkPolicyOutput.new
        type.core_network_policy = CoreNetworkPolicy.build(params[:core_network_policy], context: "#{context}[:core_network_policy]") unless params[:core_network_policy].nil?
        type
      end
    end

    module GetCustomerGatewayAssociationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCustomerGatewayAssociationsInput, context: context)
        type = Types::GetCustomerGatewayAssociationsInput.new
        type.global_network_id = params[:global_network_id]
        type.customer_gateway_arns = CustomerGatewayArnList.build(params[:customer_gateway_arns], context: "#{context}[:customer_gateway_arns]") unless params[:customer_gateway_arns].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetCustomerGatewayAssociationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCustomerGatewayAssociationsOutput, context: context)
        type = Types::GetCustomerGatewayAssociationsOutput.new
        type.customer_gateway_associations = CustomerGatewayAssociationList.build(params[:customer_gateway_associations], context: "#{context}[:customer_gateway_associations]") unless params[:customer_gateway_associations].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetDevicesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDevicesInput, context: context)
        type = Types::GetDevicesInput.new
        type.global_network_id = params[:global_network_id]
        type.device_ids = DeviceIdList.build(params[:device_ids], context: "#{context}[:device_ids]") unless params[:device_ids].nil?
        type.site_id = params[:site_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetDevicesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDevicesOutput, context: context)
        type = Types::GetDevicesOutput.new
        type.devices = DeviceList.build(params[:devices], context: "#{context}[:devices]") unless params[:devices].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetLinkAssociationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLinkAssociationsInput, context: context)
        type = Types::GetLinkAssociationsInput.new
        type.global_network_id = params[:global_network_id]
        type.device_id = params[:device_id]
        type.link_id = params[:link_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetLinkAssociationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLinkAssociationsOutput, context: context)
        type = Types::GetLinkAssociationsOutput.new
        type.link_associations = LinkAssociationList.build(params[:link_associations], context: "#{context}[:link_associations]") unless params[:link_associations].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetLinksInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLinksInput, context: context)
        type = Types::GetLinksInput.new
        type.global_network_id = params[:global_network_id]
        type.link_ids = LinkIdList.build(params[:link_ids], context: "#{context}[:link_ids]") unless params[:link_ids].nil?
        type.site_id = params[:site_id]
        type.type = params[:type]
        type.provider = params[:provider]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetLinksOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLinksOutput, context: context)
        type = Types::GetLinksOutput.new
        type.links = LinkList.build(params[:links], context: "#{context}[:links]") unless params[:links].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetNetworkResourceCountsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetNetworkResourceCountsInput, context: context)
        type = Types::GetNetworkResourceCountsInput.new
        type.global_network_id = params[:global_network_id]
        type.resource_type = params[:resource_type]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetNetworkResourceCountsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetNetworkResourceCountsOutput, context: context)
        type = Types::GetNetworkResourceCountsOutput.new
        type.network_resource_counts = NetworkResourceCountList.build(params[:network_resource_counts], context: "#{context}[:network_resource_counts]") unless params[:network_resource_counts].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetNetworkResourceRelationshipsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetNetworkResourceRelationshipsInput, context: context)
        type = Types::GetNetworkResourceRelationshipsInput.new
        type.global_network_id = params[:global_network_id]
        type.core_network_id = params[:core_network_id]
        type.registered_gateway_arn = params[:registered_gateway_arn]
        type.aws_region = params[:aws_region]
        type.account_id = params[:account_id]
        type.resource_type = params[:resource_type]
        type.resource_arn = params[:resource_arn]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetNetworkResourceRelationshipsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetNetworkResourceRelationshipsOutput, context: context)
        type = Types::GetNetworkResourceRelationshipsOutput.new
        type.relationships = RelationshipList.build(params[:relationships], context: "#{context}[:relationships]") unless params[:relationships].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetNetworkResourcesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetNetworkResourcesInput, context: context)
        type = Types::GetNetworkResourcesInput.new
        type.global_network_id = params[:global_network_id]
        type.core_network_id = params[:core_network_id]
        type.registered_gateway_arn = params[:registered_gateway_arn]
        type.aws_region = params[:aws_region]
        type.account_id = params[:account_id]
        type.resource_type = params[:resource_type]
        type.resource_arn = params[:resource_arn]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetNetworkResourcesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetNetworkResourcesOutput, context: context)
        type = Types::GetNetworkResourcesOutput.new
        type.network_resources = NetworkResourceList.build(params[:network_resources], context: "#{context}[:network_resources]") unless params[:network_resources].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetNetworkRoutesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetNetworkRoutesInput, context: context)
        type = Types::GetNetworkRoutesInput.new
        type.global_network_id = params[:global_network_id]
        type.route_table_identifier = RouteTableIdentifier.build(params[:route_table_identifier], context: "#{context}[:route_table_identifier]") unless params[:route_table_identifier].nil?
        type.exact_cidr_matches = ConstrainedStringList.build(params[:exact_cidr_matches], context: "#{context}[:exact_cidr_matches]") unless params[:exact_cidr_matches].nil?
        type.longest_prefix_matches = ConstrainedStringList.build(params[:longest_prefix_matches], context: "#{context}[:longest_prefix_matches]") unless params[:longest_prefix_matches].nil?
        type.subnet_of_matches = ConstrainedStringList.build(params[:subnet_of_matches], context: "#{context}[:subnet_of_matches]") unless params[:subnet_of_matches].nil?
        type.supernet_of_matches = ConstrainedStringList.build(params[:supernet_of_matches], context: "#{context}[:supernet_of_matches]") unless params[:supernet_of_matches].nil?
        type.prefix_list_ids = ConstrainedStringList.build(params[:prefix_list_ids], context: "#{context}[:prefix_list_ids]") unless params[:prefix_list_ids].nil?
        type.states = RouteStateList.build(params[:states], context: "#{context}[:states]") unless params[:states].nil?
        type.types = RouteTypeList.build(params[:types], context: "#{context}[:types]") unless params[:types].nil?
        type.destination_filters = FilterMap.build(params[:destination_filters], context: "#{context}[:destination_filters]") unless params[:destination_filters].nil?
        type
      end
    end

    module GetNetworkRoutesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetNetworkRoutesOutput, context: context)
        type = Types::GetNetworkRoutesOutput.new
        type.route_table_arn = params[:route_table_arn]
        type.core_network_segment_edge = CoreNetworkSegmentEdgeIdentifier.build(params[:core_network_segment_edge], context: "#{context}[:core_network_segment_edge]") unless params[:core_network_segment_edge].nil?
        type.route_table_type = params[:route_table_type]
        type.route_table_timestamp = params[:route_table_timestamp]
        type.network_routes = NetworkRouteList.build(params[:network_routes], context: "#{context}[:network_routes]") unless params[:network_routes].nil?
        type
      end
    end

    module GetNetworkTelemetryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetNetworkTelemetryInput, context: context)
        type = Types::GetNetworkTelemetryInput.new
        type.global_network_id = params[:global_network_id]
        type.core_network_id = params[:core_network_id]
        type.registered_gateway_arn = params[:registered_gateway_arn]
        type.aws_region = params[:aws_region]
        type.account_id = params[:account_id]
        type.resource_type = params[:resource_type]
        type.resource_arn = params[:resource_arn]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetNetworkTelemetryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetNetworkTelemetryOutput, context: context)
        type = Types::GetNetworkTelemetryOutput.new
        type.network_telemetry = NetworkTelemetryList.build(params[:network_telemetry], context: "#{context}[:network_telemetry]") unless params[:network_telemetry].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetResourcePolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResourcePolicyInput, context: context)
        type = Types::GetResourcePolicyInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module GetResourcePolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResourcePolicyOutput, context: context)
        type = Types::GetResourcePolicyOutput.new
        type.policy_document = params[:policy_document]
        type
      end
    end

    module GetRouteAnalysisInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRouteAnalysisInput, context: context)
        type = Types::GetRouteAnalysisInput.new
        type.global_network_id = params[:global_network_id]
        type.route_analysis_id = params[:route_analysis_id]
        type
      end
    end

    module GetRouteAnalysisOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRouteAnalysisOutput, context: context)
        type = Types::GetRouteAnalysisOutput.new
        type.route_analysis = RouteAnalysis.build(params[:route_analysis], context: "#{context}[:route_analysis]") unless params[:route_analysis].nil?
        type
      end
    end

    module GetSiteToSiteVpnAttachmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSiteToSiteVpnAttachmentInput, context: context)
        type = Types::GetSiteToSiteVpnAttachmentInput.new
        type.attachment_id = params[:attachment_id]
        type
      end
    end

    module GetSiteToSiteVpnAttachmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSiteToSiteVpnAttachmentOutput, context: context)
        type = Types::GetSiteToSiteVpnAttachmentOutput.new
        type.site_to_site_vpn_attachment = SiteToSiteVpnAttachment.build(params[:site_to_site_vpn_attachment], context: "#{context}[:site_to_site_vpn_attachment]") unless params[:site_to_site_vpn_attachment].nil?
        type
      end
    end

    module GetSitesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSitesInput, context: context)
        type = Types::GetSitesInput.new
        type.global_network_id = params[:global_network_id]
        type.site_ids = SiteIdList.build(params[:site_ids], context: "#{context}[:site_ids]") unless params[:site_ids].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetSitesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSitesOutput, context: context)
        type = Types::GetSitesOutput.new
        type.sites = SiteList.build(params[:sites], context: "#{context}[:sites]") unless params[:sites].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetTransitGatewayConnectPeerAssociationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTransitGatewayConnectPeerAssociationsInput, context: context)
        type = Types::GetTransitGatewayConnectPeerAssociationsInput.new
        type.global_network_id = params[:global_network_id]
        type.transit_gateway_connect_peer_arns = TransitGatewayConnectPeerArnList.build(params[:transit_gateway_connect_peer_arns], context: "#{context}[:transit_gateway_connect_peer_arns]") unless params[:transit_gateway_connect_peer_arns].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetTransitGatewayConnectPeerAssociationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTransitGatewayConnectPeerAssociationsOutput, context: context)
        type = Types::GetTransitGatewayConnectPeerAssociationsOutput.new
        type.transit_gateway_connect_peer_associations = TransitGatewayConnectPeerAssociationList.build(params[:transit_gateway_connect_peer_associations], context: "#{context}[:transit_gateway_connect_peer_associations]") unless params[:transit_gateway_connect_peer_associations].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetTransitGatewayRegistrationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTransitGatewayRegistrationsInput, context: context)
        type = Types::GetTransitGatewayRegistrationsInput.new
        type.global_network_id = params[:global_network_id]
        type.transit_gateway_arns = TransitGatewayArnList.build(params[:transit_gateway_arns], context: "#{context}[:transit_gateway_arns]") unless params[:transit_gateway_arns].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetTransitGatewayRegistrationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTransitGatewayRegistrationsOutput, context: context)
        type = Types::GetTransitGatewayRegistrationsOutput.new
        type.transit_gateway_registrations = TransitGatewayRegistrationList.build(params[:transit_gateway_registrations], context: "#{context}[:transit_gateway_registrations]") unless params[:transit_gateway_registrations].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetVpcAttachmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetVpcAttachmentInput, context: context)
        type = Types::GetVpcAttachmentInput.new
        type.attachment_id = params[:attachment_id]
        type
      end
    end

    module GetVpcAttachmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetVpcAttachmentOutput, context: context)
        type = Types::GetVpcAttachmentOutput.new
        type.vpc_attachment = VpcAttachment.build(params[:vpc_attachment], context: "#{context}[:vpc_attachment]") unless params[:vpc_attachment].nil?
        type
      end
    end

    module GlobalNetwork
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GlobalNetwork, context: context)
        type = Types::GlobalNetwork.new
        type.global_network_id = params[:global_network_id]
        type.global_network_arn = params[:global_network_arn]
        type.description = params[:description]
        type.created_at = params[:created_at]
        type.state = params[:state]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module GlobalNetworkIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module GlobalNetworkList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GlobalNetwork.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InternalServerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerException, context: context)
        type = Types::InternalServerException.new
        type.message = params[:message]
        type.retry_after_seconds = params[:retry_after_seconds]
        type
      end
    end

    module Link
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Link, context: context)
        type = Types::Link.new
        type.link_id = params[:link_id]
        type.link_arn = params[:link_arn]
        type.global_network_id = params[:global_network_id]
        type.site_id = params[:site_id]
        type.description = params[:description]
        type.type = params[:type]
        type.bandwidth = Bandwidth.build(params[:bandwidth], context: "#{context}[:bandwidth]") unless params[:bandwidth].nil?
        type.provider = params[:provider]
        type.created_at = params[:created_at]
        type.state = params[:state]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module LinkAssociation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LinkAssociation, context: context)
        type = Types::LinkAssociation.new
        type.global_network_id = params[:global_network_id]
        type.device_id = params[:device_id]
        type.link_id = params[:link_id]
        type.link_association_state = params[:link_association_state]
        type
      end
    end

    module LinkAssociationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LinkAssociation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LinkIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module LinkList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Link.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListAttachmentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAttachmentsInput, context: context)
        type = Types::ListAttachmentsInput.new
        type.core_network_id = params[:core_network_id]
        type.attachment_type = params[:attachment_type]
        type.edge_location = params[:edge_location]
        type.state = params[:state]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAttachmentsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAttachmentsOutput, context: context)
        type = Types::ListAttachmentsOutput.new
        type.attachments = AttachmentList.build(params[:attachments], context: "#{context}[:attachments]") unless params[:attachments].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListConnectPeersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListConnectPeersInput, context: context)
        type = Types::ListConnectPeersInput.new
        type.core_network_id = params[:core_network_id]
        type.connect_attachment_id = params[:connect_attachment_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListConnectPeersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListConnectPeersOutput, context: context)
        type = Types::ListConnectPeersOutput.new
        type.connect_peers = ConnectPeerSummaryList.build(params[:connect_peers], context: "#{context}[:connect_peers]") unless params[:connect_peers].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListCoreNetworkPolicyVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCoreNetworkPolicyVersionsInput, context: context)
        type = Types::ListCoreNetworkPolicyVersionsInput.new
        type.core_network_id = params[:core_network_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListCoreNetworkPolicyVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCoreNetworkPolicyVersionsOutput, context: context)
        type = Types::ListCoreNetworkPolicyVersionsOutput.new
        type.core_network_policy_versions = CoreNetworkPolicyVersionList.build(params[:core_network_policy_versions], context: "#{context}[:core_network_policy_versions]") unless params[:core_network_policy_versions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListCoreNetworksInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCoreNetworksInput, context: context)
        type = Types::ListCoreNetworksInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListCoreNetworksOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCoreNetworksOutput, context: context)
        type = Types::ListCoreNetworksOutput.new
        type.core_networks = CoreNetworkSummaryList.build(params[:core_networks], context: "#{context}[:core_networks]") unless params[:core_networks].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListOrganizationServiceAccessStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListOrganizationServiceAccessStatusInput, context: context)
        type = Types::ListOrganizationServiceAccessStatusInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListOrganizationServiceAccessStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListOrganizationServiceAccessStatusOutput, context: context)
        type = Types::ListOrganizationServiceAccessStatusOutput.new
        type.organization_status = OrganizationStatus.build(params[:organization_status], context: "#{context}[:organization_status]") unless params[:organization_status].nil?
        type.next_token = params[:next_token]
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
        type.tag_list = TagList.build(params[:tag_list], context: "#{context}[:tag_list]") unless params[:tag_list].nil?
        type
      end
    end

    module Location
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Location, context: context)
        type = Types::Location.new
        type.address = params[:address]
        type.latitude = params[:latitude]
        type.longitude = params[:longitude]
        type
      end
    end

    module NetworkResource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NetworkResource, context: context)
        type = Types::NetworkResource.new
        type.registered_gateway_arn = params[:registered_gateway_arn]
        type.core_network_id = params[:core_network_id]
        type.aws_region = params[:aws_region]
        type.account_id = params[:account_id]
        type.resource_type = params[:resource_type]
        type.resource_id = params[:resource_id]
        type.resource_arn = params[:resource_arn]
        type.definition = params[:definition]
        type.definition_timestamp = params[:definition_timestamp]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.metadata = NetworkResourceMetadataMap.build(params[:metadata], context: "#{context}[:metadata]") unless params[:metadata].nil?
        type
      end
    end

    module NetworkResourceCount
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NetworkResourceCount, context: context)
        type = Types::NetworkResourceCount.new
        type.resource_type = params[:resource_type]
        type.count = params[:count]
        type
      end
    end

    module NetworkResourceCountList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << NetworkResourceCount.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module NetworkResourceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << NetworkResource.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module NetworkResourceMetadataMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module NetworkResourceSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NetworkResourceSummary, context: context)
        type = Types::NetworkResourceSummary.new
        type.registered_gateway_arn = params[:registered_gateway_arn]
        type.resource_arn = params[:resource_arn]
        type.resource_type = params[:resource_type]
        type.definition = params[:definition]
        type.name_tag = params[:name_tag]
        type.is_middlebox = params[:is_middlebox]
        type
      end
    end

    module NetworkRoute
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NetworkRoute, context: context)
        type = Types::NetworkRoute.new
        type.destination_cidr_block = params[:destination_cidr_block]
        type.destinations = NetworkRouteDestinationList.build(params[:destinations], context: "#{context}[:destinations]") unless params[:destinations].nil?
        type.prefix_list_id = params[:prefix_list_id]
        type.state = params[:state]
        type.type = params[:type]
        type
      end
    end

    module NetworkRouteDestination
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NetworkRouteDestination, context: context)
        type = Types::NetworkRouteDestination.new
        type.core_network_attachment_id = params[:core_network_attachment_id]
        type.transit_gateway_attachment_id = params[:transit_gateway_attachment_id]
        type.segment_name = params[:segment_name]
        type.edge_location = params[:edge_location]
        type.resource_type = params[:resource_type]
        type.resource_id = params[:resource_id]
        type
      end
    end

    module NetworkRouteDestinationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << NetworkRouteDestination.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module NetworkRouteList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << NetworkRoute.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module NetworkTelemetry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NetworkTelemetry, context: context)
        type = Types::NetworkTelemetry.new
        type.registered_gateway_arn = params[:registered_gateway_arn]
        type.core_network_id = params[:core_network_id]
        type.aws_region = params[:aws_region]
        type.account_id = params[:account_id]
        type.resource_type = params[:resource_type]
        type.resource_id = params[:resource_id]
        type.resource_arn = params[:resource_arn]
        type.address = params[:address]
        type.health = ConnectionHealth.build(params[:health], context: "#{context}[:health]") unless params[:health].nil?
        type
      end
    end

    module NetworkTelemetryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << NetworkTelemetry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module OrganizationStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OrganizationStatus, context: context)
        type = Types::OrganizationStatus.new
        type.organization_id = params[:organization_id]
        type.organization_aws_service_access_status = params[:organization_aws_service_access_status]
        type.slr_deployment_status = params[:slr_deployment_status]
        type.account_status_list = AccountStatusList.build(params[:account_status_list], context: "#{context}[:account_status_list]") unless params[:account_status_list].nil?
        type
      end
    end

    module PathComponent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PathComponent, context: context)
        type = Types::PathComponent.new
        type.sequence = params[:sequence]
        type.resource = NetworkResourceSummary.build(params[:resource], context: "#{context}[:resource]") unless params[:resource].nil?
        type.destination_cidr_block = params[:destination_cidr_block]
        type
      end
    end

    module PathComponentList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PathComponent.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ProposedSegmentChange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProposedSegmentChange, context: context)
        type = Types::ProposedSegmentChange.new
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.attachment_policy_rule_number = params[:attachment_policy_rule_number]
        type.segment_name = params[:segment_name]
        type
      end
    end

    module PutCoreNetworkPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutCoreNetworkPolicyInput, context: context)
        type = Types::PutCoreNetworkPolicyInput.new
        type.core_network_id = params[:core_network_id]
        type.policy_document = params[:policy_document]
        type.description = params[:description]
        type.latest_version_id = params[:latest_version_id]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module PutCoreNetworkPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutCoreNetworkPolicyOutput, context: context)
        type = Types::PutCoreNetworkPolicyOutput.new
        type.core_network_policy = CoreNetworkPolicy.build(params[:core_network_policy], context: "#{context}[:core_network_policy]") unless params[:core_network_policy].nil?
        type
      end
    end

    module PutResourcePolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutResourcePolicyInput, context: context)
        type = Types::PutResourcePolicyInput.new
        type.policy_document = params[:policy_document]
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module PutResourcePolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutResourcePolicyOutput, context: context)
        type = Types::PutResourcePolicyOutput.new
        type
      end
    end

    module ReasonContextMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module RegisterTransitGatewayInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterTransitGatewayInput, context: context)
        type = Types::RegisterTransitGatewayInput.new
        type.global_network_id = params[:global_network_id]
        type.transit_gateway_arn = params[:transit_gateway_arn]
        type
      end
    end

    module RegisterTransitGatewayOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterTransitGatewayOutput, context: context)
        type = Types::RegisterTransitGatewayOutput.new
        type.transit_gateway_registration = TransitGatewayRegistration.build(params[:transit_gateway_registration], context: "#{context}[:transit_gateway_registration]") unless params[:transit_gateway_registration].nil?
        type
      end
    end

    module RejectAttachmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RejectAttachmentInput, context: context)
        type = Types::RejectAttachmentInput.new
        type.attachment_id = params[:attachment_id]
        type
      end
    end

    module RejectAttachmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RejectAttachmentOutput, context: context)
        type = Types::RejectAttachmentOutput.new
        type.attachment = Attachment.build(params[:attachment], context: "#{context}[:attachment]") unless params[:attachment].nil?
        type
      end
    end

    module Relationship
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Relationship, context: context)
        type = Types::Relationship.new
        type.from = params[:from]
        type.to = params[:to]
        type
      end
    end

    module RelationshipList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Relationship.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type.context = ExceptionContextMap.build(params[:context], context: "#{context}[:context]") unless params[:context].nil?
        type
      end
    end

    module RestoreCoreNetworkPolicyVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RestoreCoreNetworkPolicyVersionInput, context: context)
        type = Types::RestoreCoreNetworkPolicyVersionInput.new
        type.core_network_id = params[:core_network_id]
        type.policy_version_id = params[:policy_version_id]
        type
      end
    end

    module RestoreCoreNetworkPolicyVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RestoreCoreNetworkPolicyVersionOutput, context: context)
        type = Types::RestoreCoreNetworkPolicyVersionOutput.new
        type.core_network_policy = CoreNetworkPolicy.build(params[:core_network_policy], context: "#{context}[:core_network_policy]") unless params[:core_network_policy].nil?
        type
      end
    end

    module RouteAnalysis
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RouteAnalysis, context: context)
        type = Types::RouteAnalysis.new
        type.global_network_id = params[:global_network_id]
        type.owner_account_id = params[:owner_account_id]
        type.route_analysis_id = params[:route_analysis_id]
        type.start_timestamp = params[:start_timestamp]
        type.status = params[:status]
        type.source = RouteAnalysisEndpointOptions.build(params[:source], context: "#{context}[:source]") unless params[:source].nil?
        type.destination = RouteAnalysisEndpointOptions.build(params[:destination], context: "#{context}[:destination]") unless params[:destination].nil?
        type.include_return_path = params[:include_return_path]
        type.use_middleboxes = params[:use_middleboxes]
        type.forward_path = RouteAnalysisPath.build(params[:forward_path], context: "#{context}[:forward_path]") unless params[:forward_path].nil?
        type.return_path = RouteAnalysisPath.build(params[:return_path], context: "#{context}[:return_path]") unless params[:return_path].nil?
        type
      end
    end

    module RouteAnalysisCompletion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RouteAnalysisCompletion, context: context)
        type = Types::RouteAnalysisCompletion.new
        type.result_code = params[:result_code]
        type.reason_code = params[:reason_code]
        type.reason_context = ReasonContextMap.build(params[:reason_context], context: "#{context}[:reason_context]") unless params[:reason_context].nil?
        type
      end
    end

    module RouteAnalysisEndpointOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RouteAnalysisEndpointOptions, context: context)
        type = Types::RouteAnalysisEndpointOptions.new
        type.transit_gateway_attachment_arn = params[:transit_gateway_attachment_arn]
        type.transit_gateway_arn = params[:transit_gateway_arn]
        type.ip_address = params[:ip_address]
        type
      end
    end

    module RouteAnalysisEndpointOptionsSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RouteAnalysisEndpointOptionsSpecification, context: context)
        type = Types::RouteAnalysisEndpointOptionsSpecification.new
        type.transit_gateway_attachment_arn = params[:transit_gateway_attachment_arn]
        type.ip_address = params[:ip_address]
        type
      end
    end

    module RouteAnalysisPath
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RouteAnalysisPath, context: context)
        type = Types::RouteAnalysisPath.new
        type.completion_status = RouteAnalysisCompletion.build(params[:completion_status], context: "#{context}[:completion_status]") unless params[:completion_status].nil?
        type.path = PathComponentList.build(params[:path], context: "#{context}[:path]") unless params[:path].nil?
        type
      end
    end

    module RouteStateList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module RouteTableIdentifier
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RouteTableIdentifier, context: context)
        type = Types::RouteTableIdentifier.new
        type.transit_gateway_route_table_arn = params[:transit_gateway_route_table_arn]
        type.core_network_segment_edge = CoreNetworkSegmentEdgeIdentifier.build(params[:core_network_segment_edge], context: "#{context}[:core_network_segment_edge]") unless params[:core_network_segment_edge].nil?
        type
      end
    end

    module RouteTypeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ServiceQuotaExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceQuotaExceededException, context: context)
        type = Types::ServiceQuotaExceededException.new
        type.message = params[:message]
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type.limit_code = params[:limit_code]
        type.service_code = params[:service_code]
        type
      end
    end

    module Site
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Site, context: context)
        type = Types::Site.new
        type.site_id = params[:site_id]
        type.site_arn = params[:site_arn]
        type.global_network_id = params[:global_network_id]
        type.description = params[:description]
        type.location = Location.build(params[:location], context: "#{context}[:location]") unless params[:location].nil?
        type.created_at = params[:created_at]
        type.state = params[:state]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module SiteIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SiteList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Site.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SiteToSiteVpnAttachment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SiteToSiteVpnAttachment, context: context)
        type = Types::SiteToSiteVpnAttachment.new
        type.attachment = Attachment.build(params[:attachment], context: "#{context}[:attachment]") unless params[:attachment].nil?
        type.vpn_connection_arn = params[:vpn_connection_arn]
        type
      end
    end

    module StartOrganizationServiceAccessUpdateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartOrganizationServiceAccessUpdateInput, context: context)
        type = Types::StartOrganizationServiceAccessUpdateInput.new
        type.action = params[:action]
        type
      end
    end

    module StartOrganizationServiceAccessUpdateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartOrganizationServiceAccessUpdateOutput, context: context)
        type = Types::StartOrganizationServiceAccessUpdateOutput.new
        type.organization_status = OrganizationStatus.build(params[:organization_status], context: "#{context}[:organization_status]") unless params[:organization_status].nil?
        type
      end
    end

    module StartRouteAnalysisInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartRouteAnalysisInput, context: context)
        type = Types::StartRouteAnalysisInput.new
        type.global_network_id = params[:global_network_id]
        type.source = RouteAnalysisEndpointOptionsSpecification.build(params[:source], context: "#{context}[:source]") unless params[:source].nil?
        type.destination = RouteAnalysisEndpointOptionsSpecification.build(params[:destination], context: "#{context}[:destination]") unless params[:destination].nil?
        type.include_return_path = params[:include_return_path]
        type.use_middleboxes = params[:use_middleboxes]
        type
      end
    end

    module StartRouteAnalysisOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartRouteAnalysisOutput, context: context)
        type = Types::StartRouteAnalysisOutput.new
        type.route_analysis = RouteAnalysis.build(params[:route_analysis], context: "#{context}[:route_analysis]") unless params[:route_analysis].nil?
        type
      end
    end

    module SubnetArnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Tag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Tag, context: context)
        type = Types::Tag.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module TagKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
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

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.message = params[:message]
        type.retry_after_seconds = params[:retry_after_seconds]
        type
      end
    end

    module TransitGatewayArnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TransitGatewayConnectPeerArnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TransitGatewayConnectPeerAssociation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TransitGatewayConnectPeerAssociation, context: context)
        type = Types::TransitGatewayConnectPeerAssociation.new
        type.transit_gateway_connect_peer_arn = params[:transit_gateway_connect_peer_arn]
        type.global_network_id = params[:global_network_id]
        type.device_id = params[:device_id]
        type.link_id = params[:link_id]
        type.state = params[:state]
        type
      end
    end

    module TransitGatewayConnectPeerAssociationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TransitGatewayConnectPeerAssociation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TransitGatewayRegistration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TransitGatewayRegistration, context: context)
        type = Types::TransitGatewayRegistration.new
        type.global_network_id = params[:global_network_id]
        type.transit_gateway_arn = params[:transit_gateway_arn]
        type.state = TransitGatewayRegistrationStateReason.build(params[:state], context: "#{context}[:state]") unless params[:state].nil?
        type
      end
    end

    module TransitGatewayRegistrationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TransitGatewayRegistration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TransitGatewayRegistrationStateReason
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TransitGatewayRegistrationStateReason, context: context)
        type = Types::TransitGatewayRegistrationStateReason.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
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

    module UpdateConnectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateConnectionInput, context: context)
        type = Types::UpdateConnectionInput.new
        type.global_network_id = params[:global_network_id]
        type.connection_id = params[:connection_id]
        type.link_id = params[:link_id]
        type.connected_link_id = params[:connected_link_id]
        type.description = params[:description]
        type
      end
    end

    module UpdateConnectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateConnectionOutput, context: context)
        type = Types::UpdateConnectionOutput.new
        type.connection = Connection.build(params[:connection], context: "#{context}[:connection]") unless params[:connection].nil?
        type
      end
    end

    module UpdateCoreNetworkInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateCoreNetworkInput, context: context)
        type = Types::UpdateCoreNetworkInput.new
        type.core_network_id = params[:core_network_id]
        type.description = params[:description]
        type
      end
    end

    module UpdateCoreNetworkOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateCoreNetworkOutput, context: context)
        type = Types::UpdateCoreNetworkOutput.new
        type.core_network = CoreNetwork.build(params[:core_network], context: "#{context}[:core_network]") unless params[:core_network].nil?
        type
      end
    end

    module UpdateDeviceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDeviceInput, context: context)
        type = Types::UpdateDeviceInput.new
        type.global_network_id = params[:global_network_id]
        type.device_id = params[:device_id]
        type.aws_location = AWSLocation.build(params[:aws_location], context: "#{context}[:aws_location]") unless params[:aws_location].nil?
        type.description = params[:description]
        type.type = params[:type]
        type.vendor = params[:vendor]
        type.model = params[:model]
        type.serial_number = params[:serial_number]
        type.location = Location.build(params[:location], context: "#{context}[:location]") unless params[:location].nil?
        type.site_id = params[:site_id]
        type
      end
    end

    module UpdateDeviceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDeviceOutput, context: context)
        type = Types::UpdateDeviceOutput.new
        type.device = Device.build(params[:device], context: "#{context}[:device]") unless params[:device].nil?
        type
      end
    end

    module UpdateGlobalNetworkInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateGlobalNetworkInput, context: context)
        type = Types::UpdateGlobalNetworkInput.new
        type.global_network_id = params[:global_network_id]
        type.description = params[:description]
        type
      end
    end

    module UpdateGlobalNetworkOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateGlobalNetworkOutput, context: context)
        type = Types::UpdateGlobalNetworkOutput.new
        type.global_network = GlobalNetwork.build(params[:global_network], context: "#{context}[:global_network]") unless params[:global_network].nil?
        type
      end
    end

    module UpdateLinkInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateLinkInput, context: context)
        type = Types::UpdateLinkInput.new
        type.global_network_id = params[:global_network_id]
        type.link_id = params[:link_id]
        type.description = params[:description]
        type.type = params[:type]
        type.bandwidth = Bandwidth.build(params[:bandwidth], context: "#{context}[:bandwidth]") unless params[:bandwidth].nil?
        type.provider = params[:provider]
        type
      end
    end

    module UpdateLinkOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateLinkOutput, context: context)
        type = Types::UpdateLinkOutput.new
        type.link = Link.build(params[:link], context: "#{context}[:link]") unless params[:link].nil?
        type
      end
    end

    module UpdateNetworkResourceMetadataInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateNetworkResourceMetadataInput, context: context)
        type = Types::UpdateNetworkResourceMetadataInput.new
        type.global_network_id = params[:global_network_id]
        type.resource_arn = params[:resource_arn]
        type.metadata = NetworkResourceMetadataMap.build(params[:metadata], context: "#{context}[:metadata]") unless params[:metadata].nil?
        type
      end
    end

    module UpdateNetworkResourceMetadataOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateNetworkResourceMetadataOutput, context: context)
        type = Types::UpdateNetworkResourceMetadataOutput.new
        type.resource_arn = params[:resource_arn]
        type.metadata = NetworkResourceMetadataMap.build(params[:metadata], context: "#{context}[:metadata]") unless params[:metadata].nil?
        type
      end
    end

    module UpdateSiteInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSiteInput, context: context)
        type = Types::UpdateSiteInput.new
        type.global_network_id = params[:global_network_id]
        type.site_id = params[:site_id]
        type.description = params[:description]
        type.location = Location.build(params[:location], context: "#{context}[:location]") unless params[:location].nil?
        type
      end
    end

    module UpdateSiteOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSiteOutput, context: context)
        type = Types::UpdateSiteOutput.new
        type.site = Site.build(params[:site], context: "#{context}[:site]") unless params[:site].nil?
        type
      end
    end

    module UpdateVpcAttachmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateVpcAttachmentInput, context: context)
        type = Types::UpdateVpcAttachmentInput.new
        type.attachment_id = params[:attachment_id]
        type.add_subnet_arns = SubnetArnList.build(params[:add_subnet_arns], context: "#{context}[:add_subnet_arns]") unless params[:add_subnet_arns].nil?
        type.remove_subnet_arns = SubnetArnList.build(params[:remove_subnet_arns], context: "#{context}[:remove_subnet_arns]") unless params[:remove_subnet_arns].nil?
        type.options = VpcOptions.build(params[:options], context: "#{context}[:options]") unless params[:options].nil?
        type
      end
    end

    module UpdateVpcAttachmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateVpcAttachmentOutput, context: context)
        type = Types::UpdateVpcAttachmentOutput.new
        type.vpc_attachment = VpcAttachment.build(params[:vpc_attachment], context: "#{context}[:vpc_attachment]") unless params[:vpc_attachment].nil?
        type
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type.reason = params[:reason]
        type.fields = ValidationExceptionFieldList.build(params[:fields], context: "#{context}[:fields]") unless params[:fields].nil?
        type
      end
    end

    module ValidationExceptionField
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationExceptionField, context: context)
        type = Types::ValidationExceptionField.new
        type.name = params[:name]
        type.message = params[:message]
        type
      end
    end

    module ValidationExceptionFieldList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ValidationExceptionField.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module VpcAttachment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VpcAttachment, context: context)
        type = Types::VpcAttachment.new
        type.attachment = Attachment.build(params[:attachment], context: "#{context}[:attachment]") unless params[:attachment].nil?
        type.subnet_arns = SubnetArnList.build(params[:subnet_arns], context: "#{context}[:subnet_arns]") unless params[:subnet_arns].nil?
        type.options = VpcOptions.build(params[:options], context: "#{context}[:options]") unless params[:options].nil?
        type
      end
    end

    module VpcOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VpcOptions, context: context)
        type = Types::VpcOptions.new
        type.ipv6_support = params[:ipv6_support]
        type
      end
    end

  end
end
