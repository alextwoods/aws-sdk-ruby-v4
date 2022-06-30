# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::NetworkManager
  module Stubs

    # Operation Stubber for AcceptAttachment
    class AcceptAttachment
      def self.default(visited=[])
        {
          attachment: Stubs::Attachment.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Attachment'] = Stubs::Attachment.stub(stub[:attachment]) unless stub[:attachment].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Attachment
    class Attachment
      def self.default(visited=[])
        return nil if visited.include?('Attachment')
        visited = visited + ['Attachment']
        {
          core_network_id: 'core_network_id',
          core_network_arn: 'core_network_arn',
          attachment_id: 'attachment_id',
          owner_account_id: 'owner_account_id',
          attachment_type: 'attachment_type',
          state: 'state',
          edge_location: 'edge_location',
          resource_arn: 'resource_arn',
          attachment_policy_rule_number: 1,
          segment_name: 'segment_name',
          tags: Stubs::TagList.default(visited),
          proposed_segment_change: Stubs::ProposedSegmentChange.default(visited),
          created_at: Time.now,
          updated_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Attachment.new
        data = {}
        data['CoreNetworkId'] = stub[:core_network_id] unless stub[:core_network_id].nil?
        data['CoreNetworkArn'] = stub[:core_network_arn] unless stub[:core_network_arn].nil?
        data['AttachmentId'] = stub[:attachment_id] unless stub[:attachment_id].nil?
        data['OwnerAccountId'] = stub[:owner_account_id] unless stub[:owner_account_id].nil?
        data['AttachmentType'] = stub[:attachment_type] unless stub[:attachment_type].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['EdgeLocation'] = stub[:edge_location] unless stub[:edge_location].nil?
        data['ResourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['AttachmentPolicyRuleNumber'] = stub[:attachment_policy_rule_number] unless stub[:attachment_policy_rule_number].nil?
        data['SegmentName'] = stub[:segment_name] unless stub[:segment_name].nil?
        data['Tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['ProposedSegmentChange'] = Stubs::ProposedSegmentChange.stub(stub[:proposed_segment_change]) unless stub[:proposed_segment_change].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['UpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:updated_at]).to_i unless stub[:updated_at].nil?
        data
      end
    end

    # Structure Stubber for ProposedSegmentChange
    class ProposedSegmentChange
      def self.default(visited=[])
        return nil if visited.include?('ProposedSegmentChange')
        visited = visited + ['ProposedSegmentChange']
        {
          tags: Stubs::TagList.default(visited),
          attachment_policy_rule_number: 1,
          segment_name: 'segment_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::ProposedSegmentChange.new
        data = {}
        data['Tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['AttachmentPolicyRuleNumber'] = stub[:attachment_policy_rule_number] unless stub[:attachment_policy_rule_number].nil?
        data['SegmentName'] = stub[:segment_name] unless stub[:segment_name].nil?
        data
      end
    end

    # List Stubber for TagList
    class TagList
      def self.default(visited=[])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
        [
          Stubs::Tag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Tag.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Tag
    class Tag
      def self.default(visited=[])
        return nil if visited.include?('Tag')
        visited = visited + ['Tag']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::Tag.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for AssociateConnectPeer
    class AssociateConnectPeer
      def self.default(visited=[])
        {
          connect_peer_association: Stubs::ConnectPeerAssociation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ConnectPeerAssociation'] = Stubs::ConnectPeerAssociation.stub(stub[:connect_peer_association]) unless stub[:connect_peer_association].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ConnectPeerAssociation
    class ConnectPeerAssociation
      def self.default(visited=[])
        return nil if visited.include?('ConnectPeerAssociation')
        visited = visited + ['ConnectPeerAssociation']
        {
          connect_peer_id: 'connect_peer_id',
          global_network_id: 'global_network_id',
          device_id: 'device_id',
          link_id: 'link_id',
          state: 'state',
        }
      end

      def self.stub(stub)
        stub ||= Types::ConnectPeerAssociation.new
        data = {}
        data['ConnectPeerId'] = stub[:connect_peer_id] unless stub[:connect_peer_id].nil?
        data['GlobalNetworkId'] = stub[:global_network_id] unless stub[:global_network_id].nil?
        data['DeviceId'] = stub[:device_id] unless stub[:device_id].nil?
        data['LinkId'] = stub[:link_id] unless stub[:link_id].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data
      end
    end

    # Operation Stubber for AssociateCustomerGateway
    class AssociateCustomerGateway
      def self.default(visited=[])
        {
          customer_gateway_association: Stubs::CustomerGatewayAssociation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['CustomerGatewayAssociation'] = Stubs::CustomerGatewayAssociation.stub(stub[:customer_gateway_association]) unless stub[:customer_gateway_association].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for CustomerGatewayAssociation
    class CustomerGatewayAssociation
      def self.default(visited=[])
        return nil if visited.include?('CustomerGatewayAssociation')
        visited = visited + ['CustomerGatewayAssociation']
        {
          customer_gateway_arn: 'customer_gateway_arn',
          global_network_id: 'global_network_id',
          device_id: 'device_id',
          link_id: 'link_id',
          state: 'state',
        }
      end

      def self.stub(stub)
        stub ||= Types::CustomerGatewayAssociation.new
        data = {}
        data['CustomerGatewayArn'] = stub[:customer_gateway_arn] unless stub[:customer_gateway_arn].nil?
        data['GlobalNetworkId'] = stub[:global_network_id] unless stub[:global_network_id].nil?
        data['DeviceId'] = stub[:device_id] unless stub[:device_id].nil?
        data['LinkId'] = stub[:link_id] unless stub[:link_id].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data
      end
    end

    # Operation Stubber for AssociateLink
    class AssociateLink
      def self.default(visited=[])
        {
          link_association: Stubs::LinkAssociation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['LinkAssociation'] = Stubs::LinkAssociation.stub(stub[:link_association]) unless stub[:link_association].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for LinkAssociation
    class LinkAssociation
      def self.default(visited=[])
        return nil if visited.include?('LinkAssociation')
        visited = visited + ['LinkAssociation']
        {
          global_network_id: 'global_network_id',
          device_id: 'device_id',
          link_id: 'link_id',
          link_association_state: 'link_association_state',
        }
      end

      def self.stub(stub)
        stub ||= Types::LinkAssociation.new
        data = {}
        data['GlobalNetworkId'] = stub[:global_network_id] unless stub[:global_network_id].nil?
        data['DeviceId'] = stub[:device_id] unless stub[:device_id].nil?
        data['LinkId'] = stub[:link_id] unless stub[:link_id].nil?
        data['LinkAssociationState'] = stub[:link_association_state] unless stub[:link_association_state].nil?
        data
      end
    end

    # Operation Stubber for AssociateTransitGatewayConnectPeer
    class AssociateTransitGatewayConnectPeer
      def self.default(visited=[])
        {
          transit_gateway_connect_peer_association: Stubs::TransitGatewayConnectPeerAssociation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['TransitGatewayConnectPeerAssociation'] = Stubs::TransitGatewayConnectPeerAssociation.stub(stub[:transit_gateway_connect_peer_association]) unless stub[:transit_gateway_connect_peer_association].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for TransitGatewayConnectPeerAssociation
    class TransitGatewayConnectPeerAssociation
      def self.default(visited=[])
        return nil if visited.include?('TransitGatewayConnectPeerAssociation')
        visited = visited + ['TransitGatewayConnectPeerAssociation']
        {
          transit_gateway_connect_peer_arn: 'transit_gateway_connect_peer_arn',
          global_network_id: 'global_network_id',
          device_id: 'device_id',
          link_id: 'link_id',
          state: 'state',
        }
      end

      def self.stub(stub)
        stub ||= Types::TransitGatewayConnectPeerAssociation.new
        data = {}
        data['TransitGatewayConnectPeerArn'] = stub[:transit_gateway_connect_peer_arn] unless stub[:transit_gateway_connect_peer_arn].nil?
        data['GlobalNetworkId'] = stub[:global_network_id] unless stub[:global_network_id].nil?
        data['DeviceId'] = stub[:device_id] unless stub[:device_id].nil?
        data['LinkId'] = stub[:link_id] unless stub[:link_id].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data
      end
    end

    # Operation Stubber for CreateConnectAttachment
    class CreateConnectAttachment
      def self.default(visited=[])
        {
          connect_attachment: Stubs::ConnectAttachment.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ConnectAttachment'] = Stubs::ConnectAttachment.stub(stub[:connect_attachment]) unless stub[:connect_attachment].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ConnectAttachment
    class ConnectAttachment
      def self.default(visited=[])
        return nil if visited.include?('ConnectAttachment')
        visited = visited + ['ConnectAttachment']
        {
          attachment: Stubs::Attachment.default(visited),
          transport_attachment_id: 'transport_attachment_id',
          options: Stubs::ConnectAttachmentOptions.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ConnectAttachment.new
        data = {}
        data['Attachment'] = Stubs::Attachment.stub(stub[:attachment]) unless stub[:attachment].nil?
        data['TransportAttachmentId'] = stub[:transport_attachment_id] unless stub[:transport_attachment_id].nil?
        data['Options'] = Stubs::ConnectAttachmentOptions.stub(stub[:options]) unless stub[:options].nil?
        data
      end
    end

    # Structure Stubber for ConnectAttachmentOptions
    class ConnectAttachmentOptions
      def self.default(visited=[])
        return nil if visited.include?('ConnectAttachmentOptions')
        visited = visited + ['ConnectAttachmentOptions']
        {
          protocol: 'protocol',
        }
      end

      def self.stub(stub)
        stub ||= Types::ConnectAttachmentOptions.new
        data = {}
        data['Protocol'] = stub[:protocol] unless stub[:protocol].nil?
        data
      end
    end

    # Operation Stubber for CreateConnectPeer
    class CreateConnectPeer
      def self.default(visited=[])
        {
          connect_peer: Stubs::ConnectPeer.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ConnectPeer'] = Stubs::ConnectPeer.stub(stub[:connect_peer]) unless stub[:connect_peer].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ConnectPeer
    class ConnectPeer
      def self.default(visited=[])
        return nil if visited.include?('ConnectPeer')
        visited = visited + ['ConnectPeer']
        {
          core_network_id: 'core_network_id',
          connect_attachment_id: 'connect_attachment_id',
          connect_peer_id: 'connect_peer_id',
          edge_location: 'edge_location',
          state: 'state',
          created_at: Time.now,
          configuration: Stubs::ConnectPeerConfiguration.default(visited),
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ConnectPeer.new
        data = {}
        data['CoreNetworkId'] = stub[:core_network_id] unless stub[:core_network_id].nil?
        data['ConnectAttachmentId'] = stub[:connect_attachment_id] unless stub[:connect_attachment_id].nil?
        data['ConnectPeerId'] = stub[:connect_peer_id] unless stub[:connect_peer_id].nil?
        data['EdgeLocation'] = stub[:edge_location] unless stub[:edge_location].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['Configuration'] = Stubs::ConnectPeerConfiguration.stub(stub[:configuration]) unless stub[:configuration].nil?
        data['Tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Structure Stubber for ConnectPeerConfiguration
    class ConnectPeerConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ConnectPeerConfiguration')
        visited = visited + ['ConnectPeerConfiguration']
        {
          core_network_address: 'core_network_address',
          peer_address: 'peer_address',
          inside_cidr_blocks: Stubs::ConstrainedStringList.default(visited),
          protocol: 'protocol',
          bgp_configurations: Stubs::ConnectPeerBgpConfigurationList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ConnectPeerConfiguration.new
        data = {}
        data['CoreNetworkAddress'] = stub[:core_network_address] unless stub[:core_network_address].nil?
        data['PeerAddress'] = stub[:peer_address] unless stub[:peer_address].nil?
        data['InsideCidrBlocks'] = Stubs::ConstrainedStringList.stub(stub[:inside_cidr_blocks]) unless stub[:inside_cidr_blocks].nil?
        data['Protocol'] = stub[:protocol] unless stub[:protocol].nil?
        data['BgpConfigurations'] = Stubs::ConnectPeerBgpConfigurationList.stub(stub[:bgp_configurations]) unless stub[:bgp_configurations].nil?
        data
      end
    end

    # List Stubber for ConnectPeerBgpConfigurationList
    class ConnectPeerBgpConfigurationList
      def self.default(visited=[])
        return nil if visited.include?('ConnectPeerBgpConfigurationList')
        visited = visited + ['ConnectPeerBgpConfigurationList']
        [
          Stubs::ConnectPeerBgpConfiguration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ConnectPeerBgpConfiguration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ConnectPeerBgpConfiguration
    class ConnectPeerBgpConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ConnectPeerBgpConfiguration')
        visited = visited + ['ConnectPeerBgpConfiguration']
        {
          core_network_asn: 1,
          peer_asn: 1,
          core_network_address: 'core_network_address',
          peer_address: 'peer_address',
        }
      end

      def self.stub(stub)
        stub ||= Types::ConnectPeerBgpConfiguration.new
        data = {}
        data['CoreNetworkAsn'] = stub[:core_network_asn] unless stub[:core_network_asn].nil?
        data['PeerAsn'] = stub[:peer_asn] unless stub[:peer_asn].nil?
        data['CoreNetworkAddress'] = stub[:core_network_address] unless stub[:core_network_address].nil?
        data['PeerAddress'] = stub[:peer_address] unless stub[:peer_address].nil?
        data
      end
    end

    # List Stubber for ConstrainedStringList
    class ConstrainedStringList
      def self.default(visited=[])
        return nil if visited.include?('ConstrainedStringList')
        visited = visited + ['ConstrainedStringList']
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

    # Operation Stubber for CreateConnection
    class CreateConnection
      def self.default(visited=[])
        {
          connection: Stubs::Connection.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Connection'] = Stubs::Connection.stub(stub[:connection]) unless stub[:connection].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Connection
    class Connection
      def self.default(visited=[])
        return nil if visited.include?('Connection')
        visited = visited + ['Connection']
        {
          connection_id: 'connection_id',
          connection_arn: 'connection_arn',
          global_network_id: 'global_network_id',
          device_id: 'device_id',
          connected_device_id: 'connected_device_id',
          link_id: 'link_id',
          connected_link_id: 'connected_link_id',
          description: 'description',
          created_at: Time.now,
          state: 'state',
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Connection.new
        data = {}
        data['ConnectionId'] = stub[:connection_id] unless stub[:connection_id].nil?
        data['ConnectionArn'] = stub[:connection_arn] unless stub[:connection_arn].nil?
        data['GlobalNetworkId'] = stub[:global_network_id] unless stub[:global_network_id].nil?
        data['DeviceId'] = stub[:device_id] unless stub[:device_id].nil?
        data['ConnectedDeviceId'] = stub[:connected_device_id] unless stub[:connected_device_id].nil?
        data['LinkId'] = stub[:link_id] unless stub[:link_id].nil?
        data['ConnectedLinkId'] = stub[:connected_link_id] unless stub[:connected_link_id].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['Tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for CreateCoreNetwork
    class CreateCoreNetwork
      def self.default(visited=[])
        {
          core_network: Stubs::CoreNetwork.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['CoreNetwork'] = Stubs::CoreNetwork.stub(stub[:core_network]) unless stub[:core_network].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for CoreNetwork
    class CoreNetwork
      def self.default(visited=[])
        return nil if visited.include?('CoreNetwork')
        visited = visited + ['CoreNetwork']
        {
          global_network_id: 'global_network_id',
          core_network_id: 'core_network_id',
          core_network_arn: 'core_network_arn',
          description: 'description',
          created_at: Time.now,
          state: 'state',
          segments: Stubs::CoreNetworkSegmentList.default(visited),
          edges: Stubs::CoreNetworkEdgeList.default(visited),
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CoreNetwork.new
        data = {}
        data['GlobalNetworkId'] = stub[:global_network_id] unless stub[:global_network_id].nil?
        data['CoreNetworkId'] = stub[:core_network_id] unless stub[:core_network_id].nil?
        data['CoreNetworkArn'] = stub[:core_network_arn] unless stub[:core_network_arn].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['Segments'] = Stubs::CoreNetworkSegmentList.stub(stub[:segments]) unless stub[:segments].nil?
        data['Edges'] = Stubs::CoreNetworkEdgeList.stub(stub[:edges]) unless stub[:edges].nil?
        data['Tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # List Stubber for CoreNetworkEdgeList
    class CoreNetworkEdgeList
      def self.default(visited=[])
        return nil if visited.include?('CoreNetworkEdgeList')
        visited = visited + ['CoreNetworkEdgeList']
        [
          Stubs::CoreNetworkEdge.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::CoreNetworkEdge.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CoreNetworkEdge
    class CoreNetworkEdge
      def self.default(visited=[])
        return nil if visited.include?('CoreNetworkEdge')
        visited = visited + ['CoreNetworkEdge']
        {
          edge_location: 'edge_location',
          asn: 1,
          inside_cidr_blocks: Stubs::ConstrainedStringList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CoreNetworkEdge.new
        data = {}
        data['EdgeLocation'] = stub[:edge_location] unless stub[:edge_location].nil?
        data['Asn'] = stub[:asn] unless stub[:asn].nil?
        data['InsideCidrBlocks'] = Stubs::ConstrainedStringList.stub(stub[:inside_cidr_blocks]) unless stub[:inside_cidr_blocks].nil?
        data
      end
    end

    # List Stubber for CoreNetworkSegmentList
    class CoreNetworkSegmentList
      def self.default(visited=[])
        return nil if visited.include?('CoreNetworkSegmentList')
        visited = visited + ['CoreNetworkSegmentList']
        [
          Stubs::CoreNetworkSegment.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::CoreNetworkSegment.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CoreNetworkSegment
    class CoreNetworkSegment
      def self.default(visited=[])
        return nil if visited.include?('CoreNetworkSegment')
        visited = visited + ['CoreNetworkSegment']
        {
          name: 'name',
          edge_locations: Stubs::ExternalRegionCodeList.default(visited),
          shared_segments: Stubs::ConstrainedStringList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CoreNetworkSegment.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['EdgeLocations'] = Stubs::ExternalRegionCodeList.stub(stub[:edge_locations]) unless stub[:edge_locations].nil?
        data['SharedSegments'] = Stubs::ConstrainedStringList.stub(stub[:shared_segments]) unless stub[:shared_segments].nil?
        data
      end
    end

    # List Stubber for ExternalRegionCodeList
    class ExternalRegionCodeList
      def self.default(visited=[])
        return nil if visited.include?('ExternalRegionCodeList')
        visited = visited + ['ExternalRegionCodeList']
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

    # Operation Stubber for CreateDevice
    class CreateDevice
      def self.default(visited=[])
        {
          device: Stubs::Device.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Device'] = Stubs::Device.stub(stub[:device]) unless stub[:device].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Device
    class Device
      def self.default(visited=[])
        return nil if visited.include?('Device')
        visited = visited + ['Device']
        {
          device_id: 'device_id',
          device_arn: 'device_arn',
          global_network_id: 'global_network_id',
          aws_location: Stubs::AWSLocation.default(visited),
          description: 'description',
          type: 'type',
          vendor: 'vendor',
          model: 'model',
          serial_number: 'serial_number',
          location: Stubs::Location.default(visited),
          site_id: 'site_id',
          created_at: Time.now,
          state: 'state',
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Device.new
        data = {}
        data['DeviceId'] = stub[:device_id] unless stub[:device_id].nil?
        data['DeviceArn'] = stub[:device_arn] unless stub[:device_arn].nil?
        data['GlobalNetworkId'] = stub[:global_network_id] unless stub[:global_network_id].nil?
        data['AWSLocation'] = Stubs::AWSLocation.stub(stub[:aws_location]) unless stub[:aws_location].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Vendor'] = stub[:vendor] unless stub[:vendor].nil?
        data['Model'] = stub[:model] unless stub[:model].nil?
        data['SerialNumber'] = stub[:serial_number] unless stub[:serial_number].nil?
        data['Location'] = Stubs::Location.stub(stub[:location]) unless stub[:location].nil?
        data['SiteId'] = stub[:site_id] unless stub[:site_id].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['Tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Structure Stubber for Location
    class Location
      def self.default(visited=[])
        return nil if visited.include?('Location')
        visited = visited + ['Location']
        {
          address: 'address',
          latitude: 'latitude',
          longitude: 'longitude',
        }
      end

      def self.stub(stub)
        stub ||= Types::Location.new
        data = {}
        data['Address'] = stub[:address] unless stub[:address].nil?
        data['Latitude'] = stub[:latitude] unless stub[:latitude].nil?
        data['Longitude'] = stub[:longitude] unless stub[:longitude].nil?
        data
      end
    end

    # Structure Stubber for AWSLocation
    class AWSLocation
      def self.default(visited=[])
        return nil if visited.include?('AWSLocation')
        visited = visited + ['AWSLocation']
        {
          zone: 'zone',
          subnet_arn: 'subnet_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::AWSLocation.new
        data = {}
        data['Zone'] = stub[:zone] unless stub[:zone].nil?
        data['SubnetArn'] = stub[:subnet_arn] unless stub[:subnet_arn].nil?
        data
      end
    end

    # Operation Stubber for CreateGlobalNetwork
    class CreateGlobalNetwork
      def self.default(visited=[])
        {
          global_network: Stubs::GlobalNetwork.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['GlobalNetwork'] = Stubs::GlobalNetwork.stub(stub[:global_network]) unless stub[:global_network].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for GlobalNetwork
    class GlobalNetwork
      def self.default(visited=[])
        return nil if visited.include?('GlobalNetwork')
        visited = visited + ['GlobalNetwork']
        {
          global_network_id: 'global_network_id',
          global_network_arn: 'global_network_arn',
          description: 'description',
          created_at: Time.now,
          state: 'state',
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::GlobalNetwork.new
        data = {}
        data['GlobalNetworkId'] = stub[:global_network_id] unless stub[:global_network_id].nil?
        data['GlobalNetworkArn'] = stub[:global_network_arn] unless stub[:global_network_arn].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['Tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for CreateLink
    class CreateLink
      def self.default(visited=[])
        {
          link: Stubs::Link.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Link'] = Stubs::Link.stub(stub[:link]) unless stub[:link].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Link
    class Link
      def self.default(visited=[])
        return nil if visited.include?('Link')
        visited = visited + ['Link']
        {
          link_id: 'link_id',
          link_arn: 'link_arn',
          global_network_id: 'global_network_id',
          site_id: 'site_id',
          description: 'description',
          type: 'type',
          bandwidth: Stubs::Bandwidth.default(visited),
          provider: 'provider',
          created_at: Time.now,
          state: 'state',
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Link.new
        data = {}
        data['LinkId'] = stub[:link_id] unless stub[:link_id].nil?
        data['LinkArn'] = stub[:link_arn] unless stub[:link_arn].nil?
        data['GlobalNetworkId'] = stub[:global_network_id] unless stub[:global_network_id].nil?
        data['SiteId'] = stub[:site_id] unless stub[:site_id].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Bandwidth'] = Stubs::Bandwidth.stub(stub[:bandwidth]) unless stub[:bandwidth].nil?
        data['Provider'] = stub[:provider] unless stub[:provider].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['Tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Structure Stubber for Bandwidth
    class Bandwidth
      def self.default(visited=[])
        return nil if visited.include?('Bandwidth')
        visited = visited + ['Bandwidth']
        {
          upload_speed: 1,
          download_speed: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::Bandwidth.new
        data = {}
        data['UploadSpeed'] = stub[:upload_speed] unless stub[:upload_speed].nil?
        data['DownloadSpeed'] = stub[:download_speed] unless stub[:download_speed].nil?
        data
      end
    end

    # Operation Stubber for CreateSite
    class CreateSite
      def self.default(visited=[])
        {
          site: Stubs::Site.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Site'] = Stubs::Site.stub(stub[:site]) unless stub[:site].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Site
    class Site
      def self.default(visited=[])
        return nil if visited.include?('Site')
        visited = visited + ['Site']
        {
          site_id: 'site_id',
          site_arn: 'site_arn',
          global_network_id: 'global_network_id',
          description: 'description',
          location: Stubs::Location.default(visited),
          created_at: Time.now,
          state: 'state',
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Site.new
        data = {}
        data['SiteId'] = stub[:site_id] unless stub[:site_id].nil?
        data['SiteArn'] = stub[:site_arn] unless stub[:site_arn].nil?
        data['GlobalNetworkId'] = stub[:global_network_id] unless stub[:global_network_id].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Location'] = Stubs::Location.stub(stub[:location]) unless stub[:location].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['Tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for CreateSiteToSiteVpnAttachment
    class CreateSiteToSiteVpnAttachment
      def self.default(visited=[])
        {
          site_to_site_vpn_attachment: Stubs::SiteToSiteVpnAttachment.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['SiteToSiteVpnAttachment'] = Stubs::SiteToSiteVpnAttachment.stub(stub[:site_to_site_vpn_attachment]) unless stub[:site_to_site_vpn_attachment].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for SiteToSiteVpnAttachment
    class SiteToSiteVpnAttachment
      def self.default(visited=[])
        return nil if visited.include?('SiteToSiteVpnAttachment')
        visited = visited + ['SiteToSiteVpnAttachment']
        {
          attachment: Stubs::Attachment.default(visited),
          vpn_connection_arn: 'vpn_connection_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::SiteToSiteVpnAttachment.new
        data = {}
        data['Attachment'] = Stubs::Attachment.stub(stub[:attachment]) unless stub[:attachment].nil?
        data['VpnConnectionArn'] = stub[:vpn_connection_arn] unless stub[:vpn_connection_arn].nil?
        data
      end
    end

    # Operation Stubber for CreateVpcAttachment
    class CreateVpcAttachment
      def self.default(visited=[])
        {
          vpc_attachment: Stubs::VpcAttachment.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['VpcAttachment'] = Stubs::VpcAttachment.stub(stub[:vpc_attachment]) unless stub[:vpc_attachment].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for VpcAttachment
    class VpcAttachment
      def self.default(visited=[])
        return nil if visited.include?('VpcAttachment')
        visited = visited + ['VpcAttachment']
        {
          attachment: Stubs::Attachment.default(visited),
          subnet_arns: Stubs::SubnetArnList.default(visited),
          options: Stubs::VpcOptions.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::VpcAttachment.new
        data = {}
        data['Attachment'] = Stubs::Attachment.stub(stub[:attachment]) unless stub[:attachment].nil?
        data['SubnetArns'] = Stubs::SubnetArnList.stub(stub[:subnet_arns]) unless stub[:subnet_arns].nil?
        data['Options'] = Stubs::VpcOptions.stub(stub[:options]) unless stub[:options].nil?
        data
      end
    end

    # Structure Stubber for VpcOptions
    class VpcOptions
      def self.default(visited=[])
        return nil if visited.include?('VpcOptions')
        visited = visited + ['VpcOptions']
        {
          ipv6_support: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::VpcOptions.new
        data = {}
        data['Ipv6Support'] = stub[:ipv6_support] unless stub[:ipv6_support].nil?
        data
      end
    end

    # List Stubber for SubnetArnList
    class SubnetArnList
      def self.default(visited=[])
        return nil if visited.include?('SubnetArnList')
        visited = visited + ['SubnetArnList']
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

    # Operation Stubber for DeleteAttachment
    class DeleteAttachment
      def self.default(visited=[])
        {
          attachment: Stubs::Attachment.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Attachment'] = Stubs::Attachment.stub(stub[:attachment]) unless stub[:attachment].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteConnectPeer
    class DeleteConnectPeer
      def self.default(visited=[])
        {
          connect_peer: Stubs::ConnectPeer.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ConnectPeer'] = Stubs::ConnectPeer.stub(stub[:connect_peer]) unless stub[:connect_peer].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteConnection
    class DeleteConnection
      def self.default(visited=[])
        {
          connection: Stubs::Connection.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Connection'] = Stubs::Connection.stub(stub[:connection]) unless stub[:connection].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteCoreNetwork
    class DeleteCoreNetwork
      def self.default(visited=[])
        {
          core_network: Stubs::CoreNetwork.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['CoreNetwork'] = Stubs::CoreNetwork.stub(stub[:core_network]) unless stub[:core_network].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteCoreNetworkPolicyVersion
    class DeleteCoreNetworkPolicyVersion
      def self.default(visited=[])
        {
          core_network_policy: Stubs::CoreNetworkPolicy.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['CoreNetworkPolicy'] = Stubs::CoreNetworkPolicy.stub(stub[:core_network_policy]) unless stub[:core_network_policy].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for CoreNetworkPolicy
    class CoreNetworkPolicy
      def self.default(visited=[])
        return nil if visited.include?('CoreNetworkPolicy')
        visited = visited + ['CoreNetworkPolicy']
        {
          core_network_id: 'core_network_id',
          policy_version_id: 1,
          alias: 'alias',
          description: 'description',
          created_at: Time.now,
          change_set_state: 'change_set_state',
          policy_errors: Stubs::CoreNetworkPolicyErrorList.default(visited),
          policy_document: 'policy_document',
        }
      end

      def self.stub(stub)
        stub ||= Types::CoreNetworkPolicy.new
        data = {}
        data['CoreNetworkId'] = stub[:core_network_id] unless stub[:core_network_id].nil?
        data['PolicyVersionId'] = stub[:policy_version_id] unless stub[:policy_version_id].nil?
        data['Alias'] = stub[:alias] unless stub[:alias].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['ChangeSetState'] = stub[:change_set_state] unless stub[:change_set_state].nil?
        data['PolicyErrors'] = Stubs::CoreNetworkPolicyErrorList.stub(stub[:policy_errors]) unless stub[:policy_errors].nil?
        data['PolicyDocument'] = stub[:policy_document] unless stub[:policy_document].nil?
        data
      end
    end

    # List Stubber for CoreNetworkPolicyErrorList
    class CoreNetworkPolicyErrorList
      def self.default(visited=[])
        return nil if visited.include?('CoreNetworkPolicyErrorList')
        visited = visited + ['CoreNetworkPolicyErrorList']
        [
          Stubs::CoreNetworkPolicyError.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::CoreNetworkPolicyError.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CoreNetworkPolicyError
    class CoreNetworkPolicyError
      def self.default(visited=[])
        return nil if visited.include?('CoreNetworkPolicyError')
        visited = visited + ['CoreNetworkPolicyError']
        {
          error_code: 'error_code',
          message: 'message',
          path: 'path',
        }
      end

      def self.stub(stub)
        stub ||= Types::CoreNetworkPolicyError.new
        data = {}
        data['ErrorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data['Path'] = stub[:path] unless stub[:path].nil?
        data
      end
    end

    # Operation Stubber for DeleteDevice
    class DeleteDevice
      def self.default(visited=[])
        {
          device: Stubs::Device.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Device'] = Stubs::Device.stub(stub[:device]) unless stub[:device].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteGlobalNetwork
    class DeleteGlobalNetwork
      def self.default(visited=[])
        {
          global_network: Stubs::GlobalNetwork.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['GlobalNetwork'] = Stubs::GlobalNetwork.stub(stub[:global_network]) unless stub[:global_network].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteLink
    class DeleteLink
      def self.default(visited=[])
        {
          link: Stubs::Link.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Link'] = Stubs::Link.stub(stub[:link]) unless stub[:link].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteResourcePolicy
    class DeleteResourcePolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteSite
    class DeleteSite
      def self.default(visited=[])
        {
          site: Stubs::Site.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Site'] = Stubs::Site.stub(stub[:site]) unless stub[:site].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeregisterTransitGateway
    class DeregisterTransitGateway
      def self.default(visited=[])
        {
          transit_gateway_registration: Stubs::TransitGatewayRegistration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['TransitGatewayRegistration'] = Stubs::TransitGatewayRegistration.stub(stub[:transit_gateway_registration]) unless stub[:transit_gateway_registration].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for TransitGatewayRegistration
    class TransitGatewayRegistration
      def self.default(visited=[])
        return nil if visited.include?('TransitGatewayRegistration')
        visited = visited + ['TransitGatewayRegistration']
        {
          global_network_id: 'global_network_id',
          transit_gateway_arn: 'transit_gateway_arn',
          state: Stubs::TransitGatewayRegistrationStateReason.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TransitGatewayRegistration.new
        data = {}
        data['GlobalNetworkId'] = stub[:global_network_id] unless stub[:global_network_id].nil?
        data['TransitGatewayArn'] = stub[:transit_gateway_arn] unless stub[:transit_gateway_arn].nil?
        data['State'] = Stubs::TransitGatewayRegistrationStateReason.stub(stub[:state]) unless stub[:state].nil?
        data
      end
    end

    # Structure Stubber for TransitGatewayRegistrationStateReason
    class TransitGatewayRegistrationStateReason
      def self.default(visited=[])
        return nil if visited.include?('TransitGatewayRegistrationStateReason')
        visited = visited + ['TransitGatewayRegistrationStateReason']
        {
          code: 'code',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::TransitGatewayRegistrationStateReason.new
        data = {}
        data['Code'] = stub[:code] unless stub[:code].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Operation Stubber for DescribeGlobalNetworks
    class DescribeGlobalNetworks
      def self.default(visited=[])
        {
          global_networks: Stubs::GlobalNetworkList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['GlobalNetworks'] = Stubs::GlobalNetworkList.stub(stub[:global_networks]) unless stub[:global_networks].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for GlobalNetworkList
    class GlobalNetworkList
      def self.default(visited=[])
        return nil if visited.include?('GlobalNetworkList')
        visited = visited + ['GlobalNetworkList']
        [
          Stubs::GlobalNetwork.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::GlobalNetwork.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DisassociateConnectPeer
    class DisassociateConnectPeer
      def self.default(visited=[])
        {
          connect_peer_association: Stubs::ConnectPeerAssociation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ConnectPeerAssociation'] = Stubs::ConnectPeerAssociation.stub(stub[:connect_peer_association]) unless stub[:connect_peer_association].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DisassociateCustomerGateway
    class DisassociateCustomerGateway
      def self.default(visited=[])
        {
          customer_gateway_association: Stubs::CustomerGatewayAssociation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['CustomerGatewayAssociation'] = Stubs::CustomerGatewayAssociation.stub(stub[:customer_gateway_association]) unless stub[:customer_gateway_association].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DisassociateLink
    class DisassociateLink
      def self.default(visited=[])
        {
          link_association: Stubs::LinkAssociation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['LinkAssociation'] = Stubs::LinkAssociation.stub(stub[:link_association]) unless stub[:link_association].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DisassociateTransitGatewayConnectPeer
    class DisassociateTransitGatewayConnectPeer
      def self.default(visited=[])
        {
          transit_gateway_connect_peer_association: Stubs::TransitGatewayConnectPeerAssociation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['TransitGatewayConnectPeerAssociation'] = Stubs::TransitGatewayConnectPeerAssociation.stub(stub[:transit_gateway_connect_peer_association]) unless stub[:transit_gateway_connect_peer_association].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ExecuteCoreNetworkChangeSet
    class ExecuteCoreNetworkChangeSet
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetConnectAttachment
    class GetConnectAttachment
      def self.default(visited=[])
        {
          connect_attachment: Stubs::ConnectAttachment.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ConnectAttachment'] = Stubs::ConnectAttachment.stub(stub[:connect_attachment]) unless stub[:connect_attachment].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetConnectPeer
    class GetConnectPeer
      def self.default(visited=[])
        {
          connect_peer: Stubs::ConnectPeer.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ConnectPeer'] = Stubs::ConnectPeer.stub(stub[:connect_peer]) unless stub[:connect_peer].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetConnectPeerAssociations
    class GetConnectPeerAssociations
      def self.default(visited=[])
        {
          connect_peer_associations: Stubs::ConnectPeerAssociationList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ConnectPeerAssociations'] = Stubs::ConnectPeerAssociationList.stub(stub[:connect_peer_associations]) unless stub[:connect_peer_associations].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ConnectPeerAssociationList
    class ConnectPeerAssociationList
      def self.default(visited=[])
        return nil if visited.include?('ConnectPeerAssociationList')
        visited = visited + ['ConnectPeerAssociationList']
        [
          Stubs::ConnectPeerAssociation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ConnectPeerAssociation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetConnections
    class GetConnections
      def self.default(visited=[])
        {
          connections: Stubs::ConnectionList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Connections'] = Stubs::ConnectionList.stub(stub[:connections]) unless stub[:connections].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ConnectionList
    class ConnectionList
      def self.default(visited=[])
        return nil if visited.include?('ConnectionList')
        visited = visited + ['ConnectionList']
        [
          Stubs::Connection.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Connection.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetCoreNetwork
    class GetCoreNetwork
      def self.default(visited=[])
        {
          core_network: Stubs::CoreNetwork.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['CoreNetwork'] = Stubs::CoreNetwork.stub(stub[:core_network]) unless stub[:core_network].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetCoreNetworkChangeSet
    class GetCoreNetworkChangeSet
      def self.default(visited=[])
        {
          core_network_changes: Stubs::CoreNetworkChangeList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['CoreNetworkChanges'] = Stubs::CoreNetworkChangeList.stub(stub[:core_network_changes]) unless stub[:core_network_changes].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for CoreNetworkChangeList
    class CoreNetworkChangeList
      def self.default(visited=[])
        return nil if visited.include?('CoreNetworkChangeList')
        visited = visited + ['CoreNetworkChangeList']
        [
          Stubs::CoreNetworkChange.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::CoreNetworkChange.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CoreNetworkChange
    class CoreNetworkChange
      def self.default(visited=[])
        return nil if visited.include?('CoreNetworkChange')
        visited = visited + ['CoreNetworkChange']
        {
          type: 'type',
          action: 'action',
          identifier: 'identifier',
          previous_values: Stubs::CoreNetworkChangeValues.default(visited),
          new_values: Stubs::CoreNetworkChangeValues.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CoreNetworkChange.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Action'] = stub[:action] unless stub[:action].nil?
        data['Identifier'] = stub[:identifier] unless stub[:identifier].nil?
        data['PreviousValues'] = Stubs::CoreNetworkChangeValues.stub(stub[:previous_values]) unless stub[:previous_values].nil?
        data['NewValues'] = Stubs::CoreNetworkChangeValues.stub(stub[:new_values]) unless stub[:new_values].nil?
        data
      end
    end

    # Structure Stubber for CoreNetworkChangeValues
    class CoreNetworkChangeValues
      def self.default(visited=[])
        return nil if visited.include?('CoreNetworkChangeValues')
        visited = visited + ['CoreNetworkChangeValues']
        {
          segment_name: 'segment_name',
          edge_locations: Stubs::ExternalRegionCodeList.default(visited),
          asn: 1,
          cidr: 'cidr',
          destination_identifier: 'destination_identifier',
          inside_cidr_blocks: Stubs::ConstrainedStringList.default(visited),
          shared_segments: Stubs::ConstrainedStringList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CoreNetworkChangeValues.new
        data = {}
        data['SegmentName'] = stub[:segment_name] unless stub[:segment_name].nil?
        data['EdgeLocations'] = Stubs::ExternalRegionCodeList.stub(stub[:edge_locations]) unless stub[:edge_locations].nil?
        data['Asn'] = stub[:asn] unless stub[:asn].nil?
        data['Cidr'] = stub[:cidr] unless stub[:cidr].nil?
        data['DestinationIdentifier'] = stub[:destination_identifier] unless stub[:destination_identifier].nil?
        data['InsideCidrBlocks'] = Stubs::ConstrainedStringList.stub(stub[:inside_cidr_blocks]) unless stub[:inside_cidr_blocks].nil?
        data['SharedSegments'] = Stubs::ConstrainedStringList.stub(stub[:shared_segments]) unless stub[:shared_segments].nil?
        data
      end
    end

    # Operation Stubber for GetCoreNetworkPolicy
    class GetCoreNetworkPolicy
      def self.default(visited=[])
        {
          core_network_policy: Stubs::CoreNetworkPolicy.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['CoreNetworkPolicy'] = Stubs::CoreNetworkPolicy.stub(stub[:core_network_policy]) unless stub[:core_network_policy].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetCustomerGatewayAssociations
    class GetCustomerGatewayAssociations
      def self.default(visited=[])
        {
          customer_gateway_associations: Stubs::CustomerGatewayAssociationList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['CustomerGatewayAssociations'] = Stubs::CustomerGatewayAssociationList.stub(stub[:customer_gateway_associations]) unless stub[:customer_gateway_associations].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for CustomerGatewayAssociationList
    class CustomerGatewayAssociationList
      def self.default(visited=[])
        return nil if visited.include?('CustomerGatewayAssociationList')
        visited = visited + ['CustomerGatewayAssociationList']
        [
          Stubs::CustomerGatewayAssociation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::CustomerGatewayAssociation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetDevices
    class GetDevices
      def self.default(visited=[])
        {
          devices: Stubs::DeviceList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Devices'] = Stubs::DeviceList.stub(stub[:devices]) unless stub[:devices].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for DeviceList
    class DeviceList
      def self.default(visited=[])
        return nil if visited.include?('DeviceList')
        visited = visited + ['DeviceList']
        [
          Stubs::Device.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Device.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetLinkAssociations
    class GetLinkAssociations
      def self.default(visited=[])
        {
          link_associations: Stubs::LinkAssociationList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['LinkAssociations'] = Stubs::LinkAssociationList.stub(stub[:link_associations]) unless stub[:link_associations].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for LinkAssociationList
    class LinkAssociationList
      def self.default(visited=[])
        return nil if visited.include?('LinkAssociationList')
        visited = visited + ['LinkAssociationList']
        [
          Stubs::LinkAssociation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::LinkAssociation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetLinks
    class GetLinks
      def self.default(visited=[])
        {
          links: Stubs::LinkList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Links'] = Stubs::LinkList.stub(stub[:links]) unless stub[:links].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for LinkList
    class LinkList
      def self.default(visited=[])
        return nil if visited.include?('LinkList')
        visited = visited + ['LinkList']
        [
          Stubs::Link.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Link.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetNetworkResourceCounts
    class GetNetworkResourceCounts
      def self.default(visited=[])
        {
          network_resource_counts: Stubs::NetworkResourceCountList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NetworkResourceCounts'] = Stubs::NetworkResourceCountList.stub(stub[:network_resource_counts]) unless stub[:network_resource_counts].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for NetworkResourceCountList
    class NetworkResourceCountList
      def self.default(visited=[])
        return nil if visited.include?('NetworkResourceCountList')
        visited = visited + ['NetworkResourceCountList']
        [
          Stubs::NetworkResourceCount.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::NetworkResourceCount.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for NetworkResourceCount
    class NetworkResourceCount
      def self.default(visited=[])
        return nil if visited.include?('NetworkResourceCount')
        visited = visited + ['NetworkResourceCount']
        {
          resource_type: 'resource_type',
          count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::NetworkResourceCount.new
        data = {}
        data['ResourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['Count'] = stub[:count] unless stub[:count].nil?
        data
      end
    end

    # Operation Stubber for GetNetworkResourceRelationships
    class GetNetworkResourceRelationships
      def self.default(visited=[])
        {
          relationships: Stubs::RelationshipList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Relationships'] = Stubs::RelationshipList.stub(stub[:relationships]) unless stub[:relationships].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for RelationshipList
    class RelationshipList
      def self.default(visited=[])
        return nil if visited.include?('RelationshipList')
        visited = visited + ['RelationshipList']
        [
          Stubs::Relationship.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Relationship.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Relationship
    class Relationship
      def self.default(visited=[])
        return nil if visited.include?('Relationship')
        visited = visited + ['Relationship']
        {
          from: 'from',
          to: 'to',
        }
      end

      def self.stub(stub)
        stub ||= Types::Relationship.new
        data = {}
        data['From'] = stub[:from] unless stub[:from].nil?
        data['To'] = stub[:to] unless stub[:to].nil?
        data
      end
    end

    # Operation Stubber for GetNetworkResources
    class GetNetworkResources
      def self.default(visited=[])
        {
          network_resources: Stubs::NetworkResourceList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NetworkResources'] = Stubs::NetworkResourceList.stub(stub[:network_resources]) unless stub[:network_resources].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for NetworkResourceList
    class NetworkResourceList
      def self.default(visited=[])
        return nil if visited.include?('NetworkResourceList')
        visited = visited + ['NetworkResourceList']
        [
          Stubs::NetworkResource.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::NetworkResource.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for NetworkResource
    class NetworkResource
      def self.default(visited=[])
        return nil if visited.include?('NetworkResource')
        visited = visited + ['NetworkResource']
        {
          registered_gateway_arn: 'registered_gateway_arn',
          core_network_id: 'core_network_id',
          aws_region: 'aws_region',
          account_id: 'account_id',
          resource_type: 'resource_type',
          resource_id: 'resource_id',
          resource_arn: 'resource_arn',
          definition: 'definition',
          definition_timestamp: Time.now,
          tags: Stubs::TagList.default(visited),
          metadata: Stubs::NetworkResourceMetadataMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::NetworkResource.new
        data = {}
        data['RegisteredGatewayArn'] = stub[:registered_gateway_arn] unless stub[:registered_gateway_arn].nil?
        data['CoreNetworkId'] = stub[:core_network_id] unless stub[:core_network_id].nil?
        data['AwsRegion'] = stub[:aws_region] unless stub[:aws_region].nil?
        data['AccountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['ResourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['ResourceId'] = stub[:resource_id] unless stub[:resource_id].nil?
        data['ResourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['Definition'] = stub[:definition] unless stub[:definition].nil?
        data['DefinitionTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:definition_timestamp]).to_i unless stub[:definition_timestamp].nil?
        data['Tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['Metadata'] = Stubs::NetworkResourceMetadataMap.stub(stub[:metadata]) unless stub[:metadata].nil?
        data
      end
    end

    # Map Stubber for NetworkResourceMetadataMap
    class NetworkResourceMetadataMap
      def self.default(visited=[])
        return nil if visited.include?('NetworkResourceMetadataMap')
        visited = visited + ['NetworkResourceMetadataMap']
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

    # Operation Stubber for GetNetworkRoutes
    class GetNetworkRoutes
      def self.default(visited=[])
        {
          route_table_arn: 'route_table_arn',
          core_network_segment_edge: Stubs::CoreNetworkSegmentEdgeIdentifier.default(visited),
          route_table_type: 'route_table_type',
          route_table_timestamp: Time.now,
          network_routes: Stubs::NetworkRouteList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['RouteTableArn'] = stub[:route_table_arn] unless stub[:route_table_arn].nil?
        data['CoreNetworkSegmentEdge'] = Stubs::CoreNetworkSegmentEdgeIdentifier.stub(stub[:core_network_segment_edge]) unless stub[:core_network_segment_edge].nil?
        data['RouteTableType'] = stub[:route_table_type] unless stub[:route_table_type].nil?
        data['RouteTableTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:route_table_timestamp]).to_i unless stub[:route_table_timestamp].nil?
        data['NetworkRoutes'] = Stubs::NetworkRouteList.stub(stub[:network_routes]) unless stub[:network_routes].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for NetworkRouteList
    class NetworkRouteList
      def self.default(visited=[])
        return nil if visited.include?('NetworkRouteList')
        visited = visited + ['NetworkRouteList']
        [
          Stubs::NetworkRoute.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::NetworkRoute.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for NetworkRoute
    class NetworkRoute
      def self.default(visited=[])
        return nil if visited.include?('NetworkRoute')
        visited = visited + ['NetworkRoute']
        {
          destination_cidr_block: 'destination_cidr_block',
          destinations: Stubs::NetworkRouteDestinationList.default(visited),
          prefix_list_id: 'prefix_list_id',
          state: 'state',
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::NetworkRoute.new
        data = {}
        data['DestinationCidrBlock'] = stub[:destination_cidr_block] unless stub[:destination_cidr_block].nil?
        data['Destinations'] = Stubs::NetworkRouteDestinationList.stub(stub[:destinations]) unless stub[:destinations].nil?
        data['PrefixListId'] = stub[:prefix_list_id] unless stub[:prefix_list_id].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # List Stubber for NetworkRouteDestinationList
    class NetworkRouteDestinationList
      def self.default(visited=[])
        return nil if visited.include?('NetworkRouteDestinationList')
        visited = visited + ['NetworkRouteDestinationList']
        [
          Stubs::NetworkRouteDestination.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::NetworkRouteDestination.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for NetworkRouteDestination
    class NetworkRouteDestination
      def self.default(visited=[])
        return nil if visited.include?('NetworkRouteDestination')
        visited = visited + ['NetworkRouteDestination']
        {
          core_network_attachment_id: 'core_network_attachment_id',
          transit_gateway_attachment_id: 'transit_gateway_attachment_id',
          segment_name: 'segment_name',
          edge_location: 'edge_location',
          resource_type: 'resource_type',
          resource_id: 'resource_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::NetworkRouteDestination.new
        data = {}
        data['CoreNetworkAttachmentId'] = stub[:core_network_attachment_id] unless stub[:core_network_attachment_id].nil?
        data['TransitGatewayAttachmentId'] = stub[:transit_gateway_attachment_id] unless stub[:transit_gateway_attachment_id].nil?
        data['SegmentName'] = stub[:segment_name] unless stub[:segment_name].nil?
        data['EdgeLocation'] = stub[:edge_location] unless stub[:edge_location].nil?
        data['ResourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['ResourceId'] = stub[:resource_id] unless stub[:resource_id].nil?
        data
      end
    end

    # Structure Stubber for CoreNetworkSegmentEdgeIdentifier
    class CoreNetworkSegmentEdgeIdentifier
      def self.default(visited=[])
        return nil if visited.include?('CoreNetworkSegmentEdgeIdentifier')
        visited = visited + ['CoreNetworkSegmentEdgeIdentifier']
        {
          core_network_id: 'core_network_id',
          segment_name: 'segment_name',
          edge_location: 'edge_location',
        }
      end

      def self.stub(stub)
        stub ||= Types::CoreNetworkSegmentEdgeIdentifier.new
        data = {}
        data['CoreNetworkId'] = stub[:core_network_id] unless stub[:core_network_id].nil?
        data['SegmentName'] = stub[:segment_name] unless stub[:segment_name].nil?
        data['EdgeLocation'] = stub[:edge_location] unless stub[:edge_location].nil?
        data
      end
    end

    # Operation Stubber for GetNetworkTelemetry
    class GetNetworkTelemetry
      def self.default(visited=[])
        {
          network_telemetry: Stubs::NetworkTelemetryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NetworkTelemetry'] = Stubs::NetworkTelemetryList.stub(stub[:network_telemetry]) unless stub[:network_telemetry].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for NetworkTelemetryList
    class NetworkTelemetryList
      def self.default(visited=[])
        return nil if visited.include?('NetworkTelemetryList')
        visited = visited + ['NetworkTelemetryList']
        [
          Stubs::NetworkTelemetry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::NetworkTelemetry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for NetworkTelemetry
    class NetworkTelemetry
      def self.default(visited=[])
        return nil if visited.include?('NetworkTelemetry')
        visited = visited + ['NetworkTelemetry']
        {
          registered_gateway_arn: 'registered_gateway_arn',
          core_network_id: 'core_network_id',
          aws_region: 'aws_region',
          account_id: 'account_id',
          resource_type: 'resource_type',
          resource_id: 'resource_id',
          resource_arn: 'resource_arn',
          address: 'address',
          health: Stubs::ConnectionHealth.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::NetworkTelemetry.new
        data = {}
        data['RegisteredGatewayArn'] = stub[:registered_gateway_arn] unless stub[:registered_gateway_arn].nil?
        data['CoreNetworkId'] = stub[:core_network_id] unless stub[:core_network_id].nil?
        data['AwsRegion'] = stub[:aws_region] unless stub[:aws_region].nil?
        data['AccountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['ResourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['ResourceId'] = stub[:resource_id] unless stub[:resource_id].nil?
        data['ResourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['Address'] = stub[:address] unless stub[:address].nil?
        data['Health'] = Stubs::ConnectionHealth.stub(stub[:health]) unless stub[:health].nil?
        data
      end
    end

    # Structure Stubber for ConnectionHealth
    class ConnectionHealth
      def self.default(visited=[])
        return nil if visited.include?('ConnectionHealth')
        visited = visited + ['ConnectionHealth']
        {
          type: 'type',
          status: 'status',
          timestamp: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ConnectionHealth.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Timestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:timestamp]).to_i unless stub[:timestamp].nil?
        data
      end
    end

    # Operation Stubber for GetResourcePolicy
    class GetResourcePolicy
      def self.default(visited=[])
        {
          policy_document: 'policy_document',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['PolicyDocument'] = stub[:policy_document] unless stub[:policy_document].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetRouteAnalysis
    class GetRouteAnalysis
      def self.default(visited=[])
        {
          route_analysis: Stubs::RouteAnalysis.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['RouteAnalysis'] = Stubs::RouteAnalysis.stub(stub[:route_analysis]) unless stub[:route_analysis].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for RouteAnalysis
    class RouteAnalysis
      def self.default(visited=[])
        return nil if visited.include?('RouteAnalysis')
        visited = visited + ['RouteAnalysis']
        {
          global_network_id: 'global_network_id',
          owner_account_id: 'owner_account_id',
          route_analysis_id: 'route_analysis_id',
          start_timestamp: Time.now,
          status: 'status',
          source: Stubs::RouteAnalysisEndpointOptions.default(visited),
          destination: Stubs::RouteAnalysisEndpointOptions.default(visited),
          include_return_path: false,
          use_middleboxes: false,
          forward_path: Stubs::RouteAnalysisPath.default(visited),
          return_path: Stubs::RouteAnalysisPath.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RouteAnalysis.new
        data = {}
        data['GlobalNetworkId'] = stub[:global_network_id] unless stub[:global_network_id].nil?
        data['OwnerAccountId'] = stub[:owner_account_id] unless stub[:owner_account_id].nil?
        data['RouteAnalysisId'] = stub[:route_analysis_id] unless stub[:route_analysis_id].nil?
        data['StartTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_timestamp]).to_i unless stub[:start_timestamp].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Source'] = Stubs::RouteAnalysisEndpointOptions.stub(stub[:source]) unless stub[:source].nil?
        data['Destination'] = Stubs::RouteAnalysisEndpointOptions.stub(stub[:destination]) unless stub[:destination].nil?
        data['IncludeReturnPath'] = stub[:include_return_path] unless stub[:include_return_path].nil?
        data['UseMiddleboxes'] = stub[:use_middleboxes] unless stub[:use_middleboxes].nil?
        data['ForwardPath'] = Stubs::RouteAnalysisPath.stub(stub[:forward_path]) unless stub[:forward_path].nil?
        data['ReturnPath'] = Stubs::RouteAnalysisPath.stub(stub[:return_path]) unless stub[:return_path].nil?
        data
      end
    end

    # Structure Stubber for RouteAnalysisPath
    class RouteAnalysisPath
      def self.default(visited=[])
        return nil if visited.include?('RouteAnalysisPath')
        visited = visited + ['RouteAnalysisPath']
        {
          completion_status: Stubs::RouteAnalysisCompletion.default(visited),
          path: Stubs::PathComponentList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RouteAnalysisPath.new
        data = {}
        data['CompletionStatus'] = Stubs::RouteAnalysisCompletion.stub(stub[:completion_status]) unless stub[:completion_status].nil?
        data['Path'] = Stubs::PathComponentList.stub(stub[:path]) unless stub[:path].nil?
        data
      end
    end

    # List Stubber for PathComponentList
    class PathComponentList
      def self.default(visited=[])
        return nil if visited.include?('PathComponentList')
        visited = visited + ['PathComponentList']
        [
          Stubs::PathComponent.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PathComponent.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PathComponent
    class PathComponent
      def self.default(visited=[])
        return nil if visited.include?('PathComponent')
        visited = visited + ['PathComponent']
        {
          sequence: 1,
          resource: Stubs::NetworkResourceSummary.default(visited),
          destination_cidr_block: 'destination_cidr_block',
        }
      end

      def self.stub(stub)
        stub ||= Types::PathComponent.new
        data = {}
        data['Sequence'] = stub[:sequence] unless stub[:sequence].nil?
        data['Resource'] = Stubs::NetworkResourceSummary.stub(stub[:resource]) unless stub[:resource].nil?
        data['DestinationCidrBlock'] = stub[:destination_cidr_block] unless stub[:destination_cidr_block].nil?
        data
      end
    end

    # Structure Stubber for NetworkResourceSummary
    class NetworkResourceSummary
      def self.default(visited=[])
        return nil if visited.include?('NetworkResourceSummary')
        visited = visited + ['NetworkResourceSummary']
        {
          registered_gateway_arn: 'registered_gateway_arn',
          resource_arn: 'resource_arn',
          resource_type: 'resource_type',
          definition: 'definition',
          name_tag: 'name_tag',
          is_middlebox: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::NetworkResourceSummary.new
        data = {}
        data['RegisteredGatewayArn'] = stub[:registered_gateway_arn] unless stub[:registered_gateway_arn].nil?
        data['ResourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['ResourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['Definition'] = stub[:definition] unless stub[:definition].nil?
        data['NameTag'] = stub[:name_tag] unless stub[:name_tag].nil?
        data['IsMiddlebox'] = stub[:is_middlebox] unless stub[:is_middlebox].nil?
        data
      end
    end

    # Structure Stubber for RouteAnalysisCompletion
    class RouteAnalysisCompletion
      def self.default(visited=[])
        return nil if visited.include?('RouteAnalysisCompletion')
        visited = visited + ['RouteAnalysisCompletion']
        {
          result_code: 'result_code',
          reason_code: 'reason_code',
          reason_context: Stubs::ReasonContextMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RouteAnalysisCompletion.new
        data = {}
        data['ResultCode'] = stub[:result_code] unless stub[:result_code].nil?
        data['ReasonCode'] = stub[:reason_code] unless stub[:reason_code].nil?
        data['ReasonContext'] = Stubs::ReasonContextMap.stub(stub[:reason_context]) unless stub[:reason_context].nil?
        data
      end
    end

    # Map Stubber for ReasonContextMap
    class ReasonContextMap
      def self.default(visited=[])
        return nil if visited.include?('ReasonContextMap')
        visited = visited + ['ReasonContextMap']
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

    # Structure Stubber for RouteAnalysisEndpointOptions
    class RouteAnalysisEndpointOptions
      def self.default(visited=[])
        return nil if visited.include?('RouteAnalysisEndpointOptions')
        visited = visited + ['RouteAnalysisEndpointOptions']
        {
          transit_gateway_attachment_arn: 'transit_gateway_attachment_arn',
          transit_gateway_arn: 'transit_gateway_arn',
          ip_address: 'ip_address',
        }
      end

      def self.stub(stub)
        stub ||= Types::RouteAnalysisEndpointOptions.new
        data = {}
        data['TransitGatewayAttachmentArn'] = stub[:transit_gateway_attachment_arn] unless stub[:transit_gateway_attachment_arn].nil?
        data['TransitGatewayArn'] = stub[:transit_gateway_arn] unless stub[:transit_gateway_arn].nil?
        data['IpAddress'] = stub[:ip_address] unless stub[:ip_address].nil?
        data
      end
    end

    # Operation Stubber for GetSiteToSiteVpnAttachment
    class GetSiteToSiteVpnAttachment
      def self.default(visited=[])
        {
          site_to_site_vpn_attachment: Stubs::SiteToSiteVpnAttachment.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['SiteToSiteVpnAttachment'] = Stubs::SiteToSiteVpnAttachment.stub(stub[:site_to_site_vpn_attachment]) unless stub[:site_to_site_vpn_attachment].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetSites
    class GetSites
      def self.default(visited=[])
        {
          sites: Stubs::SiteList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Sites'] = Stubs::SiteList.stub(stub[:sites]) unless stub[:sites].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for SiteList
    class SiteList
      def self.default(visited=[])
        return nil if visited.include?('SiteList')
        visited = visited + ['SiteList']
        [
          Stubs::Site.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Site.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetTransitGatewayConnectPeerAssociations
    class GetTransitGatewayConnectPeerAssociations
      def self.default(visited=[])
        {
          transit_gateway_connect_peer_associations: Stubs::TransitGatewayConnectPeerAssociationList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['TransitGatewayConnectPeerAssociations'] = Stubs::TransitGatewayConnectPeerAssociationList.stub(stub[:transit_gateway_connect_peer_associations]) unless stub[:transit_gateway_connect_peer_associations].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for TransitGatewayConnectPeerAssociationList
    class TransitGatewayConnectPeerAssociationList
      def self.default(visited=[])
        return nil if visited.include?('TransitGatewayConnectPeerAssociationList')
        visited = visited + ['TransitGatewayConnectPeerAssociationList']
        [
          Stubs::TransitGatewayConnectPeerAssociation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::TransitGatewayConnectPeerAssociation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetTransitGatewayRegistrations
    class GetTransitGatewayRegistrations
      def self.default(visited=[])
        {
          transit_gateway_registrations: Stubs::TransitGatewayRegistrationList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['TransitGatewayRegistrations'] = Stubs::TransitGatewayRegistrationList.stub(stub[:transit_gateway_registrations]) unless stub[:transit_gateway_registrations].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for TransitGatewayRegistrationList
    class TransitGatewayRegistrationList
      def self.default(visited=[])
        return nil if visited.include?('TransitGatewayRegistrationList')
        visited = visited + ['TransitGatewayRegistrationList']
        [
          Stubs::TransitGatewayRegistration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::TransitGatewayRegistration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetVpcAttachment
    class GetVpcAttachment
      def self.default(visited=[])
        {
          vpc_attachment: Stubs::VpcAttachment.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['VpcAttachment'] = Stubs::VpcAttachment.stub(stub[:vpc_attachment]) unless stub[:vpc_attachment].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListAttachments
    class ListAttachments
      def self.default(visited=[])
        {
          attachments: Stubs::AttachmentList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Attachments'] = Stubs::AttachmentList.stub(stub[:attachments]) unless stub[:attachments].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AttachmentList
    class AttachmentList
      def self.default(visited=[])
        return nil if visited.include?('AttachmentList')
        visited = visited + ['AttachmentList']
        [
          Stubs::Attachment.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Attachment.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListConnectPeers
    class ListConnectPeers
      def self.default(visited=[])
        {
          connect_peers: Stubs::ConnectPeerSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ConnectPeers'] = Stubs::ConnectPeerSummaryList.stub(stub[:connect_peers]) unless stub[:connect_peers].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ConnectPeerSummaryList
    class ConnectPeerSummaryList
      def self.default(visited=[])
        return nil if visited.include?('ConnectPeerSummaryList')
        visited = visited + ['ConnectPeerSummaryList']
        [
          Stubs::ConnectPeerSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ConnectPeerSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ConnectPeerSummary
    class ConnectPeerSummary
      def self.default(visited=[])
        return nil if visited.include?('ConnectPeerSummary')
        visited = visited + ['ConnectPeerSummary']
        {
          core_network_id: 'core_network_id',
          connect_attachment_id: 'connect_attachment_id',
          connect_peer_id: 'connect_peer_id',
          edge_location: 'edge_location',
          connect_peer_state: 'connect_peer_state',
          created_at: Time.now,
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ConnectPeerSummary.new
        data = {}
        data['CoreNetworkId'] = stub[:core_network_id] unless stub[:core_network_id].nil?
        data['ConnectAttachmentId'] = stub[:connect_attachment_id] unless stub[:connect_attachment_id].nil?
        data['ConnectPeerId'] = stub[:connect_peer_id] unless stub[:connect_peer_id].nil?
        data['EdgeLocation'] = stub[:edge_location] unless stub[:edge_location].nil?
        data['ConnectPeerState'] = stub[:connect_peer_state] unless stub[:connect_peer_state].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['Tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for ListCoreNetworkPolicyVersions
    class ListCoreNetworkPolicyVersions
      def self.default(visited=[])
        {
          core_network_policy_versions: Stubs::CoreNetworkPolicyVersionList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['CoreNetworkPolicyVersions'] = Stubs::CoreNetworkPolicyVersionList.stub(stub[:core_network_policy_versions]) unless stub[:core_network_policy_versions].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for CoreNetworkPolicyVersionList
    class CoreNetworkPolicyVersionList
      def self.default(visited=[])
        return nil if visited.include?('CoreNetworkPolicyVersionList')
        visited = visited + ['CoreNetworkPolicyVersionList']
        [
          Stubs::CoreNetworkPolicyVersion.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::CoreNetworkPolicyVersion.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CoreNetworkPolicyVersion
    class CoreNetworkPolicyVersion
      def self.default(visited=[])
        return nil if visited.include?('CoreNetworkPolicyVersion')
        visited = visited + ['CoreNetworkPolicyVersion']
        {
          core_network_id: 'core_network_id',
          policy_version_id: 1,
          alias: 'alias',
          description: 'description',
          created_at: Time.now,
          change_set_state: 'change_set_state',
        }
      end

      def self.stub(stub)
        stub ||= Types::CoreNetworkPolicyVersion.new
        data = {}
        data['CoreNetworkId'] = stub[:core_network_id] unless stub[:core_network_id].nil?
        data['PolicyVersionId'] = stub[:policy_version_id] unless stub[:policy_version_id].nil?
        data['Alias'] = stub[:alias] unless stub[:alias].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['ChangeSetState'] = stub[:change_set_state] unless stub[:change_set_state].nil?
        data
      end
    end

    # Operation Stubber for ListCoreNetworks
    class ListCoreNetworks
      def self.default(visited=[])
        {
          core_networks: Stubs::CoreNetworkSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['CoreNetworks'] = Stubs::CoreNetworkSummaryList.stub(stub[:core_networks]) unless stub[:core_networks].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for CoreNetworkSummaryList
    class CoreNetworkSummaryList
      def self.default(visited=[])
        return nil if visited.include?('CoreNetworkSummaryList')
        visited = visited + ['CoreNetworkSummaryList']
        [
          Stubs::CoreNetworkSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::CoreNetworkSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CoreNetworkSummary
    class CoreNetworkSummary
      def self.default(visited=[])
        return nil if visited.include?('CoreNetworkSummary')
        visited = visited + ['CoreNetworkSummary']
        {
          core_network_id: 'core_network_id',
          core_network_arn: 'core_network_arn',
          global_network_id: 'global_network_id',
          owner_account_id: 'owner_account_id',
          state: 'state',
          description: 'description',
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CoreNetworkSummary.new
        data = {}
        data['CoreNetworkId'] = stub[:core_network_id] unless stub[:core_network_id].nil?
        data['CoreNetworkArn'] = stub[:core_network_arn] unless stub[:core_network_arn].nil?
        data['GlobalNetworkId'] = stub[:global_network_id] unless stub[:global_network_id].nil?
        data['OwnerAccountId'] = stub[:owner_account_id] unless stub[:owner_account_id].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for ListOrganizationServiceAccessStatus
    class ListOrganizationServiceAccessStatus
      def self.default(visited=[])
        {
          organization_status: Stubs::OrganizationStatus.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['OrganizationStatus'] = Stubs::OrganizationStatus.stub(stub[:organization_status]) unless stub[:organization_status].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for OrganizationStatus
    class OrganizationStatus
      def self.default(visited=[])
        return nil if visited.include?('OrganizationStatus')
        visited = visited + ['OrganizationStatus']
        {
          organization_id: 'organization_id',
          organization_aws_service_access_status: 'organization_aws_service_access_status',
          slr_deployment_status: 'slr_deployment_status',
          account_status_list: Stubs::AccountStatusList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::OrganizationStatus.new
        data = {}
        data['OrganizationId'] = stub[:organization_id] unless stub[:organization_id].nil?
        data['OrganizationAwsServiceAccessStatus'] = stub[:organization_aws_service_access_status] unless stub[:organization_aws_service_access_status].nil?
        data['SLRDeploymentStatus'] = stub[:slr_deployment_status] unless stub[:slr_deployment_status].nil?
        data['AccountStatusList'] = Stubs::AccountStatusList.stub(stub[:account_status_list]) unless stub[:account_status_list].nil?
        data
      end
    end

    # List Stubber for AccountStatusList
    class AccountStatusList
      def self.default(visited=[])
        return nil if visited.include?('AccountStatusList')
        visited = visited + ['AccountStatusList']
        [
          Stubs::AccountStatus.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AccountStatus.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AccountStatus
    class AccountStatus
      def self.default(visited=[])
        return nil if visited.include?('AccountStatus')
        visited = visited + ['AccountStatus']
        {
          account_id: 'account_id',
          slr_deployment_status: 'slr_deployment_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::AccountStatus.new
        data = {}
        data['AccountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['SLRDeploymentStatus'] = stub[:slr_deployment_status] unless stub[:slr_deployment_status].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tag_list: Stubs::TagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['TagList'] = Stubs::TagList.stub(stub[:tag_list]) unless stub[:tag_list].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for PutCoreNetworkPolicy
    class PutCoreNetworkPolicy
      def self.default(visited=[])
        {
          core_network_policy: Stubs::CoreNetworkPolicy.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['CoreNetworkPolicy'] = Stubs::CoreNetworkPolicy.stub(stub[:core_network_policy]) unless stub[:core_network_policy].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for PutResourcePolicy
    class PutResourcePolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for RegisterTransitGateway
    class RegisterTransitGateway
      def self.default(visited=[])
        {
          transit_gateway_registration: Stubs::TransitGatewayRegistration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['TransitGatewayRegistration'] = Stubs::TransitGatewayRegistration.stub(stub[:transit_gateway_registration]) unless stub[:transit_gateway_registration].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for RejectAttachment
    class RejectAttachment
      def self.default(visited=[])
        {
          attachment: Stubs::Attachment.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Attachment'] = Stubs::Attachment.stub(stub[:attachment]) unless stub[:attachment].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for RestoreCoreNetworkPolicyVersion
    class RestoreCoreNetworkPolicyVersion
      def self.default(visited=[])
        {
          core_network_policy: Stubs::CoreNetworkPolicy.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['CoreNetworkPolicy'] = Stubs::CoreNetworkPolicy.stub(stub[:core_network_policy]) unless stub[:core_network_policy].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StartOrganizationServiceAccessUpdate
    class StartOrganizationServiceAccessUpdate
      def self.default(visited=[])
        {
          organization_status: Stubs::OrganizationStatus.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['OrganizationStatus'] = Stubs::OrganizationStatus.stub(stub[:organization_status]) unless stub[:organization_status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StartRouteAnalysis
    class StartRouteAnalysis
      def self.default(visited=[])
        {
          route_analysis: Stubs::RouteAnalysis.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['RouteAnalysis'] = Stubs::RouteAnalysis.stub(stub[:route_analysis]) unless stub[:route_analysis].nil?
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
        http_resp.status = 200
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
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateConnection
    class UpdateConnection
      def self.default(visited=[])
        {
          connection: Stubs::Connection.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Connection'] = Stubs::Connection.stub(stub[:connection]) unless stub[:connection].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateCoreNetwork
    class UpdateCoreNetwork
      def self.default(visited=[])
        {
          core_network: Stubs::CoreNetwork.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['CoreNetwork'] = Stubs::CoreNetwork.stub(stub[:core_network]) unless stub[:core_network].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateDevice
    class UpdateDevice
      def self.default(visited=[])
        {
          device: Stubs::Device.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Device'] = Stubs::Device.stub(stub[:device]) unless stub[:device].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateGlobalNetwork
    class UpdateGlobalNetwork
      def self.default(visited=[])
        {
          global_network: Stubs::GlobalNetwork.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['GlobalNetwork'] = Stubs::GlobalNetwork.stub(stub[:global_network]) unless stub[:global_network].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateLink
    class UpdateLink
      def self.default(visited=[])
        {
          link: Stubs::Link.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Link'] = Stubs::Link.stub(stub[:link]) unless stub[:link].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateNetworkResourceMetadata
    class UpdateNetworkResourceMetadata
      def self.default(visited=[])
        {
          resource_arn: 'resource_arn',
          metadata: Stubs::NetworkResourceMetadataMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ResourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['Metadata'] = Stubs::NetworkResourceMetadataMap.stub(stub[:metadata]) unless stub[:metadata].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateSite
    class UpdateSite
      def self.default(visited=[])
        {
          site: Stubs::Site.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Site'] = Stubs::Site.stub(stub[:site]) unless stub[:site].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateVpcAttachment
    class UpdateVpcAttachment
      def self.default(visited=[])
        {
          vpc_attachment: Stubs::VpcAttachment.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['VpcAttachment'] = Stubs::VpcAttachment.stub(stub[:vpc_attachment]) unless stub[:vpc_attachment].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
