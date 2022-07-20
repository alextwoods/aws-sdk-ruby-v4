# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::DirectoryService
  module Builders

    # Operation Builder for AcceptSharedDirectory
    class AcceptSharedDirectory
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DirectoryService_20150416.AcceptSharedDirectory'
        data = {}
        data['SharedDirectoryId'] = input[:shared_directory_id] unless input[:shared_directory_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AddIpRoutes
    class AddIpRoutes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DirectoryService_20150416.AddIpRoutes'
        data = {}
        data['DirectoryId'] = input[:directory_id] unless input[:directory_id].nil?
        data['IpRoutes'] = IpRoutes.build(input[:ip_routes]) unless input[:ip_routes].nil?
        data['UpdateSecurityGroupForDirectoryControllers'] = input[:update_security_group_for_directory_controllers] unless input[:update_security_group_for_directory_controllers].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for IpRoutes
    class IpRoutes
      def self.build(input)
        data = []
        input.each do |element|
          data << IpRoute.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for IpRoute
    class IpRoute
      def self.build(input)
        data = {}
        data['CidrIp'] = input[:cidr_ip] unless input[:cidr_ip].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data
      end
    end

    # Operation Builder for AddRegion
    class AddRegion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DirectoryService_20150416.AddRegion'
        data = {}
        data['DirectoryId'] = input[:directory_id] unless input[:directory_id].nil?
        data['RegionName'] = input[:region_name] unless input[:region_name].nil?
        data['VPCSettings'] = DirectoryVpcSettings.build(input[:vpc_settings]) unless input[:vpc_settings].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for DirectoryVpcSettings
    class DirectoryVpcSettings
      def self.build(input)
        data = {}
        data['VpcId'] = input[:vpc_id] unless input[:vpc_id].nil?
        data['SubnetIds'] = SubnetIds.build(input[:subnet_ids]) unless input[:subnet_ids].nil?
        data
      end
    end

    # List Builder for SubnetIds
    class SubnetIds
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for AddTagsToResource
    class AddTagsToResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DirectoryService_20150416.AddTagsToResource'
        data = {}
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        data['Tags'] = Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for Tags
    class Tags
      def self.build(input)
        data = []
        input.each do |element|
          data << Tag.build(element) unless element.nil?
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

    # Operation Builder for CancelSchemaExtension
    class CancelSchemaExtension
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DirectoryService_20150416.CancelSchemaExtension'
        data = {}
        data['DirectoryId'] = input[:directory_id] unless input[:directory_id].nil?
        data['SchemaExtensionId'] = input[:schema_extension_id] unless input[:schema_extension_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ConnectDirectory
    class ConnectDirectory
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DirectoryService_20150416.ConnectDirectory'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['ShortName'] = input[:short_name] unless input[:short_name].nil?
        data['Password'] = input[:password] unless input[:password].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Size'] = input[:size] unless input[:size].nil?
        data['ConnectSettings'] = DirectoryConnectSettings.build(input[:connect_settings]) unless input[:connect_settings].nil?
        data['Tags'] = Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for DirectoryConnectSettings
    class DirectoryConnectSettings
      def self.build(input)
        data = {}
        data['VpcId'] = input[:vpc_id] unless input[:vpc_id].nil?
        data['SubnetIds'] = SubnetIds.build(input[:subnet_ids]) unless input[:subnet_ids].nil?
        data['CustomerDnsIps'] = DnsIpAddrs.build(input[:customer_dns_ips]) unless input[:customer_dns_ips].nil?
        data['CustomerUserName'] = input[:customer_user_name] unless input[:customer_user_name].nil?
        data
      end
    end

    # List Builder for DnsIpAddrs
    class DnsIpAddrs
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateAlias
    class CreateAlias
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DirectoryService_20150416.CreateAlias'
        data = {}
        data['DirectoryId'] = input[:directory_id] unless input[:directory_id].nil?
        data['Alias'] = input[:alias] unless input[:alias].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateComputer
    class CreateComputer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DirectoryService_20150416.CreateComputer'
        data = {}
        data['DirectoryId'] = input[:directory_id] unless input[:directory_id].nil?
        data['ComputerName'] = input[:computer_name] unless input[:computer_name].nil?
        data['Password'] = input[:password] unless input[:password].nil?
        data['OrganizationalUnitDistinguishedName'] = input[:organizational_unit_distinguished_name] unless input[:organizational_unit_distinguished_name].nil?
        data['ComputerAttributes'] = Attributes.build(input[:computer_attributes]) unless input[:computer_attributes].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for Attributes
    class Attributes
      def self.build(input)
        data = []
        input.each do |element|
          data << Attribute.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Attribute
    class Attribute
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for CreateConditionalForwarder
    class CreateConditionalForwarder
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DirectoryService_20150416.CreateConditionalForwarder'
        data = {}
        data['DirectoryId'] = input[:directory_id] unless input[:directory_id].nil?
        data['RemoteDomainName'] = input[:remote_domain_name] unless input[:remote_domain_name].nil?
        data['DnsIpAddrs'] = DnsIpAddrs.build(input[:dns_ip_addrs]) unless input[:dns_ip_addrs].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateDirectory
    class CreateDirectory
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DirectoryService_20150416.CreateDirectory'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['ShortName'] = input[:short_name] unless input[:short_name].nil?
        data['Password'] = input[:password] unless input[:password].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Size'] = input[:size] unless input[:size].nil?
        data['VpcSettings'] = DirectoryVpcSettings.build(input[:vpc_settings]) unless input[:vpc_settings].nil?
        data['Tags'] = Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateLogSubscription
    class CreateLogSubscription
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DirectoryService_20150416.CreateLogSubscription'
        data = {}
        data['DirectoryId'] = input[:directory_id] unless input[:directory_id].nil?
        data['LogGroupName'] = input[:log_group_name] unless input[:log_group_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateMicrosoftAD
    class CreateMicrosoftAD
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DirectoryService_20150416.CreateMicrosoftAD'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['ShortName'] = input[:short_name] unless input[:short_name].nil?
        data['Password'] = input[:password] unless input[:password].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['VpcSettings'] = DirectoryVpcSettings.build(input[:vpc_settings]) unless input[:vpc_settings].nil?
        data['Edition'] = input[:edition] unless input[:edition].nil?
        data['Tags'] = Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateSnapshot
    class CreateSnapshot
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DirectoryService_20150416.CreateSnapshot'
        data = {}
        data['DirectoryId'] = input[:directory_id] unless input[:directory_id].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateTrust
    class CreateTrust
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DirectoryService_20150416.CreateTrust'
        data = {}
        data['DirectoryId'] = input[:directory_id] unless input[:directory_id].nil?
        data['RemoteDomainName'] = input[:remote_domain_name] unless input[:remote_domain_name].nil?
        data['TrustPassword'] = input[:trust_password] unless input[:trust_password].nil?
        data['TrustDirection'] = input[:trust_direction] unless input[:trust_direction].nil?
        data['TrustType'] = input[:trust_type] unless input[:trust_type].nil?
        data['ConditionalForwarderIpAddrs'] = DnsIpAddrs.build(input[:conditional_forwarder_ip_addrs]) unless input[:conditional_forwarder_ip_addrs].nil?
        data['SelectiveAuth'] = input[:selective_auth] unless input[:selective_auth].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteConditionalForwarder
    class DeleteConditionalForwarder
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DirectoryService_20150416.DeleteConditionalForwarder'
        data = {}
        data['DirectoryId'] = input[:directory_id] unless input[:directory_id].nil?
        data['RemoteDomainName'] = input[:remote_domain_name] unless input[:remote_domain_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteDirectory
    class DeleteDirectory
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DirectoryService_20150416.DeleteDirectory'
        data = {}
        data['DirectoryId'] = input[:directory_id] unless input[:directory_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteLogSubscription
    class DeleteLogSubscription
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DirectoryService_20150416.DeleteLogSubscription'
        data = {}
        data['DirectoryId'] = input[:directory_id] unless input[:directory_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteSnapshot
    class DeleteSnapshot
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DirectoryService_20150416.DeleteSnapshot'
        data = {}
        data['SnapshotId'] = input[:snapshot_id] unless input[:snapshot_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteTrust
    class DeleteTrust
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DirectoryService_20150416.DeleteTrust'
        data = {}
        data['TrustId'] = input[:trust_id] unless input[:trust_id].nil?
        data['DeleteAssociatedConditionalForwarder'] = input[:delete_associated_conditional_forwarder] unless input[:delete_associated_conditional_forwarder].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeregisterCertificate
    class DeregisterCertificate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DirectoryService_20150416.DeregisterCertificate'
        data = {}
        data['DirectoryId'] = input[:directory_id] unless input[:directory_id].nil?
        data['CertificateId'] = input[:certificate_id] unless input[:certificate_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeregisterEventTopic
    class DeregisterEventTopic
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DirectoryService_20150416.DeregisterEventTopic'
        data = {}
        data['DirectoryId'] = input[:directory_id] unless input[:directory_id].nil?
        data['TopicName'] = input[:topic_name] unless input[:topic_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeCertificate
    class DescribeCertificate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DirectoryService_20150416.DescribeCertificate'
        data = {}
        data['DirectoryId'] = input[:directory_id] unless input[:directory_id].nil?
        data['CertificateId'] = input[:certificate_id] unless input[:certificate_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeClientAuthenticationSettings
    class DescribeClientAuthenticationSettings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DirectoryService_20150416.DescribeClientAuthenticationSettings'
        data = {}
        data['DirectoryId'] = input[:directory_id] unless input[:directory_id].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeConditionalForwarders
    class DescribeConditionalForwarders
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DirectoryService_20150416.DescribeConditionalForwarders'
        data = {}
        data['DirectoryId'] = input[:directory_id] unless input[:directory_id].nil?
        data['RemoteDomainNames'] = RemoteDomainNames.build(input[:remote_domain_names]) unless input[:remote_domain_names].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for RemoteDomainNames
    class RemoteDomainNames
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeDirectories
    class DescribeDirectories
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DirectoryService_20150416.DescribeDirectories'
        data = {}
        data['DirectoryIds'] = DirectoryIds.build(input[:directory_ids]) unless input[:directory_ids].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for DirectoryIds
    class DirectoryIds
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeDomainControllers
    class DescribeDomainControllers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DirectoryService_20150416.DescribeDomainControllers'
        data = {}
        data['DirectoryId'] = input[:directory_id] unless input[:directory_id].nil?
        data['DomainControllerIds'] = DomainControllerIds.build(input[:domain_controller_ids]) unless input[:domain_controller_ids].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for DomainControllerIds
    class DomainControllerIds
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeEventTopics
    class DescribeEventTopics
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DirectoryService_20150416.DescribeEventTopics'
        data = {}
        data['DirectoryId'] = input[:directory_id] unless input[:directory_id].nil?
        data['TopicNames'] = TopicNames.build(input[:topic_names]) unless input[:topic_names].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TopicNames
    class TopicNames
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeLDAPSSettings
    class DescribeLDAPSSettings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DirectoryService_20150416.DescribeLDAPSSettings'
        data = {}
        data['DirectoryId'] = input[:directory_id] unless input[:directory_id].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeRegions
    class DescribeRegions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DirectoryService_20150416.DescribeRegions'
        data = {}
        data['DirectoryId'] = input[:directory_id] unless input[:directory_id].nil?
        data['RegionName'] = input[:region_name] unless input[:region_name].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeSharedDirectories
    class DescribeSharedDirectories
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DirectoryService_20150416.DescribeSharedDirectories'
        data = {}
        data['OwnerDirectoryId'] = input[:owner_directory_id] unless input[:owner_directory_id].nil?
        data['SharedDirectoryIds'] = DirectoryIds.build(input[:shared_directory_ids]) unless input[:shared_directory_ids].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeSnapshots
    class DescribeSnapshots
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DirectoryService_20150416.DescribeSnapshots'
        data = {}
        data['DirectoryId'] = input[:directory_id] unless input[:directory_id].nil?
        data['SnapshotIds'] = SnapshotIds.build(input[:snapshot_ids]) unless input[:snapshot_ids].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for SnapshotIds
    class SnapshotIds
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeTrusts
    class DescribeTrusts
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DirectoryService_20150416.DescribeTrusts'
        data = {}
        data['DirectoryId'] = input[:directory_id] unless input[:directory_id].nil?
        data['TrustIds'] = TrustIds.build(input[:trust_ids]) unless input[:trust_ids].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TrustIds
    class TrustIds
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DisableClientAuthentication
    class DisableClientAuthentication
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DirectoryService_20150416.DisableClientAuthentication'
        data = {}
        data['DirectoryId'] = input[:directory_id] unless input[:directory_id].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisableLDAPS
    class DisableLDAPS
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DirectoryService_20150416.DisableLDAPS'
        data = {}
        data['DirectoryId'] = input[:directory_id] unless input[:directory_id].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisableRadius
    class DisableRadius
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DirectoryService_20150416.DisableRadius'
        data = {}
        data['DirectoryId'] = input[:directory_id] unless input[:directory_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisableSso
    class DisableSso
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DirectoryService_20150416.DisableSso'
        data = {}
        data['DirectoryId'] = input[:directory_id] unless input[:directory_id].nil?
        data['UserName'] = input[:user_name] unless input[:user_name].nil?
        data['Password'] = input[:password] unless input[:password].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for EnableClientAuthentication
    class EnableClientAuthentication
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DirectoryService_20150416.EnableClientAuthentication'
        data = {}
        data['DirectoryId'] = input[:directory_id] unless input[:directory_id].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for EnableLDAPS
    class EnableLDAPS
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DirectoryService_20150416.EnableLDAPS'
        data = {}
        data['DirectoryId'] = input[:directory_id] unless input[:directory_id].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for EnableRadius
    class EnableRadius
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DirectoryService_20150416.EnableRadius'
        data = {}
        data['DirectoryId'] = input[:directory_id] unless input[:directory_id].nil?
        data['RadiusSettings'] = RadiusSettings.build(input[:radius_settings]) unless input[:radius_settings].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for RadiusSettings
    class RadiusSettings
      def self.build(input)
        data = {}
        data['RadiusServers'] = Servers.build(input[:radius_servers]) unless input[:radius_servers].nil?
        data['RadiusPort'] = input[:radius_port] unless input[:radius_port].nil?
        data['RadiusTimeout'] = input[:radius_timeout] unless input[:radius_timeout].nil?
        data['RadiusRetries'] = input[:radius_retries] unless input[:radius_retries].nil?
        data['SharedSecret'] = input[:shared_secret] unless input[:shared_secret].nil?
        data['AuthenticationProtocol'] = input[:authentication_protocol] unless input[:authentication_protocol].nil?
        data['DisplayLabel'] = input[:display_label] unless input[:display_label].nil?
        data['UseSameUsername'] = input[:use_same_username] unless input[:use_same_username].nil?
        data
      end
    end

    # List Builder for Servers
    class Servers
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for EnableSso
    class EnableSso
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DirectoryService_20150416.EnableSso'
        data = {}
        data['DirectoryId'] = input[:directory_id] unless input[:directory_id].nil?
        data['UserName'] = input[:user_name] unless input[:user_name].nil?
        data['Password'] = input[:password] unless input[:password].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetDirectoryLimits
    class GetDirectoryLimits
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DirectoryService_20150416.GetDirectoryLimits'
        data = {}
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetSnapshotLimits
    class GetSnapshotLimits
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DirectoryService_20150416.GetSnapshotLimits'
        data = {}
        data['DirectoryId'] = input[:directory_id] unless input[:directory_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListCertificates
    class ListCertificates
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DirectoryService_20150416.ListCertificates'
        data = {}
        data['DirectoryId'] = input[:directory_id] unless input[:directory_id].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListIpRoutes
    class ListIpRoutes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DirectoryService_20150416.ListIpRoutes'
        data = {}
        data['DirectoryId'] = input[:directory_id] unless input[:directory_id].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListLogSubscriptions
    class ListLogSubscriptions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DirectoryService_20150416.ListLogSubscriptions'
        data = {}
        data['DirectoryId'] = input[:directory_id] unless input[:directory_id].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListSchemaExtensions
    class ListSchemaExtensions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DirectoryService_20150416.ListSchemaExtensions'
        data = {}
        data['DirectoryId'] = input[:directory_id] unless input[:directory_id].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DirectoryService_20150416.ListTagsForResource'
        data = {}
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RegisterCertificate
    class RegisterCertificate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DirectoryService_20150416.RegisterCertificate'
        data = {}
        data['DirectoryId'] = input[:directory_id] unless input[:directory_id].nil?
        data['CertificateData'] = input[:certificate_data] unless input[:certificate_data].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data['ClientCertAuthSettings'] = ClientCertAuthSettings.build(input[:client_cert_auth_settings]) unless input[:client_cert_auth_settings].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ClientCertAuthSettings
    class ClientCertAuthSettings
      def self.build(input)
        data = {}
        data['OCSPUrl'] = input[:ocsp_url] unless input[:ocsp_url].nil?
        data
      end
    end

    # Operation Builder for RegisterEventTopic
    class RegisterEventTopic
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DirectoryService_20150416.RegisterEventTopic'
        data = {}
        data['DirectoryId'] = input[:directory_id] unless input[:directory_id].nil?
        data['TopicName'] = input[:topic_name] unless input[:topic_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RejectSharedDirectory
    class RejectSharedDirectory
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DirectoryService_20150416.RejectSharedDirectory'
        data = {}
        data['SharedDirectoryId'] = input[:shared_directory_id] unless input[:shared_directory_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RemoveIpRoutes
    class RemoveIpRoutes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DirectoryService_20150416.RemoveIpRoutes'
        data = {}
        data['DirectoryId'] = input[:directory_id] unless input[:directory_id].nil?
        data['CidrIps'] = CidrIps.build(input[:cidr_ips]) unless input[:cidr_ips].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for CidrIps
    class CidrIps
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for RemoveRegion
    class RemoveRegion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DirectoryService_20150416.RemoveRegion'
        data = {}
        data['DirectoryId'] = input[:directory_id] unless input[:directory_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RemoveTagsFromResource
    class RemoveTagsFromResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DirectoryService_20150416.RemoveTagsFromResource'
        data = {}
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        data['TagKeys'] = TagKeys.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagKeys
    class TagKeys
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ResetUserPassword
    class ResetUserPassword
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DirectoryService_20150416.ResetUserPassword'
        data = {}
        data['DirectoryId'] = input[:directory_id] unless input[:directory_id].nil?
        data['UserName'] = input[:user_name] unless input[:user_name].nil?
        data['NewPassword'] = input[:new_password] unless input[:new_password].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RestoreFromSnapshot
    class RestoreFromSnapshot
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DirectoryService_20150416.RestoreFromSnapshot'
        data = {}
        data['SnapshotId'] = input[:snapshot_id] unless input[:snapshot_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ShareDirectory
    class ShareDirectory
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DirectoryService_20150416.ShareDirectory'
        data = {}
        data['DirectoryId'] = input[:directory_id] unless input[:directory_id].nil?
        data['ShareNotes'] = input[:share_notes] unless input[:share_notes].nil?
        data['ShareTarget'] = ShareTarget.build(input[:share_target]) unless input[:share_target].nil?
        data['ShareMethod'] = input[:share_method] unless input[:share_method].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ShareTarget
    class ShareTarget
      def self.build(input)
        data = {}
        data['Id'] = input[:id] unless input[:id].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # Operation Builder for StartSchemaExtension
    class StartSchemaExtension
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DirectoryService_20150416.StartSchemaExtension'
        data = {}
        data['DirectoryId'] = input[:directory_id] unless input[:directory_id].nil?
        data['CreateSnapshotBeforeSchemaExtension'] = input[:create_snapshot_before_schema_extension] unless input[:create_snapshot_before_schema_extension].nil?
        data['LdifContent'] = input[:ldif_content] unless input[:ldif_content].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UnshareDirectory
    class UnshareDirectory
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DirectoryService_20150416.UnshareDirectory'
        data = {}
        data['DirectoryId'] = input[:directory_id] unless input[:directory_id].nil?
        data['UnshareTarget'] = UnshareTarget.build(input[:unshare_target]) unless input[:unshare_target].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for UnshareTarget
    class UnshareTarget
      def self.build(input)
        data = {}
        data['Id'] = input[:id] unless input[:id].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # Operation Builder for UpdateConditionalForwarder
    class UpdateConditionalForwarder
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DirectoryService_20150416.UpdateConditionalForwarder'
        data = {}
        data['DirectoryId'] = input[:directory_id] unless input[:directory_id].nil?
        data['RemoteDomainName'] = input[:remote_domain_name] unless input[:remote_domain_name].nil?
        data['DnsIpAddrs'] = DnsIpAddrs.build(input[:dns_ip_addrs]) unless input[:dns_ip_addrs].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateNumberOfDomainControllers
    class UpdateNumberOfDomainControllers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DirectoryService_20150416.UpdateNumberOfDomainControllers'
        data = {}
        data['DirectoryId'] = input[:directory_id] unless input[:directory_id].nil?
        data['DesiredNumber'] = input[:desired_number] unless input[:desired_number].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateRadius
    class UpdateRadius
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DirectoryService_20150416.UpdateRadius'
        data = {}
        data['DirectoryId'] = input[:directory_id] unless input[:directory_id].nil?
        data['RadiusSettings'] = RadiusSettings.build(input[:radius_settings]) unless input[:radius_settings].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateTrust
    class UpdateTrust
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DirectoryService_20150416.UpdateTrust'
        data = {}
        data['TrustId'] = input[:trust_id] unless input[:trust_id].nil?
        data['SelectiveAuth'] = input[:selective_auth] unless input[:selective_auth].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for VerifyTrust
    class VerifyTrust
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DirectoryService_20150416.VerifyTrust'
        data = {}
        data['TrustId'] = input[:trust_id] unless input[:trust_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
