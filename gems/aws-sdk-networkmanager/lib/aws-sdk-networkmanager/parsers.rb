# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::NetworkManager
  module Parsers

    # Operation Parser for AcceptAttachment
    class AcceptAttachment
      def self.parse(http_resp)
        data = Types::AcceptAttachmentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.attachment = (Parsers::Attachment.parse(map['Attachment']) unless map['Attachment'].nil?)
        data
      end
    end

    class Attachment
      def self.parse(map)
        data = Types::Attachment.new
        data.core_network_id = map['CoreNetworkId']
        data.core_network_arn = map['CoreNetworkArn']
        data.attachment_id = map['AttachmentId']
        data.owner_account_id = map['OwnerAccountId']
        data.attachment_type = map['AttachmentType']
        data.state = map['State']
        data.edge_location = map['EdgeLocation']
        data.resource_arn = map['ResourceArn']
        data.attachment_policy_rule_number = map['AttachmentPolicyRuleNumber']
        data.segment_name = map['SegmentName']
        data.tags = (Parsers::TagList.parse(map['Tags']) unless map['Tags'].nil?)
        data.proposed_segment_change = (Parsers::ProposedSegmentChange.parse(map['ProposedSegmentChange']) unless map['ProposedSegmentChange'].nil?)
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.updated_at = Time.at(map['UpdatedAt'].to_i) if map['UpdatedAt']
        return data
      end
    end

    class ProposedSegmentChange
      def self.parse(map)
        data = Types::ProposedSegmentChange.new
        data.tags = (Parsers::TagList.parse(map['Tags']) unless map['Tags'].nil?)
        data.attachment_policy_rule_number = map['AttachmentPolicyRuleNumber']
        data.segment_name = map['SegmentName']
        return data
      end
    end

    class TagList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Tag.parse(value) unless value.nil?
        end
        data
      end
    end

    class Tag
      def self.parse(map)
        data = Types::Tag.new
        data.key = map['Key']
        data.value = map['Value']
        return data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        data.retry_after_seconds = http_resp.headers['Retry-After'].to_i unless http_resp.headers['Retry-After'].nil?
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.resource_id = map['ResourceId']
        data.resource_type = map['ResourceType']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.resource_id = map['ResourceId']
        data.resource_type = map['ResourceType']
        data.context = (Parsers::ExceptionContextMap.parse(map['Context']) unless map['Context'].nil?)
        data
      end
    end

    class ExceptionContextMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        data.retry_after_seconds = http_resp.headers['Retry-After'].to_i unless http_resp.headers['Retry-After'].nil?
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.reason = map['Reason']
        data.fields = (Parsers::ValidationExceptionFieldList.parse(map['Fields']) unless map['Fields'].nil?)
        data
      end
    end

    class ValidationExceptionFieldList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ValidationExceptionField.parse(value) unless value.nil?
        end
        data
      end
    end

    class ValidationExceptionField
      def self.parse(map)
        data = Types::ValidationExceptionField.new
        data.name = map['Name']
        data.message = map['Message']
        return data
      end
    end

    # Operation Parser for AssociateConnectPeer
    class AssociateConnectPeer
      def self.parse(http_resp)
        data = Types::AssociateConnectPeerOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.connect_peer_association = (Parsers::ConnectPeerAssociation.parse(map['ConnectPeerAssociation']) unless map['ConnectPeerAssociation'].nil?)
        data
      end
    end

    class ConnectPeerAssociation
      def self.parse(map)
        data = Types::ConnectPeerAssociation.new
        data.connect_peer_id = map['ConnectPeerId']
        data.global_network_id = map['GlobalNetworkId']
        data.device_id = map['DeviceId']
        data.link_id = map['LinkId']
        data.state = map['State']
        return data
      end
    end

    # Error Parser for ServiceQuotaExceededException
    class ServiceQuotaExceededException
      def self.parse(http_resp)
        data = Types::ServiceQuotaExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.resource_id = map['ResourceId']
        data.resource_type = map['ResourceType']
        data.limit_code = map['LimitCode']
        data.service_code = map['ServiceCode']
        data
      end
    end

    # Operation Parser for AssociateCustomerGateway
    class AssociateCustomerGateway
      def self.parse(http_resp)
        data = Types::AssociateCustomerGatewayOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.customer_gateway_association = (Parsers::CustomerGatewayAssociation.parse(map['CustomerGatewayAssociation']) unless map['CustomerGatewayAssociation'].nil?)
        data
      end
    end

    class CustomerGatewayAssociation
      def self.parse(map)
        data = Types::CustomerGatewayAssociation.new
        data.customer_gateway_arn = map['CustomerGatewayArn']
        data.global_network_id = map['GlobalNetworkId']
        data.device_id = map['DeviceId']
        data.link_id = map['LinkId']
        data.state = map['State']
        return data
      end
    end

    # Operation Parser for AssociateLink
    class AssociateLink
      def self.parse(http_resp)
        data = Types::AssociateLinkOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.link_association = (Parsers::LinkAssociation.parse(map['LinkAssociation']) unless map['LinkAssociation'].nil?)
        data
      end
    end

    class LinkAssociation
      def self.parse(map)
        data = Types::LinkAssociation.new
        data.global_network_id = map['GlobalNetworkId']
        data.device_id = map['DeviceId']
        data.link_id = map['LinkId']
        data.link_association_state = map['LinkAssociationState']
        return data
      end
    end

    # Operation Parser for AssociateTransitGatewayConnectPeer
    class AssociateTransitGatewayConnectPeer
      def self.parse(http_resp)
        data = Types::AssociateTransitGatewayConnectPeerOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.transit_gateway_connect_peer_association = (Parsers::TransitGatewayConnectPeerAssociation.parse(map['TransitGatewayConnectPeerAssociation']) unless map['TransitGatewayConnectPeerAssociation'].nil?)
        data
      end
    end

    class TransitGatewayConnectPeerAssociation
      def self.parse(map)
        data = Types::TransitGatewayConnectPeerAssociation.new
        data.transit_gateway_connect_peer_arn = map['TransitGatewayConnectPeerArn']
        data.global_network_id = map['GlobalNetworkId']
        data.device_id = map['DeviceId']
        data.link_id = map['LinkId']
        data.state = map['State']
        return data
      end
    end

    # Operation Parser for CreateConnectAttachment
    class CreateConnectAttachment
      def self.parse(http_resp)
        data = Types::CreateConnectAttachmentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.connect_attachment = (Parsers::ConnectAttachment.parse(map['ConnectAttachment']) unless map['ConnectAttachment'].nil?)
        data
      end
    end

    class ConnectAttachment
      def self.parse(map)
        data = Types::ConnectAttachment.new
        data.attachment = (Parsers::Attachment.parse(map['Attachment']) unless map['Attachment'].nil?)
        data.transport_attachment_id = map['TransportAttachmentId']
        data.options = (Parsers::ConnectAttachmentOptions.parse(map['Options']) unless map['Options'].nil?)
        return data
      end
    end

    class ConnectAttachmentOptions
      def self.parse(map)
        data = Types::ConnectAttachmentOptions.new
        data.protocol = map['Protocol']
        return data
      end
    end

    # Operation Parser for CreateConnectPeer
    class CreateConnectPeer
      def self.parse(http_resp)
        data = Types::CreateConnectPeerOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.connect_peer = (Parsers::ConnectPeer.parse(map['ConnectPeer']) unless map['ConnectPeer'].nil?)
        data
      end
    end

    class ConnectPeer
      def self.parse(map)
        data = Types::ConnectPeer.new
        data.core_network_id = map['CoreNetworkId']
        data.connect_attachment_id = map['ConnectAttachmentId']
        data.connect_peer_id = map['ConnectPeerId']
        data.edge_location = map['EdgeLocation']
        data.state = map['State']
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.configuration = (Parsers::ConnectPeerConfiguration.parse(map['Configuration']) unless map['Configuration'].nil?)
        data.tags = (Parsers::TagList.parse(map['Tags']) unless map['Tags'].nil?)
        return data
      end
    end

    class ConnectPeerConfiguration
      def self.parse(map)
        data = Types::ConnectPeerConfiguration.new
        data.core_network_address = map['CoreNetworkAddress']
        data.peer_address = map['PeerAddress']
        data.inside_cidr_blocks = (Parsers::ConstrainedStringList.parse(map['InsideCidrBlocks']) unless map['InsideCidrBlocks'].nil?)
        data.protocol = map['Protocol']
        data.bgp_configurations = (Parsers::ConnectPeerBgpConfigurationList.parse(map['BgpConfigurations']) unless map['BgpConfigurations'].nil?)
        return data
      end
    end

    class ConnectPeerBgpConfigurationList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ConnectPeerBgpConfiguration.parse(value) unless value.nil?
        end
        data
      end
    end

    class ConnectPeerBgpConfiguration
      def self.parse(map)
        data = Types::ConnectPeerBgpConfiguration.new
        data.core_network_asn = map['CoreNetworkAsn']
        data.peer_asn = map['PeerAsn']
        data.core_network_address = map['CoreNetworkAddress']
        data.peer_address = map['PeerAddress']
        return data
      end
    end

    class ConstrainedStringList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for CreateConnection
    class CreateConnection
      def self.parse(http_resp)
        data = Types::CreateConnectionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.connection = (Parsers::Connection.parse(map['Connection']) unless map['Connection'].nil?)
        data
      end
    end

    class Connection
      def self.parse(map)
        data = Types::Connection.new
        data.connection_id = map['ConnectionId']
        data.connection_arn = map['ConnectionArn']
        data.global_network_id = map['GlobalNetworkId']
        data.device_id = map['DeviceId']
        data.connected_device_id = map['ConnectedDeviceId']
        data.link_id = map['LinkId']
        data.connected_link_id = map['ConnectedLinkId']
        data.description = map['Description']
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.state = map['State']
        data.tags = (Parsers::TagList.parse(map['Tags']) unless map['Tags'].nil?)
        return data
      end
    end

    # Operation Parser for CreateCoreNetwork
    class CreateCoreNetwork
      def self.parse(http_resp)
        data = Types::CreateCoreNetworkOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.core_network = (Parsers::CoreNetwork.parse(map['CoreNetwork']) unless map['CoreNetwork'].nil?)
        data
      end
    end

    class CoreNetwork
      def self.parse(map)
        data = Types::CoreNetwork.new
        data.global_network_id = map['GlobalNetworkId']
        data.core_network_id = map['CoreNetworkId']
        data.core_network_arn = map['CoreNetworkArn']
        data.description = map['Description']
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.state = map['State']
        data.segments = (Parsers::CoreNetworkSegmentList.parse(map['Segments']) unless map['Segments'].nil?)
        data.edges = (Parsers::CoreNetworkEdgeList.parse(map['Edges']) unless map['Edges'].nil?)
        data.tags = (Parsers::TagList.parse(map['Tags']) unless map['Tags'].nil?)
        return data
      end
    end

    class CoreNetworkEdgeList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::CoreNetworkEdge.parse(value) unless value.nil?
        end
        data
      end
    end

    class CoreNetworkEdge
      def self.parse(map)
        data = Types::CoreNetworkEdge.new
        data.edge_location = map['EdgeLocation']
        data.asn = map['Asn']
        data.inside_cidr_blocks = (Parsers::ConstrainedStringList.parse(map['InsideCidrBlocks']) unless map['InsideCidrBlocks'].nil?)
        return data
      end
    end

    class CoreNetworkSegmentList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::CoreNetworkSegment.parse(value) unless value.nil?
        end
        data
      end
    end

    class CoreNetworkSegment
      def self.parse(map)
        data = Types::CoreNetworkSegment.new
        data.name = map['Name']
        data.edge_locations = (Parsers::ExternalRegionCodeList.parse(map['EdgeLocations']) unless map['EdgeLocations'].nil?)
        data.shared_segments = (Parsers::ConstrainedStringList.parse(map['SharedSegments']) unless map['SharedSegments'].nil?)
        return data
      end
    end

    class ExternalRegionCodeList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Error Parser for CoreNetworkPolicyException
    class CoreNetworkPolicyException
      def self.parse(http_resp)
        data = Types::CoreNetworkPolicyException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.errors = (Parsers::CoreNetworkPolicyErrorList.parse(map['Errors']) unless map['Errors'].nil?)
        data
      end
    end

    class CoreNetworkPolicyErrorList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::CoreNetworkPolicyError.parse(value) unless value.nil?
        end
        data
      end
    end

    class CoreNetworkPolicyError
      def self.parse(map)
        data = Types::CoreNetworkPolicyError.new
        data.error_code = map['ErrorCode']
        data.message = map['Message']
        data.path = map['Path']
        return data
      end
    end

    # Operation Parser for CreateDevice
    class CreateDevice
      def self.parse(http_resp)
        data = Types::CreateDeviceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.device = (Parsers::Device.parse(map['Device']) unless map['Device'].nil?)
        data
      end
    end

    class Device
      def self.parse(map)
        data = Types::Device.new
        data.device_id = map['DeviceId']
        data.device_arn = map['DeviceArn']
        data.global_network_id = map['GlobalNetworkId']
        data.aws_location = (Parsers::AWSLocation.parse(map['AWSLocation']) unless map['AWSLocation'].nil?)
        data.description = map['Description']
        data.type = map['Type']
        data.vendor = map['Vendor']
        data.model = map['Model']
        data.serial_number = map['SerialNumber']
        data.location = (Parsers::Location.parse(map['Location']) unless map['Location'].nil?)
        data.site_id = map['SiteId']
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.state = map['State']
        data.tags = (Parsers::TagList.parse(map['Tags']) unless map['Tags'].nil?)
        return data
      end
    end

    class Location
      def self.parse(map)
        data = Types::Location.new
        data.address = map['Address']
        data.latitude = map['Latitude']
        data.longitude = map['Longitude']
        return data
      end
    end

    class AWSLocation
      def self.parse(map)
        data = Types::AWSLocation.new
        data.zone = map['Zone']
        data.subnet_arn = map['SubnetArn']
        return data
      end
    end

    # Operation Parser for CreateGlobalNetwork
    class CreateGlobalNetwork
      def self.parse(http_resp)
        data = Types::CreateGlobalNetworkOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.global_network = (Parsers::GlobalNetwork.parse(map['GlobalNetwork']) unless map['GlobalNetwork'].nil?)
        data
      end
    end

    class GlobalNetwork
      def self.parse(map)
        data = Types::GlobalNetwork.new
        data.global_network_id = map['GlobalNetworkId']
        data.global_network_arn = map['GlobalNetworkArn']
        data.description = map['Description']
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.state = map['State']
        data.tags = (Parsers::TagList.parse(map['Tags']) unless map['Tags'].nil?)
        return data
      end
    end

    # Operation Parser for CreateLink
    class CreateLink
      def self.parse(http_resp)
        data = Types::CreateLinkOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.link = (Parsers::Link.parse(map['Link']) unless map['Link'].nil?)
        data
      end
    end

    class Link
      def self.parse(map)
        data = Types::Link.new
        data.link_id = map['LinkId']
        data.link_arn = map['LinkArn']
        data.global_network_id = map['GlobalNetworkId']
        data.site_id = map['SiteId']
        data.description = map['Description']
        data.type = map['Type']
        data.bandwidth = (Parsers::Bandwidth.parse(map['Bandwidth']) unless map['Bandwidth'].nil?)
        data.provider = map['Provider']
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.state = map['State']
        data.tags = (Parsers::TagList.parse(map['Tags']) unless map['Tags'].nil?)
        return data
      end
    end

    class Bandwidth
      def self.parse(map)
        data = Types::Bandwidth.new
        data.upload_speed = map['UploadSpeed']
        data.download_speed = map['DownloadSpeed']
        return data
      end
    end

    # Operation Parser for CreateSite
    class CreateSite
      def self.parse(http_resp)
        data = Types::CreateSiteOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.site = (Parsers::Site.parse(map['Site']) unless map['Site'].nil?)
        data
      end
    end

    class Site
      def self.parse(map)
        data = Types::Site.new
        data.site_id = map['SiteId']
        data.site_arn = map['SiteArn']
        data.global_network_id = map['GlobalNetworkId']
        data.description = map['Description']
        data.location = (Parsers::Location.parse(map['Location']) unless map['Location'].nil?)
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.state = map['State']
        data.tags = (Parsers::TagList.parse(map['Tags']) unless map['Tags'].nil?)
        return data
      end
    end

    # Operation Parser for CreateSiteToSiteVpnAttachment
    class CreateSiteToSiteVpnAttachment
      def self.parse(http_resp)
        data = Types::CreateSiteToSiteVpnAttachmentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.site_to_site_vpn_attachment = (Parsers::SiteToSiteVpnAttachment.parse(map['SiteToSiteVpnAttachment']) unless map['SiteToSiteVpnAttachment'].nil?)
        data
      end
    end

    class SiteToSiteVpnAttachment
      def self.parse(map)
        data = Types::SiteToSiteVpnAttachment.new
        data.attachment = (Parsers::Attachment.parse(map['Attachment']) unless map['Attachment'].nil?)
        data.vpn_connection_arn = map['VpnConnectionArn']
        return data
      end
    end

    # Operation Parser for CreateVpcAttachment
    class CreateVpcAttachment
      def self.parse(http_resp)
        data = Types::CreateVpcAttachmentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.vpc_attachment = (Parsers::VpcAttachment.parse(map['VpcAttachment']) unless map['VpcAttachment'].nil?)
        data
      end
    end

    class VpcAttachment
      def self.parse(map)
        data = Types::VpcAttachment.new
        data.attachment = (Parsers::Attachment.parse(map['Attachment']) unless map['Attachment'].nil?)
        data.subnet_arns = (Parsers::SubnetArnList.parse(map['SubnetArns']) unless map['SubnetArns'].nil?)
        data.options = (Parsers::VpcOptions.parse(map['Options']) unless map['Options'].nil?)
        return data
      end
    end

    class VpcOptions
      def self.parse(map)
        data = Types::VpcOptions.new
        data.ipv6_support = map['Ipv6Support']
        return data
      end
    end

    class SubnetArnList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DeleteAttachment
    class DeleteAttachment
      def self.parse(http_resp)
        data = Types::DeleteAttachmentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.attachment = (Parsers::Attachment.parse(map['Attachment']) unless map['Attachment'].nil?)
        data
      end
    end

    # Operation Parser for DeleteConnectPeer
    class DeleteConnectPeer
      def self.parse(http_resp)
        data = Types::DeleteConnectPeerOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.connect_peer = (Parsers::ConnectPeer.parse(map['ConnectPeer']) unless map['ConnectPeer'].nil?)
        data
      end
    end

    # Operation Parser for DeleteConnection
    class DeleteConnection
      def self.parse(http_resp)
        data = Types::DeleteConnectionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.connection = (Parsers::Connection.parse(map['Connection']) unless map['Connection'].nil?)
        data
      end
    end

    # Operation Parser for DeleteCoreNetwork
    class DeleteCoreNetwork
      def self.parse(http_resp)
        data = Types::DeleteCoreNetworkOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.core_network = (Parsers::CoreNetwork.parse(map['CoreNetwork']) unless map['CoreNetwork'].nil?)
        data
      end
    end

    # Operation Parser for DeleteCoreNetworkPolicyVersion
    class DeleteCoreNetworkPolicyVersion
      def self.parse(http_resp)
        data = Types::DeleteCoreNetworkPolicyVersionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.core_network_policy = (Parsers::CoreNetworkPolicy.parse(map['CoreNetworkPolicy']) unless map['CoreNetworkPolicy'].nil?)
        data
      end
    end

    class CoreNetworkPolicy
      def self.parse(map)
        data = Types::CoreNetworkPolicy.new
        data.core_network_id = map['CoreNetworkId']
        data.policy_version_id = map['PolicyVersionId']
        data.alias = map['Alias']
        data.description = map['Description']
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.change_set_state = map['ChangeSetState']
        data.policy_errors = (Parsers::CoreNetworkPolicyErrorList.parse(map['PolicyErrors']) unless map['PolicyErrors'].nil?)
        data.policy_document = map['PolicyDocument']
        return data
      end
    end

    # Operation Parser for DeleteDevice
    class DeleteDevice
      def self.parse(http_resp)
        data = Types::DeleteDeviceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.device = (Parsers::Device.parse(map['Device']) unless map['Device'].nil?)
        data
      end
    end

    # Operation Parser for DeleteGlobalNetwork
    class DeleteGlobalNetwork
      def self.parse(http_resp)
        data = Types::DeleteGlobalNetworkOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.global_network = (Parsers::GlobalNetwork.parse(map['GlobalNetwork']) unless map['GlobalNetwork'].nil?)
        data
      end
    end

    # Operation Parser for DeleteLink
    class DeleteLink
      def self.parse(http_resp)
        data = Types::DeleteLinkOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.link = (Parsers::Link.parse(map['Link']) unless map['Link'].nil?)
        data
      end
    end

    # Operation Parser for DeleteResourcePolicy
    class DeleteResourcePolicy
      def self.parse(http_resp)
        data = Types::DeleteResourcePolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteSite
    class DeleteSite
      def self.parse(http_resp)
        data = Types::DeleteSiteOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.site = (Parsers::Site.parse(map['Site']) unless map['Site'].nil?)
        data
      end
    end

    # Operation Parser for DeregisterTransitGateway
    class DeregisterTransitGateway
      def self.parse(http_resp)
        data = Types::DeregisterTransitGatewayOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.transit_gateway_registration = (Parsers::TransitGatewayRegistration.parse(map['TransitGatewayRegistration']) unless map['TransitGatewayRegistration'].nil?)
        data
      end
    end

    class TransitGatewayRegistration
      def self.parse(map)
        data = Types::TransitGatewayRegistration.new
        data.global_network_id = map['GlobalNetworkId']
        data.transit_gateway_arn = map['TransitGatewayArn']
        data.state = (Parsers::TransitGatewayRegistrationStateReason.parse(map['State']) unless map['State'].nil?)
        return data
      end
    end

    class TransitGatewayRegistrationStateReason
      def self.parse(map)
        data = Types::TransitGatewayRegistrationStateReason.new
        data.code = map['Code']
        data.message = map['Message']
        return data
      end
    end

    # Operation Parser for DescribeGlobalNetworks
    class DescribeGlobalNetworks
      def self.parse(http_resp)
        data = Types::DescribeGlobalNetworksOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.global_networks = (Parsers::GlobalNetworkList.parse(map['GlobalNetworks']) unless map['GlobalNetworks'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class GlobalNetworkList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::GlobalNetwork.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DisassociateConnectPeer
    class DisassociateConnectPeer
      def self.parse(http_resp)
        data = Types::DisassociateConnectPeerOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.connect_peer_association = (Parsers::ConnectPeerAssociation.parse(map['ConnectPeerAssociation']) unless map['ConnectPeerAssociation'].nil?)
        data
      end
    end

    # Operation Parser for DisassociateCustomerGateway
    class DisassociateCustomerGateway
      def self.parse(http_resp)
        data = Types::DisassociateCustomerGatewayOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.customer_gateway_association = (Parsers::CustomerGatewayAssociation.parse(map['CustomerGatewayAssociation']) unless map['CustomerGatewayAssociation'].nil?)
        data
      end
    end

    # Operation Parser for DisassociateLink
    class DisassociateLink
      def self.parse(http_resp)
        data = Types::DisassociateLinkOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.link_association = (Parsers::LinkAssociation.parse(map['LinkAssociation']) unless map['LinkAssociation'].nil?)
        data
      end
    end

    # Operation Parser for DisassociateTransitGatewayConnectPeer
    class DisassociateTransitGatewayConnectPeer
      def self.parse(http_resp)
        data = Types::DisassociateTransitGatewayConnectPeerOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.transit_gateway_connect_peer_association = (Parsers::TransitGatewayConnectPeerAssociation.parse(map['TransitGatewayConnectPeerAssociation']) unless map['TransitGatewayConnectPeerAssociation'].nil?)
        data
      end
    end

    # Operation Parser for ExecuteCoreNetworkChangeSet
    class ExecuteCoreNetworkChangeSet
      def self.parse(http_resp)
        data = Types::ExecuteCoreNetworkChangeSetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for GetConnectAttachment
    class GetConnectAttachment
      def self.parse(http_resp)
        data = Types::GetConnectAttachmentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.connect_attachment = (Parsers::ConnectAttachment.parse(map['ConnectAttachment']) unless map['ConnectAttachment'].nil?)
        data
      end
    end

    # Operation Parser for GetConnectPeer
    class GetConnectPeer
      def self.parse(http_resp)
        data = Types::GetConnectPeerOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.connect_peer = (Parsers::ConnectPeer.parse(map['ConnectPeer']) unless map['ConnectPeer'].nil?)
        data
      end
    end

    # Operation Parser for GetConnectPeerAssociations
    class GetConnectPeerAssociations
      def self.parse(http_resp)
        data = Types::GetConnectPeerAssociationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.connect_peer_associations = (Parsers::ConnectPeerAssociationList.parse(map['ConnectPeerAssociations']) unless map['ConnectPeerAssociations'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ConnectPeerAssociationList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ConnectPeerAssociation.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetConnections
    class GetConnections
      def self.parse(http_resp)
        data = Types::GetConnectionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.connections = (Parsers::ConnectionList.parse(map['Connections']) unless map['Connections'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ConnectionList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Connection.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetCoreNetwork
    class GetCoreNetwork
      def self.parse(http_resp)
        data = Types::GetCoreNetworkOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.core_network = (Parsers::CoreNetwork.parse(map['CoreNetwork']) unless map['CoreNetwork'].nil?)
        data
      end
    end

    # Operation Parser for GetCoreNetworkChangeSet
    class GetCoreNetworkChangeSet
      def self.parse(http_resp)
        data = Types::GetCoreNetworkChangeSetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.core_network_changes = (Parsers::CoreNetworkChangeList.parse(map['CoreNetworkChanges']) unless map['CoreNetworkChanges'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class CoreNetworkChangeList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::CoreNetworkChange.parse(value) unless value.nil?
        end
        data
      end
    end

    class CoreNetworkChange
      def self.parse(map)
        data = Types::CoreNetworkChange.new
        data.type = map['Type']
        data.action = map['Action']
        data.identifier = map['Identifier']
        data.previous_values = (Parsers::CoreNetworkChangeValues.parse(map['PreviousValues']) unless map['PreviousValues'].nil?)
        data.new_values = (Parsers::CoreNetworkChangeValues.parse(map['NewValues']) unless map['NewValues'].nil?)
        return data
      end
    end

    class CoreNetworkChangeValues
      def self.parse(map)
        data = Types::CoreNetworkChangeValues.new
        data.segment_name = map['SegmentName']
        data.edge_locations = (Parsers::ExternalRegionCodeList.parse(map['EdgeLocations']) unless map['EdgeLocations'].nil?)
        data.asn = map['Asn']
        data.cidr = map['Cidr']
        data.destination_identifier = map['DestinationIdentifier']
        data.inside_cidr_blocks = (Parsers::ConstrainedStringList.parse(map['InsideCidrBlocks']) unless map['InsideCidrBlocks'].nil?)
        data.shared_segments = (Parsers::ConstrainedStringList.parse(map['SharedSegments']) unless map['SharedSegments'].nil?)
        return data
      end
    end

    # Operation Parser for GetCoreNetworkPolicy
    class GetCoreNetworkPolicy
      def self.parse(http_resp)
        data = Types::GetCoreNetworkPolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.core_network_policy = (Parsers::CoreNetworkPolicy.parse(map['CoreNetworkPolicy']) unless map['CoreNetworkPolicy'].nil?)
        data
      end
    end

    # Operation Parser for GetCustomerGatewayAssociations
    class GetCustomerGatewayAssociations
      def self.parse(http_resp)
        data = Types::GetCustomerGatewayAssociationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.customer_gateway_associations = (Parsers::CustomerGatewayAssociationList.parse(map['CustomerGatewayAssociations']) unless map['CustomerGatewayAssociations'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class CustomerGatewayAssociationList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::CustomerGatewayAssociation.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetDevices
    class GetDevices
      def self.parse(http_resp)
        data = Types::GetDevicesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.devices = (Parsers::DeviceList.parse(map['Devices']) unless map['Devices'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class DeviceList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Device.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetLinkAssociations
    class GetLinkAssociations
      def self.parse(http_resp)
        data = Types::GetLinkAssociationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.link_associations = (Parsers::LinkAssociationList.parse(map['LinkAssociations']) unless map['LinkAssociations'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class LinkAssociationList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::LinkAssociation.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetLinks
    class GetLinks
      def self.parse(http_resp)
        data = Types::GetLinksOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.links = (Parsers::LinkList.parse(map['Links']) unless map['Links'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class LinkList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Link.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetNetworkResourceCounts
    class GetNetworkResourceCounts
      def self.parse(http_resp)
        data = Types::GetNetworkResourceCountsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.network_resource_counts = (Parsers::NetworkResourceCountList.parse(map['NetworkResourceCounts']) unless map['NetworkResourceCounts'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class NetworkResourceCountList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::NetworkResourceCount.parse(value) unless value.nil?
        end
        data
      end
    end

    class NetworkResourceCount
      def self.parse(map)
        data = Types::NetworkResourceCount.new
        data.resource_type = map['ResourceType']
        data.count = map['Count']
        return data
      end
    end

    # Operation Parser for GetNetworkResourceRelationships
    class GetNetworkResourceRelationships
      def self.parse(http_resp)
        data = Types::GetNetworkResourceRelationshipsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.relationships = (Parsers::RelationshipList.parse(map['Relationships']) unless map['Relationships'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class RelationshipList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Relationship.parse(value) unless value.nil?
        end
        data
      end
    end

    class Relationship
      def self.parse(map)
        data = Types::Relationship.new
        data.from = map['From']
        data.to = map['To']
        return data
      end
    end

    # Operation Parser for GetNetworkResources
    class GetNetworkResources
      def self.parse(http_resp)
        data = Types::GetNetworkResourcesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.network_resources = (Parsers::NetworkResourceList.parse(map['NetworkResources']) unless map['NetworkResources'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class NetworkResourceList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::NetworkResource.parse(value) unless value.nil?
        end
        data
      end
    end

    class NetworkResource
      def self.parse(map)
        data = Types::NetworkResource.new
        data.registered_gateway_arn = map['RegisteredGatewayArn']
        data.core_network_id = map['CoreNetworkId']
        data.aws_region = map['AwsRegion']
        data.account_id = map['AccountId']
        data.resource_type = map['ResourceType']
        data.resource_id = map['ResourceId']
        data.resource_arn = map['ResourceArn']
        data.definition = map['Definition']
        data.definition_timestamp = Time.at(map['DefinitionTimestamp'].to_i) if map['DefinitionTimestamp']
        data.tags = (Parsers::TagList.parse(map['Tags']) unless map['Tags'].nil?)
        data.metadata = (Parsers::NetworkResourceMetadataMap.parse(map['Metadata']) unless map['Metadata'].nil?)
        return data
      end
    end

    class NetworkResourceMetadataMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetNetworkRoutes
    class GetNetworkRoutes
      def self.parse(http_resp)
        data = Types::GetNetworkRoutesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.route_table_arn = map['RouteTableArn']
        data.core_network_segment_edge = (Parsers::CoreNetworkSegmentEdgeIdentifier.parse(map['CoreNetworkSegmentEdge']) unless map['CoreNetworkSegmentEdge'].nil?)
        data.route_table_type = map['RouteTableType']
        data.route_table_timestamp = Time.at(map['RouteTableTimestamp'].to_i) if map['RouteTableTimestamp']
        data.network_routes = (Parsers::NetworkRouteList.parse(map['NetworkRoutes']) unless map['NetworkRoutes'].nil?)
        data
      end
    end

    class NetworkRouteList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::NetworkRoute.parse(value) unless value.nil?
        end
        data
      end
    end

    class NetworkRoute
      def self.parse(map)
        data = Types::NetworkRoute.new
        data.destination_cidr_block = map['DestinationCidrBlock']
        data.destinations = (Parsers::NetworkRouteDestinationList.parse(map['Destinations']) unless map['Destinations'].nil?)
        data.prefix_list_id = map['PrefixListId']
        data.state = map['State']
        data.type = map['Type']
        return data
      end
    end

    class NetworkRouteDestinationList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::NetworkRouteDestination.parse(value) unless value.nil?
        end
        data
      end
    end

    class NetworkRouteDestination
      def self.parse(map)
        data = Types::NetworkRouteDestination.new
        data.core_network_attachment_id = map['CoreNetworkAttachmentId']
        data.transit_gateway_attachment_id = map['TransitGatewayAttachmentId']
        data.segment_name = map['SegmentName']
        data.edge_location = map['EdgeLocation']
        data.resource_type = map['ResourceType']
        data.resource_id = map['ResourceId']
        return data
      end
    end

    class CoreNetworkSegmentEdgeIdentifier
      def self.parse(map)
        data = Types::CoreNetworkSegmentEdgeIdentifier.new
        data.core_network_id = map['CoreNetworkId']
        data.segment_name = map['SegmentName']
        data.edge_location = map['EdgeLocation']
        return data
      end
    end

    # Operation Parser for GetNetworkTelemetry
    class GetNetworkTelemetry
      def self.parse(http_resp)
        data = Types::GetNetworkTelemetryOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.network_telemetry = (Parsers::NetworkTelemetryList.parse(map['NetworkTelemetry']) unless map['NetworkTelemetry'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class NetworkTelemetryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::NetworkTelemetry.parse(value) unless value.nil?
        end
        data
      end
    end

    class NetworkTelemetry
      def self.parse(map)
        data = Types::NetworkTelemetry.new
        data.registered_gateway_arn = map['RegisteredGatewayArn']
        data.core_network_id = map['CoreNetworkId']
        data.aws_region = map['AwsRegion']
        data.account_id = map['AccountId']
        data.resource_type = map['ResourceType']
        data.resource_id = map['ResourceId']
        data.resource_arn = map['ResourceArn']
        data.address = map['Address']
        data.health = (Parsers::ConnectionHealth.parse(map['Health']) unless map['Health'].nil?)
        return data
      end
    end

    class ConnectionHealth
      def self.parse(map)
        data = Types::ConnectionHealth.new
        data.type = map['Type']
        data.status = map['Status']
        data.timestamp = Time.at(map['Timestamp'].to_i) if map['Timestamp']
        return data
      end
    end

    # Operation Parser for GetResourcePolicy
    class GetResourcePolicy
      def self.parse(http_resp)
        data = Types::GetResourcePolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.policy_document = map['PolicyDocument']
        data
      end
    end

    # Operation Parser for GetRouteAnalysis
    class GetRouteAnalysis
      def self.parse(http_resp)
        data = Types::GetRouteAnalysisOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.route_analysis = (Parsers::RouteAnalysis.parse(map['RouteAnalysis']) unless map['RouteAnalysis'].nil?)
        data
      end
    end

    class RouteAnalysis
      def self.parse(map)
        data = Types::RouteAnalysis.new
        data.global_network_id = map['GlobalNetworkId']
        data.owner_account_id = map['OwnerAccountId']
        data.route_analysis_id = map['RouteAnalysisId']
        data.start_timestamp = Time.at(map['StartTimestamp'].to_i) if map['StartTimestamp']
        data.status = map['Status']
        data.source = (Parsers::RouteAnalysisEndpointOptions.parse(map['Source']) unless map['Source'].nil?)
        data.destination = (Parsers::RouteAnalysisEndpointOptions.parse(map['Destination']) unless map['Destination'].nil?)
        data.include_return_path = map['IncludeReturnPath']
        data.use_middleboxes = map['UseMiddleboxes']
        data.forward_path = (Parsers::RouteAnalysisPath.parse(map['ForwardPath']) unless map['ForwardPath'].nil?)
        data.return_path = (Parsers::RouteAnalysisPath.parse(map['ReturnPath']) unless map['ReturnPath'].nil?)
        return data
      end
    end

    class RouteAnalysisPath
      def self.parse(map)
        data = Types::RouteAnalysisPath.new
        data.completion_status = (Parsers::RouteAnalysisCompletion.parse(map['CompletionStatus']) unless map['CompletionStatus'].nil?)
        data.path = (Parsers::PathComponentList.parse(map['Path']) unless map['Path'].nil?)
        return data
      end
    end

    class PathComponentList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::PathComponent.parse(value) unless value.nil?
        end
        data
      end
    end

    class PathComponent
      def self.parse(map)
        data = Types::PathComponent.new
        data.sequence = map['Sequence']
        data.resource = (Parsers::NetworkResourceSummary.parse(map['Resource']) unless map['Resource'].nil?)
        data.destination_cidr_block = map['DestinationCidrBlock']
        return data
      end
    end

    class NetworkResourceSummary
      def self.parse(map)
        data = Types::NetworkResourceSummary.new
        data.registered_gateway_arn = map['RegisteredGatewayArn']
        data.resource_arn = map['ResourceArn']
        data.resource_type = map['ResourceType']
        data.definition = map['Definition']
        data.name_tag = map['NameTag']
        data.is_middlebox = map['IsMiddlebox']
        return data
      end
    end

    class RouteAnalysisCompletion
      def self.parse(map)
        data = Types::RouteAnalysisCompletion.new
        data.result_code = map['ResultCode']
        data.reason_code = map['ReasonCode']
        data.reason_context = (Parsers::ReasonContextMap.parse(map['ReasonContext']) unless map['ReasonContext'].nil?)
        return data
      end
    end

    class ReasonContextMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class RouteAnalysisEndpointOptions
      def self.parse(map)
        data = Types::RouteAnalysisEndpointOptions.new
        data.transit_gateway_attachment_arn = map['TransitGatewayAttachmentArn']
        data.transit_gateway_arn = map['TransitGatewayArn']
        data.ip_address = map['IpAddress']
        return data
      end
    end

    # Operation Parser for GetSiteToSiteVpnAttachment
    class GetSiteToSiteVpnAttachment
      def self.parse(http_resp)
        data = Types::GetSiteToSiteVpnAttachmentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.site_to_site_vpn_attachment = (Parsers::SiteToSiteVpnAttachment.parse(map['SiteToSiteVpnAttachment']) unless map['SiteToSiteVpnAttachment'].nil?)
        data
      end
    end

    # Operation Parser for GetSites
    class GetSites
      def self.parse(http_resp)
        data = Types::GetSitesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.sites = (Parsers::SiteList.parse(map['Sites']) unless map['Sites'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class SiteList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Site.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetTransitGatewayConnectPeerAssociations
    class GetTransitGatewayConnectPeerAssociations
      def self.parse(http_resp)
        data = Types::GetTransitGatewayConnectPeerAssociationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.transit_gateway_connect_peer_associations = (Parsers::TransitGatewayConnectPeerAssociationList.parse(map['TransitGatewayConnectPeerAssociations']) unless map['TransitGatewayConnectPeerAssociations'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class TransitGatewayConnectPeerAssociationList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::TransitGatewayConnectPeerAssociation.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetTransitGatewayRegistrations
    class GetTransitGatewayRegistrations
      def self.parse(http_resp)
        data = Types::GetTransitGatewayRegistrationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.transit_gateway_registrations = (Parsers::TransitGatewayRegistrationList.parse(map['TransitGatewayRegistrations']) unless map['TransitGatewayRegistrations'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class TransitGatewayRegistrationList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::TransitGatewayRegistration.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetVpcAttachment
    class GetVpcAttachment
      def self.parse(http_resp)
        data = Types::GetVpcAttachmentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.vpc_attachment = (Parsers::VpcAttachment.parse(map['VpcAttachment']) unless map['VpcAttachment'].nil?)
        data
      end
    end

    # Operation Parser for ListAttachments
    class ListAttachments
      def self.parse(http_resp)
        data = Types::ListAttachmentsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.attachments = (Parsers::AttachmentList.parse(map['Attachments']) unless map['Attachments'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class AttachmentList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Attachment.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListConnectPeers
    class ListConnectPeers
      def self.parse(http_resp)
        data = Types::ListConnectPeersOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.connect_peers = (Parsers::ConnectPeerSummaryList.parse(map['ConnectPeers']) unless map['ConnectPeers'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ConnectPeerSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ConnectPeerSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class ConnectPeerSummary
      def self.parse(map)
        data = Types::ConnectPeerSummary.new
        data.core_network_id = map['CoreNetworkId']
        data.connect_attachment_id = map['ConnectAttachmentId']
        data.connect_peer_id = map['ConnectPeerId']
        data.edge_location = map['EdgeLocation']
        data.connect_peer_state = map['ConnectPeerState']
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.tags = (Parsers::TagList.parse(map['Tags']) unless map['Tags'].nil?)
        return data
      end
    end

    # Operation Parser for ListCoreNetworkPolicyVersions
    class ListCoreNetworkPolicyVersions
      def self.parse(http_resp)
        data = Types::ListCoreNetworkPolicyVersionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.core_network_policy_versions = (Parsers::CoreNetworkPolicyVersionList.parse(map['CoreNetworkPolicyVersions']) unless map['CoreNetworkPolicyVersions'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class CoreNetworkPolicyVersionList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::CoreNetworkPolicyVersion.parse(value) unless value.nil?
        end
        data
      end
    end

    class CoreNetworkPolicyVersion
      def self.parse(map)
        data = Types::CoreNetworkPolicyVersion.new
        data.core_network_id = map['CoreNetworkId']
        data.policy_version_id = map['PolicyVersionId']
        data.alias = map['Alias']
        data.description = map['Description']
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.change_set_state = map['ChangeSetState']
        return data
      end
    end

    # Operation Parser for ListCoreNetworks
    class ListCoreNetworks
      def self.parse(http_resp)
        data = Types::ListCoreNetworksOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.core_networks = (Parsers::CoreNetworkSummaryList.parse(map['CoreNetworks']) unless map['CoreNetworks'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class CoreNetworkSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::CoreNetworkSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class CoreNetworkSummary
      def self.parse(map)
        data = Types::CoreNetworkSummary.new
        data.core_network_id = map['CoreNetworkId']
        data.core_network_arn = map['CoreNetworkArn']
        data.global_network_id = map['GlobalNetworkId']
        data.owner_account_id = map['OwnerAccountId']
        data.state = map['State']
        data.description = map['Description']
        data.tags = (Parsers::TagList.parse(map['Tags']) unless map['Tags'].nil?)
        return data
      end
    end

    # Operation Parser for ListOrganizationServiceAccessStatus
    class ListOrganizationServiceAccessStatus
      def self.parse(http_resp)
        data = Types::ListOrganizationServiceAccessStatusOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.organization_status = (Parsers::OrganizationStatus.parse(map['OrganizationStatus']) unless map['OrganizationStatus'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class OrganizationStatus
      def self.parse(map)
        data = Types::OrganizationStatus.new
        data.organization_id = map['OrganizationId']
        data.organization_aws_service_access_status = map['OrganizationAwsServiceAccessStatus']
        data.slr_deployment_status = map['SLRDeploymentStatus']
        data.account_status_list = (Parsers::AccountStatusList.parse(map['AccountStatusList']) unless map['AccountStatusList'].nil?)
        return data
      end
    end

    class AccountStatusList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AccountStatus.parse(value) unless value.nil?
        end
        data
      end
    end

    class AccountStatus
      def self.parse(map)
        data = Types::AccountStatus.new
        data.account_id = map['AccountId']
        data.slr_deployment_status = map['SLRDeploymentStatus']
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tag_list = (Parsers::TagList.parse(map['TagList']) unless map['TagList'].nil?)
        data
      end
    end

    # Operation Parser for PutCoreNetworkPolicy
    class PutCoreNetworkPolicy
      def self.parse(http_resp)
        data = Types::PutCoreNetworkPolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.core_network_policy = (Parsers::CoreNetworkPolicy.parse(map['CoreNetworkPolicy']) unless map['CoreNetworkPolicy'].nil?)
        data
      end
    end

    # Operation Parser for PutResourcePolicy
    class PutResourcePolicy
      def self.parse(http_resp)
        data = Types::PutResourcePolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for RegisterTransitGateway
    class RegisterTransitGateway
      def self.parse(http_resp)
        data = Types::RegisterTransitGatewayOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.transit_gateway_registration = (Parsers::TransitGatewayRegistration.parse(map['TransitGatewayRegistration']) unless map['TransitGatewayRegistration'].nil?)
        data
      end
    end

    # Operation Parser for RejectAttachment
    class RejectAttachment
      def self.parse(http_resp)
        data = Types::RejectAttachmentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.attachment = (Parsers::Attachment.parse(map['Attachment']) unless map['Attachment'].nil?)
        data
      end
    end

    # Operation Parser for RestoreCoreNetworkPolicyVersion
    class RestoreCoreNetworkPolicyVersion
      def self.parse(http_resp)
        data = Types::RestoreCoreNetworkPolicyVersionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.core_network_policy = (Parsers::CoreNetworkPolicy.parse(map['CoreNetworkPolicy']) unless map['CoreNetworkPolicy'].nil?)
        data
      end
    end

    # Operation Parser for StartOrganizationServiceAccessUpdate
    class StartOrganizationServiceAccessUpdate
      def self.parse(http_resp)
        data = Types::StartOrganizationServiceAccessUpdateOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.organization_status = (Parsers::OrganizationStatus.parse(map['OrganizationStatus']) unless map['OrganizationStatus'].nil?)
        data
      end
    end

    # Operation Parser for StartRouteAnalysis
    class StartRouteAnalysis
      def self.parse(http_resp)
        data = Types::StartRouteAnalysisOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.route_analysis = (Parsers::RouteAnalysis.parse(map['RouteAnalysis']) unless map['RouteAnalysis'].nil?)
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

    # Operation Parser for UpdateConnection
    class UpdateConnection
      def self.parse(http_resp)
        data = Types::UpdateConnectionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.connection = (Parsers::Connection.parse(map['Connection']) unless map['Connection'].nil?)
        data
      end
    end

    # Operation Parser for UpdateCoreNetwork
    class UpdateCoreNetwork
      def self.parse(http_resp)
        data = Types::UpdateCoreNetworkOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.core_network = (Parsers::CoreNetwork.parse(map['CoreNetwork']) unless map['CoreNetwork'].nil?)
        data
      end
    end

    # Operation Parser for UpdateDevice
    class UpdateDevice
      def self.parse(http_resp)
        data = Types::UpdateDeviceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.device = (Parsers::Device.parse(map['Device']) unless map['Device'].nil?)
        data
      end
    end

    # Operation Parser for UpdateGlobalNetwork
    class UpdateGlobalNetwork
      def self.parse(http_resp)
        data = Types::UpdateGlobalNetworkOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.global_network = (Parsers::GlobalNetwork.parse(map['GlobalNetwork']) unless map['GlobalNetwork'].nil?)
        data
      end
    end

    # Operation Parser for UpdateLink
    class UpdateLink
      def self.parse(http_resp)
        data = Types::UpdateLinkOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.link = (Parsers::Link.parse(map['Link']) unless map['Link'].nil?)
        data
      end
    end

    # Operation Parser for UpdateNetworkResourceMetadata
    class UpdateNetworkResourceMetadata
      def self.parse(http_resp)
        data = Types::UpdateNetworkResourceMetadataOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.resource_arn = map['ResourceArn']
        data.metadata = (Parsers::NetworkResourceMetadataMap.parse(map['Metadata']) unless map['Metadata'].nil?)
        data
      end
    end

    # Operation Parser for UpdateSite
    class UpdateSite
      def self.parse(http_resp)
        data = Types::UpdateSiteOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.site = (Parsers::Site.parse(map['Site']) unless map['Site'].nil?)
        data
      end
    end

    # Operation Parser for UpdateVpcAttachment
    class UpdateVpcAttachment
      def self.parse(http_resp)
        data = Types::UpdateVpcAttachmentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.vpc_attachment = (Parsers::VpcAttachment.parse(map['VpcAttachment']) unless map['VpcAttachment'].nil?)
        data
      end
    end
  end
end
