# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::NetworkManager
  module Builders

    # Operation Builder for AcceptAttachment
    class AcceptAttachment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:attachment_id].to_s.empty?
          raise ArgumentError, "HTTP label :attachment_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/attachments/%<AttachmentId>s/accept',
            AttachmentId: Hearth::HTTP.uri_escape(input[:attachment_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for AssociateConnectPeer
    class AssociateConnectPeer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:global_network_id].to_s.empty?
          raise ArgumentError, "HTTP label :global_network_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/global-networks/%<GlobalNetworkId>s/connect-peer-associations',
            GlobalNetworkId: Hearth::HTTP.uri_escape(input[:global_network_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ConnectPeerId'] = input[:connect_peer_id] unless input[:connect_peer_id].nil?
        data['DeviceId'] = input[:device_id] unless input[:device_id].nil?
        data['LinkId'] = input[:link_id] unless input[:link_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AssociateCustomerGateway
    class AssociateCustomerGateway
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:global_network_id].to_s.empty?
          raise ArgumentError, "HTTP label :global_network_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/global-networks/%<GlobalNetworkId>s/customer-gateway-associations',
            GlobalNetworkId: Hearth::HTTP.uri_escape(input[:global_network_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['CustomerGatewayArn'] = input[:customer_gateway_arn] unless input[:customer_gateway_arn].nil?
        data['DeviceId'] = input[:device_id] unless input[:device_id].nil?
        data['LinkId'] = input[:link_id] unless input[:link_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AssociateLink
    class AssociateLink
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:global_network_id].to_s.empty?
          raise ArgumentError, "HTTP label :global_network_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/global-networks/%<GlobalNetworkId>s/link-associations',
            GlobalNetworkId: Hearth::HTTP.uri_escape(input[:global_network_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['DeviceId'] = input[:device_id] unless input[:device_id].nil?
        data['LinkId'] = input[:link_id] unless input[:link_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AssociateTransitGatewayConnectPeer
    class AssociateTransitGatewayConnectPeer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:global_network_id].to_s.empty?
          raise ArgumentError, "HTTP label :global_network_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/global-networks/%<GlobalNetworkId>s/transit-gateway-connect-peer-associations',
            GlobalNetworkId: Hearth::HTTP.uri_escape(input[:global_network_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['TransitGatewayConnectPeerArn'] = input[:transit_gateway_connect_peer_arn] unless input[:transit_gateway_connect_peer_arn].nil?
        data['DeviceId'] = input[:device_id] unless input[:device_id].nil?
        data['LinkId'] = input[:link_id] unless input[:link_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateConnectAttachment
    class CreateConnectAttachment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/connect-attachments')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['CoreNetworkId'] = input[:core_network_id] unless input[:core_network_id].nil?
        data['EdgeLocation'] = input[:edge_location] unless input[:edge_location].nil?
        data['TransportAttachmentId'] = input[:transport_attachment_id] unless input[:transport_attachment_id].nil?
        data['Options'] = Builders::ConnectAttachmentOptions.build(input[:options]) unless input[:options].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagList
    class TagList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Structure Builder for ConnectAttachmentOptions
    class ConnectAttachmentOptions
      def self.build(input)
        data = {}
        data['Protocol'] = input[:protocol] unless input[:protocol].nil?
        data
      end
    end

    # Operation Builder for CreateConnectPeer
    class CreateConnectPeer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/connect-peers')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ConnectAttachmentId'] = input[:connect_attachment_id] unless input[:connect_attachment_id].nil?
        data['CoreNetworkAddress'] = input[:core_network_address] unless input[:core_network_address].nil?
        data['PeerAddress'] = input[:peer_address] unless input[:peer_address].nil?
        data['BgpOptions'] = Builders::BgpOptions.build(input[:bgp_options]) unless input[:bgp_options].nil?
        data['InsideCidrBlocks'] = Builders::ConstrainedStringList.build(input[:inside_cidr_blocks]) unless input[:inside_cidr_blocks].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ConstrainedStringList
    class ConstrainedStringList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for BgpOptions
    class BgpOptions
      def self.build(input)
        data = {}
        data['PeerAsn'] = input[:peer_asn] unless input[:peer_asn].nil?
        data
      end
    end

    # Operation Builder for CreateConnection
    class CreateConnection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:global_network_id].to_s.empty?
          raise ArgumentError, "HTTP label :global_network_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/global-networks/%<GlobalNetworkId>s/connections',
            GlobalNetworkId: Hearth::HTTP.uri_escape(input[:global_network_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['DeviceId'] = input[:device_id] unless input[:device_id].nil?
        data['ConnectedDeviceId'] = input[:connected_device_id] unless input[:connected_device_id].nil?
        data['LinkId'] = input[:link_id] unless input[:link_id].nil?
        data['ConnectedLinkId'] = input[:connected_link_id] unless input[:connected_link_id].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateCoreNetwork
    class CreateCoreNetwork
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/core-networks')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['GlobalNetworkId'] = input[:global_network_id] unless input[:global_network_id].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['PolicyDocument'] = input[:policy_document] unless input[:policy_document].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateDevice
    class CreateDevice
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:global_network_id].to_s.empty?
          raise ArgumentError, "HTTP label :global_network_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/global-networks/%<GlobalNetworkId>s/devices',
            GlobalNetworkId: Hearth::HTTP.uri_escape(input[:global_network_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['AWSLocation'] = Builders::AWSLocation.build(input[:aws_location]) unless input[:aws_location].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data['Vendor'] = input[:vendor] unless input[:vendor].nil?
        data['Model'] = input[:model] unless input[:model].nil?
        data['SerialNumber'] = input[:serial_number] unless input[:serial_number].nil?
        data['Location'] = Builders::Location.build(input[:location]) unless input[:location].nil?
        data['SiteId'] = input[:site_id] unless input[:site_id].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for Location
    class Location
      def self.build(input)
        data = {}
        data['Address'] = input[:address] unless input[:address].nil?
        data['Latitude'] = input[:latitude] unless input[:latitude].nil?
        data['Longitude'] = input[:longitude] unless input[:longitude].nil?
        data
      end
    end

    # Structure Builder for AWSLocation
    class AWSLocation
      def self.build(input)
        data = {}
        data['Zone'] = input[:zone] unless input[:zone].nil?
        data['SubnetArn'] = input[:subnet_arn] unless input[:subnet_arn].nil?
        data
      end
    end

    # Operation Builder for CreateGlobalNetwork
    class CreateGlobalNetwork
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/global-networks')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Description'] = input[:description] unless input[:description].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateLink
    class CreateLink
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:global_network_id].to_s.empty?
          raise ArgumentError, "HTTP label :global_network_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/global-networks/%<GlobalNetworkId>s/links',
            GlobalNetworkId: Hearth::HTTP.uri_escape(input[:global_network_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Description'] = input[:description] unless input[:description].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data['Bandwidth'] = Builders::Bandwidth.build(input[:bandwidth]) unless input[:bandwidth].nil?
        data['Provider'] = input[:provider] unless input[:provider].nil?
        data['SiteId'] = input[:site_id] unless input[:site_id].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for Bandwidth
    class Bandwidth
      def self.build(input)
        data = {}
        data['UploadSpeed'] = input[:upload_speed] unless input[:upload_speed].nil?
        data['DownloadSpeed'] = input[:download_speed] unless input[:download_speed].nil?
        data
      end
    end

    # Operation Builder for CreateSite
    class CreateSite
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:global_network_id].to_s.empty?
          raise ArgumentError, "HTTP label :global_network_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/global-networks/%<GlobalNetworkId>s/sites',
            GlobalNetworkId: Hearth::HTTP.uri_escape(input[:global_network_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Description'] = input[:description] unless input[:description].nil?
        data['Location'] = Builders::Location.build(input[:location]) unless input[:location].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateSiteToSiteVpnAttachment
    class CreateSiteToSiteVpnAttachment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/site-to-site-vpn-attachments')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['CoreNetworkId'] = input[:core_network_id] unless input[:core_network_id].nil?
        data['VpnConnectionArn'] = input[:vpn_connection_arn] unless input[:vpn_connection_arn].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateVpcAttachment
    class CreateVpcAttachment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/vpc-attachments')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['CoreNetworkId'] = input[:core_network_id] unless input[:core_network_id].nil?
        data['VpcArn'] = input[:vpc_arn] unless input[:vpc_arn].nil?
        data['SubnetArns'] = Builders::SubnetArnList.build(input[:subnet_arns]) unless input[:subnet_arns].nil?
        data['Options'] = Builders::VpcOptions.build(input[:options]) unless input[:options].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for VpcOptions
    class VpcOptions
      def self.build(input)
        data = {}
        data['Ipv6Support'] = input[:ipv6_support] unless input[:ipv6_support].nil?
        data
      end
    end

    # List Builder for SubnetArnList
    class SubnetArnList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DeleteAttachment
    class DeleteAttachment
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:attachment_id].to_s.empty?
          raise ArgumentError, "HTTP label :attachment_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/attachments/%<AttachmentId>s',
            AttachmentId: Hearth::HTTP.uri_escape(input[:attachment_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteConnectPeer
    class DeleteConnectPeer
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:connect_peer_id].to_s.empty?
          raise ArgumentError, "HTTP label :connect_peer_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/connect-peers/%<ConnectPeerId>s',
            ConnectPeerId: Hearth::HTTP.uri_escape(input[:connect_peer_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteConnection
    class DeleteConnection
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:global_network_id].to_s.empty?
          raise ArgumentError, "HTTP label :global_network_id cannot be nil or empty."
        end
        if input[:connection_id].to_s.empty?
          raise ArgumentError, "HTTP label :connection_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/global-networks/%<GlobalNetworkId>s/connections/%<ConnectionId>s',
            GlobalNetworkId: Hearth::HTTP.uri_escape(input[:global_network_id].to_s),
            ConnectionId: Hearth::HTTP.uri_escape(input[:connection_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteCoreNetwork
    class DeleteCoreNetwork
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:core_network_id].to_s.empty?
          raise ArgumentError, "HTTP label :core_network_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/core-networks/%<CoreNetworkId>s',
            CoreNetworkId: Hearth::HTTP.uri_escape(input[:core_network_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteCoreNetworkPolicyVersion
    class DeleteCoreNetworkPolicyVersion
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:core_network_id].to_s.empty?
          raise ArgumentError, "HTTP label :core_network_id cannot be nil or empty."
        end
        if input[:policy_version_id].to_s.empty?
          raise ArgumentError, "HTTP label :policy_version_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/core-networks/%<CoreNetworkId>s/core-network-policy-versions/%<PolicyVersionId>s',
            CoreNetworkId: Hearth::HTTP.uri_escape(input[:core_network_id].to_s),
            PolicyVersionId: Hearth::HTTP.uri_escape(input[:policy_version_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteDevice
    class DeleteDevice
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:global_network_id].to_s.empty?
          raise ArgumentError, "HTTP label :global_network_id cannot be nil or empty."
        end
        if input[:device_id].to_s.empty?
          raise ArgumentError, "HTTP label :device_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/global-networks/%<GlobalNetworkId>s/devices/%<DeviceId>s',
            GlobalNetworkId: Hearth::HTTP.uri_escape(input[:global_network_id].to_s),
            DeviceId: Hearth::HTTP.uri_escape(input[:device_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteGlobalNetwork
    class DeleteGlobalNetwork
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:global_network_id].to_s.empty?
          raise ArgumentError, "HTTP label :global_network_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/global-networks/%<GlobalNetworkId>s',
            GlobalNetworkId: Hearth::HTTP.uri_escape(input[:global_network_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteLink
    class DeleteLink
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:global_network_id].to_s.empty?
          raise ArgumentError, "HTTP label :global_network_id cannot be nil or empty."
        end
        if input[:link_id].to_s.empty?
          raise ArgumentError, "HTTP label :link_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/global-networks/%<GlobalNetworkId>s/links/%<LinkId>s',
            GlobalNetworkId: Hearth::HTTP.uri_escape(input[:global_network_id].to_s),
            LinkId: Hearth::HTTP.uri_escape(input[:link_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteResourcePolicy
    class DeleteResourcePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/resource-policy/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteSite
    class DeleteSite
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:global_network_id].to_s.empty?
          raise ArgumentError, "HTTP label :global_network_id cannot be nil or empty."
        end
        if input[:site_id].to_s.empty?
          raise ArgumentError, "HTTP label :site_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/global-networks/%<GlobalNetworkId>s/sites/%<SiteId>s',
            GlobalNetworkId: Hearth::HTTP.uri_escape(input[:global_network_id].to_s),
            SiteId: Hearth::HTTP.uri_escape(input[:site_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeregisterTransitGateway
    class DeregisterTransitGateway
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:global_network_id].to_s.empty?
          raise ArgumentError, "HTTP label :global_network_id cannot be nil or empty."
        end
        if input[:transit_gateway_arn].to_s.empty?
          raise ArgumentError, "HTTP label :transit_gateway_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/global-networks/%<GlobalNetworkId>s/transit-gateway-registrations/%<TransitGatewayArn>s',
            GlobalNetworkId: Hearth::HTTP.uri_escape(input[:global_network_id].to_s),
            TransitGatewayArn: Hearth::HTTP.uri_escape(input[:transit_gateway_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeGlobalNetworks
    class DescribeGlobalNetworks
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/global-networks')
        params = Hearth::Query::ParamList.new
        unless input[:global_network_ids].nil? || input[:global_network_ids].empty?
          params['globalNetworkIds'] = input[:global_network_ids].map do |value|
            value.to_s unless value.nil?
          end
        end
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # List Builder for GlobalNetworkIdList
    class GlobalNetworkIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DisassociateConnectPeer
    class DisassociateConnectPeer
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:global_network_id].to_s.empty?
          raise ArgumentError, "HTTP label :global_network_id cannot be nil or empty."
        end
        if input[:connect_peer_id].to_s.empty?
          raise ArgumentError, "HTTP label :connect_peer_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/global-networks/%<GlobalNetworkId>s/connect-peer-associations/%<ConnectPeerId>s',
            GlobalNetworkId: Hearth::HTTP.uri_escape(input[:global_network_id].to_s),
            ConnectPeerId: Hearth::HTTP.uri_escape(input[:connect_peer_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DisassociateCustomerGateway
    class DisassociateCustomerGateway
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:global_network_id].to_s.empty?
          raise ArgumentError, "HTTP label :global_network_id cannot be nil or empty."
        end
        if input[:customer_gateway_arn].to_s.empty?
          raise ArgumentError, "HTTP label :customer_gateway_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/global-networks/%<GlobalNetworkId>s/customer-gateway-associations/%<CustomerGatewayArn>s',
            GlobalNetworkId: Hearth::HTTP.uri_escape(input[:global_network_id].to_s),
            CustomerGatewayArn: Hearth::HTTP.uri_escape(input[:customer_gateway_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DisassociateLink
    class DisassociateLink
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:global_network_id].to_s.empty?
          raise ArgumentError, "HTTP label :global_network_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/global-networks/%<GlobalNetworkId>s/link-associations',
            GlobalNetworkId: Hearth::HTTP.uri_escape(input[:global_network_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['deviceId'] = input[:device_id].to_s unless input[:device_id].nil?
        params['linkId'] = input[:link_id].to_s unless input[:link_id].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DisassociateTransitGatewayConnectPeer
    class DisassociateTransitGatewayConnectPeer
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:global_network_id].to_s.empty?
          raise ArgumentError, "HTTP label :global_network_id cannot be nil or empty."
        end
        if input[:transit_gateway_connect_peer_arn].to_s.empty?
          raise ArgumentError, "HTTP label :transit_gateway_connect_peer_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/global-networks/%<GlobalNetworkId>s/transit-gateway-connect-peer-associations/%<TransitGatewayConnectPeerArn>s',
            GlobalNetworkId: Hearth::HTTP.uri_escape(input[:global_network_id].to_s),
            TransitGatewayConnectPeerArn: Hearth::HTTP.uri_escape(input[:transit_gateway_connect_peer_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ExecuteCoreNetworkChangeSet
    class ExecuteCoreNetworkChangeSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:core_network_id].to_s.empty?
          raise ArgumentError, "HTTP label :core_network_id cannot be nil or empty."
        end
        if input[:policy_version_id].to_s.empty?
          raise ArgumentError, "HTTP label :policy_version_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/core-networks/%<CoreNetworkId>s/core-network-change-sets/%<PolicyVersionId>s/execute',
            CoreNetworkId: Hearth::HTTP.uri_escape(input[:core_network_id].to_s),
            PolicyVersionId: Hearth::HTTP.uri_escape(input[:policy_version_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetConnectAttachment
    class GetConnectAttachment
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:attachment_id].to_s.empty?
          raise ArgumentError, "HTTP label :attachment_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/connect-attachments/%<AttachmentId>s',
            AttachmentId: Hearth::HTTP.uri_escape(input[:attachment_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetConnectPeer
    class GetConnectPeer
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:connect_peer_id].to_s.empty?
          raise ArgumentError, "HTTP label :connect_peer_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/connect-peers/%<ConnectPeerId>s',
            ConnectPeerId: Hearth::HTTP.uri_escape(input[:connect_peer_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetConnectPeerAssociations
    class GetConnectPeerAssociations
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:global_network_id].to_s.empty?
          raise ArgumentError, "HTTP label :global_network_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/global-networks/%<GlobalNetworkId>s/connect-peer-associations',
            GlobalNetworkId: Hearth::HTTP.uri_escape(input[:global_network_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        unless input[:connect_peer_ids].nil? || input[:connect_peer_ids].empty?
          params['connectPeerIds'] = input[:connect_peer_ids].map do |value|
            value.to_s unless value.nil?
          end
        end
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # List Builder for ConnectPeerIdList
    class ConnectPeerIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for GetConnections
    class GetConnections
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:global_network_id].to_s.empty?
          raise ArgumentError, "HTTP label :global_network_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/global-networks/%<GlobalNetworkId>s/connections',
            GlobalNetworkId: Hearth::HTTP.uri_escape(input[:global_network_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        unless input[:connection_ids].nil? || input[:connection_ids].empty?
          params['connectionIds'] = input[:connection_ids].map do |value|
            value.to_s unless value.nil?
          end
        end
        params['deviceId'] = input[:device_id].to_s unless input[:device_id].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # List Builder for ConnectionIdList
    class ConnectionIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for GetCoreNetwork
    class GetCoreNetwork
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:core_network_id].to_s.empty?
          raise ArgumentError, "HTTP label :core_network_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/core-networks/%<CoreNetworkId>s',
            CoreNetworkId: Hearth::HTTP.uri_escape(input[:core_network_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetCoreNetworkChangeSet
    class GetCoreNetworkChangeSet
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:core_network_id].to_s.empty?
          raise ArgumentError, "HTTP label :core_network_id cannot be nil or empty."
        end
        if input[:policy_version_id].to_s.empty?
          raise ArgumentError, "HTTP label :policy_version_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/core-networks/%<CoreNetworkId>s/core-network-change-sets/%<PolicyVersionId>s',
            CoreNetworkId: Hearth::HTTP.uri_escape(input[:core_network_id].to_s),
            PolicyVersionId: Hearth::HTTP.uri_escape(input[:policy_version_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetCoreNetworkPolicy
    class GetCoreNetworkPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:core_network_id].to_s.empty?
          raise ArgumentError, "HTTP label :core_network_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/core-networks/%<CoreNetworkId>s/core-network-policy',
            CoreNetworkId: Hearth::HTTP.uri_escape(input[:core_network_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['policyVersionId'] = input[:policy_version_id].to_s unless input[:policy_version_id].nil?
        params['alias'] = input[:alias].to_s unless input[:alias].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetCustomerGatewayAssociations
    class GetCustomerGatewayAssociations
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:global_network_id].to_s.empty?
          raise ArgumentError, "HTTP label :global_network_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/global-networks/%<GlobalNetworkId>s/customer-gateway-associations',
            GlobalNetworkId: Hearth::HTTP.uri_escape(input[:global_network_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        unless input[:customer_gateway_arns].nil? || input[:customer_gateway_arns].empty?
          params['customerGatewayArns'] = input[:customer_gateway_arns].map do |value|
            value.to_s unless value.nil?
          end
        end
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # List Builder for CustomerGatewayArnList
    class CustomerGatewayArnList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for GetDevices
    class GetDevices
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:global_network_id].to_s.empty?
          raise ArgumentError, "HTTP label :global_network_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/global-networks/%<GlobalNetworkId>s/devices',
            GlobalNetworkId: Hearth::HTTP.uri_escape(input[:global_network_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        unless input[:device_ids].nil? || input[:device_ids].empty?
          params['deviceIds'] = input[:device_ids].map do |value|
            value.to_s unless value.nil?
          end
        end
        params['siteId'] = input[:site_id].to_s unless input[:site_id].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # List Builder for DeviceIdList
    class DeviceIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for GetLinkAssociations
    class GetLinkAssociations
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:global_network_id].to_s.empty?
          raise ArgumentError, "HTTP label :global_network_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/global-networks/%<GlobalNetworkId>s/link-associations',
            GlobalNetworkId: Hearth::HTTP.uri_escape(input[:global_network_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['deviceId'] = input[:device_id].to_s unless input[:device_id].nil?
        params['linkId'] = input[:link_id].to_s unless input[:link_id].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetLinks
    class GetLinks
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:global_network_id].to_s.empty?
          raise ArgumentError, "HTTP label :global_network_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/global-networks/%<GlobalNetworkId>s/links',
            GlobalNetworkId: Hearth::HTTP.uri_escape(input[:global_network_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        unless input[:link_ids].nil? || input[:link_ids].empty?
          params['linkIds'] = input[:link_ids].map do |value|
            value.to_s unless value.nil?
          end
        end
        params['siteId'] = input[:site_id].to_s unless input[:site_id].nil?
        params['type'] = input[:type].to_s unless input[:type].nil?
        params['provider'] = input[:provider].to_s unless input[:provider].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # List Builder for LinkIdList
    class LinkIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for GetNetworkResourceCounts
    class GetNetworkResourceCounts
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:global_network_id].to_s.empty?
          raise ArgumentError, "HTTP label :global_network_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/global-networks/%<GlobalNetworkId>s/network-resource-count',
            GlobalNetworkId: Hearth::HTTP.uri_escape(input[:global_network_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['resourceType'] = input[:resource_type].to_s unless input[:resource_type].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetNetworkResourceRelationships
    class GetNetworkResourceRelationships
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:global_network_id].to_s.empty?
          raise ArgumentError, "HTTP label :global_network_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/global-networks/%<GlobalNetworkId>s/network-resource-relationships',
            GlobalNetworkId: Hearth::HTTP.uri_escape(input[:global_network_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['coreNetworkId'] = input[:core_network_id].to_s unless input[:core_network_id].nil?
        params['registeredGatewayArn'] = input[:registered_gateway_arn].to_s unless input[:registered_gateway_arn].nil?
        params['awsRegion'] = input[:aws_region].to_s unless input[:aws_region].nil?
        params['accountId'] = input[:account_id].to_s unless input[:account_id].nil?
        params['resourceType'] = input[:resource_type].to_s unless input[:resource_type].nil?
        params['resourceArn'] = input[:resource_arn].to_s unless input[:resource_arn].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetNetworkResources
    class GetNetworkResources
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:global_network_id].to_s.empty?
          raise ArgumentError, "HTTP label :global_network_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/global-networks/%<GlobalNetworkId>s/network-resources',
            GlobalNetworkId: Hearth::HTTP.uri_escape(input[:global_network_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['coreNetworkId'] = input[:core_network_id].to_s unless input[:core_network_id].nil?
        params['registeredGatewayArn'] = input[:registered_gateway_arn].to_s unless input[:registered_gateway_arn].nil?
        params['awsRegion'] = input[:aws_region].to_s unless input[:aws_region].nil?
        params['accountId'] = input[:account_id].to_s unless input[:account_id].nil?
        params['resourceType'] = input[:resource_type].to_s unless input[:resource_type].nil?
        params['resourceArn'] = input[:resource_arn].to_s unless input[:resource_arn].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetNetworkRoutes
    class GetNetworkRoutes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:global_network_id].to_s.empty?
          raise ArgumentError, "HTTP label :global_network_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/global-networks/%<GlobalNetworkId>s/network-routes',
            GlobalNetworkId: Hearth::HTTP.uri_escape(input[:global_network_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['RouteTableIdentifier'] = Builders::RouteTableIdentifier.build(input[:route_table_identifier]) unless input[:route_table_identifier].nil?
        data['ExactCidrMatches'] = Builders::ConstrainedStringList.build(input[:exact_cidr_matches]) unless input[:exact_cidr_matches].nil?
        data['LongestPrefixMatches'] = Builders::ConstrainedStringList.build(input[:longest_prefix_matches]) unless input[:longest_prefix_matches].nil?
        data['SubnetOfMatches'] = Builders::ConstrainedStringList.build(input[:subnet_of_matches]) unless input[:subnet_of_matches].nil?
        data['SupernetOfMatches'] = Builders::ConstrainedStringList.build(input[:supernet_of_matches]) unless input[:supernet_of_matches].nil?
        data['PrefixListIds'] = Builders::ConstrainedStringList.build(input[:prefix_list_ids]) unless input[:prefix_list_ids].nil?
        data['States'] = Builders::RouteStateList.build(input[:states]) unless input[:states].nil?
        data['Types'] = Builders::RouteTypeList.build(input[:types]) unless input[:types].nil?
        data['DestinationFilters'] = Builders::FilterMap.build(input[:destination_filters]) unless input[:destination_filters].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for FilterMap
    class FilterMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::FilterValues.build(value) unless value.nil?
        end
        data
      end
    end

    # List Builder for FilterValues
    class FilterValues
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for RouteTypeList
    class RouteTypeList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for RouteStateList
    class RouteStateList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for RouteTableIdentifier
    class RouteTableIdentifier
      def self.build(input)
        data = {}
        data['TransitGatewayRouteTableArn'] = input[:transit_gateway_route_table_arn] unless input[:transit_gateway_route_table_arn].nil?
        data['CoreNetworkSegmentEdge'] = Builders::CoreNetworkSegmentEdgeIdentifier.build(input[:core_network_segment_edge]) unless input[:core_network_segment_edge].nil?
        data
      end
    end

    # Structure Builder for CoreNetworkSegmentEdgeIdentifier
    class CoreNetworkSegmentEdgeIdentifier
      def self.build(input)
        data = {}
        data['CoreNetworkId'] = input[:core_network_id] unless input[:core_network_id].nil?
        data['SegmentName'] = input[:segment_name] unless input[:segment_name].nil?
        data['EdgeLocation'] = input[:edge_location] unless input[:edge_location].nil?
        data
      end
    end

    # Operation Builder for GetNetworkTelemetry
    class GetNetworkTelemetry
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:global_network_id].to_s.empty?
          raise ArgumentError, "HTTP label :global_network_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/global-networks/%<GlobalNetworkId>s/network-telemetry',
            GlobalNetworkId: Hearth::HTTP.uri_escape(input[:global_network_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['coreNetworkId'] = input[:core_network_id].to_s unless input[:core_network_id].nil?
        params['registeredGatewayArn'] = input[:registered_gateway_arn].to_s unless input[:registered_gateway_arn].nil?
        params['awsRegion'] = input[:aws_region].to_s unless input[:aws_region].nil?
        params['accountId'] = input[:account_id].to_s unless input[:account_id].nil?
        params['resourceType'] = input[:resource_type].to_s unless input[:resource_type].nil?
        params['resourceArn'] = input[:resource_arn].to_s unless input[:resource_arn].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetResourcePolicy
    class GetResourcePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/resource-policy/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetRouteAnalysis
    class GetRouteAnalysis
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:global_network_id].to_s.empty?
          raise ArgumentError, "HTTP label :global_network_id cannot be nil or empty."
        end
        if input[:route_analysis_id].to_s.empty?
          raise ArgumentError, "HTTP label :route_analysis_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/global-networks/%<GlobalNetworkId>s/route-analyses/%<RouteAnalysisId>s',
            GlobalNetworkId: Hearth::HTTP.uri_escape(input[:global_network_id].to_s),
            RouteAnalysisId: Hearth::HTTP.uri_escape(input[:route_analysis_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetSiteToSiteVpnAttachment
    class GetSiteToSiteVpnAttachment
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:attachment_id].to_s.empty?
          raise ArgumentError, "HTTP label :attachment_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/site-to-site-vpn-attachments/%<AttachmentId>s',
            AttachmentId: Hearth::HTTP.uri_escape(input[:attachment_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetSites
    class GetSites
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:global_network_id].to_s.empty?
          raise ArgumentError, "HTTP label :global_network_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/global-networks/%<GlobalNetworkId>s/sites',
            GlobalNetworkId: Hearth::HTTP.uri_escape(input[:global_network_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        unless input[:site_ids].nil? || input[:site_ids].empty?
          params['siteIds'] = input[:site_ids].map do |value|
            value.to_s unless value.nil?
          end
        end
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # List Builder for SiteIdList
    class SiteIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for GetTransitGatewayConnectPeerAssociations
    class GetTransitGatewayConnectPeerAssociations
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:global_network_id].to_s.empty?
          raise ArgumentError, "HTTP label :global_network_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/global-networks/%<GlobalNetworkId>s/transit-gateway-connect-peer-associations',
            GlobalNetworkId: Hearth::HTTP.uri_escape(input[:global_network_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        unless input[:transit_gateway_connect_peer_arns].nil? || input[:transit_gateway_connect_peer_arns].empty?
          params['transitGatewayConnectPeerArns'] = input[:transit_gateway_connect_peer_arns].map do |value|
            value.to_s unless value.nil?
          end
        end
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # List Builder for TransitGatewayConnectPeerArnList
    class TransitGatewayConnectPeerArnList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for GetTransitGatewayRegistrations
    class GetTransitGatewayRegistrations
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:global_network_id].to_s.empty?
          raise ArgumentError, "HTTP label :global_network_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/global-networks/%<GlobalNetworkId>s/transit-gateway-registrations',
            GlobalNetworkId: Hearth::HTTP.uri_escape(input[:global_network_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        unless input[:transit_gateway_arns].nil? || input[:transit_gateway_arns].empty?
          params['transitGatewayArns'] = input[:transit_gateway_arns].map do |value|
            value.to_s unless value.nil?
          end
        end
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # List Builder for TransitGatewayArnList
    class TransitGatewayArnList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for GetVpcAttachment
    class GetVpcAttachment
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:attachment_id].to_s.empty?
          raise ArgumentError, "HTTP label :attachment_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/vpc-attachments/%<AttachmentId>s',
            AttachmentId: Hearth::HTTP.uri_escape(input[:attachment_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListAttachments
    class ListAttachments
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/attachments')
        params = Hearth::Query::ParamList.new
        params['coreNetworkId'] = input[:core_network_id].to_s unless input[:core_network_id].nil?
        params['attachmentType'] = input[:attachment_type].to_s unless input[:attachment_type].nil?
        params['edgeLocation'] = input[:edge_location].to_s unless input[:edge_location].nil?
        params['state'] = input[:state].to_s unless input[:state].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListConnectPeers
    class ListConnectPeers
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/connect-peers')
        params = Hearth::Query::ParamList.new
        params['coreNetworkId'] = input[:core_network_id].to_s unless input[:core_network_id].nil?
        params['connectAttachmentId'] = input[:connect_attachment_id].to_s unless input[:connect_attachment_id].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListCoreNetworkPolicyVersions
    class ListCoreNetworkPolicyVersions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:core_network_id].to_s.empty?
          raise ArgumentError, "HTTP label :core_network_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/core-networks/%<CoreNetworkId>s/core-network-policy-versions',
            CoreNetworkId: Hearth::HTTP.uri_escape(input[:core_network_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListCoreNetworks
    class ListCoreNetworks
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/core-networks')
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListOrganizationServiceAccessStatus
    class ListOrganizationServiceAccessStatus
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/organizations/service-access')
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

    # Operation Builder for PutCoreNetworkPolicy
    class PutCoreNetworkPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:core_network_id].to_s.empty?
          raise ArgumentError, "HTTP label :core_network_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/core-networks/%<CoreNetworkId>s/core-network-policy',
            CoreNetworkId: Hearth::HTTP.uri_escape(input[:core_network_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['PolicyDocument'] = input[:policy_document] unless input[:policy_document].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['LatestVersionId'] = input[:latest_version_id] unless input[:latest_version_id].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutResourcePolicy
    class PutResourcePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/resource-policy/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['PolicyDocument'] = input[:policy_document] unless input[:policy_document].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RegisterTransitGateway
    class RegisterTransitGateway
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:global_network_id].to_s.empty?
          raise ArgumentError, "HTTP label :global_network_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/global-networks/%<GlobalNetworkId>s/transit-gateway-registrations',
            GlobalNetworkId: Hearth::HTTP.uri_escape(input[:global_network_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['TransitGatewayArn'] = input[:transit_gateway_arn] unless input[:transit_gateway_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RejectAttachment
    class RejectAttachment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:attachment_id].to_s.empty?
          raise ArgumentError, "HTTP label :attachment_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/attachments/%<AttachmentId>s/reject',
            AttachmentId: Hearth::HTTP.uri_escape(input[:attachment_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for RestoreCoreNetworkPolicyVersion
    class RestoreCoreNetworkPolicyVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:core_network_id].to_s.empty?
          raise ArgumentError, "HTTP label :core_network_id cannot be nil or empty."
        end
        if input[:policy_version_id].to_s.empty?
          raise ArgumentError, "HTTP label :policy_version_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/core-networks/%<CoreNetworkId>s/core-network-policy-versions/%<PolicyVersionId>s/restore',
            CoreNetworkId: Hearth::HTTP.uri_escape(input[:core_network_id].to_s),
            PolicyVersionId: Hearth::HTTP.uri_escape(input[:policy_version_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for StartOrganizationServiceAccessUpdate
    class StartOrganizationServiceAccessUpdate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/organizations/service-access')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Action'] = input[:action] unless input[:action].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartRouteAnalysis
    class StartRouteAnalysis
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:global_network_id].to_s.empty?
          raise ArgumentError, "HTTP label :global_network_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/global-networks/%<GlobalNetworkId>s/route-analyses',
            GlobalNetworkId: Hearth::HTTP.uri_escape(input[:global_network_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Source'] = Builders::RouteAnalysisEndpointOptionsSpecification.build(input[:source]) unless input[:source].nil?
        data['Destination'] = Builders::RouteAnalysisEndpointOptionsSpecification.build(input[:destination]) unless input[:destination].nil?
        data['IncludeReturnPath'] = input[:include_return_path] unless input[:include_return_path].nil?
        data['UseMiddleboxes'] = input[:use_middleboxes] unless input[:use_middleboxes].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for RouteAnalysisEndpointOptionsSpecification
    class RouteAnalysisEndpointOptionsSpecification
      def self.build(input)
        data = {}
        data['TransitGatewayAttachmentArn'] = input[:transit_gateway_attachment_arn] unless input[:transit_gateway_attachment_arn].nil?
        data['IpAddress'] = input[:ip_address] unless input[:ip_address].nil?
        data
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
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
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

    # List Builder for TagKeyList
    class TagKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateConnection
    class UpdateConnection
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:global_network_id].to_s.empty?
          raise ArgumentError, "HTTP label :global_network_id cannot be nil or empty."
        end
        if input[:connection_id].to_s.empty?
          raise ArgumentError, "HTTP label :connection_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/global-networks/%<GlobalNetworkId>s/connections/%<ConnectionId>s',
            GlobalNetworkId: Hearth::HTTP.uri_escape(input[:global_network_id].to_s),
            ConnectionId: Hearth::HTTP.uri_escape(input[:connection_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['LinkId'] = input[:link_id] unless input[:link_id].nil?
        data['ConnectedLinkId'] = input[:connected_link_id] unless input[:connected_link_id].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateCoreNetwork
    class UpdateCoreNetwork
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:core_network_id].to_s.empty?
          raise ArgumentError, "HTTP label :core_network_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/core-networks/%<CoreNetworkId>s',
            CoreNetworkId: Hearth::HTTP.uri_escape(input[:core_network_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Description'] = input[:description] unless input[:description].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateDevice
    class UpdateDevice
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:global_network_id].to_s.empty?
          raise ArgumentError, "HTTP label :global_network_id cannot be nil or empty."
        end
        if input[:device_id].to_s.empty?
          raise ArgumentError, "HTTP label :device_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/global-networks/%<GlobalNetworkId>s/devices/%<DeviceId>s',
            GlobalNetworkId: Hearth::HTTP.uri_escape(input[:global_network_id].to_s),
            DeviceId: Hearth::HTTP.uri_escape(input[:device_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['AWSLocation'] = Builders::AWSLocation.build(input[:aws_location]) unless input[:aws_location].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data['Vendor'] = input[:vendor] unless input[:vendor].nil?
        data['Model'] = input[:model] unless input[:model].nil?
        data['SerialNumber'] = input[:serial_number] unless input[:serial_number].nil?
        data['Location'] = Builders::Location.build(input[:location]) unless input[:location].nil?
        data['SiteId'] = input[:site_id] unless input[:site_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateGlobalNetwork
    class UpdateGlobalNetwork
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:global_network_id].to_s.empty?
          raise ArgumentError, "HTTP label :global_network_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/global-networks/%<GlobalNetworkId>s',
            GlobalNetworkId: Hearth::HTTP.uri_escape(input[:global_network_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Description'] = input[:description] unless input[:description].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateLink
    class UpdateLink
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:global_network_id].to_s.empty?
          raise ArgumentError, "HTTP label :global_network_id cannot be nil or empty."
        end
        if input[:link_id].to_s.empty?
          raise ArgumentError, "HTTP label :link_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/global-networks/%<GlobalNetworkId>s/links/%<LinkId>s',
            GlobalNetworkId: Hearth::HTTP.uri_escape(input[:global_network_id].to_s),
            LinkId: Hearth::HTTP.uri_escape(input[:link_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Description'] = input[:description] unless input[:description].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data['Bandwidth'] = Builders::Bandwidth.build(input[:bandwidth]) unless input[:bandwidth].nil?
        data['Provider'] = input[:provider] unless input[:provider].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateNetworkResourceMetadata
    class UpdateNetworkResourceMetadata
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:global_network_id].to_s.empty?
          raise ArgumentError, "HTTP label :global_network_id cannot be nil or empty."
        end
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/global-networks/%<GlobalNetworkId>s/network-resources/%<ResourceArn>s/metadata',
            GlobalNetworkId: Hearth::HTTP.uri_escape(input[:global_network_id].to_s),
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Metadata'] = Builders::NetworkResourceMetadataMap.build(input[:metadata]) unless input[:metadata].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for NetworkResourceMetadataMap
    class NetworkResourceMetadataMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateSite
    class UpdateSite
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:global_network_id].to_s.empty?
          raise ArgumentError, "HTTP label :global_network_id cannot be nil or empty."
        end
        if input[:site_id].to_s.empty?
          raise ArgumentError, "HTTP label :site_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/global-networks/%<GlobalNetworkId>s/sites/%<SiteId>s',
            GlobalNetworkId: Hearth::HTTP.uri_escape(input[:global_network_id].to_s),
            SiteId: Hearth::HTTP.uri_escape(input[:site_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Description'] = input[:description] unless input[:description].nil?
        data['Location'] = Builders::Location.build(input[:location]) unless input[:location].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateVpcAttachment
    class UpdateVpcAttachment
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:attachment_id].to_s.empty?
          raise ArgumentError, "HTTP label :attachment_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/vpc-attachments/%<AttachmentId>s',
            AttachmentId: Hearth::HTTP.uri_escape(input[:attachment_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['AddSubnetArns'] = Builders::SubnetArnList.build(input[:add_subnet_arns]) unless input[:add_subnet_arns].nil?
        data['RemoveSubnetArns'] = Builders::SubnetArnList.build(input[:remove_subnet_arns]) unless input[:remove_subnet_arns].nil?
        data['Options'] = Builders::VpcOptions.build(input[:options]) unless input[:options].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
